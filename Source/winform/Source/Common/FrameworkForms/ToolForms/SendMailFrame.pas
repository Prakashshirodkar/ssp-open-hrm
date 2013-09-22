unit SendMailFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, ActnList, ElXPThemedControl,
  ElBtnCtl, ElPopBtn, dxCntner, dxEditor, dxExEdtr, dxEdLib, DB, dxmdaset,
  IBODataset, ppDB, ppDBPipe, ppRelatv, ppProd, ppClass, ppReport, ppComm,
  ppEndUsr, dxTL, dxDBCtrl, dxDBGrid, sspSendMail, WSDLIntf, ElEdits,
  ElBtnEdit, ElMemoCombo, dxfProgressBar, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent, IdMessage,
  OleCtrls, SHDocVw, ActiveX, MSHTML, inifiles, ElPgCtl, StdCtrls, ComCtrls;

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
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxSubject: TdxEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLog: TElMemoCombo;
    dxBar: TdxfProgressBar;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxSenderName: TdxEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxSender: TdxHyperLinkEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    MailMessage: TIdMessage;
    SMTP: TIdSMTP;
    AttachmentDialog: TOpenDialog;
    dxEdit_SMTPServer: TdxEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    ElPageControl_main: TElPageControl;
    dxLayoutControl1Item9: TdxLayoutItem;
    ElTabSheet_sendStatus: TElTabSheet;
    ElTabSheet_Compose: TElTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxMailBody: TWebBrowser;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxEdit_HTML: TdxEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    acHTMLBrowse: TAction;
    acLoadHTML: TAction;
    procedure dxSelectTemplateChange(Sender: TObject);
    procedure dxSelectTemplateButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure acSendMailExecute(Sender: TObject);
    procedure acDesignTemplateExecute(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure dxMailBodyDocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure acHTMLBrowseExecute(Sender: TObject);
    procedure acLoadHTMLExecute(Sender: TObject);
    procedure dxLayoutControl1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxLayoutControl1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    is_Loaded : boolean;
    SMTP_STATUS:string;
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

    procedure OpenFile(var buffer: string);
    procedure GetSettings;
    procedure SaveSettings;

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

uses MainDM;

{$R *.dfm}

procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   //WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms) ;
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
   
end;

procedure WBSaveHTML(WebBrowser: TWebBrowser; var HTMLCode: string) ;
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   //WebBrowser.Navigate('about:blank') ;
//   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
//    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         (WebBrowser.Document as IPersistStreamInit).Save(TStreamAdapter.Create(ms), true) ;
         ms.Seek(0, 0) ;
         sl.LoadFromStream(ms) ;
         HTMLCode := sl.Text;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;

procedure Doc2HTML(WebBrowser: TWebBrowser; var HTMLCode: string);
var
    iall : IHTMLElement;
begin
   if Assigned(WebBrowser.Document) then
   begin
     iall := (WebBrowser.Document AS IHTMLDocument2).body;

     while iall.parentElement <> nil do
     begin
       iall := iall.parentElement;
     end;
     HTMLCode := iall.outerHTML;
   end;
end;

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
  GetSettings;
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
    lTextPart: TIdText;
    lTextPart2: TIdText;
    lImagePart: TIdAttachment;
    lImagePart2: TIdAttachment;
    buffer : string;
    SomeTxtFile : TextFile;
    str : string;
    i : integer;
    Attachments : TStrings;
  begin

    try
      //mail header
 {     F_MailAPI.Subject := utf8Encode(dxSubject.Text);
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
 }
      Attachments := TStringList.Create;

      //setup SMTP
      SMTP.Host := dxEdit_SMTPServer.Text;
      SMTP.Port := 25;

      //setup mail message
      MailMessage.From.Address := dxSender.Text;
      MailMessage.From.Name := Utf8Encode(dxSenderName.Text);
      MailMessage.Recipients.EMailAddresses := recipient.Text;

      MailMessage.Subject := utf8Encode(dxSubject.Text);
      MailMessage.Body.Clear;

      if FindFirst(F_Directory + '\attach\*.*', faHidden + faSysFile + faVolumeID
        +
        faDirectory + faArchive + faAnyFile, sr) = 0 then
      begin
        repeat
          //if (sr.Name <> '.') and (sr.Name <> '..') then
          //  F_MailAPI.Attachments.Add(F_Directory + '\attach\' + sr.Name);
        until FindNext(sr) <> 0;
        FindClose(sr);
      end;

      {if FileExists(F_Directory + '\attach\' + sr.Name) then
      begin
        AssignFile(SomeTxtFile, F_Directory + '\attach\' + sr.Name) ;
        Reset(SomeTxtFile) ;
        while not EOF(SomeTxtFile) do
        begin
          ReadLn(SomeTxtFile, str) ;
          buffer := buffer + str;
        end;
        CloseFile(SomeTxtFile) ;
      end;}


      WBSaveHTML(dxMailBody, buffer);
      //Doc2HTML(dxMailBody, buffer);
      //MailMessage.ContentType := 'multipart/related';
      lTextPart := TIdText.Create(MailMessage.MessageParts);
      lTextPart.ContentType := 'text/plain';
      lTextPart := TIdText.Create(MailMessage.MessageParts);
      lTextPart.Body.Text := (buffer);
      lTextPart.ContentType := 'text/html';
      
      //lTextPart2 := TIdText.Create(MailMessage.MessageParts);
      //lTextPart2.ContentType := 'image/jpg';
      

{      lImagePart := TIdAttachment.Create(MailMessage.MessageParts,
                         F_Directory + '\attach\html\img_0060.jpg');
      lImagePart.ContentType := 'image/jpg';    }
     // lImagePart.Headers.Add('Content-ID: <'+'hinhanh'+'>');
      //lImagePart.FileIsTempFile := true;
      //lImagePart.ContentDisposition := 'attachment';
{      lImagePart.ExtraHeaders.Values['Content-ID'] := '<'+'hinhanh'+'>';}
      //lImagePart.DisplayName := 'img_0060.jpg';


      //ShowMessage(lImagePart.Headers.Text);

// bo sung
      if FileExists(F_Directory + '\attach\' + sr.Name) then
         TIdAttachment.Create(MailMessage.MessageParts, F_Directory + '\attach\' + sr.Name);

 {     if FindFirst(F_Directory + '\attach\*.jpg', faHidden + faSysFile + faVolumeID
        +
        faDirectory + faArchive + faAnyFile, sr) = 0 then
      begin
        repeat
          if (sr.Name <> '.') and (sr.Name <> '..') then
            Attachments.Add(F_Directory + '\attach\' + sr.Name);
        until FindNext(sr) <> 0;
        FindClose(sr);
      end;
      for i:= 0 to Attachments.Count - 1 do
      begin
        lImagePart := TIdAttachment.Create(MailMessage.MessageParts, Attachments.Strings[i]);
        lImagePart.ContentType := 'image/jpg';
        //lImagePart.Headers.Add('Content-ID: <'+sr.Name+'>');
      end;
}

      {for i:= 0 to F_MailAPI.Attachments.Count - 1 do
        if FileExists(F_MailAPI.Attachments.Strings[i]) then
          TIdAttachment.Create(MailMessage.MessageParts, F_MailAPI.Attachments.Strings[i]);
      }//send mail
      try
        try
          SMTP.Connect(30000);
          SMTP.Send(MailMessage);
          
          //dxLog.Lines.Insert(0, '****** Successful *******');
        except on E:Exception do
          dxLog.Lines.Insert(0, 'ERROR: ' + E.Message);
        end;
      finally
        if SMTP.Connected then SMTP.Disconnect;
      end;
      Attachments.Free;
      lImagePart.Free;
      lTextPart.Free;
      MailMessage.MessageParts.Clear;
      //////////

{      if F_MailAPI.Send then
        dxLog.Lines.Add('+ Sending mail to ' + F_MailAPI.Recipients.Text +
          ' is successfully...')
      else
        dxLog.Lines.Add('- Failed to send mail to ' + F_MailAPI.Recipients.Text
          +
          ' ...');
}    except
      // xu li khi gui mail khong thanh cong
      // tao form hien thi ket qua gui mail
      dxLog.Lines.Add('- Failed to send mail to ' + recipient.Text +
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
  ElPageControl_main.ActivePage := ElTabSheet_sendStatus;
  SendMail(F_DBGrid);
  SaveSettings;
end;

procedure TframeSendMail.acDesignTemplateExecute(Sender: TObject);
begin
  if dmMain.DefOnPrepareReport(F_Directory, F_Template_FileName, F_Report) =
    false then
    exit;
  dmMain.DefOnBeforePrint(false, dmmain.qryOrgInfo, self.Owner);
  F_Design.ShowModal;
end;

procedure TframeSendMail.OpenFile(var buffer: string);
var
  SomeTxtFile : TextFile;
  str : string;
begin
  AssignFile(SomeTxtFile, dxEdit_HTML.Text) ;
  Reset(SomeTxtFile) ;
  while not EOF(SomeTxtFile) do
  begin
   ReadLn(SomeTxtFile, str) ;
   //ShowMessage(str) ;
   buffer := buffer + str;
  end;
  CloseFile(SomeTxtFile) ;
end;

procedure TframeSendMail.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
  //((Sender as TWebBrowser).Document as IHTMLDocument2).designMode := 'on';
end;



procedure TframeSendMail.GetSettings;
var
  ini : TIniFile;
  str :string;
begin
 { str :=
  '<html> '+
  '<head> '+
  '<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"> '+
  '</head> '+
  '<i><font face="Arial" size="2">[N&#7897;i dung Email] </font></i> '+
  '<body> '+
  '</body> '+
  '</html>';

  WBLoadHTML(dxMailBody, str);  }
//  dxMailBody.Navigate('about:blank');
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    dxEdit_SMTPServer.Text := ini.ReadString('SMTP','Host','');

    dxSender.Text := ini.ReadString('MAIL','From','');
    dxSenderName.Text := ini.ReadString('MAIL','SenderName','');
    dxEdit_HTML.text:= ini.ReadString('BODY','HTML_FILE','');
  finally
    ini.Free;
  end;
  if FileExists(dxEdit_HTML.text) then
    dxMailBody.Navigate(dxEdit_HTML.text);

//  if dxEdit_HTML.text <> '' then
//    acLoadHTML.Execute;
    
end; (* GetSettings *)

procedure TframeSendMail.SaveSettings;
var
  ini : TIniFile;
begin
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    ini.WriteString('SMTP','Host',dxEdit_SMTPServer.Text);

    ini.WriteString('MAIL','From',dxSender.Text);
    ini.WriteString('MAIL','SenderName',dxSenderName.Text);
    ini.WriteString('BODY','HTML_FILE',dxEdit_HTML.Text);
  finally
    ini.Free;
  end;
end; (* SaveSettings *)

procedure TframeSendMail.SMTPStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
  if SMTP_STATUS <> AStatusText then
  if AStatusText = 'Disconnecting.' then
  dxLog.Lines.Insert(0,'Status: ' + 'Completed.')
  else
  dxLog.Lines.Insert(0,'Status: ' + AStatusText);
  SMTP_STATUS := AStatusText;
end;

procedure TframeSendMail.dxMailBodyDocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
//  ((Sender as TWebBrowser).Document as IHTMLDocument2).designMode := 'on';
end;

procedure TframeSendMail.acHTMLBrowseExecute(Sender: TObject);
var Buffer :string;
begin
  ElPageControl_main.ActivePage := ElTabSheet_Compose;
  AttachmentDialog.Filter := 'HTML file | *.htm;*.html';
  if AttachmentDialog.Execute then
    dxEdit_HTML.Text := AttachmentDialog.FileName;
  if FileExists(dxEdit_HTML.Text) then
  begin
    OpenFile(buffer);
    //RichEdit1.text := buffer;
    //WBLoadHTML(dxMailBody,buffer);
    dxMailBody.Navigate(dxEdit_HTML.Text);
    //Doc2HTML;
  end;
end;

procedure TframeSendMail.acLoadHTMLExecute(Sender: TObject);
var Buffer :string;
begin
  
  if FileExists(dxEdit_HTML.Text) then
  begin
    OpenFile(buffer);
    //RichEdit1.text := buffer;
    WBLoadHTML(dxMailBody,buffer);
    //Doc2HTML;
  end;
end;

procedure TframeSendMail.dxLayoutControl1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//
end;

procedure TframeSendMail.dxLayoutControl1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//
end;

end.

