unit EmpListInputForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ActnList, dxEditor, dxEdLib,
  dxDBTLCl, dxGrClms,ElUnicodeStrings, dxGrClEx;

type
  TfrmEmpListInput = class(TfrmListBase)
    ActionList1: TActionList;
    acGetData: TAction;
    dximOption: TdxImageEdit;
    dxlcMainItem3: TdxLayoutItem;
    qryListEMPLOYEE_NO: TWideStringField;
    qryListEMPLOYEE_ID: TWideStringField;
    qryListFIRST_NAME: TWideStringField;
    qryListMIDDLE_NAME: TWideStringField;
    qryListLAST_NAME: TWideStringField;
    qryListFULL_NAME: TWideStringField;
    qryListREGISTERED_NAME: TWideStringField;
    qryListALIAS: TWideStringField;
    qryListGENDER: TSmallintField;
    qryListBIRTH_DATE: TDateField;
    qryListMARRIAL_STATUS: TWideStringField;
    qryListMARRIAL_STATUS_NAME: TWideStringField;
    qryListID_CARD_NO: TWideStringField;
    qryListISSUED_DATE: TDateField;
    qryListISSUED_PLACE: TWideStringField;
    qryListPASSPORT: TWideStringField;
    qryListPASSPORT_DATE: TDateField;
    qryListPASSPORT_PLACE: TWideStringField;
    qryListRACE_NO: TWideStringField;
    qryListRACE_NAME: TWideStringField;
    qryListCURRENCY_NO: TWideStringField;
    qryListCURRENCY_NAME: TWideStringField;
    qryListNATIONAL_NO: TWideStringField;
    qryListNATIONAL_NAME: TWideStringField;
    qryListRELIGION_NO: TWideStringField;
    qryListRELIGION_NAME: TWideStringField;
    qryListBIRTH_PLACE_ID: TWideStringField;
    qryListBIRTH_PLACE_NAME: TWideStringField;
    qryListNATIVE_PLACE_ID: TWideStringField;
    qryListNATIVE_PLACE_NAME: TWideStringField;
    qryListCONTACT_ADDR: TWideStringField;
    qryListPROVISION_ADDR: TWideStringField;
    qryListRESIDENT_ADDR: TWideStringField;
    qryListCONTACT_PHONE: TWideStringField;
    qryListHAND_PHONE: TWideStringField;
    qryListEMAIL: TWideStringField;
    qryListFAX: TWideStringField;
    qryListWEBSITE: TWideStringField;
    qryListPORTRAIT: TBlobField;
    qryListIMG_TYPE: TWideStringField;
    qryListIS_CADIDATE: TSmallintField;
    qryListNOTES: TWideStringField;
    qryListDESCENT_FROM: TWideStringField;
    qryListDESCENT_NAME: TWideStringField;
    qryListACCOUNT_ID: TWideStringField;
    qryListACCOUNT_BANK: TWideStringField;
    dxdbgMainEMPLOYEE_NO: TdxDBGridColumn;
    dxdbgMainEMPLOYEE_ID: TdxDBGridColumn;
    dxdbgMainFIRST_NAME: TdxDBGridColumn;
    dxdbgMainMIDDLE_NAME: TdxDBGridColumn;
    dxdbgMainLAST_NAME: TdxDBGridColumn;
    dxdbgMainFULL_NAME: TdxDBGridColumn;
    dxdbgMainREGISTERED_NAME: TdxDBGridColumn;
    dxdbgMainALIAS: TdxDBGridColumn;
    dxdbgMainBIRTH_DATE: TdxDBGridDateColumn;
    dxdbgMainID_CARD_NO: TdxDBGridColumn;
    dxdbgMainISSUED_DATE: TdxDBGridDateColumn;
    dxdbgMainISSUED_PLACE: TdxDBGridColumn;
    dxdbgMainPASSPORT: TdxDBGridColumn;
    dxdbgMainPASSPORT_DATE: TdxDBGridDateColumn;
    dxdbgMainPASSPORT_PLACE: TdxDBGridColumn;
    dxdbgMainBIRTH_PLACE_NAME: TdxDBGridColumn;
    dxdbgMainNATIVE_PLACE_NAME: TdxDBGridColumn;
    dxdbgMainCONTACT_ADDR: TdxDBGridColumn;
    dxdbgMainPROVISION_ADDR: TdxDBGridColumn;
    dxdbgMainRESIDENT_ADDR: TdxDBGridColumn;
    dxdbgMainCONTACT_PHONE: TdxDBGridColumn;
    dxdbgMainHAND_PHONE: TdxDBGridColumn;
    dxdbgMainEMAIL: TdxDBGridColumn;
    dxdbgMainFAX: TdxDBGridColumn;
    dxdbgMainWEBSITE: TdxDBGridColumn;
    dxdbgMainIMG_TYPE: TdxDBGridColumn;
    dxdbgMainNOTES: TdxDBGridColumn;
    dxdbgMainACCOUNT_ID: TdxDBGridColumn;
    dxdbgMainACCOUNT_BANK: TdxDBGridColumn;
    dxdbgMainGENDER: TdxDBGridImageColumn;
    dxdbgMainPORTRAIT: TdxDBGridGraphicColumn;
    dxlcMainGroup1: TdxLayoutGroup;
    dxDisplayPortrait: TdxCheckEdit;
    dxlcMainItem4: TdxLayoutItem;
    acChangeOption: TAction;
    dxdbgMainMARRIAL_STATUS_NAME: TdxDBGridMRUColumn;
    dxdbgMainRACE_NAME: TdxDBGridMRUColumn;
    dxdbgMainNATIONAL_NAME: TdxDBGridMRUColumn;
    dxdbgMainRELIGION_NAME: TdxDBGridMRUColumn;
    dxdbgMainDESCENT_NAME: TdxDBGridMRUColumn;
    dxdbgMainCURRENCY_NAME: TdxDBGridMRUColumn;
    qryListPASSPORT_EXPIRED: TDateField;
    qryListACCOUNT_NAME: TWideStringField;
    qryListACCOUNT_ID_2: TWideStringField;
    qryListACCOUNT_BANK_2: TWideStringField;
    qryListACCOUNT_NAME_2: TWideStringField;
    qryListMASO_THUE_CANHAN: TWideStringField;
    qryListCOQUAN_THUE_QUANLY: TWideStringField;
    qryListMATINH_CAP_CMND: TWideStringField;
    qryListVISA_NO: TWideStringField;
    qryListVISA_DATE: TDateField;
    qryListVISA_PLACE: TWideStringField;
    qryListVISA_EXPIRED: TDateField;
    dxdbgMainPASSPORT_EXPIRED: TdxDBGridDateColumn;
    dxdbgMainACCOUNT_NAME: TdxDBGridColumn;
    dxdbgMainACCOUNT_ID_2: TdxDBGridColumn;
    dxdbgMainACCOUNT_BANK_2: TdxDBGridColumn;
    dxdbgMainACCOUNT_NAME_2: TdxDBGridColumn;
    dxdbgMainMASO_THUE_CANHAN: TdxDBGridColumn;
    dxdbgMainCOQUAN_THUE_QUANLY: TdxDBGridColumn;
    dxdbgMainVISA_NO: TdxDBGridColumn;
    dxdbgMainVISA_DATE: TdxDBGridDateColumn;
    dxdbgMainVISA_PLACE: TdxDBGridColumn;
    dxdbgMainVISA_EXPIRED: TdxDBGridDateColumn;
    dxdbgMainMATINH_CAP_CMND: TdxDBGridPopupColumn;
    dxdbgMainAPEC_No: TdxDBGridColumn;
    dxdbgMainAPEC_Date: TdxDBGridDateColumn;
    dxdbgMainAPEC_EXPIRED: TdxDBGridDateColumn;
    qryListAPEC_NO: TWideStringField;
    qryListAPEC_DATE: TDateField;
    qryListAPEC_EXPIRED: TDateField;
    procedure acGetDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dximOptionChange(Sender: TObject);
    procedure qryListNewRecord(DataSet: TDataSet);
    procedure qryListAfterPost(DataSet: TDataSet);
    procedure acChangeOptionExecute(Sender: TObject);
    procedure qryListFULL_NAMEChange(Sender: TField);
    procedure qryListFIRST_NAMEChange(Sender: TField);
    procedure dxdbgMainMATINH_CAP_CMNDInitPopup(Sender: TObject);
    procedure dxdbgMainMATINH_CAP_CMNDCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
    STATE: string;
    id_list,value_list:TElWideStrings;
  public
    { Public declarations }
  end;

var
  frmEmpListInput: TfrmEmpListInput;

implementation

uses MainDM, EmployeeListForm, MarrialStatusListForm, SSP_Library, BaseFrm,
  NationListForm, RaceListForm, ReligionListForm, DescentListForm,
  CurrencyListForm, PopupMainForm;

{$R *.dfm}

procedure TfrmEmpListInput.acGetDataExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  with qryList do
  begin
    DisableControls;
    if Active then Close;
    if dximOption.Text = 'ALL' then
      SQLWhere.Text := ' where (IS_CADIDATE is null) or (IS_CADIDATE=0) '
    else
      if dximOption.Text = 'WORK' then
        SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and ((STATE is null) or (STATE=''WORK''))'
      else
        if dximOption.Text = 'OUT' then
          SQLWhere.Text := ' where ((IS_CADIDATE is null) or (IS_CADIDATE=0)) and STATE=''OUT''';

    Open;
    EnableControls;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmEmpListInput.FormCreate(Sender: TObject);
begin
  inherited;
  dximOption.Tag := 1;
  dximOption.Descriptions.Add(Utf8Decode('Đang làm việc'));
  dximOption.Descriptions.Add(Utf8Decode('Đã thôi việc'));
  dximOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dximOption.Values.Add('WORK');
  dximOption.Values.Add('OUT');
  dximOption.Values.Add('ALL');
  dximOption.Text := 'ALL';
  dximOption.Tag := 0;
  dxDisplayPortrait.Checked:=false;
  acGetData.Execute;
  RegisterLookupControl(dxdbgMainMARRIAL_STATUS_NAME,'MARRIAL_STATUS','MARRIAL_STATUS_NAME',
    'SELECT STATUS_ID, STATUS_NAME FROM HR_MARRIAL_STATUS',TfrmMarrialStatus);
  RegisterLookupControl(dxdbgMainNATIONAL_NAME,'NATIONAL_NO','NATIONAL_NAME',
    'SELECT NATION_NO, NATION_NAME FROM HR_NATION',TfrmNationList);
  RegisterLookupControl(dxdbgMainRACE_NAME,'RACE_NO','RACE_NAME',
    'SELECT RACE_NO, RACE_NAME FROM HR_RACE',TfrmRaceList);
  RegisterLookupControl(dxdbgMainRELIGION_NAME,'RELIGION_NO','RELIGION_NAME',
    'SELECT RELIGION_NO, RELIGION_NAME FROM HR_RELIGION',TfrmReligionList);
  RegisterLookupControl(dxdbgMainDESCENT_NAME,'DESCENT_FROM','DESCENT_NAME',
    'SELECT DESCENT_NO, DESCENT_NAME FROM HR_DESCENT_LIST',TfrmDescentList);
  RegisterLookupControl(dxdbgMainCURRENCY_NAME,'CURRENCY_NO','CURRENCY_NAME',
    'SELECT CURRENCY_NO, CURRENCY_NAME FROM HR_CURRENCY',TfrmCurrencyList);

end;

procedure TfrmEmpListInput.dximOptionChange(Sender: TObject);
begin
  inherited;
  if dximOption.Tag = 1 then exit
  else
    acGetData.Execute;
end;

procedure TfrmEmpListInput.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListMIDDLE_NAME.Value := '';
  qryListIS_CADIDATE.Value := 0;
  qryListEMPLOYEE_NO.Value := dmMain.GenerateKeyData(200);
  STATE := 'insert';
end;

procedure TfrmEmpListInput.qryListAfterPost(DataSet: TDataSet);
begin
  inherited;
  if STATE = 'insert' then
  begin
    dmMain.IncreaseKeyData(200);
  end;
  STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TfrmEmpListInput.acChangeOptionExecute(Sender: TObject);
begin
  inherited;
  if dxDisplayPortrait.Checked then
  begin
    dxdbgMain.DefaultRowHeight := 100;
    dxdbgMainPORTRAIT.Visible := true;
    dxdbgMain.Repaint;
  end
  else
  begin
    dxdbgMain.DefaultRowHeight := 17;
    dxdbgMainPORTRAIT.Visible := false;
    dxdbgMain.Repaint;
  end;
end;

procedure TfrmEmpListInput.qryListFULL_NAMEChange(Sender: TField);
var hoten: TStringList;
  ho, tenlot, ten: string;
  i, c: integer;
begin
  inherited;

  if STATE = 'NAME_EDIT' then exit
  else
    STATE := 'NAME_EDIT';
  hoten := TStringList.Create;
  hoten.Delimiter := ' ';
  hoten.DelimitedText := Trim(UTF8Encode(qryListFULL_NAME.Value));
  c := hoten.Count;
  if c > 1 then
  begin
    ho := Trim(hoten.Strings[0]);
    ten := Trim(hoten.Strings[hoten.Count - 1]);
    tenlot := '';
    if c > 2 then
    begin
      for i := 1 to c - 2 do
        tenlot := tenlot + ' ' + hoten.Strings[i];
    end;
    tenlot := Trim(tenlot);
    if (ho <> '') and (ten <> '') then
    begin
      if not (qryList.State in [dsInsert, dsEdit]) then
        qryList.Edit;
      qryListLAST_NAME.Value := UTF8Decode(ho);
      qryListMIDDLE_NAME.Value := UTF8Decode(tenlot);
      qryListFIRST_NAME.Value := UTF8Decode(ten);
    end;
  end;
  STATE := '';
end;
procedure TfrmEmpListInput.qryListFIRST_NAMEChange(Sender: TField);
begin
  inherited;
  if STATE='NAME_EDIT' then exit
  else
  STATE:='NAME_EDIT';
  qryListFULL_NAME.Value := Trim(qryListLAST_NAME.Value) + ' ' +
    Trim(qryListMIDDLE_NAME.Value) + ' ' +
    Trim(qryListFIRST_NAME.Value);
  STATE:='';
end;

procedure TfrmEmpListInput.dxdbgMainMATINH_CAP_CMNDInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryBaoHiem_TinhThanhPho.Open;
  InitPopupControl('dxlcBaoHiem_TinhThanhPho',frmPopupMain, sender, 2, dxdbgMain);
end;

procedure TfrmEmpListInput.dxdbgMainMATINH_CAP_CMNDCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept, frmPopupMain.qryBaoHiem_TinhThanhPho, qryList,
    'MA_TINH_THANHPHO;TEN_TINH_THANHPHO', 'MATINH_CAP_CMND;ISSUED_PLACE',
    'MA_TINH_THANHPHO', Text);
  frmPopupMain.qryBaoHiem_TinhThanhPho.Close;
end;

end.

