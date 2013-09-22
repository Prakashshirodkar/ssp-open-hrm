inherited frmEmpCalendarWizard: TfrmEmpCalendarWizard
  Left = 242
  Top = 149
  Width = 832
  Height = 582
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 527
    Width = 816
  end
  object ElStatusBar1: TElStatusBar [1]
    Left = 0
    Top = 508
    Width = 816
    Height = 19
    Panels = <
      item
        Alignment = taLeftJustify
        Style = epsControl
        Width = 200
        Control = dxpgBar
        IsHTML = False
      end
      item
        Alignment = taLeftJustify
        Width = 500
        IsHTML = False
      end>
    SimplePanel = False
    SimpleTextIsHTML = False
    ResizablePanels = False
    Bevel = epbNone
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object dxpgBar: TdxfProgressBar
      Left = 2
      Top = 2
      Width = 196
      Height = 15
      BarBevelOuter = bvNone
      BeginColor = 10931878
      BevelOuter = bvNone
      Color = clBtnFace
      EndColor = 8047491
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Max = 100
      Min = 0
      Orientation = orHorizontal
      ParentColor = False
      ParentFont = False
      Position = 0
      ShowTextStyle = stsPercent
      Step = 1
      Style = sExSolid
      TabOrder = 0
      TransparentGlyph = True
    end
  end
  object dxlcSelectPosition: TdxLayoutControl [2]
    Left = 272
    Top = 96
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid1: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'POSITION_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid1TITLE_NO: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c danh'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NO'
        Caption_UTF7 = 'M+AOM ch+Huk-c danh'
      end
      object dxDBGrid1TITLE_NAME: TdxDBGridColumn
        Caption = 'Ch'#7913'c danh'
        HeaderAlignment = taCenter
        Width = 205
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c danh'
      end
    end
    object ElPopupButton6: TElPopupButton
      Left = 148
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 223
      Top = 223
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxlcSelectPositionItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcSelectPositionItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [3]
    Left = 0
    Top = 0
    Width = 816
    Height = 508
    Align = alClient
    TabOrder = 3
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object panelMain: TPanel
      Left = 2
      Top = 58
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 8
      object dxLayoutControl2: TdxLayoutControl
        Left = 353
        Top = 0
        Width = 30
        Height = 41
        Align = alLeft
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ElPopupButton1: TElPopupButton
          Left = 2
          Top = 161
          Width = 25
          Height = 25
          Cursor = crDefault
          ImageIndex = 74
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
          Action = acAddAll
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 2
          Top = 236
          Width = 25
          Height = 25
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
          Action = acRemoveAll
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 2
          Top = 211
          Width = 25
          Height = 25
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
          Action = acRemove
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 2
          Top = 186
          Width = 25
          Height = 25
          Cursor = crDefault
          ImageIndex = 73
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
          Action = acAdd
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup4: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahCenter
            AlignVert = avCenter
            Caption = 'New Group'
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutItem2: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'ElPopupButton4'
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object treeFinal: TdxDBTreeList
        Left = 383
        Top = 0
        Width = 429
        Height = 41
        Bands = <
          item
            Caption = 'Danh s'#225'ch '#225'p d'#7909'ng l'#7883'ch chu'#7849'n m'#7899'i'
            Width = 349
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEM_NO'
        ParentField = 'P_ITEM_NO'
        Align = alClient
        TabOrder = 1
        DataSource = dsNewEmpCalendar
        LookAndFeel = lfFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoMultiSelect, etoTabThrough]
        OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
        ShowBands = True
        TreeLineColor = clGrayText
        OnChangeNode = treeFinalChangeNode
        object treeFinalITEM_NO: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 134
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NO'
        end
        object treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 456
          BandIndex = 0
          RowIndex = 0
          FieldName = 'P_ITEM_NO'
        end
        object treeFinalITEM_NAME: TdxDBTreeListMaskColumn
          Caption = 'Nh'#226'n vi'#234'n/L'#7883'ch chu'#7849'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 331
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Nh+AOI-n vi+AOo-n/L+Hss-ch chu+Hqk-n'
        end
        object treeFinalIS_EMC: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 159
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_EMC'
        end
        object treeFinalEMPLOYEE_NO: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 456
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_NO'
        end
        object treeFinalCALENDAR_NO: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 456
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CALENDAR_NO'
        end
        object treeFinalCALENDAR_NAME: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 1793
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CALENDAR_NAME'
        end
        object treeFinalASSIGN_DATE: TdxDBTreeListDateColumn
          Caption = 'Ng'#224'y '#225'p d'#7909'ng'
          HeaderAlignment = taCenter
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ASSIGN_DATE'
          Caption_UTF7 = 'Ng+AOA-y +AOE-p d+HuU-ng'
        end
        object treeFinalOLD_CALENDAR_NO: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 456
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OLD_CALENDAR_NO'
        end
        object treeFinalOLD_CALENDAR_NAME: TdxDBTreeListMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 1793
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OLD_CALENDAR_NAME'
        end
        object treeFinalOLD_ASSIGN_DATE: TdxDBTreeListDateColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 261
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OLD_ASSIGN_DATE'
        end
      end
      object pageOrigin: TElPageControl
        Left = 0
        Top = 0
        Width = 353
        Height = 41
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
        ActivePage = tabDSCanhanCTN
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
        object tabDSCanhanCTN: TElTabSheet
          PageControl = pageOrigin
          ImageIndex = -1
          TabVisible = True
          Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
          object gridDSCanhan: TdxDBGrid
            Left = 0
            Top = 0
            Width = 353
            Height = 20
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'RecID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            DataSource = dsDSCanhan
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridDSCanhanEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridDSCanhanFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' t'#234'n'
              HeaderAlignment = taCenter
              Width = 239
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 t+AOo-n'
            end
          end
        end
        object tabDSBonhiem: TElTabSheet
          PageControl = pageOrigin
          ImageIndex = -1
          TabVisible = False
          Caption = 'Danh s'#225'ch l'#7883'ch chu'#7849'n '#273#227' '#225'p d'#7909'ng'
          Visible = False
          object gridDSBonhiem: TdxDBGrid
            Left = 0
            Top = 0
            Width = 353
            Height = 20
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'RecID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            DataSource = dsDSBonhiem
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridDSBonhiemEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridDSBonhiemFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' t'#234'n'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              GroupIndex = 0
              Caption_UTF7 = 'H+Hs0 t+AOo-n'
            end
            object gridDSBonhiemOLD_CALENDAR_NAME: TdxDBGridColumn
              Caption = 'L'#7883'ch chu'#7849'n'
              HeaderAlignment = taCenter
              Width = 158
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_CALENDAR_NAME'
              Caption_UTF7 = 'L+Hss-ch chu+Hqk-n'
            end
            object gridDSBonhiemASSIGN_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y '#225'p d'#7909'ng'
              HeaderAlignment = taCenter
              Width = 87
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ASSIGN_DATE'
              Caption_UTF7 = 'Ng+AOA-y +AOE-p d+HuU-ng'
            end
            object gridDSBonhiemOLD_CALENDAR_NO: TdxDBGridColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_CALENDAR_NO'
            end
          end
        end
      end
    end
    object ElPopupButton5: TElPopupButton
      Left = 664
      Top = 481
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 9
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'&ng '#253
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acChapnhan
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 739
      Top = 481
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 15
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDept: TdxPopupEdit
      Left = 47
      Top = 28
      Width = 250
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxDeptChange
      OnCloseUp = dxDeptCloseUp
      OnInitPopup = dxDeptInitPopup
    end
    object dxViewAll: TdxCheckEdit
      Left = 359
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dxViewAllChange
    end
    object dxApplyDate: TdxDateEdit
      Left = 451
      Top = 28
      Width = 85
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dxLayoutGroup5: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup6: TdxLayoutGroup
        Caption = '* Th'#244'ng tin t'#249'y ch'#7885'n '
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = #272#417'n v'#7883
          Control = dxDept
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'Xem c'#7845'p con'
          LookAndFeel = dmMain.StyleWeb
          Control = dxViewAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Ng'#224'y '#225'p d'#7909'ng'
          Control = dxApplyDate
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutItem3: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = panelMain
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton8'
          ShowCaption = False
          Control = ElPopupButton8
          ControlOptions.AutoColor = True
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
        Caption = 'Thi'#7871'p l'#7853'p nhanh l'#7883'ch chu'#7849'n cho nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsDSBonhiem: TDataSource
    DataSet = memDSNVLich
    Left = 90
    Top = 195
  end
  object dsFinal: TDataSource
    DataSet = memFinal
    Left = 130
    Top = 195
  end
  object memDSNVLich: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 90
    Top = 163
    object memDSNVLichEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memDSNVLichFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memDSNVLichOLD_CALENDAR_NO: TWideStringField
      FieldName = 'OLD_CALENDAR_NO'
      Size = 30
    end
    object memDSNVLichOLD_CALENDAR_NAME: TWideStringField
      FieldName = 'OLD_CALENDAR_NAME'
      Size = 120
    end
    object memDSNVLichASSIGN_DATE: TDateField
      FieldName = 'ASSIGN_DATE'
    end
  end
  object memFinal: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 130
    Top = 160
    object memFinalITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Size = 40
    end
    object memFinalP_ITEM_NO: TWideStringField
      DisplayWidth = 40
      FieldName = 'P_ITEM_NO'
      Size = 40
    end
    object memFinalITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 127
    end
    object memFinalIS_EMP: TIntegerField
      FieldName = 'IS_EMP'
    end
    object memFinalEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memFinalDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object memFinalDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memFinalTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object memFinalTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memFinalPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object memFinalASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object memFinalENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
    object memFinalIS_MAIN_POSITION: TIntegerField
      FieldName = 'IS_MAIN_POSITION'
    end
    object memFinalOLD_DEPT_NO: TWideStringField
      FieldName = 'OLD_DEPT_NO'
      Size = 15
    end
    object memFinalOLD_DEPT_NAME: TWideStringField
      FieldName = 'OLD_DEPT_NAME'
      Size = 127
    end
    object memFinalOLD_TITLE_NO: TWideStringField
      FieldName = 'OLD_TITLE_NO'
      Size = 15
    end
    object memFinalOLD_TITLE_NAME: TWideStringField
      FieldName = 'OLD_TITLE_NAME'
      Size = 127
    end
    object memFinalOLD_POSITION_NO: TWideStringField
      FieldName = 'OLD_POSITION_NO'
      Size = 30
    end
    object memFinalOLD_ASSIGNED_DATE: TDateField
      FieldName = 'OLD_ASSIGNED_DATE'
    end
    object memFinalOLD_ENDED_DATE: TDateField
      FieldName = 'OLD_ENDED_DATE'
    end
    object memFinalOLD_IS_MAIN_POSITION: TIntegerField
      FieldName = 'OLD_IS_MAIN_POSITION'
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 328
    Top = 168
    object acAdd: TAction
      Caption = 'acAdd'
      ImageIndex = 73
      OnExecute = acAddExecute
      OnUpdate = acAddUpdate
    end
    object acAddAll: TAction
      Caption = 'acAddAll'
      ImageIndex = 74
      OnExecute = acAddAllExecute
    end
    object acRemove: TAction
      Caption = 'acRemove'
      ImageIndex = 70
      OnExecute = acRemoveExecute
      OnUpdate = acRemoveUpdate
    end
    object acRemoveAll: TAction
      Caption = 'acRemoveAll'
      ImageIndex = 72
      OnExecute = acRemoveAllExecute
      OnUpdate = acRemoveAllUpdate
    end
    object acLoadDSCanhan: TAction
      Caption = 'acLoadDSCanhan'
      OnExecute = acLoadDSCanhanExecute
    end
    object acLoadDSNVLich: TAction
      Caption = 'acLoadDSNVLich'
      OnExecute = acLoadDSNVLichExecute
    end
    object acInitFinalList: TAction
      Caption = 'acInitFinalList'
      OnExecute = acInitFinalListExecute
    end
    object acChapnhan: TAction
      Caption = 'acChapnhan'
      ImageIndex = 9
      OnExecute = acChapnhanExecute
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acBoquaExecute
    end
  end
  object memDSCanhan: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memDSCanhanBeforeDelete
    Left = 50
    Top = 163
    object memDSCanhanEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memDSCanhanFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
  end
  object dsDSCanhan: TDataSource
    DataSet = memDSCanhan
    Left = 50
    Top = 195
  end
  object qryDeptList: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1/3052:D:\PHUC\1 PROJECTS\2009\SSP-HRM 3.0\SSP-HRM\Datab' +
      'ase\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'DEPT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '  hr_department.dept_no,'
      '  hr_department.p_dept_no,'
      '  hr_department.dept_name,'
      '  hr_position.position_no,'
      '  hr_title.title_no,'
      '  hr_title.title_name'
      'from hr_department'
      
        'left join hr_position on hr_position.dept_no=hr_department.dept_' +
        'no'
      'left join hr_title on hr_position.title_no=hr_title.title_no')
    FieldOptions = []
    Left = 134
    Top = 254
    object qryDeptListDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDeptListP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDeptListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDeptListPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryDeptListTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryDeptListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
  end
  object qryUpdate: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALENDAR_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ASSIGN_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ASSIGN_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CALENDAR_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\PHUC\1 PROJECTS\2009\SSP-HRM 3.0\SSP-HRM\Datab' +
      'ase\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'UPDATE hr_emp_calendar SET'
      '    hr_emp_calendar.employee_no = :EMPLOYEE_NO,'
      '    hr_emp_calendar.calendar_no = :CALENDAR_NO,'
      '    hr_emp_calendar.assign_date = :ASSIGN_DATE'
      'WHERE'
      '   hr_emp_calendar.assign_date = :OLD_ASSIGN_DATE AND'
      '   hr_emp_calendar.employee_no = :OLD_EMPLOYEE_NO AND'
      '   hr_emp_calendar.calendar_no = :OLD_CALENDAR_NO')
    FieldOptions = []
    Left = 174
    Top = 350
  end
  object qryInsert: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALENDAR_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ASSIGN_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\PHUC\1 PROJECTS\2009\SSP-HRM 3.0\SSP-HRM\Datab' +
      'ase\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'INSERT INTO hr_emp_calendar('
      '   hr_emp_calendar.employee_no,'
      '   hr_emp_calendar.calendar_no,'
      '   hr_emp_calendar.assign_date'
      '   )'
      'VALUES ('
      ''
      '   :EMPLOYEE_NO,'
      '   :CALENDAR_NO,'
      '   :ASSIGN_DATE'
      '   )')
    FieldOptions = []
    Left = 174
    Top = 318
  end
  object qryCalendarList: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1/3052:D:\PHUC\1 PROJECTS\2009\SSP-HRM 3.0\SSP-HRM\Datab' +
      'ase\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '  hr_calendar.calendar_no,'
      '  hr_calendar.calendar_name,'
      '  hr_calendar.is_rotate'
      'from hr_calendar'
      '')
    FieldOptions = []
    Left = 46
    Top = 254
    object qryCalendarListCALENDAR_NO: TWideStringField
      FieldName = 'CALENDAR_NO'
      Required = True
      Size = 30
    end
    object qryCalendarListCALENDAR_NAME: TWideStringField
      FieldName = 'CALENDAR_NAME'
      Required = True
      Size = 126
    end
    object qryCalendarListIS_ROTATE: TSmallintField
      FieldName = 'IS_ROTATE'
    end
  end
  object memNewEmpCalendar: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memNewEmpCalendarBeforeDelete
    Left = 170
    Top = 168
    object memNewEmpCalendarITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Size = 30
    end
    object memNewEmpCalendarP_ITEM_NO: TWideStringField
      FieldName = 'P_ITEM_NO'
      Size = 30
    end
    object memNewEmpCalendarITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 120
    end
    object memNewEmpCalendarIS_EMC: TIntegerField
      FieldName = 'IS_EMC'
    end
    object memNewEmpCalendarEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memNewEmpCalendarCALENDAR_NO: TWideStringField
      FieldName = 'CALENDAR_NO'
      Size = 30
    end
    object memNewEmpCalendarCALENDAR_NAME: TWideStringField
      FieldName = 'CALENDAR_NAME'
      Size = 120
    end
    object memNewEmpCalendarASSIGN_DATE: TDateField
      FieldName = 'ASSIGN_DATE'
    end
    object memNewEmpCalendarOLD_CALENDAR_NO: TWideStringField
      FieldName = 'OLD_CALENDAR_NO'
      Size = 30
    end
    object memNewEmpCalendarOLD_CALENDAR_NAME: TWideStringField
      FieldName = 'OLD_CALENDAR_NAME'
      Size = 120
    end
    object memNewEmpCalendarOLD_ASSIGN_DATE: TDateField
      FieldName = 'OLD_ASSIGN_DATE'
    end
  end
  object dsNewEmpCalendar: TDataSource
    DataSet = memNewEmpCalendar
    Left = 170
    Top = 203
  end
end
