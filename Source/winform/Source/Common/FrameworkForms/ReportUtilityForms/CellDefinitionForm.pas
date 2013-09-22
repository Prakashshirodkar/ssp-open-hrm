unit CellDefinitionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  ElPgCtl, ActnList, ElBtnCtl, ElPopBtn, dxDBELib, DB, IBODataset;

type
  TfrmCellDefinition = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxCellType: TdxImageEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    pageMain: TElPageControl;
    dxLayoutControl1Item3: TdxLayoutItem;
    tabGiatri: TElTabSheet;
    tabBieuthuc: TElTabSheet;
    tabSQL: TElTabSheet;
    dxCellText: TdxMemo;
    dxCellSQL: TdxMemo;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    acDongy: TAction;
    acBoqua: TAction;
    dxlcFunction: TdxLayoutControl;
    CopyMemo: TdxMemo;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    ElPopupButton9: TElPopupButton;
    ElPopupButton10: TElPopupButton;
    ElPopupButton11: TElPopupButton;
    ElPopupButton13: TElPopupButton;
    ElPopupButton14: TElPopupButton;
    ElPopupButton15: TElPopupButton;
    ElPopupButton16: TElPopupButton;
    ElPopupButton17: TElPopupButton;
    ElPopupButton18: TElPopupButton;
    ElPopupButton19: TElPopupButton;
    ElPopupButton20: TElPopupButton;
    ElPopupButton22: TElPopupButton;
    ElPopupButton23: TElPopupButton;
    ElPopupButton24: TElPopupButton;
    ElPopupButton25: TElPopupButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxlcFunctionGroup5: TdxLayoutGroup;
    dxlcFunctionGroup4: TdxLayoutGroup;
    dxlcFunctionItem8: TdxLayoutItem;
    dxlcFunctionItem12: TdxLayoutItem;
    dxlcFunctionItem19: TdxLayoutItem;
    dxlcFunctionItem29: TdxLayoutItem;
    dxlcFunctionGroup7: TdxLayoutGroup;
    dxlcFunctionItem9: TdxLayoutItem;
    dxlcFunctionItem13: TdxLayoutItem;
    dxlcFunctionItem17: TdxLayoutItem;
    dxlcFunctionItem30: TdxLayoutItem;
    dxlcFunctionGroup8: TdxLayoutGroup;
    dxlcFunctionItem10: TdxLayoutItem;
    dxlcFunctionItem14: TdxLayoutItem;
    dxlcFunctionItem18: TdxLayoutItem;
    dxlcFunctionItem34: TdxLayoutItem;
    dxlcFunctionGroup14: TdxLayoutGroup;
    dxlcFunctionGroup2: TdxLayoutGroup;
    dxlcFunctionItem11: TdxLayoutItem;
    dxlcFunctionItem15: TdxLayoutItem;
    dxlcFunctionItem20: TdxLayoutItem;
    dxlcFunctionItem38: TdxLayoutItem;
    dxlcFunctionGroup3: TdxLayoutGroup;
    dxlcFunctionItem33: TdxLayoutItem;
    dxlcFunctionItem37: TdxLayoutItem;
    dxlcFunctionItem40: TdxLayoutItem;
    dxlcFunctionItem39: TdxLayoutItem;
    dxPopupEdit1: TdxPopupEdit;
    dxlcItemFunctionList: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxCellFormular: TdxMemo;
    dxlcFunctionItem1: TdxLayoutItem;
    qryExecute: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure dxCellTypeChange(Sender: TObject);
    procedure dxCellFormularChange(Sender: TObject);
    procedure dxCellSQLChange(Sender: TObject);
    procedure dxCellTextChange(Sender: TObject);
    procedure acDongyUpdate(Sender: TObject);
    procedure acBoquaUpdate(Sender: TObject);
    procedure acBoquaExecute(Sender: TObject);
    procedure acDongyExecute(Sender: TObject);
    procedure AddText(text:String);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure ElPopupButton23Click(Sender: TObject);
    procedure ElPopupButton24Click(Sender: TObject);
    procedure dxPopupEdit1InitPopup(Sender: TObject);
    procedure dxPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
    F_CHANGED:boolean;

    procedure SetCellDefinition(CELL_DEFINITION:WideString);
    function CheckSQL:boolean;
  public
    { Public declarations }
    F_CELL_DEFINITION,F_CELL_TYPE:WideString;
    constructor Create(AOwner:TComponent;CELL_DEFINITION:WideString;CELL_TYPE:String);
    function GetCellType:Widestring;
    function GetCellDefinition:WideString;

  end;

var
  frmCellDefinition: TfrmCellDefinition;

implementation

uses MainDM, SSP_Library;

{$R *.dfm}
procedure TfrmCellDefinition.SetCellDefinition(CELL_DEFINITION:WideString);
begin
  dxCellText.Text:=CELL_DEFINITION;
  dxCellFormular.Text:=CELL_DEFINITION;
  dxCellSQL.Text:=CELL_DEFINITION;
end;
constructor TfrmCellDefinition.Create(AOwner:TComponent;CELL_DEFINITION:WideString;CELL_TYPE:String);
begin
  inherited Create(AOwner);
  if CELL_TYPE='' then
    dxCellType.Text:='VAN_BAN'
  else  
    dxCellType.Text:=CELL_TYPE;
  SetCellDefinition(CELL_DEFINITION);
  F_CHANGED:=false;
end;

procedure TfrmCellDefinition.FormCreate(Sender: TObject);
begin
  dxCellType.Descriptions.Add(Utf8Decode('Văn bản'));
  dxCellType.Descriptions.Add(Utf8Decode('Biểu thức'));
  dxCellType.Descriptions.Add(Utf8Decode('Câu SQL'));

  dxCellType.Values.Add('VAN_BAN');
  dxCellType.Values.Add('BIEU_THUC');
  dxCellType.Values.Add('CAU_SQL');

  pageMain.ShowTabs:=false;
  inherited;
end;

procedure TfrmCellDefinition.dxCellTypeChange(Sender: TObject);
begin
  inherited;
  if dxCellType.Text='VAN_BAN' then
  begin
    pageMain.ActivePage:=tabGiatri;
    dxlcItemFunctionList.Visible:=false;
  end
  else
  if dxCellType.Text='BIEU_THUC' then
  begin
    pageMain.ActivePage:=tabBieuthuc;
    dxlcItemFunctionList.Visible:=true;
  end
  else
  if dxCellType.Text='CAU_SQL' then
  begin
    pageMain.ActivePage:=tabSQL;
    dxlcItemFunctionList.Visible:=false;
  end;
  F_CHANGED:=true;
end;

procedure TfrmCellDefinition.dxCellFormularChange(Sender: TObject);
begin
  inherited;
  F_CHANGED:=true;
end;

procedure TfrmCellDefinition.dxCellSQLChange(Sender: TObject);
begin
  inherited;
  F_CHANGED:=true;
end;

procedure TfrmCellDefinition.dxCellTextChange(Sender: TObject);
begin
  inherited;
  F_CHANGED:=true;
end;

procedure TfrmCellDefinition.acDongyUpdate(Sender: TObject);
begin
  inherited;
  acDongy.Enabled:=F_CHANGED;
end;

procedure TfrmCellDefinition.acBoquaUpdate(Sender: TObject);
begin
  inherited;
  acBoqua.Enabled:=F_CHANGED;
end;

procedure TfrmCellDefinition.acBoquaExecute(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
end;

procedure TfrmCellDefinition.acDongyExecute(Sender: TObject);
var ok:boolean;
   error_code:integer;
begin
  inherited;
  ok:=true;
  F_CELL_DEFINITION:='';
  F_CELL_TYPE:=dxCellType.Text;
  if F_CELL_TYPE='VAN_BAN' then
    F_CELL_DEFINITION:=dxCellText.Text
  else
  if F_CELL_TYPE='BIEU_THUC' then
  begin
    frmAnalyser.SetTestFlag;
    frmAnalyser.AnalyzeExpresion(String(dxCellFormular.Text),error_code);
    if error_code<>0 then
    begin
      if sysConfig.Language = 2 then // dang o che do tieng Anh
        HintBox(self, dxCellFormular,
          'The expression has an syntax error at position :' + IntToStr(error_code),
          'Syntax error')
      else
        HintBox(self, dxCellFormular,
          Utf8Decode('Biểu thức tính lương có lỗi cú pháp tại vị trí: ') + IntToStr(error_code),
          Utf8Decode('Lỗi cú pháp'));
      ok:=false
    end;
    if ok then F_CELL_DEFINITION:=dxCellFormular.Text;
  end
  else
  if F_CELL_TYPE='CAU_SQL' then
  begin
    ok:=CheckSQL;
    if ok then
      F_CELL_DEFINITION:=dxCellSQL.Text;
  end;
  if ok then
   ModalResult:=mrOk;
end;

procedure TfrmCellDefinition.AddText(text:String);
begin
  inherited;
  CopyMemo.Text := Text;
  CopyMemo.SelectAll;
  CopyMemo.CopyToClipboard;
  dxCellFormular.PasteFromClipboard;
  dxCellFormular.SetFocus;
end;

procedure TfrmCellDefinition.ElPopupButton4Click(Sender: TObject);
begin
  inherited;
  AddText(TElPopupButton(Sender).Caption);
end;

procedure TfrmCellDefinition.ElPopupButton23Click(Sender: TObject);
begin
  inherited;
  dxCellFormular.Text:='';
end;

procedure TfrmCellDefinition.ElPopupButton24Click(Sender: TObject);
begin
  inherited;
  dxCellFormular.SetFocus;
  keybd_event(VK_BACK, 0, 0, 0);
end;

procedure TfrmCellDefinition.dxPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmAnalyser.qryFunctionList.Open;
  InitPopupControl('dxlcFunctionList',frmAnalyser,sender,2.5);
end;

procedure TfrmCellDefinition.dxPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    AddText(frmAnalyser.qryFunctionListFUNCTION_PROTOTYPE.AsString);
  end;
  frmAnalyser.qryFunctionList.Close;
end;
function TfrmCellDefinition.CheckSQL:boolean;
begin
  result:=true;
  qryExecute.SQL.Text:=dxCellSQL.Text;
  try
    qryExecute.Prepare;
  except
    result:=false;
  end;
end;
function TfrmCellDefinition.GetCellType:Widestring;
begin
  Result:=F_CELL_TYPE;
end;
function TfrmCellDefinition.GetCellDefinition:WideString;
begin
  Result:=F_CELL_DEFINITION;
end;
end.
