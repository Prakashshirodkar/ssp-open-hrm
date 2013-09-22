inherited frmWorkTimeProcess: TfrmWorkTimeProcess
  Left = 268
  Top = 176
  Width = 849
  Height = 558
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 505
    Width = 841
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 841
    Height = 505
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxSelectDept: TdxPopupEdit
      Left = 460
      Top = 31
      Width = 173
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnCloseUp = dxSelectDeptCloseUp
      OnInitPopup = dxSelectDeptInitPopup
    end
    object dxSelectChild: TdxCheckEdit
      Left = 691
      Top = 31
      Width = 70
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Caption = 'C'#7845'p d'#432#7899'i'
      StyleController = dmMain.StyleController
    end
    object ElPopupButton1: TElPopupButton
      Left = 761
      Top = 30
      Width = 66
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acLaydulieuMaychamcong
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    inline frameDateTime1: TframeDateTime
      Left = 14
      Top = 28
      Width = 387
      Height = 29
      Color = 15466238
      ParentColor = False
      TabOrder = 11
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 387
        inherited dxSelectPeriod: TdxImageEdit
          Width = 96
        end
        inherited dxToDate: TdxDateEdit
          Left = 286
        end
        inherited dxFromDate: TdxDateEdit
          Left = 184
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxGroupSelectPeriod: TdxLayoutGroup
            inherited dxLayoutControl1Item3: TdxLayoutItem
              Caption = 'T'#7915
            end
            inherited dxLayoutControl1Item2: TdxLayoutItem
              Caption = #272#7871'n'
            end
          end
        end
      end
    end
    object gridResult: TdxDBGrid
      Left = 418
      Top = 90
      Width = 363
      Height = 234
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EMPLOYEE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 3
      DataSource = dsResult
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridResultEMPLOYEE_NO: TdxDBGridColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 216
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridResultFULL_NAME: TdxDBGridColumn
        Caption = 'Nh'#226'n vi'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 900
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        GroupIndex = 0
        Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
      end
      object gridResultDEPT_NAME: TdxDBGridColumn
        Caption = #272#417'n v'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 900
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object gridResultTITLE_NAME: TdxDBGridColumn
        Caption = 'Ch'#7913'c v'#7909
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 900
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object gridResultWORK_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_DATE'
        GroupIndex = 1
        Caption_UTF7 = 'Ng+AOA-y'
      end
      object gridResultSTART_TIME: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' v'#224'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'START_TIME'
        Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
      end
      object gridResultWHT_NAME: TdxDBGridColumn
        Caption = 'Ch'#7845'm c'#244'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WHT_NAME'
        Caption_UTF7 = 'Ch+HqU-m c+APQ-ng'
      end
      object gridResultEND_TIME: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' ra'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'END_TIME'
        Caption_UTF7 = 'Gi+Ht0 ra'
      end
      object gridResultEND_DATE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Ng'#224'y ra'
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'END_DATE'
        Descriptions.WideStrings = (
          'c'#249'ng ng'#224'y'
          'h'#244'm sau')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Ng+AOA-y ra'
      end
      object gridResultFOR_EMP_NO: TdxDBGridColumn
        Caption = 'Tr'#7921'c thay cho'
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FOR_EMP_NO'
        Caption_UTF7 = 'Tr+HvE-c thay cho'
      end
      object gridResultTITLE_NO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NO'
      end
    end
    object dxpgBar: TdxfProgressBar
      Left = 515
      Top = 403
      Width = 337
      Height = 22
      BarBevelOuter = bvNone
      BeginColor = 10931878
      BevelOuter = bvLowered
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
      ShowText = True
      ShowTextStyle = stsPercent
      Step = 1
      Style = sRectangles
      TabOrder = 12
      TransparentGlyph = True
    end
    object ElPopupButton2: TElPopupButton
      Left = 557
      Top = 472
      Width = 90
      Height = 24
      Cursor = crDefault
      ImageIndex = 57
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#7917' l'#237
      TabOrder = 8
      Color = 15466238
      ParentColor = False
      Action = acXuliDulieu
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 647
      Top = 471
      Width = 90
      Height = 25
      Cursor = crDefault
      ImageIndex = 37
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u k'#7871't qu'#7843
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      Action = acLuuDulieu
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 737
      Top = 471
      Width = 90
      Height = 25
      Cursor = crDefault
      ImageIndex = 67
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
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
    object lblDept: TdxEdit
      Left = 515
      Top = 357
      Width = 312
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      ReadOnly = True
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object lblFromTo: TdxEdit
      Left = 515
      Top = 380
      Width = 327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      ReadOnly = True
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object lblEmployee: TdxEdit
      Left = 515
      Top = 425
      Width = 312
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      ReadOnly = True
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object lblTime: TdxEdit
      Left = 515
      Top = 448
      Width = 312
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      ReadOnly = True
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object ElPageControl1: TElPageControl
      Left = 14
      Top = 357
      Width = 380
      Height = 137
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Multiline = False
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
      ActivePage = ElTabSheet3
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = ANSI_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'Tahoma'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 16
      object ElTabSheet1: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'L'#7883'ch l'#224'm vi'#7879'c chu'#7849'n'
        Visible = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 380
          Height = 116
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridStandard: TdxDBGrid
            Left = 3
            Top = 3
            Width = 380
            Height = 131
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'START_TIME'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsWeekTime
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridStandardSTART_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 61
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object gridStandardSTART_DATE: TdxDBGridColumn
              Caption = 'Ng'#224'y v'#224'o'
              HeaderAlignment = taCenter
              Width = 63
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_DATE'
              Caption_UTF7 = 'Ng+AOA-y v+AOA-o'
            end
            object gridStandardWHT_NAME: TdxDBGridColumn
              Caption = 'Ch'#7845'm c'#244'ng'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 115
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WHT_NAME'
              Caption_UTF7 = 'Ch+HqU-m c+APQ-ng'
            end
            object gridStandardEND_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 61
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
            object gridStandardWEEK_END_DATE: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Ng'#224'y ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WEEK_END_DATE'
              Descriptions.WideStrings = (
                'c'#249'ng ng'#224'y'
                'h'#244'm sau')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Ng+AOA-y ra'
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'gridStandard'
              ShowCaption = False
              Control = gridStandard
            end
          end
        end
      end
      object ElTabSheet2: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'L'#7883'ch ra ngo'#224'i'
        Visible = False
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 380
          Height = 116
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridBlankTime: TdxDBGrid
            Left = 3
            Top = 3
            Width = 370
            Height = 108
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'START_TIME'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsBlankWeekTime
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object dxDBGridTimeColumn1: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object dxDBGridColumn1: TdxDBGridColumn
              Caption = 'Ch'#7845'm c'#244'ng'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WHT_NAME'
              Caption_UTF7 = 'Ch+HqU-m c+APQ-ng'
            end
            object dxDBGridTimeColumn2: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
            object dxDBGridImageColumn1: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Ng'#224'y ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WEEK_END_DATE'
              Descriptions.WideStrings = (
                'c'#249'ng ng'#224'y'
                'h'#244'm sau')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Ng+AOA-y ra'
            end
          end
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl3Item1: TdxLayoutItem
              Control = gridBlankTime
            end
          end
        end
      end
      object ElTabSheet3: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = #272'i tr'#7877
        object dxLayoutControl4: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 380
          Height = 116
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBGrid1: TdxDBGrid
            Left = 3
            Top = 3
            Width = 370
            Height = 108
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'START_TIME'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsLateWeekTime
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object dxDBGridTimeColumn3: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object dxDBGridColumn2: TdxDBGridColumn
              Caption = 'Ch'#7845'm c'#244'ng'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WHT_NAME'
              Caption_UTF7 = 'Ch+HqU-m c+APQ-ng'
            end
            object dxDBGridTimeColumn4: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
            object dxDBGridImageColumn2: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Ng'#224'y ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WEEK_END_DATE'
              Descriptions.WideStrings = (
                'c'#249'ng ng'#224'y'
                'h'#244'm sau')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Ng+AOA-y ra'
            end
          end
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl4Item1: TdxLayoutItem
              Control = dxDBGrid1
            end
          end
        end
      end
      object ElTabSheet4: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = -1
        TabVisible = True
        Caption = 'V'#7873' s'#7899'm'
        Visible = False
        object dxLayoutControl5: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 380
          Height = 116
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBGrid2: TdxDBGrid
            Left = 3
            Top = 3
            Width = 370
            Height = 108
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'START_TIME'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsSoonWeekTime
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object dxDBGridTimeColumn5: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object dxDBGridColumn3: TdxDBGridColumn
              Caption = 'Ch'#7845'm c'#244'ng'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WHT_NAME'
              Caption_UTF7 = 'Ch+HqU-m c+APQ-ng'
            end
            object dxDBGridTimeColumn6: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
            object dxDBGridImageColumn3: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Ng'#224'y ra'
              DisableEditor = True
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WEEK_END_DATE'
              Descriptions.WideStrings = (
                'c'#249'ng ng'#224'y'
                'h'#244'm sau')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Ng+AOA-y ra'
            end
          end
          object dxLayoutControl5Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl5Item1: TdxLayoutItem
              Control = dxDBGrid2
            end
          end
        end
      end
    end
    object ElPageControl2: TElPageControl
      Left = 14
      Top = 90
      Width = 380
      Height = 234
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsAngledTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = ElTabSheet5
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = ANSI_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'Tahoma'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 17
      object ElTabSheet5: TElTabSheet
        PageControl = ElPageControl2
        ImageIndex = -1
        TabVisible = True
        Caption = 'Gi'#7901' Chu'#7849'n'
        object dxLayoutControl6: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 376
          Height = 211
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridRawData: TdxDBGrid
            Left = 3
            Top = 3
            Width = 286
            Height = 205
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsRawData
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            OnChangeNode = gridRawDataChangeNode
            object gridRawDataEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridRawDataFULL_NAME: TdxDBGridColumn
              Caption = 'Nh'#226'n vi'#234'n'
              DisableEditor = True
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 164
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              GroupIndex = 0
              Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
            end
            object gridRawDataDEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 164
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
              Caption_UTF7 = '+ARABoQ-n v+Hss'
            end
            object gridRawDataTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 164
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridRawDataWORK_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y'
              DisableEditor = True
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 26
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WORK_DATE'
              GroupIndex = 1
              Caption_UTF7 = 'Ng+AOA-y'
            end
            object gridRawDataSTART_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              HeaderAlignment = taCenter
              Width = 31
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object gridRawDataSTART_DATE: TdxDBGridImageColumn
              Alignment = taRightJustify
              Caption = 'Ng'#224'y v'#224'o'
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 63
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_DATE'
              Descriptions.WideStrings = (
                'c'#249'ng ng'#224'y'
                'h'#244'm sau')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Ng+AOA-y v+AOA-o'
            end
            object gridRawDataWHT_NAME: TdxDBGridColumn
              Caption = 'Ch'#7845'm c'#244'ng'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WHT_NAME'
              Caption_UTF7 = 'Ch+HqU-m c+APQ-ng'
            end
            object gridRawDataEND_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              HeaderAlignment = taCenter
              Width = 58
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
            object gridRawDataEND_DATE: TdxDBGridImageColumn
              Alignment = taRightJustify
              Caption = 'Ng'#224'y ra'
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_DATE'
              Descriptions.WideStrings = (
                'c'#249'ng ng'#224'y'
                'h'#244'm sau')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Ng+AOA-y ra'
            end
          end
          object dxLayoutControl6Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl6Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'gridRawData'
              ShowCaption = False
              Control = gridRawData
            end
          end
        end
      end
      object ElTabSheet6: TElTabSheet
        PageControl = ElPageControl2
        ImageIndex = -1
        TabVisible = True
        Caption = 'Gi'#7901' ra ngo'#224'i'
        Visible = False
        object dxLayoutControl7: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 376
          Height = 211
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBGrid3: TdxDBGrid
            Left = 3
            Top = 3
            Width = 370
            Height = 205
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsBlankData
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            OnChangeNode = gridRawDataChangeNode
            object dxDBGrid3EMPLOYEE_NO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 215
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
            end
            object dxDBGrid3FULL_NAME: TdxDBGridMaskColumn
              Caption = 'Nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 1122
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              GroupIndex = 0
              Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
            end
            object dxDBGrid3DEPT_NAME: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 890
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
            end
            object dxDBGrid3TITLE_NAME: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 890
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
            end
            object dxDBGrid3WORK_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 81
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WORK_DATE'
              GroupIndex = 1
              Caption_UTF7 = 'Ng+AOA-y'
            end
            object dxDBGrid3START_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              HeaderAlignment = taCenter
              Width = 146
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object dxDBGrid3END_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              HeaderAlignment = taCenter
              Width = 192
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
          end
          object dxLayoutControl7Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl7Item1: TdxLayoutItem
              Control = dxDBGrid3
            end
          end
        end
      end
      object ElTabSheet7: TElTabSheet
        PageControl = ElPageControl2
        ImageIndex = -1
        TabVisible = True
        Caption = 'Gi'#7901' '#273'i tr'#7877
        Visible = False
        object dxLayoutControl8: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 376
          Height = 211
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBGrid4: TdxDBGrid
            Left = 3
            Top = 3
            Width = 370
            Height = 205
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsLateData
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            OnChangeNode = gridRawDataChangeNode
            object dxDBGrid4EMPLOYEE_NO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 217
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
            end
            object dxDBGrid4FULL_NAME: TdxDBGridMaskColumn
              Caption = 'Nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 1127
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              GroupIndex = 0
              Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
            end
            object dxDBGrid4DEPT_NAME: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 894
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
            end
            object dxDBGrid4TITLE_NAME: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 894
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
            end
            object dxDBGrid4WORK_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 81
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WORK_DATE'
              GroupIndex = 1
              Caption_UTF7 = 'Ng+AOA-y'
            end
            object dxDBGrid4START_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              HeaderAlignment = taCenter
              Width = 145
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object dxDBGrid4END_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              HeaderAlignment = taCenter
              Width = 193
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
          end
          object dxLayoutGroup1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl8Item1: TdxLayoutItem
              Control = dxDBGrid4
            end
          end
        end
      end
      object ElTabSheet8: TElTabSheet
        PageControl = ElPageControl2
        ImageIndex = -1
        TabVisible = True
        Caption = 'Gi'#7901' v'#7873' s'#7899'm'
        Visible = False
        object dxLayoutControl9: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 376
          Height = 211
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBGrid5: TdxDBGrid
            Left = 3
            Top = 3
            Width = 370
            Height = 205
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            BorderStyle = bsNone
            TabOrder = 0
            DataSource = dsSoonData
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            OnChangeNode = gridRawDataChangeNode
            object dxDBGrid5EMPLOYEE_NO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 209
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
            end
            object dxDBGrid5FULL_NAME: TdxDBGridMaskColumn
              Caption = 'Nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 1088
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              GroupIndex = 0
              Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
            end
            object dxDBGrid5DEPT_NAME: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 863
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
            end
            object dxDBGrid5TITLE_NAME: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 863
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
            end
            object dxDBGrid5WORK_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 73
              BandIndex = 0
              RowIndex = 0
              FieldName = 'WORK_DATE'
              GroupIndex = 1
              Caption_UTF7 = 'Ng+AOA-y'
            end
            object dxDBGrid5START_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' v'#224'o'
              HeaderAlignment = taCenter
              Width = 146
              BandIndex = 0
              RowIndex = 0
              FieldName = 'START_TIME'
              Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
            end
            object dxDBGrid5END_TIME: TdxDBGridTimeColumn
              Caption = 'Gi'#7901' ra'
              HeaderAlignment = taCenter
              Width = 192
              BandIndex = 0
              RowIndex = 0
              FieldName = 'END_TIME'
              Caption_UTF7 = 'Gi+Ht0 ra'
            end
          end
          object dxLayoutGroup2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl9Item1: TdxLayoutItem
              Control = dxDBGrid5
            end
          end
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = '* T'#249'y ch'#7885'n '#273#7885'c d'#7919' li'#7879'u m'#225'y ch'#7845'm c'#244'ng'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item5: TdxLayoutItem
          Control = frameDateTime1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avCenter
            Caption = 'Ch'#7885'n '#273#417'n v'#7883
            Control = dxSelectDept
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avCenter
            Caption = 'dxCheckEdit1'
            ShowCaption = False
            Control = dxSelectChild
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avCenter
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group5: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group10: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = [aaVertical]
            Caption = '* NH'#194'N VI'#202'N - D'#7918' LI'#7878'U CH'#7844'M C'#212'NG G'#7888'C'
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'ElPageControl2'
              ShowCaption = False
              Control = ElPageControl2
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = '* K'#7870'T QU'#7842' X'#7916' L'#205
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridResult
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Group11: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group6: TdxLayoutGroup
            AutoAligns = []
            AlignVert = avClient
            Caption = '* TH'#7900'I GIAN CHU'#7848'N T'#431#416'NG '#7912'NG'
            object dxLayoutControl1Item10: TdxLayoutItem
              Caption = 'ElPageControl1'
              ShowCaption = False
              Control = ElPageControl1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group8: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avBottom
            Caption = '* B'#7842'NG '#272'I'#7872'U KHI'#7874'N'
            object dxLayoutControl1Item18: TdxLayoutItem
              Caption = #272#417'n v'#7883' ph'#242'ng ban'
              Control = lblDept
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item13: TdxLayoutItem
              Caption = 'T'#7915' ng'#224'y - '#273#7871'n ng'#224'y'
              Control = lblFromTo
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              Caption = 'Ti'#7871'n tr'#236'nh x'#7917' l'#237' '
              CaptionOptions.AlignHorz = taCenter
              Control = dxpgBar
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item14: TdxLayoutItem
              Caption = '+ Nh'#226'n vi'#234'n'
              Control = lblEmployee
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item15: TdxLayoutItem
              Caption = '+ Gi'#7901' v'#224'o ra'
              Control = lblTime
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Group9: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item9: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item12: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton3'
                ShowCaption = False
                Control = ElPopupButton3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item16: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton4'
                ShowCaption = False
                Control = ElPopupButton4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
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
        Caption = 'X'#7917' l'#237' d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 560
    Top = 8
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 32
    Top = 176
    object acLaydulieuMaychamcong: TAction
      Category = 'Du lieu may cham cong'
      Caption = 'acLaydulieuMaychamcong'
      ImageIndex = 8
      OnExecute = acLaydulieuMaychamcongExecute
    end
    object acXuliDulieu: TAction
      Category = 'Xu li du lieu '
      Caption = 'Action1'
      ImageIndex = 57
      OnExecute = acXuliDulieuExecute
      OnUpdate = acXuliDulieuUpdate
    end
    object acLuuDulieu: TAction
      Category = 'Xu li du lieu '
      Caption = 'acLuuDulieu'
      ImageIndex = 37
      OnExecute = acLuuDulieuExecute
      OnUpdate = acLuuDulieuUpdate
    end
    object acClose: TAction
      Caption = 'acClose'
      ImageIndex = 67
      OnExecute = acCloseExecute
    end
  end
  object dsRawData: TDataSource
    DataSet = qryRawData
    Left = 56
    Top = 256
  end
  object dsResult: TDataSource
    DataSet = memResult
    Left = 464
    Top = 192
  end
  object qryRawData: TIBOQuery
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
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_WORKING_TIME SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   START_TIME = :START_TIME, /*PK*/'
      '   WORK_DATE = :WORK_DATE, /*PK*/'
      '   END_TIME = :END_TIME,'
      '   END_DATE = :END_DATE,'
      '   START_DATE = :START_DATE,'
      '   WHT_NO = :WHT_NO'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   START_TIME = :OLD_START_TIME AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '     HR_WORKING_TIME.employee_no'
      
        '     , HR_WORKING_TIME.employee_no||'#39'-'#39'||hr_get_emp_dept.full_na' +
        'me full_name'
      '     , hr_get_emp_dept.dept_name'
      '     , hr_get_emp_dept.dept_no'
      '     , hr_get_emp_dept.title_name'
      '     , hr_get_emp_dept.title_no'
      '     , HR_WORKING_TIME.WORK_DATE'
      '     , HR_WORKING_TIME.START_TIME'
      '     , HR_WORKING_TIME.start_date'
      '     , HR_WORKING_TIME.END_TIME'
      '     , HR_WORKING_TIME.END_DATE'
      '     , HR_WORKING_TIME.WHT_NO    '
      '     , WHT_NAME'
      '     , WHT_COLOR'
      '     , LICH_LV_CHUAN '
      
        '     , extract(weekday from HR_WORKING_TIME.WORK_DATE) week_date' +
        '_no'
      'FROM hr_get_emp_dept(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      'join HR_WORKING_TIME on'
      '   HR_WORKING_TIME.EMPLOYEE_NO=hr_get_emp_dept.employee_no and'
      '   (IS_DISMISSED=0 or'
      '    ((hr_get_emp_dept.dismiss_date>=:FROM_DATE) and'
      '      (IS_DISMISSED= 1))) and'
      '   hr_get_emp_dept.is_main_position=1 and'
      '   HR_WORKING_TIME.DEPT_NO = :DEPT_NO and'
      '   HR_WORKING_TIME.TITLE_NO = hr_get_emp_dept.title_no '
      'left join HR_EMP_PRIVATE_INFO on '
      '  HR_WORKING_TIME.employee_no=HR_EMP_PRIVATE_INFO.employee_no'
      'LEFT JOIN HR_WORK_HOUR_TYPE on '
      '  HR_WORKING_TIME.WHT_NO=HR_WORK_HOUR_TYPE.WHT_NO'
      'where '
      '  HR_WORKING_TIME.WORK_DATE between :FROM_DATE and :TO_DATE and'
      '  (HR_WORKING_TIME.blank_time is null or'
      '  (HR_WORKING_TIME.blank_time <> 1)) and'
      '  HR_WORKING_TIME.start_time is not null'
      'order by  HR_WORKING_TIME.employee_no,WORK_DATE,START_TIME '
      '')
    FieldOptions = []
    Left = 56
    Top = 224
    object qryRawDataEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryRawDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryRawDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryRawDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryRawDataWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryRawDataSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qryRawDataEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryRawDataEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qryRawDataWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object qryRawDataWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryRawDataWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
    object qryRawDataLICH_LV_CHUAN: TWideStringField
      FieldName = 'LICH_LV_CHUAN'
      Size = 30
    end
    object qryRawDataWEEK_DATE_NO: TSmallintField
      FieldName = 'WEEK_DATE_NO'
      ReadOnly = True
      Required = True
    end
    object qryRawDataDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryRawDataSTART_DATE: TIntegerField
      FieldName = 'START_DATE'
    end
    object qryRawDataTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
  end
  object memResult: TdxMemData
    Indexes = <>
    SortOptions = []
    OnNewRecord = memResultNewRecord
    Left = 472
    Top = 160
    object memResultEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memResultFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memResultDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memResultTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memResultWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
    object memResultSTART_TIME: TTimeField
      FieldName = 'START_TIME'
    end
    object memResultSTART_DATE: TIntegerField
      FieldName = 'START_DATE'
    end
    object memResultWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object memResultWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 127
    end
    object memResultEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object memResultEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object memResultBLANK_TIME: TSmallintField
      FieldName = 'BLANK_TIME'
    end
    object memResultDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object memResultFOR_EMP_NO: TWideStringField
      FieldName = 'FOR_EMP_NO'
      Size = 30
    end
    object memResultTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
  end
  object qryWeekTime: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'WORK_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'WEEK_DATE_NO'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'KEY_FIELD=NOTREQUIRED')
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRawData
    SQL.Strings = (
      '/*SELECT'
      '     shift_no'
      '     ,start_time'
      '     ,end_time'
      '     ,end_date'
      '     ,wht_no'
      '     ,wht_name'
      'FROM HR_LICHCHUAN_LV (:EMPLOYEE_NO,:WORK_DATE,:WEEK_DATE_NO)'
      'order by START_TIME'
      '*/'
      'SELECT'
      '     shift_no'
      '     ,start_time'
      '     ,start_date'
      '     ,end_time'
      '     ,end_date'
      '     ,wht_no'
      '     ,wht_name'
      '     ,For_emp_no'
      '     ,note'
      'FROM HR_LICHCHUAN_LV_2 (:EMPLOYEE_NO,:WORK_DATE,:WEEK_DATE_NO)'
      'where shift_no <> '#39'L_NGOAI'#39
      'order by start_date, START_TIME')
    FieldOptions = []
    Left = 112
    Top = 224
    object qryWeekTimeSHIFT_NO: TWideStringField
      FieldName = 'SHIFT_NO'
      Required = True
      Size = 30
    end
    object qryWeekTimeSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qryWeekTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
      Required = True
    end
    object qryWeekTimeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryWeekTimeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryWeekTimeEND_DATE: TIntegerField
      FieldName = 'END_DATE'
      Required = True
    end
    object qryWeekTimeFOR_EMP_NO: TWideStringField
      FieldName = 'FOR_EMP_NO'
      Size = 30
    end
    object qryWeekTimeNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 150
    end
    object qryWeekTimeSTART_DATE: TIntegerField
      FieldName = 'START_DATE'
    end
  end
  object dsWeekTime: TDataSource
    DataSet = qryWeekTime
    Left = 112
    Top = 256
  end
  object qrySaveData: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
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
        Name = 'WORK_DATE'
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
        Name = 'BLANK_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dept_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'title_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FOR_EMP_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'INSERT INTO HR_WORKING_TIME(EMPLOYEE_NO,START_TIME,START_DATE,WO' +
        'RK_DATE,END_TIME,END_DATE,WHT_NO,BLANK_TIME,dept_no,title_no,FOR' +
        '_EMP_NO)'
      
        'VALUES (:EMPLOYEE_NO,:START_TIME,:START_DATE,:WORK_DATE,:END_TIM' +
        'E,:END_DATE,:WHT_NO,:BLANK_TIME, :dept_no,:title_no,:FOR_EMP_NO)')
    FieldOptions = []
    Left = 312
    Top = 304
  end
  object qryDeleteData: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'employee_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AT_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'start_time'
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
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'delete from hr_working_time where'
      'hr_working_time.employee_no=:employee_no and'
      'HR_WORKING_TIME.WORK_DATE=:AT_DATE'
      'and HR_WORKING_TIME.start_time = :start_time'
      'and HR_WORKING_TIME.dept_no = :DEPT_NO '
      'and HR_WORKING_TIME.title_no = :TITLE_NO '
      '/*and'
      '('
      ' HR_WORKING_TIME.blank_time is null or'
      ' HR_WORKING_TIME.blank_time <> 1'
      ') '
      '*/')
    FieldOptions = []
    Left = 264
    Top = 304
  end
  object qryBlankWeekTime: TIBOQuery
    Params = <>
    ColumnAttributes.Strings = (
      'KEY_FIELD=NOTREQUIRED')
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRawData
    SQL.Strings = (
      'SELECT distinct'
      '      hr_week_time_template.calendar_no shift_no'
      '     ,hr_week_time_template.start_time'
      '     ,hr_week_time_template.end_time'
      '     ,hr_week_time_template.week_end_date end_date'
      '     ,hr_work_hour_type.wht_no'
      '     ,hr_work_hour_type.wht_name'
      'from hr_week_time_template'
      'left join hr_work_hour_type'
      
        '    on hr_work_hour_type.wht_no = hr_week_time_template.work_hou' +
        'r_type'
      'where hr_week_time_template.calendar_no = '#39'L_NGOAI'#39
      '     '
      'order by START_TIME'
      ''
      '')
    FieldOptions = []
    Left = 144
    Top = 224
    object qryBlankWeekTimeSHIFT_NO: TWideStringField
      FieldName = 'SHIFT_NO'
      Size = 30
    end
    object qryBlankWeekTimeSTART_TIME: TTimeField
      FieldName = 'START_TIME'
    end
    object qryBlankWeekTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryBlankWeekTimeEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qryBlankWeekTimeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object qryBlankWeekTimeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
  end
  object dsBlankWeekTime: TDataSource
    DataSet = qryBlankWeekTime
    Left = 144
    Top = 256
  end
  object qryBlankData: TIBOQuery
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
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRawData
    SQL.Strings = (
      'SELECT'
      '     hr_worktime_blank_data.employee_no'
      
        '     , hr_worktime_blank_data.employee_no||'#39'-'#39'||hr_get_emp_dept.' +
        'full_name full_name'
      '     , hr_get_emp_dept.dept_name'
      '     , hr_get_emp_dept.dept_no'
      '     , hr_get_emp_dept.title_name'
      '     , hr_get_emp_dept.title_no'
      '     , hr_worktime_blank_data.work_date'
      '     , hr_worktime_blank_data.start_time'
      '     , hr_worktime_blank_data.end_time'
      ''
      'FROM hr_get_emp_dept(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      
        'join hr_worktime_blank_data(:USER_NAME,:DEPT_NO,:VIEW_ALL,:FROM_' +
        'DATE,:TO_DATE) on'
      
        '   hr_worktime_blank_data.EMPLOYEE_NO=hr_get_emp_dept.employee_n' +
        'o and'
      '   (IS_DISMISSED=0 or'
      '    ((hr_get_emp_dept.dismiss_date>=:FROM_DATE) and'
      '      (IS_DISMISSED= 1))) and'
      '   hr_get_emp_dept.is_main_position=1'
      ''
      'where '
      
        '  hr_worktime_blank_data.WORK_DATE between :FROM_DATE and :TO_DA' +
        'TE'
      
        'order by  hr_worktime_blank_data.employee_no,WORK_DATE,START_TIM' +
        'E')
    FieldOptions = []
    Left = 248
    Top = 224
    object qryBlankDataEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryBlankDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 159
    end
    object qryBlankDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryBlankDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryBlankDataWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
    object qryBlankDataSTART_TIME: TTimeField
      FieldName = 'START_TIME'
    end
    object qryBlankDataEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryBlankDataTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryBlankDataDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
  end
  object qryLateData: TIBOQuery
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
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRawData
    SQL.Strings = (
      'SELECT'
      '     hr_worktime_blank_data_2.employee_no'
      
        '     , hr_worktime_blank_data_2.employee_no||'#39'-'#39'||hr_get_emp_dep' +
        't.full_name full_name'
      '     , hr_get_emp_dept.dept_name'
      '     , hr_get_emp_dept.dept_no'
      '     , hr_get_emp_dept.title_name'
      '     , hr_get_emp_dept.title_no'
      '     , hr_worktime_blank_data_2.work_date'
      '     , hr_worktime_blank_data_2.start_time'
      '     , hr_worktime_blank_data_2.end_time'
      ''
      'FROM hr_get_emp_dept(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      
        'join hr_worktime_blank_data_2(:USER_NAME,:DEPT_NO,:VIEW_ALL,:FRO' +
        'M_DATE,:TO_DATE,0) on'
      
        '   hr_worktime_blank_data_2.EMPLOYEE_NO=hr_get_emp_dept.employee' +
        '_no and'
      '   (IS_DISMISSED=0 or'
      '    ((hr_get_emp_dept.dismiss_date>=:FROM_DATE) and'
      '      (IS_DISMISSED= 1))) and'
      '   hr_get_emp_dept.is_main_position=1'
      ''
      'where '
      
        '  hr_worktime_blank_data_2.WORK_DATE between :FROM_DATE and :TO_' +
        'DATE'
      
        'order by  hr_worktime_blank_data_2.employee_no,WORK_DATE,START_T' +
        'IME'
      '')
    FieldOptions = []
    Left = 280
    Top = 224
    object qryLateDataEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryLateDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 159
    end
    object qryLateDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryLateDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryLateDataWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
    object qryLateDataSTART_TIME: TTimeField
      FieldName = 'START_TIME'
    end
    object qryLateDataEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryLateDataTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryLateDataDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
  end
  object qryLateWeekTime: TIBOQuery
    Params = <>
    ColumnAttributes.Strings = (
      'KEY_FIELD=NOTREQUIRED')
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT distinct'
      '      hr_week_time_template.calendar_no shift_no'
      '     ,hr_week_time_template.start_time'
      '     ,hr_week_time_template.end_time'
      '     ,hr_week_time_template.week_end_date end_date'
      '     ,hr_work_hour_type.wht_no'
      '     ,hr_work_hour_type.wht_name'
      'from hr_week_time_template'
      'left join hr_work_hour_type'
      
        '    on hr_work_hour_type.wht_no = hr_week_time_template.work_hou' +
        'r_type'
      'where hr_week_time_template.calendar_no = '#39'L_TRE'#39
      'order by START_TIME'
      ''
      '')
    FieldOptions = []
    Left = 176
    Top = 224
    object qryLateWeekTimeSHIFT_NO: TWideStringField
      FieldName = 'SHIFT_NO'
      Required = True
      Size = 30
    end
    object qryLateWeekTimeSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qryLateWeekTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
      Required = True
    end
    object qryLateWeekTimeEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qryLateWeekTimeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object qryLateWeekTimeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
  end
  object dsLateWeekTime: TDataSource
    DataSet = qryLateWeekTime
    Left = 176
    Top = 256
  end
  object qrySoonData: TIBOQuery
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
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRawData
    SQL.Strings = (
      'SELECT'
      '     hr_worktime_blank_data_2.employee_no'
      
        '     , hr_worktime_blank_data_2.employee_no||'#39'-'#39'||hr_get_emp_dep' +
        't.full_name full_name'
      '     , hr_get_emp_dept.dept_name'
      '     , hr_get_emp_dept.dept_no'
      '     , hr_get_emp_dept.title_name'
      '     , hr_get_emp_dept.title_no'
      '     , hr_worktime_blank_data_2.work_date'
      '     , hr_worktime_blank_data_2.start_time'
      '     , hr_worktime_blank_data_2.end_time'
      ''
      'FROM hr_get_emp_dept(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      
        'join hr_worktime_blank_data_2(:USER_NAME,:DEPT_NO,:VIEW_ALL,:FRO' +
        'M_DATE,:TO_DATE,1) on'
      
        '   hr_worktime_blank_data_2.EMPLOYEE_NO=hr_get_emp_dept.employee' +
        '_no and'
      '   (IS_DISMISSED=0 or'
      '    ((hr_get_emp_dept.dismiss_date>=:FROM_DATE) and'
      '      (IS_DISMISSED= 1))) and'
      '   hr_get_emp_dept.is_main_position=1'
      ''
      'where '
      
        '  hr_worktime_blank_data_2.WORK_DATE between :FROM_DATE and :TO_' +
        'DATE'
      
        'order by  hr_worktime_blank_data_2.employee_no,WORK_DATE,START_T' +
        'IME')
    FieldOptions = []
    Left = 312
    Top = 224
    object qrySoonDataEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qrySoonDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 159
    end
    object qrySoonDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qrySoonDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qrySoonDataWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
    object qrySoonDataSTART_TIME: TTimeField
      FieldName = 'START_TIME'
    end
    object qrySoonDataEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qrySoonDataTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qrySoonDataDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
  end
  object qrySoonWeekTime: TIBOQuery
    Params = <>
    ColumnAttributes.Strings = (
      'KEY_FIELD=NOTREQUIRED')
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT distinct'
      '      hr_week_time_template.calendar_no shift_no'
      '     ,hr_week_time_template.start_time'
      '     ,hr_week_time_template.end_time'
      '     ,hr_week_time_template.week_end_date end_date'
      '     ,hr_work_hour_type.wht_no'
      '     ,hr_work_hour_type.wht_name'
      'from hr_week_time_template'
      'left join hr_work_hour_type'
      
        '    on hr_work_hour_type.wht_no = hr_week_time_template.work_hou' +
        'r_type'
      'where hr_week_time_template.calendar_no = '#39'L_SOM'#39
      'order by START_TIME'
      ''
      '')
    FieldOptions = []
    Left = 208
    Top = 224
    object qrySoonWeekTimeSHIFT_NO: TWideStringField
      FieldName = 'SHIFT_NO'
      Required = True
      Size = 30
    end
    object qrySoonWeekTimeSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qrySoonWeekTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
      Required = True
    end
    object qrySoonWeekTimeEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qrySoonWeekTimeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object qrySoonWeekTimeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
  end
  object dsSoonWeekTime: TDataSource
    DataSet = qrySoonWeekTime
    Left = 208
    Top = 256
  end
  object dsBlankData: TDataSource
    DataSet = qryBlankData
    Left = 248
    Top = 256
  end
  object dsLateData: TDataSource
    DataSet = qryLateData
    Left = 280
    Top = 256
  end
  object dsSoonData: TDataSource
    DataSet = qrySoonData
    Left = 312
    Top = 256
  end
end
