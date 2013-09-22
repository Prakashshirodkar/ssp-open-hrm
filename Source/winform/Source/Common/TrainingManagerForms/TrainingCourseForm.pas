unit TrainingCourseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, ImgList, ElPgCtl, DB,
  IBODataset, dxExEdtr, dxEdLib, dxDBELib, dxEditor, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxGrClEx;

type
  TfrmTrainingCourse = class(TfrmEditBase)
    pageMain: TElPageControl;
    dxlcMainItem2: TdxLayoutItem;
    ImageList1: TImageList;
    tabTrainingCourse: TElTabSheet;
    tabTrainingClass: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDBImageEdit1: TdxDBImageEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxDBMemo1: TdxDBMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxDBImageEdit2: TdxDBImageEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsTrainingCourse: TDataSource;
    qryTrainingCourse: TIBOQuery;
    dxLayoutControl1Group5: TdxLayoutGroup;
    gridTrainingCourse: TdxDBGrid;
    dxLayoutControl1Item8: TdxLayoutItem;
    qryTrainingCourseCOURSE_CODE: TWideStringField;
    qryTrainingCourseCOURSE_NAME: TWideStringField;
    qryTrainingCourseCOURSE_CONTENT: TWideStringField;
    qryTrainingCourseFILE_NAME: TWideStringField;
    qryTrainingCourseFILE_CONTENT: TBlobField;
    qryTrainingCourseTIME_PERIOD: TIntegerField;
    qryTrainingCourseTIME_UNIT: TIntegerField;
    qryTrainingCourseDAY_COUNT: TIntegerField;
    qryTrainingCourseINSIDE_OUTSIDE: TSmallintField;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxDBButtonEdit2: TdxDBButtonEdit;
    gridTrainingCourseCOURSE_CODE: TdxDBGridColumn;
    gridTrainingCourseCOURSE_NAME: TdxDBGridColumn;
    gridTrainingCourseINSIDE_OUTSIDE: TdxDBGridImageColumn;
    gridTrainingCourseFILE_NAME: TdxDBGridButtonColumn;
    qryTrainingCourseCOURSE_TYPE: TWideStringField;
    qryTrainingCourseTYPE_NAME: TWideStringField;
    dxDBPopupEdit1: TdxDBPopupEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    ImageList2: TImageList;
    gridTrainingCourseTYPE_NAME: TdxDBGridPopupColumn;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    gridTrainingCourseTIME_PERIOD: TdxDBGridSpinColumn;
    gridTrainingCourseTIME_UNIT: TdxDBGridImageColumn;
    qryTrainingClass: TIBOQuery;
    dsTrainingClass: TDataSource;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    gridTrainingClass: TdxDBGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    qryTrainingClassCOURSE_CODE: TWideStringField;
    qryTrainingClassKEY_ID: TWideStringField;
    qryTrainingClassCOURSE_NAME: TWideStringField;
    qryTrainingClassCOURSE_FULL_NAME: TWideStringField;
    qryTrainingClassCLASS_CODE: TWideStringField;
    qryTrainingClassCLASS_NAME: TWideStringField;
    qryTrainingClassINSIDE_OUTSIDE: TSmallintField;
    qryTrainingClassCLASS_CONTENT: TWideStringField;
    qryTrainingClassTEACHER: TWideStringField;
    qryTrainingClassTEACHER_NO: TWideStringField;
    qryTrainingClassFILE_NAME: TWideStringField;
    qryTrainingClassFILE_CONTENT: TBlobField;
    qryTrainingClassCLASS_PLACE: TWideStringField;
    qryTrainingClassPREV_CLASS: TWideStringField;
    qryTrainingClassTIME_PERIOD: TIntegerField;
    qryTrainingClassTIME_UNIT: TIntegerField;
    qryTrainingClassDAY_COUNT: TIntegerField;
    qryTrainingClassCLASS_TYPE: TWideStringField;
    gridTrainingClassCOURSE_FULL_NAME: TdxDBGridColumn;
    gridTrainingClassCLASS_CODE: TdxDBGridColumn;
    gridTrainingClassCLASS_NAME: TdxDBGridColumn;
    gridTrainingClassINSIDE_OUTSIDE: TdxDBGridImageColumn;
    gridTrainingClassTEACHER: TdxDBGridColumn;
    gridTrainingClassCLASS_PLACE: TdxDBGridColumn;
    gridTrainingClassTIME_PERIOD: TdxDBGridSpinColumn;
    gridTrainingClassTIME_UNIT: TdxDBGridImageColumn;
    qryTrainingClassTYPE_NAME: TWideStringField;
    gridTrainingClassTYPE_NAME: TdxDBGridPopupColumn;
    qryTrainingClassCOURSE_CODE_ORG: TWideStringField;
    qryTrainingClassTRAIN_ORDER: TIntegerField;
    gridTrainingClassTRAIN_ORDER: TdxDBGridSpinColumn;
    qryTrainingCourseTRAIN_ORDER: TIntegerField;
    gridTrainingCourseTRAIN_ORDER: TdxDBGridSpinColumn;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    gridTrainingClassFILE_NAME: TdxDBGridButtonColumn;
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dxDBPopupEdit1CloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
    procedure gridTrainingCourseTYPE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure gridTrainingCourseTYPE_NAMEInitPopup(Sender: TObject);
    procedure qryTrainingCourseNewRecord(DataSet: TDataSet);
    procedure dxDBPopupEdit1InitPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridTrainingCourseFILE_NAMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure qryTrainingCourseBeforePost(DataSet: TDataSet);
    procedure gridTrainingClassTYPE_NAMEInitPopup(Sender: TObject);
    procedure gridTrainingClassTYPE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure pageMainChange(Sender: TObject);
    procedure qryTrainingClassBeforePost(DataSet: TDataSet);
    procedure qryTrainingClassNewRecord(DataSet: TDataSet);
    procedure qryTrainingClassBeforeInsert(DataSet: TDataSet);
    procedure gridTrainingClassFILE_NAMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    F_COURSE_CODE,F_COURSE_FULL_NAME,F_COURSE_NAME:WideString;
    F_ORDER:integer;
    F_InsertSQL,F_UpdateSQL:string;
  public
    { Public declarations }
  end;

var
  frmTrainingCourse: TfrmTrainingCourse;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}
procedure TfrmTrainingCourse.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex);
end;
procedure TfrmTrainingCourse.dxDBPopupEdit1CloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryTrainingType,qryTrainingCourse,
        'TYPE_NO;TYPE_NAME','COURSE_TYPE;TYPE_NAME','TYPE_NAME',Text);
  frmPopupMain.qryTrainingType.Close;
end;

procedure TfrmTrainingCourse.gridTrainingCourseTYPE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryTrainingType,qryTrainingCourse,
        'TYPE_NO;TYPE_NAME','COURSE_TYPE;TYPE_NAME','TYPE_NAME',Text);
  frmPopupMain.qryTrainingType.Close;
end;

procedure TfrmTrainingCourse.gridTrainingCourseTYPE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingType.Open;
  InitPopupControl('dxlcTrainingType',frmPopupMain,sender,2,gridTrainingCourse);
end;
procedure TfrmTrainingCourse.FormCreate(Sender: TObject);
begin
  inherited;
  F_InsertSQL:=qryTrainingClass.InsertSQL.Text;
  F_UpdateSQL:=qryTrainingClass.EditSQL.Text;
  qryTrainingCourse.Open;
  frameToolbar1.SetDataSource(dsTrainingCourse);
  pageMain.ActivePageIndex:=0;
end;
procedure TfrmTrainingCourse.qryTrainingCourseNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTrainingCourseTIME_UNIT.Value:=1;
  qryTrainingCourseTRAIN_ORDER.Value:=qryTrainingCourse.RecordCount;
  if not gridTrainingCourse.Focused then dxDBEdit1.SetFocus;
end;

procedure TfrmTrainingCourse.dxDBPopupEdit1InitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryTrainingType.Open;
  InitPopupControl('dxlcTrainingType',frmPopupMain,sender,2);
end;

procedure TfrmTrainingCourse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryTrainingClass.Close;
  qryTrainingCourse.Close;
end;

procedure TfrmTrainingCourse.gridTrainingCourseFILE_NAMEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   dmMain.DatasetLoadFile(sender,AbsoluteIndex);
end;

procedure TfrmTrainingCourse.qryTrainingCourseBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  qryTrainingCourseDAY_COUNT.Value:=qryTrainingCourseTIME_PERIOD.Value*qryTrainingCourseTIME_UNIT.Value;
  dmMain.DefOnBeforePost(dataset);
end;

procedure TfrmTrainingCourse.gridTrainingClassTYPE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
    frmPopupMain.qryTrainingType.Open;
  InitPopupControl('dxlcTrainingType',frmPopupMain,sender,2,gridTrainingClass);
end;

procedure TfrmTrainingCourse.gridTrainingClassTYPE_NAMECloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryTrainingType,qryTrainingClass,
        'TYPE_NO;TYPE_NAME','CLASS_TYPE;TYPE_NAME','TYPE_NAME',Text);
  frmPopupMain.qryTrainingType.Close;
end;

procedure TfrmTrainingCourse.pageMainChange(Sender: TObject);
begin
  inherited;
  if pageMain.ActivePageIndex=1 then
  begin
    if qryTrainingClass.Active then qryTrainingClass.Close;
    if qryTrainingClass.EditSQL.Text<>F_UpdateSQL then
      qryTrainingClass.EditSQL.Text:=F_UpdateSQL;
    qryTrainingClass.Open;
    frameToolbar1.SetDataSource(dsTrainingClass);
    if qryTrainingClass.IsEmpty then qryTrainingClass.Close;
    gridTrainingClass.FullExpand;
  end;
end;

procedure TfrmTrainingCourse.qryTrainingClassBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryTrainingClassTRAIN_ORDER.IsNull then
    qryTrainingClassTRAIN_ORDER.Value:=1;
  qryTrainingClassKEY_ID.Value:=qryTrainingClassCOURSE_CODE_ORG.Value+qryTrainingClassCLASS_CODE.Value;
  if qryTrainingClass.State in [dsEdit] then
  begin
    if VarIsNull(qryTrainingClassCOURSE_CODE.OldValue) then
    begin
      qryTrainingClass.EditSQL.Text:=F_InsertSQL;
      qryTrainingClassCOURSE_CODE.Value:=qryTrainingClassCOURSE_CODE_ORG.Value;
    end
    else
    begin
      qryTrainingClass.EditSQL.Text:=F_UpdateSQL;
    end;
  end
  else
  if qryTrainingClass.State in [dsInsert] then
  begin
    if qryTrainingClass.EditSQL.Text<>F_UpdateSQL then
    qryTrainingClass.EditSQL.Text:=F_UpdateSQL;
  end;
  qryTrainingClassDAY_COUNT.Value:=qryTrainingClassTIME_PERIOD.Value*qryTrainingClassTIME_UNIT.Value;
  qryTrainingClassKEY_ID.Value:=qryTrainingClassCOURSE_CODE_ORG.Value+qryTrainingClassCLASS_CODE.Value;
  dmMain.DefOnBeforePost(dataset);
end;

procedure TfrmTrainingCourse.qryTrainingClassNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTrainingClassTRAIN_ORDER.Value:=F_ORDER+1;
  qryTrainingClassTIME_UNIT.Value:=1;
  qryTrainingClassCOURSE_CODE.Value:=F_COURSE_CODE;
  qryTrainingClassCOURSE_FULL_NAME.Value:=F_COURSE_FULL_NAME;
  qryTrainingClassCOURSE_NAME.Value:=F_COURSE_NAME;
  qryTrainingClassCOURSE_CODE_ORG.Value:=F_COURSE_CODE;
end;

procedure TfrmTrainingCourse.qryTrainingClassBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  F_COURSE_CODE:=qryTrainingClassCOURSE_CODE_ORG.Value;
  F_COURSE_FULL_NAME:=qryTrainingClassCOURSE_FULL_NAME.Value;
  F_COURSE_NAME:=qryTrainingClassCOURSE_NAME.Value;
  F_ORDER:=qryTrainingClassTRAIN_ORDER.Value;
  dmMain.DefOnBeforeInsert(Dataset);
end;

procedure TfrmTrainingCourse.gridTrainingClassFILE_NAMEButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dmMain.DatasetLoadFile(sender,AbsoluteIndex);
end;

end.
