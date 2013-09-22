unit CreateCandidatorList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  DB, IBODataset, dxDBTLCl, dxGrClms, dxEditor, dxEdLib, dxDBELib,
  ElBtnCtl, ElPopBtn, ActnList;

type
  TfrmCreateCandidatorList = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    gridItemList: TdxDBGrid;
    dsItemList: TDataSource;
    qryItemList: TIBOQuery;
    qryItemListPLAN_NO: TWideStringField;
    qryItemListITEM_NO: TWideStringField;
    qryItemListITEM_NAME: TWideStringField;
    qryItemListITEM_DATE: TDateField;
    gridItemListITEM_NO: TdxDBGridColumn;
    gridItemListITEM_NAME: TdxDBGridColumn;
    gridItemListITEM_DATE: TdxDBGridDateColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxSelectSource: TdxImageEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    dxlcSelectSourceGroup_Root: TdxLayoutGroup;
    dxlcSelectSource: TdxLayoutControl;
    ElPopupButton3: TElPopupButton;
    dxlcSelectSourceItem1: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxlcSelectSourceItem2: TdxLayoutItem;
    dxlcSelectSourceItem3: TdxLayoutItem;
    dxlcSelectSourceGroup1: TdxLayoutGroup;
    dxppSelectSource: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    spExecute: TIBOStoredProc;
    qryExecute: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure dxSelectSourceChange(Sender: TObject);
    constructor Create(AOwner:TComponent;PLAN_NO,ITEM_NO,ITEM_TYPE:Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acDongyUpdate(Sender: TObject);
    procedure gridItemListDblClick(Sender: TObject);
    procedure dxppSelectSourceChange(Sender: TObject);
    procedure dxppSelectSourceInitPopup(Sender: TObject);
    procedure dxppSelectSourceCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure acDongyExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
  private
    { Private declarations }
    F_PLAN_NO,F_ITEM_NO,F_ITEM_TYPE,F_SELECT_SOURCE:Variant;

  public
    { Public declarations }
  end;

var
  frmCreateCandidatorList: TfrmCreateCandidatorList;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}
constructor TfrmCreateCandidatorList.Create(AOwner:TComponent;PLAN_NO,ITEM_NO,ITEM_TYPE:Variant);
begin
  F_PLAN_NO:=PLAN_NO;
  F_ITEM_NO:=ITEM_NO;
  F_ITEM_TYPE:=ITEM_TYPE;
  inherited Create(AOwner);
end;
procedure TfrmCreateCandidatorList.FormCreate(Sender: TObject);
begin
  dxSelectSource.Descriptions.Add(Utf8Decode('Kết quả sơ loại hồ sơ'));
  dxSelectSource.Descriptions.Add(Utf8Decode('Kết quả kiểm tra - thi tuyển'));
  dxSelectSource.Descriptions.Add(Utf8Decode('Kết quả phỏng vấn tuyển dụng'));
  dxSelectSource.Values.Add('SOLOAI_HOSO');
  dxSelectSource.Values.Add('KIEMTRA_THITUYEN');
  dxSelectSource.Values.Add('PHONGVAN_TUYENDUNG');
  inherited;
  dxSelectSource.Text:='SOLOAI_HOSO';
  F_SELECT_SOURCE:='';
end;

procedure TfrmCreateCandidatorList.dxSelectSourceChange(Sender: TObject);
begin
  inherited;
  if dxSelectSource.Text='SOLOAI_HOSO' then
  begin
    dxppSelectSource.Text:='';
    dxppSelectSource.Enabled:=false;
  end
  else
  if dxSelectSource.Text='KIEMTRA_THITUYEN' then
  begin
    dxppSelectSource.Enabled:=true;
    qryItemList.DisableControls;
    if qryItemList.Active then
      qryItemList.Close;
     if F_ITEM_TYPE='KIEMTRA_THITUYEN' then
     begin
      qryItemList.SQL.Text:=
      'SELECT PLAN_NO '+
      ' , TEST_NO ITEM_NO '+
      ' , TEST_NAME ITEM_NAME '+
      ' , TEST_DATE ITEM_DATE '+
      ' FROM HR_RECRUITMENT_TEST '+
      ' where (PLAN_NO=:PLAN_NO) and '+
      ' (TEST_NO<>:ITEM_NO) ';
      qryItemList.ParamByName('ITEM_NO').Value:=F_ITEM_NO;
    end
    else
    begin
       qryItemList.SQL.Text:=
      'SELECT PLAN_NO '+
      ' , TEST_NO ITEM_NO '+
      ' , TEST_NAME ITEM_NAME '+
      ' , TEST_DATE ITEM_DATE '+
      ' FROM HR_RECRUITMENT_TEST '+
      ' where (PLAN_NO=:PLAN_NO)';
    end;
    qryItemList.ParamByName('PLAN_NO').Value:=F_PLAN_NO;
    qryItemList.Open;
    qryItemList.EnableControls;
  end
  else
  if dxSelectSource.Text='PHONGVAN_TUYENDUNG' then
  begin
    dxppSelectSource.Enabled:=true;
    qryItemList.DisableControls;
    if qryItemList.Active then
      qryItemList.Close;
     if F_ITEM_TYPE='PHONGVAN_TUYENDUNG' then
     begin
      qryItemList.SQL.Text:=
      ' SELECT PLAN_NO '+
      ' , INTERVIEW_NO ITEM_NO '+
      ' , INTERVIEW_NAME ITEM_NAME '+
      ' , INTERVIEW_DATE ITEM_DATE '+
      ' FROM HR_INTERVIEW '+
      ' where (PLAN_NO=:PLAN_NO) and '+
      ' (INTERVIEW_NO<>:ITEM_NO) ';
      qryItemList.ParamByName('ITEM_NO').Value:=F_ITEM_NO;
    end
    else
    begin
      qryItemList.SQL.Text:=
      ' SELECT PLAN_NO '+
      ' , INTERVIEW_NO ITEM_NO '+
      ' , INTERVIEW_NAME ITEM_NAME '+
      ' , INTERVIEW_DATE ITEM_DATE '+
      ' FROM HR_INTERVIEW '+
      ' where (PLAN_NO=:PLAN_NO)';
    end;
    qryItemList.ParamByName('PLAN_NO').Value:=F_PLAN_NO;
    qryItemList.Open;
    qryItemList.EnableControls;
  end
end;

procedure TfrmCreateCandidatorList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryItemList.Close;
end;

procedure TfrmCreateCandidatorList.acDongyUpdate(Sender: TObject);
begin
  inherited;
  acDongy.Enabled:=(dxSelectSource.Text='SOLOAI_HOSO')or
                   (Length(VarToStr(F_SELECT_SOURCE))>0); 
end;

procedure TfrmCreateCandidatorList.gridItemListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

procedure TfrmCreateCandidatorList.dxppSelectSourceChange(Sender: TObject);
begin
  inherited;
  if dxppSelectSource.Text='' then
    F_SELECT_SOURCE:='';
end;

procedure TfrmCreateCandidatorList.dxppSelectSourceInitPopup(
  Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcSelectSource',self,sender,2);
end;

procedure TfrmCreateCandidatorList.dxppSelectSourceCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=qryItemListITEM_NAME.Value;
    F_SELECT_SOURCE:=qryItemList.FieldByName('ITEM_NO').Value;
  end;
end;

procedure TfrmCreateCandidatorList.acDongyExecute(Sender: TObject);
var
  ok:boolean;
  ket_qua : integer;
begin
  inherited;
  ket_qua :=  ShowMessageUnicode(47);
  if ket_qua = mrYes then
  begin
     ok:=true;
     try
       Screen.Cursor:=crSQLWait;
       qryExecute.ParamByName('PLAN_NO').Value:=F_PLAN_NO;
       qryExecute.ParamByName('TEST_NO').Value:=F_ITEM_NO;
       qryExecute.ParamByName('TEST_TYPE').Value:=F_ITEM_TYPE;
       qryExecute.ParamByName('FROM_ITEM_NO').Value:=F_SELECT_SOURCE;
       qryExecute.ParamByName('FROM_ITEM_TYPE').Value:=dxSelectSource.Text;
       qryExecute.ParamByName('LOC_LAI').Value:=1;
       dmMain.ExecuteSQL(qryExecute);
       ShowMessageUnicode(39);
     except
       ok:=false;
     end;
     Screen.Cursor:=crDefault;
     if ok then ModalResult:=mrOk
     else
       ModalResult:=mrCancel;
  end
  else if ket_qua = mrNo then
  begin
     ok:=true;
     try
       Screen.Cursor:=crSQLWait;
       qryExecute.ParamByName('PLAN_NO').Value:=F_PLAN_NO;
       qryExecute.ParamByName('TEST_NO').Value:=F_ITEM_NO;
       qryExecute.ParamByName('TEST_TYPE').Value:=F_ITEM_TYPE;
       qryExecute.ParamByName('FROM_ITEM_NO').Value:=F_SELECT_SOURCE;
       qryExecute.ParamByName('FROM_ITEM_TYPE').Value:=dxSelectSource.Text;
       qryExecute.ParamByName('LOC_LAI').Value:=0;
       dmMain.ExecuteSQL(qryExecute);
       ShowMessageUnicode(39);
     except
       ok:=false;
     end;
     Screen.Cursor:=crDefault;
     if ok then ModalResult:=mrOk
     else
       ModalResult:=mrCancel;
  end;
end;

procedure TfrmCreateCandidatorList.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

end.
