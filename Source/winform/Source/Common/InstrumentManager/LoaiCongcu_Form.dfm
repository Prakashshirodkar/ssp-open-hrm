inherited frmCongcu_Loai: TfrmCongcu_Loai
  Left = 224
  Top = 218
  Width = 717
  Height = 467
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 414
    Width = 709
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 709
    Height = 414
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 387
      Color = 15466238
      TabOrder = 2
    end
    object gridLoaiCongcu: TdxDBGrid [1]
      Left = 2
      Top = 2
      Width = 335
      Height = 385
      Bands = <
        item
          Caption = 'DANH M'#7908'C LO'#7840'I C'#212'NG C'#7908
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_LOAI'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsLoaiCongcu
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridLoaiCongcuMA_LOAI: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_LOAI'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object gridLoaiCongcuTEN_LOAI: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i c'#244'ng c'#7909
        HeaderAlignment = taCenter
        Width = 255
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_LOAI'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i c+APQ-ng c+HuU'
      end
    end
    object gridThuoctinh: TdxDBGrid [2]
      Left = 337
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
          Caption = #272#7883'nh ngh'#297'a c'#225'c thu'#7897'c t'#237'nh '#273'i k'#232'm'
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_THUOCTINH'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 1
      DataSource = dsThuoctinh
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridThuoctinhMA_THUOCTINH: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_THUOCTINH'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object gridThuoctinhTEN_THUOCTINH: TdxDBGridColumn
        Caption = 'T'#234'n thu'#7897'c t'#237'nh'
        HeaderAlignment = taCenter
        Width = 205
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_THUOCTINH'
        Caption_UTF7 = 'T+AOo-n thu+Htk-c t+AO0-nh'
      end
      object gridThuoctinhLOAI_DULIEU: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Ph'#226'n lo'#7841'i'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOAI_DULIEU'
        Descriptions.WideStrings = (
          'Ng'#224'y'
          'S'#7889' nguy'#234'n'
          'S'#7889' th'#7921'c'
          'Text')
        ShowDescription = True
        Values.WideStrings = (
          'DATE'
          'INTEGER'
          'DOUBLE'
          'TEXT')
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = []
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridLoaiCongcu
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridThuoctinh
          ControlOptions.ShowBorder = False
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
        Caption = #272#7883'nh ngh'#297'a lo'#7841'i c'#244'ng c'#7909' lao '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsLoaiCongcu: TDataSource
    DataSet = qryLoaiCongcu
    Left = 88
    Top = 104
  end
  object dsThuoctinh: TDataSource
    DataSet = qryThuoctinh
    Left = 400
    Top = 112
  end
  object qryLoaiCongcu: TIBOQuery
    Params = <>
    DatabaseName = 
      'H:\Projects\SSP-HRM 2.0.1 Projects\Implementation\Databases\SSP_' +
      'HRM_DB_DEMO.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONGCU'
      'WHERE'
      '   MA_LOAI = :OLD_MA_LOAI')
    EditSQL.Strings = (
      'UPDATE HR_CONGCU SET'
      '   MA_LOAI = :MA_LOAI, /*PK*/'
      '   TEN_LOAI = :TEN_LOAI'
      'WHERE'
      '   MA_LOAI = :OLD_MA_LOAI')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CONGCU('
      '   MA_LOAI, /*PK*/'
      '   TEN_LOAI)'
      'VALUES ('
      '   :MA_LOAI,'
      '   :TEN_LOAI)')
    KeyLinks.Strings = (
      'MA_LOAI')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_LOAI'
      '     , TEN_LOAI'
      'FROM HR_CONGCU')
    FieldOptions = []
    Left = 88
    Top = 72
    object qryLoaiCongcuMA_LOAI: TWideStringField
      FieldName = 'MA_LOAI'
      Required = True
      Size = 30
    end
    object qryLoaiCongcuTEN_LOAI: TWideStringField
      FieldName = 'TEN_LOAI'
      Required = True
      Size = 126
    end
  end
  object qryThuoctinh: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MA_LOAI'
        ParamType = ptInput
      end>
    DatabaseName = 
      'H:\Projects\SSP-HRM 2.0.1 Projects\Implementation\Databases\SSP_' +
      'HRM_DB_DEMO.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONGCU_TT'
      'WHERE'
      '   MA_LOAI = :OLD_MA_LOAI AND'
      '   MA_THUOCTINH = :OLD_MA_THUOCTINH')
    EditSQL.Strings = (
      'UPDATE HR_CONGCU_TT SET'
      '   MA_LOAI = :MA_LOAI, /*PK*/'
      '   MA_THUOCTINH = :MA_THUOCTINH, /*PK*/'
      '   TEN_THUOCTINH = :TEN_THUOCTINH,'
      '   LOAI_DULIEU = :LOAI_DULIEU'
      'WHERE'
      '   MA_LOAI = :OLD_MA_LOAI AND'
      '   MA_THUOCTINH = :OLD_MA_THUOCTINH')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CONGCU_TT('
      '   MA_LOAI, /*PK*/'
      '   MA_THUOCTINH, /*PK*/'
      '   TEN_THUOCTINH,'
      '   LOAI_DULIEU)'
      'VALUES ('
      '   :MA_LOAI,'
      '   :MA_THUOCTINH,'
      '   :TEN_THUOCTINH,'
      '   :LOAI_DULIEU)')
    KeyLinks.Strings = (
      'MA_THUOCTINH')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsLoaiCongcu
    SQL.Strings = (
      'SELECT MA_LOAI'
      '     , MA_THUOCTINH'
      '     , TEN_THUOCTINH'
      '     , LOAI_DULIEU'
      'FROM HR_CONGCU_TT'
      'where MA_LOAI=:MA_LOAI')
    FieldOptions = []
    Left = 400
    Top = 80
    object qryThuoctinhMA_LOAI: TWideStringField
      FieldName = 'MA_LOAI'
      Required = True
      Size = 30
    end
    object qryThuoctinhMA_THUOCTINH: TWideStringField
      Tag = 1
      FieldName = 'MA_THUOCTINH'
      Required = True
      Size = 30
    end
    object qryThuoctinhTEN_THUOCTINH: TWideStringField
      FieldName = 'TEN_THUOCTINH'
      Required = True
      Size = 126
    end
    object qryThuoctinhLOAI_DULIEU: TWideStringField
      FieldName = 'LOAI_DULIEU'
      Required = True
      Size = 30
    end
  end
end
