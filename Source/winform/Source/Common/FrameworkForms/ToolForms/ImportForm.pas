unit ImportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, dxLayoutLookAndFeels, dxLayoutControl, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, ElXPThemedControl, ElBtnCtl, ElPopBtn, dxDBGrid,
  cxControls, XLSReadWriteII, IBODataset, ComCtrls;
type
  TImportFrm = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxMemo1: TdxMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    ProgressBar1: TProgressBar;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    SaveDialog1: TSaveDialog;
    procedure FormActivate(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    ImportGrid: TdxDBGrid;
    { Public declarations }
  end;

var
  ImportFrm: TImportFrm;

implementation

uses MainDM;

//uses GlobalUnit;



{$R *.dfm}

procedure TImportFrm.FormActivate(Sender: TObject);
var
  i, j, ImportCount, ErrorCount: Integer;
  XLSRead: TXLSReadWriteII;
  OpenDialog1: TOpenDialog;
  IsErrorRow: Boolean;
begin
  if not ImportGrid.IsImportFromXLS then exit;
  if (ImportGrid.DataSource.DataSet is TIBOQuery) then
    if (ImportGrid.DataSource.DataSet as TIBOQuery).InsertSQL.Text = '' then exit;
  OpenDialog1 := TOpenDialog.Create(nil);
  OpenDialog1.Filter := 'Excel Files|*.xls';
  OpenDialog1.DefaultExt := 'xls';
  if not OpenDialog1.Execute then
  begin
    ModalResult := mrOk;
    Self.Close;
    Exit;
  end;
  ElPopupButton1.Enabled := True;
//  ImportingFromXLS := True;
  XLSRead := TXLSReadWriteII.Create(nil);
  XLSRead.Filename := OpenDialog1.FileName;
  try
    XLSRead.Read;
  except
    XLSRead.Free;
    OpenDialog1.Free;
    ShowMessageUnicode('Vui lòng đóng chương trình Excel');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  ImportCount := XLSRead.Sheets.Items[0].LastRow;
  ProgressBar1.Max := ImportCount;
  ErrorCount := 0;
  for i := 1 to ImportCount do
  begin
    ProgressBar1.StepIt;
    IsErrorRow := False;
    ImportGrid.DataSource.DataSet.Insert;
    try
      for j := 0 to ImportGrid.VisibleColumnCount - 1 do
        if XLSRead.Sheets.Items[0].AsWideString[j, i] <> '' then
          ImportGrid.DataSource.DataSet.FieldByName(ImportGrid.Columns[j].FieldName).Value := XLSRead.Sheets.Items[0].AsWideString[j, i];

      ImportGrid.DataSource.DataSet.Post;
    except
      IsErrorRow := True;
      dxMemo1.Text := dxMemo1.Text + UTF8Decode('********* Dòng ' + IntToStr(i) + ' đưa vào bị lỗi *********') + #13#10;
      ErrorCount := ErrorCount + 1;
      ImportGrid.DataSource.DataSet.Cancel;
    end;
    if IsErrorRow = False then
      dxMemo1.Text := dxMemo1.Text + UTF8Decode('- Dòng ' + IntToStr(i) + ' đưa vào THÀNH CÔNG') + #10;
    dxMemo1.Refresh;
  end;
  ProgressBar1.Visible := False;
  dxLayoutControl1Item3.Visible := True;
  XLSRead.Free;
  OpenDialog1.Free;
//  ImportingFromXLS := False;
  ImportCount := ImportCount - ErrorCount;
  Screen.Cursor := crDefault;
  ShowMessageUnicode('Hoàn tất');
  ElPopupButton1.Enabled := True;
end;

procedure TImportFrm.ElPopupButton2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    dxMemo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TImportFrm.ElPopupButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.

