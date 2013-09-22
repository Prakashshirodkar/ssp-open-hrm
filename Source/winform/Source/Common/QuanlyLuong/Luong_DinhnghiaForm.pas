unit Luong_DinhnghiaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, StdCtrls, ElCLabel, ElLabel, ExtCtrls,
  ElPanel, dxExEdtr, DB, IBODataset, ImgList, ElSplit, dxDBCtrl, dxTL,
  dxCntner, dxDBTL, ElPgCtl, dxmdaset, dxBar, ActnList, dxBarExtItems,
  IB_Components, IB_Process, IB_Script, Math;

type
  TfrmLuong_Dinhnghia = class(TfrmBase)
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    panelLeft: TPanel;
    dxtlMenuList: TdxDBTreeList;
    dxtlMenuListMENU_TITLE: TdxDBTreeListColumn;
    dxtlMenuListMENU_ICON_INDEX: TdxDBTreeListMaskColumn;
    mainPanel: TElPanel;
    ElSplitter1: TElSplitter;
    imgMenuList: TImageList;
    qryMenuList: TIBOQuery;
    qryMenuListMENU_ID: TWideStringField;
    qryMenuListMENU_TITLE: TWideStringField;
    qryMenuListMENU_ICON_INDEX: TIntegerField;
    qryMenuListP_MENU_ID: TWideStringField;
    qryMenuListMENU_TITLE_ENG: TWideStringField;
    dsMenuList: TDataSource;
    memMenuList: TdxMemData;
    memMenuListMENU_ID: TWideStringField;
    memMenuListMENU_TITLE: TWideStringField;
    memMenuListMENU_ICON_INDEX: TIntegerField;
    memMenuListP_MENU_ID: TWideStringField;
    memMenuListMENU_TITLE_ENG: TWideStringField;
    dxBarManager1: TdxBarManager;
    dxCreateMethod: TdxBarButton;
    dxDeleteMethod: TdxBarButton;
    dxModifyMethodInfo: TdxBarButton;
    dxMenuCreateMethod: TdxBarPopupMenu;
    dxMenuEditMethod: TdxBarPopupMenu;
    ActionList1: TActionList;
    acCreateMethod: TAction;
    acEditMethod: TAction;
    acDeleteMethod: TAction;
    qryPALuong: TIBOQuery;
    dsPALuong: TDataSource;
    acMethodDetail: TAction;
    dxBarDockControl1: TdxBarDockControl;
    dxBarSubItem1: TdxBarSubItem;
    dxCloneMethod: TdxBarButton;
    acCloneMethod: TAction;
    pageControl: TElPageControl;
    ElTabSheet1: TElTabSheet;
    qryPALuongKEY_ID: TIntegerField;
    qryPALuongPA_KYHIEU: TWideStringField;
    qryPALuongPA_TEN: TWideStringField;
    qryPALuongPA_THANGNAM_APDUNG: TIntegerField;
    qryPALuongPA_THANGNAM_HETHAN: TIntegerField;
    qryPALuongPA_PHANLOAI: TWideStringField;
    qryPALuongPA_NGUOILAP: TWideStringField;
    qryPALuongPA_NGAYLAP: TDateField;
    qryPALuongPA_GHICHU: TWideStringField;
    scriptExecute: TIB_Script;
    qryCheck: TIBOQuery;
    panelView: TPanel;
    dxMethodDetail: TdxBarButton;
    memMenuListPA_MA: TIntegerField;
    pageContent: TElPageControl;
    tabVIewDetail: TElTabSheet;
    tabIntroduce: TElTabSheet;
    qryPhanQuyen: TIBOQuery;
    qryPhanQuyenALLOW_ADD: TSmallintField;
    qryPhanQuyenALLOW_EDIT: TSmallintField;
    qryPhanQuyenALLOW_DELETE: TSmallintField;
    qryPhanQuyenKEY_ID: TIntegerField;
    procedure dxtlMenuListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxtlMenuListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acCreateMethodExecute(Sender: TObject);
    procedure acEditMethodExecute(Sender: TObject);
    procedure RefreshMenu;
    procedure acDeleteMethodExecute(Sender: TObject);
    procedure acDeleteMethodUpdate(Sender: TObject);
    procedure qryExecuteError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure acMethodDetailUpdate(Sender: TObject);
    procedure ShowMethodDetail;
    procedure acMethodDetailExecute(Sender: TObject);
    procedure dxtlMenuListDblClick(Sender: TObject);
    procedure acCloneMethodUpdate(Sender: TObject);
    procedure acCloneMethodExecute(Sender: TObject);
    procedure acEditMethodUpdate(Sender: TObject);

  private
    { Private declarations }
    F_CUR_PA_KYHIEU: WideString;
  public
    { Public declarations }
  end;

var
  frmLuong_Dinhnghia: TfrmLuong_Dinhnghia;

implementation

uses MainDM, MenuListForm, SSP_Library, Luong_TaoPAForm,
  Luong_ThietkePAForm, ToolbarFrame;

{$R *.dfm}

procedure TfrmLuong_Dinhnghia.dxtlMenuListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if sysConfig.AdminRight then
  begin
    if (Key = Ord('D')) and (ssCtrl in Shift) then
    begin
      ShowModalForm(TfrmMenuItem, frmMenuItem);
      dxtlMenuList.FullExpand;
      Exit;
    end;
  end;
end;

procedure TfrmLuong_Dinhnghia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree;
  frmLuong_Dinhnghia := nil;
  if Assigned(F_CustomForm) then
    F_CustomForm.Close;
end;

procedure TfrmLuong_Dinhnghia.RefreshMenu;
begin
  if memMenuList.Active then
    memMenuList.Close;
  memMenuList.Open;

  qryMenuList.Open;
  memMenuList.LoadFromDataSet(qryMenuList);
  qryPALuong.Open;
  if not qryPALuong.IsEmpty then
  begin
    qryPALuong.First;
    while not qryPALuong.Eof do
    begin
      memMenuList.Insert;
      memMenuListP_MENU_ID.Value := 'DS_PA_LUONG';
      memMenuListMENU_ID.Value := qryPALuongPA_KYHIEU.Value;
      memMenuListMENU_TITLE.Value := qryPALuongPA_TEN.Value;
      memMenuListMENU_TITLE_ENG.Value := qryPALuongPA_TEN.Value;
      memMenuListMENU_ICON_INDEX.Value := 0;
      memMenuListP_MENU_ID.Value := qryPALuongPA_PHANLOAI.Value;
      memMenuListPA_MA.Value := qryPALuongKEY_ID.Value;
      memMenuList.Post;
      qryPALuong.Next;
    end;
  end;
  dxtlMenuList.FullExpand;
  qryMenuList.Close;
  qryPALuong.Close;
end;

procedure TfrmLuong_Dinhnghia.FormCreate(Sender: TObject);
begin
  inherited;
  pageContent.ActivePageIndex := 0;
  pageContent.ShowTabs := false;
  RefreshMenu;
end;

procedure TfrmLuong_Dinhnghia.dxtlMenuListMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //added by THUYPTP - 23/2/2010
  if qryPhanQuyen.Active then qryPhanQuyen.Close;
  qryPhanQuyen.ParamByName('PA_MA').Value := Floor(memMenuListPA_MA.Value);
  qryPhanQuyen.Open;
  //Het added
  
  if Button = mbRight then
  begin
    if memMenuListMENU_ICON_INDEX.Value > 0 then
      dxMenuCreateMethod.PopupFromCursorPos
    else
      dxMenuEditMethod.PopupFromCursorPos
  end;
end;

procedure TfrmLuong_Dinhnghia.acCreateMethodExecute(Sender: TObject);
begin
  inherited;
  frmLuong_TaoPA := TfrmLuong_TaoPA.Create(self);
  try
    frmLuong_TaoPA.ShowModal;
  finally
    frmLuong_TaoPA.Free;
    frmLuong_TaoPA := nil;
  end;
  RefreshMenu;
end;

procedure TfrmLuong_Dinhnghia.acEditMethodExecute(Sender: TObject);
begin
  inherited;
  frmLuong_TaoPA := TfrmLuong_TaoPA.Create(self, memMenuListMENU_ID.Value);
  try
    frmLuong_TaoPA.ShowModal;
  finally
    frmLuong_TaoPA.Free;
    frmLuong_TaoPA := nil;
  end;
  RefreshMenu;
end;

procedure TfrmLuong_Dinhnghia.acDeleteMethodExecute(Sender: TObject);
  function CheckValid: boolean;
  begin
    result := true;
    try
      if qryCheck.Active then
        qryCheck.Close;
      qryCheck.SQL.Text := 'select first 1 WB_KEY_ID from WB_' +
        UpperCase(memMenuListMENU_ID.AsString);
      qryCheck.Prepare;
      qryCheck.Open;
      if qryCheck.IsEmpty = false then
        result := false;
      if qryCheck.Active then
        qryCheck.Close;
      qryCheck.SQL.Text := 'select first 1 TREE_ID from HR_GLOBAL_VARIABLE';
      qryCheck.Prepare;
      qryCheck.Open;
    except
      result := false;
    end;
    qryCheck.Close;
  end;
begin
  inherited;
  // Step 1: Kiem tra xem co duoc phep xoa phuong an luong hay khong
  // Dieu kien : chua duoc su dung de tinh luong hay dinh nghia cong thuc luong
  //  - Cac bang luong LG-WB-WF chua co du lieu
  if ShowMessageUnicode(84) <> mrYes then
    Exit;
  if CheckValid = false then
  begin
    ShowMessageUnicode(85);
    Exit;
  end;

  // Step 2: Xoa thong tin luong
  // - Drop trigger
  // - Drop generator
  // - Drop table
  try
    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Add('DROP TRIGGER WB_' + UpperCase(memMenuListMENU_ID.AsString) +
     '_BI;');

    scriptExecute.SQL.Add('DROP GENERATOR GEN_WB_' + UpperCase(memMenuListMENU_ID.AsString)
      + '_ID;');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    //Added by THUYPTP - 05/05/2009
    //Phai thuc thi doan nay truoc, commit transaction thi moi xoa cac table duoc
    scriptExecute.Execute;

    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Add('DROP TABLE WB_' + UpperCase(memMenuListMENU_ID.AsString) + ';');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    scriptExecute.SQL.Add('DROP TABLE WD_' + UpperCase(memMenuListMENU_ID.AsString) + ';');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    scriptExecute.SQL.Add('DROP TABLE WT_' + UpperCase(memMenuListMENU_ID.AsString) + ';');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    scriptExecute.SQL.Add('DROP TABLE WP_' + UpperCase(memMenuListMENU_ID.AsString) + ';');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    scriptExecute.SQL.Add('DROP TABLE WE_' + UpperCase(memMenuListMENU_ID.AsString) + ';');
    scriptExecute.SQL.Add(' COMMIT WORK;');

    scriptExecute.SQL.Add('delete from HR_LUONG_PHUONGAN where PA_KYHIEU=''' +
      memMenuListMENU_ID.AsString + ''';');
    scriptExecute.SQL.Add(' COMMIT WORK;');
    scriptExecute.Execute;

    {if ((sysConfig.Language =0) or (sysConfig.Language =0)) then
      ShowMessageUnicode('Phương án lương đã được xóa thành công',1,'Xóa phương án lương')
    else
      ShowMessageUnicode('The wage method has been deleted successfully !!',1,'Delete wage method');
    }
    ShowMessageUnicode(86);
    RefreshMenu;
    qryPALuong.Open;
    if qryPALuong.IsEmpty then
    begin
      if Assigned(F_CustomForm) then
      begin
        F_CustomForm.Close;
        F_CustomForm.Free;
        F_CustomForm := nil;
      end;
      F_CUR_PA_KYHIEU :='';
    end
    else
      acMethodDetail.Execute;
    qryPALuong.Close;
  except
    //Added by THUYPTP - 05/05/2009
    //Khi x�a table WB bi loi thi generator va trigger cua table WB_ da bi xoa
    //Do do phai tao lai de sau nay co xoa van chay dung
    //===========tao GENERATOR va TRIGGER==========================
    scriptExecute.SQL.Clear;
    scriptExecute.SQL.Add(
        ' CREATE SEQUENCE GEN_WB_' + UpperCase(memMenuListMENU_ID.AsString) + '_ID;');

    scriptExecute.SQL.Add(' SET TERM ^ ; ');
    scriptExecute.SQL.Add(
        ' CREATE TRIGGER WB_' + UpperCase(memMenuListMENU_ID.AsString) + '_BI FOR WB_' +
        UpperCase(memMenuListMENU_ID.AsString) +
        ' ACTIVE BEFORE INSERT POSITION 0 ' +
        ' AS ' +
        ' BEGIN ' +
        ' IF (NEW.WB_KEY_ID IS NULL) THEN ' +
        '   NEW.WB_KEY_ID = GEN_ID(GEN_WB_' + UpperCase(memMenuListMENU_ID.AsString) +
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
    scriptExecute.SQL.Add(' ^ ');
    scriptExecute.SQL.Add(' SET TERM ; ^ ');  
    scriptExecute.Execute;

    ShowMessageUnicode(87);
    {if ((sysConfig.Language =0) or (sysConfig.Language =0)) then
      ShowMessageUnicode('Tác vụ xóa phương án lương không thành công. Vui lòng liên hệ nhà cung cấp để được hướng dẫn chi tiết.',0,'Xóa phương án lương')
    else
      ShowMessageUnicode('The wage method has been used for calculating wage book. Then you can not delete it.',0,'Delete wage method');}
  end
end;

procedure TfrmLuong_Dinhnghia.acDeleteMethodUpdate(Sender: TObject);
begin
  inherited;
  acDeleteMethod.Enabled := (memMenuListMENU_ICON_INDEX.Value = 0) and
    ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_DELETE.Value = 1));
end;

procedure TfrmLuong_Dinhnghia.qryExecuteError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  //
end;

procedure TfrmLuong_Dinhnghia.acMethodDetailUpdate(Sender: TObject);
begin
  inherited;
  acMethodDetail.Enabled := (memMenuListMENU_ICON_INDEX.Value = 0);
end;

procedure TfrmLuong_Dinhnghia.ShowMethodDetail;
var
  frame: TComponent;
  old_form: TfrmBase;
begin
  if F_CUR_PA_KYHIEU = memMenuListMENU_ID.Value then
    exit;
  if Assigned(F_CustomForm) then
  begin
    F_CustomForm.Close;
    F_CustomForm.Free;
  end;
  F_CustomForm := TfrmLuong_ThietkePA.Create(Self);
  F_CUR_PA_KYHIEU := memMenuListMENU_ID.Value;
  

  ApplyOption(TControl(F_CustomForm));
  with F_CustomForm do
  try
    BorderStyle := bsNone;
    Align := alClient;
    Parent := panelView;
    Visible := true;
  finally
  end;
  lblListCaption.Caption := WideUpperCase(F_CustomForm.fcMain.Texts[0].Caption +
    ' ' + memMenuListMENU_TITLE.Value);
  pageContent.ActivePageIndex := 1;
end;

procedure TfrmLuong_Dinhnghia.acMethodDetailExecute(Sender: TObject);
begin
  inherited;
  ShowMethodDetail;
end;

procedure TfrmLuong_Dinhnghia.dxtlMenuListDblClick(Sender: TObject);
begin
  inherited;
  acMethodDetail.Execute;
end;

procedure TfrmLuong_Dinhnghia.acCloneMethodUpdate(Sender: TObject);
begin
  inherited;
  acCloneMethod.Enabled:=Assigned(F_CustomForm) and
      TfrmLuong_ThietkePA(F_CustomForm).acSaochepPALuong.Enabled;
end;

procedure TfrmLuong_Dinhnghia.acCloneMethodExecute(Sender: TObject);
begin
  inherited;
  TfrmLuong_ThietkePA(F_CustomForm).acSaochepPALuong.Execute;
end;

procedure TfrmLuong_Dinhnghia.acEditMethodUpdate(Sender: TObject);
begin
  inherited;
  acEditMethod.Enabled := (memMenuListMENU_ICON_INDEX.Value = 0) and
    ((sysConfig.User = 'smallfoot') or (sysConfig.User = 'sspadmin') or
     (qryPhanQuyenALLOW_EDIT.Value = 1));
end;

end.

