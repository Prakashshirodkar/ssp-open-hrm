inherited frmEmpPositionWizard: TfrmEmpPositionWizard
  Left = 189
  Top = 114
  Width = 894
  Height = 573
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object dxlcSelectPosition: TdxLayoutControl [0]
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
  inherited sbMain: TElStatusBar
    Top = 520
    Width = 886
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
    Visible = True
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
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 886
    Height = 520
    Align = alClient
    TabOrder = 1
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
          Top = 167
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
          Top = 242
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
          Top = 217
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
          Top = 192
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
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group1: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahCenter
            AlignVert = avCenter
            Caption = 'New Group'
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Item1: TdxLayoutItem
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
        Width = 499
        Height = 41
        Bands = <
          item
            Caption = 'Danh s'#225'ch v'#7883' tr'#237' b'#7893' nhi'#7879'm m'#7899'i'
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
        object treeFinalITEM_NAME: TdxDBTreeListColumn
          Caption = 'Nh'#226'n vi'#234'n/Ph'#242'ng ban'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 291
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Nh+AOI-n vi+AOo-n/Ph+API-ng ban'
        end
        object treeFinalASSIGNED_DATE: TdxDBTreeListDateColumn
          Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
          HeaderAlignment = taCenter
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ASSIGNED_DATE'
          Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
        end
        object treeFinalENDED_DATE: TdxDBTreeListDateColumn
          Caption = 'Ng'#224'y k'#7871't th'#250'c'
          HeaderAlignment = taCenter
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ENDED_DATE'
          Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
        end
        object treeFinalIS_MAIN_POSITION: TdxDBTreeListCheckColumn
          Alignment = taCenter
          Caption = 'VT ch'#237'nh'
          HeaderAlignment = taCenter
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_MAIN_POSITION'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = 'VT ch+AO0-nh'
        end
        object treeFinalIS_EMP: TdxDBTreeListColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'IS_EMP'
        end
        object treeFinalEMPLOYEE_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'EMPLOYEE_NO'
        end
        object treeFinalDEPT_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'DEPT_NO'
        end
        object treeFinalDEPT_NAME: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'DEPT_NAME'
        end
        object treeFinalTITLE_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'TITLE_NO'
        end
        object treeFinalTITLE_NAME: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'TITLE_NAME'
        end
        object treeFinalPOSITION_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'POSITION_NO'
        end
        object treeFinalColumn12: TdxDBTreeListDateColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'ENDED_DATE'
        end
        object treeFinalOLD_DEPT_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_DEPT_NO'
        end
        object treeFinalOLD_DEPT_NAME: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_DEPT_NAME'
        end
        object treeFinalOLD_TITLE_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_TITLE_NO'
        end
        object treeFinalOLD_TITLE_NAME: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_TITLE_NAME'
        end
        object treeFinalOLD_POSITION_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_POSITION_NO'
        end
        object treeFinalOLD_ASSIGNED_DATE: TdxDBTreeListDateColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_ASSIGNED_DATE'
        end
        object treeFinalOLD_ENDED_DATE: TdxDBTreeListDateColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_ENDED_DATE'
        end
        object treeFinalOLD_IS_MAIN_POSITION: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'OLD_IS_MAIN_POSITION'
        end
        object treeFinalITEM_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'ITEM_NO'
        end
        object treeFinalP_ITEM_NO: TdxDBTreeListMaskColumn
          DisableCaption = True
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'P_ITEM_NO'
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
          Caption = 'C'#225' nh'#226'n thi h'#224'nh quy'#7871't '#273#7883'nh'
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
          TabVisible = True
          Caption = 'Danh s'#225'ch b'#7893' nhi'#234'm'
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
              Visible = False
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridDSBonhiemFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' t'#234'n'
              HeaderAlignment = taCenter
              Width = 116
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 t+AOo-n'
            end
            object gridDSBonhiemOLD_DEPT_NO: TdxDBGridColumn
              Caption = 'M'#227' '#273#417'n v'#7883
              HeaderAlignment = taCenter
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_DEPT_NO'
              Caption_UTF7 = 'M+AOM +AREBoQ-n v+Hss'
            end
            object gridDSBonhiemOLD_DEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883
              HeaderAlignment = taCenter
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_DEPT_NAME'
              Caption_UTF7 = '+ARABoQ-n v+Hss'
            end
            object gridDSBonhiemOLD_TITLE_NO: TdxDBGridColumn
              Caption = 'M'#227' ch'#7913'c danh'
              HeaderAlignment = taCenter
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_TITLE_NO'
              Caption_UTF7 = 'M+AOM ch+Huk-c danh'
            end
            object gridDSBonhiemOLD_TITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c danh'
              HeaderAlignment = taCenter
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c danh'
            end
            object gridDSBonhiemOLD_POSITION_NO: TdxDBGridColumn
              Caption = 'M'#227' v'#7883' tr'#237
              HeaderAlignment = taCenter
              Visible = False
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_POSITION_NO'
              Caption_UTF7 = 'M+AOM v+Hss tr+AO0'
            end
            object gridDSBonhiemOLD_ASSIGNED_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y b'#7893' nhi'#7879'm'
              HeaderAlignment = taCenter
              Visible = False
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_ASSIGNED_DATE'
              Caption_UTF7 = 'Ng+AOA-y b+HtU nhi+Hsc-m'
            end
            object gridDSBonhiemOLD_ENDED_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y k'#7871't th'#250'c'
              HeaderAlignment = taCenter
              Visible = False
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_ENDED_DATE'
              Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
            end
            object gridDSBonhiemOLD_IS_MAIN_POSITION: TdxDBGridCheckColumn
              Alignment = taCenter
              Caption = 'VT ch'#237'nh'
              HeaderAlignment = taCenter
              Visible = False
              Width = 56
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_IS_MAIN_POSITION'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = 'VT ch+AO0-nh'
            end
          end
        end
      end
    end
    object dxDept: TdxEdit
      Left = 119
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
    object dxTitle: TdxEdit
      Left = 496
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
      Left = 734
      Top = 493
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
      Left = 809
      Top = 493
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = '* Th'#244'ng tin t'#249'y ch'#7885'n b'#7893' nhi'#7879'm'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = #272#417'n v'#7883' ch'#7885'n b'#7893' nhi'#7879'm'
          Control = dxDept
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Ch'#7913'c danh b'#7893' nhi'#7879'm'
          Control = dxTitle
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item1: TdxLayoutItem
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
        Caption = 'Ti'#7879'n '#237'ch ch'#7881' '#273#7883'nh v'#7883' tr'#237' c'#244'ng t'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 472
    Top = 72
  end
  object dsDSBonhiem: TDataSource
    DataSet = memDSBonhiem
    Left = 90
    Top = 195
  end
  object dsFinal: TDataSource
    DataSet = memFinal
    Left = 130
    Top = 195
  end
  object memDSBonhiem: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memDSBonhiemBeforeDelete
    Left = 90
    Top = 163
    object memDSBonhiemEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memDSBonhiemFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memDSBonhiemOLD_DEPT_NO: TWideStringField
      DisplayWidth = 15
      FieldName = 'OLD_DEPT_NO'
      Size = 15
    end
    object memDSBonhiemOLD_DEPT_NAME: TWideStringField
      FieldName = 'OLD_DEPT_NAME'
      Size = 127
    end
    object memDSBonhiemOLD_TITLE_NO: TWideStringField
      FieldName = 'OLD_TITLE_NO'
      Size = 15
    end
    object memDSBonhiemOLD_TITLE_NAME: TWideStringField
      FieldName = 'OLD_TITLE_NAME'
      Size = 127
    end
    object memDSBonhiemOLD_POSITION_NO: TWideStringField
      FieldName = 'OLD_POSITION_NO'
    end
    object memDSBonhiemOLD_ASSIGNED_DATE: TDateField
      FieldName = 'OLD_ASSIGNED_DATE'
    end
    object memDSBonhiemOLD_ENDED_DATE: TDateField
      FieldName = 'OLD_ENDED_DATE'
    end
    object memDSBonhiemOLD_IS_MAIN_POSITION: TIntegerField
      FieldName = 'OLD_IS_MAIN_POSITION'
    end
  end
  object memFinal: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memFinalBeforeDelete
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
    object acLoadDSBonhiem: TAction
      Caption = 'acLoadDSBonhiem'
      OnExecute = acLoadDSBonhiemExecute
    end
    object acInitFinalList: TAction
      Caption = 'acInitFinalList'
      OnExecute = acInitFinalListExecute
    end
    object acChapnhan: TAction
      Caption = 'acChapnhan'
      ImageIndex = 9
      OnExecute = acChapnhanExecute
      OnUpdate = acChapnhanUpdate
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
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
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
      'left join hr_title on hr_position.title_no=hr_title.title_no'
      'where hr_department.ended_date is null')
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
        Name = 'ASSIGNED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POSITION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IS_MAIN_POSITION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DECISION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ASSIGNED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_POSITION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'UPDATE HR_ASSIGNMENT SET'
      '   ASSIGNED_DATE = :ASSIGNED_DATE, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   ENDED_DATE = :ENDED_DATE,'
      '   IS_MAIN_POSITION = :IS_MAIN_POSITION,'
      '   DECISION_NO = :DECISION_NO'
      'WHERE'
      '   ASSIGNED_DATE = :OLD_ASSIGNED_DATE AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    FieldOptions = []
    Left = 174
    Top = 350
  end
  object qryInsert: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ASSIGNED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POSITION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IS_MAIN_POSITION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DECISION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'INSERT INTO HR_ASSIGNMENT('
      '   ASSIGNED_DATE, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   ENDED_DATE,'
      '   IS_MAIN_POSITION,'
      '   DECISION_NO)'
      'VALUES ('
      '   :ASSIGNED_DATE,'
      '   :EMPLOYEE_NO,'
      '   :POSITION_NO,'
      '   :ENDED_DATE,'
      '   :IS_MAIN_POSITION,'
      '   :DECISION_NO)')
    FieldOptions = []
    Left = 174
    Top = 318
  end
end
