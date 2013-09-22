inherited frmWageConstantData: TfrmWageConstantData
  Left = 189
  Top = 183
  Width = 784
  Height = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 478
    Width = 776
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 776
    Height = 478
    inherited frameToolbar1: TframeToolbar
      Top = 443
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 922
        end
        inherited btnHelp: TElPopupButton
          Left = 792
        end
        inherited btnChoose: TElPopupButton
          Left = 862
        end
        inherited btnLast: TElPopupButton
          Left = 380
          Width = 1
        end
        inherited btnPrevious: TElPopupButton
          Width = 1
        end
        inherited btnNext: TElPopupButton
          Left = 379
          Width = 1
        end
        inherited btnDesign: TElPopupButton
          Left = 527
        end
        inherited btnPreview: TElPopupButton
          Left = 457
        end
        inherited btnPrint: TElPopupButton
          Left = 387
        end
        inherited btnSendMail: TElPopupButton
          Left = 386
          Width = 1
        end
        inherited btnGenerate: TElPopupButton
          Left = 707
          ImageIndex = 58
          UseImageList = True
          Images = dmMain.imgAction
          Action = acPhatsinh
        end
        inherited btnRelation: TElPopupButton
          Left = 627
          Width = 80
          Hint = 'Sao ch'#233'p d'#7919' li'#7879'u'
          ImageIndex = 38
          UseImageList = True
          Images = dmMain.imgAction
          ShowText = True
          Caption = 'Sao ch'#233'p'
          Action = acSaochepDulieu
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 602
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
              inherited dxLayoutControl1Item9: TdxLayoutItem
                Visible = True
              end
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
            inherited dxLayoutControl1Item14: TdxLayoutItem
              Visible = False
            end
          end
        end
      end
    end
    object pageMain: TElPageControl [1]
      Left = 10
      Top = 10
      Width = 709
      Height = 353
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
      Multiline = False
      OnChanging = pageMainChanging
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
      ActivePage = tabWageConst
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 4
      object tabWageConst: TElTabSheet
        PageControl = pageMain
        ImageIndex = 0
        TabVisible = True
        Caption = 'Nh'#7853't k'#253' thay '#273#7893'i h'#7857'ng s'#7889' l'#432#417'ng'
        object gridChangeLog: TdxDBGrid
          Left = 0
          Top = 0
          Width = 265
          Height = 329
          Bands = <
            item
              Caption = #272#7907't thay '#273#7893'i'
              Width = 139
            end
            item
              Caption = #193'p d'#7909'ng t'#7915' k'#7923
              Width = 124
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'CHANGE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alLeft
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsConstChange
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          OnChangeNode = gridChangeLogChangeNode
          object gridChangeLogCHANGE_NO: TdxDBGridColumn
            Caption = 'M'#227' s'#7889' '
            HeaderAlignment = taCenter
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CHANGE_NO'
            Caption_UTF7 = 'M+AOM s+HtE '
          end
          object gridChangeLogCHANGE_NAME: TdxDBGridColumn
            Caption = #272#7907't thay '#273#7893'i '
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CHANGE_NAME'
            Caption_UTF7 = '+ARAe4w-t thay +AREe1Q-i '
          end
          object gridChangeLogCHANGE_MONTH: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'th'#225'ng '
            HeaderAlignment = taCenter
            Width = 44
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHANGE_MONTH'
            MinValue = 1.000000000000000000
            MaxValue = 12.000000000000000000
            Caption_UTF7 = 'th+AOE-ng '
          end
          object gridChangeLogCHANGE_YEAR: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'n'#259'm '
            HeaderAlignment = taCenter
            Width = 46
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHANGE_YEAR'
            MinValue = 1990.000000000000000000
            MaxValue = 3000.000000000000000000
            Caption_UTF7 = 'n+AQM-m '
          end
          object gridChangeLogCHANGE_PERIOD: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'k'#7923' '
            HeaderAlignment = taCenter
            Width = 34
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHANGE_PERIOD'
            MinValue = 1.000000000000000000
            MaxValue = 9.000000000000000000
            Caption_UTF7 = 'k+HvM '
          end
        end
        object ElSplitter1: TElSplitter
          Left = 265
          Top = 0
          Width = 5
          Height = 329
          Cursor = crHSplit
          SnapTopLeft = True
          SnapBottomRight = True
          ControlTopLeft = gridChangeLog
          ControlBottomRight = pageRight
          AutoHide = False
          Align = alLeft
          BevelOuter = bvLowered
          UseXPThemes = False
        end
        object pageRight: TElPageControl
          Left = 270
          Top = 0
          Width = 439
          Height = 329
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = True
          Multiline = False
          OnChanging = pageRightChanging
          RaggedRight = False
          ScrollOpposite = False
          ShowBorder = False
          Style = etsAngledTabs
          TabIndex = 1
          TabPosition = etpTop
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ActivePage = tabNhanvien
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
          TabOrder = 2
          object tabApdungChung: TElTabSheet
            PageControl = pageRight
            ImageIndex = -1
            TabVisible = True
            Caption = #193'p d'#7909'ng chung'
            Visible = False
            object gridWageConst: TdxDBGrid
              Left = 0
              Top = 0
              Width = 439
              Height = 308
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'CONST_NO'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              DataSource = dsWageConst
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              object gridWageConstCONST_NO: TdxDBGridColumn
                Caption = 'K'#253' hi'#7879'u h'#7857'ng s'#7889' '
                Color = clInfoBk
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 107
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CONST_NO'
                Caption_UTF7 = 'K+AP0 hi+Hsc-u h+HrE-ng s+HtE '
              end
              object gridWageConstELEMENT_NAME: TdxDBGridPopupColumn
                Caption = 'T'#234'n h'#7857'ng s'#7889' chung '
                HeaderAlignment = taCenter
                Width = 241
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ELEMENT_NAME'
                OnCloseUp = gridWageConstELEMENT_NAMECloseUp
                OnInitPopup = gridWageConstELEMENT_NAMEInitPopup
                Caption_UTF7 = 'T+AOo-n h+HrE-ng s+HtE chung '
              end
              object gridWageConstCONST_VALUE: TdxDBGridCalcColumn
                Caption = 'Gi'#225' tr'#7883' '#225'p d'#7909'ng '
                HeaderAlignment = taCenter
                Width = 86
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CONST_VALUE'
                Caption_UTF7 = 'Gi+AOE tr+Hss +AOE-p d+HuU-ng '
              end
            end
          end
          object tabNhanvien: TElTabSheet
            PageControl = pageRight
            ImageIndex = -1
            TabVisible = True
            Caption = 'Theo nh'#226'n vi'#234'n'
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 439
              Height = 308
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object dxSelectDept: TdxPopupEdit
                Left = 133
                Top = 11
                Width = 180
                Style.BorderColor = clWindowFrame
                Style.BorderStyle = xbs3D
                Style.ButtonStyle = bts3D
                TabOrder = 0
                StyleController = dmMain.StyleController
                OnChange = dxSelectDeptChange
                OnCloseUp = dxSelectDeptCloseUp
                OnInitPopup = dxSelectDeptInitPopup
              end
              object ElPopupButton1: TElPopupButton
                Left = 313
                Top = 10
                Width = 85
                Height = 25
                Cursor = crDefault
                ImageIndex = 10
                UseImageList = True
                Images = dmMain.imgAction
                DrawDefaultFrame = False
                LinkColor = clBlue
                LinkStyle = [fsUnderline]
                NumGlyphs = 1
                UseXPThemes = True
                Caption = '&Xem '
                TabOrder = 1
                Color = clBtnFace
                ParentColor = False
                Action = acXemHangsoNV
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object gridPersonalConst: TdxDBGrid
                Left = 10
                Top = 64
                Width = 250
                Height = 129
                Bands = <
                  item
                    Fixed = bfLeft
                  end
                  item
                  end>
                DefaultLayout = False
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'EMPLOYEE_NO'
                SummaryGroups = <>
                SummarySeparator = ', '
                TabOrder = 5
                DataSource = dsPersonalConst
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                object gridPersonalConstEMPLOYEE_NO: TdxDBGridColumn
                  Caption = 'M'#227' nh'#226'n vi'#234'n'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'EMPLOYEE_NO'
                  Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
                end
                object gridPersonalConstFULL_NAME: TdxDBGridColumn
                  Caption = 'H'#7885' v'#224' t'#234'n'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 112
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FULL_NAME'
                  Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
                end
                object gridPersonalConstTITLE_NAME: TdxDBGridColumn
                  Caption = 'Ch'#7913'c danh'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 116
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NAME'
                  Caption_UTF7 = 'Ch+Huk-c danh'
                end
                object gridPersonalConstDEPT_NAME: TdxDBGridColumn
                  Caption = #272#417'n v'#7883' - ph'#242'ng ban'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Visible = False
                  Width = 110
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEPT_NAME'
                  Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
                end
              end
              object ElPopupButton2: TElPopupButton
                Left = 401
                Top = 10
                Width = 75
                Height = 25
                Cursor = crDefault
                ImageIndex = 37
                UseImageList = True
                Images = dmMain.imgAction
                DrawDefaultFrame = False
                LinkColor = clBlue
                LinkStyle = [fsUnderline]
                NumGlyphs = 1
                UseXPThemes = True
                Caption = 'C'#7853'p &nh'#7853't'
                TabOrder = 2
                Color = clBtnFace
                ParentColor = False
                Action = acCapnhatHangsoNV
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object imOption: TdxImageEdit
                Left = 133
                Top = 35
                Width = 180
                Style.BorderColor = clWindowFrame
                Style.BorderStyle = xbs3D
                Style.ButtonStyle = bts3D
                TabOrder = 3
                StyleController = dmMain.StyleController
                DropDownRows = 33554439
                PopupBorder = pbFrame3D
              end
              object dxViewChild: TdxCheckEdit
                Left = 313
                Top = 35
                Width = 85
                Color = clBtnFace
                ParentColor = False
                Style.BorderColor = clWindowFrame
                Style.BorderStyle = xbs3D
                Style.ButtonStyle = bts3D
                TabOrder = 4
                Caption = 'Hi'#7875'n th'#7883' con'
                StyleController = dmMain.StyleController
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group1: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  UseIndent = False
                  object dxLayoutControl1Group2: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    UseIndent = False
                    object dxLayoutControl1Item1: TdxLayoutItem
                      AutoAligns = []
                      AlignVert = avCenter
                      Caption = 'Ch'#7885'n '#273#417'n v'#7883' - ph'#242'ng ban'
                      Control = dxSelectDept
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item2: TdxLayoutItem
                      Caption = 'ElPopupButton1'
                      ShowCaption = False
                      Control = ElPopupButton1
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item4: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      Caption = 'ElPopupButton2'
                      ShowCaption = False
                      Control = ElPopupButton2
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl1Group3: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    UseIndent = False
                    object dxLayoutControl1Item5: TdxLayoutItem
                      AutoAligns = []
                      Caption = 'T'#249'y ch'#7885'n lo'#7841'i nh'#226'n vi'#234'n'
                      Control = imOption
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item6: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avBottom
                      ShowCaption = False
                      Control = dxViewChild
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'dxDBGrid1'
                  ShowCaption = False
                  Control = gridPersonalConst
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object tabDonvi: TElTabSheet
            PageControl = pageRight
            ImageIndex = -1
            TabVisible = True
            Caption = 'Theo '#273#417'n v'#7883
            Visible = False
            object dxLayoutControl2: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 439
              Height = 308
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object ElPopupButton4: TElPopupButton
                Left = 649
                Top = 10
                Width = 75
                Height = 25
                Cursor = crDefault
                ImageIndex = 37
                UseImageList = True
                Images = dmMain.imgAction
                DrawDefaultFrame = False
                LinkColor = clBlue
                LinkStyle = [fsUnderline]
                NumGlyphs = 1
                UseXPThemes = True
                Caption = 'C'#7853'p &nh'#7853't'
                TabOrder = 0
                Color = clBtnFace
                ParentColor = False
                Action = acCapnhatHangsoPB
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object treeDeptConst: TdxDBTreeList
                Left = 10
                Top = 41
                Width = 250
                Height = 129
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'DEPT_NO'
                ParentField = 'P_DEPT_NO'
                TabOrder = 1
                DataSource = dsDeptConst
                Images = dmMain.imglDeptTree
                LookAndFeel = lfFlat
                ShowGrid = True
                TreeLineColor = clGrayText
                object treeDeptConstDEPT_NO: TdxDBTreeListColumn
                  Caption = 'M'#227' '#273#417'n v'#7883' '
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Visible = False
                  Width = 144
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEPT_NO'
                  Caption_UTF7 = 'M+AOM +AREBoQ-n v+Hss '
                end
                object treeDeptConstDEPT_NAME: TdxDBTreeListColumn
                  Caption = #272#417'n v'#7883' - ph'#242'ng ban'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 217
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEPT_NAME'
                  Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
                end
              end
              object dxLayoutGroup1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'ElPopupButton2'
                  ShowCaption = False
                  Control = ElPopupButton4
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item1: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'dxDBTreeList1'
                  ShowCaption = False
                  Control = treeDeptConst
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object tabChucdanh: TElTabSheet
            PageControl = pageRight
            ImageIndex = -1
            TabVisible = True
            Caption = 'Theo ch'#7913'c danh'
            Visible = False
            object dxLayoutControl3: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 439
              Height = 308
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object gridTitleConst: TdxDBGrid
                Left = 10
                Top = 41
                Width = 250
                Height = 129
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'TITLE_NO'
                SummaryGroups = <>
                SummarySeparator = ', '
                TabOrder = 1
                DataSource = dsTitleConst
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                object gridTitleConstTITLE_NO: TdxDBGridColumn
                  Caption = 'M'#227' ch'#7913'c danh'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NO'
                  Caption_UTF7 = 'M+AOM ch+Huk-c danh'
                end
                object gridTitleConstTITLE_NAME: TdxDBGridColumn
                  Caption = 'Ch'#7913'c danh '
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 144
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NAME'
                  Caption_UTF7 = 'Ch+Huk-c danh '
                end
              end
              object ElPopupButton6: TElPopupButton
                Left = 649
                Top = 10
                Width = 75
                Height = 25
                Cursor = crDefault
                ImageIndex = 37
                UseImageList = True
                Images = dmMain.imgAction
                DrawDefaultFrame = False
                LinkColor = clBlue
                LinkStyle = [fsUnderline]
                NumGlyphs = 1
                UseXPThemes = True
                Caption = 'C'#7853'p &nh'#7853't'
                TabOrder = 0
                Color = clBtnFace
                ParentColor = False
                Action = acCapnhatHangsoCD
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object dxLayoutGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'ElPopupButton2'
                  ShowCaption = False
                  Control = ElPopupButton6
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem8: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'dxDBGrid1'
                  ShowCaption = False
                  Control = gridTitleConst
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object tabVitri: TElTabSheet
            PageControl = pageRight
            ImageIndex = -1
            TabVisible = True
            Caption = 'Theo v'#7883' tr'#237' c'#244'ng t'#225'c'
            Visible = False
            object dxLayoutControl4: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 439
              Height = 308
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object ElPopupButton8: TElPopupButton
                Left = 401
                Top = 10
                Width = 75
                Height = 25
                Cursor = crDefault
                ImageIndex = 37
                UseImageList = True
                Images = dmMain.imgAction
                DrawDefaultFrame = False
                LinkColor = clBlue
                LinkStyle = [fsUnderline]
                NumGlyphs = 1
                UseXPThemes = True
                Caption = 'C'#7853'p &nh'#7853't'
                TabOrder = 0
                Color = clBtnFace
                ParentColor = False
                Action = acCapnhatHangsoVT
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object treePositionConst: TdxDBTreeList
                Left = 10
                Top = 41
                Width = 250
                Height = 129
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'POSITION_NO'
                ParentField = 'P_POSITION_NO'
                TabOrder = 1
                DataSource = dsPositionConst
                Images = dmMain.imglDeptTree
                LookAndFeel = lfFlat
                ShowGrid = True
                TreeLineColor = clGrayText
                object treePositionConstPOSITION_NAME: TdxDBTreeListColumn
                  Caption = 'V'#7883' tr'#237' c'#244'ng t'#225'c'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 228
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'POSITION_NAME'
                  Caption_UTF7 = 'V+Hss tr+AO0 c+APQ-ng t+AOE-c'
                end
              end
              object dxLayoutGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'ElPopupButton2'
                  ShowCaption = False
                  Control = ElPopupButton8
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem9: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'dxDBTreeList1'
                  ShowCaption = False
                  Control = treePositionConst
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
      object tabSummaryReport: TElTabSheet
        PageControl = pageMain
        ImageIndex = 1
        TabVisible = True
        Caption = 'D'#7919' li'#7879'u t'#7893'ng h'#7907'p'
        Visible = False
        object dxLayoutControl5: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 709
          Height = 329
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          object imEmpOption: TdxImageEdit
            Left = 121
            Top = 53
            Width = 164
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 7
            StyleController = dmMain.StyleController
            DropDownRows = 33554439
            PopupBorder = pbFrame3D
          end
          object ElPopupButton9: TElPopupButton
            Left = 631
            Top = 28
            Width = 25
            Height = 25
            Cursor = crDefault
            Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng k'#7871' tr'#432#7899'c'
            ImageIndex = 0
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            TabOrder = 4
            Color = clBtnFace
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Action = acBack
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton10: TElPopupButton
            Left = 656
            Top = 28
            Width = 80
            Height = 25
            Cursor = crDefault
            Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
            ImageIndex = 10
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '&Xem'
            TabOrder = 5
            Color = clBtnFace
            ParentColor = False
            Action = acViewReport
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton11: TElPopupButton
            Left = 736
            Top = 28
            Width = 25
            Height = 25
            Cursor = crDefault
            Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng ti'#7871'p theo'
            ImageIndex = 3
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            TabOrder = 6
            Color = clBtnFace
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Action = acNext
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxInMonth: TdxImageEdit
            Left = 367
            Top = 29
            Width = 85
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 1
            StyleController = dmMain.StyleController
            DropDownRows = 33554439
            PopupBorder = pbFrame3D
          end
          object dxInYear: TdxSpinEdit
            Left = 483
            Top = 29
            Width = 60
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 2
            Alignment = taCenter
            StyleController = dmMain.StyleController
            MaxValue = 3000.000000000000000000
            MinValue = 1990.000000000000000000
            Value = 1990.000000000000000000
            StoredValues = 49
          end
          object dxInPeriod: TdxSpinEdit
            Left = 565
            Top = 29
            Width = 60
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 3
            Alignment = taCenter
            StyleController = dmMain.StyleController
            MaxValue = 9.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            StoredValues = 49
          end
          object chkHangChung: TdxCheckEdit
            Left = 22
            Top = 112
            Width = 100
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 9
            Caption = 'H'#7857'ng chung'
            StyleController = dmMain.StyleController
            OnChange = acRefreshReportGridExecute
            State = cbsChecked
          end
          object chkChucvu: TdxCheckEdit
            Left = 448
            Top = 112
            Width = 100
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 13
            Caption = 'Theo ch'#7913'c v'#7909
            StyleController = dmMain.StyleController
            OnChange = acRefreshReportGridExecute
            State = cbsChecked
          end
          object chkChucdanh: TdxCheckEdit
            Left = 340
            Top = 112
            Width = 102
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 12
            Caption = 'Theo ch'#7913'c danh'
            StyleController = dmMain.StyleController
            OnChange = acRefreshReportGridExecute
            State = cbsChecked
          end
          object chkDonvi: TdxCheckEdit
            Left = 234
            Top = 112
            Width = 100
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 11
            Caption = 'Theo '#273#417'n v'#7883
            StyleController = dmMain.StyleController
            OnChange = acRefreshReportGridExecute
            State = cbsChecked
          end
          object chkNhanvien: TdxCheckEdit
            Left = 128
            Top = 112
            Width = 100
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 10
            Caption = 'Theo c'#225' nh'#226'n'
            StyleController = dmMain.StyleController
            OnChange = acRefreshReportGridExecute
            State = cbsChecked
          end
          object chkMoreOption: TdxCheckEdit
            Left = 367
            Top = 53
            Width = 23
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 8
            Alignment = taCenter
            StyleController = dmMain.StyleController
            OnChange = chkMoreOptionChange
            StoredValues = 1
          end
          object gridReport: TdxDBGrid
            Left = 10
            Top = 153
            Width = 250
            Height = 129
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 14
            DataSource = dsReport
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OnCustomDrawCell = gridReportCustomDrawCell
            object gridReportEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 77
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridReportFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' v'#224' t'#234'n'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 124
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object gridReportDEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883' - ph'#242'ng ban'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 101
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
              Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
            end
            object gridReportTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c danh'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 101
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c danh'
            end
          end
          object dxSelectFromDept: TdxPopupEdit
            Left = 121
            Top = 28
            Width = 164
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxSelectFromDeptChange
            OnCloseUp = dxSelectFromDeptCloseUp
            OnInitPopup = dxSelectFromDeptInitPopup
          end
          object dxLayoutControl5Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl5Group2: TdxLayoutGroup
              Caption = 'T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
              UseIndent = False
              object dxLayoutControl5Group5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl5Item16: TdxLayoutItem
                  Caption = #272#417'n v'#7883' - ph'#242'ng ban'
                  Control = dxSelectFromDept
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl5Item6: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'Theo th'#225'ng'
                  Control = dxInMonth
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl5Item7: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'n'#259'm'
                  Control = dxInYear
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl5Item8: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'k'#7923
                  Control = dxInPeriod
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl5Group3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  UseIndent = False
                  object dxLayoutControl5Item3: TdxLayoutItem
                    ShowCaption = False
                    Control = ElPopupButton9
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl5Item4: TdxLayoutItem
                    ShowCaption = False
                    Control = ElPopupButton10
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl5Item5: TdxLayoutItem
                    ShowCaption = False
                    Control = ElPopupButton11
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl5Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl5Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ch'#7885'n lo'#7841'i nh'#226'n vi'#234'n'
                  Control = imEmpOption
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl5Item14: TdxLayoutItem
                  Caption = 'Th'#234'm t'#249'y ch'#7885'n'
                  Control = chkMoreOption
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object groupMoreOption: TdxLayoutGroup
              Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883' d'#7919' li'#7879'u'
              Visible = False
              LayoutDirection = ldHorizontal
              object dxLayoutControl5Item9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxCheckEdit1'
                ShowCaption = False
                Control = chkHangChung
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl5Item13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxCheckEdit5'
                ShowCaption = False
                Control = chkNhanvien
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl5Item12: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxCheckEdit4'
                ShowCaption = False
                Control = chkDonvi
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl5Item11: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxCheckEdit3'
                ShowCaption = False
                Control = chkChucdanh
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl5Item10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxCheckEdit2'
                ShowCaption = False
                Control = chkChucvu
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl5Item15: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridReport
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
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
        Caption = 'D'#7919' li'#7879'u h'#7857'ng s'#7889' t'#237'nh l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 672
    Top = 184
  end
  object ImageList1: TImageList
    Left = 704
    Top = 184
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000006A6967003B050700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001373B0006B1B28003B0507000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000343434000404
      04000404040004040400343434000000000000000000000000007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002EB1DB001373B0006B1B28003B05
      0700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000098909000F4F4E400ECDC
      D400E0CCC000D4AC9C00C08868006C4028004C4C5000000000007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002EB1DB001373B0006B1B
      28003B05070000000000A6A8A80083858500BEC0C00000000000000000000000
      000000000000000000000000000000000000D4C8C400FFFFFF00F8F4F400F4F4
      E400ECD4C400D8B8A000C4947800B0704400C8D0D000B0E0F8007CC4F40038A8
      F0001498F0001498F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002EB1DB001373
      B0003B0507009E8B6200F5E2B900FDF1D500A999780010100F00000000000000
      000000000000000000000000000000000000ECE4E400F8F4F400F8F4F400ECE4
      E400ECD4C400D8B8A000C4947800B8B8B800FFFFFF00B0E0F8004C4C50003434
      34001498F0001498F0000C70B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6BB
      D500CEB87900EAD5A900F1E4CB00FFFEFE00FFFEFE00F1E4CB003B382A000000
      0000CFD2D200D4C7C70000000000000000000000000010080000744C34008C78
      6800DCC4B400D0A89000C0886800000000000000000000000000000000000000
      000068A0C8001498F0001498F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5C1DA00809FE600585A
      6000DBBE840098B06600A5BD7E00ABC69000A9CB9B00A9CB9B002C261900D6BB
      BB00E47D7D00E47D7D00E5787800000000000000000010080000E8AC2C00ECC4
      7800846C5C0080503400906040003434340000000000000000000000000030A0
      E0001498F0001498F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5C1DA0086A2E4007777
      7700DABC7E00A1B169009EB77500A3C18800A4C48C00A3C1880073674B00E18B
      8B00E47D7D00DBA9A900E37F7F00DE999900000000006C402800E8A00C00E8A4
      1C00E8A41C00E8AC2C00A89070006C40280000000000B0E0F8007CC4F40038A8
      F0000878C8005040380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5C1DA0083A1E5005E64
      7300DABC7E00CEB879009BB26A00AFBF8200EBDCBD00EBDCBD003B382A00E18B
      8B00DCA3A30000000000E47A7A00E37F7F000000000090705C00E8AC2C00E8B4
      3C00E4B44C00E4B44C00E4B44C0000000000FFFFFF00B0E0F80068A0C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5C1DA0083A1E500BFC4
      CB00F9EDD400DABC7E0095A8570099AD5E00C6BD8100ECD19700979999000000
      00000000000000000000E47A7A00E37F7F000000000098786800ECC05C00F0C4
      6C00F0C46C00F0CC8400F0C46C0000000000FFFFFF00B0E0F800000000000000
      00001498F0001498F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5C1DA0083A1E500C6CD
      D60097999900E1DACC00ECD19700A9AE64008B9657008E998D00000000000000
      0000D2CDCD00E0909000E37F7F00DE9999006C40280098786800F0C46C00F0D4
      9400F0DCA400F0DCA400F0DCA400D0B87800FFFFFF00B0E0F8007CC4F40038A8
      F0001498F0001498F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5C1DA00B8C4DA0083A1E500C6CD
      D6000000000000000000B4B7B700ACBDAA0095B68C0095B68C00000000000000
      0000D2D0D000E47D7D00E28484000000000010080000E0B87800F0D49400F0DC
      A400F8E0C000F8E8C400F8E0C000F8E0B400B89870007C8080007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083A1E50092AAE20083A1E500C6CD
      D6000000000000000000CBD1CD000000000095B68C008CB28200000000000000
      000000000000DBA9A900E47D7D00D4C7C7006C402800E0B87800F0DCA400F8E8
      C400F4F4E400F4F4E400F4F4E400F8ECD400CC9C84007C8080007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083A1E50083A1E50083A1E500C6CD
      D600000000008CB282008CB28200000000009CBA94008CB2820000000000E090
      9000DBA9A90000000000E47D7D00DBA9A900ACA4A000B87C5C00D0A88000F8E0
      C000F8F4F400F8F4F400F8F4F400F4F4E400C494780000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000809FE60083A1E500C6CD
      D60000000000A2BD9C0090B4860095B68C0090B486008CB2820000000000E47A
      7A00E47D7D00E0909000E37F7F00D6BBBB001008000084644C00F4F4E400B8B0
      A80084644C00A45C3400B0704400CC9C8400B87C5C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEC8D80083A1E500C6CD
      D60000000000CFD2D2008CB2820090B486008CB28200C1CCC10000000000D7B7
      B700E47D7D00E37F7F00E47D7D00000000000000000000000000000000000000
      00006C402800100800006C402800B8A898008C7C740000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF003FFFFFFF000000001FFFC18700000000
      0FFF800700000000847F000300000000C03F000100000000E013003100000000
      800180C10000000080008003000000008004801F00000000801C800100000000
      80300003000000000C310007000000000D380007000000000924000700000000
      8820007F000000008821F07F0000000000000000000000000000000000000000
      000000000000}
  end
  object qryConstChange: TIBOQuery
    Params = <>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_CONST_CHANGE'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_CONST_CHANGE SET'
      '   CHANGE_NO = :CHANGE_NO, /*PK*/'
      '   CHANGE_NAME = :CHANGE_NAME,'
      '   CHANGE_MONTH = :CHANGE_MONTH,'
      '   CHANGE_YEAR = :CHANGE_YEAR,'
      '   CHANGE_PERIOD = :CHANGE_PERIOD'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_CONST_CHANGE('
      '   CHANGE_NO, /*PK*/'
      '   CHANGE_NAME,'
      '   CHANGE_MONTH,'
      '   CHANGE_YEAR,'
      '   CHANGE_PERIOD)'
      'VALUES ('
      '   :CHANGE_NO,'
      '   :CHANGE_NAME,'
      '   :CHANGE_MONTH,'
      '   :CHANGE_YEAR,'
      '   :CHANGE_PERIOD)')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryConstChangeBeforePost
    AfterPost = qryConstChangeAfterPost
    SQL.Strings = (
      'SELECT CHANGE_NO'
      '     , CHANGE_NAME'
      '     , CHANGE_MONTH'
      '     , CHANGE_YEAR'
      '     , CHANGE_PERIOD'
      'FROM HR_WAGE_CONST_CHANGE')
    FieldOptions = []
    Left = 64
    Top = 248
    object qryConstChangeCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
    object qryConstChangeCHANGE_NAME: TWideStringField
      FieldName = 'CHANGE_NAME'
      Required = True
      Size = 126
    end
    object qryConstChangeCHANGE_MONTH: TIntegerField
      FieldName = 'CHANGE_MONTH'
      Required = True
    end
    object qryConstChangeCHANGE_YEAR: TIntegerField
      FieldName = 'CHANGE_YEAR'
      Required = True
    end
    object qryConstChangeCHANGE_PERIOD: TSmallintField
      FieldName = 'CHANGE_PERIOD'
      Required = True
    end
  end
  object dsConstChange: TDataSource
    DataSet = qryConstChange
    Left = 63
    Top = 281
  end
  object qryWageConst: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_CONST'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO AND'
      '   CONST_NO = :OLD_CONST_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_CONST SET'
      '   CHANGE_NO = :CHANGE_NO, /*PK*/'
      '   CONST_NO = :CONST_NO, /*PK*/'
      '   CONST_VALUE = :CONST_VALUE'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO AND'
      '   CONST_NO = :OLD_CONST_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_CONST('
      '   CHANGE_NO, /*PK*/'
      '   CONST_NO, /*PK*/'
      '   CONST_VALUE)'
      'VALUES ('
      '   :CHANGE_NO,'
      '   :CONST_NO,'
      '   :CONST_VALUE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsConstChange
    SQL.Strings = (
      'SELECT CHANGE_NO'
      '     , CONST_NO'
      '     , CONST_VALUE'
      '     , ELEMENT_NAME'
      'FROM HR_WAGE_CONST'
      'JOIN HR_WAGE_ELEMENT on CONST_NO=ELEMENT_NO'
      'where ELEMENT_TYPE='#39'HANG_CHUNG'#39' and'
      '     CHANGE_NO=:CHANGE_NO'
      'order by ELEMENT_INDEX')
    FieldOptions = []
    Left = 96
    Top = 248
    object qryWageConstCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
    object qryWageConstCONST_NO: TWideStringField
      FieldName = 'CONST_NO'
      Required = True
      Size = 63
    end
    object qryWageConstCONST_VALUE: TIBOFloatField
      FieldName = 'CONST_VALUE'
    end
    object qryWageConstELEMENT_NAME: TWideStringField
      FieldName = 'ELEMENT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsWageConst: TDataSource
    DataSet = qryWageConst
    Left = 95
    Top = 281
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 331
    Top = 192
    object acPhatsinh: TAction
      Caption = 'acPhatsinh'
      ImageIndex = 58
      OnExecute = acPhatsinhExecute
      OnUpdate = acPhatsinhUpdate
    end
    object acXemHangsoNV: TAction
      Caption = 'acXemHangsoNV'
      ImageIndex = 10
      OnExecute = acXemHangsoNVExecute
      OnUpdate = acXemHangsoNVUpdate
    end
    object acCapnhatHangsoNV: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatHangsoNVExecute
      OnUpdate = acCapnhatHangsoNVUpdate
    end
    object acXemHangsoPB: TAction
      Caption = 'acXemHangsoNV'
      ImageIndex = 10
      OnExecute = acXemHangsoPBExecute
      OnUpdate = acXemHangsoPBUpdate
    end
    object acCapnhatHangsoPB: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatHangsoPBExecute
      OnUpdate = acCapnhatHangsoPBUpdate
    end
    object acXemHangsoCD: TAction
      Caption = 'acXemHangsoNV'
      ImageIndex = 10
      OnExecute = acXemHangsoCDExecute
      OnUpdate = acXemHangsoCDUpdate
    end
    object acCapnhatHangsoCD: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatHangsoCDExecute
      OnUpdate = acCapnhatHangsoCDUpdate
    end
    object acXemHangsoVT: TAction
      Caption = 'acXemHangsoNV'
      ImageIndex = 10
      OnExecute = acXemHangsoVTExecute
      OnUpdate = acXemHangsoVTUpdate
    end
    object acCapnhatHangsoVT: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatHangsoVTExecute
      OnUpdate = acCapnhatHangsoVTUpdate
    end
    object acBack: TAction
      Caption = 'acBack'
      ImageIndex = 0
      OnExecute = acBackExecute
    end
    object acNext: TAction
      Caption = 'acNext'
      ImageIndex = 3
      OnExecute = acNextExecute
    end
    object acViewReport: TAction
      Caption = 'acViewReport'
      ImageIndex = 10
      OnExecute = acViewReportExecute
    end
    object acRefreshReportGrid: TAction
      Caption = 'acRefreshReportGrid'
      OnExecute = acRefreshReportGridExecute
    end
    object acSaochepDulieu: TAction
      Caption = 'acSaochepDulieu'
      ImageIndex = 38
      OnExecute = acSaochepDulieuExecute
      OnUpdate = acSaochepDulieuUpdate
    end
  end
  object dsPersonalConst: TDataSource
    DataSet = memPersonalConst
    Left = 203
    Top = 329
  end
  object qryGetWageParamList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ELEMENT_TYPE'
        ParamType = ptInput
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ELEMENT_NO'
      '     , ELEMENT_NAME'
      '     , COLOR'
      '     , ELEMENT_TYPE'
      'FROM HR_WAGE_ELEMENT'
      'JOIN HR_WAGE_ELEMENT_TYPE on ELEMENT_TYPE=ELEMENT_TYPE_NO'
      'where ELEMENT_TYPE=:ELEMENT_TYPE'
      'order by ELEMENT_INDEX')
    FieldOptions = []
    Left = 128
    Top = 248
    object qryGetWageParamListELEMENT_NO: TWideStringField
      FieldName = 'ELEMENT_NO'
      Required = True
      Size = 63
    end
    object qryGetWageParamListELEMENT_NAME: TWideStringField
      FieldName = 'ELEMENT_NAME'
      Required = True
      Size = 126
    end
    object qryGetWageParamListCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qryGetWageParamListELEMENT_TYPE: TWideStringField
      FieldName = 'ELEMENT_TYPE'
      Required = True
      Size = 30
    end
  end
  object qryPersonalConst: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SELECT_DEPT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_CHILD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'is_dismissed'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'is_dismissed=2'
        ParamType = ptUnknown
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsConstChange
    SQL.Strings = (
      'SELECT'
      '    hr_get_emp_list.emp_no employee_no'
      '  , hr_get_emp_list.full_name'
      '  , hr_get_emp_list.dept_name'
      '  , hr_get_emp_list.title_name'
      '  , HR_PERSONAL_CONST.const_no'
      '  , HR_PERSONAL_CONST.const_value'
      'FROM hr_get_emp_list(:USER_NAME,:SELECT_DEPT,:VIEW_CHILD)'
      
        'LEFT JOIN HR_PERSONAL_CONST on hr_get_emp_list.emp_no=hr_persona' +
        'l_const.employee_no'
      '      and HR_PERSONAL_CONST.change_no=:CHANGE_NO'
      'where (hr_get_emp_list.is_main_position=1) and'
      '      ((hr_get_emp_list.is_dismissed=:is_dismissed)or'
      '       (:is_dismissed=2))'
      '')
    FieldOptions = []
    Left = 203
    Top = 248
    object qryPersonalConstEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryPersonalConstFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryPersonalConstDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryPersonalConstTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryPersonalConstCONST_NO: TWideStringField
      FieldName = 'CONST_NO'
      Size = 63
    end
    object qryPersonalConstCONST_VALUE: TIBOFloatField
      FieldName = 'CONST_VALUE'
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 160
    Top = 248
  end
  object qryDeptConst: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsConstChange
    SQL.Strings = (
      'select hr_mask_dept_list.dept_no,'
      '       hr_mask_dept_list.p_dept_no,'
      '       hr_mask_dept_list.dept_name,'
      '       hr_dept_const.const_no,'
      '       hr_dept_const.const_value'
      'from hr_mask_dept_list(:USER_NAME,null,null)'
      'left join hr_dept_const on '
      '   hr_mask_dept_list.dept_no=hr_dept_const.dept_no'
      '   and hr_dept_const.change_no=:CHANGE_NO'
      'order by display_index')
    FieldOptions = []
    Left = 235
    Top = 248
    object qryDeptConstDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryDeptConstP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDeptConstDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDeptConstCONST_NO: TWideStringField
      FieldName = 'CONST_NO'
      Size = 63
    end
    object qryDeptConstCONST_VALUE: TIBOFloatField
      FieldName = 'CONST_VALUE'
    end
  end
  object memDeptConst: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memDeptConstAfterEdit
    Left = 235
    Top = 297
    object memDeptConstDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object memDeptConstP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object memDeptConstDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
  end
  object dsDeptConst: TDataSource
    DataSet = memDeptConst
    Left = 235
    Top = 329
  end
  object qryTitleConst: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsConstChange
    SQL.Strings = (
      'select hr_title.title_no,'
      '       hr_title.title_name,'
      '       hr_title_const.const_no,'
      '       hr_title_const.const_value'
      'from hr_title'
      'left join hr_title_const on '
      '   hr_title.title_no=hr_title_const.title_no'
      '   and hr_title_const.change_no=:CHANGE_NO')
    FieldOptions = []
    Left = 267
    Top = 248
    object qryTitleConstTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Required = True
      Size = 15
    end
    object qryTitleConstTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryTitleConstCONST_NO: TWideStringField
      FieldName = 'CONST_NO'
      Size = 63
    end
    object qryTitleConstCONST_VALUE: TIBOFloatField
      FieldName = 'CONST_VALUE'
    end
  end
  object memTitleConst: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memTitleConstAfterEdit
    Left = 267
    Top = 296
    object memTitleConstTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object memTitleConstTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
  end
  object dsTitleConst: TDataSource
    DataSet = memTitleConst
    Left = 267
    Top = 329
  end
  object dsPositionConst: TDataSource
    DataSet = memPositionConst
    Left = 299
    Top = 329
  end
  object qryPositionConst: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsConstChange
    SQL.Strings = (
      'select hr_position.position_no,'
      '       hr_position.p_position_no,'
      '       hr_title.title_name||'#39' - '#39'||hr_mask_dept_list.dept_name'
      '       position_name,'
      '       hr_position_const.const_no,'
      '       hr_position_const.const_value'
      'from hr_position'
      'join hr_mask_dept_list(:USER_NAME,null,null)'
      '  on hr_position.dept_no=hr_mask_dept_list.dept_no'
      'join hr_title on hr_position.title_no=hr_title.title_no'
      'left join hr_position_const on '
      '   hr_position.position_no=hr_position_const.position_no'
      '   and hr_position_const.change_no=:CHANGE_NO')
    FieldOptions = []
    Left = 291
    Top = 248
    object qryPositionConstPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryPositionConstP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object qryPositionConstPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryPositionConstCONST_NO: TWideStringField
      FieldName = 'CONST_NO'
      Size = 63
    end
    object qryPositionConstCONST_VALUE: TIBOFloatField
      FieldName = 'CONST_VALUE'
    end
  end
  object memPositionConst: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memPositionConstAfterEdit
    Left = 299
    Top = 296
    object memPositionConstPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object memPositionConstP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object memPositionConstPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      Size = 256
    end
  end
  object dsNull: TDataSource
    DataSet = qryNull
    Left = 163
    Top = 329
  end
  object qryNull: TIBOQuery
    Params = <>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 163
    Top = 296
    object WideStringField1: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object WideStringField3: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object WideStringField4: TWideStringField
      FieldName = 'CONST_NO'
      Size = 63
    end
    object IBOFloatField1: TIBOFloatField
      FieldName = 'CONST_VALUE'
    end
  end
  object qryReport: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DEPT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AT_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AT_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AT_PERIOD'
        ParamType = ptUnknown
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '    EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    DEPT_NAME,'
      '    PARAM_NO,'
      '    PARAM_VALUE'
      'FROM  HR_WAGE_CONST_REPORT ('
      '    :USER_NAME,'
      '    :FROM_DEPT,'
      '    :STATE,'
      '    :AT_MONTH,'
      '    :AT_YEAR,'
      '    :AT_PERIOD)')
    FieldOptions = []
    Left = 352
    Top = 248
    object qryReportEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryReportFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryReportTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryReportDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryReportPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 60
    end
    object qryReportPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
  end
  object dsReport: TDataSource
    DataSet = memReport
    Left = 351
    Top = 329
  end
  object memReport: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 352
    Top = 295
    object memReportEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memReportFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 120
    end
    object memReportDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memReportTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
  end
  object qryGenWageParam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM_TYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'H:\Projects\SSP-HRM VINA NHATRANG\Database\Ssp_hrm_db_VinaNT.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure HR_GEN_WAGE_PARAM(:PARAM_TYPE,:CHANGE_NO,:PERI' +
        'OD_ID)')
    FieldOptions = []
    Left = 424
    Top = 192
  end
  object memPersonalConst: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memPersonalConstAfterEdit
    Left = 203
    Top = 299
    object memPersonalConstEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memPersonalConstFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memPersonalConstDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memPersonalConstTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
  end
end
