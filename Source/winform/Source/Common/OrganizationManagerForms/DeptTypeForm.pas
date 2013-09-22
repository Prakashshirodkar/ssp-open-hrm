unit DeptTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmDeptType = class(TfrmListBase)
    qryListDEPT_TYPE_NAME: TWideStringField;
    qryListDEPT_TYPE_NOTE: TWideStringField;
    dxdbgMainDEPT_TYPE_NO: TdxDBGridColumn;
    dxdbgMainDEPT_TYPE_NAME: TdxDBGridColumn;
    dxdbgMainDEPT_TYPE_NOTE: TdxDBGridColumn;
    qryListDEPT_TYPE_NO: TWideStringField;
    qryListPRESENT_COLOR: TIntegerField;
    dxdbgMainGET_COLOR: TdxDBGridButtonColumn;
    ColorDialog1: TColorDialog;
    dxdbgMainPRESENT_COLOR: TdxDBGridMaskColumn;
    procedure dxdbgMainGET_COLORButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxdbgMainGET_COLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeptType: TfrmDeptType;

implementation

uses MainDM, EditBaseFrm;

{$R *.dfm}

procedure TfrmDeptType.dxdbgMainGET_COLORButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if ColorDialog1.Execute then
  begin
    if not (qryList.State in [dsEdit, dsInsert]) then
      qryList.Edit;
    qryListPRESENT_COLOR.Value := ColorDialog1.Color;
    qryListDEPT_TYPE_NO.FocusControl;
  end
end;

procedure TfrmDeptType.dxdbgMainGET_COLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color := StrToIntDef(VarToStr(ANode.Values[dxdbgMainPRESENT_COLOR.Index]),
    0);
  AColor := int_color;
  AText := IntToHex(int_color, 6);
end;

procedure TfrmDeptType.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListPRESENT_COLOR.Value := Integer(clWhite);
end;

end.

