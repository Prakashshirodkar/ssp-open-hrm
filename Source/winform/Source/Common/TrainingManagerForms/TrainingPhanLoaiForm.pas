unit TrainingPhanLoaiForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTrainingPhanLoai = class(TfrmListBase)
    qryListPHAN_NHOM_ID: TIntegerField;
    qryListPHAN_NHOM_TEN: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    dxdbgMainPHAN_NHOM_TEN: TdxDBGridColumn;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingPhanLoai: TfrmTrainingPhanLoai;

implementation

{$R *.dfm}

end.
