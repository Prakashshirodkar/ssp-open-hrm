inherited frmTax: TfrmTax
  Left = 192
  Top = 183
  Width = 621
  Height = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 372
    Width = 613
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 613
    Height = 372
    LookAndFeel = dmMain.StyleMacDinh
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 344
      Color = clCream
    end
    object mainPanel: TPanel [1]
      Left = 3
      Top = 3
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = clCream
      TabOrder = 4
      object gridTaxGroup: TdxDBGrid
        Left = 0
        Top = 0
        Width = 265
        Height = 41
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'TAX_GROUP_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        DataSource = dsTaxGroup
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridTaxGroupTAX_GROUP_NO: TdxDBGridColumn
          Caption = 'M'#227' s'#7889' '
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAX_GROUP_NO'
          Caption_UTF7 = 'M+AOM s+HtE '
        end
        object gridTaxGroupTAX_GROUP_NAME: TdxDBGridColumn
          Caption = 'Khung thu'#7871' thu nh'#7853'p '
          HeaderAlignment = taCenter
          Width = 217
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAX_GROUP_NAME'
          Caption_UTF7 = 'Khung thu+Hr8 thu nh+Hq0-p '
        end
        object gridTaxGroupNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Visible = False
          Width = 17319
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 265
        Top = 0
        Width = 5
        Height = 41
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridTaxGroup
        ControlBottomRight = gridTaxLevel
        AutoHide = False
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object gridTaxLevel: TdxDBGrid
        Left = 270
        Top = 0
        Width = 337
        Height = 41
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'FROM_INCOME'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        DataSource = dsTaxLevel
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridTaxLevelFROM_INCOME: TdxDBGridCalcColumn
          Caption = 'T'#7915' m'#7913'c '
          HeaderAlignment = taCenter
          Width = 106
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FROM_INCOME'
          Caption_UTF7 = 'T+Hus m+Huk-c '
        end
        object gridTaxLevelTO_INCOME: TdxDBGridCalcColumn
          Caption = #272#7871'n m'#7913'c'
          HeaderAlignment = taCenter
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TO_INCOME'
          Caption_UTF7 = '+ARAevw-n m+Huk-c'
        end
        object gridTaxLevelTAX_LEVEL: TdxDBGridCalcColumn
          Caption = 'Thu'#7871' (%) '
          HeaderAlignment = taCenter
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAX_LEVEL'
          Caption_UTF7 = 'Thu+Hr8 (%) '
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = mainPanel
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
        Caption = 'Khung thu'#7871' thu nh'#7853'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsTaxGroup: TDataSource
    DataSet = qryTaxGroup
    Left = 59
    Top = 115
  end
  object qryTaxGroup: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Project\TRUNG DUNG\SSP-HRM 2.0\Database\SSP_DB_FRAMEWORK.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TAX_GROUP'
      'WHERE'
      '   TAX_GROUP_NO = :OLD_TAX_GROUP_NO')
    EditSQL.Strings = (
      'UPDATE HR_TAX_GROUP SET'
      '   TAX_GROUP_NO = :TAX_GROUP_NO, /*PK*/'
      '   TAX_GROUP_NAME = :TAX_GROUP_NAME,'
      '   NOTE = :NOTE'
      'WHERE'
      '   TAX_GROUP_NO = :OLD_TAX_GROUP_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TAX_GROUP('
      '   TAX_GROUP_NO, /*PK*/'
      '   TAX_GROUP_NAME,'
      '   NOTE)'
      'VALUES ('
      '   :TAX_GROUP_NO,'
      '   :TAX_GROUP_NAME,'
      '   :NOTE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT TAX_GROUP_NO'
      '     , TAX_GROUP_NAME'
      '     , NOTE'
      'FROM HR_TAX_GROUP')
    FieldOptions = []
    Left = 59
    Top = 83
    object qryTaxGroupTAX_GROUP_NO: TWideStringField
      FieldName = 'TAX_GROUP_NO'
      Required = True
      Size = 30
    end
    object qryTaxGroupTAX_GROUP_NAME: TWideStringField
      FieldName = 'TAX_GROUP_NAME'
      Required = True
      Size = 126
    end
    object qryTaxGroupNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object qryTaxLevel: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'TAX_GROUP_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Project\TRUNG DUNG\SSP-HRM 2.0\Database\SSP_DB_FRAMEWORK.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TAX'
      'WHERE'
      '   FROM_INCOME = :OLD_FROM_INCOME AND'
      '   TAX_GROUP = :OLD_TAX_GROUP')
    EditSQL.Strings = (
      'UPDATE HR_TAX SET'
      '   FROM_INCOME = :FROM_INCOME, /*PK*/'
      '   TAX_GROUP = :TAX_GROUP, /*PK*/'
      '   TO_INCOME = :TO_INCOME,'
      '   TAX_LEVEL = :TAX_LEVEL'
      'WHERE'
      '   FROM_INCOME = :OLD_FROM_INCOME AND'
      '   TAX_GROUP = :OLD_TAX_GROUP')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TAX('
      '   FROM_INCOME, /*PK*/'
      '   TAX_GROUP, /*PK*/'
      '   TO_INCOME,'
      '   TAX_LEVEL)'
      'VALUES ('
      '   :FROM_INCOME,'
      '   :TAX_GROUP,'
      '   :TO_INCOME,'
      '   :TAX_LEVEL)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryTaxLevelNewRecord
    DataSource = dsTaxGroup
    SQL.Strings = (
      'SELECT FROM_INCOME'
      '     , TO_INCOME'
      '     , TAX_LEVEL'
      '     , TAX_GROUP'
      'FROM HR_TAX'
      'where TAX_GROUP=:TAX_GROUP_NO')
    FieldOptions = []
    Left = 99
    Top = 83
    object qryTaxLevelFROM_INCOME: TIBOFloatField
      FieldName = 'FROM_INCOME'
      Required = True
    end
    object qryTaxLevelTO_INCOME: TIBOFloatField
      FieldName = 'TO_INCOME'
    end
    object qryTaxLevelTAX_LEVEL: TIBOFloatField
      FieldName = 'TAX_LEVEL'
      Required = True
    end
    object qryTaxLevelTAX_GROUP: TWideStringField
      FieldName = 'TAX_GROUP'
      Required = True
      Size = 30
    end
  end
  object dsTaxLevel: TDataSource
    DataSet = qryTaxLevel
    Left = 99
    Top = 115
  end
end
