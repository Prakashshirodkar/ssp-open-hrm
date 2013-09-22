unit ContractDataModule;

interface
                                       
uses
  SysUtils, Classes, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, DB, IBODataset, DateUtils, Controls, dxmdaset,
  ActnList, ppBands, ppCache, ppPrnabl, ppCtrls, myChkBox, ppModule,
  daDataModule;   


type
  TContractDM = class(TDataModule)
    dsContract: TDataSource;
    qryContract: TIBOQuery;
    rpContract: TppReport;
    dsnContract: TppDesigner;

    ppThongtin_Hopdong: TppDBPipeline;
    qryContractCONTRACT_NO: TWideStringField;
    qryContractCONTRACT_NAME: TWideStringField;
    qryContractCONTRACT_TYPE_NO: TWideStringField;
    qryContractCONTRACT_TYPE_NAME: TWideStringField;
    qryContractEMPLOYEE_NO: TWideStringField;
    qryContractFULL_NAME: TWideStringField;
    qryContractEMPLOYER_NO: TWideStringField;
    qryContractDEPT_NAME: TWideStringField;
    qryContractREPRESENTATIVE: TWideStringField;
    qryContractSTARTED_DATE: TDateField;
    qryContractEXPIRED_DATE: TDateField;
    qryContractFILE_CONTENT: TBlobField;
    qryContractFILE_NAME: TWideStringField;
    qryContractCONTRACT_CONTENT: TBlobField;
    qryContractTEMPLATE_FILE: TWideStringField;
    qryContractPRE_CONTRACT_NO: TWideStringField;
    qryContractPRE_CONTRACT_NAME: TWideStringField;
    qryContractCONTRACT_NOTE: TWideStringField;
    qryChitietBonhiem: TIBOQuery;
    dsChitietBonhiem: TDataSource;
    ppThongtinBonhiem: TppDBPipeline;
    qryChitietBonhiemEMPLOYEE_NO: TWideStringField;
    qryChitietBonhiemFULL_NAME: TWideStringField;
    qryChitietBonhiemPOSITION_NO: TWideStringField;
    qryChitietBonhiemPOSITION_TITLE: TWideStringField;
    qryChitietBonhiemASSIGNED_DATE: TDateField;
    qryChitietBonhiemENDED_DATE: TDateField;
    qryChitietBonhiemIS_MAIN_POSITION: TSmallintField;
    qryChitietBonhiemCONTRACT_NO: TWideStringField;
    qryChitietDieukhoan: TIBOQuery;
    dsChitietDieukhoan: TDataSource;
    qryChitietDieukhoanCONTRACT_NO: TWideStringField;
    qryChitietDieukhoanCONGVIEC_PHAILAM: TWideStringField;
    qryChitietDieukhoanTHOIGIAN_LAMCHINH: TWideStringField;
    qryChitietDieukhoanTHOIGIAN_LAMTHEM: TWideStringField;
    qryChitietDieukhoanGHICHU: TWideStringField;
    ppThongtinDieukhoan: TppDBPipeline;
    dsThongtinTochuc: TDataSource;
    ppThongtinTochuc: TppDBPipeline;
    dsHesoDikem: TDataSource;
    qryHesoDikem: TIBOQuery;
    qryHesoDikemPARAM_NO: TWideStringField;
    qryHesoDikemPARAM_NAME: TWideStringField;
    qryHesoDikemEMPLOYEE_NO: TWideStringField;
    qryHesoDikemDOC_NO: TWideStringField;
    qryHesoDikemDOC_TYPE: TWideStringField;
    qryHesoDikemPARAM_VALUE: TIBOFloatField;
    qryHesoDikemNOTE: TWideStringField;
    qryContractEMAIL: TWideStringField;
    qryResume: TIBOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    SmallintField1: TSmallintField;
    DateField1: TDateField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateField2: TDateField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    BlobField1: TBlobField;
    WideStringField29: TWideStringField;
    SmallintField2: TSmallintField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    qryResumeREGISTERED_NAME: TWideStringField;
    qryResumeALIAS: TWideStringField;
    qryResumePASSPORT: TWideStringField;
    qryResumePASSPORT_DATE: TDateField;
    qryResumePASSPORT_PLACE: TWideStringField;
    qryResumeMARRIAL_STATUS_NAME: TWideStringField;
    dsResume: TDataSource;
    ppLilichNHANVIEN: TppDBPipeline;
    qryEmpPrivateInfo: TIBOQuery;
    qryEmpPrivateInfoEMPLOYEE_NO: TWideStringField;
    qryEmpPrivateInfoNGAY_VAO_DANG: TDateField;
    qryEmpPrivateInfoNGAY_VAO_DOAN: TDateField;
    qryEmpPrivateInfoCHUC_VU_DANG: TWideStringField;
    qryEmpPrivateInfoCHUC_VU_DOAN: TWideStringField;
    qryEmpPrivateInfoTRINH_DO: TWideStringField;
    qryEmpPrivateInfoCONGVIEC_LAUNHAT: TWideStringField;
    qryEmpPrivateInfoSOTRUONG_CTAC: TWideStringField;
    qryEmpPrivateInfoNAM_TOTNGHIEP: TIntegerField;
    qryEmpPrivateInfoTOTNGHIEP_TAI: TWideStringField;
    qryEmpPrivateInfoTEN_TRINH_DO: TWideStringField;
    qryEmpPrivateInfoNGAY_VAO_CDOAN: TDateField;
    qryEmpPrivateInfoCHUC_VU_CDOAN: TWideStringField;
    qryEmpPrivateInfoNGHE_NGHIEP: TWideStringField;
    qryEmpPrivateInfoTEN_NGHE_NGHIEP: TWideStringField;
    qryEmpPrivateInfoNGAY_VAO_CONGTY: TDateField;
    qryEmpPrivateInfoTEN_CHUCVU_DANG: TWideStringField;
    qryEmpPrivateInfoTEN_CHUCVU_DOAN: TWideStringField;
    qryEmpPrivateInfoTEN_CHUCVU_CDOAN: TWideStringField;
    qryEmpPrivateInfoTRINHDO_VANHOA: TWideStringField;
    qryEmpPrivateInfoACADEMIC_NAME: TWideStringField;
    qryEmpPrivateInfoCHIEU_CAO: TIBOFloatField;
    qryEmpPrivateInfoCAN_NANG: TIBOFloatField;
    qryEmpPrivateInfoDAUVET_DACBIET: TWideStringField;
    dsEmpPrivateInfo: TDataSource;
    ppThongtinthemNhanvien: TppDBPipeline;
    qryApdung_HesoCB: TIBOQuery;
    qryApdung_HesoCBCHANGE_NO: TWideStringField;
    qryApdung_HesoCBCHANGE_NAME: TWideStringField;
    qryApdung_HesoCBDEFAULT_MONTH: TIntegerField;
    qryApdung_HesoCBDEFAULT_YEAR: TIntegerField;
    qryApdung_HesoCBDEFAULT_PERIOD: TIntegerField;
    qryApdung_HesoCBFROM_DECISION: TWideStringField;
    qryApdung_HesoCBFROM_CONTRACT: TWideStringField;
    dsApdung_HesoCB: TDataSource;
    qryHesoCB_Canhan: TIBOQuery;
    dsHesoCB_Canhan: TDataSource;
    qryHesoCB_CanhanCHANGE_NO: TWideStringField;
    qryHesoCB_CanhanEMPLOYEE_NO: TWideStringField;
    qryHesoCB_CanhanWAGE_SCALE: TWideStringField;
    qryHesoCB_CanhanCAREER_NAME: TWideStringField;
    qryHesoCB_CanhanWAGE_LEVEL: TIntegerField;
    qryHesoCB_CanhanWAGE_COEFF: TIBOFloatField;
    qryHesoCB_CanhanAPPLY_MONTH: TIntegerField;
    qryHesoCB_CanhanAPPLY_YEAR: TIntegerField;
    qryHesoCB_CanhanAPPLY_PERIOD: TIntegerField;
    qryHesoCB_CanhanPERIOD_ID: TIntegerField;
    ppHesoLuongCB: TppDBPipeline;
    qryContractTIME_LIMIT: TIntegerField;
    qryContractTIME_UNIT: TIntegerField;
    memHesoDikem: TdxMemData;
    dsHeso_Dikem: TDataSource;
    ContractActions: TActionList;
    acCreateMem: TAction;
    acRefreshMem: TAction;
    qryDSHeso: TIBOQuery;
    qryDSHesoPARAM_NO: TWideStringField;
    qryDSHesoPARAM_NAME: TWideStringField;
    acFreeMem: TAction;
    qryResumeDEPT_NAME: TWideStringField;
    qryResumeTITLE_NAME: TWideStringField;
    qryChiTietHD: TIBOQuery;
    WideStringField36: TWideStringField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    WideStringField39: TWideStringField;
    WideStringField40: TWideStringField;
    WideStringField41: TWideStringField;
    WideStringField42: TWideStringField;
    WideStringField43: TWideStringField;
    WideStringField44: TWideStringField;
    DateField3: TDateField;
    DateField4: TDateField;
    BlobField2: TBlobField;
    WideStringField45: TWideStringField;
    BlobField3: TBlobField;
    WideStringField46: TWideStringField;
    WideStringField47: TWideStringField;
    WideStringField48: TWideStringField;
    WideStringField49: TWideStringField;
    WideStringField50: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    dsChiTietHD: TDataSource;
    qryChiTietHDTIME_UNIT_LABEL: TWideStringField;
    qryContractHOTEN_NV: TWideStringField;
    qryHeSo_CongTy: TIBOQuery;
    qryHeSo_CongTyEMPLOYEE_NO: TWideStringField;
    qryHeSo_CongTyWAGE_SCALE: TWideStringField;
    qryHeSo_CongTyWAGE_SCALE_NAME: TWideStringField;
    qryHeSo_CongTyWAGE_LEVEL: TIntegerField;
    qryHeSo_CongTyWAGE_COEFF: TIBOFloatField;
    qryHeSo_CongTyAPPLY_MONTH: TIntegerField;
    qryHeSo_CongTyAPPLY_YEAR: TIntegerField;
    qryHeSo_CongTyAPPLY_PERIOD: TIntegerField;
    qryHeSo_CongTyPERIOD_ID: TIntegerField;
    qryHeSo_CongTyCHANGE_NO: TWideStringField;
    dsHeSo_CongTy: TDataSource;
    ppyHeSo_CongTy: TppDBPipeline;

    procedure qryChitietBonhiemNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryContractCONTRACT_TYPE_NAMEChange(Sender: TField);
    procedure qryContractFULL_NAMEChange(Sender: TField);
    procedure qryContractDEPT_NAMEChange(Sender: TField);
    procedure qryContractPRE_CONTRACT_NAMEChange(Sender: TField);
    procedure qryChitietBonhiemFULL_NAMEChange(Sender: TField);
    procedure qryChitietBonhiemPOSITION_TITLEChange(Sender: TField);
    procedure qryContractNewRecord(DataSet: TDataSet);
    procedure qryChitietDieukhoanNewRecord(DataSet: TDataSet);
    procedure OpenContractData;
    procedure CloseContractData;
    function CreateContract(
      EMPLOYEE_NO: WideString = '';
      FULL_NAME: WideString = '';
      TYPE_NO: WideString = '';
      TYPE_NAME: WideString = '';
      TIME_LIMIT:Integer=1;
      TIME_UNIT:Integer=365;
      TEMPLATE_FILE: WideString = ''): WideString;

    procedure ViewContract(CONTRACT_NO: WIdeString = '');
    procedure qryContractAfterPost(DataSet: TDataSet);
    procedure qryApdung_HesoCBNewRecord(DataSet: TDataSet);
    procedure qryHesoCB_CanhanNewRecord(DataSet: TDataSet);
    procedure qryContractSTARTED_DATEChange(Sender: TField);
    procedure qryContractTIME_LIMITChange(Sender: TField);
    procedure qryContractTIME_UNITChange(Sender: TField);
    procedure acCreateMemExecute(Sender: TObject);
    procedure acRefreshMemExecute(Sender: TObject);
    procedure acFreeMemExecute(Sender: TObject);
    procedure qryContractBeforeDelete(DataSet: TDataSet);
    procedure qryHeSo_CongTyNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    STATE: string;
  public
    { Public declarations }
  end;

var
  ContractDM: TContractDM;

implementation

uses MainDM, ContractMakerForm, PopupMainForm;

{$R *.dfm}

procedure TContractDM.OpenContractData;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TIBOQuery) then
      if not (Components[i] as TIBOQuery).Active then
        (Components[i] as TIBOQuery).Open;
  end;
end;

procedure TContractDM.CloseContractData;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    try
      if Assigned(Components[i]) then
        if (Components[i] is TIBOQuery) then
          if (Components[i] as TIBOQuery).Active then
            (Components[i] as TIBOQuery).Close;
    except
    end
  end;
end;

procedure TContractDM.qryChitietBonhiemNewRecord(DataSet: TDataSet);
begin
  qryChitietBonhiemASSIGNED_DATE.Value := Today;
  qryChitietBonhiemIS_MAIN_POSITION.Value := 1;
  qryChitietBonhiemCONTRACT_NO.Value := qryContractCONTRACT_NO.Value;
  qryChitietBonhiemEMPLOYEE_NO.Value := qryContractEMPLOYEE_NO.Value;
end;

procedure TContractDM.DataModuleCreate(Sender: TObject);
begin
  ApplyOption(TControl(self));
end;

procedure TContractDM.qryContractCONTRACT_TYPE_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'CONTRACT_TYPE_NO');
end;

procedure TContractDM.qryContractFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TContractDM.qryContractDEPT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYER_NO');
end;

procedure TContractDM.qryContractPRE_CONTRACT_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'PRE_CONTRACT_NO');
end;

procedure TContractDM.qryChitietBonhiemFULL_NAMEChange(Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'EMPLOYEE_NO');
end;

procedure TContractDM.qryChitietBonhiemPOSITION_TITLEChange(
  Sender: TField);
begin
  SetNullLink(Sender.DataSet, Sender.FieldName, 'POSITION_NO');
end;

procedure TContractDM.qryContractNewRecord(DataSet: TDataSet);
begin
  qryContractSTARTED_DATE.Value := Today;
  STATE := 'insert';
  qryContractCONTRACT_NO.Value := dmMain.GenerateKeyData(201);
end;

procedure TContractDM.qryChitietDieukhoanNewRecord(DataSet: TDataSet);
begin
  // khoi tao du lieu rieng cho TRUNG DUNG
  qryChitietDieukhoanTHOIGIAN_LAMCHINH.Value := utf8Decode('8 tiếng/ngày');
  qryChitietDieukhoanTHOIGIAN_LAMTHEM.Value :=
    utf8Decode('không quá 4 tiếng/ngày');
  // ket thuc khoi tao rieng cho TRUNG DUNG
end;

function TContractDM.CreateContract(
      EMPLOYEE_NO: WideString;
      FULL_NAME: WideString;
      TYPE_NO: WideString;
      TYPE_NAME: WideString;
      TIME_LIMIT:Integer;
      TIME_UNIT:Integer;
      TEMPLATE_FILE: WideString): WideString;
var
  is_open: boolean;
begin
  inherited;
  if qryContract.Active then
    is_open := true
  else
  begin
    qryContract.SQLWhere.Clear;
    OpenContractData;
    is_open := false;
  end;

  qryContract.Append;
  qryContractEMPLOYEE_NO.Value := EMPLOYEE_NO;
  qryContractFULL_NAME.Value := FULL_NAME;
  qryContractTEMPLATE_FILE.Value := TEMPLATE_FILE;
  qryContractCONTRACT_TYPE_NO.Value := TYPE_NO;
  qryContractCONTRACT_TYPE_NAME.Value := TYPE_NAME;
  qryContractTIME_LIMIT.Value:=TIME_LIMIT;
  qryContractTIME_UNIT.Value:=TIME_UNIT;
  qryContractSTARTED_DATE.Value:=Today;
  qryContractEXPIRED_DATE.Value :=
   qryContractSTARTED_DATE.Value +
   qryContractTIME_LIMIT.AsInteger *qryContractTIME_UNIT.AsInteger;
  with TfrmContractMaker.Create(Self) do
  try
    ShowModal;
    result := qryContractCONTRACT_NO.Value;
  finally
    Free;
  end;

  if is_open = false then
  begin
    CloseContractData;
    qryContract.SQLWhere.Clear;
  end;
end;

procedure TContractDM.ViewContract(CONTRACT_NO: WideString);
var
  is_open: boolean;
  SQL_Where: string;
begin
  inherited;
  if Length(CONTRACT_NO) > 0 then
  begin
    if qryContract.Active then
    begin
      is_open := true;
      SQL_Where := qryContract.SQLWhere.Text;
      CloseContractData;
    end
    else
      is_open := false;

    qryContract.SQLWhere.Text := 'where HR_CONTRACT.CONTRACT_NO=:CONTRACT_NO';
    qryContract.Prepare;
    qryContract.ParamByName('CONTRACT_NO').Value := CONTRACT_NO;
    OpenContractData;

  end;

  if qryContract.IsEmpty then
    ShowMessageUnicode(43)
  else
  begin
    with TfrmContractMaker.Create(Self) do
    try
      ShowModal;
    finally
      Free;
    end;
  end;

  if (Length(CONTRACT_NO) > 0) then
  begin
    CloseContractData;
    qryContract.SQLWhere.Clear;
    if is_open = true then
    begin
      qryContract.SQLWhere.Text := SQL_Where;
      OpenContractData;
    end;
  end;
end;

procedure TContractDM.qryContractAfterPost(DataSet: TDataSet);
begin
  if STATE = 'insert' then
  begin
    dmMain.IncreaseKeyData(201);
  end;
  STATE := '';
  dmMain.DefOnAfterPost(Dataset);
end;

procedure TContractDM.qryApdung_HesoCBNewRecord(DataSet: TDataSet);
begin
  qryApdung_HesoCBCHANGE_NO.Value:=qryContractCONTRACT_NO.Value;
  qryApdung_HesoCBCHANGE_NAME.Value:=qryContractCONTRACT_NAME.Value;
  qryApdung_HesoCBFROM_CONTRACT.Value:=qryContractCONTRACT_NO.Value;
end;

procedure TContractDM.qryHesoCB_CanhanNewRecord(DataSet: TDataSet);
begin
  if qryApdung_HesoCB.RecordCount=0 then
  begin
    qryApdung_HesoCB.Insert;
    qryApdung_HesoCB.Post;
  end;
  if not (qryHesoCB_Canhan.State in [dsInsert,dsEdit]) then
    qryHesoCB_Canhan.Append;
  qryHesoCB_CanhanEMPLOYEE_NO.Value:=qryContractEMPLOYEE_NO.Value;
  qryHesoCB_CanhanCHANGE_NO.Value:=qryContractCONTRACT_NO.Value;
  qryHesoCB_CanhanAPPLY_MONTH.Value:=MonthOf(qryContractSTARTED_DATE.Value);
  qryHesoCB_CanhanAPPLY_YEAR.Value:=YearOf(qryContractSTARTED_DATE.Value);
  qryHesoCB_CanhanAPPLY_PERIOD.Value:=1;
end;

procedure TContractDM.qryContractSTARTED_DATEChange(Sender: TField);
begin
   qryContractEXPIRED_DATE.Value :=
   qryContractSTARTED_DATE.Value +
   qryContractTIME_LIMIT.AsInteger *qryContractTIME_UNIT.AsInteger;
end;   
procedure TContractDM.qryContractTIME_LIMITChange(Sender: TField);
begin
 if qryContractTIME_LIMIT.IsNull or qryContractTIME_UNIT.IsNull then exit
 else
  qryContractEXPIRED_DATE.Value :=
  qryContractSTARTED_DATE.Value +
  qryContractTIME_LIMIT.AsInteger *qryContractTIME_UNIT.AsInteger;
end;

procedure TContractDM.qryContractTIME_UNITChange(Sender: TField);
begin
if qryContractTIME_LIMIT.IsNull or qryContractTIME_UNIT.IsNull then exit
 else
  qryContractEXPIRED_DATE.Value :=
  qryContractSTARTED_DATE.Value +
  qryContractTIME_LIMIT.AsInteger *qryContractTIME_UNIT.AsInteger;
end;

procedure TContractDM.acCreateMemExecute(Sender: TObject);
var i:integer;
    f:TFloatField;
begin
  if memHesoDikem.Active then memHesoDikem.Close;
  if memHesoDikem.FieldCount>1 then
    for i:=memHesoDikem.FieldCount-1 downto 1 do memHesoDikem.Fields[i].Free;
  qryDSHeso.Open;
  if not qryDSHeso.IsEmpty then
  begin
    qryDSHeso.First;
    while not qryDSHeso.Eof do
    begin
      f:=TFloatField.Create(memHesoDikem);
      f.Name:='memHesoDikem'+qryDSHesoPARAM_NO.AsString;
      f.FieldName:=qryDSHesoPARAM_NO.AsString;
      f.SetFieldType(ftFloat);
      f.DataSet:=memHesoDikem;
      f.FieldKind := fkData;
      f.DisplayFormat := sysConfig.FloatFormat;
      qryDSHeso.Next;
    end;
  end;
  qryDSHeso.Close;
end;

procedure TContractDM.acRefreshMemExecute(Sender: TObject);
begin
  if memHesoDikem.Active then
    memHesoDikem.Close;
  memHesoDikem.Open;
  if not qryHesoDikem.IsEmpty then
  begin
    memHesoDikem.Insert;
    qryHEsoDikem.First;
    while not qryHesoDikem.Eof do
    begin
      try
        memHesoDikem.FieldByName(qryHesoDikemPARAM_NO.AsString).Value:=
          qryHesoDikemPARAM_VALUE.Value;
      except
      end;
      qryHesoDikem.Next;
    end;
    memHesoDikem.Post;
  end;
end;

procedure TContractDM.acFreeMemExecute(Sender: TObject);
var i:integer;
begin
   if memHesoDikem.Active then memHesoDikem.Close;
  if memHesoDikem.FieldCount>1 then
    for i:=memHesoDikem.FieldCount-1 downto 1 do memHesoDikem.Fields[i].Free;
end;

procedure TContractDM.qryContractBeforeDelete(DataSet: TDataSet);
begin
//
end;

procedure TContractDM.qryHeSo_CongTyNewRecord(DataSet: TDataSet);
begin
  if qryApdung_HesoCB.RecordCount=0 then
  begin
    qryApdung_HesoCB.Insert;
    qryApdung_HesoCB.Post;
  end;
  if not (qryHeSo_CongTy.State in [dsInsert,dsEdit]) then
    qryHeSo_CongTy.Append;
  qryHeSo_CongTyEMPLOYEE_NO.Value:=qryContractEMPLOYEE_NO.Value;
  qryHeSo_CongTyCHANGE_NO.Value:=qryContractCONTRACT_NO.Value;
  qryHeSo_CongTyAPPLY_MONTH.Value:=MonthOf(qryContractSTARTED_DATE.Value);
  qryHeSo_CongTyAPPLY_YEAR.Value:=YearOf(qryContractSTARTED_DATE.Value);
  qryHeSo_CongTyAPPLY_PERIOD.Value:=1;
end;

end.

