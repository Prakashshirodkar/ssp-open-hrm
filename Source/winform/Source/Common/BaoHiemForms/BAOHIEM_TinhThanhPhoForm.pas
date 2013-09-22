//******************************************************************//
//************** Create form by THUYPTP - 01/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_TinhThanhPhoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmBAOHIEM_TinhThanhPho = class(TfrmListBase)
    qryListMA_TINH_THANHPHO: TWideStringField;
    qryListTEN_TINH_THANHPHO: TWideStringField;
    dxdbgMainMA_TINH_THANHPHO: TdxDBGridColumn;
    dxdbgMainTEN_TINH_THANHPHO: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_TinhThanhPho: TfrmBAOHIEM_TinhThanhPho;

implementation

{$R *.dfm}

end.
