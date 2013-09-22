unit XDTochucPhapLyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, ExtCtrls, ElPanel,
  ElSplit, dxDBTL, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, IBODataset,
  dxDBTLCl;

type
  TfrmXDTochucPhapLy = class(TfrmEditBase)
    gridUserList: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    treeDeptList: TdxDBTreeList;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    qryUserList: TIBOQuery;
    qryUserListUSERACCID: TWideStringField;
    qryUserListDISPLAYNAME: TWideStringField;
    qryUserListUSERACCPASS: TWideStringField;
    qryUserListLASTACCESS: TDateTimeField;
    qryUserListSUBSYSTEMID: TSmallintField;
    dsUserList: TDataSource;
    gridUserListUSERACCID: TdxDBGridColumn;
    gridUserListDISPLAYNAME: TdxDBGridColumn;
    qryDeptList: TIBOQuery;
    dsDeptList: TDataSource;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListTOCHUC_PHAPLY: TSmallintField;
    qryDeptListUSERACCID: TWideStringField;
    qryDeptListSUBSYSTEMID: TIntegerField;
    treeDeptListDEPT_NO: TdxDBTreeListMaskColumn;
    treeDeptListDEPT_NAME: TdxDBTreeListMaskColumn;
    treeDeptListTOCHUC_PHAPLY: TdxDBTreeListCheckColumn;
    qryDeptListDEPT_ADDRESS: TWideStringField;
    qryDeptListDEPT_PHONE: TWideStringField;
    qryDeptListDEPT_EMAIL: TWideStringField;
    treeDeptListDEPT_ADDRESS: TdxDBTreeListMaskColumn;
    treeDeptListDEPT_PHONE: TdxDBTreeListMaskColumn;
    treeDeptListDEPT_EMAIL: TdxDBTreeListMaskColumn;
    qryPhatSinh: TIBOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDeptListAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmXDTochucPhapLy: TfrmXDTochucPhapLy;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmXDTochucPhapLy.FormCreate(Sender: TObject);
begin
  inherited;
  qryUserList.ParamByName('SUBSYSTEMID').Value :=  sysConfig.SubSystemID;
  qryUserList.Open;

  qryPhatSinh.ParamByName('SUBSYSTEMID').Value :=  sysConfig.SubSystemID;
  dmMain.ExecuteSQL(qryPhatSinh);

  qryDeptList.Open;
  treeDeptList.FullExpand;
end;

procedure TfrmXDTochucPhapLy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryUserList.Close;
  qryDeptList.Close;    
end;

procedure TfrmXDTochucPhapLy.qryDeptListAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryDeptList.Active then qryDeptList.Close;
  qryDeptList.Open;
  treeDeptList.FullExpand;

  if dmMain.qryThongTinDoanhNghiep.Active then
    dmMain.qryThongTinDoanhNghiep.Refresh
  else
    dmMain.qryThongTinDoanhNghiep.Open;     


  dmMain.DefOnAfterPost(dataset);
end;

end.
