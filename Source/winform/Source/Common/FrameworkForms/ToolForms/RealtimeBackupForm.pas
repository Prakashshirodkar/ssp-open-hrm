unit RealtimeBackupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, DB, IBODataset,
  dxfProgressBar, ActnList, ElBtnCtl, ElPopBtn, dxLayoutControl, cxControls,
  IB_Components;

const
  MAX_RECORD_COUNT = 200000;
  MAX_COMMIT_WORK = 500;
type
  TfrmRealTimeBackup = class(TfrmBase)
    pgBar: TdxfProgressBar;
    ElPopupButton1: TElPopupButton;
    ActionList1: TActionList;
    acBackup: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    qryData: TIB_Cursor;
    procedure acBackupExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    F_ROOT_DIR: string;
    F_REAL_DIR:string;
    F_PREFIX: string;
    function ExtractDataIntoScripts(qrySelect: TIB_Cursor; TABLE_NAME: string):
      integer;
    function SaveToFile(var data: TStrings; root_dir: string; prefix: string; var
      file_index: integer): integer;
    procedure SendMessage(msg: WideString);
  public
    { Public declarations }

  end;

var
  frmRealTimeBackup: TfrmRealTimeBackup;

implementation

uses MainDM,DateUtils;

{$R *.dfm}

function TfrmRealTimeBackup.SaveToFile(var data: TStrings; root_dir: string;
  prefix:
  string; var file_index: integer): integer;
var
  file_name: string;
begin
  file_name := root_dir + '\' + prefix + IntToStr(file_index) + '.dbk';
  if FileExists(file_name) then
  begin
    Result := 1; //file exist
  end
  else
  begin
    data.Add('COMMIT WORK;');
    data.SaveToFile(file_name);
    data.Clear;
    data.Free;
    data := TStringList.Create;
    result := 0;
    inc(file_index);
  end
end;

function TfrmRealTimeBackup.ExtractDataIntoScripts(qrySelect: TIB_Cursor;
  TABLE_NAME: string): integer;
var
  Script, Insert_Phrase: string;
  Scripts: TStrings;
  i, real_count, record_count,commit_count, file_index: Integer;
begin
  if qrySelect.Active = false then
    qrySelect.Open;

  Scripts := TStringList.Create;
  try
    Insert_Phrase := 'INSERT INTO ' + TABLE_NAME + ' (';
    SendMessage('Initializing scripting...');
    for i := 0 to qrySelect.FieldCount - 1 do
    begin
      Insert_Phrase := Insert_Phrase + qrySelect.Fields[i].FieldName;
      if i <> (qrySelect.FieldCount - 1) then
        Insert_Phrase := Insert_Phrase + ', '#9;
    end;
    Insert_Phrase := Insert_Phrase + ') VALUES ('#9;
    record_count := 0;
    real_count := 0;
    commit_count:=0;
    file_index := 0;

    SendMessage('Counting number of record data ....');
    pgBar.Max := qrySelect.RecordCount;
    SendMessage('Extracting data ....');
    while not qrySelect.Eof do
    begin
      Script := Insert_Phrase;
      for i := 0 to qrySelect.FieldCount - 1 do
      begin
        if qrySelect.Fields[i].IsNull then
        begin
          Script := Script + 'NULL';
          if i <> (qrySelect.FieldCount - 1) then
            Script := Script + ', '#9;
        end
        else
        begin
          Script := Script +
            QuotedStr(qrySelect.Fields[i].AsString);
          if i <> (qrySelect.FieldCount - 1) then
            Script := Script + ', '#9;
        end;
      end;

      Script := Script + ') ;';
      Scripts.Add(Script);
      SendMessage('Extracting ' + IntToStr(real_count) + ' of ' + IntToStr(pgBar.Max)
        +
        ' record data...');
      Inc(record_count);
      Inc(real_count);
      Inc(commit_count);

      if record_count>=MAX_COMMIT_WORK then
      begin
         Scripts.Add('COMMIT WORK;');
         commit_count:=0;
      end;

      if record_count >= MAX_RECORD_COUNT then
      begin
        SendMessage('Saving extracted data into splitted backup file....');
        SaveToFile(Scripts, F_REAL_DIR, F_PREFIX, file_index);
        record_count := 0;
      end;

      pgBar.StepIt;
      qrySelect.Next;
    end;
  finally
    if record_count > 0 then
      SaveToFile(Scripts, F_REAL_DIR, F_PREFIX, file_index);
  end;
  result := 1;
end;

procedure TfrmRealTimeBackup.acBackupExecute(Sender: TObject);
begin
  inherited;

  F_REAL_DIR:=IntToStr(YearOf(Now))+IntToStr(MonthOf(Now))+IntToStr(DayOf(Now))+'_'+
       IntToStr(HourOf(Now))+IntToStr(MinuteOf(Now))+IntToStr(SecondOf(Now));

  F_REAL_DIR := F_ROOT_DIR+'\'+F_REAL_DIR;
  if DirectoryExists(F_REAL_DIR) then
  begin
    ShowMessage('Director '+F_REAL_DIR+' is exist ready. Please check your system time and try again');
    Exit;
  end;

  if CreateDir(F_REAL_DIR)=false then
  begin
    ShowMessage('Can not create directory '+F_REAL_DIR+' . Please check your system and try again');
    Exit;
  end;

  SendMessage('Opening data...');
  qryData.SQL.Text := 'SELECT * FROM HR_DEPARTMENT ';
  qryData.Prepare;
  qryData.Open;
  SendMessage('Opening data is successfull !');
  if ExtractDataIntoScripts(qryData, 'HR_DEPARTMENT') = 0 then
    ShowMessage('No data was found');
  qryData.Close;
  SendMessage('Backup data process is successfull !');
end;

procedure TfrmRealTimeBackup.SendMessage(msg: WideString);
begin
  sbMain.Panels[1].Text := msg;
  //  self.Repaint;
end;
procedure TfrmRealTimeBackup.FormCreate(Sender: TObject);
begin
  inherited;
  F_PREFIX:='SSP_BackupData_';
  F_ROOT_DIR:=ExtractFilePath(Application.ExeName)+'\Backup';
  if DirectoryExists(F_ROOT_DIR)=false then
    if CreateDir(F_ROOT_DIR)=false then
  begin
    ShowMessage('Can not create directory '+F_ROOT_DIR+'. Please check your system.');
    Close;
  end;

end;

end.

