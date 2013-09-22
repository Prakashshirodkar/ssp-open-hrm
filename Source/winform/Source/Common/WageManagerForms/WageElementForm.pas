unit WageElementForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ExtCtrls,
  ElPanel, ElSplit, ImgList, ElPgCtl, StdCtrls, ElCLabel, ElLabel,
  dxExEdtr, dxLayoutControl, cxControls, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  DB, IBODataset, ToolbarFrame, dxEdLib, dxDBELib, dxEditor, ElBtnCtl,
  ElPopBtn, dxDBTLCl, dxGrClms, dxmdaset, VirtualTrees;

type
  TfrmWageElement = class(TfrmBase)
    pageLeft: TElPageControl;
    tabYeutoLuong: TElTabSheet;
    tabCongthucLuong: TElTabSheet;
    imlIcon: TImageList;
    ElSplitter1: TElSplitter;
    pageRight: TElPageControl;
    tabDinhnghiaYeutoLuong: TElTabSheet;
    tabDinhnghiaCongthucLuong: TElTabSheet;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    ElPanel1: TElPanel;
    ElLabel1: TElLabel;
    gridWageElement: TdxDBGrid;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dsWageElement: TDataSource;
    qryWageElement: TIBOQuery;
    qryWageElementELEMENT_NO: TWideStringField;
    qryWageElementELEMENT_NAME: TWideStringField;
    qryWageElementELEMENT_TYPE: TWideStringField;
    qryWageElementELEMENT_TYPE_NAME: TWideStringField;
    qryWageElementELEMENT_NOTE: TWideStringField;
    qryWageElementCOLOR: TIntegerField;
    gridWageElementELEMENT_NO: TdxDBGridColumn;
    gridWageElementELEMENT_NAME: TdxDBGridColumn;
    gridWageElementCOLOR: TdxDBGridColumn;
    dxELEMENT_NO: TdxDBEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item4: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    dxDBMemo2: TdxDBMemo;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxlcFunction: TdxLayoutControl;
    btnDiv: TElPopupButton;
    btnMod: TElPopupButton;
    btnAbs: TElPopupButton;
    btnSqrt: TElPopupButton;
    btnLn: TElPopupButton;
    btnExp: TElPopupButton;
    btnMaxVal: TElPopupButton;
    btnMinVal: TElPopupButton;
    CopyMemo: TdxMemo;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    ElPopupButton10: TElPopupButton;
    ElPopupButton11: TElPopupButton;
    ElPopupButton12: TElPopupButton;
    ElPopupButton13: TElPopupButton;
    ElPopupButton14: TElPopupButton;
    ElPopupButton15: TElPopupButton;
    ElPopupButton16: TElPopupButton;
    ElPopupButton17: TElPopupButton;
    ElPopupButton18: TElPopupButton;
    ElPopupButton19: TElPopupButton;
    ElPopupButton20: TElPopupButton;
    ElPopupButton21: TElPopupButton;
    ElPopupButton22: TElPopupButton;
    ElPopupButton23: TElPopupButton;
    ElPopupButton24: TElPopupButton;
    ElPopupButton25: TElPopupButton;
    dxLayoutGroup2: TdxLayoutGroup;
    ItemFuncNote: TdxLayoutGroup;
    dxlcFunctionGroup4: TdxLayoutGroup;
    dxlcFunctionItem22: TdxLayoutItem;
    dxlcFunctionItem26: TdxLayoutItem;
    dxlcFunctionItem8: TdxLayoutItem;
    dxlcFunctionItem12: TdxLayoutItem;
    dxlcFunctionItem19: TdxLayoutItem;
    dxlcFunctionGroup7: TdxLayoutGroup;
    dxlcFunctionItem21: TdxLayoutItem;
    dxlcFunctionItem28: TdxLayoutItem;
    dxlcFunctionItem9: TdxLayoutItem;
    dxlcFunctionItem13: TdxLayoutItem;
    dxlcFunctionItem17: TdxLayoutItem;
    dxlcFunctionItem29: TdxLayoutItem;
    dxlcFunctionGroup8: TdxLayoutGroup;
    dxlcFunctionItem23: TdxLayoutItem;
    dxlcFunctionItem27: TdxLayoutItem;
    dxlcFunctionItem10: TdxLayoutItem;
    dxlcFunctionItem14: TdxLayoutItem;
    dxlcFunctionItem18: TdxLayoutItem;
    dxlcFunctionItem30: TdxLayoutItem;
    dxlcFunctionGroup14: TdxLayoutGroup;
    dxlcFunctionItem25: TdxLayoutItem;
    dxlcFunctionItem24: TdxLayoutItem;
    dxlcFunctionItem16: TdxLayoutItem;
    dxlcFunctionItem36: TdxLayoutItem;
    dxlcFunctionItem11: TdxLayoutItem;
    dxlcFunctionItem33: TdxLayoutItem;
    dxlcFunctionItem15: TdxLayoutItem;
    dxlcFunctionItem20: TdxLayoutItem;
    dxlcFunctionItem34: TdxLayoutItem;
    dxlcFunctionItem37: TdxLayoutItem;
    dxlcFunctionItem40: TdxLayoutItem;
    dxlcFunctionItem38: TdxLayoutItem;
    dxlcFunctionItem39: TdxLayoutItem;
    dxExpression: TdxDBMemo;
    dxlcFunctionItem1: TdxLayoutItem;
    dxlcFunctionGroup1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxlcFunctionItem3: TdxLayoutItem;
    dxlcFunctionGroup2: TdxLayoutGroup;
    dxlcFunctionGroup3: TdxLayoutGroup;
    dxlcFunctionItem5: TdxLayoutItem;
    frameToolbar2: TframeToolbar;
    dxDBEdit2: TdxDBEdit;
    dxlcFunctionItem4: TdxLayoutItem;
    qryWageFormular: TIBOQuery;
    dsWageFormular: TDataSource;
    gridViewElement: TdxDBGrid;
    gridWageFormular: TdxDBGrid;
    ElSplitter2: TElSplitter;
    qryWageFormularFORMULAR_NO: TWideStringField;
    qryWageFormularFORMULAR_NAME: TWideStringField;
    qryWageFormularEXPRESSION: TWideStringField;
    qryWageFormularORDER_INDEX: TIntegerField;
    gridWageFormularFORMULAR_NAME: TdxDBGridColumn;
    gridWageFormularORDER_INDEX: TdxDBGridSpinColumn;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxlcFunctionItem31: TdxLayoutItem;
    dxlcFunctionGroup5: TdxLayoutGroup;
    pageView: TElPageControl;
    tabViewElement: TElTabSheet;
    tabViewFormular: TElTabSheet;
    qryViewFormular: TIBOQuery;
    dsViewFormular: TDataSource;
    dxDBGrid1: TdxDBGrid;
    qryViewFormularFORMULAR_NO: TWideStringField;
    qryViewFormularFORMULAR_NAME: TWideStringField;
    qryViewFormularEXPRESSION: TWideStringField;
    qryViewFormularORDER_INDEX: TIntegerField;
    gridViewElementELEMENT_NO: TdxDBGridColumn;
    gridViewElementELEMENT_NAME: TdxDBGridColumn;
    dxDBGrid1FORMULAR_NO: TdxDBGridColumn;
    dxDBGrid1FORMULAR_NAME: TdxDBGridColumn;
    tabViewSysFunction: TElTabSheet;
    qrySysFunction: TIBOQuery;
    dsSysFunction: TDataSource;
    ElSplitter3: TElSplitter;
    gridSysFunction: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    gridSysFunctionColor: TdxDBGridColumn;
    tabDinhnghiaHamHethong: TElTabSheet;
    ElPanel2: TElPanel;
    ElLabel2: TElLabel;
    dxLayoutControl1: TdxLayoutControl;
    dxFunctionNo: TdxDBEdit;
    dxFunctionName: TdxDBMemo;
    frameToolbar3: TframeToolbar;
    dxFunctionDescription: TdxDBMemo;
    dxLayoutGroup3: TdxLayoutGroup;
    dxlcFrameFunction: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    qrySysFunctionELEMENT_NO: TWideStringField;
    qrySysFunctionELEMENT_NAME: TWideStringField;
    qrySysFunctionELEMENT_TYPE: TWideStringField;
    qrySysFunctionELEMENT_TYPE_NAME: TWideStringField;
    qrySysFunctionELEMENT_NOTE: TWideStringField;
    qrySysFunctionCOLOR: TIntegerField;
    gridViewSysFunction: TdxDBGrid;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    gridViewElementCOLOR: TdxDBGridColumn;
    gridViewSysFunctionCOLOR: TdxDBGridMaskColumn;
    qryWageElementELEMENT_INDEX: TIntegerField;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    gridWageElementELEMENT_INDEX: TdxDBGridColumn;
    qryWageFormularRESULT_TYPE: TIntegerField;
    dxResultType: TdxDBImageEdit;
    dxlcFunctionItem2: TdxLayoutItem;
    dxlcFunctionGroup10: TdxLayoutGroup;
    dxlcFunctionGroup9: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure pageLeftChange(Sender: TObject);
    procedure qryWageElementELEMENT_TYPE_NAMEChange(Sender: TField);
    procedure gridWageElementELEMENT_NOCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryWageElementAfterInsert(DataSet: TDataSet);
    procedure qryWageElementBeforeInsert(DataSet: TDataSet);
    procedure qryWageElementNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StrCopyToStream(Str: WideString);
    procedure btnModClick(Sender: TObject);
    procedure qryWageFormularBeforeInsert(DataSet: TDataSet);
    procedure qryWageFormularNewRecord(DataSet: TDataSet);
    procedure btnDivClick(Sender: TObject);
    procedure btnAbsClick(Sender: TObject);
    procedure btnLnClick(Sender: TObject);
    procedure btnSqrtClick(Sender: TObject);
    procedure btnExpClick(Sender: TObject);
    procedure btnMinValClick(Sender: TObject);
    procedure btnMaxValClick(Sender: TObject);
    procedure ElPopupButton12Click(Sender: TObject);
    procedure ElPopupButton21Click(Sender: TObject);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton5Click(Sender: TObject);
    procedure ElPopupButton6Click(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure ElPopupButton19Click(Sender: TObject);
    procedure ElPopupButton8Click(Sender: TObject);
    procedure ElPopupButton9Click(Sender: TObject);
    procedure ElPopupButton10Click(Sender: TObject);
    procedure ElPopupButton11Click(Sender: TObject);
    procedure ElPopupButton22Click(Sender: TObject);
    procedure ElPopupButton15Click(Sender: TObject);
    procedure ElPopupButton13Click(Sender: TObject);
    procedure ElPopupButton14Click(Sender: TObject);
    procedure ElPopupButton16Click(Sender: TObject);
    procedure ElPopupButton25Click(Sender: TObject);
    procedure ElPopupButton17Click(Sender: TObject);
    procedure ElPopupButton18Click(Sender: TObject);
    procedure ElPopupButton20Click(Sender: TObject);
    procedure ElPopupButton23Click(Sender: TObject);
    procedure ElPopupButton24Click(Sender: TObject);
    procedure pageLeftChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure gridViewElementDblClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure qryWageFormularBeforePost(DataSet: TDataSet);
    procedure gridWageElementEnter(Sender: TObject);
    procedure gridSysFunctionEnter(Sender: TObject);
    procedure qrySysFunctionAfterInsert(DataSet: TDataSet);
    procedure qrySysFunctionNewRecord(DataSet: TDataSet);
    procedure dxDBGridColumn1CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridViewSysFunctionDblClick(Sender: TObject);
    procedure gridViewElementELEMENT_NOCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGridColumn3CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryWageElementBeforePost(DataSet: TDataSet);
    procedure frameToolbar2btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    ELEMENT_TYPE,
      ELEMENT_TYPE_NAME: WideString;
    COLOR, ORDER_INDEX: Integer;
  public
    { Public declarations }
  end;

var
  frmWageElement: TfrmWageElement;

implementation

uses MainDM, PopupMainForm, SSP_Library, WageDataModule, WageManagerForm;

{$R *.dfm}

procedure TfrmWageElement.FormCreate(Sender: TObject);
begin
  dxResultType.Descriptions.Add(Utf8Decode('Số'));
  dxResultType.Descriptions.Add(Utf8Decode('Văn bản'));
  dxResultType.Values.Add('0');
  dxResultType.Values.Add('1');

  pageRight.ShowTabs := false;
  inherited;
  qryWageElement.Open;
  frameToolbar1.SetDataSource(dsWageElement);
  qrySysFunction.Open;
  frameToolbar3.SetDataSource(dsSysFunction);
  if sysConfig.User <> 'smallfoot' then
  begin
    dxFunctionNo.ReadOnly := true;
    dxFunctionName.ReadOnly := true;
    dxFunctionDescription.ReadOnly := true;
    dxlcFrameFunction.Visible := false;

  end;
  qryWageFormular.Open;
  frameToolbar2.SetDataSource(dsWageFormular);
  pageLeft.ActivePage := tabYeutoLuong;
  pageView.ActivePage := tabViewElement;
  qryViewFormular.Open;
end;

procedure TfrmWageElement.pageLeftChange(Sender: TObject);
begin
  inherited;
  if pageLeft.ActivePage = tabYeutoLuong then
    pageRight.ActivePage := tabDinhnghiaYeutoLuong
  else
    if pageLeft.ActivePage = tabCongthucLuong then
    pageRight.ActivePage := tabDinhnghiaCongthucLuong;
end;

procedure TfrmWageElement.qryWageElementELEMENT_TYPE_NAMEChange(
  Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'ELEMENT_TYPE');
end;

procedure TfrmWageElement.gridWageElementELEMENT_NOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: integer;
begin
  inherited;
  int_color := StrToIntDef(VarToStr(ANode.Values[gridWageElementCOLOR.Index]),
    clWhite);
  AColor := int_color;
end;

procedure TfrmWageElement.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  if sysConfig.User <> 'smallfoot' then
    frmPopupMain.qryWageElementType.SQLWhere.Text :=
      'where ELEMENT_TYPE_NO<>''HETHONG''';
  frmPopupMain.qryWageElementType.Open;
  InitPopupControl('dxlcWageElementType', frmPopupMain, sender, 2.5);
end;

procedure TfrmWageElement.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryWageElementType, qryWageElement,
    'ELEMENT_TYPE_NO;ELEMENT_TYPE_NAME;COLOR',
    'ELEMENT_TYPE;ELEMENT_TYPE_NAME;COLOR',
    'ELEMENT_TYPE_NAME', Text);
  frmPopupMain.qryWageElementType.Close;
  frmPopupMain.qryWageElementType.SQLWhere.Clear;
end;

procedure TfrmWageElement.qryWageElementAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dxELEMENT_NO.SetFocus;
end;

procedure TfrmWageElement.qryWageElementBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if qryWageElement.RecordCount > 0 then
  begin
    ELEMENT_TYPE := qryWageElementELEMENT_TYPE.Value;
    ELEMENT_TYPE_NAME := qryWageElementELEMENT_TYPE_NAME.Value;
    COLOR := qryWageElementCOLOR.Value;
  end;
end;

procedure TfrmWageElement.qryWageElementNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Length(ELEMENT_TYPE) > 0 then
  begin
    qryWageElementELEMENT_TYPE.Value := ELEMENT_TYPE;
    qryWageElementELEMENT_TYPE_NAME.Value := ELEMENT_TYPE_NAME;
    qryWageElementCOLOR.Value := COLOR;
  end;
end;

procedure TfrmWageElement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryWageElement.Close;
  qryWageFormular.Close;
  qryViewFormular.Close;
  qrySysFunction.Close;
end;

procedure TfrmWageElement.StrCopyToStream(Str: WideString);
begin
  CopyMemo.Text := Str;
  CopyMemo.SelectAll;
  CopyMemo.CopyToClipboard;
end;

procedure TfrmWageElement.btnModClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Mod( , )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.qryWageFormularBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if qryWageFormular.RecordCount > 0 then
    ORDER_INDEX := qryWageFormularORDER_INDEX.Value
  else
    ORDER_INDEX := 1;
end;

procedure TfrmWageElement.qryWageFormularNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryWageFormularORDER_INDEX.Value := ORDER_INDEX + 1;
  qryWageFormularRESULT_TYPE.Value := 0;
end;

procedure TfrmWageElement.btnDivClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Div( , )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.btnAbsClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Abs( )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.btnLnClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Ln( )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.btnSqrtClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Sqrt( )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.btnExpClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Exp( )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.btnMinValClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Min( , )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.btnMaxValClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Max( , )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton12Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Round( , )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton21Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream('Sqr( )');
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton4Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton5Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton6Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton7Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton19Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton8Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton9Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton10Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton11Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton22Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton15Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton13Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton14Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton16Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton25Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton17Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton18Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton20Click(Sender: TObject);
begin
  inherited;
  StrCopyToStream((Sender as TElPopupButton).Caption);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.ElPopupButton23Click(Sender: TObject);
begin
  inherited;
  dxExpression.Text := '';
end;

procedure TfrmWageElement.ElPopupButton24Click(Sender: TObject);
begin
  inherited;
  dxExpression.SetFocus;
  keybd_event(VK_BACK, 0, 0, 0);
end;

procedure TfrmWageElement.pageLeftChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageLeft.ActivePage = tabYeutoLuong then
    AllowChange := dmMain.MsgChangeDataSource(dsWageElement)
  else
    if pageLeft.ActivePage = tabCongthucLuong then
    AllowChange := dmMain.MsgChangeDataSource(dsWageFormular)

end;

procedure TfrmWageElement.gridViewElementDblClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream(qryWageElementELEMENT_NO.Value);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream(qryViewFormularFORMULAR_NO.Value);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.qryWageFormularBeforePost(DataSet: TDataSet);
var
  test_result: integer;
begin
  inherited;
  qryWageFormularFORMULAR_NO.Value :=
    FormalizeString(qryWageFormularFORMULAR_NO.AsString);
  if not CheckRequiredFields(DataSet) then
    Abort
  else
  begin
    test_result := WageDM.TestExpression(qryWageFormularEXPRESSION.AsString,
      qryWageFormularORDER_INDEX.Value);
    if test_result > -1 then
    begin
      if sysConfig.Language = 2 then // dang o che do tieng Anh
        HintBox(frmWageManager.CustomForm, dxExpression,
          'The expression has an syntax error at position :' +
            IntToStr(test_result),
          'Syntax error')
      else
        HintBox(frmWageManager.CustomForm, dxExpression,
          Utf8Decode('Biểu thức tính lương có lỗi cú pháp tại vị trí: ') + IntToStr(test_result),
          Utf8Decode('Lỗi cú pháp'));
      Abort;
    end;
  end;
end;

procedure TfrmWageElement.gridWageElementEnter(Sender: TObject);
begin
  inherited;
  pageRight.ActivePage := tabDinhnghiaYeutoLuong;
end;

procedure TfrmWageElement.gridSysFunctionEnter(Sender: TObject);
begin
  inherited;
  pageRight.ActivePage := tabDinhnghiaHamHethong;
end;

procedure TfrmWageElement.qrySysFunctionAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dxFunctionNo.SetFocus;
end;

procedure TfrmWageElement.qrySysFunctionNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySysFunctionELEMENT_TYPE.Value := 'HETHONG';
end;

procedure TfrmWageElement.dxDBGridColumn1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: Integer;
begin
  inherited;
  try
    int_color := StrToIntDef(VarToStr(ANode.Values[gridSysFunctionColor.Index]),
      clWhite);
    AColor := int_color;
  except
  end
end;

procedure TfrmWageElement.gridViewSysFunctionDblClick(Sender: TObject);
begin
  inherited;
  StrCopyToStream(qrySysFunctionELEMENT_NO.Value);
  dxExpression.PasteFromClipboard;
  dxExpression.SetFocus;
end;

procedure TfrmWageElement.gridViewElementELEMENT_NOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: Integer;
begin
  inherited;
  int_color := StrToIntDef(VarToStr(ANode.Values[gridViewElementCOLOR.Index]),
    clWhite);
  AColor := int_color;
end;

procedure TfrmWageElement.dxDBGridColumn3CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  int_color: Integer;
begin
  inherited;
  try
    int_color :=
      StrToIntDef(VarToStr(ANode.Values[gridViewSysFunctionCOLOR.Index]),
      clWhite);
    AColor := int_color;
  except
  end
end;

procedure TfrmWageElement.qryWageElementBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryWageElementELEMENT_NO.Value :=
    FormalizeString(qryWageElementELEMENT_NO.AsString);
  dmMain.DefOnBeforePost(DataSet);
end;

procedure TfrmWageElement.frameToolbar2btnSaveClick(Sender: TObject);
begin
  inherited;
  frameToolbar2.acDSPostExecute(Sender);
end;

end.

