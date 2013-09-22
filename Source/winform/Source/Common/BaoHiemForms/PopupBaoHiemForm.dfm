inherited frmPopupBaoHiem: TfrmPopupBaoHiem
  Left = 319
  Top = 164
  Width = 690
  Height = 466
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 413
    Width = 682
  end
  object dxlcBaoHiem_BenhVien: TdxLayoutControl [1]
    Left = 38
    Top = 24
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid69: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID_BAOHIEM_BENHVIEN'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsBaoHiem_BenhVien
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object dxDBGrid69MA_BENHVIEN: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' b'#7879'nh vi'#7879'n'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_BENHVIEN'
        Caption_UTF7 = 'M+AOM s+HtE b+Hsc-nh vi+Hsc-n'
      end
      object dxDBGrid69TEN_BENHVIEN: TdxDBGridColumn
        Caption = 'T'#234'n b'#7879'nh vi'#7879'n'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_BENHVIEN'
        Caption_UTF7 = 'T+AOo-n b+Hsc-nh vi+Hsc-n'
      end
      object dxDBGrid69TEN_TINH_THANHPHO: TdxDBGridColumn
        Caption = 'Thu'#7897'c t'#7881'nh/TP'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TINH_THANHPHO'
        GroupIndex = 0
        Caption_UTF7 = 'Thu+Htk-c t+Hsk-nh/TP'
      end
    end
    object ElPopupButton213: TElPopupButton
      Left = 2
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton213Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton214: TElPopupButton
      Left = 148
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton215: TElPopupButton
      Left = 223
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup148: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem286: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid69
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup149: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem287: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton213
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem288: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton214
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem289: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton215
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcHesoQDHD: TdxLayoutControl [2]
    Left = 360
    Top = 8
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid2: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PARAM_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsHesoQDHD
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid2PARAM_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid2PARAM_NAME: TdxDBGridColumn
        Caption = 'Tham s'#7889' theo Q'#272'/H'#272
        HeaderAlignment = taCenter
        Width = 220
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NAME'
        Caption_UTF7 = 'Tham s+HtE theo Q+ARA-/H+ARA'
      end
    end
    object ElPopupButton4: TElPopupButton
      Left = 2
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 148
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 223
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid2
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
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
        Caption = 'Th'#432' vi'#7879'c popup c'#7911'a b'#7843'o hi'#7875'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryBaoHiem_BenhVien: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_BENHVIEN'
      '     , TEN_BENHVIEN'
      '     , HR_BAOHIEM_BENHVIEN.MA_TINH_THANHPHO'
      '     , TEN_TINH_THANHPHO'
      '     , DIACHI_BENHVIEN'
      '     , HR_BAOHIEM_BENHVIEN.GHI_CHU'
      '     , ID_BAOHIEM_BENHVIEN'
      'FROM HR_BAOHIEM_BENHVIEN'
      
        'JOIN HR_BAOHIEM_TINH_THANHPHO ON HR_BAOHIEM_BENHVIEN.MA_TINH_THA' +
        'NHPHO = HR_BAOHIEM_TINH_THANHPHO.MA_TINH_THANHPHO'
      'ORDER BY HR_BAOHIEM_BENHVIEN.MA_TINH_THANHPHO, MA_BENHVIEN')
    FieldOptions = []
    Left = 48
    Top = 56
    object qryBaoHiem_BenhVienMA_BENHVIEN: TWideStringField
      FieldName = 'MA_BENHVIEN'
      Required = True
      Size = 30
    end
    object qryBaoHiem_BenhVienTEN_BENHVIEN: TWideStringField
      FieldName = 'TEN_BENHVIEN'
      Required = True
      Size = 63
    end
    object qryBaoHiem_BenhVienMA_TINH_THANHPHO: TWideStringField
      FieldName = 'MA_TINH_THANHPHO'
      Required = True
      Size = 30
    end
    object qryBaoHiem_BenhVienTEN_TINH_THANHPHO: TWideStringField
      FieldName = 'TEN_TINH_THANHPHO'
      Size = 63
    end
    object qryBaoHiem_BenhVienDIACHI_BENHVIEN: TWideStringField
      FieldName = 'DIACHI_BENHVIEN'
      Size = 255
    end
    object qryBaoHiem_BenhVienGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryBaoHiem_BenhVienID_BAOHIEM_BENHVIEN: TIntegerField
      FieldName = 'ID_BAOHIEM_BENHVIEN'
      Required = True
    end
  end
  object dsBaoHiem_BenhVien: TDataSource
    DataSet = qryBaoHiem_BenhVien
    Left = 48
    Top = 88
  end
  object qryHesoQDHD: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , PARAM_NAME'
      'FROM HR_FORMAL_PARAM')
    FieldOptions = []
    Left = 56
    Top = 296
    object qryHesoQDHDPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryHesoQDHDPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 126
    end
  end
  object dsHesoQDHD: TDataSource
    DataSet = qryHesoQDHD
    Left = 88
    Top = 296
  end
end
