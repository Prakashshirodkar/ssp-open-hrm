unit SkillListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ExtCtrls, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, ElPanel, ElSplit, dxCntner, DB, IBODataset;

type
  TfrmSkill = class(TfrmEditBase)
    Panel1: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    dsList: TDataSource;
    dsLevel: TDataSource;
    qryList: TIBOQuery;
    qryLevel: TIBOQuery;
    gridList: TdxDBGrid;
    ElSplitter1: TElSplitter;
    gridLevel: TdxDBGrid;
    qryListSKILL_NO: TWideStringField;
    qryListSKILL_NAME: TWideStringField;
    qryListNOTE: TWideStringField;
    gridListSKILL_NO: TdxDBGridColumn;
    gridListSKILL_NAME: TdxDBGridColumn;
    gridListNOTE: TdxDBGridColumn;
    qryLevelSKILL_NO: TWideStringField;
    qryLevelLEVEL_NO: TWideStringField;
    qryLevelLEVEL_NAME: TWideStringField;
    qryLevelLEVEL_ORDER: TIntegerField;
    qryLevelLEVEL_NOTE: TWideStringField;
    gridLevelLEVEL_NO: TdxDBGridColumn;
    gridLevelLEVEL_NAME: TdxDBGridColumn;
    gridLevelLEVEL_ORDER: TdxDBGridSpinColumn;
    gridLevelLEVEL_NOTE: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryLevelNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSkill: TfrmSkill;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmSkill.FormCreate(Sender: TObject);
begin
  inherited;
  qryList.Open;
  qryLevel.Open;
  frameToolbar1.SetDataSource(dsList);
  frameToolbar1.SetActiveControl(gridList);
end;

procedure TfrmSkill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryLevel.Close;
  qryList.Close;
end;

procedure TfrmSkill.qryLevelNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryLevelSKILL_NO.Value:=qryListSKILL_NO.Value;
  qryLevelLEVEL_ORDER.Value:=qryLevel.RecordCount;
end;

end.
