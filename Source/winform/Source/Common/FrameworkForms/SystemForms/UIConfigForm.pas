unit UIConfigForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ExtCtrls,
  ElPanel, ElSideBar, dxsbar, ImgList, ElPgCtl, dxLayoutControl, cxControls,
  dxExEdtr, dxCntner, dxInspct, dxDBInsp, ElBtnCtl, ElPopBtn, dxEditor,
  dxEdLib, ActnList, dxLayoutLookAndFeels, StdCtrls, ElCLabel, ElLabel,
  IBODataset, DB, dxmdaset, dxInspRw, dxDBInRw, dxDBELib, dxTL, dxDBCtrl,
  dxDBGrid, ElSplit, dxDBTL, Registry,MainDM;
const
  maxTestData = 10;
  REGISTRY_FOLDER=REGISTRY_ROOT;
  REG_PATH = REGISTRY_FOLDER+'\UIConfig\';
type
  TfrmUIConfig = class(TfrmBase)
    dxMainSidebar: TdxSideBar;
    ImageList1: TImageList;
    pageMain: TElPageControl;
    tabLookAndFeel: TElTabSheet;
    tabDataGrid: TElTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxinsLookAndFeel: TdxDBInspector;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ElPopupButton2: TElPopupButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ActionList1: TActionList;
    acApdung_LAF: TAction;
    acDong_LAF: TAction;
    lafList: TdxLayoutLookAndFeelList;
    dsLookAndFeel: TDataSource;
    memLookAndFeel: TdxMemData;
    dsLAFList: TDataSource;
    qryLAFList: TIBOQuery;
    qryLookAndFeel: TIBOQuery;
    dxLookAndFeel: TdxLayoutWebLookAndFeel;
    memLookAndFeelGRP_CAP_COLOR: TIntegerField;
    memLookAndFeelGRP_CAP_FONT_SIZE: TIntegerField;
    memLookAndFeelGRP_CAP_TEXT_COLOR: TIntegerField;
    memLookAndFeelGRP_COLOR: TIntegerField;
    memLookAndFeelGRP_FRAME_COLOR: TIntegerField;
    memLookAndFeelGRP_FRAME_WIDTH: TIntegerField;
    dxinsLookAndFeelRow12: TdxInspectorDBRow;
    dxinsLookAndFeelRow13: TdxInspectorDBRow;
    dxinsLookAndFeelRow14: TdxInspectorDBRow;
    dxinsLookAndFeelRow15: TdxInspectorDBRow;
    dxinsLookAndFeelGRP_CAP_TEXT_COLOR: TdxInspectorDBButtonRow;
    dxinsLookAndFeelRow16: TdxInspectorDBRow;
    memLookAndFeelGRP_CAP_FONT_STYLE_BOLD: TIntegerField;
    memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC: TIntegerField;
    dxinsLookAndFeelRow18: TdxInspectorDBRow;
    dxinsLookAndFeelGRP_CAP_FONT_SIZE: TdxInspectorDBSpinRow;
    dxinsLookAndFeelGRP_CAP_FONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinsLookAndFeelGRP_CAP_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    dxinsLookAndFeelGRP_FRAME_COLOR: TdxInspectorDBButtonRow;
    dxinsLookAndFeelGRP_FRAME_WIDTH: TdxInspectorDBSpinRow;
    dxinsLookAndFeelGRP_COLOR: TdxInspectorDBButtonRow;
    memLookAndFeelITEM_CAP_FONT_SIZE: TIntegerField;
    memLookAndFeelITEM_CAP_FONT_STYLE_BOLD: TIntegerField;
    memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC: TIntegerField;
    memLookAndFeelITEM_CAP_TEXT_COLOR: TIntegerField;
    memLookAndFeelOFS_CONTROL_OFS_H: TIntegerField;
    memLookAndFeelOFS_CONTROL_OFS_V: TIntegerField;
    memLookAndFeelOFS_ITEM_OFS: TIntegerField;
    memLookAndFeelOFS_ITEM_AREA_OFS_H: TIntegerField;
    memLookAndFeelOFS_ITEM_AREA_OFS_V: TIntegerField;
    memLookAndFeelOFS_ROOT_AREA_OFS_H: TIntegerField;
    memLookAndFeelOFS_ROOT_AREA_OFS_V: TIntegerField;
    dxinsLookAndFeelRow31: TdxInspectorDBRow;
    dxinsLookAndFeelITEM_CAP_FONT_SIZE: TdxInspectorDBSpinRow;
    dxinsLookAndFeelRow32: TdxInspectorDBRow;
    dxinsLookAndFeelITEM_CAP_FONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinsLookAndFeelITEM_CAP_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    dxinsLookAndFeelITEM_CAP_TEXT_COLOR: TdxInspectorDBButtonRow;
    dxinsLookAndFeelRow33: TdxInspectorDBRow;
    dxinsLookAndFeelRow34: TdxInspectorDBRow;
    dxinsLookAndFeelOFS_CONTROL_OFS_H: TdxInspectorDBSpinRow;
    dxinsLookAndFeelRow35: TdxInspectorDBRow;
    dxinsLookAndFeelOFS_CONTROL_OFS_V: TdxInspectorDBSpinRow;
    dxinsLookAndFeelRow36: TdxInspectorDBRow;
    dxinsLookAndFeelOFS_ITEM_OFS: TdxInspectorDBSpinRow;
    dxinsLookAndFeelOFS_ITEM_AREA_OFS_H: TdxInspectorDBSpinRow;
    dxinsLookAndFeelRow37: TdxInspectorDBRow;
    dxinsLookAndFeelOFS_ITEM_AREA_OFS_V: TdxInspectorDBSpinRow;
    dxinsLookAndFeelRow38: TdxInspectorDBRow;
    dxinsLookAndFeelOFS_ROOT_AREA_OFS_H: TdxInspectorDBSpinRow;
    ElPopupButton1: TElPopupButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    acLuumoi_LAF: TAction;
    acLoadLookAndFeel: TAction;
    qryLAFListLF_ID: TWideStringField;
    qryLAFListLF_TITLE: TWideStringField;
    qryLAFListLF_TYPE: TWideStringField;
    qryLAFListLF_SYSTEM: TSmallintField;
    qryLookAndFeelLF_ID: TWideStringField;
    qryLookAndFeelPROP_ID: TWideStringField;
    qryLookAndFeelPROP_VAL: TWideStringField;
    ElLabel1: TElLabel;
    dlgColor: TColorDialog;
    dxinsLookAndFeelGRP_CAP_COLOR: TdxInspectorDBButtonRow;
    acLoadUIControl: TAction;
    dxinsLookAndFeelGRP_OFFSET_CAP: TdxInspectorDBCheckRow;
    dxinsLookAndFeelGRP_OFFSET_ITEM: TdxInspectorDBCheckRow;
    dxlcSelectLAF: TdxDBPopupEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxlcLAFList: TdxLayoutControl;
    dxDBGrid1: TdxDBGrid;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxDBGrid1LF_ID: TdxDBGridColumn;
    dxDBGrid1LF_TITLE: TdxDBGridColumn;
    memLookAndFeelGRP_OFFSET_CAP: TIntegerField;
    memLookAndFeelGRP_OFFSET_ITEM: TIntegerField;
    dxStyleController: TdxCheckEditStyleController;
    memLookAndFeelEDGE_TOP: TIntegerField;
    memLookAndFeelEDGE_LEFT: TIntegerField;
    memLookAndFeelEDGE_RIGHT: TIntegerField;
    memLookAndFeelEDGE_BOTTOM: TIntegerField;
    memLookAndFeelBORDER_COLOR: TIntegerField;
    memLookAndFeelBORDER_STYLE: TWideStringField;
    memLookAndFeelBUTTON_STYLE: TWideStringField;
    memLookAndFeelBUTTON_TRANSPARENCE: TWideStringField;
    memLookAndFeelHOT_TRACT: TIntegerField;
    memLookAndFeelSHADOW: TIntegerField;
    dxinsLookAndFeelBORDER_STYLE: TdxInspectorDBImageRow;
    dxinsLookAndFeelBORDER_COLOR: TdxInspectorDBButtonRow;
    dxinsLookAndFeelBUTTON_STYLE: TdxInspectorDBImageRow;
    dxinsLookAndFeelBUTTON_TRANSPARENCE: TdxInspectorDBImageRow;
    dxinsLookAndFeelRow48: TdxInspectorDBRow;
    dxinsLookAndFeelEGDE_TOP: TdxInspectorDBCheckRow;
    dxinsLookAndFeelEDGE_LEFT: TdxInspectorDBCheckRow;
    dxinsLookAndFeelEDGE_RIGHT: TdxInspectorDBCheckRow;
    dxinsLookAndFeelEDGE_BOTTOM: TdxInspectorDBCheckRow;
    dxinsLookAndFeelSHADOW: TdxInspectorDBCheckRow;
    dxinsLookAndFeelHOT_TRACT: TdxInspectorDBCheckRow;
    dxLayoutControl2: TdxLayoutControl;
    dxinspGridOption: TdxDBInspector;
    ElPopupButton4: TElPopupButton;
    ElPopupButton5: TElPopupButton;
    Panel2: TPanel;
    ElPageControl1: TElPageControl;
    ElTabSheet2: TElTabSheet;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    qryDataGrid: TIBOQuery;
    qryDataGridCONTROL_TYPE: TWideStringField;
    qryDataGridPROP_ID: TWideStringField;
    qryDataGridPROP_VAL: TWideStringField;
    memDataGrid: TdxMemData;
    dsDataGrid: TDataSource;
    memDataGridARROW_COLOR: TIntegerField;
    memDataGridAUTO_SEARCH_COLOR: TIntegerField;
    memDataGridAUTO_SEARCH_TEXT_COLOR: TIntegerField;
    memDataGridBAND_COLOR: TIntegerField;
    memDataGridBAND_FONT_COLOR: TIntegerField;
    memDataGridBAND_FONT_SIZE: TIntegerField;
    memDataGridBAND_FONT_STYLE_BOLD: TIntegerField;
    memDataGridBAND_FONT_STYLE_ITALIC: TIntegerField;
    memDataGridBORDER_STYLE: TWideStringField;
    memDataGridCOLOR: TIntegerField;
    memDataGridFIXED_BAND_LINE_COLOR: TIntegerField;
    memDataGridFIXED_BAND_LINE_WIDTH: TIntegerField;
    memDataGridFONT_COLOR: TIntegerField;
    memDataGridFONT_SIZE: TIntegerField;
    memDataGridFONT_STYLE_BOLD: TIntegerField;
    memDataGridFONT_STYLE_ITALIC: TIntegerField;
    memDataGridGRID_LINE_COLOR: TIntegerField;
    memDataGridGRID_INDICATOR_WIDTH: TIntegerField;
    memDataGridGROUP_NODE_COLOR: TIntegerField;
    memDataGridGROUP_PANEL_COLOR: TIntegerField;
    memDataGridHEADER_COLOR: TIntegerField;
    memDataGridHEADER_FONT_COLOR: TIntegerField;
    memDataGridHEADER_FONT_SIZE: TIntegerField;
    memDataGridHEADER_FONT_STYLE_BOLD: TIntegerField;
    memDataGridHEADER_FONT_STYLE_ITALIC: TIntegerField;
    memDataGridLOOK_AND_FEEL: TWideStringField;
    memDataGridOPTION_BEHAVIOR_AUTO_SEARCH: TIntegerField;
    memDataGridOPTION_BEHAVIOR_ENTER_THROUGH: TIntegerField;
    memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITOR: TIntegerField;
    memDataGridOPTION_BEHAVIOR_TAB_THROUGH: TIntegerField;
    memDataGridOPTION_DB_LOAD_ALL_RECORD: TIntegerField;
    memDataGridOPTION_DB_PARTIAL_LOAD: TIntegerField;
    memDataGridOPTION_DB_SMART_REFRESH: TIntegerField;
    memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT: TIntegerField;
    memDataGridOPTION_VIEW_AUTO_WIDTH: TIntegerField;
    memDataGridOPTION_VIEW_ROW_AUTO_HEIGHT: TIntegerField;
    memDataGridSHOW_GRID: TIntegerField;
    memDataGridSHOW_HEADER: TIntegerField;
    memDataGridSHOW_NEW_ITEM_ROW: TIntegerField;
    memDataGridSHOW_ROW_FOOTER: TIntegerField;
    memDataGridSHOW_SUMMARY_FOOTER: TIntegerField;
    gridTest: TdxDBGrid;
    dsTestData: TDataSource;
    gridTestID_DATA: TdxDBGridColumn;
    gridTestDATA: TdxDBGridColumn;
    dxinspGridOptionRow47: TdxInspectorDBRow;
    dxinspGridOptionRow48: TdxInspectorDBRow;
    dxinspGridOptionRow49: TdxInspectorDBRow;
    dxinspGridOptionRow50: TdxInspectorDBRow;
    dxinspGridOptionSHOW_GRID: TdxInspectorDBCheckRow;
    dxinspGridOptionSHOW_HEADER: TdxInspectorDBCheckRow;
    dxinspGridOptionSHOW_NEW_ITEM_ROW: TdxInspectorDBCheckRow;
    dxinspGridOptionSHOW_ROW_FOOTER: TdxInspectorDBCheckRow;
    dxinspGridOptionSHOW_SUMMARY_FOOTER: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_VIEW_AUTO_WIDTH: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_VIEW_INDICATOR: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_VIEW_ROW_AUTO_HEIGHT: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_DB_LOAD_ALL_RECORD: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_DB_SMART_REFRESH: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_DB_PARTIAL_LOAD: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_BEHAVIOR_AUTO_SEARCH: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_BEHAVIOR_ENTER_THROUGH: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_BEHAVIOR_IMMEDIATE_EDITOR: TdxInspectorDBCheckRow;
    dxinspGridOptionOPTION_BEHAVIOR_TAB_THROUGH: TdxInspectorDBCheckRow;
    dxinspGridOptionLOOK_AND_FEEL: TdxInspectorDBImageRow;
    dxinspGridOptionHEADER_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionRow51: TdxInspectorDBRow;
    dxinspGridOptionHEADER_FONT_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionGROUP_PANEL_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionRow53: TdxInspectorDBRow;
    dxinspGridOptionRow54: TdxInspectorDBRow;
    dxinspGridOptionFIXED_BAND_LINE_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionFIXED_BAND_LINE_WIDTH: TdxInspectorDBSpinRow;
    dxinspGridOptionBAND_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionBAND_FONT_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionBAND_FONT_SIZE: TdxInspectorDBSpinRow;
    dxinspGridOptionBAND_FONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinspGridOptionBAND_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    dxinspGridOptionGROUP_NODE_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionAUTO_SEARCH_TEXT_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionAUTO_SEARCH_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionGRID_INDICATOR_WIDTH: TdxInspectorDBSpinRow;
    dxinspGridOptionARROW_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionCOLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionGRID_LINE_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionBORDER_STYLE: TdxInspectorDBImageRow;
    dxinspGridOptionHEADER_FONT_SIZE: TdxInspectorDBSpinRow;
    dxinspGridOptionHEADER_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    dxinspGridOptionHEADER_FONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinspGridOptionFONT_COLOR: TdxInspectorDBButtonRow;
    dxinspGridOptionFONT_SIZE: TdxInspectorDBSpinRow;
    dxinspGridOptionFONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinspGridOptionFONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    memDataGridSHOW_BAND: TIntegerField;
    memDataGridSHOW_GROUP_PANEL: TIntegerField;
    dxinspGridOptionSHOW_BAND: TdxInspectorDBCheckRow;
    dxinspGridOptionSHOW_GROUP_PANEL: TdxInspectorDBCheckRow;
    memDataGridSTORE_INI_FILE: TIntegerField;
    acLoadDataGrid: TAction;
    memDataGridOPTION_VIEW_INDICATOR: TIntegerField;
    memDataGridHIGH_LIGHT_COLOR: TIntegerField;
    memDataGridHIGH_LIGHT_TEXT_COLOR: TIntegerField;
    dxinspGridOptionRow55: TdxInspectorDBButtonRow;
    dxinspGridOptionRow56: TdxInspectorDBButtonRow;
    memTestData: TdxMemData;
    memTestDataID_DATA: TIntegerField;
    memTestDataP_ID_DATA: TIntegerField;
    memTestDataDATA: TWideStringField;
    acApdung_DG: TAction;
    acLuumoi_DG: TAction;
    tabUIControl: TElTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dxinsUIControl: TdxDBInspector;
    ElPopupButton6: TElPopupButton;
    ElPopupButton7: TElPopupButton;
    Panel3: TPanel;
    ElPageControl2: TElPageControl;
    ElTabSheet3: TElTabSheet;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    qryUIControl: TIBOQuery;
    memUIControl: TdxMemData;
    dsUIControl: TDataSource;
    qryUIControlCONTROL_TYPE: TWideStringField;
    qryUIControlPROP_ID: TWideStringField;
    qryUIControlPROP_VAL: TWideStringField;
    memUIControlSPLITTER_SHOW_SNAP_BUTTON: TIntegerField;
    memUIControlSPLITTER_DEFAULT_SIZE: TIntegerField;
    memUIControlSPLITTER_BEVEL_INNER: TWideStringField;
    memUIControlSPLITTER_USE_XP_THEME: TIntegerField;
    memUIControlBUTTON_BEVEL_KIND: TWideStringField;
    memUIControlBUTTON_THIN_FRAME: TIntegerField;
    memUIControlBUTTON_MONEY_FLAT: TIntegerField;
    memUIControlBUTTON_MONEY_ACTIVE_COLOR: TIntegerField;
    memUIControlBUTTON_MONEY_INACTIVE_COLOR: TIntegerField;
    memUIControlBUTTON_MONEY_DOWN_COLOR: TIntegerField;
    memUIControlBUTTON_FLAT: TIntegerField;
    memUIControlPAGE_ACTIVE_TAB_COLOR: TIntegerField;
    memUIControlPAGE_COLOR: TIntegerField;
    memUIControlPAGE_FLAT: TIntegerField;
    memUIControlPAGE_FLAT_TAB_BORDER_COLOR: TIntegerField;
    memUIControlPAGE_FONT_COLOR: TIntegerField;
    memUIControlPAGE_FONT_SIZE: TIntegerField;
    memUIControlPAGE_FONT_STYLE_BOLD: TIntegerField;
    memUIControlPAGE_FONT_STYLE_ITALIC: TIntegerField;
    memUIControlPAGE_HOT_TRACK: TIntegerField;
    memUIControlPAGE_INACTIVE_TAB_COLOR: TIntegerField;
    memUIControlPAGE_MULTI_LINE: TIntegerField;
    memUIControlPAGE_SHOW_BORDER: TIntegerField;
    memUIControlPAGE_TAB_BK_COLOR: TIntegerField;
    memUIControlPAGE_TAB_POSITION: TWideStringField;
    memUIControlPAGE_STYLE: TWideStringField;
    memUIControlPAGE_USE_XP_THEME: TIntegerField;
    memUIControlPAGE_VERTICAL_SIDE_CAPTION: TIntegerField;
    memUIControlSIDEBAR_BKGROUND_BEGIN_COLOR: TIntegerField;
    memUIControlSIDEBAR_BKGROUND_END_COLOR: TIntegerField;
    pageTest: TElPageControl;
    ElTabSheet4: TElTabSheet;
    ElTabSheet5: TElTabSheet;
    splitTest: TElSplitter;
    panelTest: TPanel;
    buttonTest: TElPopupButton;
    dxinsUIControlRow32: TdxInspectorDBRow;
    dxinsUIControlRow33: TdxInspectorDBRow;
    dxinsUIControlRow34: TdxInspectorDBRow;
    dxinsUIControlRow35: TdxInspectorDBRow;
    memUIControlSIDEBAR_BKGROUND_FILL_STYLE: TWideStringField;
    memUIControlSIDEBAR_BORDER_STYLE: TWideStringField;
    memUIControlSIDEBAR_CAN_SELECTED: TIntegerField;
    memUIControlSIDEBAR_GROUP_FONT_COLOR: TIntegerField;
    memUIControlSIDEBAR_GROUP_FONT_SIZE: TIntegerField;
    memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD: TIntegerField;
    memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC: TIntegerField;
    memUIControlSIDEBAR_ITEM_FONT_COLOR: TIntegerField;
    memUIControlSIDEBAR_ITEM_FONT_SIZE: TIntegerField;
    memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD: TIntegerField;
    memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC: TIntegerField;
    memUIControlSIDEBAR_PAINT_STYLE: TWideStringField;
    memUIControlSIDEBAR_SHOW_GROUP: TIntegerField;
    dxinsUIControlSPLITTER_SHOW_SNAP_BUTTON: TdxInspectorDBCheckRow;
    dxinsUIControlSPLITTER_DEFAULT_SIZE: TdxInspectorDBSpinRow;
    dxinsUIControlSPLITTER_BEVEL_INNER: TdxInspectorDBImageRow;
    dxinsUIControlSPLITTER_USE_XP_THEME: TdxInspectorDBCheckRow;
    dxinsUIControlBUTTON_BEVEL_KIND: TdxInspectorDBImageRow;
    dxinsUIControlBUTTON_THIN_FRAME: TdxInspectorDBCheckRow;
    dxinsUIControlRow48: TdxInspectorDBRow;
    dxinsUIControlBUTTON_FLAT: TdxInspectorDBCheckRow;
    dxinsUIControlBUTTON_MONEY_FLAT: TdxInspectorDBCheckRow;
    dxinsUIControlBUTTON_MONEY_ACTIVE_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlBUTTON_MONEY_INACTIVE_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlBUTTON_MONEY_DOWN_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlPAGE_ACTIVE_TAB_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlPAGE_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlPAGE_FLAT: TdxInspectorDBCheckRow;
    dxinsUIControlPAGE_FLAT_TAB_BORDER_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlRow50: TdxInspectorDBRow;
    dxinsUIControlPAGE_FONT_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlPAGE_FONT_SIZE: TdxInspectorDBSpinRow;
    dxinsUIControlPAGE_FONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinsUIControlPAGE_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    dxinsUIControlPAGE_HOT_TRACK: TdxInspectorDBCheckRow;
    dxinsUIControlRow51: TdxInspectorDBRow;
    dxinsUIControlPAGE_INACTIVE_TAB_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlPAGE_MULTI_LINE: TdxInspectorDBCheckRow;
    dxinsUIControlPAGE_SHOW_BORDER: TdxInspectorDBCheckRow;
    dxinsUIControlPAGE_TAB_BK_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlPAGE_TAB_POSITION: TdxInspectorDBImageRow;
    dxinsUIControlPAGE_STYLE: TdxInspectorDBImageRow;
    dxinsUIControlPAGE_USE_XP_THEME: TdxInspectorDBCheckRow;
    dxinsUIControlPAGE_VERTICAL_SIDE_CAPTION: TdxInspectorDBCheckRow;
    dxinsUIControlSIDEBAR_BKGROUND_BEGIN_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlRow52: TdxInspectorDBRow;
    dxinsUIControlSIDEBAR_BKGROUND_END_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlSIDEBAR_BKGROUN_FILL_STYLE: TdxInspectorDBImageRow;
    dxinsUIControlSIDEBAR_BORDER_STYLE: TdxInspectorDBImageRow;
    dxinsUIControlSIDEBAR_CAN_SELECTED: TdxInspectorDBCheckRow;
    dxinsUIControlRow53: TdxInspectorDBRow;
    dxinsUIControlSIDEBAR_GROUP_FONT_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlSIDEBAR_GROUP_FONT_SIZE: TdxInspectorDBSpinRow;
    dxinsUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinsUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    dxinsUIControlRow54: TdxInspectorDBRow;
    dxinsUIControlSIDEBAR_PAINT_STYLE: TdxInspectorDBImageRow;
    dxinsUIControlSIDEBAR_SHOW_GROUP: TdxInspectorDBCheckRow;
    dxinsUIControlSIDEBAR_ITEM_FONT_COLOR: TdxInspectorDBButtonRow;
    dxinsUIControlSIDEBAR_ITEM_FONT_SIZE: TdxInspectorDBSpinRow;
    dxinsUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD: TdxInspectorDBCheckRow;
    dxinsUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow;
    sidebarTest: TdxSideBar;
    memUIControlBUTTON_USE_XP_THEME: TIntegerField;
    dxinsUIControlRow55: TdxInspectorDBCheckRow;
    memUIControlBUTTON_COLOR: TIntegerField;
    dxinsUIControlRow56: TdxInspectorDBButtonRow;
    memUIControlSIDEBAR_COLOR: TIntegerField;
    acApdung_UIControl: TAction;
    acLuumoi_UIControl: TAction;
    memUIControlPAGE_HOT_TRACK_FONT_COLOR: TIntegerField;
    dxinsUIControlRow57: TdxInspectorDBButtonRow;
    dxinsUIControlRow58: TdxInspectorDBButtonRow;
    qryUpdateData: TIBOQuery;
    dxinspGridOptionRow57: TdxInspectorDBButtonRow;
    memDataGridGROUP_PANEL_FONT_COLOR: TIntegerField;
    dxinspGridOptionRow58: TdxInspectorDBCheckRow;
    memUIControlREQUIRED_FIELD_COLOR: TIntegerField;
    dxinsUIControlRow59: TdxInspectorDBRow;
    dxinsUIControlREQUIRED_FIELD_COLOR: TdxInspectorDBButtonRow;
    memUIControlREAD_ONLY_COLOR: TIntegerField;
    dxinsUIControlRow60: TdxInspectorDBButtonRow;
    buttonTest_3: TElPopupButton;
    buttonTest_4: TElPopupButton;
    buttonTest_1: TElPopupButton;
    buttonTest_2: TElPopupButton;
    panelPreviewLAF: TPanel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxlcTest: TdxLayoutControl;
    dxEdit1: TdxEdit;
    dxCheckEdit1: TdxCheckEdit;
    dxMemo1: TdxMemo;
    dxCheckEdit4: TdxCheckEdit;
    dxPickEdit1: TdxPickEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxlcTestGroup6: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxlcTestItem8: TdxLayoutItem;
    dxlcTestGroup2: TdxLayoutGroup;
    dxlcTestItem3: TdxLayoutItem;
    dxlcTestItem7: TdxLayoutItem;
    dxlcTestGroup3: TdxLayoutGroup;
    dxlcTestItem5: TdxLayoutItem;
    dxlcTestGroup1: TdxLayoutGroup;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxinsLookAndFeelOFS_ROOT_AREA_OFS_V: TdxInspectorDBSpinRow;
    procedure acLoadLookAndFeelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxMainSidebarItemClick(Sender: TObject;
      Item: TdxSideBarItem);
    procedure memLookAndFeelGRP_CAP_COLORChange(Sender: TField);
    procedure memLookAndFeelGRP_CAP_FONT_SIZEChange(Sender: TField);
    procedure memLookAndFeelGRP_CAP_FONT_STYLE_BOLDChange(Sender: TField);
    procedure memLookAndFeelGRP_CAP_FONT_STYLE_ITALICChange(
      Sender: TField);
    procedure memLookAndFeelGRP_CAP_TEXT_COLORChange(Sender: TField);
    procedure memLookAndFeelGRP_COLORChange(Sender: TField);
    procedure memLookAndFeelGRP_FRAME_COLORChange(Sender: TField);
    procedure memLookAndFeelGRP_FRAME_WIDTHChange(Sender: TField);
    procedure memLookAndFeelGRP_OFFSET_CAPChange(Sender: TField);
    procedure memLookAndFeelGRP_OFFSET_ITEMChange(Sender: TField);
    procedure LOOK_AND_FEEL_SelectCOLOR_ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure LOOK_AND_FEEL_SelectCOLOR_DrawValue(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);

    procedure DATA_GRID_SelectCOLOR_ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DATA_GRID_SelectCOLOR_DrawValue(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);

    procedure UI_CONTROL_SelectCOLOR_ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure UI_CONTROL_SelectCOLOR_DrawValue(Sender: TdxInspectorRow;
      ACanvas: TCanvas; ARect: TRect; var AText: WideString; AFont: TFont;
      var AColor: TColor; var ADone: Boolean);

    procedure memLookAndFeelITEM_CAP_FONT_SIZEChange(Sender: TField);
    procedure memLookAndFeelITEM_CAP_FONT_STYLE_BOLDChange(Sender: TField);
    procedure memLookAndFeelITEM_CAP_FONT_STYLE_ITALICChange(
      Sender: TField);
    procedure memLookAndFeelITEM_CAP_TEXT_COLORChange(Sender: TField);
    procedure memLookAndFeelOFS_CONTROL_OFS_HChange(Sender: TField);
    procedure memLookAndFeelOFS_CONTROL_OFS_VChange(Sender: TField);
    procedure memLookAndFeelOFS_ITEM_OFSChange(Sender: TField);
    procedure memLookAndFeelOFS_ROOT_AREA_OFS_HChange(Sender: TField);
    procedure memLookAndFeelOFS_ROOT_AREA_OFS_VChange(Sender: TField);
    procedure pageMainChanging(Sender: TObject; NewPage: TElTabSheet;
      var AllowChange: Boolean);
    procedure acApdung_LAFExecute(Sender: TObject);
    procedure acLuumoi_LAFExecute(Sender: TObject);
    procedure acDong_LAFExecute(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxlcSelectLAFInitPopup(Sender: TObject);
    procedure acApdung_LAFUpdate(Sender: TObject);
    procedure memLookAndFeelEDGE_LEFTChange(Sender: TField);
    procedure memLookAndFeelEDGE_TOPChange(Sender: TField);
    procedure memLookAndFeelEDGE_RIGHTChange(Sender: TField);
    procedure memLookAndFeelEDGE_BOTTOMChange(Sender: TField);
    procedure memLookAndFeelBORDER_STYLEChange(Sender: TField);
    procedure memLookAndFeelBUTTON_STYLEChange(Sender: TField);
    procedure memLookAndFeelBUTTON_TRANSPARENCEChange(Sender: TField);
    procedure memLookAndFeelHOT_TRACTChange(Sender: TField);
    procedure memLookAndFeelSHADOWChange(Sender: TField);
    procedure memLookAndFeelBORDER_COLORChange(Sender: TField);
    procedure memLookAndFeelOFS_ITEM_AREA_OFS_VChange(Sender: TField);
    procedure qryLookAndFeelNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure qryDataGridNewRecord(DataSet: TDataSet);
    procedure memDataGridARROW_COLORChange(Sender: TField);
    procedure memDataGridAUTO_SEARCH_COLORChange(Sender: TField);
    procedure memDataGridAUTO_SEARCH_TEXT_COLORChange(Sender: TField);
    procedure memDataGridBAND_COLORChange(Sender: TField);
    procedure memDataGridBAND_FONT_COLORChange(Sender: TField);
    procedure memDataGridBAND_FONT_SIZEChange(Sender: TField);
    procedure memDataGridBAND_FONT_STYLE_BOLDChange(Sender: TField);
    procedure memDataGridBAND_FONT_STYLE_ITALICChange(Sender: TField);
    procedure memDataGridBORDER_STYLEChange(Sender: TField);
    procedure memDataGridCOLORChange(Sender: TField);
    procedure memDataGridFIXED_BAND_LINE_COLORChange(Sender: TField);
    procedure memDataGridFIXED_BAND_LINE_WIDTHChange(Sender: TField);
    procedure memDataGridFONT_COLORChange(Sender: TField);
    procedure memDataGridFONT_SIZEChange(Sender: TField);
    procedure memDataGridFONT_STYLE_BOLDChange(Sender: TField);
    procedure memDataGridFONT_STYLE_ITALICChange(Sender: TField);
    procedure memDataGridGRID_LINE_COLORChange(Sender: TField);
    procedure memDataGridGRID_INDICATOR_WIDTHChange(Sender: TField);
    procedure memDataGridGROUP_NODE_COLORChange(Sender: TField);
    procedure memDataGridGROUP_PANEL_COLORChange(Sender: TField);
    procedure memDataGridHEADER_COLORChange(Sender: TField);
    procedure memDataGridHEADER_FONT_COLORChange(Sender: TField);
    procedure memDataGridHEADER_FONT_SIZEChange(Sender: TField);
    procedure memDataGridHEADER_FONT_STYLE_BOLDChange(Sender: TField);
    procedure memDataGridHEADER_FONT_STYLE_ITALICChange(Sender: TField);
    procedure memDataGridLOOK_AND_FEELChange(Sender: TField);
    procedure memDataGridOPTION_BEHAVIOR_AUTO_SEARCHChange(Sender: TField);
    procedure memDataGridOPTION_BEHAVIOR_ENTER_THROUGHChange(
      Sender: TField);
    procedure memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITORChange(
      Sender: TField);
    procedure memDataGridOPTION_BEHAVIOR_TAB_THROUGHChange(Sender: TField);
    procedure memDataGridOPTION_DB_LOAD_ALL_RECORDChange(Sender: TField);
    procedure memDataGridOPTION_DB_PARTIAL_LOADChange(Sender: TField);
    procedure memDataGridOPTION_DB_SMART_REFRESHChange(Sender: TField);
    procedure memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHTChange(
      Sender: TField);
    procedure memDataGridOPTION_VIEW_AUTO_WIDTHChange(Sender: TField);
    procedure memDataGridOPTION_VIEW_INDICATORChange(Sender: TField);
    procedure memDataGridOPTION_VIEW_ROW_AUTO_HEIGHTChange(Sender: TField);
    procedure memDataGridSHOW_GRIDChange(Sender: TField);
    procedure memDataGridSHOW_HEADERChange(Sender: TField);
    procedure memDataGridSHOW_NEW_ITEM_ROWChange(Sender: TField);
    procedure memDataGridSHOW_ROW_FOOTERChange(Sender: TField);
    procedure memDataGridSHOW_SUMMARY_FOOTERChange(Sender: TField);
    procedure memDataGridSHOW_BANDChange(Sender: TField);
    procedure memDataGridSHOW_GROUP_PANELChange(Sender: TField);
    procedure memDataGridSTORE_INI_FILEChange(Sender: TField);
    procedure acLoadDataGridExecute(Sender: TObject);
    procedure memDataGridHIGH_LIGHT_COLORChange(Sender: TField);
    procedure memDataGridHIGH_LIGHT_TEXT_COLORChange(Sender: TField);
    procedure acApdung_DGUpdate(Sender: TObject);
    procedure acApdung_DGExecute(Sender: TObject);
    procedure acLuumoi_DGExecute(Sender: TObject);
    procedure qryUIControlNewRecord(DataSet: TDataSet);
    procedure memUIControlSPLITTER_SHOW_SNAP_BUTTONChange(Sender: TField);
    procedure memUIControlSPLITTER_DEFAULT_SIZEChange(Sender: TField);
    procedure memUIControlSPLITTER_BEVEL_INNERChange(Sender: TField);
    procedure memUIControlBUTTON_BEVEL_KINDChange(Sender: TField);
    procedure memUIControlBUTTON_THIN_FRAMEChange(Sender: TField);
    procedure memUIControlSPLITTER_USE_XP_THEMEChange(Sender: TField);
    procedure memUIControlBUTTON_MONEY_FLATChange(Sender: TField);
    procedure memUIControlBUTTON_MONEY_ACTIVE_COLORChange(Sender: TField);
    procedure memUIControlBUTTON_MONEY_INACTIVE_COLORChange(
      Sender: TField);
    procedure memUIControlBUTTON_MONEY_DOWN_COLORChange(Sender: TField);
    procedure memUIControlBUTTON_FLATChange(Sender: TField);
    procedure memUIControlPAGE_ACTIVE_TAB_COLORChange(Sender: TField);
    procedure memUIControlPAGE_COLORChange(Sender: TField);
    procedure memUIControlPAGE_FLATChange(Sender: TField);
    procedure memUIControlPAGE_FLAT_TAB_BORDER_COLORChange(Sender: TField);
    procedure memUIControlPAGE_FONT_COLORChange(Sender: TField);
    procedure memUIControlPAGE_FONT_SIZEChange(Sender: TField);
    procedure memUIControlPAGE_FONT_STYLE_BOLDChange(Sender: TField);
    procedure memUIControlPAGE_FONT_STYLE_ITALICChange(Sender: TField);
    procedure memUIControlPAGE_HOT_TRACKChange(Sender: TField);
    procedure memUIControlPAGE_INACTIVE_TAB_COLORChange(Sender: TField);
    procedure memUIControlPAGE_MULTI_LINEChange(Sender: TField);
    procedure memUIControlPAGE_SHOW_BORDERChange(Sender: TField);
    procedure memUIControlPAGE_TAB_BK_COLORChange(Sender: TField);
    procedure memUIControlPAGE_TAB_POSITIONChange(Sender: TField);
    procedure memUIControlPAGE_STYLEChange(Sender: TField);
    procedure memUIControlPAGE_USE_XP_THEMEChange(Sender: TField);
    procedure memUIControlPAGE_VERTICAL_SIDE_CAPTIONChange(Sender: TField);
    procedure memUIControlSIDEBAR_BKGROUND_BEGIN_COLORChange(
      Sender: TField);
    procedure memUIControlSIDEBAR_BKGROUND_END_COLORChange(Sender: TField);
    procedure memUIControlSIDEBAR_BKGROUND_FILL_STYLEChange(Sender: TField);
    procedure memUIControlSIDEBAR_BORDER_STYLEChange(Sender: TField);
    procedure memUIControlSIDEBAR_CAN_SELECTEDChange(Sender: TField);
    procedure memUIControlSIDEBAR_GROUP_FONT_COLORChange(Sender: TField);
    procedure memUIControlSIDEBAR_GROUP_FONT_SIZEChange(Sender: TField);
    procedure memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLDChange(
      Sender: TField);
    procedure memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALICChange(
      Sender: TField);
    procedure memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLDChange(
      Sender: TField);
    procedure memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALICChange(
      Sender: TField);
    procedure memUIControlSIDEBAR_ITEM_FONT_COLORChange(Sender: TField);
    procedure memUIControlSIDEBAR_ITEM_FONT_SIZEChange(Sender: TField);
    procedure memUIControlSIDEBAR_PAINT_STYLEChange(Sender: TField);
    procedure memUIControlSIDEBAR_SHOW_GROUPChange(Sender: TField);
    procedure acLoadUIControlExecute(Sender: TObject);
    procedure memUIControlBUTTON_USE_XP_THEMEChange(Sender: TField);
    procedure memUIControlBUTTON_COLORChange(Sender: TField);
    procedure memUIControlSIDEBAR_COLORChange(Sender: TField);
    procedure acApdung_UIControlUpdate(Sender: TObject);
    procedure acApdung_UIControlExecute(Sender: TObject);
    procedure memUIControlPAGE_HOT_TRACK_FONT_COLORChange(Sender: TField);
    procedure acLuumoi_UIControlExecute(Sender: TObject);
    procedure memDataGridGROUP_PANEL_FONT_COLORChange(Sender: TField);
    procedure dxlcSelectLAFCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
    reg : TRegistry;
    path : string;
    procedure ApplyControlProperty;
    procedure InitTestData;
  public
    { Public declarations }

  end;

var
  frmUIConfig: TfrmUIConfig;

implementation

uses LookAndFeelDetail, SSP_Library;

{$R *.dfm}

procedure TfrmUIConfig.InitTestData;
var i: integer;
begin
  if memTestData.Active then
    memTestData.Close;
  memTestData.Open;
  for i := 1 to 20 do
  begin
    memTestData.Append;
    memTestDataID_DATA.Value := i;
    memTestDataDATA.Value := Char(Ord('A') + i - 1);
    if (i mod 2) = 0 then
      memTestDataP_ID_DATA.Value := i - 1
    else
      memTestDataP_ID_DATA.Clear;
    memTestData.Post;
  end;
end;

procedure TfrmUIConfig.ApplyControlProperty;
var i: integer;
  comp: TComponent;
begin
  //look and feel CONTROL
  for i := 0 to dxinsLookAndFeel.TotalRowCount - 1 do
  begin
    comp := dxinsLookAndFeel.Rows[i];
    if (comp is TdxInspectorDBButtonRow) then
    begin
      (comp as TdxInspectorDBButtonRow).OnButtonClick := LOOK_AND_FEEL_SelectCOLOR_ButtonClick;
      (comp as TdxInspectorDBButtonRow).OnDrawValue := LOOK_AND_FEEL_SelectCOLOR_DrawValue;
    end
    else
      if (comp is TdxInspectorDBCheckRow) then
    begin
      (comp as TdxInspectorDBCheckRow).ValueChecked := '1';
      (comp as TdxInspectorDBCheckRow).ValueUnchecked := '0';
    end
    else
      if (comp is TdxInspectorDBSpinRow) then
    begin
      (comp as TdxInspectorDBSpinRow).MinValue := 0;
      (comp as TdxInspectorDBSpinRow).MaxValue := 100;
    end
    else
      if (comp is TdxInspectorDBImageRow) then
    begin
      (comp as TdxInspectorDBImageRow).ShowDescription := true;
    end;
  end;
  // Data grid CONTROL
  for i := 0 to dxinspGridOption.TotalRowCount - 1 do
  begin
    comp := dxinspGridOption.Rows[i];
    if (comp is TdxInspectorDBButtonRow) then
    begin
      (comp as TdxInspectorDBButtonRow).OnButtonClick := DATA_GRID_SelectCOLOR_ButtonClick;
      (comp as TdxInspectorDBButtonRow).OnDrawValue := DATA_GRID_SelectCOLOR_DrawValue;
    end
    else
      if (comp is TdxInspectorDBCheckRow) then
    begin
      (comp as TdxInspectorDBCheckRow).ValueChecked := '1';
      (comp as TdxInspectorDBCheckRow).ValueUnchecked := '0';
    end
    else
      if (comp is TdxInspectorDBSpinRow) then
    begin
      (comp as TdxInspectorDBSpinRow).MinValue := 0;
      (comp as TdxInspectorDBSpinRow).MaxValue := 100;
    end
    else
      if (comp is TdxInspectorDBImageRow) then
    begin
      (comp as TdxInspectorDBImageRow).ShowDescription := true;
    end;

  end;

  // UI CONTROL
  for i := 0 to dxinsUIControl.TotalRowCount - 1 do
  begin
    comp := dxinsUIControl.Rows[i];
    if (comp is TdxInspectorDBButtonRow) then
    begin
      (comp as TdxInspectorDBButtonRow).OnButtonClick := UI_CONTROL_SelectCOLOR_ButtonClick;
      (comp as TdxInspectorDBButtonRow).OnDrawValue := UI_CONTROL_SelectCOLOR_DrawValue;
    end
    else
      if (comp is TdxInspectorDBCheckRow) then
    begin
      (comp as TdxInspectorDBCheckRow).ValueChecked := '1';
      (comp as TdxInspectorDBCheckRow).ValueUnchecked := '0';
    end
    else
      if (comp is TdxInspectorDBSpinRow) then
    begin
      (comp as TdxInspectorDBSpinRow).MinValue := 0;
      (comp as TdxInspectorDBSpinRow).MaxValue := 100;
    end
    else
      if (comp is TdxInspectorDBImageRow) then
    begin
      (comp as TdxInspectorDBImageRow).ShowDescription := true;
    end;
  end;
end;

procedure TfrmUIConfig.acLoadLookAndFeelExecute(Sender: TObject);
var
  ret : Boolean;
  int_value: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  //=========== Locked by ThuyPTP - 25/11/2007 ================
  //====== Khong su dung tu database mà lay tu Registry =======

  //========== Load memLoolAndFeel Data=======//
  {memLookAndFeel.DisableControls;
  if memLookAndFeel.Active then memLookAndFeel.Close;
  memLookAndFeel.Open;
  memLookAndFeel.Insert;

  if not qryLookAndFeel.IsEmpty then
  begin
    qryLookAndFeel.First;
    while not qryLookAndFeel.Eof do
    begin
      if qryLookAndFeelPROP_ID.AsString = 'GRP_CAP_FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryLookAndFeelPROP_VAL.Value, 0);
        memLookAndFeelGRP_CAP_FONT_STYLE_BOLD.Value := int_value mod 2;
        memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if qryLookAndFeelPROP_ID.AsString = 'ITEM_CAP_FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryLookAndFeelPROP_VAL.Value, 0);
        memLookAndFeelITEM_CAP_FONT_STYLE_BOLD.Value := int_value mod 2;
        memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if qryLookAndFeelPROP_ID.AsString = 'EDGE' then
      begin
        int_value := StrToIntdef(qryLookAndFeelPROP_VAL.Value, 0);
        memLookAndFeelEDGE_LEFT.Value := int_value mod 2;
        int_value := int_value div 2;
        memLookAndFeelEDGE_TOP.Value := int_value mod 2;
        int_value := int_value div 2;
        memLookAndFeelEDGE_RIGHT.Value := int_value mod 2;
        int_value := int_value div 2;
        memLookAndFeelEDGE_BOTTOM.Value := int_value mod 2;
      end
      else
        if Assigned(memLookAndFeel.FindField(qryLookAndFeelPROP_ID.AsString)) then
      begin
        if not qryLookAndFeelPROP_VAL.IsNull then
          memLookAndFeel.FieldByName(qryLookAndFeelPROP_ID.AsString).Value :=
            qryLookAndFeelPROP_VAL.Value;
      end;
      qryLookAndFeel.Next;
    end;
  end;
  //========== Ending load data===============//
  memLookAndFeel.Post;
  memLookAndFeel.EnableControls;}

  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REG_PATH + path);
  if ret = false then
    exit;
  reg.OpenKey(REG_PATH + path, False);
  if ret then
  begin
    memLookAndFeel.DisableControls;
    if memLookAndFeel.Active then memLookAndFeel.Close;
    memLookAndFeel.Open;
    memLookAndFeel.Insert;

    if not qryLookAndFeel.IsEmpty then
    begin
      qryLookAndFeel.First;
      while not qryLookAndFeel.Eof do
      begin
        if qryLookAndFeelPROP_ID.AsString = 'GRP_CAP_FONT_STYLE' then
        begin
          int_value := StrToIntdef(reg.ReadString('GRP_CAP_FONT_STYLE'), 0);
          memLookAndFeelGRP_CAP_FONT_STYLE_BOLD.Value := int_value mod 2;
          memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC.Value := int_value div 2;
        end
        else
          if qryLookAndFeelPROP_ID.AsString = 'ITEM_CAP_FONT_STYLE' then
          begin
            int_value := StrToIntdef(reg.ReadString('ITEM_CAP_FONT_STYLE'), 0);
            memLookAndFeelITEM_CAP_FONT_STYLE_BOLD.Value := int_value mod 2;
            memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC.Value := int_value div 2;
          end
          else
            if qryLookAndFeelPROP_ID.AsString = 'EDGE' then
            begin
              int_value := StrToIntdef(reg.ReadString('EDGE'), 0);
              memLookAndFeelEDGE_LEFT.Value := int_value mod 2;
              int_value := int_value div 2;
              memLookAndFeelEDGE_TOP.Value := int_value mod 2;
              int_value := int_value div 2;
              memLookAndFeelEDGE_RIGHT.Value := int_value mod 2;
              int_value := int_value div 2;
              memLookAndFeelEDGE_BOTTOM.Value := int_value mod 2;
            end
            else
              if Assigned(memLookAndFeel.FindField(qryLookAndFeelPROP_ID.AsString)) then
              begin
                if not (reg.ReadString(qryLookAndFeelPROP_ID.AsString)= Null) then
                  memLookAndFeel.FieldByName(qryLookAndFeelPROP_ID.AsString).Value :=
                  reg.ReadString(qryLookAndFeelPROP_ID.AsString);
              end;
        qryLookAndFeel.Next;
        end;
    end;

    memLookAndFeel.Post;
    memLookAndFeel.EnableControls;
  end;
  //******************************************************
  Screen.Cursor := crDefault;
end;

procedure TfrmUIConfig.FormCreate(Sender: TObject);
var
  ret : Boolean;
begin
  inherited;
  frmLookAndFeelDetail := TfrmLookAndFeelDetail.Create(self);
  ApplyControlProperty;
  InitTestData;     

  pageMain.ShowTabs := false;
  pageMain.ActivePageIndex := 0;

  if not qryLAFList.Active then
    qryLAFList.Open;
  if not qryLAFList.IsEmpty then
    qryLAFList.Locate('LF_ID', MainDM.sysConfig.LookAndFeelID, []);

  //=========== Added by ThuyPTP - 25/11/2007 ================
  //************ lay mau giao dien dang su dung ************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  ret := reg.KeyExists(REGISTRY_ROOT + '\Option');
  if ret = false then
    Exit;
  reg.OpenKey(REGISTRY_ROOT + '\Option', False);
  path := reg.ReadString('UI_CONFIG');
  //************************************************************************

  if not qryLookAndFeel.Active then
    qryLookAndFeel.Open;
  acLoadLookAndFeel.Execute;

  

  if not qryDataGrid.Active then
    qryDataGrid.Open;
  acLoadDataGrid.Execute;

  if not qryUIControl.Active then
    qryUIControl.Open;
  acLoadUIControl.Execute;


end;

procedure TfrmUIConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryLookAndFeel.Close;
  qryLAFList.Close;
  qryDataGrid.Close;
  qryUIControl.Close;
  frmLookAndFeelDetail.Free;
end;

procedure TfrmUIConfig.dxMainSidebarItemClick(Sender: TObject;
  Item: TdxSideBarItem);
var i: integer;
begin
  inherited;
  for i := 0 to pageMain.PageCount - 1 do
    if pageMain.Pages[i].Caption = Item.CustomData then
    begin
      pageMain.ActivePageIndex := i;
      exit;
    end;
end;

procedure TfrmUIConfig.memLookAndFeelGRP_CAP_COLORChange(Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.CaptionOptions.Color := memLookAndFeelGRP_CAP_COLOR.Value;
end;

procedure TfrmUIConfig.memLookAndFeelGRP_CAP_FONT_SIZEChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.CaptionOptions.Font.Size := memLookAndFeelGRP_CAP_FONT_SIZE.Value;
end;

procedure TfrmUIConfig.memLookAndFeelGRP_CAP_FONT_STYLE_BOLDChange(
  Sender: TField);
begin
  inherited;
  if memLookAndFeelGRP_CAP_FONT_STYLE_BOLD.Value = 1 then
    dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style + [fsBold]
  else
    dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style - [fsBold]
end;

procedure TfrmUIConfig.memLookAndFeelGRP_CAP_FONT_STYLE_ITALICChange(
  Sender: TField);
begin
  inherited;
  if memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC.Value = 1 then
    dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style + [fsItalic]
  else
    dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.GroupOptions.CaptionOptions.Font.Style - [fsItalic]
end;

procedure TfrmUIConfig.memLookAndFeelGRP_CAP_TEXT_COLORChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.CaptionOptions.TextColor := memLookAndFeelGRP_CAP_TEXT_COLOR.Value;
end;

procedure TfrmUIConfig.memLookAndFeelGRP_COLORChange(Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.Color := memLookAndFeelGRP_COLOR.Value;
end;

procedure TfrmUIConfig.memLookAndFeelGRP_FRAME_COLORChange(Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.FrameColor := memLookAndFeelGRP_FRAME_COLOR.Value;
end;

procedure TfrmUIConfig.memLookAndFeelGRP_FRAME_WIDTHChange(Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.FrameWidth := memLookAndFeelGRP_FRAME_WIDTH.Value;
end;

procedure TfrmUIConfig.memLookAndFeelGRP_OFFSET_CAPChange(Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.OffsetCaption := (memLookAndFeelGRP_OFFSET_CAP.Value = 1);
end;

procedure TfrmUIConfig.memLookAndFeelGRP_OFFSET_ITEMChange(Sender: TField);
begin
  inherited;
  dxLookAndFeel.GroupOptions.OffsetItems := (memLookAndFeelGRP_OFFSET_ITEM.Value = 1);
end;

procedure TfrmUIConfig.LOOK_AND_FEEL_SelectCOLOR_ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dlgColor.Color := memLookAndFeel.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).AsInteger;
  if dlgColor.Execute then
  begin
    if not (memLookAndFeel.State in [dsEdit, dsInsert]) then
      memLookAndFeel.Edit;
    memLookAndFeel.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).Value :=
      dlgColor.Color;
  end;
end;

procedure TfrmUIConfig.LOOK_AND_FEEL_SelectCOLOR_DrawValue(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AColor := memLookAndFeel.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).AsInteger;
  AText := '';
end;

procedure TfrmUIConfig.DATA_GRID_SelectCOLOR_ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dlgColor.Color := memDataGrid.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).AsInteger;
  if dlgColor.Execute then
  begin
    if not (memDataGrid.State in [dsEdit, dsInsert]) then
      memDataGrid.Edit;
    memDataGrid.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).Value :=
      dlgColor.Color;
  end;
end;

procedure TfrmUIConfig.DATA_GRID_SelectCOLOR_DrawValue(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AColor := memDataGrid.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).AsInteger;
  AText := '';
end;

procedure TfrmUIConfig.UI_CONTROL_SelectCOLOR_ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  dlgColor.Color := memUIControl.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).AsInteger;
  if dlgColor.Execute then
  begin
    if not (memUIControl.State in [dsEdit, dsInsert]) then
      memUIControl.Edit;
    memUIControl.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).Value :=
      dlgColor.Color;
  end;
end;

procedure TfrmUIConfig.UI_CONTROL_SelectCOLOR_DrawValue(
  Sender: TdxInspectorRow; ACanvas: TCanvas; ARect: TRect;
  var AText: WideString; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
  inherited;
  AColor := memUIControl.FieldByName((Sender as TdxInspectorDBButtonRow).FieldName).AsInteger;
  AText := '';
end;


procedure TfrmUIConfig.memLookAndFeelITEM_CAP_FONT_SIZEChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.ItemOptions.CaptionOptions.Font.Size := memLookAndFeelITEM_CAP_FONT_SIZE.Value;
end;

procedure TfrmUIConfig.memLookAndFeelITEM_CAP_FONT_STYLE_BOLDChange(
  Sender: TField);
begin
  inherited;
  if memLookAndFeelITEM_CAP_FONT_STYLE_BOLD.Value = 1 then
    dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style + [fsBold]
  else
    dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style - [fsBold];

end;

procedure TfrmUIConfig.memLookAndFeelITEM_CAP_FONT_STYLE_ITALICChange(
  Sender: TField);
begin
  inherited;
  if memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC.Value = 1 then
    dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style + [fsItalic]
  else
    dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style :=
      dxLookAndFeel.ItemOptions.CaptionOptions.Font.Style - [fsItalic];
end;

procedure TfrmUIConfig.memLookAndFeelITEM_CAP_TEXT_COLORChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.ItemOptions.CaptionOptions.TextColor := memLookAndFeelITEM_CAP_TEXT_COLOR.Value;
end;

procedure TfrmUIConfig.memLookAndFeelOFS_CONTROL_OFS_HChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.Offsets.ControlOffsetHorz := memLookAndFeelOFS_CONTROL_OFS_H.Value;
end;

procedure TfrmUIConfig.memLookAndFeelOFS_CONTROL_OFS_VChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.Offsets.ControlOffsetVert := memLookAndFeelOFS_CONTROL_OFS_V.Value;
end;

procedure TfrmUIConfig.memLookAndFeelOFS_ITEM_OFSChange(Sender: TField);
begin
  inherited;
  dxLookAndFeel.Offsets.ItemOffset := memLookAndFeelOFS_ITEM_OFS.Value;
end;

procedure TfrmUIConfig.memLookAndFeelOFS_ROOT_AREA_OFS_HChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.Offsets.RootItemsAreaOffsetHorz := memLookAndFeelOFS_ROOT_AREA_OFS_H.Value;
end;

procedure TfrmUIConfig.memLookAndFeelOFS_ROOT_AREA_OFS_VChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.Offsets.RootItemsAreaOffsetVert := memLookAndFeelOFS_ROOT_AREA_OFS_V.Value;
end;

procedure TfrmUIConfig.pageMainChanging(Sender: TObject;
  NewPage: TElTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if pageMain.ActivePage = tabLookAndFeel then
  begin
    if memLookAndFeel.State in [dsInsert, dsEdit] then
    begin

    end;
  end;
end;

procedure TfrmUIConfig.acApdung_LAFExecute(Sender: TObject);
var int_value: integer;
  need_update: boolean;
  ret : Boolean; 
begin
  inherited;
  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  //************ Luu giu mau giao dien dang su dung ************************
  ret := reg.KeyExists(REGISTRY_ROOT + '\Option');
  if ret = false then
    reg.CreateKey(REGISTRY_ROOT + '\Option');
  reg.OpenKey(REGISTRY_ROOT + '\Option', False);
  reg.WriteString('UI_CONFIG',qryLAFListLF_ID.AsString);
  //************************************************************************

  //************* Ghi nhan thong tin chi tiet mau giao dien ****************
  ret := reg.KeyExists(REG_PATH + qryLAFListLF_ID.AsString);
  if ret = false then
    reg.CreateKey(REG_PATH + qryLAFListLF_ID.AsString);
  reg.OpenKey(REG_PATH + qryLAFListLF_ID.AsString, False);

  if qryLAFList.IsEmpty then
    acLuumoi_LAF.Execute
  else
  begin
    begin
      qryLookAndFeel.First;
      while not qryLookAndFeel.Eof do
      begin
        //=========== Locked by ThuyPTP - 25/11/2007 ================
        //====== Khong su dung tu database mà lay tu Registry =======
        {if not (qryLookAndFeel.State in [dsEdit, dsInsert]) then
          qryLookAndFeel.Edit;
        if qryLookAndFeelPROP_ID.AsString = 'GRP_CAP_FONT_STYLE' then
          qryLookAndFeelPROP_VAL.Value :=
            IntTostr(
            memLookAndFeelGRP_CAP_FONT_STYLE_BOLD.Value +
            memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC.Value*2)
        else
          if qryLookAndFeelPROP_ID.AsString = 'ITEM_CAP_FONT_STYLE' then
          qryLookAndFeelPROP_VAL.Value :=
            IntTostr(
            memLookAndFeelITEM_CAP_FONT_STYLE_BOLD.Value +
            memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC.Value*2)
        else
          if qryLookAndFeelPROP_ID.AsString = 'EDGE' then
          qryLookAndFeelPROP_VAL.Value :=
            IntTostr(
            memLookAndFeelEDGE_LEFT.Value +
            memLookAndFeelEDGE_TOP.Value*2 +
            memLookAndFeelEDGE_RIGHT.Value*4 +
            memLookAndFeelEDGE_BOTTOM.Value*8)
        else
          if Assigned(memLookAndFeel.FindField(qryLookAndFeelPROP_ID.AsString)) then
          qryLookAndFeelPROP_VAL.Value := VarToStr(memLookAndFeel.FieldByName(qryLookAndFeelPROP_ID.AsString).Value);
        qryLookAndFeel.Post;
        qryLookAndFeel.Next; }
        if qryLookAndFeelPROP_ID.AsString = 'GRP_CAP_FONT_STYLE' then
          reg.WriteString('GRP_CAP_FONT_STYLE',
            IntTostr(
            memLookAndFeelGRP_CAP_FONT_STYLE_BOLD.Value +
            memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC.Value*2))
        else
          if qryLookAndFeelPROP_ID.AsString = 'ITEM_CAP_FONT_STYLE' then
          reg.WriteString('ITEM_CAP_FONT_STYLE',
            IntTostr(
            memLookAndFeelITEM_CAP_FONT_STYLE_BOLD.Value +
            memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC.Value*2))
        else
          if qryLookAndFeelPROP_ID.AsString = 'EDGE' then
          reg.WriteString('EDGE',
            IntTostr(
            memLookAndFeelEDGE_LEFT.Value +
            memLookAndFeelEDGE_TOP.Value*2 +
            memLookAndFeelEDGE_RIGHT.Value*4 +
            memLookAndFeelEDGE_BOTTOM.Value*8))
        else
          if Assigned(memLookAndFeel.FindField(qryLookAndFeelPROP_ID.AsString)) then
            reg.WriteString(qryLookAndFeelPROP_ID.AsString,
              VarToStr(memLookAndFeel.FieldByName(qryLookAndFeelPROP_ID.AsString).Value));
        qryLookAndFeel.Next;
      end;
    end;
  end;
  //************************************************************************
  qryUpdateData.ParamByName('LF_ID').Value:=
    qryLAFListLF_ID.Value;
  dmMain.ExecuteSQL(qryUpdateData);
  dmMain.LoadLookAndFeel;
  Apply_LookAndFeel(dmMain.StyleWeb);
  Apply_StyleController(dmMain.StyleController);
end;

procedure TfrmUIConfig.acLuumoi_LAFExecute(Sender: TObject);
var i: integer;
  field_name: string;
  cap_font_style, item_font_style, edge: boolean;
begin
  inherited;
  cap_font_style := false;
  item_font_style := false;
  edge := false;

  if memLookAndFeel.State in [dsEdit, dsInsert] then
    memLookAndFeel.Post;

  qryLAFList.Insert;
  if frmLookAndFeelDetail.ShowModal = mrOk then
  begin
    Screen.Cursor := crSQLWait;
    for i := 1 to memLookAndFeel.FieldCount - 1 do
    begin
      field_name := memLookAndFeel.Fields[i].FieldName;
      if (Pos('GRP_CAP_FONT_STYLE', field_name) = 0) and
        (Pos('ITEM_CAP_FONT_STYLE', field_name) = 0) and
        (Pos('EDGE', field_name) = 0)
        then
      begin
        if not (qryLookAndFeel.State in [dsInsert, dsEdit]) then
          qryLookAndFeel.Insert;
        qryLookAndFeelPROP_ID.Value := field_name;
        qryLookAndFeelPROP_VAL.Value :=
          VarToStr(memLookAndFeel.Fields[i].Value);
      end
      else
        if (Pos('GRP_CAP_FONT_STYLE', field_name) > 0) and (cap_font_style = false) then
      begin
        if not (qryLookAndFeel.State in [dsInsert, dsEdit]) then
          qryLookAndFeel.Insert;
        qryLookAndFeelPROP_ID.Value := 'GRP_CAP_FONT_STYLE';
        qryLookAndFeelPROP_VAL.Value :=
          IntToStr(
          memLookAndFeelGRP_CAP_FONT_STYLE_BOLD.Value +
          memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC.Value*2);
        cap_font_style := true;
      end
      else
        if (Pos('ITEM_CAP_FONT_STYLE', field_name) > 0) and (item_font_style = false) then
      begin
        if not (qryLookAndFeel.State in [dsInsert, dsEdit]) then
          qryLookAndFeel.Insert;
        qryLookAndFeelPROP_ID.Value := 'ITEM_CAP_FONT_STYLE';
        qryLookAndFeelPROP_VAL.Value :=
          IntToStr(
          memLookAndFeelITEM_CAP_FONT_STYLE_BOLD.Value +
          memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC.Value*2);
        item_font_style := true;
      end
      else
        if (Pos('EDGE', field_name) > 0) and (edge = false) then
      begin
        if not (qryLookAndFeel.State in [dsInsert, dsEdit]) then
          qryLookAndFeel.Insert;
        qryLookAndFeelPROP_ID.Value := 'EDGE';
        qryLookAndFeelPROP_VAL.Value :=
          IntTostr(
          memLookAndFeelEDGE_LEFT.Value +
          memLookAndFeelEDGE_TOP.Value*2 +
          memLookAndFeelEDGE_RIGHT.Value*4 +
          memLookAndFeelEDGE_BOTTOM.Value*8);
        edge := true;
      end;
      if qryLookAndFeel.State in [dsEdit, dsInsert] then
        qryLookAndFeel.Post;
    end;
    sysConfig.LookAndFeelID := qryLAFListLF_ID.Value;
    //========= Added by ThuyPTP - 25/11/2007 ===========
    //====== Sau khi them moi 1 mau giao dien thi ghi nhan vao Registry =======
    acApdung_LAFExecute(sender) ;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmUIConfig.acDong_LAFExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmUIConfig.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  PopupProcess(self, true, sender);
end;

procedure TfrmUIConfig.dxlcSelectLAFInitPopup(Sender: TObject);
begin
  inherited;
  InitPopupControl('dxlcLAFList', self, sender, 1);
end;

procedure TfrmUIConfig.acApdung_LAFUpdate(Sender: TObject);
begin
  inherited;
  acApdung_LAF.Enabled := (MainDM.sysConfig.LookAndFeelID <> qryLAFListLF_ID.Value) or
    (memLookAndFeel.State in [dsEdit, dsInsert]);
end;

procedure TfrmUIConfig.memLookAndFeelEDGE_LEFTChange(Sender: TField);
begin
  inherited;
  if memLookAndFeelEDGE_LEFT.Value = 1 then
    dxStyleController.Edges := dxStyleController.Edges + [edgLeft]
  else
    dxStyleController.Edges := dxStyleController.Edges - [edgLeft];
end;

procedure TfrmUIConfig.memLookAndFeelEDGE_TOPChange(Sender: TField);
begin
  inherited;
  if memLookAndFeelEDGE_TOP.Value = 1 then
    dxStyleController.Edges := dxStyleController.Edges + [edgTop]
  else
    dxStyleController.Edges := dxStyleController.Edges - [edgTop];
end;

procedure TfrmUIConfig.memLookAndFeelEDGE_RIGHTChange(Sender: TField);
begin
  inherited;
  if memLookAndFeelEDGE_RIGHT.Value = 1 then
    dxStyleController.Edges := dxStyleController.Edges + [edgRight]
  else
    dxStyleController.Edges := dxStyleController.Edges - [edgRight];
end;

procedure TfrmUIConfig.memLookAndFeelEDGE_BOTTOMChange(Sender: TField);
begin
  inherited;
  if memLookAndFeelEDGE_BOTTOM.Value = 1 then
    dxStyleController.Edges := dxStyleController.Edges + [edgBottom]
  else
    dxStyleController.Edges := dxStyleController.Edges - [edgBottom];
end;

procedure TfrmUIConfig.memLookAndFeelBORDER_STYLEChange(
  Sender: TField);
begin
  inherited;
  dxStyleController.BorderStyle := TdxEditBorderStyle(StrToIntDef(memLookAndFeelBORDER_STYLE.Value, 0));
end;

procedure TfrmUIConfig.memLookAndFeelBUTTON_STYLEChange(
  Sender: TField);
begin
  inherited;
  dxStyleController.ButtonStyle := TdxEditButtonViewStyle(StrToIntDef(memLookAndFeelBUTTON_STYLE.Value, 0));
end;

procedure TfrmUIConfig.memLookAndFeelBUTTON_TRANSPARENCEChange(
  Sender: TField);
begin
  inherited;
  dxStyleController.ButtonTransparence := TdxEditButtonTransparence(StrToIntDef(memLookAndFeelBUTTON_TRANSPARENCE.Value, 0));
end;

procedure TfrmUIConfig.memLookAndFeelHOT_TRACTChange(Sender: TField);
begin
  inherited;
  dxStyleController.HotTrack := (memLookAndFeelHOT_TRACT.Value = 1);
end;

procedure TfrmUIConfig.memLookAndFeelSHADOWChange(Sender: TField);
begin
  inherited;
  dxStyleController.Shadow := (memLookAndFeelSHADOW.Value = 1);
end;

procedure TfrmUIConfig.memLookAndFeelBORDER_COLORChange(
  Sender: TField);
begin
  inherited;
  dxStyleController.BorderColor := memLookAndFeelBORDER_COLOR.Value;
  dxLookAndFeel.ItemOptions.ControlBorderColor:=memLookAndFeelBORDER_COLOR.Value;
end;

procedure TfrmUIConfig.memLookAndFeelOFS_ITEM_AREA_OFS_VChange(
  Sender: TField);
begin
  inherited;
  dxLookAndFeel.Offsets.ItemsAreaOffsetVert := memLookAndFeelOFS_ITEM_AREA_OFS_V.Value;
end;

procedure TfrmUIConfig.qryLookAndFeelNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryLookAndFeelLF_ID.Value := qryLAFListLF_ID.Value;
end;

procedure TfrmUIConfig.dxDBGrid1ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  if not (qryLAFList.State in [dsInsert]) then
    acLoadLookAndFeel.Execute;
end;

procedure TfrmUIConfig.qryDataGridNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDataGridCONTROL_TYPE.Value := 'DATA_GRID';
end;

procedure TfrmUIConfig.memDataGridARROW_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.ArrowsColor := memDataGridARROW_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridAUTO_SEARCH_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.AutoSearchColor := memDataGridAUTO_SEARCH_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridAUTO_SEARCH_TEXT_COLORChange(
  Sender: TField);
begin
  inherited;
  gridTest.AutoSearchTextColor := memDataGridAUTO_SEARCH_TEXT_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridBAND_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.BandColor := memDataGridBAND_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridBAND_FONT_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.BandFont.Color := memDataGridBAND_FONT_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridBAND_FONT_SIZEChange(Sender: TField);
begin
  inherited;
  gridTest.BandFont.Size := memDataGridBAND_FONT_SIZE.Value;
end;

procedure TfrmUIConfig.memDataGridBAND_FONT_STYLE_BOLDChange(
  Sender: TField);
begin
  inherited;
  if memDataGridBAND_FONT_STYLE_BOLD.Value = 1 then
    gridTest.BandFont.Style := gridTest.BandFont.Style + [fsBold]
  else
    gridTest.BandFont.Style := gridTest.BandFont.Style - [fsBold];
end;

procedure TfrmUIConfig.memDataGridBAND_FONT_STYLE_ITALICChange(
  Sender: TField);
begin
  inherited;
  if memDataGridBAND_FONT_STYLE_ITALIC.Value = 1 then
    gridTest.BandFont.Style := gridTest.BandFont.Style + [fsItalic]
  else
    gridTest.BandFont.Style := gridTest.BandFont.Style - [fsItalic];
end;

procedure TfrmUIConfig.memDataGridBORDER_STYLEChange(Sender: TField);
begin
  inherited;
  gridTest.BorderStyle := TBorderStyle(StrToIntDef(memDataGridBORDER_STYLE.Value, 0));
end;

procedure TfrmUIConfig.memDataGridCOLORChange(Sender: TField);
begin
  inherited;
  gridTest.Color := memDataGridCOLOR.Value;
end;

procedure TfrmUIConfig.memDataGridFIXED_BAND_LINE_COLORChange(
  Sender: TField);
begin
  inherited;
  gridTest.FixedBandLineColor := memDataGridFIXED_BAND_LINE_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridFIXED_BAND_LINE_WIDTHChange(
  Sender: TField);
begin
  inherited;
  gridTest.FixedBandLineWidth := memDataGridFIXED_BAND_LINE_WIDTH.Value;
end;

procedure TfrmUIConfig.memDataGridFONT_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.Font.Color := memDataGridFONT_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridFONT_SIZEChange(Sender: TField);
begin
  inherited;
  gridTest.Font.Size := memDataGridFONT_SIZE.Value;
end;

procedure TfrmUIConfig.memDataGridFONT_STYLE_BOLDChange(Sender: TField);
begin
  inherited;
  if memDataGridFONT_STYLE_BOLD.Value = 1 then
    gridTest.Font.Style := gridTest.Font.Style + [fsBold]
  else
    gridTest.Font.Style := gridTest.Font.Style - [fsBold];

end;

procedure TfrmUIConfig.memDataGridFONT_STYLE_ITALICChange(Sender: TField);
begin
  inherited;
  if memDataGridFONT_STYLE_ITALIC.Value = 1 then
    gridTest.Font.Style := gridTest.Font.Style + [fsItalic]
  else
    gridTest.Font.Style := gridTest.Font.Style - [fsItalic];
end;

procedure TfrmUIConfig.memDataGridGRID_LINE_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.GridLineColor := memDataGridGRID_LINE_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridGRID_INDICATOR_WIDTHChange(
  Sender: TField);
begin
  inherited;
  gridTest.GrIndicatorWidth := memDataGridGRID_INDICATOR_WIDTH.Value;
end;

procedure TfrmUIConfig.memDataGridGROUP_NODE_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.GroupNodeColor := memDataGridGROUP_NODE_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridGROUP_PANEL_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.GroupPanelColor := memDataGridGROUP_PANEL_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridHEADER_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.HeaderColor := memDataGridHEADER_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridHEADER_FONT_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.HeaderFont.Color := memDataGridHEADER_FONT_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridHEADER_FONT_SIZEChange(Sender: TField);
begin
  inherited;
  gridTest.HeaderFont.Size := memDataGridHEADER_FONT_SIZE.Value;
end;

procedure TfrmUIConfig.memDataGridHEADER_FONT_STYLE_BOLDChange(
  Sender: TField);
begin
  inherited;
  if memDataGridHEADER_FONT_STYLE_BOLD.Value = 1 then
    gridTest.HeaderFont.Style := gridTest.HeaderFont.Style + [fsBold]
  else
    gridTest.HeaderFont.Style := gridTest.HeaderFont.Style - [fsBold];

end;

procedure TfrmUIConfig.memDataGridHEADER_FONT_STYLE_ITALICChange(
  Sender: TField);
begin
  inherited;
  if memDataGridHEADER_FONT_STYLE_ITALIC.Value = 1 then
    gridTest.HeaderFont.Style := gridTest.HeaderFont.Style + [fsItalic]
  else
    gridTest.HeaderFont.Style := gridTest.HeaderFont.Style - [fsItalic];
end;

procedure TfrmUIConfig.memDataGridLOOK_AND_FEELChange(Sender: TField);
begin
  inherited;
  gridTest.LookAndFeel := TdxLookAndFeel(StrToIntDef(memDataGridLOOK_AND_FEEL.Value, 0));
end;

procedure TfrmUIConfig.memDataGridOPTION_BEHAVIOR_AUTO_SEARCHChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_BEHAVIOR_AUTO_SEARCH.Value = 1 then
    gridTest.OptionsBehavior := gridTest.OptionsBehavior + [edgoAutoSearch]
  else
    gridTest.OptionsBehavior := gridTest.OptionsBehavior - [edgoAutoSearch]
end;

procedure TfrmUIConfig.memDataGridOPTION_BEHAVIOR_ENTER_THROUGHChange(
  Sender: TField);
begin
  inherited;

  if memDataGridOPTION_BEHAVIOR_ENTER_THROUGH.Value = 1 then
    gridTest.OptionsBehavior := gridTest.OptionsBehavior + [edgoEnterThrough]
  else
    gridTest.OptionsBehavior := gridTest.OptionsBehavior - [edgoEnterThrough]
end;

procedure TfrmUIConfig.memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITORChange(
  Sender: TField);
begin
  inherited;

  if memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITOR.Value = 1 then
    gridTest.OptionsBehavior := gridTest.OptionsBehavior + [edgoImmediateEditor]
  else
    gridTest.OptionsBehavior := gridTest.OptionsBehavior - [edgoImmediateEditor]
end;

procedure TfrmUIConfig.memDataGridOPTION_BEHAVIOR_TAB_THROUGHChange(
  Sender: TField);
begin
  inherited;

  if memDataGridOPTION_BEHAVIOR_TAB_THROUGH.Value = 1 then
    gridTest.OptionsBehavior := gridTest.OptionsBehavior + [edgoTabs]
  else
    gridTest.OptionsBehavior := gridTest.OptionsBehavior - [edgoTabThrough]
end;

procedure TfrmUIConfig.memDataGridOPTION_DB_LOAD_ALL_RECORDChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_DB_LOAD_ALL_RECORD.Value = 1 then
    gridTest.OptionsDB := gridTest.OptionsDB + [edgoLoadAllRecords]
  else
    gridTest.OptionsDB := gridTest.OptionsDB - [edgoLoadAllRecords]
end;

procedure TfrmUIConfig.memDataGridOPTION_DB_PARTIAL_LOADChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_DB_PARTIAL_LOAD.Value = 1 then
    gridTest.OptionsDB := gridTest.OptionsDB + [edgoPartialLoad]
  else
    gridTest.OptionsDB := gridTest.OptionsDB - [edgoPartialLoad]

end;

procedure TfrmUIConfig.memDataGridOPTION_DB_SMART_REFRESHChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_DB_SMART_REFRESH.Value = 1 then
    gridTest.OptionsDB := gridTest.OptionsDB + [edgoSmartRefresh]
  else
    gridTest.OptionsDB := gridTest.OptionsDB - [edgoSmartRefresh]

end;

procedure TfrmUIConfig.memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHTChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT.Value = 1 then
    gridTest.OptionsView := gridTest.OptionsView + [edgoAutoHeaderPanelHeight]
  else
    gridTest.OptionsView := gridTest.OptionsView - [edgoAutoHeaderPanelHeight]

end;

procedure TfrmUIConfig.memDataGridOPTION_VIEW_AUTO_WIDTHChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_VIEW_AUTO_WIDTH.Value = 1 then
    gridTest.OptionsView := gridTest.OptionsView + [edgoAutoWidth]
  else
    gridTest.OptionsView := gridTest.OptionsView - [edgoAutoWidth]

end;

procedure TfrmUIConfig.memDataGridOPTION_VIEW_INDICATORChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_VIEW_INDICATOR.Value = 1 then
    gridTest.OptionsView := gridTest.OptionsView + [edgoIndicator]
  else
    gridTest.OptionsView := gridTest.OptionsView - [edgoIndicator]

end;

procedure TfrmUIConfig.memDataGridOPTION_VIEW_ROW_AUTO_HEIGHTChange(
  Sender: TField);
begin
  inherited;
  if memDataGridOPTION_VIEW_ROW_AUTO_HEIGHT.Value = 1 then
    gridTest.OptionsView := gridTest.OptionsView + [edgoRowAutoHeight]
  else
    gridTest.OptionsView := gridTest.OptionsView - [edgoRowAutoHeight]
end;

procedure TfrmUIConfig.memDataGridSHOW_GRIDChange(Sender: TField);
begin
  inherited;
  gridTest.ShowGrid := (memDataGridSHOW_GRID.Value = 1);
end;

procedure TfrmUIConfig.memDataGridSHOW_HEADERChange(Sender: TField);
begin
  inherited;
  gridTest.ShowHeader := (memDataGridSHOW_HEADER.Value = 1);
end;

procedure TfrmUIConfig.memDataGridSHOW_NEW_ITEM_ROWChange(Sender: TField);
begin
  inherited;
  gridTest.ShowNewItemRow := (memDataGridSHOW_NEW_ITEM_ROW.Value = 1);
end;

procedure TfrmUIConfig.memDataGridSHOW_ROW_FOOTERChange(Sender: TField);
begin
  inherited;
  gridTest.ShowRowFooter := (memDataGridSHOW_ROW_FOOTER.Value = 1);
end;

procedure TfrmUIConfig.memDataGridSHOW_SUMMARY_FOOTERChange(
  Sender: TField);
begin
  inherited;
  gridTest.ShowSummaryFooter := (memDataGridSHOW_SUMMARY_FOOTER.Value = 1);
end;

procedure TfrmUIConfig.memDataGridSHOW_BANDChange(Sender: TField);
begin
  inherited;
  gridTest.ShowBands := (memDataGridSHOW_BAND.Value = 1);
end;

procedure TfrmUIConfig.memDataGridSHOW_GROUP_PANELChange(Sender: TField);
begin
  inherited;
  gridTest.ShowGroupPanel := (memDataGridSHOW_GROUP_PANEL.Value = 1);
end;

procedure TfrmUIConfig.memDataGridSTORE_INI_FILEChange(Sender: TField);
begin
  inherited;
  if memDataGridSTORE_INI_FILE.Value = 1 then
    gridTest.OptionsBehavior := gridTest.OptionsBehavior + [edgoStoreToIniFile]
  else
    gridTest.OptionsBehavior := gridTest.OptionsBehavior - [edgoStoreToIniFile]
end;

procedure TfrmUIConfig.acLoadDataGridExecute(Sender: TObject);
var
  int_value: integer;
  ret : Boolean; 
begin
  inherited;
  Screen.Cursor := crSQLWait;
  //=========== Locked by ThuyPTP - 25/11/2007 ================
  //====== Khong su dung tu database mà lay tu Registry =======
  //========== Load memDataGrid data=======//
  {memDataGrid.DisableControls;
  if memDataGrid.Active then memDataGrid.Close;
  memDataGrid.Open;
  memDataGrid.Insert;

  if not qryDataGrid.IsEmpty then
  begin
    qryDataGrid.First;
    while not qryDataGrid.Eof do
    begin
      if qryDataGridPROP_ID.AsString = 'BAND_FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryDataGridPROP_VAL.Value, 0);
        memDataGridBAND_FONT_STYLE_BOLD.Value := int_value mod 2;
        memDataGridBAND_FONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if qryDataGridPROP_ID.AsString = 'HEADER_FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryDataGridPROP_VAL.Value, 0);
        memDataGridHEADER_FONT_STYLE_BOLD.Value := int_value mod 2;
        memDataGridHEADER_FONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if qryDataGridPROP_ID.AsString = 'FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryDataGridPROP_VAL.Value, 0);
        memDataGridFONT_STYLE_BOLD.Value := int_value mod 2;
        memDataGridFONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if qryDataGridPROP_ID.AsString = 'OPTION_BEHAVIOR' then
      begin
        int_value := StrToIntdef(qryDataGridPROP_VAL.Value, 0);
        memDataGridOPTION_BEHAVIOR_AUTO_SEARCH.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_BEHAVIOR_ENTER_THROUGH.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITOR.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_BEHAVIOR_TAB_THROUGH.Value := int_value mod 2;
        int_value := int_value div 2;
      end
      else
        if qryDataGridPROP_ID.AsString = 'OPTION_DB' then
      begin
        int_value := StrToIntdef(qryDataGridPROP_VAL.Value, 0);
        memDataGridOPTION_DB_LOAD_ALL_RECORD.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_DB_PARTIAL_LOAD.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_DB_SMART_REFRESH.Value := int_value mod 2;
      end
      else
        if qryDataGridPROP_ID.AsString = 'OPTION_VIEW' then
      begin
        int_value := StrToIntdef(qryDataGridPROP_VAL.Value, 0);
        memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_VIEW_AUTO_WIDTH.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_VIEW_INDICATOR.Value := int_value mod 2;
        int_value := int_value div 2;
        memDataGridOPTION_VIEW_ROW_AUTO_HEIGHT.Value := int_value mod 2;
      end
      else
        if Assigned(memDataGrid.FindField(qryDataGridPROP_ID.AsString)) then
      begin
        if not qryDataGridPROP_VAL.IsNull then
          memDataGrid.FieldByName(qryDataGridPROP_ID.AsString).Value :=
            qryDataGridPROP_VAL.Value;
      end;
      qryDataGrid.Next;
    end;
  end;
  //========== Ending load data===============//
  memDataGrid.Post;
  memDataGrid.EnableControls;}
  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REG_PATH + 'Data Grid');
  if ret = false then
    exit;
  reg.OpenKey(REG_PATH + 'Data Grid', False);
  if ret then
  begin
    memDataGrid.DisableControls;
    if memDataGrid.Active then memDataGrid.Close;
    memDataGrid.Open;
    memDataGrid.Insert;

    if not qryDataGrid.IsEmpty then
    begin
      qryDataGrid.First;
      while not qryDataGrid.Eof do
      begin
        if qryDataGridPROP_ID.AsString = 'BAND_FONT_STYLE' then
        begin
          int_value := StrToIntdef(reg.ReadString('BAND_FONT_STYLE'),0);
          memDataGridBAND_FONT_STYLE_BOLD.Value := int_value mod 2;
          memDataGridBAND_FONT_STYLE_ITALIC.Value := int_value div 2;
        end
        else
          if qryDataGridPROP_ID.AsString = 'HEADER_FONT_STYLE' then
          begin
            int_value := StrToIntdef(reg.ReadString('HEADER_FONT_STYLE'), 0);
            memDataGridHEADER_FONT_STYLE_BOLD.Value := int_value mod 2;
            memDataGridHEADER_FONT_STYLE_ITALIC.Value := int_value div 2;
          end
          else
            if qryDataGridPROP_ID.AsString = 'FONT_STYLE' then
            begin
              int_value := StrToIntdef(reg.ReadString('FONT_STYLE'), 0);
              memDataGridFONT_STYLE_BOLD.Value := int_value mod 2;
              memDataGridFONT_STYLE_ITALIC.Value := int_value div 2;
            end
            else
              if qryDataGridPROP_ID.AsString = 'OPTION_BEHAVIOR' then
              begin
                int_value := StrToIntdef(reg.ReadString('OPTION_BEHAVIOR'), 0);
                memDataGridOPTION_BEHAVIOR_AUTO_SEARCH.Value := int_value mod 2;
                int_value := int_value div 2;
                memDataGridOPTION_BEHAVIOR_ENTER_THROUGH.Value := int_value mod 2;
                int_value := int_value div 2;
                memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITOR.Value := int_value mod 2;
                int_value := int_value div 2;
                memDataGridOPTION_BEHAVIOR_TAB_THROUGH.Value := int_value mod 2;
                int_value := int_value div 2;
              end
              else
                if qryDataGridPROP_ID.AsString = 'OPTION_DB' then
                begin
                  int_value := StrToIntdef(reg.ReadString('OPTION_DB'), 0);
                  memDataGridOPTION_DB_LOAD_ALL_RECORD.Value := int_value mod 2;
                  int_value := int_value div 2;
                  memDataGridOPTION_DB_PARTIAL_LOAD.Value := int_value mod 2;
                  int_value := int_value div 2;
                  memDataGridOPTION_DB_SMART_REFRESH.Value := int_value mod 2;
                end
                else
                  if qryDataGridPROP_ID.AsString = 'OPTION_VIEW' then
                  begin
                    int_value := StrToIntdef(reg.ReadString('OPTION_VIEW'), 0);
                    memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT.Value := int_value mod 2;
                    int_value := int_value div 2;
                    memDataGridOPTION_VIEW_AUTO_WIDTH.Value := int_value mod 2;
                    int_value := int_value div 2;
                    memDataGridOPTION_VIEW_INDICATOR.Value := int_value mod 2;
                    int_value := int_value div 2;
                    memDataGridOPTION_VIEW_ROW_AUTO_HEIGHT.Value := int_value mod 2;
                  end
                  else
                    if Assigned(memDataGrid.FindField(qryDataGridPROP_ID.AsString)) then
                    begin
                      if not (reg.ReadString(qryDataGridPROP_ID.AsString) = null) then
                        memDataGrid.FieldByName(qryDataGridPROP_ID.AsString).Value :=
                            reg.ReadString(qryDataGridPROP_ID.AsString);
      end;
        qryDataGrid.Next;
      end;
    end;

    memDataGrid.Post;
    memDataGrid.EnableControls;
  end;
  //******************************************************
  Screen.Cursor := crDefault;
end;


procedure TfrmUIConfig.memDataGridHIGH_LIGHT_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.HighlightColor := memDataGridHIGH_LIGHT_COLOR.Value;
end;

procedure TfrmUIConfig.memDataGridHIGH_LIGHT_TEXT_COLORChange(
  Sender: TField);
begin
  inherited;
  gridTest.HighlightTextColor := memDataGridHIGH_LIGHT_TEXT_COLOR.Value;
end;

procedure TfrmUIConfig.acApdung_DGUpdate(Sender: TObject);
begin
  inherited;
  acApdung_DG.Enabled := (memDataGrid.State in [dsEdit, dsInsert]);
end;

procedure TfrmUIConfig.acApdung_DGExecute(Sender: TObject);
var
  int_value: integer;
  ret : Boolean; 
begin
  inherited;
  Screen.Cursor := crSQLWait;
  //=========== Edited by ThuyPTP - 25/11/2007 ================
  //====== Khong su dung tu database mà lay tu Registry =======
  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REG_PATH + 'Data Grid');
  if ret = false then
    reg.CreateKey(REG_PATH + 'Data Grid');
  reg.OpenKey(REG_PATH + 'Data Grid', False);

  if memDataGrid.State in [dsEdit, dsInsert] then
    memDataGrid.Post;
{  if qryDataGrid.IsEmpty then
    acLuumoi_DG.Execute
  else
  begin}
    qryDataGrid.First;
    while not qryDataGrid.Eof do
    begin
      {if not (qryDataGrid.State in [dsEdit, dsInsert]) then
        qryDataGrid.Edit;}

      if qryDataGridPROP_ID.AsString = 'BAND_FONT_STYLE' then
        reg.WriteString('BAND_FONT_STYLE',
          IntToStr(memDataGridBAND_FONT_STYLE_BOLD.Value +
          memDataGridBAND_FONT_STYLE_ITALIC.Value*2))
      else
        if qryDataGridPROP_ID.AsString = 'HEADER_FONT_STYLE' then
          reg.WriteString('HEADER_FONT_STYLE',
            IntToStr(memDataGridHEADER_FONT_STYLE_BOLD.Value +
            memDataGridHEADER_FONT_STYLE_ITALIC.Value*2))
        else
          if qryDataGridPROP_ID.AsString = 'FONT_STYLE' then
            reg.WriteString('FONT_STYLE',
              IntToStr(memDataGridFONT_STYLE_BOLD.Value +
              memDataGridFONT_STYLE_ITALIC.Value*2))
          else
            if qryDataGridPROP_ID.AsString = 'OPTION_BEHAVIOR' then
              reg.WriteString('OPTION_BEHAVIOR',
                IntToStr(memDataGridOPTION_BEHAVIOR_AUTO_SEARCH.Value +
                memDataGridOPTION_BEHAVIOR_ENTER_THROUGH.Value*2 +
                memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITOR.Value*4 +
                memDataGridOPTION_BEHAVIOR_TAB_THROUGH.Value*8))
            else
              if qryDataGridPROP_ID.AsString = 'OPTION_DB' then
                reg.WriteString('OPTION_DB',
                  IntToStr(memDataGridOPTION_DB_LOAD_ALL_RECORD.Value +
                  memDataGridOPTION_DB_PARTIAL_LOAD.Value*2 +
                  memDataGridOPTION_DB_SMART_REFRESH.Value*4))
              else
                if qryDataGridPROP_ID.AsString = 'OPTION_VIEW' then
                  reg.WriteString('OPTION_VIEW',
                    IntToStr(memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT.Value +
                    memDataGridOPTION_VIEW_AUTO_WIDTH.Value*2 +
                    memDataGridOPTION_VIEW_INDICATOR.Value*4 +
                    memDataGridOPTION_VIEW_ROW_AUTO_HEIGHT.Value*8))
                else
                  if Assigned(memDataGrid.FindField(qryDataGridPROP_ID.AsString)) then
                    reg.WriteString(qryDataGridPROP_ID.AsString, VarToStr(memDataGrid.FieldByName(qryDataGridPROP_ID.AsString).Value));
      qryDataGrid.Next;
    end;

  dmMain.LoadGrid;
  Apply_LookAndFeel(dmMain.StyleWeb);
  Apply_StyleController(dmMain.StyleController);
  Screen.Cursor := crDefault;
end;


procedure TfrmUIConfig.acLuumoi_DGExecute(Sender: TObject);
var i, int_value: integer;
  field_name: string;
  band_font, header_font, grid_font, op_behavior, op_db, op_view: boolean;
begin
  inherited;
  band_font := false;
  header_font := false;
  grid_font := false;
  op_behavior := false;
  op_db := false;
  op_view := false;

  if memDataGrid.State in [dsEdit, dsInsert] then
    memDataGrid.Post;
  for i := 1 to memDataGrid.FieldCount - 1 do
  begin
    field_name := memDataGrid.fields[i].FieldName;

    if (Pos('BAND_FONT_STYLE', field_name) = 0) and
      (Pos('HEADER_FONT_STYLE', field_name) = 0) and
      (Pos('FONT_STYLE', field_name) = 0) and
      (Pos('OPTION_BEHAVIOR', field_name) = 0) and
      (Pos('OPTION_DB', field_name) = 0) and
      (Pos('OPTION_VIEW', field_name) = 0)
      then
    begin
      qryDataGrid.Insert;
      qryDataGridPROP_ID.Value := field_name;
      qryDataGridPROP_VAL.Value := VarToStr(memDataGrid.FieldByName(field_name).Value);
    end
    else
      if (Pos('BAND_FONT_STYLE', field_name) > 0) and (band_font = false) then
    begin
      qryDataGrid.Insert;
      qryDataGridPROP_ID.Value := 'BAND_FONT_STYLE';
      qryDataGridPROP_VAL.Value :=
        IntToStr(memDataGridBAND_FONT_STYLE_BOLD.Value +
        memDataGridBAND_FONT_STYLE_ITALIC.Value*2);
      band_font := true;
    end
    else
      if (Pos('HEADER_FONT_STYLE', field_name) > 0) and (header_font = false) then
    begin
      qryDataGrid.Insert;
      qryDataGridPROP_ID.Value := 'HEADER_FONT_STYLE';
      qryDataGridPROP_VAL.Value :=
        IntToStr(memDataGridHEADER_FONT_STYLE_BOLD.Value +
        memDataGridHEADER_FONT_STYLE_ITALIC.Value*2);
      header_font := true;
    end
    else
      if (Pos('FONT_STYLE', field_name) = 1) and (grid_font = false) then
    begin
      qryDataGrid.Insert;
      qryDataGridPROP_ID.Value := 'FONT_STYLE';
      qryDataGridPROP_VAL.Value :=
        IntToStr(memDataGridFONT_STYLE_BOLD.Value +
        memDataGridFONT_STYLE_ITALIC.Value*2);
      grid_font := true;
    end
    else
      if (Pos('OPTION_BEHAVIOR', field_name) > 0) and (op_behavior = false) then
    begin
      qryDataGrid.Insert;
      qryDataGridPROP_ID.Value := 'OPTION_BEHAVIOR';
      qryDataGridPROP_VAL.Value :=
        IntToStr(memDataGridOPTION_BEHAVIOR_AUTO_SEARCH.Value +
        memDataGridOPTION_BEHAVIOR_ENTER_THROUGH.Value*2 +
        memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITOR.Value*4 +
        memDataGridOPTION_BEHAVIOR_TAB_THROUGH.Value*8);
      op_behavior := true;
    end
    else
      if (Pos('OPTION_DB', field_name) > 0) and (op_db = false) then
    begin
      qryDataGrid.Insert;
      qryDataGridPROP_ID.Value := 'OPTION_DB';
      qryDataGridPROP_VAL.Value :=
        IntToStr(memDataGridOPTION_DB_LOAD_ALL_RECORD.Value +
        memDataGridOPTION_DB_PARTIAL_LOAD.Value*2 +
        memDataGridOPTION_DB_SMART_REFRESH.Value*4);
      op_db := true;
    end
    else
      if (Pos('OPTION_VIEW', field_name) > 0) and (op_view = false) then
    begin
      qryDataGrid.Insert;
      qryDataGridPROP_ID.Value := 'OPTION_VIEW';
      qryDataGridPROP_VAL.Value :=
        IntToStr(memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT.Value +
        memDataGridOPTION_VIEW_AUTO_WIDTH.Value*2 +
        memDataGridOPTION_VIEW_INDICATOR.Value*4 +
        memDataGridOPTION_VIEW_ROW_AUTO_HEIGHT.Value*8);
      op_view := true;
    end;
    if qryDataGrid.State in [dsInsert] then
      qryDataGrid.Post;
  end;
end;

procedure TfrmUIConfig.qryUIControlNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryUIControlCONTROL_TYPE.Value := 'UI_CONTROL';
end;

procedure TfrmUIConfig.memUIControlSPLITTER_SHOW_SNAP_BUTTONChange(
  Sender: TField);
begin
  inherited;
  splitTest.ShowSnapButton := (memUIControlSPLITTER_SHOW_SNAP_BUTTON.Value = 1);

end;

procedure TfrmUIConfig.memUIControlSPLITTER_DEFAULT_SIZEChange(
  Sender: TField);
begin
  inherited;
  splitTest.Width := memUIControlSPLITTER_DEFAULT_SIZE.Value;
end;

procedure TfrmUIConfig.memUIControlSPLITTER_BEVEL_INNERChange(
  Sender: TField);
begin
  inherited;
  splitTest.BevelInner := TBevelCut(StrToIntDef(memUIControlSPLITTER_BEVEL_INNER.Value,0));
end;

procedure TfrmUIConfig.memUIControlSPLITTER_USE_XP_THEMEChange(
  Sender: TField);
begin
  inherited;
  splitTest.UseXPThemes := (memUIControlSPLITTER_USE_XP_THEME.Value = 1);
end;

procedure TfrmUIConfig.memUIControlBUTTON_BEVEL_KINDChange(Sender: TField);
begin
  inherited;
  buttonTest.BevelKind := TBevelKind(StrToIntDef(memUIControlBUTTON_BEVEL_KIND.Value, 0));
end;

procedure TfrmUIConfig.memUIControlBUTTON_THIN_FRAMEChange(Sender: TField);
begin
  inherited;
  buttonTest.ThinFrame := (memUIControlBUTTON_THIN_FRAME.Value = 1);
end;

procedure TfrmUIConfig.memUIControlBUTTON_MONEY_FLATChange(Sender: TField);
begin
  inherited;
  buttonTest.MoneyFlat := (memUIControlBUTTON_MONEY_FLAT.Value = 1);

end;

procedure TfrmUIConfig.memUIControlBUTTON_MONEY_ACTIVE_COLORChange(
  Sender: TField);
begin
  inherited;
  buttonTest.MoneyFlatActiveColor := memUIControlBUTTON_MONEY_ACTIVE_COLOR.Value;

end;

procedure TfrmUIConfig.memUIControlBUTTON_MONEY_INACTIVE_COLORChange(
  Sender: TField);
begin
  inherited;
  buttonTest.MoneyFlatInactiveColor := memUIControlBUTTON_MONEY_INACTIVE_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlBUTTON_MONEY_DOWN_COLORChange(
  Sender: TField);
begin
  inherited;
  buttonTest.MoneyFlatDownColor := memUIControlBUTTON_MONEY_DOWN_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlBUTTON_FLATChange(Sender: TField);
begin
  inherited;
  buttonTest.Flat := (memUIControlBUTTON_FLAT.Value = 1);
end;

procedure TfrmUIConfig.memUIControlPAGE_ACTIVE_TAB_COLORChange(
  Sender: TField);
begin
  inherited;
  pageTest.ActiveTabColor := memUIControlPAGE_ACTIVE_TAB_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlPAGE_COLORChange(Sender: TField);
begin
  inherited;
  pageTest.Color := memUIControlPAGE_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlPAGE_FLATChange(Sender: TField);
begin
  inherited;
  pageTest.Flat := (memUIControlPAGE_FLAT.Value = 1);
end;

procedure TfrmUIConfig.memUIControlPAGE_FLAT_TAB_BORDER_COLORChange(
  Sender: TField);
begin
  inherited;
  pageTest.FlatTabBorderColor := memUIControlPAGE_FLAT_TAB_BORDER_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlPAGE_FONT_COLORChange(Sender: TField);
begin
  inherited;
  pageTest.Font.Color := memUIControlPAGE_FONT_COLOR.Value;
  pageTest.HotTrackFont.Color := memUIControlPAGE_FONT_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlPAGE_FONT_SIZEChange(Sender: TField);
begin
  inherited;
  pageTest.Font.Size := memUIControlPAGE_FONT_SIZE.Value;
  pageTest.HotTrackFont.Size := memUIControlPAGE_FONT_SIZE.Value;
end;

procedure TfrmUIConfig.memUIControlPAGE_FONT_STYLE_BOLDChange(
  Sender: TField);
begin
  inherited;
  if memUIControlPAGE_FONT_STYLE_BOLD.Value = 1 then
  begin
    pageTest.Font.Style := pageTest.Font.Style + [fsBold];
    pageTest.HotTrackFont.Style := pageTest.Font.Style + [fsBold]
  end
  else
  begin
    pageTest.Font.Style := pageTest.Font.Style - [fsBold];
    pageTest.HotTrackFont.Style := pageTest.Font.Style - [fsBold]
  end
end;

procedure TfrmUIConfig.memUIControlPAGE_FONT_STYLE_ITALICChange(
  Sender: TField);
begin
  inherited;
  if memUIControlPAGE_FONT_STYLE_ITALIC.Value = 1 then
  begin
    pageTest.Font.Style := pageTest.Font.Style + [fsItalic];
    pageTest.HotTrackFont.Style := pageTest.Font.Style + [fsItalic]
  end
  else
  begin
    pageTest.Font.Style := pageTest.Font.Style - [fsItalic];
    pageTest.HotTrackFont.Style := pageTest.Font.Style - [fsItalic]
  end
end;

procedure TfrmUIConfig.memUIControlPAGE_HOT_TRACKChange(Sender: TField);
begin
  inherited;
  pageTest.HotTrack := (memUIControlPAGE_HOT_TRACK.Value = 1);
end;

procedure TfrmUIConfig.memUIControlPAGE_INACTIVE_TAB_COLORChange(
  Sender: TField);
begin
  inherited;
  pageTest.InactiveTabColor := memUIControlPAGE_INACTIVE_TAB_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlPAGE_MULTI_LINEChange(Sender: TField);
begin
  inherited;
  if pageTest.Style<>etsAngledTabs then
  pageTest.Multiline := (memUIControlPAGE_MULTI_LINE.Value = 1);
end;

procedure TfrmUIConfig.memUIControlPAGE_SHOW_BORDERChange(Sender: TField);
begin
  inherited;
  pageTest.ShowBorder := (memUIControlPAGE_SHOW_BORDER.Value = 1);
end;

procedure TfrmUIConfig.memUIControlPAGE_TAB_BK_COLORChange(Sender: TField);
begin
  inherited;
  pageTest.TabBkColor := memUIControlPAGE_TAB_BK_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlPAGE_TAB_POSITIONChange(Sender: TField);
begin
  inherited;
  pageTest.TabPosition := TElTabPosition(StrToIntDef(memUIControlPAGE_TAB_POSITION.Value, 0));

end;

procedure TfrmUIConfig.memUIControlPAGE_STYLEChange(Sender: TField);
begin
  inherited;
  if TElTabStyle(StrToIntdef(memUIControlPAGE_STYLE.Value, 0))=etsAngledTabs then
    memUIControlPAGE_MULTI_LINE.Value:=0;
  pageTest.Style := TElTabStyle(StrToIntdef(memUIControlPAGE_STYLE.Value, 0));
end;

procedure TfrmUIConfig.memUIControlPAGE_USE_XP_THEMEChange(Sender: TField);
begin
  inherited;
  pageTest.UseXPThemes := (memUIControlPAGE_USE_XP_THEME.Value = 1);
end;

procedure TfrmUIConfig.memUIControlPAGE_VERTICAL_SIDE_CAPTIONChange(
  Sender: TField);
begin
  inherited;
  pageTest.VerticalSideCaptions := (memUIControlPAGE_VERTICAL_SIDE_CAPTION.Value = 1);
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_BKGROUND_BEGIN_COLORChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.BkGround.BeginColor := memUIControlSIDEBAR_BKGROUND_BEGIN_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_BKGROUND_END_COLORChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.BkGround.EndColor := memUIControlSIDEBAR_BKGROUND_END_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_BKGROUND_FILL_STYLEChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.BkGround.FillStyle := TdxSideBarFillStyle(StrToIntDef(memUIControlSIDEBAR_BKGROUND_FILL_STYLE.Value, 0));
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_BORDER_STYLEChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.BorderStyle := TBorderStyle(StrToIntDef(memUIControlSIDEBAR_BORDER_STYLE.Value, 0));
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_CAN_SELECTEDChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.CanSelected := (memUIControlSIDEBAR_CAN_SELECTED.Value = 1);

end;

procedure TfrmUIConfig.memUIControlSIDEBAR_GROUP_FONT_COLORChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.GroupFont.Color := memUIControlSIDEBAR_GROUP_FONT_COLOR.Value;

end;

procedure TfrmUIConfig.memUIControlSIDEBAR_GROUP_FONT_SIZEChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.GroupFont.Size := memUIControlSIDEBAR_GROUP_FONT_SIZE.Value;
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLDChange(
  Sender: TField);
begin
  inherited;
  if memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD.Value = 1 then
    sidebarTest.GroupFont.Style := sidebarTest.GroupFont.Style + [fsBold]
  else
    sidebarTest.GroupFont.Style := sidebarTest.GroupFont.Style - [fsBold];
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALICChange(
  Sender: TField);
begin
  inherited;
  if memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC.Value = 1 then
    sidebarTest.GroupFont.Style := sidebarTest.GroupFont.Style + [fsItalic]
  else
    sidebarTest.GroupFont.Style := sidebarTest.GroupFont.Style - [fsItalic];
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLDChange(
  Sender: TField);
begin
  inherited;
  if memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD.Value = 1 then
    sidebarTest.ItemFont.Style := sidebarTest.ItemFont.Style + [fsBold]
  else
    sidebarTest.ItemFont.Style := sidebarTest.ItemFont.Style - [fsBold];
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALICChange(
  Sender: TField);
begin
  inherited;
  if memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC.Value = 1 then
    sidebarTest.ItemFont.Style := sidebarTest.ItemFont.Style + [fsItalic]
  else
    sidebarTest.ItemFont.Style := sidebarTest.ItemFont.Style - [fsItalic];
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_ITEM_FONT_COLORChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.ItemFont.Color := memUIControlSIDEBAR_ITEM_FONT_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_ITEM_FONT_SIZEChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.ItemFont.Size := memUIControlSIDEBAR_ITEM_FONT_SIZE.Value;
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_PAINT_STYLEChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.PaintStyle := TdxsbPaintStyle(StrToIntDef(memUIControlSIDEBAR_PAINT_STYLE.Value, 0));

end;

procedure TfrmUIConfig.memUIControlSIDEBAR_SHOW_GROUPChange(
  Sender: TField);
begin
  inherited;
  sidebarTest.ShowGroups := (memUIControlSIDEBAR_SHOW_GROUP.Value = 1);
end;

procedure TfrmUIConfig.acLoadUIControlExecute(Sender: TObject);
var
  int_value: integer;
  ret : Boolean; 
begin
  inherited;
  Screen.Cursor := crSQLWait;
  //=========== Locked by ThuyPTP - 25/11/2007 ================
  //====== Khong su dung tu database mà lay tu Registry =======
  //========== Load memUIControl data=======//
  {memUIControl.DisableControls;
  if memUIControl.Active then memUIControl.Close;
  memUIControl.Open;
  memUIControl.Insert;

  if not qryUIControl.IsEmpty then
  begin
    qryUIControl.First;
    while not qryUIControl.Eof do
    begin
      if qryUIControlPROP_ID.AsString = 'SIDEBAR_GROUP_FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryUIControlPROP_VAL.Value, 0);
        memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD.Value := int_value mod 2;
        memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if qryUIControlPROP_ID.AsString = 'SIDEBAR_ITEM_FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryUIControlPROP_VAL.Value, 0);
        memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD.Value := int_value mod 2;
        memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if qryUIControlPROP_ID.AsString = 'PAGE_FONT_STYLE' then
      begin
        int_value := StrToIntdef(qryUIControlPROP_VAL.Value, 0);
        memUIControlPAGE_FONT_STYLE_BOLD.Value := int_value mod 2;
        memUIControlPAGE_FONT_STYLE_ITALIC.Value := int_value div 2;
      end
      else
        if Assigned(memUIControl.FindField(qryUIControlPROP_ID.AsString)) then
      begin
        if not qryUIControlPROP_VAL.IsNull then
          memUIControl.FieldByName(qryUIControlPROP_ID.AsString).Value :=
            qryUIControlPROP_VAL.Value;
      end;
      qryUIControl.Next;
    end;
  end;
  //========== Ending load data===============//
  memUIControl.Post;
  memUIControl.EnableControls;}
  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REG_PATH + 'UIControl');
  if ret = false then
    exit;
  reg.OpenKey(REG_PATH + 'UIControl', False);
  if ret then
  begin
    memUIControl.DisableControls;
    if memUIControl.Active then memUIControl.Close;
    memUIControl.Open;
    memUIControl.Insert;

    if not qryUIControl.IsEmpty then
    begin
      qryUIControl.First;
      while not qryUIControl.Eof do
      begin
        if qryUIControlPROP_ID.AsString = 'SIDEBAR_GROUP_FONT_STYLE' then
        begin
          int_value := StrToIntdef(reg.ReadString('SIDEBAR_GROUP_FONT_STYLE'),0);
          memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD.Value := int_value mod 2;
          memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC.Value := int_value div 2;
        end
        else
          if qryUIControlPROP_ID.AsString = 'SIDEBAR_ITEM_FONT_STYLE' then
          begin
            int_value := StrToIntdef(reg.ReadString('SIDEBAR_ITEM_FONT_STYLE'), 0);
            memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD.Value := int_value mod 2;
            memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC.Value := int_value div 2;
          end
          else
            if qryUIControlPROP_ID.AsString = 'PAGE_FONT_STYLE' then
            begin
              int_value := StrToIntdef(reg.ReadString('PAGE_FONT_STYLE'), 0);
              memUIControlPAGE_FONT_STYLE_BOLD.Value := int_value mod 2;
              memUIControlPAGE_FONT_STYLE_ITALIC.Value := int_value div 2;
            end
            else
              if Assigned(memUIControl.FindField(qryUIControlPROP_ID.AsString)) then
              begin
                if not (reg.ReadString(qryUIControlPROP_ID.AsString)=null) then
                    memUIControl.FieldByName(qryUIControlPROP_ID.AsString).Value :=
                      StrToIntdef(reg.ReadString(qryUIControlPROP_ID.AsString), 0);
              end;
        qryUIControl.Next;
      end;
    end;

    memUIControl.Post;
    memUIControl.EnableControls;
  end;
  //******************************************************
  Screen.Cursor := crDefault;
end;

procedure TfrmUIConfig.memUIControlBUTTON_USE_XP_THEMEChange(
  Sender: TField);
begin
  inherited;
  buttonTest.UseXPThemes:=(memUIControlBUTTON_USE_XP_THEME.Value=1);
  buttonTest_1.UseXPThemes:=(memUIControlBUTTON_USE_XP_THEME.Value=1);
  buttonTest_2.UseXPThemes:=(memUIControlBUTTON_USE_XP_THEME.Value=1);
  buttonTest_3.UseXPThemes:=(memUIControlBUTTON_USE_XP_THEME.Value=1);
  buttonTest_4.UseXPThemes:=(memUIControlBUTTON_USE_XP_THEME.Value=1);
end;

procedure TfrmUIConfig.memUIControlBUTTON_COLORChange(Sender: TField);
begin
  inherited;
  buttonTest.Color:=memUIControlBUTTON_COLOR.Value;
  buttonTest_1.Color:=memUIControlBUTTON_COLOR.Value;
  buttonTest_2.Color:=memUIControlBUTTON_COLOR.Value;
  buttonTest_3.Color:=memUIControlBUTTON_COLOR.Value;
  buttonTest_4.Color:=memUIControlBUTTON_COLOR.Value;
end;

procedure TfrmUIConfig.memUIControlSIDEBAR_COLORChange(Sender: TField);
begin
  inherited;
  sidebarTest.Color:=memUIControlSIDEBAR_COLOR.Value;
end;

procedure TfrmUIConfig.acApdung_UIControlUpdate(Sender: TObject);
begin
  inherited;
  acApdung_UIControl.Enabled:=(memUIControl.State in [dsEdit,dsInsert]);
end;

procedure TfrmUIConfig.acApdung_UIControlExecute(Sender: TObject);
var
  int_value: integer;
  ret : Boolean;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  //=========== Edited by ThuyPTP - 25/11/2007 ================
  //====== Khong su dung tu database mà lay tu Registry =======
  //************************************************************************
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;

  ret := reg.KeyExists(REG_PATH + 'UIControl');
  if ret = false then
    reg.CreateKey(REG_PATH + 'UIControl');
  reg.OpenKey(REG_PATH + 'UIControl', False);


  if memUIControl.State in [dsEdit, dsInsert] then
    memUIControl.Post;
  {if qryUIControl.IsEmpty then
    acLuumoi_UIControl.Execute
  else}
  begin
    qryUIControl.First;
    while not qryUIControl.Eof do
    begin
      {if not (qryUIControl.State in [dsEdit, dsInsert]) then
        qryUIControl.Edit;}

      if qryUIControlPROP_ID.AsString = 'PAGE_FONT_STYLE' then
        reg.WriteString('PAGE_FONT_STYLE',
          IntToStr(memUIControlPAGE_FONT_STYLE_BOLD.Value +
          memUIControlPAGE_FONT_STYLE_ITALIC.Value*2))
      else
        if qryUIControlPROP_ID.AsString = 'SIDEBAR_GROUP_FONT_STYLE' then
          reg.WriteString('SIDEBAR_GROUP_FONT_STYLE',
            IntToStr(memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD.Value +
            memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC.Value*2))
        else
          if qryUIControlPROP_ID.AsString = 'SIDEBAR_ITEM_FONT_STYLE' then
            reg.WriteString('SIDEBAR_ITEM_FONT_STYLE',
              IntToStr(memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD.Value +
              memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC.Value*2))
          else
            if Assigned(memUIControl.FindField(qryUIControlPROP_ID.AsString)) then
                reg.WriteString(qryUIControlPROP_ID.AsString,
                  VarToStr(memUIControl.FieldByName(qryUIControlPROP_ID.AsString).Value));
      qryUIControl.Next;
    end;
  end;
  dmMain.LoadUIControl;
  Screen.Cursor := crDefault;
end;


procedure TfrmUIConfig.memUIControlPAGE_HOT_TRACK_FONT_COLORChange(
  Sender: TField);
begin
  inherited;
  pageTest.HotTrackFont.Color:=memUIControlPAGE_HOT_TRACK_FONT_COLOR.Value;
end;

procedure TfrmUIConfig.acLuumoi_UIControlExecute(Sender: TObject);
var i, int_value: integer;
  field_name: string;
  page_font, sidebar_group_font, sidebar_item_font: boolean;
begin
  inherited;
  page_font := false;
  sidebar_group_font := false;
  sidebar_item_font := false;

  if memUIControl.State in [dsEdit, dsInsert] then
    memUIControl.Post;
  for i := 1 to memUIControl.FieldCount - 1 do
  begin
    field_name := memUIControl.fields[i].FieldName;
    if (Pos('PAGE_FONT_STYLE', field_name) = 0) and
      (Pos('SIDEBAR_GROUP_FONT_STYLE', field_name) = 0) and
      (Pos('SIDEBAR_ITEM_FONT_STYLE', field_name) = 0)
      then
    begin
      qryUIControl.Insert;
      qryUIControlPROP_ID.Value := field_name;
      qryUIControlPROP_VAL.Value := VarToStr(memUIControl.FieldByName(field_name).Value);
    end
    else
      if (Pos('PAGE_FONT_STYLE', field_name) > 0) and (page_font = false) then
    begin
      qryUIControl.Insert;
      qryUIControlPROP_ID.Value := 'PAGE_FONT_STYLE';
      qryUIControlPROP_VAL.Value :=
        IntToStr(memUIControlPAGE_FONT_STYLE_BOLD.Value +
        memUIControlPAGE_FONT_STYLE_ITALIC.Value*2);
      page_font := true;
    end
    else
      if (Pos('SIDEBAR_GROUP_FONT_STYLE', field_name) = 1) and (sidebar_group_font = false) then
    begin
      qryUIControl.Insert;
      qryUIControlPROP_ID.Value := 'SIDEBAR_GROUP_FONT_STYLE';
      qryUIControlPROP_VAL.Value :=
        IntToStr(memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD.Value +
        memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC.Value*2);
      sidebar_group_font := true;
    end
    else
      if (Pos('SIDEBAR_ITEM_FONT_STYLE', field_name) = 1) and (sidebar_item_font = false) then
    begin
      qryUIControl.Insert;
      qryUIControlPROP_ID.Value := 'SIDEBAR_ITEM_FONT_STYLE';
      qryUIControlPROP_VAL.Value :=
        IntToStr(memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD.Value +
        memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC.Value*2);
      sidebar_item_font := true;
    end;
    if qryUIControl.State in [dsInsert] then
      qryUIControl.Post;
  end;
end;


procedure TfrmUIConfig.memDataGridGROUP_PANEL_FONT_COLORChange(Sender: TField);
begin
  inherited;
  gridTest.GroupPanelFontColor := memDataGridGROUP_PANEL_FONT_COLOR.Value;
end;

procedure TfrmUIConfig.dxlcSelectLAFCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
var
  ret : Boolean; 
begin
  inherited;
  //************ lay mau giao dien dang su dung ************************
  path := qryLAFListLF_ID.AsString;
  acLoadLookAndFeel.Execute;
end;

end.

