unit BAOHIEM_TNLD_NguyenNhanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmBAOHIEM_TNLD_NguyenNhan = class(TfrmListBase)
    qryListID_TNLD_NGUYENNHAN: TIntegerField;
    qryListMA_NGUYENNHAN: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    dxdbgMainMA_NGUYENNHAN: TdxDBGridColumn;
    dxdbgMainTEN_NGUYENNHAN: TdxDBGridColumn;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
    qryListTEN_NGUYENNHAN: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_TNLD_NguyenNhan: TfrmBAOHIEM_TNLD_NguyenNhan;

implementation

{$R *.dfm}

end.
