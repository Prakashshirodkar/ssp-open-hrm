unit AlertConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, DB, IBODataset, dxDBTLCl, dxGrClms, ElPgCtl,
  dxEditor, dxEdLib, dxDBELib, ExtCtrls, ActnList, ImgList;

type
  TfrmAlertConfig = class(TfrmEditBase)
    gridAlertList: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    dsAlert: TDataSource;
    qryAlert: TIBOQuery;
    qryAlertALERT_NO: TWideStringField;
    qryAlertSQL_CHECK: TWideStringField;
    qryAlertALERT_LEVEL: TIntegerField;
    qryAlertALERT_TITLE: TWideStringField;
    gridAlertListALERT_NO: TdxDBGridColumn;
    gridAlertListALERT_LEVEL: TdxDBGridImageColumn;
    gridAlertListALERT_TITLE: TdxDBGridColumn;
    ElPageControl1: TElPageControl;
    dxlcMainItem3: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    tabNoidung: TElTabSheet;
    tabCapquyen: TElTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item1: TdxLayoutItem;
    gridColumn: TdxDBGrid;
    dxlcMainItem4: TdxLayoutItem;
    dxlcMainGroup2: TdxLayoutGroup;
    dxlcMainItem5: TdxLayoutItem;
    Splitter1: TSplitter;
    qryColumns: TIBOQuery;
    dsColumns: TDataSource;
    qryColumnsALERT_NO: TWideStringField;
    qryColumnsCOLUMN_NO: TWideStringField;
    qryColumnsCOLUMN_CAPTION: TWideStringField;
    qryColumnsCOLUMN_TYPE: TWideStringField;
    gridColumnCOLUMN_NO: TdxDBGridColumn;
    gridColumnCOLUMN_CAPTION: TdxDBGridColumn;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    qryColumnsCOLUMN_WIDTH: TIntegerField;
    gridColumnCOLUMN_WIDTH: TdxDBGridSpinColumn;
    qryTest: TIBOQuery;
    qryAlertUser: TIBOQuery;
    dsAlertUser: TDataSource;
    qryAlertUserALERT_NO: TWideStringField;
    qryAlertUserUSER_ACC: TWideStringField;
    qryAlertUserDISPLAYNAME: TWideStringField;
    qryAlertUserCAN_REVIEW: TSmallintField;
    qryAlertUserSYS_ID: TIntegerField;
    gridAlertUser: TdxDBGrid;
    gridAlertUserUSER_ACC: TdxDBGridColumn;
    gridAlertUserDISPLAYNAME: TdxDBGridColumn;
    gridAlertUserCAN_REVIEW: TdxDBGridCheckColumn;
    qryAlertREPORT_TEXT: TWideStringField;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBMemo2: TdxDBMemo;
    dxLayoutControl1Item2: TdxLayoutItem;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure acPhatsinhUpdate(Sender: TObject);
    procedure acPhatsinhExecute(Sender: TObject);
    procedure qryTestError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlertConfig: TfrmAlertConfig;

implementation

uses MainDM, Math;

{$R *.dfm}

procedure TfrmAlertConfig.FormCreate(Sender: TObject);
begin
  if sysConfig.AdminRight=false then
  begin
    qryAlert.InsertSQL.Clear;
    qryAlert.EditSQL.Clear;
    qryAlert.DeleteSQL.Clear;

    qryColumns.InsertSQL.Clear;
    qryColumns.EditSQL.Clear;
    qryColumns.DeleteSQL.Clear;

    tabNoidung.Visible:=false;
    tabNoidung.TabVisible:=false;
    //frameToolbar1.dxlctrlGenerate.Visible:=false;
  end;
  inherited;
  qryAlert.Open;
  qryColumns.Open;
  qryAlertUser.Open;

  frameToolbar1.SetDataSource(dsAlert);

end;

procedure TfrmAlertConfig.acPhatsinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinh.Enabled:=(qryAlert.IsEmpty=false);
end;

procedure TfrmAlertConfig.acPhatsinhExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryColumns.DisableControls;
  if qryTest.Active then qryTest.Close;
  qryTest.SQL.Text:=qryAlertSQL_CHECK.AsString;
  try
    qryTest.Prepare;
    qryTest.Open;
    if qryTest.Fields.Count>0 then
    begin
      for i:=0 to qryTest.Fields.Count-1 do
      begin
        if not qryColumns.Locate('ALERT_NO;COLUMN_NO',VarArrayOf([qryAlertALERT_NO.Value,qryTest.Fields[i].FieldName]),[])
        then
        begin
          if not (qryColumns.State in [dsInsert,dsEdit]) then
            qryColumns.Append;
          qryColumnsALERT_NO.Value:=qryAlertALERT_NO.Value;
          qryColumnsCOLUMN_NO.Value:=qryTest.Fields[i].FieldName;
          qryColumnsCOLUMN_CAPTION.Value:=qryTest.Fields[i].FieldName;
          case qryTest.Fields[i].DataType of
            ftInteger,ftSmallint,ftFloat: qryColumnsCOLUMN_WIDTH.Value:=60;
            ftString,ftWideString: qryColumnsCOLUMN_WIDTH.Value:=120;
          else
            qryColumnsCOLUMN_WIDTH.Value:=80;
          end;
          qryColumns.Post;
        end;
      end;
    end;
  except
    SHowMessageUnicode(22);
  end;
  qryTest.Close;
  //
  qryColumns.EnableControls;

  qryTest.SQL.Text:='execute procedure HR_ALERT_INIT_USER_DATA(:ALERT_NO)';
  qryTest.Prepare;
  qryTest.ParamByName('ALERT_NO').Value:=qryAlertALERT_NO.Value;
  qryTest.ExecSQL;
  qryAlertUser.Refresh;
  Screen.Cursor:=crDefault;

end;

procedure TfrmAlertConfig.qryTestError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  inherited;
  //
end;

end.
