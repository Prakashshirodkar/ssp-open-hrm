unit BAOHIEM_MucDoSuyGiamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmBAOHIEM_MucDoSuyGiam = class(TfrmListBase)
    qryListID_MUCDO_SUYGIAM: TIntegerField;
    qryListMA_MUCDO_SUYGIAM: TWideStringField;
    qryListTEN_MUCDO_SUYGIAM: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    dxdbgMainMA_MUCDO_SUYGIAM: TdxDBGridColumn;
    dxdbgMainTEN_MUCDO_SUYGIAM: TdxDBGridColumn;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_MucDoSuyGiam: TfrmBAOHIEM_MucDoSuyGiam;

implementation

{$R *.dfm}

end.
