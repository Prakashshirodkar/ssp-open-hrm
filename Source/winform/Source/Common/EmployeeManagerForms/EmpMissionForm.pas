unit EmpMissionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ImgList, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ElPanel,
  ElSplit, dxDBTLCl, dxGrClms;

type
  TfrmEmpMission = class(TfrmBase)
    pageMain: TElPageControl;
    ImageList1: TImageList;
    tabMain: TElTabSheet;
    gridWageStandard: TdxDBGrid;
    ElSplitter1: TElSplitter;
    pageBottom: TElPageControl;
    tabBottom: TElTabSheet;
    dxDBGrid1: TdxDBGrid;
    gridWageStandardTO_PLACE: TdxDBGridColumn;
    gridWageStandardFROM_DATE: TdxDBGridDateColumn;
    gridWageStandardTO_DATE: TdxDBGridDateColumn;
    gridWageStandardMISSION_DUTY: TdxDBGridColumn;
    gridWageStandardBUSSINESS_EXPENSE: TdxDBGridColumn;
    gridWageStandardCURRENCY_NAME: TdxDBGridColumn;
    gridWageStandardMISSION_NO: TdxDBGridColumn;
    dxDBGrid1MISSION_NO: TdxDBGridColumn;
    dxDBGrid1NATION_NAME: TdxDBGridColumn;
    dxDBGrid1TO_PLACE: TdxDBGridColumn;
    dxDBGrid1FROM_DATE: TdxDBGridDateColumn;
    dxDBGrid1TO_DATE: TdxDBGridDateColumn;
    dxDBGrid1MISSION_DUTY: TdxDBGridColumn;
    dxDBGrid1BUSSINESS_EXPENSE: TdxDBGridColumn;
    dxDBGrid1CURRENCY_NAME: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpMission: TfrmEmpMission;

implementation

uses EmpInfoDataModule;

{$R *.dfm}

procedure TfrmEmpMission.FormCreate(Sender: TObject);
begin
  inherited;
  if not EmpInfoDM.qryInternalMission.Active then
   EmpInfoDM.qryInternalMission.Open;
  if not EmpInfoDM.qryExternalMission.Active then
   EmpInfoDM.qryExternalMission.Open;
end;

procedure TfrmEmpMission.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.qryExternalMission.Close;
  EmpInfoDM.qryInternalMission.Close;
end;

end.
