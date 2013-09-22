//******************************************************************//
//************** Create form by THUYPTP - 04/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_TaoMauForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxfProgressBar, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxLayoutControl,
  dxEdLib, dxDBELib, ElBtnCtl, ElPopBtn, dxEditor, ExtCtrls, StdCtrls,
  ElCLabel, ElLabel, cxControls, ElPgCtl, DB, ActnList, IBODataset,
  IB_Components, IB_Process, IB_Script, jpeg;

type
  TfrmBAOHIEM_TaoMau = class(TfrmBase)
    pageMain: TElPageControl;
    tabDinhNghia: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dximgLogo: TImage;
    ElLabel1: TElLabel;
    Bevel1: TBevel;
    ElLabel4: TElLabel;
    Bevel2: TBevel;
    dxMauBHXH_Maso: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxDBSpinEdit4: TdxDBSpinEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxDBMemo1: TdxDBMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    qryExecute: TIB_Script;
    qryMauBHXH: TIBOQuery;
    ActionList1: TActionList;
    acDongy: TAction;
    acDong: TAction;
    qryMauBHXHKEY_ID: TIntegerField;
    qryMauBHXHMAU_KYHIEU: TWideStringField;
    qryMauBHXHMAU_TEN: TWideStringField;
    qryMauBHXHMAU_THANGNAM_APDUNG: TIntegerField;
    qryMauBHXHMAU_THANGNAM_HETHAN: TIntegerField;
    qryMauBHXHMAU_PHANLOAI: TWideStringField;
    qryMauBHXHMAU_NGUOILAP: TWideStringField;
    qryMauBHXHTEN_NGUOILAP: TWideStringField;
    qryMauBHXHMAU_NGAYLAP: TDateField;
    qryMauBHXHMAU_GHICHU: TWideStringField;
    qryMauBHXHMAU_TUTHANG: TIntegerField;
    qryMauBHXHMAU_TUNAM: TIntegerField;
    qryMauBHXHMAU_DENTHANG: TIntegerField;
    qryMauBHXHMAU_DENNAM: TIntegerField;
    dsMauBHXH: TDataSource;
    procedure acDongyUpdate(Sender: TObject);
    procedure qryMauBHXHNewRecord(DataSet: TDataSet);
    procedure qryMauBHXHBeforePost(DataSet: TDataSet);
    procedure acDongExecute(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOWner: TComponent; MA_MAUBHXH: Widestring = '');
  end;

var
  frmBAOHIEM_TaoMau: TfrmBAOHIEM_TaoMau;

implementation

uses MainDM, DateUtils;

{$R *.dfm}

constructor TfrmBAOHIEM_TaoMau.Create(AOWner: TComponent; MA_MAUBHXH: Widestring);
begin
  inherited Create(AOWner);
  qryMauBHXH.ParamByName('MAU_KYHIEU').Value := MA_MAUBHXH;
  qryMauBHXH.Open;
  if not qryMauBHXH.IsEmpty then
    dxMauBHXH_Maso.Enabled := false;
  pageMain.ActivepageIndex:=0;
end;

procedure TfrmBAOHIEM_TaoMau.acDongyUpdate(Sender: TObject);
begin
  inherited;
  acDongy.Enabled := (qryMauBHXH.State in [dsEdit, dsInsert]);
end;

procedure TfrmBAOHIEM_TaoMau.qryMauBHXHNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryMauBHXHMAU_NGAYLAP.Value := Today;
  qryMauBHXHMAU_NGUOILAP.Value := sysConfig.User;
  qryMauBHXHTEN_NGUOILAP.Value := sysConfig.Username;
  qryMauBHXHMAU_TUTHANG.Value := MonthOf(Now);
  qryMauBHXHMAU_TUNAM.Value := YearOf(Now);
  qryMauBHXHMAU_PHANLOAI.Value := 'BHXH_APDUNG';
end;

procedure TfrmBAOHIEM_TaoMau.qryMauBHXHBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryMauBHXHMAU_THANGNAM_APDUNG.Value :=
    qryMauBHXHMAU_TUTHANG.Value - 1 + 12 * qryMauBHXHMAU_TUNAM.Value;
  if qryMauBHXHMAU_DENTHANG.IsNull or
    qryMauBHXHMAU_DENNAM.IsNull then
    qryMauBHXHMAU_THANGNAM_HETHAN.Clear
  else
    qryMauBHXHMAU_THANGNAM_HETHAN.Value :=
      qryMauBHXHMAU_DENTHANG.Value - 1 + 12 * qryMauBHXHMAU_DENNAM.Value;
  dmmain.DefOnBeforePost(Dataset);
end;

procedure TfrmBAOHIEM_TaoMau.acDongExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
end;

procedure TfrmBAOHIEM_TaoMau.acDongyExecute(Sender: TObject);
begin
  inherited;
  try
    qryMauBHXH.Post;
     qryExecute.SQL.Clear;
    //khoi tao bang luong
    if qryMauBHXH.ParamByName('MAU_KYHIEU').Value = '' then
    begin

      //=====================tao TABLE ==========================================
      qryExecute.SQL.Add(
        'CREATE TABLE HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        ' ( BAOHIEM_KEY_ID DM_ID_DATA NOT NULL, ' +
        '  MA_THANG DM_INTEGER,              ' +
        '  MA_NAM DM_INTEGER,'+
        '  MA_DOT DM_INTEGER,'+
        '  MA_NHANVIEN DM_VARCHAR30 NOT NULL, ' +
        '  MA_DONVI DM_VARCHAR15 NOT NULL,     ' +
        '  MA_CHUCVU DM_VARCHAR15 NOT NULL,    ' +   
        '  PHAN_NHOM DM_VARCHAR63,'+
        '  SO_DANGKY_BHXH DM_VARCHAR30,'+
        '  SOPHIEU_KCB DM_VARCHAR30, ' +
        '  BAOHIEM_CAUHINH_ID  DM_INTEGER );');


      qryExecute.SQL.Add(
        ' ALTER TABLE HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        ' add constraint PK_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        ' primary key (BAOHIEM_KEY_ID);');

      qryExecute.SQL.Add(
        ' alter table HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        ' add constraint FK_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        ' foreign key (MA_NHANVIEN) ' +
        ' references HR_EMPLOYEE(EMPLOYEE_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');

      qryExecute.SQL.Add(
        ' alter table HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        ' add constraint FK_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString + '_1' +
        ' foreign key (MA_DONVI) ' +
        ' references HR_DEPARTMENT(DEPT_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; '); 

      qryExecute.SQL.Add(
        ' alter table HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        ' add constraint FK_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString + '_2' +
        ' foreign key (MA_CHUCVU) ' +
        ' references HR_TITLE(TITLE_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');


     //===========tao GENERATOR va TRIGGER==========================
      qryExecute.SQL.Add(
        ' CREATE SEQUENCE GEN_HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString + '_ID;');

      qryExecute.SQL.Add(' SET TERM ^ ; ');
      qryExecute.SQL.Add(
        ' CREATE TRIGGER HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString + '_BI FOR HR_BAOHIEM_' +
        qryMauBHXHMAU_KYHIEU.AsString +
        ' ACTIVE BEFORE INSERT POSITION 0 ' +
        ' AS ' +
        ' BEGIN ' +
        ' IF (NEW.BAOHIEM_KEY_ID IS NULL) THEN ' +
        '   NEW.BAOHIEM_KEY_ID = GEN_ID(GEN_HR_BAOHIEM_' + qryMauBHXHMAU_KYHIEU.AsString +
        '_ID,1); ' +
        ' END   ');
      qryExecute.SQL.Add(' ^ ');
      qryExecute.SQL.Add(' SET TERM ; ^ ');
      qryExecute.Execute;
      ShowMessageUnicode(121);
      ModalResult:=mrOk;
    end;
  except
    ShowMessageUnicode(122);
  end;
end;

end.
