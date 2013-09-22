unit LookupFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, StdCtrls, DB, dxDBGrid, dxDBTL,
  dxTL, TntStdCtrls, ElCLabel, ElLabel, ElXPThemedControl, ElEdits,
  ElCaption, ElStrUtils, ElBtnCtl, ElPopBtn, dxLayoutControl, cxControls,
  IBODataset, ElPgCtl;

type
  TdxmyDBPopupEdit = class(TdxDBPopupEdit);
  TLookup = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtKeyword: TdxEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxPickEdit1: TdxPickEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    FDataset: TDataset;
    FFieldName: string;
    FieldList: array[0..255] of string;
  public
    { Public declarations }
    function SearchDataset(ADataset: TDataset; AFieldName: string): Boolean;
    procedure SearchGrid(AGrid: TObject);
    function SearchInData(): boolean;
    function SearchInGrid(AGrid: TdxDBGrid; AFieldName: string; AKeyword: WideString): Boolean;
    function SearchInTree(ATree: TdxDBTreeList; AFieldName: string; AKeyword: WideString): Boolean;
  end;

var
  Lookup: TLookup;
  CurGrid: TObject;
  SearchResult :boolean;
implementation

uses MainDM, SSP_Library;

{$R *.dfm}

function TLookup.SearchDataset(ADataset: TDataset; AFieldName: string): Boolean;
begin
  with TLookup.Create(Application) do
  try
    FDataset := ADataset;
    FFieldName := AFieldName;
    if ShowModal = mrOK then
      Result := True
    else
      Result := False;
  finally
    Free;
  end;
end;

procedure TLookup.FormShow(Sender: TObject);
var
  i: Smallint;
  TenField: WideString;
  StrTmp: string;
begin
  if (CurGrid.ClassName = 'TdxDBGrid') then
  begin
    for i := 0 to (CurGrid as TdxDBGrid).ColumnCount - 1 do
    begin
      dxPickEdit1.Items.Add((CurGrid as TdxDBGrid).Columns[i].Caption);
      TenField := (CurGrid as TdxDBGrid).Columns[i].FieldName;
      StrTmp := TenField;
      FieldList[i] := StrTmp;

      if TenField = FFieldName then
        dxPickEdit1.Text := (CurGrid as TdxDBGrid).Columns[i].Caption;
    end;
  end
  else if (CurGrid.ClassName = 'TdxDBTreeList') then
    for i := 0 to (CurGrid as TdxDBTreeList).ColumnCount - 1 do
    begin
      dxPickEdit1.Items.Add((CurGrid as TdxDBTreeList).Columns[i].Caption);
      TenField := (CurGrid as TdxDBTreeList).Columns[i].FieldName;
      StrTmp := TenField;
      FieldList[i] := StrTmp;

      if TenField = FFieldName then
        dxPickEdit1.Text := (CurGrid as TdxDBTreeList).Columns[i].Caption;
    end;

  if not FDataSet.Active then
    FDataset.Open;
end;

function TLookup.SearchInGrid(AGrid: TdxDBGrid; AFieldName: string; AKeyword: WideString): Boolean;
var
  str, substr: WideString;
  temp_str, temp_substr: String;

  qry: TDataSet;
  stop:boolean;
begin
  Result := false;
  AGrid.GotoFirst;
  substr := WideLowerCase(AKeyword);
  temp_substr:= StringReplace(UTF8Encode(substr),' ','',[rfReplaceAll]);
  qry := AGrid.DataSource.DataSet;
  stop:=false;
  AGrid.GotoFirst;
  repeat
    stop:=Agrid.IsEOF;
    if not qry.FieldByName(AFieldName).IsNull then
    begin
      str := WideLowerCase(AGrid.GetDisplayValue(AGrid.FocusedNode, AGrid.FocusedAbsoluteIndex));
      temp_str := StringReplace(UTF8Encode(str),' ','',[rfReplaceAll]);
      if Pos(temp_substr, temp_str) > 0 then
      begin
        Result := true;
        AGrid.SetFocus;
        qry.FieldByName(AFieldName).FocusControl;
        Exit;
      end;
    end;
    AGrid.GotoNext(True);
  until stop;
end;

function TLookup.SearchInTree(ATree: TdxDBTreeList; AFieldName: string; AKeyword: WideString): Boolean;
var
  str, substr: WideString;
  stop:boolean;
begin
  Result := false;
  ATree.GotoFirst;
  substr := WideLowerCase(AKeyword);
  stop:=false;
  repeat
    stop := ATree.IsEOF;
    if not ATree.DataSource.DataSet.FieldByName(AFieldName).IsNull then
    begin
      {if (ATree.DataSource.DataSet.FieldByName(AFieldName) is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT,ATree.DataSource.DataSet.FieldByName(AFieldName).AsDateTime))
      else
        str:= WideLowerCase(ATree.DataSource.DataSet.FieldByName(AFieldName).Value);}

      str := WideLowerCase(ATree.GetDisplayValue(ATree.FocusedNode, ATree.FocusedAbsoluteIndex));
      if Pos(substr, str) > 0 then
      begin
        Result := true;
        ATree.DataSource.DataSet.FieldByName(AFieldName).FocusControl;
        ATree.SetFocus;
        Break;
      end;
    end;
    ATree.GotoNext(True);
  until stop;
end;

function TLookup.SearchInData: boolean;
begin
  Result := false;

  if (CurGrid.ClassName = 'TdxDBGrid') then
  begin
    (CurGrid as TdxDBGrid).DataSource.DataSet.DisableControls;
    Result := SearchInGrid(CurGrid as TdxDBGrid, FieldList[dxPickEdit1.ItemIndex], edtKeyword.Text);
    (CurGrid as TdxDBGrid).DataSource.DataSet.EnableControls;
  end
  else if (CurGrid.ClassName = 'TdxDBTreeList') then
  begin
    (CurGrid as TdxDBTreeList).DataSource.DataSet.DisableControls;
    Result := SearchInTree(CurGrid as TdxDBTreeList, FieldList[dxPickEdit1.ItemIndex], edtKeyword.Text);
    (CurGrid as TdxDBTreeList).DataSource.DataSet.EnableControls;
  end
  else exit;
end;

procedure TLookup.SearchGrid(AGrid: TObject);
begin
  CurGrid := AGrid;
  if (AGrid.ClassName = 'TdxDBGrid') then
  begin
    {if (AGrid as TdxDBGrid).Filter.Active then
      (AGrid as TdxDBGrid).Filter.AutoDataSetFilter:=True;}

    SearchDataset((AGrid as TdxDBGrid).DataSource.Dataset, (AGrid as TdxDBGrid).FocusedField.FieldName);

    {if (AGrid as TdxDBGrid).Filter.Active then
      (AGrid as TdxDBGrid).Filter.AutoDataSetFilter:=False;}
  end
  else if (AGrid.ClassName = 'TdxDBTreeList') then
    SearchDataset((AGrid as TdxDBTreeList).DataSource.Dataset, (AGrid as TdxDBTreeList).FocusedField.FieldName);
end;

procedure TLookup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F10 then
    dmMain.ScanForm(Self);
end;

procedure TLookup.FormCreate(Sender: TObject);
begin
  ApplyOption(TControl(self));
  edtKeyword.Text := OldKeyWord;
end;

procedure TLookup.ElPopupButton1Click(Sender: TObject);
begin
  IsSearching := True;
  if SearchInData() then
  begin
    IsSearching := False;
    OldKeyWord := edtKeyword.Text;
    SearchResult := True;
    ModalResult := mrOK;
  end
  else
    ShowMessageUnicode(49);
end;

procedure TLookup.ElPopupButton2Click(Sender: TObject);
begin
  SearchResult := False;
  ModalResult := mrCancel;
end;

procedure TLookup.FormActivate(Sender: TObject);
begin
  edtKeyword.SetFocus;
end;

end.

