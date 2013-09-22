unit LaborLicenseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib, dxEditor, DB, IBODataset,
  dxDBTLCl, dxGrClms;

type
  TfrmLaborlicense = class(TfrmEditBase)
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainGroup2: TdxLayoutGroup;
    dxlcMainGroup3: TdxLayoutGroup;
    dxDBGrid1: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainItem4: TdxLayoutItem;
    dxlcMainItem5: TdxLayoutItem;
    dxlcMainItem6: TdxLayoutItem;
    dxlcMainItem7: TdxLayoutItem;
    dxlcMainItem8: TdxLayoutItem;
    dxlcMainGroup4: TdxLayoutGroup;
    dxlcMainGroup6: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxlcMainItem9: TdxLayoutItem;
    qryLaborLicense: TIBOQuery;
    dsLaborLicense: TDataSource;
    dxDBGrid1LABOR_LICENSE_ID: TdxDBGridColumn;
    dxDBGrid1FIELD: TdxDBGridColumn;
    dxDBGrid1START_DATE: TdxDBGridDateColumn;
    dxDBGrid1END_DATE: TdxDBGridDateColumn;
    dxDBGrid1NUMBER_OF_EFFECT_YEAR: TdxDBGridSpinColumn;
    qryLaborLicenseLL_ID: TIntegerField;
    qryLaborLicenseEMPLOYEE_NO: TWideStringField;
    qryLaborLicenseLABOR_LICENSE_ID: TWideStringField;
    qryLaborLicenseFIELD: TWideStringField;
    qryLaborLicenseSTART_DATE: TDateField;
    qryLaborLicenseEND_DATE: TDateField;
    qryLaborLicenseNUMBER_OF_EFFECT_YEAR: TIntegerField;
    qryLaborLicenseFILE_NAME: TWideStringField;
    qryLaborLicenseFILE_CONTENT: TBlobField;
    qryLaborLicenseNOTE: TWideStringField;
    procedure qryLaborLicenseNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryLaborLicenseNUMBER_OF_EFFECT_YEARChange(Sender: TField);
    procedure qryLaborLicenseSTART_DATEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLaborlicense: TfrmLaborlicense;

implementation

uses MainDM, EmpInfoDataModule;

{$R *.dfm}

procedure TfrmLaborlicense.qryLaborLicenseNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryLaborLicenseEMPLOYEE_NO.Value := EmpInfoDM.qryEmpListEMPLOYEE_NO.Value;
end;

procedure TfrmLaborlicense.FormCreate(Sender: TObject);
begin
  inherited;
  qryLaborLicense.open;
end;

procedure TfrmLaborlicense.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryLaborLicense.Active then
    qryLaborLicense.close;
end;

procedure TfrmLaborlicense.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender, AbsoluteIndex);
end;

procedure TfrmLaborlicense.qryLaborLicenseNUMBER_OF_EFFECT_YEARChange(
  Sender: TField);
begin
  inherited;
  if not qryLaborLicenseNUMBER_OF_EFFECT_YEAR.IsNull then
    if qryLaborLicenseNUMBER_OF_EFFECT_YEAR.OldValue <>
       qryLaborLicenseNUMBER_OF_EFFECT_YEAR.NewValue then
    begin
      qryLaborLicenseEND_DATE.Value :=
        qryLaborLicenseSTART_DATE.Value +
        365*qryLaborLicenseNUMBER_OF_EFFECT_YEAR.Value;
    end;
end;

procedure TfrmLaborlicense.qryLaborLicenseSTART_DATEChange(Sender: TField);
begin
  inherited;
  if not qryLaborLicenseNUMBER_OF_EFFECT_YEAR.IsNull then
    if qryLaborLicenseNUMBER_OF_EFFECT_YEAR.OldValue <>
       qryLaborLicenseNUMBER_OF_EFFECT_YEAR.NewValue then
    begin
      qryLaborLicenseEND_DATE.Value :=
        qryLaborLicenseSTART_DATE.Value +
        365*qryLaborLicenseNUMBER_OF_EFFECT_YEAR.Value;
    end;
end;

end.
