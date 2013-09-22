unit BAOHIEM_PhanNhomForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmBAOHIEM_PhanNhom = class(TfrmListBase)
    qryListMA_PHANNHOM: TWideStringField;
    qryListTEN_PHANNHOM: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    qryListSTT: TSmallintField;
    dxdbgMainMA_PHANNHOM: TdxDBGridColumn;
    dxdbgMainTEN_PHANNHOM: TdxDBGridColumn;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
    dxdbgMainSTT: TdxDBGridSpinColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_PhanNhom: TfrmBAOHIEM_PhanNhom;

implementation

{$R *.dfm}

end.
