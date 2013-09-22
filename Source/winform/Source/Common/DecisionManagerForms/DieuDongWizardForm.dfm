inherited frmDieuDongWizard: TfrmDieuDongWizard
  Left = 243
  Top = 128
  Width = 923
  Height = 574
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 521
    Width = 915
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 915
    Height = 521
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
        Width = 36
        Height = 41
        Align = alLeft
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ElPopupButton1: TElPopupButton
          Left = 5
          Top = 168
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
          Left = 5
          Top = 243
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
          Left = 5
          Top = 218
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
          Left = 5
          Top = 193
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
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup2: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahCenter
            AlignVert = avCenter
            Caption = 'New Group'
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutItem1: TdxLayoutItem
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
              AlignHorz = ahCenter
              Caption = 'ElPopupButton4'
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
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
        Left = 389
        Top = 0
        Width = 522
        Height = 41
        Bands = <
          item
            Caption = 'Danh s'#225'ch v'#7883' tr'#237' '#273'i'#7873'u '#273#7897'ng m'#7899'i'
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
          Width = 226
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Nh+AOI-n vi+AOo-n/Ph+API-ng ban'
        end
        object treeFinalASSIGNED_DATE: TdxDBTreeListDateColumn
          Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
          HeaderAlignment = taCenter
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ASSIGNED_DATE'
          Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
        end
        object treeFinalENDED_DATE: TdxDBTreeListDateColumn
          Caption = 'Ng'#224'y k'#7871't th'#250'c'
          HeaderAlignment = taCenter
          Width = 78
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ENDED_DATE'
          Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
        end
        object treeFinalIS_MAIN_POSITION: TdxDBTreeListCheckColumn
          Alignment = taCenter
          Caption = 'VT ch'#237'nh'
          HeaderAlignment = taCenter
          Width = 54
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
          Width = 57
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
          Width = 106
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
          Width = 70
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
          Width = 89
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
          Width = 72
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
          Width = 91
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
          Width = 104
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
          Width = 95
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
          Width = 106
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
          Width = 124
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
          Width = 108
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
          Width = 126
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
          Width = 138
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
          Width = 154
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
          Width = 131
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
          Width = 175
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
          Width = 69
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
          Width = 85
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
        ActivePage = tabDSBonhiem
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
        object tabDSBonhiem: TElTabSheet
          PageControl = pageOrigin
          ImageIndex = -1
          TabVisible = True
          Caption = 'Danh s'#225'ch v'#7883' tr'#237' '#273'ang c'#244'ng t'#225'c'
          object gridDSViTri: TdxDBGrid
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
            DataSource = dsDSViTri
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            object gridDSViTriEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Visible = False
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridDSViTriFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' t'#234'n'
              HeaderAlignment = taCenter
              Width = 116
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 t+AOo-n'
            end
            object gridDSViTriOLD_DEPT_NO: TdxDBGridColumn
              Caption = 'M'#227' '#273#417'n v'#7883
              HeaderAlignment = taCenter
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_DEPT_NO'
              Caption_UTF7 = 'M+AOM +AREBoQ-n v+Hss'
            end
            object gridDSViTriOLD_DEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883
              HeaderAlignment = taCenter
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_DEPT_NAME'
              Caption_UTF7 = '+ARABoQ-n v+Hss'
            end
            object gridDSViTriOLD_TITLE_NO: TdxDBGridColumn
              Caption = 'M'#227' ch'#7913'c danh'
              HeaderAlignment = taCenter
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_TITLE_NO'
              Caption_UTF7 = 'M+AOM ch+Huk-c danh'
            end
            object gridDSViTriOLD_TITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c danh'
              HeaderAlignment = taCenter
              Width = 105
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c danh'
            end
            object gridDSViTriOLD_POSITION_NO: TdxDBGridColumn
              Caption = 'M'#227' v'#7883' tr'#237
              HeaderAlignment = taCenter
              Visible = False
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_POSITION_NO'
              Caption_UTF7 = 'M+AOM v+Hss tr+AO0'
            end
            object gridDSViTriOLD_ASSIGNED_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
              HeaderAlignment = taCenter
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_ASSIGNED_DATE'
              Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
            end
            object gridDSViTriOLD_ENDED_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y k'#7871't th'#250'c'
              HeaderAlignment = taCenter
              Visible = False
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_ENDED_DATE'
              Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
            end
            object gridDSViTriOLD_DISMISS_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y th'#244'i CT'
              HeaderAlignment = taCenter
              Width = 78
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_DISMISS_DATE'
              Caption_UTF7 = 'Ng+AOA-y th+APQ-i CT'
            end
            object gridDSViTriOLD_IS_MAIN_POSITION: TdxDBGridCheckColumn
              Alignment = taCenter
              Caption = 'VT ch'#237'nh'
              HeaderAlignment = taCenter
              Width = 56
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OLD_IS_MAIN_POSITION'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = 'VT ch+AO0-nh'
            end
            object gridDSViTriKEY_FIELD: TdxDBGridColumn
              Caption = 'ID'
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'KEY_FIELD'
            end
          end
        end
      end
    end
    object dxDept: TdxEdit
      Left = 123
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
      Left = 504
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
      Left = 763
      Top = 494
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
      Left = 838
      Top = 494
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
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup4: TdxLayoutGroup
        Caption = '* Th'#244'ng tin t'#249'y ch'#7885'n '#273'i'#7873'u '#273#7897'ng'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = #272#417'n v'#7883' ch'#7885'n '#273'i'#7873'u '#273#7897'ng'
          Control = dxDept
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Ch'#7913'c danh '#273'i'#7873'u '#273#7897'ng'
          Control = dxTitle
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutItem2: TdxLayoutItem
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
        Caption = 'Ti'#7879'c '#237'ch '#273'i'#7873'u '#273#7897'ng v'#7883' tr'#237' c'#244'ng t'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object memDSViTri: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 90
    Top = 163
    object memDSViTriEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memDSViTriFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memDSViTriOLD_DEPT_NO: TWideStringField
      DisplayWidth = 15
      FieldName = 'OLD_DEPT_NO'
      Size = 15
    end
    object memDSViTriOLD_DEPT_NAME: TWideStringField
      FieldName = 'OLD_DEPT_NAME'
      Size = 127
    end
    object memDSViTriOLD_TITLE_NO: TWideStringField
      FieldName = 'OLD_TITLE_NO'
      Size = 15
    end
    object memDSViTriOLD_TITLE_NAME: TWideStringField
      FieldName = 'OLD_TITLE_NAME'
      Size = 127
    end
    object memDSViTriOLD_POSITION_NO: TWideStringField
      FieldName = 'OLD_POSITION_NO'
      Size = 30
    end
    object memDSViTriOLD_ASSIGNED_DATE: TDateField
      FieldName = 'OLD_ASSIGNED_DATE'
    end
    object memDSViTriOLD_ENDED_DATE: TDateField
      FieldName = 'OLD_ENDED_DATE'
    end
    object memDSViTriOLD_IS_MAIN_POSITION: TIntegerField
      FieldName = 'OLD_IS_MAIN_POSITION'
    end
    object memDSViTriOLD_DISMISS_DATE: TDateField
      FieldName = 'OLD_DISMISS_DATE'
    end
    object memDSViTriKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
    end
  end
  object dsDSViTri: TDataSource
    DataSet = memDSViTri
    Left = 90
    Top = 195
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
      OnChange = memFinalASSIGNED_DATEChange
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
    object memFinalOLD_TITLE_NO: TWideStringField
      FieldName = 'OLD_TITLE_NO'
      Size = 15
    end
    object memFinalOLD_POSITION_NO: TWideStringField
      FieldName = 'OLD_POSITION_NO'
      Size = 30
    end
    object memFinalOLD_ASSIGNED_DATE: TDateField
      FieldName = 'OLD_ASSIGNED_DATE'
    end
  end
  object dsFinal: TDataSource
    DataSet = memFinal
    Left = 130
    Top = 195
  end
  object qryDeptList: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
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
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 168
    Top = 256
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
    end
    object acLoadDSViTri: TAction
      Caption = 'acLoadDSViTri'
      OnExecute = acLoadDSViTriExecute
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
  object qryDSViTri: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'decision_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DECISION_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_ASSIGNMENT.EMPLOYEE_NO'
      '     , HR_MASK_EMPLOYEE.FULL_NAME'
      '     , HR_ASSIGNMENT.POSITION_NO'
      
        '     , HR_TITLE.TITLE_NAME||'#39' - '#39'||HR_DEPARTMENT.DEPT_NAME POSIT' +
        'ION_TITLE'
      '     , HR_ASSIGNMENT.ASSIGNED_DATE'
      '     , HR_ASSIGNMENT.ENDED_DATE'
      '     , HR_ASSIGNMENT.IS_MAIN_POSITION'
      '     , HR_ASSIGNMENT.DECISION_NO'
      '     , HR_POSITION.DEPT_NO'
      '     , HR_POSITION.TITLE_NO'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_TITLE.TITLE_NAME'
      '     , HR_ASSIGNMENT.dismiss_date'
      
        '     , HR_ASSIGNMENT.EMPLOYEE_NO || HR_POSITION.DEPT_NO || HR_PO' +
        'SITION.TITLE_NO KEY_FIELD '
      'FROM HR_ASSIGNMENT'
      'JOIN HR_MASK_EMPLOYEE(:USER_NAME) '
      ' on HR_ASSIGNMENT.EMPLOYEE_NO=HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      'JOIN HR_POSITION '
      ' on HR_ASSIGNMENT.POSITION_NO=HR_POSITION.POSITION_NO'
      'JOIN HR_TITLE ON HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      'JOIN HR_DEPARTMENT ON HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      
        'join hr_decision_emp on hr_assignment.employee_no = hr_decision_' +
        'emp.employee_no '
      'where hr_decision_emp.decision_no = :decision_no'
      'and hr_assignment.dismiss_date is null'
      'and hr_assignment.assigned_date < :DECISION_DATE')
    FieldOptions = []
    Left = 166
    Top = 166
    object qryDSViTriEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryDSViTriFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 96
    end
    object qryDSViTriPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryDSViTriPOSITION_TITLE: TWideStringField
      FieldName = 'POSITION_TITLE'
      ReadOnly = True
      Required = True
      Size = 261
    end
    object qryDSViTriASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
      Required = True
    end
    object qryDSViTriENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
    object qryDSViTriIS_MAIN_POSITION: TSmallintField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryDSViTriDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Size = 30
    end
    object qryDSViTriDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDSViTriTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Required = True
      Size = 15
    end
    object qryDSViTriDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDSViTriTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryDSViTriDISMISS_DATE: TDateField
      FieldName = 'DISMISS_DATE'
    end
    object qryDSViTriKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      ReadOnly = True
      Size = 60
    end
  end
  object qryInsertChangePosition: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DECISION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ASSIGNED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POSITION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_TYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IS_MAIN_POSITION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'INSERT INTO HR_CHANGE_POSITIONS'
      '(DECISION_NO,'
      'EMPLOYEE_NO,'
      'ASSIGNED_DATE,'
      'POSITION_NO,'
      'CHANGE_TYPE,'
      'IS_MAIN_POSITION,'
      'CHANGE_DATE)'
      'VALUES'
      '(:DECISION_NO,'
      ':EMPLOYEE_NO,'
      ':ASSIGNED_DATE,'
      ':POSITION_NO,'
      ':CHANGE_TYPE,'
      ':IS_MAIN_POSITION,'
      ':CHANGE_DATE);')
    FieldOptions = []
    Left = 134
    Top = 286
  end
end
