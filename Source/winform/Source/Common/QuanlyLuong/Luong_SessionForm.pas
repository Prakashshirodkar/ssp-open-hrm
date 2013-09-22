unit Luong_SessionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, DB, dxBar, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClms, ElPgCtl,
  dxEditor, dxEdLib, dxDBELib;

type
  TfrmLuongSession = class(TfrmListBase)
    qryListPA_MA: TIntegerField;
    qryListS_MA: TIntegerField;
    qryListS_TIEUDE: TWideStringField;
    qryListS_BEFORE_SCRIPT: TWideStringField;
    qryListS_AFTER_SCRIPT: TWideStringField;
    qryListS_REFRESH: TIntegerField;
    qryListS_EXEC_BSCRIPT: TIntegerField;
    qryListS_EXEC_AFTER: TIntegerField;
    dxdbgMainS_TIEUDE: TdxDBGridColumn;
    dxdbgMainS_MA: TdxDBGridSpinColumn;
    pageScript: TElPageControl;
    dxlcMainItem3: TdxLayoutItem;
    tabBScript: TElTabSheet;
    tabAScript: TElTabSheet;
    dxDBMemo1: TdxDBMemo;
    dxDBMemo2: TdxDBMemo;
    dxdbgMainS_REFRESH: TdxDBGridCheckColumn;
    dxdbgMainS_EXEC_BSCRIPT: TdxDBGridCheckColumn;
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
   MA_PHUONGAN:String;
   MA_SESSION : integer;
  public
    { Public declarations }
  end;

var
  frmLuongSession: TfrmLuongSession;

implementation

uses MainDM, Luong_ThietkePAForm, Luong_DinhnghiaForm;

{$R *.dfm}
procedure TfrmLuongSession.qryListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryList.ParamByName('PA_MA').Value:=TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm).PA_MA;
end;
  
procedure TfrmLuongSession.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListPA_MA.Value:=TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm).PA_MA;
  qryListS_MA.Value:=qryList.RecordCount;
end;

procedure TfrmLuongSession.qryListBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  MA_SESSION := qryListS_MA.Value;
  //Added by THUYPTP - 17/04/2009
  if qryKTXoa.Active then qryKTXoa.Close;
  qryKTXoa.ParamByName ('PA_MA').Value := TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm).PA_MA;
  qryKTXoa.ParamByName('CT_SESSION').Value := qryListS_MA.Value;
  qryKTXoa.Open;
  if qryKTXoaSL_CONGTHUC.Value >0 then             
  begin
    ShowMessageUnicode(109);
    abort;
  end;
  //Het
end;

procedure TfrmLuongSession.FormCreate(Sender: TObject);
begin
  inherited;
  qryListS_TIEUDE.FocusControl;
end;

procedure TfrmLuongSession.qryListAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qryUpdate.ParamByName('PA_MA').Value :=  TfrmLuong_ThietkePA(frmLuong_Dinhnghia.F_CustomForm).PA_MA;
  qryUpdate.ParamByName('S_MA').Value := MA_SESSION;
  dmMain.ExecuteSQL(qryUpdate);
  qryList.Refresh; 
end;

end.
