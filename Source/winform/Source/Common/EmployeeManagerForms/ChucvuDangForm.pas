unit ChucvuDangForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmChucvuDang = class(TfrmListBase)
    qryListMA_CHUCVU: TWideStringField;
    qryListTEN_CHUCVU: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    dxdbgMainMA_CHUCVU: TdxDBGridColumn;
    dxdbgMainTEN_CHUCVU: TdxDBGridColumn;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChucvuDang: TfrmChucvuDang;

implementation

{$R *.dfm}

end.
