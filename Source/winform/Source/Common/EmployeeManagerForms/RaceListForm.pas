unit RaceListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmRaceList = class(TfrmListBase)
    qryListRACE_NO: TWideStringField;
    qryListRACE_NAME: TWideStringField;
    qryListRACE_NOTE: TWideStringField;
    dxdbgMainRACE_NO: TdxDBGridColumn;
    dxdbgMainRACE_NAME: TdxDBGridColumn;
    dxdbgMainRACE_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRaceList: TfrmRaceList;

implementation

uses MainDM;

{$R *.dfm}

end.
