inherited frmImportTool: TfrmImportTool
  Left = 282
  Top = 120
  Width = 809
  Height = 501
  OldCreateOrder = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 448
    Width = 801
  end
  object mainPanel: TPanel [1]
    Left = 0
    Top = 0
    Width = 801
    Height = 448
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object pageImportData: TElPageControl
      Left = 0
      Top = 0
      Width = 801
      Height = 329
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
      TabIndex = 0
      TabPosition = etpBottom
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabData
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
      TabOrder = 0
      object tabData: TElTabSheet
        PageControl = pageImportData
        ImageIndex = 0
        TabVisible = True
        Caption = 'D'#7919' li'#7879'u t'#7915' Excel'
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 801
          Height = 305
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object ElPopupButton1: TElPopupButton
            Left = 542
            Top = 28
            Width = 88
            Height = 25
            Cursor = crDefault
            ImageIndex = 20
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = #272#7885'c d'#7919' li'#7879'u'
            TabOrder = 3
            Color = 15466238
            ParentColor = False
            Action = acReadData
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object gridData: TdxDBGrid
            Left = 2
            Top = 81
            Width = 772
            Height = 188
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'RecID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 5
            DataSource = dsData
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            ShowHeader = False
            OnCustomDraw = gridDataCustomDraw
            object gridDataERROR_FLAG: TdxDBGridColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ERROR_FLAG'
            end
          end
          object dxFileName: TdxButtonEdit
            Left = 309
            Top = 28
            Width = 397
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 1
            StyleController = dmMain.StyleController
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = dxFileNameButtonClick
            ExistButtons = True
          end
          object chkCanEdit: TdxCheckEdit
            Left = 764
            Top = 28
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            StyleController = dmMain.StyleController
            OnChange = chkCanEditChange
          end
          object dxSelectType: TdxImageEdit
            Left = 94
            Top = 28
            Width = 121
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxSelectTypeChange
            DropDownRows = 16777223
            Descriptions.WideStrings = (
              'Text file (*.txt)'
              'Excel file (*.xls)')
            ImageIndexes.WideStrings = (
              '0'
              '1')
            Values.WideStrings = (
              'TXT'
              'XLS')
          end
          object dxDelimiterChar: TdxEdit
            Left = 94
            Top = 51
            Width = 121
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            StyleController = dmMain.StyleController
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              Caption = '* '#272#7885'c d'#7919' li'#7879'u t'#7915' t'#7853'p tin '
              LayoutDirection = ldHorizontal
              object dxLayoutControl1Group3: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item5: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'Lo'#7841'i t'#7853'p tin'
                    Control = dxSelectType
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item4: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avCenter
                    Caption = #272#432#7901'ng d'#7851'n t'#7853'p tin:'
                    Control = dxFileName
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'K'#253' t'#7921' ph'#226'n c'#225'ch'
                  Control = dxDelimiterChar
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Item2: TdxLayoutItem
                Caption = 'ElPopupButton1'
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item1: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                Caption = 'Cho ph'#233'p hi'#7879'u ch'#7881'nh d'#7919' li'#7879'u'
                Control = chkCanEdit
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridData
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            Caption = 'New Group'
          end
        end
      end
    end
    object dxSplitter: TElSplitter
      Left = 0
      Top = 329
      Width = 801
      Height = 5
      Cursor = crVSplit
      SnapTopLeft = False
      SnapBottomRight = False
      ControlTopLeft = pageImportData
      ControlBottomRight = panelControl
      AutoHide = False
      Align = alTop
      BevelOuter = bvNone
      UseXPThemes = False
    end
    object panelControl: TPanel
      Left = 0
      Top = 334
      Width = 801
      Height = 114
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 801
        Height = 114
        Align = alClient
        BevelInner = bvNone
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ElPopupButton2: TElPopupButton
          Left = 143
          Top = 80
          Width = 80
          Height = 25
          Cursor = crDefault
          Hint = 'B'#7855't '#273#7847'u ti'#7871'n tr'#236'nh '#273#7885'c d'#7919' li'#7879'u v'#224'o h'#7879' th'#7889'ng'
          ImageIndex = 64
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&B'#7855't '#273#7847'u  '
          TabOrder = 1
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acImportProcess
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 707
          Top = 80
          Width = 80
          Height = 25
          Cursor = crDefault
          Hint = 'K'#7871't th'#250'c ti'#7879'n '#237'ch - Tr'#7903' v'#7873' m'#224'n h'#236'nh ch'#7913'c n'#259'ng '
          ImageIndex = 67
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 4
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acClose
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 223
          Top = 80
          Width = 80
          Height = 25
          Cursor = crDefault
          Hint = 'X'#225'c nh'#7853'n l'#432'u d'#7919' li'#7879'u v'#7915'a '#273#7885'c v'#224'o h'#7879' th'#7889'ng'
          ImageIndex = 44
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&X'#225'c nh'#7853'n'
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acCommit
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxAutoCommit: TdxCheckEdit
          Left = 120
          Top = 81
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          StyleController = dmMain.StyleController
          NullStyle = nsUnchecked
        end
        object pageControl: TElPageControl
          Left = 2
          Top = 2
          Width = 600
          Height = 180
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
          TabIndex = 0
          TabPosition = etpBottom
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ActivePage = tabControl
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
          TabOrder = 8
          object tabControl: TElTabSheet
            PageControl = pageControl
            ImageIndex = 1
            TabVisible = True
            Caption = #272#7883'nh ngh'#297'a'
            object dxLayoutControl2: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 600
              Height = 156
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object gridScript: TdxDBGrid
                Left = 14
                Top = 28
                Width = 259
                Height = 167
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch l'#7879'nh th'#7921'c thi'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'SCRIPT_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alLeft
                TabOrder = 0
                OnDblClick = acEditImportRuleExecute
                OnMouseUp = gridScriptMouseUp
                DataSource = dsScript
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                ShowBands = True
                object gridScriptSCRIPT_ORDER: TdxDBGridSpinColumn
                  Alignment = taCenter
                  Caption = 'STT'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 38
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SCRIPT_ORDER'
                  MaxValue = 100.000000000000000000
                end
                object gridScriptSCRIPT_NAME: TdxDBGridColumn
                  Caption = 'L'#7879'nh th'#7921'c thi'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 219
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SCRIPT_NAME'
                  Caption_UTF7 = 'L+Hsc-nh th+HvE-c thi'
                end
                object gridScriptIS_USED: TdxDBGridCheckColumn
                  Alignment = taCenter
                  Caption = '[  ]'
                  HeaderAlignment = taCenter
                  Width = 23
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'IS_USED'
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
              end
              object gridParam: TdxDBGrid
                Left = 273
                Top = 28
                Width = 400
                Height = 167
                Bands = <
                  item
                    Caption = 'Quy '#273#7883'nh '#273#432'a d'#7919' li'#7879'u v'#224'o h'#7879' th'#7889'ng'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'PARAM_NO'
                SummaryGroups = <>
                SummarySeparator = ', '
                TabOrder = 1
                OnDblClick = acEditImportRuleExecute
                OnMouseUp = gridParamMouseUp
                DataSource = dsParam
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                ShowBands = True
                object gridParamPARAM_NAME: TdxDBGridColumn
                  Caption = 'Tr'#432#7901'ng d'#7919' li'#7879'u'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 109
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PARAM_NAME'
                  Caption_UTF7 = 'Tr+AbAe3Q-ng d+Hu8 li+Hsc-u'
                end
                object gridParamSOURCE_NAME: TdxDBGridPickColumn
                  Caption = 'C'#7897't t'#432#417'ng '#7913'ng'
                  HeaderAlignment = taCenter
                  Width = 85
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SOURCE_NAME'
                  Caption_UTF7 = 'C+Htk-t t+AbABoQ-ng +Huk-ng'
                end
                object gridParamSOURCE_COL: TdxDBGridPickColumn
                  Caption = 'K'#253' hi'#7879'u'
                  HeaderAlignment = taCenter
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SOURCE_COL'
                  Caption_UTF7 = 'K+AP0 hi+Hsc-u'
                end
                object gridParamFUNC_NO: TdxDBGridImageColumn
                  Alignment = taLeftJustify
                  Caption = 'Ph'#432#417'ng th'#7913'c x'#7917' l'#237
                  HeaderAlignment = taCenter
                  MinWidth = 16
                  Width = 129
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FUNC_NO'
                  Descriptions.WideStrings = (
                    'Gi'#7919' nguy'#234'n g'#7889'c'
                    'Ph'#225't sinh ID t'#432#417'ng '#7913'ng'
                    'Chuy'#7875'n k'#253' t'#7921' kh'#244'ng d'#7845'u'
                    'Ph'#225't sinh ch'#7881' m'#7909'c t'#432#417'ng '#7913'ng'
                    'L'#7845'y t'#7915' '#273#7847'u ti'#234'n'
                    'L'#7845'y t'#7915' cu'#7889'i c'#249'ng'
                    'L'#7845'y c'#225'c t'#7915' '#7903' gi'#7919'a')
                  ShowDescription = True
                  Values.WideStrings = (
                    'DONT_CARE'
                    'GEN_ID'
                    'UNI_CONVERT'
                    'GEN_INDEX'
                    'FIRST_WORD'
                    'LAST_WORD'
                    'MIDDLE_WORD')
                  Caption_UTF7 = 'Ph+AbABoQ-ng th+Huk-c x+Hu0 l+AO0'
                end
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Group1: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = '* '#272#7883'nh ngh'#297'a lu'#7853't '#273#7885'c d'#7919' li'#7879'u'
                  LayoutDirection = ldHorizontal
                  object dxLayoutControl2Item1: TdxLayoutItem
                    AutoAligns = []
                    AlignVert = avClient
                    ShowCaption = False
                    Control = gridScript
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item2: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ShowCaption = False
                    Control = gridParam
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object tabScript: TElTabSheet
            PageControl = pageControl
            ImageIndex = 2
            TabVisible = True
            Caption = 'Ti'#7871'n tr'#236'nh'
            Visible = False
            object dxLayoutControl3: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 600
              Height = 156
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object memoInfo: TElMemoCombo
                Left = 15
                Top = 49
                Width = 590
                Height = 216
                Cursor = crIBeam
                VertScrollBarStyles.ShowTrackHint = False
                VertScrollBarStyles.Width = 17
                VertScrollBarStyles.ButtonSize = 17
                VertScrollBarStyles.UseXPThemes = False
                HorzScrollBarStyles.ShowTrackHint = False
                HorzScrollBarStyles.Width = 17
                HorzScrollBarStyles.ButtonSize = 17
                HorzScrollBarStyles.UseXPThemes = False
                UseCustomScrollBars = True
                NotifyUserChangeOnly = True
                DropHeight = 80
                DropWidth = 200
                Dropped = False
                MemoAlignment = taLeftJustify
                MemoColor = clWindow
                MemoFont.Charset = DEFAULT_CHARSET
                MemoFont.Color = clWindowText
                MemoFont.Height = -11
                MemoFont.Name = 'Tahoma'
                MemoFont.Style = []
                MemoMaxLength = 0
                MemoScrollBars = ssVertical
                MemoWordWrap = True
                MemoActiveBorderType = fbtSunken
                MemoFlatScrollBars = False
                RightMargin = 1
                RTLContent = False
                BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
                Transparent = False
                WantTabs = True
                HideSelection = False
                WordWrap = True
                ScrollBars = ssVertical
                Multiline = True
                BorderStyle = bsSingle
                ButtonColor = clBtnFace
                ButtonWidth = 15
                Ctl3D = True
                DragMode = dmAutomatic
                ParentColor = False
                ParentCtl3D = False
                ReadOnly = True
                DockOrientation = doVertical
                DoubleBuffered = False
              end
              object dxProgress: TdxfProgressBar
                Left = 80
                Top = 28
                Width = 567
                Height = 20
                BarBevelOuter = bvNone
                BeginColor = clGradientActiveCaption
                BevelOuter = bvLowered
                Color = 15466238
                EndColor = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Max = 1
                Min = 0
                Orientation = orHorizontal
                ParentColor = False
                ParentFont = False
                Position = 0
                ShowTextStyle = stsPercent
                Step = 1
                Style = sRectangles
                TabOrder = 1
                TransparentGlyph = True
              end
              object dxLayoutControl3Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl3Group1: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = '* '#272#7885'c d'#7919' li'#7879'u v'#224'o h'#7879' th'#7889'ng'
                  object dxLayoutControl3Item4: TdxLayoutItem
                    Caption = 'Ho'#224'n t'#7845't (%)'
                    Control = dxProgress
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item3: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ShowCaption = False
                    Control = memoInfo
                  end
                end
              end
            end
          end
          object tabErrorMessage: TElTabSheet
            PageControl = pageControl
            ImageIndex = 3
            TabVisible = True
            Caption = 'Xem th'#244'ng b'#225'o l'#7895'i'
            Visible = False
            object dxLayoutControl4: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 600
              Height = 156
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object dxDBMemo1: TdxDBMemo
                Left = 14
                Top = 28
                Width = 526
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 0
                DataField = 'ERROR_MSG'
                DataSource = dsData
                StyleController = dmMain.StyleController
                Height = 49
              end
              object dxLayoutControl4Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl4Group1: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = '* N'#7897'i dung l'#7895'i th'#7921'c thi'
                  LayoutDirection = ldHorizontal
                  object dxLayoutControl4Item1: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Caption = 'dxDBMemo1'
                    ShowCaption = False
                    Control = dxDBMemo1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
        object ElPopupButton5: TElPopupButton
          Left = 303
          Top = 80
          Width = 80
          Height = 25
          Cursor = crDefault
          Hint = 'H'#7911'y b'#7887' d'#7919' li'#7879'u v'#7915'a '#273#7885'c'
          ImageIndex = 10
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&H'#7911'y b'#7887'    '
          TabOrder = 3
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acRollback
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl5Item5: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'pageControl'
            ShowCaption = False
            Control = pageControl
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl5Group1: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avBottom
            Caption = '* T'#249'y ch'#7885'n'
            LookAndFeel = dmMain.StyleWeb
            LayoutDirection = ldHorizontal
            object dxLayoutControl5Item4: TdxLayoutItem
              AutoAligns = []
              AlignVert = avCenter
              Caption = '+ T'#7921' '#273#7897'ng l'#432'u d'#7919' li'#7879'u'
              Control = dxAutoCommit
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl5Item1: TdxLayoutItem
              AutoAligns = []
              AlignVert = avBottom
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl5Item3: TdxLayoutItem
              AutoAligns = []
              AlignVert = avBottom
              Caption = 'ElPopupButton4'
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl5Item6: TdxLayoutItem
              AutoAligns = []
              AlignVert = avBottom
              Caption = 'ElPopupButton5'
              ShowCaption = False
              Control = ElPopupButton5
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl5Item2: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton3
              ControlOptions.ShowBorder = False
            end
          end
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
        Caption = 'Ti'#7879'n '#237'ch '#273#7885'c d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 656
    Top = 136
  end
  object ImageList1: TImageList
    Left = 656
    Top = 80
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
      000000000000000000000000000078C778FFEDF7EDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000024A424FF0CA417FF009800FF9AD59AFF000000000000
      000000000000000000000000000000000000FEFEFEFF00000000FEFEFEFFF4F4
      F4FFE2E2E2FFDADADAFFC9C9C9FFC1C1C1FFC1C1C1FFC6C6C6FFD5D5D5FFDDDD
      DDFFF0F0F0FFFCFCFCFF00000000000000000000000000000000000000000000
      00000000000000000000EFEFEFFF989898FFD9D9D9FF00000000000000000000
      000000000000000000000000000000000000C4CBD3FF0187F9FF018EFEFF018E
      FEFF018EFEFF018EFEFF018EFEFF018EFEFF018EFEFF018EFEFF018EFEFF018E
      FEFF018EFEFF018EFEFF0673DFFF000000000000000000000000000000000000
      0000F6FBF6FF039B07FF14AD28FF0FA81FFF009900FF009900FF55B955FF0000
      0000000000000000000000000000000000000000000000000000F2F2F2FFDBDB
      DBFFCDCDCDFFD7D7D7FFDBDBDBFFDEDEDEFFDEDEDEFFDBDBDBFFE0E0E0FFC7C7
      C7FFD6D6D6FFECECECFFFEFEFEFF000000000000000000000000000000000000
      000000000000B2B2B2FF87837FFF65829BFFAEAFB0FF797979FFF8F8F8FF0000
      0000000000000000000000000000000000003585D3FF0180FEFF0180FEFF0180
      FEFF0180FEFF0180FEFF0180FEFF0180FEFF0180FEFF0180FEFF0180FEFF0180
      FEFF0180FEFF0180FEFF1288FDFF00000000000000000000000000000000A2D9
      A2FF0CA418FF1AB334FF17B02DFF13AC25FF009900FF009900FF009900FF119D
      11FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDCDCDFFC4C4C4FFC5C5C5FFD1D1D1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8CFF8E9BA7FF0C5397FF0A4889FF0D5596FF517EA5FF7A7675FFF6F6
      F6FF00000000000000000000000000000000DEE1E4FF1D8DFEFF0180FEFF0182
      FEFF0186FEFF0189FEFF0194FEFF9BD2FEFF1DAEFEFF018AFEFF0187FEFF0183
      FEFF0180FEFF0180FEFF1079E0FF00000000000000000000000089CD89FF18B1
      31FF21BA41FF1DB63AFF19B233FF15AE2BFF009800FF009900FF009700FF0097
      00FF039803FF00000000000000000000000000000000F3F3F3FFB0B0B0FFB4B4
      B4FFB4B4B4FFB5B5B5FF8C8C8CFF636363FF585858FF6C6C6CFFB5B5B5FFB5B5
      B5FFB4B4B4FFB1B1B1FFEEEEEEFF00000000000000000000000000000000ABAB
      ABFFBEBCB9FF06559AFF095496FF0B599BFF0B5B9CFF0A5596FF246297FF7B79
      77FF0000000000000000000000000000000000000000167DE1FF0189FEFF018F
      FEFF0194FEFF0197FEFF0198FDFFFFFFFFFFE1F2FEFF0198FEFF0195FEFF0191
      FEFF018BFEFF2998FEFFD8DBDFFF0000000000000000B6E0B6FF28C14FFF28C1
      50FF25BE4AFF20B942FF1EB73AFF19B232FF009900FF50AD50FFCDCDCDFFB0B8
      BEFF009A00FF009800FF000000000000000000000000BEBEBEFFE4E4E4FFE9E9
      E9FFEBEBEBFFEEEEEEFFE7E7E7FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFC6C6C6FF000000000000000000000000F4F4F4FFB1B1
      B1FFB5B5B5FFC0BAB6FF236DA8FF166AACFF156FAFFF106AABFF0C5D9EFF5585
      AAFFADADADFF00000000000000000000000000000000D6DADEFF36ACFEFF019C
      FEFF01A1FEFF01A4FEFF01A7FDFF08ADFAFF01A4FBFF01A5FEFF01A2FEFF019E
      FEFF0198FEFF1C82E1FF000000000000000000000000A0D7A0FF32CB64FF2EC7
      59FF28C152FF26BF4AFF21BB43FF24B941FF009900FF009800FFA7C4A7FFD4D0
      D2FF5D9774FF009800FF000000000000000000000000C1C1C1FFECEDEDFFF0F0
      F1FFF1F2F2FFF2F3F3FFF3F5F5FFEDEEEEFFEBECECFFEBECECFFECECEDFFECEC
      EDFFECECEDFFECEDEDFFC8C8C8FF000000000000000000000000898989FFC0C0
      C0FFBEBEBEFFBEBEBEFFC5C2BFFF5790B9FF237DBCFF1C77B6FF1270B0FF045B
      9FFFB0B0ADFF00000000000000000000000000000000000000002289E1FF01A9
      FEFF01AEFEFF01B2FEFF01B8FDFFF7FCFEFF6DCDFAFF01B3FEFF01B0FEFF01AB
      FEFF43BCFEFFD6DADEFF0000000000000000000000008FD08FFF3AD36FFF31CA
      63FF2FC85BFF28C252FF3DC962FF38D16CFF32C85FFF009900FF95BE94FFD2CE
      CEFFE0D5E1FF009900FF000000000000000000000000C3C4C4FFAE6E48FFC56A
      26FFD17B3AFFDD8D50FFE99E65FFF6AC7AFFFCB786FFF3AA76FFE79A61FFDC89
      4CFFD07836FFAA673FFFCBCCCCFF000000000000000000000000BABABAFFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFCECDCCFF8FB3CBFF2781C1FF1D7BB9FF1271
      B0FF528BB4FFD9D9D9FF00000000000000000000000000000000D6DADEFF5BCF
      FEFF04BCFEFF00C0FEFF00BCFBFFFFFFFFFFC7ECFCFF00C1FEFF00BDFEFF03B8
      FEFF2B8FE1FF000000000000000000000000000000007FC87FFF41DB77FF37D0
      6AFF2FCA61FF50D87AFF40DB75FF3DD670FF39D26CFF33D16AFF95BB95FFE3D7
      DCFF5E9474FF009302FF000000000000000000000000C5C5C5FFB0734CFFC56C
      29FFD07C3CFFDC8C51FFE79A63FFEEA772FFF1AB78FFEDA46FFFE4985FFFDA89
      4DFFCF7939FFAB6B43FFCDCECEFF0000000000000000F3F3F3FFDADADAFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFD3D3D3FFD8D8D8FFBACAD3FF1E81C1FF187A
      B8FF0965A5FFA2A09FFF00000000000000000000000000000000000000003795
      E2FF3CD5FFFF3CD9FFFF35CCF9FFFFFFFFFFE6F6FDFF3CD9FFFF3CD6FFFF7EE1
      FFFFD6DADEFF000000000000000000000000000000005FBA5FFF4AE381FF3FD7
      71FF5FE98DFF4DE780FF4AE37DFF47DE79FF2FD767FFBFF1D0FFFFFFFFFFEADF
      E4FF008804FF009A00FF000000000000000000000000C8C8C8FFAF724BFFC269
      26FFCB7634FFD68445FFDE9055FFE49860FFE79B64FFE4975FFFDD8E52FFD582
      42FFCA7431FFAA6840FFD0D1D1FF0000000000000000D8D7D7FF74ACCAFFE3DE
      DCFFDBDBDBFFDADADAFFDADADAFFDCDCDCFFDEDEDEFFDDDDDDFFDADCDAFF107A
      BBFF0368AAFFA8A4A2FF0000000000000000000000000000000000000000D6DA
      DEFF93EDFFFF4FE5FFFF40CEF5FFFFFFFFFFFFFFFFFF4FE6FFFF4FE3FFFF489E
      E3FF000000000000000000000000000000000000000039AB39FF5BEB8EFF61F7
      93FF59F28CFF54ED87FF50EA84FF45E47AFFFFFFFFFFFFFFFFFFFFFFFFFF8DC8
      ACFF22C149FF009600FF000000000000000000000000CACBCBFFAC6E46FFBD64
      20FFC97534FFD07C3DFFD58243FFDA894CFFDB8C4FFFDA884CFFD58242FFCC77
      35FFC46A27FFA76439FFD2D2D2FF0000000000000000D4D4D4FF3E9ED2FF3495
      C9FFFBF3F0FFEFEFEFFFECECECFFE8E8E8FFE1E1E1FFE1E1E1FFE1E1E1FFECE6
      E2FF0268ABFFAEAAA7FF00000000000000000000000000000000000000000000
      00004A9FE3FF63F0FFFF56D0F3FFFFFFFFFFFFFFFFFF63F1FFFFAAF5FFFFD6DA
      DEFF000000000000000000000000000000000000000025A325FF65FB95FF64FE
      97FF61FA94FF54F58AFF9BF6B8FFFFFFFFFFFFFFFFFFFAFCFCFF34CB6EFF42DD
      75FF3FD874FF1CB636FF000000000000000000000000CCCCCCFFAB6D46FFB65B
      16FFC06A28FFCA7839FFD18448FFD5894FFFD38548FFCF7B3CFFC9732FFFC368
      24FFB95D17FFA25D31FFD3D4D4FF0000000000000000D5D4D4FF4CAADCFF369C
      D1FF349DD2FFFFFBF9FFF9F9F9FFF6F6F6FFEBEBEBFFE9E9E9FFEAEAEAFFEAEA
      EAFFF1EEECFFAAAAAAFF00000000000000000000000000000000000000000000
      0000D6DADEFFBAFBFFFF65CBF0FFFFFFFFFFFFFFFFFF77FAFFFF53A0E3FF0000
      00000000000000000000000000000000000000000000000000004DB04DFF51EC
      7BFF5BFF95FFE0FEEAFFFFFFFFFFFFFFFFFFB4E6CCFF44E67BFF4CE57FFF4DE6
      84FF12A91FFFCEEBCEFF000000000000000000000000CECECEFFAC6E46FFB358
      13FFB75F1AFFBF6B29FFC87636FFCB7D40FFCE8347FFCF854AFFCE864CFFCB85
      4BFFC98349FFB07A5BFFD5D6D6FF0000000000000000D5D4D4FF5EB8E7FF4BAC
      DDFF51B1DFFF4AAEDDFFF5FAFCFFFEFEFEFFFCFCFCFFFEFEFEFFFDFDFDFFFBFB
      FBFFF9F9F9FFB0B0B0FF00000000000000000000000000000000000000000000
      000000000000509EE2FF86FBFEFF46B4E8FF5ECFF0FFCDFFFFFFDCDFE3FF0000
      000000000000000000000000000000000000000000000000000000000000E3F3
      E3FF169D17FFFFFFFFFFFFFEFFFF6FED9DFF5BF68EFF59F28CFF46DE70FF2FA6
      2FFF0000000000000000000000000000000000000000D2D2D2FFAE6E45FFB759
      11FFB95D16FFBC611BFFBF6924FFC4702DFFC67634FFC87938FFC87A39FFC87C
      3EFFCA8244FFB17A59FFD9D9D9FF0000000000000000D5D5D4FF73C6F0FF64BC
      E8FF67BEE8FF6AC1E8FF65C0E6FFDFF2FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB5B5B5FF00000000000000000000000000000000000000000000
      000000000000DDE0E3FFDCFFFFFF9DFFFFFF9DFFFFFF549CE1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003BAA3BFF43E26CFF6AFF9EFF68FF9EFF20B831FFBCE3BCFF0000
      00000000000000000000000000000000000000000000D4D4D4FFE1D7D7FFD6CA
      CAFFD6C9CAFFD6C9CAFFD6C9CAFFD6C9CAFFD6C9CAFFD6C9CAFFD6C9CAFFD6C9
      CAFFD6C9CAFFDDD2D2FFD9D9D9FF0000000000000000D5D5D5FF86CEF6FF7AC7
      EFFF7BC7EEFF7AC9EDFF7BC9ECFF79CAEBFFC7EAF6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB9B9B9FF00000000000000000000000000000000000000000000
      000000000000000000004190DDFFCCFFFFFFF4FEFEFFEAEBEDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF0DCFF17AF23FF2CA62CFF00000000000000000000
      00000000000000000000000000000000000000000000F8F8F8FFD1D1D1FFD1D1
      D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FFD2D2D2FFF5F5F5FF0000000000000000F3F3F3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBDBDBDFF00000000000000000000000000000000000000000000
      00000000000000000000000000004B82BAFFA5B7CAFF00000000000000000000
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
      00000000000000000000000000000000FE7FFFFFFFFFFFFFFC3F4003FC7F0001
      F01FC001F81F0001E00FFC3FF00F0001C0078001E00F800180038001C0078003
      80038001C007C00380038001C003C007800380018003E007800380018003E00F
      800380018003F00F800380018003F01FC00380018003F81FE00F80018003F83F
      F81F80018003FC3FFC7F80018003FE7F00000000000000000000000000000000
      000000000000}
  end
  object dsData: TDataSource
    DataSet = memData
    Left = 63
    Top = 102
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 300
    Top = 161
    object acReadExcelData: TAction
      Caption = 'acReadData'
      OnExecute = acReadExcelDataExecute
      OnUpdate = acReadExcelDataUpdate
    end
    object acEditImportRule: TAction
      Caption = 'acEditImportRule'
      OnExecute = acEditImportRuleExecute
      OnUpdate = acEditImportRuleUpdate
    end
    object acImportProcess: TAction
      Caption = 'acImportProcess'
      ImageIndex = 64
      OnExecute = acImportProcessExecute
      OnUpdate = acImportProcessUpdate
    end
    object acClose: TAction
      Caption = 'acClose'
      ImageIndex = 67
      OnExecute = acCloseExecute
    end
    object acCommit: TAction
      Caption = 'acCommit'
      ImageIndex = 44
      OnExecute = acCommitExecute
      OnUpdate = acCommitUpdate
    end
    object acRollback: TAction
      Caption = 'acRollback'
      ImageIndex = 10
      OnExecute = acRollbackExecute
    end
    object acReadTextData: TAction
      Caption = 'acReadTextData'
      OnExecute = acReadTextDataExecute
    end
    object acReadData: TAction
      Caption = 'acReadData'
      ImageIndex = 20
      OnExecute = acReadDataExecute
    end
  end
  object dlgOpen: TOpenDialog
    Filter = 'Excel file (*.xls)|*.xls'
    Left = 34
    Top = 73
  end
  object xlsReader: TXLSReadWriteII
    Version = xvExcel97
    Formats = <>
    Sheets = <
      item
        Name = 'Sheet 1'
        DefaultColWidth = 8
        DefaultRowHeight = 255
        PrintSettings.Copies = 1
        PrintSettings.MarginBottom = -1.000000000000000000
        PrintSettings.MarginLeft = -1.000000000000000000
        PrintSettings.MarginRight = -1.000000000000000000
        PrintSettings.MarginTop = -1.000000000000000000
        PrintSettings.Options = [psoPortrait]
        PrintSettings.ScalingFactor = 100
        PrintSettings.StartingPage = 1
        PrintSettings.RowsOnEachPage = '-1:-1'
        PrintSettings.ColsOnEachPage = '-1:-1'
        PrintSettings.HorizPagebreaks = <>
        PrintSettings.VertPagebreaks = <>
        MergedCells = <>
        Options = [soGridlines, soRowColHeadings, soShowZeros]
        WorkspaceOptions = [woShowAutoBreaks, woRowSumsBelow, woColSumsRight, woOutlineSymbols]
        CalcCount = 100
        Delta = 0.001000000000000000
        Zoom = 100
        ZoomPreview = 100
        RecalcFormulas = True
        Notes = <>
        SheetPictures = <>
        ColumnFormats = <>
        Charts = <>
        FixedRows = 0
        FixedCols = 0
        Validations = <>
      end>
    Workbook.Left = 100
    Workbook.Top = 100
    Workbook.Width = 10000
    Workbook.Height = 7000
    Workbook.SelectedTab = 0
    Workbook.Options = [woHScroll, woVScroll, woTabs]
    OptionsDialog.SaveExtLinkVal = False
    OptionsDialog.CalcCount = 0
    OptionsDialog.CalcMode = cmAutomatic
    OptionsDialog.ShowObjects = soShowAll
    OptionsDialog.Iteration = False
    OptionsDialog.PrecisionAsDisplayed = False
    OptionsDialog.R1C1Mode = False
    OptionsDialog.RecalcBeforeSave = False
    OptionsDialog.Uncalced = False
    Font.Name = 'Arial'
    Font.Charset = ANSI_CHARSET
    Font.Color = xcBlack
    Font.Size = 10
    Font.Style = []
    Font.SubSuperScript = xssNone
    Font.Underline = xulNone
    Codepage = 1200
    BookProtected = False
    Backup = False
    RefreshAll = False
    WriteUnicodeStrings = False
    FuncArgSeparator = ','
    StrTRUE = 'TRUE'
    StrFALSE = 'FALSE'
    ShowFormulas = False
    PictureOptions = [poDeleteTempFiles]
    Pictures = <>
    IsMac = False
    AreaNames = <>
    Left = 34
    Top = 102
    Fonts = <
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end
      item
        Name = 'Arial'
        Charset = ANSI_CHARSET
        Color = xcBlack
        Size = 10
        Style = []
        SubSuperScript = xssNone
        Underline = xulNone
      end>
  end
  object memData: TdxMemData
    Indexes = <>
    SortOptions = []
    OnNewRecord = memDataNewRecord
    Left = 63
    Top = 73
    object memDataERROR_FLAG: TIntegerField
      FieldName = 'ERROR_FLAG'
    end
    object memDataERROR_MSG: TWideStringField
      FieldName = 'ERROR_MSG'
      Size = 1024
    end
  end
  object dsScript: TDataSource
    DataSet = qryScript
    Left = 82
    Top = 390
  end
  object qryScript: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'FORM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'GRID_NAME'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_IMPORT_UTILS'
      'WHERE'
      '   SCRIPT_ID = :OLD_SCRIPT_ID')
    EditSQL.Strings = (
      'UPDATE SYS_IMPORT_UTILS SET'
      '   SCRIPT_ID = :SCRIPT_ID, /*PK*/'
      '   FORM_NAME = :FORM_NAME,'
      '   GRID_NAME = :GRID_NAME,'
      '   SCRIPT_TEXT = :SCRIPT_TEXT,'
      '   SCRIPT_NAME = :SCRIPT_NAME,'
      '   SCRIPT_ORDER = :SCRIPT_ORDER,'
      '   IS_USED = :IS_USED'
      'WHERE'
      '   SCRIPT_ID = :OLD_SCRIPT_ID')
    GeneratorLinks.Strings = (
      'SCRIPT_ID=GEN_SYS_IMPORT_UTILS_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_IMPORT_UTILS('
      '   SCRIPT_ID, /*PK*/'
      '   FORM_NAME,'
      '   GRID_NAME,'
      '   SCRIPT_TEXT,'
      '   SCRIPT_NAME,'
      '   SCRIPT_ORDER,'
      '   IS_USED)'
      'VALUES ('
      '   :SCRIPT_ID,'
      '   :FORM_NAME,'
      '   :GRID_NAME,'
      '   :SCRIPT_TEXT,'
      '   :SCRIPT_NAME,'
      '   :SCRIPT_ORDER,'
      '   :IS_USED)')
    KeyLinks.Strings = (
      'SYS_IMPORT_UTILS.SCRIPT_ID')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryScriptNewRecord
    SQL.Strings = (
      'SELECT SCRIPT_ID'
      '     , FORM_NAME'
      '     , GRID_NAME'
      '     , SCRIPT_TEXT'
      '     , SCRIPT_NAME'
      '     , SCRIPT_ORDER'
      '     , IS_USED'
      'FROM SYS_IMPORT_UTILS'
      'where FORM_NAME=:FORM_NAME and'
      '      GRID_NAME=:GRID_NAME '
      'order by SCRIPT_ORDER      ')
    FieldOptions = []
    Left = 82
    Top = 361
    object qryScriptSCRIPT_ID: TIntegerField
      FieldName = 'SCRIPT_ID'
      Required = True
    end
    object qryScriptFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Required = True
      Size = 63
    end
    object qryScriptGRID_NAME: TWideStringField
      FieldName = 'GRID_NAME'
      Required = True
      Size = 63
    end
    object qryScriptSCRIPT_TEXT: TWideStringField
      FieldName = 'SCRIPT_TEXT'
      Size = 3072
    end
    object qryScriptSCRIPT_NAME: TWideStringField
      FieldName = 'SCRIPT_NAME'
      Size = 126
    end
    object qryScriptSCRIPT_ORDER: TIntegerField
      FieldName = 'SCRIPT_ORDER'
      Required = True
    end
    object qryScriptIS_USED: TIntegerField
      FieldName = 'IS_USED'
    end
  end
  object qryParam: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'SCRIPT_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_IMPORT_MAP'
      'WHERE'
      '   PARAM_NO = :OLD_PARAM_NO AND'
      '   SCRIPT_ID = :OLD_SCRIPT_ID AND'
      '   SOURCE_COL = :OLD_SOURCE_COL')
    EditSQL.Strings = (
      'UPDATE SYS_IMPORT_MAP SET'
      '   PARAM_NO = :PARAM_NO, /*PK*/'
      '   SCRIPT_ID = :SCRIPT_ID, /*PK*/'
      '   SOURCE_COL = :SOURCE_COL, /*PK*/'
      '   SOURCE_NAME = :SOURCE_NAME,'
      '   PARAM_NAME = :PARAM_NAME,'
      '   FUNC_NO = :FUNC_NO'
      'WHERE'
      '   PARAM_NO = :OLD_PARAM_NO AND'
      '   SCRIPT_ID = :OLD_SCRIPT_ID AND'
      '   SOURCE_COL = :OLD_SOURCE_COL')
    GeneratorLinks.Strings = (
      'SCRIPT_ID=GEN_SYS_IMPORT_UTILS_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_IMPORT_MAP('
      '   PARAM_NO, /*PK*/'
      '   SCRIPT_ID, /*PK*/'
      '   SOURCE_COL, /*PK*/'
      '   SOURCE_NAME,'
      '   PARAM_NAME,'
      '   FUNC_NO)'
      'VALUES ('
      '   :PARAM_NO,'
      '   :SCRIPT_ID,'
      '   :SOURCE_COL,'
      '   :SOURCE_NAME,'
      '   :PARAM_NAME,'
      '   :FUNC_NO)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryParamNewRecord
    DataSource = dsScript
    SQL.Strings = (
      'SELECT SCRIPT_ID'
      '     , SOURCE_COL'
      '     , SOURCE_NAME'
      '     , PARAM_NO'
      '     , PARAM_NAME'
      '     , FUNC_NO'
      'FROM SYS_IMPORT_MAP'
      'where SCRIPT_ID=:SCRIPT_ID')
    FieldOptions = []
    Left = 112
    Top = 361
    object qryParamSCRIPT_ID: TIntegerField
      FieldName = 'SCRIPT_ID'
      Required = True
    end
    object qryParamSOURCE_COL: TWideStringField
      FieldName = 'SOURCE_COL'
      Required = True
      Size = 63
    end
    object qryParamSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Required = True
      OnChange = qryParamSOURCE_NAMEChange
      Size = 63
    end
    object qryParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryParamPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 63
    end
    object qryParamFUNC_NO: TWideStringField
      FieldName = 'FUNC_NO'
      Size = 63
    end
  end
  object dsParam: TDataSource
    DataSet = qryParam
    Left = 112
    Top = 390
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Images = ImageList1
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsFlat
    UseSystemFont = False
    Left = 120
    Top = 168
    DockControlHeights = (
      0
      0
      0
      0)
    object dxDefineRule: TdxBarButton
      Action = acEditImportRule
      Caption = #272#7883'nh ngh'#297'a lu'#7853't'
      Category = 0
      Hint = #272#7883'nh ngh'#297'a lu'#7853't'
      Visible = ivAlways
      ImageIndex = 2
    end
  end
  object dxPopupMenu: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxDefineRule
        Visible = True
      end>
    UseOwnFont = False
    Left = 64
    Top = 200
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    RecordCountAccurate = True
    OnError = qryExecuteError
    FieldOptions = []
    Left = 152
    Top = 366
  end
end
