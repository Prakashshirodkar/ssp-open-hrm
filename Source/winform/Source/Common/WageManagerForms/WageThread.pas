unit WageThread;

interface

uses
  Classes,WageDataModule,Controls,Forms;

type
  TWageThread = class(TThread)
  constructor Create(CreateSuspended: Boolean);
  public
  procedure InitWageThread(User_name, Dept_No: variant; View_All,
      Emp_State, At_Month, At_Year, At_Period: integer; At_Date: TDate);
  private
    { Private declarations }
    varUser_name, varDept_No: variant;
    varView_All, varEmp_State, varAt_Month, varAt_Year, varAt_Period: integer;
    varAt_Date:TDate;
  protected
    procedure Execute; override;
  end;

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TWageThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TWageThread }

procedure TWageThread.InitWageThread(User_name, Dept_No: variant; View_All,
      Emp_State,At_Month, At_Year, At_Period: integer; At_Date: TDate);
begin
  varUser_name := User_name;
  varDept_No := Dept_No;
  varView_All := View_All;
  varEmp_State := Emp_State;
  varAt_Month := At_Month;
  varAt_Year := At_Year;
  varAt_Period := At_Period;
  varAt_Date := At_Date;
end;

constructor TWageThread.Create(CreateSuspended: Boolean);
begin
inherited Create(CreateSuspended);
  Priority := tpTimeCritical;
end;

procedure TWageThread.Execute;
begin
  { Place thread code here }
    WageDM.CalculatingProcess(varUser_name,varDept_No,varView_All,varEmp_State,
      varAt_Month,varAt_Year,varAt_Period,varAt_Date);
end;

end.
