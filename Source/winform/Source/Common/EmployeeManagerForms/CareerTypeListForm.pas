unit CareerTypeListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmCareerTypeList = class(TfrmListBase)
    qryListCAREER_TYPE_NO: TWideStringField;
    qryListCAREER_TYPE_NAME: TWideStringField;
    qryListCARRER_TYPE_NOTE: TWideStringField;
    dxdbgMainCAREER_TYPE_NO: TdxDBGridColumn;
    dxdbgMainCAREER_TYPE_NAME: TdxDBGridColumn;
    dxdbgMainCARRER_TYPE_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCareerTypeList: TfrmCareerTypeList;

implementation

uses MainDM;

{$R *.dfm}

end.
