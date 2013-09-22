unit SysInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  dxLayoutControl, cxControls, DB, IBODataset, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, dxEditor, ToolbarFrame, DBActns, ActnList, ElBtnCtl, ElPopBtn,
  ExtCtrls, StdCtrls, ElCLabel, ElLabel, ElPanel, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms;

type
  TfrmSysInfo = class(TfrmBase)
    mainPage: TElPageControl;
    tabOrgInfo: TElTabSheet;
    tabSysFormat: TElTabSheet;
    qryOrgInfo: TIBOQuery;
    dsOrgInfo: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBEdit5: TdxDBEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBEdit6: TdxDBEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBHyperLinkEdit1: TdxDBHyperLinkEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxDBHyperLinkEdit2: TdxDBHyperLinkEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxDBEdit10: TdxDBEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxDBEdit11: TdxDBEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxDBEdit14: TdxDBEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxDBEdit17: TdxDBEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item22: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item23: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item24: TdxLayoutItem;
    ActionList1: TActionList;
    acOrgInfoCancel: TDataSetCancel;
    acOrgInfoPost: TDataSetPost;
    dxLayoutControl1Item25: TdxLayoutItem;
    Bevel1: TBevel;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dsFormatOption: TDataSource;
    qryFormatOption: TIBOQuery;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxDBEdit21: TdxDBEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Group5: TdxLayoutGroup;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Group6: TdxLayoutGroup;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl2Item16: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl2Item17: TdxLayoutItem;
    ElPopupButton8: TElPopupButton;
    dxLayoutControl2Item18: TdxLayoutItem;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxLayoutControl2Item19: TdxLayoutItem;
    Bevel2: TBevel;
    dxLayoutControl2Group8: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBEdit18: TdxDBEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxSysFormat_dxDBEdit27: TdxDBEdit;
    dxLayoutControl2Item21: TdxLayoutItem;
    qryOrgInfoSUPER_ORG: TWideStringField;
    qryOrgInfoORG_NAME: TWideStringField;
    qryOrgInfoORG_SHORT_NAME: TWideStringField;
    qryOrgInfoORG_LOGO: TBlobField;
    qryOrgInfoIMG_TYPE: TWideStringField;
    qryOrgInfoPHONE_NUMBER: TWideStringField;
    qryOrgInfoFAX_NUMBER: TWideStringField;
    qryOrgInfoEMAIL: TWideStringField;
    qryOrgInfoWEBSITE: TWideStringField;
    qryOrgInfoORG_ADDRESS: TWideStringField;
    qryOrgInfoORG_TYPE: TWideStringField;
    qryOrgInfoORG_DOMAIN: TWideStringField;
    qryOrgInfoDIRECTOR: TWideStringField;
    qryOrgInfoCHIEF_ACCOUNTANT: TWideStringField;
    qryOrgInfoGENERAL_ACCOUNTANT: TWideStringField;
    qryOrgInfoACCOUNTANT: TWideStringField;
    qryOrgInfoCASHIER: TWideStringField;
    qryOrgInfoSTORE_KEEPER: TWideStringField;
    qryOrgInfoCHIEF_HR: TWideStringField;
    qryOrgInfoORG_TRADE_NAME: TWideStringField;
    qryOrgInfoDEPUTY_DIRECTOR: TWideStringField;
    qryOrgInfoSYS_INFO_ID: TSmallintField;
    acFormatCancel: TDataSetCancel;
    acFormatPost: TDataSetPost;
    acSysParamCancel: TDataSetCancel;
    acSysParamPost: TDataSetPost;
    acChangeAction: TAction;
    qryFormatOptionOPTION_ID: TSmallintField;
    qryFormatOptionDATE_FORMAT: TWideStringField;
    qryFormatOptionTIME_FORMAT: TWideStringField;
    qryFormatOptionROUND_NUMBER: TSmallintField;
    qryFormatOptionNUMERIC_FORMAT: TWideStringField;
    qryOrgInfoBANK_NAME: TWideStringField;
    qryOrgInfoACCOUNT_CODE: TWideStringField;
    qryOrgInfoTAX_CODE: TWideStringField;
    qryOrgInfoESTABLISHED_DATE: TDateField;
    qryOrgInfoFOLLOWING_ORDER: TWideStringField;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBEdit19: TdxDBEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ElTabSheet1: TElTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    Bevel3: TBevel;
    ElLabel1: TElLabel;
    ElPopupButton9: TElPopupButton;
    ElPopupButton10: TElPopupButton;
    ElPopupButton11: TElPopupButton;
    ElPopupButton12: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl3Item1: TdxLayoutItem;
    qryIDFormat: TIBOQuery;
    dsIDFormat: TDataSource;
    qryIDFormatFORMAT_ID: TSmallintField;
    qryIDFormatFORMAT_NAME: TWideStringField;
    qryIDFormatID_NAME: TWideStringField;
    qryIDFormatCURRENT_VALUE: TIntegerField;
    dxDBGrid1FORMAT_NAME: TdxDBGridColumn;
    dxDBGrid1ID_NAME: TdxDBGridColumn;
    dxDBGrid1CURRENT_VALUE: TdxDBGridSpinColumn;
    acIDFormatCancel: TDataSetCancel;
    acIDFormatPost: TDataSetPost;
    qryFormatOptionDATE_TIME_FORMAT: TWideStringField;
    dxDBEdit8: TdxDBEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    qryFormatOptionTHOUSAND_SEPARATOR: TWideStringField;
    qryFormatOptionDECIMAL_SEPARATOR: TWideStringField;
    dxDBEdit9: TdxDBEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxDBEdit12: TdxDBEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxDBGrid1FORMAT_ID: TdxDBGridColumn;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxDBEdit13: TdxDBEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxDBEdit15: TdxDBEdit;
    qryOrgInfoDEPUTY_DIRECTOR_2: TWideStringField;
    qryOrgInfoDEPUTY_DIRECTOR_3: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryFormatOptionAfterPost(DataSet: TDataSet);
    procedure qryOrgInfoAfterPost(DataSet: TDataSet);
    procedure qryOrgInfoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSysInfo: TfrmSysInfo;
  FormatInfoChanged: boolean;

implementation

uses MainDM, Math;

{$R *.dfm}

procedure TfrmSysInfo.FormCreate(Sender: TObject);
begin
  inherited;
  
  qryOrgInfo.Open;
  qryFormatOption.Open;
  qryIDFormat.Open;
  mainPage.ActivePageIndex := 0;
  FormatInfoChanged := false;
end;

procedure TfrmSysInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryOrgInfo.Close;
  qryFormatOption.Close;
  qryIDFormat.Close;
  if FormatInfoChanged then
    dmMain.LoadFormatConfig;
  if dmMain.qryThongTinDoanhNghiep.Active then
    dmMain.qryThongTinDoanhNghiep.Refresh
  else
    dmMain.qryThongTinDoanhNghiep.Open;
end;

procedure TfrmSysInfo.qryFormatOptionAfterPost(DataSet: TDataSet);
begin
  inherited;
  FormatInfoChanged := true;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmSysInfo.qryOrgInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  if dmMain.qryThongTinDoanhNghiep.Active then dmMain.qryThongTinDoanhNghiep.Refresh;
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmSysInfo.qryOrgInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryOrgInfoSYS_INFO_ID.Value := qryOrgInfo.RecordCount;
end;

end.

