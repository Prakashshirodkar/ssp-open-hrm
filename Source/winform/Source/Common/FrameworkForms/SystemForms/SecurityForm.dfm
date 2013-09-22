inherited frmSecurity: TfrmSecurity
  Left = 305
  Top = 164
  Width = 805
  Height = 523
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 470
    Width = 797
  end
  object ElSplitter1: TElSplitter [1]
    Left = 401
    Top = 0
    Width = 8
    Height = 470
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageLeft
    ControlBottomRight = pageRight
    AutoHide = False
    ShowSnapButton = True
    Align = alLeft
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object pageLeft: TElPageControl [2]
    Left = 0
    Top = 0
    Width = 401
    Height = 470
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = navigatorImageList
    Multiline = False
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
    ActivePage = tabUserList
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
    object tabUserList: TElTabSheet
      PageControl = pageLeft
      ImageIndex = 5
      TabVisible = True
      Caption = 'Ng'#432#7901'i d'#249'ng'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 401
        Height = 446
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ElPopupButton1: TElPopupButton
          Left = 227
          Top = 419
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
          TabOrder = 4
          Color = 15466238
          ParentColor = False
          Action = acUserListCanCel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 152
          Top = 419
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 14
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&L'#432'u'
          TabOrder = 3
          Color = 15466238
          ParentColor = False
          Action = acUserListPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 2
          Top = 419
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 12
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Th'#234'm'
          TabOrder = 1
          Color = 15466238
          ParentColor = False
          Action = acUserListInsert
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 77
          Top = 419
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 11
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&X'#243'a'
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          Action = acUserListDelete
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
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
          KeyField = 'USERACCID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          OnDblClick = acUserDetailExecute
          DataSource = dsUserList
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGrid1USERACCID: TdxDBGridColumn
            Caption = 'T'#234'n '#273#259'ng nh'#7853'p'
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USERACCID'
            Caption_UTF7 = 'T+AOo-n +AREBAw-ng nh+Hq0-p'
          end
          object dxDBGrid1DISPLAYNAME: TdxDBGridColumn
            Caption = 'T'#234'n ng'#432#7901'i d'#249'ng'
            HeaderAlignment = taCenter
            Width = 198
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISPLAYNAME'
            Caption_UTF7 = 'T+AOo-n ng+AbAe3Q-i d+APk-ng'
          end
          object dxDBGrid1LAST_ACCESS: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'L'#7847'n truy c'#7853'p cu'#7889'i'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LASTACCESS'
            Caption_UTF7 = 'L+Hqc-n truy c+Hq0-p cu+HtE-i'
          end
        end
        object ElPopupButton13: TElPopupButton
          Left = 324
          Top = 419
          Width = 75
          Height = 25
          Cursor = crDefault
          Hint = 
            'C'#7853'p nh'#7853't l'#7841'i danh s'#225'ch Ch'#7913'c n'#259'ng, B'#225'o c'#225'o '#273#7875' ph'#226'n quy'#7873'n cho ng'#432#7901 +
            'i d'#249'ng'
          ImageIndex = 20
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'C'#7853'p &nh'#7853't'
          TabOrder = 5
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acUpdateUserData
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item5: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = dxDBGrid1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            UseIndent = False
            object dxLayoutControl1Item3: TdxLayoutItem
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              Caption = 'ElPopupButton4'
              ShowCaption = False
              Control = ElPopupButton4
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
            object dxLayoutControl1Item1: TdxLayoutItem
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton13'
              ShowCaption = False
              Control = ElPopupButton13
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabGroupList: TElTabSheet
      PageControl = pageLeft
      ImageIndex = 4
      TabVisible = True
      Caption = 'Nh'#243'm ng'#432#7901'i d'#249'ng'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 401
        Height = 446
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ElPopupButton5: TElPopupButton
          Left = 227
          Top = 424
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
          TabOrder = 10
          Color = 15466238
          ParentColor = False
          Action = acGroupCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton6: TElPopupButton
          Left = 152
          Top = 424
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 14
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&L'#432'u'
          TabOrder = 9
          Color = 15466238
          ParentColor = False
          Action = acGroupPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton7: TElPopupButton
          Left = 2
          Top = 424
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 12
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Th'#234'm'
          TabOrder = 7
          Color = 15466238
          ParentColor = False
          Action = acGroupInsert
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton8: TElPopupButton
          Left = 77
          Top = 424
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
          TabOrder = 8
          Color = 15466238
          ParentColor = False
          Action = acGroupDelete
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBGrid2: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'GROUPID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsGroupList
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGrid2GROUPID: TdxDBGridColumn
            Caption = 'M'#227' nh'#243'm'
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GROUPID'
            Caption_UTF7 = 'M+AOM nh+APM-m'
          end
          object dxDBGrid2GROUPNAME: TdxDBGridColumn
            Caption = 'T'#234'n nh'#243'm ng'#432#7901'i d'#249'ng'
            HeaderAlignment = taCenter
            Width = 302
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GROUPNAME'
            Caption_UTF7 = 'T+AOo-n nh+APM-m ng+AbAe3Q-i d+APk-ng'
          end
        end
        object gridUnselectedUser: TdxDBGrid
          Left = 2
          Top = 254
          Width = 180
          Height = 170
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'USERACCOUNTID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 1
          DataSource = dsUnselectedUser
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object gridUnselectedUserDISPLAYNAME: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'Ng'#432#7901'i d'#249'ng'
            DisableEditor = True
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISPLAYNAME'
            Caption_UTF7 = 'Ng+AbAe3Q-i d+APk-ng'
          end
          object gridUnselectedUserUSERACCOUNTID: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'T'#234'n '#273#259'ng nh'#7853'p'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USERACCOUNTID'
            Caption_UTF7 = 'T+AOo-n +AREBAw-ng nh+Hq0-p'
          end
        end
        object ElPopupButton9: TElPopupButton
          Left = 188
          Top = 364
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'X'#243'a to'#224'n b'#7897' th'#224'nh vi'#234'n c'#7911'a nh'#243'm'
          ImageIndex = 0
          UseImageList = True
          Images = navigatorImageList
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 5
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acRemoveAll
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton10: TElPopupButton
          Left = 188
          Top = 289
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'Chuy'#7875'n to'#224'n b'#7897' ng'#432#7901'i d'#249'ng hi'#7879'n t'#7841'i th'#224'nh th'#224'nh vi'#234'n c'#7911'a nh'#243'm'
          ImageIndex = 3
          UseImageList = True
          Images = navigatorImageList
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acAddAll
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton11: TElPopupButton
          Left = 188
          Top = 339
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'X'#243'a th'#224'nh vi'#234'n nh'#243'm '#273'ang '#273#432#7907'c ch'#7885'n ra kh'#7887'i nh'#243'm'
          ImageIndex = 1
          UseImageList = True
          Images = navigatorImageList
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 4
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acRemove
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton12: TElPopupButton
          Left = 188
          Top = 314
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 
            'Chuy'#7875'n nh'#7919'ng ng'#432#7901'i s'#7917' d'#7909'ng '#273'ang '#273#432#7907'c ch'#7885'n th'#224'nh th'#224'nh vi'#234'n c'#7911'a n' +
            'h'#243'm'
          ImageIndex = 2
          UseImageList = True
          Images = navigatorImageList
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 3
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acAdd
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object gridGroupUser: TdxDBGrid
          Left = 213
          Top = 254
          Width = 180
          Height = 170
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'USERACCID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 6
          DataSource = dsGroupUser
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object gridGroupUserDISPLAYNAME: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'Th'#224'nh vi'#234'n nh'#243'm'
            DisableEditor = True
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISPLAYNAME'
            Caption_UTF7 = 'Th+AOA-nh vi+AOo-n nh+APM-m'
          end
        end
        object ElPopupButton14: TElPopupButton
          Left = 324
          Top = 424
          Width = 75
          Height = 25
          Cursor = crDefault
          Hint = 
            'C'#7853'p nh'#7853't l'#7841'i danh s'#225'ch Ch'#7913'c n'#259'ng, B'#225'o c'#225'o '#273#7875' ph'#226'n quy'#7873'n cho nh'#243'm' +
            ' ng'#432#7901'i d'#249'ng'
          ImageIndex = 20
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'C'#7853'p &nh'#7853't'
          TabOrder = 11
          Color = 15466238
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acUpdateGroupData
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
            Control = dxDBGrid2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Group2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avBottom
              Caption = 'dxDBGrid3'
              ShowCaption = False
              Control = gridUnselectedUser
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Group3: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              UseIndent = False
              object dxLayoutControl2Item3: TdxLayoutItem
                Caption = 'ElPopupButton10'
                ShowCaption = False
                Control = ElPopupButton10
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item5: TdxLayoutItem
                Caption = 'ElPopupButton12'
                ShowCaption = False
                Control = ElPopupButton12
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                Caption = 'ElPopupButton11'
                ShowCaption = False
                Control = ElPopupButton11
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                Caption = 'ElPopupButton9'
                ShowCaption = False
                Control = ElPopupButton9
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'dxDBGrid4'
              ShowCaption = False
              Control = gridGroupUser
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            UseIndent = False
            object dxLayoutItem2: TdxLayoutItem
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton7
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem3: TdxLayoutItem
              Caption = 'ElPopupButton4'
              ShowCaption = False
              Control = ElPopupButton8
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem4: TdxLayoutItem
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton6
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem5: TdxLayoutItem
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton5
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton14'
              ShowCaption = False
              Control = ElPopupButton14
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  object pageRight: TElPageControl [3]
    Left = 409
    Top = 0
    Width = 388
    Height = 470
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = navigatorImageList
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
    ActivePage = tabFeatureList
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
    object tabFeatureList: TElTabSheet
      PageControl = pageRight
      ImageIndex = 7
      TabVisible = True
      Caption = 'Ch'#7913'c n'#259'ng'
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 388
        Height = 446
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ckFDel: TdxCheckEdit
          Left = 363
          Top = 421
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          StyleController = dmMain.StyleController
          OnChange = ckFDelChange
        end
        object ckFEdt: TdxCheckEdit
          Left = 320
          Top = 421
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          StyleController = dmMain.StyleController
          OnChange = ckFEdtChange
        end
        object ckFIns: TdxCheckEdit
          Left = 276
          Top = 421
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          StyleController = dmMain.StyleController
          OnChange = ckFInsChange
        end
        object ckFView: TdxCheckEdit
          Left = 225
          Top = 421
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          StyleController = dmMain.StyleController
          OnChange = ckFViewChange
        end
        object treeListFeatureList: TdxDBTreeList
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
          DataSource = dsUserFeatureList
          LookAndFeel = lfFlat
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoUseBitmap, etoUseImageIndexForSelected]
          TreeLineColor = clGrayText
          OnCustomDrawCell = treeListFeatureListCustomDrawCell
          object treeListFeatureListFEATURENAME: TdxDBTreeListMaskColumn
            Caption = 'T'#234'n ch'#7913'c n'#259'ng'
            Color = clInfoBk
            DisableCustomizing = True
            DisableEditor = True
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEATURENAME'
            Caption_UTF7 = 'T+AOo-n ch+Huk-c n+AQM-ng'
          end
          object treeListFeatureListFEATURENAME_ENG: TdxDBTreeListColumn
            Color = clInfoBk
            DisableCustomizing = True
            DisableEditor = True
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEATURENAME_ENG'
          end
          object treeListFeatureListALLOWREAD: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'Xem'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWREAD'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object treeListFeatureListALLOWINSERT: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'Th'#234'm'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWINSERT'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Th+AOo-m'
          end
          object treeListFeatureListALLOWUPDATE: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'S'#7917'a'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWUPDATE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'S+Hu0-a'
          end
          object treeListFeatureListALLOWDELETE: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'X'#243'a'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWDELETE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'X+APM-a'
          end
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl3Item3: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBTreeList1'
            ShowCaption = False
            Control = treeListFeatureList
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl3Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl3Item6: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'Xem'
              Control = ckFView
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item5: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'Th'#234'm'
              Control = ckFIns
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item4: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'S'#7917'a'
              Control = ckFEdt
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item2: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'X'#243'a'
              Control = ckFDel
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabReportList: TElTabSheet
      PageControl = pageRight
      ImageIndex = 6
      TabVisible = True
      Caption = 'B'#225'o c'#225'o'
      Visible = False
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 388
        Height = 446
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ckRDel: TdxCheckEdit
          Left = 363
          Top = 426
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          StyleController = dmMain.StyleController
          OnChange = ckRDelChange
        end
        object ckREdt: TdxCheckEdit
          Left = 320
          Top = 426
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          StyleController = dmMain.StyleController
          OnChange = ckREdtChange
        end
        object ckRIns: TdxCheckEdit
          Left = 276
          Top = 426
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          StyleController = dmMain.StyleController
          OnChange = ckRInsChange
        end
        object ckRView: TdxCheckEdit
          Left = 225
          Top = 426
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          StyleController = dmMain.StyleController
          OnChange = ckRViewChange
        end
        object treelistReportList: TdxDBTreeList
          Left = 2
          Top = 2
          Width = 341
          Height = 392
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'REPORTID'
          ParentField = 'PREPORTID'
          TabOrder = 0
          DataSource = dsUserReportList
          LookAndFeel = lfFlat
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoUseBitmap, etoUseImageIndexForSelected]
          TreeLineColor = clGrayText
          OnCustomDrawCell = treelistReportListCustomDrawCell
          object treelistReportListREPORT_NAME: TdxDBTreeListColumn
            Caption = 'T'#234'n b'#225'o c'#225'o'
            Color = clInfoBk
            DisableCustomizing = True
            DisableEditor = True
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_NAME'
            Caption_UTF7 = 'T+AOo-n b+AOE-o c+AOE-o'
          end
          object treelistReportListREPORT_NAME_ENG: TdxDBTreeListColumn
            Caption = 'T'#234'n b'#225'o c'#225'o'
            Color = clInfoBk
            DisableCustomizing = True
            DisableEditor = True
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_NAME_ENG'
            Caption_UTF7 = 'T+AOo-n b+AOE-o c+AOE-o'
          end
          object dxDBTreeListCheckColumn1: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'Xem'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWREAD'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dxDBTreeListCheckColumn2: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'Th'#234'm'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWINSERT'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Th+AOo-m'
          end
          object dxDBTreeListCheckColumn3: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'S'#7917'a'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWUPDATE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'S+Hu0-a'
          end
          object dxDBTreeListCheckColumn4: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'X'#243'a'
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWDELETE'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'X+APM-a'
          end
        end
        object dxLayoutGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl4Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Control = treelistReportList
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl4Group1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutItem7: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'Xem'
              Control = ckRView
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem8: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'Th'#234'm'
              Control = ckRIns
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem9: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'S'#7917'a'
              Control = ckREdt
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem10: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'X'#243'a'
              Control = ckRDel
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabViewDeptList: TElTabSheet
      PageControl = pageRight
      ImageIndex = 8
      TabVisible = True
      Caption = 'Ph'#226'n quy'#7873'n '#273#417'n v'#7883
      Visible = False
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 388
        Height = 446
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ckDView: TdxCheckEdit
          Left = 363
          Top = 426
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          StyleController = dmMain.StyleController
          OnChange = ckDViewChange
        end
        object treeListViewDeptList: TdxDBTreeList
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'DEPT_NO'
          ParentField = 'P_DEPT_NO'
          TabOrder = 0
          DataSource = dsUserDeptView
          Images = dmMain.imglDeptTree
          LookAndFeel = lfFlat
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoUseBitmap, etoUseImageIndexForSelected]
          TreeLineColor = clGrayText
          OnCustomDrawCell = treeListViewDeptListCustomDrawCell
          object treeListViewDeptListDEPT_NAME: TdxDBTreeListMaskColumn
            Caption = 'T'#234'n '#273#417'n v'#7883' ph'#242'ng ban'
            Color = clInfoBk
            DisableCustomizing = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 315
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss ph+API-ng ban'
          end
          object treeListViewDeptListALLOW_READ: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'Xem'
            HeaderAlignment = taCenter
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWREAD'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object dxLayoutGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem6: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBTreeList1'
            ShowCaption = False
            Control = treeListViewDeptList
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem11: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            Caption = 'Xem'
            Control = ckDView
            ControlOptions.AutoColor = True
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
        Caption = 'Qu'#7843'n l'#253' ph'#226'n quy'#7873'n ng'#432#7901'i d'#249'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 496
    Top = 160
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 256
    Top = 88
    object acAdd: TAction
      Caption = 'acAdd'
      ImageIndex = 2
      OnExecute = acAddExecute
      OnUpdate = acAddUpdate
    end
    object acAddAll: TAction
      Caption = 'acAddAll'
      ImageIndex = 3
      OnExecute = acAddAllExecute
      OnUpdate = acAddAllUpdate
    end
    object acRemove: TAction
      Caption = 'acRemove'
      ImageIndex = 1
      OnExecute = acRemoveExecute
      OnUpdate = acRemoveUpdate
    end
    object acRemoveAll: TAction
      Caption = 'acRemoveAll'
      ImageIndex = 0
      OnExecute = acRemoveAllExecute
      OnUpdate = acRemoveAllUpdate
    end
    object acUserListCanCel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acUserListCanCel'
      ImageIndex = 47
      DataSource = dsUserList
    end
    object acUserListDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acUserListDelete'
      ImageIndex = 11
      DataSource = dsUserList
    end
    object acUserListPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acUserListPost'
      ImageIndex = 14
      DataSource = dsUserList
    end
    object acUserListInsert: TAction
      Category = 'Dataset'
      Caption = 'acUserListInsert'
      ImageIndex = 12
      OnExecute = acUserListInsertExecute
    end
    object acUserDetail: TAction
      Category = 'Dataset'
      Caption = 'acUserDetail'
      OnExecute = acUserDetailExecute
      OnUpdate = acUserDetailUpdate
    end
    object acGroupCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acGroupCancel'
      ImageIndex = 47
      DataSource = dsGroupList
    end
    object acGroupDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acGroupDelete'
      ImageIndex = 45
      DataSource = dsGroupList
    end
    object acGroupInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acGroupInsert'
      ImageIndex = 12
      OnExecute = acGroupInsertExecute
      DataSource = dsGroupList
    end
    object acGroupPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acGroupPost'
      ImageIndex = 14
      DataSource = dsGroupList
    end
    object acCreateUnselectedUser: TAction
      Caption = 'acCreateUnselectedUser'
      OnExecute = acCreateUnselectedUserExecute
    end
    object acUpdateUserData: TAction
      Caption = 'acUpdateUserData'
      ImageIndex = 20
      OnExecute = acUpdateUserDataExecute
      OnUpdate = acUpdateUserDataUpdate
    end
    object acUpdateGroupData: TAction
      Caption = 'acUpdateGroupData'
      ImageIndex = 20
      OnExecute = acUpdateGroupDataExecute
      OnUpdate = acUpdateGroupDataUpdate
    end
  end
  object navigatorImageList: TImageList
    Left = 88
    Top = 56
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00F5F5F500F0F0
      F000EAEAEA00E5E5E500E0E0E000DCDCDC00DEDEDE00E2E2E200E7E7E700EDED
      ED00F3F3F300F8F8F800FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00F5F5F500F0F0
      F000EAEAEA00E5E5E500E0E0E000DCDCDC00DEDEDE00E2E2E200E7E7E700EDED
      ED00F3F3F300F8F8F800FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0D1
      AE0007962B0003B22800069A2A00000000001D933D0001C0270003B22900069D
      2A00B0D9BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001591
      370002C42A0002C22A00069329000000000061AE760003BE290002BF290002C2
      290068B17E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001392
      360007C7330007C933009AC9A800000000000000000059A9710007C4310007C3
      300069B27F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001394
      36000DCE3B000DCD3C000BAC33007EBC900085C096000A982F000CC438000CC4
      380069B27F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081BE92000E9A340099C9A60010B3
      3C0013D0450012CE430012CD420013CD420012CB410011C7400010C43E0011C4
      3D00339950003E9D5800128E3500EEF6F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001FAC460016D74C0024DB57001BD8
      500017D24B0016CF490016CD480015CB480015C9460014C7450014C5440013C2
      420015C3430014C242001DC348003AA156000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D984B006BEB910040AE5F0069CF
      860017DA51001AD14F0019CE4D0019CC4C0018C94B0018C74A0017C5480019C4
      49004AAD650069C983006FD78C0066B27C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4F1E70000000000429E
      5A001AE1590022E25F0021E15E001FD557001CCB51001BC64D001AC34B0025C7
      540071B5830000000000E5F1E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000439F
      5B0020E7610028E7670028E7670028E7670028E8680028E9690028E9680034EF
      73006CB27F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000449F
      5C0039F17B003FF17F0037EF79002CED71002AED70003FF17E003EF17E004FF8
      8B006AB17E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9E2
      CF00459F5D0047A160005BAB710048F588009CD8AE0047A05F0046A05E00429E
      5C00EFF6F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003C9B55004CFA9000A6E0B900CAE3D000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098E3B40034FD860031FD84008CD3A300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005BAB710085CF9F0085D4A1003D9D5700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0B9B000C9ACA200C8ACA100C8ACA100CAAEA400FEFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCC6C600AE6C6900A4545300AB5E5E00A7575600A7585700CA979700DFDB
      DB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B05C2F00E79B5D00FF9D4000FF881D00FD7C0C00E77F2400C87C4700B25B
      310000000000000000000000000000000000000000000000000000000000A958
      5900E499A200FF9EAE00FF869800FF7B8F00FD738500EA708200DE7F8E00C47E
      8300A74F4F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE00F4F4
      F400E2E2E200DADADA00C9C9C900C1C1C100C1C1C100C6C6C600D5D5D500DDDD
      DD00F0F0F000FCFCFC000000000000000000000000000000000000000000EDE8
      E700EC964900FF9E4000FF922D00FF851900FF790400EC6D0000D1600000AC4C
      1000000000000000000000000000000000000000000000000000ECDADA00E993
      A000FF98AB00FF91A400FF899B00FF819300DB626D00F16F8000DC667700C75C
      6D00AB565A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000090DAFF006CCEFF006CCEFF0048C2FF0000AA
      F00000AAF00000AAF00000000000000000000000000000000000F2F2F200DBDB
      DB00CDCDCD00D7D7D700DBDBDB00DEDEDE00DEDEDE00DBDBDB00E0E0E000C7C7
      C700D6D6D600ECECEC00FEFEFE00000000000000000000000000F9F9F900EAEA
      EE00BA5A1B00FFA34900FF973500FF8A2100FF7E0D00F5720000DC660000A038
      040000000000000000000000000000000000000000000000000000000000BB5E
      6500FF9DAF00FF94A700FD8C9D00B44B5000BD787A00A4424600E46A7A00CF61
      7100993939000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A6DAF90090DAFF006CCEFF006CCEFF0048C2
      FF0000AAF00000AAF00000000000000000000000000000000000000000000000
      00000000000000000000CDCDCD00C4C4C400C5C5C500D1D1D100000000000000
      0000000000000000000000000000000000006363C500515AC900526AE5004561
      EC007E373700FFA95200FF9C3D00CD611100BB4B0200FB740000E36800007276
      4100548754003D6C3D006C8F6C00FAFAFA000000000000000000000000009337
      3B00FFA1B300F890A200DB6E7B00CD596300FFFFFF00B05C6000A4424700D965
      76008A4E40000000000000000000000000000000000000000000000000000000
      000072AC5E000080000000000000BBE3FB009292920092929200929292009292
      920000AAF00000AAF000000000000000000000000000F3F3F300B0B0B000B4B4
      B400B4B4B400B5B5B5008C8C8C0063636300585858006C6C6C00B5B5B500B5B5
      B500B4B4B400B1B1B100EEEEEE0000000000325DEB001D57FF00154CFF000D42
      FF000036FF00B8561400B6521200C7E0EF00D1E7F200A0401100A0350000098B
      0C000181010000800000108B1000154B15000000000000000000000000003733
      9800E4879500FA96A800DC727E00E4D0CF00FFFFFF00E0C4C400C15A6B009D3C
      3D00057502000000000000000000000000000000000000000000000000000000
      00007DB26B0072AC5E0000000000C6E7FB00BBE3FB00A6DAF90090DAFF006CCE
      FF0048C2FF0000AAF000000000000000000000000000BEBEBE00E4E4E400E9E9
      E900EBEBEB00EEEEEE00E7E7E700E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300C6C6C600000000001129BE002763FF001F58FF00164D
      FF000D41FF001848A3003889BC0068AEE20067ACE1001674AC00208B33001691
      18000B890C0000800000008200003B6B3E00000000000000000000000000094D
      BB0096373600E78B9A00B8585600EFE2D600EEE5DB00FFF7E900BF5460008441
      460000000000000000000000000000000000000000004885FF000055F0000000
      000098BA8C009292920000000000D6EEFC009292920092929200929292009292
      92006CCEFF0048C2FF00000000000000000000000000C1C1C100ECEDED00F0F0
      F100F1F2F200F2F3F300F3F5F500EDEEEE00EBECEC00EBECEC00ECECED00ECEC
      ED00ECECED00ECEDED00C8C8C800000000002A2AAB003170FF002863FF001A4E
      F2000F42E400308CCE002D94E4002E94E4002E94E4003196E5000A69AA00209B
      2200159216000A880B00007C0100C5C9C5000000000000000000000000000166
      B0000F86CD003E5070001570A4004590C0003A88B8000061990077445400057F
      BE0013891700000000000000000000000000000000006C9DFF004885FF000000
      0000B9D6AF0098BA8C0000000000DEF1FD00D6EEFC00C6E7FB00BBE3FB00A6DA
      F9006CCEFF006CCEFF00000000000000000000000000C3C4C400AE6E4800C56A
      2600D17B3A00DD8D5000E99E6500F6AC7A00FCB78600F3AA7600E79A6100DC89
      4C00D0783600AA673F00CBCCCC0000000000F1F1F4001D3FCF001F48DD00C0BD
      E5003C86AE003EA4F5003DA3F4003DA3F4003DA3F4003DA3F4003FA4F700779F
      A10039623900138C1300005810000000000000000000000000003569D1000086
      D4000068A3004C9BD400409AE1002B8FDD002F93DD00489FE3002179B00016AC
      D3001C63780000000000000000000000000000000000B4CDFF0090B5FF000000
      0000D3E1E700C0DCC00000000000ECF7FE00E9F6FE00DEF1FD00D6EEFC00C6E7
      FB00A6DAF90090DAFF00000000000000000000000000C5C5C500B0734C00C56C
      2900D07C3C00DC8C5100E79A6300EEA77200F1AB7800EDA46F00E4985F00DA89
      4D00CF793900AB6B4300CDCECE0000000000000000004A60B8001772A4004591
      C200005FAB000068B300288CDA0048AEFE0049AFFF0049AFFF004BB2FF001B52
      7C001F426900054E2300D8DBD8000000000000000000000000003D88B900008E
      DA001A79B8003298E9003399E9003399E9003399E9003299E9003399EA000261
      9800065CA30000000000000000000000000000000000BBE3FB00B4CDFF000000
      0000E8F1E4009292920000000000F3FAFE00ECF7FE00E9F6FE00DEF1FD00D6EE
      FC000000000000000000000000000000000000000000C8C8C800AF724B00C269
      2600CB763400D6844500DE905500E4986000E79B6400E4975F00DD8E5200D582
      4200CA743100AA684000D0D1D10000000000DBE4E9002985C5002F94E2002A91
      E1000463AD000597FF0002A2E400066FB7003399E40047ADF700288BD1001D64
      A100386B9F003F6894009EA6AF000000000000000000000000004593CE00006F
      AE003A9FEF003EA4F5003EA4F5003EA4F5003EA4F5003EA4F5003EA4F5002184
      C8000B62A90000000000000000000000000000000000CEEBFC00BBE3FB000000
      0000E9F6FE00E8F1E40000000000F3FAFE00F3FAFE00ECF7FE00E9F6FE00DEF1
      FD00000000000B69AA00000000000000000000000000CACBCB00AC6E4600BD64
      2000C9753400D07C3D00D5824300DA894C00DB8C4F00DA884C00D5824200CC77
      3500C46A2700A7643900D2D2D200000000002678A8003AA0F1003AA0F0003AA0
      F0002C91E0000188DD0002B9FF000DDBF20017F3FA001CB5E1001380C4002A6A
      AA002A6BAB00296BAB0017436F00000000000000000000000000429ADF000061
      A8000C6DB8002C91E00045ABFD0047ADFF0047ADFF0047ADFF0047ADFF003094
      DD001767AB0000000000000000000000000000000000DEF1FD00CEEBFC000000
      0000F0FBFF00E9F6FE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00AB6D4600B65B
      1600C06A2800CA783900D1844800D5894F00D3854800CF7B3C00C9732F00C368
      2400B95D1700A25D3100D3D4D400000000000366A00047ADFE0047ADFE0047AD
      FE0047ADFE001D78BD000163AC00009BD4000077C400065DA4002C74BD002C75
      BE002C75BE002C75BE002462A000EEEFEF000000000000000000000000000060
      A9000599FF000096E1000068B0003096E2004CB2FF004CB2FF004CB2FF001D80
      BF00276AAD0000000000000000000000000000000000E9F6FE00DEF1FD000000
      0000F0FBFF00F0FBFF00E9F6FE00E8F1E400D3E1E7000000000024640E000000
      00000000000000000000000000000000000000000000CECECE00AC6E4600B358
      1300B75F1A00BF6B2900C8763600CB7D4000CE834700CF854A00CE864C00CB85
      4B00C9834900B07A5B00D5D6D60000000000196998004FB6FF004BB1FD003EA4
      F000054E7C000152860000609700A6B7C200183759002C639D002E78C2002D7F
      CF002D7FD0002E7CCB001E558C0000000000000000000000000000000000126F
      B5000490F5000597FF0004AEE4000593CA00086AB5001C7FCA001173BF000466
      AF00256CB30000000000000000000000000000000000F0FBFF00E9F6FE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2D2D200AE6E4500B759
      1100B95D1600BC611B00BF692400C4702D00C6763400C8793800C87A3900C87C
      3E00CA824400B17A5900D9D9D90000000000577F970005518200095685001875
      B1000F659F0002649C00004A7700FDFDFD007E91A4002A649E00316DA9003478
      BE00336FAB002D6CAA0036547500000000000000000000000000000000000000
      00000060A90003B6FE0001C1FF000EE2F30017F3F8001ED1EE0026ADE4000C68
      B3000000000000000000000000000000000000000000F0FBFF00F0FBFF00E9F6
      FE00DEF1FD00CEEBFC0000000000BF0000004D00000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D400E1D7D700D6CA
      CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9
      CA00D6C9CA00DDD2D200D9D9D9000000000000000000577E96000D6095000F6F
      A9001473AF00034A7600CED8DE0000000000000000005E748D0024507F003268
      A000285B8E003756760000000000000000000000000000000000000000000000
      000000000000005FA9000094CB0000AFE400018DD900005EAA00104D83000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D2D2D200F5F5F500000000000000000000000000000000000000
      0000EFF3EF00C8D7C300ABC1A000A0B89400A1B99500B1C5A700D4E0CF00F7F9
      F700000000000000000000000000000000000000000000000000000000000000
      0000F4F7F400D8E3D400C3D2BB00BACCB100BBCDB200C8D7C100E3EBE000FAFB
      FA00000000000000000000000000000000000000000000000000000000000000
      0000E8EDE700B5C9AE0092AF840085A4760087A678009AB48D00C4D5BD00F3F6
      F300000000000000000000000000000000000000000000000000000000000000
      0000FAFBFA00EBF1E900DFE7DB00D9E3D400D9E3D400E1E9DD00EFF3ED00FCFD
      FC00000000000000000000000000000000000000000000000000FBFBFB00C0D2
      BA006E975B000D871900129C2E0023A13C00209F39000D96270019831C0089A7
      7900D5E0D0000000000000000000000000000000000000000000FCFCFC00D2DF
      CD008CAD7E00168E2300129B2E0020A039001B9D34000B932200338C3100AABF
      9E00E4EBE1000000000000000000000000000000000000000000F7F8F700AAC1
      A0004B83380008911F0020A13A002EA3440028A03E00139A2E000D8417006E93
      5A00C5D5BF00FEFEFE0000000000000000000000000000000000FEFEFE00E9EF
      E600BED0B60045A44F00149C300024A13C00219F390014982C0060AA6200CCD9
      C500EFF3ED0000000000000000000000000000000000F8F9F800AFC4A5001088
      1C0024A7420016992F00008D1900008C1700008C1700008C190017962E00179C
      330034852E00C4D3BD00FEFEFE000000000000000000FAFBFA00C5D4BE001994
      2A0028A7440014972C00008D1900008C1700008C1700038E1C001F9A3500109B
      2D005B985200D8E2D300000000000000000000000000F3F5F30095B087000796
      210029A6440009922300008D1800008D1800008D1800008C180013952A00199C
      3400207E1D00B3C6AA00FDFDFD000000000000000000FDFDFD00E3EADF0054AA
      5D0025A7420014972D00008D1800008C1700008C1700008C190018972F00169C
      320087B88400E9EFE600000000000000000000000000BDCEB3000795220018A2
      380000941E000097230000982300009823000097230000962200009420000090
      1B00159A310026872800D8E2D40000000000FEFEFE00CEDAC70007A02B00139E
      320000941F00009722000097230000972300009723000095210000932000008F
      1B00149B30004B944600E6EDE40000000000FDFDFD00A7BE9A0004A52E000C9B
      2B00009621000097230000982400009824000098230000962100009421000090
      1B00159A310017841C00CBD8C5000000000000000000E8EEE50033A8490016A1
      370000941E000097230000982300009824000097230000962200009420000090
      1B00159A310077B37700F0F4EF0000000000E5EBE400248827000EA53600009B
      2600009E2800009C210000A12A0000A12B0000A12B00009F2A00009C2400009B
      2600009722000B9B2B0079A26A00F7F9F700EBF0EA00319A3D000AA02F00009C
      2700009E290000A02A0000A12B0000A12B0000A02B00009A1E00009D2700009A
      250000952000089D2B00A3BD9700FAFBFA00D9E2D7000E922300079E2C00009D
      2800009F2A0002A12C0000A0280000A22C0000A12B0000A02A00009D2800009A
      2600009722000A9B2B005D904C00F4F7F400F7F9F70087BB85000DA43500009C
      2600009E280000A0290000A12B0000A12C0000A12B00009E260000991E00009B
      2600009621000A9B2C00C3D5BC00FCFDFC00BBCDB40003B43A0000A02A0000A5
      2F000AAB3800FFFFFF001DB44A0000AB340000AA330000A42500D3F0DB00009E
      2200009F2900009B250001A02900DDE6DA00CBD9C50006B13B0000A12B0000A5
      2F0000A8310000A9320000AA330000A72B0046BF6700FFFFFF0000A2270000A2
      2C00009E2900009B2600089B2800EAEFE800A1BA960006B0390000A22C0000A5
      2F0000A72D00EAF8EE00DBF3E20000A9300000AA320000A9320000A7300000A4
      2D00009F2A00009B260002A12A00D3DECF00EAF0E80004B43B0000A12A0000A5
      2F0012AE3F00ADE3BD0000A5270000AB340000AA330071CF8C00FFFFFF00009E
      2000009F2900009B260015A53700F3F6F2004895450002AB340000AB320000AD
      36000BB44100FFFFFF001EBD520000B1350058CC7B00FFFFFF00FFFFFF0000A8
      2B0000A9310000A42D0000A02A00BBCDB3005CA75E0001A7310000AB330000AD
      350000B0390000B2380011B74400F3FCF600FFFFFF00FFFFFF0000AB2F0000AB
      340000A8300000A32C0000A32B00D5E0D000278F2D0001A7310000AB330000AF
      370000B03500E1F6E800FFFFFF00FFFFFF009BE1B10000AD2D0000B0380000AC
      350000A9310000A42D0000A12A00A7BF9D00B8D1B20002AA340000AB330000AE
      370012B74700FFFFFF00FFFFFF0035C2610000B2370070D49000FFFFFF0000A7
      290000A9310000A42D0000A22B00E6ECE300129C2C0000AD350000B33A0000B7
      3E000BBC4900FFFFFF001DC55800EEFBF300FFFFFF00FFFFFF00FFFFFF0000B1
      320000B1380000AC340001A52F006EA4670016B1400000AD350000B33B0000B7
      3E0000B63600C0EED000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000B5370000B3
      3B0000B0370000AB330001A42E009CBE940008AE360000AD350000B43B0000B7
      3E0000B93E00E1F7E900FFFFFF00FFFFFF00FFFFFF00FFFFFF0054CE7B0000B2
      330000B1390000AC340002A5300054944B006FBC790000AD350000B33B0000B7
      3D0012BE4D00FFFFFF00FFFFFF00FFFFFF00D3F3DF0069D79000FFFFFF0000B1
      310000B1380000AC340003A63000C0D7BC0010AB390018BB4E0000BB410000BF
      44000BC55000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000B9
      3A0000B93F0002B33B0019B4480050A0510013BE4A0013BB4B0000BA40006AD9
      9100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000BE3F0000BC
      420000B73E0002B23A0018B346007FB37A0011BE490016BC4E0000BB410000C0
      460000C24600E1F8EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000B5350004B43D0019B448003B90380056C06F0018BC4F0000BB410000BF
      450012C75500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000BA
      390000B83F0004B43D0019B44800AECFAB001EA93D001EC4590021CA600012CB
      59000ACD5600FFFFFF0031D97400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000C3
      410016C5560020C3590021BD540072AA6C0027C358001EC459001FCB5F0000C6
      480090E9B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000C6460000C3
      480015C454001FC2570023BC5400A0C39A001EC04F001EC55A0021CB60000ECB
      560000CA4C00E1F9EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2F6E00000C3
      440018C6570020C2580023BD5400579A510078C384001EC4590021CB600014CC
      5B0011CF5C00FFFFFF00FFFFFF00FFFFFF00DBF8E7006BE29A00FFFFFF0000C2
      41001AC6580020C3590024BD5500C7DCC4004AA6530036D4730028D36A0028D7
      6E0033DD7800FFFFFF003AE281000FDB630093EFB900FFFFFF00FFFFFF001ED4
      660028D1680028CB630041CD7200DBE4D8005BB86B0026CD650027D36A0027D7
      6D0028DB71001ADA6A00DBFAE800FFFFFF00FFFFFF00FFFFFF001DD6680028D4
      6C0027CF660027CA620041CF7300EDF1EB002D9F3D0028CE670028D36B0028D8
      6E0026DB7100E6FBEF00FFFFFF00FFFFFF00FEFFFE003EDF800024D86D0029D5
      6C0027D0680028CA630042CF7400CFDCCB00C7DCC40038D5740029D36B0029D7
      6F0039DE7C00FFFFFF00FFFFFF0057E794001ADC6A0084EBAF00FFFFFF001DD3
      650029D1680029CB630045D07600F6F8F5000000000057F098002CD972002FDE
      790038E48200FFFFFF004DEB920037E8840032E781002BE47B00F2FDF70025DB
      70002FD772002AD06A003FD6750000000000E7EEE5005DE997002EDA74002FDF
      78002FE37B002FE67E002FE77F0049EA8F00FDFFFE00FFFFFF0028DF74002FDB
      75002FD671002ACF690035CE6A0000000000D9E4D60061ED9C002EDA740030E0
      79002CE37A00E7FCF000FFFFFF007FF0B00027E57A002FE47D002FE17A0030DC
      760030D772002BD06A0038D27000000000000000000056F198002CD9720030E0
      79003EE58600C7F9DD0029E67B0039E8850033E882008CF0B800FFFFFF0023DA
      6F0030D773002CD16B0042D0720000000000FCFCFC0027B44D0071EDA60035E6
      810045E98C004CEB910061EC9E0065EDA0005EEC9C004FEB930035E7830039E3
      810034DD79007DE7A6009CC1970000000000FDFDFD0039D16E0049E3890037E6
      830045E98C0055EC97005FEC9D005FEC9D004EEA920093F3BD0033E6810038E2
      7F0033DC78007CE6A500C1D7BD0000000000FBFBFB001FBF510055E5920037E6
      830047E98D009BF3C10056EB970063ED9F005BEC9A004CEA910039E8850038E3
      800033DC78007DE7A70083B17D0000000000FEFEFE009FD1A50075EFAA0036E6
      820047E98E0058EC990065EDA00067EDA1005FEC9D004DEA910031E7800039E3
      810033DD78007EE9A800E4EDE2000000000000000000000000002DDD710091F4
      BD0066EDA1007FF0B0008CF2B8008FF2BA0086F1B50075EFAA005EEC9C0040E8
      890091EFB80028B44C00FCFCFC000000000000000000000000005DFFA7006DED
      A50068EDA2007DF0AF0089F2B6008AF2B60080F0B1006EEFA60057EC98003AE7
      85008EEEB50047BC6400FDFDFD0000000000000000000000000049F796007CEF
      AE0069EEA30080F0B1008CF2B8008DF2B90084F1B30072EFA8005AEC9A003DE8
      870091EFB8001CAE4100FBFBFB0000000000000000000000000051D8810097F5
      C10069EEA30081F0B2008FF2BA0091F2BB0088F1B60076EFAB005DEC9C0043E9
      8B0095F1BB0094D2A000FEFEFE000000000000000000000000000000000036D4
      6D00CBFFE600BDF7D700B7F6D300B7F6D200ACF5CC00A0F3C400A8F5C90094FC
      C40036B3540000000000000000000000000000000000000000000000000060F6
      A000C8FBDF00ADF5CC00AFF5CD00AFF5CE00A3F4C60093F2BC009CF3C2009AFA
      C5005AC0720000000000000000000000000000000000000000000000000045E6
      8500CEFDE400B5F6D100B3F6D000B3F6D000A7F4C9009AF3C000A4F4C70095FC
      C30024AC440000000000000000000000000000000000000000000000000077D5
      9300C8FFE600C3F8DA00BCF7D500BAF6D400AFF6CE00A6F4C800AEF6CD0086FD
      BC00AED9B4000000000000000000000000000000000000000000000000000000
      000099CFA10056E18A00AAFFD600C1FFE500ADFFDA006FFFB4002DD16600EEF3
      ED00000000000000000000000000000000000000000000000000000000000000
      0000A4D7AD0087FBBB00D4FFEE00D7FFEB00C2FFE30085FFC40041DD7C00F1F5
      F000000000000000000000000000000000000000000000000000000000000000
      000079BC800069EEA000C3FFE600CEFFEB00B7FFDD0078FFBB0028D26500E8EF
      E700FEFEFE000000000000000000000000000000000000000000000000000000
      0000F7FAF70079DD9A0099FFC900B3FFDE009DFFD10061FCA60086D89D000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080010000000000008001000000000000
      E107000000000000E107000000000000E187000000000000E007000000000000
      000000000000000000000000000000000000000000000000A005000000000000
      E007000000000000E007000000000000E007000000000000FC3F000000000000
      FC3F000000000000FC3F000000000000F81FF00FFFFFFFFFF00FE007FC014003
      E00FC007FC01C001C00FE007E001FC3F0000E007E00180010000E00700018001
      0000E00F000180010000E007000180010001C007000180018001C00700018001
      0001C007000180010001C007000380010000E007000F80010001E007001F8001
      0001F00F007F80018183F81F00FF8001F00FF00FF00FF00FC007C007C003C007
      8001800380018003800100010001800100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080010001000180010001000100010001C001C001C001C001
      E007E007E007E007F00FF00FF007F01F00000000000000000000000000000000
      000000000000}
  end
  object qryUserList: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_USERACCOUNT'
      'WHERE'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    EditSQL.Strings = (
      'UPDATE SYS_USERACCOUNT SET'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USERACCID = :USERACCID, /*PK*/'
      '   DISPLAYNAME = :DISPLAYNAME,'
      '   USERACCPASS = :USERACCPASS,'
      '   LASTACCESS = :LASTACCESS'
      'WHERE'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_USERACCOUNT('
      '   SUBSYSTEMID, /*PK*/'
      '   USERACCID, /*PK*/'
      '   DISPLAYNAME,'
      '   USERACCPASS,'
      '   LASTACCESS)'
      'VALUES ('
      '   :SUBSYSTEMID,'
      '   :USERACCID,'
      '   :DISPLAYNAME,'
      '   :USERACCPASS,'
      '   :LASTACCESS)')
    KeyLinks.Strings = (
      'USERACCID'
      'SUBSYSTEMID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryUserListNewRecord
    SQL.Strings = (
      'SELECT USERACCID'
      '     , DISPLAYNAME'
      '     , USERACCPASS'
      '     , LASTACCESS'
      '     , SUBSYSTEMID'
      'FROM SYS_USERACCOUNT'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 41
    Top = 104
    object qryUserListUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryUserListDISPLAYNAME: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 126
    end
    object qryUserListUSERACCPASS: TWideStringField
      FieldName = 'USERACCPASS'
      Size = 63
    end
    object qryUserListLASTACCESS: TDateTimeField
      FieldName = 'LASTACCESS'
    end
    object qryUserListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
  end
  object qryGroupList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_GROUP_LIST'
      'WHERE'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_GROUP_LIST SET'
      '   GROUPID = :GROUPID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   GROUPNAME = :GROUPNAME'
      'WHERE'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_GROUP_LIST('
      '   GROUPID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   GROUPNAME)'
      'VALUES ('
      '   :GROUPID,'
      '   :SUBSYSTEMID,'
      '   :GROUPNAME)')
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryGroupListAfterScroll
    AfterPost = qryGroupListAfterPost
    OnNewRecord = qryGroupListNewRecord
    SQL.Strings = (
      'SELECT SUBSYSTEMID'
      '     , GROUPID'
      '     , GROUPNAME'
      'FROM SYS_GROUP_LIST'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 72
    Top = 104
    object qryGroupListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryGroupListGROUPID: TWideStringField
      FieldName = 'GROUPID'
      Required = True
      Size = 15
    end
    object qryGroupListGROUPNAME: TWideStringField
      FieldName = 'GROUPNAME'
      Size = 126
    end
  end
  object qryUserFeatureList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USERACCID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_USERFEATURE'
      'WHERE'
      '   FEATUREID = :OLD_FEATUREID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    EditSQL.Strings = (
      'UPDATE SYS_USERFEATURE SET'
      '   FEATUREID = :FEATUREID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USERACCID = :USERACCID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWUPDATE = :ALLOWUPDATE,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   FEATUREID = :OLD_FEATUREID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_USERFEATURE('
      '   FEATUREID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   USERACCID, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWUPDATE,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :FEATUREID,'
      '   :SUBSYSTEMID,'
      '   :USERACCID,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWUPDATE,'
      '   :ALLOWDELETE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsUserList
    SQL.Strings = (
      'SELECT SYS_USERFEATURE.USERACCID'
      '     , SYS_USERFEATURE.SUBSYSTEMID'
      '     , SYS_USERFEATURE.FEATUREID'
      '     , SYS_USERFEATURE.ALLOWREAD'
      '     , SYS_USERFEATURE.ALLOWINSERT'
      '     , SYS_USERFEATURE.ALLOWUPDATE'
      '     , SYS_USERFEATURE.ALLOWDELETE'
      '     , SYS_FEATURE_LIST.FEATURENAME'
      '     , SYS_FEATURE_LIST.FEATURENAME_ENG'
      '     , SYS_FEATURE_LIST.P_FEATUREID'
      'FROM SYS_USERFEATURE'
      'JOIN SYS_FEATURE_LIST ON'
      '     SYS_USERFEATURE.FEATUREID=SYS_FEATURE_LIST.FEATUREID AND'
      '     SYS_USERFEATURE.SUBSYSTEMID=SYS_FEATURE_LIST.SUBSYSTEMID'
      'where SYS_USERFEATURE.USERACCID=:USERACCID and'
      '      SYS_USERFEATURE.SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 568
    Top = 88
    object qryUserFeatureListUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryUserFeatureListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryUserFeatureListFEATUREID: TSmallintField
      FieldName = 'FEATUREID'
      Required = True
    end
    object qryUserFeatureListALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryUserFeatureListALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
    end
    object qryUserFeatureListALLOWUPDATE: TSmallintField
      FieldName = 'ALLOWUPDATE'
    end
    object qryUserFeatureListALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
    end
    object qryUserFeatureListFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
    object qryUserFeatureListP_FEATUREID: TIntegerField
      FieldName = 'P_FEATUREID'
    end
    object qryUserFeatureListFEATURENAME_ENG: TWideStringField
      FieldName = 'FEATURENAME_ENG'
      Size = 126
    end
  end
  object qryUserReportList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USERACCID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_USERREPORT'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    EditSQL.Strings = (
      'UPDATE SYS_USERREPORT SET'
      '   REPORTID = :REPORTID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USERACCID = :USERACCID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWUPDATE = :ALLOWUPDATE,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_USERREPORT('
      '   REPORTID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   USERACCID, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWUPDATE,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :REPORTID,'
      '   :SUBSYSTEMID,'
      '   :USERACCID,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWUPDATE,'
      '   :ALLOWDELETE)')
    KeyLinks.Strings = (
      'SYS_USERREPORT.USERACCID'
      'SYS_USERREPORT.SUBSYSTEMID'
      'SYS_USERREPORT.REPORTID')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsUserList
    SQL.Strings = (
      'SELECT SYS_USERREPORT.USERACCID'
      '     , SYS_USERREPORT.SUBSYSTEMID'
      '     , SYS_USERREPORT.REPORTID'
      '     , SYS_USERREPORT.ALLOWREAD'
      '     , SYS_USERREPORT.ALLOWINSERT'
      '     , SYS_USERREPORT.ALLOWUPDATE'
      '     , SYS_USERREPORT.ALLOWDELETE'
      '     , SYS_REPORT_LIST.REPORT_NAME'
      '     , SYS_REPORT_LIST.REPORT_NAME_ENG'
      '     , SYS_REPORT_LIST.PREPORTID'
      'FROM SYS_USERREPORT'
      'JOIN SYS_REPORT_LIST on '
      '     SYS_USERREPORT.SUBSYSTEMID=SYS_REPORT_LIST.SUBSYSTEMID and'
      '     SYS_USERREPORT.REPORTID=SYS_REPORT_LIST.REPORTID'
      'where SYS_USERREPORT.USERACCID=:USERACCID and'
      '      SYS_USERREPORT.SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 608
    Top = 88
    object qryUserReportListUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryUserReportListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryUserReportListREPORTID: TSmallintField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryUserReportListALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryUserReportListALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
    end
    object qryUserReportListALLOWUPDATE: TSmallintField
      FieldName = 'ALLOWUPDATE'
    end
    object qryUserReportListALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
    end
    object qryUserReportListREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 126
    end
    object qryUserReportListREPORT_NAME_ENG: TWideStringField
      FieldName = 'REPORT_NAME_ENG'
      Size = 126
    end
    object qryUserReportListPREPORTID: TSmallintField
      FieldName = 'PREPORTID'
    end
  end
  object dsUserList: TDataSource
    DataSet = qryUserList
    Left = 41
    Top = 135
  end
  object dsUserReportList: TDataSource
    DataSet = qryUserReportList
    Left = 608
    Top = 136
  end
  object dsUserFeatureList: TDataSource
    DataSet = qryUserFeatureList
    Left = 568
    Top = 136
  end
  object dsGroupList: TDataSource
    DataSet = qryGroupList
    Left = 72
    Top = 135
  end
  object qryGroupUser: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GROUPID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_GROUP_CONTAINER'
      'WHERE'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    EditSQL.Strings = (
      'UPDATE SYS_GROUP_CONTAINER SET'
      '   GROUPID = :GROUPID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USERACCID = :USERACCID  /*PK*/'
      'WHERE'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_GROUP_CONTAINER('
      '   GROUPID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   USERACCID) /*PK*/'
      'VALUES ('
      '   :GROUPID,'
      '   :SUBSYSTEMID,'
      '   :USERACCID)')
    KeyLinks.Strings = (
      'SYS_GROUP_CONTAINER.SUBSYSTEMID'
      'SYS_GROUP_CONTAINER.GROUPID'
      'SYS_GROUP_CONTAINER.USERACCID')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryGroupUserBeforeDelete
    AfterOpen = qryGroupUserAfterOpen
    DataSource = dsGroupList
    SQL.Strings = (
      'SELECT SYS_GROUP_CONTAINER.SUBSYSTEMID'
      '     , SYS_GROUP_CONTAINER.GROUPID'
      '     , SYS_GROUP_CONTAINER.USERACCID'
      '     , SYS_USERACCOUNT.DISPLAYNAME'
      'FROM SYS_GROUP_CONTAINER'
      'JOIN SYS_USERACCOUNT on '
      '     SYS_GROUP_CONTAINER.USERACCID=SYS_USERACCOUNT.USERACCID'
      'where SYS_GROUP_CONTAINER.SUBSYSTEMID=:SUBSYSTEMID and'
      '      SYS_GROUP_CONTAINER.GROUPID=:GROUPID')
    FieldOptions = []
    Left = 104
    Top = 104
    object qryGroupUserSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryGroupUserGROUPID: TWideStringField
      FieldName = 'GROUPID'
      Required = True
      Size = 15
    end
    object qryGroupUserUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryGroupUserDISPLAYNAME: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 126
    end
  end
  object dsGroupUser: TDataSource
    DataSet = qryGroupUser
    Left = 104
    Top = 135
  end
  object memUnselectedUser: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 96
    Top = 208
    object memUnselectedUserUSERACCOUNTID: TWideStringField
      FieldName = 'USERACCOUNTID'
    end
    object memUnselectedUserDISPLAYNAME: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 60
    end
  end
  object dsUnselectedUser: TDataSource
    DataSet = memUnselectedUser
    Left = 96
    Top = 240
  end
  object qryGroupFeatureList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'GROUPID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_GROUPFEATURE'
      'WHERE'
      '   FEATUREID = :OLD_FEATUREID AND'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_GROUPFEATURE SET'
      '   FEATUREID = :FEATUREID, /*PK*/'
      '   GROUPID = :GROUPID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWUPDATE = :ALLOWUPDATE,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   FEATUREID = :OLD_FEATUREID AND'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_GROUPFEATURE('
      '   FEATUREID, /*PK*/'
      '   GROUPID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWUPDATE,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :FEATUREID,'
      '   :GROUPID,'
      '   :SUBSYSTEMID,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWUPDATE,'
      '   :ALLOWDELETE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroupList
    SQL.Strings = (
      'SELECT SYS_GROUPFEATURE.GROUPID'
      '     , SYS_GROUPFEATURE.SUBSYSTEMID'
      '     , SYS_GROUPFEATURE.FEATUREID'
      '     , SYS_GROUPFEATURE.ALLOWREAD'
      '     , SYS_GROUPFEATURE.ALLOWINSERT'
      '     , SYS_GROUPFEATURE.ALLOWUPDATE'
      '     , SYS_GROUPFEATURE.ALLOWDELETE'
      '     , SYS_FEATURE_LIST.FEATURENAME'
      '     , SYS_FEATURE_LIST.FEATURENAME_ENG '
      '     , SYS_FEATURE_LIST.P_FEATUREID'
      'FROM SYS_GROUPFEATURE'
      'JOIN SYS_FEATURE_LIST ON'
      '     SYS_GROUPFEATURE.FEATUREID=SYS_FEATURE_LIST.FEATUREID AND'
      '     SYS_GROUPFEATURE.SUBSYSTEMID=SYS_FEATURE_LIST.SUBSYSTEMID'
      'where SYS_GROUPFEATURE.GROUPID=:GROUPID and'
      '      SYS_GROUPFEATURE.SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 568
    Top = 176
    object qryGroupFeatureListGROUPID: TWideStringField
      FieldName = 'GROUPID'
      Required = True
      Size = 15
    end
    object qryGroupFeatureListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryGroupFeatureListFEATUREID: TSmallintField
      FieldName = 'FEATUREID'
      Required = True
    end
    object qryGroupFeatureListALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryGroupFeatureListALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
    end
    object qryGroupFeatureListALLOWUPDATE: TSmallintField
      FieldName = 'ALLOWUPDATE'
    end
    object qryGroupFeatureListALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
    end
    object qryGroupFeatureListFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
    object qryGroupFeatureListP_FEATUREID: TIntegerField
      FieldName = 'P_FEATUREID'
    end
    object qryGroupFeatureListFEATURENAME_ENG: TWideStringField
      FieldName = 'FEATURENAME_ENG'
      Size = 126
    end
  end
  object dsGroupFeatureList: TDataSource
    DataSet = qryGroupFeatureList
    Left = 568
    Top = 224
  end
  object qryGroupReportList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'GROUPID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_GROUPREPORT'
      'WHERE'
      '   GROUPID = :OLD_GROUPID AND'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_GROUPREPORT SET'
      '   GROUPID = :GROUPID, /*PK*/'
      '   REPORTID = :REPORTID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD,'
      '   ALLOWINSERT = :ALLOWINSERT,'
      '   ALLOWUPDATE = :ALLOWUPDATE,'
      '   ALLOWDELETE = :ALLOWDELETE'
      'WHERE'
      '   GROUPID = :OLD_GROUPID AND'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_GROUPREPORT('
      '   GROUPID, /*PK*/'
      '   REPORTID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   ALLOWREAD,'
      '   ALLOWINSERT,'
      '   ALLOWUPDATE,'
      '   ALLOWDELETE)'
      'VALUES ('
      '   :GROUPID,'
      '   :REPORTID,'
      '   :SUBSYSTEMID,'
      '   :ALLOWREAD,'
      '   :ALLOWINSERT,'
      '   :ALLOWUPDATE,'
      '   :ALLOWDELETE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroupList
    SQL.Strings = (
      'SELECT SYS_GROUPREPORT.GROUPID'
      '     , SYS_GROUPREPORT.SUBSYSTEMID'
      '     , SYS_GROUPREPORT.REPORTID'
      '     , SYS_GROUPREPORT.ALLOWREAD'
      '     , SYS_GROUPREPORT.ALLOWINSERT'
      '     , SYS_GROUPREPORT.ALLOWUPDATE'
      '     , SYS_GROUPREPORT.ALLOWDELETE'
      '     , SYS_REPORT_LIST.REPORT_NAME'
      '     , SYS_REPORT_LIST.REPORT_NAME_ENG  '
      '     , SYS_REPORT_LIST.PREPORTID'
      'FROM SYS_GROUPREPORT'
      'JOIN SYS_REPORT_LIST on '
      '     SYS_GROUPREPORT.SUBSYSTEMID=SYS_REPORT_LIST.SUBSYSTEMID and'
      '     SYS_GROUPREPORT.REPORTID=SYS_REPORT_LIST.REPORTID'
      'where SYS_GROUPREPORT.GROUPID=:GROUPID and'
      '      SYS_GROUPREPORT.SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 608
    Top = 176
    object qryGroupReportListGROUPID: TWideStringField
      FieldName = 'GROUPID'
      Required = True
      Size = 15
    end
    object qryGroupReportListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryGroupReportListREPORTID: TSmallintField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryGroupReportListALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryGroupReportListALLOWINSERT: TSmallintField
      FieldName = 'ALLOWINSERT'
    end
    object qryGroupReportListALLOWUPDATE: TSmallintField
      FieldName = 'ALLOWUPDATE'
    end
    object qryGroupReportListALLOWDELETE: TSmallintField
      FieldName = 'ALLOWDELETE'
    end
    object qryGroupReportListREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Size = 126
    end
    object qryGroupReportListREPORT_NAME_ENG: TWideStringField
      FieldName = 'REPORT_NAME_ENG'
      Size = 126
    end
    object qryGroupReportListPREPORTID: TSmallintField
      FieldName = 'PREPORTID'
    end
  end
  object dsGroupReportList: TDataSource
    DataSet = qryGroupReportList
    Left = 608
    Top = 224
  end
  object qryFastUpdate: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 312
    Top = 112
    object SmallintField1: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'GROUPID'
      Required = True
      Size = 15
    end
    object WideStringField2: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object WideStringField3: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 126
    end
  end
  object qryInitUserData: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEM_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'execute procedure SYS_INIT_USER_DATA(:USER_ID,:SUBSYSTEM_ID)')
    FieldOptions = []
    Left = 232
    Top = 192
  end
  object qryInitGroupData: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'GROUP_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEM_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'execute procedure SYS_INIT_GROUP_DATA(:GROUP_ID,:SUBSYSTEM_ID)')
    FieldOptions = []
    Left = 232
    Top = 232
  end
  object qryUserDeptView: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USERACCID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_USERDEPT'
      'WHERE'
      '   DEPT_NO = :OLD_DEPT_NO AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    EditSQL.Strings = (
      'UPDATE SYS_USERDEPT SET'
      '   DEPT_NO = :DEPT_NO, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USERACCID = :USERACCID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD'
      'WHERE'
      '   DEPT_NO = :OLD_DEPT_NO AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    FetchWholeRows = False
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_USERDEPT('
      '   DEPT_NO, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   USERACCID, /*PK*/'
      '   ALLOWREAD)'
      'VALUES ('
      '   :DEPT_NO,'
      '   :SUBSYSTEMID,'
      '   :USERACCID,'
      '   :ALLOWREAD)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsUserList
    SQL.Strings = (
      'SELECT SYS_USERDEPT.USERACCID'
      '     , SYS_USERDEPT.SUBSYSTEMID'
      '     , SYS_USERDEPT.dept_no'
      '     , hr_department.p_dept_no'
      '     , hr_department.dept_name'
      '     , SYS_USERDEPT.ALLOWREAD'
      'FROM SYS_USERDEPT'
      'join hr_department on sys_userdept.dept_no=hr_department.dept_no'
      'where SYS_USERDEPT.USERACCID=:USERACCID and'
      '      SYS_USERDEPT.SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 648
    Top = 88
    object qryUserDeptViewUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryUserDeptViewSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryUserDeptViewDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 30
    end
    object qryUserDeptViewDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryUserDeptViewALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
    object qryUserDeptViewP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
  end
  object dsUserDeptView: TDataSource
    DataSet = qryUserDeptView
    Left = 648
    Top = 136
  end
  object qryGroupDeptView: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'GROUPID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_GROUPDEPT'
      'WHERE'
      '   DEPT_NO = :OLD_DEPT_NO AND'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_GROUPDEPT SET'
      '   DEPT_NO = :DEPT_NO, /*PK*/'
      '   GROUPID = :GROUPID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   ALLOWREAD = :ALLOWREAD'
      'WHERE'
      '   DEPT_NO = :OLD_DEPT_NO AND'
      '   GROUPID = :OLD_GROUPID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_GROUPDEPT('
      '   DEPT_NO, /*PK*/'
      '   GROUPID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   ALLOWREAD)'
      'VALUES ('
      '   :DEPT_NO,'
      '   :GROUPID,'
      '   :SUBSYSTEMID,'
      '   :ALLOWREAD)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsGroupList
    SQL.Strings = (
      'SELECT SYS_GROUPDEPT.groupid'
      '     , SYS_GROUPDEPT.SUBSYSTEMID'
      '     , SYS_GROUPDEPT.dept_no'
      '     , hr_department.p_dept_no'
      '     , hr_department.dept_name'
      '     , SYS_GROUPDEPT.ALLOWREAD'
      'FROM SYS_GROUPDEPT'
      
        'join hr_department on SYS_GROUPDEPT.dept_no=hr_department.dept_n' +
        'o'
      'where SYS_GROUPDEPT.groupid=:GROUPID and'
      '      SYS_GROUPDEPT.SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 648
    Top = 176
    object qryGroupDeptViewGROUPID: TWideStringField
      FieldName = 'GROUPID'
      Required = True
      Size = 15
    end
    object qryGroupDeptViewSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryGroupDeptViewDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 30
    end
    object qryGroupDeptViewP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryGroupDeptViewDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryGroupDeptViewALLOWREAD: TSmallintField
      FieldName = 'ALLOWREAD'
    end
  end
  object dsGroupDeptView: TDataSource
    DataSet = qryGroupDeptView
    Left = 648
    Top = 224
  end
end
