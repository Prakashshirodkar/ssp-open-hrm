//******************************************************************//
//************** Create form by THUYPTP - 04/09/2009 ***************//
//******************************************************************//
unit PopupBaoHiemForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr, DB,
  IBODataset, dxLayoutControl, ElBtnCtl, ElPopBtn, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, cxControls, dxDBTL;

type
  TfrmPopupBaoHiem = class(TfrmBase)
    dxlcBaoHiem_BenhVien: TdxLayoutControl;
    dxDBGrid69: TdxDBGrid;
    ElPopupButton213: TElPopupButton;
    ElPopupButton214: TElPopupButton;
    ElPopupButton215: TElPopupButton;
    dxLayoutGroup148: TdxLayoutGroup;
    dxLayoutItem286: TdxLayoutItem;
    dxLayoutGroup149: TdxLayoutGroup;
    dxLayoutItem287: TdxLayoutItem;
    dxLayoutItem288: TdxLayoutItem;
    dxLayoutItem289: TdxLayoutItem;
    qryBaoHiem_BenhVien: TIBOQuery;
    dsBaoHiem_BenhVien: TDataSource;
    qryBaoHiem_BenhVienMA_BENHVIEN: TWideStringField;
    qryBaoHiem_BenhVienTEN_BENHVIEN: TWideStringField;
    qryBaoHiem_BenhVienMA_TINH_THANHPHO: TWideStringField;
    qryBaoHiem_BenhVienTEN_TINH_THANHPHO: TWideStringField;
    qryBaoHiem_BenhVienDIACHI_BENHVIEN: TWideStringField;
    qryBaoHiem_BenhVienGHI_CHU: TWideStringField;
    qryBaoHiem_BenhVienID_BAOHIEM_BENHVIEN: TIntegerField;
    dxDBGrid69MA_BENHVIEN: TdxDBGridColumn;
    dxDBGrid69TEN_BENHVIEN: TdxDBGridColumn;
    dxDBGrid69TEN_TINH_THANHPHO: TdxDBGridColumn;
    qryHesoQDHD: TIBOQuery;
    qryHesoQDHDPARAM_NO: TWideStringField;
    qryHesoQDHDPARAM_NAME: TWideStringField;
    dsHesoQDHD: TDataSource;
    dxlcHesoQDHD: TdxLayoutControl;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2PARAM_NO: TdxDBGridColumn;
    dxDBGrid2PARAM_NAME: TdxDBGridColumn;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    ElPopupButton6: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    procedure DefOnDblClick(Sender: TObject);
    procedure DefOnTreeDblClick(Sender: TObject);
    procedure DefOnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DefOnGridMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RefreshDataset(dataset: TIBOQuery);
    procedure FormCreate(Sender: TObject);
    procedure ElPopupButton213Click(Sender: TObject);
    procedure ElPopupButton4Click(Sender: TObject);
  private
    { Private declarations }
    FListKeyField: Variant;
  public
    { Public declarations }
    property ListKeyField: Variant write FListKeyField;
  end;

var
  frmPopupBaoHiem: TfrmPopupBaoHiem;

implementation


uses MainDM, SSP_Library, BAOHIEM_BenhVienForm, FormalParamForm;

{$R *.dfm}

procedure TfrmPopupBaoHiem.DefOnDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmPopupBaoHiem.DefOnTreeDblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmPopupBaoHiem.DefOnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    PopupProcess(self, true, sender);
end;

procedure TfrmPopupBaoHiem.DefOnGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //
end;

procedure TfrmPopupBaoHiem.RefreshDataset(dataset: TIBOQuery);
var
  KeyFieldString: string;
begin
  dataset.DisableControls;
  if dataset.Active then
    dataset.Refresh
  else
    dataset.Open;
  if (FListKeyField <> '') then
  begin
    KeyFieldString := DataSet.Fields[0].FieldName;
    try
      DataSet.Locate(KeyFieldString, FListKeyField, []);
    except
    end;
  end;
  dataset.EnableControls
end;

procedure TfrmPopupBaoHiem.FormCreate(Sender: TObject);
var
  i : integer;
begin
  inherited;
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TdxDBGrid) then
    begin
      (Components[i] as TdxDBGrid).OptionsBehavior :=
        (Components[i] as TdxDBGrid).OptionsBehavior - [edgoEditing] +
        [edgoDblClick];
      (Components[i] as TdxDBGrid).OnDblClick := DefOnDblClick;
      (Components[i] as TdxDBGrid).OnKeyDown := DefOnKeyDown;
      (Components[i] as TdxDBGrid).OnMouseUp := DefOnGridMouseUp;

    end
    else
      if (Components[i] is TdxDBTreeList) then
    begin
      (Components[i] as TdxDBTreeList).OptionsBehavior :=
        (Components[i] as TdxDBTreeList).OptionsBehavior - [etoEditing] +
        [etoDblClick];

      (Components[i] as TdxDBTreeList).OnDblClick := DefOnTreeDblClick;
      (Components[i] as TdxDBTreeList).OnKeyDown := DefOnKeyDown;
      (Components[i] as TdxDBTreeList).OnMouseUp := DefOnGridMouseUp;
    end
    else
      if (Components[i] is TdxLayoutControl) then
    begin
      (Components[i] as TdxLayoutControl).ParentFont := false;
    end
end;

procedure TfrmPopupBaoHiem.ElPopupButton213Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmBAOHIEM_BenhVien,frmBAOHIEM_BenhVien);
  RefreshDataset(qryBaoHiem_BenhVien);
end;

procedure TfrmPopupBaoHiem.ElPopupButton4Click(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmFormalParam,frmFormalParam);
  RefreshDataset(qryHesoQDHD);
end;

end.
