//******************************************************************//
//************** Create form by THUYPTP - 01/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_BenhVienForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, DB, dxBar, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClEx;

type
  TfrmBAOHIEM_BenhVien = class(TfrmListBase)
    qryListID_BAOHIEM_BENHVIEN: TIntegerField;
    qryListMA_BENHVIEN: TWideStringField;
    qryListTEN_BENHVIEN: TWideStringField;
    qryListMA_TINH_THANHPHO: TWideStringField;
    qryListTEN_TINH_THANHPHO: TWideStringField;
    dxdbgMainMA_BENHVIEN: TdxDBGridColumn;
    dxdbgMainTEN_BENHVIEN: TdxDBGridColumn;
    dxdbgMainTEN_TINH_THANHPHO: TdxDBGridPopupColumn;
    dxdbgMainColumn4: TdxDBGridColumn;
    qryListDIACHI_BENHVIEN: TWideStringField;
    qryListGHI_CHU: TWideStringField;
    dxdbgMainGHI_CHU: TdxDBGridColumn;
    dxdbgMainDIACHI_BENHVIEN: TdxDBGridColumn;
    procedure dxdbgMainTEN_TINH_THANHPHOInitPopup(Sender: TObject);
    procedure dxdbgMainTEN_TINH_THANHPHOCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dxdbgMainChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure qryListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    F_MATINH : WideString; 
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_BenhVien: TfrmBAOHIEM_BenhVien;

implementation

uses PopupMainForm, SSP_Library, MainDM;

{$R *.dfm}

procedure TfrmBAOHIEM_BenhVien.dxdbgMainTEN_TINH_THANHPHOInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryBaoHiem_TinhThanhPho.Open;
  InitPopupControl('dxlcBaoHiem_TinhThanhPho',frmPopupMain,sender,2,dxdbgMain);
end;

procedure TfrmBAOHIEM_BenhVien.dxdbgMainTEN_TINH_THANHPHOCloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryBaoHiem_TinhThanhPho,qryList,
               'MA_TINH_THANHPHO;TEN_TINH_THANHPHO',
               'MA_TINH_THANHPHO;TEN_TINH_THANHPHO',
               'TEN_TINH_THANHPHO',Text);
  frmPopupMain.qryBaoHiem_TinhThanhPho.Close;
end;

procedure TfrmBAOHIEM_BenhVien.FormCreate(Sender: TObject);
begin
  inherited;
  dxdbgMain.FullExpand;  
end;

procedure TfrmBAOHIEM_BenhVien.dxdbgMainChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  F_MATINH := qryListMA_TINH_THANHPHO.Value;
end;

procedure TfrmBAOHIEM_BenhVien.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (F_MATINH <> '') then
    qryListMA_TINH_THANHPHO.Value := F_MATINH;
end;

end.
