unit WorkTimeDataModule;

interface

uses
  SysUtils, Classes,Controls, DB, IBODataset;

type
  TWorkTimeDM = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WorkTimeDM: TWorkTimeDM;

implementation

uses MainDM;

{$R *.dfm}

procedure TWorkTimeDM.DataModuleCreate(Sender: TObject);
begin
  ApplyOption(TControl(self));
end;

end.
