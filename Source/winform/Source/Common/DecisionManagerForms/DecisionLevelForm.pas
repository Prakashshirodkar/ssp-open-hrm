unit DecisionLevelForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmDecisionLevel = class(TfrmListBase)
    qryListLEVEL_NO: TWideStringField;
    qryListLEVEL_NAME: TWideStringField;
    qryListLEVEL_INDEX: TIntegerField;
    qryListLEVEL_NOTE: TWideStringField;
    dxdbgMainLEVEL_NO: TdxDBGridColumn;
    dxdbgMainLEVEL_NAME: TdxDBGridColumn;
    dxdbgMainLEVEL_INDEX: TdxDBGridSpinColumn;
    dxdbgMainLEVEL_NOTE: TdxDBGridColumn;
    procedure qryListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDecisionLevel: TfrmDecisionLevel;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmDecisionLevel.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListLEVEL_INDEX.Value:=qryList.RecordCount;
end;

end.
