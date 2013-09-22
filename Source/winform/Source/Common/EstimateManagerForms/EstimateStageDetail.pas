unit EstimateStageDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  dxCntner, ElBtnCtl, ElPopBtn, ActnList, DBActns,DB, ToolbarFrame;

type
  TfrmEstimageStageDetail = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxStageType: TdxDBImageEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxDBSpinEdit4: TdxDBSpinEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    groupTuthangNam: TdxLayoutGroup;
    groupDenThangNam: TdxLayoutGroup;
    ActionList1: TActionList;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxDBDateEdit2: TdxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    groupNgay: TdxLayoutGroup;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    acClose: TAction;
    dxLayoutControl1Item10: TdxLayoutItem;
    frameToolbar1: TframeToolbar;
    procedure FormCreate(Sender: TObject);
    procedure dxStageTypeChange(Sender: TObject);
    procedure TypeChange;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimageStageDetail: TfrmEstimageStageDetail;

implementation

uses MainDM, EstimateManagerForm, Math;

{$R *.dfm}

procedure TfrmEstimageStageDetail.FormCreate(Sender: TObject);
begin
  dxStageType.Descriptions.Add(utf8Decode('Đánh giá thi đua theo ngày'));
  dxStageType.Descriptions.Add(utf8Decode('Đánh giá thi đua theo tháng'));
  dxStageType.Values.Add('0');
  dxStageType.Values.Add('1');
  inherited;
  frameToolbar1.SetDataSource(frmEstimateManager.dsEstimateStage);
end;

procedure TfrmEstimageStageDetail.dxStageTypeChange(Sender: TObject);
begin
  inherited;
  TypeChange;
end;
procedure TfrmEstimageStageDetail.TypeChange;
begin
  inherited;
  if dxStageType.Text='0' then
  begin
    groupNgay.Enabled:=true;
    groupTuthangNam.Enabled:=false;
    groupDenThangNam.Enabled:=false;
  end
  else
  if dxStageType.Text='1' then
  begin
    groupNgay.Enabled:=false;
    groupTuthangNam.Enabled:=true;
    groupDenThangNam.Enabled:=true;
  end;
end;
procedure TfrmEstimageStageDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dmMain.MsgChangeDataSource(frmEstimateManager.dsEstimateStage)=false
  then Abort;
end;

end.
