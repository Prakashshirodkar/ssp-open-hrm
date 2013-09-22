unit MarrialStatusListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmMarrialStatus = class(TfrmListBase)
    qryListSTATUS_ID: TWideStringField;
    qryListSTATUS_NAME: TWideStringField;
    qryListNOTE: TWideStringField;
    dxdbgMainSTATUS_ID: TdxDBGridColumn;
    dxdbgMainSTATUS_NAME: TdxDBGridColumn;
    dxdbgMainNOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarrialStatus: TfrmMarrialStatus;

implementation

{$R *.dfm}

end.
