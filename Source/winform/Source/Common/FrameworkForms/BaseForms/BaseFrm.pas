unit BaseFrm;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElXPThemedControl, ElStatBar, ElCaption, DB, MainDM, TypInfo, dxTL,
  IBODataSet, SSP_Library, QExtCtrls, dxGrClms, ElUnicodeStrings, dxDBCtrl,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, ElBtnCtl, ElCheckCtl, dxDBTLCL;

type
  TGetParamValueEvent = procedure(AModuleID: smallint; AParam: string; var
    AValue: variant) of object;
  TfrmBase = class(TForm)
    fcMain: TElFormCaption;
    sbMain: TElStatusBar;
    procedure WMRefreshData(var msg: TMessage); message WM_USER_REFRESH;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    //NXHop modified and notified =================================================================
    // Thu tuc nay dung` de SetPermission trong truong hop ModulID cua form
    // da duoc dang ky - moi component trong form deu cung thuoc 1 chuc nang
    //==================================================================
    procedure RegPermission(com: TComponent; mask: TPermissionMask);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormResize(Sender: TObject);
    procedure LoadRegistry(com: TComponent = nil);
    procedure SaveRegistry(com: TComponent = nil);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FLookupList: TStringList;
  protected
    fMinHeigth, fMinWidth: integer;
    FPSelf: ^TfrmBase;
    FModuleID: smallint;

    procedure InitForm; virtual;
    procedure SetModuleID(const Value: smallint); virtual;
    procedure OnBeforePrint(Sender: TObject); virtual; abstract;
  public
    { Public declarations }
    F_CustomForm: TfrmBase;
    property ModuleID: smallint read FModuleID write SetModuleID;
    class procedure ShowForm(AOwner: TComponent; AModuleID: smallint);
    class procedure ShowFormEx(AOwner: TComponent; AModuleID: smallint; var
      ARefObj: TfrmBase);
    constructor Create(AOwner: TComponent; AModuleID: smallint = -1);
    function RegisterLookupControl(control: TdxDBGridMRUColumn; id_dest_field,
      value_dest_field, lookup_sql: string;
      FormClass: TFormClass = nil; mastersource: TObject = nil): TObject;
      overload;
    function RegisterLookupControl(control: TdxDBTreeListMRUColumn; id_dest_field,
      value_dest_field, lookup_sql: string;
      FormClass: TFormClass = nil; mastersource: TObject = nil): TObject;
      overload;
    function RegisterLookupControl(control: TdxDBMRUEdit; id_dest_field,
      value_dest_field, lookup_sql: string;
      FormClass: TFormClass = nil; mastersource: TObject = nil): TObject;
      overload;
    function RegisterLookupControl(control: TdxMRUEdit; id_dest_field,
      value_dest_field, lookup_sql: string;
      FormClass: TFormClass = nil; mastersource: TObject = nil): TObject;
      overload;

    procedure RefreshLookupControl(control: TObject);
    procedure OnMRUCloseUp(Sender: TObject; var Value: Variant; var Accept:
      Boolean);
    procedure OnMRUButtonClick(Sender: TObject);
    procedure OnMRUExit(Sender: TObject);
    procedure OnMRUEnter(Sender: TObject);

    function GetLookupKeyField(control: TdxMRUEdit): Variant;
    procedure SetLookupKeyField(control: TdxMRUEdit; key_value: WideString);

  end;
var
  frmBase: TfrmBase;

implementation

uses StringConst, MainUnit, Registry;

{$R *.dfm}

{ TfrmBase }

constructor TfrmBase.Create(AOwner: TComponent; AModuleID: smallint);
begin
  FModuleID := AModuleID;
  inherited Create(AOwner);
end;

procedure TfrmBase.RegPermission(com: TComponent; mask: TPermissionMask);
begin
  SetPermision(com, FModuleID, mask);
end;

procedure TfrmBase.InitForm;
begin
end;

procedure TfrmBase.SetModuleID(const Value: smallint);
var
  i: integer;
begin
  if FModuleID <> Value then
    FModuleID := Value;
end;

class procedure TfrmBase.ShowForm(AOwner: TComponent; AModuleID: smallint);
var
  ARefObj: TfrmBase;
begin
  ARefObj := nil;
  ShowFormEx(AOwner, AModuleID, ARefObj);
end;

class procedure TfrmBase.ShowFormEx(AOwner: TComponent; AModuleID: smallint;
  var ARefObj: TfrmBase);
begin
  if not Assigned(ARefObj) then
  begin
    ARefObj := Self.Create(AOwner, AModuleID);
    if (ARefObj.FormStyle = fsMDIChild) or (ARefObj.FormStyle = fsMDIForm) then
    begin
      ARefObj.FPSelf := @ARefObj;
      ARefObj.Show;
    end
    else
    begin
      ARefObj.ShowModal;
      ARefObj.Free;
      ARefObj := nil;
    end;
  end
  else
  begin
    if (ARefObj.FormStyle = fsMDIChild) and
      (ARefObj.WindowState = wsMinimized) then
      ARefObj.WindowState := wsMaximized;
    ARefObj.BringToFront;
  end;
end;

procedure TfrmBase.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  // huy danh sach lookup
  if Assigned(FLookupList) then
  begin
    for i := 0 to FLookupList.Count - 1 do
    begin
      if Assigned(FLookupList.Objects[i]) then
        FLookupList.Objects[i].Free;
    end;
    FLookupList.Free;
  end;
  // dong tat ca Dataset

  for i := 0 to self.ComponentCount - 1 do
    if (Self.Components[i] is TDataset) then
      (Self.Components[i] as TDataset).Close;

  if self.FormStyle = fsMDIChild then
    with frmMain.bbListwindows.Items do
      Delete(IndexOfObject(Self));
  if Assigned(FPSelf) and (FormStyle = fsMDIChild) then
  begin
    if Assigned(Application.MainForm) and
      not (csDestroying in Application.MainForm.ComponentState) then
      SendMessage(Application.MainForm.Handle, WM_USER_SET_CHILDCAPTION, 0,
        Integer(Self));
    FPSelf^ := nil;
  end;

end;

procedure TfrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
  //  if not Assigned(self.Parent) then
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i] is TDataSource) then
        if dmMain.MsgChangeDataSource(TDataSource(Components[i])) = false then
        begin
          Abort;
          Exit;
        end;
    end;
  end;
  SaveRegistry;
  if (FormStyle = fsMDIChild) then
  begin
    frmMain.ElFormCaption1.Texts.Items[2].Caption := '';
    Action := caFree;
  end;
end;

procedure TfrmBase.FormCreate(Sender: TObject);
var
  old: smallint;
begin
  FLookupList := TStringList.Create;
  fMinHeigth := self.Height;
  if ((self.FormStyle = fsNormal) and (self.Tag = 0)) then
    fMinWidth := Round(fMinHeigth * 1.45)
  else
    fMinWidth := self.Width;
  old := FModuleID;
  FModuleID := -1;
  ModuleID := old;
  InitForm;
  ApplyOption(TControl(self));
  CheckPermissionForm(self);
  if self.FormStyle = fsMDIChild then
    frmMain.bbListwindows.Items.AddObject(fcMain.Texts.Items[0].Caption, Self);
  LoadRegistry;
end;

procedure TfrmBase.WMRefreshData(var msg: TMessage);
var
  i: integer;
  bm: TBookmark;
begin

  for i := 0 to ComponentCount - 1 do
    if Components[i].InheritsFrom(TIBODataset) then
    begin
      if TIBODataset(Components[i]).Active then
      begin
        bm := TIBODataset(Components[i]).GetBookmark;
        TIBODataset(Components[i]).Refresh;
        try
          TIBODataset(Components[i]).GotoBookmark(bm);
        except

        end;
      end
      else
        TIBODataset(Components[i]).Open;
    end;

end;

procedure TfrmBase.FormActivate(Sender: TObject);
begin
  if self.FormStyle = fsMDIChild then
    frmMain.ElFormCaption1.Texts.Items[2].Caption := ' - [' +
      fcMain.Texts.Items[0].Caption + ']';
end;

procedure TfrmBase.FormDeactivate(Sender: TObject);
begin
  if self.FormStyle = fsMDIChild then
    frmMain.ElFormCaption1.Texts.Items[2].Caption := '';
end;

procedure TfrmBase.FormConstrainedResize(Sender: TObject; var MinWidth,
  MinHeight, MaxWidth, MaxHeight: Integer);
begin
  if not ((self.Owner is TPanel) or (Assigned(self.Parent))) then
  begin
    MinHeight := fMinHeigth;
    MinWidth := fMinWidth;
  end;
end;

procedure TfrmBase.RefreshLookupControl(control: TObject);
var
  lookup: TSSPLookup;
  i: integer;
begin
  i := FLookupList.IndexOf(TdxDBGridMRUColumn(control).Name);
  if i < 0 then
    exit;
  lookup := TSSPLookup(FLookupList.Objects[i]);
  if not Assigned(lookup) then
    exit;
  lookup.InitLookupList;
  TdxDBGridMRUColumn(control).TreeList.CancelEditor;
end;

function TfrmBase.RegisterLookupControl(control: TdxMRUEdit; id_dest_field,
  value_dest_field, lookup_sql: string;
  FormClass: TFormClass; mastersource: TObject): TObject;
var
  lookup: TSSPLookup;
begin
  lookup := TSSPLookup.Create(control, id_dest_field, value_dest_field,
    lookup_sql, formClass, mastersource);
  FLookupList.AddObject(control.Name, lookup);
  control.OnButtonClick := OnMRUButtonClick;
  if not Assigned(control.OnExit) then
    control.OnExit := OnMRUExit;
  result := lookup;
end;

function TfrmBase.RegisterLookupControl(control: TdxDBMRUEdit; id_dest_field,
  value_dest_field, lookup_sql: string;
  FormClass: TFormClass; mastersource: TObject): TObject;
var
  lookup: TSSPLookup;
begin
  lookup := TSSPLookup.Create(control, id_dest_field, value_dest_field,
    lookup_sql, formClass, mastersource);
  FLookupList.AddObject(control.Name, lookup);
  control.OnButtonClick := OnMRUButtonClick;
  //  control.ItemsSorted:=false;
  if not Assigned(control.OnExit) then
    control.OnExit := OnMRUExit;
  control.OnEnter := OnMRUEnter;
  result := lookup;
end;

function TfrmBase.RegisterLookupControl(control: TdxDBGridMRUColumn;
  id_dest_field, value_dest_field, lookup_sql: string;
  FormClass: TFormClass; mastersource: TObject): TObject;
var
  lookup: TSSPLookup;
begin
  lookup := TSSPLookup.Create(control, id_dest_field, value_dest_field,
    lookup_sql, formClass, mastersource);
  FLookupList.AddObject(control.Name, lookup);
  control.OnCloseUp := OnMRUCloseUp;
  control.OnButtonClick := OnMRUButtonClick;
  control.ItemsSorted := false;
  control.OnEditButtonClick := OnMRUEnter;
  result := lookup;
end;

function TfrmBase.RegisterLookupControl(control: TdxDBTreeListMRUColumn ;
  id_dest_field, value_dest_field, lookup_sql: string;
  FormClass: TFormClass; mastersource: TObject): TObject;
var
  lookup: TSSPLookup;
begin
  lookup := TSSPLookup.Create(control, id_dest_field, value_dest_field,
    lookup_sql, formClass, mastersource);
  FLookupList.AddObject(control.Name, lookup);
  control.OnCloseUp  := OnMRUCloseUp;
  control.OnButtonClick := OnMRUButtonClick;
  control.ItemsSorted := false;
  control.OnEditButtonClick := OnMRUEnter;
  result := lookup;
end;

procedure TfrmBase.OnMRUButtonClick(
  Sender: TObject);
var
  Form: TForm;
  lookup: TSSPLookup;
  i: integer;
begin
  if (sender is TdxDBGridMRUColumn) then
  begin
    i := FLookupList.IndexOf(TdxDBGridMRUColumn(sender).Name);
    if i < 0 then
      exit;
    lookup := TSSPLookup(FLookupList.Objects[i]);
    if not Assigned(lookup) then
      exit;
    if not Assigned(lookup.LK_FormClass) then
      exit;
    ShowModalForm(lookup.LK_FormClass, Form);
    lookup.InitLookupList;
    TdxDBGridMRUColumn(sender).TreeList.CancelEditor;
  end
  else if (sender is TdxDBTreeListMRUColumn) then
  begin
    i := FLookupList.IndexOf(TdxDBTreeListMRUColumn(sender).Name);
    if i < 0 then
      exit;
    lookup := TSSPLookup(FLookupList.Objects[i]);
    if not Assigned(lookup) then
      exit;
    if not Assigned(lookup.LK_FormClass) then
      exit;
    ShowModalForm(lookup.LK_FormClass, Form);
    lookup.InitLookupList;
    TdxDBTreeListMRUColumn(sender).TreeList.CancelEditor;
  end
  else if (sender is TdxDBMRUEdit) then
  begin
    i := FLookupList.IndexOf(TdxDBMRUEdit(sender).Name);
    if i < 0 then
      exit;
    lookup := TSSPLookup(FLookupList.Objects[i]);
    if not Assigned(lookup) then
      exit;
    if not Assigned(lookup.LK_FormClass) then
      exit;
    ShowModalForm(lookup.LK_FormClass, Form);
    lookup.InitLookupList;
    //  TdxDBMRUEdit(sender).cATreeList.CancelEditor;
  end
  else if (sender is TdxMRUEdit) then
  begin
    i := FLookupList.IndexOf(TdxMRUEdit(sender).Name);
    if i < 0 then
      exit;
    lookup := TSSPLookup(FLookupList.Objects[i]);
    if not Assigned(lookup) then
      exit;
    if not Assigned(lookup.LK_FormClass) then
      exit;
    ShowModalForm(lookup.LK_FormClass, Form);
    lookup.InitLookupList;
    //  TdxDBMRUEdit(sender).cATreeList.CancelEditor;
  end;
end;

procedure TfrmBase.OnMRUCloseUp(Sender: TObject; var Value: Variant; var Accept:
  Boolean);
var
  index: integer;
  lookup: TSSPLookup;
  data: TDataset;
begin
  if not Assigned(FLookupList) then
    exit;
  data :=
    TCustomdxDBTreeListControl((sender as
    TdxDBTreeListColumn).ATreeList).DataSource.DataSet;
  if not Assigned(data) then
    exit;
  index := FLookupList.IndexOf((sender as TComponent).Name);
  if index < 0 then
    exit; //chua dang ky Lookup
  lookup := TSSPLookup(FLookupList.Objects[index]);
  index := lookup.LK_value_list.IndexOf(VarToWideStr(Value));
  if not (data.State in [dsInsert, dsEdit]) then
    data.Edit;
  if index < 0 then //khong tim thay chuoi gia tri
  begin

    //Locked by THUYPTP - 25/02/2009
    //Khong co trong danh sach thi de nguyen

    {Value := '';
    data.FieldByName(lookup.LK_id_dest_field).Clear;}
  end
  else
  begin
    data.FieldByName(lookup.LK_id_dest_field).Value :=
      lookup.LK_id_list.Strings[index];
      

    lookup.F_qry.Locate(lookup.F_qry.Fields[0].FieldName,
    lookup.LK_id_list.Strings[index], []);
  end;
end;

procedure TfrmBase.OnMRUEnter(Sender: TObject);
var
  index: integer;
  lookup: TSSPLookup;
begin
  if not Assigned(FLookupList) then
    exit;
  index := FLookupList.IndexOf((sender as TComponent).Name);
  if index < 0 then
    exit; //chua dang ky Lookup
  lookup := TSSPLookup(FLookupList.Objects[index]);
  lookup.InitLookupList;
end;

procedure TfrmBase.OnMRUExit(Sender: TObject);
var
  index: integer;
  lookup: TSSPLookup;
  data: TDataset;
begin
  if not Assigned(FLookupList) then
    exit;
  if (Sender is TdxDBMRUEdit) then
  begin
    data :=
      (sender as TdxDBMRUEdit).DataSource.DataSet;
    if not Assigned(data) then
      exit;
    index := FLookupList.IndexOf((sender as TComponent).Name);
    if index < 0 then
      exit; //chua dang ky Lookup
    lookup := TSSPLookup(FLookupList.Objects[index]);
    index := lookup.LK_value_list.IndexOf(VarToWideStr((sender as
      TdxDBMRUEdit).Text));
    if not (data.State in [dsInsert, dsEdit]) then
      data.Edit;
    if index < 0 then //khong tim thay chuoi gia tri
    begin
      (sender as TdxDBMRUEdit).Text := '';
      data.FieldByName(lookup.LK_id_dest_field).Clear;
      lookup.InitLookupList;
    end
    else
    begin
      data.FieldByName(lookup.LK_id_dest_field).Value :=
        lookup.LK_id_list.Strings[index];
      lookup.F_qry.Locate(lookup.F_qry.Fields[0].FieldName,
        lookup.LK_id_list.Strings[index], []);
    end;
  end
  else if (Sender is TdxMRUEdit) then
  begin
    index := FLookupList.IndexOf((sender as TComponent).Name);
    if index < 0 then
      exit;
    lookup := TSSPLookup(FLookupList.Objects[index]);
    index := lookup.LK_value_list.IndexOf((sender as TdxMRUEdit).Text);
    if index < 0 then //khong tim thay chuoi gia tri
    begin
      (sender as TdxMRUEdit).Text := '';
      lookup.InitLookupList;
    end
    else
    begin
      lookup.F_qry.Locate(lookup.LK_id_dest_field,
        lookup.LK_id_list.Strings[index], []);
    end
  end
end;

function TfrmBase.GetLookupKeyField(control: TdxMRUEdit): Variant;
var
  index: integer;
  lookup: TSSPLookup;
begin
  if not Assigned(FLookupList) then
    exit;
  index := FLookupList.IndexOf(control.Name);
  if index < 0 then
    exit;
  lookup := TSSPLookup(FLookupList.Objects[index]);
  index := lookup.LK_value_list.IndexOf((control as TdxMRUEdit).Text);
  if index >= 0 then
    result := lookup.LK_id_list.Strings[index];
end;

procedure TfrmBase.SetLookupKeyField(control: TdxMRUEdit; key_value:
  WideString);
var
  index: integer;
  lookup: TSSPLookup;
begin
  if not Assigned(FLookupList) then
    exit;
  index := FLookupList.IndexOf(control.Name);
  if index < 0 then
    exit;
  lookup := TSSPLookup(FLookupList.Objects[index]);
  index := lookup.LK_id_list.IndexOf(key_value);
  if index >= 0 then
  begin
    control.Text := lookup.LK_value_list.Strings[index];
  end
end;

procedure TfrmBase.FormResize(Sender: TObject);
begin
  if (self.Width <= 200) or (self.WindowState = wsMinimized) then
  begin
    self.fcMain.Texts[0].Visible := false;
    if self.fcMain.Texts.Count >= 2 then
      self.fcMain.Texts[1].Visible := true;
  end
  else
  begin
    self.fcMain.Texts[0].Visible := true;
    if self.fcMain.Texts.Count >= 2 then
      self.fcMain.Texts[1].Visible := false;

  end;
end;

procedure TfrmBase.LoadRegistry(com: TComponent);
var
  reg: TRegistry;
  i: integer;
  prefix: string;
  temp: widestring;
  bool_value:boolean;
  text_value:WideString;
  int_value:integer;
  double_value:Double;
  date_value:TDate;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if not Assigned(com) then
  begin
    com := Self;
    prefix := com.Name;
  end
  else if (com is TFrame) then
  begin
    prefix := com.Owner.Name + '\' + com.Name;
  end;

  reg.OpenKey(REGISTRY_ROOT + '\UIConfig\DefaultValue\' + prefix, true);
  if Reg.ReadString('WindowState') = 'wsMaximized' then
    self.WindowState := wsMaximized;

  for i := 0 to com.ComponentCount - 1 do
  begin
    if com.Components[i].Tag = -1 then
    else if (com.Components[i] is TFrame) then
      LoadRegistry(com.Components[i])
    else if (com.Components[i] is TElRadioButton) then
    try
       bool_value:=
        REG.ReadBool(com.Components[i].Name);
      (com.Components[i] as TElRadioButton).Checked:=bool_value;
    except
    end
    else if (com.Components[i] is TdxEdit) then
    try
      text_value   :=
        UTF8Decode(REG.ReadString(com.Components[i].Name));
      if Trim(text_value)<>'' then
        (com.Components[i] as TdxEdit).Text:=text_value;
    except
    end
    else if (com.Components[i] is TdxMemo) then
    try
       text_value:=
        UTF8Decode(REG.ReadString(com.Components[i].Name));
       (com.Components[i] as TdxMemo).Text:=text_value;
    except
    end
    else if (com.Components[i] is TdxSpinEdit) then
    try
      int_value:=
         REG.ReadInteger(com.Components[i].Name);
      (com.Components[i] as TdxSpinEdit).IntValue :=int_value;
    except
    end
    else if (com.Components[i] is TdxCalcEdit) then
    try
      double_value:=
        StrToFloat(REG.ReadString(com.Components[i].Name));
      (com.Components[i] as TdxCalcEdit).Text :=FloatToStr(double_value);
    except
    end
    else if (com.Components[i] is TdxDateEdit) then
    try
      date_value:=
        REG.ReadDate(com.Components[i].Name);
      
      (com.Components[i] as TdxDateEdit).Date :=date_value;
    except
    end
    else if (com.Components[i] is TdxCheckEdit) then
    try
       bool_value:=
        REG.ReadBool(com.Components[i].Name);
      (com.Components[i] as TdxCheckEdit).Checked :=bool_value;
    except
    end
    else if (com.Components[i] is TdxImageEdit) then
    try
      text_value:=
        UTF8Decode(REG.ReadString(com.Components[i].Name));
      if Trim(text_value)<>'' then
      (com.Components[i] as TdxImageEdit).Text :=text_value;

    except
    end
    else if (com.Components[i] is TdxButtonEdit) then
    try
      text_value:=
        UTF8Decode(REG.ReadString(com.Components[i].Name));
      if Trim(text_value)<>'' then
        (com.Components[i] as TdxButtonEdit).Text :=text_value;
    except
    end
    else if (com.Components[i] is TdxMRUEdit) then
    try
      text_value:=
        UTF8Decode(REG.ReadString(com.Components[i].Name + '_Text'));
      temp := REG.ReadString(com.Components[i].Name + '_Text');
      temp := UTF8Decode(temp);
      if Trim(text_value)<>'' then
        (com.Components[i] as TdxMRUEdit).Text :=text_value;
    except
    end
    else
  end;
  reg.CloseKey;
  reg.Free;
end;

procedure TfrmBase.SaveRegistry(com: TComponent);
var
  reg: TRegistry;
  i: integer;
  prefix: string;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if not Assigned(com) then
  begin
    com := Self;
    prefix := com.Name;
  end
  else if (com is TFrame) then
  begin

    prefix := com.Owner.Name + '\' + com.Name;
  end;

  reg.OpenKey(REGISTRY_ROOT + '\UIConfig\DefaultValue\' + prefix, true);
  if self.WindowState = wsMaximized then
    Reg.WriteString('WindowState', 'wsMaximized')
  else
    Reg.WriteString('WindowState', 'wsNormal');

  for i := 0 to com.ComponentCount - 1 do
  begin
    if (com.Components[i] is TFrame) then
      SaveRegistry(com.Components[i])
    else if (com.Components[i] is TdxEdit) then
    try
      REG.WriteString(com.Components[i].Name, UTF8Encode((com.Components[i] as
        TdxEdit).Text));
    except
    end
    else if (com.Components[i] is TElRadioButton) then
    try
      REG.WriteBool(com.Components[i].Name, (com.Components[i] as
        TElRadioButton).Checked);
    except
    end
    else if (com.Components[i] is TdxMemo) then
    try
      REG.WriteString(com.Components[i].Name, UTF8Encode((com.Components[i] as
        TdxMemo).Text));
    except
    end
    else if (com.Components[i] is TdxSpinEdit) then
    try
      REG.WriteInteger(com.Components[i].Name, (com.Components[i] as
        TdxSpinEdit).IntValue);
    except
    end
    else if (com.Components[i] is TdxCalcEdit) then
    try
      REG.WriteString(com.Components[i].Name, (com.Components[i] as
        TdxCalcEdit).Text);
    except
    end
    else if (com.Components[i] is TdxDateEdit) then
    try
      REG.WriteDate(com.Components[i].Name, (com.Components[i] as
        TdxDateEdit).Date);
    except
    end
    else if (com.Components[i] is TdxCheckEdit) then
    try
      REG.WriteBool(com.Components[i].Name, (com.Components[i] as
        TdxCheckEdit).Checked);
    except
    end
    else if (com.Components[i] is TdxImageEdit) then
    try
      REG.WriteString(com.Components[i].Name, UTF8Encode((com.Components[i] as
        TdxImageEdit).Text));
    except
    end
    else if (com.Components[i] is TdxButtonEdit) then
    try
      REG.WriteString(com.Components[i].Name, (com.Components[i] as
        TdxButtonEdit).Text);
    except
    end
    else if (com.Components[i] is TdxMRUEdit) then
    try
      REG.WriteString(com.Components[i].Name + '_Text',
        UTF8Encode((com.Components[i] as TdxMRUEdit).Text));
    except
    end
    else
  end;
  reg.CloseKey;
  reg.Free;
end;

procedure TfrmBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) then
  begin
    if not Assigned(F_CustomForm) then
      exit;
    if (Key = VK_F9) then
      LogConfig(F_CustomForm)
    else if (Key = VK_F10) then
      dmMain.ScanForm(F_CustomForm)
    else if (Key = VK_F12) then
      AuthorityConfig(F_CustomForm)
    else if (Key = VK_F1) then
      ShowHelpContext(F_CustomForm.HelpFile)
  end
  else
  begin
    if (Key = VK_F9) then
      LogConfig(TComponent(Sender))
    else if (Key = VK_F10) then
      dmMain.ScanForm(Sender)
    else if (Key = VK_F11) then
      AuthorityConfig(frmMain)
    else if (Key = VK_F12) then
      AuthorityConfig(TForm(Sender))
    else if (Key = VK_F1) then
      ShowHelpContext(TForm(Sender).HelpFile)
  end
end;
end.

