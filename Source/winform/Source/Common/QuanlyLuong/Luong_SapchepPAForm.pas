unit Luong_SapchepPAForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxEditor, dxExEdtr, dxEdLib, dxCntner,
  dxDBCtrl, dxTL, dxDBTL, ActnList, ElBtnCtl, ElPopBtn, dxfProgressBar,
  ElEdits, ElBtnEdit, ElMemoCombo, DB, IBODataset;

type
  TfrmLuong_SaochepPA = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxPA_Target: TdxEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxPA_Master: TdxPopupEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxtlMenuList: TdxDBTreeList;
    dxtlMenuListMENU_TITLE: TdxDBTreeListColumn;
    dxtlMenuListMENU_ICON_INDEX: TdxDBTreeListMaskColumn;
    dxLayoutControl1Item3: TdxLayoutItem;
    memoInfo: TElMemoCombo;
    dxBar: TdxfProgressBar;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ActionList1: TActionList;
    acThuchien: TAction;
    acDong: TAction;
    qryMasterSession: TIBOQuery;
    qryMasterSessionPA_MA: TIntegerField;
    qryMasterSessionS_MA: TIntegerField;
    qryMasterSessionS_TIEUDE: TWideStringField;
    dsMasterSession: TDataSource;
    qryMasterCongthuc: TIBOQuery;
    qryMasterCongthucPA_MA: TIntegerField;
    qryMasterCongthucCT_MA: TIntegerField;
    qryMasterCongthucCT_KYHIEU: TWideStringField;
    qryMasterCongthucCT_TIEUDE: TWideStringField;
    qryMasterCongthucCT_KIEUDULIEU: TWideStringField;
    qryMasterCongthucCT_BIEUTHUC: TWideStringField;
    qryMasterCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryMasterCongthucCT_TUDONG_CAPNHAT: TIntegerField;
    qryMasterCongthucCT_THUTU_TINH: TIntegerField;
    qryMasterCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryMasterCongthucCT_SESSION: TIntegerField;
    qryMasterCongthucCT_WIDTH: TIntegerField;
    dsMasterCongthuc: TDataSource;
    qryMasterSessionS_BEFORE_SCRIPT: TWideStringField;
    qryMasterSessionS_AFTER_SCRIPT: TWideStringField;
    qryMasterSessionS_REFRESH: TIntegerField;
    qryMasterSessionS_EXEC_BSCRIPT: TIntegerField;
    qryMasterSessionS_EXEC_AFTER: TIntegerField;
    qryTargetCongthuc: TIBOQuery;
    dsTargetCongthuc: TDataSource;
    qryTargetCongthucPA_MA: TIntegerField;
    qryTargetCongthucCT_MA: TIntegerField;
    qryTargetCongthucCT_KYHIEU: TWideStringField;
    qryTargetCongthucCT_TIEUDE: TWideStringField;
    qryTargetCongthucCT_KIEUDULIEU: TWideStringField;
    qryTargetCongthucCT_BIEUTHUC: TWideStringField;
    qryTargetCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField;
    qryTargetCongthucCT_TUDONG_CAPNHAT: TIntegerField;
    qryTargetCongthucCT_THUTU_TINH: TIntegerField;
    qryTargetCongthucCT_THUTU_HIENTHI: TIntegerField;
    qryTargetCongthucCT_SESSION: TIntegerField;
    qryTargetCongthucCT_WIDTH: TIntegerField;
    qryTargetSession: TIBOQuery;
    dsTargetSession: TDataSource;
    qryTargetSessionPA_MA: TIntegerField;
    qryTargetSessionS_MA: TIntegerField;
    qryTargetSessionS_TIEUDE: TWideStringField;
    qryTargetSessionS_BEFORE_SCRIPT: TWideStringField;
    qryTargetSessionS_AFTER_SCRIPT: TWideStringField;
    qryTargetSessionS_REFRESH: TIntegerField;
    qryTargetSessionS_EXEC_BSCRIPT: TIntegerField;
    qryTargetSessionS_EXEC_AFTER: TIntegerField;
    procedure dxPA_MasterInitPopup(Sender: TObject);
    procedure dxPA_MasterCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dxtlMenuListDblClick(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure acThuchienUpdate(Sender: TObject);
    procedure acThuchienExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    F_PA_MASTER, F_PA_TARGET: string;
    PA_MA: integer;
  public
    { Public declarations }
  end;

var
  frmLuong_SaochepPA: TfrmLuong_SaochepPA;

implementation

uses MainDM, Luong_DinhnghiaForm, Luong_ThietkePAForm, SSP_Library,
  ElLabel;

{$R *.dfm}

procedure TfrmLuong_SaochepPA.dxPA_MasterInitPopup(Sender: TObject);
begin
  inherited;
  InitPopupControl('dxtlMenulist', self, sender, 2);
end;

procedure TfrmLuong_SaochepPA.dxPA_MasterCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    if (frmLuong_Dinhnghia.memMenuListMENU_ICON_INDEX.Value > 0) or
      (frmLuong_Dinhnghia.memMenuListMENU_ID.AsString = F_PA_TARGET) then
      exit;
    Text := frmLuong_Dinhnghia.memMenuListMENU_TITLE.Value;
    F_PA_MASTER := frmLuong_Dinhnghia.memMenuListMENU_ID.AsString;
    PA_MA := frmLuong_Dinhnghia.memMenuListPA_MA.Value;
    if qryMasterSession.Active then
      qryMasterSession.Close;
    qryMasterSession.ParamByName('PA_MA').Value := PA_MA;
    qryMasterSession.Open;
    if qryMasterCongthuc.Active then
      qryMasterCongthuc.Close;
    qryMasterCongthuc.ParamByName('PA_MA').Value := PA_MA;
    qryMasterCongthuc.Open;
  end;
end;

procedure TfrmLuong_SaochepPA.FormCreate(Sender: TObject);
begin
  inherited;
  F_PA_TARGET :=
    string(TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm).PA_KYHIEU);
  qryTargetSession.ParamByName('PA_MA').Value :=
    TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm).PA_MA;
  qryTargetSession.Open;
  qryTargetCongthuc.ParamByName('PA_MA').Value :=
    TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm).PA_MA;
  qryTargetCongthuc.Open;

  dxPA_Target.Text := frmLuong_Dinhnghia.lblListCaption.Caption;
  frmLuong_ThietkePA := TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm);
end;

procedure TfrmLuong_SaochepPA.dxtlMenuListDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmLuong_SaochepPA.acDongExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmLuong_SaochepPA.acThuchienUpdate(Sender: TObject);
begin
  inherited;
  acThuchien.Enabled := (F_PA_TARGET <> '') and
    (frmLuong_ThietkePA.qrySession.IsEmpty) and
    (frmLuong_ThietkePA.qryCongthuc.IsEmpty) and
    (qryMasterSession.IsEmpty = false);
end;

procedure TfrmLuong_SaochepPA.acThuchienExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  memoInfo.Lines.Clear;
  memoInfo.Lines.Add(UTF8Decode('SAO CHÉP PHƯƠNG ÁN LƯƠNG'));
  memoinfo.Lines.Add('------------------------------------------');

  //Sao chep header
  dxBar.Position := 0;
  dxBar.Max := qryMasterSession.RecordCount + qryMasterCongthuc.RecordCount;
  dxBar.ShowText := true;
  qryMasterSession.First;
  while not qryMasterSession.Eof do
  begin
    if not (qryTargetSession.State in [dsInsert]) then
      qryTargetSession.Insert;
    qryTargetSessionPA_MA.Value:=frmLuong_ThietkePA.PA_MA;
    qryTargetSessionS_MA.Value := qryMasterSessionS_MA.Value;
    qryTargetSessionS_TIEUDE.Value := qryMasterSessionS_TIEUDE.Value;
    if qryMasterSessionS_BEFORE_SCRIPT.IsNull=false then
    qryTargetSessionS_BEFORE_SCRIPT.Value :=
      qryMasterSessionS_BEFORE_SCRIPT.Value;
    if qryMasterSessionS_AFTER_SCRIPT.IsNull=false then
    qryTargetSessionS_AFTER_SCRIPT.Value :=
      qryMasterSessionS_AFTER_SCRIPT.Value;
    qryTargetSessionS_REFRESH.Value := qryMasterSessionS_REFRESH.Value;
    qryTargetSessionS_EXEC_BSCRIPT.Value :=
      qryMasterSessionS_EXEC_BSCRIPT.Value;
    qryTargetSessionS_EXEC_AFTER.Value := qryMasterSessionS_EXEC_AFTER.Value;

    qryTargetSession.Post;

    qryMasterSession.Next;
    memoinfo.Lines.Insert(2, UTF8Decode('- Tạo session : ') +
      qryMasterSessionS_TIEUDE.Value);
    dxBar.StepIt;
    self.Repaint;
  end;

  if qryMasterCongthuc.IsEmpty = false then
  begin
    qryMasterCongthuc.First;
    while not qryMasterCongthuc.Eof do
    begin
      if not (qryTargetCongthuc.State in [dsInsert]) then
        qryTargetCongthuc.Append;

      qryTargetCongthucPA_MA.Value:=frmLuong_ThietkePA.PA_MA;
      qryTargetCongthucCT_KYHIEU.Value := qryMasterCongthucCT_KYHIEU.Value;
      qryTargetCongthucCT_TIEUDE.Value := qryMasterCongthucCT_TIEUDE.Value;
      qryTargetCongthucCT_KIEUDULIEU.Value :=
        qryMasterCongthucCT_KIEUDULIEU.Value;
      if qryMasterCongthucCT_BIEUTHUC.IsNull then
        qryTargetCongthucCT_BIEUTHUC.clear
      else
        qryTargetCongthucCT_BIEUTHUC.Value := qryMasterCongthucCT_BIEUTHUC.Value;
      qryTargetCongthucCT_HINHTHUC_NHAPLIEU.Value :=
        qryMasterCongthucCT_HINHTHUC_NHAPLIEU.Value;
      qryTargetCongthucCT_THUTU_HIENTHI.Value :=
        qryMasterCongthucCT_THUTU_HIENTHI.Value;
      qryTargetCongthucCT_SESSION.Value := qryMasterCongthucCT_SESSION.Value;
      qryTargetCongthucCT_WIDTH.Value := qryMasterCongthucCT_WIDTH.Value;

      qryTargetCongthuc.Post;
      if qryMasterCongthucCT_KIEUDULIEU.Value = 'DOUBLE' then
        frmLuong_ThietkePA.CreateField(qryMasterCongthucCT_KYHIEU.AsString, 'DM_DOUBLE')
      else if qryMasterCongthucCT_KIEUDULIEU.Value = 'VARCHAR' then
        frmLuong_ThietkePA.CreateField(qryMasterCongthucCT_KYHIEU.AsString,'DM_VARCHAR127')
      else if qryMasterCongthucCT_KIEUDULIEU.Value = 'MEMO' then
        frmLuong_ThietkePA.CreateField(qryMasterCongthucCT_KYHIEU.AsString,'DM_NOTATION')
      else if qryMasterCongthucCT_KIEUDULIEU.Value = 'DATE' then
        frmLuong_ThietkePA.CreateField(qryMasterCongthucCT_KYHIEU.AsString,'DM_DATE')
      else
      begin
        ShowMessage('Unknown field type');
        Exit;
      end;

      memoInfo.Lines.Insert(2, UTF8Decode('+ Tạo cột lương : ') +
        qryMasterCongthucCT_TIEUDE.Value);
      qryMasterCongthuc.Next;
      dxBar.StepIt;
      self.Repaint;
    end;
  end;
  frmLuong_ThietkePA.transaction.CommitRetaining;
  frmLuong_ThietkePA.RefreshDemoGrid;
  Screen.Cursor := crDefault;
  ShowMessageUnicode(39);
end;

procedure TfrmLuong_SaochepPA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmLuong_SaochepPA := nil;
end;

end.

