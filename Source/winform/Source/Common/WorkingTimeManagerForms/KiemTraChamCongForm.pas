unit KiemTraChamCongForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, ExtCtrls, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxGrClEx, DB, dxmdaset,
  DBActns, ActnList, IBODataset, ElPanel, ElPgCtl;

type
  TfrmKiemTraChamCong = class(TfrmEditBase)
    gridDayList: TdxDBGrid;
    gridDayListWEEY_DAY_NAME: TdxDBGridColumn;
    gridDayListWORK_DATE: TdxDBGridDateColumn;
    gridDayListWEEK_DAY: TdxDBGridColumn;
    Splitter2: TSplitter;
    gridThieuGioVao: TdxDBGrid;
    gridThieuGioVaoEMPLOYEE_NO: TdxDBGridColumn;
    gridThieuGioVaoFULL_NAME: TdxDBGridColumn;
    gridThieuGioVaoTITLE_NAME: TdxDBGridColumn;
    gridWorkTime: TdxDBGrid;
    gridWorkTimeSTART_TIME: TdxDBGridTimeColumn;
    gridWorkTimeEND_TIME: TdxDBGridTimeColumn;
    gridWorkTimeEND_DATE: TdxDBGridImageColumn;
    Splitter3: TSplitter;
    memDayList: TdxMemData;
    memDayListWEEK_DAY: TIntegerField;
    memDayListWEEY_DAY_NAME: TWideStringField;
    memDayListWORK_DATE: TDateField;
    dsDayList: TDataSource;
    ActionList1: TActionList;
    acTaoDSNgay: TAction;
    acXemdulieu: TAction;
    acLoadData: TAction;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    acMultiDelete: TAction;
    acMultiUpdate: TAction;
    qryKiemTraCC: TIBOQuery;
    qryKiemTraCCWORK_DATE: TDateField;
    qryThieuGioVao: TIBOQuery;
    dsThieuGioVao: TDataSource;
    qryThieuGioVaoEMPLOYEE_NO: TWideStringField;
    qryThieuGioVaoFULL_NAME: TWideStringField;
    qryThieuGioVaoDEPT_NAME: TWideStringField;
    qryThieuGioVaoTITLE_NAME: TWideStringField;
    gridThieuGioVaoDEPT_NAME: TdxDBGridColumn;
    qryWorkTime: TIBOQuery;
    dsWorkTime: TDataSource;
    qryWorkTimeEMPLOYEE_NO: TWideStringField;
    qryWorkTimeWORK_DATE: TDateField;
    qryWorkTimeSTART_TIME: TTimeField;
    qryWorkTimeEND_TIME: TTimeField;
    qryWorkTimeEND_DATE: TIntegerField;
    ElPanel1: TElPanel;
    dxlcMainItem2: TdxLayoutItem;
    Panel1: TPanel;
    pageDSNV: TElPageControl;
    tabThieuGiovao: TElTabSheet;
    tabThieuGioRa: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    gridThieuGioRa: TdxDBGrid;
    gridThieuGioraEMPLOYEE_NO: TdxDBGridColumn;
    gridThieuGioraFULL_NAME: TdxDBGridColumn;
    gridThieuGioraDEPT_NAME: TdxDBGridColumn;
    gridThieuGioraTITLE_NAME: TdxDBGridColumn;
    qryThieuGioRa: TIBOQuery;
    dsThieuGioRa: TDataSource;
    qryThieuGioRaEMPLOYEE_NO: TWideStringField;
    qryThieuGioRaFULL_NAME: TWideStringField;
    qryThieuGioRaDEPT_NAME: TWideStringField;
    qryThieuGioRaTITLE_NAME: TWideStringField;
    qryThieuGioVaoSOLAN_QUETTHE: TIntegerField;
    gridThieuGioVaoSOLAN_QUETTHE: TdxDBGridColumn;
    qryThieuGioRaSOLAN_QUETTHE: TIntegerField;
    gridThieuGioRaSOLAN_QUETTHE: TdxDBGridColumn;
    qryThieuGioVaoDEPT_NO: TWideStringField;
    qryThieuGioVaoTITLE_NO: TWideStringField;
    qryThieuGioRaDEPT_NO: TWideStringField;
    qryThieuGioRaTITLE_NO: TWideStringField;
    qryWorkTimeWT_ID: TIntegerField;
    qryWorkTimeDEPT_NO: TWideStringField;
    qryWorkTimeTITLE_NO: TWideStringField;
    procedure acTaoDSNgayExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acXemdulieuExecute(Sender: TObject);
    procedure gridDayListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure gridThieuGioVaoChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure gridDayListWEEY_DAY_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridDayListWORK_DATECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acMultiUpdateExecute(Sender: TObject);
    procedure pageDSNVChange(Sender: TObject);
    procedure gridThieuGioRaChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure gridDayListEnter(Sender: TObject);
    procedure qryWorkTimeAfterPost(DataSet: TDataSet);
    procedure qryWorkTimeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    NGAY_BD, NGAY_KT : TDate;
  public
    { Public declarations }
     constructor Create(AOwner: TComponent; FROM_DATE, TO_DATE: TDate);
  end;

var
  frmKiemTraChamCong: TfrmKiemTraChamCong;

implementation

uses MainDM, DateUtils, NhapGioForm;

{$R *.dfm}

constructor TfrmKiemTraChamCong.Create(AOwner: TComponent; FROM_DATE, TO_DATE: TDate);
begin
  NGAY_BD := FROM_DATE;
  NGAY_KT := TO_DATE;
  inherited Create(AOwner);
end;

procedure TfrmKiemTraChamCong.acTaoDSNgayExecute(Sender: TObject);
var
  cur_date: TDate;
begin
  inherited;
  if qryKiemTraCC.Active then qryKiemTraCC.Close;
  qryKiemTraCC.ParamByName('NGAY_BD').Value := NGAY_BD;
  qryKiemTraCC.ParamByName('NGAY_KT').Value := NGAY_KT;
  qryKiemTraCC.Open;

  memDayList.DisableControls;

  memDayList.Close;
  memDayList.Open;
  
  qryKiemTraCC.First;
  while not qryKiemTraCC.Eof do
  begin
    cur_date := qryKiemTraCCWORK_DATE.Value ;
    memDayList.Append;
    memDayListWEEK_DAY.Value := DayOfTheWeek(cur_date);
    if sysConfig.Language = 2 then
      memDayListWEEY_DAY_NAME.Value :=
        Utf8Decode(WeekEng[memDayListWEEK_DAY.Value])
    else
      memDayListWEEY_DAY_NAME.Value :=
        Utf8Decode(WeekVn[memDayListWEEK_DAY.Value]);
    memDayListWORK_DATE.Value := cur_date;
    memDayList.Post;
    qryKiemTraCC.Next;
  end;
  memDayList.EnableControls;
end;

procedure TfrmKiemTraChamCong.FormCreate(Sender: TObject);
begin
  inherited;
  acTaoDSNgay.Execute;
  qryThieuGioVao.Open;
  qryThieuGioRa.Open;
  acXemdulieu.Execute;
  frameToolbar1.SetDataSource(dsWorkTime );
end;

procedure TfrmKiemTraChamCong.acXemdulieuExecute(Sender: TObject);
begin
  inherited;
  if pageDSNV.ActivePage = tabThieuGiovao then
  begin
    qryWorkTime.DisableControls;
    if qryWorkTime.Active then qryWorkTime.Close;
    qryWorkTime.ParamByName('EMPLOYEE_NO').Value := qryThieuGioVaoEMPLOYEE_NO.Value ;
    qryWorkTime.ParamByName('WORK_DATE').Value := memDayListWORK_DATE.Value ;
    qryWorkTime.ParamByName('DEPT_NO').Value := qryThieuGioVaoDEPT_NO.Value ;
    qryWorkTime.ParamByName('TITLE_NO').Value := qryThieuGioVaoTITLE_NO.Value ;
    qryWorkTime.Open;
    qryWorkTime.EnableControls;
  end
  else if pageDSNV.ActivePage = tabThieuGioRa then
  begin
    qryWorkTime.DisableControls;
    if qryWorkTime.Active then qryWorkTime.Close;
    qryWorkTime.ParamByName('EMPLOYEE_NO').Value := qryThieuGioRaEMPLOYEE_NO.Value ;
    qryWorkTime.ParamByName('WORK_DATE').Value := memDayListWORK_DATE.Value ;
    qryWorkTime.ParamByName('DEPT_NO').Value := qryThieuGioraDEPT_NO.Value ;
    qryWorkTime.ParamByName('TITLE_NO').Value := qryThieuGioraTITLE_NO.Value ;
    qryWorkTime.Open;
    qryWorkTime.EnableControls;
  end
end;

procedure TfrmKiemTraChamCong.gridDayListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemdulieu.Execute;
end;

procedure TfrmKiemTraChamCong.gridThieuGioVaoChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemdulieu.Execute;
end;

procedure TfrmKiemTraChamCong.gridDayListWEEY_DAY_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[gridDayListWEEK_DAY.Index] = 7 then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clRed;
  end;
end;

procedure TfrmKiemTraChamCong.gridDayListWORK_DATECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.Values[gridDayListWEEK_DAY.Index] = 7 then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clRed;
  end;
end;

procedure TfrmKiemTraChamCong.acMultiUpdateExecute(Sender: TObject);
var
  from_time, to_time : TTime;
  i :integer;
begin
  inherited;
  if pageDSNV.ActivePage = tabThieuGiovao then
  begin
    frmNhapGio := TfrmNhapGio.Create(self);
    try
      frmNhapGio.ShowModal;
      from_time := frmNhapGio.FROM_TIME;
      to_time := frmNhapGio.TO_TIME;
      Screen.Cursor:=crSQLWait;
      qryThieuGioVao.DisableControls;
      for i:=0 to gridThieuGioVao.SelectedCount-1 do
      begin
        if qryThieuGioVao.Locate('EMPLOYEE_NO',VarToWideStr(gridThieuGioVao.SelectedNodes[i].Values[gridThieuGioVaoEMPLOYEE_NO.Index]),[])
        then
        begin
          qryWorkTime.DisableControls;
          if qryWorkTime.Active then qryWorkTime.Close;
          qryWorkTime.ParamByName('EMPLOYEE_NO').Value := qryThieuGioVaoEMPLOYEE_NO.Value ;
          qryWorkTime.ParamByName('WORK_DATE').Value := memDayListWORK_DATE.Value ;
          qryWorkTime.ParamByName('DEPT_NO').Value := qryThieuGioVaoDEPT_NO.Value ;
          qryWorkTime.ParamByName('TITLE_NO').Value := qryThieuGioVaoTITLE_NO.Value ;
          qryWorkTime.Open;
          qryWorkTime.First;
          while not qryWorkTime.Eof do
          begin
            if not (qryWorkTime.State in [dsEdit,dsInsert]) then qryWorkTime.Edit;
            if (qryWorkTimeSTART_TIME.Value = qryWorkTimeEND_TIME.Value ) then
            begin
              if not (frmNhapGio.FROM_TIME = 0) then
                qryWorkTimeSTART_TIME.Value := frmNhapGio.FROM_TIME;
              if not (frmNhapGio.TO_TIME = 0) then
                qryWorkTimeEND_TIME.Value := frmNhapGio.TO_TIME;
            end;
            qryWorkTime.Post;
            qryWorkTime.Next;
          end;
          qryWorkTime.EnableControls;
        end;
      end;
      qryThieuGioVao.EnableControls;
      Screen.Cursor:=crDefault;
    finally
      frmNhapGio.Free;
    end;
  end
  ELSE if pageDSNV.ActivePage = tabThieuGioRa then
  begin
    frmNhapGio := TfrmNhapGio.Create(self);
    try
      frmNhapGio.ShowModal;
      from_time := frmNhapGio.FROM_TIME;
      to_time := frmNhapGio.TO_TIME;
      Screen.Cursor:=crSQLWait;
      qryThieuGioRa.DisableControls;
      for i:=0 to gridThieuGioRa.SelectedCount-1 do
      begin
        if qryThieuGioRa.Locate('EMPLOYEE_NO',VarToWideStr(gridThieuGioRa.SelectedNodes[i].Values[gridThieuGioRaEMPLOYEE_NO.Index]),[])
        then
        begin
          qryWorkTime.DisableControls;
          if qryWorkTime.Active then qryWorkTime.Close;
          qryWorkTime.ParamByName('EMPLOYEE_NO').Value := qryThieuGioRaEMPLOYEE_NO.Value ;
          qryWorkTime.ParamByName('WORK_DATE').Value := memDayListWORK_DATE.Value ;
          qryWorkTime.ParamByName('DEPT_NO').Value := qryThieuGioRaDEPT_NO.Value ;
          qryWorkTime.ParamByName('TITLE_NO').Value := qryThieuGioRaTITLE_NO.Value ;
          qryWorkTime.Open;
          qryWorkTime.First;
          while not qryWorkTime.Eof do
          begin
            if not (qryWorkTime.State in [dsEdit,dsInsert]) then qryWorkTime.Edit;
            if (qryWorkTimeSTART_TIME.Value = qryWorkTimeEND_TIME.Value ) then
            begin
              if not (frmNhapGio.FROM_TIME = 0) then
                qryWorkTimeSTART_TIME.Value := frmNhapGio.FROM_TIME;
              if not (frmNhapGio.TO_TIME = 0) then
                qryWorkTimeEND_TIME.Value := frmNhapGio.TO_TIME;
            end;
            qryWorkTime.Post;
            qryWorkTime.Next;
          end;
          qryWorkTime.EnableControls;
        end;
      end;
      qryThieuGioRa.EnableControls;
      Screen.Cursor:=crDefault;
    finally
      frmNhapGio.Free;
    end;
  end
end;

procedure TfrmKiemTraChamCong.pageDSNVChange(Sender: TObject);
begin
  inherited;
  acXemdulieu.Execute;
end;

procedure TfrmKiemTraChamCong.gridThieuGioRaChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  acXemdulieu.Execute;
end;

procedure TfrmKiemTraChamCong.gridDayListEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsWorkTime);
end;

procedure TfrmKiemTraChamCong.qryWorkTimeAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryWorkTime.Refresh;
end;

procedure TfrmKiemTraChamCong.qryWorkTimeNewRecord(DataSet: TDataSet);
begin
  inherited;
  if pageDSNV.ActivePage = tabThieuGiovao then
  begin
    qryWorkTimeDEPT_NO.Value := qryThieuGioVaoDEPT_NO.Value;
    qryWorkTimeTITLE_NO.Value := qryThieuGioVaoTITLE_NO.Value;
  end
  else
  if pageDSNV.ActivePage = tabThieuGioRa then
  begin
    qryWorkTimeDEPT_NO.Value := qryThieuGioRaDEPT_NO.Value;
    qryWorkTimeTITLE_NO.Value := qryThieuGioRaTITLE_NO.Value;
  end;
end;

end.
