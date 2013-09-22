inherited frmWageMethod: TfrmWageMethod
  Left = 193
  Top = 209
  Width = 781
  Height = 481
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 428
    Width = 773
  end
  inline frameToolbar1: TframeToolbar [1]
    Left = 0
    Top = 382
    Width = 773
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 773
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited dxLayoutControl1Group1: TdxLayoutGroup
          inherited dxLayoutControl1Item14: TdxLayoutItem
            Visible = False
          end
        end
      end
    end
  end
  object pageLeft: TElPageControl
    Left = 0
    Top = 0
    Width = 305
    Height = 382
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = False
    Images = ImageList1
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
    ActivePage = tabWageMethod
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
    TabOrder = 2
    object tabWageMethod: TElTabSheet
      PageControl = pageLeft
      ImageIndex = 0
      TabVisible = True
      Caption = 'Danh s'#225'ch ph'#432#417'ng '#225'n l'#432#417'ng'
      object gridWageMethod: TdxDBGrid
        Left = 0
        Top = 0
        Width = 305
        Height = 358
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'METHOD_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        DataSource = dsWageMethod
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridWageMethodMETHOD_NO: TdxDBGridColumn
          Caption = 'M'#227' ph'#432#417'ng '#225'n '
          HeaderAlignment = taCenter
          Width = 87
          BandIndex = 0
          RowIndex = 0
          FieldName = 'METHOD_NO'
          Caption_UTF7 = 'M+AOM ph+AbABoQ-ng +AOE-n '
        end
        object gridWageMethodMETHOD_NAME: TdxDBGridColumn
          Caption = 'T'#234'n ph'#432#417'ng '#225'n l'#432#417'ng '
          HeaderAlignment = taCenter
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'METHOD_NAME'
          Caption_UTF7 = 'T+AOo-n ph+AbABoQ-ng +AOE-n l+AbABoQ-ng '
        end
        object gridWageMethodMETHOD_NOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'METHOD_NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
    end
  end
  object ElSplitter1: TElSplitter
    Left = 305
    Top = 0
    Width = 4
    Height = 382
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageLeft
    ControlBottomRight = panelRight
    AutoHide = False
    Align = alLeft
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object panelRight: TElPanel
    Left = 309
    Top = 0
    Width = 464
    Height = 382
    Align = alClient
    BevelOuter = bvNone
    UseXPThemes = False
    MouseCapture = False
    TabOrder = 4
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object Splitter1: TSplitter
      Left = 0
      Top = 248
      Width = 464
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 464
      Height = 248
      Align = alTop
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      object ElPopupButton1: TElPopupButton
        Left = 157
        Top = 220
        Width = 75
        Height = 25
        Cursor = crDefault
        ImageIndex = 1
        UseImageList = True
        Images = dmMain.imgAction
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        TabOrder = 1
        Color = clBtnFace
        ParentColor = False
        Action = acAddFormulars
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object ElPopupButton2: TElPopupButton
        Left = 232
        Top = 220
        Width = 75
        Height = 25
        Cursor = crDefault
        ImageIndex = 2
        UseImageList = True
        Images = dmMain.imgAction
        DrawDefaultFrame = False
        LinkColor = clBlue
        LinkStyle = [fsUnderline]
        NumGlyphs = 1
        UseXPThemes = True
        TabOrder = 2
        Color = clBtnFace
        ParentColor = False
        Action = acRemoveFormulars
        DockOrientation = doNoOrient
        DoubleBuffered = False
      end
      object gridWageMethodDetail: TdxDBGrid
        Left = 3
        Top = 3
        Width = 301
        Height = 324
        Bands = <
          item
            Caption = 'Chi ti'#7871't ph'#432#417'ng '#225'n l'#432#417'ng'
          end>
        DefaultLayout = False
        HeaderMinRowCount = 2
        HeaderPanelRowCount = 1
        KeyField = 'FORMULAR_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = gridWageMethodDetailEnter
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsWageMethodDetail
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object gridWageMethodDetailORDER_INDEX: TdxDBGridColumn
          Alignment = taCenter
          Caption = 'Th'#7913' t'#7921' t'#237'nh'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORDER_INDEX'
          Caption_UTF7 = 'Th+Huk t+HvE t+AO0-nh'
        end
        object gridWageMethodDetailFORMULAR_NAME: TdxDBGridColumn
          Caption = 'C'#244'ng th'#7913'c l'#432#417'ng'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 157
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FORMULAR_NAME'
          Caption_UTF7 = 'C+APQ-ng th+Huk-c l+AbABoQ-ng'
        end
        object gridWageMethodDetailIS_PLUS: TdxDBGridCheckColumn
          Alignment = taCenter
          Caption = 'Kho'#7843'n nh'#7853'n'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_PLUS'
          ValueChecked = '1'
          ValueUnchecked = '-1'
          OnToggleClick = gridWageMethodDetailIS_PLUSToggleClick
          Caption_UTF7 = 'Kho+HqM-n nh+Hq0-n'
        end
        object gridWageMethodDetailIS_MINUS: TdxDBGridCheckColumn
          Caption = 'Kho'#7843'n thu'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_PLUS'
          ValueChecked = '-1'
          ValueUnchecked = '1'
          OnToggleClick = gridWageMethodDetailIS_MINUSToggleClick
          Caption_UTF7 = 'Kho+HqM-n thu'
        end
        object gridWageMethodDetailIS_MAIN_WAGE: TdxDBGridCheckColumn
          Alignment = taCenter
          Caption = 'Kho'#7843'n l'#432#417'ng ch'#237'nh'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_MAIN_WAGE'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = 'Kho+HqM-n l+AbABoQ-ng ch+AO0-nh'
        end
        object gridWageMethodDetailFORMULAR_NO: TdxDBGridColumn
          Color = clInfoBk
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FORMULAR_NO'
        end
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          ShowCaption = False
          Control = gridWageMethodDetail
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object dxLayoutControl2: TdxLayoutControl
      Left = 0
      Top = 251
      Width = 464
      Height = 131
      Align = alClient
      TabOrder = 1
      AutoContentSizes = [acsWidth, acsHeight]
      object gridRemainDetail: TdxDBGrid
        Left = 3
        Top = 3
        Width = 250
        Height = 129
        Bands = <
          item
            Caption = 'Danh s'#225'ch c'#244'ng th'#7913'c l'#432#417'ng'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'FORMULAR_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
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
        DataSource = dsRemainDetail
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object gridRemainDetailORDER_INDEX: TdxDBGridColumn
          Caption = 'Th'#7913' t'#7921' t'#237'nh'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORDER_INDEX'
          Caption_UTF7 = 'Th+Huk t+HvE t+AO0-nh'
        end
        object gridRemainDetailFORMULAR_NO: TdxDBGridColumn
          Caption = 'M'#227' s'#7889' c'#244'ng th'#7913'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FORMULAR_NO'
          Caption_UTF7 = 'M+AOM s+HtE c+APQ-ng th+Huk-c'
        end
        object gridRemainDetailFORMULAR_NAME: TdxDBGridColumn
          Caption = 'T'#234'n c'#244'ng th'#7913'c l'#432#417'ng'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 256
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FORMULAR_NAME'
          Caption_UTF7 = 'T+AOo-n c+APQ-ng th+Huk-c l+AbABoQ-ng'
        end
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl2Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBGrid3'
          ShowCaption = False
          Control = gridRemainDetail
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
        Caption = 'T'#7841'o ph'#432#417'ng '#225'n l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 80
    Top = 40
  end
  object ImageList1: TImageList
    Left = 32
    Top = 56
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090909000909
      0900090909000909090009090900090909000909090009090900090909000909
      0900090909005F5F5F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009120900326B32003A7D
      3A0066936600618061007C9D7C007C9D7C0078787800090909005CBAF6001D7A
      B900000000005F5F5F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000091209003A7D3A003A7D3A000000
      000000000000000000000000000000000000090909007AABCA005CBAF6002097
      E800084D7C00454545005F5F5F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A003A7D3A00000000007878
      780000000000000000007878780009090900D9EFFD009AD5F9005CBAF60021A0
      F7001099F7000D7CC9005F5F5F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      0000000000000000000015151500FFFFFF00D9EFFD0065879C0047575000195D
      88001099F7001099F70004263E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      0000000000000000000078787800000000000000000000000000212821001552
      78001099F7001099F70004263E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      00000000000000000000000000000000000009090900648DA60054AEE70021A0
      F7001099F7005F5F5F0045454500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      000000000000000000000000000009090900D9EFFD009AD5F9005CBAF6001E8D
      D8000A5E9800031A290085858500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      000000000000000000000000000009090900D9EFFD008ABBDA002C2C2C002C2C
      2C002C2C2C002C2C2C002C2C2C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      000000000000000000000000000009090900D9EFFD009AD5F9002C2C2C001E84
      C9001099F7000E86D80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000489C4800000000000000
      000000000000489C48000000000009090900ADC1CD009AD5F9005CBAF60021A0
      F7006C6C6C00063758006C6C6C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000489C4800489C4800489C
      48000000000043914300489C480000000000000000005A829B005CBAF6001E84
      C900454545006C6C6C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000489C4800489C
      4800489C48004DA64D00489C4800489C48000000000045677C005CBAF6001D7A
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004DA64D00489C4800000000000000000000000000000000000000
      0000393939000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F873F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000C003000000000000
      800300000000000000010000000000000C010000000000001C01000000000000
      1C010000000000001F010000000000001E010000000000001E01000000000000
      1201000000000000000100000000000000030000000000008007000000000000
      C087000000000000F1FF00000000000000000000000000000000000000000000
      000000000000}
  end
  object qryWageMethod: TIBOQuery
    Params = <>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_METHOD'
      'WHERE'
      '   METHOD_NO = :OLD_METHOD_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_METHOD SET'
      '   METHOD_NO = :METHOD_NO, /*PK*/'
      '   METHOD_NAME = :METHOD_NAME,'
      '   METHOD_NOTE = :METHOD_NOTE'
      'WHERE'
      '   METHOD_NO = :OLD_METHOD_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_METHOD('
      '   METHOD_NO, /*PK*/'
      '   METHOD_NAME,'
      '   METHOD_NOTE)'
      'VALUES ('
      '   :METHOD_NO,'
      '   :METHOD_NAME,'
      '   :METHOD_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT METHOD_NO'
      '     , METHOD_NAME'
      '     , METHOD_NOTE'
      'FROM HR_WAGE_METHOD')
    FieldOptions = []
    Left = 48
    Top = 72
    object qryWageMethodMETHOD_NO: TWideStringField
      FieldName = 'METHOD_NO'
      Required = True
      Size = 30
    end
    object qryWageMethodMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Required = True
      Size = 126
    end
    object qryWageMethodMETHOD_NOTE: TWideStringField
      FieldName = 'METHOD_NOTE'
      Size = 3072
    end
  end
  object dsWageMethod: TDataSource
    DataSet = qryWageMethod
    Left = 48
    Top = 104
  end
  object qryWageMethodDetail: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'METHOD_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_METHOD_DETAIL'
      'WHERE'
      '   FORMULAR_NO = :OLD_FORMULAR_NO AND'
      '   METHOD_NO = :OLD_METHOD_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_METHOD_DETAIL SET'
      '   IS_PLUS = :IS_PLUS,'
      '   IS_MAIN_WAGE = :IS_MAIN_WAGE,'
      '   IS_DISPLAYED = :IS_DISPLAYED'
      'WHERE'
      '   FORMULAR_NO = :OLD_FORMULAR_NO AND'
      '   METHOD_NO = :OLD_METHOD_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryWageMethodDetailBeforeDelete
    DataSource = dsWageMethod
    SQL.Strings = (
      'SELECT METHOD_NO'
      '     , HR_WAGE_METHOD_DETAIL.FORMULAR_NO'
      '     , FORMULAR_NAME'
      '     , ORDER_INDEX'
      '     , IS_PLUS'
      '     , IS_MAIN_WAGE'
      '     , IS_DISPLAYED'
      'FROM HR_WAGE_METHOD_DETAIL'
      'JOIN HR_WAGE_FORMULAR on '
      
        '   HR_WAGE_METHOD_DETAIL.FORMULAR_NO=HR_WAGE_FORMULAR.FORMULAR_N' +
        'O'
      'where METHOD_NO=:METHOD_NO'
      'order by ORDER_INDEX')
    FieldOptions = []
    Left = 112
    Top = 72
    object qryWageMethodDetailMETHOD_NO: TWideStringField
      FieldName = 'METHOD_NO'
      Required = True
      Size = 30
    end
    object qryWageMethodDetailFORMULAR_NO: TWideStringField
      FieldName = 'FORMULAR_NO'
      Required = True
      Size = 63
    end
    object qryWageMethodDetailFORMULAR_NAME: TWideStringField
      FieldName = 'FORMULAR_NAME'
      Required = True
      Size = 126
    end
    object qryWageMethodDetailORDER_INDEX: TIntegerField
      FieldName = 'ORDER_INDEX'
    end
    object qryWageMethodDetailIS_PLUS: TSmallintField
      FieldName = 'IS_PLUS'
    end
    object qryWageMethodDetailIS_MAIN_WAGE: TSmallintField
      FieldName = 'IS_MAIN_WAGE'
    end
    object qryWageMethodDetailIS_DISPLAYED: TSmallintField
      FieldName = 'IS_DISPLAYED'
    end
  end
  object dsWageMethodDetail: TDataSource
    DataSet = qryWageMethodDetail
    Left = 112
    Top = 104
  end
  object qryRemainDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'METHOD_NO'
        ParamType = ptInput
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageMethod
    SQL.Strings = (
      'SELECT'
      '       FORMULAR_NO'
      '     , FORMULAR_NAME'
      '     , ORDER_INDEX'
      'FROM  HR_WAGE_FORMULAR'
      'where FORMULAR_NO not in '
      '( select HR_WAGE_METHOD_DETAIL.FORMULAR_NO '
      '  from HR_WAGE_METHOD_DETAIL'
      '  where HR_WAGE_METHOD_DETAIL.METHOD_NO=:METHOD_NO )')
    FieldOptions = []
    Left = 168
    Top = 72
    object qryRemainDetailFORMULAR_NO: TWideStringField
      FieldName = 'FORMULAR_NO'
      Required = True
      Size = 63
    end
    object qryRemainDetailFORMULAR_NAME: TWideStringField
      FieldName = 'FORMULAR_NAME'
      Required = True
      Size = 126
    end
    object qryRemainDetailORDER_INDEX: TIntegerField
      FieldName = 'ORDER_INDEX'
    end
  end
  object dsRemainDetail: TDataSource
    DataSet = qryRemainDetail
    Left = 168
    Top = 104
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 356
    Top = 89
    object acAddFormulars: TAction
      Caption = 'acAddFormulars'
      ImageIndex = 1
      OnExecute = acAddFormularsExecute
      OnUpdate = acAddFormularsUpdate
    end
    object acRemoveFormulars: TAction
      Caption = 'acRemoveFormulars'
      ImageIndex = 2
      OnExecute = acRemoveFormularsExecute
      OnUpdate = acRemoveFormularsUpdate
    end
  end
  object qryExecute: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'METHOD_NO'
        ParamType = ptInput
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageMethod
    SQL.Strings = (
      'SELECT'
      '       FORMULAR_NO'
      '     , FORMULAR_NAME'
      '     , ORDER_INDEX'
      'FROM  HR_WAGE_FORMULAR'
      'where FORMULAR_NO not in '
      '( select HR_WAGE_METHOD_DETAIL.FORMULAR_NO '
      '  from HR_WAGE_METHOD_DETAIL'
      '  where HR_WAGE_METHOD_DETAIL.METHOD_NO=:METHOD_NO )')
    FieldOptions = []
    Left = 200
    Top = 136
    object WideStringField1: TWideStringField
      FieldName = 'FORMULAR_NO'
      Required = True
      Size = 63
    end
    object WideStringField2: TWideStringField
      FieldName = 'FORMULAR_NAME'
      Required = True
      Size = 126
    end
    object IntegerField1: TIntegerField
      FieldName = 'ORDER_INDEX'
    end
  end
end
