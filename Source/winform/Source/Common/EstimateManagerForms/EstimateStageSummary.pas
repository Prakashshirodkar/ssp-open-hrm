unit EstimateStageSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  dxCntner, ElBtnCtl, ElPopBtn, ActnList, DBActns,DB, ImgList, ElPgCtl,
  dxTL, dxDBCtrl, dxDBGrid, IBODataset, ToolbarFrame, dxDBTLCl, dxGrClEx;

type
  TfrmEstimateStageSummary = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxStageType: TdxDBImageEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBSpinEdit4: TdxDBSpinEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    groupTuthangNam: TdxLayoutGroup;
    groupDenThangNam: TdxLayoutGroup;
    ActionList1: TActionList;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    groupNgay: TdxLayoutGroup;
    pageMain: TElPageControl;
    tabThongtin: TElTabSheet;
    tabTongket: TElTabSheet;
    ImageList1: TImageList;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    acClose: TAction;
    dsSumReg: TDataSource;
    qrySumReg: TIBOQuery;
    frameToolbar1: TframeToolbar;
    qrySumRegSTAGE_NO: TWideStringField;
    qrySumRegFROM_STAGE: TWideStringField;
    qrySumRegSTAGE_NAME: TWideStringField;
    dxDBGrid1FROM_STAGE: TdxDBGridColumn;
    dxDBGrid1STAGE_NAME: TdxDBGridPopupColumn;
    dxEstimateMethod: TdxDBImageEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxStageTypeChange(Sender: TObject);
    procedure TypeChange;
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure pageMainChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1STAGE_NAMEInitPopup(Sender: TObject);
    procedure dxDBGrid1STAGE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qrySumRegNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimateStageSummary: TfrmEstimateStageSummary;

implementation

uses MainDM, EstimateManagerForm, Math, SSP_Library, PopupMainForm;

{$R *.dfm}

procedure TfrmEstimateStageSummary.FormCreate(Sender: TObject);
begin
  dxStageType.Descriptions.Add(utf8Decode('Đánh giá thi đua theo ngày'));
  dxStageType.Descriptions.Add(utf8Decode('Đánh giá thi đua theo tháng'));
  dxStageType.Values.Add('0');
  dxStageType.Values.Add('1');

  dxEstimateMethod.Descriptions.Add(Utf8Decode('Phương pháp tổng số điểm'));
  dxEstimateMethod.Descriptions.Add(Utf8Decode('Phương pháp tổng điểm có trọng số'));
  dxEstimateMethod.Descriptions.Add(Utf8Decode('Phương pháp trung bình cộng'));
  dxEstimateMethod.Descriptions.Add(Utf8Decode('Phương pháp trung bình cộng có trọng số'));

  dxEstimateMethod.Values.Add('TONG_DIEM');
  dxEstimateMethod.Values.Add('TONG_DIEM_HS');
  dxEstimateMethod.Values.Add('TB_DIEM');
  dxEstimateMethod.Values.Add('TB_DIEM_HS');

  if Application.Title='SSP-HRM TRUNG DUNG' then
  begin
    dxEstimateMethod.Color:=sysUIConfig.Read_Only_Color;
    dxEstimateMethod.ReadOnly:=true;
  end;
  
  inherited;
  qrySumReg.Open;
  pageMain.ActivePage:=tabThongtin;
end;

procedure TfrmEstimateStageSummary.dxStageTypeChange(Sender: TObject);
begin
  inherited;
  TypeChange;
end;
procedure TfrmEstimateStageSummary.TypeChange;
begin
  inherited;
  if dxStageType.Text='0' then
  begin
    groupNgay.Enabled:=true;
    groupTuthangNam.Enabled:=false;
    groupDenThangNam.Enabled:=false;
  end
  else
  if dxStageType.Text='1' then
  begin
    groupNgay.Enabled:=false;
    groupTuthangNam.Enabled:=true;
    groupDenThangNam.Enabled:=true;
  end;
end;
procedure TfrmEstimateStageSummary.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage=tabThongtin then
    AllowChange:=dmMain.MsgChangeDataSource(frmEstimateManager.dsEstimateSumStage)
  else
    AllowChange:=dmMain.MsgChangeDataSource(dsSumReg);  
end;

procedure TfrmEstimateStageSummary.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage=tabThongtin then
    frameToolbar1.SetDataSource(frmEstimateManager.dsEstimateSumStage)
  else
    frameToolbar1.SetDataSource(dsSumReg);
end;

procedure TfrmEstimateStageSummary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dmMain.MsgChangeDataSource(frmEstimateManager.dsEstimateSumStage) then
    qrySumReg.Close
  else
    Abort;
end;

procedure TfrmEstimateStageSummary.dxDBGrid1STAGE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryEstimateStage.Open;
  InitPopupControl('dxlcEstimateStage',frmPopupMain,sender,2,dxDBGrid1);
end;

procedure TfrmEstimateStageSummary.dxDBGrid1STAGE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryEstimateStage,qrySumReg,
               'STAGE_NO;STAGE_NAME','FROM_STAGE;STAGE_NAME',
               'STAGE_NAME',Text);
    frmPopupMain.qryEstimateStage.Close;
end;

procedure TfrmEstimateStageSummary.qrySumRegNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySumRegSTAGE_NO.Value:=frmEstimateManager.qryEstimateSumStageSTAGE_NO.Value;
end;

end.
