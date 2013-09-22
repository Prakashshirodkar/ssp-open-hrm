unit WageElementTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  ToolbarFrame, dxLayoutControl, cxControls, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxCntner, DB, IBODataset;

type
  TfrmWageElementType = class(TfrmBase)
    frameToolbar1: TframeToolbar;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    gridWageElementType: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    ColorDialog1: TColorDialog;
    qryWageElementType: TIBOQuery;
    dsWageElementType: TDataSource;
    qryWageElementTypeELEMENT_TYPE_NO: TWideStringField;
    qryWageElementTypeELEMENT_TYPE_NAME: TWideStringField;
    qryWageElementTypeELEMENT_TYPE_NOTE: TWideStringField;
    qryWageElementTypeORDER_INDEX: TSmallintField;
    qryWageElementTypeCOLOR: TIntegerField;
    gridWageElementTypeELEMENT_TYPE_NO: TdxDBGridColumn;
    gridWageElementTypeELEMENT_TYPE_NAME: TdxDBGridColumn;
    gridWageElementTypeELEMENT_TYPE_NOTE: TdxDBGridColumn;
    gridWageElementTypeCOLOR: TdxDBGridColumn;
    gridWageElementTypeCHANGE_COLOR: TdxDBGridButtonColumn;

    procedure gridWageElementTypeCOLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridWorkHourTypeCOLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridWageElementTypeCHANGE_COLORCustomDrawCell(
      Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      ANode: TdxTreeListNode; AColumn: TdxTreeListColumn; ASelected,
      AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure gridWageElementTypeCHANGE_COLORButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWageElementType: TfrmWageElementType;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmWageElementType.gridWageElementTypeCOLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;

end;

procedure TfrmWageElementType.FormCreate(Sender: TObject);
begin
  inherited;
  qryWageElementType.Open;
  frameToolbar1.SetDataSource(dsWageElementType);
end;

procedure TfrmWageElementType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWageElementType.Close;
end;

procedure TfrmWageElementType.gridWorkHourTypeCOLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
end;

procedure TfrmWageElementType.gridWageElementTypeCHANGE_COLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color :=
    StrToIntDef(VarToStr(ANode.Values[gridWageElementTypeCOLOR.Index]), 0);
  AColor := int_color;
  AText := IntToHex(int_color, 6);
end;

procedure TfrmWageElementType.gridWageElementTypeCHANGE_COLORButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if ColorDialog1.Execute then
  begin
    if not (qryWageElementType.State in [dsEdit, dsInsert]) then
      qryWageElementType.Edit;
    qryWageElementTypeCOLOR.Value := ColorDialog1.Color;
    qryWageElementTypeELEMENT_TYPE_NO.FocusControl;
  end
end;

end.

