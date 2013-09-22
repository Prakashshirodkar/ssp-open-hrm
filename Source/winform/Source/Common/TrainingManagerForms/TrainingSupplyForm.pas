unit TrainingSupplyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTrainingSupply = class(TfrmListBase)
    qryListSUPPLY_NO: TWideStringField;
    qryListSUPPLY_NAME: TWideStringField;
    qryListSUPPLY_NOTE: TWideStringField;
    dxdbgMainSUPPLY_NO: TdxDBGridColumn;
    dxdbgMainSUPPLY_NAME: TdxDBGridColumn;
    dxdbgMainSUPPLY_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingSupply: TfrmTrainingSupply;

implementation

uses MainDM;

{$R *.dfm}

end.
