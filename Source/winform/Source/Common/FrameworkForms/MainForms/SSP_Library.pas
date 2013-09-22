unit SSP_Library;

interface

uses SysUtils, Windows, Messages, Forms, ExtCtrls, StdCtrls, Controls, Graphics,
  dxDBGrid, Classes, Registry, RichEdit, dxLayoutControl, dxFilter,
  dxGrFltr, dxDBTL, DB, IBODataset, ElPopBtn,
  dxTL, Variants, ELCaption,
  MsgDlgForm,
  IB_Session, IB_Components,
  ActnList, NumWords, NumW,
  ElStrUtils, dxEdLib, dxExEdtr, dxInspct, dxDBCtrl, dxBar,
  Unicode, Math, ToolbarFrame, StringConst,
  dxDBTLCl, dxGrClms, dbactns, dxDBELib;
//  ppReport,ppTypes,ppEndUsr;

type
  TdxInplacePopupEditCrack = class(TdxInplacePopupEdit);
  TActionType = (itInsert, itAppend, itInsertCopy, itAppendCopy,
    itSingleDeletion, itMultiDeletion, itSingleSelection, itMultiSelection);

const
  WM_USER_HIDE_BACKGROUND = WM_USER + 100;
  WM_USER_SHOW_BACKGROUND = WM_USER + 101;
  WM_USER_SET_CHILDCAPTION = WM_USER + 102;
  WM_USER_FILTER = WM_USER + 103;
  WM_USER_GROUP = WM_USER + 104;
  WM_USER_SYNC_LIST = WM_USER + 105;
  WM_USER_CLOSE_FORM = WM_USER + 106;
  WM_USER_COPY_NOTE = WM_USER + 107;
  WM_USER_REFRESH = WM_USER + 108;
  WM_USER_PERMISSION = WM_USER + 109;
  WM_USER_SHOWGRID = WM_USER + 110;
  WM_USER_SUMMARYFOOTER = WM_USER + 111;

  StSummaryItems: array[TdxSummaryType] of string = ('ƒê·ªÉ tr·ªëng', 'T·ªïng',
    'Nh·ªè nh·∫•t', 'L·ªõn nh·∫•t', 'ƒê·∫øm', 'Trung b√¨nh');
var
  OldKeyWord: WideString; // Tu khoa da search xong
  IsSearching: Boolean; //Neu dang search

procedure ShowMDIForm(FormClass: TFormClass; var Form; APermission: smallint =
  0);
procedure CloseMDIForm(f: TForm);
function ShowModalForm(FormClass: TFormClass; var Form): integer;
function ShowOnTopForm(FormClass: TFormClass; var Form): integer;
function ShowCustomGridPopupMenu(Sender: TdxDBGrid; BeTree: boolean; Button:
  TMouseButton): integer;

procedure SendMail(AMailAddress: string);
function GetAllChild(ATree: TdxDBTreeList; APNode: TdxTreeListNode;
  ASelectedCol: integer): string;
function GetGridValues(AGrid: TdxDBGrid; APNode: TdxDBGridNode; ASelectedCol:
  integer): string;
function ConvertIntToBit(var AInt: Integer): integer;
function NumInWords(CountryCode, LanguageCode: Integer; ANumber: Double):
  Widestring;
procedure ProcessGridEnterEvent(Sender: TObject; AInsertAct: TAction; APostAct:
  TAction = nil);

procedure SetCapitalCode(AComp: TComponent; ACharCase: smallint);
procedure SendMsgBroadcast(Msg: Cardinal; wParam, lParam: integer);

{dung cac ham de xu ly phim tren luoi}
function ProcessKeyDownOnGrid(Sender: TObject; var Key: Word; Shift:
  TShiftState; AInsAct: TBasicAction = nil; AForm: TForm = nil;
  APopup: boolean = false): boolean;
function OnPopUpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState):
  integer;
function OnClickExecute(Sender: TObject): integer;

function PopupProcess(AForm: TForm; APopup: boolean; Sender: TObject; var Key:
  Word; Shift: TShiftState): boolean; overload;
function PopupProcess(AForm: TForm; APopup: boolean; AGrid: TObject): boolean;
overload;
procedure CopyARow(ADataset: TDataset; AAppend: boolean = false);

procedure DrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: WideString; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);

procedure DecodeTag(ATag: integer; var AModuleID, APermission: smallint);
function ExtractPermission(ATag: integer): smallint;
function EncodeTag(AModuleID, APermission: smallint): integer;
function CheckValidNumber(S: WideString; R: WideString = '0'): WideString;

{-----------------------------------------------------------------------------
  Procedure: InitPopupControl
  Author:    quantd
  Date:      18-Dec-2003
  Arguments: APopOwner: TObject;  popupedit
             APopForm: TForm;  Form chua popupcontrol
             APopCtrlName: string;  ten popupcontrol
             ARefresh: boolean cho biet co refresh du lieu khi init hay khong
  Result:    None
-----------------------------------------------------------------------------}
procedure InitPopupControl(APopCtrlName: string;
  APopForm: TForm; var APopOwner: TObject; ASize: double = 2; AEditor: TControl
  = nil);
procedure SaveDataOnCloseForm(dataset: TIBODataSet; noClose: Boolean);
function BuildPersonName(FirstName, MiddleName, LastName: widestring):
  widestring;
overload;
function BuildPersonName(qrySource: TDataset; FirstFieldName, MiddleFieldName,
  LastFieldName: widestring): widestring; overload;
function ErrorInterBase(error: LongInt): string;
{ truong hop field cua nguon va dest giong nhau}
procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ASourceTextField: string; var Text: widestring); overload;
procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields: string); overload;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields, ASourceTextField: string; var Text: widestring);
overload;
procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields: string); overload;

procedure ImportFromFile(ADest: TDataset; ADestField, ADestContentTypeField:
  string);
procedure ExportToFile(ASource: TDataset; ASourceField, ASourceContentTypeField:
  string);
procedure ConnectDatabase(ADBName, AServer, AUsername,
  APassword, ARole: string; Aprotocol: TIB_Protocol; var AConn: TIB_Connection);
procedure ProcessGridOnMouseUpEvent(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer; APopupMenu:
  TdxBarPopupMenu = nil);
procedure ProcessGridOnDblClickEvent(AForm: TForm; AGrid: TObject; APopup:
  boolean; AEditAct: TAction);

procedure ProcessMouseMoveOnGrid(Sender: TObject; Shift: TShiftState; X, Y:
  Integer);
procedure UpdateOnPopup(ATree: TdxDBTreeList; AFrameButton: TframeToolbar;
  APopup: boolean); overload;
procedure UpdateOnPopup(AGrid: TdxDBGrid; AFrameButton: TframeToolbar; APopup:
  boolean); overload;
procedure UpdateButtonBarOnPopup(AFrameButton: TframeToolbar; APopup: boolean);
procedure BuildDayOfWeekList(ACol: TdxTreeListColumn);
procedure BuildMonthList(ACol: TdxTreeListColumn);
procedure BuildGenderList(ACol: TdxTreeListColumn);
procedure InitExportPlugIn(AModuleID: smallint; AIsList: boolean; AToolbar:
  TframeToolbar; ABeforePrint: TNotifyEvent);
procedure Select(var AGrid: TdxDBTreeList; AType: integer);
procedure BuildFilterList(AFilterComp: TdxImageEdit; ARecentList: boolean =
  false);

//mot so ham viet san de khoi tao control thuong dung
procedure InitMonthControl(dxImageEdit: TdxImageEdit); overload;
procedure InitMonthControl(dxImageEdit: TdxDBImageEdit); overload;
procedure InitEmpOptionControl(imOption: TdxImageEdit);
//chuc nang search tren grid - treelist
procedure SearchData(AGrid: TObject);
function SearchDataNext(AGrid: TObject; keyword: WideString): Boolean;
function SearchNextInGrid(AGrid: TdxDBGrid; keyword: WideString): Boolean;
function SearchBackInGrid(AGrid: TdxDBGrid; keyword: WideString): Boolean;
function SearchNextInTree(ATree: TdxDBTreeList; keyword: WideString): Boolean;
function SearchBackInTree(ATree: TdxDBTreeList; keyword: WideString): Boolean;
function SearchDataBack(AGrid: TObject; keyword: WideString): Boolean;

function FormalizeString(str: string): string;
function GenerateKey(str_format_org: WideString; index: integer): WideString;

function HasProperty(comp: TComponent; prop: string): boolean;
procedure SetProperty(comp: TComponent; {const } prop: string; value:
  WideString);
function GetProperty(comp: TComponent; prop: string): widestring;
//======================================================================
implementation
uses Dialogs, SSP_Menus, //tamkhoa SecurityLibrary,
  TypInfo, //tamkhoa LookupFrm,
  StrUtils, LookupFrm;

function HasProperty(comp: TComponent; prop: string): boolean;
begin
  result := (getPropInfo(comp.classInfo, prop) <> nil) and (comp.name <> '');
end;

procedure SetProperty(comp: TComponent; {const } prop: string; value:
  Widestring);
var
  ppi: PPropInfo;
begin
  if value <> '' then
  begin
    ppi := getPropInfo(comp.classInfo, prop);
    if ppi <> nil then SetWideStrProp(comp, ppi, value);
  end;
end;

function GetProperty(comp: TComponent; prop: string): widestring;
var
  ppi: PPropInfo;
begin
  ppi := getPropInfo(comp.classInfo, prop);
  if ppi <> nil then
    result := GetWideStrProp(comp, ppi)
  else
    result := '';
end;

function GenerateKey(str_format_org: WideString; index: integer): WideString;
var
  index_s, index_e, l, d, i: integer;
  str_format, sub_str, mid_str: string;
begin
  str_format := Utf8Encode(str_format_org);
  index_s := Pos('[', str_format);
  index_e := Pos(']', str_format);
  if (index_s > 0) and (index_e > index_s) then
  begin
    l := index_e - index_s;
    sub_str := IntToStr(index);
    mid_str := MidStr(str_format, index_s, l + 1);
    if (l = 2) and (str_format[index_s + 1] = '$') then
    begin
      result := StringReplace(str_format, mid_str, sub_str, [rfReplaceAll]);
    end
    else
      if (l > 2) then
    begin
      d := Length(mid_str) - Length(sub_str) - 2;
      if d > 0 then
      begin
        for i := 0 to d - 1 do
          sub_str := '0' + sub_str;
      end;
      result := StringReplace(str_format, mid_str, sub_str, [rfReplaceAll]);
    end
    else
      result := str_format;
  end
  else
    result := str_format;
  result := UTF8Decode(result);

end;

function FormalizeString(str: string): string;
begin
  result := StringReplace(str, ' ', '_', [rfReplaceAll]);
end;

procedure BuildFilterList(AFilterComp: TdxImageEdit; ARecentList: boolean);
var
  i: TfxTimeFilter;
begin
  with AFilterComp do
    for i := tfYesterday to tfOther do
    begin
      Values.Add(IntToStr(ord(i)));
      Descriptions.Add(Utf8Decode(FilterTexts[i]));
    end;
end;

procedure Select(var AGrid: TdxDBTreeList; AType: integer);
var
  DS: TDataSet;
  OldID: Variant;
  AColumn: TdxDbTreeListCheckColumn;
  i: integer;
  procedure EditRecord(ID: Variant);
  begin
    if DS.Locate(AGrid.KeyField, ID, []) then
    begin
      DS.Edit;
      case AType of
        2:
          if DS[AColumn.FieldName] = AColumn.ValueChecked then
            DS[AColumn.FieldName] := AColumn.ValueUnchecked
          else
            DS[AColumn.FieldName] := AColumn.ValueChecked;
        1: DS[AColumn.FieldName] := AColumn.ValueChecked;
        0: DS[AColumn.FieldName] := AColumn.ValueUnChecked;
      end;
      DS.Post;
    end;
  end;
  procedure ProcessChildren(N: TdxTreeListNode; Col: TdxDBTreeListCheckColumn);
  var
    I: Integer;
  begin
    for I := 0 to N.Count - 1 do
    begin
      EditRecord(TdxDBTreeListNode(N[I]).ID);
      ProcessChildren(N[I], Col);
    end;
  end;
  procedure ProcessParents(N: TdxTreeListNode; Col: TdxDBTreeListCheckColumn);
  var
    I: Integer;
  begin
    if N.Parent <> nil then
    begin
      for I := 0 to N.Parent.Count - 1 do
        if (N.Parent[I] <> N) then
          Break;
      if I < N.Parent.Count then
        repeat
          N := N.Parent;
          EditRecord(TdxDBTreeListNode(N).ID);
        until N.Parent = nil
      else
      begin
        EditRecord(TdxDBTreeListNode(N.Parent).ID);
        ProcessParents(N.Parent, Col);
      end;
    end;
  end;
begin
  if (AGrid <> nil) and (AGrid.Count > 0) then
  begin
    DS := AGrid.DataSource.DataSet;
    OldID := TdxDBTreeListNode(AGrid.FocusedNode).ID;
    AGrid.LockRefresh := True;
    AGrid.CloseEditor;
    DS.DisableControls;
    if (AGrid.FocusedColumn > 0) and
      AGrid.VisibleColumns[AGrid.FocusedColumn].InheritsFrom(TdxDBTreeListCheckColumn) then
    begin
      AColumn :=
        TdxDBTreeListCheckColumn(AGrid.VisibleColumns[AGrid.FocusedColumn]);
      try
        for i := 0 to AGrid.Count - 1 do
        begin
          EditRecord(TdxDBTreeListNode(AGrid.Items[i]).Id);
          ProcessChildren(AGrid.Items[i], AColumn);
          ProcessParents(AGrid.Items[i], AColumn);
        end;
      finally
        AGrid.LockRefresh := False;
        DS.EnableControls;
      end;
    end
    else
    try
      if DS.Locate(AGrid.KeyField, TdxDBTreeListNode(AGrid.FocusedNode).Id, [])
        then
      begin
        for i := AGrid.ColumnCount - 1 downto 1 do
        begin
          if AGrid.Columns[i].InheritsFrom(TdxDBTreeListCheckColumn) then
          begin
            AColumn := TdxDBTreeListCheckColumn(AGrid.Columns[i]);
            EditRecord(TdxDBTreeListNode(AGrid.FocusedNode).Id);
            ProcessChildren(AGrid.FocusedNode, AColumn);
          end;
        end;
      end;
    finally
      AGrid.LockRefresh := False;
      DS.EnableControls;
    end;
    AGrid.FindNodeByKeyValue(OldID).Focused := True;
    AGrid.ShowEditor;
  end;
end;

procedure InitExportPlugIn(AModuleID: smallint; AIsList: boolean; AToolbar:
  TframeToolbar; ABeforePrint: TNotifyEvent);
var
  //  modinfo, modinfo1: TModuleInfo;
  i, c: integer;
begin
  // TODO khoi tao danh sach report voi quy dinh gan ModuleID vao Tag
  // va module name vao menuitem
  // neu chi co mot item thi gan task thang vao nut lenh
  // neu co nhieu item thi tao menu va gan item default vao nut lenh nhu lenh mac dinh
  // gan su kien in vao OnPrint
  // gan su kien OnBeforePrint vao OnBeforePrint
{
  modinfo := curProfile.GetModuleInfo(AModuleID);
  if Assigned(modinfo) then
  begin
    c := modinfo.GetSubModuleCount;
    AToolbar.ElPopupMenu1.Items.Clear;
    AToolbar.ElPopupMenu2.Items.Clear;
    for i := 0 to c - 1 do
    begin
      modinfo1 := modinfo.GetSubModuleInfo(i);
      if Assigned(modinfo1) then
        if modinfo1.FTempName <> '' then
          AToolbar.AddExportItem(modinfo1.FModuleID, modinfo1.FModuleName);
    end;

    c := modinfo.GetGenModuleCount;
    for i := 0 to c - 1 do
    begin
      modinfo1 := modinfo.GetGenModuleInfo(i);
      if Assigned(modinfo1) then
        if CheckPermission(modinfo1.FPermission, ptMINSERT) then
          AToolbar.AddGenerateItem(modinfo1.FModuleID, modinfo1.FModuleName);
    end;

    AToolbar.ModuleID := AModuleID;
    AToolbar.OnBeforeExport := ABeforePrint;
    AToolbar.OnExport := dmMain.ExportReport;
    AToolbar.UpdateInterface;
  end;
}
end;

procedure BuildGenderList(ACol: TdxTreeListColumn);
var
  i: TfxGenderCode;
begin
  if Assigned(ACol) and ACol.InheritsFrom(TdxDBTreeListImageColumn) then
    with TdxDBTreeListImageColumn(ACol) do
      for i := gcMale to gcChildren do
      begin
        Values.Add(IntToStr(Ord(i)));
        Descriptions.Add(Utf8Decode(GenderTexts[i]));
      end;
  {          begin
        Values.Add('0');
        Values.Add('1');
        Values.Add('2');
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('N·ªØ')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Nam')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Tr·∫ª em')));
      end;
}
end;

procedure BuildMonthList(ACol: TdxTreeListColumn);
var
  i: TfxMonthCode;
begin
  if Assigned(ACol) and ACol.InheritsFrom(TdxDBTreeListImageColumn) then
    with TdxDBTreeListImageColumn(ACol) do
      for i := mcJan to mcDec do
      begin
        Values.Add(IntToStr(Ord(i)));
        Descriptions.Add(Utf8Decode(MonthTexts[i]));
      end;
  {          begin
        Values.Add('1');
        Values.Add('2');
        Values.Add('3');
        Values.Add('4');
        Values.Add('5');
        Values.Add('6');
        Values.Add('7');
        Values.Add('8');
        Values.Add('9');
        Values.Add('10');
        Values.Add('11');
        Values.Add('12');

              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng Gi√™ng')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng Hai')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng Ba')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng T∆∞')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng NƒÉm')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng S√°u')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng B·∫£y')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng T√°m')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng Ch√≠n')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng M∆∞·ªùi')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng M∆∞·ªùi m·ªôt')));
              Descriptions.Add(curProfile.GetLangText(Utf8Decode('Th√°ng m∆∞·ªùi hai')));
      end;
  }
end;

procedure BuildDayOfWeekList(ACol: TdxTreeListColumn);
var
  i: TfxDayCode;
begin
  if Assigned(ACol) and ACol.InheritsFrom(TdxDBTreeListImageColumn) then
    with TdxDBTreeListImageColumn(ACol) do
      for i := dcSun to dcSat do
      begin
        Values.Add(IntToStr(Ord(i)));
        Descriptions.Add(Utf8Decode(DayTexts[i]));
      end;
end;

procedure UpdateButtonBarOnPopup(AFrameButton: TframeToolbar; APopup: boolean);
var
  f: boolean;
begin
  if APopup then
  begin
    AFrameButton.dxLayoutControl1.BeginUpdate;
    AFrameButton.dxlctrlChoose.Visible := APopup;
    AFrameButton.dxlctrlHelp.Visible := not APopup;
    AFrameButton.dxlctrlDelete.Visible := not APopup;
    AFrameButton.dxlctrlViewLog.Visible := not APopup;
    AFrameButton.btnClose.Caption := Utf8Decode('&B·ªè qua');
    if AFrameButton.DataLinkCount = 1 then
    begin
      f := ((AFrameButton.ReadyDataset and 4) = 4);
      AFrameButton.dxlctrlInsert.Visible := f;
      AFrameButton.dxlctrlInsertCopy.Visible := f;
      AFrameButton.dxlctrlInsertChild.Visible := f and
        AFrameButton.dxlctrlInsertChild.Visible;
      AFrameButton.dxlctrlSave.Visible := f;
      AFrameButton.dxlctrlCancel.Visible := f;
    end;
    AFrameButton.dxLayoutControl1.EndUpdate;
  end
end;

procedure UpdateOnPopup(AGrid: TdxDBGrid; AFrameButton: TframeToolbar; APopup:
  boolean);
begin
  if APopup then
  begin
    if Assigned(AGrid) then
    begin
      AGrid.OptionsBehavior := AGrid.OptionsBehavior + [edgoAutoSearch] -
        [edgoImmediateEditor];
      AGrid.ParentFont := false;
    end;
    UpdateButtonBarOnPopup(AFrameButton, APopup);
  end;
end;

procedure UpdateOnPopup(ATree: TdxDBTreeList; AFrameButton: TframeToolbar;
  APopup:
  boolean);
begin
  if APopup then
  begin
    if Assigned(ATree) then
    begin
      ATree.OptionsBehavior := ATree.OptionsBehavior + [etoAutoSearch] -
        [etoImmediateEditor];
      ATree.ParentFont := false;
    end;
    UpdateButtonBarOnPopup(AFrameButton, APopup);
    // test thu giong nhu lookup
  end;
end;

procedure ProcessMouseMoveOnGrid(Sender: TObject; Shift: TShiftState; X, Y:
  Integer);
var
  col: TdxTreeListColumn;
begin
  if not (Assigned(Sender) and Sender.InheritsFrom(TCustomdxTreeListControl))
    then Exit;
  col := TCustomdxTreeListControl(Sender).GetHeaderColumnAt(X, Y);
  if Assigned(col) then
  begin
    if Assigned(col.HeaderGlyph) then
      TCustomdxTreeListControl(Sender).Hint :=
        CreateUnicodeHintString(col.Caption)
    else
      TCustomdxTreeListControl(Sender).Hint := '';
  end;
end;

procedure ProcessGridOnDblClickEvent(AForm: TForm; AGrid: TObject; APopup:
  boolean; AEditAct: TAction);
begin
  if not PopupProcess(AForm, APopup, AGrid) then
    if Assigned(AEditAct) then
      AEditAct.Execute;
end;

procedure ProcessGridOnMouseUpEvent(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer; APopupMenu:
  TdxBarPopupMenu = nil);
var
  ret: smallint;
begin
  ret := 2;
  if (Sender is TdxDBGrid) then
    ret := ShowCustomGridPopupMenu(TdxDBGrid(Sender), false, Button)
  else
    if (Sender is TdxTreeList) or (Sender is TdxDBTreeList) then
    ret := ShowCustomGridPopupMenu(TdxDBGrid(Sender), true, Button);
  if (ret = 2) and Assigned(APopupMenu) then
    APopupMenu.PopupFromCursorPos;
end;

procedure SaveDataOnCloseForm(dataset: TIBODataSet; noClose: Boolean);
begin
  with dataset do
  begin
    if state in [dsEdit, dsInsert] then
    begin
      {      if MessageDlg('Bπn c„ muËn l≠u m…u tin hi÷n hµnh tr≠Ìc khi Æ„ng danh mÙc ?', mtWarning, [mbYes, mbNo], 0) = mrYes then
              Post
            else
      }
      Cancel;
    end;
    if not noClose then
      Close;
    //    if IB_Transaction.Tag = 0 then
    //      IB_Transaction.CommitRetaining;
  end;
end;
{-----------------------------------------------------------------------------
  function: ErrorInterBase
  Author:    ndhinh
  Date:      13-Nov-2001
  Arguments: error : LongInt
  Result:    string
-----------------------------------------------------------------------------}

function ErrorInterBase(error: LongInt): string;
var
  stError: string;
begin
  case error of
    335544472: stError := 'Username ho∆c password sai!';
    335544375: stError := 'C¨ sÎ d˜ li÷u ch≠a sΩn sµng!';
    335544344: stError := 'C¨ sÎ d˜ li™u kh´ng t◊m th y!';
    335544665: stError := 'M∑ sË nµy Æ∑ tÂn tπi, NhÀp lπi!';
    335544466: stError := 'L≠u d˜ li÷u kh´ng thµnh c´ng!'
  else
    stError := 'LÁi ' + IntToStr(error);
  end;
  result := stError;
end;

function BuildPersonName(FirstName, MiddleName, LastName: widestring):
  widestring; overload;
begin
  if FirstName <> '' then
    Result := FirstName + ' ';
  if MiddleName <> '' then
    Result := Result + MiddleName + ' ';
  if LastName <> '' then
    Result := Result + LastName;
end;

function BuildPersonName(qrySource: TDataset; FirstFieldName, MiddleFieldName,
  LastFieldName: widestring): widestring; overload;
begin
  Result :=
    BuildPersonName(VarToWideStr(qrySource.FieldByName(FirstFieldName).Value),
    VarToWideStr(qrySource.FieldByName(MiddleFieldName).Value),
    VarToWideStr(qrySource.FieldByName(LastFieldName).Value));
end;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields, ASourceTextField: string; var Text: widestring);
begin
  if Accept then
  begin
    if ASource.IsEmpty then exit;
    OnPopupCloseUp(Accept, ASource, ADest, ASourceFields, ADestFields);
    Text := VarToWideStr(ASource.FieldByName(ASourceTextField).Value);
  end;
end;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ADestFields: string);
var
  srclist, destlist: TStringList;
  i, count: smallint;
  stream_s, stream_d: TStream;
begin
  if Accept then
  begin
    srclist := TStringList.Create;
    srclist.Delimiter := ';';
    srclist.DelimitedText := ASourceFields;

    destlist := TStringList.Create;
    destlist.Delimiter := ';';
    destlist.DelimitedText := ADestFields;
    count := Min(srclist.Count, destlist.Count) - 1;
    ADest.Edit;
    for i := 0 to count do
    begin
      if ASource.FieldByname(srclist.Strings[i]).DataType =
        ADest.FieldByName(destlist.Strings[i]).DataType then
      begin
        if ADest.FieldByName(destlist.Strings[i]).IsBlob then
        begin
          stream_s :=
            ASource.CreateBlobStream(ASource.FieldByName(srclist.Strings[i]),
            bmRead);
          stream_d :=
            ADest.CreateBlobStream(ADest.FieldByName(destlist.Strings[i]),
            bmReadWrite);
          stream_d.CopyFrom(stream_s, stream_s.Size);
        end
        else
          ADest.FieldByName(destlist.Strings[i]).Value :=
            ASource.FieldByname(srclist.Strings[i]).Value;
      end;
    end;
  end;
end;
{truong hop dest va source giong nhau}

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields, ASourceTextField: string; var Text: widestring);
var
  ADestFields: string;
begin
  ADestFields := ASourceFields;
  OnPopupCloseUp(Accept, ASource, ADest, ASourceFields, ADestFields,
    ASourceTextField, Text);
end;

procedure OnPopupCloseUp(Accept: boolean; ASource, ADest: TDataset;
  ASourceFields: string);
var
  ADestFields: string;
begin
  ADestFields := ASourceFields;
  OnPopupCloseUp(Accept, ASource, ADest, ASourceFields, ADestFields);
end;

procedure ImportFromFile(ADest: TDataset; ADestField, AdestContentTypeField:
  string);
var
  opendlg: TOpenDialog;
begin
  opendlg := TOpenDialog.Create(nil);
  try
    opendlg.Filter :=
      'Word Document *.doc|*.doc|Excel Files *.xsl|*.xsl|Text Files *.txt|*.txt|HTML File *.html|*.html';
    if opendlg.Execute then
      if ADest.Active then
      begin
        Adest.Edit;
        (Adest.FieldByName(ADestField) as
          TBlobField).LoadFromFile(opendlg.FileName);
        ADest.FieldByName(AdestContentTypeField).Value :=
          ExtractFileName(opendlg.FileName);
      end;
  finally
    opendlg.Free;
  end;
end;

procedure ExportToFile(ASource: TDataset; ASourceField, ASourceContentTypeField:
  string);
var
  savedlg: TSaveDialog;
  ext: string;
begin
  savedlg := TSaveDialog.Create(nil);
  try
    if ASource.Active then
    begin
      ext :=
        ExtractFileExt(VarToWideStr(ASource.FieldByName(ASourceContentTypeField).Value));
      savedlg.Filter := '*' + ext + '|*' + ext;
      savedlg.DefaultExt := ext;
      savedlg.FileName :=
        VarToWideStr(ASource.FieldByName(ASourceContentTypeField).Value);
      if savedlg.Execute then
        (ASource.FieldByName(ASourceField) as
          TBlobField).SaveToFile(savedlg.FileName);
    end;
  finally
    savedlg.Free;
  end;
end;

procedure ConnectDatabase(ADBName, AServer, AUsername,
  APassword, ARole: string; Aprotocol: TIB_Protocol; var AConn: TIB_Connection);
begin
  if Aconn.Connected then
    Aconn.Close;
  Aconn.DatabaseName := ADBName;
  Aconn.Server := AServer;
  if AServer <> '' then
    Aconn.Protocol := cpTCP_IP
  else
    Aconn.Protocol := cpLocal;
  Aconn.Username := AUsername;
  Aconn.Password := APassword;
  AConn.LoginSQLRole := ARole;
  try
    Aconn.Connect;
  except
    raise;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: ShowMDIForm
  Author:    ndhinh
  Date:      18-Apr-2002
  Arguments: FormClass: TFormClass; var Form
  Result:    None
-----------------------------------------------------------------------------}

function CheckValidNumber(S: WideString; R: WideString = '0'): WideString;
var
  temp: double;
  ErrorCode: integer;
begin
  Val(S, temp, ErrorCode);
  if ErrorCode <> 0 then
    Result := R
  else
    Result := S;
end;

procedure ShowMDIForm(FormClass: TFormClass; var Form; APermission: smallint);
begin

  if not Assigned(TForm(Form)) then
  begin
    Application.CreateForm(FormClass, Form);
    SendMessage(Application.MainForm.Handle, WM_USER_HIDE_BACKGROUND, 1,
      LongInt(Form));
    TForm(Form).Tag := APermission;
    TForm(Form).WindowState := wsMaximized;
    TForm(Form).Show;
  end
  else
  begin
    if TForm(Form).WindowState = wsMinimized then
      TForm(Form).WindowState := wsMaximized
    else
      TForm(Form).BringToFront;
    SendMessage(Application.MainForm.Handle, WM_USER_HIDE_BACKGROUND, 0, 0);
  end;
end;
{-----------------------------------------------------------------------------
  Procedure: ShowModalForm
  Author:    tdquan
  Date:      09-May-2002
  Arguments: FormClass: TFormClass; var Form
  Result:    None
-----------------------------------------------------------------------------}

function ShowModalForm(FormClass: TFormClass; var Form): integer;
begin
  Application.CreateForm(FormClass, Form);
  with TForm(Form) do
  try
    Result := ShowModal;
  finally
    Free;
  end;
end;
function ShowOnTopForm(FormClass: TFormClass; var Form): integer;
begin
  Application.CreateForm(FormClass, Form);
  with TForm(Form) do
  try
    Show;
  finally
  end;
end;

function ShowCustomGridPopupMenu(Sender: TdxDBGrid; BeTree: boolean; Button:
  TMouseButton): integer;
begin
  if Button <> mbRight then
  begin
    result := 0;
    Exit;
  end;
  if TdxPopupMenuManager.Instance(not
    BeTree).ShowGridPopupMenu(TdxDBGrid(Sender)) then
  begin
    result := 1;
    Exit;
  end
  else
    result := 2;
end;

procedure SendKey(Key: Word);
begin
  keybd_event(Key, 0, 0, 0);
  keybd_event(Key, 0, KEYEVENTF_KEYUP, 0);
end;

procedure SendMail(AMailAddress: string);
begin
  //
end;

function GetAllChild(ATree: TdxDBTreeList; APNode: TdxTreeListNode;
  ASelectedCol: integer): string;
var
  ii, VCount: integer;
begin
  Result := '';
  if (Atree <> nil) and (APNode <> nil)
    and (ASelectedCol >= 0) and (ASelectedCol < ATree.ColumnCount) then
    with ATree do
    begin
      Result :=
        QuotedStr(UTF8Encode(VarToWideStr(APNode.Values[ASelectedCol])));
      VCount := APNode.Count - 1;
      for ii := 0 to VCount do
        Result := Result + ',' + GetAllChild(ATree, APNode.Items[ii],
          ASelectedCol);
    end;
end;

function ConvertIntToBit(var AInt: Integer): integer;
var
  exp, q, r: integer;
begin
  q := AInt;
  exp := 1;
  Result := 0;
  while q > 0 do
  begin
    r := q mod 10;
    if (r <> 0) and (r <> 1) then
    begin
      Result := 71; //1000111
      AInt := 1000000;
      break;
    end;
    q := q div 10;
    Result := Result + r * exp;
    exp := exp * 2;
  end;
end;

function GetGridValues(AGrid: TdxDBGrid; APNode: TdxDBGridNode; ASelectedCol:
  integer): string;
var
  ii: integer;
begin
  Result := '';
  if APNode <> nil then
  begin
    if APNode.HasChildren then
      for ii := 0 to APNode.Count - 1 do
      begin
        if APNode.Items[ii].HasChildren then
          Result := Result + GetGridValues(nil, APNode.Items[ii] as
            TdxDBGridNode, ASelectedCol)
        else
          Result := Result + VarToStr(APNode.Items[ii].Values[ASelectedCol]);
      end
    else
      Result := Result + VarToStr(APNode.Values[ASelectedCol]);
  end
  else
    if AGrid <> nil then
  begin
    for ii := 0 to AGrid.Count - 1 do
    begin
      if AGrid.Items[ii].HasChildren then
        Result := Result + GetGridValues(nil, AGrid.Items[ii] as
          TdxDBGridNode, ASelectedCol)
      else
        Result := Result + VarToStr(AGrid.Items[ii].Values[ASelectedCol]);
    end;
  end;
end;

procedure CloseMDIForm(f: TForm);
begin
  SendMessage(Application.MainForm.Handle, WM_USER_SHOW_BACKGROUND, 0,
    LongInt(f));
end;

function NumInWords(CountryCode, LanguageCode: Integer; ANumber: Double):
  Widestring;
var
  str: widestring;
  l: integer;
begin
  InWords.SelectLocale(CountryCode, LanguageCode);
  if LanguageCode = LANG_VIETNAMESE then
    Result := Utf8Decode(InWords.EMoney(ANumber, false))
  else
    Result := InWords.EMoney(ANumber, false);
  str := WideUpperCase(WideExtractStr(Result, 0, 1));
  l := WideStrLen(PWideChar(Result));
  Result := str + WideExtractStr(Result, 2, l - 1);
end;

function ProcessKeyDownOnGrid(Sender: TObject; var Key: Word; Shift:
  TShiftState; AInsAct: TBasicAction = nil; AForm: TForm = nil; APopup: boolean
  = false):
  boolean;
var
  obj: TCustomdxTreeListControl;
  col: TdxDBTreeListColumn;
  treegrid: TCustomdxDBTreeListControl;
  EditPos: TCharRange;
  AGrid: TdxDBGrid;
  ATree: TdxDBTreeList;
begin
  Result := false;
  if Sender.InheritsFrom(TCustomdxTreeListControl) then
    obj := (Sender as TCustomdxTreeListControl)
  else
    Exit;
  if (obj.Columns[obj.FocusedColumn] is TdxDBTreeListTimeColumn) then
    exit;

  Result := PopupProcess(AForm, APopup, Sender, Key, Shift);
  if Result then
    Exit;

  if ((Key = VK_F8) or ((Key = 70) and (ssCtrl in Shift))) then
    SearchData(obj)
  else
    if Key = VK_F3 then
    SearchDataNext(obj, OldKeyWord)
  else
    if Key = VK_F4 then
    SearchDataBack(obj, OldKeyWord)
  else
    if Key = VK_F5 then
  begin
    if Sender is TdxDBGrid then
    begin
      AGrid := (Sender as TdxDBGrid);
      if Assigned(AGrid.DataSource) and
        Assigned(AGrid.DataSource.Dataset) and
        (AGrid.DataSource.Dataset is TIBOQuery) then
        if (AGrid.DataSource.Dataset as TIBOQuery).Active then
          (AGrid.DataSource.Dataset as TIBOQuery).Refresh
    end
    else
      if Sender is TdxDBTreeList then
    begin
      ATree := (Sender as TdxDBTreeList);
      if Assigned(ATree.DataSource) and
        Assigned(ATree.DataSource.Dataset) and
        (ATree.DataSource.Dataset is TIBOQuery) then
        if (ATree.DataSource.Dataset as TIBOQuery).Active then
          (ATree.DataSource.Dataset as TIBOQuery).Refresh
    end
  end
  else

    if (aoEditing in obj.Options) then
  begin
    if Key = VK_RETURN then
    begin
      if obj.FocusedColumn = (obj.VisibleColumnCount - 1) then
        if obj.FocusedNode = obj.Items[obj.Count - 1] then
          if Assigned(AInsAct) then
          begin
            {append}
            AInsAct.Tag := Ord(itAppend);
            Key := 0;
            AInsAct.Execute;
            obj.FocusedColumn := 0;
            obj.ShowEditor;
          end;
      if (Key <> 0) then
      begin
        if (obj.State <> tsEditing) then
        begin
          obj.ShowEditor;
          if (obj.State = tsEditing) then
            Key := 0;
        end;
      end;
      Exit;
    end;
    if (Key = VK_INSERT) and (ssAlt in Shift) then
    begin
      if Assigned(AInsAct) then
      begin
        if (ssCtrl in Shift) then
          AInsAct.Tag := Ord(itAppendCopy)
        else
          AInsAct.Tag := Ord(itInsertCopy);
        Key := 0;
        AInsAct.Execute;
        obj.FocusedColumn := 0;
        obj.ShowEditor;
        AInsAct.Tag := Ord(itInsertCopy);
      end;
      Exit;
    end;
  end;

  if obj.State = tsEditing then
  begin
    if Key = VK_LEFT then
    begin
      SendMessage(obj.InplaceEditor.Handle, EM_EXGETSEL, 0,
        LongInt(@EditPos));
      if ((EditPos.cpMin = 0) and (EditPos.cpMax = 0)) then
      begin
        obj.CloseEditor;
        keybd_event(VK_LEFT, 0, 0, 0);
        keybd_event(VK_LEFT, 0, KEYEVENTF_KEYUP, 0);
      end;
      Exit;
    end;
    if Key = VK_RIGHT then
    begin
      SendMessage(obj.InplaceEditor.Handle, EM_EXGETSEL, 0,
        LongInt(@EditPos));
      if ((EditPos.cpMin = Length(obj.InplaceEditor.GetEditingText)) and
        (EditPos.cpMax = Length(obj.InplaceEditor.GetEditingText))) then
      begin
        obj.CloseEditor;
        keybd_event(VK_RIGHT, 0, 0, 0);
        keybd_event(VK_RIGHT, 0, KEYEVENTF_KEYUP, 0);
      end;
      Exit;
    end
  end
  else
  begin
    if (obj.FocusedNode <> nil) then
    begin
      if Key = VK_RIGHT then
      begin
        if (obj.FocusedColumn = (obj.VisibleColumnCount - 1)) then
          if not obj.FocusedNode.Expanded then
          begin
            obj.FocusedNode.Expand(false);
            Key := 0;
            Exit;
          end;
      end;
      if Key = VK_LEFT then
      begin
        if (obj.FocusedColumn = 0) then
          if obj.FocusedNode.Expanded then
            obj.FocusedNode.Collapse(false)
          else
          begin
            obj.GotoPrev(true);
            Key := 0;
            Exit;
          end;
      end;
    end
    else
  end;
end;

procedure SearchData(AGrid: TObject);
begin
  Lookup.SearchGrid(AGrid);
end;

function SearchDataNext(AGrid: TObject; keyword: WideString): Boolean;
begin
  Result := False;
  IsSearching := True;
  if (AGrid.ClassName = 'TdxDBGrid') then
  begin
    (AGrid as TdxDBGrid).DataSource.DataSet.DisableControls;
    Result := SearchNextInGrid(AGrid as TdxDBGrid, keyword);
    (AGrid as TdxDBGrid).DataSource.DataSet.EnableControls;
  end
  else
    if (AGrid.ClassName = 'TdxDBTreeList') then
  begin
    (AGrid as TdxDBTreeList).DataSource.DataSet.DisableControls;
    Result := SearchNextInTree(AGrid as TdxDBTreeList, keyword);
    (AGrid as TdxDBTreeList).DataSource.DataSet.EnableControls;
  end;
  IsSearching := False;
end;

function SearchNextInGrid(AGrid: TdxDBGrid; keyword: WideString): Boolean;
var
  str, substr: WideString;
begin
  Result := false;
  substr := WideLowerCase(keyword);
  AGrid.GotoNext(True);
  while not AGrid.IsEOF do
  begin
    if not AGrid.FocusedField.IsNull then
    begin
      {if (AGrid.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, AGrid.FocusedField.Value))
      else
        str:= WideLowerCase(AGrid.FocusedField.Value);}
      str := WideLowerCase(AGrid.GetDisplayValue(AGrid.FocusedNode,
        AGrid.FocusedAbsoluteIndex));

      if Pos(substr, str) > 0 then
      begin
        Result := true;
        Break;
      end;
    end;
    AGrid.GotoNext(True);
  end;
end;

function SearchBackInGrid(AGrid: TdxDBGrid; keyword: WideString): Boolean;
var
  str, substr: WideString;
begin
  Result := false;
  substr := WideLowerCase(keyword);
  AGrid.GotoPrev(True);
  while not AGrid.IsBOF do
  begin
    if not AGrid.FocusedField.IsNull then
    begin
      {if (AGrid.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, AGrid.FocusedField.Value))
      else
        str:= WideLowerCase(AGrid.FocusedField.Value);}
      str := WideLowerCase(AGrid.GetDisplayValue(AGrid.FocusedNode,
        AGrid.FocusedAbsoluteIndex));
      if Pos(substr, str) > 0 then
      begin
        Result := true;
        Break;
      end;
    end;
    AGrid.GotoPrev(True);
  end;
end;

function SearchNextInTree(ATree: TdxDBTreeList; keyword: WideString): Boolean;
var
  str, substr: WideString;
begin
  Result := false;
  ATree.GotoNext(True);
  substr := WideLowerCase(keyword);
  while not ATree.IsEOF do
  begin
    if not ATree.FocusedField.IsNull then
    begin
      {if (ATree.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, ATree.FocusedField.Value))
      else
        str:= WideLowerCase(ATree.FocusedField.Value);}
      str := WideLowerCase(ATree.GetDisplayValue(ATree.FocusedNode,
        ATree.FocusedAbsoluteIndex));

      if Pos(substr, str) > 0 then
      begin
        Result := true;
        Break;
      end;
    end;
    ATree.GotoNext(True);
  end;
end;

function SearchBackInTree(ATree: TdxDBTreeList; keyword: WideString): Boolean;
var
  str, substr: WideString;
begin
  Result := false;
  ATree.GotoPrev(True);
  substr := WideLowerCase(keyword);
  while not ATree.IsBOF do
  begin
    if not ATree.FocusedField.IsNull then
    begin
      {if (ATree.FocusedField is TDateField) then
        str:= WideLowerCase(FormatDateTime(NGAYTHANG_FORMAT, ATree.FocusedField.Value))
      else
        str:= WideLowerCase(ATree.FocusedField.Value);}
      str := WideLowerCase(ATree.GetDisplayValue(ATree.FocusedNode,
        ATree.FocusedAbsoluteIndex));
      if Pos(substr, str) > 0 then
      begin
        Result := true;
        Break;
      end;
    end;
    ATree.GotoPrev(True);
  end;
end;

function SearchDataBack(AGrid: TObject; keyword: WideString): Boolean;
begin
  Result := false;
  IsSearching := True;

  if (AGrid.ClassName = 'TdxDBGrid') then
  begin
    (AGrid as TdxDBGrid).DataSource.DataSet.DisableControls;
    Result := SearchBackInGrid(AGrid as TdxDBGrid, keyword);
    (AGrid as TdxDBGrid).DataSource.DataSet.EnableControls;
  end
  else
    if (AGrid.ClassName = 'TdxDBTreeList') then
  begin
    (AGrid as TdxDBTreeList).DataSource.DataSet.DisableControls;
    Result := SearchBackInTree(AGrid as TdxDBTreeList, keyword);
    (AGrid as TdxDBTreeList).DataSource.DataSet.EnableControls;
  end;

  IsSearching := False;
end;
//============================================

procedure SetCapitalCode(AComp: TComponent; ACharCase: smallint);
var
  ppi: PPropInfo;
  i: integer;
begin
  if not Assigned(AComp) then
    Exit;
  if AComp.Tag = 1 then
  begin
    ppi := getPropInfo(TComponent(AComp).classInfo, 'CharCase');
    if Assigned(ppi) and (ppi^.PropType^.Kind = tkEnumeration) then
    begin
      case ACharcase of
        1: SetEnumProp(AComp, ppi, 'ecLowerCase');
        2: SetEnumProp(AComp, ppi, 'ecNormal');
        3: SetEnumProp(AComp, ppi, 'ecUpperCase');
      end;
    end;
  end;
  if AComp.ComponentCount > 0 then
  begin
    for i := 0 to AComp.ComponentCount - 1 do
      SetCapitalCode(AComp.Components[i], ACharCase);
  end;
end;

procedure InitPopupControl(APopCtrlName: string;
  APopForm: TForm; var APopOwner: TObject; ASize: double; AEditor: TControl);
var
  ppi: PPropInfo;
  AControl: TControl;
begin
  if not (Assigned(APopOwner) or APopOwner.InheritsFrom(TControl) or
    Assigned(APopForm)) then
    Exit;
  ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupControl');
  if Assigned(ppi) and (ppi^.PropType^.Kind = tkClass) then
  begin
    AControl := TControl(GetOrdProp(APopOwner, ppi));
    if not Assigned(AControl) then
    begin
      AControl := TControl(APopForm.FindComponent(APopCtrlName));
      SetOrdProp(APopOwner, ppi, Integer(AControl));
      ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupAutoSize');
      if Assigned(ppi) then
        SetOrdProp(APopOwner, ppi, Integer(False));
      ppi := getPropInfo(TComponent(APopOwner).classInfo,
        'PopupFormBorderStyle');
      if Assigned(ppi) then
        SetEnumProp(APopOwner, ppi, 'pbsSysPanel');

      ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupWidth');
      if Assigned(ppi) then
        SetOrdProp(APopOwner, ppi, 200 + Floor(100 * Asize));

      ppi := getPropInfo(TComponent(APopOwner).classInfo, 'PopupHeight');
      if Assigned(ppi) then
        SetOrdProp(APopOwner, ppi, 200 + Floor(50 * Asize));

      if Assigned(AEditor) then
        if AEditor.InheritsFrom(TCustomdxTreeListControl) then
        begin
          if Assigned(TCustomdxTreeListControl(AEditor).InplaceEditor) then
          begin
            TCustomdxTreeListControl(AEditor).CloseEditor;
            TCustomdxTreeListControl(AEditor).ShowEditor;
          end;
        end
        else
          if AEditor.InheritsFrom(TCustomdxInspector) then
          if Assigned(TCustomdxInspector(AEditor).InplaceEditor) then
          begin
            TCustomdxInspector(AEditor).HideEditor;
            TCustomdxInspector(AEditor).ShowEditor;
          end;
    end;
  end;
end;

procedure SetChildCaption();
begin
  SendMessage(Application.MainForm.Handle, WM_USER_SET_CHILDCAPTION, 0, 0);
end;

procedure ProcessGridEnterEvent(Sender: TObject; AInsertAct: TAction; APostAct:
  TAction);
var
  master_source: TDataSource;
begin
  if Assigned(APostAct) then
    APostAct.Execute;
  if not Assigned(Sender) then
    Exit;
  if not Assigned(AInsertAct) then
    Exit;
  //NXHop modified and notified
  // xu li truong hop Master chua co record nao
  if (AInsertAct is TDataSetInsert) then
    if Assigned((AInsertAct as TDataSetInsert).DataSource) and
      Assigned((AInsertAct as TDataSetInsert).DataSource.DataSet) and
      Assigned((AInsertAct as TDataSetInsert).DataSource.DataSet.DataSource)
        then
    begin
      master_source := (AInsertAct as
        TDataSetInsert).DataSource.DataSet.DataSource;
      if master_source.DataSet.RecordCount <= 0 then exit;
    end;

  if TCustomdxDBTreeListControl(Sender).Count = 0 then
  begin
    if Sender is TdxDBTreeList then
      if ([etoCanInsert, etoCanNavigation] <= TdxDBTreeList(Sender).OptionsDB)
        then
      begin
        if not ((AInsertAct as TDataSetInsert).DataSource.State in [dsEdit,
          dsInsert]) then
          AInsertAct.Execute;
      end;
    if Sender is TdxDBGrid then
      if ([edgoCanInsert, edgoCanNavigation] <= TdxDBGrid(Sender).OptionsDB)
        then
      begin
        if not ((AInsertAct as TDataSetInsert).DataSource.State in [dsEdit,
          dsInsert]) then
          AInsertAct.Execute;
      end;
  end;
end;

procedure SendMsgBroadcast(Msg: Cardinal; wParam, lParam: integer);
var
  i: integer;
begin
  for i := 0 to Screen.FormCount - 1 do
    SendMessage(Screen.Forms[i].Handle, msg, wParam, lParam);
end;
{ ham nay chi goi 1 lan khi moi khoi tao menu, chua khoi tao quyen }

function PopupProcess(AForm: TForm; APopup: boolean; Sender: TObject; var Key:
  Word; Shift: TShiftState): boolean;
var
  ret: integer;
begin
  Result := false;
  if APopup then
  begin
    ret := OnPopUpKeyDown(Sender, Key, Shift);
    if ret = 2 then
      Result := true;
    if Assigned(AForm) then
    begin
      if ret = 1 then
        AForm.ModalResult := mrOK;
      if ret = -1 then
        AForm.ModalResult := mrCancel;
      Result := true;
    end;
  end;
end;

function PopupProcess(AForm: TForm; APopup: boolean; AGrid:
  TObject): boolean;
var
  ret: integer;
begin
  Result := false;
  if APopup then
  begin
    ret := OnClickExecute(AGrid);
    if ret = 2 then
      Result := true
    else
      if ret = 1 then
      if Assigned(AForm) then
      begin
        AForm.ModalResult := mrOK;
        Result := true;
      end;
  end;
end;

function OnPopUpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState): integer;
begin
  Result := 0;
  if ((Key in [VK_UP, VK_DOWN]) and (ssAlt in Shift)) or
    ((Key = VK_F4) and not (ssAlt in Shift)) or (Key = VK_ESCAPE) then
  begin
    result := -1;
    if (GetParentForm(Sender as TCustomdxDBTreeListControl) is TdxPopupEditForm)
      then
    begin
      (GetParentForm(Sender as TCustomdxDBTreeListControl) as
        TdxPopupEditForm).ClosePopup(False);
      result := 2;
    end;
  end;
  if Key = VK_RETURN then
    if not ((Sender as TCustomdxDBTreeListControl).DataSource.DataSet.State in
      [dsEdit, dsInsert]) then
    begin
      result := 1;
      if (GetParentForm(Sender as TCustomdxDBTreeListControl) is
        TdxPopupEditForm) then
      begin
        (GetParentForm(Sender as TCustomdxDBTreeListControl) as
          TdxPopupEditForm).ClosePopup(True);
        Key := 0;
        result := 2;
      end;
    end;
end;

function OnClickExecute(Sender: TObject): integer;
begin
  Result := 0;
  with (Sender as TCustomdxDBTreeListControl).DataSource.DataSet do
  begin
    if (not (State in [dsEdit, dsInsert])) and ((Sender as
      TCustomdxDBTreeListControl).FocusedNode <> nil) then
    begin
      Result := 1;
      if (GetParentForm((Sender as TCustomdxDBTreeListControl)) is
        TdxPopupEditForm) then
      begin
        TdxPopupEditForm(GetParentForm((Sender as
          TCustomdxDBTreeListControl))).ClosePopup(true);
        Result := 2;
      end;
    end;
  end;
end;

procedure CopyARow(ADataset: TDataset; AAppend: boolean);
var
  varCopyData: Variant;
  i: Integer;
begin
  if not Assigned(ADataset) then
    Exit;
  with TIBODataset(ADataSet) do
  begin
    varCopyData := VarArrayCreate([0, FieldCount - 1], varVariant);
    for i := 0 to FieldCount - 1 do
      varCopyData[i] := FieldByName(Fields[i].FieldName).Value;
    if AAppend then
      Append
    else
      Insert;
    for i := 0 to FieldCount - 1 do
      if Fields[i].IsNull then
        FieldByName(Fields[i].FieldName).Value := VarCopyData[i];
  end;
end;

procedure DecodeTag(ATag: integer; var AModuleID, APermission: smallint);
begin
  AModuleID := ATag shr 16;
  APermission := ATag and $FFFF;
end;

function EncodeTag(AModuleID, APermission: smallint): integer;
begin
  Result := AModuleID;
  Result := Result shl 16;
  Result := Result + APermission;
end;

function ExtractPermission(ATag: integer): smallint;
begin
  Result := ATag and $FFFF;
end;

procedure DrawSummaryFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: WideString; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
var
  ppi: PPropInfo;
begin
  try
    if AColumn.InheritsFrom(TdxDBTreeListColumn) then
    begin
      ppi :=
        getPropInfo(TComponent(TdxDBTreeListColumn(AColumn).Field).classInfo,
        'DisplayFormat');
      if Assigned(ppi) then
        TdxDBTreeListColumn(AColumn).SummaryFooterFormat :=
          GetStrProp(TdxDBTreeListColumn(AColumn).Field, ppi);
    end;
  except
  end
end;

procedure InitEmpOptionControl(imOption: TdxImageEdit);
begin
  imOption.Descriptions.Add(Utf8Decode('ƒêang l√†m vi·ªác'));
  imOption.Descriptions.Add(Utf8Decode('ƒê√£ th√¥i vi·ªác'));
  imOption.Descriptions.Add(Utf8Decode('T·∫•t c·∫£'));

  imOption.Values.Add('0');
  imOption.Values.Add('1');
  imOption.Values.Add('2');
end;

procedure InitMonthControl(dxImageEdit: TdxImageEdit);
begin
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 1'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 2'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 3'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 4'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 5'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 6'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 7'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 8'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 9'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 10'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 11'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 12'));

  dxImageEdit.Values.Add('1');
  dxImageEdit.Values.Add('2');
  dxImageEdit.Values.Add('3');
  dxImageEdit.Values.Add('4');
  dxImageEdit.Values.Add('5');
  dxImageEdit.Values.Add('6');
  dxImageEdit.Values.Add('7');
  dxImageEdit.Values.Add('8');
  dxImageEdit.Values.Add('9');
  dxImageEdit.Values.Add('10');
  dxImageEdit.Values.Add('11');
  dxImageEdit.Values.Add('12');

end;

procedure InitMonthControl(dxImageEdit: TdxDBImageEdit);
begin
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 1'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 2'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 3'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 4'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 5'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 6'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 7'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 8'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 9'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 10'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 11'));
  dxImageEdit.Descriptions.Add(Utf8Decode('Th√°ng 12'));

  dxImageEdit.Values.Add('1');
  dxImageEdit.Values.Add('2');
  dxImageEdit.Values.Add('3');
  dxImageEdit.Values.Add('4');
  dxImageEdit.Values.Add('5');
  dxImageEdit.Values.Add('6');
  dxImageEdit.Values.Add('7');
  dxImageEdit.Values.Add('8');
  dxImageEdit.Values.Add('9');
  dxImageEdit.Values.Add('10');
  dxImageEdit.Values.Add('11');
  dxImageEdit.Values.Add('12');

end;

end.

