unit WorkShiftListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, StdCtrls, ElCLabel,
  ElLabel, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, IBODataset, dxDBTLCl,
  dxGrClms, dxGrClEx;

type
  TfrmWorkShiftList = class(TfrmEditBase)
    dsWorkShift: TDataSource;
    dsDetail: TDataSource;
    gridWorkShift: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainItem3: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxlcMainItem4: TdxLayoutItem;
    ElLabel2: TElLabel;
    dxDBGrid1: TdxDBGrid;
    dxlcMainItem5: TdxLayoutItem;
    gridDetail: TdxDBGrid;
    dxlcMainItem6: TdxLayoutItem;
    dxlcMainGroup2: TdxLayoutGroup;
    qryWorkShift: TIBOQuery;
    qryWorkShiftSHIFT_NO: TWideStringField;
    qryWorkShiftSHIFT_NAME: TWideStringField;
    qryWorkShiftSHIFT_NOTE: TWideStringField;
    qryWorkShiftCOLOR: TIntegerField;
    gridWorkShiftSHIFT_NO: TdxDBGridColumn;
    gridWorkShiftSHIFT_NAME: TdxDBGridColumn;
    gridWorkShiftSHIFT_NOTE: TdxDBGridColumn;
    gridWorkShiftCOLOR: TdxDBGridColumn;
    gridWorkShiftCOLOR_SELECT: TdxDBGridButtonColumn;
    ColorDialog1: TColorDialog;
    qryDetail: TIBOQuery;
    qryDetailSHIFT_NO: TWideStringField;
    qryDetailSTART_TIME: TTimeField;
    qryDetailEND_TIME: TTimeField;
    qryDetailWHT_NO: TWideStringField;
    qryDetailWHT_NAME: TWideStringField;
    gridDetailSTART_TIME: TdxDBGridTimeColumn;
    gridDetailEND_TIME: TdxDBGridTimeColumn;
    gridDetailEND_DATE: TdxDBGridImageColumn;
    gridDetailWHT_NAME: TdxDBGridPopupColumn;
    qryDetailEND_DATE: TIntegerField;
    qryDetailSTART_DATE: TIntegerField;
    gridDetailSTART_DATE: TdxDBGridImageColumn;
    procedure gridWorkShiftCOLOR_SELECTButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure gridWorkShiftCOLOR_SELECTCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure gridDetailWHT_NAMEInitPopup(Sender: TObject);
    procedure gridDetailWHT_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDetailNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkShiftList: TfrmWorkShiftList;

implementation

uses MainDM, PopupMainForm, SSP_Compiler, SSP_Library;

{$R *.dfm}

procedure TfrmWorkShiftList.gridWorkShiftCOLOR_SELECTButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := qryWorkShiftCOLOR.Value;
  if ColorDialog1.Execute then
  begin
    if not (qryWorkShift.State in [dsEdit, dsInsert]) then
      qryWorkShift.Edit;
    qryWorkShiftCOLOR.Value := ColorDialog1.Color;
    qryWorkShiftSHIFT_NO.FocusControl;
  end
end;

procedure TfrmWorkShiftList.gridWorkShiftCOLOR_SELECTCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color :=
    StrToIntDef(VarToStr(ANode.Values[gridWorkShiftCOLOR.Index]), 0);
  AColor := int_color;
  AText := IntToHex(int_color, 6);
end;

procedure TfrmWorkShiftList.FormCreate(Sender: TObject);
begin
  inherited;
  qryWorkShift.Open;
  qryDetail.Open;
  frameToolbar1.SetDataSource(dsWorkShift);
end;

procedure TfrmWorkShiftList.gridDetailWHT_NAMEInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
    InitPopupControl('dxlcWorkHourType',frmPopupMain,sender,2,gridDetail);

end;

procedure TfrmWorkShiftList.gridDetailWHT_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryWorkHourType,qryDetail,
        'WHT_NO;WHT_NAME','WHT_NO;WHT_NAME','WHT_NAME',Text);
    frmPopupMain.qryWorkHourType.Close;

end;

procedure TfrmWorkShiftList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryDetail.Close;
  qryWorkShift.Close;

end;

procedure TfrmWorkShiftList.qryDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDetailSTART_DATE.Value := 0;
end;

end.
