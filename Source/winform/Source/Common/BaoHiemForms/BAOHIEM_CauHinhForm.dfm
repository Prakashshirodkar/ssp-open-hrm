inherited frmBAOHIEM_CauHinh: TfrmBAOHIEM_CauHinh
  Left = 265
  Top = 171
  Width = 814
  Height = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 534
    Width = 806
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 806
    Height = 534
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 507
      Color = 15466238
    end
    object pageCauHinh: TElPageControl [1]
      Left = 2
      Top = 2
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = imgCauHinh
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsAngledTabs
      TabIndex = 1
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabThongSoKhac
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = ANSI_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'Tahoma'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 4
      object tabThongSoChung: TElTabSheet
        PageControl = pageCauHinh
        ImageIndex = 0
        TabVisible = True
        Caption = 'Th'#244'ng s'#7889' chung'
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 167
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxTheoLuongCBNN: TElRadioButton
            Left = 181
            Top = 28
            Width = 153
            Height = 17
            Cursor = crDefault
            Checked = True
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo khung l'#432#417'ng CBNN     '
            TabOrder = 1
            Color = 15466238
            ParentColor = False
            OnClick = dxTheoLuongCBNNClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxTheoLuongCongTy: TElRadioButton
            Left = 334
            Top = 28
            Width = 165
            Height = 17
            Cursor = crDefault
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo khung l'#432#417'ng c'#244'ng ty      '
            TabStop = False
            TabOrder = 15
            Color = 15466238
            ParentColor = False
            OnClick = dxTheoLuongCongTyClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxTheoHeSoQDHD: TElRadioButton
            Left = 499
            Top = 28
            Width = 176
            Height = 17
            Cursor = crDefault
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            Caption = 'Theo h'#7879' s'#7889' l'#432#417'ng '#273'i k'#232'm Q'#272'/H'#272
            TabOrder = 2
            Color = 15466238
            ParentColor = False
            OnClick = dxTheoHeSoQDHDClick
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxDBPopupEdit5: TdxDBPopupEdit
            Left = 456
            Top = 78
            Width = 190
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 3
            DataField = 'TEN_MUCLUONG'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit5CloseUp
            OnInitPopup = dxDBPopupEdit5InitPopup
          end
          object dxDBPopupEdit6: TdxDBPopupEdit
            Left = 456
            Top = 101
            Width = 190
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 4
            DataField = 'TEN_PHUCAP'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit6CloseUp
            OnInitPopup = dxDBPopupEdit6InitPopup
          end
          object dxDBPopupEdit4: TdxDBPopupEdit
            Left = 456
            Top = 124
            Width = 190
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 5
            DataField = 'TEN_PCTN_VUOTKHUNG'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit4CloseUp
            OnInitPopup = dxDBPopupEdit4InitPopup
          end
          object dxDBPopupEdit7: TdxDBPopupEdit
            Left = 456
            Top = 147
            Width = 190
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 6
            DataField = 'TEN_PCTN_NGHE'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit7CloseUp
            OnInitPopup = dxDBPopupEdit7InitPopup
          end
          object dxDBPopupEdit8: TdxDBPopupEdit
            Left = 456
            Top = 170
            Width = 190
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 7
            DataField = 'TEN_PCKV'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit8CloseUp
            OnInitPopup = dxDBPopupEdit8InitPopup
          end
          object dxDBSpinEdit2: TdxDBSpinEdit
            Left = 324
            Top = 249
            Width = 136
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 10
            Alignment = taCenter
            DataField = 'MOCNGAY_LD_GIAM'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object dxDBSpinEdit3: TdxDBSpinEdit
            Left = 649
            Top = 226
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 9
            Alignment = taCenter
            DataField = 'MOCNGAY_LD_THAYDOILUONG'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object dxDBSpinEdit6: TdxDBSpinEdit
            Left = 650
            Top = 272
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 13
            Alignment = taCenter
            DataField = 'MOCNGAY_TRATHE'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object dxDBSpinEdit7: TdxDBSpinEdit
            Left = 326
            Top = 272
            Width = 135
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 12
            Alignment = taCenter
            DataField = 'THOIHAN_THE_BHYT'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object dxDBSpinEdit5: TdxDBSpinEdit
            Left = 649
            Top = 249
            Width = 75
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 11
            Alignment = taCenter
            DataField = 'SOTHANG_LIENKE'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object gridChiTiet: TdxDBGrid
            Left = 169
            Top = 302
            Width = 738
            Height = 62
            Bands = <
              item
                Caption = 'Chi ti'#7871't c'#225'c kho'#7843'n ph'#7843'i n'#7897'p b'#7843'o hi'#7875'm'
              end>
            DefaultLayout = False
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'MA_KHOANNOP'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 14
            DataSource = dsChiTiet
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            ShowBands = True
            object gridChiTietMA_KHOANNOP: TdxDBGridColumn
              Caption = 'M'#227' kho'#7843'n n'#7897'p'
              HeaderAlignment = taCenter
              Width = 83
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MA_KHOANNOP'
              Caption_UTF7 = 'M+AOM kho+HqM-n n+Htk-p'
            end
            object gridChiTietTEN_KHOANNOP: TdxDBGridColumn
              Caption = 'Kho'#7843'n n'#7897'p b'#7843'o hi'#7875'm'
              HeaderAlignment = taCenter
              Width = 141
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TEN_KHOANNOP'
              Caption_UTF7 = 'Kho+HqM-n n+Htk-p b+HqM-o hi+HsM-m'
            end
            object gridChiTietMUCLUONG_TOIDA: TdxDBGridCalcColumn
              Caption = 'M'#7913'c l'#432#417'ng t'#7889'i '#273'a'
              HeaderAlignment = taCenter
              Width = 76
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MUCLUONG_TOIDA'
              Caption_UTF7 = 'M+Huk-c l+AbABoQ-ng t+HtE-i +ARE-a'
            end
            object gridChiTietMUCLUONG_TOITHIEU: TdxDBGridCalcColumn
              Caption = 'M'#7913'c l'#432#417'ng t'#7889'i thi'#7875'u'
              HeaderAlignment = taCenter
              Width = 76
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MUCLUONG_TOITHIEU'
              Caption_UTF7 = 'M+Huk-c l+AbABoQ-ng t+HtE-i thi+HsM-u'
            end
            object gridChiTietTILE_NLD_NOP: TdxDBGridCalcColumn
              Caption = 'T'#7881' l'#7879' NL'#272' n'#7897'p (%)'
              HeaderAlignment = taCenter
              Width = 76
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TILE_NLD_NOP'
              SummaryFooterType = cstSum
              Caption_UTF7 = 'T+Hsk l+Hsc NL+ARA n+Htk-p (%)'
            end
            object gridChiTietTILE_DN_NOP: TdxDBGridCalcColumn
              Caption = 'T'#7881' l'#7879' DN n'#7897'p (%)'
              HeaderAlignment = taCenter
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TILE_DN_NOP'
              SummaryFooterType = cstSum
              Caption_UTF7 = 'T+Hsk l+Hsc DN n+Htk-p (%)'
            end
            object gridChiTietTILE_NOP: TdxDBGridCalcColumn
              Caption = 'T'#7881' l'#7879' ph'#7843'i n'#7897'p (%)'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TILE_NOP'
              SummaryFooterType = cstSum
              Caption_UTF7 = 'T+Hsk l+Hsc ph+HqM-i n+Htk-p (%)'
            end
          end
          object gridCauHinh: TdxDBGrid
            Left = 2
            Top = 2
            Width = 167
            Height = 475
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'KEY_ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 0
            DataSource = dsCauHinh
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            OnChangeNode = gridCauHinhChangeNode
            object gridCauHinhNGAY_APDUNG: TdxDBGridDateColumn
              Alignment = taCenter
              Caption = #193'p d'#7909'ng t'#7915' ng'#224'y'
              HeaderAlignment = taCenter
              Sorted = csUp
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NGAY_APDUNG'
              Caption_UTF7 = '+AME-p d+HuU-ng t+Hus ng+AOA-y'
            end
          end
          object dxDBSpinEdit1: TdxDBSpinEdit
            Left = 324
            Top = 226
            Width = 135
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 8
            Alignment = taCenter
            DataField = 'MOCNGAY_LD_TANG'
            DataSource = dsCauHinh
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item16: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'New Item'
              ShowCaption = False
              Control = gridCauHinh
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Group8: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'New Group'
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group1: TdxLayoutGroup
                Caption = 'M'#7913'c l'#432#417'ng c'#417' b'#7843'n '#273#243'ng BHXH'
                LayoutDirection = ldHorizontal
                object dxLayoutControl1Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxTheoLuongCBNN
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  ShowCaption = False
                  Control = dxTheoLuongCongTy
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  ShowCaption = False
                  Control = dxTheoHeSoQDHD
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group2: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Kho'#7843'n l'#432#417'ng '#273#243'ng BHXH theo Q'#272'/H'#272
                object dxLayoutControl1Item4: TdxLayoutItem
                  Caption = '   + M'#7913'c l'#432#417'ng '#273#243'ng BHXH ( theo H'#7907'p '#273#7891'ng)'
                  Control = dxDBPopupEdit5
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  Caption = '   + Ph'#7909' c'#7845'p  ( l'#224' ph'#7909' c'#7845'p ch'#7913'c v'#7909' n'#7871'u l'#224' DNNN)'
                  Control = dxDBPopupEdit6
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  Caption = '   + Ph'#7909' c'#7845'p th'#226'm ni'#234'n VK ( d'#224'nh ri'#234'ng cho kh'#7889'i DNNN)'
                  Control = dxDBPopupEdit4
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item7: TdxLayoutItem
                  Caption = '   + Ph'#7909' c'#7845'p th'#226'm ni'#234'n ngh'#7873' ( d'#224'nh ri'#234'ng cho kh'#7889'i DNNN)'
                  Control = dxDBPopupEdit7
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item8: TdxLayoutItem
                  Caption = '   + Ph'#7909' c'#7845'p kh'#225'c ( d'#224'nh ri'#234'ng cho kh'#7889'i DNNN)'
                  Control = dxDBPopupEdit8
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group3: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Th'#244'ng s'#7889' thi'#7871't l'#7853'p b'#225'o c'#225'o'
                object dxLayoutControl1Group4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl1Group6: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Item9: TdxLayoutItem
                      Caption = '+ M'#7889'c ng'#224'y x'#225'c '#273#7883'nh L'#272' t'#259'ng'
                      Control = dxDBSpinEdit1
                      ControlOptions.AutoAlignment = False
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item11: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = '+ M'#7889'c ng'#224'y x'#225'c '#273#7883'nh L'#272' thay '#273#7893'i l'#432#417'ng'
                      Control = dxDBSpinEdit3
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl1Group7: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Item10: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = '+ M'#7889'c ng'#224'y x'#225'c '#273#7883'nh L'#272' gi'#7843'm'
                      Control = dxDBSpinEdit2
                      ControlOptions.AutoAlignment = False
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item14: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = '+ S'#7889' th'#225'ng li'#7873'n k'#7873' x'#225'c '#273#7883'nh thay '#273#7893'i     '
                      Control = dxDBSpinEdit5
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutControl1Group5: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item13: TdxLayoutItem
                    Caption = '+ S'#7889' th'#225'ng s'#7917' d'#7909'ng th'#7867' BHYT'
                    Control = dxDBSpinEdit7
                    ControlOptions.AutoAlignment = False
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item12: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = '+ M'#7889'c ng'#224'y tr'#7843' th'#7867' BHYT                      '
                    Control = dxDBSpinEdit6
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Item15: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'New Item'
                ShowCaption = False
                Control = gridChiTiet
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object tabThongSoKhac: TElTabSheet
        PageControl = pageCauHinh
        ImageIndex = 1
        TabVisible = True
        Caption = 'Th'#244'ng s'#7889' kh'#225'c'
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 167
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridTyGia: TdxDBGrid
            Left = 14
            Top = 28
            Width = 195
            Height = 442
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'NGAY_APDUNG'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 0
            DataSource = dsTyGia
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            OnChangeNode = gridCauHinhChangeNode
            object gridTyGiaNGAY_APDUNG: TdxDBGridDateColumn
              Caption = #193'p d'#7909'ng t'#7915
              HeaderAlignment = taCenter
              Sorted = csUp
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NGAY_APDUNG'
              Caption_UTF7 = '+AME-p d+HuU-ng t+Hus'
            end
            object gridTyGiaTY_GIA: TdxDBGridCalcColumn
              Caption = 'T'#7927' gi'#225
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TY_GIA'
              Caption_UTF7 = 'T+Hvc gi+AOE'
            end
          end
          object gridWorkHour: TdxDBGrid
            Left = 233
            Top = 28
            Width = 208
            Height = 442
            Bands = <
              item
                Caption = 'Danh s'#225'ch c'#225'c lo'#7841'i c'#244'ng'
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'WHT_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 1
            DataSource = dsWorkHourType
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
            ShowBands = True
            OnChangeNode = gridCauHinhChangeNode
            object gridWorkHourWHT_NO: TdxDBGridColumn
              Caption = 'M'#227
              HeaderAlignment = taCenter
              Width = 49
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WHT_NO'
              Caption_UTF7 = 'M+AOM'
            end
            object gridWorkHourWHT_NAME: TdxDBGridColumn
              Caption = 'Lo'#7841'i c'#244'ng'
              HeaderAlignment = taCenter
              Width = 144
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WHT_NAME'
              Caption_UTF7 = 'Lo+HqE-i c+APQ-ng'
            end
          end
          object pageLoaiCong: TElPageControl
            Left = 441
            Top = 28
            Width = 200
            Height = 442
            BorderWidth = 0
            DrawFocus = False
            Flat = True
            HotTrack = True
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
            ActivePage = tabLoaiCongNghi
            FlatTabBorderColor = clBtnShadow
            DraggablePages = False
            ActiveTabFont.Charset = DEFAULT_CHARSET
            ActiveTabFont.Color = clWindowText
            ActiveTabFont.Height = -11
            ActiveTabFont.Name = 'MS Sans Serif'
            ActiveTabFont.Style = []
            TabCursor = crDefault
            ParentColor = False
            TabOrder = 5
            object tabLoaiCongNghi: TElTabSheet
              PageControl = pageLoaiCong
              ImageIndex = -1
              TabVisible = True
              Caption = 'Danh s'#225'ch lo'#7841'i c'#244'ng ngh'#7881
              object dxLayoutControl3: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 196
                Height = 419
                Align = alClient
                TabOrder = 0
                AutoContentSizes = [acsWidth, acsHeight]
                LookAndFeel = dmMain.StyleWeb
                object gridLoaiCong_NghiOm: TdxDBGrid
                  Left = 40
                  Top = 28
                  Width = 285
                  Height = 103
                  Bands = <
                    item
                      Caption = 'Danh s'#225'ch c'#225'c lo'#7841'i c'#244'ng'
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'WHT_NO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  TabOrder = 4
                  DataSource = dsLoaiCong_NghiOm
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                  OnChangeNode = gridCauHinhChangeNode
                  object gridLoaiCong_NghiOmWHT_NO: TdxDBGridColumn
                    Caption = 'M'#227
                    HeaderAlignment = taCenter
                    Width = 58
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NO'
                    Caption_UTF7 = 'M+AOM'
                  end
                  object gridLoaiCong_NghiOmWHT_NAME: TdxDBGridColumn
                    Caption = 'Lo'#7841'i c'#244'ng'
                    HeaderAlignment = taCenter
                    Width = 180
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NAME'
                    Caption_UTF7 = 'Lo+HqE-i c+APQ-ng'
                  end
                end
                object ElPopupButton9: TElPopupButton
                  Left = 14
                  Top = 106
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 72
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 3
                  Color = 15466238
                  ParentColor = False
                  Action = acOm_MoveAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton10: TElPopupButton
                  Left = 14
                  Top = 80
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 70
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 2
                  Color = 15466238
                  ParentColor = False
                  Action = acOm_Move
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton11: TElPopupButton
                  Left = 14
                  Top = 54
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 74
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 1
                  Color = 15466238
                  ParentColor = False
                  Action = acOm_AddAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton12: TElPopupButton
                  Left = 14
                  Top = 28
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 73
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 0
                  Color = 15466238
                  ParentColor = False
                  Action = acOm_Add
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object gridLoaiCong_NghiThaiSan: TdxDBGrid
                  Left = 40
                  Top = 165
                  Width = 285
                  Height = 103
                  Bands = <
                    item
                      Caption = 'Danh s'#225'ch c'#225'c lo'#7841'i c'#244'ng'
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'WHT_NO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  TabOrder = 9
                  DataSource = dsLoaiCong_NghiThaiSan
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                  OnChangeNode = gridCauHinhChangeNode
                  object gridLoaiCong_NghiThaiSanWHT_NO: TdxDBGridColumn
                    Caption = 'M'#227
                    HeaderAlignment = taCenter
                    Width = 61
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NO'
                    Caption_UTF7 = 'M+AOM'
                  end
                  object gridLoaiCong_NghiThaiSanWHT_NAME: TdxDBGridColumn
                    Caption = 'Lo'#7841'i c'#244'ng'
                    HeaderAlignment = taCenter
                    Width = 177
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NAME'
                    Caption_UTF7 = 'Lo+HqE-i c+APQ-ng'
                  end
                end
                object ElPopupButton1: TElPopupButton
                  Left = 14
                  Top = 165
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 73
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 5
                  Color = 15466238
                  ParentColor = False
                  Action = acKHH_Add
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton2: TElPopupButton
                  Left = 14
                  Top = 191
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 74
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 6
                  Color = 15466238
                  ParentColor = False
                  Action = acKHH_AddAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton3: TElPopupButton
                  Left = 14
                  Top = 217
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 70
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 7
                  Color = 15466238
                  ParentColor = False
                  Action = acKHH_Move
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton4: TElPopupButton
                  Left = 14
                  Top = 243
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 72
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 8
                  Color = 15466238
                  ParentColor = False
                  Action = acKHH_MoveAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object gridLoaiCong_NghiKhongLuong: TdxDBGrid
                  Left = 40
                  Top = 302
                  Width = 285
                  Height = 104
                  Bands = <
                    item
                      Caption = 'Danh s'#225'ch c'#225'c lo'#7841'i c'#244'ng'
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'WHT_NO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  TabOrder = 14
                  DataSource = dsLoaiCong_NghiKhongLuong
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                  OnChangeNode = gridCauHinhChangeNode
                  object dxDBGridColumn1: TdxDBGridColumn
                    Caption = 'M'#227
                    HeaderAlignment = taCenter
                    Width = 61
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NO'
                    Caption_UTF7 = 'M+AOM'
                  end
                  object dxDBGridColumn2: TdxDBGridColumn
                    Caption = 'Lo'#7841'i c'#244'ng'
                    HeaderAlignment = taCenter
                    Width = 177
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NAME'
                    Caption_UTF7 = 'Lo+HqE-i c+APQ-ng'
                  end
                end
                object ElPopupButton6: TElPopupButton
                  Left = 14
                  Top = 328
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 74
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 11
                  Color = 15466238
                  ParentColor = False
                  Action = acKhongLuong_AddAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton7: TElPopupButton
                  Left = 14
                  Top = 354
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 70
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 12
                  Color = 15466238
                  ParentColor = False
                  Action = acKhongLuong_Move
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton5: TElPopupButton
                  Left = 14
                  Top = 302
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 73
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 10
                  Color = 15466238
                  ParentColor = False
                  Action = acKhongLuong_Add
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton8: TElPopupButton
                  Left = 14
                  Top = 380
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 72
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 13
                  Color = 15466238
                  ParentColor = False
                  Action = acKhongLuong_MoveAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object dxLayoutControl3Group_Root: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl3Group1: TdxLayoutGroup
                    Caption = 'Danh s'#225'ch lo'#7841'i c'#244'ng ngh'#7881' '#7889'm'
                    LayoutDirection = ldHorizontal
                    object dxLayoutControl3Group2: TdxLayoutGroup
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutControl3Item5: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton12
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item4: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton11
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item3: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton10
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item2: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton9
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl3Item1: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = gridLoaiCong_NghiOm
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl3Group3: TdxLayoutGroup
                    Caption = 'Danh s'#225'ch lo'#7841'i c'#244'ng ngh'#7881' thai s'#7843'n'
                    LayoutDirection = ldHorizontal
                    object dxLayoutControl3Group4: TdxLayoutGroup
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutControl3Item7: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton1
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item8: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton2
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item9: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton3
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item10: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton4
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl3Item6: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = gridLoaiCong_NghiThaiSan
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl3Group5: TdxLayoutGroup
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    Caption = 'Danh s'#225'ch lo'#7841'i c'#244'ng ngh'#7881' kh'#244'ng l'#432#417'ng'
                    LayoutDirection = ldHorizontal
                    object dxLayoutControl3Group6: TdxLayoutGroup
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutControl3Item14: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton5
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item12: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton6
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item13: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton7
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl3Item15: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton8
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl3Item11: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = gridLoaiCong_NghiKhongLuong
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
            object tabCongNghiDSPHSK: TElTabSheet
              PageControl = pageLoaiCong
              ImageIndex = -1
              TabVisible = True
              Caption = 'Lo'#7841'i c'#244'ng ngh'#7881' DSPHSK'
              Visible = False
              object dxLayoutControl4: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 196
                Height = 419
                Align = alClient
                TabOrder = 0
                AutoContentSizes = [acsWidth, acsHeight]
                LookAndFeel = dmMain.StyleWeb
                object grid_Nghi_DSPHSK_SauOm: TdxDBGrid
                  Left = 40
                  Top = 28
                  Width = 285
                  Height = 102
                  Bands = <
                    item
                      Caption = 'Danh s'#225'ch c'#225'c lo'#7841'i c'#244'ng'
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'WHT_NO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  TabOrder = 4
                  DataSource = dsLoaiCong_NDSPHSK_SauOm
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                  OnChangeNode = gridCauHinhChangeNode
                  object dxDBGridColumn3: TdxDBGridColumn
                    Caption = 'M'#227
                    HeaderAlignment = taCenter
                    Width = 58
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NO'
                    Caption_UTF7 = 'M+AOM'
                  end
                  object dxDBGridColumn4: TdxDBGridColumn
                    Caption = 'Lo'#7841'i c'#244'ng'
                    HeaderAlignment = taCenter
                    Width = 180
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NAME'
                    Caption_UTF7 = 'Lo+HqE-i c+APQ-ng'
                  end
                end
                object ElPopupButton13: TElPopupButton
                  Left = 14
                  Top = 28
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 73
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 0
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauOm_Add
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton14: TElPopupButton
                  Left = 14
                  Top = 54
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 74
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 1
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauOm_AddAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton15: TElPopupButton
                  Left = 14
                  Top = 80
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 70
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 2
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauOm_Move
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton16: TElPopupButton
                  Left = 14
                  Top = 106
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 72
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 3
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauOm_MoveAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object grid_Nghi_DSPHSK_SauTS: TdxDBGrid
                  Left = 40
                  Top = 165
                  Width = 285
                  Height = 102
                  Bands = <
                    item
                      Caption = 'Danh s'#225'ch c'#225'c lo'#7841'i c'#244'ng'
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'WHT_NO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  TabOrder = 9
                  DataSource = dsLoaiCong_NDSPHSK_SauTS
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                  OnChangeNode = gridCauHinhChangeNode
                  object dxDBGridColumn5: TdxDBGridColumn
                    Caption = 'M'#227
                    HeaderAlignment = taCenter
                    Width = 58
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NO'
                    Caption_UTF7 = 'M+AOM'
                  end
                  object dxDBGridColumn6: TdxDBGridColumn
                    Caption = 'Lo'#7841'i c'#244'ng'
                    HeaderAlignment = taCenter
                    Width = 180
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NAME'
                    Caption_UTF7 = 'Lo+HqE-i c+APQ-ng'
                  end
                end
                object ElPopupButton17: TElPopupButton
                  Left = 14
                  Top = 165
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 73
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 5
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTS_Add
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton18: TElPopupButton
                  Left = 14
                  Top = 191
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 74
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 6
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTS_AddAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton19: TElPopupButton
                  Left = 14
                  Top = 217
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 70
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 7
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTS_Move
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton20: TElPopupButton
                  Left = 14
                  Top = 243
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 72
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 8
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTS_MoveAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object grid_Nghi_DSPHSK_SauTNLD: TdxDBGrid
                  Left = 40
                  Top = 302
                  Width = 285
                  Height = 104
                  Bands = <
                    item
                      Caption = 'Danh s'#225'ch c'#225'c lo'#7841'i c'#244'ng'
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'WHT_NO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  TabOrder = 14
                  DataSource = dsLoaiCong_NDSPHSK_SauTNLD
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
                  OnChangeNode = gridCauHinhChangeNode
                  object dxDBGridColumn7: TdxDBGridColumn
                    Caption = 'M'#227
                    HeaderAlignment = taCenter
                    Width = 58
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NO'
                    Caption_UTF7 = 'M+AOM'
                  end
                  object dxDBGridColumn8: TdxDBGridColumn
                    Caption = 'Lo'#7841'i c'#244'ng'
                    HeaderAlignment = taCenter
                    Width = 180
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'WHT_NAME'
                    Caption_UTF7 = 'Lo+HqE-i c+APQ-ng'
                  end
                end
                object ElPopupButton21: TElPopupButton
                  Left = 14
                  Top = 304
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 73
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 10
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTNLD_Add
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton22: TElPopupButton
                  Left = 14
                  Top = 330
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 74
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 11
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTNLD_AddAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton23: TElPopupButton
                  Left = 14
                  Top = 356
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 70
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 12
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTNLD_Move
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object ElPopupButton24: TElPopupButton
                  Left = 14
                  Top = 382
                  Width = 26
                  Height = 26
                  Cursor = crDefault
                  ImageIndex = 72
                  UseImageList = True
                  Images = dmMain.imgAction
                  DrawDefaultFrame = False
                  LinkColor = clBlue
                  LinkStyle = [fsUnderline]
                  NumGlyphs = 1
                  UseXPThemes = True
                  TabOrder = 13
                  Color = 15466238
                  ParentColor = False
                  Action = acDSPHSK_SauTNLD_MoveAll
                  DockOrientation = doNoOrient
                  DoubleBuffered = False
                end
                object dxLayoutControl4Group_Root: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl4Group1: TdxLayoutGroup
                    Caption = 'Danh s'#225'ch lo'#7841'i c'#244'ng ngh'#7881' DSPHSK sau '#7889'm'
                    LayoutDirection = ldHorizontal
                    object dxLayoutControl4Group2: TdxLayoutGroup
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutControl4Item2: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton13
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item3: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton14
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item4: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton15
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item5: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton16
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl4Item1: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = grid_Nghi_DSPHSK_SauOm
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl4Group3: TdxLayoutGroup
                    Caption = 'Danh s'#225'ch lo'#7841'i c'#244'ng ngh'#7881' DSPHSK sau thai s'#7843'n'
                    LayoutDirection = ldHorizontal
                    object dxLayoutControl4Group4: TdxLayoutGroup
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutControl4Item7: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton17
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item8: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton18
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item9: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton19
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item10: TdxLayoutItem
                        Caption = 'New Item'
                        ShowCaption = False
                        Control = ElPopupButton20
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl4Item6: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = grid_Nghi_DSPHSK_SauTS
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl4Group5: TdxLayoutGroup
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    Caption = 'Danh s'#225'ch lo'#7841'i c'#244'ng ngh'#7881' DSPHSK sau TNL'#272
                    LayoutDirection = ldHorizontal
                    object dxLayoutControl4Group6: TdxLayoutGroup
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutControl4Item12: TdxLayoutItem
                        ShowCaption = False
                        Control = ElPopupButton21
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item13: TdxLayoutItem
                        ShowCaption = False
                        Control = ElPopupButton22
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item14: TdxLayoutItem
                        ShowCaption = False
                        Control = ElPopupButton23
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl4Item15: TdxLayoutItem
                        ShowCaption = False
                        Control = ElPopupButton24
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl4Item11: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      ShowCaption = False
                      Control = grid_Nghi_DSPHSK_SauTNLD
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              AutoAligns = []
              AlignVert = avClient
              Caption = 'T'#7927' gi'#225' quy '#273#7893'i '#273#243'ng BHXH'
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'New Item'
                ShowCaption = False
                Control = gridTyGia
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Khai b'#225'o c'#225'c lo'#7841'i c'#244'ng t'#237'nh tr'#7907' c'#7845'p BHXH'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'New Item'
                ShowCaption = False
                Control = gridWorkHour
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item18: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                Caption = 'New Item'
                ShowCaption = False
                Control = pageLoaiCong
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem3: TdxLayoutItem [0]
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'New Item'
        ShowCaption = False
        Control = pageCauHinh
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
        Caption = 'C'#7845'u h'#236'nh b'#7843'o hi'#7875'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 176
  end
  object qryCauHinh: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_CAUHINH'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_CAUHINH SET'
      '   KEY_ID = :KEY_ID, /*PK*/'
      '   NGAY_APDUNG = :NGAY_APDUNG,'
      '   XETTHEO_KHUNGLUONG = :XETTHEO_KHUNGLUONG,'
      '   MASO_MUCLUONG = :MASO_MUCLUONG,'
      '   MASO_PHUCAP = :MASO_PHUCAP,'
      '   MASO_PCTN_VUOTKHUNG = :MASO_PCTN_VUOTKHUNG,'
      '   MASO_PCTN_NGHE = :MASO_PCTN_NGHE,'
      '   MASO_PCKV = :MASO_PCKV,'
      '   TILE_NLD_NOP = :TILE_NLD_NOP,'
      '   TILE_DN_NOP = :TILE_DN_NOP,'
      '   TILE_NOP = :TILE_NOP,'
      '   TILE_TRICHQUY_KCB = :TILE_TRICHQUY_KCB,'
      '   MOCNGAY_LD_TANG = :MOCNGAY_LD_TANG,'
      '   MOCNGAY_LD_GIAM = :MOCNGAY_LD_GIAM,'
      '   MOCNGAY_LD_THAYDOILUONG = :MOCNGAY_LD_THAYDOILUONG,'
      '   MOCNGAY_TRATHE = :MOCNGAY_TRATHE,'
      '   THOIHAN_THE_BHYT = :THOIHAN_THE_BHYT,'
      '   SOTHANG_LIENKE = :SOTHANG_LIENKE,'
      '   GIOIHAN_SOBHXH = :GIOIHAN_SOBHXH'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    GeneratorLinks.Strings = (
      'KEY_ID = GEN_HR_BAOHIEM_CAUHINH_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_CAUHINH('
      '   KEY_ID, /*PK*/'
      '   NGAY_APDUNG,'
      '   XETTHEO_KHUNGLUONG,'
      '   MASO_MUCLUONG,'
      '   MASO_PHUCAP,'
      '   MASO_PCTN_VUOTKHUNG,'
      '   MASO_PCTN_NGHE,'
      '   MASO_PCKV,'
      '   TILE_NLD_NOP,'
      '   TILE_DN_NOP,'
      '   TILE_NOP,'
      '   TILE_TRICHQUY_KCB,'
      '   MOCNGAY_LD_TANG,'
      '   MOCNGAY_LD_GIAM,'
      '   MOCNGAY_LD_THAYDOILUONG,'
      '   MOCNGAY_TRATHE,'
      '   THOIHAN_THE_BHYT,'
      '   SOTHANG_LIENKE,'
      '   GIOIHAN_SOBHXH)'
      'VALUES ('
      '   :KEY_ID,'
      '   :NGAY_APDUNG,'
      '   :XETTHEO_KHUNGLUONG,'
      '   :MASO_MUCLUONG,'
      '   :MASO_PHUCAP,'
      '   :MASO_PCTN_VUOTKHUNG,'
      '   :MASO_PCTN_NGHE,'
      '   :MASO_PCKV,'
      '   :TILE_NLD_NOP,'
      '   :TILE_DN_NOP,'
      '   :TILE_NOP,'
      '   :TILE_TRICHQUY_KCB,'
      '   :MOCNGAY_LD_TANG,'
      '   :MOCNGAY_LD_GIAM,'
      '   :MOCNGAY_LD_THAYDOILUONG,'
      '   :MOCNGAY_TRATHE,'
      '   :THOIHAN_THE_BHYT,'
      '   :SOTHANG_LIENKE,'
      '   :GIOIHAN_SOBHXH)')
    KeyLinks.Strings = (
      'KEY_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT KEY_ID'
      '     , NGAY_APDUNG'
      '     , XETTHEO_KHUNGLUONG'
      '     , MASO_MUCLUONG'
      '     , A.param_name TEN_MUCLUONG'
      '     , MASO_PHUCAP'
      '     , B.param_name TEN_PHUCAP'
      '     , MASO_PCTN_VUOTKHUNG'
      '     , C.param_name TEN_PCTN_VUOTKHUNG'
      '     , MASO_PCTN_NGHE'
      '     , D.param_name TEN_PCTN_NGHE'
      '     , MASO_PCKV'
      '     , E.param_name TEN_PCKV'
      '     , TILE_NLD_NOP'
      '     , TILE_DN_NOP'
      '     , TILE_NOP'
      '     , TILE_TRICHQUY_KCB'
      '     , MOCNGAY_LD_TANG'
      '     , MOCNGAY_LD_GIAM'
      '     , MOCNGAY_LD_THAYDOILUONG'
      '     , MOCNGAY_TRATHE'
      '     , THOIHAN_THE_BHYT'
      '     , SOTHANG_LIENKE'
      '     , GIOIHAN_SOBHXH'
      'FROM HR_BAOHIEM_CAUHINH'
      
        'LEFT JOIN hr_formal_param A on HR_BAOHIEM_CAUHINH.maso_mucluong ' +
        '= A.param_no '
      
        'LEFT JOIN hr_formal_param B on HR_BAOHIEM_CAUHINH.maso_phucap = ' +
        'B.param_no'
      
        'LEFT JOIN hr_formal_param C on HR_BAOHIEM_CAUHINH.maso_pctn_vuot' +
        'khung = C.param_no'
      
        'LEFT JOIN hr_formal_param D on HR_BAOHIEM_CAUHINH.maso_pctn_nghe' +
        ' = D.param_no'
      
        'LEFT JOIN hr_formal_param E on HR_BAOHIEM_CAUHINH.maso_pckv = E.' +
        'param_no'
      'ORDER BY NGAY_APDUNG')
    FieldOptions = []
    Left = 8
    Top = 112
    object qryCauHinhNGAY_APDUNG: TDateField
      FieldName = 'NGAY_APDUNG'
      Required = True
    end
    object qryCauHinhXETTHEO_KHUNGLUONG: TSmallintField
      FieldName = 'XETTHEO_KHUNGLUONG'
    end
    object qryCauHinhTEN_MUCLUONG: TWideStringField
      FieldName = 'TEN_MUCLUONG'
      OnChange = qryCauHinhTEN_MUCLUONGChange
      Size = 126
    end
    object qryCauHinhTEN_PHUCAP: TWideStringField
      FieldName = 'TEN_PHUCAP'
      OnChange = qryCauHinhTEN_PHUCAPChange
      Size = 126
    end
    object qryCauHinhTEN_PCTN_VUOTKHUNG: TWideStringField
      FieldName = 'TEN_PCTN_VUOTKHUNG'
      OnChange = qryCauHinhTEN_PCTN_VUOTKHUNGChange
      Size = 126
    end
    object qryCauHinhTEN_PCTN_NGHE: TWideStringField
      FieldName = 'TEN_PCTN_NGHE'
      OnChange = qryCauHinhTEN_PCTN_NGHEChange
      Size = 126
    end
    object qryCauHinhTEN_PCKV: TWideStringField
      FieldName = 'TEN_PCKV'
      OnChange = qryCauHinhTEN_PCKVChange
      Size = 126
    end
    object qryCauHinhMASO_MUCLUONG: TWideStringField
      FieldName = 'MASO_MUCLUONG'
      Size = 30
    end
    object qryCauHinhMASO_PHUCAP: TWideStringField
      FieldName = 'MASO_PHUCAP'
      Size = 30
    end
    object qryCauHinhMASO_PCTN_VUOTKHUNG: TWideStringField
      FieldName = 'MASO_PCTN_VUOTKHUNG'
      Size = 30
    end
    object qryCauHinhMASO_PCTN_NGHE: TWideStringField
      FieldName = 'MASO_PCTN_NGHE'
      Size = 30
    end
    object qryCauHinhMASO_PCKV: TWideStringField
      FieldName = 'MASO_PCKV'
      Size = 30
    end
    object qryCauHinhTILE_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_NLD_NOP'
    end
    object qryCauHinhTILE_DN_NOP: TIBOFloatField
      FieldName = 'TILE_DN_NOP'
    end
    object qryCauHinhTILE_NOP: TIBOFloatField
      FieldName = 'TILE_NOP'
    end
    object qryCauHinhTILE_TRICHQUY_KCB: TIBOFloatField
      FieldName = 'TILE_TRICHQUY_KCB'
    end
    object qryCauHinhMOCNGAY_LD_TANG: TSmallintField
      FieldName = 'MOCNGAY_LD_TANG'
    end
    object qryCauHinhMOCNGAY_LD_GIAM: TSmallintField
      FieldName = 'MOCNGAY_LD_GIAM'
    end
    object qryCauHinhMOCNGAY_LD_THAYDOILUONG: TSmallintField
      FieldName = 'MOCNGAY_LD_THAYDOILUONG'
    end
    object qryCauHinhMOCNGAY_TRATHE: TSmallintField
      FieldName = 'MOCNGAY_TRATHE'
    end
    object qryCauHinhTHOIHAN_THE_BHYT: TSmallintField
      FieldName = 'THOIHAN_THE_BHYT'
    end
    object qryCauHinhSOTHANG_LIENKE: TSmallintField
      FieldName = 'SOTHANG_LIENKE'
    end
    object qryCauHinhGIOIHAN_SOBHXH: TSmallintField
      FieldName = 'GIOIHAN_SOBHXH'
    end
    object qryCauHinhKEY_ID: TIntegerField
      FieldName = 'KEY_ID'
    end
  end
  object dsCauHinh: TDataSource
    DataSet = qryCauHinh
    Left = 8
    Top = 144
  end
  object imgCauHinh: TImageList
    Left = 40
    Top = 176
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000052A6E3FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      F0FF5252E3FFC6C6F5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7F2
      FBFF31A6F7FF29A6F7FF0082D6FF9CCCEFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000808D7FF393C
      E7FF181CDEFF6B69E7FF3131DDFF000000000000000008D329FF21EF94FF29C8
      29FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002991
      DCFF4ABEFFFF9CFFFFFF63CFFFFF42B6FFFF1896E7FF1889D9FFD6EAF8FF0000
      00000000000000000000000000000000000000000000D6D6F8FF2120E7FF1010
      E7FF1014E7FF1014E7FF6361E7FF0000000008D331FF08E321FF18DF6BFF18E3
      73FF18E373FF39CC39FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000108E
      E7FF94FBFFFF8CCFBDFF4AE7FFFF63EFFFFF8CF7FFFF52C7FFFF39AEFFFF088A
      DEFF4AA2E1FFF7FAFDFF0000000000000000000000009494EDFF2120EFFF2124
      EFFF2124EFFF2124EFFF5A59EFFF08B652FF10EB42FF10E739FF10D752FF10DB
      63FF18DF6BFF18E77BFF10D74AFF84DF84FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5D9F3FF42B2
      FFFFA5CBADFFFFFBE7FFFFD3A5FFEFA25AFF63DBE7FF42E3FFFF4AE7FFFF6BE7
      FFFF4ABAFFFF29A2F7FF0082D6FFEFF6FCFF00000000F7F7FDFF292CF7FF9496
      FFFF3134F7FF3134F7FF4241E7FF18EF6BFF18EF5AFF18EB52FF10CF39FF10D3
      4AFF10DB52FF18DF63FF18E373FF10C210FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000881D7FF84EF
      FFFFFFBE84FFFFDBADFFFFDBADFFFFDBADFFFFF3D6FFFFCF9CFFB5B68CFF39DF
      FFFF31DFFFFF31DFFFFF42CFFFFF6BB3E7FF00000000000000004A4AE1FF3130
      EFFF4A49FFFF3130E7FF00757BFF21F384FF18F373FF21F7ADFF21F3ADFF21F3
      A5FF10D342FF10D74AFF10DB5AFF10C210FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299EEFFF73E7
      EFFFFFF3DEFFFFDFB5FFFFDFB5FFFFDBADFFFFDBADFFFFDBADFFFFAA5AFFB5B6
      94FF39DFFFFF31DFFFFF0892DEFF00000000000000000000000000000000CA9A
      82FF9C4D31FFE7AA42FF00CB18FF21F79CFF18EF9CFF18EB94FF18EB8CFF18E7
      8CFF18E78CFF21F3A5FF10D752FF10C210FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084C0EBFF73DFFFFFEFA6
      5AFFFFE3BDFFFFE3BDFFFFDFBDFFFFDFB5FFFFDFB5FFFFD7ADFFFFD394FFFFAE
      5AFF42E3FFFF39DBFFFF9CCCEFFF00000000E4AA73FFCE6500FFE79218FFFFBE
      29FFFFBE29FFFFDF73FF08CB21FF18E78CFF10E37BFF10DF7BFF10DF73FF10DF
      73FF10DB6BFF10DB6BFF08CF39FFA5E8A5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000886DEFF63EFFFFFFFE3
      BDFFFFE7C6FFFFE7C6FFFFE3BDFFFFE3BDFFFFDFBDFFFFA65AFFFFEBBDFFFFC7
      7BFF73D3CEFF0082D6FF0000000000000000CE6500FFF7B221FFF7B221FFFFB6
      29FFFFB629FFFFE37BFFB5C329FF00BE00FF08D34AFF10D763FF08D75AFF08D3
      5AFF08D352FF00CB29FFBDEEBDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052C7FFFFB5BE94FFFFEB
      D6FFFFEBCEFFFFE7CEFFFFE7C6FFFFE7C6FFFFE3C6FFFFE3BDFFFFE3BDFFFFB6
      73FF39CFF7FFDEEEF9FF0000000000000000FAF0E7FFDE8610FFF7AA21FFF7AA
      21FFF7AE21FFFFE784FFFFBA31FFFFBA31FFD6BA29FF08BE00FF00C729FF00CB
      39FF00C318FFE7F8E7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052A6E3FF63EFFFFFFFBE84FFFFEF
      D6FFFFEBD6FFFFEBD6FFFFEBCEFFFFE7CEFFFFE7C6FFFFE7C6FFFFDFBDFF7BD7
      D6FF1085D8FF00000000000000000000000000000000DA8C42FFF79E18FFF7A2
      18FFF7A218FFFFE78CFFFFAA29FFFFAE29FFFFAE29FFCF6908FFF8FCF7FF39CC
      39FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021A2EFFF84DFDEFFFFF3E7FFFFF3
      DEFFFFEFDEFFFFEFDEFFFFEBD6FFFFEBD6FFFFEBCEFFFFE7CEFFEFA252FF29B6
      EFFF000000000000000000000000000000000000000000000000CE6500FFF79A
      10FFF79A10FFFFDF7BFFFF9E21FFFF9E21FFCE6900FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018A2E7FFC6BA8CFFF7A65AFF108A
      F7FF7BB6EFFFF7EBE7FFFFEFDEFFFFEFDEFFFFEFD6FFFFBA7BFF5AEBFFFF52A6
      E3FF000000000000000000000000000000000000000000000000F8EBDEFFDE82
      10FFEF9210FFFFCB6BFFFF9218FFDE7108FFFBF5EFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFF6FCFF6BB3E7FF0886EFFF52BA
      FFFF52C3FFFF6BDBFFFF39B2F7FF0886F7FFFFDBB5FFA5CBADFF109AE7FF0000
      000000000000000000000000000000000000000000000000000000000000D887
      39FFEF8608FFFFAE42FFEF7D08FFEFCDADFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000064B0
      F4FF5AC3FFFF5AC3FFFF63CFFFFF219EF7FF63EFFFFF5AE7FFFF9CCCEFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6900FFFF8E18FFDA8C42FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000073AE
      F1FF73D3FFFFA2CEF8FF0000000000000000D6EAF8FF73B7E8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7E6D6FFCF6908FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F7FFE3FF00000000E0FFC18F00000000
      E01F810300000000E003800000000000C000800000000000C000C00000000000
      C001E00000000000800100000000000080030001000000008003000300000000
      0007800F00000000000FC07F00000000000FC07F00000000001FE0FF00000000
      E01FF1FF00000000E33FF3FF0000000000000000000000000000000000000000
      000000000000}
  end
  object qryChiTiet: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'KEY_ID'
        ParamType = ptInput
        Value = Null
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_CAUHINH_CHITIET'
      'WHERE'
      '   BAOHIEM_KEY_ID = :OLD_BAOHIEM_KEY_ID AND'
      '   MA_KHOANNOP = :OLD_MA_KHOANNOP')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_CAUHINH_CHITIET SET'
      '   BAOHIEM_KEY_ID = :BAOHIEM_KEY_ID, /*PK*/'
      '   MA_KHOANNOP = :MA_KHOANNOP, /*PK*/'
      '   TEN_KHOANNOP = :TEN_KHOANNOP,'
      '   MUCLUONG_TOIDA = :MUCLUONG_TOIDA,'
      '   MUCLUONG_TOITHIEU = :MUCLUONG_TOITHIEU,'
      '   TILE_NLD_NOP = :TILE_NLD_NOP,'
      '   TILE_DN_NOP = :TILE_DN_NOP,'
      '   TILE_NOP = :TILE_NOP'
      'WHERE'
      '   BAOHIEM_KEY_ID = :OLD_BAOHIEM_KEY_ID AND'
      '   MA_KHOANNOP = :OLD_MA_KHOANNOP')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_CAUHINH_CHITIET('
      '   BAOHIEM_KEY_ID, /*PK*/'
      '   MA_KHOANNOP, /*PK*/'
      '   TEN_KHOANNOP,'
      '   MUCLUONG_TOIDA,'
      '   MUCLUONG_TOITHIEU,'
      '   TILE_NLD_NOP,'
      '   TILE_DN_NOP,'
      '   TILE_NOP)'
      'VALUES ('
      '   :BAOHIEM_KEY_ID,'
      '   :MA_KHOANNOP,'
      '   :TEN_KHOANNOP,'
      '   :MUCLUONG_TOIDA,'
      '   :MUCLUONG_TOITHIEU,'
      '   :TILE_NLD_NOP,'
      '   :TILE_DN_NOP,'
      '   :TILE_NOP)')
    KeyLinks.Strings = (
      'BAOHIEM_KEY_ID'
      'MA_KHOANNOP')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryChiTietBeforePost
    DataSource = dsCauHinh
    SQL.Strings = (
      'SELECT BAOHIEM_KEY_ID'
      '     , TEN_KHOANNOP'
      '     , MA_KHOANNOP'
      '     , MUCLUONG_TOIDA'
      '     , MUCLUONG_TOITHIEU'
      '     , TILE_NLD_NOP'
      '     , TILE_DN_NOP'
      '     , TILE_NOP'
      'FROM HR_BAOHIEM_CAUHINH_CHITIET'
      'WHERE BAOHIEM_KEY_ID = :KEY_ID')
    FieldOptions = []
    Left = 40
    Top = 112
    object qryChiTietMA_KHOANNOP: TWideStringField
      FieldName = 'MA_KHOANNOP'
      Required = True
      Size = 30
    end
    object qryChiTietTEN_KHOANNOP: TWideStringField
      FieldName = 'TEN_KHOANNOP'
      Required = True
      Size = 63
    end
    object qryChiTietMUCLUONG_TOIDA: TIBOFloatField
      FieldName = 'MUCLUONG_TOIDA'
      Required = True
    end
    object qryChiTietMUCLUONG_TOITHIEU: TIBOFloatField
      FieldName = 'MUCLUONG_TOITHIEU'
      Required = True
    end
    object qryChiTietTILE_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_NLD_NOP'
      Required = True
      OnChange = qryChiTietTILE_NLD_NOPChange
    end
    object qryChiTietTILE_DN_NOP: TIBOFloatField
      FieldName = 'TILE_DN_NOP'
      Required = True
      OnChange = qryChiTietTILE_DN_NOPChange
    end
    object qryChiTietTILE_NOP: TIBOFloatField
      FieldName = 'TILE_NOP'
    end
    object qryChiTietBAOHIEM_KEY_ID: TIntegerField
      FieldName = 'BAOHIEM_KEY_ID'
    end
  end
  object dsChiTiet: TDataSource
    DataSet = qryChiTiet
    Left = 40
    Top = 144
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 72
    Top = 112
    object acXemDS: TAction
      Caption = 'acXemDS'
      OnExecute = acXemDSExecute
    end
    object acOm_Add: TAction
      Caption = 'acOm_Add'
      ImageIndex = 73
      OnExecute = acOm_AddExecute
      OnUpdate = acOm_AddUpdate
    end
    object acOm_AddAll: TAction
      Caption = 'acOm_AddAll'
      ImageIndex = 74
      OnExecute = acOm_AddAllExecute
      OnUpdate = acOm_AddAllUpdate
    end
    object acKHH_Add: TAction
      Caption = 'acKHH_Add'
      ImageIndex = 73
      OnExecute = acKHH_AddExecute
      OnUpdate = acKHH_AddUpdate
    end
    object acKHH_AddAll: TAction
      Caption = 'acKHH_AddAll'
      ImageIndex = 74
      OnExecute = acKHH_AddAllExecute
      OnUpdate = acKHH_AddAllUpdate
    end
    object acKhongLuong_Add: TAction
      Caption = 'acKhongLuong_Add'
      ImageIndex = 73
      OnExecute = acKhongLuong_AddExecute
      OnUpdate = acKhongLuong_AddUpdate
    end
    object acKhongLuong_AddAll: TAction
      Caption = 'acKhongLuong_AddAll'
      ImageIndex = 74
      OnExecute = acKhongLuong_AddAllExecute
      OnUpdate = acKhongLuong_AddAllUpdate
    end
    object acOm_Move: TAction
      Caption = 'acOm_Move'
      ImageIndex = 70
      OnExecute = acOm_MoveExecute
      OnUpdate = acOm_MoveUpdate
    end
    object acOm_MoveAll: TAction
      Caption = 'acOm_MoveAll'
      ImageIndex = 72
      OnExecute = acOm_MoveAllExecute
      OnUpdate = acOm_MoveAllUpdate
    end
    object acKHH_Move: TAction
      Caption = 'acKHH_Move'
      ImageIndex = 70
      OnExecute = acKHH_MoveExecute
      OnUpdate = acKHH_MoveUpdate
    end
    object acKHH_MoveAll: TAction
      Caption = 'acKHH_MoveAll'
      ImageIndex = 72
      OnExecute = acKHH_MoveAllExecute
      OnUpdate = acKHH_MoveAllUpdate
    end
    object acKhongLuong_Move: TAction
      Caption = 'acKhongLuong_Move'
      ImageIndex = 70
      OnExecute = acKhongLuong_MoveExecute
      OnUpdate = acKhongLuong_MoveUpdate
    end
    object acKhongLuong_MoveAll: TAction
      Caption = 'acKhongLuong_MoveAll'
      ImageIndex = 72
      OnExecute = acKhongLuong_MoveAllExecute
      OnUpdate = acKhongLuong_MoveAllUpdate
    end
    object acDSPHSK_SauOm_Add: TAction
      Caption = 'acDSPHSK_SauOm_Add'
      ImageIndex = 73
      OnExecute = acDSPHSK_SauOm_AddExecute
      OnUpdate = acDSPHSK_SauOm_AddUpdate
    end
    object acDSPHSK_SauOm_AddAll: TAction
      Caption = 'acDSPHSK_SauOm_AddAll'
      ImageIndex = 74
      OnExecute = acDSPHSK_SauOm_AddAllExecute
      OnUpdate = acDSPHSK_SauOm_AddAllUpdate
    end
    object acDSPHSK_SauOm_Move: TAction
      Caption = 'acDSPHSK_SauOm_Move'
      ImageIndex = 70
      OnExecute = acDSPHSK_SauOm_MoveExecute
      OnUpdate = acDSPHSK_SauOm_MoveUpdate
    end
    object acDSPHSK_SauOm_MoveAll: TAction
      Caption = 'acDSPHSK_SauOm_MoveAll'
      ImageIndex = 72
      OnExecute = acDSPHSK_SauOm_MoveAllExecute
      OnUpdate = acDSPHSK_SauOm_MoveAllUpdate
    end
    object acDSPHSK_SauTS_Add: TAction
      Caption = 'acDSPHSK_SauTS_Add'
      ImageIndex = 73
      OnExecute = acDSPHSK_SauTS_AddExecute
      OnUpdate = acDSPHSK_SauTS_AddUpdate
    end
    object acDSPHSK_SauTS_AddAll: TAction
      Caption = 'acDSPHSK_SauTS_AddAll'
      ImageIndex = 74
      OnExecute = acDSPHSK_SauTS_AddAllExecute
      OnUpdate = acDSPHSK_SauTS_AddAllUpdate
    end
    object acDSPHSK_SauTS_Move: TAction
      Caption = 'acDSPHSK_SauTS_Move'
      ImageIndex = 70
      OnExecute = acDSPHSK_SauTS_MoveExecute
      OnUpdate = acDSPHSK_SauTS_MoveUpdate
    end
    object acDSPHSK_SauTS_MoveAll: TAction
      Caption = 'acDSPHSK_SauTS_MoveAll'
      ImageIndex = 72
      OnExecute = acDSPHSK_SauTS_MoveAllExecute
      OnUpdate = acDSPHSK_SauTS_MoveAllUpdate
    end
    object acDSPHSK_SauTNLD_Add: TAction
      Caption = 'acDSPHSK_SauTNLD_Add'
      ImageIndex = 73
      OnExecute = acDSPHSK_SauTNLD_AddExecute
      OnUpdate = acDSPHSK_SauTNLD_AddUpdate
    end
    object acDSPHSK_SauTNLD_AddAll: TAction
      Caption = 'acDSPHSK_SauTNLD_AddAll'
      ImageIndex = 74
      OnExecute = acDSPHSK_SauTNLD_AddAllExecute
      OnUpdate = acDSPHSK_SauTNLD_AddAllUpdate
    end
    object acDSPHSK_SauTNLD_Move: TAction
      Caption = 'acDSPHSK_SauTNLD_Move'
      ImageIndex = 70
      OnExecute = acDSPHSK_SauTNLD_MoveExecute
      OnUpdate = acDSPHSK_SauTNLD_MoveUpdate
    end
    object acDSPHSK_SauTNLD_MoveAll: TAction
      Caption = 'acDSPHSK_SauTNLD_MoveAll'
      ImageIndex = 72
      OnExecute = acDSPHSK_SauTNLD_MoveAllExecute
      OnUpdate = acDSPHSK_SauTNLD_MoveAllUpdate
    end
  end
  object qryTyGia: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TYGIA'
      'WHERE'
      '   NGAY_APDUNG = :OLD_NGAY_APDUNG')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TYGIA SET'
      '   NGAY_APDUNG = :NGAY_APDUNG, /*PK*/'
      '   TY_GIA = :TY_GIA'
      'WHERE'
      '   NGAY_APDUNG = :OLD_NGAY_APDUNG')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TYGIA('
      '   NGAY_APDUNG, /*PK*/'
      '   TY_GIA)'
      'VALUES ('
      '   :NGAY_APDUNG,'
      '   :TY_GIA)')
    KeyLinks.Strings = (
      'NGAY_APDUNG')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT NGAY_APDUNG'
      '     , TY_GIA'
      'FROM HR_BAOHIEM_TYGIA'
      'ORDER BY NGAY_APDUNG')
    FieldOptions = []
    Left = 72
    Top = 144
    object qryTyGiaNGAY_APDUNG: TDateField
      FieldName = 'NGAY_APDUNG'
      Required = True
    end
    object qryTyGiaTY_GIA: TIBOFloatField
      FieldName = 'TY_GIA'
      Required = True
    end
  end
  object dsTyGia: TDataSource
    DataSet = qryTyGia
    Left = 72
    Top = 176
  end
  object qryWorkHourType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_HOUR_TYPE'
      'WHERE HR_WORK_HOUR_TYPE.la_loaicong_om =0'
      'AND HR_WORK_HOUR_TYPE.la_loaicong_thaisan_khh =0'
      'and HR_WORK_HOUR_TYPE.la_loaicong_nghi_khongluong =0'
      'and HR_WORK_HOUR_TYPE.la_ndsphsk_sauom =0'
      'and HR_WORK_HOUR_TYPE.la_ndsphsk_sau_ts =0'
      'and HR_WORK_HOUR_TYPE.la_ndsphsk_sau_tnld =0'
      '')
    FieldOptions = []
    Left = 248
    Top = 152
    object qryWorkHourTypeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryWorkHourTypeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsWorkHourType: TDataSource
    DataSet = qryWorkHourType
    Left = 248
    Top = 184
  end
  object qryLoaiCong_NghiOm: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_loaicong_om = 0'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_loaicong_om =1'
      'WHERE'
      '   WHT_NO = :WHT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLoaiCong_NghiOmBeforeDelete
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_HOUR_TYPE'
      'WHERE HR_WORK_HOUR_TYPE.la_loaicong_om =1')
    FieldOptions = []
    Left = 280
    Top = 152
    object WideStringField1: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsLoaiCong_NghiOm: TDataSource
    DataSet = qryLoaiCong_NghiOm
    Left = 280
    Top = 184
  end
  object qryLoaiCong_NghiThaiSan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_loaicong_thaisan_khh = 0'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_loaicong_thaisan_khh =1'
      'WHERE'
      '   WHT_NO = :WHT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLoaiCong_NghiThaiSanBeforeDelete
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_HOUR_TYPE'
      'WHERE HR_WORK_HOUR_TYPE.la_loaicong_thaisan_khh =1')
    FieldOptions = []
    Left = 312
    Top = 152
    object WideStringField3: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object WideStringField4: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsLoaiCong_NghiThaiSan: TDataSource
    DataSet = qryLoaiCong_NghiThaiSan
    Left = 312
    Top = 184
  end
  object qryLoaiCong_NghiKhongLuong: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_loaicong_nghi_khongluong = 0'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_loaicong_nghi_khongluong = 1'
      'WHERE'
      '   WHT_NO = :WHT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLoaiCong_NghiKhongLuongBeforeDelete
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_HOUR_TYPE'
      'WHERE HR_WORK_HOUR_TYPE.la_loaicong_nghi_khongluong =1')
    FieldOptions = []
    Left = 344
    Top = 152
    object WideStringField5: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object WideStringField6: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsLoaiCong_NghiKhongLuong: TDataSource
    DataSet = qryLoaiCong_NghiKhongLuong
    Left = 344
    Top = 184
  end
  object qryLoaiCong_NDSPHSK_SauOm: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_ndsphsk_sauom = 0'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_ndsphsk_sauom = 1'
      'WHERE'
      '   WHT_NO = :WHT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLoaiCong_NDSPHSK_SauOmBeforeDelete
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_HOUR_TYPE'
      'WHERE HR_WORK_HOUR_TYPE.la_ndsphsk_sauom =1')
    FieldOptions = []
    Left = 376
    Top = 152
    object qryLoaiCong_NDSPHSK_SauOmWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryLoaiCong_NDSPHSK_SauOmWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsLoaiCong_NDSPHSK_SauOm: TDataSource
    DataSet = qryLoaiCong_NDSPHSK_SauOm
    Left = 376
    Top = 184
  end
  object qryLoaiCong_NDSPHSK_SauTS: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_ndsphsk_sau_ts = 0'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_ndsphsk_sau_ts = 1'
      'WHERE'
      '   WHT_NO = :WHT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLoaiCong_NDSPHSK_SauTSBeforeDelete
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_HOUR_TYPE'
      'WHERE HR_WORK_HOUR_TYPE.la_ndsphsk_sau_ts =1')
    FieldOptions = []
    Left = 408
    Top = 152
    object qryLoaiCong_NDSPHSK_SauTSWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryLoaiCong_NDSPHSK_SauTSWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsLoaiCong_NDSPHSK_SauTS: TDataSource
    DataSet = qryLoaiCong_NDSPHSK_SauTS
    Left = 408
    Top = 184
  end
  object qryLoaiCong_NDSPHSK_SauTNLD: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_ndsphsk_sau_tnld = 0'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_HOUR_TYPE SET'
      '   la_ndsphsk_sau_tnld = 1'
      'WHERE'
      '   WHT_NO = :WHT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLoaiCong_NDSPHSK_SauTNLDBeforeDelete
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_HOUR_TYPE'
      'WHERE HR_WORK_HOUR_TYPE.la_ndsphsk_sau_tnld =1')
    FieldOptions = []
    Left = 248
    Top = 216
    object qryLoaiCong_NDSPHSK_SauTNLDWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryLoaiCong_NDSPHSK_SauTNLDWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsLoaiCong_NDSPHSK_SauTNLD: TDataSource
    DataSet = qryLoaiCong_NDSPHSK_SauTNLD
    Left = 248
    Top = 248
  end
end
