inherited frmWorkTimeManager: TfrmWorkTimeManager
  Left = 178
  Top = 156
  Width = 1002
  Height = 581
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 193
    Top = 30
    Height = 498
  end
  inherited sbMain: TElStatusBar
    Top = 528
    Width = 994
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 30
    Width = 193
    Height = 498
    Align = alLeft
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object tlOrgMap: TdxDBTreeList
      Left = 10
      Top = 10
      Width = 191
      Height = 472
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DEPT_NO'
      ParentField = 'P_DEPT_NO'
      Align = alLeft
      TabOrder = 0
      DataSource = dsOrgMap
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnChangeNode = tlOrgMapChangeNode
      object tlOrgMapDEPT_NAME: TdxDBTreeListColumn
        Caption = 'T'#234'n '#273#417'n v'#7883' - ph'#242'ng ban'
        HeaderAlignment = taCenter
        Width = 187
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss - ph+API-ng ban'
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Control = tlOrgMap
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxlcRightSide: TdxLayoutControl [3]
    Left = 196
    Top = 30
    Width = 798
    Height = 498
    Align = alClient
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxInMonth: TdxImageEdit
      Left = 46
      Top = 28
      Width = 85
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      Alignment = taCenter
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
      StoredValues = 1
    end
    object dxInYear: TdxSpinEdit
      Left = 153
      Top = 28
      Width = 85
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton1: TElPopupButton
      Left = 238
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng k'#7871' tr'#432#7899'c'
      ImageIndex = 0
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 2
      Color = clCream
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acPrevious
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 629
      Top = 28
      Width = 80
      Height = 25
      Cursor = crDefault
      Hint = 'C'#7853'p nh'#7853't d'#7919' li'#7879'u ch'#7845'm c'#244'ng v'#7915'a thay '#273#7893'i'
      ImageIndex = 37
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&C'#7853'p nh'#7853't'
      TabOrder = 5
      Color = clCream
      ParentColor = False
      Action = acUpdateAll
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 343
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng ti'#7871'p theo'
      ImageIndex = 3
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 4
      Color = clCream
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acNext
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 263
      Top = 28
      Width = 80
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
      ImageIndex = 10
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 3
      Color = clCream
      ParentColor = False
      Action = acView
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pageRightSide: TElPageControl
      Left = 2
      Top = 60
      Width = 602
      Height = 322
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
      Multiline = False
      OnChanging = pageRightSideChanging
      OnChange = pageRightSideChange
      RaggedRight = False
      ScrollOpposite = False
      ShowBorder = False
      Style = etsAngledTabs
      TabIndex = 2
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabWorkMonth
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
      TabOrder = 10
      object tabWorkDay: TElTabSheet
        PageControl = pageRightSide
        ImageIndex = 0
        TabVisible = True
        Caption = 'B'#7843'ng ch'#7845'm c'#244'ng ng'#224'y'
        Visible = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 602
          Height = 298
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          object gridWorkDay: TdxDBGrid
            Left = 10
            Top = 39
            Width = 426
            Height = 178
            Bands = <
              item
                Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
                DisableCustomizing = True
                DisableDragging = True
                Fixed = bfLeft
                Width = 351
              end
              item
                Alignment = taLeftJustify
                DisableCustomizing = True
                DisableDragging = True
              end
              item
                Alignment = taLeftJustify
                DisableCustomizing = True
                DisableDragging = True
                Visible = False
              end
              item
                Alignment = taLeftJustify
                DisableCustomizing = True
                DisableDragging = True
                Visible = False
              end
              item
                Alignment = taLeftJustify
                DisableCustomizing = True
                DisableDragging = True
                Visible = False
              end
              item
                Alignment = taLeftJustify
                DisableCustomizing = True
                DisableDragging = True
                Visible = False
              end
              item
                Alignment = taLeftJustify
                DisableCustomizing = True
                DisableDragging = True
                Visible = False
              end>
            DefaultLayout = False
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = [fsBold]
            DataSource = dsWorkDay
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            ShowBands = True
            OnCustomDrawCell = gridWorkDayCustomDrawCell
            OnCustomDrawColumnHeader = gridWorkDayCustomDrawColumnHeader
            object gridWorkDayEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' NV'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 49
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM NV'
            end
            object gridWorkDayFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' v'#224' t'#234'n'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object gridWorkDayTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridWorkDayTOTAL_DAY: TdxDBGridColumn
              Alignment = taCenter
              Caption = 'S'#7889' ng'#224'y ch'#7845'm'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TOTAL_DAY'
              Caption_UTF7 = 'S+HtE ng+AOA-y ch+HqU-m'
            end
          end
          object ElPopupButton5: TElPopupButton
            Left = 640
            Top = 377
            Width = 72
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
            TabOrder = 4
            Color = clBtnFace
            ParentColor = False
            Action = acWorkDayPost
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton6: TElPopupButton
            Left = 10
            Top = 377
            Width = 85
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
            Caption = '&Ph'#225't sinh'
            TabOrder = 2
            Color = clBtnFace
            ParentColor = False
            Action = acPhatsinhNgaychamcong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton7: TElPopupButton
            Left = 712
            Top = 377
            Width = 72
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
            TabOrder = 5
            Color = clBtnFace
            ParentColor = False
            Action = acWorkDayCancel
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxWorkDayViewOption: TdxImageEdit
            Left = 60
            Top = 10
            Width = 85
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxWorkDayViewOptionChange
            DropDownRows = 33554439
            PopupBorder = pbSingle
          end
          object chkWorkDayViewColor: TdxCheckEdit
            Left = 151
            Top = 10
            Width = 85
            Color = clCream
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 1
            Alignment = taRightJustify
            Caption = 'Hi'#7875'n th'#7883' m'#224'u'
            StyleController = dmMain.StyleController
            OnChange = chkWorkDayViewColorChange
            State = cbsChecked
            StoredValues = 1
          end
          object ElPopupButton13: TElPopupButton
            Left = 95
            Top = 377
            Width = 85
            Height = 25
            Cursor = crDefault
            ImageIndex = 54
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'Nh'#7853'p nhanh'
            TabOrder = 3
            Color = clBtnFace
            ParentColor = False
            Action = acNhapnhanhNgaycong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item5: TdxLayoutItem
                Caption = 'Xem theo'
                Control = dxWorkDayViewOption
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item6: TdxLayoutItem
                ShowCaption = False
                Control = chkWorkDayViewColor
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group1: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxLayoutControl2Item3: TdxLayoutItem
                Caption = 'ElPopupButton6'
                ShowCaption = False
                Control = ElPopupButton6
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item7: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton13
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton5'
                ShowCaption = False
                Control = ElPopupButton5
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton7'
                ShowCaption = False
                Control = ElPopupButton7
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'gridWorkDay'
              ShowCaption = False
              Control = gridWorkDay
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object tabWorkTime: TElTabSheet
        PageControl = pageRightSide
        ImageIndex = 1
        TabVisible = True
        Caption = 'B'#7843'ng ch'#7845'm c'#244'ng ng'#224'y'
        Visible = False
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 602
          Height = 298
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridWorkTime: TdxDBGrid
            Left = 2
            Top = 71
            Width = 266
            Height = 147
            Bands = <
              item
                Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
                DisableCustomizing = True
                DisableDragging = True
                Fixed = bfLeft
                Width = 335
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 2
            KeyField = 'KEY_FIELD'
            SummaryGroups = <>
            SummarySeparator = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            OnEnter = gridWorkTimeEnter
            OnKeyDown = gridWorkTimeKeyDown
            OnKeyUp = gridWorkTimeKeyUp
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = [fsBold]
            DataSource = dsWorkTime
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            ShowBands = True
            OnCustomDrawBand = gridWorkTimeCustomDrawBand
            OnCustomDrawCell = gridWorkTimeCustomDrawCell
            object gridWorkTimeFULL_NAME: TdxDBGridColumn
              Alignment = taLeftJustify
              Caption = 'H'#7885' v'#224' t'#234'n'
              Color = clInfoBk
              DisableCustomizing = True
              DisableEditor = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taCenter
              Width = 120
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridWorkTimeFULL_NAMECustomDrawCell
              DisableGrouping = True
              FieldName = 'FULL_NAME'
              DisableFilter = True
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object gridWorkTimeTITLE_NAME: TdxDBGridColumn
              Alignment = taLeftJustify
              Caption = 'Ch'#7913'c v'#7909
              Color = clInfoBk
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 125
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridWorkTimeTITLE_NAMECustomDrawCell
              DisableGrouping = True
              FieldName = 'TITLE_NAME'
              DisableFilter = True
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridWorkTimeTOTAL_TIME: TdxDBGridColumn
              Alignment = taCenter
              Caption = 'T'#7893'ng gi'#7901
              Color = clInfoBk
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 61
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridWorkTimeTOTAL_TIMECustomDrawCell
              DisableGrouping = True
              FieldName = 'TOTAL_TIME'
              DisableFilter = True
              Caption_UTF7 = 'T+HtU-ng gi+Ht0'
            end
          end
          object ElPopupButton9: TElPopupButton
            Left = 2
            Top = 385
            Width = 85
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
            Caption = '&Ph'#225't sinh'
            TabOrder = 7
            Color = 15466238
            ParentColor = False
            Action = acPhatsinhGiochamcong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton10: TElPopupButton
            Left = 504
            Top = 385
            Width = 72
            Height = 25
            Cursor = crDefault
            ImageIndex = 46
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '&Th'#234'm'
            TabOrder = 11
            Color = 15466238
            ParentColor = False
            Action = acWorkTimeInsert
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton11: TElPopupButton
            Left = 720
            Top = 385
            Width = 72
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
            TabOrder = 14
            Color = 15466238
            ParentColor = False
            Action = acWorkTimeCancel
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton12: TElPopupButton
            Left = 648
            Top = 385
            Width = 72
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
            TabOrder = 13
            Color = 15466238
            ParentColor = False
            Action = acWorkTimePost
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxCurWeek: TdxSpinEdit
            Left = 180
            Top = 2
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            Alignment = taCenter
            StyleController = dmMain.StyleController
            OnChange = dxCurWeekChange
            MaxValue = 4.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            StoredValues = 49
          end
          object chkShowEndDate: TdxCheckEdit
            Left = 350
            Top = 2
            Width = 85
            Color = clCream
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            Alignment = taRightJustify
            Caption = 'Xem ng'#224'y ra'
            StyleController = dmMain.StyleController
            OnChange = chkShowEndDateChange
            StoredValues = 1
          end
          object chkWorkTimeViewColor: TdxCheckEdit
            Left = 265
            Top = 2
            Width = 85
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            Alignment = taRightJustify
            Caption = 'Hi'#7875'n th'#7883' m'#224'u'
            StyleController = dmMain.StyleController
            OnChange = chkWorkTimeViewColorChange
            State = cbsChecked
            StoredValues = 1
          end
          object chkViewType: TdxCheckEdit
            Left = 435
            Top = 2
            Width = 85
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            Alignment = taRightJustify
            Caption = 'Xem lo'#7841'i gi'#7901
            StyleController = dmMain.StyleController
            OnChange = chkViewTypeChange
            State = cbsChecked
            StoredValues = 1
          end
          object chkError: TdxCheckEdit
            Left = 520
            Top = 2
            Width = 80
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            Alignment = taRightJustify
            Caption = 'Ki'#7875'm tra l'#7895'i'
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object chkExtraOption: TdxCheckEdit
            Left = 693
            Top = 2
            Width = 99
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 6
            Alignment = taRightJustify
            Caption = 'Th'#234'm t'#249'y ch'#7885'n'
            StyleController = dmMain.StyleController
            OnChange = chkExtraOptionChange
            StoredValues = 1
          end
          object chkGiovaoBold: TdxCheckEdit
            Left = 134
            Top = 25
            Width = 85
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 17
            Alignment = taRightJustify
            Caption = 'N'#233't '#273#7853'm'
            StyleController = dmMain.StyleController
            OnChange = chkWorkTimeViewColorChange
            StoredValues = 1
          end
          object chkGioraBold: TdxCheckEdit
            Left = 134
            Top = 48
            Width = 85
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 19
            Alignment = taRightJustify
            Caption = 'N'#233't '#273#7853'm'
            StyleController = dmMain.StyleController
            OnChange = chkWorkTimeViewColorChange
            StoredValues = 1
          end
          object chkGiovaoItalic: TdxCheckEdit
            Left = 219
            Top = 25
            Width = 85
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 18
            Alignment = taRightJustify
            Caption = 'In nghi'#234'ng'
            StyleController = dmMain.StyleController
            OnChange = chkWorkTimeViewColorChange
            StoredValues = 1
          end
          object chkGioraItalic: TdxCheckEdit
            Left = 219
            Top = 48
            Width = 85
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 20
            Alignment = taRightJustify
            Caption = 'In nghi'#234'ng'
            StyleController = dmMain.StyleController
            OnChange = chkWorkTimeViewColorChange
            StoredValues = 1
          end
          object ebGiovao: TdxButtonEdit
            Left = 49
            Top = 25
            Width = 85
            Color = clBlack
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 15
            ReadOnly = True
            StyleController = dmMain.StyleController
            Buttons = <
              item
                Default = True
              end>
            ViewStyle = vsHideCursor
            OnButtonClick = ebGiovaoButtonClick
            StoredValues = 64
            ExistButtons = True
          end
          object ebGiora: TdxButtonEdit
            Left = 49
            Top = 48
            Width = 85
            Color = clTeal
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 16
            ReadOnly = True
            StyleController = dmMain.StyleController
            Buttons = <
              item
                Default = True
              end>
            ViewStyle = vsHideCursor
            OnButtonClick = ebGioraButtonClick
            StoredValues = 64
            ExistButtons = True
          end
          object ElPopupButton14: TElPopupButton
            Left = 87
            Top = 385
            Width = 85
            Height = 25
            Cursor = crDefault
            ImageIndex = 54
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'Nh'#7853'p nhanh'
            TabOrder = 8
            Color = 15466238
            ParentColor = False
            Action = acNhapNhanhGiocong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object pbKiemTra: TElPopupButton
            Left = 292
            Top = 385
            Width = 85
            Height = 25
            Cursor = crDefault
            ImageIndex = 57
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'X'#7917' l'#237' C'#244'ng'
            TabOrder = 10
            Color = 15466238
            ParentColor = False
            Action = acXuliDulieuChamcong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton15: TElPopupButton
            Left = 576
            Top = 385
            Width = 72
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
            TabOrder = 12
            Color = 15466238
            ParentColor = False
            Action = acWorkTimeDelete
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton23: TElPopupButton
            Left = 172
            Top = 385
            Width = 120
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
            Caption = 'Ki'#7875'm tra C'#244'ng thi'#7871'u'
            TabOrder = 9
            Color = 15466238
            ParentColor = False
            Action = acKTChamCong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxOption: TdxImageEdit
            Left = 49
            Top = 2
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxOptionChange
            DropDownRows = 16777223
            PopupBorder = pbSingle
          end
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl3Group3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl3Group4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item22: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Xem theo'
                  Control = dxOption
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item9: TdxLayoutItem
                  AutoAligns = []
                  Caption = 'Tu'#7847'n th'#7913
                  Control = dxCurWeek
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item10: TdxLayoutItem
                  ShowCaption = False
                  Control = chkWorkTimeViewColor
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Item7: TdxLayoutItem
                AutoAligns = [aaVertical]
                ShowCaption = False
                Control = chkShowEndDate
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item8: TdxLayoutItem
                ShowCaption = False
                Control = chkViewType
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item11: TdxLayoutItem
                ShowCaption = False
                Visible = False
                Control = chkError
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item12: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                ShowCaption = False
                Control = chkExtraOption
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl3Group1: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxLayoutControl3Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'ElPopupButton9'
                ShowCaption = False
                Control = ElPopupButton9
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item13: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton14
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item15: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = ElPopupButton23
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxlcItemCheck: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = pbKiemTra
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Group2: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                UseIndent = False
                object dxLayoutControl3Item4: TdxLayoutItem
                  Caption = 'ElPopupButton10'
                  ShowCaption = False
                  Control = ElPopupButton10
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item2: TdxLayoutItem
                  Caption = 'ElPopupButton15'
                  ShowCaption = False
                  Control = ElPopupButton15
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item6: TdxLayoutItem
                  Caption = 'ElPopupButton12'
                  ShowCaption = False
                  Control = ElPopupButton12
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item5: TdxLayoutItem
                  Caption = 'ElPopupButton11'
                  ShowCaption = False
                  Control = ElPopupButton11
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxlcGroupExtraOption: TdxLayoutGroup
              ShowCaption = False
              Visible = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl3Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl3Item19: TdxLayoutItem
                  Caption = 'Gi'#7901' v'#224'o'
                  Control = ebGiovao
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item20: TdxLayoutItem
                  Caption = 'Gi'#7901' ra'
                  Control = ebGiora
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl3Group8: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl3Item14: TdxLayoutItem
                    ShowCaption = False
                    Control = chkGiovaoBold
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item17: TdxLayoutItem
                    ShowCaption = False
                    Control = chkGiovaoItalic
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl3Group9: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl3Item16: TdxLayoutItem
                    ShowCaption = False
                    Control = chkGioraBold
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item18: TdxLayoutItem
                    ShowCaption = False
                    Control = chkGioraItalic
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
            object dxLayoutControl3Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'gridWorkTime'
              ShowCaption = False
              Control = gridWorkTime
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object tabWorkMonth: TElTabSheet
        PageControl = pageRightSide
        ImageIndex = 2
        TabVisible = True
        Caption = 'B'#7843'ng ch'#7845'm c'#244'ng th'#225'ng'
        object dxLayoutControl4: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 602
          Height = 298
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          object chkWorkMonthViewColor: TdxCheckEdit
            Left = 10
            Top = 11
            Width = 99
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 0
            Alignment = taRightJustify
            Caption = 'Hi'#7875'n th'#7883' m'#224'u'
            StyleController = dmMain.StyleController
            OnChange = chkWorkMonthViewColorChange
            State = cbsChecked
            StoredValues = 1
          end
          object gridWorkMonth: TdxDBGrid
            Left = 12
            Top = 43
            Width = 602
            Height = 283
            Bands = <
              item
                Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
                DisableCustomizing = True
                DisableDragging = True
                Fixed = bfLeft
                Width = 351
              end>
            DefaultLayout = False
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'KEY_ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = [fsBold]
            DataSource = dsWorkMonth
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            ShowBands = True
            OnCustomDrawCell = gridWorkMonthCustomDrawCell
            object gridWorkMonthEMPLOYEE_NO: TdxDBGridColumn
              Tag = -1
              Caption = 'M'#227' NV'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 49
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM NV'
            end
            object gridWorkMonthFULL_NAME: TdxDBGridColumn
              Tag = -1
              Caption = 'H'#7885' v'#224' t'#234'n'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object gridWorkMonthTITLE_NAME: TdxDBGridColumn
              Tag = -1
              Caption = 'Ch'#7913'c v'#7909
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridWorkMonthTOTAL_DAY: TdxDBGridColumn
              Tag = -1
              Alignment = taCenter
              Caption = 'T'#7893'ng ng'#224'y'
              DisableEditor = True
              Width = 59
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TOTAL_DAY'
              Caption_UTF7 = 'T+HtU-ng ng+AOA-y'
            end
            object gridWorkMonthTOTAL_TIME: TdxDBGridColumn
              Tag = -1
              Alignment = taCenter
              Caption = 'T'#7893'ng gi'#7901
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TOTAL_TIME'
              Caption_UTF7 = 'T+HtU-ng gi+Ht0'
            end
            object gridWorkMonthWM_ID: TdxDBGridColumn
              DisableCaption = True
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'WM_ID'
              DisableFilter = True
            end
            object gridWorkMonthDEPT_NO: TdxDBGridColumn
              DisableCaption = True
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NO'
              DisableFilter = True
            end
            object gridWorkMonthTITLE_NO: TdxDBGridColumn
              DisableCaption = True
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NO'
              DisableFilter = True
            end
            object gridWorkMonthKEY_ID: TdxDBGridColumn
              DisableCaption = True
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'KEY_ID'
              DisableFilter = True
            end
          end
          object ElPopupButton8: TElPopupButton
            Left = 676
            Top = 10
            Width = 108
            Height = 25
            Cursor = crDefault
            ImageIndex = 5
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'C'#7853'p nh'#7853't l'#432#7899'i'
            TabOrder = 1
            Color = clBtnFace
            ParentColor = False
            Action = acCapnhatLuoi
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl4Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl4Item1: TdxLayoutItem
                AutoAligns = []
                AlignVert = avCenter
                ShowCaption = False
                Control = chkWorkMonthViewColor
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl4Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton8'
                ShowCaption = False
                Control = ElPopupButton8
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl4Item2: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = gridWorkMonth
            end
          end
        end
      end
      object tabWorkTotalTime: TElTabSheet
        PageControl = pageRightSide
        ImageIndex = 3
        TabVisible = True
        Caption = 'B'#7843'ng ch'#7845'm c'#244'ng t'#7893'ng gi'#7901
        Visible = False
        object dxLayoutControl5: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 602
          Height = 298
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridWorkTotalTime: TdxDBGrid
            Left = 2
            Top = 25
            Width = 266
            Height = 147
            Bands = <
              item
                Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
                DisableCustomizing = True
                DisableDragging = True
                Fixed = bfLeft
                Width = 335
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'KEY_FIELD'
            SummaryGroups = <>
            SummarySeparator = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'Tahoma'
            BandFont.Style = [fsBold]
            DataSource = dsWorkTotal
            Filter.Criteria = {00000000}
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'Tahoma'
            PreviewFont.Style = []
            ShowBands = True
            OnCustomDrawBand = gridWorkTimeCustomDrawBand
            OnCustomDrawCell = gridWorkTotalTimeCustomDrawCell
            object dxDBGridColumn1: TdxDBGridColumn
              Alignment = taLeftJustify
              Caption = 'H'#7885' v'#224' t'#234'n'
              Color = clInfoBk
              DisableCustomizing = True
              DisableEditor = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taCenter
              Width = 120
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridWorkTimeFULL_NAMECustomDrawCell
              DisableGrouping = True
              FieldName = 'FULL_NAME'
              DisableFilter = True
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object dxDBGridColumn2: TdxDBGridColumn
              Alignment = taLeftJustify
              Caption = 'Ch'#7913'c v'#7909
              Color = clInfoBk
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 125
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridWorkTimeTITLE_NAMECustomDrawCell
              DisableGrouping = True
              FieldName = 'TITLE_NAME'
              DisableFilter = True
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object dxDBGridColumn3: TdxDBGridColumn
              Alignment = taCenter
              Caption = 'T'#7893'ng gi'#7901
              Color = clInfoBk
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 61
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridWorkTimeTOTAL_TIMECustomDrawCell
              DisableGrouping = True
              FieldName = 'TOTAL_TIME'
              DisableFilter = True
              Caption_UTF7 = 'T+HtU-ng gi+Ht0'
            end
          end
          object ElPopupButton16: TElPopupButton
            Left = 2
            Top = 385
            Width = 85
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
            Caption = '&Ph'#225't sinh'
            TabOrder = 3
            Color = 15466238
            ParentColor = False
            Action = acPhatsinhTonggioChamcong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton17: TElPopupButton
            Left = 504
            Top = 385
            Width = 72
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
            TabOrder = 6
            Color = 15466238
            ParentColor = False
            Action = acWorkTotalInsert
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton18: TElPopupButton
            Left = 720
            Top = 385
            Width = 72
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
            TabOrder = 9
            Color = 15466238
            ParentColor = False
            Action = acWorkTotalCancel
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton19: TElPopupButton
            Left = 648
            Top = 385
            Width = 72
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
            TabOrder = 8
            Color = 15466238
            ParentColor = False
            Action = acWorkTotalPost
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxCurWeek_T: TdxSpinEdit
            Left = 48
            Top = 2
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            Alignment = taCenter
            StyleController = dmMain.StyleController
            OnChange = dxCurWeek_TChange
            MaxValue = 4.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            StoredValues = 49
          end
          object ElPopupButton20: TElPopupButton
            Left = 87
            Top = 385
            Width = 85
            Height = 25
            Cursor = crDefault
            ImageIndex = 54
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'Nh'#7853'p nhanh'
            TabOrder = 4
            Color = 15466238
            ParentColor = False
            Action = acNhapnhanhTonggiocong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton22: TElPopupButton
            Left = 576
            Top = 385
            Width = 72
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
            TabOrder = 7
            Color = 15466238
            ParentColor = False
            Action = acWorkTotalDelete
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object chkWorkTotalViewColor: TdxCheckEdit
            Left = 133
            Top = 2
            Width = 85
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            Alignment = taRightJustify
            Caption = 'Hi'#7875'n th'#7883' m'#224'u'
            StyleController = dmMain.StyleController
            OnChange = chkWorkTimeViewColorChange
            State = cbsChecked
            StoredValues = 1
          end
          object chkWorkTotalSelectView: TdxCheckEdit
            Left = 218
            Top = 2
            Width = 103
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            Caption = 'Ch'#7845'm theo gi'#7901
            StyleController = dmMain.StyleController
            OnChange = chkWorkTotalSelectViewChange
          end
          object ElPopupButton24: TElPopupButton
            Left = 172
            Top = 385
            Width = 133
            Height = 25
            Cursor = crDefault
            ImageIndex = 58
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'T'#7893'ng h'#7907'p t'#7915' CC gi'#7901
            TabOrder = 5
            Color = 15466238
            ParentColor = False
            Action = acTHTuCCGio
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutGroup1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutGroup2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem1: TdxLayoutItem
                AutoAligns = []
                Caption = 'Tu'#7847'n th'#7913
                Control = dxCurWeek_T
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl5Item1: TdxLayoutItem
                ShowCaption = False
                Control = chkWorkTotalViewColor
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl5Item2: TdxLayoutItem
                Caption = 'dxCheckEdit1'
                ShowCaption = False
                Control = chkWorkTotalSelectView
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxLayoutItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'ElPopupButton9'
                ShowCaption = False
                Visible = False
                Control = ElPopupButton16
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem8: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton20
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl5Item4: TdxLayoutItem
                Caption = 'ElPopupButton24'
                ShowCaption = False
                Control = ElPopupButton24
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutGroup5: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                UseIndent = False
                object dxLayoutItem10: TdxLayoutItem
                  Caption = 'ElPopupButton10'
                  ShowCaption = False
                  Control = ElPopupButton17
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem11: TdxLayoutItem
                  Caption = 'ElPopupButton15'
                  ShowCaption = False
                  Control = ElPopupButton22
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem12: TdxLayoutItem
                  Caption = 'ElPopupButton12'
                  ShowCaption = False
                  Control = ElPopupButton19
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem13: TdxLayoutItem
                  Caption = 'ElPopupButton11'
                  ShowCaption = False
                  Control = ElPopupButton18
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutItem20: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'gridWorkTime'
              ShowCaption = False
              Control = gridWorkTotalTime
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object ElPopupButton21: TElPopupButton
      Left = 709
      Top = 28
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 5
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&T'#249'y ch'#7885'n'
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acTuychon
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxlcRightSideGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcRightSideGroup2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883
        LayoutDirection = ldHorizontal
        object dxlcRightSideItem2: TdxLayoutItem
          Caption = 'Th'#225'ng'
          Control = dxInMonth
          ControlOptions.ShowBorder = False
        end
        object dxlcRightSideItem3: TdxLayoutItem
          Caption = 'n'#259'm'
          Control = dxInYear
          ControlOptions.ShowBorder = False
        end
        object dxlcRightSideGroup1: TdxLayoutGroup
          AutoAligns = []
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          object dxlcRightSideItem4: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.ShowBorder = False
          end
          object dxlcRightSideItem7: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.ShowBorder = False
          end
          object dxlcRightSideItem6: TdxLayoutItem
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcRightSideItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.ShowBorder = False
        end
        object dxlcRightSideItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton21'
          ShowCaption = False
          Visible = False
          Control = ElPopupButton21
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcRightSideItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'pageRightSide'
        ShowCaption = False
        Control = pageRightSide
        ControlOptions.ShowBorder = False
      end
    end
  end
  object panelHeader: TElPanel [4]
    Left = 0
    Top = 0
    Width = 994
    Height = 30
    Background.Data = {
      36490100424D364901000000000036040000280000007F020000820000000100
      0800000000000045010000000000000000000001000000000000FFFFFF00F9CD
      B200F4CBB300CE937400C8825B00F1AC8400F4C5AB00C65A3100D48A6600DFBC
      A700D39D8100D3693B00D29A7B00E3845200EA9E7200C6694400EB946200F3B6
      9200ECB49300B7492400FADAC600CC8D6900FEF6F200D3957200EEA47900FEDE
      CA00DD7A4B00DCA38300FBE9DD00FAD7C200E3AB8B00E68A5A00EBAA8500FDE1
      CF00F5D1BC00FEF9F600D7A58A00FDE2D100FBE7DA00C6714900ECC3AC00DA72
      4200EDBA9C00D9AB9200EEB18D00BB673700B1542200DA9D7A00FAD5BE00C47A
      5300F6D5C200CB603400FADFCD00FAE1D200F9D2BA00DA825900EDBDA300FDF2
      EA00E5BCA500DAA98E00C2562D00F3B89500F6C9AE00FBDDCA00FAD0B600FED6
      BE00EBAE8A00D37C5600E3B59B00FBC6A200EB9B6C00CD896400D5A18500BF73
      4D00E5B29400CA866000FED9C200E3A58300D5704300FDDBC500FDEFE600F2B1
      8A00DFB39A00FFFDFB00FFFBF900F9CAAE00E98D5A00D3916D00CE643800F6DE
      D100FFFDFD00F3CEB900DAA68900F6C1A200FBD9C200F1BEA100F5DBCC00D56D
      3F00AA501900E17D4B00F2B38E00F0A77C00FBE5D700C4623C00FACAAA00EEA1
      7500F5BE9D00F2C1A500FDF3ED00DB947100BD502900EED4C800FCC9A600FDF5
      EF00FDE5D500C57E5700F2BA9900FEDFCD00E3C5B300E2C2AD00CC745000E0BF
      AA00C5826200F5BD9A00FBE3D500F7C19E00EECAB500FDEDE300CA7C5300F9DB
      C900EECDBB00FFFFFD00FEDDC700F6C5A600EBC6B100E4AE9100E58D5F00F3B5
      8F00FED5BB00DBAC9300FBEBE000EAB69900CE683B00F5C3A500F6E4DB00F5B5
      8F00C88E7100E6916400F5B38A00F1BD9F00E3A07C00D0977800F5BA9800FBCD
      AF00F1AE8800E6A98600E3814E00E2865800D6997600E9A68100EA905E00FBD4
      BB00FDEBE000DDAF9600FDE3D400CF7B5900F8D3BE00EA966700F0BB9D00F3C1
      A300EEC1A600D4703C00FBEDE300E9CEC200E6956800E5885500DBAE9500E98A
      5600B45D2A00FBEDE500F8C7A900DA764800E6C9BA00F5E1D600DCA07D00E1B6
      A100FCD3B900D3A59100DAAF9A00FDFDFD00E6B99F00FBD7BF00CE906E00CC68
      3500C4846700D7AA9300F3B08600DEAD9100FBDDC700FDEFE900E5C5B900FDDB
      C800B2582500FDCEAF00F3BC9B00CE9F8B00D7744700DA9A7500C27D6000C763
      3000FDF1E700AE552000FDCBA900DBA79300F7D8C600F5B58B00C78A6D00DD77
      4600D7A78E00F0C7B000E1BFB200DD987800F5B38D00D9AA9500C5602E00E799
      6E00CFA39100F0A98000E4C8B600E0A78800FDE5D300EC986600FBCDAB00EFB8
      9700D88E6E00DF7F5000F1B79800F6EAE400F3B38B00F7C3A200FDCDAB00F8DB
      CC00C8896600FBE3D300F0DAD000E9C7B900F3C3A700E7865300F8E8DF00F7D0
      B800D9794C00F5E7E100B6612F00DAB1A100EDC0A800E9B9A1005A5A5A5ABDBD
      BD535353BD5353BD535353B3EDF89090B7F4F46F6FADB6F5DC79B9FDDFBBBCFE
      0606F65FEC2C4242209618960E0EE1AEAE9388081F9D9D3737EB37FAEBFAFAFA
      CECECE4E4E0F610F8E0F8E8E586758673333333307070707073C3C3C3C3C6E6E
      6E6E6E6E136E1313131313131313131313131323717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005A5A5ABDBDBD
      BD5353535353BD53535353B3ED9090B759F4F46FADADF576DC09B9BCDA24DF28
      3E06F66BA8EC2C4220969F69960EE1E1AE93931F1F089D9D373737EBEBFAFAFA
      FACECE4E4E4E0F4E618E0F8E8E0F583358333333073307070707073C3C3C3C6E
      3C6E6E6E6E6E136E131313131313131313131371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005ABDBDBD5353
      53535353535353BD535353B3F8909059F4F46FADADB6C8DC09FDFDDF24CDD528
      3E06F66B95A86442209665960E0EE1E1AEAE9388081F9D9D9D37EBEBEBEBFAFA
      FAB5CECE4E4E4E610F61618E0F8E58585858333333330733070707073C3C3C3C
      6E6E6E6E6E6E6E136E13131313131313131313BD717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005ABDBD535353
      5353535353BDBD53535353EDFBB7B7F4F46FADADF5C8DC09B9BCBCBBCD0AD528
      3E06F66B5FA8742C05969F9F0E69E1E1AEAE93888888889D9D9D9D37EBEBEB1A
      FAFACECECE4E274E4E4E0F618E8E8E8E58585833673333330707070707073C3C
      3C3C3C6E6E6E6E6E6E136E131313131313131371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005ABDBDBD5353
      53535353BD53BD5353BD53F890F4F4F46F6FADC876DC0909FDBCBB240A97E228
      3E06066BA9A874EC9A9F9F1896690EE1E1AE93889388889D9D9D370DEBEBEB1A
      FAFAFACECE4E4E4E4E4E61610F8E8E8E8E585858583333333307070707073C07
      3C3C3C3C6E6E6E6E6E6E6E136E131313131313BD717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005ABDBDBD5353
      5353BD53BD53BD53535353FBB7F4F46FADADC8C8DCDCB9FDBCC3DACD0C032428
      0206066BA99574EC129F9F18960E0E46E1AEAE88938888889D9D9D0D37EBEBEB
      EBFAFAB5CECECE4ECE4E4E4E61618E0B8E8E585858335833333307070707073C
      073C3C3C6E3C6E6E6E6E6E6E6E13131313131371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005ABDBD535353
      BD5353BD5353535353535390F46F6FADADB6C8DCDCFDFDBCC3BB480A97924828
      AA385F2A8D8D2C2C42209F0E0EE1E1E1AE93938888881F9D9D9D9D0DEB0DEBEB
      FA1AFAFAB5CECECECE4E4E4E6161610B8E0B8E8E585858583333333307070707
      073C3C3C3C3C3C6E6E6E6E6E6E136E1313131371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BD53BD535353
      53BD53535353535353BD5490F4ADADADB6C8DC0909FDBCC3BB480A0C03920A06
      023E068FA99574ECEC429A9F18180E0EE1E1AE9393888888881F9D9D9DEB0DEB
      EBEBFA1AFAB5CECECECECE4E616161610B0B0B8E585858583358333333330707
      0707073C3C3C3C6E3C6E6E6E6E6E6E136E131371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100535353535353
      5353535353535353535353B76FADB6C8C8DC0909FDB0C3DA48CD0C9792D80A28
      023E0685A995CC74EC422C0565690E0EE1E1A793939388881F1F9D9D9D0D0DEB
      EBEBEB1A1AFAB5B5CECECECE4E616161610B0B0B8E5858585858333333330707
      070707073C3C3C3C3C6E3C6E6E6E6E136E136EBD717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BD5353535353
      5353535353535354545353906FB6C8DCDC09B9BCBCC324CD0A0C9703D8F2BBF6
      023E068FA95FA874EC4264512018690E0EE1A793A793A088881F1F1F9D9D0D0D
      EBEBEBEB1A1AFAFAB5B5CECE4E4E4E616161610B0B8E8E585858585833333333
      3307070707073C3C3C3C3C3C6E6E6E6E6E136E71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100535353535353
      5353535354545454545354F8F4DCDCDC09FDFDB0C324CD0A97979292C2D83A28
      3E06068FA95FCC743D42646442E3690E0EE14693A793108888881F1F9D9D9D0D
      0DEBEBEB1A1AFAFAB5FAB5CECE4E4E4E616161610B0B0B8E8E58585858335833
      333307070707073C3C3C3C6E3C6E6E6E6E6E6E71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BD5353535353
      5353545454545454545454C7B7C8B909FDBCB03BCD480A0C9792C0C2C248A628
      3E3E068F5D95CC98EC42642C51059F690E46E1AEA7A793A08888561F9D9D9D9D
      EB0DEBEBEB1A1A1AFAFAB5B5CE2929294E616161610B0B8E0B8E585858585833
      33333307070707073C3C3C3C3C6E3C6E6E6E6E71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100535353545454
      5454545454545454545454508C6FFDBCBCC3DACD0A0C97979292F27AC028D628
      3EB4068FA96A9598EC426464420505690E46E1AEA7109310A088881F1F9D9D0D
      0D0D9CEBEB1AEB1A1AFAFAB5B5CE2929294E4E6161610B0B0B8E8E8E58585833
      583333330707070707073C3C3C3C3C6E6E6E6E71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100535454545454
      545454545454545454545450509076C32424480A0C9703C015D8D0D8FD8114AA
      AA38A82AE91212122C422020209F9F9F46E1AEAE939393A0A0881F1F1F1F9D9D
      0D0DEB0DEBEBEB1AEBFA1AFAB5D9B5CE29294E29616161610B0B0B0B8E585858
      5858333333330707070707073C3C3C3C3C6E6E71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100535454545454
      5454545454545423545454B3B37FB709480C0C0C9792C0D8F2D0F2FD3F81D6AA
      3E06858F5F6ACC743D4289642C9A9A9A056946AEA7A7101093A0A0881F1F1F9D
      9D0D0D0DEBEBEBEB631A1AFAFAD9D9B529CE29294E616161610B610B8E0B5858
      585833333333330707070707073C3C3C3C3C6E71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100545454545454
      5454545454542323235454B37F7F8CB7C8C30C0303C092F2D80A77D6818114AA
      3E0685A95D6A8DE9122012519A9A05E3E36518A7E7A7A7109310A088881F1FAF
      9D9D0D0D0DEBEBEBEB63EB1AFA1AD9B5D929CE2929294E6161610B0B0B0B0B58
      58585833333333330733070707073C3C3C3C3C71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100545454545423
      23545454542323235454237F7F8C8C8CB759F5C3C0F203DF8632D6141DD61D5F
      06F68F5D6A9598743D42892C519A9A05E3E365E146A7A710101088A0881F881F
      1F9D0D0D0D0DEBEBEBEBEB1A1A1AD9D9D9B5D9292929294E616161610B0B0B0B
      5858585858333333333307E00707073C3C3C3C71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100545423232323
      23232323232323232323238C8C1C1C1C266FFD0A92F2920CFD3234F181811438
      B4068F5D5FCC74983D4264645151050505E365690EE7E7A71010A0A0A0881F1F
      1FAFAF9D0D0D0DEBEBEBEBEB631A1A1AD9D9D9CED9CE2929294E616161610B0B
      0B0B8E585858583333333307330707073C073C71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100542323232323
      23232323232323232323238C8C1C1CF8DC249292D8D8C27A7A0A76F181D61D38
      B4858F5D6A6ACC98114289645151050505E3E3181846A7A7101093A0A088561F
      1F1FAF0D9D0D0D0DEBEBEBEB63631A1A1AD9D9D9D9B5292929294E616161610B
      0B0B8E0B58585858333333333307E00707070771717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100542323232323
      23232323232323232323238C1C1CF8AD0CD8929292D8C27AD049978214D61D38
      B4858F5D5FCC98EC1142642CEE510505E3E3E318181846E7A7101093A0A08856
      1F1F1F9DF79D0D0D0D0DEBEB636363631A1A1AD9D9D9D9CE2929292961616161
      610B0B580B8E5858585833333333330733070771717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100232323232323
      23232323232323162323168C1C1CF4BB9297929292D8D8C27A31D0E2321D1D38
      B4F65D5D6ACC743D114264EE519A9A05E3E3651818186946E7A71010A093A056
      1F561FAF9D9DF70D0D0DEBEB9CEB6363631A1A1AD9D9D9D929CE292929612961
      61610B0B0B0B588E58585858583333333307E071717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100232323232323
      23232323232316231623161C1C90C803979797979292D8C2C2D049D886D61D95
      2A2AECE912122C2C4242202020209F659F1818186969690EA710A01093A0A088
      56561F1F9D1FF79D0D0D0D9C9C9CEB636363631A1A1AD9D9D9D9292929292961
      6161610B0B0B0B8E8E8E58585858333333333371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100232323232323
      23162316231616161616231C1C5909970A0C0C97039292C2C2D031D0FD1D1DA8
      F68F5D5F6ACC743D114264EE519A9A05E305E318186518690EE7A71010A0A0A0
      A0561F1F1F1FAFAF9DF70D0D0D9C9C9C9C6363631A1AD91AD9D9D9292929294E
      6129616161610B0B0B8E8E585858583333333371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100232323162316
      16231616161616161616161C1CF4FD970ACDCD97CD0392D8C2D049D0DF1D32A8
      8F8FA95D6ACC983D3D2064649A9A9A0505E3E31865181818690EA7E71093A0A0
      A0A0561F1F1F1FAF9DAF0D0D0D0D9C9C9CEB6363636363D91AD9D9D9D9292929
      292961296161610B0B0B0B8E8E8E585833583371717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100231616162316
      1616161616161616161616261C60FD0ACDCDCDCD0A929292C2D0D0D0D53232A8
      855D5D6A6ACC743D114264EE519A050505E3E31865651818186946E7A710A093
      A0A05688561F1F1FAFAF9DF70D0D0D9C9C9C9C636363631A1AD9D9D9D9D929B5
      2929294EAB61AB61610B0B0B8E8E588E58585871717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100231616161616
      16161616161616711616162626B709CDE2E2E2CDCDCD92D8C2D0D0C2B932302A
      8FA97D6ACC74743D1142895151C4050505E3E318656518181818690E10101010
      A0A088561F561F1F1FAF9DF7F7F70D0D0D9C9C639C636363631A1A1AD9D9D9D9
      CE2929294E29AB616161610B0B0B8E8E58585871717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100161616161616
      1616717171717171717116262626ADE2CDE2E2CDCD039292C2D0D003821DA6E9
      8F5D7D6ACCCC983D1142EEEE5151050505E3E318656518181818696946101010
      10A0A088561F561F1F1F9DB1F7F7F7F70D0D9C9C9C9C63636363631AD91AD9D9
      D9D929CE2929294E616161610B610B8E0B8E8E71717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100161616161616
      71717171716C6C717171712626265909E2E2CDCDCDCD92D8C2D07AFD1D1DA6E9
      EF5D6A6A7B983D3D11428964519A9A050505E318656518181818696969E79310
      10A0A0A0A056561F561FAFB1AFF7F7F7F70D0D0D9C9C639C9C6363631A63CEAB
      ABABABAB8EABC1C1C1C1C1C1D1D1D1D1E0E0E0E4E4E476767677777777797979
      7979797979797971717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100161671717171
      7171716C6C6C6C6C6C716C6666262659BCE2E2CDCD9792D8D0C2BB321DA6A64A
      7474EC1211122C2C429F200520E39F181818690E690E0E0E0E0E0EE146E19388
      561F1F1F1FAF9DAF9D9DF70D0D0D9C9C9C9CF70D9C0D9C9C9C9C6363636329AB
      ABABABABABC18EABC1C1C1C1C1D1D1D1D1D1E0E4E4E4E4767677767777797979
      7979797979797971717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100717171717171
      6C6C6C6C6C6C6C6C6C6C6C726666661C59FDCDCD970392D8D8BCA61DA6A6A695
      5F5D6ACC98983D3D114289DE5151050505E3E318656565656518186918460EA7
      109310A0A0A0A01F1F1F56B1B1B1B1AFF79CF70DF70D0D9C9C9C9C9C636329D9
      AB29ABABABABAB0B8E8EC1C1C1D1C1D1D1D1D1B6E4E4E4767676777777777979
      7979797979797971717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100716C6C6C6C6C
      6C6C6C6C6C6C6C6C6C6C6CA4726666262635B6FDC3CDBBBC86321D1D30A636A8
      5D6ACCCC98983D11119A645151519A050505E318656565651818181869E1690E
      A71010A0A0A0A01F88565656B1B1B1B1AF0DAFF7F70D0D0D9C9C9C9C639C2929
      29AB29ABABABAB0BABC18EC1C1C1C1C1D1D1D1B6B6E4E4767676777777777979
      7979797979797971717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171006C6C6C6C6C6C
      6C6C6C6C3939393939393935F3F37C666666667C35353F3F14D61D3230A622A8
      6A5FCCCC983D1111119ADEEE949A9A050505E318E36565651818181818E16969
      4610931093A0A01F565656565656B1B1B10DB1AFF7F7F70D0D0D9C9C9C9CD9CE
      D929CE2929ABABABABAB0B0B8EC1C1C1C1C1D1B6B6E4E4E47676777777777979
      797979797979795A5A5A715A5A5A715A71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171006C3939393939
      3939393939C7C7C7C7D239353535217C7C7C7C3534343481D61D1D32A62236A8
      6A95CCCC983D3D11899A64EEEE519A050505E318E365E31865181818180E6969
      0E46101010A0A01F88A05656565656B1B1F7B1B1AFF7F7F7F70D2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E797979795A5A5A5A5A5A5A5A5A71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171006C3939393939
      3939C7C7C7C7505050C7C7343434343535353534343F81141D1D1DA63636F9A8
      6A6ACC98983D3D11899ADEEE5151C49A05050518E3E3E36518651818690E1869
      0E6946101093101FA0A0A0A05656565656AFB1B1B1B1AFF7F7F72E663559F1D6
      D63222225B5B02DB2EDBDBDBDB28DBDBDBDB7E00000000000000000000000000
      00002E797979795A5A5A5A5A5A53535A71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171003939393939C7
      C7D2D250505050B35050503F343F3F3434343434F18114141D3230A636363674
      6A6A7B98983D1111899AEEEE51C49AC405050518E3E3656565651818180E1869
      696969461010101FA0A0A0A0A056565656AFB1B1B1B1B1AFAFF72E3559F1F1D6
      32A6225B7E02DBDB2E06280628FE2828DB86865A000000000000000000000000
      00002E7909790953535353535353535371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710039C7C7D2C750
      5050505050B3B3B37F5050813F818181813F3F811414141D323030A63636F974
      E9E93D121112642C9A9A9A0520E3E3E3E3659F189F1869186969690E0E0E0E0E
      E10E46E193A0888856565656561F1F1FAFB11FB1B11FB1B1AFAF2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2828FE28FEFEFE283A274B535A00000000000000000000
      00002E7909790953535353535353535371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100C75050505050
      505050B3B37F7F7F7F7FB3811414D614D61DD61414D61D1DBF30A6363636F974
      7B7B98983D3D1111119A64EE51C4C4059A05056505E3E36565656565180E1818
      696969690EA7938810A0A0A0A0A0A0A0A01F56565656B11FB1B12E59F1F1D632
      22220202DBDB066B2EFEAA6B38FE38FEFE472E2E52BDBD5A005A000000000000
      00002E0979090953535354535353535371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100505050B35050
      507F7F7F7F7F7F7F7F7F7F1414D61D1D1D1D3030BF1D1D1D3030A636F9F9F974
      7B7B7B98983D1111899A64515151C49A1D1D32A63032303230A622A6225B2222
      22F9225BF95B02DB023E3E3E3E3E3E3E3E063E063E06060606062E50B3AC8CF8
      2666355960D6A65B2EDBDBFEAA38383817CA2E2EB2595A5A5A5A5A0000000000
      00002E0909090954545454545454545471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100507F7F7F7F7F
      7F7F7F7F7F7F8C8C8C8C8CD65E1D1DBF303030A63636A1A130A13636F9404074
      7B7B98983D3D1189899AEEEE51519AC41D1DA622A6A6A6A6362222225B025B5B
      5B5B5B5B5B0202023E3E06060606060606F606060606F6F6F6F62E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2EDB6BAA38A8FF2FCA2E2E2E2E497153535A5A5A5A5A0000
      00002E0909090954545454545454545471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171007F7F7F7F7F7F
      8C7F8C8C8C8C8C8C8C8C8C1D1D1D1D303030303636F9404040363636F9F94074
      7B7B98983D3D1111119AEEEEEE9A9A9A1D403D6411118989891264642C9A2C9A
      9A429A9A429A9A063E05691869696969690E69690E690E690E0E2E3559F18132
      32225B02020606F62E5F38A8A8A84DFC2E2E2E2E2E2E0C535A5A5A5A5A5A0000
      00002E0909090954545454545454545471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171007F7F8C8C8C8C
      8C8C8C8C8C8C8C1C1C261C301D3030A1A6A13636F9404001010140F9F9400174
      7B9898983D119111899A64EE51519A9A1D3EC4650505E3E3E3E3E36565961818
      18181818696969A93E4610101010101010A0A0A0A0A0A0A0A0A02EF1D632A622
      02020606F66B5FA82EA8A82AA8E5FC2E2E2E2E2E2E2ECA765353535A5A5A5A5A
      00002E0909090923542354545454545471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171007F8C8C8C8C8C
      8C8C8C1C1C1C1C1C1C901CBF303030A136363636404040010101010101F90198
      7B7B983D3D11111189516451515151C41D0205E3050505E3E3E3E3659F186518
      65181818186969F60265E710A710101010A010A0101010A0A0A02E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2EA82A2A122D2E2E2E2E382E2E2E2E2DFB53535A535A5A5A
      5A5A2E0909090923545423542323542371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008C8C8C8C8C1C
      1C1C1C1C1C1C1C1C1C661C30A1A1A1A1A13640404040010101010155553E023D
      3D3D1189898964EE2C519A9A9A0520053222063E060606F606F6FEF6FE6B6B6B
      6B6B6B5F5F6BA9023E6546101010101093A010101010101010A02EF1D6322222
      02023EF6F66B5F952EA8742A80CA2D2EA83838F12D2E2E2E04235353535A5A5A
      5A5A2E0909090923232323232323232371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008C1C1C1C1C1C
      1C1C262626262626262626A1A1A1A1363636404040400101010155553E550664
      3D98983D3D11118989515164EE51C4511D1D30A630A6A6A6A622222222F922F9
      2222F95B5BF9F9F93EE3690EE7A7E7A7A710A7A71010A71010102E81D632A6F9
      023E3E066B6B6B952EA8A82A4DA82AA8955F38F1282D2E2E2EDA535353535A5A
      5A5A2E0909090923232323232323232371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171001C1C1C1C1C26
      2626262626262626262626A13636363636F94040014001010155553E3E3EB451
      DEDE113D3D1111898951646464EE51511DF998113D3D113D11111189892C6464
      642C2C51512C643E020518180EE7E7E7E7A7E7E7E7A710E7E7E72E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2EA8A8A8A8A8A8A8955F6BF159860FD32ECAB653BD535353
      5A5A2E0909090923232323232323232371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171001C1C26262626
      2626262626266666666666A1A1363636F940F9404001010101553E3E683EB4EE
      EEEEEEEE8911111189516464EEEEEE515E029A050505C405050520E3E39FE3E3
      E3659F65656565F6F9051865184646E746E7E7A7E7E7A7A7E7A72E81D632A622
      020206F66B6B952A2E95959595A895955F385F34595932042E2EFCF453535353
      5A5A2E0909090923232323162323162371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100262626262666
      6666666666666666666666A1A136364040400140010101025555553E3EB4B4EE
      DEEE51C4C451898989EE646464EEEE511401C405C405C4050520E305E3E3E3E3
      E39F656565656506F99A656565180E4646E746E7A7E7A7E7E7A72E81D632A65B
      02DB06F66B5FA82A2E5F5F5F9595955F5F6B6B59343535590ACA2E2D90BD5353
      535A2E7909090916161623162316161671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100266666666666
      666666666666667266727C36363640F940F90101010101015555553E3E3EB451
      51515151C4C49AC4646489646464EEEED630023E3E3E3EDB3E063E3E06063E06
      060606060606B45B019A656565651869464646E7464646E7E1A72E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E5F5FA95F5F5FA96B6BF63459357C7C6652FC2E49FB5353
      535A2E0909090916161616161616161671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100666666666666
      6666667266F37C7CA47C7C36F940364040400101010201015555553EB43E0651
      94949451C4C4C4C4C4C4EE8964646464D6D632A63232A6A632A6A6A6A622A6A6
      2222A6A6A636A6A6019AE3E3E365E318694646464646464646E72EF1D6D6A622
      5B023E06AA5F382A2EF6A9A96BA96B6B6BF60659357C7C66902682492E49ED53
      535A2E7909090916161616161616161671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100666666666666
      72727CA47C7C7C7CA4A4F3363640F940404001010101015555553E5506B4B451
      EEEE9451C4C4C4C40505C49A646464EE14F9E9E97474ECE91111111111111111
      6411111111119102F9EEE3E3E3E3E3E3650E46464646464646462EF1D6D6325B
      5B02DB06AA38382A2EF66B6B6B6B6B6BFEF60659357C6666261C8C5903CA49AD
      53532E7909090916161616161616161671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100727C7C7C7C7C
      A4A4A4A4F3F3F33535352136F9404040400101010155015555553E3EB4B4B451
      5151C4C4C4C49A05050505E3E39A5151D60251519A9A420505050505050505E3
      E3050505E305E33E2251E3E3E3E3E3E3E3650E0E460E464646E12E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E06F6F6F6F6F6F60606DB357C7C6626261C8CACAC820404
      5A532E7909090916161616161616161671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100727C7C7C7CA4
      A4A435253525353535212140404001400101010101015555553EB43EB4B4B4D7
      D7EE94949451C4C4C40505C4050505C4D65BEE2C512C515151519A51C49A9A05
      C49AC4C49A9A0502368905050505050505E3180E0E0E0E0E460E2E59F1D632A6
      5B5BDBDB28FE38FF2E060606060606DB06DBDB7C667C26261C8C8CAC5050C739
      535A2E7909090916161671717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100A4F3F3352535
      25252535213521212121214040404001010101010155553E3E3E68B43EB43E94
      D7EEEE949494C4C4C49AC4050505050530A602020202020202020202023E3E02
      55553E3E02553EA636119A059A9A9A9AC405E318690E0E0E460E2E59F1813232
      225B7EDB28FEFE382E3E023EDB3E3EDB3E0202666690261C1C8C8CB350C7396C
      6C5A2E7979090971717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100252525253521
      212121342134213434343440404040010101015501555555553E683E3EB4B4D7
      D7D7D794949494C4C49AC4C405C405053032A6A6321D321D321D321D32321D1D
      1D1D1D1D1D321D1DF93DC4515151515151050520180E0E0E0E0E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E02020202020202025B5B6626261C1C8CAC7F5050396C6C
      71712E7979090971717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100252525212121
      2121213434343434213434400140010101019955555555553E553E6868B46864
      91DED7949494515151C4C4C4C4C4C4C432021189113DCCCCCCCCCCCC7474CC98
      CC7B9898987B7BF9A63D5164EE64EEEEEE9A05059F180E690E0E2E3559F1D632
      3222827EDB2828FE2E5B02025B5B5B5B5BF92226261C1C8CACAC5050C7396C6C
      71162E797909096C717171716C6C717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100252121212121
      212121213434343434753440010101010199019955555555553E3E6855B4B489
      DED7D7D7DEEE945194C4C4C49AC4C4C432060505050505EE6489896464648989
      89646464646464011D98648989898964899A202020E3960E0E0E2E90355960D6
      3222825B7E8628282E2222222222F92222A6A61C1C8C8CACACB350C7396C6C71
      16162E7779090971717171716C6C6C6C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100212121212121
      212134753434343419193F01010101010101550155555555555555B4B4B4B491
      91D7DEDEDEDEDE949494949A51C4519A32020505C405C40551EE648911111111
      11118911118989F91DCC8911111111111164202020209F690E0E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2ECAD3CAD3D3D3D32E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E71716C6C6C6C6C6C6C6C6C6C6C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100212134217534
      753434193F193F3F3F3F3F01010101010101010155555555553E68553EB4B491
      919191DE91D79494EEEE9494EE51515132A602553E3E023E3E3E0201F9F9F9F9
      F9F9F9F9F940F9D6307B113D3D3D3D3D3D899A2020209F9F0E0E2E62626262D3
      D3D3CACACAB2B2FCFCFC2D2D2D2D272D272727498080800404374B080808EA57
      576D2E716C6C6C6C6C6C6C6C6C6C6C6C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100753475341919
      3F193F3F3F3F3F813F3FC90101010101019999555555553E555555683EB43E91
      9191919191D7D7D7EED7D7EEEE515151D61D323032303230A63230321D1D1414
      1414141414141481306A3D9898983D989811204220209F9F960E2E62626262D3
      D3D3CACACAB2B2FCFCFC2D2D2D272D492749803180808004374B4B08080857EA
      6D6D2E6C6C6C6C6C6C6C6C6C6C6C6C6C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171007575343F3F3F
      3F3F3F3F3F3F3F3F3FC93F01010101015555553EB40606B4858585F6F68F8F9A
      9A51C4515194EEEED791EE89646464EE14F998747B747474743D7B7B7B7B7B5D
      EF8F8F8F8F8F8F1D145D98CCCCCCCC747B11422020209F9F96962E6262626262
      D3D3D3CAB2B2B2FCFCFC2D2D2D2D272D272727498080800404374B47080857EA
      576D2E6C6C6C6C6C6C6C6C6C6C6C6C3971717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100753F3F3F3F3F
      3F3F3F3F3F3F3FC9C9C9C9010101995555553EB406850685F68F8F8F8F8F8F51
      519A515151EEEE648989896464EE6464140289EE64646464649189DE89898989
      11987BCCCC7BCCA6818FCC6A6A6A6A6A6A3D2020209B9F4D96962E62626262D3
      D3D3CACACAB2B2FCFC2D2D2D2D2D27272727498031808004374B470808085757
      6D6D2E6C6C6C3939396C39393939393971717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100193F3F3F3F3F
      3F193F3F3F3FC9C9C9C9C901010101553EB485F6F6A96B6B6BA9A9A96BA96BC4
      9A9AC4C4429A5151EE6411898989898981F98989898964899191919111111111
      1111987B6A6A6A1D3F856A6A5D5D6A5D7DEC9B209B9F4D9696962E62626262D3
      D3D3CACACAB2B2FCFCFC2D2D2D0F2D272749273180808004044B4B0808080857
      6D6D2E3939393939393939393939393971717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710019193F3F3F3F
      3F3FC9C9C9C9C9C914C94F0199553EB4F6A9A9A9A9A96BA9A9A9A9A9A9A9A951
      519A519A9A51429A2C2C648989891111811DF9F9F9F9F9363636363636363636
      36363636A61D1D3481B45DA98F5D5D5D5DE99B9B9F4D969696962E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E393939393939C7C7C7C7C7C7C771717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100193F3F3F3F3F
      3FC9C9C9C94F4F4F4F4F1401B4F6A9959595955F5F5F5F5F5FA9A9A9A9A9A99A
      519A42514251422C422C9A2C648911118181D6D6D61414141414141414148114
      81818181813F3F3581B48F8F8585858585749B4D4D4D969696DDDDDD6DEA8808
      080837374343437843743DE9E9ECE911121112D61D321D321DD61DD6D6D6D6D6
      81F1FC3939393939C7C7C7C7C7C7C7C771717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710019C984C6C6C9
      4F844F4F4F4F4F4F4F1430F65F952A2A2AA89595955F5F5F5F5FA9A985858F9A
      5142512C2C51422C425142512C64113D8130A95DEFEFEFEF8FEF8F8F8F8F8F85
      858585858585B4D63F3E85B4B406B4B406954D4D4D969696DDDDDD6D6DEA0808
      373704434343787843CC74A87474E9ECE9ECECD6D6D6D6D6D6D6D6148181813F
      F1F1FCC73939393939C7C7C7C7C7C7C771717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008484844F844F
      4F4F4F4F4F4F4F145EA65B2A2AE92A8D2AA82AA89595959595955F85553EB442
      9A422C422C422C2C2C2C2C2C2C642C11F1F998987B7B7B7B7B7B7B7B6A6A6A6A
      6A6A6A7D7D5D7D1D34B485B43E3E3E3E3E6B4D4D96B896DDDDDD6D6DEAEA0808
      08374343434378783795956AA8A8A874A8A874D6818114818181818134F13F34
      34592D39C7C7C7C7C7C7C7C7C750C7C771717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008484844F4F4F
      4F4F4F4F4F4F5EA65BDBDB128D8D8D8D2A2A8D2A2A2AA8A8A89538F6553E0651
      424242422C42EE2C64642C6464641264605B987B7B7B6A6A6A6A7D6A7D7D7D5D
      5D5D5D5D5D5D5D14343E8F85B43E3E0255069B969696DDDDDD6D6DEAEAEA0837
      A5A54343437878276D5F5F5F5F5F95959595A83F81F1F1F13FF134F134345934
      35F32DC7C7C7C7C7C7C7C750B35050B371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100844F4F4F4F4F
      4F4F4F4F4F5EA60228FE284A124A8D128DE98DE98DE92A2A2A95956B0606F642
      2042422C422C2C642C2C641211128912D6D6A630BFBF1D1D1D1D1D1D1D1D5ED6
      1D1D14145E1414353F5585B4B43E3E015B0112DD2F2FDDDDDD6DEAEA08080808
      37A580437878782712F6A96BA96BA9A9A9A95F3434343459343434353535357C
      7CB72DC7C7C7C750505050C75050B3B371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171004F4F4F4F4F4F
      4F4F4F4F4F2228AAFEAAFE874A4A124A124A8D8D8D8D2A2A2A2A2A955F385F42
      9B424242422C2C2C2C6412891211123D818181813F3434343434343434342135
      213521353535357C3401B43E3E3E3E3EF9F9062FDDDDDDDD6DEAEAEA0808374B
      A5A5437878784E0885F606F6F6F6F6F6F6F6F6343534353535353535357C7C66
      66660F39D2505050B3505050B3B3ACB371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171004F4F4F4F4F4F
      4F4F4F30F92838383A38AA428787874A12121212128D8D8D2A8D2A2A2AFF2A20
      20424242422C2C2C6412111212123D3D81328F8F06B455555501990101010101
      010140014040403435403E015501010101F9A6876DDDDD6D6DEAEAEA08087A37
      A5A578787827274A3E06060606060606060606353535357C7C7C7C6666666626
      261C2D5050505050505050B3B3B3ACAC71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171004F4F144C4F1D
      4C1D1D02AABEBEBEBE38FF1E1E428787874A12124A128D128D8D8D8D2A2A2A9B
      2020424242422C2C1212121211EC3DE9F136CCCC6A5DEF8585B4B4B4B4B4B43E
      553E55555555553F66F90101010140F940F936F9B8EA6DEAEAEA0808C208A5A5
      A578A578780F96023E3E3E3E3E3EDB3E3E3EDB7C7C7C7C66666666262626261C
      1C1C0FD2505050B3B3B37FACACACACAC71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171004F4C4C144C4C
      1D1D0238BE4444BEBEBEBE9B1E1E1E1E4287874A874A4A4A4A8D128D8D2A2A9B
      209B204242422C2C2C2C121211E93D7434A6A86A6A5F5D85B4B468683E555555
      5555010101010121663601F940F9F936A130301DDBDDEAEAEAEA0808377AA5A5
      A57878780F6D0202010202020202020202020266666666262626261C1C1C1C8C
      8C8C275050B3B3B37F7F7FACACACACAC71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005E141D1D1D1D
      1DF938444A444444448D449BE59B1EE51E1E1E8787874A4A4A124A8D8D8D8D9F
      9B209B424242422C87121111E9E9747434813232321DD614813F3F3434343434
      34343434353435267C3040F93636A6A6301D5E81815BDD080808087A37A5A5A5
      787878271B22F9F9F9F9F95BF902F95B5B5BF9262626261C1C1C1C1C8C8C8C8C
      7FAC495050B3B3B37F7F7F7F8C8C8C8C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005E5E5E5E4C41
      5B384A87A34A4A4A524A441B1B1B4DE5E5E5E51E1E1E8787874A4A8D4A8D8D4D
      9F9B9B429B42422C641212E9E9E9E9745934F134F134343535F37C7266666666
      666666662626262666BF36363030301D1D14143F3435D687087A377AA5A5A578
      782747FF14D61DA6A6A622F9222222222222A61C1C1C1C1C8C8C8C8CAC7F7F7F
      B35049B3B3B37F7F7F7F7F7F8C8C8C8C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171005E5E5E5EBFF9
      AAC5C51EC5C587C587A34AB81B1B1B1B4DE5E5E59B1E1E1E874A87124A128D4D
      9F9B9B9B9B4242872C121212E9E9742A34D606063E3E020202F9BA3030303030
      BFBF1D1D1D1D1D66261D3030301D1DD614813F3435F37C66D6B9DD08A5A5A508
      DD3AD6343434F1141D323232A6A6A6A63232321C8C8C8C8C8C7F7F7F7F7FB350
      50C7497FACACACACACAC8C8C8C8C8C8C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171001DBF1D4122FE
      873BE53B3B3B3B3BC5C5C52FB8B8B81B1B1B1B4DE5E51E1E1E874A874A4A4A4D
      4D4D4D9B424242422C121212E9E974A859A65FA96BF6F606063E014040F94036
      363636A1303030721C5EBF1D1D1D1414813F3421F37C66667CF1FF97A578A51B
      283535357C7C35358181D6D6321D32D632D6D68C8C8C7F7F7F7F7FB35050D2C7
      C7C7317FACACACAC8C8C8C8C8C8C8C8C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171001D301D307E52
      5C1B5C5C5C5CE53BE53B1E2F2FB82FB8B81B1B1B4D5CE5E51E1E87874A874A96
      4D9F9B9B2042422C2C1212128DEC2A2A59325F6B6BF60606063E0240363636A1
      A130303030BF1D661C811D1D1414813F3F342135F37C6672FF0878787878270F
      27EAAD26266626663534F18181D6D6D68181607F7F7F7F7FB3505050D2C7C739
      393931ACAC8C8C8C8C8C8C8C1C8C1C1C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BFBFBF36FF5C
      48481B1B5C1B5C1B5C5C5C9E9E0C2F0AB8B81B1B1B1BE5E5E51E1E1E87874A96
      964D4D9B1E9B4287421212128DE92AA8596032D6D6D68181F1F1F1357C7C7266
      66666666666626A27F262626261C1C1C8C8C8C7F7F7FF8D57878A5A578787878
      270FA58250507F8C1C26353434F1F181F134F1ACB3B35050C7C7C73939393939
      6C6C317FAC8C8C8C8C8C8C1C1C1C1C1C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BFBFBF28C5B8
      0AB848B8481B481B241B5C179EDD0CCF2FB8B8B81B1B1B1BE5E5E51E87878796
      4D4D4D9B9B1E4242871212128D2A2A9559595959593535B7357C7C661C1C1C1C
      1C1C1CA28CA2A2A21CA2A28C7F7F7F7F5050D2C7D2395278A578787878787827
      27270FC2F439C7B38C1C2635593434595935595050C7C739393939396C6C6C6C
      6C7F318CAC8C8C8C8C8C1C1C1C1C1C1C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BFBFF98D480C
      2F0A0A0A0A0AB8481B48481717179E9EDD0CDD2F0AB8B81B1BE5E51E1E878796
      96964D4D9B9B1E872C4A12128D2A2AA859D6DBDBDB02025B5B2222A61D143F3F
      3F3F3F343434343434213421353535F37C6666662686787878787827270F2727
      0F0F0F0F488CB3AC8C2626663535353535357CC7C739393939396C6C6C6C6C71
      712680AC8C8C8C8C8C1C1C1C1C1C262671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BFA1F65C0C97
      0C0C0C0C0A0A2F0AB848B8C003570317176D0C9E2F2FB81B1B4DE5E51E1E872F
      96964D4D4D9B1E1E2C8712128D8D2A2A5932AAAAF628DBDBDB02025BF930D65E
      141414C981C63F3F3F3F3F3F343434343535F3F3F3EA2778270F270F270F0F0F
      0F0F0F0FA582A28C8C2626267C7C7C7C7C66663939396C6C6C6C6C6C6C717171
      503F738C8C8C8C8C1C1C1C1C261C262671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BF024A0A9797
      97970C0C0C0A0C0C0C0A0AEAC057571717179ECF2F2FB8B81B1B1BE51EE51E2F
      2F96B81B4DE51E1E87874A4A8D8D2AFF593238AA2806DBDBDB02025B5B301414
      14C9813F3F3F343F3434343434343521352535A482A50F2727270F0F0F0F0F0F
      0F0F0F6727A38C1C1C1C1C26266666666666266C6C6C6C6C6C6C717171711616
      6614738C8C1C8C1C1C1C1C1C2626262671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710030381B970303
      03970397979797970C970C15571557575717179E9ECF2F2FB81B1BE5E5E51ECF
      2F96B8964DE59B1E1E87874A8D8D2AFF5932FEAAFE28DBDBDB027E5BF9A6D614
      C63F3F3F3434343434342134352135213525F3F3FF0F0F0F0F0F0F0F0F0F0F0F
      670F676767D8A21C1C26261C1C1C2626261C266C6C6C6C71717171161616168C
      14D6048C1C1C1C1C1C2626262626266671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100024A97C0C003
      C0031717171717979E9E9E4715081557EA1757179E9ECF2FB8B81B4D1BE5E5CF
      2F2FB8B84D4DE51E1E87874A8D8D8DBE5932AAAAFE28DBDBDB7E025B5BA61D14
      3F3F3434343421212121213535353535357C357C870F0F0F0F0F0F0F0F0F670F
      67676767670F7C1C1C1C1C1C1C1C8C1C1C1C8C7171717171161616161616AC34
      1414041C1C1C1C26262626262666666671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171006BE50315C0C0
      57C0C057171717171717174747081508155757579E9E9E9E2FB8B81B1BE5E5CF
      CF2FB8B81B4DE5E51E87874A8D8DBE2A5932AAAA2828DBDB7E7E025B5B223214
      81343434212121212125253525F3F3F3F3A47C7C4A0F0F0F0F0F0F67670F6767
      67676767070F60661C1C1C1C8C1C8C8C8C8C8C71717116161616161616B33514
      14D64B1C1C1C1C26262626266666666671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008D2FC01515C0
      C0C0C0C057570357571717474747471508155757171717172F2FB8B81B1BE56D
      CF2F2FB81B1BE5E51E87874A4A448DBE606FAAAA2828DBDB7E027E5B82223281
      81753421212125252525F3F3F3F3F3E6F3A4357C380F0F670F0F670F67676767
      67676767677881817C8C8C8C8C8C8C8CACACAC1616161616161623167F348181
      1414471C1C1C2626262626266666666671717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100E59E15471515
      15151515575757575757034B4B47474708155757575717179E2F2F0AB81B1B17
      CFCFCFB8B81B4DE5E51E874A4A8D44BE59323AFEFE28DBDBDB7E7E5B5B5B32D6
      8121212121252525F3F3F3F3F3A4A4A4A4A4A4A4D67867676767676767676767
      676707673CDD81D6D634267FACAC7FB3B3ACB316161616161623391C3F3F8181
      141447F31C262626266666666666667C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171002F57F24747F2
      474715151515151515C057044B4B47474747150857571717179E9E2FB8481B6D
      179E2F2FB81B1BE5E51EC54A4A4A44BE60596FD66F6060606060595959B7B726
      26A2A2A2A27F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0A670F67670F6767676767
      6767676767DB3534818181351CB37F505050C716162316236C8C35343F3F8114
      141415262626262626666666667C7C7C71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171001747474B474B
      47474747154715151515C004044B4B4B4747081515575717179E9E2F2FB84817
      179EDD2FB81B1BE5E51EC5874A4A444459595959B7B7B7906690909026F8F88C
      ACD2C7C73939393939393939393939393939393939B77867670F676767676767
      676767070A267C353481141D32351C50C7C7C7161671C726353434343F3F8181
      1414572626262666666666667C7C7CF371717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100154B4B4B4B4B
      4B4B47474747154715151504044B4B4B4B4747081557575717179E0C2F2FB857
      179E9E2FB8B81B1B5C1E1EC54A4A4444BEFF3A3879282886DB867E7E5B822232
      D62125252525F3A4A4727272A4667272727272727272FF670767676767076767
      670707A5A614D61D1D1DA6341CC7C7C739C73923232323391C3434343F3F8181
      141457262666666666667C7CF3F3F33571717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171004B047A4B044B
      4B4B4B4B4747474747F2470404044B044B474747151557C057179E9E0C2F0A57
      57179E2F2FB8481BE5E53BC587524A44BEBE3A38FEFE2828867E7E7E82822232
      32352525F3F3F3F3A4727272727266667272727272A4E6FF0F07076767676707
      070747228114141D1D1466C7C739393939396C23232323232350F3343F3F8181
      1414572626666666667C7C7CF335353571717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100040404040404
      0404044B4B4B474B47F247730404044B4B4B4747081557C0571717979E0C2F15
      5717179E0C2FB81B1B5CE53B87A34A5244BEFF3A3AFE28288686867E7E825BAD
      32252525F3E6A4A4A4A472727272727272667272A4F3F3F35B6D0F0707070707
      78E581811414D61D811C39393939396C6C6C6C23232323232354397C3F3F8181
      144F176626666666727C7CF32535353571717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710004730404044B
      47474B044B7A4B4B4B474B737304044B044B474747151557C0179E2F0AB81B17
      9E9E2F2FB81B1B5C1E3B87A34A5244BEBEBEBE3A3AFEFE28867E7E7E7E828222
      223525F3F3F3A4A4A47272727272727272727272F3F3F3F325255B44E5B81EFE
      A6F1818114D61D811C6C396C6C6C6C6C6C6C6C232323232323545439253F8114
      14149E666666667C7C7CF3F33535353471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171000473737347B8
      8D875704044B7A4B4B4B477373730404044B4B4747151515C02F4AAA3838AA2A
      2A2AA838A938AAAA062806DBDB0202025B3ABEBE3A3A79282232D6827E7E8282
      22352525F3F3F3A4A47272727272727C727272A4F3F3F325252135213434343F
      3F818181141D1D266C6C6C6C6C6C6C6C6C71712323542354545454547F3FC6C6
      14149E6666727C7C7CF335353535353471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710073737331152A
      8A012F040404044B044B4B7373730404044B4B4B474715C01787408A3030BF40
      40BABABABAA18AA13041BFBF5E5E5E4F4F28BEBE3A3A3A863F3421A6867E7E82
      2235F3F3F3A4A47CF3A4A4A4727272A4A4A4A4A4F32525252525213434343F3F
      81811414D61D356C6C6C6C6C717171717171712354545454545454545426C614
      145E2F66667C7CF37C3535353534353471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710073733131478D
      8ABA170404040404044B4B3180737304044B044747F215158DF9A13030304140
      40BABABA8A8A30BFBFBFBF5E5E5E5E141428B9BEBE3A3A28D634342286867E82
      222525A425F3F3A4A4A4F3F3E6A4A4A4A4F3F3F32525252121213434343F3F81
      811414141D1D8C7171717171717116167116165454545454545453535439C614
      141D2F7C7C7CF3F3353535343534343471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100733131310457
      9E9E4B0473040404044B4B313173040404044B4BF24BC01E028A4106C5C587E5
      E5E51E8787874A4A8D44BEBEFF3A38FEFEBE44B9BE3A3A3A7E825B8686867E7E
      8225252525A425A4E6F3A4F3A4F335F335F3F3F325212121212134343F3F3F81
      1414145E1D347171717171161616161616161654545454545453535353537C14
      1D1DB87CF37CF335353521343434343471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100313131317331
      737373737304040404047A737373040404047A4B47F21E3E8A36F61E030C0C57
      C00317970C0C2F0A481B5C5C3BC5C5A3A3524444B9BE3A3A79FE28282886867E
      82252525252525A4A4F3A425A4F3F3F325353521252121213434343F3F3F8114
      14D65E1D1D661616161671161616161616161654545454545353535353538C1D
      1D1DB8F3F3353521352134343434343F71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100313131313131
      3173737373047304047A047373730404047A7A4BF28D3E41413E0A97179797C0
      C0031797970C0C0AB8481B245C3BC58BB0525244B9BEBE3A3A3A79FE7728867E
      82252525252525252525252525252525252525212134213434193F3F3F811414
      141D1D1DBFAC161616161616161616161616235454535353535353535353391D
      BFBF1B253525352134213434343F3F3F71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100313131313173
      7373737373047304040404737304730404044B151B8A3030061EC00397970CC0
      C00317970C0C2F0A4848245CDA3B3BC5A352525244B9B93A3A3A3A79FE77287E
      7E2525252525252525252525252525252521212121753434343F3FC614141414
      1D1D1D30303916161616161616161623232323545353535353535353535316BF
      BF301BF32535213434343434343F818171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100733131313131
      737373737373047304047A7373730404047A151E0630BA061B150317030C0CC0
      C00317970C0C0A0A48485C5C3B3B2BC5B0A3525252B9B9B93A3A093A77FE7786
      7E212525252125252525252121212121212121347534193F3F3F81C614141D1D
      1D1DBFA6A11616161623161623232323232323535353535353535353535353BF
      30304D35213421343434343F3F81818171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171004B7331313131
      317373737373040404044B73730404047A151E024141381B03C00397970C0CC0
      031797970C2F0A0A484824245C3B3B2BC5A3A3525252B9B9B93A3A3A3A79287E
      822121212125212521212121212121212121753434193F3FC6C6141414141D1D
      BF30A6A1A6712316231623232323232323232353535353535353535353535330
      30A1E52134343434343F3F3F3F81811471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100150431313131
      733173737304730404047A73730404047A5C414141361BC0C0031797970C0C03
      0303970C0C0C0A48484824245C3B3B8BC5B0A352525252B9B9B9BE3A3A09287E
      82212121212121212121212121212121347534193F3F3FC91414145E5E1D301D
      3030A636366C23232323232323232323232323535353535353535353535323A1
      A1A19B3434343434343F3F3F81C6C61471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100170431313131
      7373737373737304044B7A04730404044B1E41413E0CC0C003039797970C0C03
      0397970C0C0A0A0A484824245C3B3B8B2BB0B0A352525244B9B9B9B9B93A777E
      2221212121212121217534757534753475343F3F3FC9C6C614145E5E1DBFBF30
      30363636F97F2323232323232323232354545453535353535353535353533930
      A1BA1E343434343F343F3F818114141471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171001B4731313173
      7373737373730404047A04040404044B4B0C4A4A5CC0C0C0030397970C0C0A03
      97970C0C0C0A0A48484824245C3B3B2B8BB0A3A3A352525244B944B9B93A2882
      2221212121217521757534757519191919193F3F14141414145E5E1DBFBF3030
      A136F9F9406623232323232323232354545454535353535353535353535A1CA1
      36BA1E34343F3F3F3F3F81C6C614141471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100121773317331
      7373737373040404044B7A04047A7A4B4B15C0C0C0C0C003039797970C0C0A17
      97970C0C0A0A0A484848242424DA3B3B8B8BB0A3A3A352525252B944B93A8632
      322121217575217575341919191919191919C6C64F4F5E145E5EBFBF303036A1
      3636F940011423232323235423545454545454535353535353535A5A5A5A3FBA
      BABA1E34343F3F3F3F81C6C61414141471717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100B4B804313131
      737373730404047A4B4BC2047A7A4B4BF2F2F21515C003030397970C0C0A0A97
      970C0C0A0A0A484848485C245C3B3B3B2B8B8BA3A3A352A352525252B93A7E14
      817521217575757575753F1919191984844FC9145E4F4F5E1DBFBF30A1A13636
      F940400101018C2354545454545454545454545353535353535A5A5A5AD2BA36
      404087193F3F3F3F8114C6141414145E71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100BA4A47733131
      7373737304047A4B7A4B4B4B4B7A47F2F21515C0C0C0030397970C0C0C0A0A97
      0C0C0C0A0A48484848242424DA3BC33B2B8B8BB0B0A3A3A35252525244772219
      757575757575757519193F3F3F3FC9C94F4F4F4F1D5E5EBFBFBF30A1A136F9F9
      4040010101551423545454545454545454535353535353535A5A5A5A53214040
      4040873F3F3FC6C6C614141414145E5E71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008AF62F043173
      73047304047A4B7A47F2474B4BF247151515C0C0C003039797970C0A0A0A0A0C
      0C0C0A0A0A48484824242424DA3B3B3B2B2B8B8BB0B0B0A3A3A352A352863F75
      757519751919191919C6C6C9C9144F4F4F5E5E5EBFBF303030A13636F9404001
      010102553EB43E7C54545454545454545353535353535A5A5A5A5A5AA2404040
      4001123F3F3FC6C614141414145E5E1D71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4087153173
      73730404047A4B4B4B4B47F2F247D81515C0C0C0030397970C0C0A0A0A0A480C
      0C0A0A0A484848242424DADADA3BC33B2B8B8B8BB08B8BB0A3A3A3B0B95B7575
      757575751919191919194F8484C64F4F4F4F5E5EBFBFBF3030A1A13640400140
      01010155553E3E011C5454545453535353535353535A5A5A5A5A5350BF404040
      010112C6C6C6C614141414145E5E5E1D71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8AF69E0473
      730404047A4B4B4BF2F2F2F2F2151515C0C0C0030397970C0C0A0A0A4848480C
      0A0A0A48484824242424DADA3B3B2B2B2B2B8B8B8BB08BB0B08BB0A33A327575
      191919191919191919844F84844F4F4F4F5E5E5E30BF303030A1364040400101
      0101555555B4B485011C5453535353535353535A5A5A5A5A5A5A505E40CB4001
      019912C61414144F1414145E5E1D1D1D71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8ABA4A1573
      040404047A4B4BF2F2F215F2D81515C0C0C0039797970C0C0A0A480A4848480A
      0A484848482424DA24DADA3B3B3B2B2B2B2B8B8B8B8B8B8B8B8BB0BE7E3F7519
      191919191919191984844F844F4F4F4F5E5EBFBFA13030A1A136364040405501
      9955553EB4B4B485A93E7C54535353535353535A5A5A5A5A531CBF4040010101
      999912C6C6C6144F5E5E5E5E5E1D1D1D71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8A8A3E1B04
      04047A7A4B4BF2F2F215D815151592C003030397970C0C0A0A0A48484848240A
      484848482424242424DADA3B2B3B2B2B2B8B8B2B8B8B2B8B2B8BB0281D757575
      1919191919198484844F5E4F4F4F4F4C5EBFBF41A1308AA13636404040013E99
      555555B4B4B48585A95D5DA68C5353535353535A5A5A5A503440CB4001CB0199
      999912C6C6144F5E5E5E1D5E1D1DBFBF71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8A8A8A8D15
      73044B4B7A47F2F2F215C0D8C0C0C003030397970C0C0A0A0A48484824242448
      484824242424DADADA3BDA2B2B2B3B2B2B2B8B2B8B2B8B8B2B8B445B3F757575
      19191919191984C984C95E4F4F4C4C4CBFBF3041368AA1BABA40400140013E99
      5555B4B4B485858F6A5D5D6A6A40F17F71545423D226C6404001409999999999
      99E8E9C64F145E145E5E5E5E5EBFBFBF71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8A8A8A02E5
      47047A4B4BF2F2151515C015C00303030397970C0C0A0A0A484848242424DA48
      4824482424DADADADA3B3B2B2B2B2B2B2B8B2B2B2B2B2B2B3B52861475757519
      1919191919C9C9844F4FBF4C4C4C4C4CBFBFBF8A408A36BA404040010101B455
      5568B4B485858FEF6A5D6A6A6A6A9898983D64404040CB40CB01CB9999999999
      6868E95E4F145E5E5E5E5E5EBFBFBFBF71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8A8A414106
      1B4B7A4B47F2F215D8C0C0C0C0030303970C0C0C0A0A0A48484824242424DA24
      24242424DADADADA3B3BC32B2B2B2B2B2B2B8B2B2B2B2B2B2B3A1D7575757519
      191919C98484844F4F4FBF4C4C4C4CBFBF41308A40BABABA404040010155B468
      3EB4B4B4858F8F5DA87D6A6ACCCC74743D3D2C4040CB4001CB999999E899E868
      6868E9145E5E5E5E5E5EBFBFBFBFBF3071717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      A8174B4BF2F2151515C0C0C003030397970C0C0A0A0A484848242424DADA3B24
      2424DADADADA3BC33BC33B2B2B2B8B8B8B8B2B8B8B2B3BDFB95B197575751919
      1919C94F5E5E1DBFBFBF3030A1A13636364040400101010155683E68B4068F85
      8FA95D7D9595CCCC74743DE911121164642C2C40CBCBCB9999999999E8E86868
      6868E95E5E5E5E5E5E5EBFBFBFBF303071717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      F98D17F2F2F2D815C0C0C003030397970C0C0A0A0A48484824242424DA3B3B24
      DADADADAC33B2B2B2B2B2B8B2B2B2B2B2B2B2B2B2B3B2B527E3F757575751919
      191919C984844F4F4F4CA14C4CBFBF41308AA1BA01BA40404001019955558FB4
      B4B48585EFEF7D5D746A6ACCCC743D3D3D112CCBCBCB9999E899E8E8E8686868
      7068745E5E5E5EBFBFBFBFBF3030303071717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      41364A1715F215C0C0C00303039797970C0A0A0A484848242424DADADA3B2BDA
      DADADA2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B52861475757519191919
      C919848484844F4F4C4C364CBF4141308A8ABABA01404040CB01999955555DB4
      B4B48585EFEF5D7D3D6A7BCC98983D3D3D1142CB99999999E8E8E86868686868
      7070745E5E5EBFBFBFBFBF303030303071717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8A41414141
      4C4CF94A97C015C0C0C003030397970C0C0A0A48484848242424DADA3B2B2BDA
      DADA3B2B2B2B2B2B2B2B8B8B8B8B2B2B2B2B2BDA3B5286347575757575191919
      84848484844F4F4F4C4C364CBF418A30A1A1BABA554040400199995555685DB4
      85B485EFEF7D7D6AE97B7BCC98983D3D1111429999E8E8E8D46868D468687068
      70707B5E5EBF5EBFBF30303030A1303071717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8A41414141
      4C4C4C024A97C0C0C003039797970C0C0A0A0A484848242424DADA3B3BC32B3B
      C33B2B2B2B8B8B8B8B8B8B8B8B8B2B2B2B2B3BC3A328D6212121757519191919
      848484844F4F4F4C4C4CF94CBF418A8ABABABA403E4040CB0199996855B47DB4
      858585EFEF7D7D6A117B989898983D3D111142E8E8E8D4D4D4D4D46870707070
      70457B5EBF5EBFBF3030303030A1A1A171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      4C4C4C4CBA442FC00303030397970C0C0A0A48484824242424DADA3B2BC3C33B
      2B2B2B2B2B2B2B8B8B8B2B8B2B2B2B2B2B2B2B52868121217575757519191919
      8484C9844F4F4C4C4C4CF9BF41418A8ABABABA40B44001019999556868686AB4
      B4EFEFEFEF7D7D6A127B9898983D11111111206868D4D4D46870687070707070
      45457B5EBFBFBF3030303030A1A1A1A171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      4C4C4C4C4CBF384803030397970C0C0A0A0A484824242424DADA3BC33BC32B2B
      2B2B2B2B2B8B8B8B8B8B8B8B2B2B2B2B2B2B5282752121757575757519191984
      8484844F4F4F4C4C4CBF4041418A8AA1BABA4040B401019955555568B4B46A85
      85458FEF7D5D6A6A647B9898983D3D11118920D4D4D468707070707070704570
      45457BBFBFBF30BF303030A1A1A1A1A171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A414141414C
      4C4C4C4C4F4F30F6C50C0303970C0C0A0A0A484848242424DADA3B527E863A8B
      3B2B2B2B2B2B2B8B8B8B8B8B8B2B3B2BB03A5B3F212121757575191919191919
      4F145E1DA1A636F9F940F9010101013E3E3E3E3EB4858F8FA9A95D5F9595CCCC
      7474743DE9111264642C2C2C51424242202020D4D47070707070707045704545
      45457DBFBFBFBF303030A1A1A1BAA1A171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171710041414141414C
      414C4C4F4F4F844C5B440A0C0C0C0C0A0A0A484848242424DADA3B3A252522BC
      DA2B8B2B2B2B2B8B2B8B2B8B2B2B8B52283275252121217575757519191984C9
      4F844F4F4F4F4C4C41BF0141418ABABABA4040CB8501999955686868B4B4CC85
      85EFEF7D7D6A6A6A2C7B983D3D3D1111116420D4707070707070707045704545
      45457DBF4130303030A1A1A1A1A1A1BA71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      4C4C4C4F4F4F4F4F84A60652240A0C0A0A48484824242424DADA3B3AA4A45BA3
      DA2B2B2B2B2B2B2B2B2B2BC38B52792214252521212175757575751919198484
      4F4F4F4F4F4C4C4CBFBF01418A8ABABABA40404085019955686868B4B48574EF
      EFEFEF7D5D6A6A7B2C9898983D3D111189899F70707070707070454545454545
      45EF7DBF413030A18AA1A1A1A1BABABA71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A414141414C
      4C4C4C4F4F4F8484848419A6FE525C480A0A484848242424DADA3B528686B92B
      3B2B2B2B2B2B2B2B2B8BB0523A7ED62525212121212175757575191919198484
      4F844F4C4C4C4C41BF41558AA1BABA40404040CBF60199556868B4B4B485ECEF
      EFEFEF7D7D6A6A7B2C98983D3D11111111899F70707070704545454545454545
      7D457D4130A18AA18AA1A1A1BAA1BABA71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      4C4C4C4C4F4F4F84848419C94F2228523B2424482424242424DADADADADA3B3B
      2B3B2B2B2B8B8B2BBC443A7ED634252525252121217575757519191919C98484
      4C4F4F4C4C4C4CBF4141558A8ABABA40404040CBA99999996868B470B485E9EF
      EFEFEF7D7D6A7B7B4298983D3D3D111189899F70707045704570454545454545
      457D7DA1308A8AA18AA1A1BAA1BABABA71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A4141414141
      4C4C4C4C4F4F4F848484C9191919C922DB3A528B3BDADA24242424DADA3B3BC3
      3B2B2B8BA352523A2882322125252525252121212175757519191919C9C9844F
      5E4F4C4C4C4CBF4141413E8ABABABA40BA40CB01A99955556868B4B4B485E9EF
      EFEF7D5D6A6A7B7B427498743D11111111899F70704570454545454545454545
      7D457D8A8AA18AA1A1A1BABABABABABA71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      71717171717171717171717171717171717171717171717171008A8A4141414C
      4C4C4C4C4C4F4F4F8484191919197575751D7EFE44528B3BDADADADA3B3B3B3B
      2B2BB052B93A86828125A4252525212121212175757575191919191984844F4F
      5E4F4C4C4C4CBF41418A3E8ABABABA404040CB99A99955686868B4B48585E9EF
      EFEF5D7D6A7D7BCC42743D3D3D3D111112649F70457045454545454545457D45
      457D7DA18AA18AA1A1BABABABABABABA71717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717100}
    BackgroundType = bgtTopLeftBitmap
    Align = alTop
    BevelInner = bvLowered
    TransparentXPThemes = False
    UseXPThemes = False
    Color = 16643567
    MouseCapture = False
    TabOrder = 3
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object lblListCaption: TElLabel
      Left = 2
      Top = 2
      Width = 990
      Height = 26
      Align = alClient
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      Caption = 'QU'#7842'N L'#221' CH'#7844'M C'#212'NG'
      Color = 15266557
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
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
  object dxlcInstead: TdxLayoutControl [5]
    Left = 544
    Top = 248
    Width = 361
    Height = 257
    TabOrder = 4
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    object dxDBEdit1: TdxDBEdit
      Left = 74
      Top = 28
      Width = 121
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      Style.Shadow = True
      TabOrder = 1
      DataField = 'FOR_EMP_NO'
      DataSource = dsInstead
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit
      Left = 74
      Top = 57
      Width = 339
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      DataField = 'FULL_NAME'
      DataSource = dsInstead
      StyleController = dmMain.StyleController
    end
    object dxDBEdit3: TdxDBEdit
      Left = 214
      Top = 86
      Width = 339
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      DataField = 'DEPT_NAME'
      DataSource = dsInstead
      StyleController = dmMain.StyleController
    end
    object dxDBEdit4: TdxDBEdit
      Left = 74
      Top = 86
      Width = 98
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      DataField = 'TITLE_NAME'
      DataSource = dsInstead
      StyleController = dmMain.StyleController
    end
    object dxDBMemo1: TdxDBMemo
      Left = 74
      Top = 115
      Width = 339
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DataField = 'NOTE'
      DataSource = dsInstead
      StyleController = dmMain.StyleController
      Height = 56
    end
    object dxDBGrid1: TdxDBGrid
      Left = 12
      Top = 191
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
      BorderStyle = bsNone
      TabOrder = 4
      DataSource = dsInsteadDetail
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid1FROM_DATE: TdxDBGridDateColumn
        Caption = 'T'#7915' ng'#224'y'
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FROM_DATE'
        Caption_UTF7 = 'T+Hus ng+AOA-y'
      end
      object dxDBGrid1TO_DATE: TdxDBGridDateColumn
        Caption = #272#7871'n ng'#224'y'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_DATE'
        Caption_UTF7 = '+ARAevw-n ng+AOA-y'
      end
      object dxDBGrid1SHIFT_NAME: TdxDBGridColumn
        Caption = 'Ca l'#224'm vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHIFT_NAME'
        Caption_UTF7 = 'Ca l+AOA-m vi+Hsc-c'
      end
    end
    object dxlcInsteadGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcInsteadGroup1: TdxLayoutGroup
        Caption = '* Tr'#7921'c thay cho nh'#226'n vi'#234'n'
        object dxlcInsteadItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'M'#227' s'#7889
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
        object dxlcInsteadItem2: TdxLayoutItem
          Caption = 'H'#7885' v'#224' t'#234'n'
          Control = dxDBEdit2
          ControlOptions.ShowBorder = False
        end
        object dxlcInsteadGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcInsteadItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ch'#7913'c v'#7909
            Control = dxDBEdit4
            ControlOptions.ShowBorder = False
          end
          object dxlcInsteadItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #272#417'n v'#7883
            Control = dxDBEdit3
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcInsteadItem5: TdxLayoutItem
          Caption = 'Ghi ch'#250
          Control = dxDBMemo1
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcInsteadItem6: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxDBGrid1
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
        Caption = 'Qu'#7843'n l'#253' ch'#7845'm c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryOrgMap: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'user_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'den_ngay'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'DEPT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      '/*SELECT'
      '    DEPT_NO ,'
      '    DEPT_NAME ,'
      '    P_DEPT_NO '
      'FROM HR_MASK_ORG_MAP(:USER_NAME)*/'
      'select hr_mask_dept_list.dept_no,'
      '        hr_mask_dept_list.dept_name,'
      '        hr_mask_dept_list.p_dept_no'
      '    from hr_mask_dept_list(:user_name, null, null)'
      '    where (hr_mask_dept_list.ended_date is null'
      '    or hr_mask_dept_list.ended_date >= :den_ngay )'
      '    order by hr_mask_dept_list.display_index'
      '    ')
    FieldOptions = []
    Left = 24
    Top = 56
    object qryOrgMapDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryOrgMapDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryOrgMapP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
  end
  object dsOrgMap: TDataSource
    DataSet = qryOrgMap
    Left = 56
    Top = 56
  end
  object memWorkDay: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 24
    Top = 96
    object memWorkDayEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memWorkDayFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memWorkDayTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memWorkDayTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 168
    Top = 56
    object acPrevious: TAction
      Caption = 'acPrevious'
      ImageIndex = 0
      OnExecute = acPreviousExecute
    end
    object acView: TAction
      Caption = 'acView'
      ImageIndex = 10
      OnExecute = acViewExecute
    end
    object acNext: TAction
      Caption = 'acNext'
      ImageIndex = 3
      OnExecute = acNextExecute
    end
    object acUpdateAll: TAction
      Caption = 'acUpdateAll'
      ImageIndex = 37
      OnExecute = acUpdateAllExecute
      OnUpdate = acUpdateAllUpdate
    end
    object acPhatsinhNgaychamcong: TAction
      Category = 'WorkDay'
      Caption = 'acPhatsinh'
      ImageIndex = 62
      OnExecute = acPhatsinhNgaychamcongExecute
    end
    object acWorkDayCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acWorkDayCancel'
      ImageIndex = 47
      DataSource = dsWorkDay
    end
    object acWorkDayPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acWorkDayPost'
      ImageIndex = 44
      DataSource = dsWorkDay
    end
    object acWorkTimeCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acWorkTimeCancel'
      ImageIndex = 47
      DataSource = dsWorkTime
    end
    object acWorkTimeInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acWorkTimeInsert'
      ImageIndex = 46
      DataSource = dsWorkTime
    end
    object acWorkTimePost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acWorkTimePost'
      ImageIndex = 44
      DataSource = dsWorkTime
    end
    object acPhatsinhGiochamcong: TAction
      Category = 'WorkDay'
      Caption = 'acPhatsinhGiochamcong'
      ImageIndex = 62
      OnExecute = acPhatsinhGiochamcongExecute
    end
    object acNextWeek: TAction
      Caption = 'acNextWeek'
      ImageIndex = 51
    end
    object acBackWeek: TAction
      Caption = 'acBackWeek'
      ImageIndex = 49
    end
    object acWorkTime_ChangeWeek: TAction
      Caption = 'acWorkTime_ChangeWeek'
    end
    object acNhapnhanhNgaycong: TAction
      Category = 'WorkDay'
      Caption = 'acNhapnhanhNgaycong'
      ImageIndex = 54
      OnExecute = acNhapnhanhNgaycongExecute
    end
    object acNhapNhanhGiocong: TAction
      Category = 'WorkDay'
      Caption = 'acNhapnhanhGiocong'
      ImageIndex = 54
      OnExecute = acNhapNhanhGiocongExecute
    end
    object acXuliDulieuChamcong: TAction
      Caption = 'acKiemTra'
      ImageIndex = 57
      OnExecute = acXuliDulieuChamcongExecute
    end
    object acCapnhatLuoi: TAction
      Caption = 'acCapnhatLuoi'
      ImageIndex = 5
      OnExecute = acCapnhatLuoiExecute
    end
    object acWorkTimeDelete: TAction
      Category = 'Dataset'
      Caption = 'acWorkTimeDelete'
      ImageIndex = 11
      OnExecute = acWorkTimeDeleteExecute
      OnUpdate = acWorkTimeDeleteUpdate
    end
    object acWorkTotalInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acWorkTotalInsert'
      ImageIndex = 12
      DataSource = dsWorkTotal
    end
    object acWorkTotalPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acWorkTotalPost'
      ImageIndex = 14
      DataSource = dsWorkTotal
    end
    object acWorkTotalDelete: TAction
      Category = 'Dataset'
      Caption = 'acWorkTotalDelete'
      ImageIndex = 11
      OnExecute = acWorkTotalDeleteExecute
      OnUpdate = acWorkTotalDeleteUpdate
    end
    object acWorkTotalCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acWorkTotalCancel'
      ImageIndex = 47
      DataSource = dsWorkTotal
    end
    object acPhatsinhTonggioChamcong: TAction
      Category = 'WorkDay'
      Caption = 'acPhatsinhTonggioChamcong'
      ImageIndex = 62
      OnExecute = acPhatsinhTonggioChamcongExecute
    end
    object acNhapnhanhTonggiocong: TAction
      Category = 'WorkDay'
      Caption = 'acNhapnhanhTonggiocong'
      ImageIndex = 54
      OnExecute = acNhapnhanhTonggiocongExecute
    end
    object acTuychon: TAction
      Caption = 'acTuychon'
      ImageIndex = 5
      OnExecute = acTuychonExecute
    end
    object acKTChamCong: TAction
      Caption = 'acKTChamCong'
      ImageIndex = 62
      OnExecute = acKTChamCongExecute
    end
    object acTHTuCCGio: TAction
      Caption = 'acTHTuCCGio'
      ImageIndex = 58
      OnExecute = acTHTuCCGioExecute
    end
  end
  object dsWorkDay: TDataSource
    DataSet = memWorkDay
    Left = 24
    Top = 128
  end
  object qryEmpList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsOrgMap
    SQL.Strings = (
      'SELECT'
      '    EMP_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    IS_MAIN_POSITION,'
      '    IS_DISMISSED,'
      '    TOTAL_DAY'
      'FROM HR_GET_TOTAL_WORK_DAY(:USER_NAME,:DEPT_NO,'
      '    :IN_MONTH,:IN_YEAR,0)'
      'where IS_MAIN_POSITION=1 and '
      ' (IS_DISMISSED=0 or'
      '  (DISMISS_MONTH>=(:IN_MONTH -1 +12* :IN_YEAR)))')
    FieldOptions = []
    Left = 56
    Top = 96
    object qryEmpListEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryEmpListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 99
    end
    object qryEmpListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpListIS_MAIN_POSITION: TIntegerField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryEmpListIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryEmpListTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
  end
  object qryEmpWorkDate: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMP_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT HR_WORKING_DAY.EMPLOYEE_NO'
      '     , HR_WORKING_DAY.WORK_DATE'
      '     , HR_WORKING_DAY.WDT_NO'
      '     , WDT_NAME'
      '     , WDT_COLOR '
      'FROM HR_WORKING_DAY'
      
        'LEFT JOIN HR_WORK_DATE_TYPE on HR_WORKING_DAY.WDT_NO=HR_WORK_DAT' +
        'E_TYPE.WDT_NO'
      'where '
      '  HR_WORKING_DAY.EMPLOYEE_NO=:EMP_NO and'
      '  HR_WORKING_DAY.WORK_DATE between :FROM_DATE and :TO_DATE')
    FieldOptions = []
    Left = 88
    Top = 96
    object qryEmpWorkDateEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkDateWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryEmpWorkDateWDT_NO: TWideStringField
      FieldName = 'WDT_NO'
      Size = 30
    end
    object qryEmpWorkDateWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      Required = True
      Size = 126
    end
    object qryEmpWorkDateWDT_COLOR: TIntegerField
      FieldName = 'WDT_COLOR'
    end
  end
  object dsEmpList: TDataSource
    DataSet = qryEmpList
    Left = 56
    Top = 128
  end
  object qryUpdateEmpWorkDay: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'WDT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update HR_WORKING_DAY'
      'set WDT_NO=:WDT_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and'
      '      WORK_DATE=:WORK_DATE'
      '  ')
    FieldOptions = []
    Left = 88
    Top = 128
  end
  object memWorkTime: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeInsert = memWorkTimeBeforeInsert
    OnNewRecord = memWorkTimeNewRecord
    Left = 24
    Top = 160
    object memWorkTimeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memWorkTimeFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memWorkTimeTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
      OnChange = memWorkTimeTOTAL_TIMEChange
    end
    object memWorkTimeEMP_FULL_INFO: TWideStringField
      FieldName = 'EMP_FULL_INFO'
      Size = 255
    end
    object memWorkTimeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memWorkTimeKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      Size = 255
    end
    object memWorkTimeWT_ID: TIntegerField
      FieldName = 'WT_ID'
    end
    object memWorkTimeBLANK_TIME: TSmallintField
      FieldName = 'BLANK_TIME'
    end
    object memWorkTimeTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
  end
  object dsWorkTime: TDataSource
    DataSet = memWorkTime
    Left = 24
    Top = 192
  end
  object qryEmpListForTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsOrgMap
    SQL.Strings = (
      'SELECT'
      '    EMP_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    HR_GET_TOTAL_WORK_TIME.title_no,'
      '    IS_MAIN_POSITION,'
      '    IS_DISMISSED,'
      '    TOTAL_TIME'
      'FROM HR_GET_TOTAL_WORK_TIME(:USER_NAME,:DEPT_NO,'
      '    :IN_MONTH,:IN_YEAR,0)')
    FieldOptions = []
    Left = 56
    Top = 160
    object qryEmpListForTimeEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryEmpListForTimeFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 99
    end
    object qryEmpListForTimeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpListForTimeIS_MAIN_POSITION: TIntegerField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryEmpListForTimeIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryEmpListForTimeTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
    object qryEmpListForTimeTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
  end
  object dsEmpListForTime: TDataSource
    DataSet = qryEmpListForTime
    Left = 56
    Top = 192
  end
  object qryEmpWorkTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMP_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TITLE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpListForTime
    SQL.Strings = (
      'SELECT HR_WORKING_TIME.WT_ID'
      '     , HR_WORKING_TIME.EMPLOYEE_NO'
      '     , HR_WORKING_TIME.WORK_DATE'
      '     , HR_WORKING_TIME.START_TIME'
      '     , HR_WORKING_TIME.START_DATE'
      '     , HR_WORKING_TIME.END_TIME'
      '     , HR_WORKING_TIME.END_DATE'
      '     , HR_WORKING_TIME.WHT_NO    '
      '     , WHT_NAME'
      '     , WHT_COLOR'
      '     , HR_WORKING_TIME.TOTAL_TIME'
      '     , HR_WORKING_TIME.blank_time'
      '     , HR_WORKING_TIME.DEPT_NO'
      '     , HR_WORKING_TIME.TITLE_NO'
      '     , HR_WORKING_TIME.FOR_EMP_NO'
      'FROM HR_WORKING_TIME'
      'LEFT JOIN HR_WORK_HOUR_TYPE on '
      '  HR_WORKING_TIME.WHT_NO=HR_WORK_HOUR_TYPE.WHT_NO'
      'where '
      '  HR_WORKING_TIME.EMPLOYEE_NO=:EMP_NO and'
      '  HR_WORKING_TIME.WORK_DATE between :FROM_DATE and :TO_DATE and'
      '  HR_WORKING_TIME.DEPT_NO = :DEPT_NO and'
      '  HR_WORKING_TIME.TITLE_NO = :TITLE_NO '
      'order by WORK_DATE,START_DATE,START_TIME asc')
    FieldOptions = []
    Left = 88
    Top = 160
    object qryEmpWorkTimeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkTimeWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryEmpWorkTimeSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qryEmpWorkTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryEmpWorkTimeEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qryEmpWorkTimeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object qryEmpWorkTimeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryEmpWorkTimeWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
    object qryEmpWorkTimeWT_ID: TIntegerField
      FieldName = 'WT_ID'
      Required = True
    end
    object qryEmpWorkTimeTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
    object qryEmpWorkTimeBLANK_TIME: TSmallintField
      FieldName = 'BLANK_TIME'
    end
    object qryEmpWorkTimeFOR_EMP_NO: TWideStringField
      FieldName = 'FOR_EMP_NO'
      Size = 30
    end
    object qryEmpWorkTimeSTART_DATE: TIntegerField
      FieldName = 'START_DATE'
    end
    object qryEmpWorkTimeDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryEmpWorkTimeTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
  end
  object qryUpdateEmpWorkTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'NEW_START_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'START_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'END_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'END_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update HR_WORKING_TIME'
      'set '
      '   START_TIME=:NEW_START_TIME,'
      '   START_DATE=:START_DATE,'
      '   END_TIME=:END_TIME,'
      '   END_DATE=:END_DATE,'
      '   WHT_NO=:WHT_NO,'
      '   TOTAL_TIME = :TOTAL_TIME /*Phuc add*/ '
      'where /*EMPLOYEE_NO=:EMPLOYEE_NO and'
      '      WORK_DATE=:WORK_DATE and'
      '      START_TIME=:ORG_START_TIME*/'
      '      WT_ID = :WT_ID'
      '  ')
    FieldOptions = []
    Left = 120
    Top = 160
  end
  object qryInsertEmpWorkTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'START_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'START_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'END_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'END_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TITLE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'insert into HR_WORKING_TIME('
      '      EMPLOYEE_NO'
      '     , WORK_DATE'
      '     , START_TIME'
      '     , START_DATE'
      '     , END_TIME'
      '     , WHT_NO'
      '     , END_DATE'
      '     , TOTAL_TIME /*Phuc add*/'
      '     , DEPT_NO'
      '     , TITLE_NO)'
      'values('
      '      :EMPLOYEE_NO'
      '     ,:WORK_DATE'
      '     ,:START_TIME'
      '     ,:START_DATE'
      '     ,:END_TIME'
      '     ,:WHT_NO'
      '     ,:END_DATE'
      '     ,:TOTAL_TIME /*Phuc add*/'
      '     ,:DEPT_NO'
      '     ,:TITLE_NO)')
    FieldOptions = []
    Left = 88
    Top = 192
  end
  object dlgColor: TColorDialog
    Left = 167
    Top = 119
  end
  object ImageList1: TImageList
    Left = 88
    Top = 54
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
      000000000000000000000000000000000000F3F3F3FFA1A1A1FFA3A3A3FF9A9F
      A0FF6A8FA2FFA8A6A6FF949A9CFFA7A5A3FFA3A3A3FFA3A3A3FFA1A1A1FFEAEA
      EAFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000201F2300201F2300201F2300201F2300201F2300201F
      2300201F2300201F23000000000000000000E8E6E6FFCFA49BFFC8998EFFC89A
      90FFC89B92FFC89C94FFC89C96FFC89D96FFC89D96FFC89D96FFC89D96FFC89D
      96FFC99E96FFCCC1BFFF00000000000000000000000000000000000000000000
      0000FAFAFAFF94AECCFF1E64B4FF0057B1FF0059B2FF4882C4FFC6CBD1FF0000
      000000000000000000000000000000000000D6D6D6FFFFFFFFFFFBF9F8FFA2D3
      E8FF84B9E1FF76B0CBFF3EA1DFFF2497D5FFFAF7F4FFFFFFFFFFFFFFFFFFD4D4
      D4FFE7E7E7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000201F2300201F2300201F2300201F2300201F
      2300201F2300201F23000000000000000000F3BA9FFFFFEFE4FFFFF7ECFFEECE
      BEFFE7C4B7FFE7C5BCFFE8C9BFFFE9CABFFFEACCC1FFEBCDC2FFECCFC3FFECD0
      C4FFEDD1C5FFCB9889FFEDCBBBFFE8E6E5FF000000000000000000000000558F
      CFFF006DC9FF00CAFFFF00EFFFFF00F6FFFF00FBFFFF00F6FFFF04C3F3FF005B
      B4FFD0D8E1FF000000000000000000000000D9D8D7FF0880C7FF0F74A5FF0078
      CBFFA0CCF3FF80BCEBFF57ABE6FF6ABAFCFF6C94A1FFFCFDFDFFF6F6F6FFE8E8
      E8FFE2E2E2FFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000020C8FE002ECCFE003BD0FD0045D2FD0045D2FD003BD0
      FD002FCCFE001FC9FE00201F230000000000F9C8ADFFFFEFE6FFFFF0E4FFF6DE
      C4FFFFEFD6FFFFF0DAFFFFF2DDFFFFF3E0FFFFF5E4FFFFF6E8FFFFF7EBFFFFF9
      EEFFFFFAF2FFFFFBF5FFFFFDF9FFE3BEA9FF0000000000000000115FB8FF00B6
      FCFF00DDFFFF00ADE1FF2B75BDFF4D81C1FF4579BDFF0A89C7FF00ECF5FF1DFF
      FFFF018DD3FF9EAFC2FF0000000000000000DDD9D8FF2FA0EFFF5FB3FAFF68B7
      FAFF66B4F6FF69ACE5FF5FB2F9FF50ADFAFF0B88DEFFECEDE8FFF5F5F5FFF3F3
      F3FFF4F4F4FFEFEFEFFFD6D6D6FF000000000000000000000000000000000000
      0000000000000292CE0033CEFD0047D3FD0057D7FC0063DAFC0063DAFC0058D7
      FD0047D3FD0034CEFE0016BBFB00201F2300F9CDB5FFFFF1EAFFCFA094FFFFEE
      D6FFFFF0D9FFFFF1DDFFFFF3E1FFFFF4E3FFFFF4E7FFFFF5EAFFFFFAF0FFFFFB
      F3FFFFF9F5FFFFFCF8FFFFFFFEFFE2D5CDFF00000000246CBDFF00BBFEFF00C7
      FBFF447DBFFFFCF9F7FFF4F4F3FF989898FFE7E7E7FFEEEDECFFDBDEE5FF058D
      C8FF1CFFFFFF018DD3FFD0D8E1FF00000000658994FF007CC4FF70BAFAFFA3CD
      EEFFFFFFFFFFA6A2A1FFAFD8ECFF34A5FEFF4BAEE5FFFDFAF9FFF3F3F3FFEDED
      EDFFEFEFEFFFEEEEEEFFECECECFFD8D8D8FF0000000000000000000000000000
      0000000000000292CE0048D3FD005FDAFC0074DFFB0082E3FB0081E2FC0073DF
      FB0060D9FC0047D3FD0018C6FE00201F2300F9D2BEFFFFF6F0FFDFBAA5FFFFF0
      DAFFFFF0DDFFFFF9E6FF6A3538FF9F7A77FFFFF8EBFFAA8A87FF6B3739FF6B37
      39FFCEBCBAFFFFFCFCFFF5E4DAFF00000000BDCBDCFF0098EBFF00C3FFFF82A6
      D2FFF9F9F9FFF7F7F7FFF5F5F5FFF3F3F3FFF0F0F0FFEEEEEEFFECECECFFF3F0
      ECFF058DC8FF1DFFFFFF005BB4FF00000000128CE1FF4AA9F3FF67B1EBFFFAF8
      F8FFF6F6F6FFF9F2EFFF26A6F1FF1A9FFEFF0083DAFFFFFEFCFFDBDBDBFFF7F7
      F7FFEFEFEFFFF6F6F6FFFDFDFDFFB1B1B1FF0000000000000000000000000000
      0000000000000292CE0057D7FD0074DFFB008CE5FB009DEAFB009DEAFB008CE6
      FB0074DFFB0057D7FD0021C9FE00201F2300F9D8C6FFFFF6F0FFF5E1CCFFFFF0
      DEFFFFF3E1FFD7C1B6FF6F3C3EFFDBC9C1FFEFE4DCFF784649FFB89D9CFF6F3B
      3DFF8C6365FFFFFFFFFFEFCFBCFF000000001561B7FF00B4FFFF0365BBFFFFFE
      FDFFFBFBFBFFF9F9F9FFF7F7F7FFF5F5F5FFF3F3F3FFEFEFEFFFEEEEEEFFECEC
      ECFFDBDEE5FF00ECF5FF04C3F3FFC6CBD1FF4DACDDFF6FB8F8FF4295BCFFEFEA
      E6FFDBDDDDFF1B8EBDFF1D95C6FF008AE7FFD3EAEFFFEEEEEEFFC2C2C2FFFEFE
      FEFFC8C8C8FFFFFFFFFFFCFCFCFFB1B1B1FF0000000041475300414753004147
      5300414753000292CE0067DBFC0087E4FB00A5ECFB000000C700BDF3FA00A4EC
      FA0086E4FB0067DBFC00201F2300201F2300F9DCCFFFF2DBD2FFFFF3E0FFFFF3
      E1FFFFF4E5FF98716EFF6E3A3CFFFBF3EAFFFFFAF3FFFFFFFAFF713F40FF6C38
      3AFFFDFDFDFFFFFFFFFFDBD8D7FF00000000009DD4FF00B1FFFFC3D5EBFFFFFF
      FFFFFDFDFDFFFBFBFBFFF9F9F9FFF5F5F5FFF4F4F4FFF3F3F3FFF0F0F0FFEEEE
      EEFFEEEDECFF0A89C7FF00F6FFFF4882C4FF76B2C3FF51AAECFF62B2F2FF0079
      9CFF057B9CFF1084B0FF4CACFEFF6FAFC7FFF3F3F3FFF4F4F4FFECECECFFF2F2
      F2FFF8F8F8FFF2F2F2FFFAFAFAFFB1B1B1FF0000000041475300F6E6B500F6E6
      B400F6E6B4000292CE0063DBFC0082E3FB009EEAFA00B3F0FA000000C7009EEA
      FB0081E3FB0063DAFC0028CAFE00201F2300F9E2D6FFDCB3A7FFFFF4E3FFFFF3
      E4FFBB9E97FF724041FF6B3739FFFFFCF5FFA1807FFF683335FF926B6DFF6D39
      3BFFFFFFFFFFFFFDFBFF000000000000000000B9EBFF00A2F9FFFCFDFCFFFCFC
      FCFFFFFFFFFFFDFDFDFF7B7B7BFF1B1B1BFF696969FF676767FF989898FFF0F0
      F0FFE7E7E7FF4579BDFF00FBFFFF0059B2FFD7DBDBFFA0DDF4FF1F90DBFF90C6
      F7FF7EC1FAFF51B2DFFFFFFFFAFFDFDCDBFFFEFEFEFFFBFBFBFFB2B2B2FFF0F0
      F0FFF1F1F1FFF1F1F1FFF8F8F8FFB1B1B1FF0000000041475300F7E8BD00F7E9
      BE00F7E9BE000292CE0058D7FC0074DEFB008CE5FB009EEAFA009DEAFA000000
      C70074DFFB0058D7FC0021C9FE00201F2300F9E8DFFFD2A393FFFFF5E6FFFFF6
      E9FF997472FF855858FF885D5EFFFFFAF7FFEFE8E6FF7A4B4CFF754446FFCEBC
      BDFFFFFFFFFFF6E3D5FF00000000000000000CB7EBFF0094F1FFE7E5E2FFE0E0
      E0FFFFFFFFFFFFFFFFFF565656FF6C6C6CFF343434FFA2A2A2FFCECECEFFF3F3
      F3FF989898FF4D81C1FF00F6FFFF0057B1FFD7D7D7FFFFFFFFFFC8EBF6FFEFF8
      F8FFE6F6F7FFFFFFFEFFFBFBFBFFFDFDFDFFFAFAFAFFF6F6F6FFF4F4F4FFF3F3
      F3FFF0F0F0FFEFEFEFFFF6F6F6FFB1B1B1FF0000000041475300414753004147
      5300414753000292CE0047D3FD005FD9FC0074DFFC0082E3FC0081E3FB0074DF
      FC000000C70047D3FD0018C7FE00201F2300FAEEE8FFDAB2A1FFFFF5EAFFFFF6
      EDFFFFFAF2FFFFFBF5FFFFFDF8FFFFFDFBFFFFFDFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2D4BEFF00000000000000001CB9E2FF009EFFFFE3EBF5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF121212FF696969FFF1F1F1FFF5F5
      F5FFF4F4F3FF2B75BDFF00EFFFFF1E64B4FFD8D8D8FFFFFFFFFFE2E2E3FFFBFB
      FBFFFEFEFEFFFDFDFDFFFEFEFEFFB1B1B1FFC3C3C3FFF1F1F1FFD1D1D1FFFAFA
      FAFFD7D7D7FFF3F3F3FFF4F4F4FFB1B1B1FF00000000414753004147530000A8
      FF0000A8FF00414753000292CE002FCCFE003CD0FE0044D2FD0044D2FD003CD0
      FE002FCDFD001FC9FE000000000000000000FAF4F1FFE1BFAFFFFFF8EEFFFFFD
      F5FFB29593FFA17F7FFF815354FFBBA3A4FFEFEAEAFF805356FFB69B9CFFA98A
      8CFFFFFFFFFFF7D5BBFF00000000000000000B70BBFF009CFFFF6094CCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF121212FF696969FFF2F2
      F2FFFCF9F7FF00ADE1FF00CAFFFF94AECCFFD8D8D8FFFFFFFFFFFEFEFEFFFEFE
      FEFFFFFFFFFFFDFDFDFFFCFCFCFFFBFBFBFFFBFBFBFFF9F9F9FFF1F1F1FFF4F4
      F4FFF6F6F6FFF3F3F3FFF2F2F2FFB1B1B1FF4147530041475300414753004147
      53004147530041475300414753000292CE000292CE000292CE000292CE000292
      CE000292CE00201F23000000000000000000FBF7F6FFE2C2B2FFFFF8F2FFFFFF
      FBFF713E41FF6E3A3CFFA78789FFC5B1B1FF956E70FF9F7D7FFFAA8C8DFF865C
      5EFFFFFFFFFFF7D1B3FF00000000000000005787BEFF14B4FDFF0086E7FFF1F5
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF575757FFFAFA
      F9FF447DBFFF00DDFFFF006DC9FFFAFAFAFFD8D8D8FFFFFFFFFFFFFFFFFFFFFF
      FFFFF6F6F6FFD3D3D3FFFFFFFFFFDEDEDEFFFDFDFDFFF8F8F8FFF7F7F7FFF8F8
      F8FFB5B5B5FFC5C5C5FFF0F0F0FFB1B1B1FF41475300FEFAF200FEFBF200FDFA
      F200FDFBF100FDFBF100414753000349F200023DEB00023DEB000124DD000119
      D6000119D600414753000000000000000000FBDED1FFE5AD96FFFFDECEFFFFE4
      D6FFE1C3BBFFD3B5B0FFFFF0E7FFFFF0E9FFFFF4EEFFFFF7F2FFE7D8D5FFFFFD
      FAFFFFFDFCFFFADBC1FF0000000000000000000000001271B9FF009DFFFF0066
      C8FFF1F5FAFFFFFFFFFFFFFFFFFFE0E0E0FFFCFCFCFFFFFFFFFFFFFEFEFF82A6
      D2FF00C7FBFF00B6FCFF558FCFFF00000000D8D8D8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEAE7E4FFFFFFFEFFFFFFFCFFFFFFFCFFFFFEF9FFFFFDF8FFFEFB
      F6FFF8F4F0FFFFFBF6FFFEFCF7FFB1B1B1FF0000000041475300FEFBF200FDFA
      F200FDFBF100FDFBF100414753000349F200023DEB00023DEB000124DD000119
      D60041475300000000000000000000000000AB5C56FFAE5651FFAD504DFFAE55
      52FFAF5A56FFB05E5CFFB26462FFB46B68FFB67270FFBA7A78FFBD8280FFC18B
      89FFC49393FFCA9F9FFFD5D2D2FF0000000000000000C5CCD6FF208FCBFF009D
      FFFF0086E7FF6094CCFFE3EBF5FFE7E5E2FFFCFDFCFFC3D5EBFF0365BBFF00C3
      FFFF00BBFEFF115FB8FF0000000000000000DBD9D8FF36CCFFFF86D5FFFF7ECD
      FFFF75C2FFFF0289FFFF048BFFFF048BFFFF048BFEFF048BFEFF048AFEFF048B
      FEFF048AFEFF048AFEFF088DFFFFB6B4B1FF000000000000000041475300FFFF
      FF00FFFFFF0041475300045AFC000453F8000349F2000349F200414753000000
      000000000000000000000000000000000000E07E71FFDD6A61FFDD625BFFDF6C
      65FFE1766FFFE3807BFFE78A84FFE9958EFFEB9F99FFEDA9A3FFEFB3AEFFF1BD
      B8FFF3C7C3FFF6D2CFFFBCB8B8FF000000000000000000000000C5CCD6FF1271
      B9FF14B4FDFF009CFFFF009EFFFF0094F1FF00A2F9FF00B1FFFF00B4FFFF0098
      EBFF246CBDFF000000000000000000000000DAD8D7FF50D8FFFFA5E4FFFF52BE
      FFFF46AEFFFF289DFFFF289DFFFF299EFFFF299DFFFF289DFFFF299DFFFF299E
      FFFF299EFFFF299DFFFF2DA0FFFFB4B2B0FF0000000000000000000000004147
      5300414753004147530041475300414753004147530041475300000000000000
      000000000000000000000000000000000000E07D71FFE38075FFE6857DFFE995
      8EFFEDA39DFFF0B1ACFFF3BDB9FFF5CAC5FFF7D4D1FFF9DDDAFFFAE5E3FFFCED
      EBFFFDF2F1FFFFF9F8FFC0BCBCFF000000000000000000000000000000000000
      00005384BCFF0B70BBFF1CB9E2FF0CB7EBFF00B9EBFF009DD4FF1460B7FFBDCB
      DCFF00000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000FFC030003F01F0007FE030000E007
      0003FC010000C0030001F800000080010000F800000100010000F80000010000
      0000800000010000000080000003000000008000000300000000800000030000
      0000800300030000000000030003000000000003000380010000800700018003
      0000C01F0001C0070000E03F0001F00F00000000000000000000000000000000
      000000000000}
  end
  object qryInitWorkDay: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'EXECUTE PROCEDURE HR_SP_INIT_WORK_DAY ('
      '    :USER_NAME,'
      '    :DEPT_NO,'
      '    :IN_MONTH,'
      '    :IN_YEAR)')
    FieldOptions = []
    Left = 120
    Top = 96
  end
  object memWorkMonth: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 24
    Top = 232
    object memWorkMonthEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memWorkMonthFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memWorkMonthTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memWorkMonthTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
      OnChange = memWorkMonthTOTAL_TIMEChange
    end
    object memWorkMonthTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object memWorkMonthDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object memWorkMonthTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
    object memWorkMonthWM_ID: TIntegerField
      FieldName = 'WM_ID'
    end
    object memWorkMonthKEY_ID: TWideStringField
      FieldName = 'KEY_ID'
      Size = 60
    end
  end
  object dsWorkMonth: TDataSource
    DataSet = memWorkMonth
    Left = 24
    Top = 264
  end
  object qryEmpListForMonth: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_YEAR'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsOrgMap
    SQL.Strings = (
      '/*SELECT'
      '    EMP_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    IS_MAIN_POSITION,'
      '    IS_DISMISSED,'
      '    TOTAL_DAY,'
      '    TOTAL_TIME'
      'FROM HR_GET_TOTAL_WORK_MONTH(:USER_NAME,:DEPT_NO,'
      '    :IN_MONTH,:IN_YEAR,0)'
      'where IS_MAIN_POSITION=1 and  (IS_DISMISSED=0 or'
      '  (DISMISS_MONTH>=(:IN_MONTH -1 +12* :IN_YEAR)))'
      '*/'
      ''
      'SELECT distinct'
      '    WM_ID,'
      '    EMP_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    hr_get_total_work_month.title_no,'
      '    hr_get_total_work_month.dept_no,'
      '    IS_MAIN_POSITION,'
      '    IS_DISMISSED,'
      '    TOTAL_DAY,'
      '    TOTAL_TIME,'
      '    DEPT_NO,'
      '    TITLE_NO'
      'FROM hr_get_total_work_month(:USER_NAME,:DEPT_NO,'
      '    :IN_MONTH,:IN_YEAR,0)'
      '/*where hr_get_total_work_month.IS_MAIN_POSITION=1 and '
      '      (hr_get_total_work_month.IS_DISMISSED=0 or'
      
        '      (hr_get_total_work_month.dismiss_date >= :StartOfMonth)) a' +
        'nd'
      '      hr_get_total_work_month.assigned_date <= :EndOfMonth*/')
    FieldOptions = []
    Left = 56
    Top = 232
    object qryEmpListForMonthEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryEmpListForMonthFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryEmpListForMonthTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpListForMonthTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryEmpListForMonthDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryEmpListForMonthIS_MAIN_POSITION: TIntegerField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryEmpListForMonthIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryEmpListForMonthTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object qryEmpListForMonthTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
    object qryEmpListForMonthWM_ID: TIntegerField
      FieldName = 'WM_ID'
    end
  end
  object dsEmpListForMonth: TDataSource
    DataSet = qryEmpListForMonth
    Left = 56
    Top = 264
  end
  object qryEmpWorkMonth: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMP_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TITLE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpListForMonth
    SQL.Strings = (
      'SELECT HR_WORKING_MONTH.WM_ID'
      '     , HR_WORKING_MONTH.EMPLOYEE_NO'
      '     , HR_WORKING_MONTH.WHT_NO'
      '     , WHT_NAME'
      '     , WHT_COLOR'
      '     , HR_WORKING_MONTH.TOTAL_DAY'
      '     , HR_WORKING_MONTH.TOTAL_TIME'
      '     , HR_WORKING_MONTH.DEPT_NO'
      '     , HR_WORKING_MONTH.TITLE_NO'
      'FROM HR_WORKING_MONTH'
      
        'LEFT JOIN hr_work_hour_type on HR_WORKING_MONTH.WhT_NO=hr_work_h' +
        'our_type.WhT_NO'
      'where '
      '  HR_WORKING_MONTH.EMPLOYEE_NO=:EMP_NO and'
      '  HR_WORKING_MONTH.AT_MONTH=:IN_MONTH and'
      '  HR_WORKING_MONTH.AT_YEAR=:IN_YEAR and '
      '  HR_WORKING_MONTH.DEPT_NO = :DEPT_NO and'
      '  HR_WORKING_MONTH.TITLE_NO = :TITLE_NO ')
    FieldOptions = []
    Left = 88
    Top = 232
    object qryEmpWorkMonthEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkMonthWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkMonthWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryEmpWorkMonthWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
    object qryEmpWorkMonthTOTAL_DAY: TIntegerField
      FieldName = 'TOTAL_DAY'
    end
    object qryEmpWorkMonthTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
    object qryEmpWorkMonthWM_ID: TIntegerField
      FieldName = 'WM_ID'
      Required = True
    end
    object qryEmpWorkMonthDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryEmpWorkMonthTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
  end
  object qryInitWorkMonth: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'EXECUTE PROCEDURE HR_SP_INIT_WORK_MONTH ('
      '    :USER_NAME,'
      '    :DEPT_NO,'
      '    :IN_MONTH,'
      '    :IN_YEAR)')
    FieldOptions = []
    Left = 120
    Top = 232
  end
  object qryUpdateEmpWorkMonth: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TOTAL_DAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'TITLE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update HR_WORKING_MONTH'
      'set TOTAL_DAY=:TOTAL_DAY,'
      '    TOTAL_TIME=:TOTAL_TIME'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and'
      '      AT_MONTH=:IN_MONTH and'
      '      AT_YEAR=:IN_YEAR AND'
      '      WHT_NO=:WHT_NO '
      'and   DEPT_NO = :DEPT_NO and'
      '      TITLE_NO = :TITLE_NO'
      '/* and'
      '      WM_ID = :WM_ID */'
      '  ')
    FieldOptions = []
    Left = 88
    Top = 264
  end
  object qryDeleteEmpWorkTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'WT_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'delete from HR_WORKING_TIME'
      'where /*EMPLOYEE_NO=:EMPLOYEE_NO and'
      '      WORK_DATE=:WORK_DATE and'
      '      START_TIME=:ORG_START_TIME*/'
      '      WT_ID = :WT_ID'
      '  ')
    FieldOptions = []
    Left = 120
    Top = 192
  end
  object memWorkTotal: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeInsert = memWorkTotalBeforeInsert
    OnNewRecord = memWorkTotalNewRecord
    Left = 24
    Top = 312
    object memWorkTotalEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memWorkTotalFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memWorkTotalTOTAL_TIME: TFloatField
      FieldName = 'TOTAL_TIME'
      OnChange = memWorkTotalTOTAL_TIMEChange
    end
    object memWorkTotalEMP_FULL_INFO: TWideStringField
      FieldName = 'EMP_FULL_INFO'
      Size = 255
    end
    object memWorkTotalTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memWorkTotalKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      Size = 30
    end
  end
  object dsWorkTotal: TDataSource
    DataSet = memWorkTotal
    Left = 24
    Top = 344
  end
  object dsEmpForTotal: TDataSource
    DataSet = qryEmpForTotal
    Left = 56
    Top = 344
  end
  object qryEmpForTotal: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsOrgMap
    SQL.Strings = (
      'SELECT'
      '    EMP_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    IS_MAIN_POSITION,'
      '    IS_DISMISSED,'
      '    TOTAL_TIME'
      'FROM HR_GET_TOTAL_WORK_TOTAL(:USER_NAME,:DEPT_NO,'
      '    :IN_MONTH,:IN_YEAR,0)'
      'where IS_MAIN_POSITION=1 and  (IS_DISMISSED=0 or'
      '  (DISMISS_MONTH>=(:IN_MONTH -1 +12* :IN_YEAR)))')
    FieldOptions = []
    Left = 56
    Top = 312
    object qryEmpForTotalEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryEmpForTotalFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryEmpForTotalTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpForTotalIS_MAIN_POSITION: TIntegerField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryEmpForTotalIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryEmpForTotalTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
  end
  object qryEmpWorkTotal: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMP_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpForTotal
    SQL.Strings = (
      'SELECT hr_working_total.EMPLOYEE_NO'
      '     , hr_working_total.WORK_DATE'
      '     , hr_working_total.hour_time'
      '     , hr_working_total.work_time'
      '     , hr_working_total.WHT_NO'
      '     , WHT_NAME'
      '     , WHT_COLOR '
      'FROM hr_working_total'
      'LEFT JOIN HR_WORK_HOUR_TYPE on '
      '  hr_working_total.WHT_NO=HR_WORK_HOUR_TYPE.WHT_NO'
      'where '
      '  hr_working_total.EMPLOYEE_NO=:EMP_NO and'
      '  hr_working_total.work_date between :FROM_DATE and :TO_DATE'
      'order by WORK_DATE')
    FieldOptions = []
    Left = 88
    Top = 312
    object qryEmpWorkTotalEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkTotalWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryEmpWorkTotalHOUR_TIME: TTimeField
      FieldName = 'HOUR_TIME'
      Required = True
    end
    object qryEmpWorkTotalWORK_TIME: TIBOFloatField
      FieldName = 'WORK_TIME'
      Required = True
    end
    object qryEmpWorkTotalWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkTotalWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryEmpWorkTotalWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
  end
  object qryInsertEmpWorkTotal: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HOUR_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'insert into HR_WORKING_TOTAL('
      '      EMPLOYEE_NO'
      '     , WORK_DATE'
      '     , HOUR_TIME'
      '     , WORK_TIME'
      '     , WHT_NO)'
      'values('
      '      :EMPLOYEE_NO'
      '     ,:WORK_DATE'
      '     ,:HOUR_TIME'
      '     ,:WORK_TIME'
      '     ,:WHT_NO)')
    FieldOptions = []
    Left = 88
    Top = 344
  end
  object qryDeleteEmpWorkTotal: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'delete from HR_WORKING_TOTAL'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and'
      '      WORK_DATE=:WORK_DATE and'
      '      WHT_NO=:WHT_NO'
      '  ')
    FieldOptions = []
    Left = 120
    Top = 344
  end
  object qryUpdateEmpWorkTotal: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'HOUR_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_WHT_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update HR_WORKING_TOTAL'
      'set '
      '   HOUR_TIME=:HOUR_TIME,'
      '   WORK_TIME=:WORK_TIME,'
      '   WHT_NO=:WHT_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and'
      '      WORK_DATE=:WORK_DATE and'
      '      WHT_NO=:OLD_WHT_NO'
      '  ')
    FieldOptions = []
    Left = 120
    Top = 312
  end
  object qryConfig: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORKING_CONFIG'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    EditSQL.Strings = (
      'UPDATE HR_WORKING_CONFIG SET'
      '   KEY_ID = :KEY_ID, /*PK*/'
      '   CHAMCONG_NGAY = :CHAMCONG_NGAY,'
      '   CHAMCONG_GIO = :CHAMCONG_GIO,'
      '   CHAMCONG_THANG = :CHAMCONG_THANG,'
      '   CHAMCONG_TONGGIO = :CHAMCONG_TONGGIO,'
      '   LOAI_CHAMCONG = :LOAI_CHAMCONG'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORKING_CONFIG('
      '   KEY_ID, /*PK*/'
      '   CHAMCONG_NGAY,'
      '   CHAMCONG_GIO,'
      '   CHAMCONG_THANG,'
      '   CHAMCONG_TONGGIO,'
      '   LOAI_CHAMCONG)'
      'VALUES ('
      '   :KEY_ID,'
      '   :CHAMCONG_NGAY,'
      '   :CHAMCONG_GIO,'
      '   :CHAMCONG_THANG,'
      '   :CHAMCONG_TONGGIO,'
      '   :LOAI_CHAMCONG)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT first 1 '
      '     KEY_ID'
      '     , CHAMCONG_NGAY'
      '     , CHAMCONG_GIO'
      '     , CHAMCONG_THANG'
      '     , CHAMCONG_TONGGIO'
      '     , LOAI_CHAMCONG'
      'FROM HR_WORKING_CONFIG')
    FieldOptions = []
    Left = 184
    Top = 152
    object qryConfigKEY_ID: TIntegerField
      FieldName = 'KEY_ID'
      Required = True
    end
    object qryConfigCHAMCONG_NGAY: TSmallintField
      FieldName = 'CHAMCONG_NGAY'
    end
    object qryConfigCHAMCONG_GIO: TSmallintField
      FieldName = 'CHAMCONG_GIO'
    end
    object qryConfigCHAMCONG_THANG: TSmallintField
      FieldName = 'CHAMCONG_THANG'
    end
    object qryConfigCHAMCONG_TONGGIO: TSmallintField
      FieldName = 'CHAMCONG_TONGGIO'
    end
  end
  object dsConfig: TDataSource
    DataSet = qryConfig
    Left = 222
    Top = 178
  end
  object qryCCTongGio_Active: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'THANG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MA_GIO_CONG'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure hr_insert_cc_tonggio(:USER_NAME, :DEPT_NO, :VI' +
        'EW_ALL, :THANG,:NAM,:MA_GIO_CONG, '#39'8'#39')')
    FieldOptions = []
    Left = 184
    Top = 224
  end
  object qryKiemTraCC: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'NGAY_BD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NGAY_KT'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_working_time.work_date '
      'from hr_working_time '
      'where hr_working_time.start_time = hr_working_time.end_time '
      'and hr_working_time.work_date between :NGAY_BD and :NGAY_KT'
      'group by hr_working_time.work_date')
    FieldOptions = []
    Left = 840
    Top = 208
  end
  object qryMaxWT_ID: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT max(WT_ID)'
      'FROM HR_WORKING_TIME')
    FieldOptions = []
    Left = 152
    Top = 192
    object qryMaxWT_IDMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object qryLoadTotalTime: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'WT_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_WORKING_TIME.total_time,'
      '       HR_WORKING_TIME.end_time'
      'FROM HR_WORKING_TIME'
      'where HR_WORKING_TIME.wt_id = :WT_ID')
    FieldOptions = []
    Left = 152
    Top = 160
    object qryLoadTotalTimeTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
    object qryLoadTotalTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
  end
  object qryInstead: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'user_name'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'for_emp_no'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROM_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryInsteadBeforeOpen
    SQL.Strings = (
      'select hr_work_shift_reg.for_emp_no,'
      '       hr_get_emp_dept.full_name,'
      '       hr_get_emp_dept.title_name,'
      '       hr_get_emp_dept.dept_name,'
      '       hr_work_shift_reg.note'
      'from hr_work_shift_reg'
      'join hr_get_emp_dept(:user_name,null,null)'
      
        '    on hr_get_emp_dept.employee_no = hr_work_shift_reg.for_emp_n' +
        'o'
      'join hr_assignment'
      '    on hr_assignment.employee_no = hr_work_shift_reg.for_emp_no'
      '    and hr_assignment.vitri_kiemnhiem is null'
      ''
      'where hr_work_shift_reg.for_emp_no = :for_emp_no and'
      '      hr_get_emp_dept.is_main_position = 1 and'
      '      (hr_get_emp_dept.is_dismissed = 0 or'
      '       (hr_get_emp_dept.dismiss_date is not null and'
      '        hr_get_emp_dept.dismiss_date >= :FROM_DATE'
      '       ))')
    FieldOptions = []
    Left = 744
    Top = 136
    object qryInsteadFOR_EMP_NO: TWideStringField
      FieldName = 'FOR_EMP_NO'
      ReadOnly = True
      Size = 30
    end
    object qryInsteadFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryInsteadTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryInsteadDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryInsteadNOTE: TWideStringField
      FieldName = 'NOTE'
      ReadOnly = True
      Size = 3072
    end
  end
  object dsInstead: TDataSource
    DataSet = qryInstead
    Left = 744
    Top = 168
  end
  object qryInsteadDetail: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'for_emp_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'employee_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryInsteadDetailBeforeOpen
    SQL.Strings = (
      'select hr_work_shift_reg.employee_no,'
      '       hr_work_shift_reg.from_date,'
      '       hr_work_shift_reg.to_date,'
      '       hr_work_shift.shift_name'
      'from hr_work_shift_reg'
      'left join hr_work_shift'
      '    on hr_work_shift_reg.shift_no = hr_work_shift.shift_no'
      'where hr_work_shift_reg.for_emp_no = :for_emp_no and'
      '      hr_work_shift_reg.employee_no = :employee_no and'
      
        '      ((hr_work_shift_reg.from_date between :FROM_DATE and :TO_D' +
        'ATE) or'
      
        '       (hr_work_shift_reg.to_date between :FROM_DATE and :TO_DAT' +
        'E)'
      '       )')
    FieldOptions = []
    Left = 776
    Top = 136
    object qryInsteadDetailFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
      Required = True
    end
    object qryInsteadDetailTO_DATE: TDateField
      FieldName = 'TO_DATE'
      Required = True
    end
    object qryInsteadDetailSHIFT_NAME: TWideStringField
      FieldName = 'SHIFT_NAME'
      Size = 126
    end
    object qryInsteadDetailEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
  end
  object dsInsteadDetail: TDataSource
    DataSet = qryInsteadDetail
    Left = 776
    Top = 168
  end
end
