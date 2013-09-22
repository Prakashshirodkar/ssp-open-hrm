inherited frmNhapNhanhLuongCBNN: TfrmNhapNhanhLuongCBNN
  Left = 211
  Top = 131
  Width = 929
  Height = 602
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 530
    Width = 921
  end
  object ElStatusBar1: TElStatusBar [1]
    Left = 0
    Top = 549
    Width = 921
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
    Width = 921
    Height = 530
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
      TabOrder = 7
      object dxLayoutControl2: TdxLayoutControl
        Left = 401
        Top = 0
        Width = 30
        Height = 41
        Align = alLeft
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ElPopupButton1: TElPopupButton
          Left = 2
          Top = 172
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
          Top = 247
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
          Top = 222
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
          Top = 197
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
        Left = 431
        Top = 0
        Width = 486
        Height = 41
        Bands = <
          item
            Caption = 'Danh s'#225'ch h'#7879' s'#7889' l'#432#417'ng m'#7899'i'
            Width = 349
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEM_NO'
        ParentField = 'P_ITEM_NO'
        Align = alClient
        TabOrder = 1
        DataSource = dsFinal
        LookAndFeel = lfFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoMultiSelect, etoTabThrough]
        OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
        ShowBands = True
        TreeLineColor = clGrayText
        OnChangeNode = treeFinalChangeNode
        OnCustomDrawCell = treeFinalCustomDrawCell
        object treeFinalRecId: TdxDBTreeListColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RecId'
        end
        object treeFinalITEM_NO: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NO'
        end
        object treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'P_ITEM_NO'
        end
        object treeFinalITEM_NAME: TdxDBTreeListMaskColumn
          Caption = 'Ng'#7841'ch l'#432#417'ng / Nh'#226'n vi'#234'n'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 232
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Ng+HqE-ch l+AbABoQ-ng / Nh+AOI-n vi+AOo-n'
        end
        object treeFinalIS_EMP: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_EMP'
        end
        object treeFinalEMPLOYEE_NO: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_NO'
        end
        object treeFinalWAGE_SCALE: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_SCALE'
        end
        object treeFinalWAGE_LEVEL: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_LEVEL'
        end
        object treeFinalWAGE_COEFF: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_COEFF'
        end
        object treeFinalWAGE_ITEM: TdxDBTreeListMaskColumn
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 484
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WAGE_ITEM'
        end
        object treeFinalTHANG_APDUNG: TdxDBTreeListSpinColumn
          Caption = 'Th'#225'ng '#225'p d'#7909'ng'
          HeaderAlignment = taCenter
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'THANG_APDUNG'
          MinValue = 1.000000000000000000
          MaxValue = 12.000000000000000000
          Caption_UTF7 = 'Th+AOE-ng +AOE-p d+HuU-ng'
        end
        object treeFinalNAM_APDUNG: TdxDBTreeListSpinColumn
          Caption = 'N'#259'm '#225'p d'#7909'ng'
          HeaderAlignment = taCenter
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NAM_APDUNG'
          MinValue = 1990.000000000000000000
          MaxValue = 9999999.000000000000000000
          Caption_UTF7 = 'N+AQM-m +AOE-p d+HuU-ng'
        end
        object treeFinalKY_APDUNG: TdxDBTreeListSpinColumn
          Caption = 'K'#7923' '#225'p d'#7909'ng'
          HeaderAlignment = taCenter
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KY_APDUNG'
          MinValue = 1.000000000000000000
          MaxValue = 9.000000000000000000
          Caption_UTF7 = 'K+HvM +AOE-p d+HuU-ng'
        end
      end
      object pageOrigin: TElPageControl
        Left = 0
        Top = 0
        Width = 401
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
          Caption = 'C'#225' nh'#226'n thi h'#224'nh quy'#7871't '#273#7883'nh'
          object gridDSCanhan: TdxDBGrid
            Left = 0
            Top = 0
            Width = 401
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
              Caption = 'M'#227' NV'
              HeaderAlignment = taCenter
              Width = 53
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM NV'
            end
            object gridDSCanhanFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' t'#234'n'
              HeaderAlignment = taCenter
              Width = 107
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 t+AOo-n'
            end
            object gridDSCanhanWAGE_SCALE: TdxDBGridColumn
              Caption = 'Ng'#7841'ch l'#432#417'ng'
              HeaderAlignment = taCenter
              Width = 88
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WAGE_SCALE'
              Caption_UTF7 = 'Ng+HqE-ch l+AbABoQ-ng'
            end
            object gridDSCanhanWAGE_LEVEL: TdxDBGridColumn
              Caption = 'B'#7853'c l'#432#417'ng'
              HeaderAlignment = taCenter
              Width = 53
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WAGE_LEVEL'
              Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
            end
            object gridDSCanhanWAGE_COEFF: TdxDBGridColumn
              Caption = 'H'#7879' s'#7889
              HeaderAlignment = taCenter
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WAGE_COEFF'
              Caption_UTF7 = 'H+Hsc s+HtE'
            end
          end
        end
      end
    end
    object dxCareer: TdxEdit
      Left = 76
      Top = 28
      Width = 277
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      ReadOnly = True
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object dxWage: TdxEdit
      Left = 469
      Top = 28
      Width = 249
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      ReadOnly = True
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object ElPopupButton5: TElPopupButton
      Left = 769
      Top = 503
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acChapnhan
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 844
      Top = 503
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup5: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup6: TdxLayoutGroup
        Caption = '* Th'#244'ng tin t'#249'y ch'#7885'n l'#7879' s'#7889' LCB Nh'#224' n'#432#7899'c'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Ng'#7841'ch l'#432#417'ng'
          Control = dxCareer
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'B'#7853'c l'#432#417'ng - H'#7879' s'#7889' l'#432#417'ng'
          Control = dxWage
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
        Caption = 'Ti'#7879'n '#237'ch ch'#7881' '#273#7883'nh h'#7879' s'#7889' LCB nh'#224' n'#432#7899'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsFinal: TDataSource
    DataSet = memFinal
    Left = 82
    Top = 195
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 120
    Top = 163
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
    object memDSCanhanWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 125
    end
    object memDSCanhanWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object memDSCanhanWAGE_COEFF: TFloatField
      FieldName = 'WAGE_COEFF'
    end
  end
  object dsDSCanhan: TDataSource
    DataSet = memDSCanhan
    Left = 50
    Top = 195
  end
  object qryInsertWageDetail: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WAGE_SCALE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WAGE_LEVEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WAGE_COEFF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APPLY_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APPLY_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APPLY_PERIOD'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'INSERT INTO HR_WAGE_STANDARD_DETAIL (CHANGE_NO, EMPLOYEE_NO, WAG' +
        'E_SCALE, WAGE_LEVEL, WAGE_COEFF, APPLY_MONTH, APPLY_YEAR, APPLY_' +
        'PERIOD)'
      
        'VALUES (:CHANGE_NO, :EMPLOYEE_NO, :WAGE_SCALE, :WAGE_LEVEL, :WAG' +
        'E_COEFF, :APPLY_MONTH, :APPLY_YEAR, :APPLY_PERIOD);')
    FieldOptions = []
    Left = 118
    Top = 230
  end
  object qryInsertWageChange: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DECISION_NAME'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select change_no'
      
        'from hr_them_dot_tangluong(:DECISION_NO,:DECISION_DATE,:DECISION' +
        '_NAME, '#39'DECISION'#39')')
    FieldOptions = []
    Left = 86
    Top = 230
    object qryInsertWageChangeCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Size = 30
    end
  end
  object qryCareer: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'wage_scale')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_wage_standard.wage_scale,'
      
        '    hr_wage_standard.wage_scale || '#39'-'#39' || hr_career.career_name ' +
        'career_name,'
      '    hr_wage_standard.wage_level,'
      '    hr_wage_standard.wage_coeff,'
      
        '    '#39'B'#225#186#173'c: '#39' || hr_wage_standard.wage_level || '#39' - H'#225#187#8225' s'#225#187#8216': '#39 +
        ' ||'
      '    (select sp_substring.result'
      
        '     from sp_substring(hr_wage_standard.wage_coeff,1,4)) WAGE_IT' +
        'EM'
      'from hr_wage_standard join hr_career'
      'on hr_wage_standard.wage_scale = hr_career.career_no'
      
        'order by  hr_wage_standard.wage_scale,hr_wage_standard.wage_leve' +
        'l')
    FieldOptions = []
    Left = 54
    Top = 230
    object qryCareerWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Required = True
      Size = 30
    end
    object qryCareerCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Required = True
      Size = 126
    end
    object qryCareerWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
      Required = True
    end
    object qryCareerWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
    end
    object qryCareerWAGE_ITEM: TWideStringField
      FieldName = 'WAGE_ITEM'
      ReadOnly = True
      Size = 843
    end
  end
  object memFinal: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memFinalBeforeDelete
    Left = 88
    Top = 160
    object memFinalITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Size = 40
    end
    object memFinalP_ITEM_NO: TWideStringField
      FieldName = 'P_ITEM_NO'
      Size = 40
    end
    object memFinalITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 125
    end
    object memFinalIS_EMP: TIntegerField
      FieldName = 'IS_EMP'
    end
    object memFinalEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memFinalWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 40
    end
    object memFinalWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object memFinalWAGE_COEFF: TFloatField
      FieldName = 'WAGE_COEFF'
    end
    object memFinalWAGE_ITEM: TWideStringField
      FieldName = 'WAGE_ITEM'
      Size = 125
    end
    object memFinalTHANG_APDUNG: TSmallintField
      FieldName = 'THANG_APDUNG'
    end
    object memFinalNAM_APDUNG: TIntegerField
      FieldName = 'NAM_APDUNG'
    end
    object memFinalKY_APDUNG: TSmallintField
      FieldName = 'KY_APDUNG'
    end
  end
  object qryDSCaNhan: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'decision_no'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'decision_date'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select employee_no,'
      '    full_name,'
      '    wage_scale,'
      '    wage_level,'
      '    wage_coeff'
      'from hr_ds_canhan_tangluong_cbnn(:decision_no,:decision_date)'
      'order by employee_no')
    FieldOptions = []
    Left = 118
    Top = 198
    object qryDSCaNhanEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDSCaNhanFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryDSCaNhanWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 126
    end
    object qryDSCaNhanWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object qryDSCaNhanWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
    end
  end
end
