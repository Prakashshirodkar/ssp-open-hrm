unit DataDisplayOptionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ElPgCtl,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBTL, ExtCtrls, ElPanel, ElSplit,
  dxDBGrid, DB, IBODataset, ToolbarFrame, dxDBTLCl, dxGrClms, ImgList;

type
  TfrmDataDisplayOption = class(TfrmBase)
    pageDeptList: TElPageControl;
    tabDeptList: TElTabSheet;
    treeDeptList: TdxDBTreeList;
    ElSplitter1: TElSplitter;
    pageEmployee: TElPageControl;
    tabEmployee: TElTabSheet;
    gridEmployee: TdxDBGrid;
    dsDeptList: TDataSource;
    dsEmployee: TDataSource;
    qryDeptList: TIBOQuery;
    qryEmployee: TIBOQuery;
    frameToolbar1: TframeToolbar;
    qryDeptListDEPT_NO: TWideStringField;
    qryDeptListP_DEPT_NO: TWideStringField;
    qryDeptListDEPT_NAME: TWideStringField;
    qryDeptListDISPLAY_INDEX: TIntegerField;
    treeDeptListDEPT_NAME: TdxDBTreeListColumn;
    treeDeptListDISPLAY_INDEX: TdxDBTreeListSpinColumn;
    qryEmployeeEMPLOYEE_NO: TWideStringField;
    qryEmployeePOSITION_NO: TWideStringField;
    qryEmployeeASSIGNED_DATE: TDateField;
    qryEmployeeFULL_NAME: TWideStringField;
    qryEmployeeTITLE_NAME: TWideStringField;
    qryEmployeeDISPLAY_INDEX: TIntegerField;
    gridEmployeeEMPLOYEE_NO: TdxDBGridColumn;
    gridEmployeeFULL_NAME: TdxDBGridColumn;
    gridEmployeeTITLE_NAME: TdxDBGridColumn;
    gridEmployeeDISPLAY_INDEX: TdxDBGridSpinColumn;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure treeDeptListEnter(Sender: TObject);
    procedure gridEmployeeEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataDisplayOption: TfrmDataDisplayOption;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmDataDisplayOption.FormCreate(Sender: TObject);
begin
  inherited;
  qryDeptList.Open;
  qryEmployee.Open;
  frameToolbar1.SetDataSource(dsDeptList);
end;

procedure TfrmDataDisplayOption.treeDeptListEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsDeptList);
end;

procedure TfrmDataDisplayOption.gridEmployeeEnter(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsEmployee);
end;

procedure TfrmDataDisplayOption.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryEmployee.Close;
  qryDeptList.Close;
end;

end.
