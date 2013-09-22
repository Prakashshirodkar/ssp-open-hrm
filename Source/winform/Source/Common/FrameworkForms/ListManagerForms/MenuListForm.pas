unit MenuListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TreeBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBTL, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl;

type
  TfrmMenuItem = class(TfrmTreeBase)
    qryListMENU_GROUP_ID: TWideStringField;
    qryListMENU_ID: TWideStringField;
    qryListMENU_TITLE: TWideStringField;
    qryListMENU_ICON_INDEX: TIntegerField;
    qryListP_MENU_ID: TWideStringField;
    qryListMENU_TITLE_ENG: TWideStringField;
    dxdbtlMainMENU_GROUP_ID: TdxDBTreeListMaskColumn;
    dxdbtlMainMENU_ID: TdxDBTreeListMaskColumn;
    dxdbtlMainMENU_TITLE: TdxDBTreeListMaskColumn;
    dxdbtlMainMENU_TITLE_ENG: TdxDBTreeListMaskColumn;
    dxdbtlMainMENU_ICON_INDEX: TdxDBTreeListImageColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuItem: TfrmMenuItem;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmMenuItem.FormCreate(Sender: TObject);
var i:integer;
begin
  dxdbtlMainMENU_ICON_INDEX.Values.Clear;
  dxdbtlMainMENU_ICON_INDEX.ImageIndexes.Clear;
  dxdbtlMainMENU_ICON_INDEX.Descriptions.Clear;
  for i:=0 to dmMain.imgMenuList.Count-1 do
  begin
    dxdbtlMainMENU_ICON_INDEX.Values.Add(IntToStr(i));
    dxdbtlMainMENU_ICON_INDEX.ImageIndexes.Add(IntToStr(i));
    dxdbtlMainMENU_ICON_INDEX.Descriptions.Add(IntToStr(i));
  end;
  inherited;
end;

end.
