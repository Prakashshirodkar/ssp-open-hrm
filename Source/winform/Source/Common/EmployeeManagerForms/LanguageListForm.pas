unit LanguageListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ExtCtrls, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, ElPanel, ElSplit, dxCntner, DB, IBODataset;

type
  TfrmLanguage = class(TfrmEditBase)
    Panel1: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    dsList: TDataSource;
    dsLevel: TDataSource;
    qryList: TIBOQuery;
    qryLevel: TIBOQuery;
    qryListLANGUAGE_NO: TWideStringField;
    qryListLANGUAGE_NAME: TWideStringField;
    qryListNOTE: TWideStringField;
    qryLevelLANGUAGE_NO: TWideStringField;
    qryLevelLEVEL_NO: TWideStringField;
    qryLevelLEVEL_NAME: TWideStringField;
    qryLevelLEVEL_ORDER: TIntegerField;
    qryLevelLEVEL_NOTE: TWideStringField;
    gridList: TdxDBGrid;
    ElSplitter1: TElSplitter;
    gridLevel: TdxDBGrid;
    gridListLANGUAGE_NO: TdxDBGridColumn;
    gridListLANGUAGE_NAME: TdxDBGridColumn;
    gridListNOTE: TdxDBGridColumn;
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
  frmLanguage: TfrmLanguage;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmLanguage.FormCreate(Sender: TObject);
begin
  inherited;
  qryList.Open;
  qryLevel.Open;
  frameToolbar1.SetDataSource(dsList);
  frameToolbar1.SetActiveControl(gridList);
end;

procedure TfrmLanguage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryLevel.Close;
  qryList.Close;
end;

procedure TfrmLanguage.qryLevelNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryLevelLANGUAGE_NO.Value:=qryListLANGUAGE_NO.Value;
  qryLevelLEVEL_ORDER.Value:=qryLevel.RecordCount;
end;

end.
