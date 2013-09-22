unit NhapSoSoLDForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxTL, dxDBCtrl, DB,
  IBODataset, dxCntner, dxDBTL, ExtCtrls, ElPanel, dxDBGrid, ElSplit,
  dxDBTLCl, dxGrClms, dxEditor, dxEdLib;

type
  TfrmNhapSoSoLD = class(TfrmEditBase)
    ElPanel1: TElPanel;
    treeDepartment: TdxDBTreeList;
    dsDepartment: TDataSource;
    qryDepartment: TIBOQuery;
    qryDepartmentDEPT_NO: TWideStringField;
    qryDepartmentP_DEPT_NO: TWideStringField;
    qryDepartmentDEPT_NAME: TWideStringField;
    treeDepartmentDEPT_NO: TdxDBTreeListMaskColumn;
    treeDepartmentP_DEPT_NO: TdxDBTreeListMaskColumn;
    treeDepartmentDEPT_NAME: TdxDBTreeListMaskColumn;
    ElSplitter1: TElSplitter;
    ElPanel2: TElPanel;
    gridSoSoLD: TdxDBGrid;
    qrySoSoLD: TIBOQuery;
    dsSoSoLD: TDataSource;
    gridSoSoLDEMPLOYEE_NO: TdxDBGridMaskColumn;
    gridSoSoLDFULL_NAME: TdxDBGridMaskColumn;
    gridSoSoLDSO_SO_LD: TdxDBGridColumn;
    qrySoSoLDEMPLOYEE_NO: TWideStringField;
    qrySoSoLDFULL_NAME: TWideStringField;
    qrySoSoLDSO_LD: TWideStringField;
    qrySoSoLDNGAYCAP_SO_LD: TDateField;
    qrySoSoLDNOICAP_SO_LD: TWideStringField;
    gridSoSoLDNGAYCAP_SO_LD: TdxDBGridDateColumn;
    gridSoSoLDNOICAP_SO_LD: TdxDBGridColumn;
    dxNhanVien: TdxImageEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    qrySoSoLDOFF_DATE: TDateField;
    gridSoSoLDOFF_DATE: TdxDBGridDateColumn;
    qryDepartmentENDED_DATE: TDateField;
    treeDepartmentENDED_DATE: TdxDBTreeListDateColumn;
    chkViewInvalidDept: TdxCheckEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxNhanVienCloseUp(Sender: TObject; var Value: WideString;
      var Accept: Boolean);
    procedure treeDepartmentChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure treeDepartmentCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure chkViewInvalidDeptChange(Sender: TObject);
  private
    { Private declarations }
    XEM_NV_NGHIVIEC : Integer;
  public
    { Public declarations }
  end;

var
  frmNhapSoSoLD: TfrmNhapSoSoLD;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmNhapSoSoLD.FormCreate(Sender: TObject);
begin
  dxNhanVien.Values.Add('0');
  dxNhanVien.Values.Add('1');
  dxNhanVien.Values.Add('2');

  dxNhanVien.Descriptions.Add(UTF8Decode('Đang làm việc'));
  dxNhanVien.Descriptions.Add(UTF8Decode('Đã thôi việc'));
  dxNhanVien.Descriptions.Add(UTF8Decode('Tất cả'));
  XEM_NV_NGHIVIEC :=0;
  dxNhanVien.Text := UTF8Decode('Đang làm việc');
  inherited;
  qryDepartment.Open;
  treeDepartment.FullExpand;

  if qrySoSoLD.Active then qrySoSoLD.Close;
  qrySoSoLD.ParamByName('dept_no').Value := qryDepartmentDEPT_NO.Value;
  qrySoSoLD.ParamByName('XEM_NV_NGHIVIEC').Value := XEM_NV_NGHIVIEC;
  qrySoSoLD.Open;
end;

procedure TfrmNhapSoSoLD.dxNhanVienCloseUp(Sender: TObject;
  var Value: WideString; var Accept: Boolean);
begin
  inherited;
  if accept then
  begin
    XEM_NV_NGHIVIEC := StrToIntDef(value,0);
    if qrySoSoLD.Active then qrySoSoLD.Close;
    qrySoSoLD.ParamByName('dept_no').Value := qryDepartmentDEPT_NO.Value;
    qrySoSoLD.ParamByName('XEM_NV_NGHIVIEC').Value := XEM_NV_NGHIVIEC;
    qrySoSoLD.Open;
  end;    
end;

procedure TfrmNhapSoSoLD.treeDepartmentChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  if qrySoSoLD.Active then qrySoSoLD.Close;
  qrySoSoLD.ParamByName('dept_no').Value := qryDepartmentDEPT_NO.Value;
  qrySoSoLD.ParamByName('XEM_NV_NGHIVIEC').Value := XEM_NV_NGHIVIEC;
  qrySoSoLD.Open;
end;

procedure TfrmNhapSoSoLD.treeDepartmentCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if VarToStr(ANode.Values[treeDepartmentENDED_DATE.Index]) = '' then
      AFont.Color := clBlack
    else
      AFont.Color := clRed;
  except
  end
end;

procedure TfrmNhapSoSoLD.chkViewInvalidDeptChange(Sender: TObject);
begin
  inherited;
  with qryDepartment do
  begin
    DisableControls;
    if Active then
      Close;
    if chkViewInvalidDept.Checked then
      SQLWhere.Clear
    else
      SQLWhere.Text:='where ENDED_DATE is null';
    Prepare;  
    Open;
    EnableControls;
  end;
  CustomExpand(treeDepartment);

end;

end.
