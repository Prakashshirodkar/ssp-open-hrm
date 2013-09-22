unit RewardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmRewardForm = class(TfrmListBase)
    qryListREWARD_NO: TWideStringField;
    qryListREWARD_NAME: TWideStringField;
    qryListREWARD_LEVEL: TIntegerField;
    qryListREWARD_NOTE: TWideStringField;
    dxdbgMainREWARD_NO: TdxDBGridColumn;
    dxdbgMainREWARD_NAME: TdxDBGridColumn;
    dxdbgMainREWARD_LEVEL: TdxDBGridSpinColumn;
    dxdbgMainREWARD_NOTE: TdxDBGridColumn;
    procedure qryListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRewardForm: TfrmRewardForm;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmRewardForm.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListREWARD_LEVEL.Value:=qryList.RecordCount;
end;

end.
