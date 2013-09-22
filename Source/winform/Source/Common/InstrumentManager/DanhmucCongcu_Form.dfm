inherited frmCongcuDanhmuc: TfrmCongcuDanhmuc
  Left = 220
  Top = 219
  Width = 777
  Height = 484
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 431
    Width = 769
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 769
    Height = 431
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 404
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
      object gridLoaiCongcu: TdxDBGrid
        Left = 0
        Top = 0
        Width = 241
        Height = 41
        Bands = <
          item
            Caption = 'Lo'#7841'i c'#244'ng c'#7909' lao '#273#7897'ng'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'MA_LOAI'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        OnEnter = gridLoaiCongcuEnter
        DataSource = dsLoaiCongcu
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        OnChangeNode = gridLoaiCongcuChangeNode
        object gridLoaiCongcuMA_LOAI: TdxDBGridColumn
          Caption = 'K'#253' hi'#7879'u'
          HeaderAlignment = taCenter
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MA_LOAI'
          Caption_UTF7 = 'K+AP0 hi+Hsc-u'
        end
        object gridLoaiCongcuTEN_LOAI: TdxDBGridColumn
          Caption = 'T'#234'n lo'#7841'i c'#244'ng c'#7909
          HeaderAlignment = taCenter
          Width = 179
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TEN_LOAI'
          Caption_UTF7 = 'T+AOo-n lo+HqE-i c+APQ-ng c+HuU'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 241
        Top = 0
        Width = 8
        Height = 41
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = False
        ControlBottomRight = gridLoaiCongcu
        AutoHide = False
        ShowSnapButton = True
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object gridDanhmuc: TdxDBGrid
        Left = 249
        Top = 0
        Width = 516
        Height = 41
        Bands = <
          item
            Caption = 'Danh m'#7909'c c'#244'ng c'#7909
            Fixed = bfLeft
            Width = 211
          end
          item
            Caption = 'Thu'#7897'c t'#237'nh '#273'i k'#232'm '
            Width = 292
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'RecId'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        DataSource = dsDanhmuc_Nhap
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        ShowBands = True
        object gridDanhmucMA_CONGCU: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'STT'
          HeaderAlignment = taCenter
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MA_CONGCU'
          MaxValue = 999999999.000000000000000000
        end
        object gridDanhmucTEN_CONGCU: TdxDBGridColumn
          Caption = 'T'#234'n c'#244'ng c'#7909
          HeaderAlignment = taCenter
          Width = 162
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TEN_CONGCU'
          Caption_UTF7 = 'T+AOo-n c+APQ-ng c+HuU'
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
        Caption = 'Danh m'#7909'c c'#244'ng c'#7909' lao '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 704
    Top = 8
  end
  object qryLoaiCongcu: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\June 2007\MATAI\Implementation\Database' +
      's\SSP_HRM_DB_MATAI.GDB'
    IB_Connection = dmMain.connMain
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
  object dsLoaiCongcu: TDataSource
    DataSet = qryLoaiCongcu
    Left = 88
    Top = 104
  end
  object qryThuoctinh: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MA_LOAI'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\June 2007\MATAI\Implementation\Database' +
      's\SSP_HRM_DB_MATAI.GDB'
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
    Left = 128
    Top = 72
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
  object qryDanhmuc: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MA_LOAI'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\June 2007\MATAI\Implementation\Database' +
      's\SSP_HRM_DB_MATAI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsLoaiCongcu
    SQL.Strings = (
      'SELECT HR_CONGCU_DM.MA_CONGCU'
      '     , HR_CONGCU_DM.MA_LOAI'
      '     , HR_CONGCU_DM.TEN_CONGCU'
      '     , HR_CONGCU_DM.GHI_CHU'
      '     , MA_TT'
      '     , GIATRI_TT'
      'FROM HR_CONGCU_CT'
      'left join HR_CONGCU_DM on '
      '  HR_CONGCU_CT.MA_CONGCU=HR_CONGCU_DM.MA_CONGCU and'
      '  HR_CONGCU_CT.MA_LOAI=HR_CONGCU_DM.MA_LOAI'
      'where HR_CONGCU_DM.MA_LOAI=:MA_LOAI'
      'order by HR_CONGCU_CT.MA_CONGCU')
    FieldOptions = []
    Left = 304
    Top = 72
    object qryDanhmucMA_CONGCU: TIntegerField
      FieldName = 'MA_CONGCU'
      Required = True
    end
    object qryDanhmucMA_LOAI: TWideStringField
      FieldName = 'MA_LOAI'
      Required = True
      Size = 30
    end
    object qryDanhmucTEN_CONGCU: TWideStringField
      FieldName = 'TEN_CONGCU'
      Required = True
      Size = 126
    end
    object qryDanhmucGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
    object qryDanhmucMA_TT: TWideStringField
      FieldName = 'MA_TT'
      Required = True
      Size = 30
    end
    object qryDanhmucGIATRI_TT: TWideStringField
      FieldName = 'GIATRI_TT'
      Size = 126
    end
  end
  object qryExecute: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'MA_CONGCU'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MA_LOAI'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\June 2007\MATAI\Implementation\Database' +
      's\SSP_HRM_DB_MATAI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_CONGCU'
      '     , HR_CONGCU_CT.MA_LOAI'
      '     , MA_TT'
      '     , GIATRI_TT'
      'FROM HR_CONGCU_CT'
      
        'left join HR_CONGCU_TT on HR_CONGCU_CT.MA_LOAI=HR_CONGCU_TT.MA_L' +
        'OAI and'
      '  MA_TT=MA_THUOCTINH     '
      'where MA_CONGCU=:MA_CONGCU and HR_CONGCU_CT.MA_LOAI=:MA_LOAI')
    FieldOptions = []
    Left = 344
    Top = 72
    object qryExecuteMA_CONGCU: TIntegerField
      FieldName = 'MA_CONGCU'
      Required = True
    end
    object qryExecuteMA_LOAI: TWideStringField
      FieldName = 'MA_LOAI'
      Required = True
      Size = 30
    end
    object qryExecuteMA_TT: TWideStringField
      FieldName = 'MA_TT'
      Required = True
      Size = 30
    end
    object qryExecuteGIATRI_TT: TWideStringField
      FieldName = 'GIATRI_TT'
      Size = 126
    end
  end
  object dsDanhmuc_Nhap: TDataSource
    DataSet = memDanhmuc
    Left = 402
    Top = 106
  end
  object memDanhmuc: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = memDanhmucBeforePost
    OnNewRecord = memDanhmucNewRecord
    Left = 402
    Top = 74
    object memDanhmucMA_CONGCU: TIntegerField
      FieldName = 'MA_CONGCU'
      Required = True
    end
    object memDanhmucMA_LOAI: TWideStringField
      FieldName = 'MA_LOAI'
      Required = True
      Size = 30
    end
    object memDanhmucTEN_CONGCU: TWideStringField
      FieldName = 'TEN_CONGCU'
      Required = True
      Size = 127
    end
  end
  object ActionList1: TActionList
    Left = 162
    Top = 122
    object acCreateMem: TAction
      Caption = 'acCreateMem'
      OnExecute = acCreateMemExecute
    end
    object acLoadMem: TAction
      Caption = 'acLoadMem'
      OnExecute = acLoadMemExecute
    end
  end
end
