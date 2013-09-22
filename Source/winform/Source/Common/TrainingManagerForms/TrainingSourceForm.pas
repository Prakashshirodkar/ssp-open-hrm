unit TrainingSourceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTrainingSource = class(TfrmListBase)
    qryListSOURCE_NO: TWideStringField;
    qryListSOURCE_NAME: TWideStringField;
    qryListNOTE: TWideStringField;
    dxdbgMainSOURCE_NO: TdxDBGridColumn;
    dxdbgMainSOURCE_NAME: TdxDBGridColumn;
    dxdbgMainNOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingSource: TfrmTrainingSource;

implementation

uses MainDM;

{$R *.dfm}

end.
