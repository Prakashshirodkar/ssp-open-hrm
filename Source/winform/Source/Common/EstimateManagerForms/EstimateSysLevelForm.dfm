inherited frmEstimateSysLevel: TfrmEstimateSysLevel
  Left = 207
  Top = 214
  Width = 685
  Height = 469
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 421
    Width = 677
  end
  inline frameToolbar1: TframeToolbar [1]
    Left = 0
    Top = 375
    Width = 677
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
      Width = 677
    end
  end
  object gridEstimateSystem: TdxDBGrid
    Left = 0
    Top = 0
    Width = 305
    Height = 375
    Bands = <
      item
        Caption = 'H'#7878' TH'#7888'NG THANG '#272'I'#7874'M '#272#193'NH GI'#193
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'SYS_NO'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alLeft
    TabOrder = 2
    OnEnter = gridEstimateSystemEnter
    DataSource = dsEstimateSystem
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    ShowBands = True
    object gridEstimateSystemSYS_NO: TdxDBGridColumn
      Caption = 'M'#227' s'#7889' '
      HeaderAlignment = taCenter
      Width = 63
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SYS_NO'
      Caption_UTF7 = 'M+AOM s+HtE '
    end
    object gridEstimateSystemSYS_NAME: TdxDBGridColumn
      Caption = 'T'#234'n h'#7879' th'#7889'ng '#273#225'nh gi'#225' '
      HeaderAlignment = taCenter
      Width = 187
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SYS_NAME'
      Caption_UTF7 = 'T+AOo-n h+Hsc th+HtE-ng +AREA4Q-nh gi+AOE '
    end
  end
  object ElSplitter1: TElSplitter
    Left = 305
    Top = 0
    Width = 3
    Height = 375
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = gridEstimateSystem
    ControlBottomRight = gridSysDetail
    AutoHide = False
    Align = alLeft
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object Panel1: TPanel
    Left = 308
    Top = 0
    Width = 369
    Height = 375
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object gridSysDetail: TdxDBGrid
      Left = 0
      Top = 0
      Width = 369
      Height = 193
      Bands = <
        item
          Caption = 'CHI TI'#7870'T THANG '#272'I'#7874'M '#272#193'NH GI'#193
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LEVEL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      TabOrder = 0
      OnEnter = gridSysDetailEnter
      DataSource = dsSysDetail
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridSysDetailLEVEL_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u '
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u '
      end
      object gridSysDetailLEVEL_NAME: TdxDBGridColumn
        Caption = 'T'#234'n thang '#273'i'#7875'm '
        HeaderAlignment = taCenter
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NAME'
        Caption_UTF7 = 'T+AOo-n thang +ARE-i+HsM-m '
      end
      object gridSysDetailLEVEL_MARK: TdxDBGridCalcColumn
        Caption = #272'i'#7875'm '
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_MARK'
        Caption_UTF7 = '+ARA-i+HsM-m '
      end
      object gridSysDetailLEVEL_TO_MARK: TdxDBGridCalcColumn
        Caption = #272#7871'n '#273'i'#7875'm'
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_TO_MARK'
        Caption_UTF7 = '+ARAevw-n +ARE-i+HsM-m'
      end
    end
    object ElSplitter2: TElSplitter
      Left = 0
      Top = 193
      Width = 369
      Height = 3
      Cursor = crVSplit
      SnapTopLeft = True
      SnapBottomRight = True
      ControlTopLeft = gridSysDetail
      ControlBottomRight = gridSysSum
      AutoHide = False
      Align = alTop
      BevelOuter = bvLowered
      UseXPThemes = False
    end
    object gridSysSum: TdxDBGrid
      Left = 0
      Top = 196
      Width = 369
      Height = 179
      Bands = <
        item
          Caption = 'CHI TI'#7870'T THANG '#272'I'#7874'M T'#7892'NG K'#7870'T'
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LEVEL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 2
      OnEnter = gridSysSumEnter
      DataSource = dsSysSum
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object dxDBGridColumn1: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u '
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u '
      end
      object dxDBGridColumn2: TdxDBGridColumn
        Caption = 'T'#234'n thang '#273'i'#7875'm '
        HeaderAlignment = taCenter
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NAME'
        Caption_UTF7 = 'T+AOo-n thang +ARE-i+HsM-m '
      end
      object dxDBGridCalcColumn1: TdxDBGridCalcColumn
        Caption = 'T'#7915' m'#7913'c '
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FROM_MARK'
        Caption_UTF7 = 'T+Hus m+Huk-c '
      end
      object dxDBGridCalcColumn2: TdxDBGridCalcColumn
        Caption = #272#7871'n m'#7913'c'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_MARK'
        Caption_UTF7 = '+ARAevw-n m+Huk-c'
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
        Caption = 'H'#7879' th'#7889'ng thang '#273'i'#7875'm '#273#225'nh gi'#225
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 488
    Top = 96
  end
  object dsEstimateSystem: TDataSource
    DataSet = qryEstimateSystem
    Left = 80
    Top = 152
  end
  object qryEstimateSystem: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\SSP-HRM 2.01\Databases\SSP_HRM_DB_DEMO.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_SYS_ESTIMATE'
      'WHERE'
      '   SYS_NO = :OLD_SYS_NO')
    EditSQL.Strings = (
      'UPDATE HR_SYS_ESTIMATE SET'
      '   SYS_NO = :SYS_NO, /*PK*/'
      '   SYS_NAME = :SYS_NAME,'
      '   SYS_NOTE = :SYS_NOTE'
      'WHERE'
      '   SYS_NO = :OLD_SYS_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_SYS_ESTIMATE('
      '   SYS_NO, /*PK*/'
      '   SYS_NAME,'
      '   SYS_NOTE)'
      'VALUES ('
      '   :SYS_NO,'
      '   :SYS_NAME,'
      '   :SYS_NOTE)')
    KeyLinks.Strings = (
      'SYS_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SYS_NO'
      '     , SYS_NAME'
      '     , SYS_NOTE'
      'FROM HR_SYS_ESTIMATE')
    FieldOptions = []
    Left = 80
    Top = 120
    object qryEstimateSystemSYS_NO: TWideStringField
      FieldName = 'SYS_NO'
      Required = True
      Size = 30
    end
    object qryEstimateSystemSYS_NAME: TWideStringField
      FieldName = 'SYS_NAME'
      Required = True
      Size = 126
    end
    object qryEstimateSystemSYS_NOTE: TWideStringField
      FieldName = 'SYS_NOTE'
      Size = 3072
    end
  end
  object dsSysDetail: TDataSource
    DataSet = qrySysDetail
    Left = 357
    Top = 152
  end
  object qrySysDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'SYS_NO'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\SSP-HRM 2.01\Databases\SSP_HRM_DB_DEMO.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_SYS_EST_DETAIL'
      'WHERE'
      '   LEVEL_NO = :OLD_LEVEL_NO AND'
      '   SYS_ESTIMATE = :OLD_SYS_ESTIMATE')
    EditSQL.Strings = (
      'UPDATE HR_SYS_EST_DETAIL SET'
      '   LEVEL_NO = :LEVEL_NO, /*PK*/'
      '   SYS_ESTIMATE = :SYS_ESTIMATE, /*PK*/'
      '   LEVEL_NAME = :LEVEL_NAME,'
      '   LEVEL_MARK = :LEVEL_MARK,'
      '   LEVEL_TO_MARK = :LEVEL_TO_MARK'
      'WHERE'
      '   LEVEL_NO = :OLD_LEVEL_NO AND'
      '   SYS_ESTIMATE = :OLD_SYS_ESTIMATE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_SYS_EST_DETAIL('
      '   LEVEL_NO, /*PK*/'
      '   SYS_ESTIMATE, /*PK*/'
      '   LEVEL_NAME,'
      '   LEVEL_MARK,'
      '   LEVEL_TO_MARK)'
      'VALUES ('
      '   :LEVEL_NO,'
      '   :SYS_ESTIMATE,'
      '   :LEVEL_NAME,'
      '   :LEVEL_MARK,'
      '   :LEVEL_TO_MARK)')
    KeyLinks.Strings = (
      'LEVEL_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qrySysDetailNewRecord
    DataSource = dsEstimateSystem
    SQL.Strings = (
      'SELECT LEVEL_NO'
      '     , LEVEL_NAME'
      '     , LEVEL_MARK'
      '     , LEVEL_TO_MARK'
      '     , SYS_ESTIMATE'
      'FROM HR_SYS_EST_DETAIL'
      'where SYS_ESTIMATE=:SYS_NO ')
    FieldOptions = []
    Left = 357
    Top = 120
    object qrySysDetailLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qrySysDetailLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qrySysDetailLEVEL_MARK: TIBOFloatField
      FieldName = 'LEVEL_MARK'
      Required = True
    end
    object qrySysDetailSYS_ESTIMATE: TWideStringField
      FieldName = 'SYS_ESTIMATE'
      Required = True
      Size = 30
    end
    object qrySysDetailLEVEL_TO_MARK: TIBOFloatField
      FieldName = 'LEVEL_TO_MARK'
    end
  end
  object qrySysSum: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SYS_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\SSP-HRM 2.01\Databases\SSP_HRM_DB_DEMO.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_SYS_EST_SUM'
      'WHERE'
      '   LEVEL_NO = :OLD_LEVEL_NO AND'
      '   SYS_ESTIMATE = :OLD_SYS_ESTIMATE')
    EditSQL.Strings = (
      'UPDATE HR_SYS_EST_SUM SET'
      '   LEVEL_NO = :LEVEL_NO, /*PK*/'
      '   SYS_ESTIMATE = :SYS_ESTIMATE, /*PK*/'
      '   LEVEL_NAME = :LEVEL_NAME,'
      '   FROM_MARK = :FROM_MARK,'
      '   TO_MARK = :TO_MARK'
      'WHERE'
      '   LEVEL_NO = :OLD_LEVEL_NO AND'
      '   SYS_ESTIMATE = :OLD_SYS_ESTIMATE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_SYS_EST_SUM('
      '   LEVEL_NO, /*PK*/'
      '   SYS_ESTIMATE, /*PK*/'
      '   LEVEL_NAME,'
      '   FROM_MARK,'
      '   TO_MARK)'
      'VALUES ('
      '   :LEVEL_NO,'
      '   :SYS_ESTIMATE,'
      '   :LEVEL_NAME,'
      '   :FROM_MARK,'
      '   :TO_MARK)')
    KeyLinks.Strings = (
      'LEVEL_NO'
      'SYS_ESTIMATE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qrySysSumNewRecord
    DataSource = dsEstimateSystem
    SQL.Strings = (
      'SELECT LEVEL_NO'
      '     , LEVEL_NAME'
      '     , FROM_MARK'
      '     , TO_MARK'
      '     , SYS_ESTIMATE'
      'FROM HR_SYS_EST_SUM'
      'where SYS_ESTIMATE=:SYS_NO ')
    FieldOptions = []
    Left = 357
    Top = 240
    object qrySysSumLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qrySysSumLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qrySysSumFROM_MARK: TIBOFloatField
      FieldName = 'FROM_MARK'
      Required = True
    end
    object qrySysSumTO_MARK: TIBOFloatField
      FieldName = 'TO_MARK'
    end
    object qrySysSumSYS_ESTIMATE: TWideStringField
      FieldName = 'SYS_ESTIMATE'
      Required = True
      Size = 30
    end
  end
  object dsSysSum: TDataSource
    DataSet = qrySysSum
    Left = 357
    Top = 272
  end
end
