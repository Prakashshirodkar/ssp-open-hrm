unit EduLevelListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner, Forms,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar,
  Dialogs;

type
  TfrmEduLevelList = class(TfrmListBase)
    qryListEDU_LEVEL_NO: TWideStringField;
    qryListEDU_LEVEL_NAME: TWideStringField;
    qryListEDU_LEVEL_GRADE: TIntegerField;
    qryListEDU_LEVEL_NOTE: TWideStringField;
    dxdbgMainEDU_LEVEL_NO: TdxDBGridColumn;
    dxdbgMainEDU_LEVEL_NAME: TdxDBGridColumn;
    dxdbgMainEDU_LEVEL_GRADE: TdxDBGridSpinColumn;
    dxdbgMainEDU_LEVEL_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEduLevelList: TfrmEduLevelList;

implementation

uses MainDM;

{$R *.dfm}

end.
