unit RecruitmentConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr, DB,
  IBODataset, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl,
  ToolbarFrame, cxControls, ElPgCtl, dxDBTLCl, dxGrClms;

type
  TfrmRecruitmentConfig = class(TfrmBase)
    mainPage: TElPageControl;
    tabPhongvan: TElTabSheet;
    tabKiemtra: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    framePhongvan: TframeToolbar;
    gridPhongvan: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsPhongvan: TDataSource;
    qryPhongvan: TIBOQuery;
    qryPhongvanITEM_NO: TWideStringField;
    qryPhongvanITEM_NAME: TWideStringField;
    qryPhongvanITEM_TYPE: TWideStringField;
    qryPhongvanITEM_NOTES: TWideStringField;
    gridPhongvanITEM_NO: TdxDBGridColumn;
    gridPhongvanITEM_NAME: TdxDBGridColumn;
    gridPhongvanITEM_NOTES: TdxDBGridColumn;
    dxLayoutControl2: TdxLayoutControl;
    frameKiemtra: TframeToolbar;
    gridKiemtra: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    qryKiemtra: TIBOQuery;
    dsKiemtra: TDataSource;
    qryKiemtraITEM_NO: TWideStringField;
    qryKiemtraITEM_NAME: TWideStringField;
    qryKiemtraITEM_TYPE: TWideStringField;
    qryKiemtraITEM_NOTES: TWideStringField;
    qryPhongvanITEM_RATE: TIBOFloatField;
    qryKiemtraITEM_RATE: TIBOFloatField;
    gridKiemtraITEM_RATE: TdxDBGridCalcColumn;
    gridPhongvanITEM_RATE: TdxDBGridCalcColumn;
    tabChiPhi: TElTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    frameChiPhi: TframeToolbar;
    gridChiPhi: TdxDBGrid;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    qryChiPhi: TIBOQuery;
    dsChiPhi: TDataSource;
    gridChiPhiITEM_NO: TdxDBGridColumn;
    gridChiPhiITEM_NAME: TdxDBGridColumn;
    gridChiPhiITEM_NOTES: TdxDBGridColumn;
    qryChiPhiITEM_NO: TWideStringField;
    qryChiPhiITEM_NAME: TWideStringField;
    qryChiPhiITEM_TYPE: TWideStringField;
    qryChiPhiITEM_NOTES: TWideStringField;
    qryChiPhiITEM_RATE: TIBOFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryPhongvanNewRecord(DataSet: TDataSet);
    procedure qryKiemtraNewRecord(DataSet: TDataSet);
    procedure qryChiPhiNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecruitmentConfig: TfrmRecruitmentConfig;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmRecruitmentConfig.FormCreate(Sender: TObject);
begin
  inherited;
  qryPhongvan.Open;
  qryKiemtra.Open;
  qryChiPhi.Open;
  framePhongvan.SetDataSource(dsPhongvan);
  frameKiemtra.SetDataSource(dsKiemtra);
  frameChiPhi.SetDataSource(dsChiPhi);
  mainPage.ActivePage:=tabKiemtra;
end;

procedure TfrmRecruitmentConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryPhongvan.Close;
  qryKiemtra.Close;
  qryChiPhi.Close;
end;

procedure TfrmRecruitmentConfig.qryPhongvanNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryPhongvanITEM_TYPE.Value:='PHONG_VAN';
end;

procedure TfrmRecruitmentConfig.qryKiemtraNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryKiemtraITEM_TYPE.Value:='KIEM_TRA';
end;

procedure TfrmRecruitmentConfig.qryChiPhiNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryChiPhiITEM_TYPE.Value:='TUYEN_DUNG';
end;

end.
