unit BAOHIEM_YeuToChanThuongForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TreeBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBTL, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl;

type
  TfrmBAOHIEM_YeuToChanThuong = class(TfrmTreeBase)
    qryListID_YEUTO_CHANTHUONG: TIntegerField;
    qryListMA_YEUTO_CHANTHUONG: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    qryListCAP_DO: TSmallintField;
    qryListP_ID_YEUTO_CHANTHUONG: TIntegerField;
    qryListTEN_YEUTO_CHANTHUONG: TWideStringField;
    dxdbtlMainCAP_DO: TdxDBTreeListSpinColumn;
    dxdbtlMainTEN_YEUTO_CHANTHUONG: TdxDBTreeListColumn;
    dxdbtlMainMA_YEUTO_CHANTHUONG: TdxDBTreeListColumn;
    dxdbtlMainGHI_CHU: TdxDBTreeListColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_YeuToChanThuong: TfrmBAOHIEM_YeuToChanThuong;

implementation

{$R *.dfm}

end.
