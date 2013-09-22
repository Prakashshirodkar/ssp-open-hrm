unit EstimateGroupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmEstimateGroup = class(TfrmListBase)
    qryListGROUP_NO: TWideStringField;
    qryListGROUP_NAME: TWideStringField;
    qryListGROUP_INDEX: TIntegerField;
    qryListGROUP_NOTE: TWideStringField;
    dxdbgMainGROUP_NO: TdxDBGridColumn;
    dxdbgMainGROUP_NAME: TdxDBGridColumn;
    dxdbgMainGROUP_INDEX: TdxDBGridSpinColumn;
    dxdbgMainGROUP_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimateGroup: TfrmEstimateGroup;

implementation

{$R *.dfm}

end.
