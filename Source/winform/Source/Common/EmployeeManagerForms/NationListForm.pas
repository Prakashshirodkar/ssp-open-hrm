unit NationListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmNationList = class(TfrmListBase)
    qryListNATION_NO: TWideStringField;
    qryListNATION_NAME: TWideStringField;
    qryListNATION_NOTE: TWideStringField;
    dxdbgMainNATION_NO: TdxDBGridColumn;
    dxdbgMainNATION_NAME: TdxDBGridColumn;
    dxdbgMainNATION_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNationList: TfrmNationList;

implementation

uses MainDM;

{$R *.dfm}

end.
