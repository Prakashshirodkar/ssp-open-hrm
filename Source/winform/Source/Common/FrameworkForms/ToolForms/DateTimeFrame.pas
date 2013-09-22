unit DateTimeFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, dxCntner, dxEditor, dxExEdtr,
  dxEdLib;

type
  TframeDateTime = class(TFrame)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxSelectPeriod: TdxImageEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxGroupSelectPeriod: TdxLayoutGroup;
    dxToDate: TdxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxFromDate: TdxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure FrameConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure dxSelectPeriodChange(Sender: TObject);
  private
    { Private declarations }
    IsInitData: boolean;
  public
    { Public declarations }
    procedure InitViewData;
    function GetBeginDate:TDate;
    function GetEndDate:TDate;
    procedure SetPeriod(text:string);
  end;

implementation

uses MainDM, DateUtils;

{$R *.dfm}
procedure TframeDateTime.SetPeriod(text:string);
begin
  dxSelectPeriod.Text:=text;
end;
function TframeDateTime.GetBeginDate:TDate;
begin
  result:=dxFromDate.Date;
end;
function TframeDateTime.GetEndDate:TDate;
begin
  result:=dxToDate.Date;
end;
procedure TframeDateTime.InitViewData;
begin
  dxSelectPeriod.Values.Add('HOM_NAY');
  dxSelectPeriod.Values.Add('HOM_QUA');
  dxSelectPeriod.Values.Add('NGAY_MAI');
  dxSelectPeriod.Values.Add('TUAN_NAY');
  dxSelectPeriod.Values.Add('TUAN_TRUOC');
  dxSelectPeriod.Values.Add('TUAN_TOI');
  dxSelectPeriod.Values.Add('THANG_NAY');
  dxSelectPeriod.Values.Add('THANG_TRUOC');
  dxSelectPeriod.Values.Add('THANG_TOI');
  dxSelectPeriod.Values.Add('QUY_NAY');
  dxSelectPeriod.Values.Add('QUY_TRUOC');
  dxSelectPeriod.Values.Add('QUY_TOI');
  dxSelectPeriod.Values.Add('NAM_NAY');
  dxSelectPeriod.Values.Add('NAM_TRUOC');
  dxSelectPeriod.Values.Add('NAM_TOI');
  dxSelectPeriod.Values.Add('KHAC');

  if sysConfig.Language<>2 then
  begin
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Hôm nay'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Hôm qua'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Ngày mai'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Tuần này'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Tuần trước'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Tuần tới'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Tháng này'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Tháng trước'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Tháng tới'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Quý này'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Quý trước'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Quý tới'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Năm nay'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Năm trước'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Năm tới'));
  dxSelectPeriod.Descriptions.Add(Utf8Decode('Thời gian khác'));
  end
  else
  begin
  dxSelectPeriod.Descriptions.Add('Today');
  dxSelectPeriod.Descriptions.Add('Yesterday');
  dxSelectPeriod.Descriptions.Add('Tomorrow');
  dxSelectPeriod.Descriptions.Add('This week');
  dxSelectPeriod.Descriptions.Add('Previous week');
  dxSelectPeriod.Descriptions.Add('Nex week');
  dxSelectPeriod.Descriptions.Add('This month');
  dxSelectPeriod.Descriptions.Add('Previous month');
  dxSelectPeriod.Descriptions.Add('Next month');
  dxSelectPeriod.Descriptions.Add('This quarter');
  dxSelectPeriod.Descriptions.Add('Previous quarter');
  dxSelectPeriod.Descriptions.Add('Next quarter');
  dxSelectPeriod.Descriptions.Add('This year');
  dxSelectPeriod.Descriptions.Add('Previous year');
  dxSelectPeriod.Descriptions.Add('Next year');
  dxSelectPeriod.Descriptions.Add('Others');
  end

end;
procedure TframeDateTime.FrameConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  MinHeight := 29;
end;

procedure TframeDateTime.dxSelectPeriodChange(Sender: TObject);
var current_month,current_year,
    next_month,prev_month,
    next_year,prev_year,
    current_quarter,next_quarter,prev_quarter,
    current_quarter_year,next_quarter_year,prev_quarter_year:integer;
begin
  current_month:=MonthOf(Today);
  current_year:=YearOf(Today);
  current_quarter:=(current_month-1)div 3+1;
  current_quarter_year:=current_year;
  if current_quarter=1 then
  begin
    prev_quarter:=4;
    prev_quarter_year:=current_quarter_year-1;
    next_quarter:=2;
    next_quarter_year:=current_quarter_year;
  end
  else
  if current_quarter=4 then
  begin
    prev_quarter:=3;
    prev_quarter_year:=current_quarter_year;
    next_quarter:=1;
    next_quarter_year:=current_quarter_year+1;
  end
  else
  begin
    prev_quarter:=current_quarter-1;
    prev_quarter_year:=current_quarter_year;
    next_quarter:=current_quarter+1;
    next_quarter_year:=current_quarter_year;
  end;

  if current_month=1 then
  begin
    next_month:=2;
    prev_month:=12;
    next_year:=current_year;
    prev_year:=current_year-1;
  end
  else
  if current_month=12 then
  begin
    next_month:=1;
    next_year:=current_year+1;
    prev_month:=11;
    prev_year:=current_month;
  end
  else
  begin
    next_month:=current_month+1;
    next_year:=current_year;
    prev_month:=current_month-1;
    prev_year:=current_year;
  end;

  if dxSelectPeriod.Text='HOM_NAY' then
  begin
    dxFromDate.Date:=Today;
    dxToDate.Date:=Today;
  end
  else
  if dxSelectPeriod.Text='HOM_QUA' then
  begin
    dxFromDate.Date:=Today-1;
    dxToDate.Date:=Today-1;
  end
  else
  if dxSelectPeriod.Text='NGAY_MAI' then
  begin
    dxFromDate.Date:=Today+1;
    dxToDate.Date:=Today+1;
  end
  else
  if dxSelectPeriod.Text='TUAN_NAY' then
  begin
    dxFromDate.Date:=StartOfTheWeek(Today);
    dxToDate.Date:=EndOfTheWeek(Today);
  end
  else
  if dxSelectPeriod.Text='TUAN_TRUOC' then
  begin
    dxFromDate.Date:=StartOfTheWeek(Today-7);
    dxToDate.Date:=EndOfTheWeek(Today-7);
  end
  else
  if dxSelectPeriod.Text='TUAN_TOI' then
  begin
    dxFromDate.Date:=StartOfTheWeek(Today+7);
    dxToDate.Date:=EndOfTheWeek(Today+7);
  end
  else
  if dxSelectPeriod.Text='THANG_NAY' then
  begin
    dxFromDate.Date:=StartOfTheMonth(Today);
    dxToDate.Date:=EndOfTheMonth(Today);
  end
  else
  if dxSelectPeriod.Text='THANG_TRUOC' then
  begin
    dxFromDate.Date:=StartOfAMonth(prev_year,prev_month);
    dxToDate.Date:=EndOfAMonth(prev_year,prev_month);
  end
  else
  if dxSelectPeriod.Text='THANG_TOI' then
  begin
    dxFromDate.Date:=StartOfAMonth(next_year,next_month);
    dxToDate.Date:=EndOfAMonth(next_year,next_month);
  end
  else
  if dxSelectPeriod.Text='NAM_NAY' then
  begin
    dxFromDate.Date:=StartOfAYear(current_year);
    dxToDate.Date:=EndOfAYear(current_year);
  end
  else
    if dxSelectPeriod.Text='NAM_TRUOC' then
  begin
    dxFromDate.Date:=StartOfAYear(current_year-1);
    dxToDate.Date:=EndOfAYear(current_year-1);
  end
  else
  if dxSelectPeriod.Text='NAM_TOI' then
  begin
    dxFromDate.Date:=StartOfAYear(current_year+1);
    dxToDate.Date:=EndOfAYear(current_year+1);
  end
  else
  if dxSelectPeriod.Text='QUY_NAY' then
  begin
    dxFromDate.Date:=StartOfAMonth(current_year,(current_quarter-1)*3+1);
    dxToDate.Date:=EndOfAMonth(current_year,current_quarter*3);
  end
  else
  if dxSelectPeriod.Text='QUY_TRUOC' then
  begin
    dxFromDate.Date:=StartOfAMonth(prev_quarter_year,(prev_quarter-1)*3+1);
    dxToDate.Date:=EndOfAMonth(prev_year,prev_quarter*3);
  end
  else
  if dxSelectPeriod.Text='QUY_TOI' then
  begin
    dxFromDate.Date:=StartOfAMonth(next_quarter_year,(next_quarter-1)*3+1);
    dxToDate.Date:=EndOfAMonth(next_year,next_quarter*3);
  end;

  dxToDate.Date:=DateOf(dxToDate.Date);

end;

end.

