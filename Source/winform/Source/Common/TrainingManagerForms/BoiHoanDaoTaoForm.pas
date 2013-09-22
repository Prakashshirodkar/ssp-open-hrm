unit BoiHoanDaoTaoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ElBtnCtl, ElPopBtn, dxExEdtr, dxEdLib,
  dxCntner, dxEditor, DateTimeFrame, ElPanel, ElSplit, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls, dxDBTLCl, dxGrClms, DB, IBODataset, ActnList;

type
  TfrmBoiHoanDaoTao = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    frameDateTime1: TframeDateTime;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxViewChild: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutControl1Item5: TdxLayoutItem;
    gridDSNghiViec: TdxDBGrid;
    ElSplitter1: TElSplitter;
    gridChiTiet: TdxDBGrid;
    qryDSNghiViec: TIBOQuery;
    dsDSNghiViec: TDataSource;
    gridDSNghiViecEMPLOYEE_NO: TdxDBGridColumn;
    gridDSNghiViecFULL_NAME: TdxDBGridColumn;
    gridDSNghiViecDECISION_NO: TdxDBGridColumn;
    gridDSNghiViecOFF_DATE: TdxDBGridDateColumn;
    gridDSNghiViecREASON_NAME: TdxDBGridColumn;
    gridDSNghiViecDEPT_NAME: TdxDBGridColumn;
    gridDSNghiViecTITLE_NAME: TdxDBGridColumn;
    gridDSNghiViecPHI_BOIHOAN: TdxDBGridCalcColumn;
    ActionList1: TActionList;
    acXemDS: TAction;
    qryDSNghiViecEMPLOYEE_NO: TWideStringField;
    qryDSNghiViecFULL_NAME: TWideStringField;
    qryDSNghiViecDECISION_NO: TWideStringField;
    qryDSNghiViecOFF_DATE: TDateField;
    qryDSNghiViecREASON_NAME: TWideStringField;
    qryDSNghiViecDEPT_NAME: TWideStringField;
    qryDSNghiViecTITLE_NAME: TWideStringField;
    qryDSNghiViecPHI_BOIHOAN: TIBOFloatField;
    qryChiTiet: TIBOQuery;
    dsChiTiet: TDataSource;
    gridChiTietPLAN_NAME: TdxDBGridColumn;
    gridChiTietCLASS_NO: TdxDBGridColumn;
    gridChiTietCLASS_CONTENT: TdxDBGridColumn;
    gridChiTietFROM_DATE: TdxDBGridDateColumn;
    gridChiTietTO_DATE: TdxDBGridDateColumn;
    gridChiTietALLOWANCE: TdxDBGridColumn;
    gridChiTietPHAN_NHOM: TdxDBGridColumn;
    gridChiTietTG_LAMVIEC_SAUDAOTAO: TdxDBGridCalcColumn;
    gridChiTietPHI_BOIHOAN: TdxDBGridCalcColumn;
    gridChiTietDV_CAMKET_LAMVIEC: TdxDBGridImageColumn;
    gridChiTietDV_TG_LAMVIEC_SAUDAOTAO: TdxDBGridImageColumn;
    gridChiTietTG_CAMKET_LAMVIEC: TdxDBGridCalcColumn;
    qryChiTietPLAN_NAME: TWideStringField;
    qryChiTietCLASS_NO: TWideStringField;
    qryChiTietCLASS_CONTENT: TWideStringField;
    qryChiTietFROM_DATE: TDateField;
    qryChiTietTO_DATE: TDateField;
    qryChiTietALLOWANCE: TIBOFloatField;
    qryChiTietTG_CAMKET_LAMVIEC: TIBOFloatField;
    qryChiTietDV_CAMKET_LAMVIEC: TIntegerField;
    qryChiTietTG_LAMVIEC_SAUDAOTAO: TIBOFloatField;
    qryChiTietDV_TG_LAMVIEC_SAUDAOTAO: TIntegerField;
    qryChiTietVIPHAM_CAMKET_DAOTAO: TSmallintField;
    qryChiTietPHI_BOIHOAN: TIBOFloatField;
    qryChiTietPHAN_NHOM: TWideStringField;
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acXemDSExecute(Sender: TObject);
  private
    { Private declarations }
    F_DEPT_NO : widestring;
  public
    { Public declarations }
  end;

var
  frmBoiHoanDaoTao: TfrmBoiHoanDaoTao;

implementation

uses PopupMainForm, SSP_Library, MainDM;

{$R *.dfm}

procedure TfrmBoiHoanDaoTao.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmBoiHoanDaoTao.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmBoiHoanDaoTao.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmBoiHoanDaoTao.FormCreate(Sender: TObject);
begin
  frameDateTime1.InitViewData;
  inherited;
  frameDateTime1.SetPeriod('NAM_NAY');
  acXemDS.Execute;
end;

procedure TfrmBoiHoanDaoTao.acXemDSExecute(Sender: TObject);
begin
  inherited;
  if qryDSNghiViec.Active then qryDSNghiViec.Close;
  qryDSNghiViec.ParamByName('XEM_THEO_DONVI').Value := F_DEPT_NO;
  if dxViewChild.Checked then
    qryDSNghiViec.ParamByName('XEM_CAPDUOI').Value := 1
  else
    qryDSNghiViec.ParamByName('XEM_CAPDUOI').Value := 0;
  qryDSNghiViec.ParamByName('XEM_TUNGAY').Value := frameDateTime1.dxFromDate.Date;
  qryDSNghiViec.ParamByName('XEM_DENNGAY').Value := frameDateTime1.dxToDate.Date;
  qryDSNghiViec.Open;
  gridDSNghiViec.FullExpand;


  if qryChiTiet.Active then qryChiTiet.Close;
  qryChiTiet.ParamByName('XEM_THEO_DONVI').Value := F_DEPT_NO;
  if dxViewChild.Checked then
    qryChiTiet.ParamByName('XEM_CAPDUOI').Value := 1
  else
    qryChiTiet.ParamByName('XEM_CAPDUOI').Value := 0;
  qryChiTiet.ParamByName('XEM_TUNGAY').Value := frameDateTime1.dxFromDate.Date;
  qryChiTiet.ParamByName('XEM_DENNGAY').Value := frameDateTime1.dxToDate.Date;
  qryChiTiet.Open;
  gridChiTiet.FullExpand;
end;

end.
