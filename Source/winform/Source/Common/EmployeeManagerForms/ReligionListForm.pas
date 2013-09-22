unit ReligionListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmReligionList = class(TfrmListBase)
    qryListRELIGION_NO: TWideStringField;
    qryListRELIGION_NAME: TWideStringField;
    qryListRELIGION_NOTE: TWideStringField;
    dxdbgMainRELIGION_NO: TdxDBGridColumn;
    dxdbgMainRELIGION_NAME: TdxDBGridColumn;
    dxdbgMainRELIGION_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReligionList: TfrmReligionList;

implementation

uses MainDM;

{$R *.dfm}

end.
