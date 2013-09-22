inherited frmLuong_ThietkePA: TfrmLuong_ThietkePA
  Left = 241
  Top = 146
  Width = 913
  Height = 547
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object CopyMemo: TdxMemo [0]
    Left = 312
    Top = 344
    Width = 89
    TabOrder = 4
    Visible = False
    Height = 17
  end
  object dxHSHuongdan: TdxDBMemo [1]
    Left = 464
    Top = 288
    Width = 241
    TabOrder = 2
    Visible = False
    DataField = 'HAMSO_HUONGDAN'
    DataSource = dsMathFunction
    StyleController = dmMain.StyleController
    Height = 161
  end
  inherited sbMain: TElStatusBar
    Top = 494
    Width = 905
  end
  object dxlcTop: TdxLayoutControl [3]
    Left = 0
    Top = 0
    Width = 905
    Height = 233
    Align = alTop
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridDemo: TdxTreeList
      Left = 14
      Top = 28
      Width = 877
      Height = 141
      Bands = <
        item
          Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n m'#7851'u'
          DisableCustomizing = True
          DisableDragging = True
          Fixed = bfLeft
          OnlyOwnColumns = True
          Width = 264
        end>
      DefaultLayout = False
      HeaderMinRowCount = 3
      HeaderPanelRowCount = 1
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
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      Options = [aoColumnSizing, aoColumnMoving, aoEditing, aoTabThrough, aoDrawEndEllipsis, aoExtMultiSelect]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      TreeLineColor = clGrayText
      ShowBands = True
      ShowGrid = True
      ShowLines = False
      ShowRoot = False
      OnMouseDown = gridDemoMouseDown
      OnCustomDrawBand = gridDemoCustomDrawBand
      OnChangedColumnsWidth = gridDemoChangedColumnsWidth
      OnBandClick = gridDemoBandClick
      OnDragEndHeader = gridDemoDragEndHeader
      OnColumnClick = gridDemoColumnClick
      OnHeaderMoved = gridDemoHeaderMoved
      OnCustomDraw = gridDemoCustomDraw
      OnChangeColumn = gridDemoChangeColumn
      Data = {
        FFFFFFFF05000000180000000000000000000000FFFFFFFF0000000000000000
        020000000100000031100000004E0067007500790065006E0020005600180000
        000000000000000000FFFFFFFF00000000000000000200000001000000320100
        000032180000000000000000000000FFFFFFFF00000000000000000200000001
        000000330100000033180000000000000000000000FFFFFFFF00000000000000
        000200000001000000340100000034180000000000000000000000FFFFFFFF00
        000000000000000200000001000000350100000035}
      object gridDemoEMPLOYEE_NO: TdxTreeListColumn
        Tag = -1
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        Color = 12566527
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 51
        BandIndex = 0
        RowIndex = 0
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridDemoFULL_NAME: TdxTreeListColumn
        Tag = -1
        Alignment = taLeftJustify
        Caption = 'H'#7885' v'#224' t'#234'n'
        Color = 12566527
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 187
        BandIndex = 0
        RowIndex = 0
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
    end
    object dxlcTopGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcTopGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'I. B'#7842'NG L'#431#416'NG M'#7850'U'
        object dxlcTopItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'gridDemo'
          ShowCaption = False
          Control = gridDemo
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxBarDockControl1: TdxBarDockControl [4]
    Left = 0
    Top = 233
    Width = 905
    Height = 56
    Align = dalTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BarManager = dxBarManager1
  end
  object panelMain: TPanel [5]
    Left = 0
    Top = 289
    Width = 905
    Height = 205
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 9
    object panelRight: TPanel
      Left = 512
      Top = 1
      Width = 392
      Height = 203
      Align = alRight
      TabOrder = 0
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 390
        Height = 201
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object pageUtility: TElPageControl
          Left = 14
          Top = 28
          Width = 289
          Height = 149
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = True
          Images = imlIcon
          MinTabWidth = -1
          Multiline = False
          OnChange = pageUtilityChange
          RaggedRight = False
          ScrollOpposite = False
          Style = etsTabs
          TabIndex = 0
          TabPosition = etpTop
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ActivePage = tabMessage
          FlatTabBorderColor = clBtnShadow
          DraggablePages = False
          ActiveTabFont.Charset = DEFAULT_CHARSET
          ActiveTabFont.Color = clWindowText
          ActiveTabFont.Height = -11
          ActiveTabFont.Name = 'MS Sans Serif'
          ActiveTabFont.Style = []
          TabCursor = crDefault
          ParentColor = False
          TabOrder = 3
          object tabMessage: TElTabSheet
            PageControl = pageUtility
            ImageIndex = 7
            TabVisible = True
            Caption = 'Th'#244'ng b'#225'o'
            object memoInfo: TElMemoCombo
              Left = 0
              Top = 0
              Width = 285
              Height = 123
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
              AltButtonThinFrame = True
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
              ScrollBars = ssBoth
              Multiline = True
              Align = alClient
              ActiveBorderType = fbtFlat
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
          end
          object tabMathFunction: TElTabSheet
            PageControl = pageUtility
            ImageIndex = 12
            TabVisible = True
            Caption = 'H'#224'm s'#7889' to'#225'n h'#7885'c'
            Visible = False
            object gridMathFunction: TdxDBGrid
              Left = 0
              Top = 0
              Width = 285
              Height = 123
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'HAMSO_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnDblClick = gridMathFunctionDblClick
              OnKeyDown = gridMathFunctionKeyDown
              DataSource = dsMathFunction
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
              object gridMathFunctionHAMSO_ID: TdxDBGridColumn
                Caption = 'K'#253' hi'#7879'u'
                DisableEditor = True
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HAMSO_ID'
                Caption_UTF7 = 'K+AP0 hi+Hsc-u'
              end
              object gridMathFunctionHAMSO_KYHIEU: TdxDBGridColumn
                Caption = 'Bi'#7875'u th'#7913'c nh'#7853'p nhanh'
                DisableCustomizing = True
                DisableEditor = True
                HeaderAlignment = taCenter
                Visible = False
                BandIndex = 0
                RowIndex = 0
                DisableGrouping = True
                FieldName = 'HAMSO_KYHIEU'
                DisableFilter = True
                Caption_UTF7 = 'Bi+HsM-u th+Huk-c nh+Hq0-p nhanh'
              end
              object gridMathFunctionHAMSO_TIEUDE: TdxDBGridPopupColumn
                Caption = 'H'#224'm s'#7889
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HAMSO_TIEUDE'
                OnInitPopup = gridMathFunctionHAMSO_TIEUDEInitPopup
                Caption_UTF7 = 'H+AOA-m s+HtE'
              end
            end
          end
          object tabFormular: TElTabSheet
            PageControl = pageUtility
            ImageIndex = 16
            TabVisible = True
            Caption = 'C'#244'ng th'#7913'c l'#432#417'ng kh'#225'c'
            Visible = False
            object gridCongthuc: TdxDBGrid
              Left = 0
              Top = 0
              Width = 285
              Height = 123
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'CT_MA'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnDblClick = gridCongthucDblClick
              OnKeyDown = gridMathFunctionKeyDown
              DataSource = dsCongthucKhac
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
              object gridCongthucCT_KYHIEU: TdxDBGridColumn
                Caption = 'K'#253' hi'#7879'u'
                HeaderAlignment = taCenter
                Width = 119
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CT_KYHIEU'
                Caption_UTF7 = 'K+AP0 hi+Hsc-u'
              end
              object gridCongthucCT_TIEUDE: TdxDBGridColumn
                Caption = 'Ti'#234'u '#273#7873
                HeaderAlignment = taCenter
                Width = 237
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CT_TIEUDE'
                Caption_UTF7 = 'Ti+AOo-u +AREewQ'
              end
              object gridCongthucCT_BIEUTHUC: TdxDBGridColumn
                Caption = 'Bi'#7875'u th'#7913'c'
                HeaderAlignment = taCenter
                Visible = False
                Width = 18436
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CT_BIEUTHUC'
                Caption_UTF7 = 'Bi+HsM-u th+Huk-c'
              end
            end
          end
          object tabSystemFunction: TElTabSheet
            PageControl = pageUtility
            ImageIndex = 17
            TabVisible = True
            Caption = 'H'#224'm s'#7889' h'#7879' th'#7889'ng'
            Visible = False
            object gridSysFunction: TdxDBGrid
              Left = 0
              Top = 0
              Width = 285
              Height = 123
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'HAMSO_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnDblClick = acDinhnghiaHamsoExecute
              OnKeyDown = gridSysFunctionKeyDown
              DataSource = dsSysFunction
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
              object dxDBGridColumn1: TdxDBGridColumn
                Caption = 'K'#253' hi'#7879'u'
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HAMSO_ID'
                Caption_UTF7 = 'K+AP0 hi+Hsc-u'
              end
              object dxDBGridColumn2: TdxDBGridColumn
                Caption = 'Bi'#7875'u th'#7913'c nh'#7853'p nhanh'
                DisableCustomizing = True
                DisableEditor = True
                HeaderAlignment = taCenter
                Visible = False
                Width = 148
                BandIndex = 0
                RowIndex = 0
                DisableGrouping = True
                FieldName = 'HAMSO_KYHIEU'
                DisableFilter = True
                Caption_UTF7 = 'Bi+HsM-u th+Huk-c nh+Hq0-p nhanh'
              end
              object dxDBGridPopupColumn1: TdxDBGridPopupColumn
                Caption = 'H'#224'm s'#7889
                HeaderAlignment = taCenter
                Width = 183
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HAMSO_TIEUDE'
                OnInitPopup = gridMathFunctionHAMSO_TIEUDEInitPopup
                Caption_UTF7 = 'H+AOA-m s+HtE'
              end
            end
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcUtility: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'TI'#7878'N '#205'CH H'#7894' TR'#7906
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'pageUtility'
              ShowCaption = False
              Control = pageUtility
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object ElSplitter1: TElSplitter
      Left = 507
      Top = 1
      Width = 5
      Height = 203
      Cursor = crHSplit
      SnapTopLeft = False
      SnapBottomRight = True
      ControlTopLeft = panelLeft
      ControlBottomRight = panelRight
      AutoHide = False
      Align = alRight
      BevelOuter = bvLowered
      UseXPThemes = False
    end
    object panelLeft: TPanel
      Left = 1
      Top = 1
      Width = 506
      Height = 203
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object dxlcMain: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 506
        Height = 203
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxCT_TIEUDE: TdxDBEdit
          Left = 61
          Top = 51
          Width = 471
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          DataField = 'CT_TIEUDE'
          DataSource = dsCongthuc
          StyleController = dmMain.StyleController
        end
        object dxCT_BIEUTHUC: TdxDBMemo
          Left = 61
          Top = 74
          Width = 517
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          DataField = 'CT_BIEUTHUC'
          DataSource = dsCongthuc
          StyleController = dmMain.StyleController
          Height = 122
        end
        object dxCT_KYHIEU: TdxDBEdit
          Left = 61
          Top = 28
          Width = 471
          Hint = 'Khong bat dau ky hieu bang so hay ky tu dac biet (*,-,/,\....)'
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'CT_KYHIEU'
          DataSource = dsCongthuc
          StyleController = dmMain.StyleController
        end
        object dxCT_KieuDuLieu: TdxDBImageEdit
          Left = 371
          Top = 28
          Width = 121
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 2
          DataField = 'CT_KIEUDULIEU'
          DataSource = dsCongthuc
          StyleController = dmMain.StyleController
          DropDownRows = 16777223
          PopupBorder = pbSingle
          Descriptions.WideStrings = (
            'S'#7889' th'#7921'c'
            'Text'
            'Ng'#224'y'
            'Ghi ch'#250)
          ImageIndexes.WideStrings = (
            '0'
            '1'
            '2'
            '3')
          Values.WideStrings = (
            'DOUBLE'
            'VARCHAR'
            'DATE'
            'MEMO')
        end
        object dxCT_KieuNhapLieu: TdxDBImageEdit
          Left = 371
          Top = 51
          Width = 121
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 3
          DataField = 'CT_HINHTHUC_NHAPLIEU'
          DataSource = dsCongthuc
          StyleController = dmMain.StyleController
          DropDownRows = 16777223
          PopupBorder = pbSingle
          Descriptions.WideStrings = (
            'T'#7921' '#273#7897'ng t'#237'nh to'#225'n'
            #193'p d'#7909'ng chung'
            'Nh'#7853'p theo '#273#417'n v'#7883
            'Nh'#7853'p theo ch'#7913'c v'#7909
            'Nh'#7853'p theo v'#7883' tr'#237
            'Nh'#7853'p theo c'#225' nh'#226'n'
            'T'#7921' '#273#7897'ng c'#7853'p nh'#7853't')
          ImageIndexes.WideStrings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          Values.WideStrings = (
            'TINHTOAN'
            'AD_CHUNG'
            'AD_DONVI'
            'AD_CHUCVU'
            'AD_VITRI'
            'AD_CANHAN'
            'TUDONG_CAPNHAT')
        end
        object dxlcMainGroup_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainGroup3: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'II. '#272#7882'NH NGH'#296'A C'#7896'T L'#431#416'NG ( C'#212'NG TH'#7912'C L'#431#416'NG) :'
            object dxlcMainGroup4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainGroup5: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxlcMainItem5: TdxLayoutItem
                  Caption = 'K'#253' hi'#7879'u'
                  Control = dxCT_KYHIEU
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem2: TdxLayoutItem
                  Caption = 'Ti'#234'u '#273#7873
                  Control = dxCT_TIEUDE
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcMainGroup6: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxlcMainItem6: TdxLayoutItem
                  Caption = 'Ki'#7875'u d'#7919' li'#7879'u'
                  Control = dxCT_KieuDuLieu
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem7: TdxLayoutItem
                  Caption = 'Ki'#7875'u nh'#7853'p li'#7879'u'
                  Control = dxCT_KieuNhapLieu
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxlcMainItem3: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'Bi'#7875'u th'#7913'c'
              CaptionOptions.AlignVert = tavTop
              Control = dxCT_BIEUTHUC
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
        Caption = '* '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 704
    Top = 128
  end
  object imlIcon: TImageList
    Left = 24
    Top = 408
    Bitmap = {
      494C010117001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3B7B7FF947171FF957171FF967271FF977372FF9673
      73FF977474FF987575FF937070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A08080FFE2D6D2FFE7D8D4FFEBDCD9FFEFE0DEFFF4E5
      E3FFF9EAEAFFEFE3E0FFE7D5D6FF000000000000000000000000000000000000
      0000000000000000000000000000E5ECE5FF3D7A40FFBAD7BBFF3BD36EFF40CE
      6BFF42BC5DFF3D7A40FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A48383FFDED0CCFFDFD0CBFFEBDBD9FFF5E6E5FFFDF0
      F0FFF4E7E6FFF9EBEAFFE9D6D6FF0000000000000000FCFCFCFFF3F3F3FFE6E6
      E6FFD6D6D6FFC4C4C4FFB7B7B7FFA0A4A0FFA1E3B3FF5CE892FF4CF595FF58DD
      82FF5BC771FF3BB752FF3D7A40FF000000000000000000000000000000000000
      00000000000000000000159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A48383FFDACDC8FFD3C4BEFFDCCBC8FFD1C1BBFFDFD0
      CCFFFAEBEAFFF1E5E3FFE3D1D0FF00000000E7E7E7FFBCBCBCFF7A7A7AFFA9A9
      A9FFE2E2E2FFF4F4F4FFEEEEEEFFB9C5B8FFC9EED2FF82E4A3FF5BBC6EFF7D75
      7DFFB6B6B6FF93A293FF49B555FFDCE9DCFF0000000000000000000000000000
      000000000000159128FF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A48484FFD6CAC5FFC3B3AAFFE5D5D2FFEEDEDCFFEEDF
      DCFFEADBD8FFEDE0DEFFDECCCAFF0000000000000000A7A7A7FFBDBDBDFFE4E4
      E4FFFFFFFFFFFEFEFEFFEFEFEFFFC7CCC7FF65A069FF67A26CFF69A56FFF437B
      46FF8C8F8CFFFCFCFCFFDBE9DBFF00000000000000000000000000000000FEFE
      FEFF159128FF90E3B7FF159128FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A86E6EFFD8B4B1FFD9B6B4FFDBB9
      B8FFDDBCBBFFE5C2C4FF947B76FFC5C0B5FFC3B3ADFFC2B0A9FFF5E9EAFFDDCF
      CBFFDBCCC7FFE3D8D4FFD9C7C4FF0000000000000000ABABABFFBABABAFFDDDD
      DDFFEAEAEAFFE4E4E4FFDFDFDFFFE2DEE2FF4A8E4BFFD4CAD4FFB2ADB2FF858F
      86FF4FD879FF4FCD72FF4AC467FF000000000000000000000000FEFEFEFF1591
      28FF58CC8AFF58CC88FF159128FF159128FF159128FF159128FF159128FF1591
      28FF159128FF159128FF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE1C6C1FFEDD5D1FFF0DA
      D8FFF6E3E2FF337E2AFF3ED268FF46D970FF4EE177FF48D36AFF2BA536FFC6B4
      ADFFCCBDB6FFDED2CDFFD3C0BDFF0000000000000000A3A3A3FFB3B3B3FF8181
      81FF6C6C6CFF666666FF666666FF6F696FFF259F30FF3B8E40FF6F7D6EFFB3C2
      B2FF56C978FF51E085FF5BCD78FF0000000000000000FEFEFEFF159128FF28B4
      53FF32B65CFF43C070FF51C87FFF5ACD8AFF5ED08EFF5BCE8CFF53C982FF47C2
      74FF37B861FF24AD4CFF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE9D0CBFFE7CEC9FFEFDA
      D6FFF6E4E2FFFFF3F6FF4B8D48FF45DF78FF4EE781FF59F28CFF2FAD40FFCFC0
      BAFFBDAEA3FFE3D8D5FFCEBCB8FF000000000000000000000000A3A3A3FFBEBE
      BEFFEEEEEEFFFBFBFBFFEFEFEFFFD5D5D5FF729A72FF6AC97BFF83D998FF81E9
      A6FF73F1A6FF93E4AEFFB4EDC5FF00000000FEFEFEFF159128FF019B20FF0D9F
      31FF1EA945FF2DB256FF38B963FF40BE6CFF43C06FFF41BE6DFF3ABB66FF30B4
      59FF22AB49FF11A236FF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE7CEC9FFDBC0B9FFE5CA
      C5FFE6CAC5FFBFBCA7FF25B14AFF41DA74FF49E27CFF53EC86FF28A337FFC6B4
      ADFFAD9D92FFE0D7D3FFC9B8B2FF0000000000000000A5A5A5FFBDBDBDFFE4E4
      E4FFFFFFFFFFFEFEFEFFEEEEEEFFD3D3D3FFBAB9BAFF6E8E6EFF53AC5EFF6EC4
      7EFF4D9854FF0000000063A465FF00000000FCFCFCFF159128FF119A28FF1DA2
      39FF2EAC4CFF3CB45CFF46BA67FF4CBE6EFF4FBF70FF4DBE6FFF48BB69FF3FB6
      5FFF32AF51FF22A53FFF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE5CBC5FFD0B0A7FFF4E0
      DEFFDED7CCFF1BA73AFF31CB64FF3AD36DFF44DD77FF52E783FF28A539FF6146
      48FFCDC3BCFFE3DAD6FFC4B2ADFF0000000000000000A9A9A9FFB9B9B9FFD6D6
      D6FFDCDCDCFFD5D5D5FFD0D0D0FFCECECEFFCCCCCCFFC6C6C6FFB7B3B7FF9994
      99FF919091FF00000000000000000000000000000000FBFBFBFF159128FF53B9
      68FF58BC6DFF61C176FF68C57EFF6CC782FF6DC884FF6CC783FF69C57FFF62C2
      78FF5ABD6EFF53B967FF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE9D6D1FFCFB0A6FFCDAA
      A1FF4B823EFF5BCE79FF2DC65CFF35CF69FF198323FF327F30FF31A43FFFC6B8
      B0FFC5B9B0FFDED5D2FFBCA8A5FF0000000000000000A5A5A5FFA0A0A0FF6A6A
      6AFF5B5B5BFF5C5C5CFF616161FF636363FF606060FF5F5F5FFF6A6A6AFFB8B8
      B8FFAAAAAAFF0000000000000000000000000000000000000000FCFCFCFF1591
      28FF90D49EFF92D5A0FF95D6A1FF97D7A4FF98D8A5FF97D7A4FF95D6A2FF92D5
      A0FF90D49DFF8DD39BFF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE2C6C0FFD7B0A7FFDEC6
      C0FFD7B9B2FF457D36FF64D483FF107C18FF9F7274FF927D7FFF698062FF8F7C
      7CFF8F7C7CFF8F7C7CFFA19292FF0000000000000000F7F7F7FFB1B1B1FFDFDF
      DFFFFFFFFFFFFFFFFFFFF6F6F6FFD8D8D8FFBDBDBDFFA5A5A5FF9B9B9BFF9898
      98FFFDFDFDFF000000000000000000000000000000000000000000000000FCFC
      FCFF159128FFB4E5BEFF159128FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF9F9F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE1C5BFFFD2A9A0FFD5AF
      A6FFD8B4ACFFDCBFB7FF768C5BFFEFDAD8FFC39593FF00000000000000000000
      00000000000000000000000000000000000000000000A7A7A7FFBCBCBCFFE4E4
      E4FFFFFFFFFFFEFEFEFFEEEEEEFFD1D1D1FFB6B6B6FF9E9E9EFF979797FF8F8F
      8FFF909090FF0000000000000000000000000000000000000000000000000000
      0000FCFCFCFF159128FF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE0C5BFFFCEA69DFFD0AC
      A2FFD3B0A8FFD8B6AEFFC8A297FFEBD7D3FFC1928FFF00000000000000000000
      00000000000000000000000000000000000000000000ADADADFFC0C0C0FFE7E7
      E7FFF3F3F3FFF6F6F6FFFAFAFAFFFBFBFBFFF9F9F9FFF4F4F4FFDCDCDCFFA8A8
      A8FF8F8F8FFF0000000000000000000000000000000000000000000000000000
      000000000000FCFCFCFF159128FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F7E7FFFE5CDC8FF8B5A5AFF8D5D
      5EFF8D5D5EFF8A5A5BFFD9B6B0FFE8D3CFFFBF8F8CFF00000000000000000000
      00000000000000000000000000000000000000000000BFBFBFFFACACACFFBCBC
      BCFFD0D0D0FFDCDCDCFFE4E4E4FFE5E5E5FFDEDEDEFFD2D2D2FFBFBFBFFF9393
      93FFC3C3C3FF0000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A27C7DFFE9DAD8FFDEC6C2FFE0C7
      C4FFE1C9C5FFE1CBC7FFE2CCC9FFEADBDAFFAF7878FF00000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFAFA
      FAFFE2E2E2FFC9C9C9FFBEBEBEFFBBBBBBFFC0C0C0FFD9D9D9FFF7F7F7FFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F5FF00000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFFBFBFBFF000000000000000000000000DEDEDEFF868686FF7272
      72FF6B6B6BFF767676FF7D7D7DFF7E7E7EFF7C7C7CFF6C6C6CFF646464FF7474
      74FF959595FFE9E9E9FF00000000000000000000000000000000000000000000
      000000000000767676FFB88558FFECC093FF666666FF00000000594D43FF5656
      56FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000948076FF7380B7FF656565FF000000000000
      00000000000000000000000000000000000000000000D7D8D7FF00941FFF00AB
      36FF00BF49FF00CF59FF00D861FF00D55FFF00CA54FF00B842FF00A22DFF008B
      16FF007200FF497D50FF0000000000000000F9F9F9FF949494FFA6A6A6FFB4B4
      B4FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFC9C9C9FFB2B2
      B2FF9C9C9CFF838383FF00000000000000000000000000000000000000000000
      000000000000D4D4D4FFE1AC72FFE5B682FFDCA370FFB3B3B3FFE2AE74FFDDA0
      5DFF62544BFF0000000000000000000000000000000000000000000000000000
      00000000000000000000866F65FF758FFFFF7691FFFF6376C2FFD3A26CFF0000
      00000000000000000000000000000000000000000000D4D6D4FF00B03CFF17BF
      56FF33CD70FF4FDA88FF6AE29FFF7FE8ADFF7EE5AAFF65DC96FF4AD17DFF2EC2
      63FF12B348FF007510FFFEFEFEFF00000000F9F9F9FFDADADAFFF2F2F2FFF2F2
      F2FFF2F2F2FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2
      F2FFF2F2F2FFA2A2A2FF00000000000000000000000000000000C7C5C3FFA8A8
      A8FF000000009E9087FFE1A767FFFFECD1FFFFECD3FFDEA260FFDB9A54FFF7CD
      96FFF2BD79FF909090FF00000000000000000000000000000000000000000000
      0000000000005B5B70FF476CFFFF3E65FFFF476BFFFF4C6FFFFF485AB4FFE5BE
      8BFF0000000000000000000000000000000000000000F8F8F8FF00CA2DFF00D3
      35FF00DC3EFF0CE55DFF31ED79FF48F38EFF50F494FF45F28BFF2AEC74FF04E3
      57FF00DA3BFF00B92DFFEEEEEEFF00000000F2F2F2FFD6D6D6FFF5F5F5FFF9F9
      F9FFBFBFBFFFC4C4C4FFCFCFCFFFCFCFCFFFD1D1D1FFC4C4C4FFC4C4C4FFF7F7
      F7FFF7F7F7FF999999FF000000000000000000000000C4C4C4FFCA6B01FFCA6B
      01FFC36613FFCF7A1CFFDB9547FFFFE3BCFFFFE4BDFFF0C28AFFEDB979FFFFD7
      9EFFF8BC79FF81502BFF828382FF000000000000000000000000000000000000
      0000663F33FF0B42FEFF1248FCFF2152FEFF2152FEFF0842FEFF1347FFFF2247
      C9FFE5AD70FF000000000000000000000000000000000000000000BD2AFF00CE
      31FF00D637FF00DD40FF24E86CFF56F18FFF64F399FF61F396FF55EF8CFF48EC
      7FFF49E77DFF18D449FFE6E6E6FF00000000585A59FFCDCDCDFFF7F7F7FFF7F7
      F7FFE9E9E9FFE5E5E5FFE1E1E1FFE5E5E5FFE1E1E1FFE5E5E5FFE2E2E2FFF7F7
      F7FFF7F7F7FF959595FF000000000000000000000000A2846FFFCA6B01FFFFC8
      7CFFD27A16FFD68425FFFFD8A2FFFFDBA7FFFFDBA8FFFFD9A4FFFFD59BFFFFD0
      8EFFD47D1AFFCA6B01FF552F25FF000000000000000000000000000000008A74
      69FF5573F8FF607CF6FF6C86F7FF7991FAFFACBAFCFF7E95FAFF7E95F9FF6A85
      FAFF243CB1FFBA6301FF0000000000000000FBFBFBFFE6E6E6FF419457FF00C8
      2CFF4AE379FF58EA88FF5CEE8DFF2AE367FF0BCF47FF0ACE44FF09CB40FF09C8
      3DFF0AC33AFF08BD34FFF4F4F4FF00000000333776FFC9C9C9FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FF959597FF000000000000000000000000C8C8C8FFFECA80FFFFD1
      92FFFFD293FFFFCD88FFFFD08DFFFFD192FFCFB796FFCFB594FFFFCD88FFFFC9
      7EFFFFC471FFF6B052FFEC933DFF000000000000000000000000000000008D9E
      F5FF6E85F0FF7B90F2FF8A9DF5FF92A4F7FF778EF5FFA9B7F8FF98A9F7FF96A7
      F5FF96A5F6FF4754B4FFD78637FF00000000B6AEA7FFFFAB58FFE6A854FF76E6
      96FF7AEA9BFF7DEEA0FF81F0A4FF3BDC6AFF0000000000000000000000000000
      00000000000000000000000000000000000000000000C9C9C9FFF7F7F7FFB9E2
      C3FFADD5B8FFBDE5C6FFC7E9D0FFCEECD5FFC8E9D0FFC8E4CFFFCAE0D0FFE1F3
      E5FFF7F7F7FF9A9AA4FF00000000000000001E1EABFFA4A4A4FFCA6C02FFFFCF
      8DFFFFD396FFFFD293FFB5D2BAFF000000000000000000000000B3C3B2FFFEBD
      67FFFFBD61FFFFB753FF75568EFF00000000000000000000000000000000435F
      E0FFA4B1F1FF95A5F1FF8296F0FFAEC9BAFF000000006780EFFFA8B5F5FFADB9
      F4FFA8B5F3FFA7B1F3FF3E4DBEFF4E5951FFB6ADA7FFF7C391FFF7C391FF48D2
      64FF74E38EFF78E693FF7BE897FF46DD6CFFFEFEFEFF00000000000000000000
      00000000000000000000000000000000000000000000C5C5C5FFF7F7F7FF9BD5
      A9FF74AB82FF99D8A9FFA4DCB2FFB3E2BFFFC1E9CBFFBFDDC7FF9FBFA7FFCDEB
      D4FFF7F7F7FF9595A9FF0000000000000000CA6B01FFCA6B01FFCB6C02FFFFD1
      91FFFFCF8CFF98D6A8FF000000000000000000000000000000008D8765FFFEB0
      58FFFFB54FFFB76422FF5E5EFBFF000000000000000000000000000000000000
      00004560DBFF6E82E7FF75A095FF0000000000000000000000005670E6FFA2AF
      EFFFBBC4F3FFB5BEF0FFB2B9F1FF334076FFF0F0F0FFFEBF88FFFEC18BFFFEC3
      8CFFFEC48FFF926341FFE6E6E6FFE6E6E6FFEDEDEDFF00000000000000000000
      00000000000000000000000000000000000000000000C2C2C2FFF7F7F7FF8EC8
      9CFF588F66FF8AD19BFF8FD4A0FF9EDAADFFAFE1BBFFB3DABDFF9AB3A0FFC0E1
      C8FFF7F7F7FF8A8AA4FF0000000000000000CF6F02FFE68F22FFFABC68FFFFD2
      94FF4F704CFF00000000000000000000000000000000B2D8BCFFF9AA54FFF9AB
      55FFFFAE3CFFEC931FFF4E398DFF00000000CD6E02FFCE801EFFF2B665FFFDD0
      93FF4B6A48FF518187FF85C595FF0000000000000000A3C6ADFFE49C4DFF435E
      DBFF95A3E9FFC4CBF1FF8392E2FF303F3AFF00000000E1A475FFEBBA94FFECBB
      96FFECBC99FF9F4005FF00DC66FF00DD67FF00C150FF00000000000000000000
      00000000000000000000000000000000000000000000C5C5C5FFF7F7F7FF8FCD
      9FFF73C889FF78CA8DFF7FCD93FF85CF98FF8BD29DFF91D4A2FF97D7A7FFA6D9
      B3FFF7F7F7FF8989A6FF0000000000000000E2830EFFFFD498FFFFD498FFFFD3
      96FF70C386FF00000000000000000000000088CE9AFFC17D3FFFE2944AFFE999
      43FFFFA629FFFEA01FFF8585FEFF000000003D2304FF584934FF211B14FFF3C9
      8FFF090F0BFF192B1EFF010201FF72B283FF496E52FF140D07FF1C1309FF0000
      0000304CCFFF5D71D8FF2D41BAFF0000000000000000AB6C41FFE1BCA5FFE3BF
      A8FFE4C2ABFFAF5C1EFF0AD060FF09CF5FFF00BC48FFEEEEEEFF000000000000
      00000000000000000000000000000000000000000000C0C0C3FFF7F7F7FF96CD
      A4FF7DCD90FF7DCD90FF80CE94FF87D099FF8CD39FFF92D5A3FF8CD29DFF9CD3
      AAFFF9F9F9FF8B8BAAFF0000000000000000372830FFBA5411FFFFD08EFFFFD4
      99FF895A2BFF5D986BFF69AA7AFF5F704CFFCC793AFFCC7D3EFFCC7D3EFFFFA1
      1EFFB39787FF000000000000000000000000050405FF8A3E0DFF3F3323FFF3CA
      92FF000000FF0000000065A476FF293021FF000000FF00000000000000000000
      0000000000003247A4FF0000000000000000000000000000000000000000FEFE
      FEFF2CD860FF39E472FF40EA7BFF45EC7FFF23E361FF96A69AFF000000000000
      00000000000000000000000000000000000000000000B7B7C6FFF7F7F7FF9ECC
      A9FF8ED39FFF8ED3A0FF8ED3A0FF90D4A2FF96D7A6FF9AD9AAFFA0DAAEFF95CD
      A3FFFAFAFAFF8383A7FF000000000000000000000000CA6B01FFF5AB4AFFFFDA
      A7FFC26F2BFFB66633FFB66633FFB66633FFB66633FFB66732FFFEC16DFFFB93
      09FFE1E1E1FF000000000000000000000000F4F4F4FFA35E12FF6B6257FFF8D4
      A3FF5A5A5AFFAE6334FFA46137FF855E45FF5A5A5AFFAB6333FFF8BD6BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00002AAC4DFF53E07BFF56E480FF58E584FF5BE384FF1E8738FF000000000000
      00000000000000000000000000000000000000000000ACADADFFF7F7F7FFA3CA
      ADFFA3DBB1FFA3DBB1FFA3DBB1FFA3DBB1FFA3DCB2FFA8DEB5FFACDFB9FFB5D8
      BEFFFAFAFAFF373E80FF000000000000000000000000E58B19FFFFE3BDFFFFE1
      B7FFFFDEB1FFDF903AFFB35E20FFBD651DFFEFA54BFFFFCE8AFFDD8533FFBC71
      2DFF00000000000000000000000000000000B6B6B6FF695E51FF756F68FF0000
      00005A5A5AFF5F5B57FF5B5856FF00000000D69444FF5A5959FF5A5958FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000099AEA0FF6DDD89FF6FE08CFF72E18FFF74E08FFF00880DFFFBFBFBFF0000
      00000000000000000000000000000000000000000000B9B9B9FFF7F7F7FFBCC8
      C0FFAAC1B0FFAAC1B0FFAAC1B0FFAAC1B0FFAAC1B0FFAAC1B0FFADC4B3FFBECC
      C1FFF9F9F9FFB9B9B9FF0000000000000000000000009C8F8AFFBD8B6BFF9376
      5EFFF5A944FFFFE3BCFFFFDCABFFFFDEB0FFFFD9A4FFA3B9A8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A5AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F8FF86DD97FF88DF9AFF8AE09CFF8DE09EFF27A431FFF5F5F5FF0000
      00000000000000000000000000000000000000000000BFBFBFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFCFCFCFFF0000000000000000000000000000000000000000CDC3
      BFFFFEC980FFCB7F46FF00000000E27925FFC9B8B0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2855BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000055BE67FF95DC9FFF97DEA2FF9ADEA3FF78CC7FFFF9F9F9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEDEDFFABABABFF747475FF5F5F67FF67676EFF8F8F8FFFD3D3D3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDEFF818181FF444947FF2C463FFF334843FF5E5E5EFFB2B2B2FFF9F9
      F9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCDCDCFF767676FF373B39FF21352FFF273834FF515151FFADADADFF0000
      0000000000000000000000000000000000000000000000000000F4F4F4FF7070
      75FF026C68FF00D97BFF00E083FF00E386FF00E184FF00DA7CFF00B872FF2734
      5AFFC8C8C8FF0000000000000000000000000000000000000000EAEAEAFF4048
      47FF00C46CFF00D87AFF00E184FF00E488FF00E387FF00DB7EFF00D274FF086D
      46FFA0A0A0FF0000000000000000000000000000000000000000000000000000
      000000B966FF02A15CFF1F835AFF267153FF277B59FF0F8B56FF00B463FF086C
      45FF000000000000000000000000000000000000000000000000E9E9E9FF3339
      38FF0E4575FF5657FDFF8484FFFFA9A9FFFF9696FFFF5D5DFFFF2439BFFF0543
      2FFF999999FF00000000000000000000000000000000E9E9E9FF153F4FFF00C1
      62FF2ACD7DFFB5F4D6FFD3F8E4FFE0F9EBFFD6F8E5FFC6F7DFFF61DFA2FF00BD
      5EFF00A05AFF9A9A9BFF000000000000000000000000D8D8D8FF047943FF00C3
      64FF63E3A7FFB0F3CFFFB9F3D1FFC8F5DCFFBEF4D5FFACF2CAFFA3F2CCFF1CCE
      79FF00BD5DFF626765FFFEFEFEFF000000000000000000000000046E3DFF749A
      87FFB7B7B7FFA4A4A4FF939393FF8D8D8DFF959595FFA2A2A2FFB6B6B6FFC1C3
      C2FF108248FF626765FF000000000000000000000000D4D4D4FF023835FF0808
      F0FF8C8CFFFFDCDCFFFFF0F0FFFFF7F7FFFFF3F3FFFFEDEDFFFFBBBBFFFF3E3E
      F8FF020FA6FF555958FF0000000000000000FAFAFAFF164A47FF03AE4EFF5DE9
      A0FF2EBC4BFF39B74BFF4AB957FF56BB60FF4EBA5AFF3DB74EFF2BB542FF36CC
      66FF2FCA79FF00AB4FFFBFBFBFFF00000000F5F5F5FF04753AFF13C267FF3EE3
      84FF53E48AFF7BEAA5FF9EEFBEFFB6F2CFFFA9F0C6FF88EBAFFF5BD989FF35DC
      75FF4AE599FF00B14FFF909190FF00000000000000000C5C32FFD4D4D4FFCECE
      CEFFE3E3E3FFF5F5F5FFFEFEFEFFFFFFFFFFFFFFFFFFFCFCFCFFE9E9E9FFD7D7
      D7FFCECECEFF9AB1A4FF8E8F8EFF0000000000000000062C35FF2323E7FFC9C9
      FFFFBEBEFFFFD1D1FFFFE5E5FFFFF3F3FFFFEAEAFFFFD6D6FFFFC3C3FFFFBEBE
      FFFF7E7EFEFF0506B6FF838483FF00000000A1A1A2FF02A542FF07D75DFF1BDD
      68FFFFFFFFFFE3FAECFFFFFFFFFFEBFBF2FFF6FDF9FFF3FDF6FFE7FBEEFFFFFF
      FFFF00D858FF18CD71FF065E41FFFDFDFDFF747776FF06B657FF2DD86FFF16DC
      65FF44E280FF69E799FF85EBACFF93EDB6FF8CECB1FF7AE9A4FFCCF7DCFF28DF
      70FF00D858FF12D96EFF009F3FFFF7F7F7FF686A69FFDEDEDEFFC8C8C8FFF0F0
      F0FFF8EFCFFFFEE958FFFFF64EFFFFFD9EFFFFFD7CFFFFFD78FFFCFBA0FFF3F3
      F3FFE4E4E4FFBCBCBCFF87A493FF00000000585A59FF0E0ECCFF9E9EFFFFA5A5
      FFFF7272CEFF7F7FDCFF8686E5FF8A8AE9FF8787E7FF8181E0FF7979D4FF7474
      D8FF9898FFFF8282FEFF27306FFF000000000B6E3DFF00CC51FF00D251FF05DB
      5DFFFFFFFFFF2CBA46FFEEF7EEFF3CBB51FF81D08DFF74CB81FF29BA47FFFEFE
      FEFF00D454FF00CA4AFF00A33FFFDDDDDDFF018431FF00C849FF00D150FFFBFD
      FCFF8EDAA8FF52D07FFF63E595FF6FE89DFF6AE799FF82E4A6FF5CE690FF0FDC
      62FF00D454FF00CA4AFF00C058FFBDBDBDFFB9C7BEFFBBBBBBFFE3E3E3FFFDC9
      3BFFFFDC41FFFFF04BFFFFFC67FFFFFD98FFFFFDB6FFFFFDAFFFFFFD89FFFFFB
      56FFEDE6ABFFDBDBDBFFA8A8A8FFB1B1B1FF333776FF8C8CFFFF8D8DFFFFBABA
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8181ECFF5656FFFF8C8CEAFFFFFF
      FFFF9191FFFF7F7FFFFF1D1DC5FFA8A8A8FF00A53DFF00C342FF00CD4CFF00D5
      55FFFFFFFFFFB1F3CAFFFBFDFBFFC0F5D4FFDBF9E7FFD3F8E1FFBAF4D0FFE5F2
      E5FF00CF4FFF00C645FF00BF43FFB6B7B6FF00AB42FF00C241FF00CB4BFF00D4
      54FF26DF72FFA1F1C0FFFFFFFFFF4ADB80FF42E27FFF84ECABFF67E89AFF00D7
      57FF00CF4EFF00C645FF00BC3BFF6A8070FF9C9C9CFFD4D4D4FFFAB330FFFFCF
      4AFFFFE043FFCAC798FFB6B4B3FFAEADADFF8F8F8FFF8D8D89FFF2EC94FFFFFC
      66FFFFEE4AFFD9D4BDFFC5C5C5FF627066FF2121BAFF7474FFFF8484FFFFB5B5
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262EAFF2121FFFF7070EAFFFFFF
      FFFF8888FFFF7878FFFF7373FFFF556159FF00B036FF00BE3DFF00C746FF00CE
      4EFFFFFFFFFF29B544FFEFF7EFFF4ABB5AFF94D59CFF7ECE89FF48C060FFC9EA
      CEFF00C848FF00C03FFF00B735FF9DA3A0FF00B135FF00BD3BFF00C544FF0ECF
      55FF29D96AFF39DF77FFF9FCFAFFFFFFFFFFFFFFFFFFFFFFFFFF53E187FF1DD4
      60FF00C848FF00C03FFF00B735FF517359FFABABABFFCBCAC9FFFCC463FFFFD9
      74FF787877FFD7D5D5FFB9A99CFFF2EF7DFFD9CE7CFFC5C4C4FFBCBCBBFFE8D8
      52FFFFED4AFFF9D648FFC9C9C9FF4B5E50FF4D4DE9FF6A6AFFFF7979FFFFACAC
      FFFFFFFFFFFF3C3CFFFF3D3DFFFFFFFFFFFF5454EAFF0000FFFF6464EAFFFFFF
      FFFF7D7DFFFF6F6FFFFF5F5FFFFF3D4D44FF00AD2BFF27C050FF46CD6CFF46D3
      72FFFFFFFFFF5FDF8BFFE7F5E9FF76E69EFF9AEDB7FF8FE6AAFF7FE4A0FFBCE7
      C5FF46CE6DFF3DC661FF03B231FFA1A7A4FF01AC2BFF3FC45FFF49CD6DFF49D2
      72FF49D676FF49DA79FF91EAAFFFFFFFFFFFF9FCFAFF49DB7AFF49D877FF49D4
      74FF49CE6FFF49C869FF1FB844FF55745CFFB0B0B0FFC4C1BFFFFBDAABFFFEDA
      89FFB6B5B5FFB4B1B1FFD6C4AAFFDADADAFFE7E381FFA69B7AFFE1DDDCFFC9AC
      7BFFFFE958FFFCD650FFC8C8C8FF475A4BFF4949F1FF7676FFFF7979D7FFCBCB
      E6FFFFFFFFFFF1F1F8FFF4F4F9FFFFFFFFFFE9E9F4FFB1B1DBFFEEEEF7FFFFFF
      FFFFA7A7D6FF8888FFFF5656FFFF3A4A40FF01A223FF55C66CFF55CB72FF55D0
      76FFFFFFFFFFA3D5A3FFFDFEFDFFBFE2BFFFD4EBD4FFD0E9D0FFC5E4C5FFACE0
      B5FF55CC73FF55C76EFF45BD5CFFDDDDDDFF009E20FF57C56DFF57CA73FF57CF
      77FF57D37AFF57D67DFF57D87FFFFDFEFDFFFFFFFFFF67CC83FF57D47BFF57D1
      78FF57CD74FF57C770FF53C067FFA6ADA7FF7A897DFFD0D0D0FFF2BA79FFFDE0
      A8FFEAE8E7FFDDDDDCFFCDCCCCFFE5DEC4FFF4F4F4FFA3A1A1FF9B9B9BFFF9DD
      64FFFFDC41FFC9BA8FFFD0D0D0FFA3AAA4FF3737E2FF9B9BFFFFDFDFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C9CFFFF8686FFFF979D98FF377C45FF63C574FF63C978FF63CD
      7BFFFFFFFFFFD9F4E0FFCFF1D8FFCFF2D9FFCFF1D9FFCFF1D8FFF1FAF3FF9FDB
      A9FF63CA78FF63C675FF14A82EFFFEFEFEFF196224FF65C575FF65C978FF65CD
      7CFF65D07FFF65D382FF81D396FF9FD9ADFFFFFFFFFFF2FBF5FFE8F6EBFF65CE
      7DFF65CB7AFF65C776FF1DAB35FFFBFBFBFF185F23FFDADADAFFB7B5B2FFFCDA
      A7FFFFE7B3FFF1DAB3FFCFC5BCFFBFBEBDFFCAC5C1FFF2F2F2FFE7DDB3FFFFF0
      B7FFDFC780FFDCDCDCFF67856CFF00000000112B56FFA6A6FFFFABABFFFFC0C0
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
      FFFFACACFFFFA7A7FFFF5252FDFFFAFAFAFFFCFCFCFF1FAA35FF71C87EFF71CC
      82FFFFFFFFFF7AD48EFF71D288FF71D388FF71D388FF71D187FFC1EACAFF99D6
      A1FF71C97FFF6CC477FF668B6AFF00000000FBFBFBFF0CA022FF73C87FFF73CC
      82FF73CE85FF73D087FF92DBA2FFFFFFFFFFFFFFFFFFBFEAC8FF73CF86FF73CD
      83FF73C980FF6DC478FF2E6A32FF00000000000000000D8C20FFE4E4E4FFC5C5
      C5FFCAAF7FFFFFE9BCFFFFF0CAFFFFF5D6FFFFF3CBFFFFF3CBFFE2E2E2FFA4A0
      95FFE8E8E8FF8A988BFF0000000000000000F8F8F8FF5959FDFFB6B6FFFFB9B9
      FFFFBCBCFFFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0
      FFFFB7B7FFFFAEAEFFFF193649FF0000000000000000CCD2CCFF41B350FF7ECB
      89FFEEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8DCF
      94FF7BC884FF188223FF000000000000000000000000C1C6C1FF1EA52FFF80CB
      8AFF80CE8BFF80CF8CFF80D08DFF82D190FFE8F4EAFFDCF0DFFF80CE8CFF80CC
      8AFF78C681FF05780CFF0000000000000000000000000000000000000000879E
      8AFFF5F5F5FFDEDEDEFFBABABAFFADADADFFB4B4B4FFC6C6C6FFF4F4F4FFD2D3
      D3FF67A66EFF000000000000000000000000000000009CA0A2FF7F7FFFFFC5C5
      FFFFC7C7FFFFC8C8FFFFD2D2FFFFFFFFFFFFF4F4FFFFC8C8FFFFCBCBFFFFC8C8
      FFFFC2C2FFFF1625A1FF00000000000000000000000000000000EBECEBFF0D98
      1BFFACDBB1FFF1F9F2FFF1F9F2FFF1F9F2FFF1F9F2FFF1F9F2FFF0F8F1FF46B2
      51FF709B71FF0000000000000000000000000000000000000000EAEBEAFF0183
      0BFF6CC175FF8CCE94FF8CCF95FF8CD095FFFFFFFFFFEBF6ECFF8CCE93FF2DA8
      39FF457545FF0000000000000000000000000000000000000000000000000000
      0000000000008ACB92FF73A379FF739A78FFBCBCBCFFCBD4CCFF000000000000
      0000000000000000000000000000000000000000000000000000D7D8D8FF3C3C
      EFFFD2D2FFFFD5D5FFFFD5D5FFFFD6D6FFFFD5D5FFFFD5D5FFFFD4D4FFFF8B8B
      FFFF223762FF0000000000000000000000000000000000000000000000000000
      0000D7DCD7FF318A37FF1C9C27FF36AB40FF2AA435FF0A8B15FF91AD91FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6DBD6FF196B1CFF048A0BFF0C9215FF058D0EFF037409FF718E71FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B4B7FF172798FF5050F1FF7373FFFF6868FCFF2528D4FF3E4D6BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000859FABFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000839DA8FFAFAFAFFF949494FF878787FF898989FF9E9E9EFFBABABAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029CCFFFF81939DFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007171E6FF2323
      83FF6E7C66FFD8B272FFE2C48FFFEBD6AFFFEBD6ACFFE5CB96FFDEC48FFF8D88
      80FFDBDBDBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F1FFC3C3C3FF9B9B9CFF8A8A95FF909099FFAEAEAEFFDDDDDDFFFDFD
      FDFF000000000000000000000000000000000000000000000000000000000000
      0000267CB0FF28C7FFFF8E9AA0FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000BCFF443C52FFD2A0
      60FFFDE2B1FFFFEABAFFFFF5D1FFFFFADAFFFFF0C6FFFFE5AFFFFFD997FFF2D2
      9DFFCFA767FF9F9FADFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F7FF9999
      A0FF0A0AE6FF4141FFFF9B9BFFFFD0D0FFFFC4C4FFFF7676FFFF0202FAFF4949
      9BFFD7D7D7FF0000000000000000000000000000000000000000000000000000
      000079A6C8FF31E2FFFF26BDFEFF9CA3A8FF0000000000000000000000000000
      00000000000000000000000000000000000000000000362C66FFEABC7FFFFECF
      82FFFFDB9AFFFFE5AFFFFFEDBFFFFFEFC6FFFFE9B8FFFFE0A5FFFFD58EFFFCCA
      7AFFF4BF71FFD1A05EFF2121C1FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4C4
      76FFEBB86DFF00000000000000000000000000000000F0F0F0FF373797FF2323
      E8FFADADFFFFE2E2FFFFEAEAFFFFF9F9FFFFEEEEFFFFDFDFFDFFD9D9FFFF6E6E
      FCFF0101C3FFB9B9BAFF00000000000000000000000000000000000000000000
      0000000000002CDCFFFF40E1FFFF23AEFFFFADB0B3FF00000000000000000000
      0000000000000000000000000000000000001A1ADEFFDFA863FFF4BF70FFFCCA
      7AFFFFD691FF5EB6C0FF000000000000000000000000EAE9E9FFECD7B3FFF8C5
      76FFF0B96AFFE8AE5EFF92684DFFF3F3F3FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000007EA
      93FF07E890FFE5AC5DFF0000000000000000FCFCFCFF3E3E86FF3939F5FFB3B3
      FFFFBCBCFFFFB6B6E0FFE2E2FFFFEFEFFFFFE7E7FFFFD5D5FFFFA0A0E7FFAEAE
      FFFFA9A9FFFF0303A8FFD5D5D5FF000000000000000000000000000000000000
      00006C94B6FF51DEFFFF2BD8FFFF64E3FFFF21A4FFFFB8B9BBFF000000000000
      0000000000000000000000000000000000007F6550FFE9B368FFF2C381FFF9CF
      8FFF6C93B5FF000000000000000000000000000000000000000000000000C6C2
      BCFFECB363FFE4A858FFE0A557FFE7E7E7FF0000000000000000000000000000
      00000000000000000000000000000000000000000000B7B8BAFFFAFAFAFF00E6
      81FF00E57FFFE0A556FFDFA457FF00000000C9C9CAFF1E1EDAFF9191FFFF9F9F
      FCFFB5B5FFFFE8E8FFFFD4D4FFFFDBDBFFFFD7D7FFFFCBCBFFFFD2D2F0FFA9A9
      FFFF9696FFFF9393FFFF1B1B88FFFEFEFEFF0000000000000000000000000000
      0000309CEFFF5FC6FFFF2AD2FFFF2AD3FFFF96E8FFFF209CFFFFE8E8E8FF0000
      000000000000000000000000000000000000BB7F4AFFE9BB81FFEFC388FF7AA7
      CDFF000000000000000000000000000000000000000000000000000000000000
      0000D5B383FFDFA150FFD89644FF747284FF817A74FF87827CFF8A8680FF8186
      8AFF7E8991FF848E94FF7F9095FF7F9195FF8A9395FF00A61CFF00B53DFF00CD
      55FF00CC54FF04B33FFF03A420FF5E616DFF383888FF7B7BFFFF8A8AFFFFB8B8
      ECFFABABFFFFDFDFFDFFC4C4FFFFC9C9FFFFC6C6FFFFBDBDFFFFFFFFFFFFA0A0
      FFFF8686F1FF7D7DFFFF3C3CE0FFECECECFF0000000000000000000000000000
      00004C96BBFF29CBFFFF29CCFFFF29CDFFFF29CCFFFFC7F0FFFFE8E8E8FF0000
      000000000000000000000000000000000000D0A070FFE8BD8AFFEBC08AFF80B1
      DAFF000000000000000027C5F6FF1D94B8FF23B0DCFF00000000000000000000
      0000CECDCCFFDA9947FFD28E3CFF4D4C6CFFA3A3A3FFACACACFFB2B2B2FFB7B7
      B7FFBBBBBBFFBDBDBDFFBFBFBFFFBFBFBFFFBEBEBEFF45B945FF34B83DFF2BBC
      44FF29BC42FF34B73BFF45B945FF3E4259FF2828C1FF7171FFFF8080FFFFE1E1
      FFFF9E9EFFFFF9F9FEFFB2B2FFFFB3B3FFFFB4B4FFFFA2A2FEFFE4E4FFFF8989
      EDFF8888FFFF7676FFFF6767FFFFDADADAFF0000000000000000000000000000
      000083B3DCFF27C5FFFF28C6FFFF28C6FFFF2DC7FFFF30A7FFFFE1E1E1FF0000
      000000000000000000000000000000000000CD9F76FFE6C093FFE8BE8CFF709D
      C1FF0000000000000000407A83FFD7AB75FFC58C48FF2FA5FCFF000000000000
      0000957B62FFDAA362FFCC8632FF706D8AFFB78F6BFF9B8E7FFFC7C7C7FFCBCB
      CBFFCECECEFFD0D0D0FFD1D1D1FFD0D0D0FFCDCDCDFFC1C8C3FFBFC6C1FF78CA
      78FF78CA78FFBC9157FFB3792DFF6F6C88FF4444E3FF6767FFFF7676FFFF8C8C
      FFFFECECFBFFACACFCFFBBBBFFFFFFFFFFFFFBFBFFFFF8F8FFFF6E6EF5FFF0F0
      FFFF7B7BFFFF6B6BFFFF5D5DFFFFD0D0D3FF000000000000000000000000699E
      CDFF1D91FFFF26BEFFFF27C0FFFF37C4FFFF52CBFFFF7FD7FFFF3786D0FF0000
      00000000000000000000000000000000000064497AFFE6C39DFFE9C7A1FF7850
      2BFF1C8DF8FF00000000829480FFFECF82FFFED084FF7DD4FBFF00000000D1D1
      D1FFCF8F4BFFDEB07EFFC67C27FF8F8FB0FF00000000A49688FFE4E4E4FFE6E6
      E6FFE8E8E8FFE9E9E9FFEAEAEAFFEBEBEBFFEAEAEAFFE8E8E8FFE7E7E7FFA2DA
      A2FFA2DAA2FFDBAE7CFF00000000000000003F3FE6FF8181FFFF8D8DFFFF9696
      FFFF8E8EFAFFEEEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8585F4FF9898
      FFFF9090FFFF8787FFFF6565FFFFD4D4D7FF00000000000000000000000069A3
      CCFF23AEFFFF24B3FFFF33BDFFFF52C6FFFF65CCFFFF77D1FFFF79C0FFFFE7E8
      E8FF000000000000000000000000000000001414C8FFE6C8A8FFE9CBABFFE6C2
      9BFF525143FF22ABF4FF859382FFF3C480FFF2BC6CFF75CDFAFF5587B3FFB25A
      06FFE0B88EFFDDB388FFC38342FF0000000000000000A79889FFFBFBFBFFFBFB
      FBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFBDE3
      CEFFB1D7C1FF0000000000000000000000003838CAFF8585FFFF8D8DFFFF9494
      FFFFFDFDFEFF7878F2FFEBEBFFFFFFFFFFFFECECFFFFF6F6FEFFC8C8FEFF8B8B
      E8FF8F8FFFFF8888FFFF6B6BFFFFF4F4F4FF0000000000000000000000000000
      000024B2FFFF25B3FFFF51C1FFFF65C7FFFF77CDFFFF43B7FFFF68A4C7FF93BF
      E2FF0000000000000000000000000000000000000000937571FFEAD0B6FFEBD2
      B8FFEED8C0FF238EC6FF898E7EFFEABC81FFE7B470FF3EA9ECFFC57D38FFE4C2
      9FFFDFBA95FFDDB791FF0305D4FF000000000000000000000000E5E4E4FFE1E1
      E1FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEF
      EFFFB0967BFF000000000000000000000000B0B0BFFF8383FFFF8E8EFFFF9494
      FFFFCACAFFFFF2F2FFFF9F9FFFFFB9B9FFFFA9A9FFFF9D9DFFFFAAAAF8FFE1E1
      F1FF9090FFFF8A8AFFFF3434E9FF000000000000000000000000000000000000
      000023ABFFFF40B6FFFF65C2FFFF77CAFFFF88D0FFFFA9DCFFFF2081E7FF8EBB
      DFFF000000000000000000000000000000000000000000000000B2ADA7FFEDD8
      C4FFEED9C5FF3CA1E1FF89887AFFE3B886FFE3B887FF9FCFF0FFE3C2A3FFE2C1
      A1FFE1C2A4FF5452D8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F2FDCFF9191FFFF9595
      FFFFA7A7FFFFDEDEFDFF9E9EFFFF9F9FFFFF9E9EFFFF9C9CFFFFB0B0FFFFEAEA
      FEFF9292FFFF7070FFFFD6D6DAFF000000000000000000000000000000000000
      00002B89C9FF64BEFFFF76C6FFFF88CDFFFF99D4FFFFAADAFFFF61B2FFFF5F82
      A0FF000000000000000000000000000000000000000000000000000000005D83
      A5FF2F78AAFF000000008A8577FFDFB78EFFDFB88FFFA7D7FBFF7A9BBBFFA2A0
      9EFF5555EEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFF3030E7FF9898
      FFFFB1B1FEFFC9C9FCFF9F9FFFFFA0A0FFFF9F9FFFFF9797F3FF9C9CFFFFB4B4
      FFFF7272FFFFA1A1BBFF00000000000000000000000000000000000000000000
      00006F8CB7FF76C2FFFF88CAFFFF99D1FFFFAAD8FFFFBAE0FFFFE4F2FFFF1A83
      FDFF2C8A44FF0000000000000000000000000000000000000000000000000000
      000000000000000000008C8376FFDEBB9AFFDEBB9AFFB7DDFBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006E6E
      B3FF6565FFFFA1A1FFFFA2A2FFFFA2A2FFFFA2A2FFFFA2A2FFFF8C8CFFFF2E2E
      DFFFEFEFEFFF0000000000000000000000000000000000000000000000000000
      00000000000089CAFFFF9AD1FFFFAAD8FFFFBAE0FFFFCAE7FFFFD9EDFFFFACD5
      FFFFC9C9FEFF0000000000000000000000000000000000000000000000000000
      000000000000000000008899A5FFE4C9B0FFE4C9B0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6DBFF7B7BB6FF5B5BB6FF6464B7FFA1A1BCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC6C6
      C6FF8F8F90FF9F9FA0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFDFF508853FF4E8852FF4E8752FFC7CBC7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E6FFC8C8C8FF355443FF385057FF2F484EFF868988FFE3E3E3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFC3C3D6FF00000000000000000000000000000000000000000000
      00000000000000000000F6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E0FF00C263FF00D678FF00CE70FF5FA366FF000000000000
      00000000000000000000000000000000000000000000000000008080F6FF0808
      8CFF3D3DFCFF6060FFFF8C8CFFFF9999FFFF7E7EFFFF3636FFFF0707FEFF0000
      B6FF6161C8FF000000000000000000000000000000000000C0FF51549BFF0D10
      5EFF2A2E9BFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFCACADBFF00000000000000000000000000000000000000000000
      00001212D3FF046963FF08C86DFFE6E6E6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000046661FF3CF1A8FF3EF4ADFF3EF3ACFF287144FF000000000000
      000000000000000000000000000000000000000000003939F6FF0A0ACDFF2323
      FFFF9696FFFF9292FFFFA5A5FFFFB3B3FFFFB9B9FFFFB3B3FFFFACACFFFF7A7A
      FBFF0000E9FF4040AFFF0000000000000000000000003235C4FF80B2DBFF85B5
      DEFF8AB9DFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFD0D0DAFF00000000000000000000000000000000000000005353
      FBFF109663FF99EFC3FFA5F8CEFF1FC571FF3C3D7EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000095E9BFFF00EA89FF00EC8CFF00EB8AFF004957FF000000000000
      0000000000000000000000000000000000001E1EFEFF0707C3FF4B4BFBFF5555
      FFFF6A6AFFFF9191FFFF1CA97BFF03DD86FF06CD7EFF40607DFF9B9BFFFF7A7A
      FFFF7B7BFFFF0505DDFF3333CAFF00000000000000000C0F9EFF80B1DBFF85B4
      DDFF87B5DBFFF9F9F9FFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8F8FFF8F8
      F8FFF8F8F8FFCDCDE2FF000000000000000000000000000000003131F5FF049E
      55FF60E89DFF60EA9AFF8BF3BCFFA5F8D0FF30C373FF5055B7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005EE596FF00E37CFF00E47FFF00E37DFF1E6750FF000000000000
      000000000000000000000000000000000000B1B1BBFF2828F4FF3131FFFF4343
      FFFF5454FFFF7171FFFF1012FCFF00BF6AFF0000000000000000000000006262
      CEFF5353FFFF5252FFFF0303CAFFFBFBFBFF000000002528C3FF7EB0DAFF83B4
      DDFF85B2D9FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFF9F9F9FFD8D8E8FF000000000000000000000000898989FF01A447FF21DB
      71FF0ADC60FF3FE482FF63EB9CFF73EEA9FF6BEDA3FF35C173FF2F3E9FFF0000
      000000000000000000000000000000000000878787FF4E5C4EFF016C29FF138B
      41FF068C37FF238F49FF38E188FF38E289FF35E187FF0C8829FF1B315BFF2836
      92FF223092FF114D83FF003997FF000000000A0AC3FF1313FFFF2626FFFF4848
      FFFF3E3EFFFF4A4AFFFF6F6FFEFF0000F7FF26A064FF00000000000000000000
      00004448B6FF2E2EFFFF3737F4FF8A8AA3FF000000001417CBFF7DAED8FF82B3
      DCFF85B4DBFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFCFCFCFFD7D7EBFF0000000000000000929292FF009D39FF07CD54FF00CF
      4FFF00D656FF0CDC61FF2DE176FF3BE47FFF35E27BFF1BDE6AFF2EC16CFF1636
      80FF00000000000000000000000000000000527054FF00B351FF00BB5BFF00C1
      61FF00C364FF00C163FF47DD85FF48DE87FF45DC85FF01C461FF00C364FF00C2
      63FF00BE5EFF00B656FF00AA3FFF000000000101E8FF0202FFFF2626FFFF00B0
      5BFF4545FFFF3131FFFF3939FFFF5454FFFF0101EAFF01674DFF00C264FF0000
      000000B85BFF2020FFFF1414FFFF595B8CFF00000000070ACAFF7CAFDAFF81B2
      DCFF85B4DCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
      FCFFFAFAFAFFD4D4E9FF000000000000000000932DFF00BD3DFF00C241FF31D1
      68FF61DE8AFF61E18DFF46E07FFF62E591FF62E590FF44DF7DFF02D253FF1AC1
      61FF3D784CFFFEFEFEFF0000000000000000006F1BFF8EDB9CFF8DDD9FFF8BDF
      A2FF89E1A4FF84E1A3FF5ADA87FF57DA86FF54D983FF7EE1A0FF7DDF9CFF7BDC
      97FF79D991FF77D58AFF25B73CFF000000000202F6FF0000FFFF3344B4FF0000
      000088DFA3FF3F3FFEFF4343FFFF4646FFFF4242FFFF0808E0FF28477DFF79D9
      95FF74D18BFF1616FFFF0000FFFF8484ADFF000000000609CBFF7BADD9FF7FB2
      DBFF84B4DDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFF5F5
      F5FFF0F0F0FFC7C7E2FF000000000000000000AE2BFF41C663FF81DA97FF81DD
      9BFF7BDF99FF0BA168FF666BDCFF44DA7AFF81E5A1FF81E3A0FF81E19EFF57D5
      7EFF00BC4FFF2D803CFFFCFCFCFF00000000007E1BFF76D080FF73D284FF70D4
      86FF6ED688FF6BD789FF68D788FF65D787FF62D684FF61D481FF5ED37CFF5BCF
      76FF58CC6FFF55C766FF29B337FF000000000202F2FF2929FFFF2929F2FF6FD2
      85FF0000000000000000454FECFF9090FFFF9191FFFF8A8AFFFF0808DDFF0D1D
      96FF378053FF0101FFFF0000FFFF9494B6FF000000002528CBFF79ACD8FF7DB0
      DAFF82B3DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFF
      FFFFECECECFF000000000000000000000000FCFCFCFF23B847FF9FDFADFF89DC
      9EFF14757AFF00000000000000007D7DF3FF34D069FF9FE5B3FF9FE4B1FF9FE3
      AFFF87DA9BFF00B03AFF16771CFFF8F8F8FFF3F3F3FF127F28FF50935CFF4591
      54FF0A5E42FF406483FF6FD486FF73D589FF70D486FF1E8E34FF50955EFF5095
      5DFF449152FF007C21FF0D6312FF000000001515D3FF9D9DFFFF1E1EFFFF1F41
      4BFF000000000000000000000000506BB8FF8D8DFFFF9D9DFFFF9C9CFFFF0101
      E7FF0000C3FF9595FFFF1C1CFFFFE8E8E8FF000000007C7FCBFF78ABD7FF7CAE
      D9FF80B1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFEDEE
      EEFF0000BBFF000000000000000000000000000000000000000011AF39FF2655
      9AFF000000000000000000000000000000009191FEFF20C351FFBCEAC6FFBCE8
      C5FFBCE7C4FFAEE1B7FF00A223FF809B80FF0000000000000000000000000000
      0000000000008E8EF9FF7CD387FF80D48CFF7DD48AFF0C8228FF000000000000
      000000000000000000000000000000000000C1C1C7FF8B8BFFFFA3A3FFFF5151
      EBFF313190FF8383E6FF00000000000000005E8E8BFF8080FFFFABABFFFFABAB
      FFFF1D1DFFFFABABFFFF0205E2FF00000000000000006E71CBFF76A9D6FF79AC
      D8FF7DAFDAFFBBD1E3FFBDD2E4FFBFD3E4FFC0D4E5FFC1D5E6FFC3D7E7FF94C0
      E3FF1C1CF4FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000012B13EFFD8F0
      DCFFD8F0DCFFD8EFDBFF9AD5A1FFAFC2B0FF0000000000000000000000000000
      0000000000009B9BF9FF88D28CFF8DD491FF8AD48EFF3C7469FF000000000000
      000000000000000000000000000000000000000000000000B1FFB9B9FFFF9595
      FFFF6565F5FF0000C3FF131E8FFF2A3F6BFF223477FF1112C5FF6363FFFFB9B9
      FFFFB9B9FFFF5D5DFEFF91C998FF0000000000000000060991FF74A8D6FF77AA
      D7FF7BADD9FF7FB0DAFF82B3DCFF86B6DEFF89B9DFFF8CBBE1FF8FBDE2FF8FBC
      E0FFB1B1F4FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000159C
      37FFF4FAF4FF80CB88FF081580FF000000000000000000000000000000000000
      0000000000004747E7FF93D593FF99D799FF97D697FF316756FF000000000000
      00000000000000000000000000000000000000000000000000002121C9FFC2C2
      FFFFC7C7FFFF4E4EFFFF3939FFFF4D4DF9FF3F3FFDFF1515FFFF9C9CFFFFC7C7
      FFFF5959FAFF6FB07AFF0000000000000000000000004649CBFF6DA0CDFF6693
      BBFF5A7B98FF6485A3FF6B8EACFF6F94B2FF7196B4FF7093B1FF7FAACCFF8CBA
      DEFF5555EFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002D8D45FFA6A9E1FF00000000000000000000000000000000000000000000
      000000000000FBFBFBFFACDEACFFB8E2B8FFB6E2B6FF6B9A75FF000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      D4FF3232EBFFC9C9FFFFD4D4FFFFD4D4FFFFD4D4FFFFD4D4FFFF8C8CFDFF3232
      C5FF0000000000000000000000000000000000000000999BDEFF8BB2DDFF8AB0
      D9FF85A0CEFFBBBBBBFFD0D0D0FFC2C2C2FF949494FFA6C6E7FF93B7E4FF88AC
      DDFF2C8B44FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBD4FF9E9EC1FFAFAFCAFFF1F1F2FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7B7B7FFA2A2A2FFB7B7B7FFA6A6C0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E8E8FF828298FFF2F2
      F2FF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFB7B7B8FFB8B8B9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400084878000C70B80014181800141818002454
      7800585858000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E3FF1616BFFF7272E8FF2F2F
      AEFFECECECFF0000000000000000000000000000000000000000FDFDFDFF9C9C
      A4FF0909DAFF0909D6FFABABAEFFFEFEFEFF0000000000000000000000000000
      00000000000000000000000000008A7A5800F6DCA400F5D89A00F4D186008A7A
      5800EAA81D00E8A30E0000000000000000000000000000000000000000000000
      00000000000004040400149CF000149CF00040B0F00034A4F000149CF0001C30
      380068C0F0006498B80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111BFFF0000D0FF8282FAFF0B0B
      D8FF1D1DB9FFE5E5E5FF000000000000000000000000FBFBFBFF848499FF0000
      D6FF7171EAFF2D2DE1FF0000CAFFE6E6E6FF0000000000000000000000000000
      000053B6F60053B6F600000000008A7A5800FAEAC800F9E5BC00F6DCA4008A7A
      5800ECB23600E8A4110000000000000000000000000000000000000000000000
      000000000000149CF000149CF00028282C00BCE0F8005CB8F000149CF000041C
      280070B8E00074C4F00058585800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000C6FF3B3BFFFF5050FFFF8080
      FEFF1212D4FF0F0FC3FFDBDBDBFF00000000F7F7F7FF676793FF0000D1FF7C7C
      EFFF7777FFFF6262FFFF2626E0FFE1E1E1FF000000006C6C6C00000000006C6C
      6C0053B6F60053B6F6001A1A1A005F5B54008A7A58008A7A58008A7A58008A7A
      58008A7A58008A7A580000000000000000004CA44C004CA44C005CAC5C006CB4
      6C0004040400149CF0003088C800787C840098C0D800283438000878C800149C
      F000040404009CD4F80088A8B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1EFFFF3030FFFF4242FFFF5454
      FFFF7575FFFF1616CFFF0505C8FFC8C8C8FF484897FF0000CBFF7D7DF4FF7474
      FFFF6464FFFF5353FFFF4141FFFFF4F4F4FF6C6C6C0000000000B1CCDC008CCE
      FB0053B6F6001B9EF7000E86D800031D2E005F5B5400FDF5E500FAEAC8008A7A
      5800EEBB4E00EAA81D0000000000000000005CAC5C00040404005CAC5C000404
      04000404040034A4F0005CB8F00074C4F000344C5800405060000878C800149C
      F00004040400BCE0F8009CD4F8000000000000000000FEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFFDFDFDFFFEFEFEFF2525FEFF3333FFFF4242
      FFFF5151FFFF6464FFFF1515C9FF0000C4FF0101C4FF6E6EF8FF6767FFFF5D5D
      FFFF5050FFFF4141FFFFC4C4D2FF0000000000000000EBEBEB00CDEAFC006C6C
      6C00000000006C6C6C001199F7000F8FE80011191F0000000000000000000000
      0000000000000000000000000000000000005CAC5C0078B8780080C080008CC4
      8C00344C580040B0F0005CA8D000E8ECE800BCE0F8005CB8F000149CF0000868
      A800CCDCE800CCE8F80088A8B80000000000919191FF959595FF9A9A9AFF9E9E
      9EFFA4A4A4FFA6A6A6FFA8A8A8FFA8A8A8FFA7A7A7FF0044E4FF1875FBFF5DAC
      FBFF62B0FBFF217BFBFF0049E8FF9F9FBCFF00000000000000002727F5FF3030
      FFFF3C3CFFFF4747FFFF5050FFFF0D0DC4FF5454FCFF5454FFFF4E4EFFFF4646
      FFFF3B3BFFFF1D6EE4FF00000000000000000000000000000000000000000000
      000000000000000000001199F7001199F7000000000000000000000000000000
      0000000000000000000000000000000000006CB46C00040404006CB46C000404
      04009CCC9C005CB8F00028343800FFFFFF0088A8B800DCECF800141818001418
      1800ECF4F800E8ECE8005858580000000000A8A8A8FFAEAEAEFFB4B4B4FFB8B8
      B8FFBCBCBCFFBEBEBEFFC0C0C0FFC0C0C0FFBFBFBFFF768BE8FF6E99F7FF6AA4
      FEFF6BA6FEFF6B99F8FF768DEAFF9FA3BFFF0000000000000000000000003636
      E4FF6767FFFF6D6DFFFF7171FFFF6868FFFF7575FFFF7474FFFF5959FFFF2F2F
      FFFF67A0F5FF00000000000000000000000000000000000000006C6C6C000000
      0000000000006C6C6C001199F7001199F7000000000000000000000000000000
      00000000000000000000000000000000000080C080000404040080C080000404
      04009CCC9C00406C880068B8E000C8CCCC00BCE0F8005CB8F000149CF0001418
      1800FFFFFF00B4BCBC000000000000000000000000009E9E9EFFCACACAFFCECE
      CEFFD2D2D2FFD5D5D5FFD5D5D5FFD4D4D4FFD1D1D1FFCDCDCDFFCBCBCBFFC9C9
      C9FFC6C6C6FF000000000000000000000000000000000000000000000000B9B9
      B9FF1919E9FF6F6FFFFF7272FFFF7474FFFF7474FFFF7474FFFF5151FEFF9696
      96FF0000000000000000000000000000000000000000232424006C6C6C008CCE
      FB0053B6F6001B9EF7001199F700000000006C6C6C0000000000000000000000
      00000000000000000000000000000000000080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00DCECDC0068B8E0007098B800BCE0F80058B0E00078889000F8F8
      F800E8ECE80000000000000000000000000000000000B0B0B0FFE7E7E7FFE8E8
      E8FFEAEAEAFFEBEBEBFFECECECFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFE7E7
      E7FFE4E4E4FF0000000000000000000000000000000000000000CFCFCFFF1111
      94FF0000A2FF3939FFFF7777FFFF7878FFFF7878FFFF7272FFFF0202BAFF0000
      A0FFAEAEAEFF0000000000000000000000006C6C6C006C6C6C00CDEAFC008CCE
      FB000000000000000000063D63000000000000000000000000008CCEFB003FAD
      F9001199F7001199F70000000000000000008CC48C00040404008CC48C000404
      0400CCE4CC0004040400040404004C7088001418180014181800DCECF800DCEC
      F8000000000000000000000000000000000000000000B7B7B7FFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFF0F0F0FF00000000000000000000000000000000A2A2A2FF0F0F8FFF0000
      99FF3838FFFF8383FFFF8383FFFF8383FFFF8383FFFF8383FFFF7676FFFF0000
      B2FF000096FFC3C3C3FF000000000000000000000000FCFEFF00CDEAFC006992
      AB00000000000000000000000000000000000000000000000000A8DAFC006FC2
      FA004CB3F9004CB3F90000000000000000008CC48C00ACD4AC00BCDCBC00DCEC
      DC00E8ECE800FFFFFF00FFFFFF00FFFFFF002C80B8005490B8007098B800CCE8
      F800000000000000000000000000000000000000000000000000DDDDDDFFE4E4
      E4FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFEDED
      EDFFC5C5C5FF000000000000000000000000E7E7E7FF0F0F87FF00008FFF4545
      FFFF9191FFFF9191FFFF9191FFFF3535F9FF9191FFFF9191FFFF9191FFFF8282
      FFFF0000ABFF00008DFFC7C7C7FF0000000000000000BDBEBF00CDEAFC008CCE
      FB0053B6F6001B9EF7001199F7000A609A000000000000000000000000000000
      0000000000000000000000000000000000008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80000000000249CEC005CB8F00074C4F0009CD4
      F8009CD4F8003C44440000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008585A2FF00008EFF4E4EFFFF9F9F
      FFFF9F9FFFFF9F9FFFFF4545EEFF000000008282CCFF9F9FFFFF9F9FFFFF9F9F
      FFFF8F8FFFFF0000AAFF1A1A8FFF00000000000000001A1A1A0070828D0085C2
      E80053B6F60053B6F6000A5C940002131F000000000000000000000000000000
      0000000000000000000000000000000000008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80048485000149CF0001C70A8005CB8F00068C0
      F00068C0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7D9FFF5555FFFFAEAEFFFFAEAE
      FFFFAEAEFFFF4949EDFF0000000000000000000000008282CCFFAEAEFFFFAEAE
      FFFFAEAEFFFF9C9CFFFF0B0BAAFF000000000000000000000000000000002324
      240053B6F60053B6F60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080C0800004040400040404000404
      040004040400040404000404040028282C0000000000000000001C78B8002870
      A000405060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E5FFB2B2FFFFBCBCFFFFBCBC
      FFFF4646EDFF00000000000000000000000000000000000000008383CCFFBCBC
      FFFFBCBCFFFFBCBCFFFF8D8DCEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00CCE4CC00CCE4CC00CCE4CC0094A4980000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E9FFB8B8FFFF4F4F
      EAFF000000000000000000000000000000000000000000000000000000008383
      CCFFCACAFFFFA2A2CEFF0000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FC01FFFFFFFF0000FC01FE03FFFF0000
      FC018001FDFF0000FC010000F9FF0000FC018001E001000000018001C0010000
      00018001800100000001C0010001000000018005000100000001800780010000
      00018007C001000000018007E0010000007F8007F1FF0000007F8007F9FF0000
      007F8007FDFF0000007FC00FFFFF0000F83FFEFFFF7F80038003F84FFE3F8003
      0003F807FC1F80010003C803F80F800100038001F007C00100038001E0030001
      00038001E00100FF800301C1E080007F800303C1F1C0007F800307810180807F
      800307010011803F80030007047BE03F80038007001FF03F8003800F111FF01F
      8003803FF7FFF01F8003E27FF7FFF81FFFFFFFFFFFFFFFFFF01FF00FFFFFF01F
      C007C007F00FC00780038001C003800300010001800180010000000000010001
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010000000100018003000180038003E0078003
      C007C007F83FC007F01FF01FFFFFF01FF7FFF01FFFFFFFFFF3FFC007FFFFF00F
      F1FF8003FFFFC007F0FF8001FFE78003F87F0380FFE30001F03F07E0FF810000
      F01F0FF000000000F01F0C7000000000F01F0C3000000000E01F042080030000
      E00F000180070000F00F8001C0070001F00FC003FFFF8001F00FE407FFFF8003
      F007FC3FFFFFE007F807FC7FFFFFF83FFFFFFFFFFFFFF003FFFFF83FF01FF003
      FDFFF83FC0078003F0FFF83F80038003E07FF83F00018003C03FF83F00E08003
      801F000100708003000F0001001080030003000110008003000100010C008007
      060000010E008007CF00F83F03018007FFC0F83F80018007FFE1F83FC0038007
      FFF3F83FE00F8007FFFFFFFFFC3FF87FFFFFFFFFFFFF8FE3F001FC07FFFF07C0
      E001F803FFFF0380E0010001FFFF010080010001FFFF00000001000180000001
      000100010000C003087F00010000E007C07F00038007E00F800100078007C007
      0181000F8007800300010007C007000100010003FFFF010180FF0003FFFF0381
      C1FF0007FFFF07C1E1FF007FFFFF8FE300000000000000000000000000000000
      000000000000}
  end
  object dsCongthuc: TDataSource
    DataSet = qryCongthuc
    Left = 70
    Top = 314
  end
  object qryCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PA_MA'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_LUONG_CONGTHUC'
      'WHERE'
      '   CT_MA = :OLD_CT_MA AND'
      '   PA_MA = :OLD_PA_MA')
    EditSQL.Strings = (
      'UPDATE HR_LUONG_CONGTHUC SET'
      '   CT_MA = :CT_MA, /*PK*/'
      '   PA_MA = :PA_MA, /*PK*/'
      '   CT_KYHIEU = :CT_KYHIEU,'
      '   CT_TIEUDE = :CT_TIEUDE,'
      '   CT_KIEUDULIEU = :CT_KIEUDULIEU,'
      '   CT_BIEUTHUC = :CT_BIEUTHUC,'
      '   CT_HINHTHUC_NHAPLIEU = :CT_HINHTHUC_NHAPLIEU,'
      '   CT_TUDONG_CAPNHAT = :CT_TUDONG_CAPNHAT,'
      '   CT_THUTU_TINH = :CT_THUTU_TINH,'
      '   CT_THUTU_HIENTHI = :CT_THUTU_HIENTHI,'
      '   CT_SESSION = :CT_SESSION,'
      '   CT_WIDTH = :CT_WIDTH'
      'WHERE'
      '   CT_MA = :OLD_CT_MA AND'
      '   PA_MA = :OLD_PA_MA')
    Filtered = True
    GeneratorLinks.Strings = (
      'CT_MA=gen_hr_luong_congthuc_id')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_LUONG_CONGTHUC('
      '   CT_MA, /*PK*/'
      '   PA_MA, /*PK*/'
      '   CT_KYHIEU,'
      '   CT_TIEUDE,'
      '   CT_KIEUDULIEU,'
      '   CT_BIEUTHUC,'
      '   CT_HINHTHUC_NHAPLIEU,'
      '   CT_TUDONG_CAPNHAT,'
      '   CT_THUTU_TINH,'
      '   CT_THUTU_HIENTHI,'
      '   CT_SESSION,'
      '   CT_WIDTH)'
      'VALUES ('
      '   :CT_MA,'
      '   :PA_MA,'
      '   :CT_KYHIEU,'
      '   :CT_TIEUDE,'
      '   :CT_KIEUDULIEU,'
      '   :CT_BIEUTHUC,'
      '   :CT_HINHTHUC_NHAPLIEU,'
      '   :CT_TUDONG_CAPNHAT,'
      '   :CT_THUTU_TINH,'
      '   :CT_THUTU_HIENTHI,'
      '   :CT_SESSION,'
      '   :CT_WIDTH)')
    KeyLinks.Strings = (
      'HR_LUONG_CONGTHUC.CT_MA'
      'HR_LUONG_CONGTHUC.PA_MA')
    Unicode = True
    RecordCountAccurate = True
    BeforeCancel = qryCongthucBeforeCancel
    AfterCancel = qryCongthucAfterCancel
    BeforeEdit = qryCongthucBeforeEdit
    BeforeDelete = qryCongthucBeforeDelete
    AfterDelete = qryCongthucAfterDelete
    BeforePost = qryCongthucBeforePost
    AfterPost = qryCongthucAfterPost
    OnNewRecord = qryCongthucNewRecord
    SQL.Strings = (
      'SELECT HR_LUONG_CONGTHUC.PA_MA'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_BIEUTHUC'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_TUDONG_CAPNHAT'
      '     , CT_THUTU_TINH'
      '     , CT_THUTU_HIENTHI'
      '     , CT_SESSION'
      '     , CT_WIDTH'
      'FROM HR_LUONG_CONGTHUC'
      'left JOIN HR_LUONG_SESSION on '
      '    HR_LUONG_CONGTHUC.PA_MA=HR_LUONG_SESSION.PA_MA and  '
      '    CT_SESSION=S_MA'
      'where HR_LUONG_CONGTHUC.PA_MA=:PA_MA '
      'order by CT_SESSION,CT_THUTU_HIENTHI')
    FieldOptions = []
    Left = 70
    Top = 282
    object qryCongthucPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qryCongthucCT_MA: TIntegerField
      FieldName = 'CT_MA'
      Required = True
    end
    object qryCongthucCT_KYHIEU: TWideStringField
      DisplayWidth = 30
      FieldName = 'CT_KYHIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_TIEUDE: TWideStringField
      FieldName = 'CT_TIEUDE'
      Required = True
      Size = 126
    end
    object qryCongthucCT_KIEUDULIEU: TWideStringField
      FieldName = 'CT_KIEUDULIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_BIEUTHUC: TWideStringField
      FieldName = 'CT_BIEUTHUC'
      Size = 3072
    end
    object qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_TUDONG_CAPNHAT: TIntegerField
      FieldName = 'CT_TUDONG_CAPNHAT'
    end
    object qryCongthucCT_THUTU_TINH: TIntegerField
      FieldName = 'CT_THUTU_TINH'
    end
    object qryCongthucCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
    object qryCongthucCT_SESSION: TIntegerField
      FieldName = 'CT_SESSION'
      Required = True
    end
    object qryCongthucCT_WIDTH: TIntegerField
      FieldName = 'CT_WIDTH'
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = transaction
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 166
    Top = 290
  end
  object ActionList1: TActionList
    Images = imlIcon
    Left = 120
    Top = 104
    object acInitGridColumn: TAction
      Caption = 'ac'
      OnExecute = acInitGridColumnExecute
    end
    object acAppendColumn: TAction
      Category = 'ToolBar'
      Caption = 'acAppendColumn'
      ImageIndex = 22
      OnExecute = acAppendColumnExecute
      OnUpdate = acAppendColumnUpdate
    end
    object acInitBandColumn: TAction
      Caption = 'acInitBandColumn'
      OnExecute = acInitBandColumnExecute
    end
    object acInsertColumn: TAction
      Category = 'ToolBar'
      Caption = 'acInsertColumn'
      Hint = #202'ds'#174#169'sdsadsd'
      ImageIndex = 5
      ShortCut = 16449
      OnExecute = acInsertColumnExecute
      OnUpdate = acInsertColumnUpdate
    end
    object acCheckSyntax: TAction
      Category = 'ToolBar'
      Caption = 'acCheckSyntax'
      ImageIndex = 18
      OnExecute = acCheckSyntaxExecute
    end
    object acOtherFormular: TAction
      Category = 'ToolBar'
      Caption = 'acOtherFormular'
      ImageIndex = 16
      OnExecute = acOtherFormularExecute
      OnUpdate = acOtherFormularUpdate
    end
    object acMathFunction: TAction
      Category = 'ToolBar'
      Caption = 'acMathFunction'
      ImageIndex = 12
      OnExecute = acMathFunctionExecute
      OnUpdate = acMathFunctionUpdate
    end
    object acSystemFunction: TAction
      Category = 'ToolBar'
      Caption = 'acSystemFunction'
      ImageIndex = 17
      OnExecute = acSystemFunctionExecute
      OnUpdate = acSystemFunctionUpdate
    end
    object acIFStatement: TAction
      Category = 'ToolBar'
      Caption = 'acIFStatement'
      ImageIndex = 19
      OnExecute = acIFStatementExecute
      OnUpdate = acIFStatementUpdate
    end
    object acSQLStatement: TAction
      Category = 'ToolBar'
      Caption = 'acSQLStatement'
      ImageIndex = 21
      OnExecute = acSQLStatementExecute
      OnUpdate = acSQLStatementUpdate
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      ImageIndex = 3
      ShortCut = 16451
      DataSource = dsCongthuc
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      ImageIndex = 4
      ShortCut = 16467
      DataSource = dsCongthuc
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      ImageIndex = 6
      ShortCut = 16452
      DataSource = dsCongthuc
    end
    object acDinhnghiaHeader: TAction
      Category = 'Header'
      Caption = 'acThemHeader'
      ImageIndex = 10
      OnExecute = acDinhnghiaHeaderExecute
      OnUpdate = acDinhnghiaHeaderUpdate
    end
    object acDinhnghiaHamso: TAction
      Caption = 'acDinhnghiaHamso'
      OnExecute = acDinhnghiaHamsoExecute
    end
    object acSaochepPALuong: TAction
      Category = 'Header'
      Caption = 'acSaochepPALuong'
      ImageIndex = 7
      OnExecute = acSaochepPALuongExecute
      OnUpdate = acSaochepPALuongUpdate
    end
    object acDeleteColumn: TAction
      Category = 'ToolBar'
      Caption = 'acDeleteColumn'
      ImageIndex = 6
      OnExecute = acDeleteColumnExecute
      OnUpdate = acDeleteColumnUpdate
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'ToolBar'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 943
        FloatTop = 293
        FloatClientWidth = 116
        FloatClientHeight = 210
        ItemLinks = <
          item
            Item = dxSaochepPALuong
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxDinhnghiaHeader
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxAddColumn
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            Item = dxInsertColumn
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            Item = dxDeleteColumn
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxCommit
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            Item = dxCancel
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxOtherFormular
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            Item = dxMathFunction
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            Item = dxSystemFunction
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            Item = dxIFStatement
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            Item = dxSQLStatement
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxCheckSyntax
            UserDefine = [udPaintStyle]
            UserPaintStyle = psCaptionGlyph
            Visible = True
          end>
        MultiLine = True
        Name = 'ToolBar'
        OneOnRow = True
        RotateWhenVertical = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end>
    CanCustomize = False
    Categories.WideStrings = (
      'Default'
      'ToolBar'
      'SessionBar')
    Categories.ItemsVisibles = (
      255
      255
      2)
    Categories.Visibles = (
      True
      True
      True)
    Images = imlIcon
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 144
    Top = 72
    DockControlHeights = (
      0
      0
      0
      0)
    object dxAddColumn: TdxBarButton
      Action = acInsertColumn
      Align = iaClient
      Caption = 'Th'#234'm c'#7897't l'#432#417'ng'
      Category = 1
      Hint = 'Th'#234'm c'#7897't l'#432#417'ng m'#7899'i v'#224'o b'#7843'ng l'#432#417'ng'
      Visible = ivAlways
    end
    object dxDeleteColumn: TdxBarButton
      Action = acDeleteColumn
      Caption = 'X'#243'a c'#7897't l'#432#417'ng'
      Category = 1
      Hint = 'X'#243'a c'#7897't l'#432#417'ng'
      Visible = ivAlways
      ShortCut = 16452
    end
    object dxCheckSyntax: TdxBarButton
      Action = acCheckSyntax
      Caption = 'Ki'#7875'm tra bi'#7875'u th'#7913'c'
      Category = 1
      Hint = 'Ki'#7875'm tra c'#250' ph'#225'p bi'#7875'u th'#7913'c t'#237'nh to'#225'n  c'#7911'a c'#7897't l'#432#417'ng hi'#7879'n t'#7841'i'
      Visible = ivAlways
    end
    object dxMathFunction: TdxBarButton
      Action = acMathFunction
      Caption = 'H'#224'm to'#225'n h'#7885'c'
      Category = 1
      Hint = 'H'#224'm to'#225'n h'#7885'c'
      Visible = ivAlways
      ButtonStyle = bsDropDown
    end
    object dxSystemFunction: TdxBarButton
      Action = acSystemFunction
      Caption = 'H'#224'm h'#7879' th'#7889'ng'
      Category = 1
      Hint = 'H'#224'm h'#7879' th'#7889'ng'
      Visible = ivAlways
      ButtonStyle = bsDropDown
    end
    object dxIFStatement: TdxBarButton
      Action = acIFStatement
      Caption = 'C'#226'u l'#7879'nh IF'
      Category = 1
      Hint = 'C'#226'u l'#7879'nh IF'
      Visible = ivAlways
    end
    object dxSQLStatement: TdxBarButton
      Action = acSQLStatement
      Caption = 'C'#226'u l'#7879'nh SQL'
      Category = 1
      Hint = 'C'#226'u l'#7879'nh SQL'
      Visible = ivAlways
    end
    object dxOtherFormular: TdxBarButton
      Action = acOtherFormular
      Caption = 'Bi'#7875'u th'#7913'c kh'#225'c'
      Category = 1
      Hint = 'Bi'#7875'u th'#7913'c kh'#225'c'
      Visible = ivAlways
      ButtonStyle = bsDropDown
    end
    object dxInsertColumn: TdxBarButton
      Action = acAppendColumn
      Caption = 'Ch'#232'n c'#7897't l'#432#417'ng m'#7899'i'
      Category = 1
      Hint = 'Ch'#232'n c'#7897't l'#432#417'ng m'#7899'i'
      Visible = ivAlways
    end
    object dxCommit: TdxBarButton
      Action = acPost
      Caption = 'X'#225'c nh'#7853'n'
      Category = 1
      Hint = 'X'#225'c nh'#7853'n'
      Visible = ivAlways
    end
    object dxCancel: TdxBarButton
      Action = acCancel
      Caption = 'H'#7911'y b'#7887
      Category = 1
      Hint = 'H'#7911'y b'#7887
      Visible = ivAlways
    end
    object dxDinhnghiaHeader: TdxBarButton
      Action = acDinhnghiaHeader
      Caption = #272#7883'nh ngh'#297'a Header'
      Category = 2
      Hint = #272#7883'nh ngh'#297'a Header'
      Visible = ivAlways
    end
    object dxXoaHeader: TdxBarButton
      Caption = 'X'#243'a Header'
      Category = 2
      Hint = 'X'#243'a Header'
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxSaochepPALuong: TdxBarButton
      Action = acSaochepPALuong
      Caption = 'Sao ch'#233'p PA l'#432#417'ng'
      Category = 2
      Hint = 'Sao ch'#233'p PA l'#432#417'ng'
      Visible = ivAlways
    end
  end
  object transaction: TIB_Transaction
    IB_Connection = dmMain.connMain
    Isolation = tiConcurrency
    Left = 104
    Top = 317
  end
  object qryMathFunction: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HAMSO_ID'
      '     , HAMSO_TIEUDE'
      '     , HAMSO_KYHIEU'
      '     , HAMSO_HUONGDAN'
      'FROM HR_LUONG_HAMSO'
      'where HAMSO_LOAI='#39'MATH'#39)
    FieldOptions = []
    Left = 573
    Top = 325
    object qryMathFunctionHAMSO_ID: TWideStringField
      FieldName = 'HAMSO_ID'
      Required = True
      Size = 30
    end
    object qryMathFunctionHAMSO_TIEUDE: TWideStringField
      FieldName = 'HAMSO_TIEUDE'
      Required = True
      Size = 126
    end
    object qryMathFunctionHAMSO_KYHIEU: TWideStringField
      FieldName = 'HAMSO_KYHIEU'
      Required = True
      Size = 30
    end
    object qryMathFunctionHAMSO_HUONGDAN: TWideStringField
      FieldName = 'HAMSO_HUONGDAN'
      Size = 3072
    end
  end
  object dsMathFunction: TDataSource
    DataSet = qryMathFunction
    Left = 573
    Top = 365
  end
  object qryCongthucKhac: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CT_KYHIEU'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsCongthuc
    SQL.Strings = (
      'SELECT PA_MA'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_BIEUTHUC'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_TUDONG_CAPNHAT'
      '     , CT_THUTU_TINH'
      '     , CT_THUTU_HIENTHI'
      'FROM HR_LUONG_CONGTHUC'
      'where (PA_MA=:PA_MA) and'
      '      (CT_KYHIEU <>:CT_KYHIEU) '
      'order by CT_THUTU_HIENTHI')
    FieldOptions = []
    Left = 613
    Top = 325
    object qryCongthucKhacPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qryCongthucKhacCT_MA: TIntegerField
      FieldName = 'CT_MA'
      Required = True
    end
    object qryCongthucKhacCT_KYHIEU: TWideStringField
      FieldName = 'CT_KYHIEU'
      Required = True
      Size = 63
    end
    object qryCongthucKhacCT_TIEUDE: TWideStringField
      FieldName = 'CT_TIEUDE'
      Required = True
      Size = 126
    end
    object qryCongthucKhacCT_KIEUDULIEU: TWideStringField
      FieldName = 'CT_KIEUDULIEU'
      Required = True
      Size = 30
    end
    object qryCongthucKhacCT_BIEUTHUC: TWideStringField
      FieldName = 'CT_BIEUTHUC'
      Size = 3072
    end
    object qryCongthucKhacCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryCongthucKhacCT_TUDONG_CAPNHAT: TIntegerField
      FieldName = 'CT_TUDONG_CAPNHAT'
    end
    object qryCongthucKhacCT_THUTU_TINH: TIntegerField
      FieldName = 'CT_THUTU_TINH'
    end
    object qryCongthucKhacCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
  end
  object dsCongthucKhac: TDataSource
    DataSet = qryCongthucKhac
    Left = 613
    Top = 365
  end
  object qrySysFunction: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HAMSO_ID'
      '     , HAMSO_TIEUDE'
      '     , HAMSO_KYHIEU'
      '     , HAMSO_HUONGDAN'
      'FROM HR_LUONG_HAMSO'
      'where HAMSO_LOAI='#39'SYSTEM'#39)
    FieldOptions = []
    Left = 653
    Top = 325
    object qrySysFunctionHAMSO_ID: TWideStringField
      FieldName = 'HAMSO_ID'
      Required = True
      Size = 30
    end
    object qrySysFunctionHAMSO_TIEUDE: TWideStringField
      FieldName = 'HAMSO_TIEUDE'
      Required = True
      Size = 126
    end
    object qrySysFunctionHAMSO_KYHIEU: TWideStringField
      FieldName = 'HAMSO_KYHIEU'
      Required = True
      Size = 30
    end
    object qrySysFunctionHAMSO_HUONGDAN: TWideStringField
      FieldName = 'HAMSO_HUONGDAN'
      Size = 3072
    end
  end
  object dsSysFunction: TDataSource
    DataSet = qrySysFunction
    Left = 653
    Top = 365
  end
  object qrySession: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PA_MA'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_LUONG_SESSION'
      'WHERE'
      '   PA_MA = :OLD_PA_MA AND'
      '   S_MA = :OLD_S_MA')
    EditSQL.Strings = (
      'UPDATE HR_LUONG_SESSION SET'
      '   PA_MA = :PA_MA, /*PK*/'
      '   S_MA = :S_MA, /*PK*/'
      '   S_TIEUDE = :S_TIEUDE,'
      '   S_BEFORE_SCRIPT = :S_BEFORE_SCRIPT,'
      '   S_AFTER_SCRIPT = :S_AFTER_SCRIPT,'
      '   S_REFRESH = :S_REFRESH,'
      '   S_EXEC_BSCRIPT = :S_EXEC_BSCRIPT,'
      '   S_EXEC_AFTER = :S_EXEC_AFTER'
      'WHERE'
      '   PA_MA = :OLD_PA_MA AND'
      '   S_MA = :OLD_S_MA')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_LUONG_SESSION('
      '   PA_MA, /*PK*/'
      '   S_MA, /*PK*/'
      '   S_TIEUDE,'
      '   S_BEFORE_SCRIPT,'
      '   S_AFTER_SCRIPT,'
      '   S_REFRESH,'
      '   S_EXEC_BSCRIPT,'
      '   S_EXEC_AFTER)'
      'VALUES ('
      '   :PA_MA,'
      '   :S_MA,'
      '   :S_TIEUDE,'
      '   :S_BEFORE_SCRIPT,'
      '   :S_AFTER_SCRIPT,'
      '   :S_REFRESH,'
      '   :S_EXEC_BSCRIPT,'
      '   :S_EXEC_AFTER)')
    KeyLinks.Strings = (
      'HR_LUONG_SESSION.PA_MA'
      'HR_LUONG_SESSION.S_MA')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qrySessionNewRecord
    SQL.Strings = (
      'SELECT PA_MA'
      '     , S_MA'
      '     , S_TIEUDE'
      '     , S_BEFORE_SCRIPT'
      '     , S_AFTER_SCRIPT'
      '     , S_REFRESH'
      '     , S_EXEC_BSCRIPT'
      '     , S_EXEC_AFTER'
      'FROM HR_LUONG_SESSION'
      'where PA_MA=:PA_MA'
      'order by S_MA')
    FieldOptions = []
    Left = 30
    Top = 282
    object qrySessionPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qrySessionS_MA: TIntegerField
      FieldName = 'S_MA'
      Required = True
    end
    object qrySessionS_TIEUDE: TWideStringField
      FieldName = 'S_TIEUDE'
      Required = True
      Size = 126
    end
    object qrySessionS_BEFORE_SCRIPT: TWideStringField
      FieldName = 'S_BEFORE_SCRIPT'
      Size = 3072
    end
    object qrySessionS_AFTER_SCRIPT: TWideStringField
      FieldName = 'S_AFTER_SCRIPT'
      Size = 3072
    end
    object qrySessionS_REFRESH: TIntegerField
      FieldName = 'S_REFRESH'
    end
    object qrySessionS_EXEC_BSCRIPT: TIntegerField
      FieldName = 'S_EXEC_BSCRIPT'
    end
    object qrySessionS_EXEC_AFTER: TIntegerField
      FieldName = 'S_EXEC_AFTER'
    end
  end
  object dsSession: TDataSource
    DataSet = qrySession
    Left = 30
    Top = 314
  end
  object qryPhanQuyen: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'KEY_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT KEY_ID, ALLOW_ADD, ALLOW_EDIT, ALLOW_DELETE'
      'FROM HR_LUONG_PA_USER '
      'WHERE HR_LUONG_PA_USER.USERACCID = :USER_NAME'
      '    AND HR_LUONG_PA_USER.SUBSYSTEMID = :SUBSYSTEMID'
      '    AND HR_LUONG_PA_USER.ALLOW_VIEW = 1'
      '    AND HR_LUONG_PA_USER.MA_PA = :PA_MA')
    FieldOptions = []
    Left = 302
    Top = 74
    object qryPhanQuyenALLOW_ADD: TSmallintField
      FieldName = 'ALLOW_ADD'
    end
    object qryPhanQuyenALLOW_EDIT: TSmallintField
      FieldName = 'ALLOW_EDIT'
    end
    object qryPhanQuyenALLOW_DELETE: TSmallintField
      FieldName = 'ALLOW_DELETE'
    end
    object qryPhanQuyenKEY_ID: TIntegerField
      FieldName = 'KEY_ID'
      Required = True
    end
  end
end
