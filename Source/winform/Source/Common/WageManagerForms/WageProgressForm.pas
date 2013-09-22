unit WageProgressForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,MainDM,
  dxLayoutControl, cxControls, ActnList, ElBtnCtl, ElPopBtn, StdCtrls,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, ElACtrls,
  dxfProgressBar, ElBiProgr, DB, dxmdaset, dxTL, dxDBCtrl, dxDBGrid, ShellAPI,
  ElEdits, ElBtnEdit, ElMemoCombo;

type
  TfrmWageProgress = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    elpbHuy: TElPopupButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    elpbDong: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    elpbTinhLuong: TElBiProgressBar;
    dxLayoutControl1Item4: TdxLayoutItem;
    elpbXemChiTiet: TElPopupButton;
    mcWageProgress: TElMemoCombo;
    dxLayoutControl1Item5: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure elpbXemChiTietClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InsertLine(strLine :WideString);
    procedure SetNhanVien(strLine :WideString);
    procedure ProgressFinish();
  end;

var
  frmWageProgress: TfrmWageProgress;

implementation

{$R *.dfm}
procedure TfrmWageProgress.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if elpbDong.Enabled = false then
  begin
    //if ShowMessageUnicode(4) <> mrYes then
    begin
      Abort;
      Exit;
    end

  end;
end;

procedure TfrmWageProgress.InsertLine(strLine :WideString);
begin
  if mcWageProgress.LinesCount > 0 then
    mcWageProgress.Lines.Insert(1,strLine)
  else
    mcWageProgress.Lines.Insert(0,strLine);
  elpbTinhLuong.LightValue := elpbTinhLuong.LightValue mod elpbTinhLuong.Scale + 5;
  elpbTinhLuong.DarkValue := elpbTinhLuong.DarkValue mod elpbTinhLuong.Scale + 5;
end;

procedure TfrmWageProgress.SetNhanVien(strLine :WideString);
begin
  sbMain.Panels[2].Text := strLine;
end;

procedure TfrmWageProgress.ProgressFinish();
begin
  elpbHuy.Enabled := false;
  elpbDong.Enabled := true;
  elpbXemChiTiet.Enabled := true;
  elpbTinhLuong.LightValue := 0;
  elpbTinhLuong.DarkValue := 0;
end;

procedure TfrmWageProgress.FormCreate(Sender: TObject);
begin
  inherited;
  mcWageProgress.Lines.Clear;
  elpbHuy.Enabled := true;
  elpbDong.Enabled := false;
  elpbXemChiTiet.Enabled := false;
end;

procedure TfrmWageProgress.elpbXemChiTietClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)
    + 'log_data.txt'), nil, nil, SW_SHOWNORMAL);
end;

end.
