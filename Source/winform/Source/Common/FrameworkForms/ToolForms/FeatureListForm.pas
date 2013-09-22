unit FeatureListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TreeBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBTL, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, ActnList;

type
  TfrmFeatureList = class(TfrmTreeBase)
    qryListSUBSYSTEMID: TSmallintField;
    qryListFEATUREID: TSmallintField;
    qryListFEATURENAME: TWideStringField;
    qryListP_FEATUREID: TIntegerField;
    qryListFEATURENAME_ENG: TWideStringField;
    dxdbtlMainFEATUREID: TdxDBTreeListSpinColumn;
    dxdbtlMainFEATURENAME: TdxDBTreeListColumn;
    dxdbtlMainFEATURENAME_ENG: TdxDBTreeListColumn;
    ActionList1: TActionList;
    acGenerate: TAction;
    qryExecute: TIBOQuery;
    procedure qryListBeforePost(DataSet: TDataSet);
    procedure acGenerateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFeatureList: TfrmFeatureList;

implementation

uses MainDM, MainUnit, TypInfo, SSP_Library;

{$R *.dfm}

procedure TfrmFeatureList.qryListBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryListSUBSYSTEMID.Value:=sysConfig.SubSystemID;
  dmMain.DefOnBeforePost(qryList);
end;

procedure TfrmFeatureList.acGenerateExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  try
    qryExecute.ParamByName('SUBSYSTEMID').Value:=sysConfig.SubSystemID;
    dmMain.ExecuteSQL(qryExecute);
    qryList.Refresh;
//    qryList.DisableControls;
    for i:=0 to frmMain.BarManager.ItemCount-1 do
    begin
      qryList.Append;
      qryListSUBSYSTEMID.Value:=sysConfig.SubSystemID;
      qryListFEATURENAME.Value:=GetProperty(frmMain.BarManager.Items[i],'caption');
      qryList.Post;
    end;
  except

  end;
//  qryList.EnableControls;
end;

end.
