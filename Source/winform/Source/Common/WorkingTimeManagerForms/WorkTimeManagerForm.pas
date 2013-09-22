unit WorkTimeManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, DB, dxmdaset,
  dxLayoutControl, cxControls, dxExEdtr, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  IBODataset, ExtCtrls, dxEdLib, dxEditor, dxDBGrid, ElBtnCtl, ElPopBtn,
  ActnList, dxDBTLCl, dxGrClEx, DateUtils, IB_Components, IB_Process,
  IB_Script, ElPgCtl, ElPanel, dxGrClms, DBActns, StdCtrls, ElCLabel,
  ElLabel, ImgList, Registry, dxDBELib;

const
  df_hour_in_day = 8;
  MessageVn: array[1..4] of WideString = (
    'Tạo khung dữ liệu chấm công...',
    'Tạo lưới dữ liệu chấm công...',
    'Tạo tiêu đề của lưới dữ liệu...',
    'Đọc dữ liệu chấm công...'
    );
  MessageEng: array[1..4] of WideString = (
    'Creating memory framework for loading data...',
    'Creating data grid columns...',
    'Create captions of data grid columns...',
    'Loading working day/time data from database...'
    );
  df_memWorkMonth_FieldCount = 10;
type
  TfrmWorkTimeManager = class(TfrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    tlOrgMap: TdxDBTreeList;
    tlOrgMapDEPT_NAME: TdxDBTreeListColumn;
    qryOrgMap: TIBOQuery;
    dsOrgMap: TDataSource;
    Splitter1: TSplitter;
    dxInMonth: TdxImageEdit;
    dxInYear: TdxSpinEdit;
    memWorkDay: TdxMemData;
    memWorkDayEMPLOYEE_NO: TWideStringField;
    memWorkDayFULL_NAME: TWideStringField;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    ElPopupButton3: TElPopupButton;
    ActionList1: TActionList;
    acPrevious: TAction;
    acView: TAction;
    acNext: TAction;
    dsWorkDay: TDataSource;
    memWorkDayTITLE_NAME: TWideStringField;
    qryEmpList: TIBOQuery;
    qryEmpListEMP_NO: TWideStringField;
    qryEmpListFULL_NAME: TWideStringField;
    qryEmpListTITLE_NAME: TWideStringField;
    qryEmpListIS_MAIN_POSITION: TIntegerField;
    qryEmpListIS_DISMISSED: TIntegerField;
    qryEmpWorkDate: TIBOQuery;
    dsEmpList: TDataSource;
    qryEmpWorkDateEMPLOYEE_NO: TWideStringField;
    qryEmpWorkDateWORK_DATE: TDateField;
    qryEmpWorkDateWDT_NO: TWideStringField;
    qryEmpWorkDateWDT_NAME: TWideStringField;
    ElPopupButton4: TElPopupButton;
    acUpdateAll: TAction;
    qryUpdateEmpWorkDay: TIBOQuery;
    qryEmpWorkDateWDT_COLOR: TIntegerField;
    chkWorkDayViewColor: TdxCheckEdit;
    pageRightSide: TElPageControl;
    tabWorkDay: TElTabSheet;
    tabWorkTime: TElTabSheet;
    dxlcRightSideGroup_Root: TdxLayoutGroup;
    dxlcRightSide: TdxLayoutControl;
    dxlcRightSideItem2: TdxLayoutItem;
    dxlcRightSideItem3: TdxLayoutItem;
    dxlcRightSideItem4: TdxLayoutItem;
    dxlcRightSideItem5: TdxLayoutItem;
    dxlcRightSideItem6: TdxLayoutItem;
    dxlcRightSideItem7: TdxLayoutItem;
    gridWorkDay: TdxDBGrid;
    gridWorkDayEMPLOYEE_NO: TdxDBGridColumn;
    gridWorkDayFULL_NAME: TdxDBGridColumn;
    gridWorkDayTITLE_NAME: TdxDBGridColumn;
    gridWorkDayTOTAL_DAY: TdxDBGridColumn;
    dxlcRightSideGroup2: TdxLayoutGroup;
    gridWorkTime: TdxDBGrid;
    memWorkTime: TdxMemData;
    dsWorkTime: TDataSource;
    dxlcRightSideGroup1: TdxLayoutGroup;
    qryEmpListForTime: TIBOQuery;
    dsEmpListForTime: TDataSource;
    qryEmpListTOTAL_DAY: TIntegerField;
    memWorkDayTOTAL_DAY: TIntegerField;
    dxWorkDayViewOption: TdxImageEdit;
    chkShowEndDate: TdxCheckEdit;
    qryEmpWorkTime: TIBOQuery;
    qryUpdateEmpWorkTime: TIBOQuery;
    qryEmpListForTimeEMP_NO: TWideStringField;
    qryEmpListForTimeFULL_NAME: TWideStringField;
    qryEmpListForTimeTITLE_NAME: TWideStringField;
    qryEmpListForTimeIS_MAIN_POSITION: TIntegerField;
    qryEmpListForTimeIS_DISMISSED: TIntegerField;
    qryEmpListForTimeTOTAL_TIME: TIBOFloatField;
    memWorkTimeEMPLOYEE_NO: TWideStringField;
    memWorkTimeFULL_NAME: TWideStringField;
    memWorkTimeTOTAL_TIME: TFloatField;
    memWorkTimeEMP_FULL_INFO: TWideStringField;
    qryEmpWorkTimeEMPLOYEE_NO: TWideStringField;
    qryEmpWorkTimeWORK_DATE: TDateField;
    qryEmpWorkTimeSTART_TIME: TTimeField;
    qryEmpWorkTimeEND_TIME: TTimeField;
    qryEmpWorkTimeEND_DATE: TIntegerField;
    qryEmpWorkTimeWHT_NO: TWideStringField;
    qryEmpWorkTimeWHT_NAME: TWideStringField;
    qryEmpWorkTimeWHT_COLOR: TIntegerField;
    memWorkTimeTITLE_NAME: TWideStringField;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    ElPopupButton6: TElPopupButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    ElPopupButton7: TElPopupButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    acPhatsinhNgaychamcong: TAction;
    acWorkDayCancel: TDataSetCancel;
    acWorkDayPost: TDataSetPost;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    ElPopupButton9: TElPopupButton;
    dxLayoutControl3Item3: TdxLayoutItem;
    ElPopupButton10: TElPopupButton;
    dxLayoutControl3Item4: TdxLayoutItem;
    ElPopupButton11: TElPopupButton;
    dxLayoutControl3Item5: TdxLayoutItem;
    ElPopupButton12: TElPopupButton;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    acWorkTimeCancel: TDataSetCancel;
    acWorkTimeInsert: TDataSetInsert;
    acWorkTimePost: TDataSetPost;
    acPhatsinhGiochamcong: TAction;
    acNextWeek: TAction;
    acBackWeek: TAction;
    dxCurWeek: TdxSpinEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxlcRightSideItem1: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item10: TdxLayoutItem;
    chkWorkTimeViewColor: TdxCheckEdit;
    acWorkTime_ChangeWeek: TAction;
    qryInsertEmpWorkTime: TIBOQuery;
    dxLayoutControl3Item8: TdxLayoutItem;
    chkViewType: TdxCheckEdit;
    chkError: TdxCheckEdit;
    dxLayoutControl3Item11: TdxLayoutItem;
    gridWorkTimeFULL_NAME: TdxDBGridColumn;
    gridWorkTimeTOTAL_TIME: TdxDBGridColumn;
    gridWorkTimeTITLE_NAME: TdxDBGridColumn;
    memWorkTimeKEY_FIELD: TWideStringField;
    dxLayoutControl3Item12: TdxLayoutItem;
    chkExtraOption: TdxCheckEdit;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxlcGroupExtraOption: TdxLayoutGroup;
    dxLayoutControl3Item14: TdxLayoutItem;
    chkGiovaoBold: TdxCheckEdit;
    dxLayoutControl3Item16: TdxLayoutItem;
    chkGioraBold: TdxCheckEdit;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Item17: TdxLayoutItem;
    chkGiovaoItalic: TdxCheckEdit;
    dxLayoutControl3Item18: TdxLayoutItem;
    chkGioraItalic: TdxCheckEdit;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Group9: TdxLayoutGroup;
    ebGiovao: TdxButtonEdit;
    dxLayoutControl3Item19: TdxLayoutItem;
    ebGiora: TdxButtonEdit;
    dxLayoutControl3Item20: TdxLayoutItem;
    dlgColor: TColorDialog;
    dxLayoutControl2Item7: TdxLayoutItem;
    ElPopupButton13: TElPopupButton;
    acNhapnhanhNgaycong: TAction;
    dxLayoutControl3Item13: TdxLayoutItem;
    ElPopupButton14: TElPopupButton;
    acNhapNhanhGiocong: TAction;
    panelHeader: TElPanel;
    lblListCaption: TElLabel;
    ImageList1: TImageList;
    qryInitWorkDay: TIBOQuery;
    pbKiemTra: TElPopupButton;
    dxlcItemCheck: TdxLayoutItem;
    acXuliDulieuChamcong: TAction;
    tabWorkMonth: TElTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    chkWorkMonthViewColor: TdxCheckEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    gridWorkMonth: TdxDBGrid;
    gridWorkMonthEMPLOYEE_NO: TdxDBGridColumn;
    gridWorkMonthFULL_NAME: TdxDBGridColumn;
    gridWorkMonthTITLE_NAME: TdxDBGridColumn;
    gridWorkMonthTOTAL_TIME: TdxDBGridColumn;
    memWorkMonth: TdxMemData;
    memWorkMonthEMPLOYEE_NO: TWideStringField;
    memWorkMonthFULL_NAME: TWideStringField;
    memWorkMonthTITLE_NAME: TWideStringField;
    dsWorkMonth: TDataSource;
    memWorkMonthTOTAL_TIME: TFloatField;
    qryEmpListForMonth: TIBOQuery;
    dsEmpListForMonth: TDataSource;
    qryEmpWorkMonth: TIBOQuery;
    qryInitWorkMonth: TIBOQuery;
    ElPopupButton8: TElPopupButton;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group1: TdxLayoutGroup;
    qryUpdateEmpWorkMonth: TIBOQuery;
    acCapnhatLuoi: TAction;
    memWorkMonthTOTAL_DAY: TIntegerField;
    gridWorkMonthTOTAL_DAY: TdxDBGridColumn;
    ElPopupButton15: TElPopupButton;
    dxLayoutControl3Item2: TdxLayoutItem;
    acWorkTimeDelete: TAction;
    qryDeleteEmpWorkTime: TIBOQuery;
    tabWorkTotalTime: TElTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    gridWorkTotalTime: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    ElPopupButton16: TElPopupButton;
    ElPopupButton17: TElPopupButton;
    ElPopupButton18: TElPopupButton;
    ElPopupButton19: TElPopupButton;
    dxCurWeek_T: TdxSpinEdit;
    ElPopupButton20: TElPopupButton;
    ElPopupButton22: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    memWorkTotal: TdxMemData;
    memWorkTotalEMPLOYEE_NO: TWideStringField;
    memWorkTotalFULL_NAME: TWideStringField;
    memWorkTotalTOTAL_TIME: TFloatField;
    memWorkTotalEMP_FULL_INFO: TWideStringField;
    memWorkTotalTITLE_NAME: TWideStringField;
    dsWorkTotal: TDataSource;
    dsEmpForTotal: TDataSource;
    qryEmpForTotal: TIBOQuery;
    qryEmpWorkTotal: TIBOQuery;
    qryInsertEmpWorkTotal: TIBOQuery;
    qryDeleteEmpWorkTotal: TIBOQuery;
    qryEmpForTotalEMP_NO: TWideStringField;
    qryEmpForTotalFULL_NAME: TWideStringField;
    qryEmpForTotalTITLE_NAME: TWideStringField;
    qryEmpForTotalIS_MAIN_POSITION: TIntegerField;
    qryEmpForTotalIS_DISMISSED: TIntegerField;
    qryEmpForTotalTOTAL_TIME: TIBOFloatField;
    dxLayoutControl5Item1: TdxLayoutItem;
    chkWorkTotalViewColor: TdxCheckEdit;
    qryUpdateEmpWorkTotal: TIBOQuery;
    qryEmpWorkTotalEMPLOYEE_NO: TWideStringField;
    qryEmpWorkTotalWORK_DATE: TDateField;
    qryEmpWorkTotalHOUR_TIME: TTimeField;
    qryEmpWorkTotalWORK_TIME: TIBOFloatField;
    qryEmpWorkTotalWHT_NO: TWideStringField;
    qryEmpWorkTotalWHT_NAME: TWideStringField;
    qryEmpWorkTotalWHT_COLOR: TIntegerField;
    memWorkTotalKEY_FIELD: TWideStringField;
    acWorkTotalInsert: TDataSetInsert;
    acWorkTotalPost: TDataSetPost;
    acWorkTotalDelete: TAction;
    acWorkTotalCancel: TDataSetCancel;
    acPhatsinhTonggioChamcong: TAction;
    acNhapnhanhTonggiocong: TAction;
    chkWorkTotalSelectView: TdxCheckEdit;
    dxLayoutControl5Item2: TdxLayoutItem;
    qryConfig: TIBOQuery;
    qryConfigKEY_ID: TIntegerField;
    qryConfigCHAMCONG_NGAY: TSmallintField;
    qryConfigCHAMCONG_GIO: TSmallintField;
    qryConfigCHAMCONG_THANG: TSmallintField;
    qryConfigCHAMCONG_TONGGIO: TSmallintField;
    ElPopupButton21: TElPopupButton;
    dxlcRightSideItem8: TdxLayoutItem;
    acTuychon: TAction;
    dsConfig: TDataSource;
    qryCCTongGio_Active: TIBOQuery;
    ElPopupButton24: TElPopupButton;
    dxLayoutControl5Item4: TdxLayoutItem;
    ElPopupButton23: TElPopupButton;
    dxLayoutControl3Item15: TdxLayoutItem;
    acKTChamCong: TAction;
    qryKiemTraCC: TIBOQuery;
    acTHTuCCGio: TAction;
    qryEmpWorkTimeWT_ID: TIntegerField;
    memWorkTimeWT_ID: TIntegerField;
    qryMaxWT_ID: TIBOQuery;
    qryMaxWT_IDMAX: TIntegerField;
    qryEmpWorkTimeTOTAL_TIME: TIBOFloatField;
    qryLoadTotalTime: TIBOQuery;
    qryLoadTotalTimeTOTAL_TIME: TIBOFloatField;
    dxOption: TdxImageEdit;
    dxLayoutControl3Item22: TdxLayoutItem;
    qryEmpWorkTimeBLANK_TIME: TSmallintField;
    memWorkTimeBLANK_TIME: TSmallintField;
    qryLoadTotalTimeEND_TIME: TTimeField;
    qryEmpWorkTimeFOR_EMP_NO: TWideStringField;
    dxlcInsteadGroup_Root: TdxLayoutGroup;
    dxlcInstead: TdxLayoutControl;
    dxlcInsteadGroup1: TdxLayoutGroup;
    dxDBEdit1: TdxDBEdit;
    dxlcInsteadItem1: TdxLayoutItem;
    dxDBEdit2: TdxDBEdit;
    dxlcInsteadItem2: TdxLayoutItem;
    dxDBEdit3: TdxDBEdit;
    dxlcInsteadItem3: TdxLayoutItem;
    dxDBEdit4: TdxDBEdit;
    dxlcInsteadItem4: TdxLayoutItem;
    dxDBMemo1: TdxDBMemo;
    dxlcInsteadItem5: TdxLayoutItem;
    dxlcInsteadGroup2: TdxLayoutGroup;
    dxDBGrid1: TdxDBGrid;
    dxlcInsteadItem6: TdxLayoutItem;
    qryInstead: TIBOQuery;
    dsInstead: TDataSource;
    qryInsteadFOR_EMP_NO: TWideStringField;
    qryInsteadFULL_NAME: TWideStringField;
    qryInsteadTITLE_NAME: TWideStringField;
    qryInsteadDEPT_NAME: TWideStringField;
    qryInsteadNOTE: TWideStringField;
    qryInsteadDetail: TIBOQuery;
    dsInsteadDetail: TDataSource;
    qryInsteadDetailFROM_DATE: TDateField;
    qryInsteadDetailTO_DATE: TDateField;
    qryInsteadDetailSHIFT_NAME: TWideStringField;
    dxDBGrid1FROM_DATE: TdxDBGridDateColumn;
    dxDBGrid1TO_DATE: TdxDBGridDateColumn;
    dxDBGrid1SHIFT_NAME: TdxDBGridColumn;
    qryInsteadDetailEMPLOYEE_NO: TWideStringField;
    qryOrgMapDEPT_NO: TWideStringField;
    qryOrgMapDEPT_NAME: TWideStringField;
    qryOrgMapP_DEPT_NO: TWideStringField;
    qryEmpWorkTimeSTART_DATE: TIntegerField;
    qryEmpWorkTimeDEPT_NO: TWideStringField;
    qryEmpWorkTimeTITLE_NO: TWideStringField;
    qryEmpListForTimeTITLE_NO: TWideStringField;
    memWorkTimeTITLE_NO: TWideStringField;
    qryEmpListForMonthEMP_NO: TWideStringField;
    qryEmpListForMonthFULL_NAME: TWideStringField;
    qryEmpListForMonthTITLE_NAME: TWideStringField;
    qryEmpListForMonthTITLE_NO: TWideStringField;
    qryEmpListForMonthDEPT_NO: TWideStringField;
    qryEmpListForMonthIS_MAIN_POSITION: TIntegerField;
    qryEmpListForMonthIS_DISMISSED: TIntegerField;
    qryEmpListForMonthTOTAL_DAY: TIntegerField;
    qryEmpListForMonthTOTAL_TIME: TIBOFloatField;
    qryEmpWorkMonthEMPLOYEE_NO: TWideStringField;
    qryEmpWorkMonthWHT_NO: TWideStringField;
    qryEmpWorkMonthWHT_NAME: TWideStringField;
    qryEmpWorkMonthWHT_COLOR: TIntegerField;
    qryEmpWorkMonthTOTAL_DAY: TIntegerField;
    qryEmpWorkMonthTOTAL_TIME: TIBOFloatField;
    qryEmpWorkMonthWM_ID: TIntegerField;
    qryEmpWorkMonthDEPT_NO: TWideStringField;
    qryEmpWorkMonthTITLE_NO: TWideStringField;
    memWorkMonthDEPT_NO: TWideStringField;
    memWorkMonthTITLE_NO: TWideStringField;
    qryEmpListForMonthWM_ID: TIntegerField;
    memWorkMonthWM_ID: TIntegerField;
    gridWorkMonthWM_ID: TdxDBGridColumn;
    gridWorkMonthDEPT_NO: TdxDBGridColumn;
    gridWorkMonthTITLE_NO: TdxDBGridColumn;
    memWorkMonthKEY_ID: TWideStringField;
    gridWorkMonthKEY_ID: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acViewExecute(Sender: TObject);
    procedure InitMemFields;
    procedure InitMemWorkDayFields;
    procedure InitMemWorkTimeFields;
    procedure InitMemWorkTotalFields;
    procedure InitMemWorkMonthFields;
    procedure InitGridColumns;
    procedure InitGridWorkDayColumns;
    procedure InitGridWorkTimeColumns;
    procedure InitGridWorkTotalColumns;
    procedure InitColumnCaptionsForWorkDay;
    procedure InitColumnCaptionsForWorkTime;
    procedure InitColumnCaptionsForWorkTotal;
    procedure InitMemWorkDay;
    procedure InitMemWorkTime;
    procedure InitMemWorkTotal;
    procedure InitMemWorkMonth;
    procedure InitBandsForWorkDay;
    procedure tlOrgMapChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acPreviousExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure DefOnInitPopup(Sender: TObject);
    procedure DefOnCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure DefOnInitPopupForTime(Sender: TObject);
    procedure DefOnInitPopupForTotalTime(Sender: TObject);
    procedure DefOnCloseUpForTime(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure DefOnCloseUpForTotalTime(Sender: TObject;
      var Text: WideString; var Accept: Boolean);

    procedure DefOnWDT_NAMEChange(Sender: TField);
    procedure DefOnWHT_NAMEChange(Sender: TField);
    procedure DefOnWHT_NAME_TOTALChange(Sender: TField);
    procedure DefOnWorkTimeChange(Sender: TField);
    procedure DefOnWorkTimeTotalChange(Sender: TField);
    procedure DefOnWorkTimeTotalChange_1(Sender: TField);

    procedure DefOnWorkMonth_Hour_Change(Sender: TField);
    procedure DefOnWorkMonth_Day_Change(Sender: TField);

    procedure acUpdateAllUpdate(Sender: TObject);
    procedure UpdateWorkDay;
    procedure UpdateWorkMonth;
    procedure UpdateWorkTime;
    procedure UpdateWorkTotal;
    procedure acUpdateAllExecute(Sender: TObject);
    procedure gridWorkDayCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure chkWorkDayViewColorChange(Sender: TObject);
    procedure dxWorkDayViewOptionChange(Sender: TObject);
    procedure gridWorkDayCustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: WideString; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure chkShowEndDateChange(Sender: TObject);
    procedure memWorkTimeTOTAL_TIMEChange(Sender: TField);
    procedure gridWorkTimeSTTCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure memWorkTimeNewRecord(DataSet: TDataSet);
    procedure memWorkTimeBeforeInsert(DataSet: TDataSet);
    procedure gridWorkTimeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: WideString;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure pageRightSideChange(Sender: TObject);
    procedure pageRightSideChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure chkWorkTimeViewColorChange(Sender: TObject);
    procedure dxCurWeekChange(Sender: TObject);
    procedure chkViewTypeChange(Sender: TObject);
    procedure gridWorkTimeCustomDrawBand(Sender: TObject;
      ABand: TdxTreeListBand; ACanvas: TCanvas; ARect: TRect;
      var AText: WideString; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridWorkTimeFULL_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure chkExtraOptionChange(Sender: TObject);
    procedure ebGiovaoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure ebGioraButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure gridWorkTimeTITLE_NAMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridWorkTimeTOTAL_TIMECustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acNhapnhanhNgaycongExecute(Sender: TObject);
    procedure acNhapNhanhGiocongExecute(Sender: TObject);
    procedure acPhatsinhNgaychamcongExecute(Sender: TObject);
    procedure acPhatsinhGiochamcongExecute(Sender: TObject);
    procedure acXuliDulieuChamcongExecute(Sender: TObject);
    procedure gridWorkMonthCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acCapnhatLuoiExecute(Sender: TObject);
    procedure chkWorkMonthViewColorChange(Sender: TObject);
    procedure memWorkMonthTOTAL_TIMEChange(Sender: TField);
    procedure acWorkTimeDeleteExecute(Sender: TObject);
    procedure acWorkTimeDeleteUpdate(Sender: TObject);
    procedure ElPopupButton10Click(Sender: TObject);
    procedure memWorkTotalBeforeInsert(DataSet: TDataSet);
    procedure memWorkTotalNewRecord(DataSet: TDataSet);
    procedure memWorkTotalTOTAL_TIMEChange(Sender: TField);
    procedure gridWorkTotalTimeCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acWorkTotalDeleteUpdate(Sender: TObject);
    procedure acWorkTotalDeleteExecute(Sender: TObject);
    procedure dxCurWeek_TChange(Sender: TObject);
    procedure acPhatsinhTonggioChamcongExecute(Sender: TObject);
    procedure acNhapnhanhTonggiocongExecute(Sender: TObject);
    procedure chkWorkTotalSelectViewChange(Sender: TObject);
    procedure acTuychonExecute(Sender: TObject);
    procedure UpdateView;
    procedure acKTChamCongExecute(Sender: TObject);
    procedure acTHTuCCGioExecute(Sender: TObject);
    procedure gridWorkTimeEnter(Sender: TObject);
    {Phuc add}
    procedure InitGridWorkTimeColumns_Day_format;
    procedure InitGridWorkTimeColumns_time_format;
    procedure InitGridWorkTimeColumns_total_format;
    procedure dxOptionChange(Sender: TObject);
    procedure gridWorkTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridWorkTimeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryInsteadBeforeOpen(DataSet: TDataSet);
    procedure qryInsteadDetailBeforeOpen(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    {}
  private
    { Private declarations }
    EMPLOYEE_NO, FULL_NAME, TITLE_NAME, TITLE_NO: WideString;
    cur_dept_workday, cur_dept_worktime, cur_dept_worktotal, cur_dept_workmonth: WideString;
    memWorkDay_is_change: boolean;
    memWorkTime_is_change: boolean;
    memWorkTotal_is_change: boolean;
    memWorkMonth_is_change: boolean;
    is_init_data: boolean;
    is_init_form: boolean;
    is_local_calculation: boolean;
    is_auto_update: boolean;
    cur_Sunday: integer;

    {Phuc add}
    Hide_Left_Page, Hide_Right_Page : boolean;
    Ctrl_press: boolean;
    {}
    function GetLinkField(fieldname: string): string;
    function GetDayInMonth(fieldname: string): integer;
    function GetBandIndex(cur_date: TDate; view_type: integer): integer;
    function GetMessage(id: integer): WideString;
    function GetWeek(cur_date: TDate): Integer;
    function GetStartOfWeek(week, month, year: integer): TDate;
    function GetEndOfWeek(week, month, year: integer): TDate;
  public
    { Public declarations }
  end;

var
  frmWorkTimeManager: TfrmWorkTimeManager;

implementation

uses MainDM, MainUnit, Math, PopupMainForm, SSP_Library,
  WarningWorkTimeForm, ToolForWorkTimeForm,
  GenerateWorkDateTimeForm, ToolForWorkDayForm, WorkTimeCheckForm,
  WorkTimeProcessForm, ToolForWorkTotalForm, WorkingConfigForm,
  DocTuCCGioForm, KiemTraChamCongForm, UnicodeConvert;

{$R *.dfm}

procedure TfrmWorkTimeManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  
  action := caFree;
  frmWorkTimeManager := nil;
end;

procedure TfrmWorkTimeManager.FormCreate(Sender: TObject);
var
  cur_date: TDate;
  reg : Tregistry;
  CurrentWorkTime : string;
begin
  {Phuc add}
  Hide_Left_Page := false;
  Hide_Right_Page := false;

  dxOption.Descriptions.Add(Utf8Decode('Ngày công'));
  dxOption.Descriptions.Add(Utf8Decode('Giờ công'));
  dxOption.Descriptions.Add(Utf8Decode('Tổng giờ'));
  dxOption.Descriptions.Add(Utf8Decode('Tất cả'));
  dxOption.Values.Add('DAY');
  dxOption.Values.Add('TIME');
  dxOption.Values.Add('TOTAL');
  dxOption.Values.Add('ALL');


  {}

  //dxlcRightSideItem8.Visible := (sysConfig.User = 'smallfoot');
  is_init_form := true;
  if sysConfig.Language = 2 then
  begin
    dxInMonth.Descriptions.Add('January');
    dxInMonth.Descriptions.Add('February');
    dxInMonth.Descriptions.Add('March');
    dxInMonth.Descriptions.Add('April');
    dxInMonth.Descriptions.Add('May');
    dxInMonth.Descriptions.Add('June');
    dxInMonth.Descriptions.Add('July');
    dxInMonth.Descriptions.Add('August');
    dxInMonth.Descriptions.Add('September');
    dxInMonth.Descriptions.Add('October');
    dxInMonth.Descriptions.Add('November');
    dxInMonth.Descriptions.Add('December');
  end
  else
  begin
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 1'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 2'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 3'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 4'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 5'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 6'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 7'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 8'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 9'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 10'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 11'));
    dxInMonth.Descriptions.Add(Utf8Decode('Tháng 12'));
  end;
  dxInMonth.Values.Add('1');
  dxInMonth.Values.Add('2');
  dxInMonth.Values.Add('3');
  dxInMonth.Values.Add('4');
  dxInMonth.Values.Add('5');
  dxInMonth.Values.Add('6');
  dxInMonth.Values.Add('7');
  dxInMonth.Values.Add('8');
  dxInMonth.Values.Add('9');
  dxInMonth.Values.Add('10');
  dxInMonth.Values.Add('11');
  dxInMonth.Values.Add('12');

  dxInMonth.Text := IntToStr(Integer(MonthOf(Now)));
  dxInYear.IntValue := YearOf(Now);
  qryConfig.Open;
  if qryConfig.IsEmpty then
  begin
    qryConfig.Insert;
    qryConfigKEY_ID.Value := 1;
    qryConfigCHAMCONG_NGAY.Value := 1;
    qryConfigCHAMCONG_GIO.Value := 1;
    qryConfigCHAMCONG_THANG.Value := 1;
    qryConfigCHAMCONG_TONGGIO.Value := 1;
    qryConfig.Post;
  end;
  UpdateView;

  if sysConfig.Language = 2 then
  begin
    dxWorkDayViewOption.Descriptions.Add('Month');
    dxWorkDayViewOption.Descriptions.Add('Week');
  end
  else
  begin
    dxWorkDayViewOption.Descriptions.Add(utf8Decode('Tháng'));
    dxWorkDayViewOption.Descriptions.Add(utf8Decode('Tuần'));
  end;

  dxWorkDayViewOption.Values.Add('1');
  dxWorkDayViewOption.Values.Add('6');
  dxWorkDayViewOption.Text := '1';

  is_init_form := false;

  //khoi tao cot, khoi tao field
  InitMemFields;
  InitGridColumns;
  // xem du lieu
  inherited;
  qryOrgMap.ParamByName('den_ngay').Value := EndOfAMonth(dxInYear.IntValue,strtoint(dxInMonth.text));
  qryOrgMap.Open;
  CustomExpand(tlOrgMap);
  //view

  InitColumnCaptionsForWorkDay;
  InitMemWorkDay;

  cur_date := TDate(EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
  dxCurWeek.MaxValue := GetWeek(cur_date);
  dxCurWeek.IntValue := 1;

  InitColumnCaptionsForWorkTime;
  InitMemWorkTime;
  gridWorkTime.OptionsBehavior := gridWorkTime.OptionsBehavior - [edgoAutoSort, edgoAnsiSort];

  InitMemWorkMonth;

  InitColumnCaptionsForWorkTotal;
  InitMemWorkTotal;
  gridWorkTotalTime.OptionsBehavior := gridWorkTotalTime.OptionsBehavior - [edgoAutoSort, edgoAnsiSort];

  {Phuc add}
  // Load from registry
  Reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey(REGISTRY_ROOT + '\Option', TRUE) then
       CurrentWorkTime := Reg.ReadString('CurrentWorkTime');
    finally
       reg.Free;
  end;
  if CurrentWorkTime = '' then
    dxOption.Text := 'TIME'
  else
    dxOption.Text := CurrentWorkTime;
  {}
end;

procedure TfrmWorkTimeManager.acViewExecute(Sender: TObject);
var
  cur_date: TDate;
  temp: string;
  cur_dept_no:WideString;
begin
  inherited;

  Screen.Cursor := crSQLWait;
  qryOrgMap.DisableControls;
  if qryOrgMap.Active then
  begin
  cur_dept_no:=qryOrgMapDEPT_NO.Value;
   qryOrgMap.close;
  end;
  qryOrgMap.ParamByName('den_ngay').Value := StartOfAMonth(dxInYear.IntValue,strtoint(dxInMonth.text));
  qryOrgMap.Open;
  qryOrgMap.Locate('DEPT_NO',cur_dept_no,[]);
  qryOrgMap.EnableControls;
  tlOrgMap.FullExpand;

  if pageRightSide.ActivePage = tabWorkDay then
  begin
    InitColumnCaptionsForWorkDay;
    InitMemWorkDay;
  end
  else
    if pageRightSide.ActivePage = tabWorkTime then
  begin
    cur_date := TDate(EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
    temp := DateTOStr(cur_date);
    dxCurWeek.MaxValue := GetWeek(cur_date);
    dxCurWeek.IntValue := 1;

    InitColumnCaptionsForWorkTime;
    InitMemWorkTime
  end
  else
    if pageRightSide.ActivePage = tabWorkMonth then
  begin
    InitMemWorkMonth;
  end;
  if pageRightSide.ActivePage = tabWorkTotalTime then
  begin
    cur_date := TDate(EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
    temp := DateTOStr(cur_date);
    dxCurWeek_T.MaxValue := GetWeek(cur_date);
    dxCurWeek_T.IntValue := 1;

    InitColumnCaptionsForWorkTotal;
    InitMemWorkTotal;
  end;
  Screen.Cursor := crDefault;

end;

procedure TfrmWorkTimeManager.InitMemWorkMonthFields;
var
  f: TFloatField;
  bf: TIntegerField;
  sf: TStringField;
  i: integer;
  col: TdxDBTreeListColumn;
  band: TdxTreeListBand;
  field_name : String;
begin
  //ThuyPTP edit cac fieldname cua memWorkMonth va GridWorkMonth
  //Su dung them ham chuyen doi ChuoiSangKyHieu
  //Cho truong hop ma loai cong nhap co dau

  //frmPopupMain.qryWorkDateType.Open; {Phuc rao}
  frmPopupMain.qryWorkHourType.Open;  
  if memWorkMonth.Active then
    memWorkMonth.Close;
  if gridWorkMonth.ColumnCount > (df_memWorkMonth_FieldCount - 1) then
  begin
    for i := gridWorkMonth.ColumnCount - 1 downto (df_memWorkMonth_FieldCount
      - 1) do
      gridWorkMonth.Columns[i].Free;
  end;

  if memWorkMonth.FieldCount > df_memWorkMonth_FieldCount then
  begin
    for i := memWorkMonth.FieldCount - 1 downto df_memWorkMonth_FieldCount do
      memWorkMonth.Fields[i].Free;
  end;

  if gridWorkMonth.Bands.Count > 1 then
    for i := gridWorkMonth.Bands.Count - 1 downto 1 do
      gridWorkMonth.Bands[i].Free;

  //if frmPopupMain.qryWorkDateType.IsEmpty then  {Phuc rao}
  //  frmPopupMain.qryWorkDateType.Close          {Phuc rao}
  if frmPopupMain.qryWorkHourType.IsEmpty then  {Phuc add}
    frmPopupMain.qryWorkHourType.Close          {Phuc add}
  else
  begin
    //frmMain.SetStatusBarPrgDisplay(0, frmPopupMain.qryWorkDateType.RecordCount); {Phuc rao}
    frmMain.SetStatusBarPrgDisplay(0, frmPopupMain.qryWorkHourType.RecordCount); {Phuc add}
    //frmPopupMain.qryWorkDateType.First;
    frmPopupMain.qryWorkHourType.First;
    i := 1;
    //while not frmPopupMain.qryWorkDateType.Eof do
    while not frmPopupMain.qryWorkHourType.Eof do
    begin
      //tao band
      band := gridWorkMonth.Bands.Add;
      band.Index := i;
      band.DisableCustomizing := true;
      band.DisableDragging := true;
      i := i + 1;
      //band.Caption := frmPopupMain.qryWorkDateTypeWDT_NAME.Value;
      band.Caption := frmPopupMain.qryWorkHourTypeWHT_NAME.Value;
      band.Width := 100;
      //gia tri loai ngay
      sf := TStringField.Create(memWorkMonth);
      //sf.Name := memWorkMonth.Name +
      //  frmPopupMain.qryWorkHourTypeWHT_NO.AsString;
      ChuoiSangKyHieu(frmPopupMain.qryWorkHourTypeWHT_NO.AsString, field_name);
      sf.Name := memWorkMonth.Name + field_name;
      sf.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString;
      sf.FieldKind := fkData;
      sf.SetFieldType(ftString);
      sf.DataSet := memWorkMonth;

      // gia tri ngay
      bf := TIntegerField.Create(memWorkMonth);
      //bf.Name := memWorkMonth.Name + frmPopupMain.qryWorkHourTypeWHT_NO.AsString
      //  + '_DAY';
      ChuoiSangKyHieu(frmPopupMain.qryWorkHourTypeWHT_NO.AsString, field_name );
      bf.Name := memWorkMonth.Name + field_name + '_DAY';
      bf.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString + '_DAY';
      bf.FieldKind := fkData;
      bf.SetFieldType(ftInteger);
      bf.OnChange := DefOnWorkMonth_Day_Change;
      bf.DataSet := memWorkMonth;

      col := gridWorkMonth.CreateColumn(TdxDBGridSpinColumn);
      //col.Name := gridWorkDay.Name + bf.FieldName;
      ChuoiSangKyHieu(bf.FieldName, field_name );
      col.Name := gridWorkDay.Name + field_name; 
      col.FieldName := bf.FieldName;
      col.Width := 50;
      col.HeaderAlignment := taCenter;
      col.Alignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := UTF8Decode('Số ngày');
      col.BandIndex := band.Index;
      col.Tag := frmPopupMain.qryWorkHourTypeWHT_COLOR.AsInteger;

      TdxDBGridSpinColumn(col).MinValue := 0;
      TdxDBGridSpinColumn(col).MaxValue := 10000000;

      bf := TIntegerField.Create(memWorkMonth);
      //bf.Name := memWorkMonth.Name + frmPopupMain.qryWorkHourTypeWHT_NO.AsString
      //  + '_DAY_OLD';
      ChuoiSangKyHieu(frmPopupMain.qryWorkHourTypeWHT_NO.AsString, field_name );
      bf.Name := memWorkMonth.Name + field_name + '_DAY_OLD';
      bf.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString + '_DAY_OLD';
      bf.FieldKind := fkData;
      bf.SetFieldType(ftInteger);
      bf.DataSet := memWorkMonth;

      bf := TIntegerField.Create(memWorkMonth);
      //bf.Name := memWorkMonth.Name + frmPopupMain.qryWorkHourTypeWHT_NO.AsString
      //  + '_DAY_TMP';
      ChuoiSangKyHieu(frmPopupMain.qryWorkHourTypeWHT_NO.AsString, field_name );
      bf.Name := memWorkMonth.Name + field_name + '_DAY_TMP';
      bf.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString + '_DAY_TMP';
      bf.FieldKind := fkData;
      bf.SetFieldType(ftInteger);
      bf.DataSet := memWorkMonth;

      //gia tri gio
      f := TFloatField.Create(memWorkMonth);
      //f.Name := memWorkMonth.Name + frmPopupMain.qryWorkHourTypeWHT_NO.AsString +
      //  '_TIME';
      ChuoiSangKyHieu(frmPopupMain.qryWorkHourTypeWHT_NO.AsString, field_name );
      f.Name := memWorkMonth.Name + field_name + '_TIME';
      f.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString + '_TIME';
      f.FieldKind := fkData;
      f.SetFieldType(ftFloat);
      f.OnChange := DefOnWorkMonth_Hour_Change;
      f.DataSet := memWorkMonth;

      col := gridWorkMonth.CreateColumn(TdxDBGridCalcColumn);
      //col.Name := gridWorkDay.Name + f.FieldName;
      ChuoiSangKyHieu(bf.FieldName, field_name );
      col.Name := gridWorkDay.Name + field_name;
      col.FieldName := f.FieldName;
      col.Width := 50;
      col.HeaderAlignment := taCenter;
      col.Alignment := taCenter;
      col.DisableCustomizing := true;
      col.Caption := UTF8Decode('Số giờ');
      col.BandIndex := band.Index;
      col.Tag := frmPopupMain.qryWorkHourTypeWHT_COLOR.AsInteger;

      f := TFloatField.Create(memWorkMonth);
      //f.Name := memWorkMonth.Name + frmPopupMain.qryWorkHourTypeWHT_NO.AsString
      //  + '_TIME_OLD';
      ChuoiSangKyHieu(frmPopupMain.qryWorkHourTypeWHT_NO.AsString, field_name );
      f.Name := memWorkMonth.Name + field_name + '_TIME_OLD';
      f.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString + '_TIME_OLD';
      f.FieldKind := fkData;
      f.SetFieldType(ftFloat);
      f.DataSet := memWorkMonth;

      f := TFloatField.Create(memWorkMonth);
      //f.Name := memWorkMonth.Name + frmPopupMain.qryWorkHourTypeWHT_NO.AsString
      //  + '_TIME_TMP';
      ChuoiSangKyHieu(frmPopupMain.qryWorkHourTypeWHT_NO.AsString, field_name );
      f.Name := memWorkMonth.Name + field_name + '_TIME_TMP';
      f.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString + '_TIME_TMP';
      f.FieldKind := fkData;
      f.SetFieldType(ftFloat);
      f.DataSet := memWorkMonth;

      {Phuc add}
      {bf := TIntegerField.Create(memWorkMonth);
      bf.Name := memWorkMonth.Name + frmPopupMain.qryWorkHourTypeWHT_NO.AsString
        + '_ID';
      bf.FieldName := frmPopupMain.qryWorkHourTypeWHT_NO.AsString + '_ID';
      bf.FieldKind := fkData;
      bf.SetFieldType(ftInteger);
      bf.OnChange := DefOnWorkMonth_Day_Change;
      bf.DataSet := memWorkMonth;  }
      {}

      frmMain.BarPrgStepIt;
      frmPopupMain.qryWorkHourType.Next;
    end;
    frmPopupMain.qryWorkHourType.Close;
  end;
end;

procedure TfrmWorkTimeManager.InitMemWorkDayFields;
var
  f: TWideStringField;
  bf: TIntegerField;
  i: integer;
begin
  if memWorkDay.Active then
    memWorkDay.Close;
  for i := 1 to 31 do
  begin
    f := TWideStringField.Create(memWorkDay);
    f.FieldName := 'WDT_NAME_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkDay;
    f.SetFieldType(ftWideString);
    f.OnChange := DefOnWDT_NAMEChange;
    frmMain.BarPrgStepIt;
  end;
  for i := 1 to 31 do
  begin
    f := TWideStringField.Create(memWorkDay);
    f.FieldName := 'WDT_NO_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkDay;
    f.SetFieldType(ftWideString);
    frmMain.BarPrgStepIt;
  end;
  for i := 1 to 31 do
  begin
    bf := TIntegerField.Create(memWorkDay);
    bf.FieldName := 'COLOR_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkDay;
    bf.SetFieldType(ftInteger);
    frmMain.BarPrgStepIt;
  end;
  for i := 1 to 31 do
  begin
    bf := TIntegerField.Create(memWorkDay);
    bf.FieldName := 'CHANGE_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkDay;
    bf.SetFieldType(ftInteger);
    frmMain.BarPrgStepIt;
  end;

end;

procedure TfrmWorkTimeManager.InitMemWorkTimeFields;
var
  f: TWideStringField;
  bf: TIntegerField;
  tf: TTimeField;
  i: integer;
  ff : TFloatField;
begin
  if memWorkTime.Active then
    memWorkTime.Close;
  for i := 1 to 7 do
  begin
    f := TWideStringField.Create(memWorkTime);
    f.FieldName := 'WHT_NAME_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkTime;
    f.SetFieldType(ftWideString);
    f.OnChange := DefOnWHT_NAMEChange;

    {Phuc add}
    f := TWideStringField.Create(memWorkTime);
    f.FieldName := 'ORG_WHT_NO_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkTime;
    f.SetFieldType(ftWideString);
    {}
    f := TWideStringField.Create(memWorkTime);
    f.FieldName := 'WHT_NO_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkTime;
    f.SetFieldType(ftWideString);

    bf := TIntegerField.Create(memWorkTime);
    bf.FieldName := 'COLOR_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTime;
    bf.SetFieldType(ftInteger);

    bf := TIntegerField.Create(memWorkTime);
    bf.FieldName := 'CHANGE_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTime;
    bf.SetFieldType(ftInteger);

    tf := TTimeField.Create(memWorkTime);
    tf.FieldName := 'START_TIME_' + IntToStr(i);
    tf.FieldKind := fkData;
    tf.DataSet := memWorkTime;
    tf.SetFieldType(ftTime);
    tf.AutoGenerateValue := arDefault;
    tf.OnChange := DefOnWorkTimeChange;
    {Phuc add}
    bf := TIntegerField.Create(memWorkTime);
    bf.FieldName := 'START_DATE_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTime;
    bf.SetFieldType(ftInteger);
    bf.OnChange := DefOnWorkTimeChange;
    {}
    tf := TTimeField.Create(memWorkTime);
    tf.FieldName := 'ORG_START_TIME_' + IntToStr(i);
    tf.FieldKind := fkData;
    tf.DataSet := memWorkTime;
    tf.SetFieldType(ftTime);
    tf.AutoGenerateValue := arDefault;

    tf := TTimeField.Create(memWorkTime);
    tf.FieldName := 'END_TIME_' + IntToStr(i);
    tf.FieldKind := fkData;
    tf.DataSet := memWorkTime;
    tf.SetFieldType(ftTime);
    tf.AutoGenerateValue := arDefault;
    tf.OnChange := DefOnWorkTimeChange;

    bf := TIntegerField.Create(memWorkTime);
    bf.FieldName := 'END_DATE_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTime;
    bf.SetFieldType(ftInteger);
    bf.OnChange := DefOnWorkTimeChange;

    {Phuc add}
    bf := TIntegerField.Create(memWorkTime);
    bf.FieldName := 'WT_ID_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTime;
    bf.SetFieldType(ftInteger);
    //bf.OnChange := DefOnWorkTimeChange;

    ff := TFloatField.Create(memWorkTime);
    ff.FieldName := 'ORG_TOTAL_TIME_' + IntToStr(i);
    ff.FieldKind := fkData;
    ff.DataSet := memWorkTime;
    ff.SetFieldType(ftFloat);
    ff.AutoGenerateValue := arDefault;

    ff := TFloatField.Create(memWorkTime);
    ff.FieldName := 'TOTAL_TIME_' + IntToStr(i);
    ff.FieldKind := fkData;
    ff.DataSet := memWorkTime;
    ff.SetFieldType(ftFloat);
    ff.OnChange := DefOnWorkTimeChange;

    bf := TIntegerField.Create(memWorkTime);
    bf.FieldName := 'BLANK_TIME_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTime;
    bf.SetFieldType(ftInteger);

    f := TWideStringField.Create(memWorkTime);
    f.FieldName := 'FOR_EMP_NO_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkTime;
    f.SetFieldType(ftWideString);
    {}
    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmWorkTimeManager.InitMemWorkTotalFields;
var
  f: TWideStringField;
  bf: TIntegerField;
  tf: TTimeField;
  ff: TFloatField;
  i: integer;
begin
  if memWorkTotal.Active then
    memWorkTotal.Close;
  for i := 1 to 7 do
  begin
    f := TWideStringField.Create(memWorkTotal);
    f.FieldName := 'WHT_NAME_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkTotal;
    f.SetFieldType(ftWideString);
    f.OnChange := DefOnWHT_NAME_TOTALChange;

    f := TWideStringField.Create(memWorkTotal);
    f.FieldName := 'WHT_NO_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkTotal;
    f.SetFieldType(ftWideString);

    f := TWideStringField.Create(memWorkTotal);
    f.FieldName := 'ORG_WHT_NO_' + IntToStr(i);
    f.FieldKind := fkData;
    f.DataSet := memWorkTotal;
    f.SetFieldType(ftWideString);

    bf := TIntegerField.Create(memWorkTotal);
    bf.FieldName := 'COLOR_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTotal;
    bf.SetFieldType(ftInteger);

    bf := TIntegerField.Create(memWorkTotal);
    bf.FieldName := 'CHANGE_' + IntToStr(i);
    bf.FieldKind := fkData;
    bf.DataSet := memWorkTotal;
    bf.SetFieldType(ftInteger);

    tf := TTimeField.Create(memWorkTotal);
    tf.FieldName := 'HOUR_TIME_' + IntToStr(i);
    tf.FieldKind := fkData;
    tf.DataSet := memWorkTotal;
    tf.SetFieldType(ftTime);
    tf.AutoGenerateValue := arDefault;
    tf.OnChange := DefOnWorkTimeTotalChange;
    tf.DisplayFormat := 'HH:mm:ss';

    ff := TFloatField.Create(memWorkTotal);
    ff.FieldName := 'WORK_TIME_' + IntToStr(i);
    ff.FieldKind := fkData;
    ff.DataSet := memWorkTotal;
    ff.SetFieldType(ftFloat);
    ff.AutoGenerateValue := arDefault;
    ff.OnChange := DefOnWorkTimeTotalChange_1;

    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmWorkTimeManager.InitMemFields;
begin
  frmMain.SetStatusBarPrgDisplay(0, 31 + 7);
  frmMain.SetStatusBarMsg(GetMessage(1));
  if qryConfigCHAMCONG_NGAY.Value = 1 then
    InitMemWorkDayFields;
  if qryConfigCHAMCONG_GIO.Value = 1 then
    InitMemWorkTimeFields;
  if qryConfigCHAMCONG_THANG.Value = 1 then
    InitMemWorkMonthFields;

  if qryConfigCHAMCONG_TONGGIO.Value = 1 then
    InitMemWorkTotalFields;
end;

procedure TfrmWorkTimeManager.InitGridWorkDayColumns;
var
  i: integer;
  newCol: TdxDBTreeListColumn;
begin
  frmMain.SetStatusBarPrgDisplay(0, 62);
  frmmain.SetStatusBarMsg(GetMessage(2));
  for i := 1 to 31 do
  begin
    newCol := gridWorkDay.CreateColumn(TdxDBGridPopupColumn);
    newCol.Name := 'gridWordDayWDT_NAME_' + IntToStr(i);
    newCol.FieldName := 'WDT_NAME_' + IntToStr(i);
    newCol.Width := 80;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := 1;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopup;
    (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUp;
    frmMain.BarPrgStepIt;
  end;
  for i := 1 to 31 do
  begin
    newCol := gridWorkDay.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordDayCOLOR_' + IntToStr(i);
    newCol.FieldName := 'COLOR_' + IntToStr(i);
    newCol.Width := 1;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;
  end;
end;

procedure TfrmWorkTimeManager.InitGridWorkTimeColumns;
var
  i: integer;
  newCol: TdxDBTreeListColumn;
  band: TdxTreeListBand;
begin
  frmMain.SetStatusBarPrgDisplay(0, 7);
  for i := 1 to 7 do
  begin
    //khoi tao band
    band := gridWorkTime.Bands.Add;
    band.Visible := true;
    band.DisableCustomizing := true;
    band.DisableDragging := true;
    //khoi tao 2 cot start va end time
  end;
  for i := 1 to 7 do
  begin
    newCol := gridWorkTime.CreateColumn(TdxDBGridTimeColumn);
    newCol.Name := 'gridWordTimeSTART_TIME_' + IntToStr(i);
    newCol.FieldName := 'START_TIME_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'In'
    else
      newCol.Caption := Utf8Decode('Giờ vào');
    (newCol as TdxDBGridTimeColumn).TimeEditFormat := tfHourMinSec;
    //newCol.Visible := false;  {Phuc add}

    //khoi tao cot chon ngay ket thuc (gio vao)
    newCol := gridWorkTime.CreateColumn(TdxDBGridImageColumn);
    newCol.Name := 'gridWordTimeSTART_DATE_' + IntToStr(i);
    newCol.FieldName := 'START_DATE_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.Visible := false;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridImageColumn).Values.Add('0');
    (newCol as TdxDBGridImageColumn).Values.Add('1');
    if sysConfig.Language = 2 then
    begin
      (newCol as TdxDBGridImageColumn).Descriptions.Add('today');
      (newCol as TdxDBGridImageColumn).Descriptions.Add('tomorrow');
    end
    else
    begin
      (newCol as
        TdxDBGridImageColumn).Descriptions.Add(utf8Decode('cùng ngày'));
      (newCol as TdxDBGridImageColumn).Descriptions.Add(utf8Decode('hôm sau'));
    end;
    (newCol as TdxDBGridImageColumn).ShowDescription := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Quit date'
    else
      newCol.Caption := Utf8Decode('Ngày ra');

    newCol := gridWorkTime.CreateColumn(TdxDBGridTimeColumn);
    newCol.Name := 'gridWordTimeEND_TIME_' + IntToStr(i);
    newCol.FieldName := 'END_TIME_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Out'
    else
      newCol.Caption := Utf8Decode('Giờ ra');
    (newCol as TdxDBGridTimeColumn).TimeEditFormat := tfHourMinSec;
    //newCol.Visible := false;  {Phuc add}

    //khoi tao cot chon ngay ket thuc
    newCol := gridWorkTime.CreateColumn(TdxDBGridImageColumn);
    newCol.Name := 'gridWordTimeEND_DATE_' + IntToStr(i);
    newCol.FieldName := 'END_DATE_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.Visible := false;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridImageColumn).Values.Add('0');
    (newCol as TdxDBGridImageColumn).Values.Add('1');
    if sysConfig.Language = 2 then
    begin
      (newCol as TdxDBGridImageColumn).Descriptions.Add('today');
      (newCol as TdxDBGridImageColumn).Descriptions.Add('tomorrow');
    end
    else
    begin
      (newCol as
        TdxDBGridImageColumn).Descriptions.Add(utf8Decode('cùng ngày'));
      (newCol as TdxDBGridImageColumn).Descriptions.Add(utf8Decode('hôm sau'));
    end;
    (newCol as TdxDBGridImageColumn).ShowDescription := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Quit date'
    else
      newCol.Caption := Utf8Decode('Ngày ra');



    //khoi tao cot Loai gio cong
    newCol := gridWorkTime.CreateColumn(TdxDBGridPopupColumn);
    newCol.Name := 'gridWordTimeWHT_NAME_' + IntToStr(i);
    newCol.FieldName := 'WHT_NAME_' + IntToStr(i);
    newCol.Width := 80;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopupForTime;
    (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUpForTime;

    if sysConfig.Language = 2 then
      newcol.Caption := 'Working type'
    else
      newcol.Caption := utf8decode('Loại giờ công');
    //khoi tao cot COLOR
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeCOLOR_' + IntToStr(i);
    newCol.FieldName := 'COLOR_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    {Phuc add}
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeWT_ID_' + IntToStr(i);
    newCol.FieldName := 'WT_ID_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;


    newCol := gridWorkTime.CreateColumn(TdxDBGridCalcColumn);
    newCol.Name := 'gridWordTimeTOTAL_TIME_' + IntToStr(i);
    newCol.FieldName := 'TOTAL_TIME_' + IntToStr(i);
    newCol.Width := {40}70;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := true;
    newCol.HeaderAlignment := taCenter;
    newCol.Alignment := taCenter;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Times'
    else
      newCol.Caption := Utf8Decode('Giờ');


    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeBLANK_TIME_' + IntToStr(i);
    newCol.FieldName := 'BLANK_TIME_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeFOR_EMP_NO_' + IntToStr(i);
    newCol.FieldName := 'FOR_EMP_NO_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;
    {}
    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmWorkTimeManager.InitGridWorkTotalColumns;
var
  i: integer;
  newCol: TdxDBTreeListColumn;
  band: TdxTreeListBand;
begin
  frmMain.SetStatusBarPrgDisplay(0, 7);
  for i := 1 to 7 do
  begin
    //khoi tao band
    band := gridWorkTotalTime.Bands.Add;
    band.Visible := true;
    band.DisableCustomizing := true;
    band.DisableDragging := true;
    //khoi tao 2 cot start va end time
  end;
  for i := 1 to 7 do
  begin
    newCol := gridWorkTotalTime.CreateColumn(TdxDBGridTimeColumn);
    newCol.Name := 'gridWorkTotalTimeHOUR_TIME_' + IntToStr(i);
    newCol.FieldName := 'HOUR_TIME_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := chkWorkTotalSelectView.Checked;
    ;

    if sysConfig.Language = 2 then
      newCol.Caption := 'Time'
    else
      newCol.Caption := Utf8Decode('Giờ');

    (newCol as TdxDBGridTimeColumn).TimeEditFormat := tfHourMinSec;

    newCol := gridWorkTotalTime.CreateColumn(TdxDBGridCalcColumn);
    newCol.Name := 'gridWorkTotalTimeWORK_TIME_' + IntToStr(i);
    newCol.FieldName := 'WORK_TIME_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := not chkWorkTotalSelectView.Checked;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Total'
    else
      newCol.Caption := Utf8Decode('Giờ');

    //khoi tao cot Loai gio cong
    newCol := gridWorkTotalTime.CreateColumn(TdxDBGridPopupColumn);
    newCol.Name := 'gridWorkTotalTimeWHT_NAME_' + IntToStr(i);
    newCol.FieldName := 'WHT_NAME_' + IntToStr(i);
    newCol.Width := 80;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopupForTotalTime;
    (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUpForTotalTime;
    if sysConfig.Language = 2 then
      newcol.Caption := 'Working type'
    else
      newcol.Caption := utf8decode('Loại giờ công');

    //khoi tao cot COLOR
    newCol := gridWorkTotalTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWorkTotalTimeCOLOR_' + IntToStr(i);
    newCol.FieldName := 'COLOR_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmWorkTimeManager.InitGridColumns;
begin
  //khoi tao cho gridWorkDate
  if qryConfigCHAMCONG_NGAY.Value = 1 then
    InitGridWorkDayColumns;
  //khoi tao cho gridWorkTime
  if qryConfigCHAMCONG_GIO.Value = 1 then
  begin
    InitGridWorkTimeColumns;
  end;
  //khoi tao cho gridWorkTotal
  if qryConfigCHAMCONG_TONGGIO.Value = 1 then
    InitGridWorkTotalColumns;
end;

function TfrmWorkTimeManager.GetBandIndex(cur_date: TDate; view_type: integer):
  integer;
begin
  if view_type = 1 then // xem theo thang
    Result := 1
  else
    if view_type = 6 then // xem theo tuan
    Result := GetWeek(cur_date)
  else
    result := 0;
end;

function TfrmWorkTimeManager.GetMessage(id: integer): WideString;
begin
  if sysConfig.Language = 2 then
    result := MessageEng[id]
  else
    result := Utf8decode(MessageVn[id]);
end;

procedure TfrmWorkTimeManager.InitBandsForWorkDay;
var
  i, band_count: integer;
  end_date: TDate;
begin
  end_date := EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text));

  band_count := Min(StrToInt(dxWorkDayViewOption.Text),
    GetWeek(end_date));
  i := 1;
  while i < gridWorkDay.Bands.Count do
  begin
    if i <= band_count then
      gridWorkDay.Bands[i].Visible := true
    else
      gridWorkDay.Bands[i].Visible := false;
    case StrToInt(dxWorkDayViewOption.Text) of
      1: // thang
        begin
          if (gridWorkDay.Bands[i].Visible) then
          begin
            if sysConfig.Language = 2 then // Enlish
              gridWorkDay.Bands[i].Caption := MonthEng[StrToInt(dxInMonth.Text)]
            else
              gridWorkDay.Bands[i].Caption :=
                Utf8Decode(MonthVn[StrToInt(dxInMonth.Text)]);
          end;
        end;
      6: // tuan
        begin
          if (gridWorkDay.Bands[i].Visible) then
          begin
            if sysConfig.Language = 2 then // Enlish
              gridWorkDay.Bands[i].Caption := 'Week ' + IntToStr(i)
            else
              gridWorkDay.Bands[i].Caption := Utf8Decode('Tuần thứ ') +
                IntToStr(i);
          end;
        end;
    end;
    i := i + 1;
  end;
end;

procedure TfrmWorkTimeManager.InitColumnCaptionsForWorkDay;
var
  i, thu: integer;
  to_date, cur_date: TDate;
begin
  if (qryConfigCHAMCONG_NGAY.Value <> 1) then exit;
  InitBandsForWorkDay;
  //=================
  cur_date := TDate(StartOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
  to_date := TDate(EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
  thu := DayOfTheWeek(cur_date);
  i := 4;
  frmMain.SetStatusBarPrgDisplay(4, gridWorkDay.ColumnCount - 1);
  frmMain.SetStatusBarMsg(GetMessage(3));

  while cur_date <= to_date do
  begin
    if sysConfig.Language = 2 then // anh van
      gridWorkDay.Columns[i].Caption := WeekEng[thu] + #13 + #10 +
        DateToStr(cur_date)
    else
      gridWorkDay.Columns[i].Caption := Utf8Decode(WeekVN[thu]) + #13 + #10 +
        DateToStr(cur_date);
    gridWorkDay.Columns[i].Visible := true;
    gridWorkDay.Columns[i].BandIndex := GetBandIndex(cur_date,
      StrToInt(dxWorkDayViewOption.Text));
    gridWorkDay.Columns[i].Tag := thu;
    cur_date := cur_date + 1;
    i := i + 1;
    thu := thu + 1;
    if thu = 8 then thu := 1;
    frmMain.BarPrgStepIt;
  end;
  while i < gridWorkDay.ColumnCount do
  begin
    gridWorkDay.Columns[i].Visible := false;
    i := i + 1;
    frmMain.BarPrgStepIt;
  end;
end;

function TfrmWorkTimeManager.GetWeek(cur_date: TDate): Integer;
var
  cur_year, cur_month: Word;
  start_date: TDate;
  temp: string;
begin
  cur_year := YearOf(cur_date);
  cur_month := MonthOf(cur_date);
  start_date := StartOfAMonth(cur_year, cur_month) + 1;
  result := 1;

  while start_date <= cur_date do
  begin
    temp := DateTOStr(start_date);
    if DayOfTheWeek(start_date) = 1 then //neu la thu 2
      result := result + 1;
    start_date := start_date + 1;
  end;
end;

function TfrmWorkTimeManager.GetStartOfWeek(week, month, year: integer): TDate;
begin
  result := TDate(StartOfAMonth(year, month));
  while (GetWeek(result) <> week) do
    result := Result + 1;
end;

function TfrmWorkTimeManager.GetEndOfWeek(week, month, year: integer): TDate;
begin
  result := TDate(StartOfAMonth(year, month));
  while (GetWeek(result) < week) do
    result := Result + 1;
  while (GetWeek(result) = week) do
    result := Result + 1;
  result := result - 1;
end;

procedure TfrmWorkTimeManager.InitColumnCaptionsForWorkTime;
var
  cur_date, to_date: TDate;
  cur_week, i, thu: integer;
begin
  if (qryConfigCHAMCONG_GIO.Value <> 1) then exit;

  frmMain.SetStatusBarPrgDisplay(0, gridWorkTime.Bands.Count - 1);
  if dxCurWeek.IntValue > dxCurWeek.MaxValue then
    dxCurWeek.Value := dxCurWeek.MaxValue;
  cur_week := dxCurWeek.IntValue;

  cur_date := GetStartOfWeek(cur_week, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);
  to_date := GetEndOfWeek(cur_week, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);

  thu := DayOfTheWeek(cur_date);

  i := 1;
  while cur_date <= to_date do
  begin
    if thu = 7 then cur_Sunday := i;

    if sysConfig.Language = 2 then // anh van
      gridWorkTime.Bands[i].Caption := WeekEng[thu] + ' - ' + DateToStr(cur_date)
    else
      gridWorkTime.Bands[i].Caption := Utf8Decode(WeekVN[thu]) + ' - ' +
        DateToStr(cur_date);
    gridWorkTime.Bands[i].Visible := true;

    cur_date := cur_date + 1;
    i := i + 1;
    thu := thu + 1;
    if thu = 8 then thu := 1;
    frmMain.BarPrgStepIt;
  end;

  while i < gridWorkTime.Bands.Count do
  begin
    gridWorkTime.Bands[i].Visible := false;
    i := i + 1;
    frmMain.BarPrgStepIt;
  end;

end;

procedure TfrmWorkTimeManager.InitColumnCaptionsForWorkTotal;
var
  cur_date, to_date: TDate;
  cur_week, i, thu: integer;
begin
  if (qryConfigCHAMCONG_TONGGIO.Value <> 1) then exit;

  frmMain.SetStatusBarPrgDisplay(0, gridWorkTotalTime.Bands.Count - 1);
  if dxCurWeek_T.IntValue > dxCurWeek_T.MaxValue then
    dxCurWeek_T.Value := dxCurWeek_T.MaxValue;
  cur_week := dxCurWeek_T.IntValue;

  cur_date := GetStartOfWeek(cur_week, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);
  to_date := GetEndOfWeek(cur_week, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);

  thu := DayOfTheWeek(cur_date);

  i := 1;
  while cur_date <= to_date do
  begin
    if thu = 7 then cur_Sunday := i;

    if sysConfig.Language = 2 then // anh van
      gridWorkTotalTime.Bands[i].Caption := WeekEng[thu] + ' - ' + DateToStr(cur_date)
    else
      gridWorkTotalTime.Bands[i].Caption := Utf8Decode(WeekVN[thu]) + ' - ' +
        DateToStr(cur_date);
    gridWorkTotalTime.Bands[i].Visible := true;

    cur_date := cur_date + 1;
    i := i + 1;
    thu := thu + 1;
    if thu = 8 then thu := 1;
    frmMain.BarPrgStepIt;
  end;

  while i < gridWorkTotalTime.Bands.Count do
  begin
    gridWorkTotalTime.Bands[i].Visible := false;
    i := i + 1;
    frmMain.BarPrgStepIt;
  end;
                                                                         
end;

procedure TfrmWorkTimeManager.InitMemWorkMonth;
var
  dayofmonth: integer;
begin
  if (qryConfigCHAMCONG_THANG.Value <> 1) then exit;
  is_init_data := true;
  frmMain.SetStatusBarMsg(GetMessage(4));
  memWorkMonth.DisableControls;
  // khoi tao du lieu cham cong ngay
  if memWorkMonth.Active then memWorkMonth.Close;
  if qryEmpWorkMonth.Active then qryEmpWorkMonth.Close;
  if qryEmpListForMonth.Active then qryEmpListForMonth.Close;
  qryEmpListForMonth.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
  qryEmpListForMonth.ParamByName('IN_MONTH').Value := StrToInt(dxInMonth.Text);
  qryEmpListForMonth.Open;

  if qryEmpListForMonth.IsEmpty = false then
  begin
    memWorkMonth.Open;
    qryEmpWorkMonth.ParamByName('IN_MONTH').Value := StrToInt(dxInMonth.Text);
    qryEmpWorkMonth.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
    qryEmpWorkMonth.Open;
    frmMain.SetStatusBarPrgDisplay(0, qryEmpListFOrMonth.RecordCount);
    qryEmpListForMonth.First;
    while not qryEmpListForMonth.Eof do
    begin
      if qryEmpWorkMonth.RecordCount = 0 then
      begin
        qryInitWorkMonth.ParamByName('USER_NAME').Value := sysConfig.User;
        qryInitWorkMonth.ParamByName('DEPT_NO').Value :=
          qryOrgMapDEPT_NO.Value;
        qryInitWorkMonth.ParamByName('IN_MONTH').Value := dxInMonth.Text;
        qryInitWorkMonth.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
        dmMain.ExecuteSQL(qryInitWorkMonth);
        qryEmpWorkMonth.Refresh;
      end;
      if qryEmpWorkMonth.IsEmpty then
      begin
        memWorkMonth_is_change := false;
        cur_dept_workday := qryOrgMapDEPT_NO.Value;
        memWorkMonth.EnableControls;
        is_init_data := false;
        frmMain.SetStatusBarMsg('');
        exit;
      end;
      memWorkMonth.Append;
      memWorkMonthWM_ID.Value := qryEmpListForMonthWM_ID.Value;
      memWorkMonthEMPLOYEE_NO.Value := qryEmpListForMonthEMP_NO.Value;
      memWorkMonthDEPT_NO.Value := qryEmpListForMonthDEPT_NO.Value;
      memWorkMonthTITLE_NO.Value := qryEmpListForMonthTITLE_NO.Value;
      memWorkMonthFULL_NAME.Value := qryEmpListForMonthFULL_NAME.Value;
      memWorkMonthTITLE_NAME.Value := qryEmpListForMonthTITLE_NAME.Value;
      memWorkMonthTOTAL_DAY.Value := qryEmpListForMonthTOTAL_DAY.Value;
      memWorkMonthTOTAL_TIME.Value := qryEmpListForMonthTOTAL_TIME.Value;
      memWorkMonthKEY_ID.Value := qryEmpListForMonthEMP_NO.Value+
                                  qryEmpListForMonthDEPT_NO.Value+
                                  qryEmpListForMonthTITLE_NO.Value+
                                  Copy(qryEmpListForMonthWM_ID.AsString,0,3);
      // tao du lieu cham cong ngay
      qryEmpWorkMonth.First;
      while not qryEmpWorkMonth.Eof do
      begin
        try

          //memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString + '_ID').Value
          //  := qryEmpWorkMonthWM_ID.Value; {Phuc add}

          memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString).Value
            := qryEmpWorkMonthWHT_NO.AsString;

          memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString + '_DAY').Value
            := qryEmpWorkMonthTOTAL_DAY.Value;
          memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString +
            '_DAY_OLD').Value
            := qryEmpWorkMonthTOTAL_DAY.Value;
          memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString +
            '_DAY_TMP').Value
            := qryEmpWorkMonthTOTAL_DAY.Value;

          memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString +
            '_TIME').Value
            := qryEmpWorkMonthTOTAL_TIME.Value;
          memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString +
            '_TIME_OLD').Value
            := qryEmpWorkMonthTOTAL_TIME.Value;
          memWorkMonth.FieldByName(qryEmpWorkMonthWHT_NO.AsString +
            '_TIME_TMP').Value
            := qryEmpWorkMonthTOTAL_TIME.Value;
        except
        end;
        qryEmpWorkMonth.Next;
      end;
      memWorkMonth.Post;
      qryEmpListForMonth.Next;
      frmMain.BarPrgStepIt;
    end;
  end;
  memWorkMonth_is_change := false;
  cur_dept_workmonth := qryOrgMapDEPT_NO.Value;
  memWorkMonth.EnableControls;
  is_init_data := false;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWorkTimeManager.InitMemWorkDay;
var
  dayofmonth: integer;
begin
  if (qryConfigCHAMCONG_NGAY.Value <> 1) then exit;
  is_init_data := true;
  frmMain.SetStatusBarMsg(GetMessage(4));

  memWorkDay.DisableControls;
  // khoi tao du lieu cham cong ngay
  if memWorkDay.Active then memWorkDay.Close;
  if qryEmpWorkDate.Active then qryEmpWorkDate.Close;
  if qryEmpList.Active then qryEmpList.Close;
  qryEmpList.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
  qryEmpList.ParamByName('IN_MONTH').Value := dxInMonth.Text;
  qryEmpList.Open;
  if qryEmpList.RecordCount > 0 then
  begin
    memWorkDay.Open;
    qryEmpWorkDate.ParamByName('FROM_DATE').Value :=
      TDate(StartOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
    qryEmpWorkDate.ParamByName('TO_DATE').Value :=
      TDate(EndOfAMonth(dxInYear.IntValue, StrToInt(dxInMonth.Text)));
    qryEmpWorkDate.Open;
    frmMain.SetStatusBarPrgDisplay(0, qryEmpList.RecordCount);
    qryEmpList.First;
    while not qryEmpList.Eof do
    begin
      if qryEmpWorkDate.RecordCount = 0 then
      begin
        qryInitWorkDay.ParamByName('USER_NAME').Value := sysConfig.User;
        qryInitWorkDay.ParamByName('DEPT_NO').Value :=
          qryOrgMapDEPT_NO.Value;
        qryInitWorkDay.ParamByName('IN_MONTH').Value := dxInMonth.Text;
        qryInitWorkDay.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
        dmMain.ExecuteSQL(qryInitWorkDay);
        qryEmpWorkDate.Refresh;
      end;

      memWorkDay.Append;
      memWorkDayEMPLOYEE_NO.Value := qryEmpListEMP_NO.Value;
      memWorkDayFULL_NAME.Value := qryEmpListFULL_NAME.Value;
      memWorkDayTITLE_NAME.Value := qryEmpListTITLE_NAME.Value;
      memWorkDayTOTAL_DAY.Value := qryEmpListTOTAL_DAY.Value;
      // tao du lieu cham cong ngay
      qryEmpWorkDate.First;
      while not qryEmpWorkDate.Eof do
      begin
        dayofmonth := DayOf(qryEmpWorkDateWORK_DATE.Value);
        if not qryEmpWorkDateWDT_NO.IsNull then
        begin
          memWorkDay.FieldByName('WDT_NAME_' + IntToStr(dayofmonth)).Value
            :=
            qryEmpWorkDateWDT_NAME.Value;
          memWorkDay.FieldByName('WDT_NO_' + IntToStr(dayofmonth)).Value :=
            qryEmpWorkDateWDT_NO.Value;
          memWorkDay.FieldByName('COLOR_' + IntToStr(dayofmonth)).Value :=
            qryEmpWorkDateWDT_COLOR.Value;
        end
        else
        begin
          memWorkDay.FieldByName('WDT_NAME_' + IntToStr(dayofmonth)).Clear;
          memWorkDay.FieldByName('WDT_NO_' + IntToStr(dayofmonth)).Clear;
          memWorkDay.FieldByName('COLOR_' + IntToStr(dayofmonth)).Value :=
            clWhite;
        end;
        qryEmpWorkDate.Next;
      end;
      memWorkDay.Post;
      qryEmpList.Next;
      frmMain.BarPrgStepIt;
    end;
  end;
  memWorkDay_is_change := false;
  cur_dept_workday := qryOrgMapDEPT_NO.Value;
  memWorkDay.EnableControls;

  is_init_data := false;
  frmMain.SetStatusBarMsg('');

end;

procedure TfrmWorkTimeManager.InitMemWorkTime;

  procedure InitDataForEachPerson;
  var
    bookmark: TBookmark;
    cur_date , start_date: TDate;
    record_count, cur_index, gap: integer;
    day_index: string;
    Cur_ID :integer;
  begin
    // luon luon co it nhat  la mot hang du lieu
    record_count := 1;
    memWorkTime.Append;
    memWorkTimeEMPLOYEE_NO.Value := qryEmpListForTimeEMP_NO.Value;
    memWorkTimeFULL_NAME.Value := qryEmpListForTimeFULL_NAME.Value;
    memWorkTimeTITLE_NO.Value := qryEmpListForTimeTITLE_NO.Value;  {Phuc add}
    memWorkTimeTITLE_NAME.Value := qryEmpListForTimeTITLE_NAME.Value;
    memWorkTimeTOTAL_TIME.Value := qryEmpListForTimeTOTAL_TIME.Value;
    memWorkTimeKEY_FIELD.Value := memWorkTimeEMPLOYEE_NO.Value + qryEmpListForTimeTITLE_NO.Value+
      IntToStr(record_count);

    memWorkTime.Post;

    start_date := GetStartOfWeek(dxCurWeek.IntValue, StrToInt(dxInMonth.Text),
      dxInYear.IntValue);
    gap := DayOfTheWeek(start_date);
    if qryEmpWorkTime.RecordCount > 0 then
      // da co cham cong
    begin
      record_count := 1;
      cur_index := 1;
      bookmark := memWorkTime.GetBookmark; //danh dau vi tri thu nhat
      qryEmpWorkTime.First;
      cur_date := qryEmpWorkTimeWORK_DATE.Value; 
      Cur_ID := qryEmpWorkTimeWT_ID.Value; {Phuc add do`ng nay}
      while not qryEmpWorkTime.Eof do
      begin
        if cur_index <= record_count then
        begin
          if cur_index > 1 then
            memWorkTIme.Next;
          memWorkTime.Edit;
        end
        else
        begin
          record_count := record_count + 1;
          memWorkTime.Append;
          ;
          memWorkTimeEMPLOYEE_NO.Value := qryEmpListForTimeEMP_NO.Value;
          memWorkTimeTITLE_NO.Value := qryEmpListForTimeTITLE_NO.Value; {Phuc add}
          memWorkTimeKEY_FIELD.Value := memWorkTimeEMPLOYEE_NO.Value +qryEmpListForTimeTITLE_NO.Value+
            IntToStr(record_count);
        end;

        day_index := IntToStr(DayOfTheWeek(qryEmpWorkTimeWORK_DATE.Value) - gap
          + 1);

        if qryEmpWorkTimeSTART_TIME.IsNull then                   {Phuc add}
          memWorkTime.FieldByName('ORG_START_TIME_' + day_index).clear{Phuc add}
        else                                                      {Phuc add}
          memWorkTime.FieldByName('ORG_START_TIME_' + day_index).Value :=
            qryEmpWorkTimeSTART_TIME.Value;

        if qryEmpWorkTimeSTART_TIME.IsNull then                   {Phuc add}
          memWorkTime.FieldByName('START_TIME_' + day_index).clear{Phuc add}
        else                                                      {Phuc add}
          memWorkTime.FieldByName('START_TIME_' + day_index).Value :=
            qryEmpWorkTimeSTART_TIME.Value;


        if qryEmpWorkTimeEND_TIME.IsNull then                   {Phuc add}
          memWorkTime.FieldByName('END_TIME_' + day_index).clear{Phuc add}
        else                                                    {Phuc add}
          memWorkTime.FieldByName('END_TIME_' + day_index).Value :=
            qryEmpWorkTimeEND_TIME.Value;

        if qryEmpWorkTimeEND_DATE.IsNull then                   {Phuc add}
          memWorkTime.FieldByName('END_DATE_' + day_index).clear{Phuc add}
        else                                                    {Phuc add}
          memWorkTime.FieldByName('END_DATE_' + day_index).Value :=
            qryEmpWorkTimeEND_DATE.Value;
        {Phuc add}
        if qryEmpWorkTimeSTART_DATE.IsNull then                   {Phuc add}
          memWorkTime.FieldByName('START_DATE_' + day_index).clear{Phuc add}
        else                                                    {Phuc add}
          memWorkTime.FieldByName('START_DATE_' + day_index).Value :=
            qryEmpWorkTimeSTART_DATE.Value;
        {}
        memWorkTime.FieldByName('COLOR_' + day_index).Value :=
          qryEmpWorkTimeWHT_COLOR.Value;

        {Phuc add}
        if qryEmpWorkTimeWHT_NO.IsNull then
          memWorkTime.FieldByName('ORG_WHT_NO_' + day_index).clear
        else
          memWorkTime.FieldByName('ORG_WHT_NO_' + day_index).Value :=
            qryEmpWorkTimeSTART_TIME.Value;
        {}

        if qryEmpWorkTimeWHT_NO.IsNull then
        begin
          memWorkTime.FieldByName('WHT_NO_' + day_index).Clear;
          memWorkTime.FieldByName('WHT_NAME_' + day_index).Clear;
        end
        else
        begin
          memWorkTime.FieldByName('WHT_NO_' + day_index).Value :=
            qryEmpWorkTimeWHT_NO.Value;
          memWorkTime.FieldByName('WHT_NAME_' + day_index).Value :=
            qryEmpWorkTimeWHT_NAME.Value;
        end; 
        memWorkTime.FieldByName('CHANGE_' + day_index).Value := 0;

        {Phuc add}
        memWorkTime.FieldByName('WT_ID_' + day_index).Value :=
                qryEmpWorkTimeWT_ID.Value;

        if qryEmpWorkTimeTOTAL_TIME.IsNull then
          memWorkTime.FieldByName('ORG_TOTAL_TIME_' + day_index).clear
        else
          memWorkTime.FieldByName('ORG_TOTAL_TIME_' + day_index).Value :=
            qryEmpWorkTimeSTART_TIME.Value;

        if qryEmpWorkTimeTOTAL_TIME.IsNull then
          memWorkTime.FieldByName('TOTAL_TIME_' + day_index).clear
        else
          memWorkTime.FieldByName('TOTAL_TIME_' + day_index).Value :=
            qryEmpWorkTimeTOTAL_TIME.Value;

        if qryEmpWorkTimeBLANK_TIME.IsNull then
          memWorkTime.FieldByName('BLANK_TIME_' + day_index).clear
        else
          memWorkTime.FieldByName('BLANK_TIME_' + day_index).Value :=
            qryEmpWorkTimeBLANK_TIME.Value;

        if qryEmpWorkTimeFOR_EMP_NO.IsNull then
          memWorkTime.FieldByName('FOR_EMP_NO_' + day_index).clear
        else
          memWorkTime.FieldByName('FOR_EMP_NO_' + day_index).Value :=
            qryEmpWorkTimeFOR_EMP_NO.Value;
        {}
        memWorkTime.Post;
        
        qryEmpWorkTime.Next;
        Cur_ID := qryEmpWorkTimeWT_ID.Value; {Phuc add do`ng na`y}
        if (cur_date <> qryEmpWorkTimeWORK_DATE.Value)
           {(cur_ID <> qryEmpWorkTimeWT_ID.Value)} {Phuc add do`ng na`y} then
        begin
          cur_date := qryEmpWorkTimeWORK_DATE.Value;

          cur_index := 1;
          memWorkTime.GotoBookmark(bookmark);
        end
        else
        begin
          cur_index := cur_index + 1;
        end;
      end;
    end;
  end;
begin
  if (qryConfigCHAMCONG_GIO.Value <> 1) then exit;
  is_init_data := true;
  frmMain.SetStatusBarMsg(GetMessage(4));

  memWorkTime.DisableControls;
  if memWorkTime.Active then memWorkTime.Close;
  if qryEmpWorkTime.Active then qryEmpWorkTime.Close;
  if qryEmpListForTime.Active then qryEmpListForTime.Close;
  qryEmpListForTime.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
  qryEmpListForTime.ParamByName('IN_MONTH').Value := dxInMonth.Text;
  qryEmpListForTime.Open;

  if qryEmpListForTime.RecordCount > 0 then
  begin
    memWorkTime.Open;
    if qryEmpListForTime.RecordCount > 0 then
    begin
      //lay thong tin gio lam chi tiet
      qryEmpWorkTime.ParamByName('FROM_DATE').Value :=
        GetStartOfWeek(dxCurWeek.IntValue, StrToInt(dxInMonth.Text),
        dxInYear.IntValue);
      qryEmpWorkTime.ParamByName('TO_DATE').Value :=
        GetEndOfWeek(dxCurWeek.IntValue, StrToInt(dxInMonth.Text),
        dxInYear.IntValue);
      {Phuc add}
      qryEmpWorkTime.ParamByName('DEPT_NO').Value := qryOrgMapDEPT_NO.Value;
      qryEmpWorkTime.ParamByName('TITLE_NO').Value := qryEmpListForTimeTITLE_NO.Value;
      {}
      qryEmpWorkTime.Open;

      frmMain.SetStatusBarPrgDisplay(0, qryEmpListForTime.RecordCount);
      qryEmpListForTime.First;
      while not qryEmpListForTime.Eof do
      begin
        // khoi tao du lieu cham cong cua tung nhan vien
        InitDataForEachPerson;
        qryEmpListForTime.Next;
        frmMain.BarPrgStepIt;
      end;
    end;
  end;
  memWorkTime_is_change := false;
  cur_dept_worktime := qryOrgMapDEPT_NO.Value;
  memWorkTime.EnableControls;
  gridWorkTime.FullExpand;

  is_init_data := false;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWorkTimeManager.InitMemWorkTotal;
  procedure InitDataForEachPerson;
  var
    bookmark: TBookmark;
    cur_date, start_date: TDate;
    record_count, cur_index, gap: integer;
    day_index: string;
  begin
    // luon luon co it nhat  la mot hang du lieu
    record_count := 1;
    memWorkTotal.Append;
    memWorkTotalEMPLOYEE_NO.Value := qryEmpForTotalEMP_NO.Value;
    memWorkTotalFULL_NAME.Value := qryEmpForTotalFULL_NAME.Value;
    memWorkTotalTITLE_NAME.Value := qryEmpForTotalTITLE_NAME.Value;
    memWorkTotalTOTAL_TIME.Value := qryEmpForTotalTOTAL_TIME.Value;
    memWorkTotalKEY_FIELD.Value := memWorkTotalEMPLOYEE_NO.Value +
      IntToStr(record_count);
    memWorkTotal.Post;

    start_date := GetStartOfWeek(dxCurWeek_T.IntValue, StrToInt(dxInMonth.Text),
      dxInYear.IntValue);
    gap := DayOfTheWeek(start_date);
    if qryEmpWorkTotal.RecordCount > 0 then
      // da co cham cong
    begin
      record_count := 1;
      cur_index := 1;
      bookmark := memWorkTotal.GetBookmark; //danh dau vi tri thu nhat
      qryEmpWorkTotal.First;
      cur_date := qryEmpWorkTotalWORK_DATE.Value;
      while not qryEmpWorkTotal.Eof do
      begin
        if cur_index <= record_count then
        begin
          if cur_index > 1 then
            memWorkTotal.Next;
          memWorkTotal.Edit;
        end
        else
        begin
          record_count := record_count + 1;
          memWorkTotal.Append;

          memWorkTotalEMPLOYEE_NO.Value := qryEmpForTotalEMP_NO.Value;
          memWorkTotalKEY_FIELD.Value := memWorkTotalEMPLOYEE_NO.Value +
            IntToStr(record_count);
        end;

        day_index := IntToStr(DayOfTheWeek(qryEmpWorkTotalWORK_DATE.Value) - gap
          + 1);

        memWorkTotal.FieldByName('ORG_WHT_NO_' + day_index).Value :=
          qryEmpWorkTotalWHT_NO.Value;

        memWorkTotal.FieldByName('HOUR_TIME_' + day_index).Value :=
          qryEmpWorkTotalHOUR_TIME.Value;
        memWorkTotal.FieldByName('WORK_TIME_' + day_index).Value :=
          qryEmpWorkTotalWORK_TIME.Value;
        memWorkTotal.FieldByName('COLOR_' + day_index).Value :=
          qryEmpWorkTotalWHT_COLOR.Value;
        memWorkTotal.FieldByName('WHT_NO_' + day_index).Value :=
          qryEmpWorkTotalWHT_NO.Value;
        memWorkTotal.FieldByName('WHT_NAME_' + day_index).Value :=
          qryEmpWorkTotalWHT_NAME.Value;
        memWorkTotal.FieldByName('CHANGE_' + day_index).Value := 0;

        memWorkTotal.Post;

        qryEmpWorkTotal.Next;
        if cur_date <> qryEmpWorkTotalWORK_DATE.Value then
        begin
          cur_date := qryEmpWorkTotalWORK_DATE.Value;
          cur_index := 1;
          memWorkTotal.GotoBookmark(bookmark);
        end
        else
        begin
          cur_index := cur_index + 1;
        end;
      end;
    end;
  end;
begin
  if (qryConfigCHAMCONG_TONGGIO.Value <> 1) then exit;

  is_init_data := true;
  frmMain.SetStatusBarMsg(GetMessage(4));

  memWorkTotal.DisableControls;
  if memWorkTotal.Active then memWorkTotal.Close;
  if qryEmpWorkTotal.Active then qryEmpWorkTotal.Close;
  if qryEmpForTotal.Active then qryEmpForTotal.Close;

  qryEmpForTotal.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
  qryEmpForTotal.ParamByName('IN_MONTH').Value := dxInMonth.Text;
  qryEmpForTotal.Open;

  if qryEmpForTotal.RecordCount > 0 then
  begin
    memWorkTotal.Open;
    if qryEmpForTotal.RecordCount > 0 then
    begin
      //lay thong tin gio lam chi tiet
      qryEmpWorkTotal.ParamByName('FROM_DATE').Value :=
        GetStartOfWeek(dxCurWeek_T.IntValue, StrToInt(dxInMonth.Text),
        dxInYear.IntValue);
      qryEmpWorkTotal.ParamByName('TO_DATE').Value :=
        GetEndOfWeek(dxCurWeek_T.IntValue, StrToInt(dxInMonth.Text),
        dxInYear.IntValue);
      qryEmpWorkTotal.Open;

      frmMain.SetStatusBarPrgDisplay(0, qryEmpForTotal.RecordCount);
      qryEmpForTotal.First;
      while not qryEmpForTotal.Eof do
      begin
        // khoi tao du lieu cham cong cua tung nhan vien
        InitDataForEachPerson;
        qryEmpForTotal.Next;
        frmMain.BarPrgStepIt;
      end;
    end;
  end;
  memWorkTotal_is_change := false;
  cur_dept_worktotal := qryOrgMapDEPT_NO.Value;
  memWorkTotal.EnableControls;
  gridWorkTotalTime.FullExpand;

  is_init_data := false;
  frmMain.SetStatusBarMsg('');
end;

procedure TfrmWorkTimeManager.tlOrgMapChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  acUpdateAll.Execute;   
  if pageRightSide.ActivePage = tabWorkDay then
  begin
    if memWorkDay_is_change then
      acUpdateAll.Execute;
    InitMemWorkDay;
  end
  else
    if pageRightSide.ActivePage = tabWorkTime then
  begin
    if memWorkTime_is_change then
      acUpdateAll.Execute;
    InitMemWorkTime;
  end
  else
    if pageRightSide.ActivePage = tabWorkMonth then
  begin
    if memWorkMonth_is_change then
      acUpdateAll.Execute;
    InitMemWorkMonth;
  end
  else
    if pageRightSide.ActivePage = tabWorkTotalTime then
  begin
    if memWorkTotal_is_change then
      acUpdateAll.Execute;
    InitMemWorkTotal;
  end;


end;

function TfrmWorkTimeManager.GetLinkField(fieldname: string): string;
begin
  if Pos('WDT_NAME_', fieldname) = 1 then
    result := 'WDT_NO_' + Copy(fieldname, 10, Length(fieldname) - 9)
  else
    if Pos('WDT_NO_', fieldname) = 1 then
    result := 'WDT_NAME_' + Copy(fieldname, 8, Length(fieldname) - 7)
  else
    if Pos('WHT_NAME_', fieldname) = 1 then
    result := 'WHT_NO_' + Copy(fieldname, 10, Length(fieldname) - 9)
  else
    if Pos('WHT_NO_', fieldname) = 1 then
    result := 'WHT_NAME_' + Copy(fieldname, 8, Length(fieldname) - 7);
end;

function TfrmWorkTimeManager.GetDayInMonth(fieldname: string): Integer;
begin
  if Pos('WDT_NAME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 10, Length(fieldname) - 9))
  else
    if Pos('WDT_NO_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 8, Length(fieldname) - 7))
  else
    if Pos('CHANGE_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 8, Length(fieldname) - 7))
  else
    if Pos('WHT_NAME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 10, Length(fieldname) - 9))
  else
    if Pos('WHT_NO_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 8, Length(fieldname) - 7))
  else
    if Pos('START_TIME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 12, Length(fieldname) - 11))
  else
    if Pos('END_TIME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 10, Length(fieldname) - 9))
  else
    if Pos('END_DATE_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 10, Length(fieldname) - 9))
  else
    if Pos('HOUR_TIME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 11, Length(fieldname) - 10))
  else
    if Pos('WORK_TIME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 11, Length(fieldname) - 10))
  else
  {Phuc add}
    if Pos('WT_ID_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 7, Length(fieldname) - 6))
  {}
  else
  {Phuc add}
    if Pos('TOTAL_TIME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 12, Length(fieldname) - 11))
  {}
  else
  {Phuc add}
    if Pos('BLANK_TIME_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 12, Length(fieldname) - 11))
  {}
  else
  {Phuc add}
    if Pos('FOR_EMP_NO_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 12, Length(fieldname) - 11))
  {}
  else
  {Phuc add}
    if Pos('START_DATE_', fieldname) = 1 then
    result := StrToInt(Copy(fieldname, 12, Length(fieldname) - 11))
  {}
  else
    result := 0;
end;

procedure TfrmWorkTimeManager.acPreviousExecute(Sender: TObject);
begin
  inherited;
  if memWorkDay_is_change then acUpdateAll.Execute;
  if dxInMonth.Text = '1' then
  begin
    dxInMonth.Text := '12';
    dxInYear.IntValue := dxInYear.IntValue - 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) - 1);
  acView.Execute;
end;

procedure TfrmWorkTimeManager.acNextExecute(Sender: TObject);
begin
  inherited;
  if memWorkDay_is_change then acUpdateAll.Execute;
  if dxInMonth.Text = '12' then
  begin
    dxInMonth.Text := '1';
    dxInYear.IntValue := dxInYear.IntValue + 1;
  end
  else
    dxInMonth.Text := IntToStr(StrToInt(dxInMonth.Text) + 1);
  acView.Execute;
end;

procedure TfrmWorkTimeManager.DefOnInitPopup(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkDateType.Open;
  InitPopupControl('dxlcWorkDateType', frmPopupMain, sender, 2, gridWorkDay);
end;

procedure TfrmWorkTimeManager.DefOnInitPopupForTime(Sender: TObject);
var index :integer;
begin
  inherited;
  index := GetDayInMonth((Sender as TdxDBGridPopupColumn).FieldName);

  qryInstead.ParamByName('FOR_EMP_NO').Value :=
   memWorkTime.FieldByName('FOR_EMP_NO_' + IntToStr(index)).Value;
  qryInsteadDetail.ParamByName('FOR_EMP_NO').Value :=
   memWorkTime.FieldByName('FOR_EMP_NO_' + IntToStr(index)).Value;
  qryInsteadDetail.ParamByName('EMPLOYEE_NO').Value :=
    memworktimeemployee_no.Value;

  if (Ctrl_press = true) and
     (not VarIsNull(memWorkTime.FieldByName('FOR_EMP_NO_' + IntToStr(index)).Value)) then
  begin
    qryInstead.Open;
    qryInsteadDetail.open;
    InitPopupControl('dxlcInstead', Self, sender, 2, gridWorkTime);
  end
  else
  begin
    frmPopupMain.qryWorkHourType.Open;
    InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2, gridWorkTime);
  end;

end;

procedure TfrmWorkTimeManager.DefOnInitPopupForTotalTime(Sender: TObject);
begin
  inherited;
  frmPopupMain.qryWorkHourType.Open;
  InitPopupControl('dxlcWorkHourType', frmPopupMain, sender, 2, gridWorkTotalTime);
end;

procedure TfrmWorkTimeManager.DefOnCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  index: string;
  fieldList: string;
  state: string;
begin
  inherited;
  index := IntToStr(GetDayInMonth((sender as TdxDBGridPopupColumn).FieldName));
  fieldList := 'WDT_NO_' + index + ';WDT_NAME_' + index + ';COLOR_' + index;
  if memWorkDay.FieldByName('WDT_NO_' + index).IsNull then
    state := 'IS_NULL'
  else
    state := 'IS_VALUE';
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkDateType, memWorkDay,
    'WDT_NO;WDT_NAME;WDT_COLOR', FieldList,
    'WDT_NAME', Text);
  if Accept and (state = 'IS_NULL')
    and (not memWorkDay.fieldByName('WDT_NO_' + index).IsNull) then
  begin
    if not (memWorkDay.State in [dsInsert, dsEdit]) then
      memWorkDay.Edit;
    memWorkDayTOTAL_DAY.Value := memWorkDayTOTAL_DAY.Value + 1;
  end;
  frmPopupMain.qryWorkDateType.Close;
end;

procedure TfrmWorkTimeManager.DefOnCloseUpForTime(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  index: string;
  fieldList: string;
begin
  inherited;
  index := IntToStr(GetDayInMonth((sender as TdxDBGridPopupColumn).FieldName));
  fieldList := 'WHT_NO_' + index + ';WHT_NAME_' + index + ';COLOR_' + index;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkHourType, memWorkTime,
    'WHT_NO;WHT_NAME;WHT_COLOR', FieldList,
    'WHT_NAME', Text);
  frmPopupMain.qryWorkHourType.Close;

  Ctrl_press := false;
  (sender as TdxDBGridPopupColumn).PopupControl := nil;
  if qryInstead.active then
    qryInstead.close;
  if qryInsteadDetail.active then
    qryInsteadDetail.close;
end;

procedure TfrmWorkTimeManager.DefOnCloseUpForTotalTime(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  index: string;
  fieldList: string;
begin
  inherited;
  index := IntToStr(GetDayInMonth((sender as TdxDBGridPopupColumn).FieldName));
  fieldList := 'WHT_NO_' + index + ';WHT_NAME_' + index + ';COLOR_' + index;
  OnPopupCloseUp(Accept, frmPopupMain.qryWorkHourType, memWorkTotal,
    'WHT_NO;WHT_NAME;WHT_COLOR', FieldList,
    'WHT_NAME', Text);
  frmPopupMain.qryWorkHourType.Close;
end;

procedure TfrmWorkTimeManager.DefOnWorkMonth_Hour_Change(Sender: TField);
var
  old_value, new_value: double;
  day_value: integer;
  time_value: double;
  main_field: string;
begin
  if is_init_data = true then exit;
  time_value := sender.AsFloat;
  main_field := Copy(sender.FieldName, 1, Length(sender.FieldName) - 5);

  if (time_value >= df_hour_in_day) or (time_value < 0) then
  begin
    day_value := Floor(time_value / df_hour_in_day);
    time_value := time_value - day_value * df_hour_in_day;
    memWorkMonth.FieldByName(main_field + '_DAY').Value :=
      memWorkMonth.FieldByName(main_field + '_DAY').Value + day_value;
    memWorkMonth.FieldByName(main_field + '_TIME').Value := time_value;
  end
  else
  begin
    old_value := memWorkMonth.FieldByName(main_field + '_TIME_TMP').AsFloat;
    new_value := sender.AsFloat;
    if old_value <> new_value then
    begin
      if not (memWorkMonth.State in [dsInsert, dsEdit]) then
        memWorkMonth.Edit;
      memWorkMonthTOTAL_TIME.Value := memWorkMonthTOTAL_TIME.Value + (new_value
        - old_value);
      memWorkMonth.FieldByName(sender.FieldName + '_TMP').Value := sender.Value;
      memWorkMonth_is_change := true;
    end;
  end
end;

procedure TfrmWorkTimeManager.DefOnWorkMonth_Day_Change(Sender: TField);
var
  old_value, new_value: integer;
begin
  if is_init_data then exit;
  old_value := memWorkMonth.FieldByName(sender.FieldName + '_TMP').AsInteger;
  new_value := sender.AsInteger;
  if old_value <> new_value then
  begin
    if not (memWorkMonth.State in [dsInsert, dsEdit]) then
      memWorkMonth.Edit;
    memWorkMonthTOTAL_DAY.Value := memWorkMonthTOTAL_DAY.Value + new_value -
      old_value;
    memWorkMonth.FieldByName(sender.FieldName + '_TMP').Value := new_value;
    memWorkMonth_is_change := true;
  end;
end;

procedure TfrmWorkTimeManager.DefOnWDT_NAMEChange(Sender: TField);
var
  wdt_name, change_name, wdt_no, color: string;
  state: string;
begin
  inherited;
  if is_init_data then
    exit
  else
  begin
    wdt_name := Sender.FieldName;
    wdt_no := GetLinkField(wdt_name);
    change_name := 'CHANGE_' + IntToStr(GetDayInMonth(wdt_name));
    color := 'COLOR_' + IntToStr(GetDayInMonth(wdt_name));
    if memWorkDay.FieldByName(wdt_no).IsNull then
      state := 'IS_NULL'
    else
      state := 'IS_VALUE';
    SetNullLink(Sender.DataSet, Sender.FieldName, wdt_no);
    if memWorkDay.FieldByName(wdt_no).IsNull and (state = 'IS_VALUE') then
    begin
      memWorkDayTOTAL_DAY.Value := memWorkDayTOTAL_DAY.Value - 1;
      memWorkDay.FieldByName(color).Value := clWhite;
    end;
    memWorkDay.FieldByName(change_name).Value := 1;
    memWorkDay_is_change := true;
  end;
end;

procedure TfrmWorkTimeManager.DefOnWorkTimeChange(Sender: TField);
var
  change_name: string;
begin
  if is_init_data then
    exit
  else
  begin
    change_name := 'CHANGE_' + IntToStr(GetDayInMonth(Sender.FieldName));
    memWorkTime.FieldByName(change_name).Value := 1;
    memWorkTime_is_change := true;
  end;
end;

procedure TfrmWorkTimeManager.DefOnWorkTimeTotalChange(Sender: TField);
var
  change_name: string;
  i: string;
begin
  if is_auto_update then
    exit
  else
    if is_init_data then
    exit
  else
  begin
    is_auto_update := true;
    i := IntToStr(GetDayInMonth(Sender.FieldName));
    change_name := 'CHANGE_' + i;
    memWorkTotal.FieldByName(change_name).Value := 1;
    memWorkTotal.FieldByName('WORK_TIME_' + i).Value := (sender as TTimeField).AsFloat * 24;
    memWorkTotal_is_change := true;
    is_auto_update := false;
  end;
end;

procedure TfrmWorkTimeManager.DefOnWorkTimeTotalChange_1(Sender: TField);
var
  change_name: string;
  i: string;
begin
  if is_auto_update then exit
  else
    if is_init_data then
    exit
  else
  begin
    is_auto_update := true;
    i := IntToStr(GetDayInMonth(Sender.FieldName));
    change_name := 'CHANGE_' + i;
    memWorkTotal.FieldByName(change_name).Value := 1;
    memWorkTotal.FieldByName('HOUR_TIME_' + i).Value :=
      Max(0, Min(1, (sender as TFloatField).AsFloat / 24));

    memWorkTotal_is_change := true;
    is_auto_update := false;
  end;
end;

procedure TfrmWorkTimeManager.DefOnWHT_NAMEChange(Sender: TField);
var
  wht_name, change_name, wht_no, color: string;
begin
  inherited;
  if is_init_data then
    exit
  else
  begin
    wht_name := Sender.FieldName;
    wht_no := GetLinkField(wht_name);
    change_name := 'CHANGE_' + IntToStr(GetDayInMonth(wht_name));
    color := 'COLOR_' + IntToStr(GetDayInMonth(wht_name));
    SetNullLink(Sender.DataSet, Sender.FieldName, wht_no);
    memWorkTime.FieldByName(change_name).Value := 1;
    if memWorkTime.FieldByName(wht_no).IsNull then
    begin
      memWorkTime.FieldByName(color).Value := Integer(clWhite);
    end;
    memWorkTime_is_change := true;
  end;
end;

procedure TfrmWorkTimeManager.DefOnWHT_NAME_TOTALChange(Sender: TField);
var
  wht_name, change_name, wht_no, color: string;
begin
  inherited;
  if is_init_data then
    exit
  else
  begin
    wht_name := Sender.FieldName;
    wht_no := GetLinkField(wht_name);
    change_name := 'CHANGE_' + IntToStr(GetDayInMonth(wht_name));
    color := 'COLOR_' + IntToStr(GetDayInMonth(wht_name));
    SetNullLink(Sender.DataSet, Sender.FieldName, wht_no);
    memWorkTotal.FieldByName(change_name).Value := 1;
    if memWorkTotal.FieldByName(wht_no).IsNull then
    begin
      memWorkTotal.FieldByName(color).Value := Integer(clWhite);
    end;
    memWorkTotal_is_change := true;
  end;
end;

procedure TfrmWorkTimeManager.acUpdateAllUpdate(Sender: TObject);
begin
  inherited;
  if pageRightSide.ActivePage = tabWorkDay then
    acUpdateAll.Enabled := memWorkDay_is_change
  else
    if pageRightSide.ActivePage = tabWorkTime then
    acUpdateAll.Enabled := memWorkTime_is_change
  else
    if pageRightSide.ActivePage = tabWorkMonth then
    acUpdateAll.Enabled := memWorkMonth_is_change
  else
    if pageRightSide.ActivePage = tabWorkTotalTime then
    acUpdateAll.Enabled := memWorkTotal_is_change
end;

procedure TfrmWorkTimeManager.UpdateWorkTime;
  procedure ShowCurrentError(cur_date: TDate; i: integer);
  begin
    with TfrmWarningWorkTime.Create(self) do
    try
      labelFULL_NAME.Caption := memWorkTimeFULL_NAME.Value;
      labelTITLE_NAME.Caption := memWorkTimeTITLE_NAME.Value;
      labelDEPT_NAME.Caption := qryOrgMapDEPT_NAME.Value;
      labelWORK_DATE.Caption := DateToStr(cur_date);
      if (memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).IsNull)
        then
        labelFIELD_NAME.Caption :=
          gridWorkTime.ColumnByFieldName('START_TIME_' +
          IntToStr(i)).Caption
      else
        if (memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).IsNull)
        then
        labelFIELD_NAME.Caption :=
          gridWorkTime.ColumnByFieldName('END_TIME_' +
          IntToStr(i)).Caption

      else
        if (memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).IsNull)
        then
        labelFIELD_NAME.Caption :=
          gridWorkTime.ColumnByFieldName('WHT_NAME_' +
          IntToStr(i)).Caption;

      labelFIELD_NAME.Caption := WideUpperCase(labelFIELD_NAME.Caption);
      ShowModal;
    finally
      Free;
    end;
  end;
  procedure Insert(cur_date: TDate; i: integer; var ok: boolean);
  begin
    try
      qryInsertEmpWorkTime.ParamByName('WORK_DATE').Value := cur_date;
      if memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).isNull then
        qryInsertEmpWorkTime.ParamByName('WHT_NO').Clear
      else
        qryInsertEmpWorkTime.ParamByName('WHT_NO').Value :=
          memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).Value;

      qryInsertEmpWorkTime.ParamByName('START_TIME').Value :=
          memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).Value;

      qryInsertEmpWorkTime.ParamByName('END_TIME').Value :=
          memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).Value;

      qryInsertEmpWorkTime.ParamByName('END_DATE').Value :=
        memWorkTime.FieldByName('END_DATE_' + IntToStr(i)).Value;

      {Phuc add}
      if memWorkTime.FieldByName('START_DATE_' + IntToStr(i)).IsNull then
        qryInsertEmpWorkTime.ParamByName('START_DATE').Value := 0
      else
        qryInsertEmpWorkTime.ParamByName('START_DATE').Value :=
          memWorkTime.FieldByName('START_DATE_' + IntToStr(i)).Value;

      if memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).IsNull and
           memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).IsNull
      then
      begin
        qryInsertEmpWorkTime.ParamByName('TOTAL_TIME').Value :=
          memWorkTime.FieldByName('TOTAL_TIME_' + IntToStr(i)).Value;
      end;
      qryInsertEmpWorkTime.ParamByName('DEPT_NO').Value :=
         qryOrgMapDEPT_NO.Value;
      qryInsertEmpWorkTime.ParamByName('TITLE_NO').Value :=
         memWorkTime.FieldByName('TITLE_NO').Value;
      {}

      dmMain.ExecuteSQL(qryInsertEmpWorkTime);
      if not (memWorkTime.State in [dsEdit]) then
        memWorkTime.Edit;
      memWorkTime.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
      memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).Value :=
        memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).Value;
      {Phuc add}
      memWorkTime.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Value :=
        memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).Value;
      memWorkTime.FieldByName('ORG_TOTAL_TIME_' + IntToStr(i)).Value :=
        memWorkTime.FieldByName('TOTAL_TIME_' + IntToStr(i)).Value;
      {}
    except
      ok := false;
    end
  end;
  
  procedure Delete(cur_date: TDate; i: integer; var ok: boolean);  //khong dung
  begin
    try
      qryDeleteEmpWorkTime.ParamByName('WORK_DATE').Value := cur_date;
      qryDeleteEmpWorkTime.ParamByName('ORG_START_TIME').Value :=
        memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).Value;

      dmMain.ExecuteSQL(qryDeleteEmpWorkTime);
      if not (memWorkTime.State in [dsEdit]) then
        memWorkTime.Edit;
      memWorkTime.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
      memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).Clear;

    except
      ok := false;
    end
  end;
  {Phuc add}
  procedure Delete_2(cur_id: integer; i: integer; var ok: boolean);
  begin
    try
      qryDeleteEmpWorkTime.ParamByName('WT_ID').Value := cur_id;

      dmMain.ExecuteSQL(qryDeleteEmpWorkTime);
      if not (memWorkTime.State in [dsEdit]) then
        memWorkTime.Edit;
      memWorkTime.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
      memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).Clear;
      memWorkTime.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Clear;
      memWorkTime.FieldByName('ORG_TOTAL_TIME_' + IntToStr(i)).Clear;
    except
      ok := false;
    end
  end;
  {}
  procedure Update(cur_date: TDate; i: integer; var ok: boolean);  // khong dung
  begin
    try // da co du lieu : update du lieu moi
      qryUpdateEmpWorkTime.ParamByName('WORK_DATE').Value := cur_date;
      if memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).isNull or
        (Trim(memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).AsString) = '')
        then
        qryUpdateEmpWorkTime.ParamByName('WHT_NO').Clear
      else
        qryUpdateEmpWorkTime.ParamByName('WHT_NO').Value :=
          memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).Value;
      qryUpdateEmpWorkTime.ParamByName('ORG_START_TIME').Value :=
        memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).Value;
      qryUpdateEmpWorkTime.ParamByName('NEW_START_TIME').Value :=
        memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).Value;
      qryUpdateEmpWorkTime.ParamByName('END_TIME').Value :=
        memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).Value;
      qryUpdateEmpWorkTime.ParamByName('END_DATE').Value :=
        memWorkTime.FieldByName('END_DATE_' + IntToStr(i)).Value;

      dmMain.ExecuteSQL(qryUpdateEmpWorkTime);
      if not (memWorkTime.State in [dsEdit]) then
        memWorkTime.Edit;
      memWorkTime.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
      memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).Value :=
        memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).Value;
    except
      ok := false;
    end;
  end;
  {}
  procedure Update_2(cur_id: integer;cur_date: TDate; i: integer; var ok: boolean);
  begin
    try // da co du lieu : update du lieu moi

      qryUpdateEmpWorkTime.ParamByName('WT_ID').Value := cur_id;
      if memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).isNull or
        (Trim(memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).AsString) = '')
        then
        qryUpdateEmpWorkTime.ParamByName('WHT_NO').Clear
      else
        qryUpdateEmpWorkTime.ParamByName('WHT_NO').Value :=
          memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).Value;

      qryUpdateEmpWorkTime.ParamByName('NEW_START_TIME').Value :=
        memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).Value;
      qryUpdateEmpWorkTime.ParamByName('END_TIME').Value :=
        memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).Value;
      qryUpdateEmpWorkTime.ParamByName('END_DATE').Value :=
        memWorkTime.FieldByName('END_DATE_' + IntToStr(i)).Value;
      qryUpdateEmpWorkTime.ParamByName('START_DATE').Value :=
        memWorkTime.FieldByName('START_DATE_' + IntToStr(i)).Value;

      qryUpdateEmpWorkTime.ParamByName('TOTAL_TIME').Value :=
        memWorkTime.FieldByName('TOTAL_TIME_' + IntToStr(i)).Value;

      dmMain.ExecuteSQL(qryUpdateEmpWorkTime);
      if not (memWorkTime.State in [dsEdit]) then
        memWorkTime.Edit;
        
      memWorkTime.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
      memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).Value :=
        memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).Value;
      {Phuc add}
      memWorkTime.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Value :=
        memWorkTime.FieldByName('WHT_NO_' + IntToStr(i)).Value;

      memWorkTime.FieldByName('ORG_TOTAL_TIME_' + IntToStr(i)).Value :=
        memWorkTime.FieldByName('TOTAL_TIME_' + IntToStr(i)).Value;
      {}
    except
      ok := false;
    end;
  end;
  {}
var
  i: integer;
  start_date, cur_date: TDate;
  ok: boolean;
  bookmark: TBookmark;
  Cur_id: integer; {Phuc add}
begin
  if memWorkTime.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if memWorkTime_is_change = false then exit;
  if (memWorkTime.State in [dsEdit]) then
    memWorkTime.Post;
  bookmark := memWorkTime.GetBookmark;
  memWorkTime.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memWorkTime.RecordCount);
  memWorkTime.First;
  start_date := GetStartOfWeek(dxCurWeek.IntValue, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);
  while not memWorkTime.Eof do
  begin
    {Phuc rao}
    //qryUpdateEmpWorkTime.ParamByName('EMPLOYEE_NO').Value :=
    //  memWorkTimeEMPLOYEE_NO.Value;
    qryInsertEmpWorkTime.ParamByName('EMPLOYEE_NO').Value :=
      memWorkTimeEMPLOYEE_NO.Value;
    {Phuc rao}  
    //qryDeleteEmpWorkTime.ParamByName('EMPLOYEE_NO').Value :=
    //  memWorkTimeEMPLOYEE_NO.Value;

    for i := 1 to 7 do
    begin
      if memWorkTime.FieldByName('CHANGE_' + IntToStr(i)).Value = 1 then
        // phat hien thay co su thay doi
      begin
        cur_date := start_date + i - 1;   {giu nguyen code cu}

        if (memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).IsNull and
            memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).IsNull
            {Phuc add}
            and
            memWorkTime.FieldByName('TOTAL_TIME_' + IntToStr(i)).IsNull and
            memWorkTime.FieldByName('WHT_NAME_' + IntToStr(i)).IsNull
            {}
            )
          then
          begin
            {Delete(cur_date, i, ok) //Phuc rao} // thuc hien xoa du lieu
            if memWorkTime.FieldByName('WT_ID_' + IntToStr(i)).IsNull then
              Cur_id := -1
            else
              Cur_id := memWorkTime.FieldByName('WT_ID_' + IntToStr(i)).Value; {Phuc add}
            Delete_2(Cur_id, i, ok);   {Phuc add}
          end
        {else
          if (memWorkTime.FieldByName('START_TIME_' + IntToStr(i)).IsNull or
          memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).IsNull)
          then
        begin
          if chkError.Checked then // thong bao loi nhap lieu chua day du
          begin
            ShowCurrentError(cur_date, i);
            memWorkTime.GotoBookmark(bookmark);
            memWorkTime.EnableControls;
            Exit;
          end
          else
            Continue; //bo qua, tiep tuc cot du lieu moi
        end   } {Phuc rao lai}
        else
          if memWorkTime.FieldByName('ORG_START_TIME_' + IntToStr(i)).IsNull and
             memWorkTime.FieldByName('ORG_WHT_NO_' + IntToStr(i)).IsNull and
             memWorkTime.FieldByName('ORG_TOTAL_TIME_' + IntToStr(i)).IsNull
          then
          begin
            Insert(cur_date, i, ok); // insert du lieu
            {Phuc add: ghi nhan lai id len memdata}
            if ok then
            begin
              qryMaxWT_ID.Open;
              memWorkTime.FieldByName('WT_ID_' + IntToStr(i)).Value :=
                  qryMaxWT_IDMAX.Value;
              qryMaxWT_ID.Close;
            end;
            {}
          end
        else
        begin
          {Update(cur_date, i, ok); //Phuc rao}
          Cur_id := memWorkTime.FieldByName('WT_ID_' + IntToStr(i)).Value; {Phuc add}
          Update_2(Cur_id,cur_date, i, ok); {Phuc add}
          {Phuc add}
          if ok then
          begin
            dmmain.CommitTransaction;
            qryLoadTotalTime.ParamByName('WT_ID').Value := Cur_id;
            qryLoadTotalTime.Open;
            memWorkTime.FieldByName('TOTAL_TIME_' + IntToStr(i)).Value :=
                  qryLoadTotalTimeTOTAL_TIME.Value;
            memWorkTime.FieldByName('END_TIME_' + IntToStr(i)).Value :=
                  qryLoadTotalTimeEND_TIME.Value;
            qryLoadTotalTime.close;
            
            //ShowMessage(IntToStr(gridWorkTime.FindColumnByFieldName('TOTAL_TIME_' + IntToStr(i)).RowIndex));
          end;
          {}
        end;
      end; //if if memWorkTime.FieldByName('CHANGE_' + IntToStr(i)).Value = 1
    end; //for for i := 1 to 7 do
    if (memWorkTime.State in [dsEdit]) then
      memWorkTime.Post;
    memWorkTime.Next;
    frmMain.BarPrgStepIt;
  end; //while

  memWorkTime_is_change := false;
  memWorkTime.GotoBookmark(bookmark);
  memWorkTime.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  InitMemWorkTime;  
end;

procedure TfrmWorkTimeManager.UpdateWorkTotal;
var
  i: integer;
  start_date, cur_date: TDate;
  ok: boolean;
  bookmark: TBookmark;
begin
  if memWorkTotal.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if memWorkTotal_is_change = false then exit;
  if (memWorkTotal.State in [dsEdit]) then
    memWorkTotal.Post;
  bookmark := memWorkTotal.GetBookmark;
  memWorkTotal.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memWorkTotal.RecordCount);
  memWorkTotal.First;
  start_date := GetStartOfWeek(dxCurWeek_T.IntValue, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);
  while not memWorkTotal.Eof do
  begin
    qryUpdateEmpWorkTotal.ParamByName('EMPLOYEE_NO').Value :=
      memWorkTotalEMPLOYEE_NO.Value;
    qryInsertEmpWorkTotal.ParamByName('EMPLOYEE_NO').Value :=
      memWorkTotalEMPLOYEE_NO.Value;
    qryDeleteEmpWorkTotal.ParamByName('EMPLOYEE_NO').Value :=
      memWorkTotalEMPLOYEE_NO.Value;

    for i := 1 to 7 do
    begin
      if memWorkTotal.FieldByName('CHANGE_' + IntToStr(i)).Value = 1 then
      begin
        cur_date := start_date + i - 1;
        //kiem tra rang buoc

        if memWorkTotal.FieldByName('ORG_WHT_NO_' + IntToStr(i)).IsNull then
          //insert
        try
          qryInsertEmpWorkTotal.ParamByName('WORK_DATE').Value := cur_date;
          qryInsertEmpWorkTotal.ParamByName('WHT_NO').Value :=
            memWorkTotal.FieldByName('WHT_NO_' + IntToStr(i)).Value;
          qryInsertEmpWorkTotal.ParamByName('HOUR_TIME').Value :=
            memWorkTotal.FieldByName('HOUR_TIME_' + IntToStr(i)).Value;
          qryInsertEmpWorkTotal.ParamByName('WORK_TIME').Value :=
            memWorkTotal.FieldByName('WORK_TIME_' + IntToStr(i)).Value;

          dmMain.ExecuteSQL(qryInsertEmpWorkTotal);
          if not (memWorkTotal.State in [dsEdit]) then
            memWorkTotal.Edit;
          memWorkTotal.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
          memWorkTotal.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Value :=
            memWorkTotal.FieldByName('WHT_NO_' + IntToStr(i)).Value;
        except
          ok := false;
        end

        else
          if (memWorkTotal.FieldByName('WHT_NO_' + IntToStr(i)).IsNull)
          then
        try
          qryDeleteEmpWorkTotal.ParamByName('WORK_DATE').Value := cur_date;
          qryDeleteEmpWorkTotal.ParamByName('WHT_NO').Value :=
            memWorkTotal.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Value;

          dmMain.ExecuteSQL(qryDeleteEmpWorkTotal);
          if not (memWorkTotal.State in [dsEdit]) then
            memWorkTotal.Edit;
          memWorkTotal.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
          memWorkTotal.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Clear;

        except
          ok := false;
        end
        else
        try // da co du lieu : update du lieu moi
          qryUpdateEmpWorkTotal.ParamByName('WORK_DATE').Value := cur_date;
          qryUpdateEmpWorkTotal.ParamByName('WHT_NO').Value :=
            memWorkTotal.FieldByName('WHT_NO_' + IntToStr(i)).Value;
          qryUpdateEmpWorkTotal.ParamByName('OLD_WHT_NO').Value :=
            memWorkTotal.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Value;
          qryUpdateEmpWorkTotal.ParamByName('HOUR_TIME').Value :=
            memWorkTotal.FieldByName('HOUR_TIME_' + IntToStr(i)).Value;
          qryUpdateEmpWorkTotal.ParamByName('WORK_TIME').Value :=
            memWorkTotal.FieldByName('WORK_TIME_' + IntToStr(i)).Value;

          dmMain.ExecuteSQL(qryUpdateEmpWorkTotal);
          if not (memWorkTotal.State in [dsEdit]) then
            memWorkTotal.Edit;
          memWorkTotal.FieldByName('CHANGE_' + IntToStr(i)).Value := 0;
          memWorkTotal.FieldByName('ORG_WHT_NO_' + IntToStr(i)).Value :=
            memWorkTotal.FieldByName('WHT_NO_' + IntToStr(i)).Value;
        except
          ok := false;
        end;
      end;
    end;
    if (memWorkTotal.State in [dsEdit]) then
      memWorkTotal.Post;
    memWorkTotal.Next;
    frmMain.BarPrgStepIt;
  end;
  memWorkTotal_is_change := false;
  memWorkTotal.GotoBookmark(bookmark);
  memWorkTotal.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
end;

procedure TfrmWorkTimeManager.UpdateWorkDay;
var
  i: integer;
  cur_date: TDate;
  ok: boolean;
  bookmark: TBookmark;
begin
  //
  if memWorkDay.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if memWorkDay_is_change = false then exit;
  if (memWorkDay.State in [dsEdit]) then
    memWorkDay.Post;
  bookmark := memWorkDay.GetBookmark;
  memWorkDay.DisableControls;
  frmMain.SetStatusBarPrgDisplay(0, memWorkDay.RecordCount);
  memWorkDay.First;
  while not memWorkDay.Eof do
  begin
    qryUpdateEmpWorkDay.ParamByName('EMPLOYEE_NO').Value :=
      memWorkDayEMPLOYEE_NO.Value;
    for i := memWorkDay.FieldCount - 1 downto memWorkDay.FieldCount - 31 do
      if memWorkDay.Fields[i].Value = 1 then
      begin
        cur_date := EncodeDate(dxInYear.IntValue, StrToInt(dxInMonth.Text),
          GetDayInMonth(memWorkDay.Fields[i].FieldName));
        qryUpdateEmpWorkDay.ParamByName('WORK_DATE').Value := cur_date;
        qryUpdateEmpWorkDay.ParamByName('WDT_NO').Value :=
          memWorkDay.FieldByName('WDT_NO_' +
          IntToStr(GetDayInMonth(memWorkDay.Fields[i].FieldName))).Value;
        try
          dmMain.ExecuteSQL(qryUpdateEmpWorkDay);
          if not (memWorkDay.State in [dsEdit]) then
            memWorkDay.Edit;
          memWorkDay.Fields[i].Value := 0;
        except
          ok := false;
        end;
      end;
    if (memWorkDay.State in [dsEdit]) then
      memWorkDay.Post;
    memWorkDay.Next;
    frmMain.BarPrgStepIt;
  end;
  memworkday_is_change := false;
  memWorkDay.GotoBookmark(bookmark);
  memWorkDay.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
end;

procedure TfrmWorkTimeManager.UpdateWorkMonth;
var
  i, record_count: integer;
  cur_date: TDate;
  ok: boolean;
  bookmark: TBookmark;
  cur_field: string;
begin
  //
  if memWorkMonth.RecordCount = 0 then exit;
  dmMain.RollbackTransaction;
  ok := true;
  if memWorkMonth_is_change = false then exit;
  if (memWorkMonth.State in [dsEdit]) then
    memWorkMonth.Post;
  bookmark := memWorkMonth.GetBookmark;
  memWorkMonth.DisableControls;
  record_count := memWorkDay.RecordCount;
  if record_count > 0 then
    frmMain.SetStatusBarPrgDisplay(0, Record_Count);
  memWorkMonth.First;
  qryUpdateEmpWorkMonth.ParamByName('IN_MONTH').Value :=
    StrToInt(dxInMonth.Text);
  qryUpdateEmpWorkMonth.ParamByName('IN_YEAR').Value := dxInYear.IntValue;

  while not memWorkMonth.Eof do
  begin
    qryUpdateEmpWorkMonth.ParamByName('EMPLOYEE_NO').Value :=
      memWorkMonthEMPLOYEE_NO.Value;
    qryUpdateEmpWorkMonth.ParamByName('DEPT_NO').Value :=
      memWorkMonthDEPT_NO.Value;
    qryUpdateEmpWorkMonth.ParamByName('TITLE_NO').Value :=
      memWorkMonthTITLE_NO.Value;
 //   qryUpdateEmpWorkMonth.ParamByName('WM_ID').Value :=
 //     memWorkMonth.WM_ID.Value;

    i := df_memWorkMonth_FieldCount;
    while i < memWorkMonth.FieldCount do
    begin
      cur_field := memWorkMonth.Fields[i].FieldName;
      qryUpdateEmpWorkMonth.ParamByName('WHT_NO').Value := cur_field;

      qryUpdateEmpWorkMonth.ParamByName('TOTAL_DAY').Value :=
        memWorkMonth.FieldByname(cur_field + '_DAY').Value;
      qryUpdateEmpWorkMonth.ParamByName('TOTAL_TIME').Value :=
        memWorkMonth.FieldByname(cur_field + '_TIME').Value;
      try
        dmMain.ExecuteSQL(qryUpdateEmpWorkMonth);
        if not (memWorkMonth.State in [dsEdit]) then
          memWorkMonth.Edit;
        memWorkMonth.FieldByName(cur_field + '_DAY_OLD').Value :=
          memWorkMonth.FieldByName(cur_field + '_DAY').Value;
        memWorkMonth.FieldByName(cur_field + '_DAY_TMP').Value :=
          memWorkMonth.FieldByName(cur_field + '_DAY').Value;
        memWorkMonth.FieldByName(cur_field + '_TIME_OLD').Value :=
          memWorkMonth.FieldByName(cur_field + '_TIME').Value;
        memWorkMonth.FieldByName(cur_field + '_TIME_TMP').Value :=
          memWorkMonth.FieldByName(cur_field + '_TIME').Value;
      except
        ok := false;
      end;
      i := i + 7
    end;
    if (memWorkMonth.State in [dsEdit]) then
      memWorkMonth.Post;
    memWorkMonth.Next;
    if record_count > 0 then
      frmMain.BarPrgStepIt;
  end;
  memWorkMonth_is_change := false;
  memWorkMonth.GotoBookmark(bookmark);
  memWorkMonth.EnableControls;
  if ok then
    dmmain.CommitTransaction
  else
    dmMain.RollbackTransaction;
  //InitMemWorkMonth;  
end;

procedure TfrmWorkTimeManager.acUpdateAllExecute(Sender: TObject);
begin
  inherited;
  if pageRightSide.ActivePage = tabWorkDay then
    // update du lieu cham cong ngay
    UpdateWorkDay
  else
    if pageRightSide.ActivePage = tabWorkTime then
    //update du lieu cham cong gio
    UpdateWorkTime
  else
    if pageRightSide.ActivePage = tabWorkMonth then
    //update du lieu cham cong thang
    UpdateWorkMonth
  else
    if pageRightSide.ActivePage = tabWorkTotalTime then
    //update du lieu cham cong gio
    UpdateWorkTotal;

end;

procedure TfrmWorkTimeManager.gridWorkDayCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if (AColumn is TdxDBGridPopupColumn) then
    begin
      if chkWorkDayViewColor.Checked then
      begin
        AColor := StrToIntDef(VarToStr(ANode.Values[AColumn.Index + 31]),
          Integer(clWhite));
      end
      else
        AColor := clWhite;
      if AColumn.Tag = 7 then
      begin
        AFont.Color := clRed;
      end;
    end;
  except
  end
end;

procedure TfrmWorkTimeManager.chkWorkDayViewColorChange(Sender: TObject);
begin
  inherited;
  gridWorkDay.Repaint;
end;

procedure TfrmWorkTimeManager.dxWorkDayViewOptionChange(Sender: TObject);
begin
  inherited;
  if is_init_form = false then
    InitColumnCaptionsForWorkDay;
end;

procedure TfrmWorkTimeManager.gridWorkDayCustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  inherited;
  if AColumn.Tag = 7 then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clRed;
  end;
end;

procedure TfrmWorkTimeManager.chkShowEndDateChange(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i := 0 to gridWorkTime.ColumnCount - 1 do
  begin
    if Pos('END_DATE_', gridWorkTime.Columns[i].FieldName) = 1 then
      gridWorkTime.Columns[i].Visible := chkShowEndDate.Checked;
    {Phuc add}
    if Pos('START_DATE_', gridWorkTime.Columns[i].FieldName) = 1 then
      gridWorkTime.Columns[i].Visible := chkShowEndDate.Checked;
    {}
  end;
end;

procedure TfrmWorkTimeManager.memWorkTimeTOTAL_TIMEChange(Sender: TField);
begin
  inherited;
  memWorkTimeEMP_FULL_INFO.Value :=
    memWorkTimeEMPLOYEE_NO.Value + '-' + memWorkTimeFULL_NAME.Value + ' (' +
    qryEmpListForTimeTITLE_NAME.Value
    + ') ' +
    '[ ' + memWorkTimeTOTAL_TIME.AsString + ' ]';

end;

procedure TfrmWorkTimeManager.gridWorkTimeSTTCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  AText := IntToStr(ANode.Index + 1);
end;

procedure TfrmWorkTimeManager.memWorkTimeNewRecord(DataSet: TDataSet);
begin
  inherited;
  memWorkTimeEMPLOYEE_NO.Value := EMPLOYEE_NO;
  memWorkTimeTITLE_NO.Value := TITLE_NO;
  {
    if is_init_data = false then
    begin
      memWorkTimeFULL_NAME.Value := FULL_NAME;
      memWorkTimeTITLE_NAME.Value := TITLE_NAME;
      memWorkTimeTOTAL_TIME.Value := 0;
    end;
   }
end;

procedure TfrmWorkTimeManager.memWorkTimeBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if is_init_data = false then
  begin
    EMPLOYEE_NO := memWorkTimeEMPLOYEE_NO.Value;
    TITLE_NO := memWorkTimeTITLE_NO.Value;
    FULL_NAME := memWorkTimeFULL_NAME.Value;
    TITLE_NAME := memWorkTimeTITLE_NAME.Value;
  end;
  if not memWorkTime.Eof then
    memWorkTime.Next;
end;

procedure TfrmWorkTimeManager.gridWorkTimeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  col: TdxTreeListColumn;
  col_blank_time: TdxTreeListColumn;
  underline, instead :boolean;
  index: string;
begin
  inherited;
  try
    if (AColumn is TdxDBGridPopupColumn) or
      (AColumn is TdxDBGridTimeColumn) or
      (AColumn is TdxDBGridImageColumn) or
      (AColumn is TdxDBGridCalcColumn) then
    begin
      if (AColumn is TdxDBGridPopupColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridPopupColumn).FieldName))
      else
        if (AColumn is TdxDBGridTimeColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridTimeColumn).FieldName))
      else
        if (AColumn is TdxDBGridImageColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridImageColumn).FieldName))
      else
        if (AColumn is TdxDBGridCalcColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridCalcColumn).FieldName))
      else
        if (AColumn is TdxDBGridColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridColumn).FieldName));

      col := gridWorkTime.ColumnByName('gridWordTimeCOLOR_' + index);
      if chkWorkTimeViewColor.Checked then
      begin
        //ACanvas.TextFlags := ETO_NUMERICSLOCAL ; {Phuc add}
        AColor := StrToIntDef(VarToStr(ANode.Values[col.Index]),
          Integer(clWhite));
        if AColor = 0 then AColor := clWhite;
      end
      else
        AColor := clWhite;

      col_blank_time := gridWorkTime.ColumnByName('gridWordTimeBLANK_TIME_' + index);
      if ANode.Values[col_blank_time.Index] = 1 then
        underline := true
      else
        underline := false;

      instead := false;
      if not VarIsNull(ANode.Values[gridWorkTime.ColumnByName('gridWordTimeFOR_EMP_NO_' + index).Index]) then
        if (AColumn is TdxDBGridPopupColumn) then
        begin
          if sysConfig.Language = 2 then
            AText := AText + Utf8Decode('  [Instead]')
          else
            AText := AText + Utf8Decode('  [Trực thay]');
          instead := true;
        end;
      if (not VarIsNull(ANode.Values[gridWorkTime.ColumnByName('gridWordTimeWHT_NAME_' + index).Index])) and
         (instead = true)  then
      begin
        (AColumn as TdxDBGridPopupColumn).Tag := 3;
      end;  
      //////////////////////////////////////////
      if (AColumn is TdxDBGridTimeColumn) then
      begin
        if Pos('START_TIME_', (AColumn as TdxDBGridTimeColumn).FieldName) = 1
          then
        begin
          AFont.Color := ebGiovao.Color;
          if chkGiovaoBold.Checked then
            AFont.Style := AFont.Style + [fsBold]
          else
            AFont.Style := AFont.Style - [fsBold];
          if chkGiovaoItalic.Checked then
            AFont.Style := AFont.Style + [fsItalic]
          else
            AFont.Style := AFont.Style - [fsItalic];

          if underline then
            AFont.Style := AFont.Style + [fsUnderline]
          else
            AFont.Style := AFont.Style - [fsUnderline];
        end
        else
          if Pos('END_TIME_', (AColumn as TdxDBGridTimeColumn).FieldName) = 1
          then
        begin
          AFont.Color := ebGiora.Color;
          if chkGioraBold.Checked then
            AFont.Style := AFont.Style + [fsBold]
          else
            AFont.Style := AFont.Style - [fsBold];
          if chkGioraItalic.Checked then
            AFont.Style := AFont.Style + [fsItalic]
          else
            AFont.Style := AFont.Style - [fsItalic];

          if underline then
            AFont.Style := AFont.Style + [fsUnderline]
          else
            AFont.Style := AFont.Style - [fsUnderline];
        end;
      end;
      if (AColumn is TdxDBGridCalcColumn) then
        if Pos('TOTAL_TIME_', (AColumn as TdxDBGridCalcColumn).FieldName) = 1
          then
        begin
          AFont.Color := ebGiora.Color;
          if chkGioraBold.Checked then
            AFont.Style := AFont.Style + [fsBold]
          else
            AFont.Style := AFont.Style - [fsBold];
          if chkGioraItalic.Checked then
            AFont.Style := AFont.Style + [fsItalic]
          else
            AFont.Style := AFont.Style - [fsItalic];

          if underline then
            AFont.Style := AFont.Style + [fsUnderline]
          else
            AFont.Style := AFont.Style - [fsUnderline];
        end;
    end;
  except
  end;

end;

procedure TfrmWorkTimeManager.pageRightSideChange(Sender: TObject);
begin
  inherited;
  if is_init_form then exit;
  if pageRightSide.ActivePage = tabWorkDay then
  begin
    if cur_dept_workday <> qryOrgMapDEPT_NO.Value then
    begin
      InitMemWorkDay;
    end;
  end
  else
    if pageRightSide.ActivePage = tabWorkTime then
  begin
    InitColumnCaptionsForWorkTime;
    if cur_dept_worktime <> qryOrgMapDEPT_NO.Value then
    begin
      InitMemWorkTime;
    end;
  end
  else
    if pageRightSide.ActivePage = tabWorkMonth then
  begin
    if cur_dept_workmonth <> qryOrgMapDEPT_NO.Value then
    begin
      InitMemWorkMonth;
    end;
  end

end;

procedure TfrmWorkTimeManager.pageRightSideChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if is_init_form then exit;
  if pageRightSide.ActivePage = tabWorkDay then
  begin
    if memWorkDay_is_change then UpdateWorkDay;
  end
  else
    if pageRightSide.ActivePage = tabWorkTime then
  begin
    if memWorkTime_is_change then UpdateWorkTime;
  end;
end;

procedure TfrmWorkTimeManager.chkWorkTimeViewColorChange(Sender: TObject);
begin
  inherited;
  gridWorkTime.Repaint;
end;

procedure TfrmWorkTimeManager.dxCurWeekChange(Sender: TObject);
begin
  inherited;
  if is_init_form = false then
  begin
    InitColumnCaptionsForWorkTime;
    InitMemWorkTime;
  end;
end;

procedure TfrmWorkTimeManager.chkViewTypeChange(Sender: TObject);
var
  i: integer;
begin
  inherited;
  if chkViewType.Checked then
    gridWorkTime.HeaderPanelRowCount := 2
  else
    gridWorkTime.HeaderPanelRowCount := 1;
  for i := 0 to gridWorkTime.ColumnCount - 1 do
  begin
    if Pos('WHT_NAME_', gridWorkTime.Columns[i].FieldName) = 1 then
    begin
      gridWorkTime.Columns[i].Visible := chkViewType.Checked;
      if chkViewType.Checked then
        gridWorkTime.Columns[i].RowIndex := 1;
    end;
  end;

end;

procedure TfrmWorkTimeManager.gridWorkTimeCustomDrawBand(Sender: TObject;
  ABand: TdxTreeListBand; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ABand.Index = cur_Sunday then
  begin
    Afont.Color := clRed;
  end
  else
  begin
    Afont.Color := clBlack;
  end;
end;

procedure TfrmWorkTimeManager.gridWorkTimeFULL_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if Length(AText) = 0 then
    AColor := clWhite;
end;

procedure TfrmWorkTimeManager.chkExtraOptionChange(Sender: TObject);
begin
  inherited;
  dxlcGroupExtraOption.Visible := chkExtraOption.Checked;
end;

procedure TfrmWorkTimeManager.ebGiovaoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dlgColor.Color := ebGiovao.Color;
  if dlgColor.Execute then
  begin
    ebGiovao.Color := dlgColor.Color;
    gridWorkTime.Repaint;
  end;
end;

procedure TfrmWorkTimeManager.ebGioraButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  dlgColor.Color := ebGiora.Color;
  if dlgColor.Execute then
  begin
    ebGiora.Color := dlgColor.Color;
    gridWorkTime.Repaint;
  end;
end;

procedure TfrmWorkTimeManager.gridWorkTimeTITLE_NAMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if Length(AText) = 0 then
    AColor := clWhite;
end;

procedure TfrmWorkTimeManager.gridWorkTimeTOTAL_TIMECustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if Length(AText) = 0 then
    AColor := clWhite;
end;

procedure TfrmWorkTimeManager.acNhapnhanhNgaycongExecute(Sender: TObject);
var
  form: TfrmToolForWorkDay;
begin
  inherited;
  if memWorkDay_is_change then
    acUpdateAll.Execute;
  form := TfrmToolForWorkDay.Create(self);
  try
    form.dxInMonth.Text := self.dxInMonth.Text;
    form.dxInYear.IntValue := self.dxInYear.IntValue;
    form.acTaoDSNgay.Execute;
    form.ShowMOdal;
  finally
    form.Free;
    InitMemWorkDay;
  end;

end;

procedure TfrmWorkTimeManager.acNhapNhanhGiocongExecute(Sender: TObject);
var
  form: TfrmToolForWorkTime;
begin
  inherited;
  if memWorkTime_is_change then
    acUpdateAll.Execute;
  form := TfrmToolForWorkTime.Create(self);
  try
    form.dxInMonth.Text := self.dxInMonth.Text;
    form.dxInYear.IntValue := self.dxInYear.IntValue;
    {Phuc add}
    form.dxToMonth.Text := self.dxInMonth.Text;
    form.dxToYear.IntValue := self.dxInYear.IntValue;
    {}
    form.acLoadData.Execute;
    form.ShowModal;
  finally
    form.Free;
    InitMemWorkTime;
  end;

end;

procedure TfrmWorkTimeManager.acPhatsinhNgaychamcongExecute(
  Sender: TObject);
begin
  inherited;
  with TfrmGenerateWorkDateTime.Create(self) do
  try
    DEPT_NO := qryOrgMapDEPT_NO.Value;
    dxppSelectDept.Text := qryOrgMapDEPT_NAME.Value;
    chkChamngay.Checked := true;
    dateTungay.Date := StartOfAMonth(dxInYear.IntValue,
      StrToInt(dxInMonth.Text));
    dateDenngay.Date := EndOfAMonth(dxInYear.IntValue,
      StrToInt(dxInMonth.Text));
    imTuthang.Text := dxInMonth.Text;
    spTunam.IntValue := dxInYear.IntValue;
    imDenthang.Text := dxInMonth.Text;
    spDennam.IntValue := dxInYear.IntValue;
    if ShowModal = mrOk then
      InitMemWorkDay;
  finally
    Free;
  end;

end;

procedure TfrmWorkTimeManager.acPhatsinhGiochamcongExecute(
  Sender: TObject);
begin
  inherited;
  with TfrmGenerateWorkDateTime.Create(self) do
  try
    DEPT_NO := qryOrgMapDEPT_NO.Value;
    dxppSelectDept.Text := qryOrgMapDEPT_NAME.Value;
    //chkChamgio.Checked := true; {Phuc rao}
    {Phuc add}
    if dxoption.Text = 'DAY' then
      chkChamngay.Checked := true
    else
    if dxoption.Text = 'TIME' then
      chkChamgio.Checked := true
    else
    if dxoption.Text = 'TOTAL' then
      chkChamtonggio.Checked := true;
    {}
    dateTungay.Date := StartOfAMonth(dxInYear.IntValue,
    StrToInt(dxInMonth.Text));
    dateDenngay.Date := EndOfAMonth(dxInYear.IntValue,
    StrToInt(dxInMonth.Text));
    imTuthang.Text := dxInMonth.Text;
    spTunam.IntValue := dxInYear.IntValue;
    imDenthang.Text := dxInMonth.Text;
    spDennam.IntValue := dxInYear.IntValue;
    if ShowModal = mrOk then
    begin
      InitMemWorkTime;
    end;
  finally
    Free;
  end;

end;

procedure TfrmWorkTimeManager.acXuliDulieuChamcongExecute(Sender: TObject);
var
  from_date, to_date: TDate;
  cur_week, i, thu: integer;
  refreshed : boolean;
begin
  inherited;
  if memWorkTime_is_change then
    acUpdateAll.Execute;
  if dxCurWeek.IntValue > dxCurWeek.MaxValue then
    dxCurWeek.Value := dxCurWeek.MaxValue;
  cur_week := dxCurWeek.IntValue;

  from_date := GetStartOfWeek(cur_week, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);
  to_date := GetEndOfWeek(cur_week, StrToInt(dxInMonth.Text),
    dxInYear.IntValue);

  frmWorkTimeProcess := TfrmWorkTimeProcess.Create(self, qryOrgMapDEPT_NO.Value, qryOrgMapDEPT_NAME.Value, from_date, to_date);
  try
    frmWorkTimeProcess.ShowModal;
    refreshed := frmWorkTimeProcess.GetStatusFinish;
  finally
    frmWorkTimeProcess.Free;
  end;

  if refreshed then
    InitMemWorkTime;
end;

procedure TfrmWorkTimeManager.gridWorkMonthCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  try
    if AColumn.Tag = -1 then exit;
    if chkWorkMonthViewColor.Checked then
    begin
      AColor := AColumn.Tag
    end
    else
      AColor := clWhite;
  except
  end
end;

procedure TfrmWorkTimeManager.acCapnhatLuoiExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  InitMemWorkMonthFields;
  //init data
  qryInitWorkMonth.ParamByName('USER_NAME').Value := sysConfig.User;
  qryInitWorkMonth.ParamByName('DEPT_NO').Value :=
    qryOrgMapDEPT_NO.Value;
  qryInitWorkMonth.ParamByName('IN_MONTH').Value := dxInMonth.Text;
  qryInitWorkMonth.ParamByName('IN_YEAR').Value := dxInYear.IntValue;
  dmMain.ExecuteSQL(qryInitWorkMonth);
  //
  InitMemWorkMonth;
  Screen.Cursor := crDefault;
end;

procedure TfrmWorkTimeManager.chkWorkMonthViewColorChange(Sender: TObject);
begin
  inherited;
  gridWorkMonth.Repaint;
end;

procedure TfrmWorkTimeManager.memWorkMonthTOTAL_TIMEChange(Sender: TField);
var
  time_value: double;
  day_value: integer;
begin
  time_value := sender.AsFloat;
  if (time_value >= df_hour_in_day) or (time_value < 0) then
  begin
    day_value := Floor(time_value / df_hour_in_day);
    time_value := time_value - day_value * df_hour_in_day;
    memWorkMonthTOTAL_DAY.Value := memWorkMonthTOTAL_DAY.Value + day_value;
    memWorkMonthTOTAL_TIME.Value := time_value;
  end
end;

procedure TfrmWorkTimeManager.acWorkTimeDeleteExecute(Sender: TObject);
var fieldname: string;
  id: string;
begin
  inherited;
  fieldname := gridWorkTime.FocusedField.FieldName;
  if Pos('WHT_NAME_', fieldname) = 1 then
    id := Copy(fieldname, 10, Length(fieldname) - 9)
  else
    if Pos('START_TIME_', fieldname) = 1 then
    id := Copy(fieldname, 12, Length(fieldname) - 11)
  else
    if Pos('END_TIME_', fieldname) = 1 then
    id := Copy(fieldname, 10, Length(fieldname) - 9)
  else
    if Pos('END_DATE_', fieldname) = 1 then
    id := Copy(fieldname, 10, Length(fieldname) - 9)
  else
    if Pos('START_DATE_', fieldname) = 1 then {Phuc add}
    id := Copy(fieldname, 12, Length(fieldname) - 11) {Phuc add}
  else
    if Pos('TOTAL_TIME_', fieldname) = 1 then
    id := Copy(fieldname, 12, Length(fieldname) - 11);

  if not (memWorkTime.State in [dsInsert, dsEdit]) then
    memWorkTime.Edit;
  memWorkTime.FieldByName('WHT_NAME_' + id).Clear;
  memWorkTime.FieldByName('START_TIME_' + id).Clear;
  memWorkTime.FieldByName('END_TIME_' + id).Clear;
  memWorkTime.FieldByName('END_DATE_' + id).Clear;
  memWorkTime.FieldByName('START_DATE_' + id).Clear; {Phuc add}
  memWorkTime.FieldByName('COLOR_' + id).Clear;
  memWorkTime.FieldByName('TOTAL_TIME_' + id).Clear; {Phuc add}
  memWorkTime.FieldByName('BLANK_TIME_' + id).Clear; {Phuc add}
  memWorkTime.FieldByName('FOR_EMP_NO_' + id).Clear; {Phuc add}
end;

procedure TfrmWorkTimeManager.acWorkTimeDeleteUpdate(Sender: TObject);
begin
  inherited;
  acWorkTimeDelete.Enabled :=
    (gridWorkTime.VisibleColumns[gridWorkTime.FocusedColumn].BandIndex > 0)
    { is TdxDBGridPopupColumn)or
(gridWorkTime.Columns[gridWorkTime.FocusedColumn] is TdxDBGridTimeColumn)or
(gridWorkTime.Columns[gridWorkTime.FocusedColumn] is TdxDBGridImageColumn);}
end;

procedure TfrmWorkTimeManager.ElPopupButton10Click(Sender: TObject);
begin
  inherited;
  if memWorkTime.RecNo = memWorkTime.RecordCount then
    memWorkTIme.Append
  else
    memWorkTIme.Insert;
end;

procedure TfrmWorkTimeManager.memWorkTotalBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if is_init_data = false then
  begin
    EMPLOYEE_NO := memWorkTotalEMPLOYEE_NO.Value;
    FULL_NAME := memWorkTotalFULL_NAME.Value;
    TITLE_NAME := memWorkTotalTITLE_NAME.Value;
  end;
  if not memWorkTotal.Eof then
    memWorkTotal.Next;
end;

procedure TfrmWorkTimeManager.memWorkTotalNewRecord(DataSet: TDataSet);
begin
  inherited;
  memWorkTotalEMPLOYEE_NO.Value := EMPLOYEE_NO;
end;

procedure TfrmWorkTimeManager.memWorkTotalTOTAL_TIMEChange(Sender: TField);
begin
  inherited;
  memWorkTotalEMP_FULL_INFO.Value :=
    memWorkTotalEMPLOYEE_NO.Value + '-' + memWorkTotalFULL_NAME.Value + ' (' +
    qryEmpForTotalTITLE_NAME.Value
    + ') ' +
    '[ ' + memWorkTotalTOTAL_TIME.AsString + ' ]';

end;

procedure TfrmWorkTimeManager.gridWorkTotalTimeCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  col: TdxTreeListColumn;
  index: string;
begin
  inherited;
  try
    if (AColumn is TdxDBGridPopupColumn) or
      (AColumn is TdxDBGridTimeColumn) or
      (AColumn is TdxDBGridCalcColumn)
      then
    begin
      if (AColumn is TdxDBGridPopupColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridPopupColumn).FieldName))
      else
        if (AColumn is TdxDBGridTimeColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridTimeColumn).FieldName))
      else
        if (AColumn is TdxDBGridCalcColumn) then
        index := IntToStr(GetDayInMonth((AColumn as
          TdxDBGridCalcColumn).FieldName));

      col := gridWorkTotalTime.ColumnByName('gridWorkTotalTimeCOLOR_' + index);
      if chkWorkTotalViewColor.Checked then
      begin
        AColor := StrToIntDef(VarToStr(ANode.Values[col.Index]),
          Integer(clWhite));
        if AColor = 0 then AColor := clWhite;
      end
      else
        AColor := clWhite;

    end;
  except
  end
end;

procedure TfrmWorkTimeManager.acWorkTotalDeleteUpdate(Sender: TObject);
begin
  inherited;
  acWorkTotalDelete.Enabled :=
    (gridWorkTotalTime.VisibleColumns[gridWorkTotalTime.FocusedColumn].BandIndex > 0)
end;

procedure TfrmWorkTimeManager.acWorkTotalDeleteExecute(Sender: TObject);
var fieldname: string;
  id: string;
begin
  inherited;
  fieldname := gridWorkTotalTime.FocusedField.FieldName;
  if Pos('WHT_NAME_', fieldname) = 1 then
    id := Copy(fieldname, 10, Length(fieldname) - 9)
  else
    if Pos({'HOUR_TIME_'}'WORK_TIME_', fieldname) = 1 then
    id := Copy(fieldname, 11, Length(fieldname) - 10);
  //ShowMessage(fieldname);
  if not (memWorkTotal.State in [dsInsert, dsEdit]) then
    memWorkTotal.Edit;
  memWorkTotal.FieldByName('WHT_NAME_' + id).Clear;
  memWorkTotal.FieldByName('HOUR_TIME_' + id).Clear;
  memWorkTotal.FieldByName('WORK_TIME_' + id).Clear;
  memWorkTotal.FieldByName('COLOR_' + id).Clear;

end;


procedure TfrmWorkTimeManager.dxCurWeek_TChange(Sender: TObject);
begin
  inherited;
  if is_init_form = false then
  begin
    InitColumnCaptionsForWorkTotal;
    InitMemWorkTotal;
  end;
end;

procedure TfrmWorkTimeManager.acPhatsinhTonggioChamcongExecute(
  Sender: TObject);
begin
  inherited;
  with TfrmGenerateWorkDateTime.Create(self) do
  try
    DEPT_NO := qryOrgMapDEPT_NO.Value;
    dxppSelectDept.Text := qryOrgMapDEPT_NAME.Value;
    chkChamTonggio.Checked := true;
    dateTungay.Date := StartOfAMonth(dxInYear.IntValue,
      StrToInt(dxInMonth.Text));
    dateDenngay.Date := EndOfAMonth(dxInYear.IntValue,
      StrToInt(dxInMonth.Text));
    imTuthang.Text := dxInMonth.Text;
    spTunam.IntValue := dxInYear.IntValue;
    imDenthang.Text := dxInMonth.Text;
    spDennam.IntValue := dxInYear.IntValue;
    if ShowModal = mrOk then
    begin
      InitMemWorkTotal;
    end;
  finally
    Free;
  end;
end;

procedure TfrmWorkTimeManager.acNhapnhanhTonggiocongExecute(
  Sender: TObject);
var
  form: TfrmToolForWorkTotal;
begin
  inherited;
  if memWorkTotal_is_change then
    acUpdateAll.Execute;
  form := TfrmToolForWorkTotal.Create(self);
  try
    form.dxInMonth.Text := self.dxInMonth.Text;
    form.dxInYear.IntValue := self.dxInYear.IntValue;
    form.acTaoDSNgay.Execute;
    form.acXemdulieu.Execute;
    form.ShowModal;
  finally
    form.Free;
    InitMemWorkTotal;
  end;

end;

procedure TfrmWorkTimeManager.chkWorkTotalSelectViewChange(
  Sender: TObject);
var i: integer;
begin
  inherited;
  for i := 0 to gridWorkTotalTime.ColumnCount - 1 do
  begin
    if Pos('WORK_TIME_', gridWorkTotalTime.Columns[i].FieldName) = 1 then
    begin
      gridWorkTotalTime.Columns[i].Visible := not chkWorkTotalSelectView.Checked;
    end
    else
      if Pos('HOUR_TIME_', gridWorkTotalTime.Columns[i].FieldName) = 1 then
    begin
      gridWorkTotalTime.Columns[i].Visible := chkWorkTotalSelectView.Checked;
    end
  end;
end;

procedure TfrmWorkTimeManager.acTuychonExecute(Sender: TObject);
begin
  inherited;
  ShowModalForm(TfrmWorkingConfig, frmWorkingConfig);
  UpdateView;
end;

procedure TfrmWorkTimeManager.UpdateView;
var i: integer;
begin
  tabWorkDay.Visible := (qryConfigCHAMCONG_NGAY.Value = 1);
  tabWorkTime.Visible := (qryConfigCHAMCONG_GIO.Value = 1);
  tabWorkMonth.Visible := (qryConfigCHAMCONG_THANG.Value = 1);
  tabWorkTotalTime.Visible := (qryConfigCHAMCONG_TONGGIO.Value = 1);

  tabWorkDay.TabVisible := (qryConfigCHAMCONG_NGAY.Value = 1);
  tabWorkTime.TabVisible := (qryConfigCHAMCONG_GIO.Value = 1);
  tabWorkMonth.TabVisible := (qryConfigCHAMCONG_THANG.Value = 1);
  tabWorkTotalTime.TabVisible := (qryConfigCHAMCONG_TONGGIO.Value = 1);

  if qryConfigCHAMCONG_NGAY.Value = 1 then
    pageRightSide.ActivePage := tabWorkDay
  else
    if qryConfigCHAMCONG_GIO.Value = 1 then
    pageRightSide.ActivePage := tabWorkTime
  else
    if qryConfigCHAMCONG_THANG.Value = 1 then
    pageRightSide.ActivePage := tabWorkMonth
  else
    if qryConfigCHAMCONG_TONGGIO.Value = 1 then
    pageRightSide.ActivePage := tabWorkTotalTime
  else
end;
procedure TfrmWorkTimeManager.acKTChamCongExecute(Sender: TObject);
var
  tu_ngay, den_ngay: TDate;
begin
  inherited;
  tu_ngay := Tdate(StartOfAMonth(dxInYear.IntValue,StrToInt(dxInMonth.Text)));
  den_ngay := Tdate(EndOfAMonth(dxInYear.IntValue,StrToInt(dxInMonth.Text)));

  if qryKiemTraCC.Active then qryKiemTraCC.Close;
  qryKiemTraCC.ParamByName('NGAY_BD').Value := tu_ngay;
  qryKiemTraCC.ParamByName('NGAY_KT').Value := den_ngay;
  qryKiemTraCC.Open;

  if qryKiemTraCC.RecordCount >0 then
  begin
    frmKiemTraChamCong := TfrmKiemTraChamCong.Create(self, tu_ngay, den_ngay);
    try
      frmKiemTraChamCong.ShowModal;
    finally
      frmKiemTraChamCong.Free;
    end;
  end;

  dxCurWeekChange(sender);
end;

procedure TfrmWorkTimeManager.acTHTuCCGioExecute(Sender: TObject);
var
  tu_ngay, den_ngay: TDate;
begin
  inherited;
  tu_ngay := Tdate(StartOfAMonth(dxInYear.IntValue,StrToInt(dxInMonth.Text)));
  den_ngay := Tdate(EndOfAMonth(dxInYear.IntValue,StrToInt(dxInMonth.Text)));

  frmDocTuCCGio := TfrmDocTuCCGio.Create(self, qryOrgMapDEPT_NO.Value, qryOrgMapDEPT_NAME.Value, tu_ngay, den_ngay);
  try
      frmDocTuCCGio.ShowModal;
  finally
      frmDocTuCCGio.Free;
  end;

  dxCurWeek_TChange(sender);
end;

procedure TfrmWorkTimeManager.gridWorkTimeEnter(Sender: TObject);
begin
  inherited;
  Hide_Left_Page := true;
  Hide_Right_Page := false;
end;

procedure TfrmWorkTimeManager.InitGridWorkTimeColumns_Day_format;
var
  i: integer;
  newCol: TdxDBTreeListColumn;
  band: TdxTreeListBand;
begin
  gridWorkTime.HeaderPanelRowCount := 1;
  frmMain.SetStatusBarPrgDisplay(0, 7);
  for i := 1 to 7 do
  begin
    //khoi tao band
    band := gridWorkTime.Bands.Add;
    band.Visible := true;
    band.DisableCustomizing := true;
    band.DisableDragging := true;
    //khoi tao 2 cot start va end time
  end;
  for i := 1 to 7 do
  begin

    //khoi tao cot Loai gio cong
    newCol := gridWorkTime.CreateColumn(TdxDBGridPopupColumn);
    newCol.Name := 'gridWordTimeWHT_NAME_' + IntToStr(i);
    newCol.FieldName := 'WHT_NAME_' + IntToStr(i);
    newCol.Width := 90;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopupForTime;
    (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUpForTime;

    if sysConfig.Language = 2 then
      newcol.Caption := 'Working type'
    else
      newcol.Caption := utf8decode('Loại giờ công');
    //khoi tao cot COLOR
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeCOLOR_' + IntToStr(i);
    newCol.FieldName := 'COLOR_' + IntToStr(i);
    newCol.Width := 0;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    {Phuc add}
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeWT_ID_' + IntToStr(i);
    newCol.FieldName := 'WT_ID_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmWorkTimeManager.InitGridWorkTimeColumns_time_format;
var
  i: integer;
  newCol: TdxDBTreeListColumn;
  band: TdxTreeListBand;
begin
  frmMain.SetStatusBarPrgDisplay(0, 7);
  for i := 1 to 7 do
  begin
    //khoi tao band
    band := gridWorkTime.Bands.Add;
    band.Visible := true;
    band.DisableCustomizing := true;
    band.DisableDragging := true;
    //khoi tao 2 cot start va end time
  end;
  for i := 1 to 7 do
  begin
    newCol := gridWorkTime.CreateColumn(TdxDBGridTimeColumn);
    newCol.Name := 'gridWordTimeSTART_TIME_' + IntToStr(i);
    newCol.FieldName := 'START_TIME_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'In'
    else
      newCol.Caption := Utf8Decode('Giờ vào');
    (newCol as TdxDBGridTimeColumn).TimeEditFormat := tfHourMinSec;
    //newCol.Visible := false;  {Phuc add}

    //khoi tao cot chon ngay ket thuc (gio vao)
    newCol := gridWorkTime.CreateColumn(TdxDBGridImageColumn);
    newCol.Name := 'gridWordTimeSTART_DATE_' + IntToStr(i);
    newCol.FieldName := 'START_DATE_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.Visible := false;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridImageColumn).Values.Add('0');
    (newCol as TdxDBGridImageColumn).Values.Add('1');
    if sysConfig.Language = 2 then
    begin
      (newCol as TdxDBGridImageColumn).Descriptions.Add('today');
      (newCol as TdxDBGridImageColumn).Descriptions.Add('tomorrow');
    end
    else
    begin
      (newCol as
        TdxDBGridImageColumn).Descriptions.Add(utf8Decode('cùng ngày'));
      (newCol as TdxDBGridImageColumn).Descriptions.Add(utf8Decode('hôm sau'));
    end;
    (newCol as TdxDBGridImageColumn).ShowDescription := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Quit date'
    else
      newCol.Caption := Utf8Decode('Ngày ra');

    newCol := gridWorkTime.CreateColumn(TdxDBGridTimeColumn);
    newCol.Name := 'gridWordTimeEND_TIME_' + IntToStr(i);
    newCol.FieldName := 'END_TIME_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Out'
    else
      newCol.Caption := Utf8Decode('Giờ ra');
    (newCol as TdxDBGridTimeColumn).TimeEditFormat := tfHourMinSec;
    //newCol.Visible := false;  {Phuc add}

    //khoi tao cot chon ngay ket thuc
    newCol := gridWorkTime.CreateColumn(TdxDBGridImageColumn);
    newCol.Name := 'gridWordTimeEND_DATE_' + IntToStr(i);
    newCol.FieldName := 'END_DATE_' + IntToStr(i);
    newCol.Width := 70;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.Visible := false;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridImageColumn).Values.Add('0');
    (newCol as TdxDBGridImageColumn).Values.Add('1');
    if sysConfig.Language = 2 then
    begin
      (newCol as TdxDBGridImageColumn).Descriptions.Add('today');
      (newCol as TdxDBGridImageColumn).Descriptions.Add('tomorrow');
    end
    else
    begin
      (newCol as
        TdxDBGridImageColumn).Descriptions.Add(utf8Decode('cùng ngày'));
      (newCol as TdxDBGridImageColumn).Descriptions.Add(utf8Decode('hôm sau'));
    end;
    (newCol as TdxDBGridImageColumn).ShowDescription := true;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Quit date'
    else
      newCol.Caption := Utf8Decode('Ngày ra');

    //khoi tao cot Loai gio cong
    newCol := gridWorkTime.CreateColumn(TdxDBGridPopupColumn);
    newCol.Name := 'gridWordTimeWHT_NAME_' + IntToStr(i);
    newCol.FieldName := 'WHT_NAME_' + IntToStr(i);
    newCol.Width := 80;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopupForTime;
    (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUpForTime;

    if sysConfig.Language = 2 then
      newcol.Caption := 'Working type'
    else
      newcol.Caption := utf8decode('Loại giờ công');
    //khoi tao cot COLOR
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeCOLOR_' + IntToStr(i);
    newCol.FieldName := 'COLOR_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    {Phuc add}
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeWT_ID_' + IntToStr(i);
    newCol.FieldName := 'WT_ID_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    
    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmWorkTimeManager.InitGridWorkTimeColumns_total_format;
var
  i: integer;
  newCol: TdxDBTreeListColumn;
  band: TdxTreeListBand;
begin
  frmMain.SetStatusBarPrgDisplay(0, 7);
  for i := 1 to 7 do
  begin
    //khoi tao band
    band := gridWorkTime.Bands.Add;
    band.Visible := true;
    band.DisableCustomizing := true;
    band.DisableDragging := true;
    //khoi tao 2 cot start va end time
  end;
  for i := 1 to 7 do
  begin
    //khoi tao cot Loai gio cong
    newCol := gridWorkTime.CreateColumn(TdxDBGridPopupColumn);
    newCol.Name := 'gridWordTimeWHT_NAME_' + IntToStr(i);
    newCol.FieldName := 'WHT_NAME_' + IntToStr(i);
    newCol.Width := 80;
    newCol.HeaderAlignment := taCenter;
    newCol.BandIndex := i;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    (newCol as TdxDBGridPopupColumn).OnInitPopup := DefOnInitPopupForTime;
    (newCol as TdxDBGridPopupColumn).OnCloseUp := DefOnCloseUpForTime;

    if sysConfig.Language = 2 then
      newcol.Caption := 'Working type'
    else
      newcol.Caption := utf8decode('Loại giờ công');
    //khoi tao cot COLOR
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeCOLOR_' + IntToStr(i);
    newCol.FieldName := 'COLOR_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 0;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    {Phuc add}
    newCol := gridWorkTime.CreateColumn(TdxDBGridColumn);
    newCol.Name := 'gridWordTimeWT_ID_' + IntToStr(i);
    newCol.FieldName := 'WT_ID_' + IntToStr(i);
    newCol.Width := 1;
    newCol.BandIndex := i;
    newCol.RowIndex := 1;
    newCol.DisableCustomizing := true;
    newCol.Visible := false;

    newCol := gridWorkTime.CreateColumn(TdxDBGridCalcColumn);
    newCol.Name := 'gridWordTimeTOTAL_TIME_' + IntToStr(i);
    newCol.FieldName := 'TOTAL_TIME_' + IntToStr(i);
    newCol.Width := 80;
    newCol.BandIndex := i;
    newCol.RowIndex := {1}0;
    newCol.DisableCustomizing := true;
    newCol.Visible := true;
    newCol.HeaderAlignment := taCenter;
    newCol.Alignment := taCenter;
    if sysConfig.Language = 2 then
      newCol.Caption := 'Times'
    else
      newCol.Caption := Utf8Decode('Giờ');
    {}
    frmMain.BarPrgStepIt;
  end;
end;

procedure TfrmWorkTimeManager.dxOptionChange(Sender: TObject);
var i :integer;
    reg : TRegistry;
begin
  inherited;
  if dxOption.Text = 'DAY' then
  begin
    gridWorkTime.BandRowCount := 2;
    gridWorkTime.HeaderPanelRowCount := 1;
    for i := 0 to gridWorkTime.ColumnCount - 1 do
    begin
      if Pos('WHT_NAME_', gridWorkTime.Columns[i].FieldName) = 1 then
      begin
        gridWorkTime.Columns[i].Visible := true;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
      if (Pos('START_TIME_', gridWorkTime.Columns[i].FieldName) = 1) or
         (Pos('END_TIME_', gridWorkTime.Columns[i].FieldName) = 1) or
         (Pos('TOTAL_TIME_', gridWorkTime.Columns[i].FieldName) = 1)
      then
      begin
        gridWorkTime.Columns[i].Visible := false;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
    end;
  end;
  if dxOption.Text = 'TIME' then
  begin
    gridWorkTime.BandRowCount := 1;
    gridWorkTime.HeaderPanelRowCount := 2;
      
    for i := 0 to gridWorkTime.ColumnCount - 1 do
    begin
      if Pos('WHT_NAME_', gridWorkTime.Columns[i].FieldName) = 1 then
      begin
        gridWorkTime.Columns[i].Visible := true;
        gridWorkTime.Columns[i].RowIndex := 1;
      end;
      if (Pos('START_TIME_', gridWorkTime.Columns[i].FieldName) = 1) or
         (Pos('END_TIME_', gridWorkTime.Columns[i].FieldName) = 1)
        then
      begin
        gridWorkTime.Columns[i].Visible := true;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
      
      if Pos('TOTAL_TIME_', gridWorkTime.Columns[i].FieldName) = 1
      then
      begin
        gridWorkTime.Columns[i].Visible := false;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
    end;
  end;
  if dxOption.Text = 'TOTAL' then
  begin
    gridWorkTime.BandRowCount := 1;
    gridWorkTime.HeaderPanelRowCount := 1;
    for i := 0 to gridWorkTime.ColumnCount - 1 do
    begin
      if Pos('WHT_NAME_', gridWorkTime.Columns[i].FieldName) = 1 then
      begin
        gridWorkTime.Columns[i].Visible := true;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
      if (Pos('START_TIME_', gridWorkTime.Columns[i].FieldName) = 1) or
         (Pos('END_TIME_', gridWorkTime.Columns[i].FieldName) = 1)
        then
      begin
        gridWorkTime.Columns[i].Visible := false;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
      if Pos('TOTAL_TIME_', gridWorkTime.Columns[i].FieldName) = 1
      then
      begin
        gridWorkTime.Columns[i].Visible := true;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
    end;
  end;
  if dxOption.Text = 'ALL' then
  begin
    gridWorkTime.BandRowCount := 1;
    gridWorkTime.HeaderPanelRowCount := 2;
    for i := 0 to gridWorkTime.ColumnCount - 1 do
    begin
      if Pos('WHT_NAME_', gridWorkTime.Columns[i].FieldName) = 1 then
      begin
        gridWorkTime.Columns[i].Visible := true;
        gridWorkTime.Columns[i].RowIndex := 1;
      end;
      if (Pos('START_TIME_', gridWorkTime.Columns[i].FieldName) = 1) or
         (Pos('END_TIME_', gridWorkTime.Columns[i].FieldName) = 1) or
         (Pos('TOTAL_TIME_', gridWorkTime.Columns[i].FieldName) = 1)
      then
      begin
        gridWorkTime.Columns[i].Visible := true;
        gridWorkTime.Columns[i].RowIndex := 0;
      end;
    end;
  end;

  // Luu vao registry
  Reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey(REGISTRY_ROOT + '\Option', TRUE) then
       Reg.WriteString('CurrentWorkTime', dxOption.Text);
    finally
       reg.Free;
  end;
end;

procedure TfrmWorkTimeManager.gridWorkTimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Shift = [ssCtrl] then
    Ctrl_press := true
  else
    Ctrl_press := false;
end;

procedure TfrmWorkTimeManager.gridWorkTimeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Ctrl_press := false;
end;

procedure TfrmWorkTimeManager.qryInsteadBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryInstead.ParamByName('USER_NAME').Value := sysConfig.User;
  qryInstead.ParamByName('FROM_DATE').Value :=
     GetStartOfWeek(dxCurWeek.IntValue, StrToInt(dxInMonth.Text),
        dxInYear.IntValue);
 // qryInstead.ParamByName('FOR_EMP_NO').Value :=
end;

procedure TfrmWorkTimeManager.qryInsteadDetailBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  qryInsteadDetail.ParamByName('FROM_DATE').Value :=
     GetStartOfWeek(dxCurWeek.IntValue, StrToInt(dxInMonth.Text),
        dxInYear.IntValue);
  qryInsteadDetail.ParamByName('TO_DATE').Value :=
     GetEndOfWeek(dxCurWeek.IntValue, StrToInt(dxInMonth.Text),
        dxInYear.IntValue);
end;

procedure TfrmWorkTimeManager.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var yes_no : integer;
begin
  inherited;
  if memWorkTime_is_change then
  begin
    yes_no := ShowMessageUnicode(201);
    if (yes_no = mrYes) then
      acUpdateAll.Execute
    else
    if (yes_no = mrCancel) then
      CanClose := false;  
  end;
end;

end.


