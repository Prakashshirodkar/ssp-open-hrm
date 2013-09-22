unit Luong_Thread;

interface

uses
  Classes,SysUtils;

type
  TTinhluong = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses Luong_TinhluongForm;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Tinhluong.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ Tinhluong }

procedure TTinhluong.Execute;
var i:integer;
begin
  FreeOnTerminate:=true;
  while true do
  begin
    if frmLuong_Tinhluong.bar.Position>=frmLuong_Tinhluong.bar.Max then
      frmLuong_Tinhluong.bar.Position:=0
    else
      frmLuong_Tinhluong.bar.StepIt;
    Sleep(100);  
  end;
end;

end.
