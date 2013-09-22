unit RewardListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmRewardList = class(TfrmListBase)
    qryListREWARD_LIST_NO: TWideStringField;
    qryListREWARD_LIST_NAME: TWideStringField;
    qryListREWARD_NOTE: TWideStringField;
    dxdbgMainREWARD_LIST_NO: TdxDBGridColumn;
    dxdbgMainREWARD_LIST_NAME: TdxDBGridColumn;
    dxdbgMainREWARD_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRewardList: TfrmRewardList;

implementation

uses MainDM;

{$R *.dfm}

end.
