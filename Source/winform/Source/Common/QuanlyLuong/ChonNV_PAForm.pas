unit ChonNV_PAForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SelectEmployeeBaseForm, dxExEdtr, ActnList, dxmdaset, DB,
  IBODataset, ElCaption, dxLayoutControl, dxEdLib, ElBtnCtl, ElPopBtn,
  dxCntner, dxEditor, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  cxControls, ElXPThemedControl, ElStatBar, StdCtrls, ElCLabel, ElLabel;

type
  TfrmChonNV_PA = class(TfrmSelectEmployee)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChonNV_PA: TfrmChonNV_PA;

implementation

uses Luong_TaoPAForm;

{$R *.dfm}

procedure TfrmChonNV_PA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmChonNV_PA:=nil;
end;

end.
