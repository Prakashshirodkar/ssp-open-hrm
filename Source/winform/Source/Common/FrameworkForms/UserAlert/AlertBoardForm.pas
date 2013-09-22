unit AlertBoardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, dxExEdtr,
  ImgList, dxTL, dxCntner, StdCtrls, ElHTMLLbl, ElBtnCtl, ElPopBtn,
  ExtCtrls, ElPanel, ElHTMLPanel, ElAdvPanel, ElExpBar, ElScrollBox,
  dxDBCtrl, DB, dxmdaset, dxDBTL, ElPgCtl, ElSplit, ActnList,          
  dxLayoutControl, cxControls, ElCLabel, ElLabel, IBODataset,
  dxfProgressBar, ComCtrls, dxDBGrid, ElSideBar, dxfClock;

type
  TfrmAlertBoard = class(TfrmBase)
    ImageList1: TImageList;
    dsAlertList: TDataSource;
    memAlertList: TdxMemData;
    ElSplitter1: TElSplitter;
    mainPage: TElPageControl;
    ActionList1: TActionList;
    acLoadAlertInfo: TAction;
    memAlertListALERT: TIntegerField;
    memAlertListP_ALERT: TIntegerField;
    memAlertListALERT_NAME: TWideStringField;
    mainPanel: TPanel;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    qryAlertList: TIBOQuery;
    qryAlertListALERT_NO: TWideStringField;
    qryAlertListSQL_CHECK: TWideStringField;
    qryAlertListREPORT_TEXT: TWideStringField;
    qryAlertListALERT_TITLE: TWideStringField;
    memAlertListALERT_TEXT: TWideStringField;
    dsAlert: TDataSource;
    qryCaption: TIBOQuery;
    qryCaptionALERT_NO: TWideStringField;
    qryCaptionCOLUMN_NO: TWideStringField;
    qryCaptionCOLUMN_CAPTION: TWideStringField;
    qryCaptionCOLUMN_TYPE: TWideStringField;
    qryCaptionCOLUMN_WIDTH: TIntegerField;
    sidebarList: TElSideBar;
    dxfClock1: TdxfClock;
    ElPanel1: TElPanel;
    ElLabel1: TElLabel;
    ElExplorerBar1: TElExplorerBar;
    ElExplorerBarGroup1: TElExplorerBarGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acLoadAlertInfoExecute(Sender: TObject);
    procedure tlAlertListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure sidebarListItemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    need_alert:boolean;
  public
    { Public declarations }
    alert_count:integer;
    constructor Create(AOwner:TComponent;alert:boolean=false);
  end;

var
  frmAlertBoard: TfrmAlertBoard;

implementation

uses MainDM,MMSYstem,StrUtils,DateUtils;

{$R *.dfm}
constructor TfrmAlertBoard.Create(AOwner:TComponent;alert:boolean);
begin
  inherited Create(AOwner);
  need_alert:=alert;
  acLoadAlertInfo.Execute;
end;
procedure TfrmAlertBoard.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
   com:TComponent;
begin
  inherited;
  if alert_count>0 then
  begin
    for i:=alert_count-1 downto 0 do
    begin
      com:=FindComponent('qry'+IntToStr(i));
      if Assigned(com) then com.Free;
      com:=FindComponent('ds'+IntToStr(i));
      if Assigned(com) then com.Free;
      com:=FindComponent('grid'+IntToStr(i));
      if Assigned(com) then com.Free;
    end;
  end;
  action:=caFree;
  frmAlertBoard:=nil;
end;

procedure TfrmAlertBoard.acLoadAlertInfoExecute(Sender: TObject);
  procedure InitGridData(grid:TdxDBGrid);
    var col:TdxDBTreeListColumn;
  begin
    if qryCaption.Active then
      qryCaption.Close;
    qryCaption.ParamByName('ALERT_NO').Value:=qryAlertListALERT_NO.Value;
    qryCaption.Open;
    if qryCaption.IsEmpty then exit;
    qryCaption.First;
    grid.BeginUpdate;
    while not qryCaption.Eof do
    begin
      col := grid.CreateColumn(TdxDBGridColumn);
      col.Name := grid.Name + qryCaptionCOLUMN_NO.AsString;
      col.FieldName := qryCaptionCOLUMN_NO.AsString;
      col.Width := qryCaptionCOLUMN_WIDTH.Value;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.DisableEditor := true;
      col.Caption := qryCaptionCOLUMN_CAPTION.Value;
      if grid.KeyField='' then
        grid.KeyField:=qryCaptionCOLUMN_NO.AsString;

      qryCaption.Next;
    end;
    qryCaption.Close;
    grid.EndUpdate;
  end;
  function GetAlertInfo(SQL:String;index:integer):boolean;
  var qry:TIBOQuery;
      ds:TDataSource;
      tab:TElTabSheet;
      grid:TdxDBGrid;
  begin
    qry:=TIBOQuery.Create(self);
    qry.Name:='qry'+IntToStr(index);
    qry.Unicode:=true;
    qry.IB_Connection:=dmMain.connMain;
    qry.IB_Transaction:=dmMain.trCommited;
    qry.SQL.Text:=SQL;
    qry.BeforeOpen:=dmMain.DefOnBeforeOpen;
    qry.OnError:=dmMain.DefOnDatasetError;
    try
      qry.Prepare;
      qry.Open;
    except
      result:=false;
    end;
    if not qry.IsEmpty then
    begin
      result:=true;
      //tao datasource
      ds:=TDataSource.Create(self);
      ds.name:='ds'+IntToStr(index);
      ds.DataSet:=qry;
      //tao tab
      tab:=mainPage.NewPage;
      tab.Name:='tab'+IntToStr(index);
      tab.PageIndex:=index;
      //tab grid;
      grid:=TdxDBGrid.Create(self);
      grid.Parent:=tab;
      grid.Name:='grid'+IntToStr(index);
      grid.Visible:=true;
      grid.Align:=alClient;
      grid.OptionsView:=grid.OptionsView+[edgoRowAutoHeight,edgoAutoWidth];
      // tao cot cho grid
      InitGridData(grid);
      Apply_Grid(grid);
       grid.ShowGrid:=false;

      // gan data source
      grid.DataSource:=ds;
     end
    else
    begin
      qry.Close;
      qry.Free;
      result:=false;
    end
  end;
  function DoReport(input:widestring;qryData:TIBOQuery):WideString;
  var temp:string;
  begin
    temp:=UTF8Encode(input);
    temp:=StringReplace(temp,'[:DATA_COUNT]',IntToStr(qryData.RecordCount),[rfReplaceAll]);
    temp:=StringReplace(temp,'[:CURRENT_DATE]',DateToStr(Today),[rfReplaceAll]);
    temp:=StringReplace(temp,'[:CURRENT_MONTH]',IntToStr(MonthOf(Now)),[rfReplaceAll]);
    temp:=StringReplace(temp,'[:CURRENT_YEAR]',IntToStr(YearOf(Now)),[rfReplaceAll]);
    temp:=StringReplace(temp,'[:CURRENT_DAY]',IntToStr(DayOf(Now)),[rfReplaceAll]);
    result:=UTF8Decode(temp);
  end;
var i:integer;
  item:TElSideBarItem;
begin
  inherited;
  if memAlertList.Active then
    memAlertList.Close;
  memAlertList.DisableControls;
  if qryAlertList.Active then
    qryAlertList.Close;
  if sysConfig.AdminRight then
    qryAlertList.SQLWhere.Clear;
  qryAlertList.Prepare;
  qryAlertList.Open;
  if not qryAlertList.IsEmpty then
  begin
    qryAlertList.First;
    i:=0;
    memAlertList.Open;
    while not qryAlertList.Eof do
    begin
      if GetAlertInfo(qryAlertListSQL_CHECK.AsString,i) then
      begin
        memAlertList.Append;
        memAlertListALERT.Value:=i;
        memAlertListP_ALERT.Value:=-1;
        memAlertListALERT_NAME.Value:=qryAlertListALERT_TITLE.Value;
        memAlertListALERT_TEXT.Value:=Doreport( qryAlertListREPORT_TEXT.Value,
          TIBOQuery(self.FindComponent('qry'+IntToStr(i))));
        memAlertList.Post;
        Inc(i);

        item:=sidebarList.Sections[0].Items.Add;
        item.Caption:=qryAlertListALERT_TITLE.Value;
        item.ImageIndex:=0;
      end;
      qryAlertList.Next;
    end;
    alert_count:=i;
  end;
  qryCaption.Close;
  qryAlertList.Close;
  memAlertList.EnableControls;
  if alert_count>0 then
  begin
    sidebarList.SectionIndex:=0;
    sidebarList.ItemIndex:=0;
    sidebarListItemChange(sidebarList);
    Playsound(PAnsiChar(ExtractFilePath(Application.ExeName)+'\Resource\Sounds\message.wav'),0,SND_FILENAME)
  end
  else
  begin
    if need_alert then
      ShowMessageUnicode(61);
    self.Close;
  end;
end;

procedure TfrmAlertBoard.tlAlertListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  //
end;

procedure TfrmAlertBoard.sidebarListItemChange(Sender: TObject);
begin
  inherited;
  if memAlertList.Locate('ALERT',sidebarList.ItemIndex,[]) then
  begin
    if memAlertListP_ALERT.IsNull then
    begin
      lblListCaption.Caption:=''
    end
    else
    begin
      lblListCaption.Caption:=memAlertListALERT_TEXT.Value;
      mainPage.ActivePageIndex:=memAlertListALERT.Value;
    end;
  end;
end;

procedure TfrmAlertBoard.FormCreate(Sender: TObject);
begin
  inherited;
  dxfClock1.HoursDisplayStyle:=dsNull;
  dxfClock1.Active:=true;
end;

end.
