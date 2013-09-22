unit SSP_Excel_Coder_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  ElPgCtl, DB, dxmdaset, dxTL, dxDBCtrl, dxDBGrid, ImgList, ExtCtrls,
  ElPanel, ElHTMLPanel, ElAdvPanel, ElExpBar, ElScrollBox,SSP_Excel_Form,
  ActnList, ElBtnCtl, ElPopBtn;

type
  TfrmSSPExcelCoder = class(TfrmBase)
    edtCode: TdxMemo;
    pageMain: TElPageControl;
    tabCodeEditor: TElTabSheet;
    tabSelectData: TElTabSheet;
    gridResult: TdxDBGrid;
    memResult: TdxMemData;
    dsResult: TDataSource;
    ImageList1: TImageList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    acTestCode: TAction;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    acAccept: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AssignCell(cell:TSSPCell);
    procedure UpdateViewData;
    procedure FormCreate(Sender: TObject);
    procedure acAcceptExecute(Sender: TObject);
    procedure acTestCodeExecute(Sender: TObject);
  private
    { Private declarations }
    FCell:TSSPCell;
  public
    { Public declarations }
     
  end;

var
  frmSSPExcelCoder: TfrmSSPExcelCoder;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmSSPExcelCoder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmSSPExcelCoder:=nil;
end;
procedure TfrmSSPExcelCoder.AssignCell(cell:TSSPCell);
begin
  if (FCell=nil) or (FCell<>cell) then
  begin
    FCell:=cell;
    UpdateViewData;
  end;
end;
procedure TfrmSSPExcelCoder.UpdateViewData;
begin
  if Assigned(FCell) then
  begin
    edtCode.Text:=FCell.CellCode;
  end;
end;
procedure TfrmSSPExcelCoder.FormCreate(Sender: TObject);
begin
  inherited;
  pageMain.ActivePageIndex:=0;
end;

procedure TfrmSSPExcelCoder.acAcceptExecute(Sender: TObject);
begin
  inherited;
  FCell.CellCode:=edtCode.Text;
end;

procedure TfrmSSPExcelCoder.acTestCodeExecute(Sender: TObject);
begin
  inherited;
  //
end;

end.
