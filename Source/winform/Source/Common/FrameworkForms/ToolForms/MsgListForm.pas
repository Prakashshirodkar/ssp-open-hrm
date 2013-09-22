unit MsgListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, dxLayoutLookAndFeels, dxLayoutControl, dxCntner, dxTL, dxDBCtrl,
  dxDBTL, cxControls, dxEditor, dxEdLib, dxDBELib, dxExEdtr, StdCtrls,
  Buttons, dxDBGrid, ExtCtrls, Forms, dxDBTLCl, dxGrClms,
  ElCaption, XLSReadWriteII, ElXPThemedControl, ElBtnCtl, ElPopBtn, ImgList, DB,
  IBODataset, DBActns, ActnList, ToolbarFrame;

type
  TMsgListFrm = class(TForm)
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    locFormItem1: TdxLayoutItem;
    ElFormCaption1: TElFormCaption;
    OpenDialog1: TOpenDialog;
    dxDBGrid1IMAGE_ID: TdxDBGridImageColumn;
    dxDBGrid1MESSAGE_ID: TdxDBGridColumn;
    dxDBGrid1TITLE_VN: TdxDBGridColumn;
    dxDBGrid1TITLE_ENG: TdxDBGridColumn;
    dxDBGrid1TITLE_DEFAULT: TdxDBGridColumn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dxDBGrid1MESSAGE_DEFAULT: TdxDBGridMemoColumn;
    dxDBGrid1MESSAGE_ENG: TdxDBGridMemoColumn;
    dxDBGrid1MESSAGE_VN: TdxDBGridMemoColumn;
    locFormItem7: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ElPopupButton1Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MsgListFrm: TMsgListFrm;

implementation
uses MainDM;
{$R *.dfm}

procedure TMsgListFrm.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // ProcessKeyDownInGrid(dxDBGrid1, Key, Shift, False);
end;

procedure TMsgListFrm.dxDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {  if (Button = mbRight) then
      begin
        if TdxPopupMenuManager.Instance(true).ShowGridPopupMenu(TdxDBGrid(Sender)) then Exit;
      end;
     }
end;

procedure TMsgListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmMain.qryMsgList.State in [dsEdit] then
    dmMain.qryMsgList.Post;
  if dmMain.qryMessageList.Active then
    dmMain.qryMessageList.Refresh;
end;

procedure TMsgListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F10 then
    dmMain.ScanForm(self);
end;

procedure TMsgListFrm.FormShow(Sender: TObject);
var
  i: integer;
begin
  if sysConfig.AdminRight then
  begin
    for i := 0 to dxDBGrid1.ColumnCount - 1 do
      dxDBGrid1.Columns[i].DisableEditor := false;
  end
  else
  begin
    frameToolbar1.DisableDatasetAction(true);
  end;
end;

procedure TMsgListFrm.ElPopupButton1Click(Sender: TObject);
begin
  TIBOQuery(dxDBGrid1.DataSource.DataSet).Delete;
end;

procedure TMsgListFrm.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  try
    if (Anode.AbsoluteIndex mod 2) = 0 then
      AColor := clInactiveCaptionText
    else
      AColor := clWindow;
  except
  end
end;

procedure TMsgListFrm.FormCreate(Sender: TObject);
begin
  ApplyOption(TControl(Sender));
  frameToolbar1.SetDataSource(dmMain.dsMsgList)
end;

end.

