program SSPEncrypt;

uses
  Forms,
  FormMain in 'FormMain.pas' {frmMain},
  SimpleSecurityLibrary in 'SimpleSecurityLibrary.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
