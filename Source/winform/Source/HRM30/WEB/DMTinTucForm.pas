unit DMTinTucForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, dxExEdtr, ElPanel, ElSplit, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ExtCtrls, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, DB, IBODataset, dxDBTLCl,
  dxGrClms, dxEditor, dxEdLib, ActnList, dxDBELib, EditorForm;

type
  TfrmDMTinTuc = class(TfrmEditBase)
    dxlcMainItem2: TdxLayoutItem;
    mainPanel: TPanel;
    gridTinTuc: TdxDBGrid;
    panel1: TPanel;
    ElSplitter1: TElSplitter;
    qryTinTuc: TIBOQuery;
    dsTinTuc: TDataSource;
    qryTinTucTIN_TIEUDE: TWideStringField;
    qryTinTucTIN_NOIDUNG: TBlobField;
    qryTinTucTIN_TOMTAT: TWideStringField;
    qryTinTucTIN_NGAYDANG: TDateField;
    qryTinTucTIN_NGUOIDANG: TWideStringField;
    gridTinTucTIN_TIEUDE: TdxDBGridColumn;
    gridTinTucTIN_NGAYDANG: TdxDBGridDateColumn;
    gridTinTucTIN_NGUOIDANG: TdxDBGridColumn;
    Panel2: TPanel;
    panelEditor: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    Panel4: TPanel;
    ElSplitter2: TElSplitter;
    dxTuNgay: TdxDateEdit;
    dxDenNgay: TdxDateEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    ActionList1: TActionList;
    acLayDanhSach: TAction;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBDateEdit1: TdxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    qryTinTucTIN_ID: TIntegerField;
    qryTinTucTIN_MAHOA_HTML: TBlobField;
    qryTinTucTIN_GIODANG: TTimeField;
    dxDBTimeEdit1: TdxDBTimeEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure acLayDanhSachExecute(Sender: TObject);
    procedure dxTuNgayChange(Sender: TObject);
    procedure dxDenNgayChange(Sender: TObject);
    procedure qryTinTucNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure qryTinTucBeforePost(DataSet: TDataSet);
    procedure qryTinTucAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    wordEditor :TfrmEditor;
  public
    { Public declarations }
  end;

var
  frmDMTinTuc: TfrmDMTinTuc;

implementation

uses DateUtils,MainDM, StrUtils;

{$R *.dfm}

procedure TfrmDMTinTuc.FormCreate(Sender: TObject);
begin
  inherited;
  dxTuNgay.Date := StartOfAMonth(YearOf(today),monthof(today));
  dxDenNgay.Date := today;
  acLayDanhSach.Execute;

  wordEditor := TfrmEditor.Create(panelEditor,qryTinTuc,'TIN_NOIDUNG');
  with wordEditor do
  begin
    ApplyOption(TControl(wordEditor));
    wordEditor.SaveTemplate.Visible:=false;
    wordEditor.LoadTemplate.Visible:=false;
    wordEditor.rvActionInsertPicture1.Visible := false;      
    wordEditor.dxBarManager1.Bars[6].Visible:=false;
    wordEditor.dxBarManager1.Bars[6].Hidden:=true;
    wordEditor.dxBarManager1.Bars[3].Visible:=false;
    wordEditor.dxBarManager1.Bars[3].Hidden:=true;


    BorderStyle := bsNone;
    Parent := panelEditor;
    Align := alClient;
    Visible := true;
  end;
end;

procedure TfrmDMTinTuc.acLayDanhSachExecute(Sender: TObject);
begin
  inherited;
  if qryTinTuc.Active then qryTinTuc.Close;
  qryTinTuc.ParamByName('TU_NGAY').Value := dxTuNgay.Date;
  qryTinTuc.ParamByName('DEN_NGAY').Value := dxDenNgay.Date;
  qryTinTuc.Open;  
end;

procedure TfrmDMTinTuc.dxTuNgayChange(Sender: TObject);
begin
  inherited;
  acLayDanhSach.Execute;
end;

procedure TfrmDMTinTuc.dxDenNgayChange(Sender: TObject);
begin
  inherited;
  acLayDanhSach.Execute;
end;

procedure TfrmDMTinTuc.qryTinTucNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTinTucTIN_NGAYDANG.Value := today;
  qryTinTucTIN_GIODANG.Value := TimeOf(Now); 
end;

procedure TfrmDMTinTuc.FormDestroy(Sender: TObject);
begin
  inherited;
  qryTinTuc.Close;  
end;

procedure TfrmDMTinTuc.qryTinTucBeforePost(DataSet: TDataSet);
var
  stream : TMemoryStream;
  chuoi, chuoi_dau, chuoi_sau : String;
  chieu_dai, vitri_chuoi : integer;
begin
  inherited;
  Stream := TMemoryStream.Create;
  wordEditor.dbrvMain.SaveHTMLToStreamEx(stream, ExtractFilePath(Application.ExeName) + 'temp\' + qryTinTucTIN_ID.AsString + '.htm',
    UTF8Encode(qryTinTucTIN_TIEUDE.Value),'img','','','', []);
  TBlobField(qryTinTuc.FieldByName('TIN_MAHOA_HTML')).LoadFromStream(stream) ;
  chuoi := TBlobField(qryTinTuc.FieldByName('TIN_MAHOA_HTML')).AsString;
  { Cat tag <HTML>'}
  vitri_chuoi := pos('<HTML>',chuoi);
  chuoi := copy(chuoi,vitri_chuoi + 6,Length(chuoi));

  {Cat tag <HEAD><TITLE>....</TITLE>}
  vitri_chuoi := pos('</TITLE>',chuoi);
  chuoi := copy(chuoi,vitri_chuoi + 8,Length(chuoi));

  {Cat tag dinh dang margin cua BODY }
  vitri_chuoi := pos('BODY {',chuoi);
  chuoi_dau := copy(chuoi,1,vitri_chuoi-1);


  vitri_chuoi := pos('HR {',chuoi);
  chuoi_sau := copy(chuoi,vitri_chuoi, length(chuoi));
  chuoi := chuoi_dau + ' ' + chuoi_sau;


  {Cat tag </HEAD> <BODY>}
  vitri_chuoi := pos('</HEAD>',chuoi);
  chuoi_dau := copy(chuoi,1,vitri_chuoi-1);
  chuoi_sau := copy(chuoi,vitri_chuoi + 7 + 8, length(chuoi));
  chuoi := chuoi_dau + ' ' + chuoi_sau;

  {Cat tag </BODY></HTML>}
  vitri_chuoi := pos('</BODY></HTML>',chuoi);
  chuoi := copy(chuoi,1,vitri_chuoi-1);
  TBlobField(qryTinTuc.FieldByName('TIN_MAHOA_HTML')).Value := chuoi;

  dmMain.DefOnBeforePost(dataset);
end;

procedure TfrmDMTinTuc.qryTinTucAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryTinTuc.Refresh;
  dmMain.DefOnAfterPost(dataset);
end;

end.
