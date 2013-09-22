unit DisciplineForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmDisciplineForm = class(TfrmListBase)
    qryListDISC_NO: TWideStringField;
    qryListDISC_NAME: TWideStringField;
    qryListDISC_LEVEL: TIntegerField;
    qryListDISC_NOTE: TWideStringField;
    dxdbgMainDISC_NO: TdxDBGridColumn;
    dxdbgMainDISC_NAME: TdxDBGridColumn;
    dxdbgMainDISC_LEVEL: TdxDBGridSpinColumn;
    dxdbgMainDISC_NOTE: TdxDBGridColumn;
    procedure qryListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDisciplineForm: TfrmDisciplineForm;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmDisciplineForm.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListDISC_LEVEL.Value:=qryList.RecordCount;
end;

end.
