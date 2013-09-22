unit DeptListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBTL, DB, IBODataset, dxEdLib, dxDBELib, dxEditor, dxdbtrel,
  dxorgchr, dxdborgc, IB_Components, IB_Events, dxDBTLCl, ElPanel, ElSplit,
  ExtCtrls;

type
  TfrmDeptList = class(TfrmEditBase)
    dxtlDeptList: TdxDBTreeList;
    dsDeptList: TDataSource;
    qryDeptList: TIBOQuery;
    qryDeptListDEPT_TYPE_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NAME: TWideStringField;
    qryDeptListFOUNDED_DATE: TDateField;
    qryDeptListENDED_DATE: TDateField;
    qryDeptListORDER_RIGHT: TSmallintField;
    qryDeptListLEGAL_RIGHT: TSmallintField;
    qryDeptListDEPT_LOGO: TBlobField;
    qryDeptListIMG_TYPE: TWideStringField;
    qryDeptListDEPT_ADDRESS: TWideStringField;
    qryDeptListDEPT_PHONE: TWideStringField;
    qryDeptListDEPT_EMAIL: TWideStringField;
    qryDeptListDEPT_WEBSITE: TWideStringField;
    qryDeptListDEPT_FAX: TWideStringField;
    qryDeptListDEPT_NOTE: TWideStringField;
    dxtlDeptListDEPT_NAME: TdxDBTreeListColumn;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxDBPopupEdit2: TdxDBPopupEdit;
    qryDeptListDEPT_TYPE_NAME: TWideStringField;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    qryDeptListITEM_COLOR: TIntegerField;
    IB_Events1: TIB_Events;
    dxtlDeptListENDED_DATE: TdxDBTreeListDateColumn;
    mainPanel: TPanel;
    dxlcMainItem17: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    panelDetail: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    qryCheck: TIBOQuery;
    qryCheckCOUNT: TIntegerField;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxDBEdit7: TdxDBEdit;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxDBEdit8: TdxDBEdit;
    qryDeptListMASO_THUE: TWideStringField;
    qryDeptListDEPT_NO: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure OnBeforeInsertChild(Sender: TObject);
    procedure OnBeforeInsert(Sender: TObject);
    procedure qryDeptListNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBPopupEdit2InitPopup(Sender: TObject);
    procedure dxDBPopupEdit2CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure qryDeptListP_DEPT_NAMEChange(Sender: TField);
    procedure qryDeptListDEPT_TYPE_NAMEChange(Sender: TField);
    procedure IB_Events1EventAlert(Sender: TObject; AEventName: string;
      AEventCount: Integer);
    procedure dxtlDeptListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure qryDeptListDEPT_NAMEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    FParentDept, FParentDeptName: Variant;

  end;
procedure ViewDepartment(DEPT_NO: Variant);
var
  frmDeptList: TfrmDeptList;

implementation

uses MainDM, PopupMainForm, SSP_Library, DateUtils;

{$R *.dfm}

procedure ViewDepartment(DEPT_NO: Variant);
begin
  try
    Application.CreateForm(TfrmDeptList, frmDeptList);
    if frmDeptList.qryDeptList.Locate('DEPT_NO', DEPT_NO, []) = false then
      ShowMessageUnicode(43)
    else
      frmDeptList.ShowModal;
  finally
    frmDeptList.Free;
  end;
end;

procedure TfrmDeptList.FormCreate(Sender: TObject);
begin
  inherited;
  qryDeptList.Open;
//  qryCheck.Open;
  frameToolbar1.SetDataSource(dsDeptList);
  frameToolbar1.SetActiveControl(dxDBEdit2);
  frameToolbar1.OnBeforeInsertChild := self.OnBeforeInsertChild;
  frameToolbar1.OnBeforeInsert := self.OnBeforeInsert;
  CustomExpand(dxtlDeptList);
  IB_Events1.RegisterEvents;
end;

procedure TfrmDeptList.OnBeforeInsertChild(Sender: TObject);
begin
  FParentDept := qryDeptListDEPT_NO.Value;
  FParentDeptName := qryDeptListDEPT_NAME.Value;
end;

procedure TfrmDeptList.OnBeforeInsert(Sender: TObject);
begin
  FParentDept := qryDeptListP_DEPT_NO.Value;
  FParentDeptName := qryDeptListP_DEPT_NAME.Value;
end;

procedure TfrmDeptList.qryDeptListNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Length(VarToWideStr(FParentDept)) > 0 then
  begin
    qryDeptListP_DEPT_NO.Value := FParentDept;
    qryDeptListP_DEPT_NAME.Value := FParentDeptName;
  end;
  qryDeptListFOUNDED_DATE.Value := today; 
  
end;

procedure TfrmDeptList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmMain.MsgChangeDataSource(dsDeptList);
  qryDeptList.Close;
//  qryCheck.Close;
end;

procedure TfrmDeptList.dxDBPopupEdit2InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptTypeList.Open;
  InitPopupControl('dxlcDeptTypeList', frmPopupMain, Sender, 2);
end;

procedure TfrmDeptList.dxDBPopupEdit2CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptTypeList, qryDeptList,
    'DEPT_TYPE_NO;DEPT_TYPE_NAME;PRESENT_COLOR',
      'DEPT_TYPE_NO;DEPT_TYPE_NAME;ITEM_COLOR',
    'DEPT_TYPE_NAME', Text);
  frmPopupMain.qryDeptTypeList.Close;
end;

procedure TfrmDeptList.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, Sender, 2);
  frmPopupMain.btnShowDeptList.Visible := false;
  frmPopupMain.dxtlDeptList.FullExpand;
end;

procedure TfrmDeptList.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryDeptList, qryDeptList,
    'DEPT_NO;DEPT_NAME', 'P_DEPT_NO;P_DEPT_NAME', 'DEPT_NAME', Text);
  frmPopupMain.qryDeptList.Close;
  frmPopupMain.btnShowDeptList.Visible := true;
end;

procedure TfrmDeptList.qryDeptListP_DEPT_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'P_DEPT_NO');
end;

procedure TfrmDeptList.qryDeptListDEPT_TYPE_NAMEChange(Sender: TField);
begin
  inherited;
  SetNullLink(Sender.DataSet, Sender.FieldName, 'DEPT_TYPE_NO');
end;

procedure TfrmDeptList.IB_Events1EventAlert(Sender: TObject;
  AEventName: string; AEventCount: Integer);
var
  DEPT_NO: Widestring;
begin
  inherited;
  if AEventName = 'DEPT_NO CHANGE' then
  begin
    DEPT_NO := qryDeptListDEPT_NO.Value;
    qryDeptList.DisableControls;
    qryDeptList.Refresh;
    qryDeptList.Locate('DEPT_NO', DEPT_NO, []);
    qryDeptList.EnableControls;
  end
  else
    if AEventName = 'DEPT_NO DELETE' then
  begin
    qryDeptList.DisableControls;
    qryDeptList.Refresh;
    qryDeptList.EnableControls;
  end
end;

procedure TfrmDeptList.dxtlDeptListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if not Assigned(ANode.Parent) then
    begin
      AFont.Style := AFont.Style + [fsBold];
    end
    else
    begin
      AFont.Style := AFont.Style - [fsBold];
    end;
    if VarToStr(ANode.Values[dxtlDeptListENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

procedure TfrmDeptList.qryDeptListDEPT_NAMEChange(Sender: TField);
begin
  inherited;
  qryCheck.ParamByName('DEPT_NAME').Value:=qryDeptListDEPT_NAME.Value;
  qryCheck.Open;
  if qryCheckCOUNT.Value>0 then
    HintBox(62,Self,dxDBEdit1);
  qryCheck.Close;
end;

//Locked by THUYPTP - 21/04/2009
{procedure TfrmDeptList.qryDeptListAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Added by TyNTB
  if qryDeptListDEPT_NO.Value='0' then
  qryDeptListDEPT_NO.Value :='';
  dmMain.DefOnAfterInsert(dataset);
end;}

end.

