unit SSP_Excel_InsertPageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  dxEditor, DBActns, ActnList, ElBtnCtl, ElPopBtn;

type
  TfrmSSP_Excel_InsertPage = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxTAB_ID: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    chkEdit: TdxCheckEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ActionList1: TActionList;
    Cancel: TDataSetCancel;
    Post: TDataSetPost;
    dxDefaultParamGroup: TdxLayoutGroup;
    dxDefaultColCount: TdxSpinEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxDefaultRowCount: TdxSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    procedure chkEditChange(Sender: TObject);
    procedure PostExecute(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;STATE:string);
  end;

var
  frmSSP_Excel_InsertPage: TfrmSSP_Excel_InsertPage;

implementation

uses MainDM, SSP_Excel_Form;

{$R *.dfm}
constructor  TfrmSSP_Excel_InsertPage.Create(AOwner:TComponent;STATE:string);
begin
  inherited Create(AOwner);
  if STATE='INSERT' then
  begin
    frmSSP_Excel.qryTabList.Append;
    frmSSP_Excel.qryTabListIS_GROUP.Value:=0;
    frmSSP_Excel.qryTabListGROUP_ID.Value:=0;
    fcMain.Texts.Items[0].Visible:=true;
    fcMain.Texts.Items[1].Visible:=false;
    dxDefaultParamGroup.Visible:=true;
    dxDefaultColCount.IntValue:=DEFAULT_COL_COUNT;
    dxDefaultRowCount.IntValue:=DEFAULT_ROW_COUNT;
  end
  else
  if STATE='EDIT' then
  begin
    fcMain.Texts.Items[0].Visible:=false;
    fcMain.Texts.Items[1].Visible:=true;
  end
end;
procedure TfrmSSP_Excel_InsertPage.chkEditChange(Sender: TObject);
begin
  inherited;
  dxTAB_ID.Enabled:=chkEdit.Checked;
end;

procedure TfrmSSP_Excel_InsertPage.PostExecute(Sender: TObject);
begin
  inherited;
  Post.DataSource.DataSet.Post;
  ModalResult:=mrOk;
end;

procedure TfrmSSP_Excel_InsertPage.CancelExecute(Sender: TObject);
begin
  inherited ;
  Cancel.DataSource.DataSet.Cancel;
  ModalResult:=mrCancel;
end;

end.

