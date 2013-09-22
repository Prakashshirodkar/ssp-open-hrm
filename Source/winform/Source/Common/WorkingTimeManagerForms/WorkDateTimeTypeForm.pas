unit WorkDateTimeTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ToolbarFrame, dxLayoutControl, cxControls, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxCntner, DB, IBODataset;

type
  TfrmWorkDateHourType = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    pageMain: TElPageControl;
    tabWorkDateType: TElTabSheet;
    tabWorkHourType: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    gridWorkDateType: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    gridWorkDateTypeWDT_NO: TdxDBGridColumn;
    gridWorkDateTypeWDT_NAME: TdxDBGridColumn;
    gridWorkDateTypeWDT_RATE: TdxDBGridCalcColumn;
    gridWorkDateTypeWDT_COLOR: TdxDBGridMaskColumn;
    gridWorkDateTypeWDT_NOTE: TdxDBGridColumn;
    gridWorkDateTypeCOLOR: TdxDBGridButtonColumn;
    ColorDialog1: TColorDialog;
    qryWorkDateType: TIBOQuery;
    dsWorkDateType: TDataSource;
    qryWorkHourType: TIBOQuery;
    qryWorkHourTypeWHT_NO: TWideStringField;
    qryWorkHourTypeWHT_NAME: TWideStringField;
    qryWorkHourTypeWHT_RATE: TIBOFloatField;
    qryWorkHourTypeWHT_COLOR: TIntegerField;
    qryWorkHourTypeWHT_NOTE: TWideStringField;
    dsWorkHourType: TDataSource;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    gridWorkHourType: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    gridWorkHourTypeWHT_NO: TdxDBGridColumn;
    gridWorkHourTypeWHT_NAME: TdxDBGridColumn;
    gridWorkHourTypeWHT_RATE: TdxDBGridCalcColumn;
    gridWorkHourTypeWHT_COLOR: TdxDBGridColumn;
    gridWorkHourTypeWHT_NOTE: TdxDBGridColumn;
    gridWorkHourTypeCOLOR: TdxDBGridButtonColumn;
    qryWorkDateTypeWDT_NO: TWideStringField;
    qryWorkDateTypeWDT_NAME: TWideStringField;
    qryWorkDateTypeWDT_RATE: TIBOFloatField;
    qryWorkDateTypeWDT_COLOR: TIntegerField;
    qryWorkDateTypeWDT_NOTE: TWideStringField;
    qryWorkDateTypeORDER_INDEX: TIntegerField;
    gridWorkDateTypeORDER_INDEX: TdxDBGridSpinColumn;
    qryWorkHourTypeORDER_INDEX: TIntegerField;
    gridWorkHourTypeORDER_INDEX: TdxDBGridColumn;
    qryWorkDateTypeKI_HIEU: TWideStringField;
    gridWorkDateTypeKI_HIEU: TdxDBGridColumn;
    qryWorkHourTypeKI_HIEU: TWideStringField;
    gridWorkHourTypeKI_HIEU: TdxDBGridColumn;

    procedure gridWorkDateTypeCOLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridWorkDateTypeCOLORButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pageMainChange(Sender: TObject);
    procedure gridWorkHourTypeCOLORButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure gridWorkHourTypeCOLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryWorkDateTypeNewRecord(DataSet: TDataSet);
    procedure qryWorkHourTypeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkDateHourType: TfrmWorkDateHourType;

implementation

uses MainDM, WorkTimeDataModule, PopupMainForm;

{$R *.dfm}

procedure TfrmWorkDateHourType.gridWorkDateTypeCOLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color :=
    StrToIntDef(VarToStr(ANode.Values[gridWorkDateTypeWDT_COLOR.Index]), 0);
  AColor := int_color;
  AText := IntToHex(int_color, 6);
end;

procedure TfrmWorkDateHourType.gridWorkDateTypeCOLORButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := qryWorkDateTypeWDT_COLOR.Value;
  if ColorDialog1.Execute then
  begin
    if not (qryWorkDateType.State in [dsEdit, dsInsert]) then
      qryWorkDateType.Edit;
    qryWorkDateTypeWDT_COLOR.Value := ColorDialog1.Color;
    qryWorkDateTypeWDT_NO.FocusControl;
  end
end;

procedure TfrmWorkDateHourType.FormCreate(Sender: TObject);
begin
  inherited;
  tabWorkDateType.TabVisible := false;
  gridWorkDateType.Visible := false;
  qryWorkDateType.Open;
  qryWorkHourType.OPen;
  pageMain.ActivePage := tabWorkHourType;  
end;

procedure TfrmWorkDateHourType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if pageMain.ActivePage = tabWorkDateType then
    frmPopupMain.ListKeyField := qryWorkDateTypeWDT_NO.Value
  else
    frmPopupMain.ListKeyField := qryWorkHourTypeWHT_NO.Value;
  qryWorkDateType.Close;
  qryWorkHourType.Close;
end;

procedure TfrmWorkDateHourType.pageMainChange(Sender: TObject);
begin
  inherited;
  {if pageMain.ActivePage = tabWorkDateType then
    frameToolbar1.SetDataSource(dsWorkDateType)
  else}
    if pageMain.ActivePage = tabWorkHourType then
    frameToolbar1.SetDataSource(dsWorkHourType)
end;

procedure TfrmWorkDateHourType.gridWorkHourTypeCOLORButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := qryWorkHourTypeWHT_COLOR.Value;
  if ColorDialog1.Execute then
  begin
    if not (qryWorkHourType.State in [dsEdit, dsInsert]) then
      qryWorkHourType.Edit;
    qryWorkHourTypeWHT_COLOR.Value := ColorDialog1.Color;
    qryWorkHourTypeWHT_NO.FocusControl;
  end
end;

procedure TfrmWorkDateHourType.gridWorkHourTypeCOLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color :=
    StrToIntDef(VarToStr(ANode.Values[gridWorkHourTypeWHT_COLOR.Index]), 0);
  AColor := int_color;
  AText := IntToHex(int_color, 6);
end;

procedure TfrmWorkDateHourType.qryWorkDateTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWorkDateTypeWDT_RATE.Value := 1;
  qryWorkDateTypeWDT_COLOR.Value := clWhite;
end;

procedure TfrmWorkDateHourType.qryWorkHourTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWorkHourTypeWHT_RATE.Value := 1;
  qryWorkHourTypeWHT_COLOR.Value := clWhite;
end;

end.

