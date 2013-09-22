inherited frmWageElement: TfrmWageElement
  Left = 330
  Top = 177
  Width = 805
  Height = 521
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 468
    Width = 797
  end
  object pageLeft: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 313
    Height = 468
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = imlIcon
    Multiline = False
    OnChanging = pageLeftChanging
    OnChange = pageLeftChange
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
    ActivePage = tabYeutoLuong
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
    object tabYeutoLuong: TElTabSheet
      PageControl = pageLeft
      ImageIndex = 0
      TabVisible = True
      Caption = 'Y'#7871'u t'#7889' l'#432#417'ng'
      object gridWageElement: TdxDBGrid
        Left = 0
        Top = 0
        Width = 313
        Height = 214
        Bands = <
          item
            Caption = 'Y'#7871'u t'#7889' ng'#432#7901'i d'#249'ng '#273#7883'nh ngh'#297'a'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ELEMENT_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = gridWageElementEnter
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsWageElement
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object gridWageElementELEMENT_NO: TdxDBGridColumn
          Caption = 'M'#227' y'#7871'u t'#7889' '
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridWageElementELEMENT_NOCustomDrawCell
          FieldName = 'ELEMENT_NO'
          Caption_UTF7 = 'M+AOM y+Hr8-u t+HtE '
        end
        object gridWageElementELEMENT_NAME: TdxDBGridColumn
          Caption = 'T'#234'n y'#7871'u t'#7889' '
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ELEMENT_NAME'
          Caption_UTF7 = 'T+AOo-n y+Hr8-u t+HtE '
        end
        object gridWageElementCOLOR: TdxDBGridColumn
          Caption = 'M'#224'u '#273#7841'i di'#7879'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COLOR'
          Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
        end
        object gridWageElementELEMENT_INDEX: TdxDBGridColumn
          Alignment = taCenter
          DisableCaption = True
          DisableEditor = True
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ELEMENT_INDEX'
        end
      end
      object ElSplitter3: TElSplitter
        Left = 0
        Top = 214
        Width = 313
        Height = 5
        Cursor = crVSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridWageElement
        ControlBottomRight = gridSysFunction
        AutoHide = False
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvNone
        UseXPThemes = False
      end
      object gridSysFunction: TdxDBGrid
        Left = 0
        Top = 219
        Width = 313
        Height = 225
        Bands = <
          item
            Caption = 'C'#225'c h'#224'm s'#7889' h'#7879' th'#7889'ng'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ELEMENT_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = gridSysFunctionEnter
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsSysFunction
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object dxDBGridColumn1: TdxDBGridColumn
          Caption = 'K'#253' hi'#7879'u'
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = dxDBGridColumn1CustomDrawCell
          FieldName = 'ELEMENT_NO'
          Caption_UTF7 = 'K+AP0 hi+Hsc-u'
        end
        object dxDBGridColumn2: TdxDBGridColumn
          Caption = 'T'#234'n h'#224'm'
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ELEMENT_NAME'
          Caption_UTF7 = 'T+AOo-n h+AOA-m'
        end
        object gridSysFunctionColor: TdxDBGridColumn
          Caption = 'M'#224'u '#273#7841'i di'#7879'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COLOR'
          Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
        end
      end
    end
    object tabCongthucLuong: TElTabSheet
      PageControl = pageLeft
      ImageIndex = 1
      TabVisible = True
      Caption = 'C'#244'ng th'#7913'c l'#432#417'ng'
      Visible = False
      object gridWageFormular: TdxDBGrid
        Left = 0
        Top = 0
        Width = 313
        Height = 214
        Bands = <
          item
            Caption = 'Danh s'#225'ch c'#244'ng th'#7913'c l'#432#417'ng'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'FORMULAR_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
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
        DataSource = dsWageFormular
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object gridWageFormularFORMULAR_NAME: TdxDBGridColumn
          Caption = 'C'#244'ng th'#7913'c l'#432#417'ng'
          HeaderAlignment = taCenter
          Width = 179
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FORMULAR_NAME'
          Caption_UTF7 = 'C+APQ-ng th+Huk-c l+AbABoQ-ng'
        end
        object gridWageFormularORDER_INDEX: TdxDBGridSpinColumn
          Caption = #431'u ti'#234'n'
          HeaderAlignment = taCenter
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORDER_INDEX'
          Caption_UTF7 = '+Aa8-u ti+AOo-n'
        end
      end
      object ElSplitter2: TElSplitter
        Left = 0
        Top = 214
        Width = 313
        Height = 5
        Cursor = crVSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridWageFormular
        ControlBottomRight = pageView
        AutoHide = False
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvNone
        UseXPThemes = False
      end
      object pageView: TElPageControl
        Left = 0
        Top = 219
        Width = 313
        Height = 225
        BorderWidth = 0
        DrawFocus = False
        Flat = True
        HotTrack = True
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
        ActivePage = tabViewElement
        FlatTabBorderColor = clBtnShadow
        DraggablePages = False
        ActiveTabFont.Charset = DEFAULT_CHARSET
        ActiveTabFont.Color = clWindowText
        ActiveTabFont.Height = -11
        ActiveTabFont.Name = 'MS Sans Serif'
        ActiveTabFont.Style = []
        TabCursor = crDefault
        Align = alBottom
        ParentColor = False
        ParentShowHint = False
        TabOrder = 2
        ShowHint = True
        object tabViewElement: TElTabSheet
          PageControl = pageView
          ImageIndex = -1
          TabVisible = True
          Caption = 'Y'#7871'u t'#7889
          object gridViewElement: TdxDBGrid
            Left = 0
            Top = 0
            Width = 313
            Height = 204
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ELEMENT_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnDblClick = gridViewElementDblClick
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = [fsBold]
            DataSource = dsWageElement
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object gridViewElementELEMENT_NO: TdxDBGridColumn
              Caption = 'K'#253' hi'#7879'u'
              Color = clInfoBk
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridViewElementELEMENT_NOCustomDrawCell
              FieldName = 'ELEMENT_NO'
              Caption_UTF7 = 'K+AP0 hi+Hsc-u'
            end
            object gridViewElementELEMENT_NAME: TdxDBGridColumn
              Caption = 'T'#234'n y'#7871'u t'#7889
              Color = clInfoBk
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ELEMENT_NAME'
              Caption_UTF7 = 'T+AOo-n y+Hr8-u t+HtE'
            end
            object gridViewElementCOLOR: TdxDBGridColumn
              Caption = 'M'#224'u '#273#7841'i di'#7879'n'
              Color = clInfoBk
              DisableEditor = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLOR'
              Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
            end
          end
        end
        object tabViewFormular: TElTabSheet
          PageControl = pageView
          ImageIndex = -1
          TabVisible = True
          Caption = 'C'#244'ng th'#7913'c'
          Visible = False
          object dxDBGrid1: TdxDBGrid
            Left = 0
            Top = 0
            Width = 249
            Height = 204
            Bands = <
              item
                Caption = #417'ng'
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'FORMULAR_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnDblClick = dxDBGrid1DblClick
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = [fsBold]
            DataSource = dsViewFormular
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dxDBGrid1FORMULAR_NO: TdxDBGridColumn
              Caption = 'K'#253' hi'#7879'u'
              Color = clInfoBk
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FORMULAR_NO'
              Caption_UTF7 = 'K+AP0 hi+Hsc-u'
            end
            object dxDBGrid1FORMULAR_NAME: TdxDBGridColumn
              Caption = 'T'#234'n c'#244'ng th'#7913'c'
              Color = clInfoBk
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FORMULAR_NAME'
              Caption_UTF7 = 'T+AOo-n c+APQ-ng th+Huk-c'
            end
          end
        end
        object tabViewSysFunction: TElTabSheet
          PageControl = pageView
          ImageIndex = -1
          TabVisible = True
          Caption = 'H'#224'm s'#7889' h'#7879' th'#7889'ng'
          Visible = False
          object gridViewSysFunction: TdxDBGrid
            Left = 0
            Top = 0
            Width = 313
            Height = 204
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ELEMENT_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnDblClick = gridViewSysFunctionDblClick
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = [fsBold]
            DataSource = dsSysFunction
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            object dxDBGridColumn3: TdxDBGridColumn
              Caption = 'K'#253' hi'#7879'u'
              Color = clInfoBk
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = dxDBGridColumn3CustomDrawCell
              FieldName = 'ELEMENT_NO'
              Caption_UTF7 = 'K+AP0 hi+Hsc-u'
            end
            object dxDBGridColumn4: TdxDBGridColumn
              Caption = 'T'#234'n h'#224'm s'#7889
              Color = clInfoBk
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ELEMENT_NAME'
              Caption_UTF7 = 'T+AOo-n h+AOA-m s+HtE'
            end
            object gridViewSysFunctionCOLOR: TdxDBGridMaskColumn
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLOR'
            end
          end
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 313
    Top = 0
    Width = 5
    Height = 468
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageLeft
    ControlBottomRight = pageRight
    AutoHide = False
    Align = alLeft
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object pageRight: TElPageControl [3]
    Left = 318
    Top = 0
    Width = 479
    Height = 468
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    Style = etsButtons
    TabIndex = 1
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabDinhnghiaCongthucLuong
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
    object tabDinhnghiaYeutoLuong: TElTabSheet
      PageControl = pageRight
      ImageIndex = 0
      TabVisible = True
      Caption = #272#7883'nh ngh'#297'a y'#7871'u t'#7889' l'#432#417'ng'
      Visible = False
      object ElPanel1: TElPanel
        Left = 0
        Top = 0
        Width = 479
        Height = 25
        Align = alTop
        BevelInner = bvLowered
        TransparentXPThemes = False
        UseXPThemes = False
        Color = 16643567
        MouseCapture = False
        TabOrder = 0
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object ElLabel1: TElLabel
          Left = 2
          Top = 2
          Width = 238
          Height = 21
          Align = alClient
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Caption = #272#7882'NH NGH'#296'A Y'#7870'U T'#7888' L'#431#416'NG'
          Color = 15266557
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          WordWrap = True
          Effect = lesShadow
          Style = ltsOutlined
        end
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 25
        Width = 479
        Height = 422
        Align = alClient
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        object dxELEMENT_NO: TdxDBEdit
          Left = 87
          Top = 29
          Width = 120
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          DataField = 'ELEMENT_NO'
          DataSource = dsWageElement
          StyleController = dmMain.StyleController
        end
        object dxDBPopupEdit1: TdxDBPopupEdit
          Left = 87
          Top = 55
          Width = 122
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          DataField = 'ELEMENT_TYPE_NAME'
          DataSource = dsWageElement
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit1CloseUp
          OnInitPopup = dxDBPopupEdit1InitPopup
        end
        inline frameToolbar1: TframeToolbar
          Left = 3
          Top = 367
          Width = 463
          Height = 46
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          inherited dxLayoutControl1: TdxLayoutControl
            Width = 463
            inherited dxLayoutControl1Group_Root: TdxLayoutGroup
              inherited dxLayoutControl1Group1: TdxLayoutGroup
                inherited dxLayoutControl1Item14: TdxLayoutItem
                  Visible = False
                end
              end
            end
          end
        end
        object dxDBMemo2: TdxDBMemo
          Left = 87
          Top = 113
          Width = 368
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 4
          DataField = 'ELEMENT_NOTE'
          DataSource = dsWageElement
          StyleController = dmMain.StyleController
          Height = 245
        end
        object dxDBEdit3: TdxDBEdit
          Left = 277
          Top = 29
          Width = 210
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          DataField = 'ELEMENT_NAME'
          DataSource = dsWageElement
          StyleController = dmMain.StyleController
        end
        object dxDBSpinEdit2: TdxDBSpinEdit
          Left = 277
          Top = 55
          Width = 84
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          DataField = 'ELEMENT_INDEX'
          DataSource = dsWageElement
          StyleController = dmMain.StyleController
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Item4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            CaptionOptions.AlignVert = tavTop
            Control = frameToolbar1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Group1: TdxLayoutGroup
            Caption = 'Th'#244'ng tin b'#7855't bu'#7897'c'
            LayoutDirection = ldHorizontal
            object dxLayoutControl2Group3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'M'#227' y'#7871'u t'#7889' '
                Control = dxELEMENT_NO
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ph'#226'n lo'#7841'i '
                Control = dxDBPopupEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group5: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl2Item3: TdxLayoutItem
                Caption = 'T'#234'n y'#7871'u t'#7889' '
                Control = dxDBEdit3
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Th'#7913' t'#7921
                Control = dxDBSpinEdit2
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl2Group2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Th'#244'ng tin h'#432#7899'ng d'#7851'n'
            object dxLayoutControl2Item5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'M'#244' t'#7843' s'#7917' d'#7909'ng'
              CaptionOptions.AlignVert = tavTop
              Control = dxDBMemo2
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabDinhnghiaCongthucLuong: TElTabSheet
      PageControl = pageRight
      ImageIndex = 1
      TabVisible = True
      Caption = #272#7883'nh ngh'#297'a c'#244'ng th'#7913'c l'#432#417'ng'
      object panelHeader: TElPanel
        Left = 0
        Top = 0
        Width = 479
        Height = 25
        Align = alTop
        BevelInner = bvLowered
        TransparentXPThemes = False
        UseXPThemes = False
        Color = 16643567
        MouseCapture = False
        TabOrder = 0
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object lblListCaption: TElLabel
          Left = 2
          Top = 2
          Width = 475
          Height = 21
          Align = alClient
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Caption = #272#7882'NH NGH'#296'A C'#212'NG TH'#7912'C L'#431#416'NG'
          Color = 15266557
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          WordWrap = True
          Effect = lesShadow
          Style = ltsOutlined
        end
      end
      object dxlcFunction: TdxLayoutControl
        Left = 0
        Top = 25
        Width = 479
        Height = 422
        Align = alClient
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object CopyMemo: TdxMemo
          Left = 256
          Top = 224
          Width = 1
          Style.BorderStyle = xbsFlat
          TabOrder = 35
          Visible = False
          Height = 9
        end
        object btnDiv: TElPopupButton
          Left = 134
          Top = 247
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y ph'#7847'n nguy'#234'n c'#7911'a ph'#233'p chia s'#7889' nguy'#234'n'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Div'
          TabOrder = 11
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnDivClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnMod: TElPopupButton
          Left = 64
          Top = 247
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y s'#7889' d'#432' c'#7911'a ph'#233'p chia s'#7889' nguy'#234'n'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Mod'
          TabOrder = 5
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnModClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnAbs: TElPopupButton
          Left = 204
          Top = 247
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y gi'#225' tr'#7883' tuy'#7879't '#273#7889'i c'#7911'a s'#7889' th'#7921'c'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Abs'
          TabOrder = 17
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnAbsClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnSqrt: TElPopupButton
          Left = 344
          Top = 247
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y c'#259'n b'#7853'c 2 c'#7911'a s'#7889' th'#7921'c'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Sqrt'
          TabOrder = 29
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnSqrtClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnLn: TElPopupButton
          Left = 274
          Top = 247
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y logarit t'#7921' nhi'#234'n c'#7911'a s'#7889' th'#7921'c'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Ln'
          TabOrder = 23
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnLnClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnExp: TElPopupButton
          Left = 64
          Top = 267
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y h'#224'm l'#361'y th'#7915'a '
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Exp'
          TabOrder = 6
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnExpClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnMaxVal: TElPopupButton
          Left = 204
          Top = 267
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y gi'#225' tr'#7883' l'#7899'n nh'#7845't trong hai s'#7889
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Max'
          TabOrder = 18
          Color = 15466238
          ParentColor = False
          OnClick = btnMaxValClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object btnMinVal: TElPopupButton
          Left = 134
          Top = 267
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y gi'#225' tr'#7883' nh'#7887' nh'#7845't trong hai s'#7889
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Min'
          TabOrder = 12
          Color = 15466238
          ParentColor = False
          OnClick = btnMinValClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 64
          Top = 287
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '7'
          TabOrder = 7
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton4Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton5: TElPopupButton
          Left = 134
          Top = 287
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '8'
          TabOrder = 13
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton5Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton6: TElPopupButton
          Left = 204
          Top = 287
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '9'
          TabOrder = 19
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton6Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton7: TElPopupButton
          Left = 274
          Top = 287
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '/'
          TabOrder = 25
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton7Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton8: TElPopupButton
          Left = 64
          Top = 307
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '4'
          TabOrder = 8
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton8Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton9: TElPopupButton
          Left = 134
          Top = 307
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '5'
          TabOrder = 14
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton9Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton10: TElPopupButton
          Left = 204
          Top = 307
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '6'
          TabOrder = 20
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton10Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton11: TElPopupButton
          Left = 274
          Top = 307
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '*'
          TabOrder = 26
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton11Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton12: TElPopupButton
          Left = 274
          Top = 267
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y s'#7889' l'#224'm tr'#242'n theo m'#7897't s'#7889' l'#7867' nh'#7845't '#273#7883'nh'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Round'
          TabOrder = 24
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton12Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton13: TElPopupButton
          Left = 134
          Top = 327
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '2'
          TabOrder = 15
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton13Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton14: TElPopupButton
          Left = 204
          Top = 327
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '3'
          TabOrder = 21
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton14Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton15: TElPopupButton
          Left = 64
          Top = 327
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '1'
          TabOrder = 9
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton15Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton16: TElPopupButton
          Left = 274
          Top = 327
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '-'
          TabOrder = 27
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton16Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton17: TElPopupButton
          Left = 64
          Top = 347
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '0'
          TabOrder = 10
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton17Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton18: TElPopupButton
          Left = 134
          Top = 347
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '.'
          TabOrder = 16
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton18Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton19: TElPopupButton
          Left = 344
          Top = 287
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '('
          TabOrder = 31
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton19Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton20: TElPopupButton
          Left = 204
          Top = 347
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '+'
          TabOrder = 22
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton20Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton21: TElPopupButton
          Left = 344
          Top = 267
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'L'#7845'y b'#236'nh ph'#432#417'ng c'#7911'a m'#7897't s'#7889' th'#7921'c'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'Sqr'
          TabOrder = 30
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton21Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton22: TElPopupButton
          Left = 344
          Top = 307
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = ')'
          TabOrder = 32
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton22Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton23: TElPopupButton
          Left = 274
          Top = 347
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = 'C'
          TabOrder = 28
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton23Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton24: TElPopupButton
          Left = 344
          Top = 347
          Width = 70
          Height = 20
          Cursor = crDefault
          Hint = 'X'#243'a k'#253' t'#7921' k'#7871' tr'#432#7899'c'
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '<- Backspace'
          TabOrder = 34
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton24Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton25: TElPopupButton
          Left = 344
          Top = 327
          Width = 70
          Height = 20
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          ThinFrame = True
          UseXPThemes = True
          Caption = '^'
          TabOrder = 33
          Color = 15466238
          ParentColor = False
          OnClick = ElPopupButton25Click
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxExpression: TdxDBMemo
          Left = 14
          Top = 107
          Width = 447
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          DataField = 'EXPRESSION'
          DataSource = dsWageFormular
          StyleController = dmMain.StyleController
          Height = 164
        end
        object dxDBEdit1: TdxDBEdit
          Left = 54
          Top = 28
          Width = 219
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'FORMULAR_NO'
          DataSource = dsWageFormular
          StyleController = dmMain.StyleController
        end
        inline frameToolbar2: TframeToolbar
          Left = 2
          Top = 374
          Width = 694
          Height = 46
          Color = 15466238
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 39
          inherited dxLayoutControl1: TdxLayoutControl
            Width = 694
            inherited dxLayoutControl1Group_Root: TdxLayoutGroup
              inherited dxLayoutControl1Group1: TdxLayoutGroup
                inherited dxLayoutControl1Item14: TdxLayoutItem
                  Visible = False
                end
              end
            end
          end
        end
        object dxDBEdit2: TdxDBEdit
          Left = 54
          Top = 51
          Width = 177
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          DataField = 'FORMULAR_NAME'
          DataSource = dsWageFormular
          StyleController = dmMain.StyleController
        end
        object dxDBSpinEdit1: TdxDBSpinEdit
          Left = 385
          Top = 28
          Width = 80
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          DataField = 'ORDER_INDEX'
          DataSource = dsWageFormular
          StyleController = dmMain.StyleController
          MaxValue = 10000.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object dxResultType: TdxDBImageEdit
          Left = 385
          Top = 51
          Width = 80
          Color = clInfoBk
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 3
          Alignment = taCenter
          DataField = 'RESULT_TYPE'
          DataSource = dsWageFormular
          StyleController = dmMain.StyleController
          DropDownRows = 16777223
          PopupBorder = pbSingle
          StoredValues = 1
        end
        object dxLayoutGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcFunctionGroup1: TdxLayoutGroup
            Caption = 'Th'#244'ng tin c'#244'ng th'#7913'c'
            LayoutDirection = ldHorizontal
            object dxlcFunctionGroup9: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxlcFunctionItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'K'#253' hi'#7879'u '
                Control = dxDBEdit1
                ControlOptions.ShowBorder = False
              end
              object dxlcFunctionItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'T'#234'n '
                Control = dxDBEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcFunctionGroup10: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxlcFunctionItem31: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'Th'#7913' t'#7921' '#432'u ti'#234'n '
                Control = dxDBSpinEdit1
                ControlOptions.ShowBorder = False
              end
              object dxlcFunctionItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'Gi'#225' tr'#7883' tr'#7843' v'#7873
                Control = dxResultType
                ControlOptions.ShowBorder = False
              end
            end
          end
          object ItemFuncNote: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'C'#244'ng th'#7913'c t'#237'nh l'#432#417'ng '
            object dxlcFunctionItem1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'dxDBMemo3'
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Layout = clTop
              ShowCaption = False
              Control = dxExpression
              ControlOptions.ShowBorder = False
            end
            object dxlcFunctionGroup5: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
              Caption = 'B'#224'n t'#237'nh'
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxlcFunctionGroup4: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionItem22: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnMod
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem26: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnExp
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem8: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton4
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem12: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton8
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem19: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton15
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem29: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton17
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcFunctionGroup7: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionItem21: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnDiv
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem28: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnMinVal
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem9: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton5
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem13: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton9
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem17: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton13
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem30: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton18
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcFunctionGroup8: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionItem23: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnAbs
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem27: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = btnMaxVal
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem10: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton6
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem14: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton10
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem18: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton14
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem34: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton20
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcFunctionGroup14: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionGroup2: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  UseIndent = False
                  object dxlcFunctionItem25: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = btnLn
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem16: TdxLayoutItem
                    Caption = 'Round'
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton12
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem11: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton7
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem15: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton11
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem20: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton16
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem38: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton23
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxlcFunctionGroup3: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  UseIndent = False
                  object dxlcFunctionItem24: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = btnSqrt
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem36: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton21
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem33: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton19
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem37: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton22
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem40: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton25
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem39: TdxLayoutItem
                    Caption = 'ElPopupButton24'
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton24
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object dxlcFunctionItem5: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = frameToolbar2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object tabDinhnghiaHamHethong: TElTabSheet
      PageControl = pageRight
      ImageIndex = -1
      TabVisible = True
      Caption = 'H'#224'm s'#7889' h'#7879' th'#7889'ng'
      Visible = False
      object ElPanel2: TElPanel
        Left = 0
        Top = 0
        Width = 479
        Height = 25
        Align = alTop
        BevelInner = bvLowered
        TransparentXPThemes = False
        UseXPThemes = False
        Color = 16643567
        MouseCapture = False
        TabOrder = 0
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object ElLabel2: TElLabel
          Left = 2
          Top = 2
          Width = 162
          Height = 21
          Align = alClient
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Caption = 'H'#192'M S'#7888' H'#7878' TH'#7888'NG'
          Color = 15266557
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          WordWrap = True
          Effect = lesShadow
          Style = ltsOutlined
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 25
        Width = 479
        Height = 422
        Align = alClient
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        object dxFunctionNo: TdxDBEdit
          Left = 87
          Top = 29
          Width = 120
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          DataField = 'ELEMENT_NO'
          DataSource = dsSysFunction
          StyleController = dmMain.StyleController
        end
        object dxFunctionName: TdxDBMemo
          Left = 87
          Top = 55
          Width = 374
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          DataField = 'ELEMENT_NAME'
          DataSource = dsSysFunction
          StyleController = dmMain.StyleController
          Height = 40
        end
        inline frameToolbar3: TframeToolbar
          Left = 3
          Top = 367
          Width = 694
          Height = 46
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          inherited dxLayoutControl1: TdxLayoutControl
            Width = 694
            inherited dxLayoutControl1Group_Root: TdxLayoutGroup
              inherited dxLayoutControl1Group1: TdxLayoutGroup
                inherited dxLayoutControl1Item14: TdxLayoutItem
                  Visible = False
                end
              end
            end
          end
        end
        object dxFunctionDescription: TdxDBMemo
          Left = 87
          Top = 130
          Width = 185
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          DataField = 'ELEMENT_NOTE'
          DataSource = dsSysFunction
          StyleController = dmMain.StyleController
          Height = 89
        end
        object dxLayoutGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcFrameFunction: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            CaptionOptions.AlignVert = tavTop
            Control = frameToolbar3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutGroup4: TdxLayoutGroup
            Caption = 'Th'#244'ng tin b'#7855't bu'#7897'c'
            object dxLayoutItem2: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'K'#253' hi'#7879'u  '
              CaptionOptions.AlignVert = tavTop
              Control = dxFunctionNo
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem4: TdxLayoutItem
              Caption = 'T'#234'n h'#224'm s'#7889' '
              CaptionOptions.AlignVert = tavTop
              Control = dxFunctionName
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Th'#244'ng tin h'#432#7899'ng d'#7851'n'
            object dxLayoutItem5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'M'#244' t'#7843' s'#7917' d'#7909'ng'
              CaptionOptions.AlignVert = tavTop
              Control = dxFunctionDescription
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
        Caption = #272#7883'nh ngh'#297'a th'#224'nh ph'#7847'n l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 544
  end
  object imlIcon: TImageList
    Left = 56
    Top = 176
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400084878000C70B80014181800141818002454
      7800585858000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008A7A5800F6DCA400F5D89A00F4D186008A7A
      5800EAA81D00E8A30E0000000000000000000000000000000000000000000000
      00000000000004040400149CF000149CF00040B0F00034A4F000149CF0001C30
      380068C0F0006498B80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000053B6F60053B6F600000000008A7A5800FAEAC800F9E5BC00F6DCA4008A7A
      5800ECB23600E8A4110000000000000000000000000000000000000000000000
      000000000000149CF000149CF00028282C00BCE0F8005CB8F000149CF000041C
      280070B8E00074C4F00058585800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6C00000000006C6C
      6C0053B6F60053B6F6001A1A1A005F5B54008A7A58008A7A58008A7A58008A7A
      58008A7A58008A7A580000000000000000004CA44C004CA44C005CAC5C006CB4
      6C0004040400149CF0003088C800787C840098C0D800283438000878C800149C
      F000040404009CD4F80088A8B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6C0000000000B1CCDC008CCE
      FB0053B6F6001B9EF7000E86D800031D2E005F5B5400FDF5E500FAEAC8008A7A
      5800EEBB4E00EAA81D0000000000000000005CAC5C00040404005CAC5C000404
      04000404040034A4F0005CB8F00074C4F000344C5800405060000878C800149C
      F00004040400BCE0F8009CD4F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00CDEAFC006C6C
      6C00000000006C6C6C001199F7000F8FE80011191F0000000000000000000000
      0000000000000000000000000000000000005CAC5C0078B8780080C080008CC4
      8C00344C580040B0F0005CA8D000E8ECE800BCE0F8005CB8F000149CF0000868
      A800CCDCE800CCE8F80088A8B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001199F7001199F7000000000000000000000000000000
      0000000000000000000000000000000000006CB46C00040404006CB46C000404
      04009CCC9C005CB8F00028343800FFFFFF0088A8B800DCECF800141818001418
      1800ECF4F800E8ECE80058585800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6C000000
      0000000000006C6C6C001199F7001199F7000000000000000000000000000000
      00000000000000000000000000000000000080C080000404040080C080000404
      04009CCC9C00406C880068B8E000C8CCCC00BCE0F8005CB8F000149CF0001418
      1800FFFFFF00B4BCBC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000232424006C6C6C008CCE
      FB0053B6F6001B9EF7001199F700000000006C6C6C0000000000000000000000
      00000000000000000000000000000000000080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00DCECDC0068B8E0007098B800BCE0F80058B0E00078889000F8F8
      F800E8ECE8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6C006C6C6C00CDEAFC008CCE
      FB000000000000000000063D63000000000000000000000000008CCEFB003FAD
      F9001199F7001199F70000000000000000008CC48C00040404008CC48C000404
      0400CCE4CC0004040400040404004C7088001418180014181800DCECF800DCEC
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFEFF00CDEAFC006992
      AB00000000000000000000000000000000000000000000000000A8DAFC006FC2
      FA004CB3F9004CB3F90000000000000000008CC48C00ACD4AC00BCDCBC00DCEC
      DC00E8ECE800FFFFFF00FFFFFF00FFFFFF002C80B8005490B8007098B800CCE8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBEBF00CDEAFC008CCE
      FB0053B6F6001B9EF7001199F7000A609A000000000000000000000000000000
      0000000000000000000000000000000000008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80000000000249CEC005CB8F00074C4F0009CD4
      F8009CD4F8003C44440000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A0070828D0085C2
      E80053B6F60053B6F6000A5C940002131F000000000000000000000000000000
      0000000000000000000000000000000000008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80048485000149CF0001C70A8005CB8F00068C0
      F00068C0F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002324
      240053B6F60053B6F60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080C0800004040400040404000404
      040004040400040404000404040028282C0000000000000000001C78B8002870
      A000405060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00CCE4CC00CCE4CC00CCE4CC0094A4980000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F001FC0700000000
      E001F80300000000E00100010000000080010001000000000001000100000000
      0001000100000000087F000100000000C07F0003000000008001000700000000
      0181000F000000000001000700000000000100030000000080FF000300000000
      C1FF000700000000E1FF007F0000000000000000000000000000000000000000
      000000000000}
  end
  object dsWageElement: TDataSource
    DataSet = qryWageElement
    Left = 72
    Top = 104
  end
  object qryWageElement: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_ELEMENT'
      'WHERE'
      '   ELEMENT_NO = :OLD_ELEMENT_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_ELEMENT SET'
      '   ELEMENT_NO = :ELEMENT_NO, /*PK*/'
      '   ELEMENT_NAME = :ELEMENT_NAME,'
      '   ELEMENT_TYPE = :ELEMENT_TYPE,'
      '   ELEMENT_NOTE = :ELEMENT_NOTE,'
      '   ELEMENT_INDEX = :ELEMENT_INDEX'
      'WHERE'
      '   ELEMENT_NO = :OLD_ELEMENT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_ELEMENT('
      '   ELEMENT_NO, /*PK*/'
      '   ELEMENT_NAME,'
      '   ELEMENT_TYPE,'
      '   ELEMENT_NOTE,'
      '   ELEMENT_INDEX)'
      'VALUES ('
      '   :ELEMENT_NO,'
      '   :ELEMENT_NAME,'
      '   :ELEMENT_TYPE,'
      '   :ELEMENT_NOTE,'
      '   :ELEMENT_INDEX)')
    KeyLinks.Strings = (
      'ELEMENT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeInsert = qryWageElementBeforeInsert
    AfterInsert = qryWageElementAfterInsert
    BeforePost = qryWageElementBeforePost
    OnNewRecord = qryWageElementNewRecord
    SQL.Strings = (
      'SELECT ELEMENT_NO'
      '     , ELEMENT_NAME'
      '     , ELEMENT_TYPE'
      '     , ELEMENT_TYPE_NAME'
      '     , ELEMENT_NOTE'
      '     , COLOR'
      '     , ELEMENT_INDEX'
      'FROM HR_WAGE_ELEMENT'
      'JOIN HR_WAGE_ELEMENT_TYPE'
      'on ELEMENT_TYPE=ELEMENT_TYPE_NO'
      'where ELEMENT_TYPE<>'#39'HETHONG'#39
      'order by ORDER_INDEX'
      '')
    FieldOptions = []
    Left = 72
    Top = 72
    object qryWageElementELEMENT_NO: TWideStringField
      Tag = 1
      FieldName = 'ELEMENT_NO'
      Required = True
      Size = 63
    end
    object qryWageElementELEMENT_NAME: TWideStringField
      FieldName = 'ELEMENT_NAME'
      Required = True
      Size = 126
    end
    object qryWageElementELEMENT_TYPE: TWideStringField
      FieldName = 'ELEMENT_TYPE'
      Required = True
      Size = 30
    end
    object qryWageElementELEMENT_TYPE_NAME: TWideStringField
      FieldName = 'ELEMENT_TYPE_NAME'
      Required = True
      OnChange = qryWageElementELEMENT_TYPE_NAMEChange
      Size = 126
    end
    object qryWageElementELEMENT_NOTE: TWideStringField
      FieldName = 'ELEMENT_NOTE'
      Size = 3072
    end
    object qryWageElementCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qryWageElementELEMENT_INDEX: TIntegerField
      FieldName = 'ELEMENT_INDEX'
    end
  end
  object qryWageFormular: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_FORMULAR'
      'WHERE'
      '   FORMULAR_NO = :OLD_FORMULAR_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_FORMULAR SET'
      '   FORMULAR_NO = :FORMULAR_NO, /*PK*/'
      '   FORMULAR_NAME = :FORMULAR_NAME,'
      '   EXPRESSION = :EXPRESSION,'
      '   ORDER_INDEX = :ORDER_INDEX,'
      '   RESULT_TYPE = :RESULT_TYPE'
      'WHERE'
      '   FORMULAR_NO = :OLD_FORMULAR_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_FORMULAR('
      '   FORMULAR_NO, /*PK*/'
      '   FORMULAR_NAME,'
      '   EXPRESSION,'
      '   ORDER_INDEX,'
      '   RESULT_TYPE)'
      'VALUES ('
      '   :FORMULAR_NO,'
      '   :FORMULAR_NAME,'
      '   :EXPRESSION,'
      '   :ORDER_INDEX,'
      '   :RESULT_TYPE)')
    KeyLinks.Strings = (
      'FORMULAR_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeInsert = qryWageFormularBeforeInsert
    BeforePost = qryWageFormularBeforePost
    OnNewRecord = qryWageFormularNewRecord
    SQL.Strings = (
      'SELECT FORMULAR_NO'
      '     , FORMULAR_NAME'
      '     , EXPRESSION'
      '     , ORDER_INDEX'
      '     , RESULT_TYPE'
      'FROM HR_WAGE_FORMULAR'
      'order by ORDER_INDEX')
    FieldOptions = []
    Left = 120
    Top = 72
    object qryWageFormularFORMULAR_NO: TWideStringField
      Tag = 1
      FieldName = 'FORMULAR_NO'
      Required = True
      Size = 63
    end
    object qryWageFormularFORMULAR_NAME: TWideStringField
      FieldName = 'FORMULAR_NAME'
      Required = True
      Size = 126
    end
    object qryWageFormularEXPRESSION: TWideStringField
      FieldName = 'EXPRESSION'
      Required = True
      Size = 3072
    end
    object qryWageFormularORDER_INDEX: TIntegerField
      FieldName = 'ORDER_INDEX'
    end
    object qryWageFormularRESULT_TYPE: TIntegerField
      FieldName = 'RESULT_TYPE'
    end
  end
  object dsWageFormular: TDataSource
    DataSet = qryWageFormular
    Left = 120
    Top = 104
  end
  object qryViewFormular: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ORDER_INDEX'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_FORMULAR'
      'WHERE'
      '   FORMULAR_NO = :OLD_FORMULAR_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_FORMULAR SET'
      '   FORMULAR_NO = :FORMULAR_NO, /*PK*/'
      '   FORMULAR_NAME = :FORMULAR_NAME,'
      '   EXPRESSION = :EXPRESSION,'
      '   ORDER_INDEX = :ORDER_INDEX'
      'WHERE'
      '   FORMULAR_NO = :OLD_FORMULAR_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_FORMULAR('
      '   FORMULAR_NO, /*PK*/'
      '   FORMULAR_NAME,'
      '   EXPRESSION,'
      '   ORDER_INDEX)'
      'VALUES ('
      '   :FORMULAR_NO,'
      '   :FORMULAR_NAME,'
      '   :EXPRESSION,'
      '   :ORDER_INDEX)')
    KeyLinks.Strings = (
      'FORMULAR_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeInsert = qryWageFormularBeforeInsert
    OnNewRecord = qryWageFormularNewRecord
    DataSource = dsWageFormular
    SQL.Strings = (
      'SELECT FORMULAR_NO'
      '     , FORMULAR_NAME'
      '     , EXPRESSION'
      '     , ORDER_INDEX'
      'FROM HR_WAGE_FORMULAR'
      'where ORDER_INDEX<:ORDER_INDEX')
    FieldOptions = []
    Left = 120
    Top = 144
    object qryViewFormularFORMULAR_NO: TWideStringField
      FieldName = 'FORMULAR_NO'
      Required = True
      Size = 63
    end
    object qryViewFormularFORMULAR_NAME: TWideStringField
      FieldName = 'FORMULAR_NAME'
      Required = True
      Size = 126
    end
    object qryViewFormularEXPRESSION: TWideStringField
      FieldName = 'EXPRESSION'
      Required = True
      Size = 3072
    end
    object qryViewFormularORDER_INDEX: TIntegerField
      FieldName = 'ORDER_INDEX'
    end
  end
  object dsViewFormular: TDataSource
    DataSet = qryViewFormular
    Left = 120
    Top = 176
  end
  object qrySysFunction: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_ELEMENT'
      'WHERE'
      '   ELEMENT_NO = :OLD_ELEMENT_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_ELEMENT SET'
      '   ELEMENT_NO = :ELEMENT_NO, /*PK*/'
      '   ELEMENT_NAME = :ELEMENT_NAME,'
      '   ELEMENT_TYPE = :ELEMENT_TYPE,'
      '   ELEMENT_NOTE = :ELEMENT_NOTE'
      'WHERE'
      '   ELEMENT_NO = :OLD_ELEMENT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_ELEMENT('
      '   ELEMENT_NO, /*PK*/'
      '   ELEMENT_NAME,'
      '   ELEMENT_TYPE,'
      '   ELEMENT_NOTE)'
      'VALUES ('
      '   :ELEMENT_NO,'
      '   :ELEMENT_NAME,'
      '   :ELEMENT_TYPE,'
      '   :ELEMENT_NOTE)')
    KeyLinks.Strings = (
      'ELEMENT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterInsert = qrySysFunctionAfterInsert
    OnNewRecord = qrySysFunctionNewRecord
    SQL.Strings = (
      'SELECT ELEMENT_NO'
      '     , ELEMENT_NAME'
      '     , ELEMENT_TYPE'
      '     , ELEMENT_TYPE_NAME'
      '     , ELEMENT_NOTE'
      '     , COLOR'
      'FROM HR_WAGE_ELEMENT'
      'JOIN HR_WAGE_ELEMENT_TYPE'
      'on ELEMENT_TYPE=ELEMENT_TYPE_NO'
      'where ELEMENT_TYPE='#39'HETHONG'#39)
    FieldOptions = []
    Left = 64
    Top = 280
    object qrySysFunctionELEMENT_NO: TWideStringField
      FieldName = 'ELEMENT_NO'
      Required = True
      Size = 63
    end
    object qrySysFunctionELEMENT_NAME: TWideStringField
      FieldName = 'ELEMENT_NAME'
      Required = True
      Size = 126
    end
    object qrySysFunctionELEMENT_TYPE: TWideStringField
      FieldName = 'ELEMENT_TYPE'
      Required = True
      Size = 30
    end
    object qrySysFunctionELEMENT_TYPE_NAME: TWideStringField
      FieldName = 'ELEMENT_TYPE_NAME'
      Size = 126
    end
    object qrySysFunctionELEMENT_NOTE: TWideStringField
      FieldName = 'ELEMENT_NOTE'
      Size = 3072
    end
    object qrySysFunctionCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object dsSysFunction: TDataSource
    DataSet = qrySysFunction
    Left = 64
    Top = 312
  end
end
