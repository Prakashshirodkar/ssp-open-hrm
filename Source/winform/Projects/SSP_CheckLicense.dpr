program SSP_CheckLicense;

uses
  Forms,
  CheckLicenseForm in '..\Source\Common\FrameworkForms\SystemForms\CheckLicenseForm.pas' {frmCheckLicense};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCheckLicense, frmCheckLicense);
  Application.Run;
end.
