unit SearchInfoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ElPgCtl, ElXPThemedControl, ElCaption, DB, IBODataset,
  dxLayoutControl, cxControls, dxExEdtr, NavigatorFrameUnit, dxEdLib,
  dxCntner, dxEditor, dxDBELib, dxTL, dxDBCtrl, dxDBGrid, ElSplit,
  ExtCtrls, ElPanel, ElBtnCtl, ElPopBtn, dxDBTLCl, dxGrClms, DBActns,
  ActnList, IB_Components, IB_Events, ComCtrls, StdCtrls, ElCLabel, ElLabel, DateUtils;

type
  TfrmSearhUtils = class(TForm)
    ElFormCaption1: TElFormCaption;
    mainPage: TElPageControl;
    tabSearchInfo: TElTabSheet;
    tabConfig: TElTabSheet;
    pnlLeft: TElPanel;
    dxlcRightGroup_Root: TdxLayoutGroup;
    dxlcRight: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxDBGrid2: TdxDBGrid;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxlcRightItem1: TdxLayoutItem;
    dxlcRightItem3: TdxLayoutItem;
    NavigatorFrame1: TNavigatorFrame;
    dxDBMemo1: TdxDBMemo;
    dxlcRightItem4: TdxLayoutItem;
    dxDBEdit1: TdxDBEdit;
    dxlcRightItem2: TdxLayoutItem;
    dxlcRightGroup1: TdxLayoutGroup;
    dxDBGrid1OBJ_ID: TdxDBGridColumn;
    dxDBGrid1OBJ_NAME: TdxDBGridColumn;
    dxDBGrid2FIELD_ID: TdxDBGridColumn;
    dxDBGrid2FIELD_NAME: TdxDBGridColumn;
    dxDBGrid2FIELD_VISIBLE: TdxDBGridCheckColumn;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    acObjInsert: TDataSetInsert;
    acObjDelete: TDataSetDelete;
    acObjPost: TDataSetPost;
    acObjCancel: TDataSetCancel;
    acItemPost: TDataSetPost;
    acItemCancel: TDataSetCancel;
    dsSearchObj: TDataSource;
    qrySearchObj: TIBOQuery;
    dsSearchItem: TDataSource;
    qrySQLPrepare: TIBOQuery;
    qryDelete: TIBOQuery;
    qrySearchObjOBJ_ID: TIntegerField;
    qrySearchObjOBJ_NAME: TWideStringField;
    qrySearchObjOBJ_SQL: TWideStringField;
    qrySearchItem: TIBOQuery;
    qrySearchItemOBJ_ID: TIntegerField;
    qrySearchItemFIELD_ID: TWideStringField;
    qrySearchItemFIELD_NAME: TWideStringField;
    qrySearchItemFIELD_VISIBLE: TIntegerField;
    IB_Events1: TIB_Events;
    dxlcRightGroup3: TdxLayoutGroup;
    pnlDieukienTimkiem: TElPanel;
    dxgrpDieukien1Group_Root: TdxLayoutGroup;
    dxgrpDieukien1: TdxLayoutControl;
    dxObject: TdxPopupEdit;
    dxItem1: TdxPopupEdit;
    dxclItem: TdxLayoutItem;
    dxOp1: TdxImageEdit;
    dxlcOperation: TdxLayoutItem;
    dxExval1: TdxPopupEdit;
    dxlcExVal1: TdxLayoutItem;
    dxLikeVal1: TdxEdit;
    dxlcLikeVal1: TdxLayoutItem;
    dxLogOp1: TdxImageEdit;
    dxlcLogicOperation: TdxLayoutItem;
    dxlcObjectItem: TdxLayoutControl;
    dxDBGrid3: TdxDBGrid;
    dxDBGridColumn2: TdxDBGridColumn;
    ElPopupButton3: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxlcObjectList: TdxLayoutControl;
    dxDBGrid4: TdxDBGrid;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxlcObjectListItem1: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxlcObjectListItem2: TdxLayoutItem;
    dxlcObjectListGroup1: TdxLayoutGroup;
    qryInfo: TIBOQuery;
    dsInfo: TDataSource;
    ActionList2: TActionList;
    acTimmoi: TAction;
    dxgrpDieukien1Item2: TdxLayoutItem;
    dxgroupDK1: TdxLayoutGroup;
    dxgrpDieukien1Group1: TdxLayoutGroup;
    dxgrpDieukien1Group3: TdxLayoutGroup;
    dxgrpDieukien1Item1: TdxLayoutItem;
    dxItem2: TdxPopupEdit;
    dxgrpDieukien1Item3: TdxLayoutItem;
    dxLogOp2: TdxImageEdit;
    dxgrpDieukien1Item4: TdxLayoutItem;
    dxOp2: TdxImageEdit;
    dxlcExVal2: TdxLayoutItem;
    dxExVal2: TdxPopupEdit;
    dxlcLikeVal2: TdxLayoutItem;
    dxLikeVal2: TdxEdit;
    dxgroupDK2: TdxLayoutGroup;
    dxgrpDieukien1Group5: TdxLayoutGroup;
    dxgrpDieukien1Item7: TdxLayoutItem;
    dxItem3: TdxPopupEdit;
    dxgrpDieukien1Item8: TdxLayoutItem;
    dxLogOp3: TdxImageEdit;
    dxgrpDieukien1Item9: TdxLayoutItem;
    dxOp3: TdxImageEdit;
    dxlcExVal3: TdxLayoutItem;
    dxExVal3: TdxPopupEdit;
    dxlcLikeVal3: TdxLayoutItem;
    dxLikeVal3: TdxEdit;
    dxgroupDK3: TdxLayoutGroup;
    dxgrpDieukien1Group4: TdxLayoutGroup;
    dxgrpDieukien1Item12: TdxLayoutItem;
    dxItem4: TdxPopupEdit;
    dsd: TdxLayoutItem;
    dxLogOp4: TdxImageEdit;
    dxgrpDieukien1Item14: TdxLayoutItem;
    dxOp4: TdxImageEdit;
    dxlcExVal4: TdxLayoutItem;
    dxExVal4: TdxPopupEdit;
    dxlcLikeVal4: TdxLayoutItem;
    dxLikeVal4: TdxEdit;
    dxgroupDK4: TdxLayoutGroup;
    dxgrpDieukien1Group6: TdxLayoutGroup;
    dxgrpDieukien1Item17: TdxLayoutItem;
    dxItem5: TdxPopupEdit;
    dxlcExVal5: TdxLayoutItem;
    dxExVal5: TdxPopupEdit;
    dxlcLikeVal5: TdxLayoutItem;
    dxLikeVal5: TdxEdit;
    dxgroupDK5: TdxLayoutGroup;
    dxgrpDieukien1Group7: TdxLayoutGroup;
    dxgrpDieukien1Item18: TdxLayoutItem;
    dxOp5: TdxImageEdit;
    dxgrpDieukien1Group2: TdxLayoutGroup;
    dxgrpDieukien1Item13: TdxLayoutItem;
    Bevel1: TBevel;
    ElPopupButton7: TElPopupButton;
    dxgrpDieukien1Item19: TdxLayoutItem;
    ElPopupButton8: TElPopupButton;
    dxgrpDieukien1Item22: TdxLayoutItem;
    dxgrpDieukien1Group8: TdxLayoutGroup;
    acSetVisibleGroup: TAction;
    qryListItem: TIBOQuery;
    dsListItem: TDataSource;
    qryListItemOBJ_ID: TIntegerField;
    qryListItemFIELD_ID: TWideStringField;
    qryListItemFIELD_NAME: TWideStringField;
    qryListItemFIELD_VISIBLE: TIntegerField;
    acSetVisibleValue: TAction;
    qryListItemValue: TIBOQuery;
    qryListItemFIELD_TYPE: TIntegerField;
    qrySearchItemFIELD_TYPE: TIntegerField;
    dxlcListValue: TdxLayoutControl;
    dxDBGrid5: TdxDBGrid;
    ElPopupButton9: TElPopupButton;
    ElPopupButton10: TElPopupButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxDBGrid5ITEM_VALUE: TdxDBGridColumn;
    acThuchien: TAction;
    panelRight: TElPanel;
    ElPanel1: TElPanel;
    Image2: TImage;
    lblResult: TElLabel;
    lblMsg: TElLabel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxgridInfo: TdxDBGrid;
    dxLayoutControl3Item1: TdxLayoutItem;
    acTaoGrid: TAction;
    dsListItemValue: TDataSource;
    qrySearchItemFIELD_ORDER: TIntegerField;
    qryListItemFIELD_ORDER: TIntegerField;
    dxLayoutControl3Item2: TdxLayoutItem;
    aniFind: TAnimate;
    dxDBGrid3FIELD_ORDER: TdxDBGridColumn;
    dxDBGrid2FIELD_ORDER: TdxDBGridColumn;
    dxDBGrid5Column2: TdxDBGridColumn;
    qryListItemSQL_GET_VALUE: TWideStringField;
    qrySearchItemSQL_GET_VALUE: TWideStringField;
    dxDBMemo2: TdxDBMemo;
    dxLayoutControl2Item4: TdxLayoutItem;
    qrySearchItemFIELD_FOR_SEARCH: TIntegerField;
    dxDBGrid2FIELD_FOR_SEARCH: TdxDBGridCheckColumn;
    acXemChitiet: TAction;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    qrySearchObjSUBSYSTEM_ID: TSmallintField;
    ElSplitter1: TElSplitter;
    dxFunctionDetail: TdxDBImageEdit;
    dxlcRightItem5: TdxLayoutItem;
    dxlcRightGroup2: TdxLayoutGroup;
    qrySearchObjDETAIL_FUNCTION: TWideStringField;
    qrySearchObjKEY_FIELD: TWideStringField;
    dxDBEdit2: TdxDBEdit;
    dxlcRightItem6: TdxLayoutItem;
    dxlcRightGroup4: TdxLayoutGroup;
    dxDBGrid2FIELD_TYPE: TdxDBGridImageColumn;
    dxDateVal1: TdxDateEdit;
    dxlcDateVal1: TdxLayoutItem;
    dxDateVal2: TdxDateEdit;
    dxlcDateVal2: TdxLayoutItem;
    dxDateVal3: TdxDateEdit;
    dxlcDateVal3: TdxLayoutItem;
    dxDateVal4: TdxDateEdit;
    dxlcDateVal4: TdxLayoutItem;
    dxDateVal5: TdxDateEdit;
    dxlcDateVal5: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure acObjInsertExecute(Sender: TObject);
    procedure acObjDeleteExecute(Sender: TObject);
    procedure qrySearchObjBeforePost(DataSet: TDataSet);
    procedure qrySearchObjNewRecord(DataSet: TDataSet);
    function SQLPrepare(SQL_statement: WideString): Boolean;
    procedure IB_Events1EventAlert(Sender: TObject; AEventName: string;
      AEventCount: Integer);
    procedure dxDBGrid3DblClick(Sender: TObject);
    procedure dxDBGrid4DblClick(Sender: TObject);
    procedure dxObjectInitPopup(Sender: TObject);
    procedure dxObjectCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acTimmoiExecute(Sender: TObject);
    procedure acSetVisibleGroupExecute(Sender: TObject);
    procedure acSetVisibleValueExecute(Sender: TObject);
    procedure dxItem1InitPopup(Sender: TObject);
    procedure dxItem2InitPopup(Sender: TObject);
    procedure dxItem3InitPopup(Sender: TObject);
    procedure dxItem4InitPopup(Sender: TObject);
    procedure dxItem5InitPopup(Sender: TObject);
    procedure dxItem1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxItem2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxItem3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxItem4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxItem5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qrySearchItemAfterPost(DataSet: TDataSet);
    function GetExValueList(i: integer): boolean;
    procedure dxExval1InitPopup(Sender: TObject);
    procedure dxExval1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBGrid5DblClick(Sender: TObject);
    procedure dxExVal2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxExVal3CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxExVal4CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxExVal5CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxExVal2InitPopup(Sender: TObject);
    procedure dxExVal3InitPopup(Sender: TObject);
    procedure dxExVal4InitPopup(Sender: TObject);
    procedure dxExVal5InitPopup(Sender: TObject);
    procedure acThuchienExecute(Sender: TObject);
    procedure acTaoGridExecute(Sender: TObject);
    procedure dxgridInfoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid5Column2CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxExval1Change(Sender: TObject);
    procedure dxExVal2Change(Sender: TObject);
    procedure dxExVal3Change(Sender: TObject);
    procedure dxExVal4Change(Sender: TObject);
    procedure dxExVal5Change(Sender: TObject);
    procedure ExValSetting(i: integer; var Text: WideString);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure qryInfoError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure acXemChitietUpdate(Sender: TObject);
    procedure acXemChitietExecute(Sender: TObject);
    procedure qrySearchItemBeforePost(DataSet: TDataSet);
    procedure dxDateVal1Change(Sender: TObject);
    procedure dxDateVal2Change(Sender: TObject);
    procedure dxDateVal3Change(Sender: TObject);
    procedure dxDateVal4Change(Sender: TObject);
    procedure dxDateVal5Change(Sender: TObject);
  private
    { Private declarations }
    F_OBJECT_ID: Variant;
    PARAM_ID: array[1..5] of WIdeString;
    PARAM_VALUE: array[1..5] of Variant;
    PARAM_TYPE: array[1..5] of Integer;
  public

    { Public declarations }
    procedure Set_OBJECT_ID(AValue: Variant);
    property OBJECT_ID: Variant read F_OBJECT_ID write Set_OBJECT_ID;
  end;

var
  frmSearhUtils: TfrmSearhUtils;

implementation
uses SSP_Library, SSP_Menus, MainUnit, Math, MainDM, EmployeeListForm,
  DecisionDataModule, ContractDataModule, DeptListForm;
{$R *.dfm}

function TfrmSearhUtils.GetExValueList(i: integer): boolean;
var
  FROM_STR: WideString;
  p: integer;
begin
  result := true;
  try
    qryListItemvalue.SQL.Text := qryListItemSQL_GET_VALUE.AsString;
    qryListItemValue.Open;
  except
    result := false;
  end;
end;

procedure TfrmSearhUtils.Set_OBJECT_ID(AValue: Variant);
begin
  if F_OBJECT_ID <> AValue then
  begin
    F_OBJECT_ID := AValue;
    qryListItem.Close;
    qryListItem.ParamByName('OBJ_ID').value := F_OBJECT_ID;
    qryListItem.Open;
    acTimmoi.Execute;
  end;
end;

procedure TfrmSearhUtils.FormCreate(Sender: TObject);
begin
{
  dxOp1.Descriptions.Add('=');
  dxOp1.Descriptions.Add('<>');
  dxOp1.Descriptions.Add('<');
  dxOp1.Descriptions.Add('<=');
  dxOp1.Descriptions.Add('>');
  dxOp1.Descriptions.Add('>=');
  dxOp1.Descriptions.Add('tương tự');
  dxOp1.Descriptions.Add('trống');

  dxOp1.values.Add('=');
  dxOp1.Values.Add('<>');
  dxOp1.Values.Add('<');
  dxOp1.Values.Add('<=');
  dxOp1.Values.Add('>');
  dxOp1.Values.Add('>=');
  dxOp1.Values.Add('like');
  dxOp1.Values.Add('is null');

  dxOp2.Descriptions.Add('=');
  dxOp2.Descriptions.Add('<>');
  dxOp2.Descriptions.Add('<');
  dxOp2.Descriptions.Add('<=');
  dxOp2.Descriptions.Add('>');
  dxOp2.Descriptions.Add('>=');
  dxOp2.Descriptions.Add('tương tự');
  dxOp2.Descriptions.Add('trống');

  dxOp2.values.Add('=');
  dxOp2.Values.Add('<>');
  dxOp2.Values.Add('<');
  dxOp2.Values.Add('<=');
  dxOp2.Values.Add('>');
  dxOp2.Values.Add('>=');
  dxOp2.Values.Add('like');
  dxOp2.Values.Add('is null');

  dxOp3.Descriptions.Add('=');
  dxOp3.Descriptions.Add('<>');
  dxOp3.Descriptions.Add('<');
  dxOp3.Descriptions.Add('<=');
  dxOp3.Descriptions.Add('>');
  dxOp3.Descriptions.Add('>=');
  dxOp3.Descriptions.Add('tương tự');
  dxOp3.Descriptions.Add('trống');

  dxOp3.values.Add('=');
  dxOp3.Values.Add('<>');
  dxOp3.Values.Add('<');
  dxOp3.Values.Add('<=');
  dxOp3.Values.Add('>');
  dxOp3.Values.Add('>=');
  dxOp3.Values.Add('like');
  dxOp3.Values.Add('is null');

  dxOp4.Descriptions.Add('=');
  dxOp4.Descriptions.Add('<>');
  dxOp4.Descriptions.Add('<');
  dxOp4.Descriptions.Add('<=');
  dxOp4.Descriptions.Add('>');
  dxOp4.Descriptions.Add('>=');
  dxOp4.Descriptions.Add('tương tự');
  dxOp4.Descriptions.Add('trống');

  dxOp4.values.Add('=');
  dxOp4.Values.Add('<>');
  dxOp4.Values.Add('<');
  dxOp4.Values.Add('<=');
  dxOp4.Values.Add('>');
  dxOp4.Values.Add('>=');
  dxOp4.Values.Add('like');
  dxOp4.Values.Add('is null');

  dxOp5.Descriptions.Add('=');
  dxOp5.Descriptions.Add('<>');
  dxOp5.Descriptions.Add('<');
  dxOp5.Descriptions.Add('<=');
  dxOp5.Descriptions.Add('>');
  dxOp5.Descriptions.Add('>=');
  dxOp5.Descriptions.Add('tương tự');
  dxOp5.Descriptions.Add('trống');

  dxOp5.values.Add('=');
  dxOp5.Values.Add('<>');
  dxOp5.Values.Add('<');
  dxOp5.Values.Add('<=');
  dxOp5.Values.Add('>');
  dxOp5.Values.Add('>=');
  dxOp5.Values.Add('like');
  dxOp5.Values.Add('is null');
}
  dxFunctionDetail.Descriptions.Add(Utf8Decode('TT Nhân viên'));
  dxFunctionDetail.Values.Add('GET_EMPLOYEE');
  dxFunctionDetail.Descriptions.Add(Utf8Decode('TT Quyết định'));
  dxFunctionDetail.Values.Add('GET_DECISION');
  dxFunctionDetail.Descriptions.Add(Utf8Decode('TT TT Hợp đồng'));
  dxFunctionDetail.Values.Add('GET_CONTRACT');
  dxFunctionDetail.Descriptions.Add(Utf8Decode('TT Phòng ban'));
  dxFunctionDetail.Values.Add('GET_DEPARTMENT');

  ApplyOption(TControl(self));
  frmMain.bbListwindows.Items.AddObject(ElFormCaption1.Texts.Items[0].Caption,
    Self);

  qrySearchObj.Open;
  dxObject.Text := qrySearchObjOBJ_NAME.Value;
  OBJECT_ID := qrySearchObjOBJ_ID.Value;

  mainPage.ShowTabs := (sysConfig.User = 'smallfoot');
  mainPage.ActivePageIndex := 0;

  qrySearchItem.Open;
  IB_Events1.RegisterEvents;
  acTimmoi.Execute;

end;

procedure TfrmSearhUtils.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmMain.MsgChangeDataSource(dsSearchItem);
  dmMain.MsgChangeDataSource(dsSearchObj);
  qrySearchObj.CLose;
  qrySearchItem.Close;
  Action := caFree;
end;

procedure TfrmSearhUtils.FormDestroy(Sender: TObject);
begin
  with frmMain.bbListwindows.Items do
    Delete(IndexOfObject(Self));
  frmSearhUtils := nil;
end;

procedure TfrmSearhUtils.acObjInsertExecute(Sender: TObject);
begin
  qrySearchObj.Append;
end;

procedure TfrmSearhUtils.acObjDeleteExecute(Sender: TObject);
begin
  dmmain.DeleteExecute(qrySearchObj);
end;

procedure TfrmSearhUtils.qrySearchObjBeforePost(DataSet: TDataSet);
begin
  with qrySearchObj do
  begin
    Tag := 0;
    if FieldByName('OBJ_ID').IsNull then
    begin
      ShowMessageUnicode(19);
      FieldByName('OBJ_ID').FocusControl;
      Tag := 1;
      Abort;
    end
    else
      if FieldByName('OBJ_NAME').IsNull then
    begin
      ShowMessageUnicode(20);
      FieldByName('OBJ_NAME').FocusControl;
      Tag := 1;
      Abort;
    end
    else
      if FieldByName('OBJ_SQL').IsNull then
    begin
      ShowMessageUnicode(21);
      FieldByName('OBJ_SQL').FocusControl;
      Tag := 1;
      Abort;
    end
    else
      if SQLPrepare(VarToWideStr(FieldByName('OBJ_SQL').Value)) = false then
    begin
      FieldByName('OBJ_SQL').FocusControl;
      Tag := 1;
      Abort;
    end
  end;
end;

procedure TfrmSearhUtils.qrySearchObjNewRecord(DataSet: TDataSet);
begin
  qrySearchObjOBJ_ID.Value := qrySearchObj.RecordCount;
end;

function TfrmSearhUtils.SQLPrepare(SQL_statement: WideString): Boolean;
begin
  result := true;
  with qrySQLPrepare do
  begin
    if Active then Close;
    SQL.Text := SQL_statement;
    try
      Prepare;
      Open;
    except
      Close;
      ShowMessageUnicode(22);
      Result := false;
    end;
  end;
end;

procedure TfrmSearhUtils.IB_Events1EventAlert(Sender: TObject;
  AEventName: string; AEventCount: Integer);
var
  i: integer;
begin
  if qrySQLPrepare.Active then
  begin
    qrySearchItem.DisableControls;
    qrySearchItem.Close;
    //    qryDelete.ExecSQL;
    qrySearchItem.Open;
    qrySQLPrepare.Open;

    qrySearchItem.Last;
    while not qrySearchItem.Bof do
    begin
      if qrySQLPrepare.Fields.FindField(qrySearchItemFIELD_ID.AsString) = nil then
        qrySearchItem.Delete;
      qrySearchItem.Prior;
    end;

    qrySearchItem.EnableControls;
    for i := 0 to qrySQLPrepare.FieldCount - 1 do
    begin
      if not qrySearchItem.Locate('FIELD_ID', qrySQLPrepare.Fields[i].FieldName,
        []) then
      begin
        if not (qrySearchItem.State in [dsEdit, dsInsert]) then
          qrySearchItem.Insert;
        qrySearchItemOBJ_ID.value := qrySearchObjOBJ_ID.Value;
        qrySearchItemFIELD_ID.Value := qrySQLPrepare.Fields[i].FieldName;
        qrySearchItemFIELD_NAME.Value := qrySQLPrepare.Fields[i].FieldName;
        qrySearchItemFIELD_VISIBLE.Value := 1;
        qrySearchItemFIELD_ORDER.Value := i + 1;
        if (qrySQLPrepare.Fields[i] is TIntegerField) then
          qrySearchItemFIELD_TYPE.Value := 2
        else
          if (qrySQLPrepare.Fields[i] is TFloatField) then
          qrySearchItemFIELD_TYPE.Value := 3
        else
          if (qrySQLPrepare.Fields[i] is TWideStringField) then
          qrySearchItemFIELD_TYPE.Value := 4
        else
          if (qrySQLPrepare.Fields[i] is TDateField) then
          qrySearchItemFIELD_TYPE.Value := 0
        else
          if (qrySQLPrepare.Fields[i] is TTimeField) then
          qrySearchItemFIELD_TYPE.Value := 5
        else
          qrySearchItemFIELD_TYPE.Value := 4;
        qrySearchItem.Post;

      end
      else
      begin
        if not (qrySearchItem.State in [dsEdit, dsInsert]) then
          qrySearchItem.Edit;
        qrySearchItemFIELD_ORDER.Value := i + 1;
        if (qrySQLPrepare.Fields[i] is TIntegerField) then
          qrySearchItemFIELD_TYPE.Value := 2
        else
          if (qrySQLPrepare.Fields[i] is TFloatField) then
          qrySearchItemFIELD_TYPE.Value := 3
        else
          if (qrySQLPrepare.Fields[i] is TWideStringField) then
          qrySearchItemFIELD_TYPE.Value := 4
        else
          if (qrySQLPrepare.Fields[i] is TDateField) then
          qrySearchItemFIELD_TYPE.Value := 0
        else
          if (qrySQLPrepare.Fields[i] is TTimeField) then
          qrySearchItemFIELD_TYPE.Value := 5
        else
          qrySearchItemFIELD_TYPE.Value := 4;
        qrySearchItem.Post;


      end;
    end;
  end;
  qrySearchItem.Refresh;
end;

procedure TfrmSearhUtils.dxDBGrid3DblClick(Sender: TObject);
begin
  PopupProcess(Self, true, Sender);
end;

procedure TfrmSearhUtils.dxDBGrid4DblClick(Sender: TObject);
begin
  PopupProcess(Self, true, Sender);
end;

procedure TfrmSearhUtils.dxObjectInitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcObjectList', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxObjectCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := qrySearchObjOBJ_NAME.Value;
    OBJECT_ID := qrySearchObjOBJ_ID.Value;
  end;
end;

procedure TfrmSearhUtils.acTimmoiExecute(Sender: TObject);
var
  i: integer;
begin
  // reset control
  dxItem1.Text := '';
  dxItem2.Text := '';
  dxItem3.Text := '';
  dxItem4.Text := '';
  dxItem5.Text := '';
  dxItem1.Tag:=-1;
  dxItem2.Tag:=-1;
  dxItem3.Tag:=-1;
  dxItem4.Tag:=-1;
  dxItem5.Tag:=-1;

  acSetVisibleValue.Enabled := false;
  dxOp1.Text := '=';
  dxOp2.Text := '=';
  dxOp3.Text := '=';
  dxOp4.Text := '=';
  dxOp5.Text := '=';
  acSetVisibleValue.Enabled := true;
  acSetVisibleValue.Execute;

  dxExval1.Text := '';
  dxExval2.Text := '';
  dxExval3.Text := '';
  dxExval4.Text := '';
  dxExval5.Text := '';

  dxLikeVal1.Text := '';
  dxLikeVal2.Text := '';
  dxLikeVal3.Text := '';
  dxLikeVal4.Text := '';
  dxLikeVal5.Text := '';

  acSetVisibleGroup.Enabled := false;
  dxLogOp1.Text := '';
  dxLogOp2.Text := '';
  dxLogOp3.Text := '';
  dxLogOp4.Text := '';
  acSetVisibleGroup.Enabled := true;
  acSetVisibleGroup.Execute;

  //reset data
  for i := 1 to 5 do
  begin
    PARAM_ID[i] := '';
    PARAM_VALUE[i] := '';
  end;
end;

procedure TfrmSearhUtils.acSetVisibleGroupExecute(Sender: TObject);
begin
  dxgroupDK2.Visible := false;
  dxgroupDK3.Visible := false;
  dxgroupDK4.Visible := false;
  dxgroupDK5.Visible := false;
  if dxLogOp1.Text <> '' then
  begin
    dxgroupDK2.Visible := true;
    if dxLogOp2.Text <> '' then
    begin
      dxgroupDK3.Visible := true;
      if dxLogOp3.Text <> '' then
      begin
        dxgroupDK4.Visible := true;
        if dxLogOp4.Text <> '' then
          dxgroupDK5.Visible := true;
      end
    end
  end
end;

procedure TfrmSearhUtils.acSetVisibleValueExecute(Sender: TObject);
begin
  if dxItem1.Tag=0 then
  begin
    dxlcExVal1.Visible := false;
    dxlcLikeVal1.Visible := false;
    dxlcDateVal1.Visible:=true;
  end
  else
  if dxOp1.Text = 'like' then
  begin
    dxlcExVal1.Visible := false;
    dxlcLikeVal1.Visible := true;
    dxlcDateVal1.Visible:=false;
  end
  else
  if dxOp1.Text = 'is null' then
  begin
    dxlcExVal1.Visible := false;
    dxlcLikeVal1.Visible := false;
    dxlcDateVal1.Visible:=false;
  end
  else
  begin
    dxlcExVal1.Visible := true;
    dxlcLikeVal1.Visible := false;
    dxlcDateVal1.Visible:=false;
  end;

  if dxItem2.Tag=0 then
  begin
    dxlcExVal2.Visible := false;
    dxlcLikeVal2.Visible := false;
    dxlcDateVal2.Visible:=true;
  end
  else
  if dxOp2.Text = 'like' then
  begin
    dxlcExVal2.Visible := false;
    dxlcLikeVal2.Visible := true;
    dxlcDateVal2.Visible:=false;
  end
  else
    if dxOp2.Text = 'is null' then
  begin
    dxlcExVal2.Visible := false;
    dxlcLikeVal2.Visible := false;
    dxlcDateVal2.Visible:=false;
  end
  else
  begin
    dxlcExVal2.Visible := true;
    dxlcLikeVal2.Visible := false;
    dxlcDateVal2.Visible:=false;
  end;

  if dxItem3.Tag=0 then
  begin
    dxlcExVal3.Visible := false;
    dxlcLikeVal3.Visible := false;
    dxlcDateVal3.Visible:=true;
  end
  else
  if dxOp3.Text = 'like' then
  begin
    dxlcExVal3.Visible := false;
    dxlcLikeVal3.Visible := true;
    dxlcDateVal3.Visible:=false;
  end
  else
    if dxOp3.Text = 'is null' then
  begin
    dxlcExVal3.Visible := false;
    dxlcLikeVal3.Visible := false;
    dxlcDateVal3.Visible:=false;
  end
  else
  begin
    dxlcExVal3.Visible := true;
    dxlcLikeVal3.Visible := false;
    dxlcDateVal3.Visible:=false;
  end;

  if dxItem4.Tag=0 then
  begin
    dxlcExVal4.Visible := false;
    dxlcLikeVal4.Visible := false;
    dxlcDateVal4.Visible:=true;
  end
  else
  if dxOp4.Text = 'like' then
  begin
    dxlcExVal4.Visible := false;
    dxlcLikeVal4.Visible := true;
    dxlcDateVal4.Visible:=false;
  end
  else
    if dxOp4.Text = 'is null' then
  begin
    dxlcExVal4.Visible := false;
    dxlcLikeVal4.Visible := false;
    dxlcDateVal4.Visible:=false;
  end
  else
  begin
    dxlcExVal4.Visible := true;
    dxlcLikeVal4.Visible := false;
    dxlcDateVal4.Visible:=false;
  end;


  if dxItem5.Tag=0 then
  begin
    dxlcExVal5.Visible := false;
    dxlcLikeVal5.Visible := false;
    dxlcDateVal5.Visible:=true;
  end
  else
  if dxOp5.Text = 'like' then
  begin
    dxlcExVal5.Visible := false;
    dxlcLikeVal5.Visible := true;
    dxlcDateVal5.Visible:=false;
  end
  else
    if dxOp5.Text = 'is null' then
  begin
    dxlcExVal5.Visible := false;
    dxlcLikeVal5.Visible := false;
    dxlcDateVal5.Visible:=false;
  end
  else
  begin
    dxlcExVal5.Visible := true;
    dxlcLikeVal5.Visible := false;
    dxlcDateVal5.Visible:=false;
  end;
end;

procedure TfrmSearhUtils.dxItem1InitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcObjectItem', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxItem2InitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcObjectItem', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxItem3InitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcObjectItem', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxItem4InitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcObjectItem', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxItem5InitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcObjectItem', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxItem1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := qryListItemFIELD_NAME.Value;
    PARAM_ID[1] := qryListItemFIELD_ID.Value;
    PARAM_VALUE[1] := '';
    PARAM_TYPE[1] := qryListItemFIELD_TYPE.Value;
    dxExval1.Text := '';
    dxLikeVal1.Text := '';
    dxItem1.Tag:=qryListItemFIELD_TYPE.Value;
  end
end;

procedure TfrmSearhUtils.dxItem2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := qryListItemFIELD_NAME.Value;
    PARAM_ID[2] := qryListItemFIELD_ID.Value;
    PARAM_VALUE[2] := '';
    PARAM_TYPE[2] := qryListItemFIELD_TYPE.Value;
    dxExval2.Text := '';
    dxLikeVal2.Text := '';
    dxItem2.Tag:=qryListItemFIELD_TYPE.Value;
  end
end;

procedure TfrmSearhUtils.dxItem3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := qryListItemFIELD_NAME.Value;
    PARAM_ID[3] := qryListItemFIELD_ID.Value;
    PARAM_VALUE[3] := '';
    PARAM_TYPE[3] := qryListItemFIELD_TYPE.Value;
    dxExval3.Text := '';
    dxLikeVal3.Text := '';
    dxItem3.Tag:=qryListItemFIELD_TYPE.Value;
  end
end;

procedure TfrmSearhUtils.dxItem4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := qryListItemFIELD_NAME.Value;
    PARAM_ID[4] := qryListItemFIELD_ID.Value;
    PARAM_VALUE[4] := '';
    PARAM_TYPE[4] := qryListItemFIELD_TYPE.Value;
    dxExval4.Text := '';
    dxLikeVal4.Text := '';
    dxItem4.Tag:=qryListItemFIELD_TYPE.Value;
  end
end;

procedure TfrmSearhUtils.dxItem5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := qryListItemFIELD_NAME.Value;
    PARAM_ID[5] := qryListItemFIELD_ID.Value;
    PARAM_VALUE[5] := '';
    PARAM_TYPE[5] := qryListItemFIELD_TYPE.Value;
    dxExval5.Text := '';
    dxLikeVal5.Text := '';
    dxItem5.Tag:=qryListItemFIELD_TYPE.Value;
  end
end;

procedure TfrmSearhUtils.qrySearchItemAfterPost(DataSet: TDataSet);
begin
  if qryListItem.Active then
    qryListItem.Refresh;
end;

procedure TfrmSearhUtils.dxExval1InitPopup(Sender: TObject);
begin
  GetExValueList(1);
  InitPopupControl('dxlcListValue', self, Sender, 2);
end;

procedure TfrmSearhUtils.ExValSetting(i: integer; var Text: WideString);
begin
  begin
    if PARAM_TYPE[i] = 3 then //kieu ngay
    begin
      Text := DateToStr(TDateField(qryListItemvalue.Fields[0]).Value);
      PARAM_VALUE[i] := qryListItemValue.Fields[0].Value;
    end
    else
    begin
      Text := VarToWideStr(qryListItemvalue.Fields[0].Value);
      PARAM_VALUE[i] := qryListItemValue.Fields[0].Value;
    end;
  end;
end;

procedure TfrmSearhUtils.dxExval1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then ExValSetting(1, Text);
end;

procedure TfrmSearhUtils.dxDBGrid5DblClick(Sender: TObject);
begin
  PopupProcess(Self, true, Sender);
end;

procedure TfrmSearhUtils.dxExVal2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then ExValSetting(2, Text);
end;

procedure TfrmSearhUtils.dxExVal3CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then ExValSetting(3, Text);
end;

procedure TfrmSearhUtils.dxExVal4CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then ExValSetting(4, Text);
end;

procedure TfrmSearhUtils.dxExVal5CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then ExValSetting(5, Text);
end;

procedure TfrmSearhUtils.dxExVal2InitPopup(Sender: TObject);
begin
  GetExValueList(2);
  InitPopupControl('dxlcListValue', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxExVal3InitPopup(Sender: TObject);
begin
  GetExValueList(3);
  InitPopupControl('dxlcListValue', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxExVal4InitPopup(Sender: TObject);
begin
  GetExValueList(4);
  InitPopupControl('dxlcListValue', self, Sender, 2);
end;

procedure TfrmSearhUtils.dxExVal5InitPopup(Sender: TObject);
begin
  GetExValueList(5);
  InitPopupControl('dxlcListValue', self, Sender, 2);
end;

procedure TfrmSearhUtils.acThuchienExecute(Sender: TObject);
var
  i: integer;
  p_val: WideString;
  param_count: integer;
begin
  Screen.Cursor := crSQLWait;
  aniFind.Visible := true;
  aniFind.Play(0, aniFind.FrameCount, aniFind.FrameCount);

  qryInfo.DisableControls;
  qryInfo.Close;
  qryInfo.SQL.Text := qrySearchObjOBJ_SQL.Text;
  qryInfo.SQLWhere.Clear;
  param_count := 0;
  if (Length(PARAM_ID[1]) > 0) then
  begin
    if (dxOp1.Text <> 'like') and (dxOp1.Text <> 'is null') then
      qryInfo.SQLWhere.Text := ' WHERE (' + PARAM_ID[1] + ' ' + dxOp1.Text + ' :'
        + PARAM_ID[1] + ') '
    else
      if (dxOp1.Text = 'like') then
      qryInfo.SQLWhere.Text := ' WHERE (' + PARAM_ID[1] + ' like ''%''|| :' +
        PARAM_ID[1] + ' ||''%'')'
    else
      qryInfo.SQLWhere.Text := ' WHERE (' + PARAM_ID[1] + ' is null )';

    Inc(param_count);
  end;
  if dxgroupDK2.Visible and (Length(PARAM_ID[2]) > 0) then
  begin
    if (dxOp2.Text <> 'like') and (dxOp2.Text <> 'is null') then
      qryInfo.SQLWhere.Add(dxLogOp1.Text + '(' + PARAM_ID[2] + ' ' + dxOp2.Text +
        ' :' + PARAM_ID[2] + ')')
    else
      if (dxOp2.Text = 'like') then
      qryInfo.SQLWhere.Add(dxLogOp1.Text + '(' + PARAM_ID[2] + ' like ''%''|| :'
        + PARAM_ID[2] + ' ||''%'')')
    else
      qryInfo.SQLWhere.Add(dxLogOp1.Text + '(' + PARAM_ID[2] + ' is null)');
    Inc(param_count);
  end;
  if dxgroupDK3.Visible and (Length(PARAM_ID[3]) > 0) then
  begin
    if (dxOp3.Text <> 'like') and (dxOp3.Text <> 'is null') then
      qryInfo.SQLWhere.Add(dxLogOp2.Text + '(' + PARAM_ID[3] + ' ' + dxOp3.Text +
        ' :' + PARAM_ID[3] + ')')
    else
      if dxOp3.Text = 'like' then
      qryInfo.SQLWhere.Add(dxLogOp2.Text + '( ' + PARAM_ID[3] + ' like ''%''|| :'
        + PARAM_ID[3] + ' ||''%'')')
    else
      qryInfo.SQLWhere.Add(dxLogOp2.Text + '(' + PARAM_ID[3] + ' is null)');
    Inc(param_count);
  end;

  if dxgroupDK4.Visible and (Length(PARAM_ID[4]) > 0) then
  begin
    if (dxOp4.Text <> 'like') and (dxOp4.Text <> 'is null') then
      qryInfo.SQLWhere.Add(dxLogOp3.Text + '(' + PARAM_ID[4] + ' ' + dxOp4.Text +
        ' :' + PARAM_ID[4] + ')')
    else
      if dxOp4.Text = 'like' then
      qryInfo.SQLWhere.Add(dxLogOp3.Text + ' ' + PARAM_ID[4] + ' like ''%''|| :'
        + PARAM_ID[4] + ' ||''%'')')
    else
      qryInfo.SQLWhere.Add(dxLogOp3.Text + ' ' + PARAM_ID[4] + ' is null)');
    Inc(param_count);
  end;

  if dxgroupDK5.Visible and (Length(PARAM_ID[5]) > 0) then
  begin
    if (dxOp5.Text <> 'like') and (dxOp5.Text <> 'is null') then
      qryInfo.SQLWhere.Add(dxLogOp4.Text + '(' + PARAM_ID[5] + ' ' + dxOp5.Text +
        ' :' + PARAM_ID[5] + ')')
    else
      if dxOp5.Text = 'is null' then
      qryInfo.SQLWhere.Add(dxLogOp4.Text + '(' + PARAM_ID[5] + ' like ''%''|| :'
        + PARAM_ID[5] + ' ||''%'')')
    else
      qryInfo.SQLWhere.Add(dxLogOp4.Text + '(' + PARAM_ID[5] + ' is null)');
    Inc(param_count);
  end;

  try
    qryInfo.Prepare;
    if dxOp1.Text = 'like' then PARAM_VALUE[1] := dxLikeVal1.Text;
    if dxOp2.Text = 'like' then PARAM_VALUE[2] := dxLikeVal2.Text;
    if dxOp3.Text = 'like' then PARAM_VALUE[3] := dxLikeVal3.Text;
    if dxOp4.Text = 'like' then PARAM_VALUE[4] := dxLikeVal4.Text;
    if dxOp5.Text = 'like' then PARAM_VALUE[5] := dxLikeVal5.Text;

    if param_count > 0 then
    begin
      for i := 1 to param_count do
      begin
        if VarToWideStr(PARAM_VALUE[i]) = '' then
          qryInfo.ParamByName(PARAM_ID[i]).Clear
        else
        begin
          if PARAM_TYPE[i] = 0 then //kieu ngay
          begin
            qryInfo.ParamByName(PARAM_ID[i]).Value :=
              StrToDateDef(VarToStr(PARAM_VALUE[i]), Today);
          end
          else
          begin
            p_val := VarToWideStr(PARAM_VALUE[i]);
            qryInfo.ParamByName(PARAM_ID[i]).Value := p_val;
          end;
        end;
      end;
    end;
    qryInfo.Open;
  except

  end;
  acTaoGrid.Execute;

  if qryInfo.RecordCount = 0 then
    lblMsg.Caption := UTF8Decode('không tìm thấy kết quả nào')
  else
    lblMsg.Caption := UTF8Decode('tìm thấy ' + IntToStr(qryInfo.RecordCount) +
      ' kết quả.');
  aniFind.Stop;
  aniFind.Visible := false;
  Screen.Cursor := crDefault;
  qryInfo.EnableControls;
end;

procedure TfrmSearhUtils.acTaoGridExecute(Sender: TObject);
var
  i, w: integer;
  newCol: TdxDBTreeListColumn;
  newField, f: TField;
begin
  //khoi tao grid
  dxgridInfo.BeginUpdate;
  for i := dxgridInfo.ColumnCount - 1 downto 0 do
    dxgridInfo.Columns[i].Destroy;
  w := 0;

  dxgridInfo.OptionsView := dxgridInfo.OptionsView - [edgoAutoWidth];
  //
  if qrySearchItem.IsEmpty = false then
  begin
    qrySearchItem.First;
    while not qrySearchItem.Eof do
    begin
      qryInfo.FieldByName(qrySearchItemFIELD_ID.AsString).Tag :=
        qrySearchItemFIELD_TYPE.Value;
      qrySearchItem.Next;
    end;
  end;
  //
  for i := 0 to qryInfo.FieldCount - 1 do
  begin
    case qryInfo.Fields[i].Tag of
      0: newCol := dxgridInfo.CreateColumn(TdxDBGridDateColumn);
      1:
        begin
          newCol := dxgridInfo.CreateColumn(TdxDBGridCheckColumn);
          (newCol as TdxDBGridCheckColumn).ValueChecked := '1';
          (newCol as TdxDBGridCheckColumn).ValueUnchecked := '0';
        end;
      5: newCol := dxgridInfo.CreateColumn(TdxDBGridTimeColumn);
    else
      newCol := dxgridInfo.CreateColumn(TdxDBGridColumn);
    end;
    if qrySearchItem.Locate('FIELD_ID', qryInfo.Fields[i].FieldName, []) then
    begin
      newCol.Caption := qrySearchItemFIELD_NAME.Value;
      newCol.Visible := (qrySearchItemFIELD_VISIBLE.Value = 1);
    end;
    newCol.Name := 'dxgridInfo' + qryInfo.Fields[i].FieldName;
    newCol.FieldName := qryInfo.Fields[i].FieldName;

    newCOl.Width := Max(70, Min(qryInfo.Fields[i].Size, 150));
    w := w + newCOl.Width;
    newcoL.Alignment := taCenter;
    newcoL.HeaderAlignment := taCenter;
  end;
  if dxgridInfo.Width >= w then
    dxgridInfo.OptionsView := dxgridInfo.OptionsView + [edgoAutoWidth];
  dxgridInfo.EndUpdate;
  dxgridInfo.KeyField := qryInfo.Fields[0].FieldName;
end;

procedure TfrmSearhUtils.dxgridInfoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
  begin
    if TdxPopupMenuManager.Instance(true).ShowGridPopupMenu(TdxDBGrid(Sender))
      then Exit;
  end;
end;

procedure TfrmSearhUtils.dxDBGrid5Column2CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  AText := InttoStr(Anode.Index + 1);
end;

procedure TfrmSearhUtils.dxExval1Change(Sender: TObject);
begin
  PARAM_VALUE[1] := Variant(dxExval1.Text);
end;

procedure TfrmSearhUtils.dxExVal2Change(Sender: TObject);
begin
  PARAM_VALUE[2] := Variant(dxExval2.Text);
end;

procedure TfrmSearhUtils.dxExVal3Change(Sender: TObject);
begin
  PARAM_VALUE[3] := Variant(dxExval3.Text);
end;

procedure TfrmSearhUtils.dxExVal4Change(Sender: TObject);
begin
  PARAM_VALUE[4] := Variant(dxExval4.Text);
end;

procedure TfrmSearhUtils.dxExVal5Change(Sender: TObject);
begin
  PARAM_VALUE[5] := Variant(dxExval5.Text);
end;

procedure TfrmSearhUtils.FormDeactivate(Sender: TObject);
begin
  frmMain.ElFormCaption1.Texts.Items[2].Caption := '';
end;

procedure TfrmSearhUtils.FormActivate(Sender: TObject);
begin
  frmMain.ElFormCaption1.Texts.Items[2].Caption := ' - [' +
    ElFormCaption1.Texts.Items[0].Caption + ']';
end;

procedure TfrmSearhUtils.qryInfoError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  ShowMessageUnicode(23, ErrorMessage.Text);
end;

procedure TfrmSearhUtils.acXemChitietUpdate(Sender: TObject);
begin
  acXemchitiet.Enabled := not qryInfo.IsEmpty;
end;

procedure TfrmSearhUtils.acXemChitietExecute(Sender: TObject);
var function_detail: string;
  key_field: string;
begin
  function_detail := qrySearchObjDETAIL_FUNCTION.AsString;
  key_field := qrySearchObjKEY_FIELD.AsString;

  if (function_detail <> '') and
    Assigned(qryInfo.Fields.FindField(key_field)) then
  begin
    if function_detail = 'GET_EMPLOYEE' then
      ViewEmployeeInfo(qryInfo.FieldByName(key_field).Value, 'TT_CHUNG')
    else
      if function_detail = 'GET_DECISION' then
      DecisionDM.ViewDecision(qryInfo.FieldByName(key_field).Value)
    else
      if function_detail = 'GET_CONTRACT' then
      ContractDM.ViewContract(qryInfo.FieldByName(key_field).Value)
    else
      if function_detail = 'GET_DEPARTMENT' then
      ViewDepartment(qryInfo.FieldByName(key_field).Value)

  end;
end;

procedure TfrmSearhUtils.qrySearchItemBeforePost(DataSet: TDataSet);
begin
  if Length(trim(qrySearchItemSQL_GET_VALUE.AsString)) > 0 then
    if SQLPrepare(qrySearchItemSQL_GET_VALUE.AsString) = false then
      Abort;
end;

procedure TfrmSearhUtils.dxDateVal1Change(Sender: TObject);
begin
  PARAM_VALUE[1] := dxDateVal1.Date;
end;

procedure TfrmSearhUtils.dxDateVal2Change(Sender: TObject);
begin
  PARAM_VALUE[2] := dxDateVal2.Date;
end;

procedure TfrmSearhUtils.dxDateVal3Change(Sender: TObject);
begin
  PARAM_VALUE[3] := dxDateVal3.Date;
end;

procedure TfrmSearhUtils.dxDateVal4Change(Sender: TObject);
begin
  PARAM_VALUE[4] := dxDateVal4.Date;
end;

procedure TfrmSearhUtils.dxDateVal5Change(Sender: TObject);
begin
  PARAM_VALUE[5] := dxDateVal5.Date;
end;

end.

