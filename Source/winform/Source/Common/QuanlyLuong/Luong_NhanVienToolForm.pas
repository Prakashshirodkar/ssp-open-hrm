unit Luong_NhanVienToolForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxExEdtr, dxDBTLCl, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  ElCaption, ElXPThemedControl, ElStatBar, dxLayoutControl, cxControls, DB,
  dxmdaset, Registry;

type
  TfrmLuong_NhanVienTool = class(TfrmBase)
    treeColumnView: TdxDBTreeList;
    treeColumnViewCT_TIEUDE: TdxDBTreeListColumn;
    treeColumnViewCT_VISIBLE: TdxDBTreeListCheckColumn;
    memColumnView: TdxMemData;
    memColumnViewCT_KYHIEU: TWideStringField;
    memColumnViewCT_TIEUDE: TWideStringField;
    memColumnViewCT_ID: TIntegerField;
    dsColumnView: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    memColumnViewCT_VISIBLE: TIntegerField;
    procedure ReloadGridView;
    procedure FormCreate(Sender: TObject);
    procedure SaveGridView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
  private
    { Private declarations }
    F_PA_KYHIEU: string;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; PA_KYHIEU: string);
  end;

var
  frmLuong_NhanVienTool: TfrmLuong_NhanVienTool;

implementation

uses MainDM, Luong_NhanVienForm;

{$R *.dfm}

constructor TfrmLuong_NhanVienTool.Create(AOwner: TComponent; PA_KYHIEU: string);
begin
  F_PA_KYHIEU := PA_KYHIEU;
  inherited Create(AOwner);
end;

procedure TfrmLuong_NhanVienTool.ReloadGridView;
var i:integer;
    reg :TRegistry;
    bool_value:integer;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\DULIEU_NHANVIEN\'+F_PA_KYHIEU, true);

  if memColumnView.Active then memColumnView.Close;
  memColumnView.Open;
  for i:=0 to frmLuong_NhanVien.tlData.ColumnCount-1 do
  begin
    if frmLuong_NhanVien.tlData.Columns[i].Tag = 0 then
    begin
      memColumnView.Append;
      memColumnViewCT_KYHIEU.Value:=frmLuong_NhanVien.tlData.Columns[i].Name;
      memColumnViewCT_TIEUDE.Value:=frmLuong_NhanVien.tlData.Columns[i].Caption;
      memColumnViewCT_ID.Value:= frmLuong_NhanVien.tlData.Columns[i].Index;

      try
        bool_value:= reg.ReadInteger(frmLuong_NhanVien.tlData.Columns[i].Name);
        memColumnViewCT_VISIBLE.Value:=bool_value;
      except
        memColumnViewCT_VISIBLE.Value:= 1;
      end;
      memColumnView.Post;
    end;
  end;
  reg.CloseKey;
  reg.Free;
end;

procedure TfrmLuong_NhanVienTool.SaveGridView;
var reg :TRegistry;
begin
  reg:=TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey(REGISTRY_ROOT + '\'+sysConfig.User+'\DULIEU_NHANVIEN\'+F_PA_KYHIEU, true);

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


procedure TfrmLuong_NhanVienTool.FormCreate(Sender: TObject);
begin
  inherited;
  ReloadGridView;
  treeColumnView.FullExpand;
end;

procedure TfrmLuong_NhanVienTool.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if memColumnView.State in [dsEdit] then
    memColumnView.Post;
  SaveGridView;
  Action:=caFree;
  frmLuong_NhanVienTool:=nil;
end;

procedure TfrmLuong_NhanVienTool.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
//
end;

end.
