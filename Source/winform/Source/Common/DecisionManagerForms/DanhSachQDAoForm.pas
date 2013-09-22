unit DanhSachQDAoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ElBtnCtl, ElPopBtn, dxExEdtr,
  dxEdLib, dxCntner, dxEditor, ActnList, DB, IBODataset, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxBar;

type
  TfrmDanhSachQDAo = class(TfrmEditBase)
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainItem2: TdxLayoutItem;
    ppDecisionType: TdxPopupEdit;
    dxlcMainItem3: TdxLayoutItem;
    chkAll: TdxCheckEdit;
    dxFromDate: TdxDateEdit;
    dxTodate: TdxDateEdit;
    dxlcMainItem4: TdxLayoutItem;
    dxlcMainItem5: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxlcMainItem6: TdxLayoutItem;
    ActionList1: TActionList;
    acLayDS: TAction;
    qryDecisions: TIBOQuery;
    dsDecisions: TDataSource;
    qryDecisionsDECISION_NO: TWideStringField;
    qryDecisionsDECISION_DATE: TDateField;
    qryDecisionsISSUE_DATE: TDateField;
    qryDecisionsDECISION_TITLE: TWideStringField;
    qryDecisionsDEPT_NO: TWideStringField;
    qryDecisionsDEPT_NAME: TWideStringField;
    qryDecisionsDECISION_TYPE_NO: TWideStringField;
    qryDecisionsDCS_TYPE_NAME: TWideStringField;
    qryDecisionsQD_THAT: TSmallintField;
    gridDS_QD_Ao: TdxDBGrid;
    dxlcMainItem7: TdxLayoutItem;
    gridDS_QD_AoDECISION_NO: TdxDBGridColumn;
    gridDS_QD_AoDECISION_DATE: TdxDBGridDateColumn;
    gridDS_QD_AoISSUE_DATE: TdxDBGridDateColumn;
    gridDS_QD_AoDECISION_TITLE: TdxDBGridColumn;
    gridDS_QD_AoDEPT_NAME: TdxDBGridColumn;
    gridDS_QD_AoDCS_TYPE_NAME: TdxDBGridColumn;
    gridDS_QD_AoQD_THAT: TdxDBGridCheckColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxChonTatCa: TdxBarButton;
    dxKhongChonTatCa: TdxBarButton;
    acChuyenTatCa: TAction;
    acBoChuyenTatCa: TAction;
    procedure chkAllChange(Sender: TObject);
    procedure ppDecisionTypeInitPopup(Sender: TObject);
    procedure ppDecisionTypeCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure acLayDSExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridDS_QD_AoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acChuyenTatCaExecute(Sender: TObject);
    procedure acBoChuyenTatCaExecute(Sender: TObject);
  private
    { Private declarations }
    F_DECISION_TYPE_NO,F_DECISION_TYPE_NAME : Widestring;
    F_Check_all : Boolean;
    F_From_Date, F_TO_DATE : TDate;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; DECISION_TYPE_NO,DECISION_TYPE_NAME: Widestring;
      Check_all: boolean; From_Date, TO_DATE: Tdatetime);overload;
  end;

var
  frmDanhSachQDAo: TfrmDanhSachQDAo;

implementation

uses PopupMainForm, SSP_Library, MainUnit;

{$R *.dfm}

constructor TfrmDanhSachQDAo.Create(AOwner: TComponent; DECISION_TYPE_NO,
  DECISION_TYPE_NAME: Widestring; Check_all: boolean; From_Date, TO_DATE: Tdatetime);
begin
  F_DECISION_TYPE_NO := DECISION_TYPE_NO;
  F_DECISION_TYPE_NAME := DECISION_TYPE_NAME;
  F_Check_all := Check_all;
  F_From_Date := From_Date;
  F_TO_DATE :=  TO_DATE;
  inherited Create(AOwner);
end;

procedure TfrmDanhSachQDAo.chkAllChange(Sender: TObject);
begin
  inherited;
  ppDecisionType.Enabled := not chkAll.Checked;
end;

procedure TfrmDanhSachQDAo.ppDecisionTypeInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDecisionType.Open;
  InitPopupControl('dxlcDecisionType', frmPopupMain, sender, 2);
end;

procedure TfrmDanhSachQDAo.ppDecisionTypeCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDecisionTypeSTT.AsString + ' - ' +
      frmPopupMain.qryDecisionTypeDCS_TYPE_NAME.Value;
    F_DECISION_TYPE_NO := frmPopupMain.qryDecisionTypeDCS_TYPE_NO.Value;
  end;
  frmPopupMain.qryDecisionType.Close;
end;

procedure TfrmDanhSachQDAo.FormCreate(Sender: TObject);
begin
  inherited;
  ppDecisionType.Text := F_DECISION_TYPE_NAME;
  chkAll.Checked := F_Check_all;
  dxFromDate.Date := F_From_Date;
  dxTodate.Date := F_TO_DATE;
  acLayDS.Execute;     
end;

procedure TfrmDanhSachQDAo.acLayDSExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  begin
    if qryDecisions.Active then
      qryDecisions.Close;
    if chkAll.Checked then
    begin
      qryDecisions.SQLWhere.Text :=
        'where (DECISION_DATE between :FROM_DATE and :TO_DATE) ' +
        'and (QD_THAT = 0 or QD_THAT is null)';
    end
    else
    begin
      qryDecisions.SQLWhere.Text :=
        'where (DECISION_TYPE_NO=:DCS_TYPE_NO) and ' +
        ' (DECISION_DATE between :FROM_DATE and :TO_DATE) ' +
        'and (QD_THAT = 0 or QD_THAT is null)';
      qryDecisions.ParamByName('DCS_TYPE_NO').Value :=
        F_DECISION_TYPE_NO;
    end;
    qryDecisions.ParamByName('FROM_DATE').Value := dxFromDate.Date;
    qryDecisions.ParamByName('TO_DATE').Value := dxTodate.Date;
    qryDecisions.Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmDanhSachQDAo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ModalResult:=mrOk;
end;

procedure TfrmDanhSachQDAo.gridDS_QD_AoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Button = mbRight) then
  begin
    if frmMain.ShowGridMenus(TdxDBGrid(Sender)) then exit else
    dxBarPopupMenu1.PopupFromCursorPos;
  end;
end;

procedure TfrmDanhSachQDAo.acChuyenTatCaExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryDecisions.DisableControls;
  gridDS_QD_Ao.SelectAll;
  for i := 0 to gridDS_QD_Ao.SelectedCount - 1 do
  begin
    qryDecisions.Locate('DECISION_NO',
      gridDS_QD_Ao.SelectedNodes[i].Values[gridDS_QD_AoDECISION_NO.Index],[]);
    if not (qryDecisions.State in [dsInsert, dsEdit]) then
      qryDecisions.Edit;
    qryDecisions.FieldByName('QD_THAT').Value:=1;
    qryDecisions.Post;
  end;
  Screen.Cursor := crDefault;
  qryDecisions.EnableControls;
end;

procedure TfrmDanhSachQDAo.acBoChuyenTatCaExecute(Sender: TObject);
var
  i : integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryDecisions.DisableControls;
  gridDS_QD_Ao.SelectAll;
  for i := 0 to gridDS_QD_Ao.SelectedCount - 1 do
  begin
    qryDecisions.Locate('DECISION_NO',
      gridDS_QD_Ao.SelectedNodes[i].Values[gridDS_QD_AoDECISION_NO.Index],[]);
    if not (qryDecisions.State in [dsInsert, dsEdit]) then
      qryDecisions.Edit;
    qryDecisions.FieldByName('QD_THAT').Value:=0;
    qryDecisions.Post;
  end;
  Screen.Cursor := crDefault;
  qryDecisions.EnableControls;
end;

end.
