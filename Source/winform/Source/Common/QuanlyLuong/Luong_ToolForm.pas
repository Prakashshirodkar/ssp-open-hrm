unit Luong_ToolForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxEditor, DB,
  dxmdaset, dxTL, dxDBCtrl, dxDBTL, dxDBTLCl;

type
  TfrmLuong_Tuychon = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsColumnView: TDataSource;
    memColumnView: TdxMemData;
    memColumnViewCT_KYHIEU: TWideStringField;
    memColumnViewCT_TIEUDE: TWideStringField;
    memColumnViewCT_SESSION: TIntegerField;
    treeColumnView: TdxDBTreeList;
    dxLayoutControl1Item1: TdxLayoutItem;
    treeColumnViewCT_TIEUDE: TdxDBTreeListColumn;
    memColumnViewCT_ID: TIntegerField;
    memColumnViewCT_VISIBLE: TBooleanField;
    treeColumnViewCT_VISIBLE: TdxDBTreeListCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure ReloadGridView;
    procedure memColumnViewCT_VISIBLEChange(Sender: TField);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLuong_Tuychon: TfrmLuong_Tuychon;

implementation

uses MainDM, Luong_Bangluong;

{$R *.dfm}

procedure TfrmLuong_Tuychon.FormCreate(Sender: TObject);
begin
  inherited;
  ReloadGridView;
  treeColumnView.FullExpand;
end;
procedure TfrmLuong_Tuychon.ReloadGridView;
var i:integer;
begin
  if memColumnView.Active then memColumnView.Close;
  memColumnView.Open;
  for i:=1 to frmLuong_Bangluong.gridLuong.Bands.Count-1 do
  begin
    memColumnView.Append;
    memColumnViewCT_KYHIEU.Value:='Band'+IntToStr(frmLuong_Bangluong.gridLuong.Bands[i].Index);
    memColumnViewCT_TIEUDE.Value:=frmLuong_Bangluong.gridLuong.Bands[i].Caption;
    memColumnViewCT_SESSION.Clear;
    memColumnViewCT_ID.Value:=frmLuong_Bangluong.gridLuong.Bands[i].Index;
    memColumnViewCT_VISIBLE.Value:=frmLuong_Bangluong.gridLuong.Bands[i].Visible;
    memColumnView.Post;
  end;
  for i:=0 to frmLuong_Bangluong.gridLuong.ColumnCount-1 do
  begin
    if frmLuong_Bangluong.gridLuong.Columns[i].BandIndex=0 then Continue;
    memColumnView.Append;
    memColumnViewCT_KYHIEU.Value:=frmLuong_Bangluong.gridLuong.Columns[i].Name;
    memColumnViewCT_TIEUDE.Value:=frmLuong_Bangluong.gridLuong.Columns[i].Caption;
    memColumnViewCT_SESSION.Value:=frmLuong_Bangluong.gridLuong.Columns[i].BandIndex;
    memColumnViewCT_ID.Value:=frmLuong_Bangluong.gridLuong.Columns[i].BandIndex*100+
      frmLuong_Bangluong.gridLuong.Columns[i].Index;
   memColumnViewCT_VISIBLE.Value:=frmLuong_Bangluong.gridLuong.Columns[i].Visible;
   memColumnView.Post;
  end;
end;
procedure TfrmLuong_Tuychon.memColumnViewCT_VISIBLEChange(Sender: TField);
begin
  inherited;
  if memColumnViewCT_SESSION.IsNull then
  begin
    frmLuong_Bangluong.gridLuong.Bands[memColumnViewCT_ID.Value].Visible:=
      memColumnViewCT_VISIBLE.Value;
  end
  else
  begin
    frmLuong_Bangluong.gridLuong.ColumnByName(memColumnViewCT_KYHIEU.AsString).Visible:=
      memColumnViewCT_VISIBLE.Value;
  end;
  if memColumnView.State in [dsEdit] then
    memColumnView.Post;
end;

procedure TfrmLuong_Tuychon.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
//  inherited;
end;

procedure TfrmLuong_Tuychon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if memColumnView.State in [dsEdit] then
    memColumnView.Post;
  frmLuong_Bangluong.SaveGridView;
  Action:=caFree;
  frmLuong_Tuychon:=nil;
end;

end.
