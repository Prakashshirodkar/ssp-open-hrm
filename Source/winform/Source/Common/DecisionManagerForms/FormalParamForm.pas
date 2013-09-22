unit FormalParamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmFormalParam = class(TfrmListBase)
    qryListPARAM_NO: TWideStringField;
    qryListPARAM_NAME: TWideStringField;
    qryListFOLLOW_DECISION: TSmallintField;
    qryListFOLLOW_CONTRACT: TSmallintField;
    qryListNOTE: TWideStringField;
    dxdbgMainPARAM_NO: TdxDBGridColumn;
    dxdbgMainPARAM_NAME: TdxDBGridColumn;
    dxdbgMainFOLLOW_DECISION: TdxDBGridCheckColumn;
    dxdbgMainFOLLOW_CONTRACT: TdxDBGridCheckColumn;
    dxdbgMainNOTE: TdxDBGridColumn;
    procedure qryListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormalParam: TfrmFormalParam;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmFormalParam.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListFOLLOW_DECISION.Value:=1;
  qryListFOLLOW_CONTRACT.Value:=1;
end;

end.
