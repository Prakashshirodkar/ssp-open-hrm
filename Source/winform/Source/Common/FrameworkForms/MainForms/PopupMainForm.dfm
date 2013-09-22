inherited frmPopupMain: TfrmPopupMain
  Left = 265
  Top = 158
  Width = 858
  Height = 572
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 502
    Width = 889
  end
  object dxLayoutMau: TdxLayoutControl [1]
    Left = 8
    Top = 0
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
      KeyField = 'KIND_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    end
    object ElPopupButton1: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutMauGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutMauItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMauGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutMauItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutMauItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutMauItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDeptTypeList: TdxLayoutControl [2]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
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
      KeyField = 'DEPT_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDeptTypeList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid2DEPT_TYPE_NO: TdxDBGridColumn
        Caption = 'K'#237' hi'#7879'u ph'#226'n lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_TYPE_NO'
        Caption_UTF7 = 'K+AO0 hi+Hsc-u ph+AOI-n lo+HqE-i'
      end
      object dxDBGrid2DEPT_TYPE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 179
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i'
      end
    end
    object ElPopupButton4: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton6: TElPopupButton
      Left = 152
      Top = 106
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
      object dxLayoutGroup2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcMau2: TdxLayoutControl [3]
    Left = 8
    Top = 56
    Width = 297
    Height = 225
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton7: TElPopupButton
      Left = 2
      Top = 198
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 145
      Top = 198
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
      Left = 220
      Top = 198
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
    object dxDBTreeList1: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      TabOrder = 0
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcMau2Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxDBTreeList1
        ControlOptions.ShowBorder = False
      end
      object dxlcMau2Group1: TdxLayoutGroup
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
  object dxlcTitleList: TdxLayoutControl [4]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid3: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TITLE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsTitleList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid3TITLE_NO: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c danh '
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NO'
        Caption_UTF7 = 'M+AOM ch+Huk-c danh '
      end
      object dxDBGrid3TITLE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n ch'#7913'c danh'
        HeaderAlignment = taCenter
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'T+AOo-n ch+Huk-c danh'
      end
    end
    object ElPopupButton10: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton10Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton13: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton14: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup6: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem12: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid3
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup7: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem13: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton10
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem14: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton13
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem15: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton14
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWorkType: TdxLayoutControl [5]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid4: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WORK_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWorkTypeList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid4WORK_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dxDBGrid4WORK_TYPE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 174
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i '
      end
    end
    object ElPopupButton15: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton15Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton16: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton17: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup8: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem16: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid4
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup9: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem17: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton15
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem18: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton16
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem19: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton17
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcLocationTypeList: TdxLayoutControl [6]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid5: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LOCATION_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsLocationType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid5LOCATION_TYPE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i '
      end
      object dxDBGrid5LOCATION_TYPE_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 174
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i'
      end
    end
    object ElPopupButton18: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton18Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton19: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton20: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup10: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem20: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid5
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup11: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem21: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton18
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem22: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton19
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem23: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton20
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcNationList: TdxLayoutControl [7]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid6: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'NATION_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsNationList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid6NATION_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' qu'#7889'c gia'
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NATION_NO'
        Caption_UTF7 = 'M+AOM qu+HtE-c gia'
      end
      object dxDBGrid6NATION_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n qu'#7889'c gia'
        HeaderAlignment = taCenter
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NATION_NAME'
        Caption_UTF7 = 'T+AOo-n qu+HtE-c gia'
      end
    end
    object ElPopupButton21: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton21Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton22: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton23: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup12: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem24: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid6
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup13: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem25: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton21
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem26: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton22
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem27: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton23
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcCareerTypeList: TdxLayoutControl [8]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid7: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CAREER_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsCareerTypeList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid7CAREER_TYPE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i '
      end
      object dxDBGrid7CAREER_TYPE_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n lo'#7841'i ng'#224'nh ngh'#7873
        HeaderAlignment = taCenter
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i ng+AOA-nh ngh+HsE'
      end
    end
    object ElPopupButton24: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton24Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton25: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton26: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup14: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem28: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid7
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup15: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem29: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton24
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem30: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton25
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem31: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton26
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcCurrencyList: TdxLayoutControl [9]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid8: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CURRENCY_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsCurrencyList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid8CURRENCY_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_NO'
        Caption_UTF7 = 'M+AOM ti+HsE-n t+Hsc'
      end
      object dxDBGrid8CURRENCY_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CURRENCY_NAME'
        Caption_UTF7 = 'T+AOo-n ti+HsE-n t+Hsc'
      end
    end
    object btnCurrencyList: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = btnCurrencyListClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton28: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton29: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup16: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem32: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid8
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup17: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem33: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnCurrencyList
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem34: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton28
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem35: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton29
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcRaceList: TdxLayoutControl [10]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid9: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RACE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsRaceList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid9RACE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' d'#226'n t'#7897'c'
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RACE_NO'
        Caption_UTF7 = 'M+AOM d+AOI-n t+Htk-c'
      end
      object dxDBGrid9RACE_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n d'#226'n t'#7897'c'
        HeaderAlignment = taCenter
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RACE_NAME'
        Caption_UTF7 = 'T+AOo-n d+AOI-n t+Htk-c'
      end
    end
    object ElPopupButton27: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton27Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton30: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton31: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup18: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem36: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid9
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup19: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem37: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton27
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem38: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton30
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem39: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton31
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcReligionList: TdxLayoutControl [11]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid10: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RELIGION_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsReligionList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid10RELIGION_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' t'#244'n gi'#225'o'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELIGION_NO'
        Caption_UTF7 = 'M+AOM t+APQ-n gi+AOE-o'
      end
      object dxDBGrid10RELIGION_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n t'#244'n gi'#225'o'
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELIGION_NAME'
        Caption_UTF7 = 'T+AOo-n t+APQ-n gi+AOE-o'
      end
    end
    object ElPopupButton32: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton32Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton33: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton34: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup20: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem40: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid10
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup21: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem41: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton32
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem42: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton33
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem43: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton34
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcLocationList: TdxLayoutControl [12]
    Left = 648
    Top = 24
    Width = 153
    Height = 113
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton35: TElPopupButton
      Left = 2
      Top = 69
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
      OnClick = ElPopupButton35Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton36: TElPopupButton
      Left = 77
      Top = 69
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
    object ElPopupButton37: TElPopupButton
      Left = 152
      Top = 69
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
    object dxDBTreeList2: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEM_ID'
      ParentField = 'P_ITEM_ID'
      TabOrder = 0
      DataSource = dsLocationList
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeList2LOCATION_NO: TdxDBTreeListMaskColumn
        Caption = 'M'#227' t'#7881'nh th'#224'nh'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_NO'
        Caption_UTF7 = 'M+AOM t+Hsk-nh th+AOA-nh'
      end
      object dxDBTreeList2LOCATION_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n t'#7881'nh th'#224'nh'
        HeaderAlignment = taCenter
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_NAME'
        Caption_UTF7 = 'T+AOo-n t+Hsk-nh th+AOA-nh'
      end
      object dxDBTreeList2NATION_NAME: TdxDBTreeListMaskColumn
        Caption = 'Qu'#7889'c gia'
        HeaderAlignment = taCenter
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NATION_NAME'
        Caption_UTF7 = 'Qu+HtE-c gia'
      end
    end
    object dxLayoutGroup22: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem44: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxDBTreeList2
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup23: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem45: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton35
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem46: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton36
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem47: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton37
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDescentList: TdxLayoutControl [13]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid11: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DESCENT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDescentList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid11DESCENT_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCENT_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid11DESCENT_NAME: TdxDBGridColumn
        Caption = 'Th'#224'nh ph'#7847'n xu'#7845't th'#226'n'
        HeaderAlignment = taCenter
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCENT_NAME'
        Caption_UTF7 = 'Th+AOA-nh ph+Hqc-n xu+HqU-t th+AOI-n'
      end
    end
    object ElPopupButton38: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton38Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton39: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton40: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup24: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem48: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid11
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup25: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem49: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton38
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem50: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton39
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem51: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton40
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcEduLevelList: TdxLayoutControl [14]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid12: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EDU_LEVEL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEduLevelList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid12EDU_LEVEL_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' tr'#236'nh '#273#7897
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_NO'
        Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q'
      end
      object dxDBGrid12EDU_LEVEL_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n tr'#236'nh '#273#7897
        HeaderAlignment = taCenter
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_NAME'
        Caption_UTF7 = 'T+AOo-n tr+AOw-nh +AREe2Q'
      end
    end
    object ElPopupButton41: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton41Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton42: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton43: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup26: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem52: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid12
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup27: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem53: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton41
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem54: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton42
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem55: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton43
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcCareerList: TdxLayoutControl [15]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid13: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CAREER_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsCareerList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid13CAREER_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' ng'#224'nh ngh'#7873
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_NO'
        Caption_UTF7 = 'M+AOM ng+AOA-nh ngh+HsE'
      end
      object dxDBGrid13CAREER_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n ng'#224'nh ngh'#7873
        HeaderAlignment = taCenter
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_NAME'
        Caption_UTF7 = 'T+AOo-n ng+AOA-nh ngh+HsE'
      end
    end
    object ElPopupButton44: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton44Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton45: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton46: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup28: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem56: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid13
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup29: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem57: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton44
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem58: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton45
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem59: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton46
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcEduFieldList: TdxLayoutControl [16]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid14: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EDU_FIELD_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEduFieldList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid14EDU_FIELD_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' l'#297'nh v'#7921'c'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_FIELD_NO'
        Caption_UTF7 = 'M+AOM l+ASk-nh v+HvE-c'
      end
      object dxDBGrid14EDU_FIELD_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n l'#297'nh v'#7921'c'
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_FIELD_NAME'
        Caption_UTF7 = 'T+AOo-n l+ASk-nh v+HvE-c'
      end
    end
    object ElPopupButton47: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton47Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton48: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton49: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup30: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem60: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid14
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup31: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem61: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton47
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem62: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton48
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem63: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton49
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcFieldLevelList: TdxLayoutControl [17]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid15: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FIELD_LEVEL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsFieldLevelList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid15FIELD_LEVEL_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' tr'#236'nh '#273#7897
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FIELD_LEVEL_NO'
        Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q'
      end
      object dxDBGrid15FIELD_LEVEL_NAME: TdxDBGridMaskColumn
        Caption = 'Tr'#236'nh '#273#7897' - b'#7857'ng c'#7845'p'
        HeaderAlignment = taCenter
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FIELD_LEVEL_NAME'
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q - b+HrE-ng c+HqU-p'
      end
    end
    object ElPopupButton50: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton50Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton51: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton52: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup32: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem64: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid15
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup33: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem65: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton50
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem66: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton51
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem67: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton52
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDecisionType: TdxLayoutControl [18]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid16: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DCS_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDecisionType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid16STT: TdxDBGridColumn
        Alignment = taCenter
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STT'
      end
      object dxDBGrid16DCS_TYPE_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i quy'#7871't '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 238
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DCS_TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i quy+Hr8-t +AREeyw-nh'
      end
    end
    object ElPopupButton53: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton53Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton54: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton55: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup34: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem68: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid16
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup35: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem69: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton53
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem70: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton54
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem71: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton55
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcPosition: TdxLayoutControl [19]
    Left = 648
    Top = 48
    Width = 153
    Height = 73
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton56: TElPopupButton
      Left = 2
      Top = 29
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
      OnClick = ElPopupButton56Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton59: TElPopupButton
      Left = 77
      Top = 29
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
    object ElPopupButton60: TElPopupButton
      Left = 152
      Top = 29
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
    object tlPosition: TdxDBTreeList
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
      ParentField = 'P_POSITION_NO'
      TabOrder = 0
      DataSource = dsPosition
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object tlPositionDEPT_NAME: TdxDBTreeListMaskColumn
        Caption = #272#417'n v'#7883' - ph'#242'ng ban'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
      end
      object tlPositionTITLE_NAME: TdxDBTreeListMaskColumn
        Caption = 'Ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object tlPositionWORK_TYPE_NAME: TdxDBTreeListMaskColumn
        Caption = 'Ph'#226'n lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NAME'
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
      end
    end
    object dxLayoutGroup38: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem73: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = tlPosition
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup39: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem76: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton56
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem77: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton59
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem78: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton60
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcRewardList: TdxLayoutControl [20]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid19: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'REWARD_LIST_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsRewardList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid19REWARD_LIST_NO: TdxDBGridColumn
        Caption = 'M'#227' danh hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_LIST_NO'
        Caption_UTF7 = 'M+AOM danh hi+Hsc-u'
      end
      object dxDBGrid19REWARD_LIST_NAME: TdxDBGridColumn
        Caption = 'Danh hi'#7879'u khen th'#432#7903'ng'
        HeaderAlignment = taCenter
        Width = 198
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_LIST_NAME'
        Caption_UTF7 = 'Danh hi+Hsc-u khen th+AbAe3w-ng'
      end
    end
    object ElPopupButton61: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton61Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton64: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton65: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup42: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem80: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid19
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup43: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem83: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton61
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem84: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton64
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem85: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton65
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcRewardForm: TdxLayoutControl [21]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid20: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'REWARD_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsRewardForm
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid20REWARD_NO: TdxDBGridColumn
        Caption = 'M'#227' h'#236'nh th'#7913'c '
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_NO'
        Caption_UTF7 = 'M+AOM h+AOw-nh th+Huk-c '
      end
      object dxDBGrid20REWARD_NAME: TdxDBGridColumn
        Caption = 'H'#236'nh th'#7913'c khen th'#432#7903'ng'
        HeaderAlignment = taCenter
        Width = 197
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_NAME'
        Caption_UTF7 = 'H+AOw-nh th+Huk-c khen th+AbAe3w-ng'
      end
    end
    object ElPopupButton66: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton66Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton67: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton68: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup44: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem86: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid20
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup45: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem87: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton66
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem88: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton67
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem89: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton68
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDisciplineList: TdxLayoutControl [22]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid21: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DISC_LIST_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDisciplineList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid21DISC_LIST_NO: TdxDBGridColumn
        Caption = 'M'#227' vi ph'#7841'm'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_LIST_NO'
        Caption_UTF7 = 'M+AOM vi ph+HqE-m'
      end
      object dxDBGrid21DISC_LIST_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i vi ph'#7841'm k'#7927' lu'#7853't'
        HeaderAlignment = taCenter
        Width = 196
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_LIST_NAME'
        Caption_UTF7 = 'Lo+HqE-i vi ph+HqE-m k+Hvc lu+Hq0-t'
      end
    end
    object ElPopupButton69: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton69Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton70: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton71: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup46: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem90: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid21
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup47: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem91: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton69
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem92: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton70
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem93: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton71
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDisciplineForm: TdxLayoutControl [23]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid22: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DISC_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDisciplineForm
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid22DISC_NO: TdxDBGridColumn
        Caption = 'M'#227' h'#236'nh th'#7913'c'
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_NO'
        Caption_UTF7 = 'M+AOM h+AOw-nh th+Huk-c'
      end
      object dxDBGrid22DISC_NAME: TdxDBGridColumn
        Caption = 'H'#236'nh th'#7913'c k'#7927' lu'#7853't'
        HeaderAlignment = taCenter
        Width = 195
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_NAME'
        Caption_UTF7 = 'H+AOw-nh th+Huk-c k+Hvc lu+Hq0-t'
      end
    end
    object ElPopupButton72: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton72Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton73: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton74: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup48: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem94: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid22
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup49: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem95: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton72
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem96: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton73
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem97: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton74
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDecisionLevel: TdxLayoutControl [24]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid23: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LEVEL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDecisionLevel
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid23LEVEL_NO: TdxDBGridColumn
        Caption = 'M'#227' c'#7845'p '
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NO'
        Caption_UTF7 = 'M+AOM c+HqU-p '
      end
      object dxDBGrid23LEVEL_NAME: TdxDBGridColumn
        Caption = 'C'#7845'p quy'#7871't '#273#7883'nh '
        HeaderAlignment = taCenter
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NAME'
        Caption_UTF7 = 'C+HqU-p quy+Hr8-t +AREeyw-nh '
      end
    end
    object ElPopupButton75: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton75Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton76: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton77: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup50: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem98: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid23
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup51: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem99: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton75
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem100: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton76
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem101: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton77
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcReportTemplateList: TdxLayoutControl [25]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid24: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TEMPLATE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsReportTemplateList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid24TEMPLATE_NO: TdxDBGridColumn
        Caption = 'M'#227' m'#7851'u in'
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NO'
        Caption_UTF7 = 'M+AOM m+Hqs-u in'
      end
      object dxDBGrid24TEMPLATE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n m'#7851'u in'
        HeaderAlignment = taCenter
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NAME'
        Caption_UTF7 = 'T+AOo-n m+Hqs-u in'
      end
      object dxDBGrid24TEMPLATE_FILE: TdxDBGridColumn
        Caption = 'T'#234'n file'
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_FILE'
        Caption_UTF7 = 'T+AOo-n file'
      end
    end
    object ElPopupButton78: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton78Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton79: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton80: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup52: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem102: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid24
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup53: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem103: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton78
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem104: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton79
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem105: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton80
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDocTemplateList: TdxLayoutControl [26]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 29
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid25: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TEMPLATE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDocTemplate
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid25TEMPLATE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid25TEMPLATE_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n m'#7851'u v'#259'n b'#7843'n'
        HeaderAlignment = taCenter
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NAME'
        Caption_UTF7 = 'T+AOo-n m+Hqs-u v+AQM-n b+HqM-n'
      end
    end
    object ElPopupButton81: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton81Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton82: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton83: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup54: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem106: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid25
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup55: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem107: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton81
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem108: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton82
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem109: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton83
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcContractType: TdxLayoutControl [27]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 30
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid26: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONTRACT_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsContractType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid26CONTRACT_TYPE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTRACT_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dxDBGrid26CONTRACT_TYPE_NAME: TdxDBGridMaskColumn
        Caption = 'Lo'#7841'i h'#7907'p '#273#7891'ng lao '#273#7897'ng'
        HeaderAlignment = taCenter
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTRACT_TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i h+HuM-p +AREe0w-ng lao +AREe2Q-ng'
      end
    end
    object ElPopupButton84: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton84Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton85: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton86: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup56: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem110: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid26
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup57: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem111: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton84
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem112: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton85
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem113: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton86
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcContractList: TdxLayoutControl [28]
    Left = 568
    Top = 18
    Width = 321
    Height = 239
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 31
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid27: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONTRACT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsContractList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid27CONTRACT_NO: TdxDBGridMaskColumn
        Caption = 'S'#7889' h'#7907'p '#273#7891'ng'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTRACT_NO'
        Caption_UTF7 = 'S+HtE h+HuM-p +AREe0w-ng'
      end
      object dxDBGrid27CONTRACT_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n h'#7907'p '#273#7891'ng'
        HeaderAlignment = taCenter
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTRACT_NAME'
        Caption_UTF7 = 'T+AOo-n h+HuM-p +AREe0w-ng'
      end
      object dxDBGrid27STARTED_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STARTED_DATE'
        Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
      end
    end
    object ElPopupButton88: TElPopupButton
      Left = 169
      Top = 212
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
    object ElPopupButton89: TElPopupButton
      Left = 244
      Top = 212
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
    object dxLayoutGroup58: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem114: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid27
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup59: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem116: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton88
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem117: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton89
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWorkDateType: TdxLayoutControl [29]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 32
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridWDT: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WDT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWorkDateType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridWDTWDT_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WDT_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object gridWDTWDT_NAME: TdxDBGridMaskColumn
        Caption = 'Lo'#7841'i ng'#224'y c'#244'ng'
        HeaderAlignment = taCenter
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WDT_NAME'
        Caption_UTF7 = 'Lo+HqE-i ng+AOA-y c+APQ-ng'
      end
      object gridWDTWDT_COLOR: TdxDBGridMaskColumn
        DisableCaption = True
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 253
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'WDT_COLOR'
        DisableFilter = True
      end
      object gridWDTCOLOR: TdxDBGridColumn
        Caption = 'M'#224'u '#273#7841'i di'#7879'n'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = gridWDTCOLORCustomDrawCell
        Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
      end
    end
    object ElPopupButton87: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton87Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton90: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton91: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup60: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem118: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridWDT
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup61: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem119: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton87
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem120: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton90
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem121: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton91
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWorkHourType: TdxLayoutControl [30]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 33
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridWHT: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WHT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWorkHourType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridWHTWHT_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i'
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WHT_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object gridWHTWHT_NAME: TdxDBGridMaskColumn
        Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WHT_NAME'
        Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng'
      end
      object gridWHTWHT_COLOR: TdxDBGridMaskColumn
        Caption = 'M'#224'u '#273#7841'i di'#7879'n'
        Visible = False
        Width = 235
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WHT_COLOR'
        Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
      end
      object gridWHTColumn4: TdxDBGridColumn
        Caption = 'M'#224'u '#273#7841'i di'#7879'n'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = gridWHTColumn4CustomDrawCell
        Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
      end
    end
    object ElPopupButton92: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton92Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton93: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton94: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup62: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem122: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridWHT
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup63: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem123: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton92
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem124: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton93
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem125: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton94
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcCalendar: TdxLayoutControl [31]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 34
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid28: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CALENDAR_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsCalendar
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid28CALENDAR_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' l'#7883'ch'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CALENDAR_NO'
        Caption_UTF7 = 'M+AOM l+Hss-ch'
      end
      object dxDBGrid28CALENDAR_NAME: TdxDBGridMaskColumn
        Caption = 'L'#7883'ch l'#224'm vi'#7879'c chu'#7849'n'
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CALENDAR_NAME'
        Caption_UTF7 = 'L+Hss-ch l+AOA-m vi+Hsc-c chu+Hqk-n'
      end
    end
    object btnCalendar: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = btnCalendarClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton96: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton97: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup64: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem126: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid28
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup65: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem127: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnCalendar
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem128: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton96
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem129: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton97
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWageElementType: TdxLayoutControl [32]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 35
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridWageElementType: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ELEMENT_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWageElementType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridWageElementTypeELEMENT_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ELEMENT_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object gridWageElementTypeELEMENT_TYPE_NAME: TdxDBGridColumn
        Caption = 'Ph'#226'n lo'#7841'i y'#7871'u t'#7889
        HeaderAlignment = taCenter
        Width = 176
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ELEMENT_TYPE_NAME'
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i y+Hr8-u t+HtE'
      end
      object gridWageElementTypeCOLOR: TdxDBGridColumn
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLOR'
      end
      object gridWageElementTypeColumn4: TdxDBGridColumn
        Caption = 'M'#224'u '#273#7841'i di'#7879'n'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = gridWageElementTypeColumn4CustomDrawCell
        Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
      end
    end
    object ElPopupButton95: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton95Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton98: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton99: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup66: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem130: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridWageElementType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup67: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem131: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton95
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem132: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton98
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem133: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton99
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcRelationship: TdxLayoutControl [33]
    Left = 586
    Top = 18
    Width = 200
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 38
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid31: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RELATIONSHIP_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsRelationship
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid31RELATIONSHIP_NAME: TdxDBGridColumn
        Caption = 'Quan h'#7879
        HeaderAlignment = taCenter
        Width = 207
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELATIONSHIP_NAME'
        Caption_UTF7 = 'Quan h+Hsc'
      end
      object dxDBGrid31RELATIONSHIP_TYPE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Ph'#226'n lo'#7841'i'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELATIONSHIP_TYPE'
        Descriptions.WideStrings = (
          'Gia '#273#236'nh'
          'X'#227' h'#7897'i')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
      end
    end
    object ElPopupButton100: TElPopupButton
      Left = 2
      Top = 106
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
      OnClick = ElPopupButton100Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton105: TElPopupButton
      Left = 77
      Top = 106
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
    object ElPopupButton106: TElPopupButton
      Left = 152
      Top = 106
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
    object dxLayoutGroup72: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem138: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid31
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup73: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem141: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton100
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem142: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton105
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem143: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton106
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcEstimateSys: TdxLayoutControl [34]
    Left = 336
    Top = 72
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 39
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid32: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SYS_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEstimateSystem
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid32SYS_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SYS_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid32SYS_NAME: TdxDBGridColumn
        Caption = 'H'#7879' th'#7889'ng thang '#273'i'#7875'm '#273#225'nh gi'#225
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SYS_NAME'
        Caption_UTF7 = 'H+Hsc th+HtE-ng thang +ARE-i+HsM-m +AREA4Q-nh gi+AOE'
      end
    end
    object ElPopupButton107: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton107Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton108: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton109: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup74: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem144: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid32
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup75: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem145: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton107
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem146: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton108
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem147: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton109
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcAccidentType: TdxLayoutControl [35]
    Left = 392
    Top = 24
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 40
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid33: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACCIDENT_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsAccidentType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid33ACCIDENT_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCIDENT_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dxDBGrid33ACCIDENT_TYPE_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i tai n'#7841'n L'#272
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCIDENT_TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i tai n+HqE-n L+ARA'
      end
    end
    object ElPopupButton110: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton111: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton112: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup76: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem148: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid33
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup77: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem149: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton110
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem150: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton111
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem151: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton112
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcAccidentReason: TdxLayoutControl [36]
    Left = 408
    Top = 40
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 41
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid34: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACCIDENT_REASON_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsAccidentReason
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid34ACCIDENT_REASON_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCIDENT_REASON_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid34ACCIDENT_REASON_NAME: TdxDBGridColumn
        Caption = 'Nguy'#234'n nh'#226'n tai n'#7841'n'
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACCIDENT_REASON_NAME'
        Caption_UTF7 = 'Nguy+AOo-n nh+AOI-n tai n+HqE-n'
      end
    end
    object ElPopupButton113: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton114: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton115: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup78: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem152: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid34
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup79: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem153: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton113
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem154: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton114
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem155: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton115
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcConsequence: TdxLayoutControl [37]
    Left = 416
    Top = 24
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 42
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid35: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONSEQUENCE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsConsequence
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid35CONSEQUENCE_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONSEQUENCE_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid35CONSEQUENCE_NAME: TdxDBGridColumn
        Caption = 'T'#236'nh tr'#7841'ng'
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONSEQUENCE_NAME'
        Caption_UTF7 = 'T+AOw-nh tr+HqE-ng'
      end
    end
    object ElPopupButton116: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton117: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton118: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup80: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem156: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid35
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup81: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem157: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton116
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem158: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton117
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem159: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton118
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcFurloughReason: TdxLayoutControl [38]
    Left = 416
    Top = 16
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 43
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid36: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FURLOUGH_REASON_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsFurloughReason
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid36FURLOUGH_REASON_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FURLOUGH_REASON_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dxDBGrid36FURLOUGH_REASON_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i thai s'#7843'n'
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FURLOUGH_REASON_NAME'
        Caption_UTF7 = 'Lo+HqE-i thai s+HqM-n'
      end
    end
    object ElPopupButton119: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton120: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton121: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup82: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem160: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid36
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup83: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem161: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton119
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem162: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton120
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem163: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton121
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcEstimateStage: TdxLayoutControl [39]
    Left = 408
    Top = 16
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 44
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid37: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'STAGE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEstimateStage
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid37STAGE_NO: TdxDBGridColumn
        Caption = 'M'#227' '#273#7907't '#272'G'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STAGE_NO'
        Caption_UTF7 = 'M+AOM +AREe4w-t +ARA-G'
      end
      object dxDBGrid37STAGE_NAME: TdxDBGridColumn
        Caption = #272#7907't '#273#225'nh gi'#225
        HeaderAlignment = taCenter
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STAGE_NAME'
        Caption_UTF7 = '+ARAe4w-t +AREA4Q-nh gi+AOE'
      end
    end
    object ElPopupButton123: TElPopupButton
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
    object ElPopupButton124: TElPopupButton
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
    object dxLayoutGroup84: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem164: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid37
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup85: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem166: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton123
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem167: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton124
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcTrainingType: TdxLayoutControl [40]
    Left = 488
    Top = 80
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 45
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid38: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsTrainingType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid38TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dxDBGrid38TYPE_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i h'#236'nh '#273#224'o t'#7841'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i h+AOw-nh +AREA4A-o t+HqE-o'
      end
    end
    object ElPopupButton122: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton122Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton125: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton126: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup86: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem165: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid38
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup87: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem168: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton122
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem169: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton125
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem170: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton126
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcTrainingForm: TdxLayoutControl [41]
    Left = 512
    Top = 64
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 46
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid39: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FORM_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsTrainingForm
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid39FORM_NO: TdxDBGridColumn
        Caption = 'M'#227' h'#236'nh th'#7913'c'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORM_NO'
        Caption_UTF7 = 'M+AOM h+AOw-nh th+Huk-c'
      end
      object dxDBGrid39FORM_NAME: TdxDBGridColumn
        Caption = 'H'#236'nh th'#7913'c '#273#224'o t'#7841'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORM_NAME'
        Caption_UTF7 = 'H+AOw-nh th+Huk-c +AREA4A-o t+HqE-o'
      end
    end
    object ElPopupButton127: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton127Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton128: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton129: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup88: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem171: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid39
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup89: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem172: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton127
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem173: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton128
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem174: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton129
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcTrainingSource: TdxLayoutControl [42]
    Left = 552
    Top = 40
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 47
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid40: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SOURCE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsTrainingSource
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid40SOURCE_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOURCE_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid40SOURCE_NAME: TdxDBGridColumn
        Caption = 'Ngu'#7891'n kinh ph'#237
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOURCE_NAME'
        Caption_UTF7 = 'Ngu+HtM-n kinh ph+AO0'
      end
    end
    object ElPopupButton130: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton130Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton131: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton132: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup90: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem175: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid40
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup91: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem176: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton130
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem177: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton131
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem178: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton132
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcLoaiThaisan: TdxLayoutControl [43]
    Left = 496
    Top = 64
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 48
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid41: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_LOAI'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid41MA_LOAI: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_LOAI'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dxDBGrid41TEN_LOAI: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i thai s'#7843'n'
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_LOAI'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i thai s+HqM-n'
      end
      object dxDBGrid41HE_SO: TdxDBGridColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HE_SO'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
    end
    object ElPopupButton133: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton134: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton135: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup92: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem179: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid41
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup93: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem180: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton133
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem181: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton134
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem182: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton135
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcTrainingSupply: TdxLayoutControl [44]
    Left = 536
    Top = 16
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 49
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid42: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SUPPLY_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsTrainingSupply
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid42SUPPLY_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPPLY_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid42SUPPLY_NAME: TdxDBGridColumn
        Caption = 'Ngu'#7891'n cung c'#7845'p'
        HeaderAlignment = taCenter
        Width = 232
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPPLY_NAME'
        Caption_UTF7 = 'Ngu+HtM-n cung c+HqU-p'
      end
    end
    object ElPopupButton136: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton136Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton137: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton138: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup94: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem183: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid42
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup95: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem184: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton136
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem185: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton137
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem186: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton138
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcOrgList: TdxLayoutControl [45]
    Left = 528
    Top = 16
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 50
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid43: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ORG_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsOrgList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid43ORG_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORG_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid43ORG_NAME: TdxDBGridColumn
        Caption = 'T'#7893' ch'#7913'c - '#273'o'#224'n th'#7875' x'#227' h'#7897'i'
        HeaderAlignment = taCenter
        Width = 230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORG_NAME'
        Caption_UTF7 = 'T+HtU ch+Huk-c - +ARE-o+AOA-n th+HsM x+AOM h+Htk-i'
      end
    end
    object ElPopupButton139: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton139Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton140: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton141: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup96: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem187: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid43
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup97: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem188: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton139
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem189: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton140
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem190: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton141
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDotKCB: TdxLayoutControl [46]
    Left = 488
    Top = 24
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 51
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid44: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_SO_DOT'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDotKCB
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid41MA_SO_DOT: TdxDBGridMaskColumn
        Caption = 'M'#227' '#273#7907't'
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_SO_DOT'
        Caption_UTF7 = 'M+AOM +AREe4w-t'
      end
      object dxDBGrid41TEN_DOT: TdxDBGridMaskColumn
        Caption = 'T'#234'n '#273#7907't'
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_DOT'
        Caption_UTF7 = 'T+AOo-n +AREe4w-t'
      end
    end
    object ElPopupButton142: TElPopupButton
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
    object ElPopupButton143: TElPopupButton
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
    object dxLayoutGroup98: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem191: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid44
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup99: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem192: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton142
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem193: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton143
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcLoaiSuckhoe: TdxLayoutControl [47]
    Left = 424
    Top = 32
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 52
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid45: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_LOAI'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid45MA_LOAI: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_LOAI'
        Caption_UTF7 = 'M+AOM lo+HqE-i '
      end
      object dxDBGrid45TEN_LOAI: TdxDBGridColumn
        Caption = 'Lo'#7841'i s'#7913'c kh'#7887'e'
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_LOAI'
        Caption_UTF7 = 'Lo+HqE-i s+Huk-c kh+Hs8-e'
      end
      object dxDBGrid45CAP_DO: TdxDBGridColumn
        Caption = 'M'#7913'c '#273#7897
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAP_DO'
        Caption_UTF7 = 'M+Huk-c +AREe2Q'
      end
    end
    object ElPopupButton144: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton145: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton146: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup100: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem194: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid45
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup101: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem195: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton144
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem196: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton145
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem197: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton146
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcRecruitmentSource: TdxLayoutControl [48]
    Left = 480
    Top = 16
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 53
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid46: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SOURCE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsRecruitmentSource
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid46SOURCE_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOURCE_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid46SOURCE_NAME: TdxDBGridColumn
        Caption = 'Ngu'#7891'n tuy'#7875'n d'#7909'ng'
        HeaderAlignment = taCenter
        Width = 216
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOURCE_NAME'
        Caption_UTF7 = 'Ngu+HtM-n tuy+HsM-n d+HuU-ng'
      end
    end
    object ElPopupButton147: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton147Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton148: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton149: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup102: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem198: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid46
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup103: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem199: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton147
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem200: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton148
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem201: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton149
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWageFormular: TdxLayoutControl [49]
    Left = 224
    Top = 40
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 54
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid47: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FORMULAR_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWageFormular
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid47FORMULAR_NAME: TdxDBGridColumn
        Caption = 'C'#244'ng th'#7913'c l'#432#417'ng'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMULAR_NAME'
        Caption_UTF7 = 'C+APQ-ng th+Huk-c l+AbABoQ-ng'
      end
    end
    object ElPopupButton151: TElPopupButton
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
    object ElPopupButton152: TElPopupButton
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
    object dxLayoutGroup104: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem202: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid47
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup105: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem204: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton151
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem205: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton152
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWageElement: TdxLayoutControl [50]
    Left = 576
    Top = 8
    Width = 210
    Height = 217
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 36
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid29: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ELEMENT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWageElement
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid29ELEMENT_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ELEMENT_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid29ELEMENT_NAME: TdxDBGridColumn
        Caption = 'T'#234'n tham s'#7889' l'#432#417'ng'
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ELEMENT_NAME'
        Caption_UTF7 = 'T+AOo-n tham s+HtE l+AbABoQ-ng'
      end
    end
    object ElPopupButton101: TElPopupButton
      Left = 58
      Top = 190
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
    object ElPopupButton102: TElPopupButton
      Left = 133
      Top = 190
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
    object dxLayoutGroup68: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem134: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid29
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup69: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem136: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton101
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem137: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton102
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcTrainingResult: TdxLayoutControl [51]
    Left = 416
    Top = 72
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 55
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid48: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RESULT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsTrainingResult
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid48RESULT_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RESULT_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid48RESULT_NAME: TdxDBGridColumn
        Caption = 'K'#7871't qu'#7843' '#273#224'o t'#7841'o'
        HeaderAlignment = taCenter
        Width = 159
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RESULT_NAME'
        Caption_UTF7 = 'K+Hr8-t qu+HqM +AREA4A-o t+HqE-o'
      end
      object dxDBGrid48RESULT_GRADE: TdxDBGridColumn
        Caption = 'M'#7913'c '#273#7897
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RESULT_GRADE'
        Caption_UTF7 = 'M+Huk-c +AREe2Q'
      end
    end
    object ElPopupButton150: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton150Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton153: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton154: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup106: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem115: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid48
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup107: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem203: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton150
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem206: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton153
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem207: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton154
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWageStandard: TdxLayoutControl [52]
    Left = 552
    Top = 8
    Width = 234
    Height = 160
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 37
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid30: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WAGE_SCALE'
      ShowGroupPanel = True
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWageStandard
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid30CAREER_NAME: TdxDBGridColumn
        Caption = 'Ng'#7841'ch l'#432#417'ng'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_NAME'
        GroupIndex = 0
        Caption_UTF7 = 'Ng+HqE-ch l+AbABoQ-ng'
      end
      object dxDBGrid30WAGE_LEVEL: TdxDBGridColumn
        Caption = 'B'#7853'c l'#432#417'ng'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_LEVEL'
        Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
      end
      object dxDBGrid30WAGE_COEFF: TdxDBGridColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_COEFF'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid30PROMOTION: TdxDBGridColumn
        Caption = 'Th'#7901'i h'#7841'n'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOTION'
        Caption_UTF7 = 'Th+Ht0-i h+HqE-n'
      end
    end
    object ElPopupButton103: TElPopupButton
      Left = 82
      Top = 133
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
    object ElPopupButton104: TElPopupButton
      Left = 157
      Top = 133
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
    object dxLayoutGroup70: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem135: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid30
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup71: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem139: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton103
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem140: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton104
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcChucvuDang: TdxLayoutControl [53]
    Left = 432
    Top = 34
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 56
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid50: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_CHUCVU'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsChucvuDang
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid50MA_CHUCVU: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_CHUCVU'
        Caption_UTF7 = 'M+AOM ch+Huk-c v+HuU'
      end
      object dxDBGrid50TEN_CHUCVU: TdxDBGridColumn
        Caption = 'T'#234'n ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 198
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_CHUCVU'
        Caption_UTF7 = 'T+AOo-n ch+Huk-c v+HuU'
      end
    end
    object ElPopupButton158: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton158Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton159: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton160: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup110: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem212: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid50
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup111: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem213: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton158
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem214: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton159
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem215: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton160
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcChucvuDoan: TdxLayoutControl [54]
    Left = 400
    Top = 10
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 57
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid51: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_CHUCVU'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsChucvuDoan
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGridColumn1: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_CHUCVU'
        Caption_UTF7 = 'M+AOM ch+Huk-c v+HuU'
      end
      object dxDBGridColumn2: TdxDBGridColumn
        Caption = 'T'#234'n ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 198
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_CHUCVU'
        Caption_UTF7 = 'T+AOo-n ch+Huk-c v+HuU'
      end
    end
    object ElPopupButton161: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton161Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton162: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton163: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup112: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem216: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid51
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup113: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem217: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton161
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem218: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton162
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem219: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton163
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcChucvuCDoan: TdxLayoutControl [55]
    Left = 408
    Top = 18
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 58
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid52: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_CHUCVU'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsChucvuCDoan
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGridColumn3: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_CHUCVU'
        Caption_UTF7 = 'M+AOM ch+Huk-c v+HuU'
      end
      object dxDBGridColumn4: TdxDBGridColumn
        Caption = 'T'#234'n ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 198
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_CHUCVU'
        Caption_UTF7 = 'T+AOo-n ch+Huk-c v+HuU'
      end
    end
    object ElPopupButton164: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton164Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton165: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton166: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup114: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem220: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid52
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup115: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem221: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton164
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem222: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton165
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem223: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton166
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcAcademicList: TdxLayoutControl [56]
    Left = 312
    Top = 120
    Width = 289
    Height = 201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 59
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid49: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ACADEMIC_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsAcademicList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid49ACADEMIC_NO: TdxDBGridColumn
        Caption = 'M'#227' tr'#236'nh '#273#7897
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACADEMIC_NO'
        Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q'
      end
      object dxDBGrid49ACADEMIC_NAME: TdxDBGridColumn
        Caption = 'Tr'#236'nh '#273#7897' v'#259'n h'#243'a'
        HeaderAlignment = taCenter
        Width = 192
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACADEMIC_NAME'
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q v+AQM-n h+APM-a'
      end
    end
    object ElPopupButton155: TElPopupButton
      Left = 2
      Top = 174
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
      OnClick = ElPopupButton155Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton156: TElPopupButton
      Left = 137
      Top = 174
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
    object ElPopupButton157: TElPopupButton
      Left = 212
      Top = 174
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
    object dxLayoutGroup108: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem208: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid49
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup109: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem209: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton155
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem210: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton156
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem211: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton157
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcMarrialStatus: TdxLayoutControl [57]
    Left = 408
    Top = 32
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 60
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid53: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'STATUS_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsMarrialStatus
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid53STATUS_ID: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid53STATUS_NAME: TdxDBGridColumn
        Caption = 'T'#236'nh tr'#7841'ng h'#244'n nh'#226'n'
        HeaderAlignment = taCenter
        Width = 205
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS_NAME'
        Caption_UTF7 = 'T+AOw-nh tr+HqE-ng h+APQ-n nh+AOI-n'
      end
    end
    object ElPopupButton167: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton167Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton168: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton169: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup116: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem224: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid53
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup117: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem225: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton167
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem226: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton168
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem227: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton169
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcEstimateGroup: TdxLayoutControl [58]
    Left = 176
    Top = 40
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 61
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid54: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'GROUP_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEstimateGroup
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid54GROUP_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid54GROUP_NAME: TdxDBGridColumn
        Caption = 'Ph'#226'n nh'#243'm'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NAME'
        Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
      end
    end
    object ElPopupButton170: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton170Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton171: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton172: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup118: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem228: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid54
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup119: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem229: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton170
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem230: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton171
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem231: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton172
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWorkShift: TdxLayoutControl [59]
    Left = 504
    Top = 24
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 63
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid56: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SHIFT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWorkShift
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid56SHIFT_NO: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHIFT_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxDBGrid56SHIFT_NAME: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Ca l'#224'm vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHIFT_NAME'
        Caption_UTF7 = 'Ca l+AOA-m vi+Hsc-c'
      end
    end
    object ElPopupButton176: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton176Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton177: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton178: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup122: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem236: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid56
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup123: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem237: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton176
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem238: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton177
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem239: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton178
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcOffWorkReason: TdxLayoutControl [60]
    Left = 376
    Top = 56
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 64
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid57: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'REASON_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsOffWorkReason
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid57REASON_NO: TdxDBGridColumn
        Caption = 'M'#227' nguy'#234'n nh'#226'n'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REASON_NO'
        Caption_UTF7 = 'M+AOM nguy+AOo-n nh+AOI-n'
      end
      object dxDBGrid57REASON_NAME: TdxDBGridColumn
        Caption = 'Nguy'#234'n nh'#226'n / l'#237' do ngh'#7881' vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 207
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REASON_NAME'
        Caption_UTF7 = 'Nguy+AOo-n nh+AOI-n / l+AO0 do ngh+Hsk vi+Hsc-c'
      end
    end
    object ElPopupButton179: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton179Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton180: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton181: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup124: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem240: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid57
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup125: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem241: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton179
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem242: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton180
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem243: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton181
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcCongcuTrangthai: TdxLayoutControl [61]
    Left = 464
    Top = 40
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 65
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid58: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_TRANGTHAI'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsCongcuTrangthai
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid58MA_TRANGTHAI: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_TRANGTHAI'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid58TEN_TRANGTHAI: TdxDBGridColumn
        Caption = 'T'#234'n tr'#7841'ng th'#225'i'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TRANGTHAI'
        Caption_UTF7 = 'T+AOo-n tr+HqE-ng th+AOE-i'
      end
    end
    object ElPopupButton182: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton182Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton183: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton184: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup126: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem244: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid58
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup127: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem245: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton182
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem246: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton183
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem247: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton184
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcCongcu: TdxLayoutControl [62]
    Left = 528
    Top = 16
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 66
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid59: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_CONGCU'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsCongcu
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid59MA_CONGCU: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_CONGCU'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid59TEN_CONGCU: TdxDBGridColumn
        Caption = 'C'#244'ng c'#7909' lao '#273#7897'ng'
        HeaderAlignment = taCenter
        Width = 201
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_CONGCU'
        Caption_UTF7 = 'C+APQ-ng c+HuU lao +AREe2Q-ng'
      end
    end
    object ElPopupButton185: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton185Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton186: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton187: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup128: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem248: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid59
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup129: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem249: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton185
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem250: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton186
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem251: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton187
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcLanguage: TdxLayoutControl [63]
    Left = 536
    Top = 16
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 67
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid60: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LANGUAGE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsLanguage
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid60LANGUAGE_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LANGUAGE_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid60LANGUAGE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n ngo'#7841'i ng'#7919
        HeaderAlignment = taCenter
        Width = 206
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LANGUAGE_NAME'
        Caption_UTF7 = 'T+AOo-n ngo+HqE-i ng+Hu8'
      end
    end
    object ElPopupButton188: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton188Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton189: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton190: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup130: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem252: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid60
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup131: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem253: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton188
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem254: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton189
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem255: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton190
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcSkill: TdxLayoutControl [64]
    Left = 544
    Top = 24
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 68
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid61: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SKILL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsSkillList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid61SKILL_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SKILL_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid61SKILL_NAME: TdxDBGridColumn
        Caption = 'T'#234'n k'#7929' n'#259'ng'
        HeaderAlignment = taCenter
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SKILL_NAME'
        Caption_UTF7 = 'T+AOo-n k+Hvk n+AQM-ng'
      end
    end
    object ElPopupButton191: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton191Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton192: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton193: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup132: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem256: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid61
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup133: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem257: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton191
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem258: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton192
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem259: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton193
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcLanguageLevel: TdxLayoutControl [65]
    Left = 552
    Top = 32
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 69
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid63: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LEVEL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsLanguageLevel
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid63LEVEL_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid63LEVEL_NAME: TdxDBGridColumn
        Caption = 'Tr'#236'nh '#273#7897' t'#432#417'ng '#7913'ng'
        HeaderAlignment = taCenter
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NAME'
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q t+AbABoQ-ng +Huk-ng'
      end
      object dxDBGrid63LEVEL_ORDER: TdxDBGridColumn
        Caption = 'Th'#7913' t'#7921
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_ORDER'
        Caption_UTF7 = 'Th+Huk t+HvE'
      end
    end
    object ElPopupButton197: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton197Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton198: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton199: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup136: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem264: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid63
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup137: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem265: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton197
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem266: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton198
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem267: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton199
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcSkillLevel: TdxLayoutControl [66]
    Left = 560
    Top = 40
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 70
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid62: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LEVEL_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsSkillLevel
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGridColumn5: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGridColumn6: TdxDBGridColumn
        Caption = 'Tr'#236'nh '#273#7897' t'#432#417'ng '#7913'ng'
        HeaderAlignment = taCenter
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NAME'
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q t+AbABoQ-ng +Huk-ng'
      end
      object dxDBGridColumn7: TdxDBGridColumn
        Caption = 'Th'#7913' t'#7921
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_ORDER'
        Caption_UTF7 = 'Th+Huk t+HvE'
      end
    end
    object ElPopupButton194: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton194Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton195: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton196: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup134: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem260: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid62
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup135: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem261: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton194
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem262: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton195
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem263: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton196
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcClass: TdxLayoutControl [67]
    Left = 496
    Top = 160
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 71
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid64: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CLASS_CODE'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsClass
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid64CLASS_CODE: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASS_CODE'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid64CLASS_NAME: TdxDBGridColumn
        Caption = 'T'#234'n l'#7899'p '#273#224'o t'#7841'o'
        HeaderAlignment = taCenter
        Width = 212
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASS_NAME'
        Caption_UTF7 = 'T+AOo-n l+Hts-p +AREA4A-o t+HqE-o'
      end
    end
    object ElPopupButton201: TElPopupButton
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
    object ElPopupButton202: TElPopupButton
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
    object dxLayoutGroup138: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem268: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid64
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup139: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem270: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton201
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem271: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton202
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcTrainingContent: TdxLayoutControl [68]
    Left = 368
    Top = 8
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 62
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid55: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONTENT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsTrainingContent
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid55CONTENT_NO: TdxDBGridColumn
        Caption = 'M'#227' n'#7897'i dung'
        HeaderAlignment = taCenter
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTENT_NO'
        Caption_UTF7 = 'M+AOM n+Htk-i dung'
      end
      object dxDBGrid55CONTENT_NAME: TdxDBGridColumn
        Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTENT_NAME'
        Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
      end
    end
    object ElPopupButton173: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton173Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton174: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton175: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup120: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem232: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid55
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup121: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem233: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton173
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem234: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton174
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem235: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton175
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcRecruitmentPlan: TdxLayoutControl [69]
    Left = 496
    Top = 202
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 72
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid65: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PLAN_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsRecruitmentPlan
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid56PLAN_NO: TdxDBGridColumn
        Caption = 'M'#227' '#273#7907't'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_NO'
        Caption_UTF7 = 'M+AOM +AREe4w-t'
      end
      object dxDBGrid56PLAN_NAME: TdxDBGridColumn
        Caption = 'T'#234'n '#273#7907't'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 199
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_NAME'
        Caption_UTF7 = 'T+AOo-n +AREe4w-t'
      end
    end
    object ElPopupButton200: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton203: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton204: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup140: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem269: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid65
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup141: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem272: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Visible = False
          Control = ElPopupButton200
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem273: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton203
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem274: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton204
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcFormalParam: TdxLayoutControl [70]
    Left = 536
    Top = 234
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 73
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid66: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PARAM_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsFormalParam
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid66PARAM_NO: TdxDBGridColumn
        Caption = 'M'#227' h'#7879' s'#7889
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NO'
        Caption_UTF7 = 'M+AOM h+Hsc s+HtE'
      end
      object dxDBGrid66PARAM_NAME: TdxDBGridColumn
        Caption = 'H'#7879' s'#7889' l'#432#417'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NAME'
        Caption_UTF7 = 'H+Hsc s+HtE l+AbABoQ-ng'
      end
    end
    object ElPopupButton205: TElPopupButton
      Left = 2
      Top = 223
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
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton206: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton207: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup142: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem275: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid66
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup143: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem276: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Visible = False
          Control = ElPopupButton205
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem277: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton206
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem278: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton207
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcDeptList: TdxLayoutControl [71]
    Left = 330
    Top = 224
    Width = 327
    Height = 281
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object btnShowDeptList: TElPopupButton
      Left = 2
      Top = 254
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      OnClick = btnShowDeptListClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton11: TElPopupButton
      Left = 175
      Top = 254
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton12: TElPopupButton
      Left = 250
      Top = 254
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
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxtlDeptList: TdxDBTreeList
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
      DataSource = dsDeptList
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnCustomDrawCell = dxtlDeptListCustomDrawCell
      object dxtlDeptListDEPT_NAME: TdxDBTreeListColumn
        Caption = 'T'#234'n t'#7893' ch'#7913'c - ph'#242'ng ban'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = 'T+AOo-n t+HtU ch+Huk-c - ph+API-ng ban'
      end
      object dxtlDeptListENDED_DATE: TdxDBTreeListDateColumn
        Caption = 'Ng'#224'y KT'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDED_DATE'
        Caption_UTF7 = 'Ng+AOA-y KT'
      end
    end
    object chkViewInvalidDept: TdxCheckEdit
      Left = 2
      Top = 231
      Width = 205
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Caption = 'Hi'#7875'n th'#7883' ph'#242'ng ban h'#7871't hi'#7879'u l'#7921'c'
      StyleController = dmMain.StyleController
      OnChange = chkViewInvalidDeptChange
    end
    object dxLayoutGroup4: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem5: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxtlDeptList
        ControlOptions.ShowBorder = False
      end
      object dxlcDeptListItem1: TdxLayoutItem
        Caption = 'New Item'
        ShowCaption = False
        Control = chkViewInvalidDept
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup5: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem9: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnShowDeptList
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton11
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem11: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton12
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcUserAccount: TdxLayoutControl [72]
    Left = 496
    Top = 304
    Width = 345
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 74
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid67: TdxDBGrid
      Left = 2
      Top = 2
      Width = 343
      Height = 204
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'USERACCID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsUserAccount
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid67USERACCID: TdxDBGridColumn
        Caption = 'T'#234'n '#273#259'ng nh'#7853'p'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USERACCID'
        Caption_UTF7 = 'T+AOo-n +AREBAw-ng nh+Hq0-p'
      end
      object dxDBGrid67DISPLAYNAME: TdxDBGridColumn
        Caption = 'T'#234'n ng'#432#7901'i d'#249'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 234
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISPLAYNAME'
        Caption_UTF7 = 'T+AOo-n ng+AbAe3Q-i d+APk-ng'
      end
    end
    object ElPopupButton208: TElPopupButton
      Left = 193
      Top = 158
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
    object ElPopupButton209: TElPopupButton
      Left = 268
      Top = 158
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
    object dxLayoutGroup144: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem279: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid67
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup145: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem280: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton208
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem281: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton209
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcEmp_Position: TdxLayoutControl [73]
    Left = 480
    Top = 184
    Width = 345
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid18: TdxDBGrid
      Left = 2
      Top = 2
      Width = 343
      Height = 204
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KEY_FIELD'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEmp_Position
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid18EMPLOYEE_NO: TdxDBGridColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object dxDBGrid18FULL_NAME: TdxDBGridColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        HeaderAlignment = taCenter
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object dxDBGrid18POSITION_TITLE: TdxDBGridColumn
        Caption = 'V'#7883' tr'#237' l'#224'm vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POSITION_TITLE'
        Caption_UTF7 = 'V+Hss tr+AO0 l+AOA-m vi+Hsc-c'
      end
      object dxDBGrid18ASSIGNED_DATE: TdxDBGridColumn
        Caption = 'Ng'#224'y nh'#7853'n CT'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ASSIGNED_DATE'
        Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n CT'
      end
    end
    object ElPopupButton62: TElPopupButton
      Left = 193
      Top = 158
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
    object ElPopupButton63: TElPopupButton
      Left = 268
      Top = 158
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
    object dxLayoutGroup40: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem79: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid18
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup41: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem81: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton62
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem82: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton63
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcBaoHiem_TinhThanhPho: TdxLayoutControl [74]
    Left = 558
    Top = 72
    Width = 300
    Height = 250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 75
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid68: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_TINH_THANHPHO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsBaoHiem_TinhThanhPho
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object dxDBGrid68MA_TINH_THANHPHO: TdxDBGridColumn
        Caption = 'M'#227' t'#7881'nh/th'#224'nh ph'#7889
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_TINH_THANHPHO'
        Caption_UTF7 = 'M+AOM t+Hsk-nh/th+AOA-nh ph+HtE'
      end
      object dxDBGrid68TEN_TINH_THANHPHO: TdxDBGridColumn
        Caption = 'T'#234'n t'#7881'nh/th'#224'nh ph'#7889
        HeaderAlignment = taCenter
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TINH_THANHPHO'
        Caption_UTF7 = 'T+AOo-n t+Hsk-nh/th+AOA-nh ph+HtE'
      end
    end
    object ElPopupButton210: TElPopupButton
      Left = 2
      Top = 223
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
      OnClick = ElPopupButton210Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton211: TElPopupButton
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton212: TElPopupButton
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup146: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem282: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid68
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup147: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem283: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton210
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem284: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton211
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem285: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton212
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcEmpForSelect: TdxLayoutControl [75]
    Left = 416
    Top = 256
    Width = 337
    Height = 241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid17: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EMPLOYEE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEmpForSelect
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid17EMPLOYEE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object dxDBGrid17FULL_NAME: TdxDBGridMaskColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        HeaderAlignment = taCenter
        Width = 128
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object dxDBGrid17GENDER: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Gi'#7899'i t'#237'nh'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GENDER'
        Descriptions.WideStrings = (
          'N'#7919
          'Nam')
        ImageIndexes.WideStrings = (
          '0'
          '1')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
      end
      object dxDBGrid17BIRTH_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y sinh'
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BIRTH_DATE'
        Caption_UTF7 = 'Ng+AOA-y sinh'
      end
      object dxDBGrid17EDU_LEVEL_NAME: TdxDBGridMaskColumn
        Caption = 'Tr'#236'nh '#273#7897' h'#7885'c v'#7845'n'
        HeaderAlignment = taCenter
        Visible = False
        Width = 4243
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_NAME'
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q h+Hs0-c v+HqU-n'
      end
      object dxDBGrid17CAREER_NAME: TdxDBGridMaskColumn
        Caption = 'Ngh'#7873' nghi'#7879'p'
        HeaderAlignment = taCenter
        Visible = False
        Width = 4243
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_NAME'
        Caption_UTF7 = 'Ngh+HsE nghi+Hsc-p'
      end
    end
    object ElPopupButton57: TElPopupButton
      Left = 185
      Top = 214
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
    object ElPopupButton58: TElPopupButton
      Left = 260
      Top = 214
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
    object dximOption: TdxImageEdit
      Left = 48
      Top = 214
      Width = 126
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dximOptionChange
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object dxLayoutGroup36: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem72: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid17
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup37: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxlcEmpForSelectItem1: TdxLayoutItem
          Caption = 'T'#249'y ch'#7885'n'
          Control = dximOption
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem74: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton57
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem75: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton58
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcWageCompany: TdxLayoutControl [76]
    Left = 545
    Top = 16
    Width = 305
    Height = 201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 76
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBGrid69: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WAGE_SCALE'
      ShowGroupPanel = True
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWageCompany
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGridColumn8: TdxDBGridColumn
        Caption = 'Ng'#7841'ch l'#432#417'ng'
        HeaderAlignment = taCenter
        Sorted = csDown
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_SCALE_NAME'
        GroupIndex = 0
        Caption_UTF7 = 'Ng+HqE-ch l+AbABoQ-ng'
      end
      object dxDBGridColumn9: TdxDBGridColumn
        Caption = 'B'#7853'c l'#432#417'ng'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_LEVEL'
        Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
      end
      object dxDBGridColumn10: TdxDBGridColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_COEFF'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGridColumn11: TdxDBGridColumn
        Caption = 'Th'#7901'i h'#7841'n'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOTION'
        Caption_UTF7 = 'Th+Ht0-i h+HqE-n'
      end
    end
    object ElPopupButton213: TElPopupButton
      Left = 153
      Top = 174
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
    object ElPopupButton214: TElPopupButton
      Left = 228
      Top = 174
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
    object ElPopupButton215: TElPopupButton
      Left = 2
      Top = 174
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup148: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem286: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid69
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup149: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutItem287: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton215
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem288: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton213
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem289: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton214
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
        Caption = 'Th'#432' vi'#7879'n Popup'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 150
    Top = 96
  end
  object qryDeptList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT A.DEPT_NO'
      '     , A.DEPT_TYPE_NO'
      '     , A.DEPT_TYPE_NAME'
      '     , A.DEPT_NAME     '
      '     , A.P_DEPT_NO'
      '     , (SELECT HR_DEPARTMENT.DEPT_NAME from HR_DEPARTMENT where '
      '        HR_DEPARTMENT.DEPT_NO=A.P_DEPT_NO) P_DEPT_NAME'
      '     , A.FOUNDED_DATE'
      '     , A.ENDED_DATE'
      '     , B.ORDER_RIGHT'
      '     , B.LEGAL_RIGHT'
      '     , B.DEPT_LOGO'
      '     , A.IMG_TYPE'
      '     , B.DEPT_ADDRESS'
      '     , B.DEPT_PHONE'
      '     , B.DEPT_EMAIL'
      '     , B.DEPT_WEBSITE'
      '     , B.DEPT_FAX'
      '     , B.DEPT_NOTE'
      '     , B.DEPT_LEFT_INDEX'
      '     , B.DEPT_RIGHT_INDEX'
      'FROM HR_MASK_ORG_MAP(:USER_NAME) A'
      'JOIN hr_department B on A.dept_no=B.dept_no'
      'where (A.ENDED_DATE is null)'
      'order by a.display_index, A.DEPT_NAME')
    FieldOptions = []
    Left = 254
    Top = 262
    object qryDeptListDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDeptListDEPT_TYPE_NO: TWideStringField
      FieldName = 'DEPT_TYPE_NO'
      Required = True
      Size = 15
    end
    object qryDeptListDEPT_TYPE_NAME: TWideStringField
      FieldName = 'DEPT_TYPE_NAME'
      Size = 63
    end
    object qryDeptListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 15
    end
    object qryDeptListP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDeptListP_DEPT_NAME: TWideStringField
      FieldName = 'P_DEPT_NAME'
      Required = True
      Size = 15
    end
    object qryDeptListFOUNDED_DATE: TDateField
      FieldName = 'FOUNDED_DATE'
    end
    object qryDeptListENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
    object qryDeptListDEPT_ADDRESS: TWideStringField
      FieldName = 'DEPT_ADDRESS'
      Size = 126
    end
    object qryDeptListDEPT_PHONE: TWideStringField
      FieldName = 'DEPT_PHONE'
      Size = 30
    end
    object qryDeptListDEPT_EMAIL: TWideStringField
      FieldName = 'DEPT_EMAIL'
      Size = 30
    end
    object qryDeptListDEPT_WEBSITE: TWideStringField
      FieldName = 'DEPT_WEBSITE'
      Size = 30
    end
    object qryDeptListDEPT_FAX: TWideStringField
      FieldName = 'DEPT_FAX'
      Size = 30
    end
    object qryDeptListDEPT_NOTE: TWideStringField
      FieldName = 'DEPT_NOTE'
      Size = 3072
    end
    object qryDeptListORDER_RIGHT: TSmallintField
      FieldName = 'ORDER_RIGHT'
    end
    object qryDeptListLEGAL_RIGHT: TSmallintField
      FieldName = 'LEGAL_RIGHT'
    end
    object qryDeptListDEPT_LOGO: TBlobField
      FieldName = 'DEPT_LOGO'
      Size = 8
    end
    object qryDeptListIMG_TYPE: TWideStringField
      FieldName = 'IMG_TYPE'
      Size = 15
    end
    object qryDeptListDEPT_LEFT_INDEX: TIntegerField
      FieldName = 'DEPT_LEFT_INDEX'
    end
    object qryDeptListDEPT_RIGHT_INDEX: TIntegerField
      FieldName = 'DEPT_RIGHT_INDEX'
    end
  end
  object dsDeptList: TDataSource
    DataSet = qryDeptList
    Left = 222
    Top = 262
  end
  object qryDeptTypeList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DEPT_TYPE_NO'
      '     , DEPT_TYPE_NAME'
      '     , DEPT_TYPE_NOTE'
      '     , PRESENT_COLOR'
      'FROM HR_DEPT_TYPE ')
    FieldOptions = []
    Left = 254
    Top = 249
    object qryDeptTypeListDEPT_TYPE_NO: TWideStringField
      FieldName = 'DEPT_TYPE_NO'
      Required = True
      Size = 15
    end
    object qryDeptTypeListDEPT_TYPE_NAME: TWideStringField
      FieldName = 'DEPT_TYPE_NAME'
      Required = True
      Size = 63
    end
    object qryDeptTypeListDEPT_TYPE_NOTE: TWideStringField
      FieldName = 'DEPT_TYPE_NOTE'
      Size = 3072
    end
    object qryDeptTypeListPRESENT_COLOR: TIntegerField
      FieldName = 'PRESENT_COLOR'
    end
  end
  object dsDeptTypeList: TDataSource
    DataSet = qryDeptTypeList
    Left = 222
    Top = 249
  end
  object qryTitleList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT TITLE_NO'
      '     , TITLE_NAME'
      '     , TITLE_NOTE'
      'FROM HR_TITLE')
    FieldOptions = []
    Left = 254
    Top = 283
    object qryTitleListTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Required = True
      Size = 15
    end
    object qryTitleListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryTitleListTITLE_NOTE: TWideStringField
      FieldName = 'TITLE_NOTE'
      Size = 3072
    end
  end
  object dsTitleList: TDataSource
    DataSet = qryTitleList
    Left = 222
    Top = 283
  end
  object qryWorkTypeList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WORK_TYPE_NO'
      '     , WORK_TYPE_NAME'
      '     , WORK_TYPE_NOTES'
      'FROM HR_WORK_TYPE')
    FieldOptions = []
    Left = 254
    Top = 296
    object qryWorkTypeListWORK_TYPE_NO: TWideStringField
      FieldName = 'WORK_TYPE_NO'
      Required = True
      Size = 15
    end
    object qryWorkTypeListWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Required = True
      Size = 30
    end
    object qryWorkTypeListWORK_TYPE_NOTES: TWideStringField
      FieldName = 'WORK_TYPE_NOTES'
      Size = 3072
    end
  end
  object dsWorkTypeList: TDataSource
    DataSet = qryWorkTypeList
    Left = 222
    Top = 296
  end
  object dsLocationType: TDataSource
    DataSet = qryLocationType
    Left = 222
    Top = 310
  end
  object qryLocationType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LOCATION_TYPE_NO'
      '     , LOCATION_TYPE_NAME'
      '     , LOCATION_TYPE_NOTE'
      'FROM HR_LOCATION_TYPE')
    FieldOptions = []
    Left = 254
    Top = 310
    object qryLocationTypeLOCATION_TYPE_NO: TWideStringField
      FieldName = 'LOCATION_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryLocationTypeLOCATION_TYPE_NAME: TWideStringField
      FieldName = 'LOCATION_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryLocationTypeLOCATION_TYPE_NOTE: TWideStringField
      FieldName = 'LOCATION_TYPE_NOTE'
      Size = 3072
    end
  end
  object qryNationList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT NATION_NO'
      '     , NATION_NAME'
      '     , NATION_NOTE'
      'FROM HR_NATION')
    FieldOptions = []
    Left = 254
    Top = 323
    object qryNationListNATION_NO: TWideStringField
      FieldName = 'NATION_NO'
      Required = True
      Size = 30
    end
    object qryNationListNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Required = True
      Size = 126
    end
    object qryNationListNATION_NOTE: TWideStringField
      FieldName = 'NATION_NOTE'
      Size = 3072
    end
  end
  object dsNationList: TDataSource
    DataSet = qryNationList
    Left = 222
    Top = 323
  end
  object dsCareerTypeList: TDataSource
    DataSet = qryCareerTypeList
    Left = 222
    Top = 336
  end
  object qryCareerTypeList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CAREER_TYPE_NO'
      '     , CAREER_TYPE_NAME'
      '     , CARRER_TYPE_NOTE'
      'FROM HR_CAREER_TYPE')
    FieldOptions = []
    Left = 254
    Top = 336
    object qryCareerTypeListCAREER_TYPE_NO: TWideStringField
      FieldName = 'CAREER_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryCareerTypeListCAREER_TYPE_NAME: TWideStringField
      FieldName = 'CAREER_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryCareerTypeListCARRER_TYPE_NOTE: TWideStringField
      FieldName = 'CARRER_TYPE_NOTE'
      Size = 3072
    end
  end
  object dsCurrencyList: TDataSource
    DataSet = qryCurrencyList
    Left = 222
    Top = 344
  end
  object qryCurrencyList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CURRENCY_NO'
      '     , CURRENCY_NAME'
      '     , CURRENCY_NOTE'
      'FROM HR_CURRENCY')
    FieldOptions = []
    Left = 254
    Top = 344
    object qryCurrencyListCURRENCY_NO: TWideStringField
      FieldName = 'CURRENCY_NO'
      Required = True
      Size = 30
    end
    object qryCurrencyListCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
    object qryCurrencyListCURRENCY_NOTE: TWideStringField
      FieldName = 'CURRENCY_NOTE'
      Size = 3072
    end
  end
  object dsRaceList: TDataSource
    DataSet = qryRaceList
    Left = 222
    Top = 360
  end
  object qryRaceList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT RACE_NO'
      '     , RACE_NAME'
      '     , RACE_NOTE'
      'FROM HR_RACE')
    FieldOptions = []
    Left = 254
    Top = 360
    object qryRaceListRACE_NO: TWideStringField
      FieldName = 'RACE_NO'
      Required = True
      Size = 30
    end
    object qryRaceListRACE_NAME: TWideStringField
      FieldName = 'RACE_NAME'
      Required = True
      Size = 30
    end
    object qryRaceListRACE_NOTE: TWideStringField
      FieldName = 'RACE_NOTE'
      Size = 3072
    end
  end
  object dsReligionList: TDataSource
    DataSet = qryReligionList
    Left = 222
    Top = 376
  end
  object qryReligionList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_RELIGION.RELIGION_NO')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT RELIGION_NO'
      '     , RELIGION_NAME'
      '     , RELIGION_NOTE'
      'FROM HR_RELIGION')
    FieldOptions = []
    Left = 254
    Top = 376
    object qryReligionListRELIGION_NO: TWideStringField
      FieldName = 'RELIGION_NO'
      Required = True
      Size = 30
    end
    object qryReligionListRELIGION_NAME: TWideStringField
      FieldName = 'RELIGION_NAME'
      Required = True
      Size = 30
    end
    object qryReligionListRELIGION_NOTE: TWideStringField
      FieldName = 'RELIGION_NOTE'
      Size = 3072
    end
  end
  object dsLocationList: TDataSource
    DataSet = qryLocationList
    Left = 144
    Top = 248
  end
  object qryLocationList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ITEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ITEM_ID'
      '     , P_ITEM_ID'
      '     , HR_NATION.NATION_NAME'
      '     , LOCATION_NO'
      '     , LOCATION_NAME'
      '     , LOCATION_FULL_NAME'
      'FROM HR_LOCATION'
      'JOIN HR_NATION ON HR_LOCATION.NATION_NO=HR_NATION.NATION_NO'
      '')
    FieldOptions = []
    Left = 176
    Top = 248
    object qryLocationListITEM_ID: TWideStringField
      FieldName = 'ITEM_ID'
      Required = True
      Size = 63
    end
    object qryLocationListP_ITEM_ID: TWideStringField
      FieldName = 'P_ITEM_ID'
      Size = 63
    end
    object qryLocationListNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Required = True
      Size = 126
    end
    object qryLocationListLOCATION_NO: TWideStringField
      FieldName = 'LOCATION_NO'
      Size = 30
    end
    object qryLocationListLOCATION_NAME: TWideStringField
      FieldName = 'LOCATION_NAME'
      Size = 126
    end
    object qryLocationListLOCATION_FULL_NAME: TWideStringField
      FieldName = 'LOCATION_FULL_NAME'
      Size = 126
    end
  end
  object dsDescentList: TDataSource
    DataSet = qryDescentList
    Left = 223
    Top = 390
  end
  object qryDescentList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DESCENT_NO'
      '     , DESCENT_NAME'
      '     , DESCENT_NOTE'
      'FROM HR_DESCENT_LIST')
    FieldOptions = []
    Left = 255
    Top = 390
    object qryDescentListDESCENT_NO: TWideStringField
      FieldName = 'DESCENT_NO'
      Required = True
      Size = 30
    end
    object qryDescentListDESCENT_NAME: TWideStringField
      FieldName = 'DESCENT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsEduLevelList: TDataSource
    DataSet = qryEduLevelList
    Left = 223
    Top = 406
  end
  object qryEduLevelList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT EDU_LEVEL_NO'
      '     , EDU_LEVEL_NAME'
      '     , EDU_LEVEL_GRADE'
      '     , EDU_LEVEL_NOTE'
      'FROM HR_EDU_LEVEL')
    FieldOptions = []
    Left = 255
    Top = 406
    object qryEduLevelListEDU_LEVEL_NO: TWideStringField
      FieldName = 'EDU_LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryEduLevelListEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryEduLevelListEDU_LEVEL_GRADE: TIntegerField
      FieldName = 'EDU_LEVEL_GRADE'
      Required = True
    end
    object qryEduLevelListEDU_LEVEL_NOTE: TWideStringField
      FieldName = 'EDU_LEVEL_NOTE'
      Size = 3072
    end
  end
  object dsCareerList: TDataSource
    DataSet = qryCareerList
    Left = 224
    Top = 440
  end
  object qryCareerList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CAREER_NO'
      '     , CAREER_NAME'
      '     , CARRER_NOTE'
      '     , CAREER_TYPE'
      '     , CAREER_TYPE_NAME'
      'FROM HR_CAREER'
      'LEFT JOIN HR_CAREER_TYPE ON CAREER_TYPE=CAREER_TYPE_NO')
    FieldOptions = []
    Left = 256
    Top = 440
    object qryCareerListCAREER_NO: TWideStringField
      FieldName = 'CAREER_NO'
      Required = True
      Size = 30
    end
    object qryCareerListCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Required = True
      Size = 126
    end
    object qryCareerListCARRER_NOTE: TWideStringField
      FieldName = 'CARRER_NOTE'
      Size = 3072
    end
    object qryCareerListCAREER_TYPE: TWideStringField
      FieldName = 'CAREER_TYPE'
      Size = 30
    end
    object qryCareerListCAREER_TYPE_NAME: TWideStringField
      FieldName = 'CAREER_TYPE_NAME'
      Size = 126
    end
  end
  object dsEduFieldList: TDataSource
    DataSet = qryEduFieldList
    Left = 216
    Top = 472
  end
  object qryEduFieldList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'EDU_FIELD_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT EDU_FIELD_NO'
      '     , EDU_FIELD_NAME'
      '     , EDU_FIELD_NOTE'
      'FROM HR_EDU_FIELD')
    FieldOptions = []
    Left = 248
    Top = 472
    object qryEduFieldListEDU_FIELD_NO: TWideStringField
      FieldName = 'EDU_FIELD_NO'
      Required = True
      Size = 30
    end
    object qryEduFieldListEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      Required = True
      Size = 30
    end
    object qryEduFieldListEDU_FIELD_NOTE: TWideStringField
      FieldName = 'EDU_FIELD_NOTE'
      Size = 3072
    end
  end
  object dsFieldLevelList: TDataSource
    DataSet = qryFieldLevelList
    Left = 80
    Top = 256
  end
  object qryFieldLevelList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EDU_FIELD_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT EDU_FIELD_NO'
      '     , FIELD_LEVEL_NO'
      '     , FIELD_LEVEL_NAME'
      '     , FIELD_LEVEL_GRADE'
      '     , FIELD_LEVEL_NOTE'
      'FROM HR_FIELD_LEVEL'
      'where EDU_FIELD_NO=:EDU_FIELD_NO')
    FieldOptions = []
    Left = 112
    Top = 256
    object qryFieldLevelListEDU_FIELD_NO: TWideStringField
      FieldName = 'EDU_FIELD_NO'
      Required = True
      Size = 30
    end
    object qryFieldLevelListFIELD_LEVEL_NO: TWideStringField
      FieldName = 'FIELD_LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryFieldLevelListFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryFieldLevelListFIELD_LEVEL_GRADE: TIntegerField
      FieldName = 'FIELD_LEVEL_GRADE'
      Required = True
    end
    object qryFieldLevelListFIELD_LEVEL_NOTE: TWideStringField
      FieldName = 'FIELD_LEVEL_NOTE'
      Size = 3072
    end
  end
  object dsDecisionType: TDataSource
    DataSet = qryDecisionType
    Left = 144
    Top = 280
  end
  object qryDecisionType: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LANGUAGE_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DCS_TYPE_NO'
      '     , DCS_TYPE_NAME'
      '     , REPORT_TEMPLATE_DEFAULT'
      '     , DOC_TEMPLATE_DEFAULT'
      '     , STT'
      '     , DOC_TEMPLATE_CONTENT '
      'FROM HR_MASK_DECISION_TYPE(:USER_NAME,:LANGUAGE_ID)'
      'order by STT')
    FieldOptions = []
    Left = 176
    Top = 280
    object qryDecisionTypeDCS_TYPE_NO: TWideStringField
      FieldName = 'DCS_TYPE_NO'
      Size = 30
    end
    object qryDecisionTypeDCS_TYPE_NAME: TWideStringField
      FieldName = 'DCS_TYPE_NAME'
      Size = 126
    end
    object qryDecisionTypeREPORT_TEMPLATE_DEFAULT: TWideStringField
      FieldName = 'REPORT_TEMPLATE_DEFAULT'
      Size = 63
    end
    object qryDecisionTypeDOC_TEMPLATE_DEFAULT: TWideStringField
      FieldName = 'DOC_TEMPLATE_DEFAULT'
      Size = 30
    end
    object qryDecisionTypeSTT: TIntegerField
      FieldName = 'STT'
    end
    object qryDecisionTypeDOC_TEMPLATE_CONTENT: TBlobField
      FieldName = 'DOC_TEMPLATE_CONTENT'
      Size = 8
    end
  end
  object qryEmpForSelect: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT '
      '   HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      ' , FULL_NAME'
      ' , GENDER'
      ' , BIRTH_DATE'
      ' , EDU_LEVEL_NAME'
      ' , CAREER_NAME'
      ' , EMAIL'
      ' , hr_mask_employee.id_card_no'
      ' , hr_mask_employee.passport'
      ' , hr_mask_employee.maso_thue_canhan'
      ' , title_name'
      'FROM HR_MASK_EMPLOYEE(:USER_NAME)'
      'LEFT JOIN HR_EMP_PRIVATE_INFO '
      
        '  on HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR_EMP_PRIVATE_INFO.EMPLOYEE_N' +
        'O'
      'LEFT JOIN HR_EDU_LEVEL on TRINH_DO=EDU_LEVEL_NO'
      'LEFT JOIN HR_CAREER on NGHE_NGHIEP=CAREER_NO'
      'where (IS_CADIDATE is null) or (IS_CADIDATE=0)')
    FieldOptions = []
    Left = 176
    Top = 312
    object qryEmpForSelectEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryEmpForSelectFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 96
    end
    object qryEmpForSelectGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryEmpForSelectBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryEmpForSelectEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Size = 126
    end
    object qryEmpForSelectCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 126
    end
    object qryEmpForSelectEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qryEmpForSelectID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryEmpForSelectPASSPORT: TWideStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object qryEmpForSelectMASO_THUE_CANHAN: TWideStringField
      FieldName = 'MASO_THUE_CANHAN'
      Size = 30
    end
    object qryEmpForSelectTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
  end
  object dsEmpForSelect: TDataSource
    DataSet = qryEmpForSelect
    Left = 144
    Top = 312
  end
  object qryPosition: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'POSITION_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT '
      '       HR_POSITION.POSITION_NO'
      '     , HR_POSITION.DEPT_NO'
      '     , HR_MASK_DEPT_LIST.DEPT_NAME'
      '     , HR_POSITION.TITLE_NO'
      '     , HR_TITLE.TITLE_NAME '
      '     , HR_POSITION.WORK_TYPE_NO'
      '     , HR_WORK_TYPE.WORK_TYPE_NAME'
      '     , HR_POSITION.P_POSITION_NO'
      '     , HR_POSITION.POS_NOTE'
      '     , HR_POSITION.POS_ALLOWANCE'
      
        '     , HR_TITLE.TITLE_NAME||'#39' - '#39'||HR_MASK_DEPT_LIST.DEPT_NAME P' +
        'OSITION_TITLE'
      'FROM HR_POSITION'
      'JOIN HR_MASK_DEPT_LIST(:USER_NAME,null,null)'
      '  ON HR_POSITION.DEPT_NO=HR_MASK_DEPT_LIST.DEPT_NO'
      'JOIN HR_TITLE on HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      
        'LEFT JOIN HR_WORK_TYPE on HR_POSITION.WORK_TYPE_NO=HR_WORK_TYPE.' +
        'WORK_TYPE_NO')
    FieldOptions = []
    Left = 176
    Top = 344
    object qryPositionDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryPositionDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryPositionTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Required = True
      Size = 15
    end
    object qryPositionTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryPositionWORK_TYPE_NO: TWideStringField
      FieldName = 'WORK_TYPE_NO'
      Required = True
      Size = 15
    end
    object qryPositionPOS_NOTE: TWideStringField
      FieldName = 'POS_NOTE'
      Size = 3072
    end
    object qryPositionPOS_ALLOWANCE: TIBOFloatField
      FieldName = 'POS_ALLOWANCE'
    end
    object qryPositionWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Required = True
      Size = 30
    end
    object qryPositionPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryPositionP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object qryPositionPOSITION_TITLE: TWideStringField
      FieldName = 'POSITION_TITLE'
      ReadOnly = True
      Required = True
      Size = 255
    end
  end
  object dsPosition: TDataSource
    DataSet = qryPosition
    Left = 144
    Top = 344
  end
  object qryEmp_Position: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'IS_MAIN_POSITION=2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IS_MAIN_POSITION'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_ASSIGNMENT.ass_key_id')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryEmp_PositionBeforeOpen
    SQL.Strings = (
      'SELECT HR_ASSIGNMENT.ass_key_id,'
      '    HR_ASSIGNMENT.EMPLOYEE_NO'
      '     , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'||FIRST_NAME FULL_NAME'
      '     , HR_ASSIGNMENT.POSITION_NO'
      
        '     , HR_TITLE.TITLE_NAME||'#39' - '#39'||HR_DEPARTMENT.DEPT_NAME POSIT' +
        'ION_TITLE'
      '     , HR_ASSIGNMENT.ASSIGNED_DATE'
      '     , HR_ASSIGNMENT.IS_MAIN_POSITION'
      '     , DEPT_NAME'
      '     , TITLE_NAME'
      
        '     , HR_ASSIGNMENT.EMPLOYEE_NO || '#39' '#39' || HR_TITLE.TITLE_NO||'#39' ' +
        '- '#39'||HR_DEPARTMENT.DEPT_NO || '#39' '#39' || HR_ASSIGNMENT.ASSIGNED_DATE' +
        ' KEY_FIELD'
      'FROM HR_ASSIGNMENT'
      'LEFT JOIN HR_EMPLOYEE '
      ' on HR_ASSIGNMENT.EMPLOYEE_NO=HR_EMPLOYEE.EMPLOYEE_NO'
      'left JOIN HR_POSITION '
      ' on HR_ASSIGNMENT.POSITION_NO=HR_POSITION.POSITION_NO'
      'left JOIN HR_TITLE ON HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      
        'left JOIN HR_DEPARTMENT ON HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEP' +
        'T_NO '
      ''
      'where (DISMISS_DATE is null)'
      
        '    and ((:IS_MAIN_POSITION=2)or(IS_MAIN_POSITION=:IS_MAIN_POSIT' +
        'ION))')
    FieldOptions = []
    Left = 177
    Top = 376
    object qryEmp_PositionEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmp_PositionFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryEmp_PositionPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryEmp_PositionPOSITION_TITLE: TWideStringField
      FieldName = 'POSITION_TITLE'
      ReadOnly = True
      Size = 255
    end
    object qryEmp_PositionASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
      Required = True
    end
    object qryEmp_PositionIS_MAIN_POSITION: TSmallintField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryEmp_PositionDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryEmp_PositionTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmp_PositionKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      ReadOnly = True
      Size = 105
    end
    object qryEmp_PositionASS_KEY_ID: TIntegerField
      FieldName = 'ASS_KEY_ID'
      Required = True
    end
  end
  object dsEmp_Position: TDataSource
    DataSet = qryEmp_Position
    Left = 145
    Top = 376
  end
  object dsRewardList: TDataSource
    DataSet = qryRewardList
    Left = 144
    Top = 408
  end
  object qryRewardList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT REWARD_LIST_NO'
      '     , REWARD_LIST_NAME'
      '     , REWARD_NOTE'
      'FROM HR_REWARD_LIST')
    FieldOptions = []
    Left = 178
    Top = 408
    object qryRewardListREWARD_LIST_NO: TWideStringField
      FieldName = 'REWARD_LIST_NO'
      Required = True
      Size = 30
    end
    object qryRewardListREWARD_LIST_NAME: TWideStringField
      FieldName = 'REWARD_LIST_NAME'
      Required = True
      Size = 126
    end
    object qryRewardListREWARD_NOTE: TWideStringField
      FieldName = 'REWARD_NOTE'
      Size = 3072
    end
  end
  object dsRewardForm: TDataSource
    DataSet = qryRewardForm
    Left = 144
    Top = 440
  end
  object qryRewardForm: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT REWARD_NO'
      '     , REWARD_NAME'
      '     , REWARD_LEVEL'
      '     , REWARD_NOTE'
      'FROM HR_REWARD_FORM')
    FieldOptions = []
    Left = 176
    Top = 440
    object qryRewardFormREWARD_NO: TWideStringField
      FieldName = 'REWARD_NO'
      Required = True
      Size = 30
    end
    object qryRewardFormREWARD_NAME: TWideStringField
      FieldName = 'REWARD_NAME'
      Required = True
      Size = 126
    end
    object qryRewardFormREWARD_LEVEL: TIntegerField
      FieldName = 'REWARD_LEVEL'
      Required = True
    end
    object qryRewardFormREWARD_NOTE: TWideStringField
      FieldName = 'REWARD_NOTE'
      Size = 3072
    end
  end
  object dsDisciplineList: TDataSource
    DataSet = qryDisciplineList
    Left = 144
    Top = 472
  end
  object qryDisciplineList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DISC_LIST_NO'
      '     , DISC_LIST_NAME'
      '     , DISC_LIST_NOTE'
      'FROM HR_DISCIPLINE_LIST')
    FieldOptions = []
    Left = 176
    Top = 472
    object qryDisciplineListDISC_LIST_NO: TWideStringField
      FieldName = 'DISC_LIST_NO'
      Required = True
      Size = 30
    end
    object qryDisciplineListDISC_LIST_NAME: TWideStringField
      FieldName = 'DISC_LIST_NAME'
      Required = True
      Size = 126
    end
    object qryDisciplineListDISC_LIST_NOTE: TWideStringField
      FieldName = 'DISC_LIST_NOTE'
      Size = 3072
    end
  end
  object dsDisciplineForm: TDataSource
    DataSet = qryDisciplineForm
    Left = 8
    Top = 256
  end
  object qryDisciplineForm: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DISC_NO'
      '     , DISC_NAME'
      '     , DISC_LEVEL'
      '     , DISC_NOTE'
      'FROM HR_DISCIPLINE_FORM')
    FieldOptions = []
    Left = 40
    Top = 256
    object qryDisciplineFormDISC_NO: TWideStringField
      FieldName = 'DISC_NO'
      Required = True
      Size = 30
    end
    object qryDisciplineFormDISC_NAME: TWideStringField
      FieldName = 'DISC_NAME'
      Required = True
      Size = 126
    end
    object qryDisciplineFormDISC_LEVEL: TIntegerField
      FieldName = 'DISC_LEVEL'
      Required = True
    end
    object qryDisciplineFormDISC_NOTE: TWideStringField
      FieldName = 'DISC_NOTE'
      Size = 3072
    end
  end
  object dsDecisionLevel: TDataSource
    DataSet = qryDecisionLevel
    Left = 8
    Top = 288
  end
  object qryDecisionLevel: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LEVEL_NO'
      '     , LEVEL_NAME'
      '     , LEVEL_INDEX'
      '     , LEVEL_NOTE'
      'FROM HR_DECISION_LEVEL')
    FieldOptions = []
    Left = 40
    Top = 288
    object qryDecisionLevelLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryDecisionLevelLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryDecisionLevelLEVEL_INDEX: TIntegerField
      FieldName = 'LEVEL_INDEX'
    end
    object qryDecisionLevelLEVEL_NOTE: TWideStringField
      FieldName = 'LEVEL_NOTE'
      Size = 3072
    end
  end
  object dsReportTemplateList: TDataSource
    DataSet = qryReportTemplateList
    Left = 80
    Top = 288
  end
  object qryReportTemplateList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TEMPLATE_TYPE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT TEMPLATE_NO'
      '     , TEMPLATE_NAME'
      '     , TEMPLATE_FILE'
      '     , TEMPLATE_NOTE'
      'FROM HR_REPORT_TEMPLATE'
      'where TEMPLATE_TYPE=:TEMPLATE_TYPE')
    FieldOptions = []
    Left = 112
    Top = 288
    object qryReportTemplateListTEMPLATE_NO: TWideStringField
      FieldName = 'TEMPLATE_NO'
      Required = True
      Size = 30
    end
    object qryReportTemplateListTEMPLATE_NAME: TWideStringField
      FieldName = 'TEMPLATE_NAME'
      Required = True
      Size = 126
    end
    object qryReportTemplateListTEMPLATE_FILE: TWideStringField
      FieldName = 'TEMPLATE_FILE'
      Required = True
      Size = 126
    end
    object qryReportTemplateListTEMPLATE_NOTE: TWideStringField
      FieldName = 'TEMPLATE_NOTE'
      Size = 3072
    end
  end
  object qryDocTemplate: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'TEMPLATE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT TEMPLATE_NO'
      '     , TEMPLATE_NAME'
      '     , TEMPLATE_CONTENT'
      'FROM HR_DOC_TEMPLATE')
    FieldOptions = []
    Left = 40
    Top = 320
    object qryDocTemplateTEMPLATE_NO: TWideStringField
      FieldName = 'TEMPLATE_NO'
      Required = True
      Size = 30
    end
    object qryDocTemplateTEMPLATE_NAME: TWideStringField
      FieldName = 'TEMPLATE_NAME'
      Required = True
      Size = 126
    end
    object qryDocTemplateTEMPLATE_CONTENT: TBlobField
      FieldName = 'TEMPLATE_CONTENT'
      Size = 8
    end
  end
  object dsDocTemplate: TDataSource
    DataSet = qryDocTemplate
    Left = 8
    Top = 320
  end
  object dsContractType: TDataSource
    DataSet = qryContractType
    Left = 80
    Top = 320
  end
  object qryContractType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'CONTRACT_TYPE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CONTRACT_TYPE_NO'
      '     , CONTRACT_TYPE_NAME'
      '     , REPORT_DEFAULT'
      '     , DOC_DEFAULT'
      '     , TEMPLATE_NAME DOC_DEFAULT_NAME '
      '     , TEMPLATE_CONTENT  '
      '     , TIME_LIMIT'
      '     , TIME_UNIT'
      'FROM HR_CONTRACT_TYPE'
      'LEFT JOIN HR_DOC_TEMPLATE on DOC_DEFAULT=TEMPLATE_NO')
    FieldOptions = []
    Left = 112
    Top = 320
    object qryContractTypeCONTRACT_TYPE_NO: TWideStringField
      FieldName = 'CONTRACT_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryContractTypeCONTRACT_TYPE_NAME: TWideStringField
      FieldName = 'CONTRACT_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryContractTypeREPORT_DEFAULT: TWideStringField
      FieldName = 'REPORT_DEFAULT'
      Size = 30
    end
    object qryContractTypeDOC_DEFAULT: TWideStringField
      FieldName = 'DOC_DEFAULT'
      Size = 30
    end
    object qryContractTypeDOC_DEFAULT_NAME: TWideStringField
      FieldName = 'DOC_DEFAULT_NAME'
      Size = 126
    end
    object qryContractTypeTEMPLATE_CONTENT: TBlobField
      FieldName = 'TEMPLATE_CONTENT'
      Size = 8
    end
    object qryContractTypeTIME_LIMIT: TIntegerField
      FieldName = 'TIME_LIMIT'
      Required = True
    end
    object qryContractTypeTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
      Required = True
    end
  end
  object qryContractList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_CONTRACT.CONTRACT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CONTRACT_NO'
      '     , CONTRACT_NAME'
      '     , STARTED_DATE'
      'FROM HR_CONTRACT')
    FieldOptions = []
    Left = 112
    Top = 352
    object qryContractListCONTRACT_NO: TWideStringField
      FieldName = 'CONTRACT_NO'
      Required = True
      Size = 30
    end
    object qryContractListCONTRACT_NAME: TWideStringField
      FieldName = 'CONTRACT_NAME'
      Required = True
      Size = 126
    end
    object qryContractListSTARTED_DATE: TDateField
      FieldName = 'STARTED_DATE'
      Required = True
    end
  end
  object dsContractList: TDataSource
    DataSet = qryContractList
    Left = 80
    Top = 352
  end
  object qryWorkDateType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WDT_NO'
      '     , WDT_NAME'
      '     , WDT_RATE'
      '     , WDT_COLOR'
      '     , WDT_NOTE'
      '     , ORDER_INDEX'
      'FROM HR_WORK_DATE_TYPE'
      'order by ORDER_INDEX')
    FieldOptions = []
    Left = 226
    Top = 8
    object qryWorkDateTypeWDT_NO: TWideStringField
      FieldName = 'WDT_NO'
      Required = True
      Size = 30
    end
    object qryWorkDateTypeWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      Required = True
      Size = 126
    end
    object qryWorkDateTypeWDT_RATE: TIBOFloatField
      FieldName = 'WDT_RATE'
    end
    object qryWorkDateTypeWDT_COLOR: TIntegerField
      FieldName = 'WDT_COLOR'
    end
    object qryWorkDateTypeWDT_NOTE: TWideStringField
      FieldName = 'WDT_NOTE'
      Size = 3072
    end
  end
  object dsWorkDateType: TDataSource
    DataSet = qryWorkDateType
    Left = 226
    Top = 40
  end
  object qryWorkHourType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WHT_NO'
      '     , WHT_NAME'
      '     , WHT_RATE'
      '     , WHT_COLOR'
      '     , WHT_NOTE'
      '     , ORDER_INDEX'
      'FROM HR_WORK_HOUR_TYPE'
      'order by ORDER_INDEX')
    FieldOptions = []
    Left = 268
    Top = 8
    object qryWorkHourTypeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryWorkHourTypeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
    object qryWorkHourTypeWHT_RATE: TIBOFloatField
      FieldName = 'WHT_RATE'
    end
    object qryWorkHourTypeWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
    object qryWorkHourTypeWHT_NOTE: TWideStringField
      FieldName = 'WHT_NOTE'
      Size = 3072
    end
  end
  object dsWorkHourType: TDataSource
    DataSet = qryWorkHourType
    Left = 268
    Top = 40
  end
  object qryCalendar: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CALENDAR_NO'
      '     , CALENDAR_NAME'
      '     , CALENDAR_DEFAULT'
      '     , CALENDAR_NOTE'
      'FROM HR_CALENDAR')
    FieldOptions = []
    Left = 40
    Top = 352
    object qryCalendarCALENDAR_NO: TWideStringField
      FieldName = 'CALENDAR_NO'
      Required = True
      Size = 30
    end
    object qryCalendarCALENDAR_NAME: TWideStringField
      FieldName = 'CALENDAR_NAME'
      Required = True
      Size = 126
    end
    object qryCalendarCALENDAR_DEFAULT: TIntegerField
      FieldName = 'CALENDAR_DEFAULT'
    end
    object qryCalendarCALENDAR_NOTE: TWideStringField
      FieldName = 'CALENDAR_NOTE'
      Size = 3072
    end
  end
  object dsCalendar: TDataSource
    DataSet = qryCalendar
    Left = 40
    Top = 384
  end
  object qryWageElementType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ELEMENT_TYPE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ELEMENT_TYPE_NO'
      '     , ELEMENT_TYPE_NAME'
      '     , ELEMENT_TYPE_NOTE'
      '     , ORDER_INDEX'
      '     , COLOR'
      'FROM HR_WAGE_ELEMENT_TYPE'
      'where ELEMENT_TYPE_NO<>'#39'HETHONG'#39
      'order by ORDER_INDEX')
    FieldOptions = []
    Left = 74
    Top = 408
    object qryWageElementTypeELEMENT_TYPE_NO: TWideStringField
      FieldName = 'ELEMENT_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryWageElementTypeELEMENT_TYPE_NAME: TWideStringField
      FieldName = 'ELEMENT_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryWageElementTypeELEMENT_TYPE_NOTE: TWideStringField
      FieldName = 'ELEMENT_TYPE_NOTE'
      Size = 3072
    end
    object qryWageElementTypeORDER_INDEX: TSmallintField
      FieldName = 'ORDER_INDEX'
    end
    object qryWageElementTypeCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object dsWageElementType: TDataSource
    DataSet = qryWageElementType
    Left = 74
    Top = 440
  end
  object qryWageElement: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ELEMENT_TYPE'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_WAGE_ELEMENT.ELEMENT_NO')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ELEMENT_NO'
      '     , ELEMENT_NAME'
      'FROM HR_WAGE_ELEMENT'
      'where ELEMENT_TYPE=:ELEMENT_TYPE')
    FieldOptions = []
    Left = 114
    Top = 408
    object qryWageElementELEMENT_NO: TWideStringField
      FieldName = 'ELEMENT_NO'
      Required = True
      Size = 63
    end
    object qryWageElementELEMENT_NAME: TWideStringField
      FieldName = 'ELEMENT_NAME'
      Required = True
      Size = 126
    end
  end
  object dsWageElement: TDataSource
    DataSet = qryWageElement
    Left = 114
    Top = 440
  end
  object qryWageStandard: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WAGE_SCALE'
      '     , CAREER_NAME'
      '     , WAGE_LEVEL'
      '     , WAGE_COEFF'
      '     , PROMOTION'
      'FROM HR_WAGE_STANDARD'
      'JOIN HR_CAREER on WAGE_SCALE=CAREER_NO'
      'order by WAGE_SCALE,WAGE_LEVEL')
    FieldOptions = []
    Left = 34
    Top = 408
    object qryWageStandardWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Required = True
      Size = 30
    end
    object qryWageStandardCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Required = True
      Size = 126
    end
    object qryWageStandardWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
      Required = True
    end
    object qryWageStandardWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
    end
    object qryWageStandardPROMOTION: TIntegerField
      FieldName = 'PROMOTION'
    end
  end
  object dsWageStandard: TDataSource
    DataSet = qryWageStandard
    Left = 34
    Top = 440
  end
  object qryRelationship: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT RELATIONSHIP_NO'
      '     , RELATIONSHIP_NAME'
      '     , RELATIONSHIP_TYPE'
      'FROM HR_RELATIONSHIP')
    FieldOptions = []
    Left = 226
    Top = 72
    object qryRelationshipRELATIONSHIP_NO: TWideStringField
      FieldName = 'RELATIONSHIP_NO'
      Required = True
      Size = 30
    end
    object qryRelationshipRELATIONSHIP_NAME: TWideStringField
      FieldName = 'RELATIONSHIP_NAME'
      Required = True
      Size = 126
    end
    object qryRelationshipRELATIONSHIP_TYPE: TSmallintField
      FieldName = 'RELATIONSHIP_TYPE'
    end
  end
  object dsRelationship: TDataSource
    DataSet = qryRelationship
    Left = 226
    Top = 104
  end
  object qryEstimateSystem: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'SYS_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SYS_NO'
      '     , SYS_NAME'
      'FROM HR_SYS_ESTIMATE')
    FieldOptions = []
    Left = 328
    Top = 16
    object qryEstimateSystemSYS_NO: TWideStringField
      FieldName = 'SYS_NO'
      Required = True
      Size = 30
    end
    object qryEstimateSystemSYS_NAME: TWideStringField
      FieldName = 'SYS_NAME'
      Required = True
      Size = 126
    end
  end
  object dsEstimateSystem: TDataSource
    DataSet = qryEstimateSystem
    Left = 328
    Top = 48
  end
  object qryAccidentType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACCIDENT_TYPE_NO'
      '     , ACCIDENT_TYPE_NAME'
      'FROM HR_ACCIDENT_TYPE')
    FieldOptions = []
    Left = 320
    Top = 360
    object qryAccidentTypeACCIDENT_TYPE_NO: TWideStringField
      FieldName = 'ACCIDENT_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryAccidentTypeACCIDENT_TYPE_NAME: TWideStringField
      FieldName = 'ACCIDENT_TYPE_NAME'
      Size = 126
    end
  end
  object dsAccidentType: TDataSource
    DataSet = qryAccidentType
    Left = 288
    Top = 360
  end
  object dsAccidentReason: TDataSource
    DataSet = qryAccidentReason
    Left = 288
    Top = 400
  end
  object qryAccidentReason: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACCIDENT_REASON_NO'
      '     , ACCIDENT_REASON_NAME'
      'FROM HR_ACCIDENT_REASON')
    FieldOptions = []
    Left = 320
    Top = 400
    object qryAccidentReasonACCIDENT_REASON_NO: TWideStringField
      FieldName = 'ACCIDENT_REASON_NO'
      Required = True
      Size = 30
    end
    object qryAccidentReasonACCIDENT_REASON_NAME: TWideStringField
      FieldName = 'ACCIDENT_REASON_NAME'
      Size = 126
    end
  end
  object dsConsequence: TDataSource
    DataSet = qryConsequence
    Left = 288
    Top = 432
  end
  object qryConsequence: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CONSEQUENCE_NO'
      '     , CONSEQUENCE_NAME'
      'FROM HR_CONSEQUENCE')
    FieldOptions = []
    Left = 320
    Top = 432
    object qryConsequenceCONSEQUENCE_NO: TWideStringField
      FieldName = 'CONSEQUENCE_NO'
      Required = True
      Size = 30
    end
    object qryConsequenceCONSEQUENCE_NAME: TWideStringField
      FieldName = 'CONSEQUENCE_NAME'
      Size = 126
    end
  end
  object dsFurloughReason: TDataSource
    DataSet = qryFurloughReason
    Left = 288
    Top = 464
  end
  object qryFurloughReason: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT FURLOUGH_REASON_NO'
      '     , FURLOUGH_REASON_NAME'
      '     , HE_SO'
      'FROM HR_FURLOUGH_REASON')
    FieldOptions = []
    Left = 320
    Top = 464
    object qryFurloughReasonFURLOUGH_REASON_NO: TWideStringField
      FieldName = 'FURLOUGH_REASON_NO'
      Required = True
      Size = 30
    end
    object qryFurloughReasonFURLOUGH_REASON_NAME: TWideStringField
      FieldName = 'FURLOUGH_REASON_NAME'
      Size = 126
    end
    object qryFurloughReasonHE_SO: TIBOFloatField
      FieldName = 'HE_SO'
    end
  end
  object qryEstimateStage: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_ESTIMATE_STAGE.STAGE_NO')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT STAGE_NO'
      '     , STAGE_NAME'
      'FROM HR_ESTIMATE_STAGE ')
    FieldOptions = []
    Left = 320
    Top = 326
    object qryEstimateStageSTAGE_NO: TWideStringField
      FieldName = 'STAGE_NO'
      Required = True
      Size = 30
    end
    object qryEstimateStageSTAGE_NAME: TWideStringField
      FieldName = 'STAGE_NAME'
      Required = True
      Size = 126
    end
  end
  object dsEstimateStage: TDataSource
    DataSet = qryEstimateStage
    Left = 288
    Top = 326
  end
  object qryTrainingType: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT TYPE_NO'
      '     , TYPE_NAME'
      '     , NOTE'
      'FROM HR_TRAINING_TYPE ')
    FieldOptions = []
    Left = 440
    Top = 8
    object qryTrainingTypeTYPE_NO: TWideStringField
      FieldName = 'TYPE_NO'
      Required = True
      Size = 30
    end
    object qryTrainingTypeTYPE_NAME: TWideStringField
      FieldName = 'TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingTypeNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsTrainingType: TDataSource
    DataSet = qryTrainingType
    Left = 440
    Top = 40
  end
  object qryTrainingForm: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT FORM_NO'
      '     , FORM_NAME'
      '     , NOTE'
      'FROM HR_TRAINING_FORM')
    FieldOptions = []
    Left = 456
    Top = 8
    object qryTrainingFormFORM_NO: TWideStringField
      FieldName = 'FORM_NO'
      Required = True
      Size = 30
    end
    object qryTrainingFormFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingFormNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsTrainingForm: TDataSource
    DataSet = qryTrainingForm
    Left = 456
    Top = 40
  end
  object qryTrainingSource: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SOURCE_NO'
      '     , SOURCE_NAME'
      '     , NOTE'
      'FROM HR_TRAINING_SOURCE')
    FieldOptions = []
    Left = 488
    Top = 8
    object qryTrainingSourceSOURCE_NO: TWideStringField
      FieldName = 'SOURCE_NO'
      Required = True
      Size = 30
    end
    object qryTrainingSourceSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingSourceNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsTrainingSource: TDataSource
    DataSet = qryTrainingSource
    Left = 488
    Top = 40
  end
  object qryTrainingSupply: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_SUPPLY'
      'WHERE'
      '   SUPPLY_NO = :OLD_SUPPLY_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_SUPPLY SET'
      '   SUPPLY_NO = :SUPPLY_NO, /*PK*/'
      '   SUPPLY_NAME = :SUPPLY_NAME,'
      '   SUPPLY_NOTE = :SUPPLY_NOTE'
      'WHERE'
      '   SUPPLY_NO = :OLD_SUPPLY_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_SUPPLY('
      '   SUPPLY_NO, /*PK*/'
      '   SUPPLY_NAME,'
      '   SUPPLY_NOTE)'
      'VALUES ('
      '   :SUPPLY_NO,'
      '   :SUPPLY_NAME,'
      '   :SUPPLY_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SUPPLY_NO'
      '     , SUPPLY_NAME'
      '     , SUPPLY_NOTE'
      'FROM HR_TRAINING_SUPPLY')
    FieldOptions = []
    Left = 256
    Top = 136
    object qryTrainingSupplySUPPLY_NO: TWideStringField
      FieldName = 'SUPPLY_NO'
      Required = True
      Size = 30
    end
    object qryTrainingSupplySUPPLY_NAME: TWideStringField
      FieldName = 'SUPPLY_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingSupplySUPPLY_NOTE: TWideStringField
      FieldName = 'SUPPLY_NOTE'
      Size = 3072
    end
  end
  object dsTrainingSupply: TDataSource
    DataSet = qryTrainingSupply
    Left = 224
    Top = 136
  end
  object qryOrgList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ORG_NO'
      '     , ORG_NAME'
      '     , ORG_NOTE'
      'FROM HR_ORGANIZATION')
    FieldOptions = []
    Left = 256
    Top = 168
    object qryOrgListORG_NO: TWideStringField
      FieldName = 'ORG_NO'
      Required = True
      Size = 30
    end
    object qryOrgListORG_NAME: TWideStringField
      FieldName = 'ORG_NAME'
      Required = True
      Size = 126
    end
    object qryOrgListORG_NOTE: TWideStringField
      FieldName = 'ORG_NOTE'
      Size = 3072
    end
  end
  object dsOrgList: TDataSource
    DataSet = qryOrgList
    Left = 224
    Top = 168
  end
  object qryDotKCB: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ma_so_dot'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_SO_DOT'
      '     , TEN_DOT'
      'FROM HR_DOT_KHAM_CHUA_BENH'
      'where ma_so_dot <> :ma_so_dot')
    FieldOptions = []
    Left = 364
    Top = 400
    object qryDotKCBMA_SO_DOT: TWideStringField
      FieldName = 'MA_SO_DOT'
      Required = True
      Size = 30
    end
    object qryDotKCBTEN_DOT: TWideStringField
      FieldName = 'TEN_DOT'
      Required = True
      Size = 126
    end
  end
  object dsDotKCB: TDataSource
    DataSet = qryDotKCB
    Left = 364
    Top = 432
  end
  object qryRecruitmentSource: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SOURCE_NO'
      '     , SOURCE_NAME'
      '     , NOTE'
      'FROM HR_RECRUIMENT_SOURCE')
    FieldOptions = []
    Left = 284
    Top = 216
    object qryRecruitmentSourceSOURCE_NO: TWideStringField
      FieldName = 'SOURCE_NO'
      Required = True
      Size = 30
    end
    object qryRecruitmentSourceSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Required = True
      Size = 126
    end
    object qryRecruitmentSourceNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsRecruitmentSource: TDataSource
    DataSet = qryRecruitmentSource
    Left = 284
    Top = 248
  end
  object qryWageFormular: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT FORMULAR_NO'
      '     , FORMULAR_NAME'
      'FROM HR_WAGE_FORMULAR')
    FieldOptions = []
    Left = 292
    Top = 144
    object qryWageFormularFORMULAR_NO: TWideStringField
      FieldName = 'FORMULAR_NO'
      Required = True
      Size = 63
    end
    object qryWageFormularFORMULAR_NAME: TWideStringField
      FieldName = 'FORMULAR_NAME'
      Required = True
      Size = 126
    end
  end
  object dsWageFormular: TDataSource
    DataSet = qryWageFormular
    Left = 292
    Top = 176
  end
  object qryTrainingResult: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT RESULT_NO'
      '     , RESULT_NAME'
      '     , RESULT_GRADE'
      '     , NOTES'
      'FROM HR_TRAINING_RESULT')
    FieldOptions = []
    Left = 256
    Top = 200
    object qryTrainingResultRESULT_NO: TWideStringField
      FieldName = 'RESULT_NO'
      Required = True
      Size = 30
    end
    object qryTrainingResultRESULT_NAME: TWideStringField
      FieldName = 'RESULT_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingResultRESULT_GRADE: TIntegerField
      FieldName = 'RESULT_GRADE'
      Required = True
    end
    object qryTrainingResultNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 3072
    end
  end
  object dsTrainingResult: TDataSource
    DataSet = qryTrainingResult
    Left = 224
    Top = 200
  end
  object qryChucvuDang: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_CHUCVU'
      '     , TEN_CHUCVU'
      '     , GHI_CHU'
      'FROM HR_CHUCVU_DANG')
    FieldOptions = []
    Left = 312
    Top = 368
    object qryChucvuDangMA_CHUCVU: TWideStringField
      FieldName = 'MA_CHUCVU'
      Required = True
      Size = 30
    end
    object qryChucvuDangTEN_CHUCVU: TWideStringField
      FieldName = 'TEN_CHUCVU'
      Required = True
      Size = 126
    end
    object qryChucvuDangGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
  end
  object dsChucvuDang: TDataSource
    DataSet = qryChucvuDang
    Left = 280
    Top = 368
  end
  object dsChucvuDoan: TDataSource
    DataSet = qryChucvuDoan
    Left = 280
    Top = 384
  end
  object qryChucvuDoan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_CHUCVU'
      '     , TEN_CHUCVU'
      '     , GHI_CHU'
      'FROM HR_CHUCVU_DOAN')
    FieldOptions = []
    Left = 312
    Top = 384
    object WideStringField1: TWideStringField
      FieldName = 'MA_CHUCVU'
      Required = True
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'TEN_CHUCVU'
      Required = True
      Size = 126
    end
    object WideStringField3: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
  end
  object dsChucvuCDoan: TDataSource
    DataSet = qryChucvuCDoan
    Left = 280
    Top = 408
  end
  object qryChucvuCDoan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_CHUCVU'
      '     , TEN_CHUCVU'
      '     , GHI_CHU'
      'FROM HR_CHUCVU_CDOAN')
    FieldOptions = []
    Left = 312
    Top = 408
    object WideStringField4: TWideStringField
      FieldName = 'MA_CHUCVU'
      Required = True
      Size = 30
    end
    object WideStringField5: TWideStringField
      FieldName = 'TEN_CHUCVU'
      Required = True
      Size = 126
    end
    object WideStringField6: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
  end
  object qryAcademicList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ACADEMIC_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ACADEMIC_NO'
      '     , ACADEMIC_NAME'
      '     , ACADEMIC_LEVEL'
      '     , ACADEMIC_NOTE'
      'FROM HR_ACADEMIC')
    FieldOptions = []
    Left = 48
    Top = 472
    object qryAcademicListACADEMIC_NO: TWideStringField
      FieldName = 'ACADEMIC_NO'
      Required = True
      Size = 30
    end
    object qryAcademicListACADEMIC_NAME: TWideStringField
      FieldName = 'ACADEMIC_NAME'
      Required = True
      Size = 126
    end
    object qryAcademicListACADEMIC_LEVEL: TIntegerField
      FieldName = 'ACADEMIC_LEVEL'
      Required = True
    end
    object qryAcademicListACADEMIC_NOTE: TWideStringField
      FieldName = 'ACADEMIC_NOTE'
      Size = 3072
    end
  end
  object dsAcademicList: TDataSource
    DataSet = qryAcademicList
    Left = 16
    Top = 472
  end
  object dsMarrialStatus: TDataSource
    DataSet = qryMarrialStatus
    Left = 80
    Top = 384
  end
  object qryMarrialStatus: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT STATUS_ID'
      '     , STATUS_NAME'
      '     , NOTE'
      'FROM HR_MARRIAL_STATUS')
    FieldOptions = []
    Left = 112
    Top = 384
    object qryMarrialStatusSTATUS_ID: TWideStringField
      FieldName = 'STATUS_ID'
      Required = True
      Size = 30
    end
    object qryMarrialStatusSTATUS_NAME: TWideStringField
      FieldName = 'STATUS_NAME'
      Required = True
      Size = 126
    end
    object qryMarrialStatusNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object qryEstimateGroup: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT GROUP_NO'
      '     , GROUP_NAME'
      '     , GROUP_INDEX'
      '     , GROUP_NOTE'
      'FROM HR_ESTIMATE_GROUP')
    FieldOptions = []
    Left = 378
    object qryEstimateGroupGROUP_NO: TWideStringField
      FieldName = 'GROUP_NO'
      Required = True
      Size = 30
    end
    object qryEstimateGroupGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 126
    end
    object qryEstimateGroupGROUP_INDEX: TIntegerField
      FieldName = 'GROUP_INDEX'
      Required = True
    end
    object qryEstimateGroupGROUP_NOTE: TWideStringField
      FieldName = 'GROUP_NOTE'
      Size = 3072
    end
  end
  object dsEstimateGroup: TDataSource
    DataSet = qryEstimateGroup
    Left = 378
    Top = 32
  end
  object qryTrainingContent: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_CONTENT'
      'WHERE'
      '   CONTENT_NO = :OLD_CONTENT_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_CONTENT SET'
      '   CONTENT_NO = :CONTENT_NO, /*PK*/'
      '   CONTENT_NAME = :CONTENT_NAME,'
      '   CONTENT_NOTE = :CONTENT_NOTE'
      'WHERE'
      '   CONTENT_NO = :OLD_CONTENT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_CONTENT('
      '   CONTENT_NO, /*PK*/'
      '   CONTENT_NAME,'
      '   CONTENT_NOTE)'
      'VALUES ('
      '   :CONTENT_NO,'
      '   :CONTENT_NAME,'
      '   :CONTENT_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CONTENT_NO'
      '     , CONTENT_NAME'
      '     , CONTENT_NOTE'
      'FROM HR_TRAINING_CONTENT')
    FieldOptions = []
    Left = 296
    Top = 80
    object qryTrainingContentCONTENT_NO: TWideStringField
      FieldName = 'CONTENT_NO'
      Required = True
      Size = 30
    end
    object qryTrainingContentCONTENT_NAME: TWideStringField
      FieldName = 'CONTENT_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingContentCONTENT_NOTE: TWideStringField
      FieldName = 'CONTENT_NOTE'
      Size = 3072
    end
  end
  object dsTrainingContent: TDataSource
    DataSet = qryTrainingContent
    Left = 264
    Top = 80
  end
  object dsWorkShift: TDataSource
    DataSet = qryWorkShift
    Left = 272
    Top = 112
  end
  object qryWorkShift: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SHIFT_NO'
      '     , SHIFT_NAME'
      'FROM HR_WORK_SHIFT')
    FieldOptions = []
    Left = 304
    Top = 112
    object qryWorkShiftSHIFT_NO: TWideStringField
      FieldName = 'SHIFT_NO'
      Required = True
      Size = 30
    end
    object qryWorkShiftSHIFT_NAME: TWideStringField
      FieldName = 'SHIFT_NAME'
      Required = True
      Size = 126
    end
  end
  object qryOffWorkReason: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT REASON_NO'
      '     , REASON_NAME'
      '     , NOTES'
      'FROM HR_OFF_WORK_REASON')
    FieldOptions = []
    Left = 324
    Top = 144
    object qryOffWorkReasonREASON_NO: TWideStringField
      FieldName = 'REASON_NO'
      Required = True
      Size = 30
    end
    object qryOffWorkReasonREASON_NAME: TWideStringField
      FieldName = 'REASON_NAME'
      Required = True
      Size = 126
    end
    object qryOffWorkReasonNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 126
    end
  end
  object dsOffWorkReason: TDataSource
    DataSet = qryOffWorkReason
    Left = 324
    Top = 176
  end
  object qryCongcuTrangthai: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONGCU_TRANGTHAI'
      'WHERE'
      '   MA_TRANGTHAI = :OLD_MA_TRANGTHAI')
    EditSQL.Strings = (
      'UPDATE HR_CONGCU_TRANGTHAI SET'
      '   MA_TRANGTHAI = :MA_TRANGTHAI, /*PK*/'
      '   TEN_TRANGTHAI = :TEN_TRANGTHAI'
      'WHERE'
      '   MA_TRANGTHAI = :OLD_MA_TRANGTHAI')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CONGCU_TRANGTHAI('
      '   MA_TRANGTHAI, /*PK*/'
      '   TEN_TRANGTHAI)'
      'VALUES ('
      '   :MA_TRANGTHAI,'
      '   :TEN_TRANGTHAI)')
    KeyLinks.Strings = (
      'HR_CONGCU_TRANGTHAI.MA_TRANGTHAI')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_TRANGTHAI'
      '     , TEN_TRANGTHAI'
      'FROM HR_CONGCU_TRANGTHAI')
    FieldOptions = []
    Left = 112
    Top = 472
    object qryCongcuTrangthaiMA_TRANGTHAI: TWideStringField
      FieldName = 'MA_TRANGTHAI'
      Required = True
      Size = 30
    end
    object qryCongcuTrangthaiTEN_TRANGTHAI: TWideStringField
      FieldName = 'TEN_TRANGTHAI'
      Required = True
      Size = 126
    end
  end
  object dsCongcuTrangthai: TDataSource
    DataSet = qryCongcuTrangthai
    Left = 80
    Top = 472
  end
  object qryCongcu: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MA_LOAI='#39#39
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'MA_LOAI'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_CONGCU'
      '     , MA_LOAI'
      '     , TEN_CONGCU'
      '     , GHI_CHU'
      'FROM HR_CONGCU_DM'
      'where (:MA_LOAI='#39#39')or(MA_LOAI=:MA_LOAI)')
    FieldOptions = []
    Left = 324
    Top = 216
    object qryCongcuMA_CONGCU: TIntegerField
      FieldName = 'MA_CONGCU'
      Required = True
    end
    object qryCongcuMA_LOAI: TWideStringField
      FieldName = 'MA_LOAI'
      Required = True
      Size = 30
    end
    object qryCongcuTEN_CONGCU: TWideStringField
      FieldName = 'TEN_CONGCU'
      Required = True
      Size = 126
    end
    object qryCongcuGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
  end
  object dsCongcu: TDataSource
    DataSet = qryCongcu
    Left = 324
    Top = 248
  end
  object dsLanguage: TDataSource
    DataSet = qryLanguage
    Left = 360
    Top = 336
  end
  object qryLanguage: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LANGUAGE_NO'
      '     , LANGUAGE_NAME'
      '     , NOTE'
      'FROM HR_LANGUAGE')
    FieldOptions = []
    Left = 392
    Top = 336
    object qryLanguageLANGUAGE_NO: TWideStringField
      FieldName = 'LANGUAGE_NO'
      Required = True
      Size = 30
    end
    object qryLanguageLANGUAGE_NAME: TWideStringField
      FieldName = 'LANGUAGE_NAME'
      Required = True
      Size = 126
    end
    object qryLanguageNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 126
    end
  end
  object dsSkillList: TDataSource
    DataSet = qrySkillList
    Left = 424
    Top = 336
  end
  object qrySkillList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SKILL_NO'
      '     , SKILL_NAME'
      '     , NOTE'
      'FROM HR_SKILL')
    FieldOptions = []
    Left = 456
    Top = 336
    object qrySkillListSKILL_NO: TWideStringField
      FieldName = 'SKILL_NO'
      Required = True
      Size = 30
    end
    object qrySkillListSKILL_NAME: TWideStringField
      FieldName = 'SKILL_NAME'
      Required = True
      Size = 126
    end
    object qrySkillListNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 126
    end
  end
  object dsLanguageLevel: TDataSource
    DataSet = qryLanguageLevel
    Left = 360
    Top = 352
  end
  object qryLanguageLevel: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'LANGUAGE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LEVEL_NO'
      '     , LEVEL_NAME'
      '     , LEVEL_ORDER'
      'FROM HR_LANGUAGE_LEVEL'
      'where LANGUAGE_NO=:LANGUAGE_NO')
    FieldOptions = []
    Left = 392
    Top = 352
    object qryLanguageLevelLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 126
    end
    object qryLanguageLevelLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryLanguageLevelLEVEL_ORDER: TIntegerField
      FieldName = 'LEVEL_ORDER'
      Required = True
    end
  end
  object dsSkillLevel: TDataSource
    DataSet = qrySkillLevel
    Left = 424
    Top = 352
  end
  object qrySkillLevel: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'SKILL_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LEVEL_NO'
      '     , LEVEL_NAME'
      '     , LEVEL_ORDER'
      'FROM HR_SKILL_LEVEL'
      'where SKILL_NO=:SKILL_NO')
    FieldOptions = []
    Left = 456
    Top = 352
    object qrySkillLevelLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 126
    end
    object qrySkillLevelLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qrySkillLevelLEVEL_ORDER: TIntegerField
      FieldName = 'LEVEL_ORDER'
      Required = True
    end
  end
  object qryClass: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CLASS_CODE'
      '     , CLASS_NAME'
      'FROM HR_TR_CLASS')
    FieldOptions = []
    Left = 396
    Top = 400
    object qryClassCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Required = True
      Size = 30
    end
    object qryClassCLASS_NAME: TWideStringField
      FieldName = 'CLASS_NAME'
      Required = True
      Size = 126
    end
  end
  object dsClass: TDataSource
    DataSet = qryClass
    Left = 396
    Top = 432
  end
  object qryRecruitmentPlan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , PLAN_NAME'
      'FROM HR_RECRUITMENT_PLAN')
    FieldOptions = []
    Left = 644
    Top = 384
    object qryRecruitmentPlanPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryRecruitmentPlanPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Required = True
      Size = 126
    end
  end
  object dsRecruitmentPlan: TDataSource
    DataSet = qryRecruitmentPlan
    Left = 644
    Top = 416
  end
  object qryFormalParam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FOLLOW_DECISION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FOLLOW_CONTRACT'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_FORMAL_PARAM.PARAM_NO')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , PARAM_NAME'
      'FROM HR_FORMAL_PARAM'
      'WHERE FOLLOW_DECISION = :FOLLOW_DECISION'
      'OR FOLLOW_CONTRACT= :FOLLOW_CONTRACT')
    FieldOptions = []
    Left = 676
    Top = 384
    object qryFormalParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryFormalParamPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 126
    end
  end
  object dsFormalParam: TDataSource
    DataSet = qryFormalParam
    Left = 676
    Top = 416
  end
  object qryUserAccount: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT USERACCID'
      '     , DISPLAYNAME'
      '     , SUBSYSTEMID'
      'FROM SYS_USERACCOUNT'
      'WHERE SUBSYSTEMID = :SUBSYSTEMID')
    FieldOptions = []
    Left = 708
    Top = 384
    object qryUserAccountUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryUserAccountDISPLAYNAME: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 126
    end
    object qryUserAccountSUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
  end
  object dsUserAccount: TDataSource
    DataSet = qryUserAccount
    Left = 708
    Top = 416
  end
  object qryBaoHiem_TinhThanhPho: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_TINH_THANHPHO'
      '     , TEN_TINH_THANHPHO'
      'FROM HR_BAOHIEM_TINH_THANHPHO')
    FieldOptions = []
    Left = 584
    Top = 96
    object qryBaoHiem_TinhThanhPhoMA_TINH_THANHPHO: TWideStringField
      FieldName = 'MA_TINH_THANHPHO'
      Required = True
      Size = 30
    end
    object qryBaoHiem_TinhThanhPhoTEN_TINH_THANHPHO: TWideStringField
      FieldName = 'TEN_TINH_THANHPHO'
      Size = 63
    end
  end
  object dsBaoHiem_TinhThanhPho: TDataSource
    DataSet = qryBaoHiem_TinhThanhPho
    Left = 584
    Top = 128
  end
  object qryWageCompany: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_COMPANY_WAGE_STANDARD.WAGE_SCALE'
      '     , HR_COMPANY_WAGE_SCALE.WAGE_SCALE_NAME'
      '     , WAGE_LEVEL'
      '     , WAGE_COEFF'
      '     , PROMOTION'
      'FROM HR_COMPANY_WAGE_STANDARD'
      
        'JOIN HR_COMPANY_WAGE_SCALE ON HR_COMPANY_WAGE_STANDARD.WAGE_SCAL' +
        'E=HR_COMPANY_WAGE_SCALE.WAGE_SCALE'
      'ORDER BY WAGE_SCALE,WAGE_LEVEL')
    FieldOptions = []
    Left = 618
    Top = 96
    object qryWageCompanyWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Required = True
      Size = 30
    end
    object qryWageCompanyWAGE_SCALE_NAME: TWideStringField
      FieldName = 'WAGE_SCALE_NAME'
      Size = 63
    end
    object qryWageCompanyWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
      Required = True
    end
    object qryWageCompanyWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
    end
    object qryWageCompanyPROMOTION: TIntegerField
      FieldName = 'PROMOTION'
    end
  end
  object dsWageCompany: TDataSource
    DataSet = qryWageCompany
    Left = 616
    Top = 128
  end
end
