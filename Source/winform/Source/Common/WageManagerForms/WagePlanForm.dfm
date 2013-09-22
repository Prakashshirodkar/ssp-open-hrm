inherited frmWagePlan: TfrmWagePlan
  Left = 203
  Top = 103
  Width = 911
  Height = 618
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 565
    Width = 903
  end
  object pageLeft: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 225
    Height = 519
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = imlPageImage
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
    ActivePage = tabLeft
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alLeft
    ParentColor = False
    TabOrder = 1
    object tabLeft: TElTabSheet
      PageControl = pageLeft
      ImageIndex = 0
      TabVisible = True
      Caption = 'K'#7871' ho'#7841'ch l'#432#417'ng'
      object gridWagePlan: TdxDBGrid
        Left = 0
        Top = 0
        Width = 225
        Height = 495
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PLAN_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = dsWagePlan
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        OnChangeNode = gridWagePlanChangeNode
        object gridWagePlanPLAN_NAME: TdxDBGridColumn
          Caption = 'K'#7871' ho'#7841'ch l'#432#417'ng'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NAME'
          Caption_UTF7 = 'K+Hr8 ho+HqE-ch l+AbABoQ-ng'
        end
        object gridWagePlanAT_MONTH: TdxDBGridColumn
          Caption = 'th'#225'ng'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 37
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AT_MONTH'
          Caption_UTF7 = 'th+AOE-ng'
        end
        object gridWagePlanAT_YEAR: TdxDBGridColumn
          Caption = 'n'#259'm'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 38
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AT_YEAR'
          Caption_UTF7 = 'n+AQM-m'
        end
        object gridWagePlanAT_PERIOD: TdxDBGridColumn
          Caption = 'k'#7923
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 26
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AT_PERIOD'
          Caption_UTF7 = 'k+HvM'
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 225
    Top = 0
    Width = 5
    Height = 519
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageLeft
    ControlBottomRight = pageMain
    AutoHide = False
    Align = alLeft
    BevelInner = bvLowered
    BevelOuter = bvNone
    UseXPThemes = False
  end
  object pageMain: TElPageControl [3]
    Left = 230
    Top = 0
    Width = 673
    Height = 519
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = imlPageImage
    Multiline = False
    OnChanging = pageMainChanging
    OnChange = pageMainChange
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
    ActivePage = tabNoidung
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
    object tabNoidung: TElTabSheet
      PageControl = pageMain
      ImageIndex = 3
      TabVisible = True
      Caption = 'N'#7897'i dung t'#7893'ng h'#7907'p'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 673
        Height = 495
        Align = alClient
        BevelInner = bvNone
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxDBEdit1: TdxDBEdit
          Left = 104
          Top = 28
          Width = 90
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'PLAN_NO'
          DataSource = dsWagePlan
          StyleController = dmMain.StyleController
        end
        object dxDBEdit2: TdxDBEdit
          Left = 249
          Top = 28
          Width = 252
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          DataField = 'PLAN_NAME'
          DataSource = dsWagePlan
          StyleController = dmMain.StyleController
        end
        object dxInMonth: TdxDBImageEdit
          Left = 104
          Top = 51
          Width = 90
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 1
          Alignment = taCenter
          DataField = 'AT_MONTH'
          DataSource = dsWagePlan
          StyleController = dmMain.StyleController
          DropDownRows = 16777223
          PopupBorder = pbSingle
          StoredValues = 1
        end
        object dxDBSpinEdit1: TdxDBSpinEdit
          Left = 249
          Top = 51
          Width = 65
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          Alignment = taCenter
          DataField = 'AT_YEAR'
          DataSource = dsWagePlan
          StyleController = dmMain.StyleController
          MaxValue = 300.000000000000000000
          MinValue = 300.000000000000000000
          StoredValues = 49
        end
        object dxDBSpinEdit2: TdxDBSpinEdit
          Left = 331
          Top = 51
          Width = 65
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          Alignment = taCenter
          DataField = 'AT_PERIOD'
          DataSource = dsWagePlan
          StyleController = dmMain.StyleController
          MaxValue = 9.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 49
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 447
          Top = 51
          Width = 100
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 6
          Alignment = taCenter
          DataField = 'START_DATE'
          DataSource = dsWagePlan
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
          StoredValues = 1
        end
        object dxDBEdit3: TdxDBEdit
          Left = 104
          Top = 107
          Width = 90
          Color = clInfoBk
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          Alignment = taCenter
          DataField = 'TOTAL_EMP'
          DataSource = dsWagePlanReport
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 65
        end
        object dxDBEdit4: TdxDBEdit
          Left = 249
          Top = 107
          Width = 90
          Color = clInfoBk
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          Alignment = taCenter
          DataField = 'TOTAL_REGISTED'
          DataSource = dsWagePlanReport
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 65
        end
        object dxDBEdit5: TdxDBEdit
          Left = 409
          Top = 107
          Width = 90
          Color = clInfoBk
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          Alignment = taCenter
          DataField = 'TOTAL_UNREGISTED'
          DataSource = dsWagePlanReport
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 65
        end
        object dxDBEdit6: TdxDBEdit
          Left = 104
          Top = 130
          Width = 239
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          Alignment = taCenter
          DataField = 'TOTAL_WAGE_PLAN'
          DataSource = dsWagePlanReport
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 65
        end
        object tcGeneralReport: TDBChart
          Left = 2
          Top = 163
          Width = 1047
          Height = 462
          Border.Color = clGray
          Border.Visible = True
          LeftWall.Color = clYellow
          Title.AdjustFrame = False
          Title.Color = clSilver
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Title.Frame.Color = 3639974
          Title.Gradient.Balance = 61
          Title.Gradient.StartColor = 11655877
          Title.Shadow.Color = 10201309
          Title.Shadow.HorizSize = 2
          Title.Shadow.Transparency = 9
          Title.Shadow.VertSize = 2
          Title.Text.WideStrings = (
            ''
            '')
          Title.Transparent = False
          Title.Visible = False
          Chart3DPercent = 20
          DepthAxis.Automatic = False
          DepthAxis.AutomaticMaximum = False
          DepthAxis.AutomaticMinimum = False
          DepthAxis.Maximum = 0.500000000000000000
          DepthAxis.Minimum = -0.500000000000000000
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.LogarithmicBase = 2.718281828459050000
          Legend.ColorWidth = 10
          Legend.DividingLines.Color = clSilver
          Legend.DividingLines.Visible = True
          Legend.ShapeStyle = fosRoundRectangle
          Legend.Symbol.DefaultPen = False
          Legend.Symbol.Width = 10
          Legend.TextStyle = ltsRightValue
          View3DOptions.Elevation = 315
          View3DOptions.HorizOffset = 4
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DOptions.Zoom = 93
          View3DOptions.ZoomText = False
          Align = alClient
          BevelOuter = bvNone
          Color = 12510434
          TabOrder = 14
          object sPie: TPieSeries
            Marks.Angle = 360
            Marks.ArrowLength = 0
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.ArrowHead = ahSolid
            Marks.Callout.ArrowHeadSize = 0
            Marks.Callout.Length = 0
            Marks.Clip = True
            Marks.Font.Color = clBlue
            Marks.Style = smsPercent
            Marks.Visible = True
            DataSource = qryWagePlanReport
            SeriesColor = clGray
            XLabelsSource = 'CHILD_DEPT_NAME'
            OtherSlice.Legend.Visible = False
            PieValues.Name = 'Pie'
            PieValues.ValueSource = 'CHILD_WAGE_PLAN'
          end
          object ChartTool1: TPageNumTool
            Active = False
            Callout.Brush.Color = clBlack
            Callout.Arrow.Visible = False
            Text = 'Page %d of %d'
          end
        end
        object dxLockBook: TdxDBCheckEdit
          Left = 636
          Top = 28
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnClick = dxLockBookClick
          Alignment = taRightJustify
          DataField = 'LOCK_BOOK'
          DataSource = dsWagePlan
          StyleController = dmMain.StyleController
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnChange = dxLockBookChange
          NullStyle = nsUnchecked
          StoredValues = 1
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            Caption = 'Th'#244'ng tin k'#7871' ho'#7841'ch l'#432#417'ng'
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item1: TdxLayoutItem
                Caption = 'M'#227' k'#7871' ho'#7841'ch '
                Control = dxDBEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item3: TdxLayoutItem
                Caption = 'Th'#225'ng '
                Control = dxInMonth
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group3: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Ti'#234'u '#273#7873' '
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item11: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'Kh'#243'a b'#7843'ng l'#432#417'ng'
                  Control = dxLockBook
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item4: TdxLayoutItem
                  Caption = 'N'#259'm '
                  Control = dxDBSpinEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  Caption = 'K'#7923' '
                  Control = dxDBSpinEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Ng'#224'y t'#237'nh '
                  Control = dxDBDateEdit1
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            Caption = 'Th'#244'ng tin th'#7889'ng k'#234
            object dxLayoutControl1Group6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'T'#7893'ng s'#7889' nh'#226'n vi'#234'n'
                Control = dxDBEdit3
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = #272#227' ch'#7881' '#273#7883'nh'
                Control = dxDBEdit4
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ch'#432'a  ch'#7881' '#273#7883'nh'
                Control = dxDBEdit5
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'T'#7893'ng qu'#7929' l'#432#417'ng'
              Control = dxDBEdit6
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Control = tcGeneralReport
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object tabChitietKehoach: TElTabSheet
      PageControl = pageMain
      ImageIndex = 6
      TabVisible = True
      Caption = 'Chi ti'#7871't k'#7871' ho'#7841'ch'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 673
        Height = 495
        Align = alClient
        BevelInner = bvNone
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object tlDeptList: TdxDBTreeList
          Left = 2
          Top = 60
          Width = 294
          Height = 206
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'DEPT_NO'
          ParentField = 'P_DEPT_NO'
          TabOrder = 5
          DataSource = dsDetail
          Images = dmMain.imglDeptTree
          LookAndFeel = lfFlat
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
          ShowGrid = True
          TreeLineColor = clGrayText
          object tlDeptListDEPT_NAME: TdxDBTreeListColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            DisableEditor = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 279
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
          end
          object tlDeptListTOTAL_PLAN: TdxDBTreeListColumn
            Caption = 'T'#7893'ng qu'#7929' l'#432#417'ng c'#7911'a '#273#417'n v'#7883
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 167
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOTAL_PLAN'
            Caption_UTF7 = 'T+HtU-ng qu+Hvk l+AbABoQ-ng c+Huc-a +AREBoQ-n v+Hss'
          end
          object tlDeptListCAL_DATE: TdxDBTreeListDateColumn
            Caption = 'Ng'#224'y t'#237'nh l'#432#417'ng'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAL_DATE'
            Caption_UTF7 = 'Ng+AOA-y t+AO0-nh l+AbABoQ-ng'
          end
        end
        object ElPopupButton1: TElPopupButton
          Left = 499
          Top = 28
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 5
          UseImageList = True
          Images = imlPageImage
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&T'#237'nh l'#432#417'ng'
          TabOrder = 3
          Color = 15466238
          ParentColor = False
          Action = acTinhLuong
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 579
          Top = 28
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 7
          UseImageList = True
          Images = imlPageImage
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&B'#7843'ng l'#432#417'ng'
          TabOrder = 4
          Color = 15466238
          ParentColor = False
          Action = acXemBangluong
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object imOption: TdxImageEdit
          Left = 64
          Top = 29
          Width = 129
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          StyleController = dmMain.StyleController
          DropDownRows = 16777223
          PopupBorder = pbSingle
        end
        object chkViewAll: TdxCheckEdit
          Left = 259
          Top = 29
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          StyleController = dmMain.StyleController
        end
        object dxAutoOpen: TdxCheckEdit
          Left = 355
          Top = 28
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          StyleController = dmMain.StyleController
          State = cbsChecked
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group1: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'T'#249'y ch'#7885'n '#273#7875' t'#237'nh l'#432#417'ng'
            LayoutDirection = ldHorizontal
            UseIndent = False
            object dxLayoutControl2Item4: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Caption = 'Nh'#226'n vi'#234'n'
              Control = imOption
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Caption = 'T'#237'nh c'#7845'p d'#432#7899'i'
              Control = chkViewAll
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item6: TdxLayoutItem
              Caption = 'M'#7903' b'#7843'ng l'#432#417'ng'
              Control = dxAutoOpen
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Item2: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'dxDBTreeList1'
            ShowCaption = False
            Control = tlDeptList
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inline frameToolbar1: TframeToolbar [4]
    Left = 0
    Top = 519
    Width = 903
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 903
      inherited btnDelete: TElPopupButton
        Left = 2
      end
      inherited btnInsert: TElPopupButton
        Left = -123
      end
      inherited btnSave: TElPopupButton
        Left = 77
      end
      inherited btnCancel: TElPopupButton
        Left = 152
      end
      inherited btnClose: TElPopupButton
        Left = 845
      end
      inherited btnHelp: TElPopupButton
        Left = 715
      end
      inherited btnChoose: TElPopupButton
        Left = 785
      end
      inherited btnCopy: TElPopupButton
        Left = -23
      end
      inherited btnFirst: TElPopupButton
        Left = 232
      end
      inherited btnLast: TElPopupButton
        Left = 301
      end
      inherited btnPrevious: TElPopupButton
        Left = 255
      end
      inherited btnNext: TElPopupButton
        Left = 278
      end
      inherited btnDesign: TElPopupButton
        Left = 494
      end
      inherited btnPreview: TElPopupButton
        Left = 424
      end
      inherited btnPrint: TElPopupButton
        Left = 354
      end
      inherited btnInsertEx: TElPopupButton
        Left = -48
      end
      inherited btnSendMail: TElPopupButton
        Left = 329
      end
      inherited btnGenerate: TElPopupButton
        Left = 619
        Width = 91
        Hint = 'Ph'#195#161't sinh ph'#195#178'ng ban theo s'#198#161' '#196#8216#225#187#8220' t'#225#187#8226' ch'#225#187#169'c'
        ImageIndex = 4
        UseImageList = True
        Images = imlPageImage
        Caption = 'Ph'#225't sinh PB'
        Action = acPhatSinhPB
      end
      inherited btnRelation: TElPopupButton
        Left = 594
      end
      inherited ElPopupButton1: TElPopupButton
        Left = 569
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
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'K'#7871' ho'#7841'ch l'#432#417'ng c'#244'ng ty'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 176
    Top = 88
  end
  object imlPageImage: TImageList
    Left = 48
    Top = 272
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000009D4F2E009C4C29005D7679007BCA
      CA006E4732009C4C29009C4C29009C4C29008541240000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CA603300CA603300985636009CFF
      FF00C1532500CA603300CA603300CA603300854E360000000000000000000000
      00000000000000000000B6B9B900666F73000000000000000000000000000000
      0000000000000000000004040400084878000C70B80014181800141818002454
      780058585800000000000000000000000000F0DCA400F0D89800F0D89800F0D0
      9400F0D08400E0C08400F0C88000F0C0680088888800ECC05C00E8B040000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005F675F00000000000000000000000000AA4F2900CA603300C153250084EC
      EF00D0603200CA603300CA603300CA6033007A695B0000000000000000006F75
      76000D101100074E54000BA9B300356A7B000000000000000000000000000000
      00000000000004040400149CF000149CF00040B0F00034A4F000149CF0001C30
      380068C0F0006498B8000000000000000000F4E0B400F4E0B400F0DCA400F0DC
      A400F0D89800E0C8A000F0D08400F0C880008888880000000000546C78001838
      48000004040000000000000000000000000000000000ADA69900ADA69900ADA6
      9900ADA69900ADA69900ADA69900858585005F5E5A005D96B9003384B9000A3B
      5D005F675F00000000000000000000000000C5C8C800854E3600973E1A007BCA
      CA009C4C2900CA603300D46536007F7875000000000000000000000000009B9E
      9E0004ECFC0006C3DF0008ADD400476B75000000000000000000000000000000
      000000000000149CF000149CF00028282C00BCE0F8005CB8F000149CF000041C
      280070B8E00074C4F0005858580000000000F8E4C400F8E4C400F4E0B400F4E0
      B400F0DCA400E0D0A400F0D09400F0D08400888888000000000068C0F00038A8
      F8000004040000000000000000000000000000000000F9E5BC00ADA69900F8E1
      B000E3D2AD00F6DA9E00F5D59300858585005F5E5A007CC8F70044B0F7000D4F
      7C00000000005F675F0000000000000000000000000000000000959898005697
      BF008B543F006E38210000000000000000000000000000000000000000004949
      480005DDEC0007B8DA000A9CCA006F7576004CA44C004CA44C005CAC5C006CB4
      6C0004040400149CF0003088C800787C840098C0D800283438000878C800149C
      F000040404009CD4F80088A8B80000000000F8ECD400F8ECD400F8E4C400F8E4
      C400F4E0B400E0D4B400F0DCA400F0D09400505040006078880068C0F00038A8
      F8000848780000040400000000000000000000000000FAECCD00ADA69900F9E5
      BC00E4D4B200F7DEAA00858585005F5E5A007C99AC007CC8F70044B0F7001388
      D8000D4F7C00010B12005F675F0000000000000000008C93930048738C0078C8
      F80071C2F200767B7C000000000000000000000000000000000087908F0003E5
      EF0006CEE70006C3DF000D808D0087908F005CAC5C00040404005CAC5C000404
      04000404040034A4F0005CB8F00074C4F000344C5800405060000878C800149C
      F00004040400BCE0F8009CD4F80000000000F8ECD400F8ECD400F8ECD400F8EC
      D400F8E4C400E0D4B400F4E0B40034343000D8F0F800A0D8F80068C0F00038A8
      F8001498F0001498F000041014000000000000000000ADA69900ADA69900ADA6
      9900ADA69900858585005F5E5A00EEF8FE00B4E6FF007CC8F70044B0F700159B
      F700159BF7000C73B9000000000000000000000000006263630078C8F80078C8
      F800356A7B0000000000000000000000000000000000BDC0C00007C2C50002EB
      F50005D5EA000A57630000000000AFB1B1005CAC5C0078B8780080C080008CC4
      8C00344C580040B0F0005CA8D000E8ECE800BCE0F8005CB8F000149CF0000868
      A800CCDCE800CCE8F80088A8B80000000000F8F0E400F8F0E400F8F0E400F8EC
      D400F8ECD400E0D4B40014141400FFFFFF00D8F0F800A0D8F800404028000410
      14001498F0001498F0001498F0008080800000000000FCF2DC00ADA69900FBEE
      D400E5DBC6005F5E5A00EBEBEB00EEF8FE00ACD3EB005F5E5A005F5E5A000C6A
      AA00159BF700159BF700031D2E0000000000000000007E81820062A4C8000D10
      11003254670000000000AFB1B10000000000000000000B67720009FFFF0001FE
      FF0003E5EF0008B5C200767B7C00000000006CB46C00040404006CB46C000404
      04009CCC9C005CB8F00028343800FFFFFF0088A8B800DCECF800141818001418
      1800ECF4F800E8ECE8005858580000000000F8F8E800F8F0E400F8F0E400F8F0
      E400F8ECD400E0D8C40034343000404028003434300034342400F0D084007860
      380038A8F8001498F0001498F0006C70740000000000FCF4E300ADA69900FBF0
      D700E5DBC6005F5E5A005F5E5A005F5E5A005F5E5A00A89262005F5E5A000C6A
      AA00159BF700159BF700031F31000000000000000000A6A8A800325467000000
      000000000000000000009B9E9E00000000000D262A00868A8A000E969A0001FE
      FF0001FEFF0004ECFC0005D5EA004949480080C080000404040080C080000404
      04009CCC9C00406C880068B8E000C8CCCC00BCE0F8005CB8F000149CF0001418
      1800FFFFFF00B4BCBC000000000000000000F8F8F400F8F8E800F8F0E400F8F0
      E400F8F0E400E0D8C400F8E4C400F8E4C4008888880078684400204858002890
      D8001498F0001498F0000870B8008080800000000000ADA69900ADA69900ADA6
      9900ADA69900ADA69900E4D7BB00858585005F5E5A005F5E5A003EA4E700159B
      F700159BF7000D7CC9005F675F0000000000000000007E818200000000000000
      00000000000049494800000000002A2B2B003FF3FF0023E0ED0016E9F20005DD
      EC0000000000C5C8C80002F5FD000BA9B30080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00DCECDC0068B8E0007098B800BCE0F80058B0E00078889000F8F8
      F800E8ECE800000000000000000000000000F8F8F400F8F8F400F8F8E800F8F0
      E400F8F0E400E0D8C400F8ECD400C8BCA40088909800A0D8F80068C0F00038A8
      F8001498F00038404800808080000000000000000000FEFBF400ADA69900FCF4
      E300E6DDCA00FBEED400858585005F5E5A00B4E6FF007CC8F70044B0F7001491
      E8000B6DB0005F675F0000000000000000000000000000000000000000000000
      000000000000000000006263630057E4FF0048DDFA0037E7FB0000000000C9CC
      CC003B3C3C000D262A0001FEFF000E969A008CC48C00040404008CC48C000404
      0400CCE4CC0004040400040404004C7088001418180014181800DCECF800DCEC
      F80000000000000000000000000000000000FFFFFF00F8F8F400F8F8F400F8F8
      E800F8F0E400E0D8C400F8ECD40088888800D8F0F800A0D8F8005098C8002030
      30008080800000000000000000000000000000000000FEFBF400ADA69900FCF4
      E300E7E0D100858585005F5E5A00EEF8FE00B4E6FF00598BAA005A645B000000
      00005F675F000000000000000000000000000000000000000000000000000000
      00000D101100A1A3A3006BB8E60066CFF70057E4FF00AFB1B1008C93930008B5
      C20018FFFF0018FFFF000BA9B300000000008CC48C00ACD4AC00BCDCBC00DCEC
      DC00E8ECE800FFFFFF00FFFFFF00FFFFFF002C80B8005490B8007098B800CCE8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00D8F0F800A0D8F800000404001414
      1400084878000848780000203800000000005F5E5A00BF5B5900BF636100BF6E
      6E00BF736F00858585005F5E5A00EEF8FE00B4E6FF004B738B00222522000C6A
      AA000C73B90009568B0000000000000000000000000000000000000000000000
      00002877AC004586A9006BB8E60078CFFE007E8182000000000049777B0034F5
      FF0087908F00CFD2D200767B7C009B9E9E008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80000000000249CEC005CB8F00074C4F0009CD4
      F8009CD4F8003C4444000000000000000000FFFFFF00F8383800F8505000F85C
      5C00F8686800F8848400F890900088888800D8F0F800A0D8F80068C0F00038A8
      F8001498F0001498F00004101400000000008F8F8F00BF393900BF464600BF53
      5300BF636100BF6E6E004034340085858500B4E6FF007CC8F70044B0F700159B
      F700159BF70007436C005F675F00000000000000000000000000000000000000
      00002877AC00459DD50056AEE2004F5C620000000000000000005D76790048EA
      FF0011393F000B67720034F5FF00868A8A008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80048485000149CF0001C70A8005CB8F00068C0
      F00068C0F0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000004040088888800A0D8F80068C0F00038A8
      F8001498F0000018280000000000000000000000000000000000000000000000
      000000000000000000000000000027292A00708B9C007CC8F70044B0F7001388
      D800074067005F675F0000000000000000000000000000000000000000000000
      0000116FAE00318ECB00459DD500459DD500A1A3A30000000000000000004977
      7B0056D7FA0048DDFA005D7679000000000080C0800004040400040404000404
      040004040400040404000404040028282C0000000000000000001C78B8002870
      A000405060000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000068C0F00038A8
      F800000404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007CC8F70044B0F7000D4F
      7C005F675F000000000000000000000000000000000000000000000000000000
      0000116FAE00325467008C939300000000000000000000000000000000000000
      00005CC3E90056AEE200000000000000000080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00CCE4CC00CCE4CC00CCE4CC0094A4980000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000068C0F00038A8
      F800000404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E647B0022587B000727
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6967003B050700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868000000000000000000343434000404
      04000404040004040400343434000000000000000000000000007CC4F40038A8
      F000000000000000000000000000000000001373B0006B1B28003B0507000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0DCA400F0D89800F0D89800F0D0
      9400F0D08400E0C08400F0C88000F0C0680088888800ECC05C00E8B040000000
      00000000000000000000000000000000000010080800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800686868000000000098909000F4F4E400ECDC
      D400E0CCC000D4AC9C00C08868006C4028004C4C5000000000007CC4F40038A8
      F000000000000000000000000000000000002EB1DB001373B0006B1B28003B05
      0700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4E0B400F4E0B400F0DCA400F0DC
      A400F0D89800E0C8A000F0D08400F0C880008888880000000000546C78001838
      480000040400000000000000000000000000083C980010080800F0D09400F0E0
      A800F8E0B400F8E4C400F8ECD400C8B08800F8F4E400F8F4E400F8F4E400C8B0
      8800F8F8F400FFFFFF00FFFFFF0068686800D4C8C400FFFFFF00F8F4F400F4F4
      E400ECD4C400D8B8A000C4947800B0704400C8D0D000B0E0F8007CC4F40038A8
      F0001498F0001498F0000000000000000000000000002EB1DB001373B0006B1B
      28003B05070000000000A6A8A80083858500BEC0C00000000000000000000000
      000000000000000000000000000000000000F8E4C400F8E4C400F4E0B400F4E0
      B400F0DCA400E0D0A400F0D09400F0D08400888888000000000068C0F00038A8
      F800000404000000000000000000000000000C64F8000860C80010080800F0E0
      A800F0E0A800F8E4C40028282000C8B08800F8F4E400F8F4E400F8F4E400C8B0
      8800F8F8F400F8F8F400FFFFFF0068686800ECE4E400F8F4F400F8F4F400ECE4
      E400ECD4C400D8B8A000C4947800B8B8B800FFFFFF00B0E0F8004C4C50003434
      34001498F0001498F0000C70B8000000000000000000000000002EB1DB001373
      B0003B0507009E8B6200F5E2B900FDF1D500A999780010100F00000000000000
      000000000000000000000000000000000000F8ECD400F8ECD400F8E4C400F8E4
      C400F4E0B400E0D4B400F0DCA400F0D09400505040006078880068C0F00038A8
      F8000848780000040400000000000000000064543400087CF8000888E8000404
      0400C8B08800989084000074840004040400C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800686868000000000010080000744C34008C78
      6800DCC4B400D0A89000C0886800000000000000000000000000000000000000
      000068A0C8001498F0001498F00000000000000000000000000000000000A6BB
      D500CEB87900EAD5A900F1E4CB00FFFEFE00FFFEFE00F1E4CB003B382A000000
      0000CFD2D200D4C7C7000000000000000000F8ECD400F8ECD400F8ECD400F8EC
      D400F8E4C400E0D4B400F4E0B40034343000D8F0F800A0D8F80068C0F00038A8
      F8001498F0001498F0000410140000000000F0C86C00C0A060000C84D80008A4
      F80004040400001018000074840000E8E800DCCCB400F8F4E400F8F4E400C8B0
      8800F8F4E400F8F8F400F8F8F400686868000000000010080000E8AC2C00ECC4
      7800846C5C0080503400906040003434340000000000000000000000000030A0
      E0001498F0001498F000000000000000000000000000B5C1DA00809FE600585A
      6000DBBE840098B06600A5BD7E00ABC69000A9CB9B00A9CB9B002C261900D6BB
      BB00E47D7D00E47D7D00E578780000000000F8F0E400F8F0E400F8F0E400F8EC
      D400F8ECD400E0D4B40014141400FFFFFF00D8F0F800A0D8F800404028000410
      14001498F0001498F0001498F00080808000F0C06800F0C8780040404000044C
      780000BCF80000E0F800ECD4A4001058580000182400F8ECD40004040400C8B0
      8800F8F4E400F8F4E400F8F8F40068686800000000006C402800E8A00C00E8A4
      1C00E8A41C00E8AC2C00A89070006C40280000000000B0E0F8007CC4F40038A8
      F0000878C80050403800000000000000000000000000B5C1DA0086A2E4007777
      7700DABC7E00A1B169009EB77500A3C18800A4C48C00A3C1880073674B00E18B
      8B00E47D7D00DBA9A900E37F7F00DE999900F8F8E800F8F0E400F8F0E400F8F0
      E400F8ECD400E0D8C40034343000404028003434300034342400F0D084007860
      380038A8F8001498F0001498F0006C707400E4B4580050545400A0D8F80058B8
      F000003444000034440010080800C8C0B00000E8E8000404040000344400C8B0
      8800F8F4E400F8F4E400F8F4E400686868000000000090705C00E8AC2C00E8B4
      3C00E4B44C00E4B44C00E4B44C0000000000FFFFFF00B0E0F80068A0C8000000
      00000000000000000000000000000000000000000000B5C1DA0083A1E5005E64
      7300DABC7E00CEB879009BB26A00AFBF8200EBDCBD00EBDCBD003B382A00E18B
      8B00DCA3A30000000000E47A7A00E37F7F00F8F8F400F8F8E800F8F0E400F8F0
      E400F8F0E400E0D8C400F8E4C400F8E4C4008888880078684400204858002890
      D8001498F0001498F0000870B8008080800080808000E8F0F800A0D8F8004878
      98000C94EC0020A0F8000468A80098908400746C6400003444000088A800001C
      3400C8B08800C8B08800C8B08800686868000000000098786800ECC05C00F0C4
      6C00F0C46C00F0CC8400F0C46C0000000000FFFFFF00B0E0F800000000000000
      00001498F0001498F000000000000000000000000000B5C1DA0083A1E500BFC4
      CB00F9EDD400DABC7E0095A8570099AD5E00C6BD8100ECD19700979999000000
      00000000000000000000E47A7A00E37F7F00F8F8F400F8F8F400F8F8E800F8F0
      E400F8F0E400E0D8C400F8ECD400C8BCA40088909800A0D8F80068C0F00038A8
      F8001498F000384048008080800000000000705820008068300080683000F0C8
      78002030400020A0F80020A0F80090887800F8E0B40000748400ECDCB0001058
      680010080800F8ECD400F8ECD400686868006C40280098786800F0C46C00F0D4
      9400F0DCA400F0DCA400F0DCA400D0B87800FFFFFF00B0E0F8007CC4F40038A8
      F0001498F0001498F000000000000000000000000000B5C1DA0083A1E500C6CD
      D60097999900E1DACC00ECD19700A9AE64008B9657008E998D00000000000000
      0000D2CDCD00E0909000E37F7F00DE999900FFFFFF00F8F8F400F8F8F400F8F8
      E800F8F0E400E0D8C400F8ECD40088888800D8F0F800A0D8F8005098C8002030
      300080808000000000000000000000000000E8B03C00D0A0480054646C0058B8
      F00020A0F80020A0F800001C3400C8B08800F0E0A800F0E0A800F8E0B400C8B0
      8800044C780004040400040404006868680010080000E0B87800F0D49400F0DC
      A400F8E0C000F8E8C400F8E0C000F8E0B400B89870007C8080007CC4F40038A8
      F00000000000000000000000000000000000B5C1DA00B8C4DA0083A1E500C6CD
      D6000000000000000000B4B7B700ACBDAA0095B68C0095B68C00000000000000
      0000D2D0D000E47D7D00E2848400000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00D8F0F800A0D8F800000404001414
      140008487800084878000020380000000000A0782000E8F0F800A0D8F80058B8
      F0002878A80098804800F0D09400C8B08800F0D89800F0E0A800F0E0A800C8B0
      8800F8E0B40000407800087CF800686868006C402800E0B87800F0DCA400F8E8
      C400F4F4E400F4F4E400F4F4E400F8ECD400CC9C84007C8080007CC4F40038A8
      F0000000000000000000000000000000000083A1E50092AAE20083A1E500C6CD
      D6000000000000000000CBD1CD000000000095B68C008CB28200000000000000
      000000000000DBA9A900E47D7D00D4C7C700FFFFFF00F8383800F8505000F85C
      5C00F8686800F8848400F890900088888800D8F0F800A0D8F80068C0F00038A8
      F8001498F0001498F000041014000000000034343000E8F0F800A0D8F8008068
      300010304800044C780000101800C8B08800F0D09400F0D09400F0D89800C8B0
      8800F0E0A800003458000870F80068686800ACA4A000B87C5C00D0A88000F8E0
      C000F8F4F400F8F4F400F8F4F400F4F4E400C494780000000000000000000000
      00000000000000000000000000000000000083A1E50083A1E50083A1E500C6CD
      D600000000008CB282008CB28200000000009CBA94008CB2820000000000E090
      9000DBA9A90000000000E47D7D00DBA9A9000000000000000000000000000000
      00000000000000000000000000000004040088888800A0D8F80068C0F00038A8
      F8001498F00000182800000000000000000070500800E8F0F800A0D8F80058B8
      F00020A0F80020A0F80010080800C8B08800F0CC8400F0D09400F0D09400C8B0
      8800040404000404040004040400686868001008000084644C00F4F4E400B8B0
      A80084644C00A45C3400B0704400CC9C8400B87C5C0000000000000000000000
      00000000000000000000000000000000000000000000809FE60083A1E500C6CD
      D60000000000A2BD9C0090B4860095B68C0090B486008CB2820000000000E47A
      7A00E47D7D00E0909000E37F7F00D6BBBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000068C0F00038A8
      F80000040400000000000000000000000000E8A818007050080054646C0058B8
      F0000C84D80090702C00ECC05C00C8B08800F0C87800F0C87800F0C87800C8B0
      8800F0D09400F0D09400F0D09400686868000000000000000000000000000000
      00006C402800100800006C402800B8A898008C7C740000000000000000000000
      00000000000000000000000000000000000000000000BEC8D80083A1E500C6CD
      D60000000000CFD2D2008CB2820090B486008CB28200C1CCC10000000000D7B7
      B700E47D7D00E37F7F00E47D7D00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000068C0F00038A8
      F80000040400000000000000000000000000E8A00C00E8A00C004040400058B8
      F0000C70B800E8B03C00E8B84C00C8B08800F0C06800F0C06800F0C86C00C8B0
      8800F0C87800F0C87800F0C8780068686800424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007FFFFF000FFFFF007CFC07000F0007
      0060F8030007000700E0000100070003C3E000010003000183C0000100010001
      8382000100000001818100010000000181000003000000018208000700010003
      FC20000F00070007F001000700010001F040000300010001F0C00003FE03FE03
      F0610007FF87FF07F1F3007FFF87FF0FFFFF3FFF000F0000C1871FFF000F0000
      80070FFF000700000003847F000700000001C03F000300000031E01300010000
      80C18001000000008003800000000000801F8004000000008001801C00010000
      000380300007000000070C310001000000070D380001000000070924FE030000
      007F8820FF870000F07F8821FF87000000000000000000000000000000000000
      000000000000}
  end
  object dsWagePlanReport: TDataSource
    DataSet = qryWagePlanReport
    Left = 104
    Top = 200
  end
  object qryWagePlanReport: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
        Value = Null
      end>
    DatabaseName = 
      'ssplocal.ssp.com.vn:C:\Program Files\FireBird\Database\HRM_DB.gd' +
      'b'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWagePlan
    SQL.Strings = (
      'SELECT'
      '   TOTAL_EMP ,'
      '   TOTAL_REGISTED,'
      '   TOTAL_EMP-TOTAL_REGISTED TOTAL_UNREGISTED,'
      '   TOTAL_WAGE_PLAN ,'
      '   CHILD_DEPT ,'
      '   CHILD_P_DEPT ,'
      '   CHILD_DEPT_NAME ,'
      '   CHILD_WAGE_PLAN'
      'from HR_WAGE_PLAN_REPORT (:PLAN_NO)   '
      '')
    FieldOptions = []
    Left = 104
    Top = 160
    object qryWagePlanReportTOTAL_EMP: TIntegerField
      FieldName = 'TOTAL_EMP'
    end
    object qryWagePlanReportTOTAL_REGISTED: TIntegerField
      FieldName = 'TOTAL_REGISTED'
    end
    object qryWagePlanReportTOTAL_UNREGISTED: TLargeintField
      FieldName = 'TOTAL_UNREGISTED'
      ReadOnly = True
    end
    object qryWagePlanReportTOTAL_WAGE_PLAN: TIBOFloatField
      FieldName = 'TOTAL_WAGE_PLAN'
    end
    object qryWagePlanReportCHILD_DEPT: TWideStringField
      FieldName = 'CHILD_DEPT'
      Size = 15
    end
    object qryWagePlanReportCHILD_P_DEPT: TWideStringField
      FieldName = 'CHILD_P_DEPT'
      Size = 15
    end
    object qryWagePlanReportCHILD_DEPT_NAME: TWideStringField
      FieldName = 'CHILD_DEPT_NAME'
      Size = 126
    end
    object qryWagePlanReportCHILD_WAGE_PLAN: TIBOFloatField
      FieldName = 'CHILD_WAGE_PLAN'
    end
  end
  object qryWagePlan: TIBOQuery
    Params = <>
    DatabaseName = 
      'ssplocal.ssp.com.vn:C:\Program Files\FireBird\Database\HRM_DB.gd' +
      'b'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_PLAN'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_PLAN SET'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   PLAN_NAME = :PLAN_NAME,'
      '   AT_MONTH = :AT_MONTH,'
      '   AT_YEAR = :AT_YEAR,'
      '   AT_PERIOD = :AT_PERIOD,'
      '   START_DATE = :START_DATE,'
      '   LOCK_BOOK = :LOCK_BOOK'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_PLAN('
      '   PLAN_NO, /*PK*/'
      '   PLAN_NAME,'
      '   AT_MONTH,'
      '   AT_YEAR,'
      '   AT_PERIOD,'
      '   START_DATE,'
      '   LOCK_BOOK)'
      'VALUES ('
      '   :PLAN_NO,'
      '   :PLAN_NAME,'
      '   :AT_MONTH,'
      '   :AT_YEAR,'
      '   :AT_PERIOD,'
      '   :START_DATE,'
      '   :LOCK_BOOK)')
    KeyLinks.Strings = (
      'HR_WAGE_PLAN.PLAN_NO')
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryWagePlanAfterScroll
    AfterPost = qryWagePlanAfterPost
    OnNewRecord = qryWagePlanNewRecord
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , PLAN_NAME'
      '     , AT_MONTH'
      '     , AT_YEAR'
      '     , AT_PERIOD'
      '     , START_DATE'
      '     , LOCK_BOOK'
      'FROM HR_WAGE_PLAN '
      'order by PERIOD_ID')
    FieldOptions = []
    Left = 48
    Top = 160
    object qryWagePlanPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryWagePlanPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Required = True
      Size = 126
    end
    object qryWagePlanAT_MONTH: TIntegerField
      FieldName = 'AT_MONTH'
      Required = True
    end
    object qryWagePlanAT_YEAR: TIntegerField
      FieldName = 'AT_YEAR'
      Required = True
    end
    object qryWagePlanAT_PERIOD: TIntegerField
      FieldName = 'AT_PERIOD'
      Required = True
    end
    object qryWagePlanSTART_DATE: TDateField
      FieldName = 'START_DATE'
      Required = True
    end
    object qryWagePlanLOCK_BOOK: TSmallintField
      FieldName = 'LOCK_BOOK'
    end
  end
  object dsWagePlan: TDataSource
    DataSet = qryWagePlan
    Left = 48
    Top = 200
  end
  object qryDetail: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'ssplocal.ssp.com.vn:C:\Program Files\FireBird\Database\HRM_DB.gd' +
      'b'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWagePlan
    SQL.Strings = (
      'SELECT '
      '  HR_WAGE_PLAN_DETAIL.DEPT_NO,'
      '  HR_DEPARTMENT.P_DEPT_NO,'
      '  HR_DEPARTMENT.DEPT_NAME,'
      '  HR_WAGE_PLAN_DETAIL.TOTAL_PLAN,'
      '  HR_WAGE_PLAN_DETAIL.CAL_DATE '
      'from HR_WAGE_PLAN_DETAIL'
      'JOIN HR_DEPARTMENT on'
      '    HR_WAGE_PLAN_DETAIL.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'where  HR_WAGE_PLAN_DETAIL.PLAN_NO=:PLAN_NO'
      'order by display_index  ')
    FieldOptions = []
    Left = 152
    Top = 160
    object qryDetailDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDetailP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDetailDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDetailTOTAL_PLAN: TIBOFloatField
      FieldName = 'TOTAL_PLAN'
    end
    object qryDetailCAL_DATE: TDateField
      FieldName = 'CAL_DATE'
    end
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 152
    Top = 200
  end
  object ActionList1: TActionList
    Images = imlPageImage
    Left = 110
    Top = 240
    object acXemChitiet: TAction
      Caption = 'acXemChitiet'
      ImageIndex = 1
      OnExecute = acXemChitietExecute
    end
    object acTinhLuong: TAction
      Caption = 'acTinhLuong'
      ImageIndex = 5
      OnExecute = acTinhLuongExecute
    end
    object acXemBangluong: TAction
      Caption = 'acXemBangluong'
      ImageIndex = 7
      OnExecute = acXemBangluongExecute
    end
    object acPhatSinhPB: TAction
      Caption = 'acPhatSinhPB'
      ImageIndex = 4
      OnExecute = acPhatSinhPBExecute
      OnUpdate = acPhatSinhPBUpdate
    end
  end
  object qryUpdateWagePlan: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAL_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'ssplocal.ssp.com.vn:C:\Program Files\FireBird\Database\HRM_DB.gd' +
      'b'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWagePlan
    SQL.Strings = (
      'execute procedure HR_WAGE_PLAN_UPDATE'
      '   (:USER_NAME,'
      '    :PLAN_NO,'
      '    :DEPT_NO,'
      '    :VIEW_ALL,'
      '    :CAL_DATE)')
    FieldOptions = []
    Left = 160
    Top = 296
  end
  object qryPhatsinhPB: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'ssplocal.ssp.com.vn:C:\Program Files\FireBird\Database\HRM_DB.gd' +
      'b'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWagePlan
    SQL.Strings = (
      'execute procedure HR_WAGE_PLAN_DETAIL_UPDATE'
      '   (:USER_NAME,'
      '    :PLAN_NO)')
    FieldOptions = []
    Left = 152
    Top = 240
  end
end
