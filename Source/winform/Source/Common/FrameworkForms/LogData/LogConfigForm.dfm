inherited frmLogConfig: TfrmLogConfig
  Left = 205
  Top = 247
  Width = 732
  Height = 483
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object CopyMemo: TdxMemo [0]
    Left = 297
    Top = 224
    Width = 24
    Style.BorderStyle = xbsFlat
    TabOrder = 2
    Visible = False
    Height = 25
  end
  inherited sbMain: TElStatusBar
    Top = 435
    Width = 724
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 724
    Height = 435
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridComp: TdxDBGrid
      Left = 2
      Top = 2
      Width = 247
      Height = 175
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DATASET_NAME'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsLogConfig
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridCompDATASET_NAME: TdxDBGridColumn
        Caption = 'Ngu'#7891'n d'#7919' li'#7879'u'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATASET_NAME'
        Caption_UTF7 = 'Ngu+HtM-n d+Hu8 li+Hsc-u'
      end
      object gridCompFEATURENAME: TdxDBGridPopupColumn
        Caption = 'Ph'#226'n lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME'
        OnCloseUp = gridCompFEATURENAMECloseUp
        OnInitPopup = gridCompFEATURENAMEInitPopup
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 152
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 44
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 7
      Color = 15466238
      ParentColor = False
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 2
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 62
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Qu'#233't'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acScan
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 77
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 45
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 227
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 47
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 8
      Color = 15466238
      ParentColor = False
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 572
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 68
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 647
      Top = 408
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 67
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 10
      Color = 15466238
      ParentColor = False
      Action = acClose
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object mainPage: TElPageControl
      Left = 261
      Top = 28
      Width = 264
      Height = 368
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
      TabPosition = etpBottom
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabInsert
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 14
      object tabInsert: TElTabSheet
        PageControl = mainPage
        ImageIndex = -1
        TabVisible = True
        Caption = 'Th'#234'm d'#7919' li'#7879'u'
        object dxInsertFormat: TdxDBMemo
          Left = 0
          Top = 0
          Width = 264
          Align = alClient
          TabOrder = 0
          DataField = 'LOG_INSERT_FORMAT'
          DataSource = dsLogConfig
          StyleController = dmMain.StyleController
          Height = 347
        end
      end
      object tabEdit: TElTabSheet
        PageControl = mainPage
        ImageIndex = -1
        TabVisible = True
        Caption = 'S'#7917'a d'#7919' li'#7879'u'
        Visible = False
        object dxEditFormat: TdxDBMemo
          Left = 0
          Top = 0
          Width = 264
          Align = alClient
          TabOrder = 0
          DataField = 'LOG_EDIT_FORMAT'
          DataSource = dsLogConfig
          StyleController = dmMain.StyleController
          Height = 347
        end
      end
      object tabDelete: TElTabSheet
        PageControl = mainPage
        ImageIndex = -1
        TabVisible = True
        Caption = 'X'#243'a d'#7919' li'#7879'u'
        Visible = False
        object dxDeleteFormat: TdxDBMemo
          Left = 0
          Top = 0
          Width = 289
          Align = alClient
          TabOrder = 0
          DataField = 'LOG_DELETE_FORMAT'
          DataSource = dsLogConfig
          StyleController = dmMain.StyleController
          Height = 172
        end
      end
    end
    object leftPage: TElPageControl
      Left = 2
      Top = 177
      Width = 191
      Height = 217
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
      ParentColor = False
      TabOrder = 15
      object tabData: TElTabSheet
        PageControl = leftPage
        ImageIndex = -1
        TabVisible = True
        Caption = 'D'#7919' li'#7879'u'
        object gridFieldList: TdxDBGrid
          Left = 0
          Top = 0
          Width = 191
          Height = 196
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
          OnDblClick = gridFieldListDblClick
          DataSource = dsFieldList
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridFieldListFIELD_NAME: TdxDBGridColumn
            Caption = '* T'#234'n tr'#432#7901'ng d'#7919' li'#7879'u'
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIELD_NAME'
            Caption_UTF7 = '* T+AOo-n tr+AbAe3Q-ng d+Hu8 li+Hsc-u'
          end
        end
      end
      object tabParam: TElTabSheet
        PageControl = leftPage
        ImageIndex = -1
        TabVisible = True
        Caption = 'Tham s'#7889
        Visible = False
        object gridParamList: TdxDBGrid
          Left = 0
          Top = 0
          Width = 191
          Height = 196
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
          OnDblClick = gridParamListDblClick
          DataSource = dsParamList
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridParamListPARAM_NAME: TdxDBGridColumn
            Caption = '* T'#234'n tham s'#7889
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARAM_NAME'
            Caption_UTF7 = '* T+AOo-n tham s+HtE'
          end
        end
      end
    end
    object ElPopupButton10: TElPopupButton
      Left = 685
      Top = 103
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#232'n th'#234'm c'#226'u l'#7879'nh l'#7845'y tham s'#7889
      ImageIndex = 3
      UseImageList = True
      Images = ImageList1
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ShowText = False
      UseXPThemes = True
      Caption = 'PRM'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acInsertParam
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton11: TElPopupButton
      Left = 685
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#232'n th'#234'm c'#226'u l'#7879'nh l'#7845'y gi'#225' tr'#7883' m'#7899'i c'#7853'p nh'#7853't'
      ImageIndex = 0
      UseImageList = True
      Images = ImageList1
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ShowText = False
      UseXPThemes = True
      Caption = 'NEW'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acInsertNewField
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton12: TElPopupButton
      Left = 685
      Top = 53
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#232'n th'#234'm c'#226'u l'#7879'nh l'#7845'y gi'#225' tr'#7883' c'#361' v'#7915'a '#273#432#7907'c c'#7853'p nh'#7853't'
      ImageIndex = 1
      UseImageList = True
      Images = ImageList1
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ShowText = False
      UseXPThemes = True
      Caption = 'OLD'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acInsertOldField
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton13: TElPopupButton
      Left = 685
      Top = 78
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Ch'#232'n th'#234'm c'#7845'u tr'#250'c c'#226'u l'#7879'nh IF '#273#7875' ki'#7875'm tra thay '#273#7893'i d'#7919' li'#7879'u'
      ImageIndex = 2
      UseImageList = True
      Images = ImageList1
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ShowText = False
      UseXPThemes = True
      Caption = 'IF'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acInsertIfStatement
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridComp
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'ElPageControl1'
            ShowCaption = False
            Control = leftPage
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = '* C'#7845'u h'#236'nh nh'#7853't k'#253
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'ElPageControl1'
            ShowCaption = False
            Control = mainPage
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item10: TdxLayoutItem
              Caption = 'ElPopupButton11'
              ShowCaption = False
              Control = ElPopupButton11
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item11: TdxLayoutItem
              Caption = 'ElPopupButton12'
              ShowCaption = False
              Control = ElPopupButton12
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item12: TdxLayoutItem
              Caption = 'ElPopupButton13'
              ShowCaption = False
              Control = ElPopupButton13
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              Caption = 'ElPopupButton10'
              ShowCaption = False
              Control = ElPopupButton10
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxLayoutGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem1: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton6'
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcFeatureList: TdxLayoutControl [3]
    Left = 32
    Top = 208
    Width = 169
    Height = 153
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton7: TElPopupButton
      Left = 2
      Top = 109
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 77
      Top = 109
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton9: TElPopupButton
      Left = 152
      Top = 109
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object treeList: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FEATUREID'
      ParentField = 'P_FEATUREID'
      TabOrder = 0
      OnDblClick = treeListDblClick
      DataSource = dsFeatureList
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object treeListFEATURENAME: TdxDBTreeListColumn
        Caption = 'Danh s'#225'ch ch'#7913'c n'#259'ng'
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME'
        Caption_UTF7 = 'Danh s+AOE-ch ch+Huk-c n+AQM-ng'
      end
      object treeListFEATURENAME_ENG: TdxDBTreeListColumn
        Caption = 'Danh s'#225'ch ch'#7913'c n'#259'ng'
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME_ENG'
        Caption_UTF7 = 'Danh s+AOE-ch ch+Huk-c n+AQM-ng'
      end
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = treeList
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup4: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem6: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton8
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton9
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
        Caption = 'C'#7845'u h'#236'nh nh'#7853't k'#253' d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 616
    Top = 24
  end
  object dsLogConfig: TDataSource
    DataSet = qryLogConfig
    Left = 128
    Top = 72
  end
  object memFieldList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 88
    Top = 208
    object memFieldListFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Size = 60
    end
  end
  object dsFieldList: TDataSource
    DataSet = memFieldList
    Left = 88
    Top = 240
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 160
    Top = 120
    object acScan: TAction
      Caption = 'acScan'
      ImageIndex = 62
      OnExecute = acScanExecute
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      ImageIndex = 47
      DataSource = dsLogConfig
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      ImageIndex = 45
      OnExecute = acDeleteExecute
      DataSource = dsLogConfig
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      ImageIndex = 44
      DataSource = dsLogConfig
    end
    object acClose: TAction
      Caption = 'acClose'
      ImageIndex = 67
      OnExecute = acCloseExecute
    end
  end
  object memParamList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 128
    Top = 208
    object memParamListPARAM_NAME: TStringField
      FieldName = 'PARAM_NAME'
      Size = 60
    end
  end
  object dsParamList: TDataSource
    DataSet = memParamList
    Left = 128
    Top = 240
  end
  object qryFeatureList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\SSP-HRM 2.01\Databases\SSP_HRM_DB_DEMO.' +
      'GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SUBSYSTEMID'
      '     , FEATUREID'
      '     , FEATURENAME'
      '     , P_FEATUREID'
      '     , FEATURENAME_ENG'
      'FROM SYS_FEATURE_LIST'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 240
    Top = 208
    object qryFeatureListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryFeatureListFEATUREID: TSmallintField
      FieldName = 'FEATUREID'
      Required = True
    end
    object qryFeatureListFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
    object qryFeatureListP_FEATUREID: TIntegerField
      FieldName = 'P_FEATUREID'
    end
    object qryFeatureListFEATURENAME_ENG: TWideStringField
      FieldName = 'FEATURENAME_ENG'
      Size = 126
    end
  end
  object dsFeatureList: TDataSource
    DataSet = qryFeatureList
    Left = 240
    Top = 256
  end
  object qryLogConfig: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'FORM_NAME'
        ParamType = ptInput
        Value = ''
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\SSP-HRM 2.01\Databases\SSP_HRM_DB_DEMO.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_LOG_REGISTRY'
      'WHERE'
      '   DATASET_NAME = :OLD_DATASET_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME')
    EditSQL.Strings = (
      'UPDATE SYS_LOG_REGISTRY SET'
      '   DATASET_NAME = :DATASET_NAME, /*PK*/'
      '   FORM_NAME = :FORM_NAME, /*PK*/'
      '   LOG_INSERT_FORMAT = :LOG_INSERT_FORMAT,'
      '   LOG_DELETE_FORMAT = :LOG_DELETE_FORMAT,'
      '   LOG_EDIT_FORMAT = :LOG_EDIT_FORMAT,'
      '   FIELD_LIST = :FIELD_LIST,'
      '   PARAM_LIST = :PARAM_LIST,'
      '   FEATURE_ID = :FEATURE_ID,'
      '   SYSTEM_ID = :SYSTEM_ID'
      'WHERE'
      '   DATASET_NAME = :OLD_DATASET_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_LOG_REGISTRY('
      '   DATASET_NAME, /*PK*/'
      '   FORM_NAME, /*PK*/'
      '   LOG_INSERT_FORMAT,'
      '   LOG_DELETE_FORMAT,'
      '   LOG_EDIT_FORMAT,'
      '   FIELD_LIST,'
      '   PARAM_LIST,'
      '   FEATURE_ID,'
      '   SYSTEM_ID)'
      'VALUES ('
      '   :DATASET_NAME,'
      '   :FORM_NAME,'
      '   :LOG_INSERT_FORMAT,'
      '   :LOG_DELETE_FORMAT,'
      '   :LOG_EDIT_FORMAT,'
      '   :FIELD_LIST,'
      '   :PARAM_LIST,'
      '   :FEATURE_ID,'
      '   :SYSTEM_ID)')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryLogConfigBeforeDelete
    AfterScroll = qryLogConfigAfterScroll
    SQL.Strings = (
      'SELECT FORM_NAME'
      '     , DATASET_NAME'
      '     , LOG_INSERT_FORMAT'
      '     , LOG_DELETE_FORMAT'
      '     , LOG_EDIT_FORMAT'
      '     , FIELD_LIST'
      '     , PARAM_LIST'
      '     , FEATURENAME'
      '     , FEATURE_ID'
      '     , SYSTEM_ID'
      'FROM SYS_LOG_REGISTRY'
      'left JOIN SYS_FEATURE_LIST on '
      '     FEATURE_ID=FEATUREID and'
      '     SYSTEM_ID=SUBSYSTEMID'
      'where FORM_NAME=:FORM_NAME'
      ' ')
    FieldOptions = []
    Left = 96
    Top = 72
    object qryLogConfigFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Required = True
      Size = 63
    end
    object qryLogConfigDATASET_NAME: TWideStringField
      FieldName = 'DATASET_NAME'
      Required = True
      Size = 63
    end
    object qryLogConfigLOG_INSERT_FORMAT: TWideStringField
      FieldName = 'LOG_INSERT_FORMAT'
      Size = 3072
    end
    object qryLogConfigLOG_DELETE_FORMAT: TWideStringField
      FieldName = 'LOG_DELETE_FORMAT'
      Size = 3072
    end
    object qryLogConfigLOG_EDIT_FORMAT: TWideStringField
      FieldName = 'LOG_EDIT_FORMAT'
      Size = 3072
    end
    object qryLogConfigFIELD_LIST: TWideStringField
      FieldName = 'FIELD_LIST'
      Size = 3072
    end
    object qryLogConfigPARAM_LIST: TWideStringField
      FieldName = 'PARAM_LIST'
      Size = 3072
    end
    object qryLogConfigFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
    object qryLogConfigFEATURE_ID: TSmallintField
      FieldName = 'FEATURE_ID'
    end
    object qryLogConfigSYSTEM_ID: TSmallintField
      FieldName = 'SYSTEM_ID'
    end
  end
  object ActionList2: TActionList
    Images = ImageList1
    Left = 349
    Top = 132
    object acInsertNewField: TAction
      Caption = 'acInsertNewField'
      ImageIndex = 0
      OnExecute = acInsertNewFieldExecute
    end
    object acInsertOldField: TAction
      Caption = 'acInsertOldField'
      ImageIndex = 1
      OnExecute = acInsertOldFieldExecute
    end
    object acInsertIfStatement: TAction
      Caption = 'acInsertIfStatement'
      ImageIndex = 2
      OnExecute = acInsertIfStatementExecute
      OnUpdate = acInsertIfStatementUpdate
    end
    object acInsertParam: TAction
      Caption = 'acInsertParam'
      ImageIndex = 3
      OnExecute = acInsertParamExecute
    end
  end
  object ImageList1: TImageList
    Left = 301
    Top = 68
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
      0000000000000000000089A5C7FF1A5BA9FFA24B22FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BF9A89FFA74D23FFF8F8F8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCF9F9FFCBA8A8FFFBFAFAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDCEE1FF0066B8FF00FCFDFF72F0FFFF0081CAFF646477FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDC7BDFFA54612FFFDE1B0FFFFF4D9FFBB6E3DFFD4A088FF0000
      000000000000000000000000000000000000C9D3E4FF0043A6FF0043A6FF0043
      A6FF0043A6FF0043A6FF0043A6FF0043A6FF0043A6FF0043A6FF0043A6FF0043
      A6FF0043A6FF0043A6FF3073BFFF000000000000000000000000000000000000
      000000000000063F9AFFB16466FFEE6D7FFFA13F41FF013F9CFF000000000000
      0000000000000000000000000000000000000000000000000000E6E8EBFF0C5C
      B4FF00D4F0FF00F5FFFF00F8FFFF70E8FFFF00DAFFFF00E2FEFF005BB3FF8839
      16FF00000000000000000000000000000000000000000000000000000000EAE7
      E6FFA13E0DFFECB87EFFFFDAA2FFFFDCA6FFFFE8C7FFFFDDA7FFFEE4B4FF9F3C
      09FFE6DEDAFF000000000000000000000000004BAAFF4FF0FEFF00E3FDFF00DE
      FDFF00D9FDFF00D2FDFF00CFFEFF00BAF4FF00C4FEFF00BEFDFF00B9FDFF00B3
      FDFF00AEFDFF00A9FEFF0070CCFF407FC4FF0000000000000000000000000000
      000005CBECFFB06464FFFF7588FFF46F81FFE76A7DFFA13F40FF01ADEDFF0000
      000000000000000000000000000000000000FDFDFDFF3577C5FF00A2DBFF00E8
      FFFF00E8FFFF00ECFFFF00F0FFFF70E2FFFF00D0FFFF00DAFFFF00E7FFFF00AE
      DDFF3668A2FFB76741FF000000000000000000000000FDFDFDFFB25C35FFD184
      47FFFFCB8AFFFFCC8DFFFFD194FFFFD59BFFFFE0BCFFFFCD8FFFFFD59CFFFFE1
      ACFFD59C6BFFB86741FFFEFEFEFF00000000175EB1FF00ECFFFF00E7FFFF00E2
      FFFF00DDFFFF00D7FFFF00A9E5FF0051ACFF0048A6FF00C5FFFF00BDFFFF00B8
      FFFF00B3FFFF00ADFFFF00A4FDFF0052ADFF00000000000000000000000004D5
      F0FFAE6363FFFD8092FFFB798BFFF77384FFE86D7DFFDB6879FFA64246FF01AC
      EFFF000000000000000000000000000000000060B7FF00DCFFFF00DBFFFF00DF
      FFFF00E1FFFF00E5FFFF00E8FFFF70DEFFFF00C8FFFF00D2FFFF00DCFFFF00E7
      FFFF00F8FFFF0056B0FF000000000000000000000000A54007FFFFBE72FFFFBE
      74FFFFC17BFFFFC583FFFFC988FFFFCD8EFFFFD8AFFFFFBF78FFFFC785FFFFCF
      92FFFFD79FFFFFE8B4FF9C3501FF000000000252AFFF9FF0FBFF00E9FFFF00E4
      FFFF00DFFFFF00D9FFFF00BFF2FF0050ACFF004BA8FF00C6FFFF00BFFFFF00BA
      FFFF00B5FFFF00B0FFFF035FB8FF9FB6D1FF000000000000000003DEF3FFAC61
      61FFFF889AFFFF8193FFFF7A8CFFFE7486FFF16E80FFE36879FFD56374FFA441
      45FF01AAEFFF0000000000000000000000000075C5FF00CFFFFF00D3FFFF00D8
      FFFF00DAFFFF00DFFFFF00E1FFFF70D9FFFF00C0FFFF00CBFFFF00D5FFFF00DF
      FFFF00E8FFFF0062B5FF000000000000000000000000B65416FFFFB262FFFFB6
      6AFFFFBA71FFFFBE76FFFFC27EFFFFC682FFFFD2A3FFFFB161FFFFB96EFFFFC1
      7BFFFFC988FFFFD396FFA3420CFF00000000CCD7E4FF004AA9FF07EEFFFF00E6
      FFFF00E1FFFF00DBFFFF00D6FFFF00DFFFFF00D2FFFF00C6FFFF00C1FFFF00BC
      FFFF00B7FFFF09ABF8FF0054B2FF00000000000000000247A3FFA95B5CFFFD90
      A2FFFB879BFFFB8395FFFB7D8EFFFC7788FFF47182FFE56B7EFFD76578FFCB5F
      71FFA24044FF09A0E8FF00000000000000000072C5FF00C8FFFF00CCFFFF00D1
      FFFF00D3FFFF00D8FFFF00DAFFFF70D5FFFF00B9FFFF00C1FFFF00CBFFFF00D5
      FFFF00E0FFFF0060B5FF000000000000000000000000B65212FFFFAB58FFFFAF
      5DFFFFB365FFFFB76CFFFFBB71FFFFBF77FFFFCA96FFFFA34AFFFFAB57FFFFB3
      64FFFFBB71FFFFC47FFFA34008FF00000000000000001D6AC1FFB4D0E9FF00E7
      FFFF00E3FFFF00DEFFFF00CDF7FF004EABFF0046A5FF00C9FFFF00C3FFFF00BE
      FFFF00BCFFFF0353ADFFD7DADEFF00000000FBFBFBFFA85859FFFF98AAFFFF90
      A3FFFF8B9DFFFF8596FFFF8092FFFF7A8CFFFB7486FFEC6E7EFFE06878FFD262
      73FFC45B6CFFA04042FFCBCCD0FF000000000070C5FF00C1FFFF00C5FFFF00C8
      FFFF00CCFFFF00D1FFFF00D3FFFF70D0FFFF00AFFFFF00B9FFFF00C3FFFF00CD
      FFFF00D8FFFF0060B5FF000000000000000000000000B64F0FFFFFA34CFFFFA8
      53FFFFAC58FFFFB060FFFFB467FFFFB86BFFFFC28BFFFF9633FFFF9D40FFFFA5
      4DFFFFAD5AFFFFB668FFA33D05FF0000000000000000000000000046A8FF3CF4
      FFFF00E5FFFF00E0FFFF0096D5FF0053AEFF004DAAFF00D0FFFF00C5FFFF00C0
      FFFF0991DCFF1A6AC2FF0000000000000000A85859FFFF9FB2FFFB97A8FFFC92
      A5FFFD8FA1FFFDADBBFFFD7F92FFFB7B8CFFFC7586FFF17081FFE26A7BFFD465
      75FFC85E70FFBA5869FF9D3E41FFF6F5F5FF006DC5FF00BAFFFF00BFFFFF00C1
      FFFF00C5FFFF00C8FFFF36D8FFFFD3F2FFFF0FACFFFF00B1FFFF00BCFFFF1D94
      F7FF1D94F7FF005EB5FF000000000000000000000000B64D0BFFFF9C3FFFFFA0
      47FFFFA44EFFFFA953FFFFAD5AFFFFC282FFFFF9F0FFFF8E2AFFFF9029FFFF98
      36FFFF9F43FFFFA851FFA33B02FF0000000000000000000000004E83BFFF87A2
      D2FF00E6FFFF00E2FFFF0098D5FF0053AEFF004DAAFF00D2FFFF00C7FFFF00C7
      FFFF004EABFFF7F7F7FF0000000000000000B97978FFFFAEBFFFFF99ADFFE27B
      89FF64757EFF169FB2FF9E4646FFFFA8B4FFFF798BFFF87183FFE96B7DFFDD65
      78FFCF5F70FFC05869FFAD6061FFF5F3F3FF006BC5FF00B3FFFF00B8FFFF00BA
      FFFF15C4FFFFB4EFFFFF00C6FFFF00C1FFFF32C8FFFF1D94F7FF00B2FFFF1DD1
      F7FF1DD1F7FF005DB5FF1D94F7FF1D94F7FF00000000B64C07FFFF9535FFFF99
      3AFFFF9D42FFFFAA57FFFFEEDAFFFFD79DFFFFDFACFFFFEEC9FFFFCC9FFFFF87
      1DFFFF922CFFFF9A3AFFA33A00FF00000000000000000000000000000000004D
      ABFF78F4FFFF00E4FFFF0099D5FF0053AEFF004DAAFF00D4FFFF00C9FFFF006E
      C1FF689FDBFF000000000000000000000000E4E2E2FFBA7A7AFFFFADBDFF5F3B
      56FF00000000000000000098D4FFBD7A7AFFFC798AFFFB7687FFEE7080FFDF69
      7AFFD46175FFAE5F60FFEAE4E4FF00000000006AC5FF00ACFFFF00AFFFFFA1E7
      FFFF08D8FFFF00D0FFFF00CBFFFF00C4FFFF00BDFFFF07FFFFFF1DD1F7FF9FFF
      FFFF9FFFFFFF1DD1F7FF07FFFFFF0000000000000000B64904FFFF8E29FFFF91
      2BFFFFDAB8FFFFBC72FFFFC079FFFFC887FFFFD194FFFFD9A2FFFFE1AEFFFFFB
      EDFFFF9E4AFFFF8B22FFA33700FF0000000000000000000000000000000098AF
      C9FF1F61B4FF00E5FFFF009AD5FF0053AEFF004DAAFF00D6FFFF03CDFFFF0053
      B1FF0000000000000000000000000000000000000000E1DFDFFFAB5D5DFF9091
      A5FF000000000000000000000000B16162FFFF7C8EFFFF788AFFF47282FFE86A
      7CFFAF5F60FFF1EDEDFF00000000000000000066C5FF6FCCFFFF35EDFFFF00E0
      FFFF00DAFFFF00D4FFFF00CDFFFF00C7FFFF00C0FFFF00BAFFFF1DD1F7FFD4FF
      FFFFD4FFFFFF1DD1F7FF000000000000000000000000B74600FFFFBC80FFFFAF
      63FFFFA146FFFFA954FFFFB262FFFFBA6FFFFFC27DFFFFCB8AFFFFD398FFFFDB
      A5FFFFE4B2FFFFEDDCFFA33800FF000000000000000000000000000000000000
      00000B59B3FFB2E5F4FF009AD5FF0053AEFF004DAAFF00DAFFFF055EB4FFB5C9
      DFFF000000000000000000000000000000000000000000000000EEEDEDFF0000
      00000000000000000000336F93FFED7A8BFFFB7E8FFFFC7B8CFFF87384FFEC6E
      80FFC75863FFA74447FFC49797FF000000003371BFFF00B5E1FF00ECFFFF00E3
      FFFF00DDFFFF00D6FFFF00D0FFFF00C9FFFF00C3FFFF1D94F7FF78FFFFFFC2FF
      FFFFC2FFFFFF78FFFFFF1D94F7FF0000000000000000AC5633FFD9640BFFFF8B
      23FFFF922FFFFF9B3DFFFFA34AFFFFAB58FFFFB465FFFFBC73FFFFC480FFFFCD
      8EFFFFD79DFFDAA26EFFAC5534FF000000000000000000000000000000000000
      0000E8EBEEFF0047A8FF1BE9FFFF004CAAFF005FB4FF03BAEEFF0458B6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A86D6EFFBA6469FFF18191FFFF8799FFFF8094FFFF7D8EFFDAAEB0FFF26E
      80FFE56A7CFFD76475FFBA525FFFDED9D9FF00000000E9ECEFFF175EB5FF00C1
      EAFF00DFFFFF00D9FFFF00D2FFFF00CCFFFF1D94F7FF07FFFFFF1D94F7FF78FF
      FFFF78FFFFFF1D94F7FF07FFFFFF1D94F7FF0000000000000000EEEAE9FFA345
      19FFE67114FFFF8D25FFFF9633FFFF9D40FFFFA54EFFFFAD5BFFFFB769FFF2AE
      69FFA13E0EFFEEE5E2FF00000000000000000000000000000000000000000000
      0000000000002E76C6FFBAC4E2FF00E4FFFF00E2FFFF034FAAFFE3E5E8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECEAEAFFAF6666FFFEA2B1FFFB889AFFFD8598FFA95F60FFB27677FFFA77
      88FFEA6E7FFFDC6777FFCF6272FFBAB0B0FF000000000000000000000000C8D3
      E1FF0859AFFF00CAF4FF00D5FFFF00CEFFFF00C7FEFF0067BDFF674540FF1D94
      F7FF1D94F7FF0000000000000000000000000000000000000000000000000000
      0000DECFC8FF9D3A09FFF17D19FFFF8F29FFFF9736FFFFA044FFAB480EFFCAA8
      99FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004CABFFC3D4EBFF417BC0FF307BCEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDEBEBFFAF6566FFFFADBBFFA95E5EFF3077C7FFD5CCCCFFE1B6
      B8FFEF6F81FFE16678FFD49FA2FFE1DCDCFF0000000000000000000000000000
      0000000000009EB2CAFF0163B9FF0095D9FF395888FF00000000000000001D94
      F7FF1D94F7FF0000000000000000000000000000000000000000000000000000
      00000000000000000000C5AA9EFFA63D02FFCF6111FFB86B46FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFEFF86ADD8FFA7C4E5FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDECEDFF94464CFFA5C0E1FF0000000000000000C198
      98FFA45251FFA24E4EFFCAA9A9FF00000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC7FFE3FFFFFFC7FF03FF81F0001F83F
      C00FE0070000F01F000380010000E00F000380010000C0070003800100018003
      000380018001000100038001C003000000038001C003000000008001E0070C01
      00018001E00F8E0300038001F00FDC0100018001F01FF0008000C003F81FF000
      E007F00FFC3FF800F867FC3FFC7FFC6100000000000000000000000000000000
      000000000000}
  end
end
