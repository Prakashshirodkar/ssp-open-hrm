inherited frmKhauTruThueKhac: TfrmKhauTruThueKhac
  Left = 187
  Top = 137
  Width = 958
  Height = 606
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 553
    Width = 950
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 950
    Height = 553
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 526
      Color = 15466238
      TabOrder = 4
    end
    object dxThang: TdxSpinEdit [1]
      Left = 46
      Top = 28
      Width = 99
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      StyleController = dmMain.StyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 48
    end
    object dxNam: TdxSpinEdit [2]
      Left = 168
      Top = 28
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      MaxValue = 9999999.000000000000000000
      MinValue = 1900.000000000000000000
      Value = 1900.000000000000000000
      StoredValues = 48
    end
    object ElPopupButton1: TElPopupButton [3]
      Left = 821
      Top = 28
      Width = 115
      Height = 25
      Cursor = crDefault
      ImageIndex = 6
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'L'#7845'y danh s'#225'ch'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acLayDS
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridChiTiet: TdxDBGrid [4]
      Left = 2
      Top = 60
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'STT'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 3
      DataSource = dsChiTiet
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridChiTietSTT: TdxDBGridColumn
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STT'
      end
      object gridChiTietMA_NHANVIEN: TdxDBGridColumn
        Caption = 'M'#227' NV'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_NHANVIEN'
        Caption_UTF7 = 'M+AOM NV'
      end
      object gridChiTietHO_TEN: TdxDBGridPopupColumn
        Caption = 'H'#7885' t'#234'n'
        HeaderAlignment = taCenter
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HO_TEN'
        OnCloseUp = gridChiTietHO_TENCloseUp
        OnInitPopup = gridChiTietHO_TENInitPopup
        Caption_UTF7 = 'H+Hs0 t+AOo-n'
      end
      object gridChiTietSO_CMND: TdxDBGridColumn
        Caption = 'S'#7889' CMND'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SO_CMND'
        Caption_UTF7 = 'S+HtE CMND'
      end
      object gridChiTietSO_HOCHIEU: TdxDBGridColumn
        Caption = 'S'#7889' h'#7897' chi'#7871'u'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SO_HOCHIEU'
        Caption_UTF7 = 'S+HtE h+Htk chi+Hr8-u'
      end
      object gridChiTietMASO_THUE: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' thu'#7871
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO_THUE'
        Caption_UTF7 = 'M+AOM s+HtE thu+Hr8'
      end
      object gridChiTietTHUNHAP_CHIUTHUE: TdxDBGridCalcColumn
        Caption = 'Thu nh'#7853'p ch'#7883'u thu'#7871
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUNHAP_CHIUTHUE'
        Caption_UTF7 = 'Thu nh+Hq0-p ch+Hss-u thu+Hr8'
      end
      object gridChiTietPHANTRAM_KHAUTRU: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = '% kh'#7845'u tr'#7915' thu'#7871
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PHANTRAM_KHAUTRU'
        Descriptions.WideStrings = (
          '10%'
          '20%')
        ShowDescription = True
        Values.WideStrings = (
          '10'
          '20')
        Caption_UTF7 = '% kh+HqU-u tr+Hus thu+Hr8'
      end
      object gridChiTietTHUE_PHAINOP: TdxDBGridCalcColumn
        Caption = 'S'#7889' thu'#7871' ph'#7843'i kh'#7845'u tr'#7915
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THUE_PHAINOP'
        Caption_UTF7 = 'S+HtE thu+Hr8 ph+HqM-i kh+HqU-u tr+Hus'
      end
      object gridChiTietDEPT_NAME: TdxDBGridPopupColumn
        Caption = #272'v'#7883' tr'#7843' thu nh'#7853'p'
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        OnCloseUp = gridChiTietDEPT_NAMECloseUp
        OnInitPopup = gridChiTietDEPT_NAMEInitPopup
        Caption_UTF7 = '+ARA-v+Hss tr+HqM thu nh+Hq0-p'
      end
      object gridChiTietGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHI_CHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        Caption = 'Th'#244'ng tin th'#225'ng n'#259'm kh'#7845'u tr'#7915
        LayoutDirection = ldHorizontal
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Th'#225'ng'
          Control = dxThang
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
          Caption = 'N'#259'm'
          Control = dxNam
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcMainItem5: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'New Item'
        ShowCaption = False
        Control = gridChiTiet
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
        Caption = 'Kh'#7845'u tr'#7915' thu'#7871' cho c'#225'c tr'#432#7901'ng h'#7907'p kh'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 520
    Top = 8
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 656
    Top = 88
    object acLayDS: TAction
      Caption = 'acLayDS'
      ImageIndex = 6
      OnExecute = acLayDSExecute
    end
  end
  object qryChiTiet: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'AT_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_YEAR'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_THUETNCN_TRUONGHOP_KHAC'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   STT = :OLD_STT')
    EditSQL.Strings = (
      'UPDATE HR_THUETNCN_TRUONGHOP_KHAC SET'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   STT = :STT, /*PK*/'
      '   HO_TEN = :HO_TEN,'
      '   SO_CMND = :SO_CMND,'
      '   SO_HOCHIEU = :SO_HOCHIEU,'
      '   MASO_THUE = :MASO_THUE,'
      '   THUNHAP_CHIUTHUE = :THUNHAP_CHIUTHUE,'
      '   PHANTRAM_KHAUTRU = :PHANTRAM_KHAUTRU,'
      '   THUE_PHAINOP = :THUE_PHAINOP,'
      '   GHI_CHU = :GHI_CHU,'
      '   AT_MONTH = :AT_MONTH,'
      '   AT_YEAR = :AT_YEAR,'
      '   MA_NHANVIEN = :MA_NHANVIEN,'
      '   MA_DONVI = :MA_DONVI'
      'WHERE'
      '   PERIOD_ID = :OLD_PERIOD_ID AND'
      '   STT = :OLD_STT')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_THUETNCN_TRUONGHOP_KHAC('
      '   PERIOD_ID, /*PK*/'
      '   STT, /*PK*/'
      '   HO_TEN,'
      '   SO_CMND,'
      '   SO_HOCHIEU,'
      '   MASO_THUE,'
      '   THUNHAP_CHIUTHUE,'
      '   PHANTRAM_KHAUTRU,'
      '   THUE_PHAINOP,'
      '   GHI_CHU,'
      '   AT_MONTH,'
      '   AT_YEAR,'
      '   MA_NHANVIEN,'
      '   MA_DONVI)'
      'VALUES ('
      '   :PERIOD_ID,'
      '   :STT,'
      '   :HO_TEN,'
      '   :SO_CMND,'
      '   :SO_HOCHIEU,'
      '   :MASO_THUE,'
      '   :THUNHAP_CHIUTHUE,'
      '   :PHANTRAM_KHAUTRU,'
      '   :THUE_PHAINOP,'
      '   :GHI_CHU,'
      '   :AT_MONTH,'
      '   :AT_YEAR,'
      '   :MA_NHANVIEN,'
      '   :MA_DONVI)')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryChiTietBeforePost
    SQL.Strings = (
      'SELECT PERIOD_ID'
      '     , STT'
      '     , HO_TEN'
      '     , SO_CMND'
      '     , SO_HOCHIEU'
      '     , HR_THUETNCN_TRUONGHOP_KHAC.MASO_THUE'
      '     , THUNHAP_CHIUTHUE'
      '     , PHANTRAM_KHAUTRU'
      '     , THUE_PHAINOP'
      '     , GHI_CHU'
      '     , AT_MONTH'
      '     , AT_YEAR'
      '     , MA_NHANVIEN'
      '     , MA_DONVI'
      '     , DEPT_NAME'
      'FROM HR_THUETNCN_TRUONGHOP_KHAC'
      
        'join HR_DEPARTMENT ON HR_THUETNCN_TRUONGHOP_KHAC.MA_DONVI = HR_D' +
        'EPARTMENT.DEPT_NO'
      'WHERE AT_MONTH = :AT_MONTH'
      'and AT_YEAR = :AT_YEAR')
    FieldOptions = []
    Left = 48
    Top = 80
    object qryChiTietHO_TEN: TWideStringField
      FieldName = 'HO_TEN'
      Required = True
      Size = 126
    end
    object qryChiTietSO_CMND: TWideStringField
      FieldName = 'SO_CMND'
      Size = 30
    end
    object qryChiTietSO_HOCHIEU: TWideStringField
      FieldName = 'SO_HOCHIEU'
      Size = 63
    end
    object qryChiTietMASO_THUE: TWideStringField
      FieldName = 'MASO_THUE'
      Size = 63
    end
    object qryChiTietTHUNHAP_CHIUTHUE: TIBOFloatField
      FieldName = 'THUNHAP_CHIUTHUE'
      Required = True
      OnChange = qryChiTietTHUNHAP_CHIUTHUEChange
    end
    object qryChiTietPHANTRAM_KHAUTRU: TSmallintField
      FieldName = 'PHANTRAM_KHAUTRU'
      Required = True
      OnChange = qryChiTietPHANTRAM_KHAUTRUChange
    end
    object qryChiTietTHUE_PHAINOP: TIBOFloatField
      FieldName = 'THUE_PHAINOP'
      Required = True
    end
    object qryChiTietGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryChiTietAT_MONTH: TSmallintField
      FieldName = 'AT_MONTH'
    end
    object qryChiTietAT_YEAR: TIntegerField
      FieldName = 'AT_YEAR'
    end
    object qryChiTietMA_NHANVIEN: TWideStringField
      FieldName = 'MA_NHANVIEN'
      Size = 30
    end
    object qryChiTietSTT: TIntegerField
      FieldName = 'STT'
    end
    object qryChiTietPERIOD_ID: TIntegerField
      FieldName = 'PERIOD_ID'
    end
    object qryChiTietDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryChiTietMA_DONVI: TWideStringField
      FieldName = 'MA_DONVI'
      Size = 30
    end
  end
  object dsChiTiet: TDataSource
    DataSet = qryChiTiet
    Left = 48
    Top = 112
  end
  object qrySTT: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'period_id'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryChiTietBeforePost
    SQL.Strings = (
      'select max(hr_thuetncn_truonghop_khac.stt) STT'
      'from hr_thuetncn_truonghop_khac'
      'where hr_thuetncn_truonghop_khac.period_id = :period_id')
    FieldOptions = []
    Left = 80
    Top = 80
    object qrySTTSTT: TIntegerField
      FieldName = 'STT'
      ReadOnly = True
    end
  end
end
