unit TrainingResultForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTrainingResult = class(TfrmListBase)
    qryListRESULT_NO: TWideStringField;
    qryListRESULT_NAME: TWideStringField;
    qryListRESULT_GRADE: TIntegerField;
    qryListNOTES: TWideStringField;
    dxdbgMainRESULT_NO: TdxDBGridColumn;
    dxdbgMainRESULT_NAME: TdxDBGridColumn;
    dxdbgMainRESULT_GRADE: TdxDBGridSpinColumn;
    dxdbgMainNOTES: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingResult: TfrmTrainingResult;

implementation

{$R *.dfm}

end.
