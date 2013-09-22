inherited frmWageParamData: TfrmWageParamData
  Left = 199
  Top = 198
  Width = 825
  Height = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 488
    Width = 817
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 817
    Height = 488
    inherited frameToolbar1: TframeToolbar
      Top = 453
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 832
        end
        inherited btnHelp: TElPopupButton
          Left = 702
        end
        inherited btnChoose: TElPopupButton
          Left = 772
        end
        inherited btnDesign: TElPopupButton
          Left = 497
          Width = 10
        end
        inherited btnPreview: TElPopupButton
          Left = 487
          Width = 10
        end
        inherited btnPrint: TElPopupButton
          Width = 10
        end
        inherited btnGenerate: TElPopupButton
          Left = 617
          ImageIndex = 58
          UseImageList = True
          Images = dmMain.imgAction
          Action = acPhatsinh
        end
        inherited btnRelation: TElPopupButton
          Left = 537
          Width = 80
          Hint = 'Sao ch'#233'p d'#7919' li'#7879'u'
          ImageIndex = 38
          UseImageList = True
          Images = dmMain.imgAction
          Glyph.Data = {00000000}
          ShowText = True
          Caption = 'Sao ch'#233'p'
          Action = acSaochepDulieu
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 512
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
      ActivePage = tabWageParam
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
      object tabWageParam: TElTabSheet
        PageControl = pageMain
        ImageIndex = 0
        TabVisible = True
        Caption = 'Nh'#7853't k'#253' thay '#273#7893'i tham s'#7889' l'#432#417'ng'
        object ElSplitter1: TElSplitter
          Left = 177
          Top = 0
          Width = 5
          Height = 329
          Cursor = crHSplit
          SnapTopLeft = True
          SnapBottomRight = True
          ControlTopLeft = panelLeft
          ControlBottomRight = pageRight
          AutoHide = False
          Align = alLeft
          BevelOuter = bvLowered
          UseXPThemes = False
        end
        object pageRight: TElPageControl
          Left = 182
          Top = 0
          Width = 527
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
          TabIndex = 4
          TabPosition = etpTop
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ActivePage = tabVitri
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
          TabOrder = 1
          object tabApdungChung: TElTabSheet
            PageControl = pageRight
            ImageIndex = -1
            TabVisible = True
            Caption = #193'p d'#7909'ng chung'
            Visible = False
            object gridWageParam: TdxDBGrid
              Left = 0
              Top = 0
              Width = 527
              Height = 308
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'PARAM_NO'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              DataSource = dsWageParam
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              object gridWageParamPARAM_NO: TdxDBGridColumn
                Caption = 'K'#253' hi'#7879'u tham s'#7889' '
                Color = clInfoBk
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 107
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PARAM_NO'
                Caption_UTF7 = 'K+AP0 hi+Hsc-u tham s+HtE '
              end
              object gridWageParamELEMENT_NAME: TdxDBGridPopupColumn
                Caption = 'T'#234'n tham s'#7889' chung '
                HeaderAlignment = taCenter
                Width = 241
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ELEMENT_NAME'
                OnCloseUp = gridWageParamELEMENT_NAMECloseUp
                OnInitPopup = gridWageParamELEMENT_NAMEInitPopup
                Caption_UTF7 = 'T+AOo-n tham s+HtE chung '
              end
              object gridWageParamPARAM_VALUE: TdxDBGridCalcColumn
                Caption = 'Gi'#225' tr'#7883' '#225'p d'#7909'ng'
                HeaderAlignment = taCenter
                Width = 86
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PARAM_VALUE'
                Caption_UTF7 = 'Gi+AOE tr+Hss +AOE-p d+HuU-ng'
              end
            end
          end
          object tabNhanvien: TElTabSheet
            PageControl = pageRight
            ImageIndex = -1
            TabVisible = True
            Caption = 'Theo nh'#226'n vi'#234'n'
            Visible = False
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 527
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
                Action = acXemThamsoNV
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object gridPersonalParam: TdxDBGrid
                Left = 10
                Top = 64
                Width = 250
                Height = 129
                Bands = <
                  item
                    Fixed = bfLeft
                    Width = 413
                  end
                  item
                  end>
                DefaultLayout = False
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'RecID'
                SummaryGroups = <>
                SummarySeparator = ', '
                TabOrder = 5
                DataSource = dsPersonalParam
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                object gridPersonalParamEMPLOYEE_NO: TdxDBGridColumn
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
                object gridPersonalParamFULL_NAME: TdxDBGridColumn
                  Caption = 'H'#7885' v'#224' t'#234'n'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 95
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FULL_NAME'
                  Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
                end
                object gridPersonalParamTITLE_NAME: TdxDBGridColumn
                  Caption = 'Ch'#7913'c danh'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 92
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NAME'
                  Caption_UTF7 = 'Ch+Huk-c danh'
                end
                object gridPersonalParamDEPT_NAME: TdxDBGridColumn
                  Caption = #272#417'n v'#7883' - ph'#242'ng ban'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Visible = False
                  Width = 169
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEPT_NAME'
                  Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
                end
              end
              object ElPopupButton2: TElPopupButton
                Left = 530
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
                Action = acCapnhatThamsoNV
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
                      Caption = 'dxCheckEdit1'
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
                  Control = gridPersonalParam
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
              Width = 527
              Height = 308
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object ElPopupButton4: TElPopupButton
                Left = 532
                Top = 3
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
                Action = acCapnhatThamsoPB
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object treeDeptParam: TdxDBTreeList
                Left = 3
                Top = 31
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
                DataSource = dsDeptParam
                Images = dmMain.imglDeptTree
                LookAndFeel = lfFlat
                ShowGrid = True
                TreeLineColor = clGrayText
                object treeDeptParamDEPT_NO: TdxDBTreeListColumn
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
                object treeDeptParamDEPT_NAME: TdxDBTreeListColumn
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
                  Control = treeDeptParam
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
              Width = 527
              Height = 308
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object gridTitleParam: TdxDBGrid
                Left = 3
                Top = 31
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
                DataSource = dsTitleParam
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                object gridTitleParamTITLE_NO: TdxDBGridColumn
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
                object gridTitleParamTITLE_NAME: TdxDBGridColumn
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
                Left = 532
                Top = 3
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
                Action = acCapnhatThamsoCD
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
                  Control = gridTitleParam
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
            object dxLayoutControl4: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 527
              Height = 308
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object ElPopupButton8: TElPopupButton
                Left = 530
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
                Action = acCapnhatThamsoVT
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object treePositionParam: TdxDBTreeList
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
                DataSource = dsPositionParam
                Images = dmMain.imglDeptTree
                LookAndFeel = lfFlat
                ShowGrid = True
                TreeLineColor = clGrayText
                object treePositionParamPOSITION_NAME: TdxDBTreeListColumn
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
                  Control = treePositionParam
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object panelLeft: TPanel
          Left = 0
          Top = 0
          Width = 177
          Height = 329
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object dxLayoutControl6: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 177
            Height = 329
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            object dxAtMonth: TdxImageEdit
              Left = 57
              Top = 28
              Width = 100
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbs3D
              Style.ButtonStyle = bts3D
              TabOrder = 0
              Alignment = taLeftJustify
              StyleController = dmMain.StyleController
              OnChange = dxAtMonthChange
              PopupBorder = pbFrame3D
              StoredValues = 1
            end
            object dxAtYear: TdxSpinEdit
              Left = 57
              Top = 57
              Width = 100
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbs3D
              Style.ButtonStyle = bts3D
              TabOrder = 1
              Alignment = taLeftJustify
              StyleController = dmMain.StyleController
              OnChange = dxAtYearChange
              MaxValue = 3000.000000000000000000
              MinValue = 1990.000000000000000000
              Value = 1990.000000000000000000
              StoredValues = 49
            end
            object dxAtPeriod: TdxSpinEdit
              Left = 57
              Top = 86
              Width = 49
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbs3D
              Style.ButtonStyle = bts3D
              TabOrder = 2
              Alignment = taLeftJustify
              StyleController = dmMain.StyleController
              OnChange = dxAtPeriodChange
              MaxValue = 9.000000000000000000
              MinValue = 1.000000000000000000
              Value = 1.000000000000000000
              StoredValues = 49
            end
            object ElPopupButton12: TElPopupButton
              Left = 83
              Top = 163
              Width = 86
              Height = 25
              Cursor = crDefault
              ImageIndex = 38
              UseImageList = True
              Images = dmMain.imgAction
              DrawDefaultFrame = False
              LinkColor = clBlue
              LinkStyle = [fsUnderline]
              NumGlyphs = 1
              UseXPThemes = True
              Caption = 'L'#7845'y d'#7919' li'#7879'u'
              TabOrder = 3
              Color = clBtnFace
              ParentColor = False
              Action = acGetData
              DockOrientation = doNoOrient
              DoubleBuffered = False
            end
            object dxLayoutControl6Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl6Group1: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                Caption = 'K'#7923' t'#237'nh l'#432#417'ng'
                object dxLayoutControl6Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Th'#225'ng'
                  Control = dxAtMonth
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl6Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'N'#259'm'
                  Control = dxAtYear
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl6Item3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'K'#7923
                  Control = dxAtPeriod
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl6Group2: TdxLayoutGroup
                Caption = #272'i'#7873'u khi'#7875'n'
              end
              object dxLayoutControl6Item4: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton12'
                ShowCaption = False
                Control = ElPopupButton12
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
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
          object chkBienChung: TdxCheckEdit
            Left = 22
            Top = 112
            Width = 100
            Color = clBtnFace
            Enabled = False
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 10
            Caption = 'Bi'#7871'n chung'
            StyleController = dmMain.StyleController
            OnChange = acRefreshReportGridExecute
            State = cbsChecked
          end
          object chkChucvu: TdxCheckEdit
            Left = 448
            Top = 112
            Width = 100
            Color = clBtnFace
            Enabled = False
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 14
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
            Enabled = False
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 13
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
            Enabled = False
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 12
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
            Enabled = False
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 11
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
            TabOrder = 9
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
              object dxlcItemBienchung: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxlcItemBienchung'
                ShowCaption = False
                Control = chkBienChung
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxlcItemNhanvien: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxlcItemNhanvien'
                ShowCaption = False
                Control = chkNhanvien
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxlcItemDonvi: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxlcItemDonvi'
                ShowCaption = False
                Control = chkDonvi
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxlcItemChucdanh: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxlcItemChucdanh'
                ShowCaption = False
                Control = chkChucdanh
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxlcItemChucvu: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'dxlcItemChucvu'
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
        Caption = 'D'#7919' li'#7879'u tham s'#7889' t'#237'nh l'#432#417'ng'
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
  object qryWageParam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_PARAM'
      'WHERE'
      '   PARAM_NO = :OLD_PARAM_NO AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_PARAM SET'
      '   PARAM_NO = :PARAM_NO, /*PK*/'
      '   PERIOD_ID = :PERIOD_ID, /*PK*/'
      '   PARAM_VALUE = :PARAM_VALUE'
      'WHERE'
      '   PARAM_NO = :OLD_PARAM_NO AND'
      '   PERIOD_ID = :OLD_PERIOD_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_PARAM('
      '   PARAM_NO, /*PK*/'
      '   PERIOD_ID, /*PK*/'
      '   PARAM_VALUE)'
      'VALUES ('
      '   :PARAM_NO,'
      '   :PERIOD_ID,'
      '   :PARAM_VALUE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryWageParamNewRecord
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , PARAM_VALUE'
      '     , PERIOD_ID'
      '     , ELEMENT_NAME'
      'FROM HR_WAGE_PARAM'
      'JOIN HR_WAGE_ELEMENT on PARAM_NO=ELEMENT_NO'
      'where ELEMENT_TYPE='#39'BIEN_CHUNG'#39' and'
      '      PERIOD_ID=:PERIOD_ID'
      'order by ELEMENT_INDEX')
    FieldOptions = []
    Left = 96
    Top = 248
    object qryWageParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryWageParamPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
    object qryWageParamPERIOD_ID: TIntegerField
      FieldName = 'PERIOD_ID'
      Required = True
    end
    object qryWageParamELEMENT_NAME: TWideStringField
      FieldName = 'ELEMENT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsWageParam: TDataSource
    DataSet = qryWageParam
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
    object acXemThamsoNV: TAction
      Caption = 'acXemThamsoNV'
      ImageIndex = 10
      OnExecute = acXemThamsoNVExecute
    end
    object acCapnhatThamsoNV: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatThamsoNVExecute
      OnUpdate = acCapnhatThamsoNVUpdate
    end
    object acXemThamsoPB: TAction
      Caption = 'acXemHangsoNV'
      ImageIndex = 10
      OnExecute = acXemThamsoPBExecute
    end
    object acCapnhatThamsoPB: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatThamsoPBExecute
      OnUpdate = acCapnhatThamsoPBUpdate
    end
    object acXemThamsoCD: TAction
      Caption = 'acXemHangsoNV'
      ImageIndex = 10
      OnExecute = acXemThamsoCDExecute
    end
    object acCapnhatThamsoCD: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatThamsoCDExecute
      OnUpdate = acCapnhatThamsoCDUpdate
    end
    object acXemThamsoVT: TAction
      Caption = 'acXemHangsoNV'
      ImageIndex = 10
      OnExecute = acXemThamsoVTExecute
    end
    object acCapnhatThamsoVT: TAction
      Caption = 'acCapnhatHangsoNV'
      ImageIndex = 37
      OnExecute = acCapnhatThamsoVTExecute
      OnUpdate = acCapnhatThamsoVTUpdate
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
    object acGetData: TAction
      Caption = 'acGetData'
      ImageIndex = 38
      OnExecute = acGetDataExecute
      OnUpdate = acGetDataUpdate
    end
    object acSaochepDulieu: TAction
      Caption = 'acSaochep'
      ImageIndex = 38
      OnExecute = acSaochepDulieuExecute
    end
  end
  object dsPersonalParam: TDataSource
    DataSet = memPersonalParam
    Left = 203
    Top = 329
  end
  object memPersonalParam: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memPersonalParamAfterEdit
    Left = 203
    Top = 295
    object memPersonalParamEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memPersonalParamFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 120
    end
    object memPersonalParamDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memPersonalParamTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
  end
  object qryGetWageParamList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ELEMENT_TYPE'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
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
  object qryPersonalParam: TIBOQuery
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
        Name = 'PERIOD_ID'
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
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '    hr_get_emp_list.emp_no employee_no'
      '  , hr_get_emp_list.full_name'
      '  , hr_get_emp_list.dept_name'
      '  , hr_get_emp_list.title_name'
      '  , HR_PERSONAL_PARAM.PARAM_no'
      '  , HR_PERSONAL_PARAM.PARAM_value'
      'FROM hr_get_emp_list(:USER_NAME,:SELECT_DEPT,:VIEW_CHILD)'
      
        'LEFT JOIN HR_PERSONAL_PARAM on hr_get_emp_list.emp_no=hr_persona' +
        'l_param.employee_no'
      '      and HR_PERSONAL_PARAM.period_id=:PERIOD_ID'
      'where (hr_get_emp_list.is_main_position=1) and'
      '      ((hr_get_emp_list.is_dismissed=:is_dismissed)or'
      '       (:is_dismissed=2))')
    FieldOptions = []
    Left = 203
    Top = 248
    object qryPersonalParamEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryPersonalParamFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryPersonalParamDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryPersonalParamTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryPersonalParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 63
    end
    object qryPersonalParamPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 168
    Top = 248
  end
  object qryDeptParam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_mask_dept_list.dept_no,'
      '       hr_mask_dept_list.p_dept_no,'
      '       hr_mask_dept_list.dept_name,'
      '       hr_dept_param.param_no,'
      '       hr_dept_param.param_value'
      'from hr_mask_dept_list(:USER_NAME,null,null)'
      'left join hr_dept_param on '
      '   hr_mask_dept_list.dept_no=hr_dept_param.dept_no'
      '   and hr_dept_param.period_id=:PERIOD_ID'
      'order by display_index')
    FieldOptions = []
    Left = 235
    Top = 248
    object qryDeptParamDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryDeptParamP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDeptParamDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDeptParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 63
    end
    object qryDeptParamPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
  end
  object memDeptParam: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memDeptParamAfterEdit
    Left = 235
    Top = 295
    object memDeptParamDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object memDeptParamP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object memDeptParamDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
  end
  object dsDeptParam: TDataSource
    DataSet = memDeptParam
    Left = 235
    Top = 329
  end
  object qryTitleParam: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PERIOD_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_title.title_no,'
      '       hr_title.title_name,'
      '       hr_title_param.param_no,'
      '       hr_title_param.param_value'
      'from hr_title'
      'left join hr_title_param on '
      '   hr_title.title_no=hr_title_param.title_no'
      '   and hr_title_param.period_id=:PERIOD_ID')
    FieldOptions = []
    Left = 267
    Top = 248
    object qryTitleParamTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Required = True
      Size = 15
    end
    object qryTitleParamTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryTitleParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 63
    end
    object qryTitleParamPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
  end
  object memTitleParam: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memTitleParamAfterEdit
    Left = 267
    Top = 295
    object memTitleParamTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object memTitleParamTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
  end
  object dsTitleParam: TDataSource
    DataSet = memTitleParam
    Left = 267
    Top = 329
  end
  object dsPositionParam: TDataSource
    DataSet = memPositionParam
    Left = 299
    Top = 329
  end
  object qryPositionParam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_position.position_no,'
      '       hr_position.p_position_no,'
      '       hr_title.title_name||'#39' - '#39'||hr_mask_dept_list.dept_name'
      '       position_name,'
      '       hr_position_param.param_no,'
      '       hr_position_param.param_value'
      'from hr_position'
      'join hr_mask_dept_list(:USER_NAME,null,null)'
      '  on hr_position.dept_no=hr_mask_dept_list.dept_no'
      'join hr_title on hr_position.title_no=hr_title.title_no'
      'left join hr_position_param on '
      '   hr_position.position_no=hr_position_param.position_no'
      '   and hr_position_param.period_id=:PERIOD_ID')
    FieldOptions = []
    Left = 299
    Top = 248
    object qryPositionParamPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryPositionParamP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object qryPositionParamPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryPositionParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 63
    end
    object qryPositionParamPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
  end
  object memPositionParam: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = memPositionParamAfterEdit
    Left = 299
    Top = 295
    object memPositionParamPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object memPositionParamP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object memPositionParamPOSITION_NAME: TWideStringField
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
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
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
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FROM_DEPT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_PERIOD'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
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
      'FROM  HR_WAGE_PARAM_REPORT ('
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
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure HR_GEN_WAGE_PARAM(:PARAM_TYPE,:CHANGE_NO,:PERI' +
        'OD_ID)')
    FieldOptions = []
    Left = 424
    Top = 176
  end
end
