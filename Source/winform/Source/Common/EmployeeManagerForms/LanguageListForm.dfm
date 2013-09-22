inherited frmLanguage: TfrmLanguage
  Left = 230
  Top = 222
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 415
      Color = 15466238
    end
    object Panel1: TPanel [1]
      Left = 2
      Top = 2
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 4
      object gridList: TdxDBGrid
        Left = 0
        Top = 0
        Width = 185
        Height = 217
        Bands = <
          item
            Caption = 'Danh s'#225'ch ngo'#7841'i ng'#7919
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'LANGUAGE_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alTop
        TabOrder = 0
        DataSource = dsList
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        object gridListLANGUAGE_NO: TdxDBGridColumn
          Caption = 'K'#253' hi'#7879'u'
          HeaderAlignment = taCenter
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LANGUAGE_NO'
          Caption_UTF7 = 'K+AP0 hi+Hsc-u'
        end
        object gridListLANGUAGE_NAME: TdxDBGridColumn
          Caption = 'T'#234'n ngo'#7841'i ng'#7919
          HeaderAlignment = taCenter
          Width = 315
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LANGUAGE_NAME'
          Caption_UTF7 = 'T+AOo-n ngo+HqE-i ng+Hu8'
        end
        object gridListNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 317
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 0
        Top = 217
        Width = 185
        Height = 5
        Cursor = crVSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridList
        ControlBottomRight = gridLevel
        AutoHide = False
        Align = alTop
      end
      object gridLevel: TdxDBGrid
        Left = 0
        Top = 222
        Width = 185
        Height = 191
        Bands = <
          item
            Caption = 'Danh s'#225'ch tr'#236'nh '#273#7897' ngo'#7841'i ng'#7919' t'#432#417'ng '#7913'ng'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'LEVEL_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        DataSource = dsLevel
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        object gridLevelLEVEL_NO: TdxDBGridColumn
          Caption = 'K'#253' hi'#7879'u tr'#236'nh '#273#7897
          HeaderAlignment = taCenter
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEVEL_NO'
          Caption_UTF7 = 'K+AP0 hi+Hsc-u tr+AOw-nh +AREe2Q'
        end
        object gridLevelLEVEL_NAME: TdxDBGridColumn
          Caption = 'Tr'#236'nh '#273#7897' b'#7857'ng c'#7845'p t'#432#417'ng '#7913'ng'
          HeaderAlignment = taCenter
          Width = 311
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEVEL_NAME'
          Caption_UTF7 = 'Tr+AOw-nh +AREe2Q b+HrE-ng c+HqU-p t+AbABoQ-ng +Huk-ng'
        end
        object gridLevelLEVEL_ORDER: TdxDBGridSpinColumn
          Caption = 'X'#7871'p th'#7913' t'#7921
          HeaderAlignment = taCenter
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEVEL_ORDER'
          Caption_UTF7 = 'X+Hr8-p th+Huk t+HvE'
        end
        object gridLevelLEVEL_NOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 233
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEVEL_NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = Panel1
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
        Caption = 'Danh m'#7909'c tr'#236'nh '#273#7897' ngo'#7841'i ng'#7919
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 34
    Top = 122
  end
  object dsLevel: TDataSource
    DataSet = qryLevel
    Left = 34
    Top = 154
  end
  object qryList: TIBOQuery
    Params = <>
    DatabaseName = 'H:\Projects\SSP-HRM SHIRASAKI\Database\SSP_HRM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_LANGUAGE'
      'WHERE'
      '   LANGUAGE_NO = :OLD_LANGUAGE_NO')
    EditSQL.Strings = (
      'UPDATE HR_LANGUAGE SET'
      '   LANGUAGE_NO = :LANGUAGE_NO, /*PK*/'
      '   LANGUAGE_NAME = :LANGUAGE_NAME,'
      '   NOTE = :NOTE'
      'WHERE'
      '   LANGUAGE_NO = :OLD_LANGUAGE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_LANGUAGE('
      '   LANGUAGE_NO, /*PK*/'
      '   LANGUAGE_NAME,'
      '   NOTE)'
      'VALUES ('
      '   :LANGUAGE_NO,'
      '   :LANGUAGE_NAME,'
      '   :NOTE)')
    KeyLinks.Strings = (
      'LANGUAGE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LANGUAGE_NO'
      '     , LANGUAGE_NAME'
      '     , NOTE'
      'FROM HR_LANGUAGE')
    FieldOptions = []
    Left = 66
    Top = 122
    object qryListLANGUAGE_NO: TWideStringField
      FieldName = 'LANGUAGE_NO'
      Required = True
      Size = 30
    end
    object qryListLANGUAGE_NAME: TWideStringField
      FieldName = 'LANGUAGE_NAME'
      Required = True
      Size = 126
    end
    object qryListNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 126
    end
  end
  object qryLevel: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'LANGUAGE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'H:\Projects\SSP-HRM SHIRASAKI\Database\SSP_HRM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_LANGUAGE_LEVEL'
      'WHERE'
      '   LANGUAGE_NO = :OLD_LANGUAGE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO')
    EditSQL.Strings = (
      'UPDATE HR_LANGUAGE_LEVEL SET'
      '   LANGUAGE_NO = :LANGUAGE_NO, /*PK*/'
      '   LEVEL_NO = :LEVEL_NO, /*PK*/'
      '   LEVEL_NAME = :LEVEL_NAME,'
      '   LEVEL_ORDER = :LEVEL_ORDER,'
      '   LEVEL_NOTE = :LEVEL_NOTE'
      'WHERE'
      '   LANGUAGE_NO = :OLD_LANGUAGE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_LANGUAGE_LEVEL('
      '   LANGUAGE_NO, /*PK*/'
      '   LEVEL_NO, /*PK*/'
      '   LEVEL_NAME,'
      '   LEVEL_ORDER,'
      '   LEVEL_NOTE)'
      'VALUES ('
      '   :LANGUAGE_NO,'
      '   :LEVEL_NO,'
      '   :LEVEL_NAME,'
      '   :LEVEL_ORDER,'
      '   :LEVEL_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryLevelNewRecord
    DataSource = dsList
    SQL.Strings = (
      'SELECT LANGUAGE_NO'
      '     , LEVEL_NO'
      '     , LEVEL_NAME'
      '     , LEVEL_ORDER'
      '     , LEVEL_NOTE'
      'FROM HR_LANGUAGE_LEVEL'
      'where LANGUAGE_NO=:LANGUAGE_NO')
    FieldOptions = []
    Left = 66
    Top = 154
    object qryLevelLANGUAGE_NO: TWideStringField
      FieldName = 'LANGUAGE_NO'
      Required = True
      Size = 30
    end
    object qryLevelLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 126
    end
    object qryLevelLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryLevelLEVEL_ORDER: TIntegerField
      FieldName = 'LEVEL_ORDER'
      Required = True
    end
    object qryLevelLEVEL_NOTE: TWideStringField
      FieldName = 'LEVEL_NOTE'
      Size = 3072
    end
  end
end
