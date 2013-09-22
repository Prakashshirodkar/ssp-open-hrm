inherited frmEmpWageStandard: TfrmEmpWageStandard
  Left = 296
  Top = 179
  Width = 784
  Height = 555
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 502
    Width = 776
  end
  object pageMain: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 776
    Height = 249
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = ImageList1
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsAngledTabs
    TabIndex = 2
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabThayDoiLuognChucDanh
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alTop
    ParentColor = False
    TabOrder = 1
    object tabThaydoiLuongHDQD: TElTabSheet
      PageControl = pageMain
      ImageIndex = 2
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh thay '#273#7893'i l'#432#417'ng tr'#234'n H'#272'-Q'#272
      Visible = False
      object gridHesoQD_HD: TdxDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 225
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'MA_CONGVAN'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnDblClick = acDetailExecute
        DataSource = EmpInfoDM.dsHesoQD_HD
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        object gridHesoQD_HDNGAY_APDUNG: TdxDBGridDateColumn
          Caption = 'Ng'#224'y'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NGAY_APDUNG'
          Caption_UTF7 = 'Ng+AOA-y'
        end
        object gridHesoQD_HDMA_CONGVAN: TdxDBGridColumn
          Caption = 'M'#227' v'#259'n b'#7843'n'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MA_CONGVAN'
          Caption_UTF7 = 'M+AOM v+AQM-n b+HqM-n'
        end
        object gridHesoQD_HDLOAI_CONGVAN: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Lo'#7841'i v'#259'n b'#7843'n'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 16
          Width = 128
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LOAI_CONGVAN'
          Descriptions.WideStrings = (
            'Quy'#7871't '#273#7883'nh'
            'H'#7907'p '#273#7891'ng')
          ImageIndexes.WideStrings = (
            'DECISION'
            'CONTRACT')
          ShowDescription = True
          Values.WideStrings = (
            'DECISION'
            'CONTRACT')
          Caption_UTF7 = 'Lo+HqE-i v+AQM-n b+HqM-n'
        end
        object gridHesoQD_HDTEN_CONGVAN: TdxDBGridColumn
          Caption = 'Ti'#234'u '#273#7873' v'#259'n b'#7843'n'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 167
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TEN_CONGVAN'
          Caption_UTF7 = 'Ti+AOo-u +AREewQ v+AQM-n b+HqM-n'
        end
      end
    end
    object tabMain: TElTabSheet
      PageControl = pageMain
      ImageIndex = 0
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh thay '#273#7893'i l'#432#417'ng c'#417' b'#7843'n Nh'#224' n'#432#7899'c'
      Visible = False
      object gridWageStandard: TdxDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 225
        Bands = <
          item
            Caption = 'Ng'#7841'ch b'#7853'c '#225'p d'#7909'ng'
            Width = 403
          end
          item
            Caption = 'Th'#7901'i gian '#225'p d'#7909'ng'
            Width = 214
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'PERIOD_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
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
        DataSource = EmpInfoDM.dsEmpWageStandard
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object gridWageStandardCHANGE_NO: TdxDBGridColumn
          Caption = #272#7907't thay '#273#7893'i'
          HeaderAlignment = taCenter
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CHANGE_NO'
          Caption_UTF7 = '+ARAe4w-t thay +AREe1Q-i'
        end
        object gridWageStandardCAREER_NAME: TdxDBGridColumn
          Caption = 'Ng'#7841'ch l'#432#417'ng'
          Color = clInfoBk
          HeaderAlignment = taCenter
          Width = 280
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAREER_NAME'
          Caption_UTF7 = 'Ng+HqE-ch l+AbABoQ-ng'
        end
        object gridWageStandardWAGE_LEVEL: TdxDBGridColumn
          Caption = 'B'#7853'c l'#432#417'ng'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_LEVEL'
          Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
        end
        object gridWageStandardWAGE_COEFF: TdxDBGridColumn
          Caption = 'H'#7879' s'#7889
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_COEFF'
          Caption_UTF7 = 'H+Hsc s+HtE'
        end
        object gridWageStandardAPPLY_MONTH: TdxDBGridColumn
          Caption = 'Th'#225'ng'
          Color = 13027071
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 1
          RowIndex = 0
          FieldName = 'APPLY_MONTH'
          Caption_UTF7 = 'Th+AOE-ng'
        end
        object gridWageStandardAPPLY_YEAR: TdxDBGridColumn
          Caption = 'N'#259'm'
          Color = 13027071
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 1
          RowIndex = 0
          FieldName = 'APPLY_YEAR'
          Caption_UTF7 = 'N+AQM-m'
        end
        object gridWageStandardAPPLY_PERIOD: TdxDBGridColumn
          Caption = 'K'#7923
          Color = 13027071
          HeaderAlignment = taCenter
          Width = 73
          BandIndex = 1
          RowIndex = 0
          FieldName = 'APPLY_PERIOD'
          Caption_UTF7 = 'K+HvM'
        end
      end
    end
    object tabThayDoiLuognChucDanh: TElTabSheet
      PageControl = pageMain
      ImageIndex = 3
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh thay '#273#7893'i l'#432#417'ng ch'#7913'c danh c'#244'ng vi'#7879'c'
      object gridWageCompany: TdxDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 225
        Bands = <
          item
            Caption = 'Ng'#7841'ch b'#7853'c '#225'p d'#7909'ng'
            Width = 403
          end
          item
            Caption = 'Th'#7901'i gian '#225'p d'#7909'ng'
            Width = 214
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'PERIOD_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
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
        DataSource = EmpInfoDM.dsEmpWageCompany
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object dxDBGridColumn2: TdxDBGridColumn
          Caption = #272#7907't thay '#273#7893'i'
          HeaderAlignment = taCenter
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CHANGE_NO'
          Caption_UTF7 = '+ARAe4w-t thay +AREe1Q-i'
        end
        object dxDBGridColumn3: TdxDBGridColumn
          Caption = 'Ng'#7841'ch l'#432#417'ng'
          Color = clInfoBk
          HeaderAlignment = taCenter
          Width = 280
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAREER_NAME'
          Caption_UTF7 = 'Ng+HqE-ch l+AbABoQ-ng'
        end
        object dxDBGridColumn4: TdxDBGridColumn
          Caption = 'B'#7853'c l'#432#417'ng'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_LEVEL'
          Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
        end
        object dxDBGridColumn5: TdxDBGridColumn
          Caption = 'H'#7879' s'#7889
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_COEFF'
          Caption_UTF7 = 'H+Hsc s+HtE'
        end
        object dxDBGridColumn6: TdxDBGridColumn
          Caption = 'Th'#225'ng'
          Color = 13027071
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 1
          RowIndex = 0
          FieldName = 'APPLY_MONTH'
          Caption_UTF7 = 'Th+AOE-ng'
        end
        object dxDBGridColumn7: TdxDBGridColumn
          Caption = 'N'#259'm'
          Color = 13027071
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 1
          RowIndex = 0
          FieldName = 'APPLY_YEAR'
          Caption_UTF7 = 'N+AQM-m'
        end
        object dxDBGridColumn8: TdxDBGridColumn
          Caption = 'K'#7923
          Color = 13027071
          HeaderAlignment = taCenter
          Width = 73
          BandIndex = 1
          RowIndex = 0
          FieldName = 'APPLY_PERIOD'
          Caption_UTF7 = 'K+HvM'
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 0
    Top = 249
    Width = 776
    Height = 5
    Cursor = crVSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageMain
    AutoHide = False
    Align = alTop
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object pageBottom: TElPageControl [3]
    Left = 0
    Top = 254
    Width = 776
    Height = 248
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
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
    ActivePage = tabQT_PhieuKCB
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
    TabOrder = 3
    object tabQT_PhieuKCB: TElTabSheet
      PageControl = pageBottom
      ImageIndex = -1
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh thay '#273#7893'i phi'#7871'u KCB'
      object gridQT_ThayDoiPhieuKCB: TdxDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 227
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ID_BAOHIEM_PHIEUKCB'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = EmpInfoDM.dsQT_ThayDoiPhieuKCB
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        object gridQT_ThayDoiPhieuKCBSOPHIEU_KCB: TdxDBGridColumn
          Caption = 'S'#7889' th'#7867' BHYT'
          HeaderAlignment = taCenter
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOPHIEU_KCB'
          Caption_UTF7 = 'S+HtE th+Hrs BHYT'
        end
        object gridQT_ThayDoiPhieuKCBTEN_BENHVIEN: TdxDBGridPopupColumn
          Caption = 'N'#417'i '#273#259'ng k'#253' KCB'
          HeaderAlignment = taCenter
          Width = 215
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TEN_BENHVIEN'
          Caption_UTF7 = 'N+AaE-i +AREBAw-ng k+AP0 KCB'
        end
        object gridQT_ThayDoiPhieuKCBTEN_TINH_THANHPHO: TdxDBGridColumn
          Caption = 'Thu'#7897'c t'#7881'nh/TP'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TEN_TINH_THANHPHO'
          Caption_UTF7 = 'Thu+Htk-c t+Hsk-nh/TP'
        end
        object gridQT_ThayDoiPhieuKCBDANGKY_TUNGAY: TdxDBGridDateColumn
          Caption = 'Th'#7901'i h'#7841'n t'#7915' ng'#224'y'
          HeaderAlignment = taCenter
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DANGKY_TUNGAY'
          Caption_UTF7 = 'Th+Ht0-i h+HqE-n t+Hus ng+AOA-y'
        end
        object gridQT_ThayDoiPhieuKCBDANGKY_DENNGAY: TdxDBGridDateColumn
          Caption = 'Th'#7901'i h'#7841'n '#273#7871'n ng'#224'y'
          HeaderAlignment = taCenter
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DANGKY_DENNGAY'
          Caption_UTF7 = 'Th+Ht0-i h+HqE-n +AREevw-n ng+AOA-y'
        end
        object gridQT_ThayDoiPhieuKCBTINH_TRANG: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'T'#236'nh tr'#7841'ng'
          HeaderAlignment = taCenter
          MinWidth = 16
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TINH_TRANG'
          Descriptions.WideStrings = (
            #272#259'ng k'#253' ban '#273#7847'u'
            'Gia h'#7841'n th'#7867' BHYT')
          ShowDescription = True
          Values.WideStrings = (
            '0'
            '1')
          Caption_UTF7 = 'T+AOw-nh tr+HqE-ng'
        end
        object gridQT_ThayDoiPhieuKCBNGAY_TRATHE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y tr'#7843' th'#7867
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NGAY_TRATHE'
          Caption_UTF7 = 'Ng+AOA-y tr+HqM th+Hrs'
        end
      end
    end
    object tabQT_DongHienTai: TElTabSheet
      PageControl = pageBottom
      ImageIndex = -1
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh '#273#243'ng b'#7843'o hi'#7875'm hi'#7879'n t'#7841'i'
      Visible = False
      object gridQT_DongHienTai: TdxDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 227
        Bands = <
          item
            Caption = 'Th'#244'ng tin chung'
          end
          item
            Caption = 'NL'#272' n'#7897'p'
          end
          item
            Caption = 'DN n'#7897'p'
          end
          item
            Caption = 'T'#7893'ng c'#7897'ng'
          end>
        DefaultLayout = False
        HeaderMinRowCount = 2
        HeaderPanelRowCount = 1
        KeyField = 'ID_BAOHIEM_QT_DONG_HIENTAI'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = EmpInfoDM.dsQT_DongHienTai
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        ShowBands = True
        object gridQT_DongHienTaiTU_THANG: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'T'#7915' th'#225'ng'
          HeaderAlignment = taCenter
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TU_THANG'
          Caption_UTF7 = 'T+Hus th+AOE-ng'
        end
        object gridQT_DongHienTaiTU_NAM: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'T'#7915' n'#259'm'
          HeaderAlignment = taCenter
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TU_NAM'
          Caption_UTF7 = 'T+Hus n+AQM-m'
        end
        object gridQT_DongHienTaiTIEN_LUONG: TdxDBGridCalcColumn
          Caption = 'Ti'#7873'n l'#432#417'ng'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIEN_LUONG'
          Caption_UTF7 = 'Ti+HsE-n l+AbABoQ-ng'
        end
        object gridQT_DongHienTaiPHU_CAP: TdxDBGridCalcColumn
          Caption = 'Ph'#7909' c'#7845'p'
          HeaderAlignment = taCenter
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PHU_CAP'
          Caption_UTF7 = 'Ph+HuU c+HqU-p'
        end
        object gridQT_DongHienTaiTILE_BHXH_NLD_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHXH (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_BHXH_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHXH (%)'
        end
        object gridQT_DongHienTaiTT_BHXH_NLD_NOP: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHXH'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TT_BHXH_NLD_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHXH'
        end
        object gridQT_DongHienTaiTILE_BHYT_NLD_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHYT (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_BHYT_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHYT (%)'
        end
        object gridQT_DongHienTaiTT_BHYT_NLD_NOP: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHYT'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TT_BHYT_NLD_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHYT'
        end
        object gridQT_DongHienTaiTILE_BHTN_NLD_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHTN (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_BHTN_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHTN (%)'
        end
        object gridQT_DongHienTaiTT_BHTN_NLD_NOP: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHTN'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TT_BHTN_NLD_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHTN'
        end
        object gridQT_DongHienTaiTILE_BHXH_DN_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHXH (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_BHXH_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHXH (%)'
        end
        object gridQT_DongHienTaiTILE_NLD_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' NL'#272' n'#7897'p (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc NL+ARA n+Htk-p (%)'
        end
        object gridQT_DongHienTaiTT_BHXH_DN_NOP: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHXH'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TT_BHXH_DN_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHXH'
        end
        object gridQT_DongHienTaiTILE_BHYT_DN_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHYT (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_BHYT_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHYT (%)'
        end
        object gridQT_DongHienTaiTT_BHYT_DN_NOP: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHYT'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TT_BHYT_DN_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHYT'
        end
        object gridQT_DongHienTaiTILE_BHTN_DN_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHTN (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_BHTN_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHTN (%)'
        end
        object gridQT_DongHienTaiTT_BHTN_DN_NOP: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHTN'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TT_BHTN_DN_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHTN'
        end
        object gridQT_DongHienTaiTILE_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7893'ng c'#7897'ng t'#7881' l'#7879' (%)'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 3
          RowIndex = 0
          FieldName = 'TILE_NOP'
          Caption_UTF7 = 'T+HtU-ng c+Htk-ng t+Hsk l+Hsc (%)'
        end
        object gridQT_DongHienTaiTILE_DN_NOP: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' DN n'#7897'p (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc DN n+Htk-p (%)'
        end
        object gridQT_DongHienTaiTIENNOP_BAOHIEM: TdxDBGridCalcColumn
          Caption = 'T'#7893'ng ti'#7873'n n'#7897'p BH'
          HeaderAlignment = taCenter
          Width = 123
          BandIndex = 3
          RowIndex = 0
          FieldName = 'TIENNOP_BAOHIEM'
          Caption_UTF7 = 'T+HtU-ng ti+HsE-n n+Htk-p BH'
        end
        object gridQT_DongHienTaiGHI_CHU: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 221
          BandIndex = 3
          RowIndex = 0
          FieldName = 'GHI_CHU'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
    end
    object tabQT_DongTruocDay: TElTabSheet
      PageControl = pageBottom
      ImageIndex = -1
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh '#273#243'ng b'#7843'o hi'#7875'm tr'#432#7899'c '#273#226'y'
      Visible = False
      object gridQT_DongTruocDay: TdxDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 227
        Bands = <
          item
            Caption = 'Th'#244'ng tin chung'
          end
          item
            Caption = 'NL'#272' n'#7897'p'
          end
          item
            Caption = 'DN n'#7897'p'
          end
          item
            Caption = 'T'#7893'ng c'#7897'ng'
          end>
        DefaultLayout = False
        HeaderMinRowCount = 2
        HeaderPanelRowCount = 1
        KeyField = 'ID_BAOHIEM_QT_DONG_TRUOCDAY'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = EmpInfoDM.dsQT_DongTruocDay
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        ShowBands = True
        object dxDBGridSpinColumn1: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'T'#7915' th'#225'ng'
          HeaderAlignment = taCenter
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TU_THANG'
          Caption_UTF7 = 'T+Hus th+AOE-ng'
        end
        object dxDBGridSpinColumn2: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'T'#7915' n'#259'm'
          HeaderAlignment = taCenter
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TU_NAM'
          Caption_UTF7 = 'T+Hus n+AQM-m'
        end
        object dxDBGridCalcColumn1: TdxDBGridCalcColumn
          Caption = 'Ti'#7873'n l'#432#417'ng'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIEN_LUONG'
          Caption_UTF7 = 'Ti+HsE-n l+AbABoQ-ng'
        end
        object dxDBGridCalcColumn2: TdxDBGridCalcColumn
          Caption = 'Ph'#7909' c'#7845'p'
          HeaderAlignment = taCenter
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PHU_CAP'
          Caption_UTF7 = 'Ph+HuU c+HqU-p'
        end
        object dxDBGridCalcColumn3: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHXH (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_BHXH_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHXH (%)'
        end
        object dxDBGridCalcColumn4: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHXH'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TT_BHXH_NLD_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHXH'
        end
        object dxDBGridCalcColumn5: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHYT (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_BHYT_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHYT (%)'
        end
        object dxDBGridCalcColumn6: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHYT'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TT_BHYT_NLD_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHYT'
        end
        object dxDBGridCalcColumn7: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHTN (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_BHTN_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHTN (%)'
        end
        object dxDBGridCalcColumn8: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHTN'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TT_BHTN_NLD_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHTN'
        end
        object dxDBGridCalcColumn9: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHXH (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_BHXH_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHXH (%)'
        end
        object dxDBGridCalcColumn10: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' NL'#272' n'#7897'p (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 1
          RowIndex = 0
          FieldName = 'TILE_NLD_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc NL+ARA n+Htk-p (%)'
        end
        object dxDBGridCalcColumn11: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHXH'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TT_BHXH_DN_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHXH'
        end
        object dxDBGridCalcColumn12: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHYT (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_BHYT_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHYT (%)'
        end
        object dxDBGridCalcColumn13: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHYT'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TT_BHYT_DN_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHYT'
        end
        object dxDBGridCalcColumn14: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' n'#7897'p BHTN (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_BHTN_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc n+Htk-p BHTN (%)'
        end
        object dxDBGridCalcColumn15: TdxDBGridCalcColumn
          Caption = 'Th'#224'nh ti'#7873'n n'#7897'p BHTN'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TT_BHTN_DN_NOP'
          Caption_UTF7 = 'Th+AOA-nh ti+HsE-n n+Htk-p BHTN'
        end
        object dxDBGridCalcColumn16: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7893'ng c'#7897'ng t'#7881' l'#7879' (%)'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 3
          RowIndex = 0
          FieldName = 'TILE_NOP'
          Caption_UTF7 = 'T+HtU-ng c+Htk-ng t+Hsk l+Hsc (%)'
        end
        object dxDBGridCalcColumn17: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'T'#7881' l'#7879' DN n'#7897'p (%)'
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 2
          RowIndex = 0
          FieldName = 'TILE_DN_NOP'
          Caption_UTF7 = 'T+Hsk l+Hsc DN n+Htk-p (%)'
        end
        object dxDBGridCalcColumn18: TdxDBGridCalcColumn
          Caption = 'T'#7893'ng ti'#7873'n n'#7897'p BH'
          HeaderAlignment = taCenter
          Width = 123
          BandIndex = 3
          RowIndex = 0
          FieldName = 'TIENNOP_BAOHIEM'
          Caption_UTF7 = 'T+HtU-ng ti+HsE-n n+Htk-p BH'
        end
        object dxDBGridColumn1: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 221
          BandIndex = 3
          RowIndex = 0
          FieldName = 'GHI_CHU'
          Caption_UTF7 = 'Ghi ch+APo'
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
        Caption = 'Qu'#225' tr'#236'nh l'#432#417'ng c'#417' b'#7843'n Nh'#224' n'#432#7899'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 88
  end
  object ImageList1: TImageList
    Left = 72
    Top = 136
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B4A270067463900999B9B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010080800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800686868000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CF633400773F270083828200000000000000000000000000000000000000
      00000000000000000000000000008A7A5800F6DCA400F5D89A00F4D186008A7A
      5800EAA81D00E8A30E000000000000000000083C980010080800F0D09400F0E0
      A800F8E0B400F8E4C400F8ECD400C8B08800F8F4E400F8F4E400F8F4E400C8B0
      8800F8F8F400FFFFFF00FFFFFF00686868000000000000000000000000000000
      000070C3F6003AABF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000646463000D2743000B0F140000000000000000000000
      0000CF633400773F270083828200000000000000000000000000000000000000
      000053B6F60053B6F600000000008A7A5800FAEAC800F9E5BC00F6DCA4008A7A
      5800ECB23600E8A4110000000000000000000C64F8000860C80010080800F0E0
      A800F0E0A800F8E4C40028282000C8B08800F8F4E400F8F4E400F8F4E400C8B0
      8800F8F8F400F8F8F400FFFFFF00686868000000000000000000000000000000
      000070C3F6003AABF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005846300074747200000000000000
      00000000000000000000514B46004AB5FA000B0F1400B1B4B400000000000000
      0000CF633400773F27008382820000000000000000006C6C6C00000000006C6C
      6C0053B6F60053B6F6001A1A1A005F5B54008A7A58008A7A58008A7A58008A7A
      58008A7A58008A7A5800000000000000000064543400087CF8000888E8000404
      0400C8B08800989084000074840004040400C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800686868000000000000000000D1E2ED00A8DA
      FA0070C3F6003AABF700129AF7000F8FE80000000000F4C04300F0AA0000F0AA
      0000F0AA0000F0AA00000000000000000000774F1400EFA80F00845B0900CCCF
      CF00C4C7C700A6A9A900AAE3FF004FBEFF0010A3FF000B548400999B9B00796F
      6900CF6334008B4A27008B8C8C00674639006C6C6C0000000000B1CCDC008CCE
      FB0053B6F6001B9EF7000E86D800031D2E005F5B5400FDF5E500FAEAC8008A7A
      5800EEBB4E00EAA81D000000000000000000F0C86C00C0A060000C84D80008A4
      F80004040400001018000074840000E8E800DCCCB400F8F4E400F8F4E400C8B0
      8800F8F4E400F8F8F400F8F8F4006868680000000000EBEBEB00E1F2FD00A8DA
      FA000000000000000000129AF700129AF7000F8FE80000000000F4C04300F0AA
      0000F0AA0000F0AA00000000000000000000774F1400EFA80F00EFA80F00EFA8
      0F000B0F1400DFE0E000587C9100CCCFCF003C9FE20010A3FF003F414200955B
      4200CC836000E0916900807E7D007854440000000000EBEBEB00CDEAFC006C6C
      6C00000000006C6C6C001199F7000F8FE80011191F0000000000000000000000
      000000000000000000000000000000000000F0C06800F0C8780040404000044C
      780000BCF80000E0F800ECD4A4001058580000182400F8ECD40004040400C8B0
      8800F8F4E400F8F4E400F8F8F400686868000000000000000000000000000000
      0000000000007D7B7000002A3E00129AF700129AF70000000000F6CA6100F4C0
      4300F0AA0000F0AA00000000000000000000774F1400EFB33200EDB53D00EDB5
      3D00F8B529009C701300838282003A6179000E9BFB000E9BFB00999B9B00B177
      5A00E2A98600F6BDA30052504E00796F69000000000000000000000000000000
      000000000000000000001199F7001199F7000000000000000000000000000000
      000000000000000000000000000000000000E4B4580050545400A0D8F80058B8
      F000003444000034440010080800C8C0B00000E8E8000404040000344400C8B0
      8800F8F4E400F8F4E400F8F4E400686868000000000000000000000000000000
      00000000000058839D001190E800129AF700007EBA0052525200F7D37C00F6CA
      6100F4C04300F0AA00000000000000000000825C3100F5C45A00F2C56600F2C5
      6600F5C45A0083828200AAE3FF003C9FE200376D9100B1B4B40000000000EAA1
      7B00CEBA9A0038D3DB00D8A17C008B8C8C0000000000000000006C6C6C000000
      0000000000006C6C6C001199F7001199F7000000000000000000000000000000
      00000000000000000000000000000000000080808000E8F0F800A0D8F8004878
      98000C94EC0020A0F8000468A80098908400746C6400003444000088A800001C
      3400C8B08800C8B08800C8B08800686868000000000000000000525252000000
      000070C3F6003AABF700129AF700003F5D0000000000FAE3AB00F9DC9500F7D3
      7C00F6CA6100F4C043000000000000000000825C3100F4CC7700F4D38C00F4D3
      8C00AF956000FEFEFA0094D4F900845B09000B5484000B548400999B9B00999B
      9B00796F69003F414200807E7D000000000000000000232424006C6C6C008CCE
      FB0053B6F6001B9EF7001199F700000000006C6C6C0000000000000000000000
      000000000000000000000000000000000000705820008068300080683000F0C8
      78002030400020A0F80020A0F80090887800F8E0B40000748400ECDCB0001058
      680010080800F8ECD400F8ECD4006868680000000000000000007FA5BB00A8DA
      FA0070C3F600002A3E00003F5D0058839D00FCEFD000FBEABF00FAE3AB00F9DC
      9500F7D37C00F6CA61000000000000000000825C3100F4D38C00F3DCA900FAE4
      B200FAE4B200807E7D00AAE3FF004FBEFF0010A3FF000D27430000000000CCCF
      CF000C47B2000C47B2003F414200000000006C6C6C006C6C6C00CDEAFC008CCE
      FB000000000000000000063D63000000000000000000000000008CCEFB003FAD
      F9001199F7001199F7000000000000000000E8B03C00D0A0480054646C0058B8
      F00020A0F80020A0F800001C3400C8B08800F0E0A800F0E0A800F8E0B400C8B0
      8800044C7800040404000404040068686800000000007FA5BB00E1F2FD00A8DA
      FA00002A3E0000000000000000000000000000000000FCEFD000FBEABF00FAE3
      AB00F9DC9500F7D37C000000000000000000955B4200F8DA9800FAE4B200F9E9
      C600F9E9C600FFEFC100514B46004AB5FA000B0F14000000000000000000C4C7
      C70021559B003E86DA00514B46000000000000000000FCFEFF00CDEAFC006992
      AB00000000000000000000000000000000000000000000000000A8DAFC006FC2
      FA004CB3F9004CB3F9000000000000000000A0782000E8F0F800A0D8F80058B8
      F0002878A80098804800F0D09400C8B08800F0D89800F0E0A800F0E0A800C8B0
      8800F8E0B40000407800087CF80068686800000000007FA5BB00E1F2FD00A8DA
      FA007FA5BB0000000000129AF700129AF70000000000FDF4DE00FCEFD000FBEA
      BF00FAE3AB00F9DC95000000000000000000CC836000CC83600096856E00A593
      8900FEFEFA00FEF6E7005C585500514B46006F5A380000000000000000000000
      0000999B9B0083828200000000000000000000000000BDBEBF00CDEAFC008CCE
      FB0053B6F6001B9EF7001199F7000A609A000000000000000000000000000000
      00000000000000000000000000000000000034343000E8F0F800A0D8F8008068
      300010304800044C780000101800C8B08800F0D09400F0D09400F0D89800C8B0
      8800F0E0A800003458000870F800686868000000000000000000A8DAFA00A8DA
      FA0070C3F6003AABF700129AF7000F8FE80052525200FEF8EA00FDF4DE00FCEF
      D000FBEABF00FAE3AB0000000000000000000000000078544400906D5300F6BD
      A30070625600FEFEFA00FEF4D800F9E9C600AF95600000000000000000000000
      000000000000000000000000000000000000000000001A1A1A0070828D0085C2
      E80053B6F60053B6F6000A5C940002131F000000000000000000000000000000
      00000000000000000000000000000000000070500800E8F0F800A0D8F80058B8
      F00020A0F80020A0F80010080800C8B08800F0CC8400F0D09400F0D09400C8B0
      8800040404000404040004040400686868000000000000000000000000000000
      000070C3F6003AABF70046ACF10000000000FFFDFA00FEFBF300FEF8EA00FDF4
      DE00DC0D0D00DC0D0D000000000000000000000000000000000000000000807E
      7D00DCB3A100DCB3A1008B8C8C00FEF4D800B09E770000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002324
      240053B6F60053B6F60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A818007050080054646C0058B8
      F0000C84D80090702C00ECC05C00C8B08800F0C87800F0C87800F0C87800C8B0
      8800F0D09400F0D09400F0D09400686868000000000000000000000000000000
      000070C3F6003AABF70000000000FFFDFA00FFFDFA00FFFDFA00FEFBF300FEF8
      EA00DC0D0D000000000000000000000000000000000000000000000000000000
      00000000000070625600FEF6E7007F78750096856E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A00C00E8A00C004040400058B8
      F0000C70B800E8B03C00E8B84C00C8B08800F0C06800F0C06800F0C86C00C8B0
      8800F0C87800F0C87800F0C87800686868000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000093939300DFE0E000B1B4B40000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF0000FFFFFFF1F0010000E1FFFFF1
      E0010000E1FFFC71E0010000C0013C3180010000800100000001000000010000
      0001000000010000087F0000F0010020C07F0000C00100018001000080010021
      01810000000100610001000000010073000100008001807F80FF0000C001E07F
      C1FF0000E003F87FE1FF0000E007FC7F00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Left = 120
    Top = 96
    object acTaoGrid: TAction
      Caption = 'acTaoGrid'
      OnExecute = acTaoGridExecute
    end
    object acHuyGrid: TAction
      Caption = 'acHuyGrid'
      OnExecute = acHuyGridExecute
    end
    object acDetail: TAction
      Caption = 'acDetail'
      OnExecute = acDetailExecute
      OnUpdate = acDetailUpdate
    end
    object acDetailBHXH: TAction
      Caption = 'acDetailBHXH'
      OnUpdate = acDetailBHXHUpdate
    end
  end
end
