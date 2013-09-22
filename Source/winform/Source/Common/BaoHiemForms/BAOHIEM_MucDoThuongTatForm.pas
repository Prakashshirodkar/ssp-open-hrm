unit BAOHIEM_MucDoThuongTatForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmBAOHIEM_MucDoThuongTat = class(TfrmListBase)
    qryListID_TNLD_MUCDO: TIntegerField;
    qryListMA_MUCDO: TWideStringField;
    qryListTEN_MUCDO: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    dxdbgMainMA_MUCDO: TdxDBGridColumn;
    dxdbgMainTEN_MUCDO: TdxDBGridColumn;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_MucDoThuongTat: TfrmBAOHIEM_MucDoThuongTat;

implementation

{$R *.dfm}

end.
