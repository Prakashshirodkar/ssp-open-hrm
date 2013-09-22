unit TrainingTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTrainingType = class(TfrmListBase)
    qryListTYPE_NO: TWideStringField;
    qryListTYPE_NAME: TWideStringField;
    dxdbgMainTYPE_NO: TdxDBGridColumn;
    dxdbgMainTYPE_NAME: TdxDBGridColumn;
    dxdbgMainNOTE: TdxDBGridColumn;
    qryListNOTE: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingType: TfrmTrainingType;

implementation

uses MainDM;

{$R *.dfm}

end.
