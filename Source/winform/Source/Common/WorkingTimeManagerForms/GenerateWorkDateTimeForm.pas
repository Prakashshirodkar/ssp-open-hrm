unit GenerateWorkDateTimeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxCntner, dxExEdtr, dxEdLib, dxEditor,
  ActnList, ElBtnCtl, ElPopBtn, DB, IBODataset;

type
  TfrmGenerateWorkDateTime = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    chkChamngay: TdxCheckEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    chkChamgio: TdxCheckEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    chkTheongay: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    chkTheothang: TdxCheckEdit;
    dateTungay: TdxDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dateDenngay: TdxDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    imTuthang: TdxImageEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    spTunam: TdxSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    spDennam: TdxSpinEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    imDenthang: TdxImageEdit;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    spInitWorkDateTime: TIBOStoredProc;
    dxppSelectDept: TdxPopupEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    chkIncludeChild: TdxCheckEdit;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    qryGenerateData: TIBOQuery;
    chkChamtonggio: TdxCheckEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure chkTheongayChange(Sender: TObject);
    procedure chkTheothangChange(Sender: TObject);
    procedure dxppSelectDeptInitPopup(Sender: TObject);
    procedure dxppSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxppSelectDeptChange(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acDongyUpdate(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkChamngayChange(Sender: TObject);
    procedure chkChamgioChange(Sender: TObject);
    procedure chkChamtonggioChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    DEPT_NO:WideString;
  end;

var
  frmGenerateWorkDateTime: TfrmGenerateWorkDateTime;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmGenerateWorkDateTime.chkTheongayChange(Sender: TObject);
begin
  inherited;
  dateTungay.Enabled:=chkTheongay.Checked;
  dateDenngay.Enabled:=chkTheongay.Checked;
  if chkTheongay.Checked then
    chkTheothang.Checked:=false;
end;

procedure TfrmGenerateWorkDateTime.chkTheothangChange(Sender: TObject);
begin
  inherited;
  imTuthang.Enabled:=chkTheothang.Checked;
  imDenthang.Enabled:=chkTheothang.Checked;
  spTunam.Enabled:=chkTheothang.Checked;
  spDennam.Enabled:=chkTheothang.Checked;
  if chkTheoThang.Checked then
    chkTheongay.Checked:=false;
end;

procedure TfrmGenerateWorkDateTime.dxppSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmPopupMain,sender,2);
end;

procedure TfrmGenerateWorkDateTime.dxppSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmPopupMain.qryDeptListDEPT_NAME.Value;
    DEPT_NO:=frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmGenerateWorkDateTime.dxppSelectDeptChange(Sender: TObject);
begin
  inherited;
  if length(dxppSelectDept.Text)=0 then
    DEPT_NO:='';
end;

procedure TfrmGenerateWorkDateTime.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmGenerateWorkDateTime.acDongyUpdate(Sender: TObject);
begin
  inherited;
  acDongy.Enabled:=(Length(DEPT_NO)>0) and
                   (chkChamngay.Checked or chkChamgio.Checked or chkChamtonggio.Checked) and
                   (chkTheongay.Checked or chkTheothang.Checked);
end;

procedure TfrmGenerateWorkDateTime.acDongyExecute(Sender: TObject);
var ok:boolean;
    i:integer;
begin
  inherited;
    ok:=true;
    if not qryGenerateData.Prepared then
      qryGenerateData.Prepare;
    qryGenerateData.ParamByName('USER_NAME').Value:=sysConfig.User;
    qryGenerateData.ParamByName('DEPT_NO').Value:=DEPT_NO;
    if chkIncludeChild.Checked then
      qryGenerateData.ParamByName('INCLUDE_CHILD').Value:=1
    else
      qryGenerateData.ParamByName('INCLUDE_CHILD').Value:=0;
  qryGenerateData.ParamByName('FOR_DATE').Value:=0;
  qryGenerateData.ParamByName('FOR_TIME').Value:=1;
  qryGenerateData.ParamByName('FOR_TOTAL_TIME').Value:=0;
  {  if chkChamngay.Checked then
      qryGenerateData.ParamByName('FOR_DATE').Value:=1
    else
      qryGenerateData.ParamByName('FOR_DATE').Value:=0;

    if chkChamgio.Checked then
      qryGenerateData.ParamByName('FOR_TIME').Value:=1
    else
      qryGenerateData.ParamByName('FOR_TIME').Value:=0;

    if chkChamTonggio.Checked then
      qryGenerateData.ParamByName('FOR_TOTAL_TIME').Value:=1
    else
      qryGenerateData.ParamByName('FOR_TOTAL_TIME').Value:=0;
   }
    if chkTheongay.Checked then
      qryGenerateData.ParamByName('FOLLOW_DATE').Value:=1
    else
      qryGenerateData.ParamByName('FOLLOW_DATE').Value:=0;
    if chkTheothang.Checked then
      qryGenerateData.ParamByName('FOLLOW_MONTH').Value:=1
    else
      qryGenerateData.ParamByName('FOLLOW_MONTH').Value:=0;

    qryGenerateData.ParamByName('FROM_DATE').Value:=dateTungay.Date;
    qryGenerateData.ParamByName('TO_DATE').Value:=dateDenngay.Date;
    qryGenerateData.ParamByName('FROM_MONTH').Value:=StrToInt(imTuthang.Text);
    qryGenerateData.ParamByName('TO_MONTH').Value:=StrToInt(imDenthang.Text);
    qryGenerateData.ParamByName('FROM_YEAR').Value:=spTunam.IntValue;
    qryGenerateData.ParamByName('TO_YEAR').Value:=spDennam.IntValue;
  try
    dmMain.ExecuteSQL(qryGenerateData);
  except
    ShowMessageUnicode(11);
    ok:=false;
  end;
  if ok then
  begin
    ShowMessageUnicode(39);
    ModalResult:=mrOk;
  end;
end;

procedure TfrmGenerateWorkDateTime.FormCreate(Sender: TObject);
begin
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 1'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 2'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 3'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 4'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 5'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 6'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 7'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 8'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 9'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 10'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 11'));
  imTuthang.Descriptions.Add(Utf8Decode('Tháng 12'));

  imTuthang.Values.Add('1');
  imTuthang.Values.Add('2');
  imTuthang.Values.Add('3');
  imTuthang.Values.Add('4');
  imTuthang.Values.Add('5');
  imTuthang.Values.Add('6');
  imTuthang.Values.Add('7');
  imTuthang.Values.Add('8');
  imTuthang.Values.Add('9');
  imTuthang.Values.Add('10');
  imTuthang.Values.Add('11');
  imTuthang.Values.Add('12');

  imDenthang.Descriptions.Add(Utf8Decode('Tháng 1'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 2'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 3'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 4'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 5'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 6'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 7'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 8'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 9'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 10'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 11'));
  imDenthang.Descriptions.Add(Utf8Decode('Tháng 12'));

  imDenthang.Values.Add('1');
  imDenthang.Values.Add('2');
  imDenthang.Values.Add('3');
  imDenthang.Values.Add('4');
  imDenthang.Values.Add('5');
  imDenthang.Values.Add('6');
  imDenthang.Values.Add('7');
  imDenthang.Values.Add('8');
  imDenthang.Values.Add('9');
  imDenthang.Values.Add('10');
  imDenthang.Values.Add('11');
  imDenthang.Values.Add('12');

  inherited;

end;

procedure TfrmGenerateWorkDateTime.chkChamngayChange(Sender: TObject);
begin
  inherited;
  if chkChamngay.Checked then
  begin
    chkChamgio.Checked := false;
    chkChamtonggio.Checked := false;
  end;
  
end;

procedure TfrmGenerateWorkDateTime.chkChamgioChange(Sender: TObject);
begin
  inherited;
  if chkChamgio.Checked then
  begin
    chkChamngay.Checked := false;
    chkChamtonggio.Checked := false;
  end;
  
end;

procedure TfrmGenerateWorkDateTime.chkChamtonggioChange(Sender: TObject);
begin
  inherited;
  if chkChamtonggio.Checked then
  begin
    chkChamgio.Checked := false;
    chkChamngay.Checked := false;
  end;
  
end;

end.
