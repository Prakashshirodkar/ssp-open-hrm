inherited frmToolForWorkTotal: TfrmToolForWorkTotal
  Left = 213
  Top = 111
  Width = 767
  Height = 519
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 195
    Top = 0
    Height = 473
  end
  inherited sbMain: TElStatusBar
    Top = 473
    Width = 759
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 195
    Height = 473
    Align = alLeft
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object tlOrgMap: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 191
      Height = 441
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DEPT_NO'
      ParentField = 'P_DEPT_NO'
      Align = alLeft
      TabOrder = 0
      DataSource = frmWorkTimeManager.dsOrgMap
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object tlOrgMapDEPT_NAME: TdxDBTreeListColumn
        Caption = 'T'#234'n '#273#417'n v'#7883' - ph'#242'ng ban'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss - ph+API-ng ban'
      end
    end
    object dxCheck_ViewChild: TdxCheckEdit
      Left = 172
      Top = 448
      Width = 21
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dxCheck_ViewChildChange
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Control = tlOrgMap
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'Xem c'#7845'p con'
        Control = dxCheck_ViewChild
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutControl2: TdxLayoutControl [3]
    Left = 198
    Top = 0
    Width = 561
    Height = 473
    Align = alClient
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxInYear: TdxSpinEdit
      Left = 148
      Top = 29
      Width = 60
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton1: TElPopupButton
      Left = 208
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng k'#7871' tr'#432#7899'c'
      ImageIndex = 0
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acThangKetruoc
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 293
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng ti'#7871'p theo'
      ImageIndex = 3
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acThangtiepTheo
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPanel1: TElPanel
      Left = 2
      Top = 60
      Width = 480
      Height = 371
      Align = alNone
      BevelOuter = bvNone
      TransparentXPThemes = False
      UseXPThemes = False
      Color = 15466238
      MouseCapture = False
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object Splitter2: TSplitter
        Left = 169
        Top = 0
        Height = 371
      end
      object gridDayList: TdxDBGrid
        Left = 0
        Top = 0
        Width = 169
        Height = 371
        Bands = <
          item
            Caption = 'Th'#225'ng '
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'WORK_DATE'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsDayList
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        OnChangeNode = gridDayListChangeNode
        object gridDayListWEEY_DAY_NAME: TdxDBGridColumn
          Alignment = taLeftJustify
          Caption = 'Th'#7913
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridDayListWEEY_DAY_NAMECustomDrawCell
          FieldName = 'WEEY_DAY_NAME'
          Caption_UTF7 = 'Th+Huk'
        end
        object gridDayListWORK_DATE: TdxDBGridDateColumn
          Alignment = taCenter
          Caption = 'Ng'#224'y'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridDayListWORK_DATECustomDrawCell
          FieldName = 'WORK_DATE'
          Caption_UTF7 = 'Ng+AOA-y'
        end
        object gridDayListWEEK_DAY: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WEEK_DAY'
        end
      end
      object Panel1: TPanel
        Left = 172
        Top = 0
        Width = 308
        Height = 371
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'Panel1'
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 1
          Top = 209
          Width = 306
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object gridEmpWorkDay: TdxDBGrid
          Left = 1
          Top = 1
          Width = 306
          Height = 208
          Bands = <
            item
              Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsEmpWorkDay
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          object gridEmpWorkDayEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridEmpWorkDayFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridEmpWorkDayTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c v'#7909
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 179
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c v+HuU'
          end
        end
        object gridWorkTime: TdxDBGrid
          Left = 1
          Top = 212
          Width = 306
          Height = 158
          Bands = <
            item
              Caption = 'D'#7919' li'#7879'u ch'#7845'm c'#244'ng gi'#7901' c'#7911'a nh'#226'n vi'#234'n'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'HOUR_TIME'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsWorkTime
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          object gridWorkTimeHOUR_TIME: TdxDBGridTimeColumn
            Caption = 'S'#7889' gi'#7901
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HOUR_TIME'
            Caption_UTF7 = 'S+HtE gi+Ht0'
          end
          object gridWorkTimeWHT_NAME: TdxDBGridPopupColumn
            Caption = 'Lo'#7841'i gi'#7901' c'#244'ng '
            HeaderAlignment = taCenter
            Width = 152
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = gridWorkTimeWHT_NAMECustomDrawCell
            FieldName = 'WHT_NAME'
            OnCloseUp = gridWorkTimeWHT_NAMECloseUp
            OnInitPopup = gridWorkTimeWHT_NAMEInitPopup
            Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng '
          end
          object gridWorkTimeWHT_COLOR: TdxDBGridColumn
            DisableCustomizing = True
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WHT_COLOR'
          end
        end
      end
    end
    object ElPopupButton4: TElPopupButton
      Left = 233
      Top = 28
      Width = 60
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
      ImageIndex = 10
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acLoadData
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    inline frameToolbar1: TframeToolbar
      Left = 2
      Top = 425
      Width = 792
      Height = 46
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 792
      end
    end
    object dxInMonth: TdxImageEdit
      Left = 46
      Top = 28
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object dxSelectWHT: TdxPopupEdit
      Left = 382
      Top = 29
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnChange = dxSelectWHTChange
      OnCloseUp = dxSelectWHTCloseUp
      OnInitPopup = dxSelectWHTInitPopup
    end
    object ElPopupButton2: TElPopupButton
      Left = 522
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      ImageIndex = 40
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acMultiDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl2Item2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl2Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n th'#7901'i gian'
        LayoutDirection = ldHorizontal
        UseIndent = False
        object dxLayoutControl2Item6: TdxLayoutItem
          Caption = 'Th'#225'ng'
          Control = dxInMonth
          ControlOptions.ShowBorder = False
        end
        object dxlcYear: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'n'#259'm'
          Control = dxInYear
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avCenter
          Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
          Control = dxSelectWHT
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl2Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPanel1'
        ShowCaption = False
        Control = ElPanel1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
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
        Caption = 'C'#244'ng c'#7909' ch'#7845'm c'#244'ng nhanh - Ch'#7845'm c'#244'ng t'#7893'ng gi'#7901
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object memDayList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 239
    Top = 143
    object memDayListWEEK_DAY: TIntegerField
      FieldName = 'WEEK_DAY'
    end
    object memDayListWEEY_DAY_NAME: TWideStringField
      FieldName = 'WEEY_DAY_NAME'
      Size = 30
    end
    object memDayListWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
  end
  object dsDayList: TDataSource
    DataSet = memDayList
    Left = 239
    Top = 175
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 463
    Top = 199
    object acThangKetruoc: TAction
      Caption = 'acThangKetruoc'
      ImageIndex = 0
      OnExecute = acThangKetruocExecute
    end
    object acThangtiepTheo: TAction
      Caption = 'acThangtiepTheo'
      ImageIndex = 3
      OnExecute = acThangtiepTheoExecute
    end
    object acTaoDSNgay: TAction
      Caption = 'acTaoDSNgay'
      OnExecute = acTaoDSNgayExecute
    end
    object acXemdulieu: TAction
      Caption = 'acXemdulieu'
      OnExecute = acXemdulieuExecute
    end
    object acLoadData: TAction
      Caption = 'acLoadData'
      ImageIndex = 10
      OnExecute = acLoadDataExecute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      DataSource = dsEmpWorkDay
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 44
      DataSource = dsEmpWorkDay
    end
    object acMultiDelete: TAction
      Category = 'Dataset'
      Caption = 'acMultiDelete'
      ImageIndex = 40
      OnExecute = acMultiDeleteExecute
      OnUpdate = acMultiDeleteUpdate
    end
  end
  object qryEmpWorkDay: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_CHILD'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP-HRM2.1\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = frmWorkTimeManager.dsOrgMap
    SQL.Strings = (
      'SELECT'
      '    EMP_NO EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME'
      'FROM hr_get_emp_list(:USER_NAME,:DEPT_NO,:VIEW_CHILD)'
      'where IS_MAIN_POSITION=1 AND IS_DISMISSED=0')
    FieldOptions = []
    Left = 304
    Top = 144
    object qryEmpWorkDayEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryEmpWorkDayFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryEmpWorkDayTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
  end
  object dsEmpWorkDay: TDataSource
    DataSet = qryEmpWorkDay
    Left = 304
    Top = 176
  end
  object qryWorkTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP-HRM2.1\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORKING_TOTAL'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   WHT_NO = :OLD_WHT_NO AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    EditSQL.Strings = (
      'UPDATE HR_WORKING_TOTAL SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   WHT_NO = :WHT_NO, /*PK*/'
      '   WORK_DATE = :WORK_DATE, /*PK*/'
      '   HOUR_TIME = :HOUR_TIME,'
      '   WORK_TIME = :WORK_TIME'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   WHT_NO = :OLD_WHT_NO AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORKING_TOTAL('
      '   EMPLOYEE_NO, /*PK*/'
      '   WHT_NO, /*PK*/'
      '   WORK_DATE, /*PK*/'
      '   HOUR_TIME,'
      '   WORK_TIME)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :WHT_NO,'
      '   :WORK_DATE,'
      '   :HOUR_TIME,'
      '   :WORK_TIME)')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryWorkTimeBeforePost
    AfterPost = qryWorkTimeAfterPost
    OnNewRecord = qryWorkTimeNewRecord
    DataSource = dsEmpWorkDay
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , WORK_DATE'
      '     , HOUR_TIME'
      '     , WORK_TIME'
      '     , HR_WORKING_TOTAL.WHT_NO'
      '     , WHT_NAME'
      '     , WHT_COLOR'
      'FROM HR_WORKING_TOTAL'
      'LEFT JOIN HR_WORK_HOUR_TYPE'
      '  on HR_WORKING_TOTAL.WHT_NO=HR_WORK_HOUR_TYPE.WHT_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and'
      '     WORK_DATE=:WORK_DATE')
    FieldOptions = []
    Left = 248
    Top = 224
    object qryWorkTimeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryWorkTimeWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryWorkTimeHOUR_TIME: TTimeField
      FieldName = 'HOUR_TIME'
      Required = True
      OnChange = qryWorkTimeHOUR_TIMEChange
    end
    object qryWorkTimeWORK_TIME: TIBOFloatField
      FieldName = 'WORK_TIME'
      Required = True
    end
    object qryWorkTimeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryWorkTimeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryWorkTimeWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
  end
  object dsWorkTime: TDataSource
    DataSet = qryWorkTime
    Left = 248
    Top = 256
  end
  object qryUpdateWorkTime: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP-HRM2.1\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    OnError = qryUpdateWorkTimeError
    FieldOptions = []
    Left = 304
    Top = 224
  end
  object qryDelete: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP-HRM2.1\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORKING_TIME'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   START_TIME = :OLD_START_TIME AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    EditSQL.Strings = (
      'UPDATE HR_WORKING_TIME SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   START_TIME = :START_TIME, /*PK*/'
      '   WORK_DATE = :WORK_DATE, /*PK*/'
      '   END_TIME = :END_TIME,'
      '   WHT_NO = :WHT_NO,'
      '   END_DATE = :END_DATE,'
      '   TOTAL_TIME = :TOTAL_TIME'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   START_TIME = :OLD_START_TIME AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    InsertSQL.Strings = (
      'INSERT INTO HR_WORKING_TIME('
      '   EMPLOYEE_NO, /*PK*/'
      '   START_TIME, /*PK*/'
      '   WORK_DATE, /*PK*/'
      '   END_TIME,'
      '   WHT_NO,'
      '   END_DATE,'
      '   TOTAL_TIME)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :START_TIME,'
      '   :WORK_DATE,'
      '   :END_TIME,'
      '   :WHT_NO,'
      '   :END_DATE,'
      '   :TOTAL_TIME)')
    Unicode = True
    RecordCountAccurate = True
    OnError = qryUpdateWorkTimeError
    SQL.Strings = (
      'delete '
      'FROM HR_WORKING_TOTAL'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and'
      '     WORK_DATE=:WORK_DATE and'
      '     WHT_NO=:WHT_NO')
    FieldOptions = []
    Left = 304
    Top = 264
  end
end
