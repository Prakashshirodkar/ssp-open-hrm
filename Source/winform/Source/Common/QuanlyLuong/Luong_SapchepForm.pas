unit Luong_SapchepForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  ElBtnCtl, ElPopBtn, ActnList, DB, IBODataset, Registry;

type
  TfrmLuong_Saochep = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxTuthang: TdxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxTunam: TdxSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDenthang: TdxSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDennam: TdxSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDonvi: TdxPopupEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    ActionList1: TActionList;
    acThuchien: TAction;
    acDong: TAction;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    qryExecute: TIBOQuery;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDenDot: TdxSpinEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxTuDot: TdxSpinEdit;
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dxDonviInitPopup(Sender: TObject);
    procedure dxDonviCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure acThuchienExecute(Sender: TObject);
    procedure acThuchienUpdate(Sender: TObject);
    procedure acDongExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    F_DEPT_NO:WideString;
    F_LEFT_INDEX,F_RIGHT_INDEX:integer;
    F_PA_KYHIEU:string;
  public
    { Public declarations }
  end;

var
  frmLuong_Saochep: TfrmLuong_Saochep;

implementation

uses MainDM, Luong_Bangluong, SSP_Library, Luong_SaoChepToolForm;

{$R *.dfm}

procedure TfrmLuong_Saochep.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
//  inherited;

end;

procedure TfrmLuong_Saochep.FormCreate(Sender: TObject);
begin
  inherited;
  if frmLuong_Bangluong.P_THANG=1 then
  begin
    dxTuthang.IntValue:=12;
    dxTunam.IntValue:=frmLuong_Bangluong.P_NAM-1;
  end
  else
  begin
    dxTuthang.IntValue:=frmLuong_Bangluong.P_THANG-1;
    dxTunam.IntValue:=frmLuong_Bangluong.P_NAM;
  end;
  dxDenthang.IntValue:=frmLuong_Bangluong.P_THANG;
  dxDennam.IntValue:=frmLuong_Bangluong.P_NAM;
  dxDenDot.IntValue := frmLuong_Bangluong.P_DOT;  
  dxDonvi.Text:=frmLuong_Bangluong.dxChonDonvi.Text;
  F_LEFT_INDEX:=frmLuong_Bangluong.P_LEFT_INDEX;
  F_RIGHT_INDEX:=frmLuong_Bangluong.P_RIGHT_INDEX;
  dxDenthang.Color:=sysUIConfig.Read_Only_Color;
  dxDennam.Color:=sysUIConfig.Read_Only_Color;
  F_PA_KYHIEU:=frmLuong_Bangluong.P_PA_KYHIEU;

end;

procedure TfrmLuong_Saochep.dxDonviInitPopup(Sender: TObject);
begin
  inherited;
  if not frmLuong_Bangluong.qryDeptList.Active then
    frmLuong_Bangluong.qryDeptList.Open;
  InitPopupControl('dxlcDeptList',frmLuong_Bangluong,sender,2);

end;

procedure TfrmLuong_Saochep.dxDonviCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text:=frmLuong_bangluong.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO:=frmLuong_Bangluong.qryDeptListDEPT_NO.Value;
  end;

end;

procedure TfrmLuong_Saochep.acThuchienExecute(Sender: TObject);
var f1,f2:string;
    reg :TRegistry;
    bool_value:integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\SaoChep_BangLuong\'+F_PA_KYHIEU, true);


  //Cau hinh cot luong duoc update
  frmLuong_SaoChepTool := TfrmLuong_SaoChepTool.Create(self, F_PA_KYHIEU);
  try
    frmLuong_SaoChepTool.ShowModal;
  finally
    frmLuong_SaoChepTool.Free;
    frmLuong_SaoChepTool := nil;
  end;


   f1:='MA_NHANVIEN , MA_DONVI , MA_CHUCVU, MA_THANG , MA_NAM, MA_DOT ';
   f2:='a.MA_NHANVIEN , a.MA_DONVI , a.MA_CHUCVU, '+IntToStr(dxDenthang.IntValue)
            +' , '+IntToStr(dxDennam.IntValue) + ' , ' + IntToStr(dxDenDot.IntValue) ;
  frmLuong_Bangluong.qryCongthuc.First;
  while not frmLuong_Bangluong.qryCongthuc.Eof do
  begin
    if (frmLuong_Bangluong.qryCongthucCT_HINHTHUC_NHAPLIEU.Value<>'TINHTOAN') and
       (frmLuong_Bangluong.qryCongthucCT_HINHTHUC_NHAPLIEU.Value<>'TUDONG_CAPNHAT') then
    begin
      try
        bool_value:= reg.ReadInteger(frmLuong_Bangluong.gridLuong.Name
              + frmLuong_Bangluong.qryCongthucCT_KYHIEU.AsString);
      except
        bool_value := 1;
      end;

      if (bool_value = 1) then
      begin
        f1:=f1+', '+frmLuong_Bangluong.qryCongthucCT_KYHIEU.AsString;
        f2:=f2+', a.'+frmLuong_Bangluong.qryCongthucCT_KYHIEU.AsString;
      end;        
    end;
    frmLuong_Bangluong.qryCongthuc.Next;
  end;
  
  qryExecute.SQL.Clear;
  qryExecute.SQL.Add(' insert into WB_'+F_PA_KYHIEU);
  qryExecute.SQL.Add(' ( '+f1+' ) ');
  qryExecute.SQL.Add(' select '+f2);
  qryExecute.SQL.Add(' from WB_'+F_PA_KYHIEU+' a left join hr_department on a.ma_donvi=dept_no ');
  qryExecute.SQL.Add(' where a.ma_thang= '+IntToStr(dxTuthang.IntValue)+' and ');
  qryExecute.SQL.Add(' a.ma_nam='+IntToStr(dxTunam.IntValue)+' and ');
  qryExecute.SQL.Add(' a.ma_dot= '+IntToStr(dxTuDot.IntValue)+' and ');
  qryExecute.SQL.Add(' hr_department.dept_left_index>='+IntToStr(F_LEFT_INDEX)+ ' and ');
  qryExecute.SQL.Add(' hr_department.dept_right_index<='+IntToStr(F_RIGHT_INDEX)+' and ');
  qryExecute.SQL.Add(' a.ma_nhanvien||a.ma_donvi||a.ma_chucvu not in ');
  qryExecute.SQL.Add('   (select b.ma_nhanvien||b.ma_donvi||b.ma_chucvu ');
  qryExecute.SQL.Add('    from WB_'+F_PA_KYHIEU+' b where ');
  qryExecute.SQL.Add('      b.ma_dot='+IntToStr(dxDenDot.IntValue)+ ' and ');
  qryExecute.SQL.Add('      b.ma_thang='+IntToStr(dxDenthang.IntValue)+ ' and ');
  qryExecute.SQL.Add('      b.ma_nam='+IntToStr(dxDennam.IntValue)+' ) ');
  qryExecute.Prepare;
  try
    qryExecute.ExecSQL;
    ShowMessageUnicode(39);
  finally

  end;
  Screen.Cursor:=crDefault;
  frmLuong_Bangluong.acXembangluong.Execute;
end;
procedure TfrmLuong_Saochep.acThuchienUpdate(Sender: TObject);
begin
  inherited;
  acThuchien.Enabled:=not frmLuong_Bangluong.qryCongthuc.IsEmpty;
end;

procedure TfrmLuong_Saochep.acDongExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLuong_Saochep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmLuong_Saochep:=nil;
end;

end.
