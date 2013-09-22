inherited frmWageMethodAssign: TfrmWageMethodAssign
  Left = 226
  Top = 201
  Width = 731
  Height = 464
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 411
    Width = 723
  end
  object pageLeft: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 273
    Height = 411
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = False
    Images = imlDetail
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
    TabOrder = 1
    object tabWageMethod: TElTabSheet
      PageControl = pageLeft
      ImageIndex = 0
      TabVisible = True
      Caption = 'Danh s'#225'ch ph'#432#417'ng '#225'n l'#432#417'ng'
      object gridWageMethod: TdxDBGrid
        Left = 0
        Top = 0
        Width = 273
        Height = 387
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
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
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
      end
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 273
    Top = 0
    Width = 5
    Height = 411
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = gridWageMethod
    AutoHide = False
    Align = alLeft
    BevelInner = bvLowered
    BevelOuter = bvNone
    UseXPThemes = False
  end
  object pageRight: TElPageControl [3]
    Left = 278
    Top = 0
    Width = 445
    Height = 411
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = imlDetail
    Multiline = False
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
    ActivePage = tabSelectEmp
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
    object tabSelectGroup: TElTabSheet
      PageControl = pageRight
      ImageIndex = 1
      TabVisible = True
      Caption = 'Ch'#7885'n nh'#243'm l'#432#417'ng'
      Visible = False
      object Splitter1: TSplitter
        Left = 0
        Top = 193
        Width = 445
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 445
        Height = 193
        Align = alTop
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object ElPopupButton1: TElPopupButton
          Left = 147
          Top = 158
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
          Action = acGroupUp
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 222
          Top = 158
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
          Action = acGroupDown
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object gridGroup: TdxDBGrid
          Left = 10
          Top = 10
          Width = 369
          Height = 174
          Bands = <
            item
              Caption = 'Danh s'#225'ch nh'#243'm l'#432#417'ng thay '#273#7893'i'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'OBJECT_NO'
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
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsGroup
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          object gridGroupSTRUCTURE_NAME: TdxDBGridColumn
            Caption = 'T'#234'n nh'#243'm l'#432#417'ng'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 215
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STRUCTURE_NAME'
            Caption_UTF7 = 'T+AOo-n nh+APM-m l+AbABoQ-ng'
          end
          object gridGroupEMPLOYEE_COUNT: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'S'#7889' nh'#226'n vi'#234'n'
            HeaderAlignment = taCenter
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_COUNT'
            Caption_UTF7 = 'S+HtE nh+AOI-n vi+AOo-n'
          end
          object gridGroupOBJECT_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#243'm'
            DisableCustomizing = True
            DisableEditor = True
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_NO'
            Caption_UTF7 = 'M+AOM nh+APM-m'
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            ShowCaption = False
            Control = gridGroup
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
            object dxLayoutItem1: TdxLayoutItem
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
        Top = 196
        Width = 445
        Height = 191
        Align = alClient
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        object gridGroupNoChange: TdxDBGrid
          Left = 10
          Top = 10
          Width = 369
          Height = 174
          Bands = <
            item
              Caption = 'Danh s'#225'ch nh'#243'm l'#432#417'ng c'#242'n l'#7841'i'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'STRUCTURE_NO'
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
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsGroupNoChange
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          object gridGroupNoChangeSTRUCTURE_NO: TdxDBGridColumn
            Caption = 'M'#227' s'#7889' nh'#243'm l'#432#417'ng'
            DisableCustomizing = True
            DisableDragging = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STRUCTURE_NO'
            Caption_UTF7 = 'M+AOM s+HtE nh+APM-m l+AbABoQ-ng'
          end
          object gridGroupNoChangeSTRUCTURE_NAME: TdxDBGridColumn
            Caption = 'T'#234'n nh'#243'm l'#432#417'ng'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 219
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STRUCTURE_NAME'
            Caption_UTF7 = 'T+AOo-n nh+APM-m l+AbABoQ-ng'
          end
          object gridGroupNoChangeEMPLOYEE_COUNT: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'S'#7889' nh'#226'n vi'#234'n'
            HeaderAlignment = taCenter
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_COUNT'
            Caption_UTF7 = 'S+HtE nh+AOI-n vi+AOo-n'
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            ShowCaption = False
            Control = gridGroupNoChange
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object tabSelectEmp: TElTabSheet
      PageControl = pageRight
      ImageIndex = 2
      TabVisible = True
      Caption = 'Ch'#7885'n nh'#226'n vi'#234'n'
      object Splitter2: TSplitter
        Left = 0
        Top = 193
        Width = 445
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 445
        Height = 193
        Align = alTop
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object ElPopupButton3: TElPopupButton
          Left = 147
          Top = 158
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
          TabOrder = 2
          Color = clBtnFace
          ParentColor = False
          Action = acEmpUp
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 222
          Top = 158
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
          TabOrder = 3
          Color = clBtnFace
          ParentColor = False
          Action = acEmpDown
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object gridEmp: TdxDBGrid
          Left = 10
          Top = 10
          Width = 369
          Height = 174
          Bands = <
            item
              Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n thay '#273#7893'i'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'OBJECT_NO'
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
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsEmployee
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          object gridEmpOBJECT_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object gridEmpFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            HeaderAlignment = taCenter
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridEmpDEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            HeaderAlignment = taCenter
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
          end
          object gridEmpTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c danh'
            HeaderAlignment = taCenter
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c danh'
          end
        end
        object imOption: TdxImageEdit
          Left = 59
          Top = 159
          Width = 94
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          StyleController = dmMain.StyleController
          OnChange = imOptionChange
          PopupBorder = pbFrame3D
        end
        object dxLayoutGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem3: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            ShowCaption = False
            Control = gridEmp
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl3Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl3Item1: TdxLayoutItem
              AutoAligns = []
              AlignVert = avCenter
              Caption = 'T'#249'y ch'#7885'n'
              Control = imOption
              ControlOptions.ShowBorder = False
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahCenter
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxLayoutItem4: TdxLayoutItem
                Caption = 'ElPopupButton1'
                ShowCaption = False
                Control = ElPopupButton3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem5: TdxLayoutItem
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 196
        Width = 445
        Height = 191
        Align = alClient
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        object gridEmpNoChange: TdxDBGrid
          Left = 10
          Top = 10
          Width = 369
          Height = 174
          Bands = <
            item
              Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n c'#242'n l'#7841'i'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'EMP_NO'
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
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsEmpNoChange
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          object gridEmpNoChangeEMP_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMP_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object gridEmpNoChangeFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridEmpNoChangeDEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            HeaderAlignment = taCenter
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
          end
          object gridEmpNoChangeTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c danh'
            HeaderAlignment = taCenter
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c danh'
          end
        end
        object dxLayoutGroup5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem6: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            ShowCaption = False
            Control = gridEmpNoChange
            ControlOptions.ShowBorder = False
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
        Caption = 'Ch'#7881' '#273#7883'nh ph'#432#417'ng '#225'n l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 168
    Top = 56
  end
  object qryWageMethod: TIBOQuery
    Params = <>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
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
  object imlDetail: TImageList
    Left = 192
    Top = 216
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078C77800EDF7ED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090909000909
      0900090909000909090009090900090909000909090009090900090909000909
      0900090909005F5F5F0000000000000000000000000000000000000000000000
      0000000000000000000024A424000CA41700009800009AD59A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009120900326B32003A7D
      3A0066936600618061007C9D7C007C9D7C0078787800090909005CBAF6001D7A
      B900000000005F5F5F0000000000000000000000000000000000000000000000
      0000F6FBF600039B070014AD28000FA81F00009900000099000055B955000000
      00000000000000000000000000000000000000000000479B3A0063B1630082C1
      8200A7D3A700BADDBA001E323E00DDB399001E323E0074B973005BAD5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000091209003A7D3A003A7D3A000000
      000000000000000000000000000000000000090909007AABCA005CBAF6002097
      E800084D7C00454545005F5F5F0000000000000000000000000000000000A2D9
      A2000CA418001AB3340017B02D0013AC2500009900000099000000990000119D
      11000000000000000000000000000000000000000000489F41006EB66E0095CA
      9500BADDBA001E323E00F8DCC300F8DCC3001E323E0082C182005BAD5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A003A7D3A00000000007878
      780000000000000000007878780009090900D9EFFD009AD5F9005CBAF60021A0
      F7001099F7000D7CC9005F5F5F0000000000000000000000000089CD890018B1
      310021BA41001DB63A0019B2330015AE2B000098000000990000009700000097
      000003980300000000000000000000000000000000003B9128006EB66E0095CA
      95001E323E00ECBB9500FFE7C600FFE7C6001E323E0082C1820054A54C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      0000000000000000000015151500FFFFFF00D9EFFD0065879C0047575000195D
      88001099F7001099F70004263E000000000000000000B6E0B60028C14F0028C1
      500025BE4A0020B942001EB73A0019B232000099000050AD5000CDCDCD00B0B8
      BE00009A00000098000000000000000000000000000000000000000000005F87
      5F001E323E001E323E001E323E00ECCEAA00A3B07E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      0000000000000000000078787800000000000000000000000000212821001552
      78001099F7001099F70004263E000000000000000000A0D7A00032CB64002EC7
      590028C1520026BF4A0021BB430024B941000099000000980000A7C4A700D4D0
      D2005D977400009800000000000000000000000000009292920002111B000945
      6E0010527D00235B800070BAE7001E323E00305D240000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      00000000000000000000000000000000000009090900648DA60054AEE70021A0
      F7001099F7005F5F5F004545450000000000000000008FD08F003AD36F0031CA
      63002FC85B0028C252003DC9620038D16C0032C85F000099000095BE9400D2CE
      CE00E0D5E10000990000000000000000000092929200031623000D68A5000C61
      9A00235B800077C6F60077C6F60077C6F6001E323E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      000000000000000000000000000009090900D9EFFD009AD5F9005CBAF6001E8D
      D8000A5E9800031A29008585850000000000000000007FC87F0041DB770037D0
      6A002FCA610050D87A0040DB75003DD6700039D26C0033D16A0095BB9500E3D7
      DC005E947400009302000000000000000000454545000C619A000E6FB000235B
      800077C6F60077C6F60077C6F60077C6F60077C6F600454545005F5F5F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      000000000000000000000000000009090900D9EFFD008ABBDA002C2C2C002C2C
      2C002C2C2C002C2C2C002C2C2C0000000000000000005FBA5F004AE381003FD7
      71005FE98D004DE780004AE37D0047DE79002FD76700BFF1D000FFFFFF00EADF
      E40000880400009A00000000000000000000000000000E6FB0000E6FB000235B
      800077C6F60077C6F60077C6F60077C6F60077C6F6005288A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A7D3A00489C4800000000000000
      000000000000000000000000000009090900D9EFFD009AD5F9002C2C2C001E84
      C9001099F7000E86D80000000000000000000000000039AB39005BEB8E0061F7
      930059F28C0054ED870050EA840045E47A00FFFFFF00FFFFFF00FFFFFF008DC8
      AC0022C14900009600000000000000000000000000000E6FB0000E6FB000235B
      800077C6F60077C6F60077C6F60077C6F60077C6F6005995B900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000489C4800000000000000
      000000000000489C48000000000009090900ADC1CD009AD5F9005CBAF60021A0
      F7006C6C6C00063758006C6C6C00000000000000000025A3250065FB950064FE
      970061FA940054F58A009BF6B800FFFFFF00FFFFFF00FAFCFC0034CB6E0042DD
      75003FD874001CB636000000000000000000000000000E6FB0001975B3002A5F
      810077C6F60077C6F60077C6F60077C6F60077C6F6005288A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000489C4800489C4800489C
      48000000000043914300489C480000000000000000005A829B005CBAF6001E84
      C900454545006C6C6C00000000000000000000000000000000004DB04D0051EC
      7B005BFF9500E0FEEA00FFFFFF00FFFFFF00B4E6CC0044E67B004CE57F004DE6
      840012A91F00CEEBCE000000000000000000000000000E6FB0001975B300357E
      AF003D657E0077C6F60077C6F60077C6F600235B80001E323E005F5F5F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000489C4800489C
      4800489C48004DA64D00489C4800489C48000000000045677C005CBAF6001D7A
      B90000000000000000000000000000000000000000000000000000000000E3F3
      E300169D1700FFFFFF00FFFEFF006FED9D005BF68E0059F28C0046DE70002FA6
      2F00000000000000000000000000000000001E323E00083F63002079B400458D
      BD0071A5C800235B8000235B8000235B80004D6E840000000000787878000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004DA64D00489C4800000000000000000000000000000000000000
      0000393939000000000000000000000000000000000000000000000000000000
      0000000000003BAA3B0043E26C006AFF9E0068FF9E0020B83100BCE3BC000000
      000000000000000000000000000000000000000000000000000014456600458D
      BD0071A5C800A0BFD400C3D2DC008DA1AE002029300078787800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F873F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF0DC0017AF23002CA62C0000000000000000000000
      00000000000000000000000000000000000000000000000000001E323E000D1A
      23000000000000000000454545005F5F5F007878780000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFE7FFFFF0000C003FC3F001F0000
      8003F01F000F00000001E00F000F00000C01C007000F00001C018003801F0000
      1C018003803F00001F018003003F00001E018003001F00001E018003001F0000
      12018003001F000000018003001F00000003C003001F00008007E00F001F0000
      C087F81F803F0000F1FFFC7FC07F000000000000000000000000000000000000
      000000000000}
  end
  object qryGroup: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'change_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'method_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageMethod
    SQL.Strings = (
      'select'
      '  hr_wage_assign_detail.object_no,'
      '  hr_wage_structure.structure_name,'
      '  (select count(employee_no)'
      '   from hr_emp_wage_group'
      '   where structure_no=hr_wage_assign_detail.object_no)'
      '  EMPLOYEE_COUNT'
      'From hr_wage_assign_detail'
      'join hr_wage_structure on object_no=structure_no'
      'where hr_wage_assign_detail.change_no=:change_no and'
      '      hr_wage_assign_detail.method_no=:method_no and'
      ' hr_wage_assign_detail.object_type='#39'GROUP'#39)
    FieldOptions = []
    Left = 112
    Top = 72
    object qryGroupOBJECT_NO: TWideStringField
      FieldName = 'OBJECT_NO'
      Required = True
      Size = 30
    end
    object qryGroupSTRUCTURE_NAME: TWideStringField
      FieldName = 'STRUCTURE_NAME'
      Size = 126
    end
    object qryGroupEMPLOYEE_COUNT: TIntegerField
      FieldName = 'EMPLOYEE_COUNT'
      ReadOnly = True
    end
  end
  object dsGroup: TDataSource
    DataSet = qryGroup
    Left = 112
    Top = 104
  end
  object qryEmployee: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'change_no'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'method_no'
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
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageMethod
    SQL.Strings = (
      'select'
      'hr_wage_assign_detail.object_no,'
      'hr_get_emp_list.full_name,'
      'hr_get_emp_list.title_name,'
      'hr_get_emp_list.dept_name'
      'from hr_wage_assign_detail'
      'join hr_get_emp_list(:USER_NAME,null,null)'
      '  on object_no=emp_no and is_main_position=1'
      'where hr_wage_assign_detail.change_no=:change_no and'
      '      hr_wage_assign_detail.method_no=:method_no and'
      '      hr_wage_assign_detail.object_type='#39'PERSON'#39'and'
      '     ((is_dismissed=:is_dismissed) or (:is_dismissed=2))  '
      '      ')
    FieldOptions = []
    Left = 152
    Top = 72
    object qryEmployeeOBJECT_NO: TWideStringField
      FieldName = 'OBJECT_NO'
      Required = True
      Size = 30
    end
    object qryEmployeeFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 99
    end
    object qryEmployeeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmployeeDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
  end
  object dsEmployee: TDataSource
    DataSet = qryEmployee
    Left = 152
    Top = 104
  end
  object qryGroupNoChange: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'change_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'hr_wage_structure.structure_no')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageMethod
    SQL.Strings = (
      'select'
      '  hr_wage_structure.structure_no,'
      '  hr_wage_structure.structure_name,'
      '  (select count(employee_no)'
      '   from hr_emp_wage_group'
      
        '   where hr_emp_wage_group.structure_no=hr_wage_structure.struct' +
        'ure_no)'
      '  EMPLOYEE_COUNT'
      'from hr_wage_structure '
      'where structure_no not in'
      '( select object_no'
      '  from hr_wage_assign_detail'
      '  where change_no=:change_no and'
      '       object_type='#39'GROUP'#39' '
      ') '
      'order by 3 desc ')
    FieldOptions = []
    Left = 112
    Top = 144
  end
  object dsGroupNoChange: TDataSource
    DataSet = qryGroupNoChange
    Left = 112
    Top = 176
  end
  object qryEmpNoChange: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
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
      end
      item
        DataType = ftWideString
        Name = 'change_no'
        ParamType = ptInput
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageMethod
    SQL.Strings = (
      'select'
      '  hr_get_emp_list.emp_no,'
      '  hr_get_emp_list.full_name,'
      '  hr_get_emp_list.title_name,'
      '  hr_get_emp_list.dept_name'
      'from hr_get_emp_list(:USER_NAME,null,null)'
      'where '
      '((is_dismissed=:is_dismissed) or (:is_dismissed=2)) and'
      'is_main_position=1 and'
      'emp_no not in'
      '(select object_no'
      ' from hr_wage_assign_detail'
      ' where change_no=:change_no and'
      '   object_type='#39'PERSON'#39')'
      'and'
      'emp_no not in'
      '(select employee_no'
      ' from hr_emp_wage_group '
      ')')
    FieldOptions = []
    Left = 152
    Top = 144
    object qryEmpNoChangeEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryEmpNoChangeFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 99
    end
    object qryEmpNoChangeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpNoChangeDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
  end
  object dsEmpNoChange: TDataSource
    DataSet = qryEmpNoChange
    Left = 152
    Top = 176
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 112
    Top = 232
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 232
    Top = 64
    object acGroupUp: TAction
      Caption = 'acGroupUp'
      ImageIndex = 1
      OnExecute = acGroupUpExecute
      OnUpdate = acGroupUpUpdate
    end
    object acGroupDown: TAction
      Caption = 'acGroupDown'
      ImageIndex = 2
      OnExecute = acGroupDownExecute
      OnUpdate = acGroupDownUpdate
    end
    object acEmpUp: TAction
      Caption = 'acEmpUp'
      ImageIndex = 1
      OnExecute = acEmpUpExecute
      OnUpdate = acEmpUpUpdate
    end
    object acEmpDown: TAction
      Caption = 'acEmpDown'
      ImageIndex = 2
      OnExecute = acEmpDownExecute
      OnUpdate = acEmpDownUpdate
    end
  end
end
