unit WageStructureForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, DB,
  IBODataset, ExtCtrls, dxLayoutControl, dxEdLib, dxExEdtr, dxDBELib,
  dxCntner, dxEditor, cxControls, dxorgchr, dxdborgc, ElBtnCtl, ElPopBtn,
  ToolbarFrame, dxBar, ActnList, ImgList;

type
  TfrmWageStructure = class(TfrmBase)
    paneOrgMapLeft: TPanel;
    chartWageStructure: TdxDbOrgChart;
    dxlcProperties: TdxLayoutControl;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dbimgITEM_SHAPE: TdxDBImageEdit;
    dbimgITEM_ALIGN: TdxDBImageEdit;
    btnITEM_COLOR: TdxButtonEdit;
    dxIndentX: TdxSpinEdit;
    dxIndentY: TdxSpinEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxlcPropertiesGroup11: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxlcPropertiesItem2: TdxLayoutItem;
    dxlcPropertiesItem3: TdxLayoutItem;
    dxlcPropertiesItem4: TdxLayoutItem;
    dxlcPropertiesItem5: TdxLayoutItem;
    dxlcPropertiesGroup6: TdxLayoutGroup;
    dxlcPropertiesItem10: TdxLayoutItem;
    dxlcPropertiesItem11: TdxLayoutItem;
    Splitter1: TSplitter;
    dsWageStructure: TDataSource;
    qryWageStructure: TIBOQuery;
    dxlcPropertiesGroup1: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxlcPropertiesItem18: TdxLayoutItem;
    ColorDialog1: TColorDialog;
    frameToolbar1: TframeToolbar;
    dxBarManager1: TdxBarManager;
    dxFullExpand: TdxBarButton;
    dxFullCollapse: TdxBarButton;
    dxRotate: TdxBarButton;
    imgAction: TImageList;
    ActionList1: TActionList;
    acFullExpand: TAction;
    acFullCollapse: TAction;
    acRotate: TAction;
    ppMenu: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    btnSelectBackGroundColor: TdxMemo;
    dxlcPropertiesItem1: TdxLayoutItem;
    dxlcPropertiesGroup3: TdxLayoutGroup;
    qryWageStructureSTRUCTURE_NO: TWideStringField;
    qryWageStructureSTRUCTURE_NAME: TWideStringField;
    qryWageStructureP_STRUCTURE_NO: TWideStringField;
    qryWageStructureITEM_HEIGHT: TIntegerField;
    qryWageStructureITEM_WIDTH: TIntegerField;
    qryWageStructureITEM_SHAPE: TSmallintField;
    qryWageStructureITEM_COLOR: TIntegerField;
    qryWageStructureITEM_ALIGN: TSmallintField;
    dxDBEdit1: TdxDBEdit;
    dxlcPropertiesItem6: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxIndentXChange(Sender: TObject);
    procedure dxIndentYChange(Sender: TObject);
    procedure btnITEM_COLORButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure BeforeInsert(Sender: TObject);
    procedure BeforeInsertChild(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryWageStructureNewRecord(DataSet: TDataSet);
    procedure qryWageStructureAfterInsert(DataSet: TDataSet);
    procedure qryWageStructureAfterScroll(DataSet: TDataSet);
    procedure btnSelectBackgroundColorClick(Sender: TObject);
    procedure chartWageStructureMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure acRotateExecute(Sender: TObject);
    procedure acFullExpandExecute(Sender: TObject);
    procedure acFullCollapseExecute(Sender: TObject);
    procedure qryWageStructureAfterDelete(DataSet: TDataSet);
    procedure qryWageStructureAfterCancel(DataSet: TDataSet);
    procedure qryWageStructureITEM_ALIGNChange(Sender: TField);
    procedure qryWageStructureITEM_COLORChange(Sender: TField);
    procedure qryWageStructureITEM_SHAPEChange(Sender: TField);
    procedure qryWageStructureITEM_WIDTHChange(Sender: TField);
    procedure qryWageStructureITEM_HEIGHTChange(Sender: TField);
    procedure frameToolbar1btnInsertClick(Sender: TObject);
  private
    { Private declarations }
    P_STRUCTURE_NO:WideString;
  public
    { Public declarations }
  end;

var
  frmWageStructure: TfrmWageStructure;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmWageStructure.FormCreate(Sender: TObject);
begin
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Chữ nhật'));
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Chữ nhật tròn' ));
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Hình elip'));
  dbimgITEM_SHAPE.Descriptions.Add(Utf8Decode('Hình thoi'));

  dbimgITEM_SHAPE.Values.Add('0');
  dbimgITEM_SHAPE.Values.Add('1');
  dbimgITEM_SHAPE.Values.Add('2');
  dbimgITEM_SHAPE.Values.Add('3');

  dbimgITEM_ALIGN.Descriptions.Add(Utf8Decode('Canh trái'));
  dbimgITEM_ALIGN.Descriptions.Add(Utf8Decode('Canh giữa'));
  dbimgITEM_ALIGN.Descriptions.Add(Utf8Decode('Canh phải'));

  dbimgITEM_ALIGN.Values.Add('0');
  dbimgITEM_ALIGN.Values.Add('1');
  dbimgITEM_ALIGN.Values.Add('2');

  chartWageStructure.ColorFieldName:='ITEM_COLOR';
  chartWageStructure.WidthFieldName:='ITEM_WIDTH';
  chartWageStructure.HeightFieldName:='ITEM_HEIGHT';
  chartWageStructure.ShapeFieldName:='ITEM_SHAPE';
  chartWageStructure.ChAlignFieldName:='ITEM_ALIGN';
  chartWageStructure.Options:=chartWageStructure.Options+[ocShowDrag];

  inherited;

  qryWageStructure.Open;
  frameToolbar1.SetDataSource(dsWageStructure);
  frameToolbar1.OnBeforeInsert:=BeforeInsert;
  frameToolbar1.OnBeforeInsertChild:=BeforeInsertChild;
  chartWageStructure.FullExpand;
  dxIndentX.IntValue:=50;
  dxIndentY.IntValue:=50;

end;

procedure TfrmWageStructure.dxIndentXChange(Sender: TObject);
begin
  inherited;
  chartWageStructure.IndentX:=dxIndentX.IntValue;
end;

procedure TfrmWageStructure.dxIndentYChange(Sender: TObject);
begin
  inherited;
  chartWageStructure.IndentY:=dxIndentY.IntValue;
end;

procedure TfrmWageStructure.btnITEM_COLORButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    ColorDialog1.Color:=qryWageStructureITEM_COLOR.Value;
  if (ColorDialog1.Execute) then
  begin
    if not (qryWageStructure.State in [dsEdit,dsInsert]) then
      qryWageStructure.Edit;
    qryWageStructureITEM_COLOR.Value:=ColorDialog1.Color;
    btnITEM_COLOR.Color:=ColorDialog1.Color;
    chartWageStructure.Selected.Color:=ColorDialog1.Color;
  end;
end;

procedure TfrmWageStructure.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryWageStructure.State in [dsEdit] then
    qryWageStructure.Post;
  inherited;
  qryWageStructure.Close;
end;
procedure TfrmWageStructure.BeforeInsert(Sender: TObject);
begin
  if (qryWageStructure.RecordCount=0) or
     (qryWageStructureP_STRUCTURE_NO.IsNull)
  then
    P_STRUCTURE_NO:=''
  else
    P_STRUCTURE_NO:=qryWageStructureP_STRUCTURE_NO.Value;
end;
procedure TfrmWageStructure.BeforeInsertChild(Sender: TObject);
begin
  if (qryWageStructure.RecordCount=0) or
     (qryWageStructureSTRUCTURE_NO.IsNull)
  then
    P_STRUCTURE_NO:=''
  else
    P_STRUCTURE_NO:=qryWageStructureSTRUCTURE_NO.Value;
end;

procedure TfrmWageStructure.qryWageStructureNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Length(P_STRUCTURE_NO)>0 then //not null
    qryWageStructureP_STRUCTURE_NO.Value:=P_STRUCTURE_NO
  else
    qryWageStructureP_STRUCTURE_NO.Clear;
  qryWageStructureITEM_HEIGHT.Value:=60;
  qryWageStructureITEM_WIDTH.Value:=90;
  qryWageStructureITEM_SHAPE.Value:=0;
  qryWageStructureITEM_COLOR.Value:=clInfoBk;
end;

procedure TfrmWageStructure.qryWageStructureAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryWageStructureSTRUCTURE_NAME.Value:='';
  qryWageStructure.Post;
end;

procedure TfrmWageStructure.qryWageStructureAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnITEM_COLOR.Color:=qryWageStructureITEM_COLOR.Value;
end;

procedure TfrmWageStructure.btnSelectBackgroundColorClick(Sender: TObject);
begin
  inherited;
  ColorDialog1.Color:=chartWageStructure.Color;
  if ColorDialog1.Execute then
  begin
    chartWageStructure.Color:=ColorDialog1.Color;
    btnSelectBackgroundColor.Color:=ColorDialog1.Color;
  end;
end;

procedure TfrmWageStructure.chartWageStructureMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if button=mbRight then
    ppMenu.PopupFromCursorPos;
end;


procedure TfrmWageStructure.acRotateExecute(Sender: TObject);
begin
  inherited;
  chartWageStructure.Rotated:=not chartWageStructure.Rotated;
end;

procedure TfrmWageStructure.acFullExpandExecute(Sender: TObject);
begin
  inherited;
  chartWageStructure.FullExpand;
end;

procedure TfrmWageStructure.acFullCollapseExecute(Sender: TObject);
begin
  inherited;
  chartWageStructure.FullCollapse;
end;

procedure TfrmWageStructure.qryWageStructureAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qryWageStructure.Refresh;
end;

procedure TfrmWageStructure.qryWageStructureAfterCancel(DataSet: TDataSet);
begin
  inherited;
  chartWageStructure.Repaint;
end;

procedure TfrmWageStructure.qryWageStructureITEM_ALIGNChange(
  Sender: TField);
begin
  inherited;
  if Assigned(chartWageStructure.Selected) then
  chartWageStructure.Selected.ChildAlign:=TdxOcNodeAlign(qryWageStructureITEM_ALIGN.Value);
end;

procedure TfrmWageStructure.qryWageStructureITEM_COLORChange(
  Sender: TField);
begin
  inherited;
  if Assigned(chartWageStructure.Selected) then
  chartWageStructure.Selected.Color:=qryWageStructureITEM_COLOR.Value;
end;

procedure TfrmWageStructure.qryWageStructureITEM_SHAPEChange(
  Sender: TField);
begin
  inherited;
  if Assigned(chartWageStructure.Selected) then
  chartWageStructure.Selected.Shape:=TdxOcShape(qryWageStructureITEM_SHAPE.Value);
end;

procedure TfrmWageStructure.qryWageStructureITEM_WIDTHChange(
  Sender: TField);
begin
  inherited;
  if Assigned(chartWageStructure.Selected) then
  chartWageStructure.Selected.Width:=qryWageStructureITEM_WIDTH.Value;
end;

procedure TfrmWageStructure.qryWageStructureITEM_HEIGHTChange(
  Sender: TField);
begin
  inherited;
  if Assigned(chartWageStructure.Selected) then
  chartWageStructure.Selected.Height:=qryWageStructureITEM_HEIGHT.Value;
end;

procedure TfrmWageStructure.frameToolbar1btnInsertClick(Sender: TObject);
begin
  inherited;
  frameToolbar1.acDSInsertExecute(Sender);
end;

end.
