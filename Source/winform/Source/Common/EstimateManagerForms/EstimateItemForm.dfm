inherited frmEstimateItem: TfrmEstimateItem
  Left = 209
  Top = 250
  Width = 745
  Height = 481
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 433
    Width = 737
  end
  inline frameToolbar1: TframeToolbar [1]
    Left = 0
    Top = 391
    Width = 737
    Height = 42
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 737
      Height = 42
      inherited btnDelete: TElPopupButton
        Top = 0
      end
      inherited btnInsert: TElPopupButton
        Top = 0
      end
      inherited btnSave: TElPopupButton
        Top = 0
      end
      inherited btnCancel: TElPopupButton
        Top = 0
      end
      inherited btnClose: TElPopupButton
        Top = 0
      end
      inherited btnHelp: TElPopupButton
        Top = 0
      end
      inherited btnChoose: TElPopupButton
        Top = 0
      end
      inherited btnCopy: TElPopupButton
        Top = 0
      end
      inherited btnFirst: TElPopupButton
        Top = 0
      end
      inherited btnLast: TElPopupButton
        Top = 0
      end
      inherited btnPrevious: TElPopupButton
        Top = 0
      end
      inherited btnNext: TElPopupButton
        Top = 0
      end
      inherited btnDesign: TElPopupButton
        Top = 0
      end
      inherited btnPreview: TElPopupButton
        Top = 0
      end
      inherited btnPrint: TElPopupButton
        Top = 0
      end
      inherited btnInsertEx: TElPopupButton
        Top = 0
      end
      inherited btnSendMail: TElPopupButton
        Top = 0
      end
      inherited btnGenerate: TElPopupButton
        Top = 0
      end
      inherited btnRelation: TElPopupButton
        Top = 0
      end
      inherited ElPopupButton1: TElPopupButton
        Top = 0
      end
    end
  end
  object pageMain: TElPageControl
    Left = 0
    Top = 0
    Width = 737
    Height = 391
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    OnChange = pageMainChange
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsAngledTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabTieuchi_Loaicongviec
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 2
    object tabTieuchi_Loaicongviec: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'H'#7879' th'#7889'ng ti'#234'u ch'#237' '#273#225'nh gi'#225
      object gridEstimateItem: TdxDBGrid
        Left = 0
        Top = 0
        Width = 441
        Height = 370
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEM_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        OnEnter = gridEstimateItemEnter
        DataSource = dsEstimateItem
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridEstimateItemITEM_NO: TdxDBGridColumn
          Caption = 'M'#227' ti'#234'u ch'#237' '
          HeaderAlignment = taCenter
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NO'
          Caption_UTF7 = 'M+AOM ti+AOo-u ch+AO0 '
        end
        object gridEstimateItemITEM_NAME: TdxDBGridColumn
          Caption = 'T'#234'n ti'#234'u ch'#237' '
          HeaderAlignment = taCenter
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'T+AOo-n ti+AOo-u ch+AO0 '
        end
        object gridEstimateItemSYS_NAME: TdxDBGridPopupColumn
          Caption = 'Thang '#273'i'#7875'm'
          HeaderAlignment = taCenter
          Width = 98
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SYS_NAME'
          OnCloseUp = gridEstimateItemSYS_NAMECloseUp
          OnInitPopup = gridEstimateItemSYS_NAMEInitPopup
          Caption_UTF7 = 'Thang +ARE-i+HsM-m'
        end
        object gridEstimateItemITEM_NOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250' th'#234'm'
          HeaderAlignment = taCenter
          Visible = False
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NOTE'
          Caption_UTF7 = 'Ghi ch+APo th+AOo-m'
        end
        object gridEstimateItemGROUP_NAME: TdxDBGridPopupColumn
          Alignment = taLeftJustify
          Caption = 'Ph'#226'n nh'#243'm'
          HeaderAlignment = taCenter
          Width = 106
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GROUP_NAME'
          OnCloseUp = gridEstimateItemGROUP_NAMECloseUp
          OnInitPopup = gridEstimateItemGROUP_NAMEInitPopup
          Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
        end
        object gridEstimateItemITEM_INDEX: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'Th'#7913' t'#7921
          HeaderAlignment = taCenter
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_INDEX'
          MinValue = 1.000000000000000000
          MaxValue = 99.000000000000000000
          Caption_UTF7 = 'Th+Huk t+HvE'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 441
        Top = 0
        Width = 4
        Height = 370
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridEstimateItem
        ControlBottomRight = gridApply
        AutoHide = False
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object gridApply: TdxDBGrid
        Left = 445
        Top = 0
        Width = 292
        Height = 370
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'WORK_TYPE_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        OnEnter = gridEstimateItemEnter
        DataSource = dsApply
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridApplyWORK_TYPE_NAME: TdxDBGridColumn
          Caption = 'Lo'#7841'i c'#244'ng vi'#7879'c'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 190
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WORK_TYPE_NAME'
          Caption_UTF7 = 'Lo+HqE-i c+APQ-ng vi+Hsc-c'
        end
        object gridApplyAPPLIED: TdxDBGridCheckColumn
          Caption = #193'p d'#7909'ng'
          HeaderAlignment = taCenter
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'APPLIED'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = '+AME-p d+HuU-ng'
        end
        object gridApplyCOEFF: TdxDBGridCalcColumn
          Caption = 'H'#7879' s'#7889
          HeaderAlignment = taCenter
          Width = 37
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COEFF'
          Caption_UTF7 = 'H+Hsc s+HtE'
        end
      end
    end
    object tabLoaicongviec_Tieuchi: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'Th'#7889'ng k'#234' theo lo'#7841'i c'#244'ng vi'#7879'c'
      Visible = False
      object gridSummary: TdxDBGrid
        Left = 0
        Top = 0
        Width = 737
        Height = 370
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEM_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnEnter = gridEstimateItemEnter
        DataSource = dsSummary
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridSummaryWORK_TYPE_NAME: TdxDBGridColumn
          Caption = 'Lo'#7841'i c'#244'ng vi'#7879'c'
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WORK_TYPE_NAME'
          GroupIndex = 0
          Caption_UTF7 = 'Lo+HqE-i c+APQ-ng vi+Hsc-c'
        end
        object gridSummaryITEM_NO: TdxDBGridColumn
          Caption = 'M'#227' ti'#234'u ch'#237
          HeaderAlignment = taCenter
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NO'
          Caption_UTF7 = 'M+AOM ti+AOo-u ch+AO0'
        end
        object gridSummaryITEM_NAME: TdxDBGridColumn
          Caption = 'Ti'#234'u ch'#237' '#273#225'nh gi'#225
          HeaderAlignment = taCenter
          Width = 183
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Ti+AOo-u ch+AO0 +AREA4Q-nh gi+AOE'
        end
        object gridSummaryCOEFF: TdxDBGridColumn
          Caption = 'H'#7879' s'#7889' '#273'i k'#232'm'
          HeaderAlignment = taCenter
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COEFF'
          Caption_UTF7 = 'H+Hsc s+HtE +ARE-i k+AOg-m'
        end
        object gridSummarySYS_NAME: TdxDBGridColumn
          Caption = 'H'#7879' th'#7889'ng thang '#273'i'#7875'm t'#432#417'ng '#7913'ng'
          HeaderAlignment = taCenter
          Width = 180
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SYS_NAME'
          Caption_UTF7 = 'H+Hsc th+HtE-ng thang +ARE-i+HsM-m t+AbABoQ-ng +Huk-ng'
        end
      end
    end
  end
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'H'#7879' th'#7889'ng ti'#234'u ch'#237' '#273#225'nh gi'#225
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 576
    Top = 104
  end
  object qryApply: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ITEM_NO'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06_A_V_Gui.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HR_APPLY_EST_ITEM'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   WORK_TYPE_NO = :OLD_WORK_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_APPLY_EST_ITEM SET'
      '   ITEM_NO = :ITEM_NO, /*PK*/'
      '   WORK_TYPE_NO = :WORK_TYPE_NO, /*PK*/'
      '   APPLIED = :APPLIED,'
      '   COEFF = :COEFF'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   WORK_TYPE_NO = :OLD_WORK_TYPE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_APPLY_EST_ITEM('
      '   ITEM_NO, /*PK*/'
      '   WORK_TYPE_NO, /*PK*/'
      '   APPLIED,'
      '   COEFF)'
      'VALUES ('
      '   :ITEM_NO,'
      '   :WORK_TYPE_NO,'
      '   :APPLIED,'
      '   :COEFF)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEstimateItem
    SQL.Strings = (
      'SELECT ITEM_NO'
      '     , HR_APPLY_EST_ITEM.WORK_TYPE_NO'
      '     , WORK_TYPE_NAME'
      '     , APPLIED'
      '     , COEFF'
      'FROM HR_APPLY_EST_ITEM'
      'JOIN HR_WORK_TYPE'
      '  on HR_APPLY_EST_ITEM.WORK_TYPE_NO=HR_WORK_TYPE.WORK_TYPE_NO'
      'where ITEM_NO=:ITEM_NO')
    FieldOptions = []
    Left = 324
    Top = 128
    object qryApplyITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryApplyWORK_TYPE_NO: TWideStringField
      FieldName = 'WORK_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryApplyWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Required = True
      Size = 30
    end
    object qryApplyAPPLIED: TIntegerField
      FieldName = 'APPLIED'
    end
    object qryApplyCOEFF: TIBOFloatField
      FieldName = 'COEFF'
    end
  end
  object dsApply: TDataSource
    DataSet = qryApply
    Left = 323
    Top = 158
  end
  object qryEstimateItem: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06_A_V_Gui.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HR_ESTIMATE_ITEM'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO')
    EditSQL.Strings = (
      'UPDATE HR_ESTIMATE_ITEM SET'
      '   ITEM_NO = :ITEM_NO, /*PK*/'
      '   ITEM_NAME = :ITEM_NAME,'
      '   GROUP_NO = :GROUP_NO,'
      '   ITEM_NOTE = :ITEM_NOTE,'
      '   SYS_ESTIMATE = :SYS_ESTIMATE,'
      '   ITEM_INDEX = :ITEM_INDEX'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_ESTIMATE_ITEM('
      '   ITEM_NO, /*PK*/'
      '   ITEM_NAME,'
      '   GROUP_NO,'
      '   ITEM_NOTE,'
      '   SYS_ESTIMATE,'
      '   ITEM_INDEX)'
      'VALUES ('
      '   :ITEM_NO,'
      '   :ITEM_NAME,'
      '   :GROUP_NO,'
      '   :ITEM_NOTE,'
      '   :SYS_ESTIMATE,'
      '   :ITEM_INDEX)')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryEstimateItemBeforePost
    AfterPost = qryEstimateItemAfterPost
    SQL.Strings = (
      'SELECT ITEM_NO'
      '     , ITEM_NAME'
      '     , HR_ESTIMATE_ITEM.GROUP_NO'
      '     , HR_ESTIMATE_GROUP.GROUP_NAME'
      '     , ITEM_NOTE'
      '     , SYS_ESTIMATE'
      '     , SYS_NAME'
      '     , ITEM_INDEX'
      '     , GROUP_INDEX'
      'FROM HR_ESTIMATE_ITEM'
      'JOIN HR_SYS_ESTIMATE on SYS_ESTIMATE=SYS_NO'
      
        'LEFT JOIN HR_ESTIMATE_GROUP on HR_ESTIMATE_ITEM.GROUP_NO=HR_ESTI' +
        'MATE_GROUP.GROUP_NO')
    FieldOptions = []
    Left = 276
    Top = 128
    object qryEstimateItemITEM_NO: TWideStringField
      Tag = 1
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryEstimateItemITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 126
    end
    object qryEstimateItemITEM_NOTE: TWideStringField
      FieldName = 'ITEM_NOTE'
      Size = 3072
    end
    object qryEstimateItemSYS_ESTIMATE: TWideStringField
      FieldName = 'SYS_ESTIMATE'
      Required = True
      Size = 30
    end
    object qryEstimateItemSYS_NAME: TWideStringField
      FieldName = 'SYS_NAME'
      Required = True
      Size = 126
    end
    object qryEstimateItemGROUP_NO: TWideStringField
      FieldName = 'GROUP_NO'
      Required = True
      Size = 30
    end
    object qryEstimateItemGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Required = True
      OnChange = qryEstimateItemGROUP_NAMEChange
      Size = 126
    end
    object qryEstimateItemITEM_INDEX: TIntegerField
      FieldName = 'ITEM_INDEX'
      Required = True
    end
    object qryEstimateItemGROUP_INDEX: TIntegerField
      FieldName = 'GROUP_INDEX'
    end
  end
  object dsEstimateItem: TDataSource
    DataSet = qryEstimateItem
    Left = 276
    Top = 158
  end
  object dsSummary: TDataSource
    DataSet = qrySummary
    Left = 275
    Top = 222
  end
  object qrySummary: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06_A_V_Gui.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEstimateItem
    SQL.Strings = (
      'SELECT '
      '       HR_APPLY_EST_ITEM.WORK_TYPE_NO'
      '     , WORK_TYPE_NAME'
      '     , HR_APPLY_EST_ITEM.ITEM_NO'
      '     , ITEM_NAME'
      '     , COEFF'
      '     , SYS_ESTIMATE'
      '     , SYS_NAME'
      'FROM HR_APPLY_EST_ITEM'
      'JOIN HR_WORK_TYPE'
      '  on HR_APPLY_EST_ITEM.WORK_TYPE_NO=HR_WORK_TYPE.WORK_TYPE_NO'
      'JOIN HR_ESTIMATE_ITEM '
      '  on HR_APPLY_EST_ITEM.ITEM_NO=HR_ESTIMATE_ITEM.ITEM_NO'
      'JOIN HR_SYS_ESTIMATE '
      '  on SYS_ESTIMATE=SYS_NO'
      'where APPLIED=1'
      'order by 2,4')
    FieldOptions = []
    Left = 276
    Top = 192
    object qrySummaryWORK_TYPE_NO: TWideStringField
      FieldName = 'WORK_TYPE_NO'
      Required = True
      Size = 30
    end
    object qrySummaryWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Required = True
      Size = 30
    end
    object qrySummaryITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qrySummaryITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 126
    end
    object qrySummaryCOEFF: TIBOFloatField
      FieldName = 'COEFF'
    end
    object qrySummarySYS_NAME: TWideStringField
      FieldName = 'SYS_NAME'
      Required = True
      Size = 126
    end
  end
end
