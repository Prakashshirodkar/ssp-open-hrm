unit TranslateCaptionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElCaption, dxLayoutControl, cxControls, NavigatorFrameUnit,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, IBODataset, dxmdaset,
  DBActns, ActnList, dxEditor, dxEdLib, ImgList, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxDBELib;

type
  TfrmTranslateCaption = class(TForm)
    ElFormCaption1: TElFormCaption;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    NavigatorFrame1: TNavigatorFrame;
    gridCaption: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsCaption: TDataSource;
    gridCaptionCAPTION_DEFAULT: TdxDBGridColumn;
    gridCaptionCAPTION_ENG: TdxDBGridColumn;
    gridCaptionHINT_DEFAULT: TdxDBGridColumn;
    gridCaptionHINT_ENG: TdxDBGridColumn;
    qryUpdateCaption: TIBOQuery;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    smallImgList: TImageList;
    qryFormList: TIBOQuery;
    dxRecNo: TdxEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxRecCount: TdxEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    qryFormListFORM_NAME: TWideStringField;
    qryCap: TIBOQuery;
    qryCapFORM_NAME: TWideStringField;
    qryCapCONTROL_NAME: TWideStringField;
    qryCapCAPTION_VN: TWideStringField;
    qryCapCAPTION_ENG: TWideStringField;
    qryCapCAPTION_DEFAULT: TWideStringField;
    qryCapPARENT_CONTROL: TWideStringField;
    qryCapHINT_VN: TWideStringField;
    qryCapHINT_ENG: TWideStringField;
    qryCapHINT_DEFAULT: TWideStringField;
    qryCapK_FIELD: TWideStringField;
    qryCapCONTROL_TYPE: TWideStringField;
    dsFormList: TDataSource;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetDelete1: TDataSetDelete;
    acRefresh: TAction;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxlcFormList: TdxLayoutControl;
    dxDBGrid2: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxDBGrid2FORM_NAME: TdxDBGridColumn;
    dxDBEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxDBGrid2Column2: TdxDBGridColumn;
    qryUpdateHint: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCapAfterPost(DataSet: TDataSet);
    procedure qryFormListAfterScroll(DataSet: TDataSet);
    procedure acRefreshExecute(Sender: TObject);
    procedure dxDBGrid2Column2CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBEdit1InitPopup(Sender: TObject);
    procedure DataSetDelete1Execute(Sender: TObject);
    procedure qryCapBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    from_index, to_index: integer;
  public
    { Public declarations }
  end;

var
  frmTranslateCaption: TfrmTranslateCaption;
implementation
uses SSP_Library, SSP_Menus, MainDM;
{$R *.dfm}

procedure TfrmTranslateCaption.FormCreate(Sender: TObject);
var
  i: integer;
begin
  SetPermision(qryCap, 7);

  ApplyOption(TControl(self));
  acRefresh.Execute;

end;

procedure TfrmTranslateCaption.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryCap.Close;
  qryFormList.Close;
end;

procedure TfrmTranslateCaption.qryCapAfterPost(DataSet: TDataSet);
begin
  if not (qryCapCAPTION_DEFAULT.ISNull or qryCapCAPTION_ENG.IsNull) then
    dmMain.ExecuteSQL(qryUpdateCaption);
  if not (qryCapHINT_DEFAULT.ISNull or qryCapHINT_ENG.IsNull) then
    dmMain.ExecuteSQL(qryUpdateHint);
  qryCap.Refresh;
end;

procedure TfrmTranslateCaption.qryFormListAfterScroll(DataSet: TDataSet);
begin
  dxRecNo.Text := IntToStr(qryFormList.RecNo);
end;

procedure TfrmTranslateCaption.acRefreshExecute(Sender: TObject);
begin
  if qryFormList.Active then
    qryFormList.Close;
  qryFormList.Open;
  dxRecCount.Text := IntToStr(qryFormList.RecordCount);
  if qryCap.Active then qryCap.Close;
  qryCap.Open;
end;

procedure TfrmTranslateCaption.dxDBGrid2Column2CustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  AText := IntToStr(ANode.AbsoluteIndex + 1);
end;

procedure TfrmTranslateCaption.dxDBGrid2DblClick(Sender: TObject);
begin
  PopupProcess(self, true, sender)
end;

procedure TfrmTranslateCaption.dxDBEdit1InitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcFormList', self, sender, 2);
end;

procedure TfrmTranslateCaption.DataSetDelete1Execute(Sender: TObject);
begin
  if gridCaption.SelectedCount > 1 then
    gridCaption.DeleteSelection
  else
    qryCap.Delete;
end;

procedure TfrmTranslateCaption.qryCapBeforeDelete(DataSet: TDataSet);
begin
  //
end;

end.

