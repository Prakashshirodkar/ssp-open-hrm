unit EmpHistoryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ElPanel,
  ElSplit, ToolbarFrame, dxDBTLCl, dxGrClms, dxGrClEx;

type
  TfrmEmpHistory = class(TfrmBase)
    pageMain: TElPageControl;
    ImageList1: TImageList;
    tabMain: TElTabSheet;
    gridBiography: TdxDBGrid;
    ElSplitter1: TElSplitter;
    pageBottom: TElPageControl;
    tabBottom: TElTabSheet;
    gridRelationship: TdxDBGrid;
    frameToolbar1: TframeToolbar;
    gridBiographyKEY_INDEX: TdxDBGridSpinColumn;
    gridBiographyFROM_TIME: TdxDBGridColumn;
    gridBiographyEMP_EVENT: TdxDBGridColumn;
    gridRelationshipKEY_INDEX: TdxDBGridSpinColumn;
    gridRelationshipPERSON_NAME: TdxDBGridColumn;
    gridRelationshipRELATIONSHIP_NAME: TdxDBGridPopupColumn;
    gridRelationshipNOTE: TdxDBGridColumn;
    tabEmpOrg: TElTabSheet;
    gridEmpOrg: TdxDBGrid;
    gridEmpOrgJOIN_DATE: TdxDBGridDateColumn;
    gridEmpOrgORG_DUTY: TdxDBGridColumn;
    gridEmpOrgNOTE: TdxDBGridColumn;
    gridEmpOrgORG_NAME: TdxDBGridPopupColumn;
    gridEmpOrgKEY_INDEX: TdxDBGridSpinColumn;
    gridRelationshipDUOC_GIAMTRU_GIACANH: TdxDBGridCheckColumn;
    gridRelationshipGIAMTRU_TUTHANG: TdxDBGridSpinColumn;
    gridRelationshipGIAMTRU_TUNAM: TdxDBGridSpinColumn;
    gridRelationshipGIAMTRU_DENTHANG: TdxDBGridSpinColumn;
    gridRelationshipGIAMTRU_DENNAM: TdxDBGridSpinColumn;
    gridRelationshipSO_CMND: TdxDBGridColumn;
    gridRelationshipSO_HOCHIEU: TdxDBGridColumn;
    gridRelationshipMASO_THUE_CANHAN: TdxDBGridColumn;
    gridRelationshipBIRTH_DATE: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridBiographyEnter(Sender: TObject);
    procedure gridRelationshipEnter(Sender: TObject);
    procedure gridRelationshipRELATIONSHIP_NAMEInitPopup(Sender: TObject);
    procedure gridRelationshipRELATIONSHIP_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridEmpOrgEnter(Sender: TObject);
    procedure gridEmpOrgORG_NAMEInitPopup(Sender: TObject);
    procedure gridEmpOrgORG_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure pageMainChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpHistory: TfrmEmpHistory;

implementation

uses EmpInfoDataModule, PopupMainForm, SSP_Library, MainDM;

{$R *.dfm}

procedure TfrmEmpHistory.FormCreate(Sender: TObject);
begin
  inherited;
  if not EmpInfoDM.qryBiography.Active then
    EmpInfoDM.qryBiography.Open;
  if not EmpInfoDM.qryRelationship.Active then
    EmpInfoDM.qryRelationship.Open;
  if not EmpInfoDM.qryEmpOrg.Active then
    EmpInfoDM.qryEmpOrg.Open;

  frameToolbar1.SetDataSource(EmpInfoDM.dsBiography);

end;

procedure TfrmEmpHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.qryEmpOrg.Close;
  EmpInfoDM.qryBiography.Close;
  EmpInfoDM.qryRelationship.Close;
end;

procedure TfrmEmpHistory.gridBiographyEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(EmpInfoDM.dsBiography);
end;

procedure TfrmEmpHistory.gridRelationshipEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(EmpInfoDM.dsRelationship);
end;

procedure TfrmEmpHistory.gridRelationshipRELATIONSHIP_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryRelationship.Open;
  InitPopupControl('dxlcRelationship',frmPopupMain,sender,2,gridRelationship);
end;

procedure TfrmEmpHistory.gridRelationshipRELATIONSHIP_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
   OnPopupCloseUp(Accept,frmPopupMain.qryRelationship
               ,EmpInfoDM.qryRelationship,
               'RELATIONSHIP_NO;RELATIONSHIP_NAME',
               'RELATIONSHIP;RELATIONSHIP_NAME',
               'RELATIONSHIP_NAME',Text);
    frmPopupMain.qryRelationship.Close;
end;

procedure TfrmEmpHistory.gridEmpOrgEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(EmpInfoDM.dsEmpOrg)
end;

procedure TfrmEmpHistory.gridEmpOrgORG_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryOrgList.Open;
  InitPopupControl('dxlcOrgList',frmPopupMain,sender,2,gridEmpOrg);
end;

procedure TfrmEmpHistory.gridEmpOrgORG_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryOrgList,EmpInfoDM.qryEmpOrg,
               'ORG_NO;ORG_NAME','ORG_NO;ORG_NAME',
               'ORG_NAME',Text);
    frmPopupMain.qryOrgList.Close;
end;

procedure TfrmEmpHistory.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage=tabMain then
    AllowChange:=dmMain.MsgChangeDataSource(EmpInfoDM.dsBiography)
  else
  if pageMain.ActivePage=tabEmpOrg then
    AllowChange:=dmMain.MsgChangeDataSource(EmpInfoDM.dsEmpOrg)

end;

procedure TfrmEmpHistory.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePage=tabMain then
    frameToolbar1.SetDataSource(EmpInfoDM.dsBiography)
  else
  if pageMain.ActivePage=tabEmpOrg then
   frameToolbar1.SetDataSource(EmpInfoDM.dsEmpOrg)
end;

end.
