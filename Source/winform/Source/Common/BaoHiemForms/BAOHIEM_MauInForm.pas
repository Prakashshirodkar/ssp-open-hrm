unit BAOHIEM_MauInForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms;

type
  TfrmBAOHIEM_MauIn = class(TfrmListBase)
    qryListKEY_ID: TIntegerField;
    qryListTIEUDE_MAUIN: TWideStringField;
    qryListFILE_NAME: TWideStringField;
    qryListFILE_CONTENT: TBlobField;
    dxdbgMainTIEUDE_MAUIN: TdxDBGridColumn;
    dxdbgMainFILE_NAME: TdxDBGridButtonColumn;
    procedure dxdbgMainFILE_NAMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_MauIn: TfrmBAOHIEM_MauIn;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmBAOHIEM_MauIn.dxdbgMainFILE_NAMEButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender, AbsoluteIndex,'FILE_NAME','FILE_CONTENT');
end;

end.
