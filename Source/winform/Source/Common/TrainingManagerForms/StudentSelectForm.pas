unit StudentSelectForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxmdaset, DB, IBODataset, ElCaption, ElXPThemedControl,
  ElStatBar, dxLayoutControl, cxControls, dxExEdtr, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, dxTL, dxCntner, ElBtnCtl, ElPopBtn, ActnList, dxEdLib;

type
  TfrmStudentSelect = class(TfrmBase)
    dsList: TDataSource;
    qryList: TIBOQuery;
    qryListEMPLOYEE_NO: TWideStringField;
    qryListFULL_NAME: TWideStringField;
    qryListGENDER: TSmallintField;
    qryListBIRTH_DATE: TDateField;
    qryListEDU_LEVEL_NAME: TWideStringField;
    qryListCAREER_NAME: TWideStringField;
    memList: TdxMemData;
    memListEMPLOYEE_NO: TWideStringField;
    memListFULL_NAME: TWideStringField;
    memListGENDER: TIntegerField;
    memListBIRTH_DATE: TDateField;
    memListEDU_LEVEL_NAME: TWideStringField;
    memListCAREER_NAME: TWideStringField;
    memListSELECTED: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    gridEmpSelect: TdxDBGrid;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    gridEmpSelectRecId: TdxDBGridColumn;
    gridEmpSelectEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridEmpSelectFULL_NAME: TdxDBGridMaskColumn;
    gridEmpSelectBIRTH_DATE: TdxDBGridDateColumn;
    gridEmpSelectEDU_LEVEL_NAME: TdxDBGridMaskColumn;
    gridEmpSelectCAREER_NAME: TdxDBGridMaskColumn;
    gridEmpSelectSELECTED: TdxDBGridCheckColumn;
    gridEmpSelectGENDER: TdxDBGridImageColumn;
    ActionList1: TActionList;
    acChon: TAction;
    acBoqua: TAction;
    chk: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure memListBeforeInsert(DataSet: TDataSet);
    procedure acChonExecute(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    constructor Create(AOwner:TComponent;PLAN_NO,CLASS_NO:Variant);
  private
    { Private declarations }
    F_PLAN_NO,F_CLASS_NO:Variant;
  public
    { Public declarations }
  end;

var
  frmStudentSelect: TfrmStudentSelect;

implementation

uses MainDM, EmpInfoDataModule, Math;

{$R *.dfm}
constructor TfrmStudentSelect.Create(AOwner:TComponent;PLAN_NO,CLASS_NO:Variant);
begin
  F_PLAN_NO:=PLAN_NO;
  F_CLASS_NO:=CLASS_NO;
  inherited Create(AOwner);
end;
procedure TfrmStudentSelect.FormDestroy(Sender: TObject);
begin
  memList.Close;
  qryList.Close;
  inherited;
end;

procedure TfrmStudentSelect.FormCreate(Sender: TObject);
begin
  inherited;
//NXHop modified and notified
//  qryList.ParamByName('USER_NAME').Value:=sysConfig.User;
  qryList.Open;
  memList.Open;
  If qryList.RecordCount>0 then
  begin
    memList.DisableControls;
    memList.Tag:=1;
    qryList.Last;
    while not qryList.Bof do
    begin
      memList.Insert;
      memListEMPLOYEE_NO.Value:=qryListEMPLOYEE_NO.Value;
      memListFULL_NAME.Value:=qryListFULL_NAME.Value;
      if not qryListGENDER.IsNull then
        memListGENDER.Value:=qryListGENDER.Value
      else
        memListGENDER.Clear;
      if not qryListBIRTH_DATE.IsNull then
      memListBIRTH_DATE.Value:=qryListBIRTH_DATE.Value;
      memListEDU_LEVEL_NAME.Value:=qryListEDU_LEVEL_NAME.Value+'';
      memListCAREER_NAME.Value:=qryListCAREER_NAME.Value+'';
      memListSELECTED.Value:=0;
      memList.Post;
      qryList.Prior;
    end;
    memList.Tag:=0;
    memList.EnableControls;
  end;
end;

procedure TfrmStudentSelect.memListBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if memList.Tag<>1 then Abort;
end;

procedure TfrmStudentSelect.acChonExecute(Sender: TObject);
begin
  inherited;
  if (memList.State in [dsEdit]) then
    memList.Post;
  ModalResult:=mrOK;
end;

procedure TfrmStudentSelect.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

end.
