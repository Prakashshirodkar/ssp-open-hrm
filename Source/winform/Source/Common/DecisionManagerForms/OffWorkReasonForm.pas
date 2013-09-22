unit OffWorkReasonForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmOffWorkReason = class(TfrmListBase)
    qryListREASON_NO: TWideStringField;
    qryListREASON_NAME: TWideStringField;
    qryListNOTES: TWideStringField;
    dxdbgMainREASON_NO: TdxDBGridColumn;
    dxdbgMainREASON_NAME: TdxDBGridColumn;
    dxdbgMainNOTES: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOffWorkReason: TfrmOffWorkReason;

implementation

{$R *.dfm}

end.
