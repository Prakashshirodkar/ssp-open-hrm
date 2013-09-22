unit DisciplineListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmDisciplineList = class(TfrmListBase)
    qryListDISC_LIST_NO: TWideStringField;
    qryListDISC_LIST_NAME: TWideStringField;
    qryListDISC_LIST_NOTE: TWideStringField;
    dxdbgMainDISC_LIST_NO: TdxDBGridColumn;
    dxdbgMainDISC_LIST_NAME: TdxDBGridColumn;
    dxdbgMainDISC_LIST_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDisciplineList: TfrmDisciplineList;

implementation

uses MainDM;

{$R *.dfm}

end.
