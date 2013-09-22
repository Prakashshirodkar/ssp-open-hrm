//******************************************************************//
//************** Create form by THUYPTP - 04/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_SessionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms, dxEditor,
  dxEdLib, dxDBELib, ElPgCtl;

type
  TfrmBAOHIEM_Session = class(TfrmListBase)
    dxlcMainItem3: TdxLayoutItem;
    pageScript: TElPageControl;
    tabBScript: TElTabSheet;
    dxDBMemo1: TdxDBMemo;
    tabAScript: TElTabSheet;
    dxDBMemo2: TdxDBMemo;
    qryListMAU_ID: TIntegerField;
    qryListS_MA: TIntegerField;
    qryListS_TIEUDE: TWideStringField;
    qryListS_BEFORE_SCRIPT: TWideStringField;
    qryListS_AFTER_SCRIPT: TWideStringField;
    qryListS_REFRESH: TIntegerField;
    qryListS_EXEC_BEFORE: TIntegerField;
    qryListS_EXEC_AFTER: TIntegerField;
    dxdbgMainS_MA: TdxDBGridColumn;
    dxdbgMainS_TIEUDE: TdxDBGridColumn;
    dxdbgMainS_REFRESH: TdxDBGridCheckColumn;
    dxdbgMainS_EXEC_BEFORE: TdxDBGridCheckColumn;
    dxdbgMainS_EXEC_AFTER: TdxDBGridCheckColumn;
    qryKTXoa: TIBOQuery;
    qryKTXoaSL_CONGTHUC: TIntegerField;
    qryUpdate: TIBOQuery;
    procedure qryListBeforeOpen(DataSet: TDataSet);
    procedure qryListNewRecord(DataSet: TDataSet);
    procedure qryListBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryListAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    MA_SESSION : integer;
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_Session: TfrmBAOHIEM_Session;

implementation

uses MainDM, BAOHIEM_ThietKeMauForm, BAOHIEM_DinhNghiaForm;

{$R *.dfm}

procedure TfrmBAOHIEM_Session.qryListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryList.ParamByName('MAU_ID').Value:=TfrmBAOHIEM_ThietKeMau(frmBAOHIEM_DinhNghia.F_CustomForm).MAU_ID;
end;

procedure TfrmBAOHIEM_Session.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListMAU_ID.Value:= TfrmBAOHIEM_ThietKeMau(frmBAOHIEM_DinhNghia.F_CustomForm).MAU_ID;
  qryListS_MA.Value:=qryList.RecordCount;
end;

procedure TfrmBAOHIEM_Session.qryListBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  MA_SESSION := qryListS_MA.Value;
  //Added by THUYPTP - 17/04/2009
  if qryKTXoa.Active then qryKTXoa.Close;
  qryKTXoa.ParamByName ('MAU_ID').Value := TfrmBAOHIEM_ThietKeMau(frmBAOHIEM_DinhNghia.F_CustomForm).MAU_ID;
  qryKTXoa.ParamByName('CT_SESSION').Value := qryListS_MA.Value;
  qryKTXoa.Open;
  if qryKTXoaSL_CONGTHUC.Value >0 then             
  begin
    ShowMessageUnicode(109);
    abort;
  end;
  //Het
end;

procedure TfrmBAOHIEM_Session.FormCreate(Sender: TObject);
begin
  inherited;
  qryListS_TIEUDE.FocusControl;
end;

procedure TfrmBAOHIEM_Session.qryListAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qryUpdate.ParamByName('MAU_ID').Value := TfrmBAOHIEM_ThietKeMau(frmBAOHIEM_DinhNghia.F_CustomForm).MAU_ID;
  qryUpdate.ParamByName('S_MA').Value := MA_SESSION;
  dmMain.ExecuteSQL(qryUpdate);
  qryList.Refresh;
end;

end.
