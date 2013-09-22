inherited frmBAOHIEM_ThaiSan_KHH: TfrmBAOHIEM_ThaiSan_KHH
  Left = 200
  Top = 128
  Width = 1007
  Height = 631
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 578
    Width = 999
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 999
    Height = 578
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 551
      Color = 15466238
      TabOrder = 5
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 1037
        end
        inherited btnHelp: TElPopupButton
          Left = 907
        end
        inherited btnChoose: TElPopupButton
          Left = 977
        end
        inherited btnGenerate: TElPopupButton
          Width = 160
          Hint = #272#7885'c d'#7919' li'#7879'u t'#7915' ch'#7845'm c'#244'ng'
          ImageIndex = 58
          UseImageList = True
          Images = dmMain.imgAction
          Caption = #272#7885'c d'#7919' li'#7879'u t'#7915' ch'#7845'm c'#244'ng'
          Action = acDocDLChamCong
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    object dxSelectDept: TdxPopupEdit [1]
      Left = 129
      Top = 28
      Width = 208
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxSelectDeptChange
      OnCloseUp = dxSelectDeptCloseUp
      OnInitPopup = dxSelectDeptInitPopup
    end
    object dxViewChild: TdxCheckEdit [2]
      Left = 337
      Top = 28
      Width = 130
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taRightJustify
      Caption = 'Xem c'#7845'p d'#432#7899'i'
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object dximOption: TdxImageEdit [3]
      Left = 513
      Top = 28
      Width = 126
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object dximPhanLoai: TdxImageEdit [4]
      Left = 684
      Top = 28
      Width = 126
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object ElPopupButton1: TElPopupButton [5]
      Left = 810
      Top = 28
      Width = 101
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
      Caption = '&Xem danh s'#225'ch'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acXemDS
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    inline frameDateTime1: TframeDateTime [6]
      Left = 14
      Top = 53
      Width = 972
      Height = 27
      Color = 15466238
      ParentColor = False
      TabOrder = 9
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 972
        Height = 27
        inherited dxSelectPeriod: TdxImageEdit
          Top = 2
        end
        inherited dxToDate: TdxDateEdit
          Top = 2
        end
        inherited dxFromDate: TdxDateEdit
          Top = 2
        end
      end
    end
    object pageMain: TElPageControl
      Left = 2
      Top = 87
      Width = 996
      Height = 467
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsAngledTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabChiTiet
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 10
      object tabChiTiet: TElTabSheet
        PageControl = pageMain
        ImageIndex = 0
        TabVisible = True
        Caption = 'Chi ti'#7871't'
        object gridSoDangKyBHXH: TdxDBGrid
          Left = 0
          Top = 0
          Width = 281
          Height = 441
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID_BAOHIEM_SODANGKY'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alLeft
          TabOrder = 0
          DataSource = dsSoDangKyBHXH
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          object gridSoDangKyBHXHEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            HeaderAlignment = taCenter
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridSoDangKyBHXHFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' t'#234'n NV'
            HeaderAlignment = taCenter
            Width = 153
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 t+AOo-n NV'
          end
          object gridSoDangKyBHXHMASO_BHXH: TdxDBGridColumn
            Caption = 'S'#7889' s'#7893' BHXH'
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MASO_BHXH'
            Caption_UTF7 = 'S+HtE s+HtU BHXH'
          end
          object gridSoDangKyBHXHID_BAOHIEM_SODANGKY: TdxDBGridColumn
            DisableCaption = True
            DisableDragging = True
            DisableEditor = True
            Visible = False
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'ID_BAOHIEM_SODANGKY'
            DisableFilter = True
          end
        end
        object ElSplitter1: TElSplitter
          Left = 281
          Top = 0
          Width = 10
          Height = 441
          Cursor = crHSplit
          SnapTopLeft = True
          SnapBottomRight = True
          ControlTopLeft = gridSoDangKyBHXH
          ControlBottomRight = gridChiTiet
          AutoHide = False
          ShowSnapButton = True
          Align = alLeft
          BevelInner = bvLowered
          BevelOuter = bvNone
          UseXPThemes = False
        end
        object gridChiTiet: TdxDBGrid
          Left = 291
          Top = 0
          Width = 701
          Height = 441
          Bands = <
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'KEY_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 2
          DataSource = dsChiTiet
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridChiTietNGHI_TUNGAY: TdxDBGridDateColumn
            Alignment = taCenter
            Caption = 'Ngh'#7881' t'#7915' ng'#224'y'
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NGHI_TUNGAY'
            Caption_UTF7 = 'Ngh+Hsk t+Hus ng+AOA-y'
          end
          object gridChiTietNGHI_DENNGAY: TdxDBGridDateColumn
            Alignment = taCenter
            Caption = 'Ngh'#7881' '#273#7871'n ng'#224'y'
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NGHI_DENNGAY'
            Caption_UTF7 = 'Ngh+Hsk +AREevw-n ng+AOA-y'
          end
          object gridChiTietWHT_NAME: TdxDBGridMRUColumn
            Caption = 'Ph'#226'n lo'#7841'i ngh'#7881
            HeaderAlignment = taCenter
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WHT_NAME'
            ImmediateDropDown = True
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i ngh+Hsk'
          end
          object gridChiTietYTE_XACNHAN: TdxDBGridCheckColumn
            Alignment = taCenter
            Caption = 'X'#225'c nh'#7853'n c'#7911'a y t'#7871
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'YTE_XACNHAN'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'X+AOE-c nh+Hq0-n c+Huc-a y t+Hr8'
          end
          object gridChiTietTEN_VANBAN_DIKEM: TdxDBGridButtonColumn
            Caption = 'V'#259'n b'#7843'n '#273'i k'#232'm'
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TEN_VANBAN_DIKEM'
            Buttons = <
              item
                Default = True
              end
              item
                Default = False
                Kind = bkDown
              end>
            OnButtonClick = gridChiTietTEN_VANBAN_DIKEMButtonClick
            Caption_UTF7 = 'V+AQM-n b+HqM-n +ARE-i k+AOg-m'
          end
          object gridChiTietGHI_CHU: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GHI_CHU'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
      end
      object tabTongHop: TElTabSheet
        PageControl = pageMain
        ImageIndex = 1
        TabVisible = True
        Caption = 'T'#7893'ng h'#7907'p'
        Visible = False
        object gridTongHop: TdxDBGrid
          Left = 0
          Top = 0
          Width = 992
          Height = 441
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsTongHop
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          object gridTongHopEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            HeaderAlignment = taCenter
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridTongHopFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' t'#234'n NV'
            HeaderAlignment = taCenter
            Width = 188
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 t+AOo-n NV'
          end
          object gridTongHopMASO_BHXH: TdxDBGridColumn
            Caption = 'S'#7889' s'#7889' BHXH'
            HeaderAlignment = taCenter
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MASO_BHXH'
            Caption_UTF7 = 'S+HtE s+HtE BHXH'
          end
          object gridTongHopNGHI_TUNGAY: TdxDBGridDateColumn
            Caption = 'Ngh'#7881' t'#7915' ng'#224'y'
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NGHI_TUNGAY'
            Caption_UTF7 = 'Ngh+Hsk t+Hus ng+AOA-y'
          end
          object gridTongHopNGHI_DENNGAY: TdxDBGridDateColumn
            Caption = 'Ngh'#7881' '#273#7871'n ng'#224'y'
            HeaderAlignment = taCenter
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NGHI_DENNGAY'
            Caption_UTF7 = 'Ngh+Hsk +AREevw-n ng+AOA-y'
          end
          object gridTongHopWHT_NAME: TdxDBGridColumn
            Caption = 'Ph'#226'n lo'#7841'i ngh'#7881
            HeaderAlignment = taCenter
            Width = 165
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WHT_NAME'
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i ngh+Hsk'
          end
          object gridTongHopYTE_XACNHAN: TdxDBGridCheckColumn
            Alignment = taCenter
            Caption = 'X'#225'c nh'#7853'n c'#7911'a y t'#7871
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'YTE_XACNHAN'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'X+AOE-c nh+Hq0-n c+Huc-a y t+Hr8'
          end
          object gridTongHopGHI_CHU: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GHI_CHU'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup3: TdxLayoutGroup [0]
        Caption = 'T'#249'y ch'#7885'n xem danh s'#225'ch'
        object dxlcMainGroup1: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem2: TdxLayoutItem
            Caption = 'Xem '#273#417'n v'#7883' - ph'#242'ng ban'
            Control = dxSelectDept
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem3: TdxLayoutItem
            ShowCaption = False
            Control = dxViewChild
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem4: TdxLayoutItem
            Caption = 'T'#249'y ch'#7885'n'
            Control = dximOption
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem5: TdxLayoutItem
            Caption = 'Ph'#226'n lo'#7841'i'
            Control = dximPhanLoai
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem6: TdxLayoutItem
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup2: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainItem7: TdxLayoutItem
            Control = frameDateTime1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlcMainItem8: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Control = pageMain
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
        Caption = 'Qu'#7843'n l'#253' thai s'#7843'n - KHHG'#272
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 8
    Top = 136
    object acXemDS: TAction
      Caption = 'acXemDS'
      ImageIndex = 6
      OnExecute = acXemDSExecute
    end
    object acDocDLChamCong: TAction
      Caption = 'acDocDLChamCong'
      ImageIndex = 58
      OnExecute = acDocDLChamCongExecute
      OnUpdate = acDocDLChamCongUpdate
    end
  end
  object ImageList1: TImageList
    Left = 40
    Top = 136
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF0DEFFFFE1BDFFFFCF
      94FFFFD39CFF0000000000000000000000000000000000000000000000000000
      000000000000EEF1F5FFF2F3F7FF00000000EFF2F6FFD5DBE6FFBEC8D9FFBEC7
      DBFFBEC8DBFFCBD2E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8E00FFFF8E00FFFF8E
      00FFFF9208FFFF9E21FFFFAA39FFFFB652FFFFC36BFFFFCF8CFFFFDBA5FFFFEB
      C6FFFF8E00FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4DCF5FFB0BCD3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8E00FFFFFBE7FFFFFB
      E7FFFFFBE7FFFFFBE7FFFFFBE7FFFFFBE7FFFFFBE7FFFFFBE7FFFFFBE7FFFFFB
      E7FFFF9E21FF0000000000000000000000008FBDDDFF00000000000000000000
      000000000000000000000000000000000000000000009A9AC8FF898197FF7361
      4BFF786750FFADA396FF00000000A5B2E0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8E00FFFFFBE7FFFFF7
      D6FFFFF7CEFFFFF7CEFFFFF7C6FFFFF7C6FFFFF3BDFFFFF3B5FFFFF3B5FFFFF3
      ADFFFFBA5AFFFFE5C6FF000000000000000093E1F5FF00000000000000000000
      000000000000210E85FF7A6DB6FF00000000000000008C7D69FF857A64FF8F7C
      66FF978572FF80745BFF979CB2FFF9F9FAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9818FFFFFBE7FFFFF7
      CEFF3938EFFFFF9E29FFFF8E08FFFF8A00FFFF8A00FFFF8A00FFFF8A00FFFFEF
      ADFFFFD794FFFFCC8CFF0000000000000000C6E9F2FF00000000000000000000
      00006857B2FF342D9FFF3530A3FF5C56A6FF5D4DAEFF82725AFF9E8971FFA691
      7CFFA7937FFFAF9A82FFDDD4C7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFB55AFFFFFBE7FF847D
      E7FF1014F7FF9471A5FFFFD78CFFFFEBA5FFFFF3B5FFFFF3ADFFFFEFADFFFFEF
      A5FFFFF3CEFFFFB252FF0000000000000000C1EBF3FF00000000000000000000
      00002F1E9FFF2F1EA4FF2F1EA7FF3121B0FF3020AAFF54569FFF4A4296FF9985
      76FFA9957DFFC2AC8EFFF5F2EDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFD39CFFFFDFA5FF4A45
      E7FFFFF3C6FF2928EFFFF7E7BDFFFFF3B5FFFFEFADFFFFEFADFFFFEFA5FFFFEF
      9CFFFFF7CEFFFF9818FF0000000000000000BFEAF2FF00000000000000005445
      C0FF321EB7FF321EB8FF311EB4FF311EB5FF311EB5FF301DB0FF311DB2FF3446
      A8FF3745A2FFD4C0A8FFFDFDFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF0DEFFFFBE6BFFFFF7
      C6FFFFF3BDFFFFB242FF2110DEFFFF8A00FFFF8A00FFFF8A00FFFF8A00FFFFEB
      94FFFFF3B5FFFF8E00FF0000000000000000CDEDF4FF00000000A49ADCFF3422
      C1FF3422C1FF3422C0FF3322BFFF3422C0FF3321BCFF3221BCFF3422C1FF2B47
      ABFF9586BBFFFCFBFAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFA229FFFFF7
      C6FFFFF3B5FFFFBA52FFFFC763FF9C8AB5FFFFEF9CFFFFEF9CFFFFEF94FFFFEB
      94FFFFEF94FFFF8E00FF0000000000000000EBF6F8FF000000004A3DCCFF3A2B
      D1FF3828D0FF383BC9FF3828CFFF3828CEFF3727CDFF3728CEFF3727CCFF3E31
      CCFFF7F6F2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8E00FFFFF7
      D6FF635DDEFFA59AC6FFFFEFA5FFFFEF9CFFFFEF9CFFFFEF94FFFFEB94FFFFE7
      84FFFFEB84FFFF8E00FF0000000000000000000000006E63DBFF4133DAFF4334
      DAFF4031DAFF3D58D3FF4675D6FF405CD4FF3D2ED9FF3D2ED9FF445ED0FF9796
      F4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8E00FFFFFB
      E7FF0808F7FF0004F7FFFF8600FFFF8A00FFFF8A00FFFF8A00FFFF8A00FFFFB6
      39FFFFEB84FFFF9E21FF0000000000000000D0CBEFFF534BE1FF554DE2FF534B
      E2FF4E46E1FF4D44E1FF4E45E1FF4B42E0FF4B42E0FF5055E4FF5B54E6FF8D8D
      DFFF9A908AFFD6C5BCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8E00FFFFFB
      E7FFFFEFA5FFFFEB94FF0000F7FFFFEB94FFFFEB94FFFFEB8CFFFFEB84FFFFE7
      84FFFFE77BFFFFBA5AFF00000000000000006F67E0FF6E78E9FF6367E9FF676B
      E9FF585CE7FF6063E8FF6468E9FF6164E8FF6265E8FF5A5FDAFFC0BCD6FFDEDE
      DEFFE1DFDCFFE3DBD7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF9C21FFFFC3
      6BFFFF9610FFFF8E00FFFFEFA5FF3934DEFFFFEB8CFFFFEB84FFFFE77BFFFFE7
      7BFFFFE773FFFFD794FFFFE5C6FF00000000F5F4FDFF9897E9FF6769E3FF7B8F
      EDFF7281EFFF707EEFFF7282EFFF6B7AEFFF85A2F1FF7A7AF3FF00000000E9E7
      E4FFEFEDECFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFE9CEFFFF92
      00FFFFDF7BFFFFEB94FFFFB24AFFFFEB84FFFFEB84FFFFE77BFFFFE773FFFFE7
      73FFFFE76BFFFFE3ADFFFFCF94FF0000000000000000000000008881E6FF9294
      ECFF6665E5FF90A5F1FF7993F4FF7F99F5FF605BE5FFF3F3FDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF9818FFFFBA39FFFF9208FFFFEFA5FFFFF3BDFFFFEFBDFFFFD38CFFFFB2
      4AFFFF9208FFFF8E00FFFFE5C6FF000000000000000000000000000000007E77
      F1FFD8D8E2FF8B8EF3FF7070EBFFA4B7F0FF9194F9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFD7A5FFFF8E00FFFF8E00FFFFA739FFFFC884FFFFE9CEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1BEFCFFDAD9FBFFF9FAFEFF8A8EF6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FF87F903000000008007FFFC00000000
      80077F8200000000800379800000000080037001000000008003700100000000
      80036001000000008003400300000000C003400700000000C003800F00000000
      C003000300000000C003000300000000C001002700000000C001C03F00000000
      F001E07F00000000F81FF0FF0000000000000000000000000000000000000000
      000000000000}
  end
  object qrySoDangKyBHXH: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'XEM_THEO_DONVI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XEM_CAPDUOI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XEM_TUYCHON_NGHIVIEC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XEM_PHANLOAI_COSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select employee_no,'
      '    full_name,'
      '    maso_bhxh,'
      '    ngay_sinh,'
      '    noi_sinh,'
      '    so_cmnd,'
      '    ngaycap_cmnd,'
      '    matinh_cap_cmnd,'
      '    noicap_cmnd,'
      '    diachi_thuongtru,'
      '    gioi_tinh,'
      '    dan_toc,'
      '    ten_dan_toc,'
      '    quoc_tich,'
      '    ten_quoc_tich,'
      '    chucvu_nghenghiep,'
      '    thang_bdtg,'
      '    nam_bdtg,'
      '    ID_BAOHIEM_SODANGKY'
      
        'from hr_baohiem_get_sodangky(:XEM_THEO_DONVI,:XEM_CAPDUOI,:XEM_T' +
        'UYCHON_NGHIVIEC,:XEM_PHANLOAI_COSO,:USER_NAME)'
      'order BY employee_no')
    FieldOptions = []
    Left = 8
    Top = 168
    object qrySoDangKyBHXHEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qrySoDangKyBHXHFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qrySoDangKyBHXHMASO_BHXH: TWideStringField
      FieldName = 'MASO_BHXH'
      Required = True
      Size = 30
    end
    object qrySoDangKyBHXHTHANG_BDTG: TSmallintField
      FieldName = 'THANG_BDTG'
      Required = True
    end
    object qrySoDangKyBHXHNAM_BDTG: TIntegerField
      FieldName = 'NAM_BDTG'
      Required = True
    end
    object qrySoDangKyBHXHGIOI_TINH: TSmallintField
      FieldName = 'GIOI_TINH'
      Required = True
    end
    object qrySoDangKyBHXHNGAY_SINH: TDateField
      FieldName = 'NGAY_SINH'
      Required = True
    end
    object qrySoDangKyBHXHTEN_DAN_TOC: TWideStringField
      FieldName = 'TEN_DAN_TOC'
      Required = True
      Size = 30
    end
    object qrySoDangKyBHXHDAN_TOC: TWideStringField
      FieldName = 'DAN_TOC'
      Size = 30
    end
    object qrySoDangKyBHXHTEN_QUOC_TICH: TWideStringField
      FieldName = 'TEN_QUOC_TICH'
      Required = True
      Size = 30
    end
    object qrySoDangKyBHXHQUOC_TICH: TWideStringField
      FieldName = 'QUOC_TICH'
      Size = 30
    end
    object qrySoDangKyBHXHSO_CMND: TWideStringField
      FieldName = 'SO_CMND'
      Required = True
      Size = 30
    end
    object qrySoDangKyBHXHDIACHI_THUONGTRU: TWideStringField
      FieldName = 'DIACHI_THUONGTRU'
      Required = True
      Size = 126
    end
    object qrySoDangKyBHXHCHUCVU_NGHENGHIEP: TWideStringField
      FieldName = 'CHUCVU_NGHENGHIEP'
      Required = True
      Size = 126
    end
    object qrySoDangKyBHXHNOI_SINH: TWideStringField
      FieldName = 'NOI_SINH'
      Required = True
      Size = 126
    end
    object qrySoDangKyBHXHNOICAP_CMND: TWideStringField
      FieldName = 'NOICAP_CMND'
      Required = True
      Size = 126
    end
    object qrySoDangKyBHXHMATINH_CAP_CMND: TWideStringField
      FieldName = 'MATINH_CAP_CMND'
      Required = True
      Size = 30
    end
    object qrySoDangKyBHXHNGAYCAP_CMND: TDateField
      FieldName = 'NGAYCAP_CMND'
      Required = True
    end
    object qrySoDangKyBHXHID_BAOHIEM_SODANGKY: TIntegerField
      FieldName = 'ID_BAOHIEM_SODANGKY'
    end
  end
  object qryChiTiet: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'id_baohiem_sodangky'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TU_NGAY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DEN_NGAY'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_THAISAN_KHH'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_THAISAN_KHH SET'
      '   KEY_ID = :KEY_ID, /*PK*/'
      '   ID_BAOHIEM_SODANGKY = :ID_BAOHIEM_SODANGKY,'
      '   NGHI_TUNGAY = :NGHI_TUNGAY,'
      '   NGHI_DENNGAY = :NGHI_DENNGAY,'
      '   YTE_XACNHAN = :YTE_XACNHAN,'
      '   LOAI_DOITUONG = :LOAI_DOITUONG,'
      '   TEN_VANBAN_DIKEM = :TEN_VANBAN_DIKEM,'
      '   VANBAN_DIKEM = :VANBAN_DIKEM,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    GeneratorLinks.Strings = (
      'KEY_ID = GEN_HR_BAOHIEM_THAISAN_KHH_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_THAISAN_KHH('
      '   KEY_ID, /*PK*/'
      '   ID_BAOHIEM_SODANGKY,'
      '   NGHI_TUNGAY,'
      '   NGHI_DENNGAY,'
      '   YTE_XACNHAN,'
      '   LOAI_DOITUONG,'
      '   TEN_VANBAN_DIKEM,'
      '   VANBAN_DIKEM,'
      '   GHI_CHU)'
      'VALUES ('
      '   :KEY_ID,'
      '   :ID_BAOHIEM_SODANGKY,'
      '   :NGHI_TUNGAY,'
      '   :NGHI_DENNGAY,'
      '   :YTE_XACNHAN,'
      '   :LOAI_DOITUONG,'
      '   :TEN_VANBAN_DIKEM,'
      '   :VANBAN_DIKEM,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'hr_baohiem_thaisan_khh.key_id')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryChiTietBeforePost
    DataSource = dsSoDangKyBHXH
    SQL.Strings = (
      'select hr_baohiem_thaisan_khh.key_id,'
      '    hr_baohiem_thaisan_khh.id_baohiem_sodangky,'
      '    hr_baohiem_thaisan_khh.nghi_tungay,'
      '    hr_baohiem_thaisan_khh.nghi_denngay,'
      '    hr_baohiem_thaisan_khh.yte_xacnhan,'
      '    hr_baohiem_thaisan_khh.loai_doituong,'
      '    hr_work_hour_type.wht_name,'
      '    hr_baohiem_thaisan_khh.ten_vanban_dikem,'
      '    hr_baohiem_thaisan_khh.vanban_dikem,'
      '    hr_baohiem_thaisan_khh.ghi_chu'
      'from hr_baohiem_thaisan_khh'
      
        'left join hr_work_hour_type on hr_baohiem_thaisan_khh.loai_doitu' +
        'ong = hr_work_hour_type.wht_no'
      
        'where hr_baohiem_thaisan_khh.id_baohiem_sodangky = :id_baohiem_s' +
        'odangky'
      
        'and (hr_baohiem_thaisan_khh.nghi_tungay between :TU_NGAY and :DE' +
        'N_NGAY'
      '     or'
      
        '     hr_baohiem_thaisan_khh.nghi_denngay between :TU_NGAY and :D' +
        'EN_NGAY)')
    FieldOptions = []
    Left = 40
    Top = 168
    object qryChiTietKEY_ID: TIntegerField
      FieldName = 'KEY_ID'
      Required = True
    end
    object qryChiTietID_BAOHIEM_SODANGKY: TIntegerField
      FieldName = 'ID_BAOHIEM_SODANGKY'
      Required = True
    end
    object qryChiTietNGHI_TUNGAY: TDateField
      FieldName = 'NGHI_TUNGAY'
      Required = True
    end
    object qryChiTietNGHI_DENNGAY: TDateField
      FieldName = 'NGHI_DENNGAY'
      Required = True
    end
    object qryChiTietYTE_XACNHAN: TSmallintField
      FieldName = 'YTE_XACNHAN'
    end
    object qryChiTietWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
    object qryChiTietTEN_VANBAN_DIKEM: TWideStringField
      FieldName = 'TEN_VANBAN_DIKEM'
      Size = 126
    end
    object qryChiTietVANBAN_DIKEM: TMemoField
      FieldName = 'VANBAN_DIKEM'
      BlobType = ftMemo
      Size = 8
    end
    object qryChiTietGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryChiTietLOAI_DOITUONG: TWideStringField
      FieldName = 'LOAI_DOITUONG'
      Required = True
      Size = 30
    end
  end
  object qryTongHop: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'XEM_THEO_DONVI'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'XEM_CAPDUOI'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'XEM_TUYCHON_NGHIVIEC'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'XEM_PHANLOAI_COSO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TU_NGAY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DEN_NGAY'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select employee_no,'
      '    full_name,'
      '    maso_bhxh,'
      '    nghi_tungay,'
      '    nghi_denngay,'
      '    yte_xacnhan,'
      '    wht_name,'
      '    ghi_chu'
      
        'from hr_baohiem_get_thaisan_khh(:XEM_THEO_DONVI,:XEM_CAPDUOI,:XE' +
        'M_TUYCHON_NGHIVIEC,'
      ':XEM_PHANLOAI_COSO,:USER_NAME,:TU_NGAY,:DEN_NGAY)'
      'order by employee_no,nghi_tungay')
    FieldOptions = []
    Left = 72
    Top = 168
    object qryTongHopEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryTongHopFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryTongHopMASO_BHXH: TWideStringField
      FieldName = 'MASO_BHXH'
      Size = 30
    end
    object qryTongHopNGHI_TUNGAY: TDateField
      FieldName = 'NGHI_TUNGAY'
    end
    object qryTongHopNGHI_DENNGAY: TDateField
      FieldName = 'NGHI_DENNGAY'
    end
    object qryTongHopYTE_XACNHAN: TSmallintField
      FieldName = 'YTE_XACNHAN'
    end
    object qryTongHopWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryTongHopGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 600
    end
  end
  object dsTongHop: TDataSource
    DataSet = qryTongHop
    Left = 72
    Top = 200
  end
  object dsChiTiet: TDataSource
    DataSet = qryChiTiet
    Left = 40
    Top = 200
  end
  object dsSoDangKyBHXH: TDataSource
    DataSet = qrySoDangKyBHXH
    Left = 8
    Top = 200
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 8
    Top = 232
  end
end
