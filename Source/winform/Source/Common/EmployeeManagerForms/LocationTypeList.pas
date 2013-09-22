unit LocationTypeList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmLocationTypeList = class(TfrmListBase)
    qryListLOCATION_TYPE_NO: TWideStringField;
    qryListLOCATION_TYPE_NAME: TWideStringField;
    qryListLOCATION_TYPE_NOTE: TWideStringField;
    dxdbgMainLOCATION_TYPE_NO: TdxDBGridColumn;
    dxdbgMainLOCATION_TYPE_NAME: TdxDBGridColumn;
    dxdbgMainLOCATION_TYPE_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocationTypeList: TfrmLocationTypeList;

implementation

uses MainDM;

{$R *.dfm}

end.
