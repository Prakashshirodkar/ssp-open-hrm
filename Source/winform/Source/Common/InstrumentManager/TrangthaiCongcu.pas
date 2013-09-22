unit TrangthaiCongcu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmCongcuTrangthai = class(TfrmListBase)
    dxdbgMainMA_TRANGTHAI: TdxDBGridColumn;
    dxdbgMainTEN_TRANGTHAI: TdxDBGridColumn;
    qryListMA_TRANGTHAI: TWideStringField;
    qryListTEN_TRANGTHAI: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCongcuTrangthai: TfrmCongcuTrangthai;

implementation

{$R *.dfm}

end.
