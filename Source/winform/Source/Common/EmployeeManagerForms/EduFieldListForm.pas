unit EduFieldListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DocBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ExtCtrls, DB, IBODataset,
  dxExEdtr, ElPanel, ElSplit, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms;

type
  TfrmEduFieldList = class(TfrmDocBase)
    dsEduField: TDataSource;
    dsFieldLevel: TDataSource;
    qryEduField: TIBOQuery;
    qryFieldLevel: TIBOQuery;
    qryEduFieldEDU_FIELD_NO: TWideStringField;
    qryEduFieldEDU_FIELD_NAME: TWideStringField;
    qryEduFieldEDU_FIELD_NOTE: TWideStringField;
    qryFieldLevelEDU_FIELD_NO: TWideStringField;
    qryFieldLevelFIELD_LEVEL_NO: TWideStringField;
    qryFieldLevelFIELD_LEVEL_NAME: TWideStringField;
    qryFieldLevelFIELD_LEVEL_GRADE: TIntegerField;
    qryFieldLevelFIELD_LEVEL_NOTE: TWideStringField;
    Panel1: TPanel;
    dxlcMainItem2: TdxLayoutItem;
    dxgridEduField: TdxDBGrid;
    ElSplitter1: TElSplitter;
    dxgridFieldLevel: TdxDBGrid;
    dxgridEduFieldEDU_FIELD_NO: TdxDBGridColumn;
    dxgridEduFieldEDU_FIELD_NAME: TdxDBGridColumn;
    dxgridEduFieldEDU_FIELD_NOTE: TdxDBGridColumn;
    dxgridFieldLevelFIELD_LEVEL_NO: TdxDBGridColumn;
    dxgridFieldLevelFIELD_LEVEL_NAME: TdxDBGridColumn;
    dxgridFieldLevelFIELD_LEVEL_GRADE: TdxDBGridSpinColumn;
    dxgridFieldLevelFIELD_LEVEL_NOTE: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryFieldLevelNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    F_CUR_TYPE_NO,F_CUR_TYPE_NAME:WideString;
  public
    { Public declarations }
  end;

var
  frmEduFieldList: TfrmEduFieldList;

implementation

uses MainDM, EditBaseFrm, MainUnit, BaseFrm;

{$R *.dfm}

procedure TfrmEduFieldList.FormCreate(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsEduField);
  frameToolbar1.SetActiveControl(dxgridEduField);
  qryEduField.Open;
  qryFieldLevel.Open;
end;

procedure TfrmEduFieldList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryFieldLevel.Close;
  qryEduField.Close;
end;

procedure TfrmEduFieldList.qryFieldLevelNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryFieldLevelEDU_FIELD_NO.Value:=qryEduFieldEDU_FIELD_NO.Value; 
end;

end.
