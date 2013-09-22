inherited frmWorkDateHourType: TfrmWorkDateHourType
  Left = 343
  Top = 223
  Width = 722
  Height = 503
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 450
    Width = 714
  end
  inline frameToolbar1: TframeToolbar [1]
    Left = 0
    Top = 404
    Width = 714
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 714
    end
  end
  object pageMain: TElPageControl
    Left = 0
    Top = 0
    Width = 714
    Height = 404
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    OnChange = pageMainChange
    RaggedRight = False
    ScrollOpposite = False
    Style = etsAngledTabs
    TabIndex = 1
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabWorkHourType
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
    object tabWorkDateType: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'Ph'#226'n lo'#7841'i ng'#224'y l'#224'm vi'#7879'c'
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 710
        Height = 381
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object gridWorkDateType: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'WDT_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsWorkDateType
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridWorkDateTypeWDT_NO: TdxDBGridColumn
            Caption = 'M'#227' lo'#7841'i '
            HeaderAlignment = taCenter
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WDT_NO'
            Caption_UTF7 = 'M+AOM lo+HqE-i '
          end
          object gridWorkDateTypeWDT_NAME: TdxDBGridColumn
            Caption = 'Ph'#226'n lo'#7841'i ng'#224'y c'#244'ng '
            HeaderAlignment = taCenter
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WDT_NAME'
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i ng+AOA-y c+APQ-ng '
          end
          object gridWorkDateTypeKI_HIEU: TdxDBGridColumn
            Caption = 'K'#237' hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KI_HIEU'
            Caption_UTF7 = 'K+AO0 hi+Hsc-u'
          end
          object gridWorkDateTypeWDT_RATE: TdxDBGridCalcColumn
            Caption = 'T'#7881' l'#7879
            HeaderAlignment = taCenter
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WDT_RATE'
            Caption_UTF7 = 'T+Hsk l+Hsc'
          end
          object gridWorkDateTypeCOLOR: TdxDBGridButtonColumn
            Caption = 'M'#224'u '#273#7841'i di'#7879'n'
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = gridWorkDateTypeCOLORCustomDrawCell
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = gridWorkDateTypeCOLORButtonClick
            Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
          end
          object gridWorkDateTypeWDT_NOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WDT_NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object gridWorkDateTypeWDT_COLOR: TdxDBGridMaskColumn
            Caption = 'M'#224'u '#273#7841'i di'#7879'n'
            DisableCaption = True
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 34
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'WDT_COLOR'
            DisableFilter = True
            Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
          end
          object gridWorkDateTypeORDER_INDEX: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'Th'#7913' t'#7921
            HeaderAlignment = taCenter
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ORDER_INDEX'
            Caption_UTF7 = 'Th+Huk t+HvE'
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridWorkDateType
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object tabWorkHourType: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'Ph'#226'n lo'#7841'i gi'#7901' l'#224'm vi'#7879'c'
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 710
        Height = 381
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object gridWorkHourType: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'WHT_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsWorkHourType
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridWorkHourTypeWHT_NO: TdxDBGridColumn
            Caption = 'M'#227' lo'#7841'i '
            HeaderAlignment = taCenter
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WHT_NO'
            Caption_UTF7 = 'M+AOM lo+HqE-i '
          end
          object gridWorkHourTypeWHT_NAME: TdxDBGridColumn
            Caption = 'Ph'#226'n lo'#7841'i gi'#7901' c'#244'ng '
            HeaderAlignment = taCenter
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WHT_NAME'
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i gi+Ht0 c+APQ-ng '
          end
          object gridWorkHourTypeKI_HIEU: TdxDBGridColumn
            Caption = 'K'#237' hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KI_HIEU'
            Caption_UTF7 = 'K+AO0 hi+Hsc-u'
          end
          object gridWorkHourTypeWHT_RATE: TdxDBGridCalcColumn
            Caption = 'T'#7881' l'#7879
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WHT_RATE'
            Caption_UTF7 = 'T+Hsk l+Hsc'
          end
          object gridWorkHourTypeCOLOR: TdxDBGridButtonColumn
            Caption = 'M'#224'u '#273#7841'i di'#7879'n'
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = gridWorkHourTypeCOLORCustomDrawCell
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = gridWorkHourTypeCOLORButtonClick
            Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
          end
          object gridWorkHourTypeWHT_NOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WHT_NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object gridWorkHourTypeWHT_COLOR: TdxDBGridColumn
            DisableCaption = True
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 147
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'WHT_COLOR'
            DisableFilter = True
          end
          object gridWorkHourTypeORDER_INDEX: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'Th'#7913' t'#7921
            HeaderAlignment = taCenter
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ORDER_INDEX'
            Caption_UTF7 = 'Th+Huk t+HvE'
          end
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridWorkHourType
            ControlOptions.ShowBorder = False
          end
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
        Caption = 'Danh m'#7909'c lo'#7841'i ng'#224'y gi'#7901' c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 496
  end
  object ColorDialog1: TColorDialog
    Left = 200
    Top = 88
  end
  object qryWorkDateType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORK_DATE_TYPE'
      'WHERE'
      '   WDT_NO = :OLD_WDT_NO')
    EditSQL.Strings = (
      'UPDATE HR_WORK_DATE_TYPE SET'
      '   WDT_NO = :WDT_NO, /*PK*/'
      '   WDT_NAME = :WDT_NAME,'
      '   WDT_RATE = :WDT_RATE,'
      '   WDT_COLOR = :WDT_COLOR,'
      '   WDT_NOTE = :WDT_NOTE,'
      '   ORDER_INDEX = :ORDER_INDEX,'
      '   KI_HIEU = :KI_HIEU'
      'WHERE'
      '   WDT_NO = :OLD_WDT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORK_DATE_TYPE('
      '   WDT_NO, /*PK*/'
      '   WDT_NAME,'
      '   WDT_RATE,'
      '   WDT_COLOR,'
      '   WDT_NOTE,'
      '   ORDER_INDEX,'
      '   KI_HIEU)'
      'VALUES ('
      '   :WDT_NO,'
      '   :WDT_NAME,'
      '   :WDT_RATE,'
      '   :WDT_COLOR,'
      '   :WDT_NOTE,'
      '   :ORDER_INDEX,'
      '   :KI_HIEU)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryWorkDateTypeNewRecord
    SQL.Strings = (
      'SELECT WDT_NO'
      '     , WDT_NAME'
      '     , WDT_RATE'
      '     , WDT_COLOR'
      '     , WDT_NOTE'
      '     , ORDER_INDEX'
      '     , KI_HIEU'
      'FROM HR_WORK_DATE_TYPE')
    FieldOptions = []
    Left = 42
    Top = 104
    object qryWorkDateTypeWDT_NO: TWideStringField
      Tag = 1
      FieldName = 'WDT_NO'
      Required = True
      Size = 30
    end
    object qryWorkDateTypeWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      Required = True
      Size = 126
    end
    object qryWorkDateTypeWDT_RATE: TIBOFloatField
      FieldName = 'WDT_RATE'
    end
    object qryWorkDateTypeWDT_COLOR: TIntegerField
      FieldName = 'WDT_COLOR'
    end
    object qryWorkDateTypeWDT_NOTE: TWideStringField
      FieldName = 'WDT_NOTE'
      Size = 3072
    end
    object qryWorkDateTypeORDER_INDEX: TIntegerField
      FieldName = 'ORDER_INDEX'
    end
    object qryWorkDateTypeKI_HIEU: TWideStringField
      FieldName = 'KI_HIEU'
      Size = 15
    end
  end
  object dsWorkDateType: TDataSource
    DataSet = qryWorkDateType
    Left = 42
    Top = 136
  end
  object qryWorkHourType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORK_HOUR_TYPE'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    EditSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   WHT_NO = :WHT_NO, /*PK*/'
      '   WHT_NAME = :WHT_NAME,'
      '   WHT_RATE = :WHT_RATE,'
      '   WHT_COLOR = :WHT_COLOR,'
      '   WHT_NOTE = :WHT_NOTE,'
      '   ORDER_INDEX = :ORDER_INDEX,'
      '   KI_HIEU = :KI_HIEU'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORK_HOUR_TYPE('
      '   WHT_NO, /*PK*/'
      '   WHT_NAME,'
      '   WHT_RATE,'
      '   WHT_COLOR,'
      '   WHT_NOTE,'
      '   ORDER_INDEX,'
      '   KI_HIEU)'
      'VALUES ('
      '   :WHT_NO,'
      '   :WHT_NAME,'
      '   :WHT_RATE,'
      '   :WHT_COLOR,'
      '   :WHT_NOTE,'
      '   :ORDER_INDEX,'
      '   :KI_HIEU)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryWorkHourTypeNewRecord
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      '     , WHT_RATE'
      '     , WHT_COLOR'
      '     , WHT_NOTE'
      '     , ORDER_INDEX'
      '     , KI_HIEU'
      'FROM HR_WORK_HOUR_TYPE')
    FieldOptions = []
    Left = 84
    Top = 104
    object qryWorkHourTypeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryWorkHourTypeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
    object qryWorkHourTypeWHT_RATE: TIBOFloatField
      FieldName = 'WHT_RATE'
    end
    object qryWorkHourTypeWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
    object qryWorkHourTypeWHT_NOTE: TWideStringField
      FieldName = 'WHT_NOTE'
      Size = 3072
    end
    object qryWorkHourTypeORDER_INDEX: TIntegerField
      FieldName = 'ORDER_INDEX'
    end
    object qryWorkHourTypeKI_HIEU: TWideStringField
      FieldName = 'KI_HIEU'
      Size = 15
    end
  end
  object dsWorkHourType: TDataSource
    DataSet = qryWorkHourType
    Left = 84
    Top = 136
  end
end
