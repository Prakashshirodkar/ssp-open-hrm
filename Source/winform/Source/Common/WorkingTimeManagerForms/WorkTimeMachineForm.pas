unit WorkTimeMachineForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  dxEdLib, dxfProgressBar, ElBtnCtl, ElPopBtn, dxCntner, dxEditor,
  ExtCtrls, StdCtrls, ElCLabel, ElLabel, ElPgCtl, dxLayoutControl,
  cxControls, ActnList, DB, IBODataset, dxDBELib, dxTL, dxDBCtrl, dxDBGrid;

type
  TfrmWorkTimeMachine = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    Image7: TImage;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl3: TdxLayoutControl;
    pageMain: TElPageControl;
    tabStep1: TElTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    ElLabel1: TElLabel;
    ElLabel2: TElLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    Bevel3: TBevel;
    ElLabel3: TElLabel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Item9: TdxLayoutItem;
    tabStep2: TElTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    ElLabel7: TElLabel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Image5: TImage;
    Bevel6: TBevel;
    lblMsg: TElLabel;
    dxExcelFileName: TdxButtonEdit;
    ElPopupButton1: TElPopupButton;
    dxMemo1: TdxMemo;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl7Item3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl7Item5: TdxLayoutItem;
    btnBack: TElPopupButton;
    btnNext: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    ActionList1: TActionList;
    acBack: TAction;
    acNext: TAction;
    OpenDialog1: TOpenDialog;
    acDocDuLieu: TAction;
    qryLoaiMay: TIBOQuery;
    dxdbLoaiMay: TdxDBPopupEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxlcMachineStyle: TdxLayoutControl;
    gridMachineStyle: TdxDBGrid;
    ElPopupButton2: TElPopupButton;
    ElPopupButton4: TElPopupButton;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxlcMachineStyleItem3: TdxLayoutItem;
    dxlcMachineStyleItem2: TdxLayoutItem;
    dsLoaiMay: TDataSource;
    gridMachineStyleMACHINE_MODEL: TdxDBGridMaskColumn;
    gridMachineStyleMACHINE_NAME: TdxDBGridMaskColumn;
    dxLoaiDuLieu: TdxDBImageEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    qryLoaiMayMACHINE_MODEL: TWideStringField;
    qryLoaiMayMACHINE_NAME: TWideStringField;
    qryLoaiMayVALUE_ROW_AREA_BEGIN: TIntegerField;
    qryLoaiMayVALUE_ROW_AREA_END: TIntegerField;
    qryLoaiMayFILE_STYLE: TSmallintField;
    qryLoaiMayFILE_INFOR: TWideStringField;
    qryLoaiMayIS_DEFAULT: TSmallintField;
    procedure acBackUpdate(Sender: TObject);
    procedure acNextUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure dxExcelFileNameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure acDocDuLieuExecute(Sender: TObject);
    procedure qryLoaiMayMACHINE_MODELChange(Sender: TField);
    procedure qryLoaiMayMACHINE_NAMEChange(Sender: TField);
    procedure qryLoaiMayFILE_STYLEChange(Sender: TField);
    procedure gridMachineStyleDblClick(Sender: TObject);
    procedure dxdbLoaiMayInitPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkTimeMachine: TfrmWorkTimeMachine;

implementation

uses MainDM,SSP_Library, Math;

{$R *.dfm}

procedure TfrmWorkTimeMachine.acBackUpdate(Sender: TObject);
begin
  inherited;
  acBack.Enabled:=(pageMain.ActivePageIndex>0);
end;

procedure TfrmWorkTimeMachine.acNextUpdate(Sender: TObject);
begin
  inherited;
  acNext.Enabled:=(pageMain.ActivePageIndex<pageMain.PageCount-1);
end;

procedure TfrmWorkTimeMachine.FormCreate(Sender: TObject);
begin
  inherited;
  pageMain.ShowTabs:=false;
  pageMain.ActivePage := tabStep1;
  if qryLoaiMay.Active then
    qryLoaiMay.Close;
  qryLoaiMay.SQLWhere.Text := 'where hr_work_time_style.is_default = 1';
  qryLoaiMay.Open;
end;

procedure TfrmWorkTimeMachine.acNextExecute(Sender: TObject);
begin
  inherited;
  pageMain.ActivePage := tabStep2;
end;

procedure TfrmWorkTimeMachine.acBackExecute(Sender: TObject);
begin
  inherited;
    pageMain.ActivePage := tabStep1;
end;

procedure TfrmWorkTimeMachine.dxExcelFileNameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if dxLoaiDulieu.Text = UTF8Decode('0') then
  begin
    OpenDialog1.Filter := 'Excel files (*.xls)|*.XLS';
  end
  else if dxLoaiDulieu.Text = UTF8Decode('1') then
  begin
    OpenDialog1.Filter := 'Text files (*.txt)|*.TXT';
  end;
  if True = OpenDialog1.Execute then
  begin
    dxExcelFileName.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmWorkTimeMachine.acDocDuLieuExecute(Sender: TObject);
begin
  inherited;
  ////////////////
  ModalResult := mrOk;
end;

procedure TfrmWorkTimeMachine.qryLoaiMayMACHINE_MODELChange(
  Sender: TField);
begin
  inherited;
  qryLoaiMay.Post;
end;

procedure TfrmWorkTimeMachine.qryLoaiMayMACHINE_NAMEChange(Sender: TField);
begin
  inherited;
  qryLoaiMay.Post;
end;

procedure TfrmWorkTimeMachine.qryLoaiMayFILE_STYLEChange(Sender: TField);
begin
  inherited;
  qryLoaiMay.Post;
end;

procedure TfrmWorkTimeMachine.gridMachineStyleDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender);
end;

procedure TfrmWorkTimeMachine.dxdbLoaiMayInitPopup(Sender: TObject);
begin
  inherited;
  If qryLoaiMay.Active then
    qryLoaiMay.Close;
  qryLoaiMay.SQLWhere.Clear;
  qryLoaiMay.Open;
  InitPopupControl('dxlcMachineStyle',Self, sender, 1);
end;

end.
