unit OrganizationListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmOrganizationList = class(TfrmListBase)
    qryListORG_NO: TWideStringField;
    qryListORG_NAME: TWideStringField;
    qryListORG_NOTE: TWideStringField;
    dxdbgMainORG_NO: TdxDBGridColumn;
    dxdbgMainORG_NAME: TdxDBGridColumn;
    dxdbgMainORG_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrganizationList: TfrmOrganizationList;

implementation

uses MainDM;

{$R *.dfm}

end.
