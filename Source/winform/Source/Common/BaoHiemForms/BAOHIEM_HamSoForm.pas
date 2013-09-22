//******************************************************************//
//************** Create form by THUYPTP - 05/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_HamSoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmBAOHIEM_HamSo = class(TfrmListBase)
    qryListHAMSO_ID: TWideStringField;
    qryListHAMSO_TIEUDE: TWideStringField;
    qryListHAMSO_KYHIEU: TWideStringField;
    qryListHAMSO_HUONGDAN: TWideStringField;
    qryListHAMSO_LOAI: TWideStringField;
    dxdbgMainHAMSO_ID: TdxDBGridColumn;
    dxdbgMainHAMSO_TIEUDE: TdxDBGridColumn;
    dxdbgMainHAMSO_KYHIEU: TdxDBGridColumn;
    dxdbgMainHAMSO_HUONGDAN: TdxDBGridColumn;
    dxdbgMainHAMSO_LOAI: TdxDBGridImageColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_HamSo: TfrmBAOHIEM_HamSo;

implementation

{$R *.dfm}

end.
