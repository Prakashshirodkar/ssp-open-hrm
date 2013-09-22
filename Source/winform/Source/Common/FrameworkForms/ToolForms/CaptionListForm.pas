unit CaptionListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClms,
  ElCaption, XLSReadWriteII, ElXPThemedControl, ElBtnCtl, ElPopBtn, ImgList,
  ElCheckCtl, DB, IBODataset, ComCtrls, IB_Components, IB_Process,
  IB_Script, ElACtrls;

type
  TCaptionListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    gridCaption: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    OpenDialog1: TOpenDialog;
    btnReRead: TElPopupButton;
    locFormItem2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    locFormGroup1: TdxLayoutGroup;
    ElPopupButton3: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    locFormItem5: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    qryCap: TIBOQuery;
    dsCap: TDataSource;
    gridCaptionCONTROL_NAME: TdxDBGridColumn;
    gridCaptionCAPTION_VN: TdxDBGridColumn;
    gridCaptionCAPTION_ENG: TdxDBGridColumn;
    gridCaptionFORM_NAME: TdxDBGridMaskColumn;
    gridCaptionCAPTION_DEFAULT: TdxDBGridMaskColumn;
    gridCaptionPARENT_CONTROL: TdxDBGridMaskColumn;
    gridCaptionCONTROL_TYPE: TdxDBGridMaskColumn;
    gridCaptionHINT_VN: TdxDBGridMaskColumn;
    gridCaptionHINT_ENG: TdxDBGridMaskColumn;
    gridCaptionHINT_DEFAULT: TdxDBGridMaskColumn;
    ElPopupButton5: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    pgBar: TProgressBar;
    locFormItem7: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    locFormItem10: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    ElPopupButton7: TElPopupButton;
    locFormItem11: TdxLayoutItem;
    scrCustomize: TIB_Script;
    locFormGroup4: TdxLayoutGroup;
    dxMemo1: TElAdvancedMemo;
    locFormItem12: TdxLayoutItem;
    qryExecute: TIBOQuery;
    qryCapK_FIELD: TWideStringField;
    qryCapFORM_NAME: TWideStringField;
    qryCapCONTROL_NAME: TWideStringField;
    qryCapCAPTION_VN: TWideStringField;
    qryCapCAPTION_ENG: TWideStringField;
    qryCapCAPTION_DEFAULT: TWideStringField;
    qryCapPARENT_CONTROL: TWideStringField;
    qryCapCONTROL_TYPE: TWideStringField;
    qryCapHINT_VN: TWideStringField;
    qryCapHINT_ENG: TWideStringField;
    qryCapHINT_DEFAULT: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnReReadClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure qryCapAfterDelete(DataSet: TDataSet);
    procedure qryCapAfterPost(DataSet: TDataSet);
    procedure ElPopupButton5Click(Sender: TObject);
    procedure ElPopupButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridCaptionCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure qryCapBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    CurForm: TControl;
    { Public declarations }
  end;

var
  CaptionListFrm: TCaptionListFrm;

implementation

uses SheetData, MainDM, PopupMainForm, PopupBaoHiemForm;

{$R *.dfm}

procedure TCaptionListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qryCap.State = dsEdit then
    qryCap.Post;
  qryCap.Close;
  if qryCap.Tag = 1 then
    dmMain.SetCaption(CurForm);
end;

procedure TCaptionListFrm.FormShow(Sender: TObject);
begin
  qryCap.Tag := 0;
  qryCap.Close;
  if CurForm <> frmPopupMain then
  begin
    qryCap.ParamByName('FORM_NAME').Value := CurForm.Name;
    qryCap.ParamByName('PARAM_TYPE').Value := 0;
    dxMemo1.Lines.Text := scrCustomize.SQL.Text +
      ' and (FORM_NAME=''' + CurForm.Name + '''); COMMIT WORK;';
  end
  else
  begin
    qryCap.ParamByName('FORM_NAME').Value := 'frmPopupMain;frmPopupBaoHiem';
    qryCap.ParamByName('PARAM_TYPE').Value := 1;
    dxMemo1.Lines.Text := scrCustomize.SQL.Text +
      ' and (''' + CurForm.Name + ''' containing FORM_NAME); COMMIT WORK;';
    ;
  end;
  qryCap.Open;
end;

procedure TCaptionListFrm.btnReReadClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  if CurForm <> frmPopupMain then
    dmMain.LoadCaption(CurForm, pgBar)
  else
  begin
    dmMain.LoadCaption(frmPopupMain, pgBar);
    dmMain.LoadCaption(frmPopupBaoHiem, pgBar);
  end;
  qryCap.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TCaptionListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F10 then
    if Self.Name = 'CaptionListFrm' then
      dmMain.LoadCaption(Self, pgbar);
end;

procedure TCaptionListFrm.ElPopupButton4Click(Sender: TObject);
begin
  if qryCap.RecordCount > 0 then
  begin
    if gridCaption.SelectedCount > 1 then
      gridCaption.DeleteSelection
    else
      qryCap.Delete;
  end;
end;

procedure TCaptionListFrm.ElPopupButton1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  if CurForm <> frmPopupMain then
    dmmain.SetCaption(CurForm)
  else
  begin
    dmmain.SetCaption(frmPopupBaoHiem);
    dmmain.SetCaption(frmPopupMain);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCaptionListFrm.qryCapAfterDelete(DataSet: TDataSet);
begin
  qryCap.Tag := 1;
end;

procedure TCaptionListFrm.qryCapAfterPost(DataSet: TDataSet);
begin
  qryCap.Tag := 1;
end;

procedure TCaptionListFrm.ElPopupButton5Click(Sender: TObject);
var
  sql: string;
begin
  if CurForm <> frmPopupMain then
    qryExecute.SQL.Text :=
      'delete from CAPTION_LIST where FORM_NAME=''' + CurForm.Name + ''''
  else
    qryExecute.SQL.Text :=
      'delete from CAPTION_LIST where ''frmPopupMain;frmPopupBaoHiem'' containing FORM_NAME';
  dmMain.ExecuteSQL(qryExecute);
  qryCap.Refresh;
end;

procedure TCaptionListFrm.ElPopupButton6Click(Sender: TObject);
var
  ok: boolean;
begin
  if not Assigned(scrCustomize.IB_Connection) then
  begin
    scrCustomize.IB_Connection := qryCap.IB_Connection;
    scrCustomize.IB_Transaction := qryCap.IB_Transaction;
  end;
  scrCustomize.SQL.Text := dxMemo1.Lines.Text;
  try
    ok := true;
    scrCustomize.Execute;
  except
    ShowMessage('Error while executing SQL statement!');
    ok := false;
  end;
  if ok then qryCap.Refresh;
end;

procedure TCaptionListFrm.FormCreate(Sender: TObject);
begin
  locFormGroup2.Visible := sysCOnfig.AdminRight;
  ApplyOption(TControl(Sender));
end;

procedure TCaptionListFrm.gridCaptionCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  try
    if (Anode.AbsoluteIndex mod 2) = 0 then
      AColor := clInactiveCaptionText
    else
      AColor := clWindow;
  except
  end;
end;

procedure TCaptionListFrm.ElPopupButton7Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  qryCap.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TCaptionListFrm.qryCapBeforeDelete(DataSet: TDataSet);
begin
  //
end;

end.

