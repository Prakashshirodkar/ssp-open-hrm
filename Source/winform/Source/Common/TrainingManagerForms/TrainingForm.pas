unit TrainingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTrainingForm = class(TfrmListBase)
    qryListFORM_NO: TWideStringField;
    qryListFORM_NAME: TWideStringField;
    qryListNOTE: TWideStringField;
    dxdbgMainFORM_NO: TdxDBGridColumn;
    dxdbgMainFORM_NAME: TdxDBGridColumn;
    dxdbgMainNOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingForm: TfrmTrainingForm;

implementation

uses MainDM;

{$R *.dfm}

end.
