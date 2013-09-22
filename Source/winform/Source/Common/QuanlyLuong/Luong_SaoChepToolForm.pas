unit Luong_SaoChepToolForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, dxDBTLCl, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  DB, dxmdaset, dxLayoutControl, cxControls, ElCaption, ElXPThemedControl,
  ElStatBar, Registry;

type
  TfrmLuong_SaoChepTool = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    memColumnView: TdxMemData;
    memColumnViewCT_KYHIEU: TWideStringField;
    memColumnViewCT_TIEUDE: TWideStringField;
    memColumnViewCT_ID: TIntegerField;
    memColumnViewCT_VISIBLE: TIntegerField;
    dsColumnView: TDataSource;
    treeColumnView: TdxDBTreeList;
    treeColumnViewCT_TIEUDE: TdxDBTreeListColumn;
    treeColumnViewCT_VISIBLE: TdxDBTreeListCheckColumn;
    memColumnViewCT_SESSION: TIntegerField;
    procedure ReloadGridView;
    procedure SaveGridView;
    procedure FormCreate(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    F_PA_KYHIEU : String;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; PA_KYHIEU: string);
  end;

var
  frmLuong_SaoChepTool: TfrmLuong_SaoChepTool;

implementation

uses MainDM, Luong_Bangluong;

{$R *.dfm}

constructor TfrmLuong_SaoChepTool.Create(AOwner: TComponent; PA_KYHIEU: string);
begin
  F_PA_KYHIEU := PA_KYHIEU;
  inherited Create(AOwner);
end;

procedure TfrmLuong_SaoChepTool.ReloadGridView;
var i, id:integer;
    reg :TRegistry;
    bool_value:integer;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\SaoChep_BangLuong\'+F_PA_KYHIEU, true);

  if memColumnView.Active then memColumnView.Close;
  memColumnView.Open;
  {for i:=1 to frmLuong_Bangluong.gridLuong.Bands.Count-1 do
  begin
    memColumnView.Append;
    memColumnViewCT_KYHIEU.Value:='Band'+IntToStr(frmLuong_Bangluong.gridLuong.Bands[i].Index);
    memColumnViewCT_TIEUDE.Value:=frmLuong_Bangluong.gridLuong.Bands[i].Caption;
    memColumnViewCT_SESSION.Clear;
    memColumnViewCT_ID.Value:=frmLuong_Bangluong.gridLuong.Bands[i].Index;
    memColumnViewCT_VISIBLE.Value:=1;
    memColumnView.Post;
  end;}

  id:=100;
  frmLuong_Bangluong.qryCongthuc.First;
  while not frmLuong_Bangluong.qryCongthuc.Eof do
  begin
    if (frmLuong_Bangluong.qryCongthucCT_HINHTHUC_NHAPLIEU.Value<>'TINHTOAN') and
       (frmLuong_Bangluong.qryCongthucCT_HINHTHUC_NHAPLIEU.Value<>'TUDONG_CAPNHAT') then
    begin
      memColumnView.Append;
      memColumnViewCT_KYHIEU.Value:=frmLuong_Bangluong.gridLuong.Name +
                                        frmLuong_Bangluong.qryCongthucCT_KYHIEU.Value;
      memColumnViewCT_TIEUDE.Value:=frmLuong_Bangluong.qryCongthucCT_TIEUDE.Value;
      memColumnViewCT_ID.Value:= id;
      id := id + 1;

      try
        bool_value:= reg.ReadInteger(frmLuong_Bangluong.gridLuong.Name +
                                        frmLuong_Bangluong.qryCongthucCT_KYHIEU.Value);
        memColumnViewCT_VISIBLE.Value:=bool_value;
      except
        memColumnViewCT_VISIBLE.Value:= 1;
      end;
      memColumnView.Post;

    end;
    frmLuong_Bangluong.qryCongthuc.Next;
  end;

  reg.CloseKey;
  reg.Free;
end;

procedure TfrmLuong_SaoChepTool.SaveGridView;
var reg :TRegistry;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\SaoChep_BangLuong\'+F_PA_KYHIEU, true);

  memColumnView.First;
  while not memColumnView.Eof do
  begin
    try
      reg.WriteInteger(memColumnViewCT_KYHIEU.Value ,memColumnViewCT_VISIBLE.Value);
    except
    end;
    memColumnView.Next;
  end;
  reg.CloseKey;
  reg.Free;
end;

procedure TfrmLuong_SaoChepTool.FormCreate(Sender: TObject);
begin
  inherited;
  ReloadGridView;
  treeColumnView.FullExpand;
end;

procedure TfrmLuong_SaoChepTool.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
//
end;

procedure TfrmLuong_SaoChepTool.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if memColumnView.State in [dsEdit] then
    memColumnView.Post;
  SaveGridView;
  Action:=caFree;
  frmLuong_SaoChepTool:=nil;
end;

end.
