unit EmpDocumentForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ImgList, ToolbarFrame, ExtCtrls, ElPanel, ElSplit, dxLayoutControl,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, cxControls,
  ElPgCtl, ActnList;

type
  TfrmEmpDocument = class(TfrmBase)
    pageTop: TElPageControl;
    tabTop: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    gridWorkChange: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    ElSplitter1: TElSplitter;
    pageBottom: TElPageControl;
    tabBottom: TElTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    gridWorkHistory: TdxDBGrid;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    ImageList1: TImageList;
    ActionList1: TActionList;
    acDetail: TAction;
    gridWorkChangeCONTRACT_NO: TdxDBGridColumn;
    gridWorkChangeCONTRACT_TYPE_NAME: TdxDBGridColumn;
    gridWorkChangeCONTRACT_NAME: TdxDBGridColumn;
    gridWorkChangeREPRESENTATIVE: TdxDBGridColumn;
    gridWorkChangeSTARTED_DATE: TdxDBGridDateColumn;
    gridWorkChangeEXPIRED_DATE: TdxDBGridDateColumn;
    gridWorkHistoryDOC_ID: TdxDBGridColumn;
    gridWorkHistoryDOC_NAME: TdxDBGridColumn;
    gridWorkHistoryDOC_FILENAME: TdxDBGridButtonColumn;
    gridWorkHistoryDOC_NOTE: TdxDBGridColumn;
    OpenDialog1: TOpenDialog;
    procedure acDetailUpdate(Sender: TObject);
    procedure acDetailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridWorkHistoryDOC_FILENAMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpDocument: TfrmEmpDocument;

implementation

uses EmpInfoDataModule, ContractManageForm,DB,ShellAPI, MainDM,
  ContractDataModule;

{$R *.dfm}

procedure TfrmEmpDocument.acDetailUpdate(Sender: TObject);
begin
  inherited;
  acDetail.Enabled:=(EmpInfoDM.qryEmpContract.RecordCount>0);
end;

procedure TfrmEmpDocument.acDetailExecute(Sender: TObject);
var bookmark:TBookmark;
begin
  inherited;
  bookmark:=EmpInfoDM.qryEmpContract.GetBookmark;
  ContractDM.ViewContract(EmpInfoDM.qryEmpContractCONTRACT_NO.Value);
  EmpInfoDM.qryEmpContract.Refresh;
  EmpInfoDM.qryEmpContract.GotoBookmark(bookmark);
end;

procedure TfrmEmpDocument.FormCreate(Sender: TObject);
begin
  inherited;
  if not EmpInfoDM.qryEmpContract.Active then
    EmpInfoDM.qryEmpContract.Open;
  if not EmpInfoDM.qryEmpDocument.Active then
    EmpInfoDM.qryEmpDocument.Open;
  frameToolbar1.SetDataSource(EmpInfoDM.dsEmpDocument);  
end;

procedure TfrmEmpDocument.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpInfoDM.qryEmpContract.Close;
  EmpInfoDM.qryEmpDocument.Close; 
end;

procedure TfrmEmpDocument.gridWorkHistoryDOC_FILENAMEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex,'DOC_FILENAME','DOC_CONTENT');
end;

end.
