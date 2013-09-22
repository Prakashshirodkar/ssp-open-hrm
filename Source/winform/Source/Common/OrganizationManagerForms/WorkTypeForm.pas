unit WorkTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmWorkType = class(TfrmListBase)
    qryListWORK_TYPE_NO: TWideStringField;
    qryListWORK_TYPE_NAME: TWideStringField;
    qryListWORK_TYPE_NOTES: TWideStringField;
    dxdbgMainWORK_TYPE_NO: TdxDBGridColumn;
    dxdbgMainWORK_TYPE_NAME: TdxDBGridColumn;
    dxdbgMainWORK_TYPE_NOTES: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkType: TfrmWorkType;

implementation

uses MainDM;

{$R *.dfm}

end.
