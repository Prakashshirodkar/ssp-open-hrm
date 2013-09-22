unit EmpListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxmdaset, DB, IBODataset, ElCaption, ElXPThemedControl,
  ElStatBar, dxLayoutControl, cxControls, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxCntner, ElBtnCtl, ElPopBtn, ActnList,
  dxEdLib, dxEditor;

type
  TfrmEmpList = class(TfrmBase)
    dsList: TDataSource;
    qryList: TIBOQuery;
    memList: TdxMemData;
    memListEMPLOYEE_NO: TWideStringField;
    memListFULL_NAME: TWideStringField;
    memListSELECTED: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridEmpSelect: TdxDBGrid;
    dxLayoutControl1Item3: TdxLayoutItem;
    gridEmpSelectRecId: TdxDBGridColumn;
    gridEmpSelectEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridEmpSelectFULL_NAME: TdxDBGridMaskColumn;
    gridEmpSelectSELECTED: TdxDBGridCheckColumn;
    ActionList1: TActionList;
    acChon: TAction;
    acBoqua: TAction;
    qryListEMP_NO: TWideStringField;
    qryListFULL_NAME: TWideStringField;
    qryListDEPT_NAME: TWideStringField;
    qryListTITLE_NAME: TWideStringField;
    imOption: TdxImageEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxSelectFromDept: TdxPopupEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    chkViewAll: TdxCheckEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxSelectWageStandard: TdxPopupEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxWageCoeff: TdxCalcEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    acRefreshData: TAction;
    memListDEPT_NAME: TWideStringField;
    memListTITLE_NAME: TWideStringField;
    gridEmpSelectDEPT_NAME: TdxDBGridColumn;
    gridEmpSelectTITLE_NAME: TdxDBGridColumn;
    dxWageLevel: TdxSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    chkCheckAll: TdxCheckEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    procedure FormDestroy(Sender: TObject);
    procedure memListBeforeInsert(DataSet: TDataSet);
    procedure acChonExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acRefreshDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxSelectFromDeptInitPopup(Sender: TObject);
    procedure dxSelectFromDeptCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxSelectFromDeptChange(Sender: TObject);
    procedure chkViewAllChange(Sender: TObject);
    procedure imOptionChange(Sender: TObject);
    procedure dxSelectWageStandardInitPopup(Sender: TObject);
    procedure dxSelectWageStandardCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure dxSelectWageStandardChange(Sender: TObject);
    procedure chkCheckAllChange(Sender: TObject);
    procedure dxWageLevelChange(Sender: TObject);
    procedure dxWageCoeffChange(Sender: TObject);
  private
    { Private declarations }
    FROM_DEPT:WideString;
    WAGE_LEVEL:integer;
    WAGE_COEFF:Double;
    is_init_form:boolean;
  public
    SELECT_WAGE_SCALE,SELECT_CAREER_NAME:WideString;
    { Public declarations }
  end;

var
  frmEmpList: TfrmEmpList;

implementation

uses MainDM, EmpInfoDataModule, Math, SSP_Library, PopupMainForm;

{$R *.dfm}

procedure TfrmEmpList.FormDestroy(Sender: TObject);
begin
  memList.Close;
  qryList.Close;
  inherited;
end;

procedure TfrmEmpList.memListBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if memList.Tag<>1 then Abort;
end;

procedure TfrmEmpList.acChonExecute(Sender: TObject);
begin
  inherited;
  if (memList.State in [dsEdit]) then
    memList.Post;
  ModalResult:=mrOK;
end;

procedure TfrmEmpList.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmEmpList.acRefreshDataExecute(Sender: TObject);
begin
  inherited;
  if qryList.Active then qryList.Close;
  qryList.ParamByName('FROM_DEPT').Value:=FROM_DEPT;
  if chkViewAll.Checked then
    qryList.ParamByName('VIEW_ALL').Value:=1
  else
    qryList.ParamByName('VIEW_ALL').Value:=0;
  qryList.ParamByName('IS_DISMISSED').Value:=imOption.Text;
  qryList.Open;

  memList.DisableControls;
  if memList.Active then memList.Close;
  memList.Open;
  If qryList.RecordCount>0 then
  begin
    memList.Tag:=1;
    qryList.Last;
    while not qryList.Bof do
    begin
      memList.Insert;
      memListEMPLOYEE_NO.Value:=qryListEMP_NO.Value;
      memListFULL_NAME.Value:=qryListFULL_NAME.Value;
      memListDEPT_NAME.Value:=qryListDEPT_NAME.Value;
      memListTITLE_NAME.Value:=qryListTITLE_NAME.Value;
      memListSELECTED.Value:=0;
      memList.Post;
      qryList.Prior;
    end;
    memList.Tag:=0;
  end;
  memList.EnableControls;
end;

procedure TfrmEmpList.FormCreate(Sender: TObject);
begin
  is_init_form:=true;
  imOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  imOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  imOption.Descriptions.Add(Utf8Decode('Tất cả'));

  imOption.Values.Add('0');
  imOption.Values.Add('1');
  imOption.Values.Add('2');

  imOption.Text:='0';
  is_init_form:=false;
  inherited;
  acRefreshData.Execute;
end;

procedure TfrmEmpList.dxSelectFromDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmEmpList.dxSelectFromDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    FROM_DEPT:=frmPopupMain.qryDeptListDEPT_NO.Value;
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    acRefreshData.Execute;
  end;
end;

procedure TfrmEmpList.dxSelectFromDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectFromDept.Text)=0 then
  begin
    FROM_DEPT:='';
    acRefreshData.Execute;
  end;
end;

procedure TfrmEmpList.chkViewAllChange(Sender: TObject);
begin
  inherited;
  if not is_init_form then
   acRefreshData.Execute;
end;

procedure TfrmEmpList.imOptionChange(Sender: TObject);
begin
  inherited;
  if not is_init_form then
    acRefreshData.Execute;
end;

procedure TfrmEmpList.dxSelectWageStandardInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWageStandard.Open;
  InitPopupControl('dxlcWageStandard',frmPopupMain,sender,2.5);
end;

procedure TfrmEmpList.dxSelectWageStandardCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryWageStandardCAREER_NAME.Value;
    SELECT_WAGE_SCALE:=frmPopupMain.qryWageStandardWAGE_SCALE.Value;
    SELECT_CAREER_NAME:=frmPopupMain.qryWageStandardCAREER_NAME.Value;
    dxWageLevel.Value:=frmPopupMain.qryWageStandardWAGE_LEVEL.AsInteger;
    dxWageCoeff.Text:=frmPopupMain.qryWageStandardWAGE_COEFF.AsString;
  end;
  frmPopupMain.qryWageStandard.Close;
end;

procedure TfrmEmpList.dxSelectWageStandardChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectWageStandard.Text)=0 then
  begin
    SELECT_WAGE_SCALE:='';
    SELECT_CAREER_NAME:='';
    WAGE_LEVEL:=0;
    WAGE_COEFF:=0;
    dxWageLevel.Text:='';
  end;
end;

procedure TfrmEmpList.chkCheckAllChange(Sender: TObject);
begin
  inherited;
  if memList.RecordCount=0 then exit;
  memList.DisableControls;
  memList.First;
  while not memList.Eof do
  begin
    if not (memList.State in [dsEdit,dsInsert]) then
      memList.Edit;
    if chkCheckAll.Checked then
      memListSELECTED.Value:=1
    else
      memListSELECTED.Value:=0;
    memList.Post;
    memList.Next;
  end;
  memList.EnableControls;
end;

procedure TfrmEmpList.dxWageLevelChange(Sender: TObject);
begin
  inherited;
  WAGE_LEVEL:=dxWageLevel.IntValue;
end;

procedure TfrmEmpList.dxWageCoeffChange(Sender: TObject);
begin
  inherited;
  WAGE_COEFF:=StrToFloatDef(dxWageCoeff.Text,0);
end;

end.
