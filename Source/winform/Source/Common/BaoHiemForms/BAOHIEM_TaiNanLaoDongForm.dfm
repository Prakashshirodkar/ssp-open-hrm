inherited frmBAOHIEM_TaiNanLaoDong: TfrmBAOHIEM_TaiNanLaoDong
  Left = 171
  Top = 130
  Width = 1010
  Height = 644
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 591
    Width = 1002
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 1002
    Height = 591
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 564
      Color = 15466238
      TabOrder = 3
    end
    inline frameDateTime1: TframeDateTime [1]
      Left = 14
      Top = 53
      Width = 972
      Height = 27
      Color = 15466238
      ParentColor = False
      TabOrder = 7
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
    object dxSelectDept: TdxPopupEdit
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
    object dxViewChild: TdxCheckEdit
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
    object ElPopupButton1: TElPopupButton
      Left = 467
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acXemDS
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pageMain: TElPageControl
      Left = 2
      Top = 87
      Width = 289
      Height = 193
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
      TabOrder = 8
      object tabChiTiet: TElTabSheet
        PageControl = pageMain
        ImageIndex = 0
        TabVisible = True
        Caption = 'Chi ti'#7871't'
        object gridDS_TNLD: TdxDBGrid
          Left = 0
          Top = 0
          Width = 337
          Height = 167
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID_TAINAN_LAODONG'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alLeft
          TabOrder = 0
          DataSource = dsDS_TNLD
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridDS_TNLDMAVU_TAINAN: TdxDBGridColumn
            Caption = 'M'#227' v'#7909
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MAVU_TAINAN'
            Caption_UTF7 = 'M+AOM v+HuU'
          end
          object gridDS_TNLDNGAY_XAYRA: TdxDBGridDateColumn
            Caption = 'Ng'#224'y x'#7843'y ra'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NGAY_XAYRA'
            Caption_UTF7 = 'Ng+AOA-y x+HqM-y ra'
          end
          object gridDS_TNLDDEPT_NAME: TdxDBGridColumn
            Caption = 'T'#7841'i '#273#417'n v'#7883
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = 'T+HqE-i +AREBoQ-n v+Hss'
          end
        end
        object ElSplitter1: TElSplitter
          Left = 337
          Top = 0
          Width = 10
          Height = 167
          Cursor = crHSplit
          SnapTopLeft = True
          SnapBottomRight = True
          ControlTopLeft = gridDS_TNLD
          ControlBottomRight = panelMain
          AutoHide = False
          ShowSnapButton = True
          Align = alLeft
          BevelInner = bvLowered
          UseXPThemes = False
        end
        object panelMain: TPanel
          Left = 347
          Top = 0
          Width = 647
          Height = 167
          Align = alClient
          BevelOuter = bvNone
          Caption = 'panelMain'
          TabOrder = 2
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 647
            Height = 167
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object dxDBEdit1: TdxDBEdit
              Left = 82
              Top = 28
              Width = 103
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              DataField = 'MAVU_TAINAN'
              DataSource = dsDS_TNLD
              StyleController = dmMain.StyleController
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 251
              Top = 28
              Width = 129
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 1
              DataField = 'NGAY_XAYRA'
              DataSource = dsDS_TNLD
              StyleController = dmMain.StyleController
            end
            object dxNguyenNhanTNLD: TdxDBMRUEdit
              Left = 251
              Top = 51
              Width = 129
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 4
              DataField = 'TEN_NGUYENNHAN'
              DataSource = dsDS_TNLD
              StyleController = dmMain.StyleController
              DropDownRows = 16777223
            end
            object dxDBCalcEdit1: TdxDBCalcEdit
              Left = 82
              Top = 51
              Width = 103
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 3
              DataField = 'TONG_THIETHAI'
              DataSource = dsDS_TNLD
              StyleController = dmMain.StyleController
            end
            object dxVanBanKemTheo: TdxDBButtonEdit
              Left = 439
              Top = 51
              Width = 569
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 5
              DataField = 'TEN_VANBAN_KEMTHEO'
              DataSource = dsDS_TNLD
              StyleController = dmMain.StyleController
              Buttons = <
                item
                  Default = True
                end
                item
                  Default = False
                  Kind = bkDown
                end>
              OnButtonClick = dxVanBanKemTheoButtonClick
              ExistButtons = True
            end
            object gridChiTiet: TdxDBGrid
              Left = 2
              Top = 81
              Width = 337
              Height = 442
              Bands = <
                item
                  Caption = 'Chi ti'#7871't TNL'#272
                  Width = 1193
                end
                item
                  Caption = 'Thi'#7879't h'#7841'i v'#7873' chi ph'#237
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'ID_TNLD_CHITIET'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alLeft
              TabOrder = 6
              DataSource = dsChiTiet
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              ShowBands = True
              object gridChiTietEMPLOYEE_NO: TdxDBGridColumn
                Caption = 'M'#227' nh'#226'n vi'#234'n'
                Color = clInfoBk
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 92
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EMPLOYEE_NO'
                Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
              end
              object gridChiTietMASO_BHXH: TdxDBGridColumn
                Caption = 'S'#7889' s'#7893' BHXH'
                Color = clInfoBk
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 98
                BandIndex = 0
                RowIndex = 0
                FieldName = 'MASO_BHXH'
                Caption_UTF7 = 'S+HtE s+HtU BHXH'
              end
              object gridChiTietFULL_NAME: TdxDBGridPopupColumn
                Caption = 'H'#7885' v'#224' t'#234'n'
                HeaderAlignment = taCenter
                Width = 167
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FULL_NAME'
                OnCloseUp = gridChiTietFULL_NAMECloseUp
                OnInitPopup = gridChiTietFULL_NAMEInitPopup
                Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
              end
              object gridChiTietTEN_YEUTO_CHANTHUONG: TdxDBGridMRUColumn
                Caption = 'Y'#7871'u t'#7889' g'#226'y ch'#7845'n th'#432#417'ng'
                HeaderAlignment = taCenter
                Width = 144
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TEN_YEUTO_CHANTHUONG'
                ImmediateDropDown = True
                Caption_UTF7 = 'Y+Hr8-u t+HtE g+AOI-y ch+HqU-n th+AbABoQ-ng'
              end
              object gridChiTietNGHI_TUNGAY: TdxDBGridDateColumn
                Alignment = taCenter
                Caption = 'Ngh'#7881' t'#7915' ng'#224'y'
                HeaderAlignment = taCenter
                Width = 95
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NGHI_TUNGAY'
                Caption_UTF7 = 'Ngh+Hsk t+Hus ng+AOA-y'
              end
              object gridChiTietNGHI_DENNGAY: TdxDBGridDateColumn
                Alignment = taCenter
                Caption = 'Ngh'#7881' '#273#7871'n ng'#224'y'
                HeaderAlignment = taCenter
                Width = 97
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NGHI_DENNGAY'
                Caption_UTF7 = 'Ngh+Hsk +AREevw-n ng+AOA-y'
              end
              object gridChiTietSONGAY_NGHI: TdxDBGridColumn
                Alignment = taCenter
                Caption = 'S'#7889' ng'#224'y ngh'#7881
                Color = clInfoBk
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 83
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SONGAY_NGHI'
                Caption_UTF7 = 'S+HtE ng+AOA-y ngh+Hsk'
              end
              object gridChiTietTEN_MUCDO: TdxDBGridMRUColumn
                Caption = 'M'#7913'c '#273#7897' th'#432#417'ng t'#7853't'
                HeaderAlignment = taCenter
                Width = 138
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TEN_MUCDO'
                ImmediateDropDown = True
                Caption_UTF7 = 'M+Huk-c +AREe2Q th+AbABoQ-ng t+Hq0-t'
              end
              object gridChiTietCHIPHI_DO_YTE_TRA: TdxDBGridCalcColumn
                Caption = 'Y t'#7871' chi tr'#7843
                HeaderAlignment = taCenter
                Width = 88
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CHIPHI_DO_YTE_TRA'
                Caption_UTF7 = 'Y t+Hr8 chi tr+HqM'
              end
              object gridChiTietTEN_MUCDO_SUYGIAM: TdxDBGridMRUColumn
                Caption = 'M'#7913'c '#273#7897' suy gi'#7843'm kh'#7843' n'#259'ng L'#272
                HeaderAlignment = taCenter
                Width = 162
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TEN_MUCDO_SUYGIAM'
                ImmediateDropDown = True
                Caption_UTF7 = 'M+Huk-c +AREe2Q suy gi+HqM-m kh+HqM n+AQM-ng L+ARA'
              end
              object gridChiTietCHIPHI_TRALUONG: TdxDBGridCalcColumn
                Caption = 'Tr'#7843' l'#432#417'ng'
                HeaderAlignment = taCenter
                Width = 100
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CHIPHI_TRALUONG'
                Caption_UTF7 = 'Tr+HqM l+AbABoQ-ng'
              end
              object gridChiTietCHIPHI_TROCAP: TdxDBGridCalcColumn
                Caption = 'B'#7891'i th'#432#7901'ng tr'#7907' c'#7845'p'
                HeaderAlignment = taCenter
                Width = 119
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CHIPHI_TROCAP'
                Caption_UTF7 = 'B+HtM-i th+AbAe3Q-ng tr+HuM c+HqU-p'
              end
            end
            object dxDeptName: TdxDBPopupEdit
              Left = 439
              Top = 28
              Width = 189
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 2
              DataField = 'DEPT_NAME'
              DataSource = dsDS_TNLD
              StyleController = dmMain.StyleController
              OnCloseUp = dxDeptNameCloseUp
              OnInitPopup = dxDeptNameInitPopup
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group1: TdxLayoutGroup
                Caption = 'Th'#244'ng tin chi ti'#7871't v'#7909' tai n'#7841'n lao '#273#7897'ng'
                object dxLayoutControl1Group2: TdxLayoutGroup
                  Caption = 'New Group'
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item1: TdxLayoutItem
                    Caption = 'M'#227' v'#7909
                    Control = dxDBEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item2: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Ng'#224'y x'#7843'y ra'
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'T'#7841'i '#273#417'n v'#7883
                    Control = dxDeptName
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Group3: TdxLayoutGroup
                  Caption = 'New Group'
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'T'#7893'ng thi'#7879't h'#7841'i'
                    Control = dxDBCalcEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item4: TdxLayoutItem
                    Caption = 'Nguy'#234'n nh'#226'n'
                    Control = dxNguyenNhanTNLD
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'VB '#273#237'nh k'#232'm'
                    Control = dxVanBanKemTheo
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Item7: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Control = gridChiTiet
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object ElTabSheet2: TElTabSheet
        PageControl = pageMain
        ImageIndex = -1
        TabVisible = True
        Caption = 'ElTabSheet2'
        Visible = False
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup2: TdxLayoutGroup [0]
        Caption = 'T'#249'y ch'#7885'n xem danh s'#225'ch'
        object dxlcMainGroup1: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Xem '#273#417'n v'#7883' - ph'#242'ng ban'
            Control = dxSelectDept
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem4: TdxLayoutItem
            ShowCaption = False
            Control = dxViewChild
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem7: TdxLayoutItem
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainItem2: TdxLayoutItem
          Control = frameDateTime1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcMainItem8: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
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
        Caption = 'Qu'#7843'n l'#253' tai n'#7841'n lao '#273#7897'ng'
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
  object qryDS_TNLD: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'XEM_TUNGAY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'XEM_DENNGAY'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'XEM_CAPDUOI=0'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'XEM_THEO_DONVI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'XEM_CAPDUOI=1'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TAINAN_LAODONG'
      'WHERE'
      '   ID_TAINAN_LAODONG = :OLD_ID_TAINAN_LAODONG')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TAINAN_LAODONG SET'
      '   ID_TAINAN_LAODONG = :ID_TAINAN_LAODONG, /*PK*/'
      '   MAVU_TAINAN = :MAVU_TAINAN,'
      '   NGAY_XAYRA = :NGAY_XAYRA,'
      '   TAI_DONVI = :TAI_DONVI,'
      '   ID_TNLD_NGUYENNHAN = :ID_TNLD_NGUYENNHAN,'
      '   TONG_THIETHAI = :TONG_THIETHAI,'
      '   VANBAN_KEMTHEO = :VANBAN_KEMTHEO,'
      '   TEN_VANBAN_KEMTHEO = :TEN_VANBAN_KEMTHEO'
      'WHERE'
      '   ID_TAINAN_LAODONG = :OLD_ID_TAINAN_LAODONG')
    GeneratorLinks.Strings = (
      'ID_TAINAN_LAODONG = GEN_HR_BH_TAINAN_LAODONG_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TAINAN_LAODONG('
      '   ID_TAINAN_LAODONG, /*PK*/'
      '   MAVU_TAINAN,'
      '   NGAY_XAYRA,'
      '   TAI_DONVI,'
      '   ID_TNLD_NGUYENNHAN,'
      '   TONG_THIETHAI,'
      '   VANBAN_KEMTHEO,'
      '   TEN_VANBAN_KEMTHEO)'
      'VALUES ('
      '   :ID_TAINAN_LAODONG,'
      '   :MAVU_TAINAN,'
      '   :NGAY_XAYRA,'
      '   :TAI_DONVI,'
      '   :ID_TNLD_NGUYENNHAN,'
      '   :TONG_THIETHAI,'
      '   :VANBAN_KEMTHEO,'
      '   :TEN_VANBAN_KEMTHEO)')
    KeyLinks.Strings = (
      'ID_TAINAN_LAODONG')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDS_TNLDNewRecord
    SQL.Strings = (
      'SELECT ID_TAINAN_LAODONG'
      '     , MAVU_TAINAN'
      '     , NGAY_XAYRA'
      '     , TAI_DONVI'
      '     , HR_BAOHIEM_TAINAN_LAODONG.ID_TNLD_NGUYENNHAN'
      '     , TONG_THIETHAI'
      '     , VANBAN_KEMTHEO'
      '     , TEN_VANBAN_KEMTHEO'
      '     , TEN_NGUYENNHAN'
      '     , DEPT_NAME'
      'FROM HR_BAOHIEM_TAINAN_LAODONG'
      'JOIN HR_BAOHIEM_TNLD_NGUYENNHAN'
      
        '    ON HR_BAOHIEM_TAINAN_LAODONG.ID_TNLD_NGUYENNHAN = HR_BAOHIEM' +
        '_TNLD_NGUYENNHAN.ID_TNLD_NGUYENNHAN'
      'JOIN HR_DEPARTMENT'
      
        '    ON HR_BAOHIEM_TAINAN_LAODONG.TAI_DONVI = HR_DEPARTMENT.DEPT_' +
        'NO'
      'WHERE NGAY_XAYRA BETWEEN :XEM_TUNGAY AND :XEM_DENNGAY'
      'AND'
      '('
      '    ((:XEM_CAPDUOI=0)AND(HR_DEPARTMENT.DEPT_NO=:XEM_THEO_DONVI))'
      '    OR'
      '    ('
      '        (:XEM_CAPDUOI=1)'
      
        '        AND(HR_DEPARTMENT.DEPT_LEFT_INDEX>=(SELECT HR_DEPARTMENT' +
        '.DEPT_LEFT_INDEX'
      '                                            FROM HR_DEPARTMENT'
      
        '                                            WHERE HR_DEPARTMENT.' +
        'DEPT_NO=:XEM_THEO_DONVI))'
      
        '        AND(HR_DEPARTMENT.DEPT_RIGHT_INDEX<=(SELECT HR_DEPARTMEN' +
        'T.DEPT_RIGHT_INDEX'
      '                                            FROM HR_DEPARTMENT'
      
        '                                            WHERE HR_DEPARTMENT.' +
        'DEPT_NO=:XEM_THEO_DONVI))'
      '    )'
      ')')
    FieldOptions = []
    Left = 16
    Top = 200
    object qryDS_TNLDMAVU_TAINAN: TWideStringField
      FieldName = 'MAVU_TAINAN'
      Required = True
      Size = 30
    end
    object qryDS_TNLDNGAY_XAYRA: TDateField
      FieldName = 'NGAY_XAYRA'
      Required = True
    end
    object qryDS_TNLDTEN_NGUYENNHAN: TWideStringField
      FieldName = 'TEN_NGUYENNHAN'
      Required = True
      Size = 126
    end
    object qryDS_TNLDTONG_THIETHAI: TIBOFloatField
      FieldName = 'TONG_THIETHAI'
    end
    object qryDS_TNLDVANBAN_KEMTHEO: TBlobField
      FieldName = 'VANBAN_KEMTHEO'
      Size = 8
    end
    object qryDS_TNLDTEN_VANBAN_KEMTHEO: TWideStringField
      FieldName = 'TEN_VANBAN_KEMTHEO'
      Size = 126
    end
    object qryDS_TNLDDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDS_TNLDID_TAINAN_LAODONG: TIntegerField
      FieldName = 'ID_TAINAN_LAODONG'
    end
    object qryDS_TNLDID_TNLD_NGUYENNHAN: TIntegerField
      FieldName = 'ID_TNLD_NGUYENNHAN'
    end
    object qryDS_TNLDTAI_DONVI: TWideStringField
      FieldName = 'TAI_DONVI'
      Size = 30
    end
  end
  object dsDS_TNLD: TDataSource
    DataSet = qryDS_TNLD
    Left = 16
    Top = 232
  end
  object dsChiTiet: TDataSource
    DataSet = qryChiTiet
    Left = 48
    Top = 232
  end
  object qryChiTiet: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_TAINAN_LAODONG'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TNLD_CHITIET'
      'WHERE'
      '   ID_TNLD_CHITIET = :OLD_ID_TNLD_CHITIET')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TNLD_CHITIET SET'
      '   ID_TNLD_CHITIET = :ID_TNLD_CHITIET, /*PK*/'
      '   ID_TAINAN_LAODONG = :ID_TAINAN_LAODONG,'
      '   ID_BAOHIEM_SODANGKY = :ID_BAOHIEM_SODANGKY,'
      '   ID_YEUTO_CHANTHUONG = :ID_YEUTO_CHANTHUONG,'
      '   NGHI_TUNGAY = :NGHI_TUNGAY,'
      '   NGHI_DENNGAY = :NGHI_DENNGAY,'
      '   ID_TNLD_MUCDO = :ID_TNLD_MUCDO,'
      '   ID_MUCDO_SUYGIAM = :ID_MUCDO_SUYGIAM,'
      '   CHIPHI_DO_YTE_TRA = :CHIPHI_DO_YTE_TRA,'
      '   CHIPHI_TRALUONG = :CHIPHI_TRALUONG,'
      '   CHIPHI_TROCAP = :CHIPHI_TROCAP,'
      '   SONGAY_NGHI = :SONGAY_NGHI'
      'WHERE'
      '   ID_TNLD_CHITIET = :OLD_ID_TNLD_CHITIET')
    GeneratorLinks.Strings = (
      'ID_TNLD_CHITIET = GEN_HR_BAOHIEM_TNLD_CHITIET_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TNLD_CHITIET('
      '   ID_TNLD_CHITIET, /*PK*/'
      '   ID_TAINAN_LAODONG,'
      '   ID_BAOHIEM_SODANGKY,'
      '   ID_YEUTO_CHANTHUONG,'
      '   NGHI_TUNGAY,'
      '   NGHI_DENNGAY,'
      '   ID_TNLD_MUCDO,'
      '   ID_MUCDO_SUYGIAM,'
      '   CHIPHI_DO_YTE_TRA,'
      '   CHIPHI_TRALUONG,'
      '   CHIPHI_TROCAP,'
      '   SONGAY_NGHI)'
      'VALUES ('
      '   :ID_TNLD_CHITIET,'
      '   :ID_TAINAN_LAODONG,'
      '   :ID_BAOHIEM_SODANGKY,'
      '   :ID_YEUTO_CHANTHUONG,'
      '   :NGHI_TUNGAY,'
      '   :NGHI_DENNGAY,'
      '   :ID_TNLD_MUCDO,'
      '   :ID_MUCDO_SUYGIAM,'
      '   :CHIPHI_DO_YTE_TRA,'
      '   :CHIPHI_TRALUONG,'
      '   :CHIPHI_TROCAP,'
      '   :SONGAY_NGHI)')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryChiTietBeforePost
    DataSource = dsDS_TNLD
    SQL.Strings = (
      'SELECT  HR_BAOHIEM_TNLD_CHITIET.ID_TNLD_CHITIET,'
      '    HR_BAOHIEM_TNLD_CHITIET.ID_TAINAN_LAODONG,'
      '    HR_BAOHIEM_TNLD_CHITIET.ID_BAOHIEM_SODANGKY,'
      '    HR_BAOHIEM_SODANGKY.EMPLOYEE_NO,'
      '    HR_BAOHIEM_SODANGKY.MASO_BHXH,'
      
        '    LAST_NAME || '#39' '#39' || MIDDLE_NAME || '#39' '#39' || FIRST_NAME FULL_NA' +
        'ME,'
      '    HR_BAOHIEM_TNLD_CHITIET.ID_YEUTO_CHANTHUONG,'
      '    HR_BAOHIEM_TNLD_YEUTO.TEN_YEUTO_CHANTHUONG,'
      '    HR_BAOHIEM_TNLD_CHITIET.NGHI_TUNGAY,'
      '    HR_BAOHIEM_TNLD_CHITIET.NGHI_DENNGAY,'
      '    HR_BAOHIEM_TNLD_CHITIET.ID_TNLD_MUCDO,'
      '    HR_BAOHIEM_TNLD_MUCDO.TEN_MUCDO,'
      '    HR_BAOHIEM_TNLD_CHITIET.ID_MUCDO_SUYGIAM,'
      '    HR_BAOHIEM_TNLD_MUCDOSUYGIAM.TEN_MUCDO_SUYGIAM,'
      '    HR_BAOHIEM_TNLD_CHITIET.CHIPHI_DO_YTE_TRA,'
      '    HR_BAOHIEM_TNLD_CHITIET.CHIPHI_TRALUONG,'
      '    HR_BAOHIEM_TNLD_CHITIET.CHIPHI_TROCAP'
      '     , SONGAY_NGHI'
      'FROM HR_BAOHIEM_TNLD_CHITIET'
      
        'JOIN HR_BAOHIEM_SODANGKY ON HR_BAOHIEM_TNLD_CHITIET.ID_BAOHIEM_S' +
        'ODANGKY = HR_BAOHIEM_SODANGKY.ID_BAOHIEM_SODANGKY'
      
        'JOIN HR_EMPLOYEE ON HR_BAOHIEM_SODANGKY.EMPLOYEE_NO = HR_EMPLOYE' +
        'E.EMPLOYEE_NO '
      
        'LEFT JOIN HR_BAOHIEM_TNLD_YEUTO ON HR_BAOHIEM_TNLD_CHITIET.ID_YE' +
        'UTO_CHANTHUONG = HR_BAOHIEM_TNLD_YEUTO.ID_YEUTO_CHANTHUONG '
      
        'LEFT JOIN HR_BAOHIEM_TNLD_MUCDO ON HR_BAOHIEM_TNLD_CHITIET.ID_TN' +
        'LD_MUCDO = HR_BAOHIEM_TNLD_MUCDO.ID_TNLD_MUCDO '
      
        'LEFT JOIN HR_BAOHIEM_TNLD_MUCDOSUYGIAM ON HR_BAOHIEM_TNLD_CHITIE' +
        'T.ID_MUCDO_SUYGIAM = HR_BAOHIEM_TNLD_MUCDOSUYGIAM.ID_MUCDO_SUYGI' +
        'AM '
      'WHERE'
      'HR_BAOHIEM_TNLD_CHITIET.ID_TAINAN_LAODONG =  :ID_TAINAN_LAODONG')
    FieldOptions = []
    Left = 48
    Top = 200
    object qryChiTietEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      OnChange = qryChiTietEMPLOYEE_NOChange
      Size = 30
    end
    object qryChiTietMASO_BHXH: TWideStringField
      FieldName = 'MASO_BHXH'
      Size = 30
    end
    object qryChiTietFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 129
    end
    object qryChiTietTEN_YEUTO_CHANTHUONG: TWideStringField
      FieldName = 'TEN_YEUTO_CHANTHUONG'
      Required = True
      Size = 126
    end
    object qryChiTietNGHI_TUNGAY: TDateField
      FieldName = 'NGHI_TUNGAY'
      Required = True
      OnChange = qryChiTietNGHI_TUNGAYChange
    end
    object qryChiTietNGHI_DENNGAY: TDateField
      FieldName = 'NGHI_DENNGAY'
      OnChange = qryChiTietNGHI_DENNGAYChange
    end
    object qryChiTietTEN_MUCDO: TWideStringField
      FieldName = 'TEN_MUCDO'
      Size = 63
    end
    object qryChiTietTEN_MUCDO_SUYGIAM: TWideStringField
      FieldName = 'TEN_MUCDO_SUYGIAM'
      Size = 63
    end
    object qryChiTietCHIPHI_DO_YTE_TRA: TIBOFloatField
      FieldName = 'CHIPHI_DO_YTE_TRA'
    end
    object qryChiTietCHIPHI_TRALUONG: TIBOFloatField
      FieldName = 'CHIPHI_TRALUONG'
    end
    object qryChiTietCHIPHI_TROCAP: TIBOFloatField
      FieldName = 'CHIPHI_TROCAP'
    end
    object qryChiTietSONGAY_NGHI: TIntegerField
      FieldName = 'SONGAY_NGHI'
    end
    object qryChiTietID_BAOHIEM_SODANGKY: TIntegerField
      FieldName = 'ID_BAOHIEM_SODANGKY'
      Required = True
    end
    object qryChiTietID_TAINAN_LAODONG: TIntegerField
      FieldName = 'ID_TAINAN_LAODONG'
      Required = True
    end
    object qryChiTietID_TNLD_CHITIET: TIntegerField
      FieldName = 'ID_TNLD_CHITIET'
      Required = True
    end
    object qryChiTietID_YEUTO_CHANTHUONG: TIntegerField
      FieldName = 'ID_YEUTO_CHANTHUONG'
    end
    object qryChiTietID_TNLD_MUCDO: TIntegerField
      FieldName = 'ID_TNLD_MUCDO'
    end
    object qryChiTietID_MUCDO_SUYGIAM: TIntegerField
      FieldName = 'ID_MUCDO_SUYGIAM'
    end
  end
  object qrySoBHXH: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ID_BAOHIEM_SODANGKY')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsChiTiet
    SQL.Strings = (
      'SELECT MASO_BHXH'
      '     , ID_BAOHIEM_SODANGKY'
      'FROM HR_BAOHIEM_SODANGKY'
      'WHERE EMPLOYEE_NO = :EMPLOYEE_NO')
    FieldOptions = []
    Left = 80
    Top = 200
    object qrySoBHXHMASO_BHXH: TWideStringField
      FieldName = 'MASO_BHXH'
      Size = 30
    end
    object qrySoBHXHID_BAOHIEM_SODANGKY: TIntegerField
      FieldName = 'ID_BAOHIEM_SODANGKY'
      Required = True
    end
  end
end
