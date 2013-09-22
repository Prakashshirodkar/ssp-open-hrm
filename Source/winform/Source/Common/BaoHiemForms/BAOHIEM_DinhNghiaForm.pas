//******************************************************************//
//************** Create form by THUYPTP - 04/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_DinhNghiaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  StdCtrls, ElCLabel, ElLabel, ElPanel, ElSplit, ElPgCtl, dxBar, dxDBCtrl,
  dxTL, dxCntner, dxDBTL, ExtCtrls, DB, dxmdaset, IBODataset, ImgList,
  ActnList, IB_Components, IB_Process, IB_Script;

type
  TfrmBAOHIEM_DinhNghia = class(TfrmBase)
    panelLeft: TPanel;
    dxtlMenuList: TdxDBTreeList;
    dxtlMenuListMENU_TITLE: TdxDBTreeListColumn;
    dxtlMenuListMENU_ICON_INDEX: TdxDBTreeListMaskColumn;
    dxBarDockControl1: TdxBarDockControl;
    pageControl: TElPageControl;
    ElTabSheet1: TElTabSheet;
    ElSplitter1: TElSplitter;
    mainPanel: TElPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    pageContent: TElPageControl;
    tabIntroduce: TElTabSheet;
    tabVIewDetail: TElTabSheet;
    panelView: TPanel;
    qryMenuList: TIBOQuery;
    qryMenuListMENU_ID: TWideStringField;
    qryMenuListMENU_TITLE: TWideStringField;
    qryMenuListMENU_ICON_INDEX: TIntegerField;
    qryMenuListP_MENU_ID: TWideStringField;
    qryMenuListMENU_TITLE_ENG: TWideStringField;
    memMenuList: TdxMemData;
    memMenuListMENU_ID: TWideStringField;
    memMenuListMENU_TITLE: TWideStringField;
    memMenuListMENU_ICON_INDEX: TIntegerField;
    memMenuListP_MENU_ID: TWideStringField;
    memMenuListMENU_TITLE_ENG: TWideStringField;
    dsMenuList: TDataSource;
    qryMauBHXH: TIBOQuery;
    dsPALuong: TDataSource;
    qryMauBHXHKEY_ID: TIntegerField;
    qryMauBHXHMAU_KYHIEU: TWideStringField;
    qryMauBHXHMAU_TEN: TWideStringField;
    qryMauBHXHMAU_THANGNAM_APDUNG: TIntegerField;
    qryMauBHXHMAU_THANGNAM_HETHAN: TIntegerField;
    qryMauBHXHMAU_PHANLOAI: TWideStringField;
    qryMauBHXHMAU_NGUOILAP: TWideStringField;
    qryMauBHXHMAU_NGAYLAP: TDateField;
    qryMauBHXHMAU_GHICHU: TWideStringField;
    ActionList1: TActionList;
    acTaoMauBHXH: TAction;
    acSuaMauBHXH: TAction;
    acXoaMauBHXH: TAction;
    acXemChiTiet: TAction;
    acSaoChepMauBHXH: TAction;
    imgMenuList: TImageList;
    memMenuListMAUBHXH_MA: TIntegerField;
    dxMenuTaoMau: TdxBarPopupMenu;
    dxMenuChinhMau: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxTaoMauBHXH: TdxBarButton;
    dxXoaMauBHXH: TdxBarButton;
    dxHieuChinhMauBHXH: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxSaoChepMauBHXH: TdxBarButton;
    dxMethodDetail: TdxBarButton;
    qryCheck: TIBOQuery;
    scriptExecute: TIB_Script;
    procedure FormCreate(Sender: TObject);
    procedure RefreshMenu;
    procedure dxtlMenuListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxtlMenuListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acTaoMauBHXHExecute(Sender: TObject);
    procedure acSuaMauBHXHExecute(Sender: TObject);
    procedure acXoaMauBHXHExecute(Sender: TObject);
    procedure acXemChiTietExecute(Sender: TObject);
    procedure dxtlMenuListDblClick(Sender: TObject);
    procedure acXemChiTietUpdate(Sender: TObject);
    procedure XemChiTietMau;
    procedure acXoaMauBHXHUpdate(Sender: TObject);
  private
    { Private declarations }
    F_CUR_MAU_KYHIEU: WideString;
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_DinhNghia: TfrmBAOHIEM_DinhNghia;

implementation

uses MainDM, MenuListForm, SSP_Library, ToolbarFrame, BAOHIEM_TaoMauForm,
  BAOHIEM_ThietKeMauForm;

{$R *.dfm}

procedure TfrmBAOHIEM_DinhNghia.FormCreate(Sender: TObject);
begin
  inherited;
  pageContent.ActivePageIndex := 0;
  pageContent.ShowTabs := false;
  RefreshMenu;
end;

procedure TfrmBAOHIEM_DinhNghia.RefreshMenu;
begin
  if memMenuList.Active then
    memMenuList.Close;
  memMenuList.Open;

  qryMenuList.Open;
  memMenuList.LoadFromDataSet(qryMenuList);
  qryMauBHXH.Open;
  if not qryMauBHXH.IsEmpty then
  begin
    qryMauBHXH.First;
    while not qryMauBHXH.Eof do
    begin
      memMenuList.Insert;
      memMenuListP_MENU_ID.Value := 'DS_MAU_BHXH';
      memMenuListMENU_ID.Value := qryMauBHXHMAU_KYHIEU.Value;
      memMenuListMENU_TITLE.Value := qryMauBHXHMAU_TEN.Value;
      memMenuListMENU_TITLE_ENG.Value := qryMauBHXHMAU_TEN.Value;
      memMenuListMENU_ICON_INDEX.Value := 0;
      memMenuListP_MENU_ID.Value := qryMauBHXHMAU_PHANLOAI.Value;
      memMenuListMAUBHXH_MA.Value := qryMauBHXHKEY_ID.Value;
      memMenuList.Post;
      qryMauBHXH.Next;
    end;
  end;
  dxtlMenuList.FullExpand;
  qryMenuList.Close;
  qryMauBHXH.Close;
end;  

procedure TfrmBAOHIEM_DinhNghia.dxtlMenuListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if sysConfig.AdminRight then
  begin
    if (Key = Ord('D')) and (ssCtrl in Shift) then
    begin
      ShowModalForm(TfrmMenuItem, frmMenuItem);
      dxtlMenuList.FullExpand;
      Exit;
    end;
  end;
end;

procedure TfrmBAOHIEM_DinhNghia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree;
  frmBAOHIEM_DinhNghia := nil;
  if Assigned(F_CustomForm) then
    F_CustomForm.Close;
end;

procedure TfrmBAOHIEM_DinhNghia.dxtlMenuListMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbRight then
  begin
    if memMenuListMENU_ICON_INDEX.Value > 0 then
      dxMenuTaoMau.PopupFromCursorPos
    else
      dxMenuChinhMau.PopupFromCursorPos
  end;
end;

procedure TfrmBAOHIEM_DinhNghia.acTaoMauBHXHExecute(Sender: TObject);
begin
  inherited;
  frmBAOHIEM_TaoMau := TfrmBAOHIEM_TaoMau.Create(self);
  try
    frmBAOHIEM_TaoMau.ShowModal;
  finally
    frmBAOHIEM_TaoMau.Free;
    frmBAOHIEM_TaoMau := nil;
  end;
  RefreshMenu;
end;

procedure TfrmBAOHIEM_DinhNghia.acSuaMauBHXHExecute(Sender: TObject);
begin
  inherited;
  frmBAOHIEM_TaoMau := TfrmBAOHIEM_TaoMau.Create(self, memMenuListMENU_ID.Value);
  try
    frmBAOHIEM_TaoMau.ShowModal;
  finally
    frmBAOHIEM_TaoMau.Free;
    frmBAOHIEM_TaoMau := nil;
  end;
  RefreshMenu;
end;

procedure TfrmBAOHIEM_DinhNghia.acXoaMauBHXHExecute(Sender: TObject);
  function CheckValid: boolean;
  begin
    result := true;
    try
      if qryCheck.Active then
        qryCheck.Close;
      qryCheck.SQL.Text := 'select first 1 BAOHIEM_KEY_ID from HR_BAOHIEM_' +
        UpperCase(memMenuListMENU_ID.AsString);
      qryCheck.Prepare;
      qryCheck.Open;
      if qryCheck.IsEmpty = false then
        result := false;

      if qryCheck.Active then
        qryCheck.Close;
      //qryCheck.SQL.Text := 'select first 1 TREE_ID from HR_GLOBAL_VARIABLE';
      qryCheck.SQL.Text := 'select first 1 CT_MA from HR_BAOHIEM_CONGTHUC ' +
        'WHERE MAU_ID = :MAU_ID';
      qryCheck.ParamByName('MAU_ID').Value := memMenuListMAUBHXH_MA.Value;
      qryCheck.Prepare;
      qryCheck.Open;
      if qryCheck.IsEmpty = false then
        result := false;

    except
      result := false;
    end;
    qryCheck.Close;
  end;
begin
  inherited;
  // Step 1: Kiem tra xem co duoc phep xoa mau Bao hiem hay khong?
  // Dieu kien : chua duoc su dung de tinh nop BH hay dinh nghia cong thuc tinh
  if ShowMessageUnicode(123) <> mrYes then
    Exit;
  if CheckValid = false then
  begin
    ShowMessageUnicode(124);
    Exit;
  end;

  // Step 2: Xoa thong tin luong
  // - Drop trigger
  // - Drop generator
  // - Drop table
  try
    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Add('DROP TRIGGER HR_BAOHIEM_' + UpperCase(memMenuListMENU_ID.AsString) +
     '_BI;');

    scriptExecute.SQL.Add('DROP GENERATOR GEN_HR_BAOHIEM_' + UpperCase(memMenuListMENU_ID.AsString)
      + '_ID;');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    //Added by THUYPTP - 05/05/2009
    //Phai thuc thi doan nay truoc, commit transaction thi moi xoa cac table duoc
    scriptExecute.Execute;

    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Add('DROP TABLE HR_BAOHIEM_' + UpperCase(memMenuListMENU_ID.AsString) + ';');
    scriptExecute.SQL.Add(' COMMIT WORK;');

    scriptExecute.SQL.Add('delete from HR_BAOHIEM_MAU where MAU_KYHIEU=''' +
      memMenuListMENU_ID.AsString + ''';');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    scriptExecute.Execute;

    ShowMessageUnicode(125);
    RefreshMenu;
    qryMauBHXH.Open;
    if qryMauBHXH.IsEmpty then
    begin
      if Assigned(F_CustomForm) then
      begin
        F_CustomForm.Close;
        F_CustomForm.Free;
        F_CustomForm := nil;
      end;
      F_CUR_MAU_KYHIEU :='';
    end
    else
      acXemChiTiet.Execute;
    qryMauBHXH.Close;
  except
    //Added by THUYPTP - 05/05/2009
    //Khi xóa table WB bi loi thi generator va trigger cua table WB_ da bi xoa
    //Do do phai tao lai de sau nay co xoa van chay dung
    //===========tao GENERATOR va TRIGGER==========================
    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Add(
        ' CREATE SEQUENCE GEN_HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString + '_ID;');

    scriptExecute.SQL.Add(' SET TERM ^ ; ');
    scriptExecute.SQL.Add(
        ' CREATE TRIGGER HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString + '_BI FOR HR_BAOHIEM_' +
        qryMauBHXHMAU_KYHIEU.AsString +
        ' ACTIVE BEFORE INSERT POSITION 0 ' +
        ' AS ' +
        ' BEGIN ' +
        ' IF (NEW.BAOHIEM_KEY_ID IS NULL) THEN ' +
        '   NEW.BAOHIEM_KEY_ID = GEN_ID(GEN_HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        '_ID,1); ' +
        ' END   ');
    scriptExecute.SQL.Add(' ^ ');
    scriptExecute.SQL.Add(' SET TERM ; ^ ');
    scriptExecute.Execute;

    ShowMessageUnicode(126);
  end
end;

procedure TfrmBAOHIEM_DinhNghia.acXemChiTietExecute(Sender: TObject);
begin
  inherited;
  XemChiTietMau;
end;

procedure TfrmBAOHIEM_DinhNghia.dxtlMenuListDblClick(Sender: TObject);
begin
  inherited;
  acXemChiTiet.Execute;
end;

procedure TfrmBAOHIEM_DinhNghia.acXemChiTietUpdate(Sender: TObject);
begin
  inherited;
  acXemChiTiet.Enabled := (memMenuListMENU_ICON_INDEX.Value = 0);
end;

procedure TfrmBAOHIEM_DinhNghia.XemChiTietMau;
begin
  if F_CUR_MAU_KYHIEU = memMenuListMENU_ID.Value then
    exit;
  if Assigned(F_CustomForm) then
  begin
    F_CustomForm.Close;
    F_CustomForm.Free;
  end;
  F_CustomForm := TfrmBAOHIEM_ThietKeMau.Create(Self);
  F_CUR_MAU_KYHIEU := memMenuListMENU_ID.Value;
  ApplyOption(TControl(F_CustomForm));
  with F_CustomForm do
  try
    BorderStyle := bsNone;
    Align := alClient;
    Parent := panelView;
    Visible := true;
  finally
  end;
  lblListCaption.Caption := WideUpperCase(F_CustomForm.fcMain.Texts[0].Caption +
    ' ' + memMenuListMENU_TITLE.Value);
  pageContent.ActivePageIndex := 1;
end;

procedure TfrmBAOHIEM_DinhNghia.acXoaMauBHXHUpdate(Sender: TObject);
begin
  inherited;
  acXoaMauBHXH.Enabled := (memMenuListMENU_ICON_INDEX.Value = 0);
end;

end.
