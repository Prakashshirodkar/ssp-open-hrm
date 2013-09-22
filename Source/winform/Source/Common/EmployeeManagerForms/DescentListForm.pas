unit DescentListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmDescentList = class(TfrmListBase)
    qryListDESCENT_NO: TWideStringField;
    qryListDESCENT_NAME: TWideStringField;
    qryListDESCENT_NOTE: TWideStringField;
    dxdbgMainDESCENT_NO: TdxDBGridColumn;
    dxdbgMainDESCENT_NAME: TdxDBGridColumn;
    dxdbgMainDESCENT_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescentList: TfrmDescentList;

implementation

uses MainDM;

{$R *.dfm}

end.
