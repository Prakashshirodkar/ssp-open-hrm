unit WageBookForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  ElBtnCtl, ElPopBtn, dxTL, dxDBCtrl, dxDBGrid, DB, dxmdaset, IBODataset,
  ActnList, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppTypes, StdCtrls, ElCLabel, ElLabel, ExtCtrls, ElPanel, ShellAPI,
  ImgList, ElPgCtl, SendMailFrame;

type
  TfrmWageBook = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxInMonth: TdxImageEdit;
    dxlcMonth: TdxLayoutItem;
    dxInYear: TdxSpinEdit;
    dxlcYear: TdxLayoutItem;
    dxInPeriod: TdxSpinEdit;
    dxlcPeriod: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxSelectDept: TdxPopupEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    ElPopupButton49: TElPopupButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    ElPopupButton50: TElPopupButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    ElPopupButton51: TElPopupButton;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxSelectTemplate: TdxPopupEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    gridWageBook: TdxDBGrid;
    memWageBook: TdxMemData;
    dsWageBook: TDataSource;
    qryWageBook: TIBOQuery;
    ActionList1: TActionList;
    acXemBangluong: TAction;
    acBack: TAction;
    acNext: TAction;
    qryFieldList: TIBOQuery;
    memWageBookEMPLOYEE_NO: TWideStringField;
    memWageBookFULL_NAME: TWideStringField;
    memWageBookDEPT_NAME: TWideStringField;
    memWageBookTITLE_NAME: TWideStringField;
    gridWageBookEMPLOYEE_NO: TdxDBGridColumn;
    gridWageBookFULL_NAME: TdxDBGridColumn;
    gridWageBookDEPT_NAME: TdxDBGridColumn;
    gridWageBookTITLE_NAME: TdxDBGridColumn;
    qryFieldListWAGE_FORMULAR: TWideStringField;
    qryFieldListFORMULAR_NAME: TWideStringField;
    qryWageBookEMPLOYEE_NO: TWideStringField;
    qryWageBookFULL_NAME: TWideStringField;
    qryWageBookDEPT_NAME: TWideStringField;
    qryWageBookTITLE_NAME: TWideStringField;
    qryWageBookWAGE_FORMULAR: TWideStringField;
    qryWageBookWAGE_VALUE: TIBOFloatField;
    qryWageBookWAGE_FLAG: TSmallintField;
    chkMoreOption: TdxCheckEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxgroupMoreOption: TdxLayoutGroup;
    dxPositiveColor: TdxButtonEdit;
    adsad: TdxLayoutItem;
    dxNegativeColor: TdxButtonEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    ColorDialog1: TColorDialog;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    acNhatky: TAction;
    acPreview: TAction;
    rpWageBook: TppReport;
    dsnWageBook: TppDesigner;
    ppBangluong: TppDBPipeline;
    acPrint: TAction;
    acDesign: TAction;
    lblListCaption: TElLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    ElPopupButton4: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    acXemLog: TAction;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxTempColor: TdxButtonEdit;
    dxViewChild: TdxCheckEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    qryWageBookWAGE_TEXT_VALUE: TWideStringField;
    qryFieldListRESULT_TYPE: TIntegerField;
    mainPage: TElPageControl;
    dxLayoutControl1Item14: TdxLayoutItem;
    tabData: TElTabSheet;
    tabSendMail: TElTabSheet;
    imgList: TImageList;
    frameSendMail1: TframeSendMail;
    mailReport: TppReport;
    mailDesign: TppDesigner;
    mainPipeline: TppDBPipeline;
    memWageBookEMAIL: TWideStringField;
    gridWageBookEMAIL: TdxDBGridColumn;
    qryWageBookEMAIL: TWideStringField;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxSelectMethod: TdxPopupEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    qryWageMethod: TIBOQuery;
    qryWageMethodMETHOD_NO: TWideStringField;
    qryWageMethodMETHOD_NAME: TWideStringField;
    qryWageMethodMETHOD_NOTE: TWideStringField;
    dsWageMethod: TDataSource;
    dxlcMethod: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    ElPopupButton7: TElPopupButton;
    ElPopupButton8: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxlcMethodItem3: TdxLayoutItem;
    dxlcMethodItem4: TdxLayoutItem;
    dxDBGrid1METHOD_NO: TdxDBGridColumn;
    dxDBGrid1METHOD_NAME: TdxDBGridColumn;
    dsThongtinTochuc: TDataSource;
    ppThongtinTochuc: TppDBPipeline;
    ppThongtinTochucppField1: TppField;
    ppThongtinTochucppField2: TppField;
    ppThongtinTochucppField3: TppField;
    ppThongtinTochucppField4: TppField;
    ppThongtinTochucppField5: TppField;
    ppThongtinTochucppField6: TppField;
    ppThongtinTochucppField7: TppField;
    ppThongtinTochucppField8: TppField;
    ppThongtinTochucppField9: TppField;
    ppThongtinTochucppField10: TppField;
    ppThongtinTochucppField11: TppField;
    ppThongtinTochucppField12: TppField;
    ppThongtinTochucppField13: TppField;
    ppThongtinTochucppField14: TppField;
    ppThongtinTochucppField15: TppField;
    ppThongtinTochucppField16: TppField;
    ppThongtinTochucppField17: TppField;
    ppThongtinTochucppField18: TppField;
    ppThongtinTochucppField19: TppField;
    ppThongtinTochucppField20: TppField;
    ppThongtinTochucppField21: TppField;
    ppThongtinTochucppField22: TppField;
    ppThongtinTochucppField23: TppField;
    ppThongtinTochucppField24: TppField;
    ppThongtinTochucppField25: TppField;
    ppThongtinTochucppField26: TppField;
    ppThongtinTochucppField27: TppField;
    procedure acXemBangluongExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    constructor Create(AOwner: TComponent; Dept_no, Dept_name: WideString;
      At_Month: Integer = 0; At_Year: Integer = 0; At_Period: Integer = 0;
        ViewAll: boolean = false);
    procedure dxSelectDeptInitPopup(Sender: TObject);
    procedure dxSelectDeptCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectDeptChange(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure gridWageBookCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxPositiveColorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxNegativeColorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure chkMoreOptionChange(Sender: TObject);
    procedure acNhatkyExecute(Sender: TObject);
    function PrepareReport: boolean;
    procedure acPreviewExecute(Sender: TObject);
    procedure dxSelectTemplateInitPopup(Sender: TObject);
    procedure dxSelectTemplateCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectTemplateChange(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure DefOnBeforePrint(isprinted: boolean; qryReport: TdxMemData);
    procedure acXemLogExecute(Sender: TObject);
    procedure dxTempColorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure frameSendMail1ElPopupButton1Click(Sender: TObject);
    procedure dxSelectMethodInitPopup(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxSelectMethodCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure dxSelectMethodChange(Sender: TObject);
    procedure frameSendMail1ElPopupButton2Click(Sender: TObject);
  private
    { Private declarations }
    F_METHOD_NO,F_DEPT_NO, F_DEPT_NAME: WideString;
    F_TEMPLATE_PATH: string;
    F_VIEWALL: boolean;
    F_AT_MONTH, F_AT_YEAR, F_AT_PERIOD: integer;
  public
    { Public declarations }
  end;

var
  frmWageBook: TfrmWageBook;

implementation

uses MainDM, SSP_Library, DateUtils, PopupMainForm, MainUnit,
  WageDiaryForm, ppCtrls;

{$R *.dfm}

constructor TfrmWageBook.Create(AOwner: TComponent; Dept_No, Dept_name:
  WideString; At_Month, At_Year, At_Period: Integer; ViewAll: boolean);
begin
  F_DEPT_NO := Dept_no;
  F_DEPT_NAME := Dept_name;
  F_AT_MONTH := At_Month;
  F_AT_YEAR := At_Year;
  F_AT_PERIOD := At_Period;
  F_VIEWALL := ViewAll;
  inherited Create(AOwner);
end;

procedure TfrmWageBook.acXemBangluongExecute(Sender: TObject);
var
  f: TField;
  col: TdxDBTreeListColumn;
  i: integer;
  EMPLOYEE_NO: WideString;
  CONTINUE: boolean;

begin
  inherited;
  if Length(F_DEPT_NO) = 0 then exit;
  Screen.Cursor := crSQLWait;

  if memWageBook.Active then
    memWageBook.Close;
  // doc du lieu
  if qryFieldList.Active then qryFieldList.Close;
  if dxViewChild.Checked then
    qryFieldList.ParamByName('VIEW_CHILD').Value := 1
  else
    qryFieldList.ParamByName('VIEW_CHILD').Value := 0;
  if Length(F_DEPT_NO) > 0 then
    qryFieldList.ParamByName('DEPT_NO').Value := F_DEPT_NO
  else
    qryFieldList.ParamByName('DEPT_NO').Clear;

  if Length(F_METHOD_NO) > 0 then
    qryFieldList.ParamByName('METHOD_NO').Value := F_METHOD_NO
  else
    qryFieldList.ParamByName('METHOD_NO').Clear;


  qryFieldList.ParamByName('PERIOD_ID').Value := 10 * (StrToInt(dxInMonth.Text)
    - 1 + 12 * dxInYear.IntValue)
    + dxInPeriod.IntValue;
  frmMain.SetStatusBarMsg(Utf8Decode('Khởi tạo bảng lương...'));
  qryFieldList.Open;
  if qryFieldList.IsEmpty = false then
  begin
    frmMain.SetStatusBarPrgDisplay(0, qryFieldList.RecordCount);
    gridWageBook.BeginUpdate;
    memWageBook.DisableControls;
    if gridWageBook.ColumnCount > 5 then
    begin
      for i := gridWageBook.ColumnCount - 1 downto 5 do
        gridWageBook.Columns[i].Free;
    end;
    if memWageBook.FieldCount > 6 then
    begin
      for i := memWageBook.FieldCount - 1 downto 6 do
        memWageBook.Fields[i].Free;
    end;
    // tao cac hang dau
    qryFieldList.First;
    while not qryFieldList.Eof do
    begin
      // =========tao field cho mem===========
      if qryFieldListRESULT_TYPE.IsNull or
        (qryFieldListRESULT_TYPE.Value = 0) then
      begin
        f := TFloatField.Create(memWageBook);
        f.Name := memWageBook.Name + qryFieldListWAGE_FORMULAR.AsString;
        f.FieldName := qryFieldListWAGE_FORMULAR.AsString;
        f.FieldKind := fkData;
        f.DataSet := memWageBook;
        f.SetFieldType(ftFloat);
        TFloatField(f).DisplayFormat := sysConfig.FloatFormat;
      end
      else
      begin
        f := TWideStringField.Create(memWageBook);
        f.Name := memWageBook.Name + qryFieldListWAGE_FORMULAR.AsString;
        f.FieldName := qryFieldListWAGE_FORMULAR.AsString;
        f.FieldKind := fkData;
        f.DataSet := memWageBook;
        TWideStringField(f).Size := 63;
        TWideStringField(f).DisplayWidth := 63;
        f.SetFieldType(ftWideString);
      end;

      col := gridWageBook.CreateColumn(TdxDBGridColumn);
      col.Name := gridWageBook.Name + f.FieldName;
      col.FieldName := f.FieldName;
      col.Width := 80;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := qryFieldListFORMULAR_NAME.Value;
      col.BandIndex := 1;

      if qryFieldListRESULT_TYPE.IsNull or
        (qryFieldListRESULT_TYPE.Value = 0) then
        col.SummaryFooterType := cstSum
      else
        col.SummaryFooterType := cstNone;

      f := TIntegerField.Create(memWageBook);
      f.Name := memWageBook.Name + qryFieldListWAGE_FORMULAR.AsString + '_FLAG';
      f.FieldName := qryFieldListWAGE_FORMULAR.AsString + '_FLAG';
      f.FieldKind := fkData;
      f.DataSet := memWageBook;
      f.SetFieldType(ftInteger);

      col := gridWageBook.CreateColumn(TdxDBGridColumn);
      col.Name := gridWageBook.Name + f.FieldName;
      col.FieldName := f.FieldName;
      col.Width := 20;
      col.HeaderAlignment := taCenter;
      col.DisableCustomizing := true;
      col.Visible := false;
      col.BandIndex := 1;

      qryFieldList.Next;
      frmMain.BarPrgStepIt;
    end;
    qryFieldList.Close;
    gridWageBook.EndUpdate;
    //==========tao data===========

    if qryWageBook.Active then qryWageBook.Close;
    qryWageBook.ParamByName('DEPT_NO').Value := F_DEPT_NO;
    qryWageBook.ParamByName('METHOD_NO').Value := F_METHOD_NO;

    if dxViewChild.Checked then
      qryWageBook.ParamByName('VIEW_CHILD').Value := 1
    else
      qryWageBook.ParamByName('VIEW_CHILD').Value := 0;
    qryWageBook.ParamByName('PERIOD_ID').Value := 10 * (StrToInt(dxInMonth.Text)
      - 1 + 12 * dxInYear.IntValue) + dxInPeriod.IntValue;
    frmMain.SetStatusBarMsg(Utf8Decode('Nạp dữ liệu bảng lương...'));
    qryWageBook.Open;

    if qryWageBook.IsEmpty = false then
    begin
      frmmain.SetStatusBarPrgDisplay(0, qryWageBook.RecordCount);
      memWageBook.Open;
      qryWageBook.First;

      EMPLOYEE_NO := qryWageBookEMPLOYEE_NO.Value;

      memWageBook.Append;
      memWageBookEMPLOYEE_NO.Value := qryWageBookEMPLOYEE_NO.Value;
      memWageBookFULL_NAME.Value := qryWageBookFULL_NAME.Value;
      memWageBookDEPT_NAME.Value := qryWageBookDEPT_NAME.Value;
      memWageBookTITLE_NAME.Value := qryWageBookTITLE_NAME.Value;
      memWageBookEMAIL.Value := qryWageBookEMAIL.Value;

      continue := qryWageBook.Eof;
      while not continue do
      begin
        if (EMPLOYEE_NO <> qryWageBookEMPLOYEE_NO.Value) or
          (continue) then
        begin
          if (memWageBook.State in [dsEdit, dsInsert]) then
            memWageBook.Post;
          if continue then
            Break
          else
            EMPLOYEE_NO := qryWageBookEMPLOYEE_NO.Value;

          memWageBook.Append;
          memWageBookEMPLOYEE_NO.Value := qryWageBookEMPLOYEE_NO.Value;
          memWageBookFULL_NAME.Value := qryWageBookFULL_NAME.Value;
          memWageBookDEPT_NAME.Value := qryWageBookDEPT_NAME.Value;
          memWageBookTITLE_NAME.Value := qryWageBookTITLE_NAME.Value;
          memWageBookEMAIL.Value := qryWageBookEMAIL.Value;
        end;

        if qryWageBookWAGE_TEXT_VALUE.IsNull then
        begin
          try
            memWageBook.FieldByName(qryWageBookWAGE_FORMULAR.AsString).Value
              := qryWageBookWAGE_VALUE.Value;
          except
            memWageBook.FieldByName(qryWageBookWAGE_FORMULAR.AsString).Clear;
          end
        end
        else
        begin
          try
            memWageBook.FieldByName(qryWageBookWAGE_FORMULAR.AsString).Value
              := qryWageBookWAGE_TEXT_VALUE.Value;
          except
            memWageBook.FieldByName(qryWageBookWAGE_FORMULAR.AsString).Clear;
          end;
        end;

        memWageBook.FieldByName(qryWageBookWAGE_FORMULAR.AsString +
          '_FLAG').Value
          := qryWageBookWAGE_FLAG.Value;

        qryWageBook.Next;
        continue := qryWageBook.Eof;
        frmMain.BarPrgStepIt;
      end;
    end;
    qryWageBook.Close;
    if memWageBook.State in [dsInsert, dsEdit] then
      memWageBook.Post;
    memWageBook.EnableControls;
  end;
  qryFieldList.Close;
  lblListCaption.Caption := WideUpperCase(fcMain.Texts[0].Caption + ' ' +
    dxlcMonth.Caption +
    ' ' + dxInMonth.Text + ' ' + dxlcYear.Caption + ' ' +
      IntToStr(dxInYear.IntValue) +
    ' ' + dxlcPeriod.Caption + ' ' + IntToStr(dxInPeriod.IntValue));
  frmMain.SetStatusBarMsg('');
  frameSendMail1.CreateMasterFromControl(gridWageBook, 'EMAIL');

  Screen.Cursor := crDefault;
end;

procedure TfrmWageBook.FormCreate(Sender: TObject);
begin
  InitMonthControl(dxInMonth);
  inherited;
  if Length(F_Dept_no) > 0 then
  begin
    dxSelectDept.Text := F_Dept_name;
  end;
  if F_At_Year > 0 then
    dxInYear.IntValue := F_At_Year
  else
    dxInYear.IntValue := YearOf(Now);
  if F_At_Month > 0 then
    dxInMonth.Text := IntToStr(F_At_Month)
  else
    dxInMonth.Text := IntToStr(MOnthOf(Now));
  if F_At_Period > 0 then
    dxInPeriod.IntValue := F_At_Period
  else
    dxInPeriod.IntValue := 1;
  dxViewChild.Checked := F_VIEWALL;

  frameSendMail1.InitData;
  frameSendMail1.RegisterReport(mailReport, mailDesign,
    ExtractFileDir(Application.ExeName) + '\Reports\MailTemplate\WageReport',
    'mail_WageReport.rtm');
  frameSendMail1.dxSelectTemplate.Text := 'mail_WageReport.rtm';
  mainPage.ActivePageIndex := 0;
  acXemBangluong.Execute;
end;

procedure TfrmWageBook.dxSelectDeptInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryDeptList.Open;
  InitPopupControl('dxlcDeptList', frmPopupMain, sender, 2);
  CustomExpand(frmPopupMain.dxtlDeptList);
end;

procedure TfrmWageBook.dxSelectDeptCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryDeptListDEPT_NAME.Value;
    F_DEPT_NO := frmPopupMain.qryDeptListDEPT_NO.Value;
  end;
  frmPopupMain.qryDeptList.Close;
end;

procedure TfrmWageBook.dxSelectDeptChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectDept.Text) = 0 then
    F_DEPT_NO := '';
end;

procedure TfrmWageBook.acBackExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '1' then
  begin
    dxInMonth.Text := '12';
    dxInYear.IntValue := dxInYear.IntValue - 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) - 1);
  acXemBangluong.Execute;
end;

procedure TfrmWageBook.acNextExecute(Sender: TObject);
begin
  inherited;
  if dxInMonth.Text = '12' then
  begin
    dxInMonth.Text := '1';
    dxInYear.IntValue := dxInYear.IntValue + 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) + 1);
  acXemBangluong.Execute;
end;

procedure TfrmWageBook.gridWageBookCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  type_index: integer;
begin
  inherited;
  try
    if (AColumn.Name <> 'gridWageBookEMPLOYEE_NO') and
      (AColumn.Name <> 'gridWageBookFULL_NAME') and
      (AColumn.Name <> 'gridWageBookDEPT_NAME') and
      (AColumn.Name <> 'gridWageBookTITLE_NAME') and
      (AColumn.Name <> 'gridWageBookEMAIL') then
    begin
      type_index := gridWageBook.ColumnByName(AColumn.Name + '_FLAG').Index;
      if ANode.Values[type_index] = 1 then
        AColor := dxPositiveColor.Color
      else
        if ANode.Values[type_index] = -1 then
        AColor := dxNegativeColor.Color
      else
        AColor := dxTempColor.Color;
    end;
  except
  end
end;

procedure TfrmWageBook.dxPositiveColorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := dxPositiveColor.Color;
  if ColorDialog1.Execute then
  begin
    dxPositiveColor.Color := ColorDialog1.Color;
    gridWageBook.Repaint;
  end;
end;

procedure TfrmWageBook.dxNegativeColorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := dxNegativeColor.Color;
  if ColorDialog1.Execute then
  begin
    dxNegativeColor.Color := ColorDialog1.Color;
    gridWageBook.Repaint;
  end;
end;

procedure TfrmWageBook.chkMoreOptionChange(Sender: TObject);
begin
  inherited;
  dxgroupMoreOption.Visible := chkMoreOption.Checked;
end;

procedure TfrmWageBook.acNhatkyExecute(Sender: TObject);
begin
  inherited;
  with TfrmWageDiary.Create(self, StrToInt(dxInMonth.Text), dxInYear.IntValue,
    dxInPeriod.IntValue) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

function TfrmWageBook.PrepareReport: boolean;
var
  pathName, pathDirectory: string;
begin
  try
    pathDirectory := ExtractFilePath(Application.ExeName) +
      'Reports\WageReport';
    case sysConfig.Language of
      0, 1:
        pathName := pathDirectory + '\Vn\' + F_TEMPLATE_PATH;
      2:
        pathName := pathDirectory + '\Eng\' + F_TEMPLATE_PATH;
    end;
    if (FileExists(pathName)) then
    begin
      rpWageBook.Template.FileName := pathName;
      rpWageBook.Template.Load;
    end
    else
    begin
      ShowMessageUnicode(24);
      Result := false;
      exit;
    end;
  except
    result := false;
    exit;
  end;
  result := true;
end;

procedure TfrmWageBook.acPreviewExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, memWageBook);
  rpWageBook.AllowPrintToFile := True;
  rpWageBook.DeviceType := dtScreen;
  rpWageBook.Print;
end;

procedure TfrmWageBook.dxSelectTemplateInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryReportTemplateList.ParamByname('TEMPLATE_TYPE').Value := 2;
    //Bang luong
  frmPopupMain.qryReportTemplateList.Open;
  InitPopupControl('dxlcReportTemplateList', frmPopupMain, sender, 2.5);
end;

procedure TfrmWageBook.dxSelectTemplateCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := frmPopupMain.qryReportTemplateListTEMPLATE_NAME.Value;
    F_TEMPLATE_PATH := frmPopupMain.qryReportTemplateListTEMPLATE_FILE.AsString;
  end;
  frmPopupMain.qryReportTemplateList.Close;
end;

procedure TfrmWageBook.dxSelectTemplateChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectTemplate.Text) = 0 then
    F_TEMPLATE_PATH := '';
end;

procedure TfrmWageBook.acPrintExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(true, memWageBook);
  rpWageBook.AllowPrintToFile := True;
  rpWageBook.DeviceType := dtPrinter;
  rpWageBook.Print;
end;

procedure TfrmWageBook.acDesignExecute(Sender: TObject);
begin
  inherited;
  if PrepareReport = false then exit;
  DefOnBeforePrint(false, memWageBook);
  dsnWageBook.ShowModal;
  rpWageBook.PrintToDevices;
end;

procedure TfrmWageBook.DefOnBeforePrint(isprinted: boolean; qryReport:
  TdxMemData);
var
  i: integer;
  compReport: TComponent;
  CompCap: WideString;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    compReport := Components[i];
    if (compReport is TppDBImage) then
    begin
      if (dmMain.qryThongTinDoanhNghiepIMG_TYPE.AsString = 'TJPEGImage') then
        (compReport as TppDBImage).GraphicType := 'JPEG'
      else
        if (dmMain.qryThongTinDoanhNghiepIMG_TYPE.AsString = 'TBitmap') then
        (compReport as TppDBImage).GraphicType := 'Bitmap';
      Continue;
    end;
    if not (compReport is TppLabel) then
      Continue;
    if (compReport as TppLabel).Height < 0.1 then
      (compReport as TppLabel).Height := 0.2;
    if isprinted = false then continue;
    CompCap := LowerCase(UTF8Encode((compReport as TppLabel).Caption));
    if (CompCap = 'lbl_param_month') then
      TppLabel(compReport).Caption := dxInMonth.Text
    else
      if (CompCap = 'lbl_param_year') then
      TppLabel(compReport).Caption := IntToStr(dxInYear.IntValue)
    else
      if (CompCap = 'lbl_param_period') then
      TppLabel(compReport).Caption := IntToStr(dxInPeriod.IntValue)
    else
      if (CompCap = 'lbl_param_dept_name') then
      TppLabel(compReport).Caption := dxSelectDept.Text
    else
      if (CompCap = 'lbl_param_dept_no') then
      TppLabel(compReport).Caption := F_DEPT_NO
    else
      if (CompCap = 'lbl_current_date') then
      TppLabel(compReport).Caption := DateToStr(Today)
    else
      if (CompCap = 'lbl_current_day') then
      TppLabel(compReport).Caption := IntToStr(DayOf(Today))
    else
      if (CompCap = 'lbl_current_month') then
      TppLabel(compReport).Caption := IntToStr(MonthOf(Today))
    else
      if (CompCap = 'lbl_current_year') then
      TppLabel(compReport).Caption := IntToStr(DayOf(Today))
  end;
end;

procedure TfrmWageBook.acXemLogExecute(Sender: TObject);
begin
  inherited;
  ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)
    + 'log_data.txt'), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmWageBook.dxTempColorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  ColorDialog1.Color := dxTempColor.Color;
  if ColorDialog1.Execute then
  begin
    dxTempColor.Color := ColorDialog1.Color;
    gridWageBook.Repaint;
  end;
end;

procedure TfrmWageBook.frameSendMail1ElPopupButton1Click(Sender: TObject);
begin
  inherited;
  gridWageBook.SelectAll;
  frameSendMail1.acSendMailExecute(Sender);
end;

procedure TfrmWageBook.dxSelectMethodInitPopup(Sender: TObject);
begin
  inherited;
  qryWageMethod.Open;
  InitPopupControl('dxlcMethod', self, sender, 2);
end;

procedure TfrmWageBook.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self,true,sender)
end;

procedure TfrmWageBook.dxSelectMethodCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  if Accept then
  begin
    Text := qryWageMethodMETHOD_NAME.Value;
    F_METHOD_NO := qryWageMethodMETHOD_NO.Value;
  end;
  qryWageMethod.Close;
end;

procedure TfrmWageBook.dxSelectMethodChange(Sender: TObject);
begin
  inherited;
  if Length(dxSelectMethod.Text) = 0 then
    F_METHOD_NO := '';
end;

procedure TfrmWageBook.frameSendMail1ElPopupButton2Click(Sender: TObject);
begin
  inherited;
  frameSendMail1.acDesignTemplateExecute(Sender);

end;

end.

