unit CurrencyListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DocBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ExtCtrls, DB, IBODataset,
  dxExEdtr, ElPanel, ElSplit, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, dxGrClEx;

type
  TfrmCurrencyList = class(TfrmDocBase)
    dsCurrencyList: TDataSource;
    dsCurrencyExchange: TDataSource;
    qryCurrencyList: TIBOQuery;
    qryCurrencyExchange: TIBOQuery;
    Panel1: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    dxgridCurrency: TdxDBGrid;
    ElSplitter1: TElSplitter;
    dxgridExchange: TdxDBGrid;
    qryCurrencyListCURRENCY_NO: TWideStringField;
    qryCurrencyListCURRENCY_NAME: TWideStringField;
    qryCurrencyListCURRENCY_NOTE: TWideStringField;
    dxgridCurrencyCURRENCY_NO: TdxDBGridColumn;
    dxgridCurrencyCURRENCY_NAME: TdxDBGridColumn;
    dxgridCurrencyCURRENCY_NOTE: TdxDBGridColumn;
    dxgridExchangeFROM_CURRENCY_NAME: TdxDBGridPopupColumn;
    dxgridExchangeTO_CURRENCY_NAME: TdxDBGridPopupColumn;
    dxgridExchangeEXCHANGE_RATE: TdxDBGridCalcColumn;
    dxgridExchangeEXCHANGE_NOTE: TdxDBGridColumn;
    qryCurrencyExchangeFROM_CURRENCY_NO: TWideStringField;
    qryCurrencyExchangeFROM_CURRENCY_NAME: TWideStringField;
    qryCurrencyExchangeTO_CURRENCY_NO: TWideStringField;
    qryCurrencyExchangeTO_CURRENCY_NAME: TWideStringField;
    qryCurrencyExchangeEXCHANGE_RATE: TIBOFloatField;
    qryCurrencyExchangeIS_HIDE: TIntegerField;
    qryCurrencyExchangeEXCHANGE_NOTE: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCurrencyExchangeNewRecord(DataSet: TDataSet);
    procedure dxgridExchangeFROM_CURRENCY_NAMEInitPopup(Sender: TObject);
    procedure dxgridExchangeTO_CURRENCY_NAMEInitPopup(Sender: TObject);
    procedure dxgridExchangeFROM_CURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxgridExchangeTO_CURRENCY_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure qryCurrencyExchangeFROM_CURRENCY_NAMEChange(Sender: TField);
    procedure qryCurrencyExchangeTO_CURRENCY_NAMEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCurrencyList: TfrmCurrencyList;

implementation

uses MainDM, EditBaseFrm, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmCurrencyList.FormCreate(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsCurrencyList);
  frameToolbar1.SetActiveControl(dxgridCurrency);
  qryCurrencyList.Open;
  qryCurrencyExchange.Open;
end;

procedure TfrmCurrencyList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryCurrencyList.Close;
  qryCurrencyExchange.Close;
end;

procedure TfrmCurrencyList.qryCurrencyExchangeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryCurrencyExchangeIS_HIDE.Value:=0;
end;

procedure TfrmCurrencyList.dxgridExchangeFROM_CURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList',frmPopupMain,Sender,2,dxgridExchange);
  frmPopupMain.btnCurrencyList.Visible:=false;
end;

procedure TfrmCurrencyList.dxgridExchangeTO_CURRENCY_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCurrencyList.Open;
  InitPopupControl('dxlcCurrencyList',frmPopupMain,Sender,2,dxgridExchange);
  frmPopupMain.btnCurrencyList.Visible:=false;
end;

procedure TfrmCurrencyList.dxgridExchangeFROM_CURRENCY_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCurrencyList,qryCurrencyExchange,
           'CURRENCY_NO;CURRENCY_NAME','FROM_CURRENCY_NO;FROM_CURRENCY_NAME','CURRENCY_NAME',Text);
  frmPopupMain.qryCurrencyList.Close;
  frmPopupMain.btnCurrencyList.Visible:=true;
end;

procedure TfrmCurrencyList.dxgridExchangeTO_CURRENCY_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCurrencyList,qryCurrencyExchange,
           'CURRENCY_NO;CURRENCY_NAME','TO_CURRENCY_NO;TO_CURRENCY_NAME','CURRENCY_NAME',Text);
  frmPopupMain.qryCurrencyList.Close;
  frmPopupMain.btnCurrencyList.Visible:=true;

end;

procedure TfrmCurrencyList.qryCurrencyExchangeFROM_CURRENCY_NAMEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'FROM_CURRENCY_NO');
end;

procedure TfrmCurrencyList.qryCurrencyExchangeTO_CURRENCY_NAMEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet,Sender.FieldName,'TO_CURRENCY_NO');
end;

end.
