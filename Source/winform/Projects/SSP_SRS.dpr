program SSP_SRS;

uses
  Forms,
  StringConst in '..\Source SRS\StringConst.pas',
  BaseFrm in '..\Source SRS\BaseFrm.pas' {frmBase},
  ChgNumToStr in '..\Source SRS\ChgNumToStr.pas',
  HintBoxDlg in '..\Source SRS\HintBoxDlg.pas' {frmHintBox},
  MainDM in '..\Source SRS\MainDM.pas' {dmMain: TDataModule},
  md5 in '..\Source SRS\md5.pas',
  MsgDlgForm in '..\Source SRS\MsgDlgForm.pas' {MsgDlgFrm},
  SSP_Library in '..\Source SRS\SSP_Library.pas',
  SSP_Menus in '..\Source SRS\SSP_Menus.pas',
  SSP_Script in '..\Source SRS\SSP_Script.pas',
  MainConfig in '..\Source SRS\MainConfig.pas' {frmMainConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SSP-SRS';
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMainConfig, frmMainConfig);
  Application.Run;
end.
