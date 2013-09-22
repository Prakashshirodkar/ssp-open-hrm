unit SendMailFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, ActnList, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxCntner, dxEditor, dxExEdtr, dxEdLib, DB, dxmdaset,
  IBODataset, ppDB, ppDBPipe, ppRelatv, ppProd, ppClass, ppReport, ppComm,
  ppEndUsr, dxTL, dxDBCtrl, dxDBGrid, sspSendMail, WSDLIntf, ElEdits,
  ElBtnEdit, ElMemoCombo, dxfProgressBar;

type
  TframeSendMail = class(TFrame)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    ActionList1: TActionList;
    acSendMail: TAction;
    dxSelectTemplate: TdxButtonEdit;
    Chon: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    acDesignTemplate: TAction;
    dlgTemplate: TOpenDialog;
    memMainData: TdxMemData;
    dsMainData: TDataSource;
    dxLayoutControl1Group1: TdxLayoutGroup;
    F_MailAPI: TMAPIMail;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxSubject: TdxEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLog: TElMemoCombo;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxBar: TdxfProgressBar;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxSenderName: TdxEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxSender: TdxHyperLinkEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    procedure dxSelectTemplateChange(Sender: TObject);
    procedure dxSelectTemplateButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure acSendMailExecute(Sender: TObject);
    procedure acDesignTemplateExecute(Sender: TObject);
  private
    { Private declarations }
    F_Directory, F_Template_FileName: string;
    F_Detail: TStringList;
    //    F_DetailPipeLine: TStringList;
    F_MasterDataset: TDataset;

    F_Email_Addr_Field: string;
    F_Recipient_List: TIBOQuery;
    F_DBGrid: TdxDBGrid;
    F_Report: TppReport;
    F_Design: TppDesigner;
    //    F_SubReport:
    procedure AddDataLink(ADataSource: TDataSource);
    procedure AddDataPipeLine(ADataPipeline: TppDBPipeline);
    procedure OpenDetailDataset;
    procedure CloseDetailDataset;
    procedure SendMail(main_grid: TdxDBGrid);
  public
    procedure SetDirectory(const Value: string);
    procedure SetTemplateFileName(const Value: string);
    procedure InitData;
    procedure FreeComponent;
    procedure CreateMasterFromControl(grid: TdxDBGrid; email_addr_field:
      string);
    function CreateDetailFromDataset(qry_template: TIBOQuery; pp: TppDBPipeline
      = nil): TIBOQuery;
    procedure RegisterReport(report: TppReport; designer: TppDesigner; dir,
      file_name: string);
    procedure RegisterRecipientList(qry: TIBOQuery; email_addr_field: string);

  public
    { Public declarations }
    property Directory: string read F_Directory write SetDirectory;
    property Template_FileName: string read F_Template_FileName write
      SetTemplateFileName;

  end;

  { + Huong dan su dung SendMail frame
      1. Gan SendMail frame vao trong form
      2. Trong CreateForm() :
        + Goi InitData de khoi tao frame ( trong CreateForm(); )
        + Gan thuoc tinh Directory, Template_FileName mac dinh cho frame
        + Goi CreateMasterFromControl de dang ky dataset nao duoc dung de gui mail
        + Neu co Detail data thi goi CreateDetailFromDataset de dang ky detail dataset
  }
implementation

uses MainDM, DecisionDataModule;

{$R *.dfm}

procedure TframeSendMail.RegisterReport(report: TppReport; designer:
  TppDesigner; dir, file_name: string);
begin
  F_Report := report;
  F_Design := designer;
  F_Directory := dir;
  F_Template_FileName := file_name;
  dlgTemplate.InitialDir := F_Directory;
  F_Design.Report := F_Report;
end;

procedure TframeSendMail.SetDirectory(const value: string);
begin
  F_Directory := value;
  dlgTemplate.InitialDir := F_Directory;
end;

procedure TframeSendMail.SetTemplateFileName(const value: string);
begin
  F_Template_FileName := value;
end;

procedure TframeSendMail.dxSelectTemplateChange(Sender: TObject);
begin
  SetTemplateFileName(string(dxSelectTemplate.Text));
end;

procedure TframeSendMail.dxSelectTemplateButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if dlgTemplate.Execute then
  begin
    dxSelectTemplate.Text := ExtractFileName(dlgTemplate.FileName);
  end;
end;

procedure TframeSendMail.FreeComponent;
var
  i: integer;
begin
  if Assigned(F_Detail) then
  begin
    for i := 0 to F_Detail.Count - 1 do
    begin
      if (F_Detail.Objects[i] is TDataSource) then
      begin
        if Assigned(TDatasource(F_Detail.Objects[i]).DataSet) then
        begin
          TDatasource(F_Detail.Objects[i]).DataSet.Close;
          TDatasource(F_Detail.Objects[i]).DataSet.Free;
        end;
      end;
      F_Detail.Objects[i].Free;
    end;
    {    for i := 0 to F_DetailPipeLine.Count - 1 do
        begin
          F_DetailPipeLine.Objects[i].Free;
        end;
    }
  end;
end;

procedure TframeSendMail.InitData;
begin
  if not Assigned(F_Detail) then
  begin
    F_Detail := TStringList.Create;
    F_Detail.Duplicates := dupIgnore;
    {    F_DetailPipeLine := TStringList.Create;
        F_DetailPipeLine.Duplicates := dupIgnore;
    }
  end;
end;

procedure TframeSendMail.AddDataLink(ADataSource: TDataSource);
var
  i: smallint;
begin
  if not Assigned(ADataSource) then Exit;
  if not Assigned(F_Detail) then
  begin
    F_Detail := TStringList.Create;
    F_Detail.Duplicates := dupIgnore;
  end;
  i := F_Detail.IndexOf(ADataSource.Name);
  if i = -1 then
    i := F_Detail.AddObject(ADataSource.Name, ADataSource);
end;

procedure TframeSendMail.AddDataPipeLine(ADataPipeline: TppDBPipeline);
var
  i: smallint;
begin
  {  if not Assigned(ADataPipeline) then Exit;
    if not Assigned(F_DetailPipeLine) then
    begin
      F_DetailPipeLine := TStringList.Create;
      F_DetailPipeLine.Duplicates := dupIgnore;
    end;
   i := F_DetailPipeLine.IndexOf(ADataPipeline.Name);
    if i = -1 then
      i := F_DetailPipeLine.AddObject(ADataPipeline.Name, ADataPipeline);
  }
end;

procedure TframeSendMail.CreateMasterFromControl(grid: TdxDBGrid;
  email_addr_field: string);
var
  i: integer;
begin
  if not ((grid.DataSource.DataSet is TIBOQuery) or
    (grid.DataSource.DataSet is TdxMemData)) then exit;

  if memMainData.Active then
    memMainData.Close;
  for i := memMainData.FieldCount - 1 downto 0 do
    memMainData.Fields[i].Free;
  memMainData.CreateFieldsFromDataSet(grid.DataSource.DataSet);

  F_MasterDataset := grid.DataSource.DataSet;
  F_Email_Addr_Field := email_addr_field;
  F_DBGrid := grid;
//  F_DBGrid.OptionsBehavior := F_DBGrid.OptionsBehavior + [edgoMultiSelect];
end;

procedure TframeSendMail.RegisterRecipientList(qry: TIBOQuery; email_addr_field:
  string);
begin
  F_Recipient_List := qry;
  F_Email_Addr_Field := email_addr_field;

end;

function TframeSendMail.CreateDetailFromDataset(qry_template: TIBOQuery; pp:
  TppDBPipeline): TIBOQuery;
var
  ds: TDataSource;
  qry: TIBOQuery;
begin
  qry := TIBOQuery.Create(self.Owner);
  qry.Name := 'from' + qry_template.Name;
  qry.IB_Connection := dmMain.connMain;
  qry.IB_Transaction := dmMain.connMain.DefaultTransaction;
  qry.Unicode := true;
  qry.BeforeOpen := dmMain.DefOnBeforeOpen;
  qry.SQL.Text := qry_template.SQL.Text;
  qry.Prepare;
//  qry.Open;
  qry.DataSource := dsMainData;

  ds := TDataSource.Create(self.Owner);
  ds.DataSet := qry;
  AddDataLink(ds);

  pp.DataSource := ds;
  {
    //  pp.MasterDataPipeline := F_Report.DataPipeline;
    pp.AutoCreateFields:=true;
    pp.OpenDataSource:=true;
    pp.Visible:=true;
    pp.SkipWhenNoRecords:=true;

    pp.CreateDefaultFields;
    AddDataPipeLine(pp);
  }
  result := qry;
end;

procedure TframeSendMail.OpenDetailDataset;
var
  i: integer;
begin
  for i := 0 to F_Detail.Count - 1 do
  begin
    if not TDataSource(F_Detail.Objects[i]).DataSet.Active then
      TDataSource(F_Detail.Objects[i]).DataSet.Open
    else
      TDataSource(F_Detail.Objects[i]).DataSet.Refresh;
  end;
end;

procedure TframeSendMail.CloseDetailDataset;
var
  i: integer;
begin
  for i := 0 to F_Detail.Count - 1 do
  begin
    if TDataSource(F_Detail.Objects[i]).DataSet.Active then
      TDataSource(F_Detail.Objects[i]).DataSet.Close;
  end;
end;

procedure TframeSendMail.SendMail(main_grid: TdxDBGrid);
  procedure CreateRecipientList(var recipient: TStringList);
  var
    addr: string;
  begin
    recipient.Clear;
    if F_Email_Addr_Field = '' then exit;
    if not Assigned(F_Recipient_List) then
    begin
      recipient.Add(memMainData.FieldByName(F_Email_Addr_Field).AsString);
    end
    else
    begin
      F_Recipient_List.DisableControls;
      if F_Recipient_List.IsEmpty = false then
      begin
        F_Recipient_List.First;
        while not F_Recipient_List.Eof do
        begin
          addr := F_Recipient_List.FieldByName(F_Email_Addr_Field).AsString;
          if Length(addr) > 0 then
            recipient.Add(addr);
          F_Recipient_List.Next;
        end;
      end;
      F_Recipient_List.EnableControls;
    end;
  end;
  procedure SendMailTo(recipient: TStringList);
  var
    sr: TSearchRec;
  begin
    try
      //mail header
      F_MailAPI.Subject := utf8Encode(dxSubject.Text);
      F_MailAPI.Body := utf8Encode(dxSubject.Text);
      F_MailAPI.SenderAddress := dxSender.Text;
      F_MailAPI.SenderName := Utf8Encode(dxSender.Text);
      //mail recipient
      F_MailAPI.Recipients.Text := recipient.Text;
      //mail attactment
      F_MailAPI.Attachments.Clear;
      if FindFirst(F_Directory + '\attach\*.*', faHidden + faSysFile + faVolumeID
        +
        faDirectory + faArchive + faAnyFile, sr) = 0 then
      begin
        repeat
          if (sr.Name <> '.') and (sr.Name <> '..') then
            F_MailAPI.Attachments.Add(F_Directory + '\attach\' + sr.Name);
        until FindNext(sr) <> 0;
        FindClose(sr);
      end;

      if F_MailAPI.Send then
        dxLog.Lines.Add('+ Sending mail to ' + F_MailAPI.Recipients.Text +
          ' is successfully...')
      else
        dxLog.Lines.Add('- Failed to send mail to ' + F_MailAPI.Recipients.Text
          +
          ' ...');
    except
      // xu li khi gui mail khong thanh cong
      // tao form hien thi ket qua gui mail
      dxLog.Lines.Add('- Failed to send mail to ' + F_MailAPI.Recipients.Text +
        ' ...');
    end;
  end;
  function DeleteMailContent:boolean;
  var
    sr: TSearchRec;
  begin
    result:=true;
    try
      if FindFirst(F_Directory + '\attach\*.*', faHidden + faSysFile + faVolumeID
        +faArchive + faAnyFile, sr) = 0 then
      begin
        repeat
          if (sr.Name<>'.')and(sr.Name<>'..') then
          begin
            result:=DeleteFile(F_Directory + '\attach\' + sr.Name);
            if result=false then
            exit
          end;  
        until FindNext(sr) <> 0;
        FindClose(sr);
      end;
    except
      result:=false;
      exit;
    end;
  end;
var
  i, j: integer;
  key_field, field_name: string;
  key_colum: TdxDBTreeListColumn;
  recipient: TStringList;
begin
  recipient := TStringList.Create;
  dxLog.Lines.Add('*** Start process of mail sending at : ' + TimeToStr(Now) +
    ' *** ');
  if main_grid.DataSource.DataSet <> F_MasterDataset then
  begin
    dxLog.Lines.Add('Configured dataset is not compatible with data grid... Stop sending mail process !');
    exit;
  end;
  if main_grid.SelectedCount = 0 then
  begin
    dxLog.Lines.Add('There are no selection in data grid for sending mail... Please select at least one selection to start sending mail process !');
    exit;
  end;

  if memMainData.FieldCount <= 1 then
  begin
    dxLog.Lines.Add('Configured memory is not initialized... Stop sending mail process !');
    exit;
  end;

  CloseDetailDataset;

  // load du lieu gui mail
  key_field := main_grid.KeyField;
  key_colum := main_grid.COlumnByFieldName(key_field);

  if not Assigned(key_colum) then
  begin
    dxLog.Lines.Add('Can not find key column in data grid... Stop sending mail process !');
    exit;
  end;
  memMainData.DisableControls;
  F_MasterDataset.DisableControls;
  if memMainData.Active then
    memMainData.Close;
  memMainData.Open;
  memMainData.Insert;
  memMainData.Post;

  dxBar.ShowText := true;
  dxBar.Min := 0;
  dxBar.Max := main_grid.SelectedCount;
  dxBar.Position := 0;
  for i := 0 to main_grid.SelectedCount - 1 do
  begin
    if F_MasterDataset.Locate(key_field,
      main_grid.SelectedNodes[i].Values[key_colum.Index], [loCaseInsensitive])
        then
    begin
      if memMainData.IsEmpty then
        memMainData.Insert
      else
        memMainData.Edit;
      if F_MasterDataset.ClassName = 'TIBOQuery' then
      begin
        for j := 0 to F_MasterDataset.FieldCount - 1 do
        begin
          field_name := F_MasterDataset.Fields[j].FieldName;
          memMainData.FieldByName(field_name).Value :=
            TIBOQuery(F_MasterDataset).FieldByName(field_name).Value
        end
      end
      else
        if F_MasterDataset.ClassName = 'TdxMemData' then
      begin
        for j := 1 to F_MasterDataset.FieldCount - 1 do
        begin
          field_name := F_MasterDataset.Fields[j].FieldName;
          memMainData.FieldByName(field_name).Value :=
            TdxMemData(F_MasterDataset).FieldByName(field_name).Value
        end
      end
      else
      begin
        dxLog.Lines.Add('Configured memory is not compatible with dataset in data grid... Stop sending mail process');
        Exit;
      end;
      memMainData.Post;
      if Assigned(F_Report.DataPipeline) then
      begin
        TppDBPipeline(F_Report.DataPipeline).Open;
      end;
      OpenDetailDataset;

      //  tao file Attach
      memMainData.EnableControls;
      if dmMain.DefOnPrepareReport(F_Directory, F_Template_FileName, F_Report) =
        false then
      begin
        dxLog.Lines.Add('Can not create attact file for mail sending... Stop sending mail process');
        exit;
      end;
      //      dmMain.DefOnBeforePrint(true,dmMain.qryOrgInfo,self.Owner);
      F_Report.AllowPrintToFile := True;
      F_Report.DeviceType := 'HTMLFile';
      F_Report.TextFileName := F_Directory + '\attach\temp.htm';
      F_Report.ShowPrintDialog := false;
      F_Report.Print;

      // gui mail di
      CreateRecipientList(recipient);
      SendMailTo(recipient);
      if DeleteMailContent=false then
      begin
        dxLog.Lines.Add('Can not delete temporary file. This error may be dangerous. Sending process stop !');
        Break;
      end;
    end;
    dxBar.StepIt;
  end; //end_for
  F_MasterDataset.EnableControls;
  dxLog.Lines.Add('*** Finish process at : ' + TimeToStr(Now) + ' *** ');
  recipient.Free;
end;

procedure TframeSendMail.acSendMailExecute(Sender: TObject);
begin
  SendMail(F_DBGrid);
end;

procedure TframeSendMail.acDesignTemplateExecute(Sender: TObject);
begin
  if dmMain.DefOnPrepareReport(F_Directory, F_Template_FileName, F_Report) =
    false then
    exit;
//  dmMain.DefOnBeforePrint(false, DecisionDM.qryDecisions, self.Owner);
  dmMain.DefOnBeforePrint(false, dmmain.qryOrgInfo, self.Owner);
  F_Design.ShowModal;
end;

end.

