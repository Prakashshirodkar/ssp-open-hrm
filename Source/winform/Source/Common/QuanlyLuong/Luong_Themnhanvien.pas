unit Luong_Themnhanvien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SelectEmployeeBaseForm, dxExEdtr, ActnList, dxmdaset, DB,
  IBODataset, ElCaption, dxLayoutControl, dxEdLib, ElBtnCtl, ElPopBtn,
  dxCntner, dxEditor, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  cxControls, ElXPThemedControl, ElStatBar, StdCtrls, ElCLabel, ElLabel;

type
  TfrmLuong_Themnhanvien = class(TfrmSelectEmployee)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    F_PA_KYHIEU:string;
    F_THANG , F_NAM : integer;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;PA_KYHIEU :string;THANG,NAM:integer);
  end;

var
  frmLuong_Themnhanvien: TfrmLuong_Themnhanvien;

implementation

{$R *.dfm}
constructor TfrmLuong_Themnhanvien.Create(AOwner:TComponent;PA_KYHIEU :string;THANG,NAM:integer);
begin
  F_PA_KYHIEU:=PA_KYHIEU;
  F_THANG:=THANG;
  F_NAM:=NAM;
  inherited Create(AOwner);

end;
procedure TfrmLuong_Themnhanvien.FormCreate(Sender: TObject);
begin
  {qryData.SQLWhere.Text:='where EMP_NO||DEPT_NO||TITLE_NO not in '+
     ' (select MA_NHANVIEN||MA_DONVI||MA_CHUCVU from WB_'+F_PA_KYHIEU+
     ' where MA_THANG='+IntToStr(F_THANG)+' and MA_NAM='+IntToStr(F_NAM)+' )';}
  inherited;
end;

procedure TfrmLuong_Themnhanvien.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmLuong_Themnhanvien:=nil;
end;

end.
