unit Luong_TinhluongForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, dxCntner, dxEditor, dxEdLib, cxControls, dxfProgressBar,
  ElEdits, ElBtnEdit, ElMemoCombo, ElBtnCtl, ElPopBtn, ActnList, Luong_Thread,
  dxExEdtr, StdCtrls, ElCLabel, ElLabel, ExtCtrls, IB_Components,
  IB_Process, IB_Script;

type
  TfrmLuong_Tinhluong = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    bar: TdxfProgressBar;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    memThongso: TElMemoCombo;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    ActionList1: TActionList;
    acThuchien: TAction;
    acDung: TAction;
    acDong: TAction;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxAll: TdxCheckEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxSelected: TdxCheckEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    lbOption: TElLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElLabel1: TElLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElLabel2: TElLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    ElLabel3: TElLabel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    lbDonvi: TElLabel;
    dxLayoutControl1Item16: TdxLayoutItem;
    lbNhanvien: TElLabel;
    dxLayoutControl1Item17: TdxLayoutItem;
    lbChucvu: TElLabel;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item18: TdxLayoutItem;
    Bevel1: TBevel;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxUntracked: TdxCheckEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    scriptExecute: TIB_Script;
    dxClock: TTimer;
    procedure acThuchienExecute(Sender: TObject);
    procedure dxAllChange(Sender: TObject);
    procedure dxSelectedChange(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acThuchienUpdate(Sender: TObject);
    procedure dxClockTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLuong_Tinhluong: TfrmLuong_Tinhluong;

implementation

uses MainDM, Luong_Bangluong, dxDBGrid, ElUnicodeStrings;

{$R *.dfm}

procedure TfrmLuong_Tinhluong.acThuchienExecute(Sender: TObject);
  function ExecuteScript(script: widestring): boolean;
  var
    i: integer;
  begin
    result:=true;
    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Text := script;
    if scriptExecute.SQL.Count = 0 then
      exit;
    for i := 0 to scriptExecute.SQL.Count - 1 do
    begin
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':PA_KYHIEU ', 'WB_' + frmLuong_Bangluong.P_PA_KYHIEU + ' ',
        [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':MA_DONVI', ''''+frmLuong_Bangluong.P_DEPT_NO+'''', [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':THANG', IntToStr(frmLuong_Bangluong.P_THANG), [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':NAM', IntToStr(frmLuong_Bangluong.P_NAM), [rfReplaceAll]);
      scriptExecute.SQL.Strings[i]:=StringReplace(scriptExecute.SQL.Strings[i],
        ':DOT', IntToStr(frmLuong_Bangluong.P_DOT), [rfReplaceAll]);
    end;
    try
      scriptExecute.Prepare;
      scriptExecute.Execute;
    except
      result:=false;
    end;
  end;
var
  t, total: TTimeSpend;
  i: integer;
  str_title:WideString;
begin
  inherited;
  //Locked by THUYPTP - 17/4/2009
  //Truong hop tinh cho 1 so NV chon tren luoi, khi vo dong lenh nay thi mat het Selected, con lai 1 NV duy nhat
  {frmLuong_Bangluong. gridLuong.OptionsBehavior:=
  frmLuong_Bangluong. gridLuong.OptionsBehavior-[edgoAutoSort];}
  //Het

  frmLuong_Bangluong.qryLuong.DisableControls;
  bar.ShowText := true;
  memThongso.Lines.Clear;
  self.Repaint;
  total.begin_time := Now;
//  frmLuong_Bangluong.qryLuong.DisableControls;
  screen.Cursor := crSQLWait;
  if dxAll.Checked then   //tinh luong cho tat ca moi nguoi trong bang luong
  begin
    try
      memThongso.Lines.Add('==============================================');
      memThongso.Lines.Insert(0, UTF8Decode('  THỰC HIỆN TÍNH LƯƠNG'));
      memThongso.Lines.Insert(0,
        '==============================================');
      frmLuong_Bangluong.F_ErrorList.Clear;
      frmLuong_Bangluong.qrySession.First;
      bar.Max:=frmLuong_Bangluong.qryLuong.RecordCount*frmLuong_Bangluong.qrySession.RecordCount;
      bar.Position := 0;
      str_title:=memThongso.Lines.Text;
      memThongso.Lines.Insert(2, 'Session :'+frmLuong_Bangluong.qrySessionS_TIEUDE.Value);
      self.repaint;
      dxClock.Enabled:=True;
      while not frmLuong_Bangluong.qrySession.Eof do
      begin
        // Thuc thi BEFORE_SCRIPT
        if frmLuong_Bangluong.qrySessionS_EXEC_BSCRIPT.Value = 1 then
        begin
          memThongso.Lines.Insert(2, 'ExecuteScript : '+frmLuong_Bangluong.qrySessionS_BEFORE_SCRIPT.Value);
        //  self.repaint;
          ExecuteScript(frmLuong_Bangluong.qrySessionS_BEFORE_SCRIPT.Value);
        end;
        if frmLuong_Bangluong.qrySessionS_REFRESH.Value = 1 then
        begin
          memThongso.Lines.Insert(2, 'RefreshData');
        //  self.repaint;
          frmLuong_Bangluong.qryLuong.Close;
          frmLuong_Bangluong.qryLuong.Open;
        end;
        // Thuc thi cong thuc trong SESSION

        frmLuong_Bangluong.qryLuong.First;
        while not frmLuong_Bangluong.qryLuong.Eof do
        begin
          lbDonvi.Caption :=
            VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('DEPT_NAME').Value);
          lbNhanvien.Caption :=
            VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('FULL_NAME').Value);
          lbChucvu.Caption :=
            VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('TITLE_NAME').Value);

          t := frmLuong_Bangluong.TinhLuong_Session;

          if dxUntracked.Checked = false then
          begin
            {if memThongso.Lines.Count>1000 then
            begin
              memThongso.Lines.Clear;
              memThongso.Lines.Text:=str_title;
              self.Repaint;
            end;
            }
            memThongso.Lines.Insert(2,
              '==============================================');
            memThongso.Lines.Insert(2, Utf8Decode('Tổng thời gian Session '
              + UTF8Encode(frmLuong_bangluong.qrySessionS_TIEUDE.Value) + ' : ') +
              FloattoStr(GetTotalTime(t)) + 's' + ' (' + TimeToStr(t.begin_time)
              +
              ' -> ' + TimeToStr(t.end_time) + ')');
            memThongso.Lines.Insert(2, Utf8Decode('Nhân viên: ') +
              VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('FULL_NAME').Value));
            self.Repaint;
          end;
          frmLuong_Bangluong.qryLuong.Next;
          bar.StepIt;
        end;
        // Thuc thi BEFORE_SCRIPT
        if frmLuong_Bangluong.qrySessionS_EXEC_AFTER.Value = 1 then
        begin
          memThongso.Lines.Insert(2, 'ExecuteScript : '+frmLuong_Bangluong.qrySessionS_AFTER_SCRIPT.Value);
          ExecuteScript(frmLuong_Bangluong.qrySessionS_AFTER_SCRIPT.Value);
        //  self.Repaint;
        end;
        if frmLuong_Bangluong.qrySessionS_REFRESH.Value = 1 then
        begin
          memThongso.Lines.Insert(2, 'RefreshData');
       //   self.repaint;
          frmLuong_Bangluong.qryLuong.Close;
          frmLuong_Bangluong.qryLuong.Open;
        end;

        frmLuong_Bangluong.qrySession.Next;
      end;
      ShowMessageUnicode(39);
    except
    end;
    dxClock.Enabled:=false;
  end
    //--------------------------------------------------------------------------------
  else if dxSelected.Checked then
  begin
    try
      bar.Max := frmLuong_Bangluong.gridLuong.SelectedCount;
      bar.Position := 0;
      memThongso.Lines.Add(     '==============================================');
      memThongso.Lines.Insert(0, UTF8Decode('  THỰC HIỆN TÍNH LƯƠNG'));
      memThongso.Lines.Insert(0,'==============================================');
      frmLuong_Bangluong.F_ErrorList.Clear;
      dxClock.Enabled:=True;
      for i := 0 to frmLuong_Bangluong.gridLuong.SelectedCount - 1 do
      begin
        if frmLuong_Bangluong.qryLuong.Locate('WB_KEY_ID',
          frmLuong_Bangluong.gridLuong.SelectedNodes[i].Values[frmLuong_Bangluong.gridLuongWB_KEY_ID.Index],
          []
          ) = false then
        begin
          memThongso.Lines.Insert(2,'==============================================');
          memThongso.Lines.Insert(2,
            Utf8Decode(' + Lỗi : tìm không thấy thông tin nhân viên trên bảng lương'));
          memThongso.Lines.Insert(2, Utf8Decode('Nhân viên: ') +
            VarToWideStr(frmLuong_Bangluong.gridLuong.SelectedNodes[i].Values[frmLuong_Bangluong.gridLuongFULL_NAME.Index].FieldByName('FULL_NAME').Value));
          bar.StepIt;
          self.Repaint;
        end
        else
        begin
          t := frmLuong_Bangluong.TinhLuong_Canhan;
          if dxUntracked.Checked = false then
          begin
            lbDonvi.Caption :=
              VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('DEPT_NAME').Value);
            lbNhanvien.Caption :=
              VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('FULL_NAME').Value);
            lbChucvu.Caption :=
              VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('TITLE_NAME').Value);
            memThongso.Lines.Insert(2,'==============================================');
            memThongso.Lines.Insert(2, Utf8Decode('Tổng thời gian: ') +
              FloattoStr(GetTotalTime(t)) + 's' + ' (' + TimeToStr(t.begin_time)
              +
              ' -> ' + TimeToStr(t.end_time) + ')');
            memThongso.Lines.Insert(2, Utf8Decode('Nhân viên: ') +
              VarToWideStr(frmLuong_Bangluong.qryLuong.FieldByName('FULL_NAME').Value));
            bar.StepIt;
            self.Repaint;
          end;
        end;
      end;
      dxClock.Enabled:=false;
      ShowMessageUnicode(39);
    except
    end;

  end;
  //--------------------------------------------------------------------------------
  total.end_time := Now;
  memThongso.Lines.Insert(2, '==============================================');
  memThongso.Lines.Insert(2, Utf8Decode('   Tổng thời gian: ') +
    FloattoStr(GetTotalTime(total)) + 's' + ' (' + TimeToStr(total.begin_time) +
    ' -> ' + TimeToStr(total.end_time) + ')');
  memThongso.Lines.Insert(2, '==============================================');
  frmLuong_Bangluong.qryLuong.EnableControls;
  screen.Cursor := crDefault;
  frmLuong_Bangluong. gridLuong.OptionsBehavior:=
  frmLuong_Bangluong. gridLuong.OptionsBehavior+[edgoAutoSort];
end;

procedure TfrmLuong_Tinhluong.dxAllChange(Sender: TObject);
begin
  inherited;
  if dxAll.Checked then
  begin
    dxSelected.Checked := false;
  end;
  lbOption.Caption := '(' + UTF8Decode('Tổng số nhân viên:') +
    IntToStr(frmLuong_Bangluong.qryLuong.RecordCount) + ')';
end;

procedure TfrmLuong_Tinhluong.dxSelectedChange(Sender: TObject);
begin
  inherited;
  if dxSelected.Checked then
  begin
    dxAll.Checked := false;
    frmLuong_Bangluong.gridLuong.OptionsBehavior :=
      frmLuong_Bangluong.gridLuong.OptionsBehavior +
      [edgoMultiSelect];
  end
  else
    frmLuong_Bangluong.gridLuong.OptionsBehavior :=
      frmLuong_Bangluong.gridLuong.OptionsBehavior -
      [edgoMultiSelect];

  lbOption.Caption := '(' + UTF8Decode('Tổng số nhân viên:') +
    IntToStr(frmLuong_Bangluong.gridLuong.SelectedCount) + ')';
end;

procedure TfrmLuong_Tinhluong.acDongExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLuong_Tinhluong.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmLuong_Tinhluong := nil;
end;

procedure TfrmLuong_Tinhluong.acThuchienUpdate(Sender: TObject);
begin
  inherited;
  acThuchien.Enabled := dxAll.Checked or dxSelected.Checked and
    (not frmLuong_Bangluong.qryLuong.IsEmpty);
end;

procedure TfrmLuong_Tinhluong.dxClockTimer(Sender: TObject);
begin
  inherited;
  Self.Repaint;
end;

end.

