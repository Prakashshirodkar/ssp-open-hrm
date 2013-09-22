unit BAOHIEM_ChonNVForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SelectEmployeeBaseForm, dxExEdtr, ActnList, dxmdaset, DB,
  IBODataset, ElCaption, dxLayoutControl, dxEdLib, ElBtnCtl, ElPopBtn,
  dxCntner, dxEditor, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  StdCtrls, ElCLabel, ElLabel, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmBAOHIEM_ChonNV = class(TfrmSelectEmployee)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_ChonNV: TfrmBAOHIEM_ChonNV;

implementation

{$R *.dfm}

procedure TfrmBAOHIEM_ChonNV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmBAOHIEM_ChonNV:=nil;
end;

end.
