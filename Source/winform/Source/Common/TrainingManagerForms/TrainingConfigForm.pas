unit TrainingConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr, DB,
  IBODataset, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxLayoutControl,
  ToolbarFrame, cxControls, ElPgCtl, dxGrClEx, dxDBTLCl, dxGrClms;

type
  TfrmTrainingConfig = class(TfrmBase)
    mainPage: TElPageControl;
    tabPersonFee: TElTabSheet;
    tabClassFee: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    framePersonFee: TframeToolbar;
    gridPersonFee: TdxDBGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsClassFee: TDataSource;
    qryClassFee: TIBOQuery;
    gridPersonFeeFEE_NO: TdxDBGridColumn;
    gridPersonFeeFEE_NAME: TdxDBGridColumn;
    gridPersonFeeFEE_NOTE: TdxDBGridColumn;
    dxLayoutControl2: TdxLayoutControl;
    frameClassFee: TframeToolbar;
    gridClassFee: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    qryPersonFee: TIBOQuery;
    dsPersonFee: TDataSource;
    qryClassFeeFEE_NO: TWideStringField;
    qryClassFeeFEE_NAME: TWideStringField;
    qryClassFeeFEE_TYPE: TWideStringField;
    qryClassFeeFEE_NOTE: TWideStringField;
    qryPersonFeeFEE_NO: TWideStringField;
    qryPersonFeeFEE_NAME: TWideStringField;
    qryPersonFeeFEE_TYPE: TWideStringField;
    qryPersonFeeFEE_NOTE: TWideStringField;
    qryClassFeeDEFAUL_VALUE: TIBOFloatField;
    qryClassFeeDEFAUL_UNIT: TWideStringField;
    qryClassFeeCURRENCY_NAME: TWideStringField;
    qryPersonFeeDEFAUL_VALUE: TIBOFloatField;
    qryPersonFeeDEFAUL_UNIT: TWideStringField;
    qryPersonFeeCURRENCY_NAME: TWideStringField;
    gridClassFeeDEFAUL_VALUE: TdxDBGridCalcColumn;
    gridClassFeeCURRENCY_NAME: TdxDBGridPopupColumn;
    gridPersonFeeCURRENCY_NAME: TdxDBGridPopupColumn;
    gridPersonFeeDEFAUL_VALUE: TdxDBGridCalcColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryClassFeeNewRecord(DataSet: TDataSet);
    procedure qryPersonFeeNewRecord(DataSet: TDataSet);
    procedure gridClassFeeCURRENCY_NAMEInitPopup(Sender: TObject);
    procedure gridClassFeeCURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridPersonFeeCURRENCY_NAMEInitPopup(Sender: TObject);
    procedure gridPersonFeeCURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingConfig: TfrmTrainingConfig;

implementation

uses MainDM, SSP_Library, PopupMainForm;

{$R *.dfm}

procedure TfrmTrainingConfig.FormCreate(Sender: TObject);
begin
  inherited;
  qryClassFee.Open;
  qryPersonFee.Open;
  framePersonFee.SetDataSource(dsPersonFee);
  frameClassFee.SetDataSource(dsClassFee);
  mainPage.ActivePage:=tabClassFee;
end;

procedure TfrmTrainingConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryClassFee.Close;
  qryPersonFee.Close;
end;

procedure TfrmTrainingConfig.qryClassFeeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryClassFeeFEE_TYPE.Value:='CLASS';
end;

procedure TfrmTrainingConfig.qryPersonFeeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryPersonFeeFEE_TYPE.Value:='PERSON';
end;

procedure TfrmTrainingConfig.gridClassFeeCURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList',frmPopupMain,sender,2,gridClassFee);

end;

procedure TfrmTrainingConfig.gridClassFeeCURRENCY_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCurrencyList,qryClassFee,
        'CURRENCY_NO;CURRENCY_NAME','DEFAUL_UNIT;CURRENCY_NAME','CURRENCY_NAME',Text);
    frmPopupMain.qryCurrencyList.Close;
end;

procedure TfrmTrainingConfig.gridPersonFeeCURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList',frmPopupMain,sender,2,gridPersonFee);

end;

procedure TfrmTrainingConfig.gridPersonFeeCURRENCY_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCurrencyList,qryPersonFee,
        'CURRENCY_NO;CURRENCY_NAME','DEFAUL_UNIT;CURRENCY_NAME','CURRENCY_NAME',Text);
    frmPopupMain.qryCurrencyList.Close;
end;

end.
