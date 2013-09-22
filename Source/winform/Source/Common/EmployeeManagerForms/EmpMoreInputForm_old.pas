unit EmpMoreInputForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ActnList, dxEditor, dxEdLib,
  dxDBTLCl, dxGrClms,ElUnicodeStrings;

type
  TfrmEmpMoreInput = class(TfrmListBase)
    ActionList1: TActionList;
    acGetData: TAction;
    dximOption: TdxImageEdit;
    dxlcMainItem3: TdxLayoutItem;
    dxdbgMainEMPLOYEE_NO: TdxDBGridColumn;
    dxdbgMainFULL_NAME: TdxDBGridColumn;
    dxdbgMainIMG_TYPE: TdxDBGridColumn;
    dxdbgMainPORTRAIT: TdxDBGridGraphicColumn;
    dxlcMainGroup1: TdxLayoutGroup;
    dxDisplayPortrait: TdxCheckEdit;
    dxlcMainItem4: TdxLayoutItem;
    acChangeOption: TAction;
    qryListPORTRAIT: TBlobField;
    qryListIMG_TYPE: TWideStringField;
    qryListEMPLOYEE_NO: TWideStringField;
    qryListFULL_NAME: TWideStringField;
    qryListNGAY_VAO_DANG: TDateField;
    qryListNGAY_VAO_DOAN: TDateField;
    qryListCHUC_VU_DANG: TWideStringField;
    qryListCHUC_VU_DOAN: TWideStringField;
    qryListTRINH_DO: TWideStringField;
    qryListTEN_TRINH_DO: TWideStringField;
    qryListCONGVIEC_LAUNHAT: TWideStringField;
    qryListSOTRUONG_CTAC: TWideStringField;
    qryListNAM_TOTNGHIEP: TIntegerField;
    qryListTOTNGHIEP_TAI: TWideStringField;
    qryListNGAY_VAO_CDOAN: TDateField;
    qryListCHUC_VU_CDOAN: TWideStringField;
    qryListNGHE_NGHIEP: TWideStringField;
    qryListTEN_NGHE_NGHIEP: TWideStringField;
    qryListNGAY_VAO_CONGTY: TDateField;
    qryListTEN_CHUCVU_DANG: TWideStringField;
    qryListTEN_CHUCVU_DOAN: TWideStringField;
    qryListTEN_CHUCVU_CDOAN: TWideStringField;
    qryListTRINHDO_VANHOA: TWideStringField;
    qryListACADEMIC_NAME: TWideStringField;
    qryListCHIEU_CAO: TIBOFloatField;
    qryListCAN_NANG: TIBOFloatField;
    qryListDAUVET_DACBIET: TWideStringField;
    dxdbgMainNGAY_VAO_DANG: TdxDBGridDateColumn;
    dxdbgMainNGAY_VAO_DOAN: TdxDBGridDateColumn;
    dxdbgMainCONGVIEC_LAUNHAT: TdxDBGridColumn;
    dxdbgMainSOTRUONG_CTAC: TdxDBGridColumn;
    dxdbgMainTOTNGHIEP_TAI: TdxDBGridColumn;
    dxdbgMainNGAY_VAO_CDOAN: TdxDBGridDateColumn;
    dxdbgMainNGAY_VAO_CONGTY: TdxDBGridDateColumn;
    dxdbgMainDAUVET_DACBIET: TdxDBGridColumn;
    dxdbgMainACADEMIC_NAME: TdxDBGridMRUColumn;
    dxdbgMainTEN_TRINH_DO: TdxDBGridMRUColumn;
    dxdbgMainTEN_NGHE_NGHIEP: TdxDBGridMRUColumn;
    dxdbgMainTEN_CHUCVU_DOAN: TdxDBGridMRUColumn;
    dxdbgMainTEN_CHUCVU_DANG: TdxDBGridMRUColumn;
    dxdbgMainTEN_CHUCVU_CDOAN: TdxDBGridMRUColumn;
    dxdbgMainCHIEU_CAO: TdxDBGridCalcColumn;
    dxdbgMainCAN_NANG: TdxDBGridCalcColumn;
    dxdbgMainNAM_TOTNGHIEP: TdxDBGridSpinColumn;
    procedure acGetDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dximOptionChange(Sender: TObject);
    procedure acChangeOptionExecute(Sender: TObject);
  private
    { Private declarations }
    STATE: string;
    id_list,value_list:TElWideStrings;
  public
    { Public declarations }
  end;

var
  frmEmpMoreInput: TfrmEmpMoreInput;

implementation

uses MainDM, EmployeeListForm, MarrialStatusListForm, SSP_Library, BaseFrm,
  NationListForm, RaceListForm, ReligionListForm, DescentListForm,
  CurrencyListForm, AcademicListForm, EduLevelListForm, CareerListForm,
  ChucvuCDoanForm, ChucvuDangForm, ChucvuDoanForm;

{$R *.dfm}

procedure TfrmEmpMoreInput.acGetDataExecute(Sender: TObject);
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

procedure TfrmEmpMoreInput.FormCreate(Sender: TObject);
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

  RegisterLookupControl(dxdbgMainACADEMIC_NAME,'TRINHDO_VANHOA','ACADEMIC_NAME',
    'SELECT ACADEMIC_NO, ACADEMIC_NAME FROM HR_ACADEMIC',TfrmAcademicList);
  RegisterLookupControl(dxdbgMainTEN_TRINH_DO,'TRINH_DO','TEN_TRINHDO',
    'SELECT EDU_LEVEL_NO, EDU_LEVEL_NAME FROM HR_EDU_LEVEL',TfrmEduLevelList);
  RegisterLookupControl(dxdbgMainTEN_NGHE_NGHIEP,'NGHE_NGHIEP','TEN_NGHE_NGHIEP',
    'SELECT CAREER_NO, CAREER_NAME FROM HR_CAREER',TfrmCareerList);

  RegisterLookupControl(dxdbgMainTEN_CHUCVU_CDOAN,'CHUC_VU_CDOAN','TEN_CHUCVU_CDOAN',
    'SELECT MA_CHUCVU, TEN_CHUCVU FROM HR_CHUCVU_CDOAN',TfrmChucvuCDoan);
  RegisterLookupControl(dxdbgMainTEN_CHUCVU_DOAN,'CHUC_VU_DOAN','TEN_CHUCVU_DOAN',
    'SELECT MA_CHUCVU, TEN_CHUCVU FROM HR_CHUCVU_DOAN',TfrmChucvuDoan);
   RegisterLookupControl(dxdbgMainTEN_CHUCVU_DANG,'CHUC_VU_DANG','TEN_CHUCVU_DANG',
    'SELECT MA_CHUCVU, TEN_CHUCVU FROM HR_CHUCVU_DANG',TfrmChucvuDang);

end;

procedure TfrmEmpMoreInput.dximOptionChange(Sender: TObject);
begin
  inherited;
  if dximOption.Tag = 1 then exit
  else
    acGetData.Execute;
end;

procedure TfrmEmpMoreInput.acChangeOptionExecute(Sender: TObject);
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

end.

