//******************************************************************//
//************** Create form by THUYPTP - 17/09/2009 ***************//
//******************************************************************//
unit BAOHIEM_CauHinhDuLieuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, DB, IBODataset, dxEditor,
  dxEdLib, dxDBELib, ActnList, ElPgCtl, ImgList;

type
  TfrmBAOHIEM_CauHinhDuLieu = class(TfrmEditBase)
    gridData: TdxDBGrid;
    dxlcMainItem2: TdxLayoutItem;
    qryData: TIBOQuery;
    dsData: TDataSource;
    qryDataBH_CONFIG_DATA_ID: TIntegerField;
    qryDataDATA_TITLE: TWideStringField;
    qryDataDATA_SQL: TWideStringField;
    qryDataDATA_NOTE: TWideStringField;
    qryDataMA_PHANNHOM: TWideStringField;
    qryDataTEN_PHANNHOM: TWideStringField;
    gridDataDATA_TITLE: TdxDBGridColumn;
    gridDataDATA_NOTE: TdxDBGridColumn;
    gridDataTEN_PHANNHOM: TdxDBGridMRUColumn;
    dxlcMainGroup2: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    gridColumn: TdxDBGrid;
    gridColumnCOLUMN_NO: TdxDBGridColumn;
    gridColumnCOLUMN_CAPTION: TdxDBGridColumn;
    gridColumnCOLUMN_WIDTH: TdxDBGridSpinColumn;
    qryCaption: TIBOQuery;
    dsCaption: TDataSource;
    qryCaptionBH_CONFIG_DATA_ID: TIntegerField;
    qryCaptionCOLUMN_NO: TWideStringField;
    qryCaptionCOLUMN_CAPTION: TWideStringField;
    qryCaptionCOLUMN_TYPE: TWideStringField;
    qryCaptionCOLUMN_WIDTH: TIntegerField;
    ActionList1: TActionList;
    acPhatsinh: TAction;
    qryTest: TIBOQuery;
    qryCaptionCOLUMN_GET_DATA: TSmallintField;
    gridColumnCOLUMN_GET_DATA: TdxDBGridCheckColumn;
    qryCaptionCOLUMN_STT: TSmallintField;
    gridColumnCOLUMN_STT: TdxDBGridSpinColumn;
    gridColumnCOLUMN_TYPE: TdxDBGridImageColumn;
    qryCaptionCOLUMN_GROUP: TSmallintField;
    gridColumnCOLUMN_GROUP: TdxDBGridCheckColumn;
    pageConfig: TElPageControl;
    dxlcMainItem5: TdxLayoutItem;
    tabCauHinh: TElTabSheet;
    tabQuiDinh: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    ImageList1: TImageList;
    gridQuiDinh: TdxDBGrid;
    qryQuyDinh: TIBOQuery;
    dsQuyDinh: TDataSource;
    qryQuyDinhBH_CONFIG_DATA_ID: TIntegerField;
    qryQuyDinhBH_MAU_ID: TIntegerField;
    qryQuyDinhMAU_TEN: TWideStringField;
    qryQuyDinhIN_VIEW: TSmallintField;
    gridQuiDinhMAU_TEN: TdxDBGridColumn;
    gridQuiDinhIN_VIEW: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPhatsinhExecute(Sender: TObject);
    procedure acPhatsinhUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAOHIEM_CauHinhDuLieu: TfrmBAOHIEM_CauHinhDuLieu;

implementation

uses BaseFrm, BAOHIEM_PhanNhomForm, MainDM;

{$R *.dfm}

procedure TfrmBAOHIEM_CauHinhDuLieu.FormCreate(Sender: TObject);
begin
  inherited;
  qryData.Open;
  qryCaption.Open;
  qryQuyDinh.open;

  RegisterLookupControl(gridDataTEN_PHANNHOM,'MA_PHANNHOM','TEN_PHANNHOM',
    'select MA_PHANNHOM, TEN_PHANNHOM FROM HR_BAOHIEM_PHANNHOM', TfrmBAOHIEM_PhanNhom);
end;

procedure TfrmBAOHIEM_CauHinhDuLieu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryData.Close;
  qryCaption.Close;
  qryQuyDinh.Close;
end;

procedure TfrmBAOHIEM_CauHinhDuLieu.acPhatsinhExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  Screen.Cursor:=crSQLWait;
  qryCaption.DisableControls;
  if qryTest.Active then qryTest.Close;
  qryTest.SQL.Text:=qryDataDATA_SQL.AsString;
  try
    qryTest.Prepare;
    qryTest.Open;
    if qryTest.Fields.Count>0 then
    begin
      for i:=0 to qryTest.Fields.Count-1 do
      begin
        if not qryCaption.Locate('BH_CONFIG_DATA_ID;COLUMN_NO',VarArrayOf([qryDataBH_CONFIG_DATA_ID.Value,qryTest.Fields[i].FieldName]),[])
        then
        begin
          if not (qryCaption.State in [dsInsert,dsEdit]) then
            qryCaption.Append;
          qryCaptionBH_CONFIG_DATA_ID.Value:=qryDataBH_CONFIG_DATA_ID.Value;
          qryCaptionCOLUMN_NO.Value:=qryTest.Fields[i].FieldName;
          qryCaptionCOLUMN_CAPTION.Value:=qryTest.Fields[i].FieldName;
          qryCaptionCOLUMN_TYPE.Value:= 'TEXT';
          qryCaptionCOLUMN_GET_DATA.Value:= 1;
          qryCaptionCOLUMN_STT.Value:= i+1;
          case qryTest.Fields[i].DataType of
            ftInteger,ftSmallint,ftFloat: qryCaptionCOLUMN_WIDTH.Value:=60;
            ftString,ftWideString: qryCaptionCOLUMN_WIDTH.Value:=120;
          else
            qryCaptionCOLUMN_WIDTH.Value:=80;
          end;
          qryCaption.Post;
        end;
      end;
    end;
  except
    SHowMessageUnicode(22);
  end;
  qryTest.Close;
  //
  qryCaption.EnableControls;

  qryTest.SQL.Text:='execute procedure HR_BAOHIEM_INIT_GROUP_DATA(:BH_CONFIG_DATA_ID)';
  qryTest.Prepare;
  qryTest.ParamByName('BH_CONFIG_DATA_ID').Value:=qryDataBH_CONFIG_DATA_ID.Value;
  qryTest.ExecSQL;
  qryQuyDinh.Refresh;


  Screen.Cursor:=crDefault;
end;

procedure TfrmBAOHIEM_CauHinhDuLieu.acPhatsinhUpdate(Sender: TObject);
begin
  inherited;
  acPhatsinh.Enabled:=(qryData.IsEmpty=false);
end;

end.
