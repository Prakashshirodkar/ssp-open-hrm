unit TrainingContentForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmTrainingContent = class(TfrmListBase)
    qryListCONTENT_NO: TWideStringField;
    qryListCONTENT_NAME: TWideStringField;
    qryListCONTENT_NOTE: TWideStringField;
    dxdbgMainCONTENT_NO: TdxDBGridColumn;
    dxdbgMainCONTENT_NAME: TdxDBGridColumn;
    dxdbgMainCONTENT_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingContent: TfrmTrainingContent;

implementation

{$R *.dfm}

end.
