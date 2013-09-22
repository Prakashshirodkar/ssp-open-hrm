unit DocumentEditorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, DocBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,ShellAPI,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, dxCntner, dxBar, RVScroll, RichView, RVEdit, DBRV,
  RVFontCombos, StdCtrls, Menus, RichViewActions, dxBarExtItems, RVStyle,
  {$IFDEF USE_GIFIMAGE}
  GifImage,
  {$ENDIF}
  {$IFDEF USE_PNGOBJECT}
  PngImage,
  {$ENDIF}
  PtblRV, CRVFData, RVTable, RVItem, CRVData, RVFuncs, RVUni,
  ActnList, DB, IBODataset, dxmdaset;

type
  TfrmDocumentEditor = class(TfrmDocBase)
    ActionList1: TActionList;
    rvActionInsertFile1: TrvActionInsertFile;
    rvActionExport1: TrvActionExport;
    rvActionSaveAs1: TrvActionSaveAs;
    rvActionPrintPreview1: TrvActionPrintPreview;
    rvActionPrint1: TrvActionPrint;
    rvActionQuickPrint1: TrvActionQuickPrint;
    rvActionPageSetup1: TrvActionPageSetup;
    rvActionCut1: TrvActionCut;
    rvActionCopy1: TrvActionCopy;
    rvActionPaste1: TrvActionPaste;
    rvActionPasteSpecial1: TrvActionPasteSpecial;
    rvActionUndo1: TrvActionUndo;
    rvActionRedo1: TrvActionRedo;
    rvActionSelectAll1: TrvActionSelectAll;
    rvActionFind1: TrvActionFind;
    rvActionFindNext1: TrvActionFindNext;
    rvActionReplace1: TrvActionReplace;
    rvActionFonts1: TrvActionFonts;
    rvActionFontEx1: TrvActionFontEx;
    rvActionFontBold1: TrvActionFontBold;
    rvActionFontItalic1: TrvActionFontItalic;
    rvActionFontUnderline1: TrvActionFontUnderline;
    rvActionFontStrikeout1: TrvActionFontStrikeout;
    rvActionFontGrow1: TrvActionFontGrow;
    rvActionFontShrink1: TrvActionFontShrink;
    rvActionFontGrowOnePoint1: TrvActionFontGrowOnePoint;
    rvActionFontShrinkOnePoint1: TrvActionFontShrinkOnePoint;
    rvActionFontAllCaps1: TrvActionFontAllCaps;
    rvActionFontOverline1: TrvActionFontOverline;
    rvActionFontColor1: TrvActionFontColor;
    rvActionFontBackColor1: TrvActionFontBackColor;
    rvActionParagraph1: TrvActionParagraph;
    rvActionParaBorder1: TrvActionParaBorder;
    rvActionWordWrap1: TrvActionWordWrap;
    rvActionAlignLeft1: TrvActionAlignLeft;
    rvActionAlignRight1: TrvActionAlignRight;
    rvActionAlignCenter1: TrvActionAlignCenter;
    rvActionAlignJustify1: TrvActionAlignJustify;
    rvActionIndentInc1: TrvActionIndentInc;
    rvActionIndentDec1: TrvActionIndentDec;
    rvActionParaColor1: TrvActionParaColor;
    rvActionLineSpacing1001: TrvActionLineSpacing100;
    rvActionLineSpacing1501: TrvActionLineSpacing150;
    rvActionLineSpacing2001: TrvActionLineSpacing200;
    rvActionParaList1: TrvActionParaList;
    rvActionParaBullets1: TrvActionParaBullets;
    rvActionParaNumbering1: TrvActionParaNumbering;
    rvActionTextRTL1: TrvActionTextRTL;
    rvActionTextLTR1: TrvActionTextLTR;
    rvActionParaRTL1: TrvActionParaRTL;
    rvActionParaLTR1: TrvActionParaLTR;
    rvActionInsertPicture1: TrvActionInsertPicture;
    rvActionInsertHLine1: TrvActionInsertHLine;
    rvActionInsertHyperlink1: TrvActionInsertHyperlink;
    rvActionInsertSymbol1: TrvActionInsertSymbol;
    rvActionColor1: TrvActionColor;
    rvActionBackground1: TrvActionBackground;
    rvActionFillColor1: TrvActionFillColor;
    rvActionInsertPageBreak1: TrvActionInsertPageBreak;
    rvActionRemovePageBreak1: TrvActionRemovePageBreak;
    rvActionItemProperties1: TrvActionItemProperties;
    rvActionInsertTable1: TrvActionInsertTable;
    rvActionTableInsertRowsBelow1: TrvActionTableInsertRowsBelow;
    rvActionTableInsertRowsAbove1: TrvActionTableInsertRowsAbove;
    rvActionTableInsertColLeft1: TrvActionTableInsertColLeft;
    rvActionTableInsertColRight1: TrvActionTableInsertColRight;
    rvActionTableDeleteRows1: TrvActionTableDeleteRows;
    rvActionTableDeleteCols1: TrvActionTableDeleteCols;
    rvActionTableDeleteTable1: TrvActionTableDeleteTable;
    rvActionTableMergeCells1: TrvActionTableMergeCells;
    rvActionTableSplitCells1: TrvActionTableSplitCells;
    rvActionTableSelectTable1: TrvActionTableSelectTable;
    rvActionTableSelectRows1: TrvActionTableSelectRows;
    rvActionTableSelectCols1: TrvActionTableSelectCols;
    rvActionTableSelectCell1: TrvActionTableSelectCell;
    rvActionTableCellVAlignTop1: TrvActionTableCellVAlignTop;
    rvActionTableCellVAlignMiddle1: TrvActionTableCellVAlignMiddle;
    rvActionTableCellVAlignBottom1: TrvActionTableCellVAlignBottom;
    rvActionTableCellVAlignDefault1: TrvActionTableCellVAlignDefault;
    rvActionTableCellLeftBorder1: TrvActionTableCellLeftBorder;
    rvActionTableCellRightBorder1: TrvActionTableCellRightBorder;
    rvActionTableCellTopBorder1: TrvActionTableCellTopBorder;
    rvActionTableCellBottomBorder1: TrvActionTableCellBottomBorder;
    rvActionTableCellAllBorders1: TrvActionTableCellAllBorders;
    rvActionTableCellNoBorders1: TrvActionTableCellNoBorders;
    rvActionTableProperties1: TrvActionTableProperties;
    rvActionTableGrid1: TrvActionTableGrid;
    RVStyle1: TRVStyle;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    RVAPopupMenu1: TRVAPopupMenu;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    cmbFontSize: TRVFontSizeComboBox;
    cmbFont: TRVFontComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dbrvMain: TDBRichViewEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxBarDockControl1: TdxBarDockControl;
    dsDocEditor: TDataSource;
    memDocEditor: TdxMemData;
    memDocEditorCONTENT: TBlobField;
    procedure WMScrollList(var msg: TMessage); message WM_USER_SCROLLLIST;
    procedure RichViewEdit1Jump(Sender: TObject; id: Integer);
    procedure RichViewEdit1ReadHyperlink(Sender: TCustomRichView;
      const Target, Extras: string; DocFormat: TRVLoadFormat; var StyleNo,
      ItemTag: Integer; var ItemName: string);
    procedure RichViewEdit1URLNeeded(Sender: TCustomRichView; id: Integer;
      var url: string);
    procedure cmbFontClick(Sender: TObject);
    procedure cmbKeyPress(Sender: TObject; var Key: Char);
    procedure RichViewEdit1CurTextStyleChanged(Sender: TObject);
    procedure cmbFontSizeClick(Sender: TObject);
    procedure ColorPickerShow(Sender: TObject);
    procedure ColorPickerHide(Sender: TObject);
    procedure dxdbedtRefFilePathButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    constructor Create(AOwner:TComponent;dataset:TDataset=nil;content_field_name:string='');overload;
  private
    { Private declarations }
    UpdatingCombos: Boolean;
  public
    { Public declarations }
    function GetContent:Variant;
  protected
    FContent_FieldName:string;
  end;

var
  frmDocumentEditor: TfrmDocumentEditor;

implementation

uses MainDM, SSP_Library;

{$R *.dfm}

constructor TfrmDocumentEditor.Create(AOwner:TComponent;dataset:TDataset;content_field_name:string);
begin
  inherited Create(AOwner);
  if Assigned(dataset) then
  begin
    dsDocEditor.DataSet:=dataset;
    FContent_FieldName:=content_field_name;
  end
  else
  begin
    dsDocEditor.DataSet:=memDocEditor;
    FContent_FieldName:='CONTENT';
  end;
  dbrvMain.DataField:=FContent_FieldName;
end;
function TfrmDocumentEditor.GetContent:Variant;
var blod_field:TField;
begin
  if Assigned(dsDocEditor) and
     Assigned(dsDocEditor.DataSet)
  then
  begin
    blod_field:=dsDocEditor.DataSet.FindField(FContent_FieldName);
    if Assigned(blod_field) then
    result:=blod_field.Value;
  end;
end;
procedure TfrmDocumentEditor.ColorPickerShow(Sender: TObject);
begin
  {$IFDEF RICHVIEWDEF6}
  if (Sender as TAction).ActionComponent is TToolButton then
    TdxBarButton(TAction(Sender).ActionComponent).Down := True;
  {$ELSE}
  if TrvActionCustomColor(Sender).CallerControl <> nil then
    TdxBarButton(TrvActionCustomColor(Sender).CallerControl).Down := True;
  {$ENDIF};
end;

procedure TfrmDocumentEditor.ColorPickerHide(Sender: TObject);
begin
  {$IFDEF RICHVIEWDEF6}
  if (Sender as TAction).ActionComponent is TdxBarButton then
    TdxBarButton(TAction(Sender).ActionComponent).Down := False;
  {$ELSE}
  if TrvActionCustomColor(Sender).CallerControl <> nil then
    TdxBarButton(TrvActionCustomColor(Sender).CallerControl).Down := False;
  {$ENDIF}
end;
// Hyperlink click

procedure TfrmDocumentEditor.RichViewEdit1Jump(Sender: TObject; id: Integer);
begin
  rvActionInsertHyperlink1.GoToLink(dbrvMain, id);
end;

// Importing hyperlink from RTF

procedure TfrmDocumentEditor.RichViewEdit1ReadHyperlink(Sender: TCustomRichView;
  const Target, Extras: string; DocFormat: TRVLoadFormat; var StyleNo,
  ItemTag: Integer; var ItemName: string);
var
  URL: string;
begin
  URL := rvActionInsertHyperlink1.EncodeTarget(Target);
  ItemTag := Integer(StrNew(PChar(URL)));
end;

// Exporting hyperlink to RTF and HTML

procedure TfrmDocumentEditor.RichViewEdit1URLNeeded(Sender: TCustomRichView;
  id: Integer; var url: string);
var
  RVData: TCustomRVFormattedData;
  ItemNo: Integer;
begin
  dbrvMain.GetJumpPointLocation(id, RVData, ItemNo);
  url := PChar(RVData.GetItemTag(ItemNo));
end;

{----------------------- Working with combo-boxes -----------------------------}

// Current font is changed. Updating the combo-boxes.

procedure TfrmDocumentEditor.RichViewEdit1CurTextStyleChanged(Sender: TObject);
var
  CurStyle: TFontInfo;
begin
  UpdatingCombos := True;
  try
    CurStyle := RVStyle1.TextStyles[dbrvMain.CurTextStyleNo];
    cmbFont.Text := CurStyle.FontName;
    cmbFont.OnClick(Sender);
    cmbFontSize.Text := IntToStr(CurStyle.Size);
  finally
    UpdatingCombos := False;
  end;
end;

// Applying the font name

procedure TfrmDocumentEditor.cmbFontClick(Sender: TObject);
var
  FontName: string;
begin
  if cmbFont.ItemIndex < 0 then
    FontName := cmbFont.Text
  else
    FontName := cmbFont.Items[cmbFont.ItemIndex];
  cmbFontSize.FontName := FontName;
  if UpdatingCombos then
    exit;
  if cmbFont.ItemIndex < 0 then
    cmbFont.ItemIndex := cmbFont.Items.IndexOf(FontName);
  if cmbFont.ItemIndex < 0 then
  begin
    Beep
  end
  else
    with rvActionFontEx1 do
    begin
      UserInterface := False;
      ValidProperties := [rvfimFontName];
      Font.Name := FontName;
      Execute;
      UserInterface := True;
    end;
  if Visible then
    dbrvMain.SetFocus;
end;

// Changing the font size

procedure TfrmDocumentEditor.cmbFontSizeClick(Sender: TObject);
var
  FontSize: Integer;
begin
  if UpdatingCombos then
    exit;
  try
    FontSize := StrToInt(cmbFontSize.Text);
    with rvActionFontEx1 do
    begin
      UserInterface := False;
      ValidProperties := [rvfimSize];
      Font.Size := FontSize;
      Execute;
      UserInterface := True;
    end;
  except
    Beep;
  end;
  if Visible then
    dbrvMain.SetFocus;
end;

procedure TfrmDocumentEditor.cmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    TComboBox(Sender).OnClick(Sender);
  end;
end;

// internal procedure

procedure ConvertRVToUnicode(RVData: TCustomRVData);
var
  i, r, c, StyleNo: Integer;
  table: TRVTableItemInfo;
begin
  for i := 0 to RVData.ItemCount - 1 do
  begin
    StyleNo := RVData.GetItemStyle(i);
    if StyleNo >= 0 then
    begin
      if not RVData.GetRVStyle.TextStyles[StyleNo].Unicode then
      begin
        RVData.SetItemText(i, RVU_GetRawUnicode(RVData.GetItemTextW(i)));
        Include(RVData.GetItem(i).ItemOptions, rvioUnicode);
      end;
    end
    else
      if RVData.GetItemStyle(i) = rvsTable then
      begin
        table := TRVTableItemInfo(RVData.GetItem(i));
        for r := 0 to table.Rows.Count - 1 do
          for c := 0 to table.Rows[r].Count - 1 do
            if table.Cells[r, c] <> nil then
              ConvertRVToUnicode(table.Cells[r, c].GetRVData);
      end;
  end;
end;
// main procedure

procedure ConvertToUnicode(rv: TCustomRichView);
var
  i: Integer;
begin
  ConvertRVToUnicode(rv.RVData);
  for i := 0 to rv.Style.TextStyles.Count - 1 do
    rv.Style.TextStyles[i].Unicode := True;
end;

procedure TfrmDocumentEditor.dxdbedtRefFilePathButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  with TIBODataset(dsDocEditor.DataSet) do
    case AbsoluteIndex of
      0:
        if OpenDialog1.Execute then
        begin
          //dxdbedtRefFilePath.Text := OpenDialog1.FileName;
          if RecordCount = 0 then
            Insert
          else
            Edit;
          TBlobField(FieldByName(FContent_FieldName)).LoadFromFile(OpenDialog1.FileName);
          Post;
        end;
      1:
        if RecordCount > 0 then
          Delete;
      2:
        begin
          TBlobField(FieldByName(FContent_FieldName)).SaveToFile(ExtractFilePath(Application.ExeName)
              + 'temp');
          ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)
            + 'temp'), nil, nil,
            SW_SHOWNORMAL);
        end;
    end;
end;

procedure TfrmDocumentEditor.WMScrollList(var msg: TMessage);
begin
  frameToolbar1.acDSCancel.Execute;
  if (dsDocEditor.Dataset.Active)and(not (dsDocEditor.Dataset is TdxMemData)) then
    dsDocEditor.dataset.Refresh;
end;

initialization
  {$IFDEF USE_GIFIMAGE}
  RegisterClass(TGifImage);
  TPicture.RegisterFileFormat('gif', 'Gif Image', TGifImage);
  RV_RegisterHTMLGraphicFormat(TGifImage);
  {$ENDIF}
  {$IFDEF USE_PNGOBJECT}
  RegisterClass(TPngObject);
  RV_RegisterHTMLGraphicFormat(TPngObject);
  {$ENDIF}
end.

