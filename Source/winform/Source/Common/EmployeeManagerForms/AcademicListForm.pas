unit AcademicListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmAcademicList = class(TfrmListBase)
    qryListACADEMIC_NO: TWideStringField;
    qryListACADEMIC_NAME: TWideStringField;
    qryListACADEMIC_LEVEL: TIntegerField;
    qryListACADEMIC_NOTE: TWideStringField;
    dxdbgMainACADEMIC_NO: TdxDBGridColumn;
    dxdbgMainACADEMIC_NAME: TdxDBGridColumn;
    dxdbgMainACADEMIC_LEVEL: TdxDBGridSpinColumn;
    dxdbgMainACADEMIC_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcademicList: TfrmAcademicList;

implementation

{$R *.dfm}

end.
