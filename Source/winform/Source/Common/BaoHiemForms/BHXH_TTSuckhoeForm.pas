unit BHXH_TTSuckhoeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmBHXH_TTSuckhoe = class(TfrmListBase)
    qryListMA_TINHTRANG: TWideStringField;
    qryListTEN_TINHTRANG: TWideStringField;
    qryListMUC_DO: TIntegerField;
    qryListGHI_CHU: TWideStringField;
    dxdbgMainMA_TINHTRANG: TdxDBGridColumn;
    dxdbgMainTEN_TINHTRANG: TdxDBGridColumn;
    dxdbgMainMUC_DO: TdxDBGridSpinColumn;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBHXH_TTSuckhoe: TfrmBHXH_TTSuckhoe;

implementation

{$R *.dfm}

end.
