unit TitleListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTitleList = class(TfrmListBase)
    qryListTITLE_NO: TWideStringField;
    qryListTITLE_NAME: TWideStringField;
    qryListTITLE_NOTE: TWideStringField;
    dxdbgMainTITLE_NO: TdxDBGridColumn;
    dxdbgMainTITLE_NAME: TdxDBGridColumn;
    dxdbgMainTITLE_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTitleList: TfrmTitleList;

implementation

uses MainDM;

{$R *.dfm}

end.
