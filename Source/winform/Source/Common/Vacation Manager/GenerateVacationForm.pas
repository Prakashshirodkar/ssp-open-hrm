unit GenerateVacationForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, ActnList, dxExEdtr, dxEdLib, ElBtnCtl,
  ElPopBtn, DB, IBODataset, dxCntner, dxEditor;

type
  TfrmGenerateVacation = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    pePhongBan: TdxPopupEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ActionList1: TActionList;
    elpbBoQua: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    elpbPhatSinh: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    ceDonViCapDuoi: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dateDenNgay: TdxDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    acDongY: TAction;
    acBoQua: TAction;
    qryGenerateData: TIBOQuery;
    procedure acDongYExecute(Sender: TObject);
    procedure acBoQuaExecute(Sender: TObject);
    procedure pePhongBanCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure pePhongBanInitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DEPT_NO:String;
  end;

var
  frmGenerateVacation: TfrmGenerateVacation;

implementation
uses MainDM, PopupMainForm, SSP_Library, DateUtils;
{$R *.dfm}

procedure TfrmGenerateVacation.acDongYExecute(Sender: TObject);
var
  ok:boolean;
  result:integer;
begin
  inherited;
  //////////
    ok:=true;
    result := mrYes;
    if dateDenNgay.Date <> Today then
    begin
      result := ShowMessageUnicode(48);
    end;
    if result = mrYes then
    begin
      qryGenerateData.ParamByName('USER_NAME').Value:=sysConfig.User;
      qryGenerateData.ParamByName('DEPT_NO').Value:= UTF8Decode(DEPT_NO);
      if ceDonViCapDuoi.Checked then
        qryGenerateData.ParamByName('INCLUDE_CHILD').Value:=1
      else
        qryGenerateData.ParamByName('INCLUDE_CHILD').Value:=0;
      qryGenerateData.ParamByName('TO_DATE').Value  :=dateDenngay.Date;
      try
        dmMain.ExecuteSQL(qryGenerateData);
      except
        ShowMessageUnicode(23);
        ok:=false;
      end;
      if ok then
      begin
        ShowMessageUnicode(39);
      end;
    end;
    ModalResult:=mrOk;
end;

procedure TfrmGenerateVacation.acBoQuaExecute(Sender: TObject);
begin
  inherited;
///////////////
    ModalResult:=mrCancel;
end;

procedure TfrmGenerateVacation.pePhongBanCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
////
  if Accept then
  begin
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    DEPT_NO := UTF8Encode(frmPopupMain.qryDeptListDEPT_NO.Value);
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmGenerateVacation.pePhongBanInitPopup(Sender: TObject);
begin
  inherited;
/////////////
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);
end;

procedure TfrmGenerateVacation.FormCreate(Sender: TObject);
begin
  inherited;
  dateDenNgay.Date := Today;
end;

end.
