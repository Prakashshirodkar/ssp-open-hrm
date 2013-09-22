unit FunctionListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmFunctionList = class(TfrmListBase)
    dxdbgMainFUNCTION_NAME: TdxDBGridColumn;
    dxdbgMainFUNCTION_PROTOTYPE: TdxDBGridColumn;
    dxdbgMainFUNCTION_NOTE: TdxDBGridColumn;
    dxdbgMainFUNCTION_ID: TdxDBGridSpinColumn;
    qryListFUNCTION_ID: TIntegerField;
    qryListFUNCTION_NAME: TWideStringField;
    qryListFUNCTION_PROTOTYPE: TWideStringField;
    qryListFUNCTION_NOTE: TWideStringField;
    procedure qryListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFunctionList: TfrmFunctionList;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmFunctionList.qryListNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryListFUNCTION_ID.Value:=qryList.RecordCount;
end;

end.
