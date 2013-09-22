unit Luong_TaoPAForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ExtCtrls,
  dxLayoutControl, cxControls, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  dxCntner, StdCtrls, ElCLabel, ElLabel, ElBtnCtl, ElPopBtn, ActnList, DB,
  IBODataset, ElPgCtl, ImgList, dxTL, dxDBCtrl, dxDBGrid, dxfProgressBar,
  IB_Components, IB_Process, IB_Script, dxDBTLCl, dxGrClms;

type
  TfrmLuong_TaoPA = class(TfrmBase)
    dximgLogo: TImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxPALuong_Maso: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Item9: TdxLayoutItem;
    Bevel1: TBevel;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElLabel4: TElLabel;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    Bevel2: TBevel;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    dsPALuong: TDataSource;
    qryPALuong: TIBOQuery;
    qryPALuongPA_KYHIEU: TWideStringField;
    qryPALuongPA_TEN: TWideStringField;
    qryPALuongPA_THANGNAM_APDUNG: TIntegerField;
    qryPALuongPA_THANGNAM_HETHAN: TIntegerField;
    qryPALuongPA_PHANLOAI: TWideStringField;
    qryPALuongPA_NGUOILAP: TWideStringField;
    qryPALuongPA_NGAYLAP: TDateField;
    qryPALuongTEN_NGUOILAP: TWideStringField;
    Bevel3: TBevel;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxDBSpinEdit4: TdxDBSpinEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    qryPALuongPA_TUTHANG: TIntegerField;
    qryPALuongPA_TUNAM: TIntegerField;
    qryPALuongPA_DENTHANG: TIntegerField;
    qryPALuongPA_DENNAM: TIntegerField;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxDBImageEdit1: TdxDBImageEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    pageMain: TElPageControl;
    tabPhuongan: TElTabSheet;
    tabNhanvien: TElTabSheet;
    qryPALuongKEY_ID: TIntegerField;
    qryPALuongPA_GHICHU: TWideStringField;
    ImageList1: TImageList;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dsNhanvien: TDataSource;
    qryNhanvien: TIBOQuery;
    qryNhanvienKEY_ID: TIntegerField;
    qryNhanvienMA_PA: TIntegerField;
    qryNhanvienMA_NHANVIEN: TWideStringField;
    qryNhanvienHO_TEN: TWideStringField;
    qryNhanvienMA_VITRI: TWideStringField;
    qryNhanvienDEPT_NAME: TWideStringField;
    qryNhanvienTITLE_NAME: TWideStringField;
    gridNhanvien: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    gridNhanvienMA_NHANVIEN: TdxDBGridColumn;
    gridNhanvienHO_TEN: TdxDBGridColumn;
    gridNhanvienDEPT_NAME: TdxDBGridColumn;
    gridNhanvienTITLE_NAME: TdxDBGridColumn;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    acDong: TAction;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    acChonNhanvien: TAction;
    acGetSelectedEmployee: TAction;
    barProgress: TdxfProgressBar;
    dxLayoutControl2Item4: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    acXoaNhanvien: TAction;
    qryNhanvienMA_DONVI: TWideStringField;
    qryNhanvienMA_CHUCVU: TWideStringField;
    qryExecute: TIB_Script;
    ElTabSheet1: TElTabSheet;
    gridPhanQuyen: TdxDBGrid;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Item2: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    acPhatSinh: TAction;
    dxLayoutControl3Item3: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    qryPhanQuyen: TIBOQuery;
    dsPhanQuyen: TDataSource;
    qryPhanQuyenKEY_ID: TIntegerField;
    qryPhanQuyenMA_PA: TIntegerField;
    qryPhanQuyenUSERACCID: TWideStringField;
    qryPhanQuyenSUBSYSTEMID: TSmallintField;
    qryPhanQuyenALLOW_VIEW: TSmallintField;
    qryPhanQuyenALLOW_EDIT: TSmallintField;
    qryPhanQuyenALLOW_DELETE: TSmallintField;
    qryPhanQuyenALLOW_ADD: TSmallintField;
    qryPhanQuyenDISPLAYNAME: TWideStringField;
    gridPhanQuyenUSERACCID: TdxDBGridColumn;
    gridPhanQuyenDISPLAYNAME: TdxDBGridColumn;
    gridPhanQuyenALLOW_VIEW: TdxDBGridCheckColumn;
    gridPhanQuyenALLOW_EDIT: TdxDBGridCheckColumn;
    gridPhanQuyenALLOW_DELETE: TdxDBGridCheckColumn;
    gridPhanQuyenALLOW_ADD: TdxDBGridCheckColumn;
    qryInitUser: TIBOQuery;
    procedure acDongyUpdate(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure qryPALuongNewRecord(DataSet: TDataSet);
    procedure qryPALuongBeforePost(DataSet: TDataSet);
    procedure acDongExecute(Sender: TObject);
    procedure acChonNhanvienExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acGetSelectedEmployeeExecute(Sender: TObject);
    procedure gridNhanvienDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure acXoaNhanvienUpdate(Sender: TObject);
    procedure acXoaNhanvienExecute(Sender: TObject);
    procedure qryNhanvienBeforeDelete(DataSet: TDataSet);
    procedure pageMainChange(Sender: TObject);
    procedure acPhatSinhExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOWner: TComponent; MA_PHUONGAN: Widestring = '');
  end;

var
  frmLuong_TaoPA: TfrmLuong_TaoPA;

implementation

uses MainDM, DateUtils,  ChonNV_PAForm;

{$R *.dfm}

constructor TfrmLuong_TaoPA.Create(AOWner: TComponent; MA_PHUONGAN: Widestring);
begin
  inherited Create(AOWner);
  qryPALuong.ParamByName('PA_KYHIEU').Value := MA_PHUONGAN;
  qryPALuong.Open;
  if not qryPALuong.IsEmpty then
    dxPALuong_Maso.Enabled := false;
  qryNhanvien.Open;
  qryPhanQuyen.Open;  
  pageMain.ActivepageIndex:=0;
end;

procedure TfrmLuong_TaoPA.acDongyUpdate(Sender: TObject);
begin
  inherited;
  acDongy.Enabled := (qryPALuong.State in [dsEdit, dsInsert]);
end;

procedure TfrmLuong_TaoPA.acDongyExecute(Sender: TObject);
begin
  inherited;
  try
    qryPALuong.Post;
     qryExecute.SQL.Clear;
    //khoi tao bang luong
    if qryPALuong.ParamByName('PA_KYHIEU').Value = '' then
    begin

      //=====================tao TABLE WAGEBOOK ==========================================
      qryExecute.SQL.Add(
        'CREATE TABLE WB_' + qryPALuongPA_KYHIEU.AsString +
        ' ( WB_KEY_ID DM_ID_DATA NOT NULL, ' +
        '  MA_NHANVIEN DM_VARCHAR30 NOT NULL, ' +
        '  MA_DONVI DM_VARCHAR15 NOT NULL,     ' +
        '  MA_CHUCVU DM_VARCHAR15 NOT NULL,    ' +
        '  MA_DOT DM_INTEGER,              ' +
        '  MA_THANG DM_INTEGER,              ' +
        '  MA_NAM DM_INTEGER,'+
        '  THUTU_DV DM_INTEGER,'+
        '  THUTU_NV  DM_INTEGER);');


      qryExecute.SQL.Add(
        ' ALTER TABLE WB_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint PK_WB_' + qryPALuongPA_KYHIEU.AsString +
        ' primary key (WB_KEY_ID);');

      qryExecute.SQL.Add(
        ' alter table WB_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint FK_WB_' + qryPALuongPA_KYHIEU.AsString +
        ' foreign key (MA_NHANVIEN) ' +
        ' references HR_EMPLOYEE(EMPLOYEE_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');

      qryExecute.SQL.Add(
        ' alter table WB_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint FK_WB_' + qryPALuongPA_KYHIEU.AsString + '_1' +
        ' foreign key (MA_DONVI) ' +
        ' references HR_DEPARTMENT(DEPT_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');


      qryExecute.SQL.Add(
        ' alter table WB_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint FK_WB_' + qryPALuongPA_KYHIEU.AsString + '_2' +
        ' foreign key (MA_CHUCVU) ' +
        ' references HR_TITLE(TITLE_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');
      //================tao TABLE WAGE_DEPT_CONST==============================
      qryExecute.SQL.Add(
        'CREATE TABLE WD_' + qryPALuongPA_KYHIEU.AsString +
        ' ( MA_DONVI DM_VARCHAR15 NOT NULL);    ');
      qryExecute.SQL.Add(
        ' ALTER TABLE WD_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint PK_WD_' + qryPALuongPA_KYHIEU.AsString +
        ' primary key (MA_DONVI);');
       qryExecute.SQL.Add(
        ' alter table WD_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint FK_WD_' + qryPALuongPA_KYHIEU.AsString +
        ' foreign key (MA_DONVI) ' +
        ' references HR_DEPARTMENT(DEPT_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');

      //================tao TABLE WAGE_TITLE_CONST==============================
      qryExecute.SQL.Add(
        'CREATE TABLE WT_' + qryPALuongPA_KYHIEU.AsString +
        ' ( MA_CHUCVU DM_VARCHAR15 NOT NULL);    ');
      qryExecute.SQL.Add(
        ' ALTER TABLE WT_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint PK_WT_' + qryPALuongPA_KYHIEU.AsString +
        ' primary key (MA_CHUCVU);');
       qryExecute.SQL.Add(
        ' alter table WT_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint FK_WT_' + qryPALuongPA_KYHIEU.AsString +
        ' foreign key (MA_CHUCVU) ' +
        ' references HR_TITLE(TITLE_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');

      //================tao TABLE WAGE_POSITION_CONST==============================
      qryExecute.SQL.Add(
        'CREATE TABLE WP_' + qryPALuongPA_KYHIEU.AsString +
        ' ( MA_VITRI DM_VARCHAR30 NOT NULL);    ');
      qryExecute.SQL.Add(
        ' ALTER TABLE WP_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint PK_WP_' + qryPALuongPA_KYHIEU.AsString +
        ' primary key (MA_VITRI);');
       qryExecute.SQL.Add(
        ' alter table WP_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint FK_WP_' + qryPALuongPA_KYHIEU.AsString +
        ' foreign key (MA_VITRI) ' +
        ' references HR_POSITION(POSITION_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');

      //================tao TABLE WAGE_EMPLOYEE_CONST==============================
      qryExecute.SQL.Add(
        'CREATE TABLE WE_' + qryPALuongPA_KYHIEU.AsString +
        ' ( MA_NHANVIEN DM_VARCHAR30 NOT NULL);    ');
      qryExecute.SQL.Add(
        ' ALTER TABLE WE_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint PK_WE_' + qryPALuongPA_KYHIEU.AsString +
        ' primary key (MA_NHANVIEN);');
       qryExecute.SQL.Add(
        ' alter table WE_' + qryPALuongPA_KYHIEU.AsString +
        ' add constraint FK_WE_' + qryPALuongPA_KYHIEU.AsString +
        ' foreign key (MA_NHANVIEN) ' +
        ' references HR_EMPLOYEE(EMPLOYEE_NO) ' +
        ' on delete CASCADE ' +
        ' on update CASCADE; ');

     //===========tao GENERATOR va TRIGGER==========================
      qryExecute.SQL.Add(
        ' CREATE SEQUENCE GEN_WB_' + qryPALuongPA_KYHIEU.AsString + '_ID;');
 {
      qryExecute.SQL.Add(' SET TERM ^ ; ');
      qryExecute.SQL.Add(
      ' CREATE OR ALTER TRIGGER WB_'+qryPALuongPA_KYHIEU.AsString+'AI FOR WB_'+qryPALuongPA_KYHIEU.AsString+' '+
      ' active after insert position 0 '+
      ' AS '+
      ' begin '+
      '  insert into wf_'+qryPALuongPA_KYHIEU.AsString+' '+
      '  (wb_key_id, ma_nhanvien,ma_donvi,ma_chucvu,ma_thang,ma_nam) '+
      '   values '+
      '  (new.wb_key_id,new.ma_nhanvien,new.ma_donvi,new.ma_chucvu,new.ma_thang,new.ma_nam); '+

      '  insert into lg_'+qryPALuongPA_KYHIEU.AsString+' '+
      '  (wb_key_id, ma_nhanvien,ma_donvi,ma_chucvu,ma_thang,ma_nam) '+
      '   values '+
      '  (new.wb_key_id,new.ma_nhanvien,new.ma_donvi,new.ma_chucvu,new.ma_thang,new.ma_nam); '+
      ' end ');
      qryExecute.SQL.Add(' ^ ');
      qryExecute.SQL.Add(' SET TERM ; ^ ');

       qryExecute.SQL.Add(' SET TERM ^ ; ');
      qryExecute.SQL.Add(
      ' CREATE OR ALTER TRIGGER WB_'+qryPALuongPA_KYHIEU.AsString+'AD FOR WB_'+qryPALuongPA_KYHIEU.AsString+' '+
      ' active after delete position 0 '+
      ' AS '+
      ' begin '+
      '  delete from wf_'+qryPALuongPA_KYHIEU.AsString+' '+
      '  where wb_key_id=old.wb_key_id;'+
      '  delete from lg_'+qryPALuongPA_KYHIEU.AsString+' '+
      '  where wb_key_id=old.wb_key_id;'+
      ' end ');
      qryExecute.SQL.Add(' ^ ');
      qryExecute.SQL.Add(' SET TERM ; ^ ');
}
      qryExecute.SQL.Add(' SET TERM ^ ; ');
      qryExecute.SQL.Add(
        ' CREATE TRIGGER WB_' + qryPALuongPA_KYHIEU.AsString + '_BI FOR WB_' +
        qryPALuongPA_KYHIEU.AsString +
        ' ACTIVE BEFORE INSERT POSITION 0 ' +
        ' AS ' +
        ' BEGIN ' +
        ' IF (NEW.WB_KEY_ID IS NULL) THEN ' +
        '   NEW.WB_KEY_ID = GEN_ID(GEN_WB_' + qryPALuongPA_KYHIEU.AsString +
        '_ID,1); ' +
        ' IF (NEW.THUTU_NV IS NULL) THEN '+
        '  select first 1 hr_assignment.display_index '+
        '  from hr_assignment '+
        '  where hr_assignment.employee_no=new.ma_nhanvien and '+
        '  hr_assignment.position_no=new.ma_chucvu||''-''||new.ma_donvi '+
        '   order by hr_assignment.is_main_position desc '+
        '  into new.thutu_nv; '+
        ' IF (NEW.THUTU_DV IS NULL) THEN '+
        '  select first 1 hr_department.display_index '+
        '  from hr_department '+
        '  where hr_department.dept_no=new.ma_donvi'+
        '  into new.thutu_dv; '+
        ' END   ');
      qryExecute.SQL.Add(' ^ ');
      qryExecute.SQL.Add(' SET TERM ; ^ ');
//      qryExecute.SQL.SaveToFile('H:\temp.txt');
      qryExecute.Execute;
      ShowMessageUnicode(82);
      pageMain.ActivePageIndex := 1;
    end;
  except
    ShowMessageUnicode(83);
  end;
end;

procedure TfrmLuong_TaoPA.acBoquaExecute(Sender: TObject);
begin
  inherited;
  if qryPALuong.State in [dsInsert, dsEdit] then
    qryPALuong.Cancel;
  ModalResult := mrCancel;
end;

procedure TfrmLuong_TaoPA.qryPALuongNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryPALuongPA_NGAYLAP.Value := Today;
  qryPALuongPA_NGUOILAP.Value := sysConfig.User;
  qryPALuongTEN_NGUOILAP.Value := sysConfig.Username;
  qryPALuongPA_TUTHANG.Value := MonthOf(Now);
  qryPALuongPA_TUNAM.Value := YearOf(Now);
  qryPALuongPA_PHANLOAI.Value := 'PA_APDUNG';
end;

procedure TfrmLuong_TaoPA.qryPALuongBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryPALuongPA_THANGNAM_APDUNG.Value :=
    qryPALuongPA_TUTHANG.Value - 1 + 12 * qryPALuongPA_TUNAM.Value;
  if qryPALuongPA_DENTHANG.IsNull or
    qryPALuongPA_DENNAM.IsNull then
    qryPALuongPA_THANGNAM_HETHAN.Clear
  else
    qryPALuongPA_THANGNAM_HETHAN.Value :=
      qryPALuongPA_DENTHANG.Value - 1 + 12 * qryPALuongPA_DENNAM.Value;
  dmmain.DefOnBeforePost(Dataset);

end;

procedure TfrmLuong_TaoPA.acDongExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
end;

procedure TfrmLuong_TaoPA.acChonNhanvienExecute(Sender: TObject);
begin
  inherited;
  if not assigned(frmChonNV_PA) then
    frmChonNV_PA:=TfrmChonNV_PA.Create(self);
  frmChonNV_PA.Show;
end;

procedure TfrmLuong_TaoPA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(frmChonNV_PA) then
    frmChonNV_PA.Close;
end;

procedure TfrmLuong_TaoPA.acGetSelectedEmployeeExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frmChonNV_PA) then exit;
  if frmChonNV_PA.memData.IsEmpty then exit;
  frmChonNV_PA.memData.First;
  qryNhanvien.DisableControls;
  barProgress.Max:=frmChonNV_PA.memData.RecordCount;
  barProgress.Position:=0;
  while not frmChonNV_PA.memData.Eof do
  begin
    if not (qryNhanvien.State in [dsInsert]) then
      qryNhanvien.Append;
    qryNhanvienMA_PA.Value:=qryPALuongKEY_ID.Value;
    qryNhanvien.FieldByName('MA_NHANVIEN').Value:=frmChonNV_PA.memData.FieldByName('EMP_NO').Value;
    qryNhanvien.FieldByName('HO_TEN').Value:=frmChonNV_PA.memData.FieldByName('FULL_NAME').Value;
    qryNhanvien.FieldByName('MA_VITRI').Value:=frmChonNV_PA.memData.FieldByName('POSITION_NO').Value;
    qryNhanvien.FieldByName('DEPT_NAME').Value:=frmChonNV_PA.memData.FieldByName('DEPT_NAME').Value;
    qryNhanvien.FieldByName('TITLE_NAME').Value:=frmChonNV_PA.memData.FieldByName('TITLE_NAME').Value;
    qryNhanvien.FieldByName('MA_DONVI').Value:=frmChonNV_PA.memData.FieldByName('DEPT_NO').Value;
    qryNhanvien.FieldByName('MA_CHUCVU').Value:=frmChonNV_PA.memData.FieldByName('TITLE_NO').Value;

    TRY
      qryNhanvien.Post;
    EXCEPT
      qryNhanvien.Cancel;
    END;
    frmChonNV_PA.memData.Next;
    barProgress.StepIt;
  end;
  qryNhanvien.EnableControls;
end;

procedure TfrmLuong_TaoPA.gridNhanvienDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Assigned(frmChonNV_PA) then
    frmChonNV_PA.SetFocusForm(self)
end;

procedure TfrmLuong_TaoPA.acXoaNhanvienUpdate(Sender: TObject);
begin
  inherited;
  acXoaNhanvien.Enabled:=(qryNhanvien.IsEmpty=false) and
      not (qryNhanvien.State in [dsInsert,dsEdit]);
end;

procedure TfrmLuong_TaoPA.acXoaNhanvienExecute(Sender: TObject);
begin
  inherited;
  if gridNhanvien.SelectedCount>1 then
    gridNhanvien.DeleteSelection
  else
    qryNhanvien.Delete;
end;

procedure TfrmLuong_TaoPA.qryNhanvienBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //  do nothing
end;

procedure TfrmLuong_TaoPA.pageMainChange(Sender: TObject);
begin
  inherited;
  //Added by THUYPTP - 17/4/2009
  if qryPALuong.State in [dsInsert,dsEdit] then
    if ShowMessageUnicode(6)= mrYes then
      acDongy.Execute
    else
      acBoqua.Execute;   
end;

procedure TfrmLuong_TaoPA.acPhatSinhExecute(Sender: TObject);
begin
  inherited;
  //Added by THUYPTP - 23/2/2010
  qryInitUser.ParamByName('KEY_ID').Value := qryPALuongKEY_ID.Value;
  dmMain.ExecuteSQL(qryInitUser);
  qryPhanQuyen.Refresh;
end;

end.

