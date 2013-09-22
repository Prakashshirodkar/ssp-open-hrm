inherited frmToolForWorkTime: TfrmToolForWorkTime
  Left = 176
  Top = 127
  Width = 989
  Height = 586
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 195
    Top = 0
    Height = 533
  end
  inherited sbMain: TElStatusBar
    Top = 533
    Width = 981
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 195
    Height = 533
    Align = alLeft
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object tlOrgMap: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 235
      Height = 383
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
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object tlOrgMapDEPT_NAME: TdxDBTreeListColumn
        Caption = 'T'#234'n '#273#417'n v'#7883' - ph'#242'ng ban'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss - ph+API-ng ban'
      end
    end
    object chkViewAll: TdxCheckEdit
      Left = 170
      Top = 508
      Width = 23
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = chkViewAllChange
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Control = tlOrgMap
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'New Group'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'Xem nh'#226'n vi'#234'n c'#7845'p d'#432#7899'i'
          Control = chkViewAll
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutControl2: TdxLayoutControl [3]
    Left = 198
    Top = 0
    Width = 783
    Height = 533
    Align = alClient
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxInYear: TdxSpinEdit
      Left = 162
      Top = 29
      Width = 60
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = dxInMonthChange
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton1: TElPopupButton
      Left = 437
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
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acThangKetruoc
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 550
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
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acThangtiepTheo
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPanel1: TElPanel
      Left = 2
      Top = 118
      Width = 480
      Height = 371
      Align = alNone
      BevelOuter = bvNone
      TransparentXPThemes = False
      UseXPThemes = False
      Color = 15466238
      MouseCapture = False
      TabOrder = 16
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object Splitter2: TSplitter
        Left = 169
        Top = 0
        Height = 371
      end
      object gridDayList: TdxDBGrid
        Left = 0
        Top = 0
        Width = 169
        Height = 371
        Bands = <
          item
            Caption = 'Th'#225'ng '
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'WORK_DATE'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
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
        DataSource = dsDayList
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        OnChangeNode = gridDayListChangeNode
        object gridDayListWEEY_DAY_NAME: TdxDBGridColumn
          Alignment = taLeftJustify
          Caption = 'Th'#7913
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridDayListWEEY_DAY_NAMECustomDrawCell
          FieldName = 'WEEY_DAY_NAME'
          Caption_UTF7 = 'Th+Huk'
        end
        object gridDayListWORK_DATE: TdxDBGridDateColumn
          Alignment = taCenter
          Caption = 'Ng'#224'y'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridDayListWORK_DATECustomDrawCell
          FieldName = 'WORK_DATE'
          Caption_UTF7 = 'Ng+AOA-y'
        end
        object gridDayListWEEK_DAY: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WEEK_DAY'
        end
        object gridDayListIS_SELECTED: TdxDBGridCheckColumn
          Caption = 'V'
          HeaderAlignment = taCenter
          MinWidth = 20
          Visible = False
          Width = 25
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_SELECTED'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object Panel1: TPanel
        Left = 172
        Top = 0
        Width = 308
        Height = 371
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 0
          Top = 225
          Width = 308
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object gridEmpWorkDay: TdxDBGrid
          Left = 0
          Top = 0
          Width = 308
          Height = 225
          Bands = <
            item
              Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
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
          DataSource = dsEmpWorkDay
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          object gridEmpWorkDayEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridEmpWorkDayFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridEmpWorkDayTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c v'#7909
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 179
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c v+HuU'
          end
          object gridEmpWorkDayDEPT_NO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NO'
          end
          object gridEmpWorkDayTITLE_NO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NO'
          end
        end
        object pageControl: TElPageControl
          Left = 0
          Top = 228
          Width = 308
          Height = 143
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = True
          Images = ImageList1
          Multiline = False
          RaggedRight = False
          ScrollOpposite = False
          ShowBorder = False
          Style = etsAngledTabs
          TabIndex = 0
          TabPosition = etpRight
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
          Align = alClient
          ParentColor = False
          TabOrder = 1
          object tabData: TElTabSheet
            PageControl = pageControl
            ImageIndex = 0
            TabVisible = True
            Caption = 'D'#7919' li'#7879'u'
            object gridWorkTime: TdxDBGrid
              Left = 0
              Top = 0
              Width = 284
              Height = 143
              Bands = <
                item
                  Caption = 'D'#7919' li'#7879'u ch'#7845'm c'#244'ng gi'#7901' c'#7911'a nh'#226'n vi'#234'n'
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'START_TIME'
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
              DataSource = dsWorkTime
              Filter.Criteria = {00000000}
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              object gridWorkTimeSTART_TIME: TdxDBGridTimeColumn
                Caption = 'Gi'#7901' v'#224'o '
                HeaderAlignment = taCenter
                Width = 48
                BandIndex = 0
                RowIndex = 0
                FieldName = 'START_TIME'
                Caption_UTF7 = 'Gi+Ht0 v+AOA-o '
              end
              object gridWorkTimeEND_TIME: TdxDBGridTimeColumn
                Caption = 'gi'#7901' ra'
                HeaderAlignment = taCenter
                Width = 52
                BandIndex = 0
                RowIndex = 0
                FieldName = 'END_TIME'
                Caption_UTF7 = 'gi+Ht0 ra'
              end
              object gridWorkTimeWHT_NAME: TdxDBGridPopupColumn
                Caption = 'Lo'#7841'i gi'#7901' c'#244'ng '
                HeaderAlignment = taCenter
                Width = 98
                BandIndex = 0
                RowIndex = 0
                OnCustomDrawCell = gridWorkTimeWHT_NAMECustomDrawCell
                FieldName = 'WHT_NAME'
                OnCloseUp = gridWorkTimeWHT_NAMECloseUp
                OnInitPopup = gridWorkTimeWHT_NAMEInitPopup
                Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng '
              end
              object gridWorkTimeTOTAL_TIME: TdxDBGridCalcColumn
                Caption = 'T'#7893'ng gi'#7901
                HeaderAlignment = taCenter
                Width = 41
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TOTAL_TIME'
                Caption_UTF7 = 'T+HtU-ng gi+Ht0'
              end
              object gridWorkTimeEND_DATE: TdxDBGridImageColumn
                Alignment = taLeftJustify
                Caption = 'ng'#224'y ra'
                HeaderAlignment = taCenter
                MinWidth = 16
                Width = 117
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
                Caption_UTF7 = 'ng+AOA-y ra'
              end
              object gridWorkTimeWHT_COLOR: TdxDBGridColumn
                DisableCustomizing = True
                Visible = False
                Width = 49
                BandIndex = 0
                RowIndex = 0
                FieldName = 'WHT_COLOR'
              end
            end
          end
          object tabUtil: TElTabSheet
            PageControl = pageControl
            ImageIndex = 1
            TabVisible = True
            Caption = 'Ti'#7879'n '#237'ch'
            Visible = False
            object dxLayoutControl3: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 284
              Height = 143
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object dxSelectWHT: TdxPopupEdit
                Left = 122
                Top = 28
                Width = 176
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 0
                StyleController = dmMain.StyleController
                OnChange = dxSelectWHTChange
                OnCloseUp = dxSelectWHTCloseUp
                OnInitPopup = dxSelectWHTInitPopup
              end
              object ElPopupButton2: TElPopupButton
                Left = 298
                Top = 28
                Width = 74
                Height = 25
                Cursor = crDefault
                Hint = 'X'#243'a nhanh d'#7919' li'#7879'u ch'#7845'm c'#244'ng gi'#7901' theo lo'#7841'i gi'#7901' c'#244'ng '#273#432#7907'c ch'#7885'n'
                ImageIndex = 40
                UseImageList = True
                Images = dmMain.imgAction
                DrawDefaultFrame = False
                LinkColor = clBlue
                LinkStyle = [fsUnderline]
                NumGlyphs = 1
                UseXPThemes = True
                Caption = 'X'#243'a'
                TabOrder = 1
                Color = 15466238
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                Action = acMultiDelete
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object dxFromWHT: TdxPopupEdit
                Left = 122
                Top = 86
                Width = 176
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 2
                StyleController = dmMain.StyleController
                OnChange = dxFromWHTChange
                OnCloseUp = dxFromWHTCloseUp
                OnInitPopup = dxFromWHTInitPopup
              end
              object dxToWHT: TdxPopupEdit
                Left = 122
                Top = 111
                Width = 176
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 4
                StyleController = dmMain.StyleController
                OnChange = dxToWHTChange
                OnCloseUp = dxToWHTCloseUp
                OnInitPopup = dxToWHTInitPopup
              end
              object ElPopupButton5: TElPopupButton
                Left = 298
                Top = 86
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
                Caption = 'C'#7853'p nh'#7853't'
                TabOrder = 3
                Color = 15466238
                ParentColor = False
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object imgInOut: TdxImageEdit
                Left = 122
                Top = 167
                Width = 79
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 5
                StyleController = dmMain.StyleController
                DropDownRows = 16777223
                Descriptions.WideStrings = (
                  'Gi'#7901' v'#224'o'
                  'Gi'#7901' ra')
                ImageIndexes.WideStrings = (
                  '0'
                  '1')
                Values.WideStrings = (
                  'IN'
                  'OUT')
              end
              object tmInOut: TdxTimeEdit
                Left = 201
                Top = 167
                Width = 96
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 6
                Alignment = taCenter
                StyleController = dmMain.StyleController
                StoredValues = 5
              end
              object btnUpdateInOut: TElPopupButton
                Left = 297
                Top = 167
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
                Caption = 'C'#7853'p nh'#7853't'
                TabOrder = 7
                Color = 15466238
                ParentColor = False
                Action = acUpdateInOut
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object dxLayoutControl3Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl3Group1: TdxLayoutGroup
                  Caption = '* X'#243'a nhanh d'#7919' li'#7879'u ch'#7845'm c'#244'ng theo lo'#7841'i gi'#7901' c'#244'ng'
                  LayoutDirection = ldHorizontal
                  object dxLayoutControl3Item1: TdxLayoutItem
                    Caption = 'Ch'#7885'n lo'#7841'i gi'#7901' c'#244'ng'
                    CaptionOptions.AlignHorz = taCenter
                    Control = dxSelectWHT
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item2: TdxLayoutItem
                    Caption = 'ElPopupButton2'
                    ShowCaption = False
                    Control = ElPopupButton2
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl3Group2: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  Caption = '* Thay '#273#7893'i lo'#7841'i gi'#7901' ch'#7845'm c'#244'ng cho nhi'#7873'u nh'#226'n vi'#234'n'
                  object dxLayoutControl3Group4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl3Item3: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Lo'#7841'i gi'#7901' c'#244'ng c'#7847'n s'#7917'a'
                      Control = dxFromWHT
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl3Item5: TdxLayoutItem
                      Caption = 'ElPopupButton5'
                      ShowCaption = False
                      Control = ElPopupButton5
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl3Item4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Lo'#7841'i gi'#7901' c'#244'ng thay th'#7871
                    Control = dxToWHT
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl3Group3: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = '* C'#7853'p nh'#7853't gi'#7901' v'#224'o/ra c'#242'n thi'#7871'u'
                  LayoutDirection = ldHorizontal
                  object dxLayoutControl3Item6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Gi'#7901' v'#224'o/ra'
                    CaptionOptions.AlignHorz = taCenter
                    Control = imgInOut
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item7: TdxLayoutItem
                    CaptionOptions.AlignHorz = taCenter
                    Control = tmInOut
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl3Item8: TdxLayoutItem
                    CaptionOptions.AlignHorz = taCenter
                    ShowCaption = False
                    Control = btnUpdateInOut
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
      end
    end
    object ElPopupButton4: TElPopupButton
      Left = 462
      Top = 28
      Width = 88
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
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acLoadData
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    inline frameToolbar1: TframeToolbar
      Left = 2
      Top = 485
      Width = 792
      Height = 46
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 792
        inherited btnDelete: TElPopupButton
          Top = 10
        end
        inherited btnInsert: TElPopupButton
          Top = 10
        end
        inherited btnSave: TElPopupButton
          Top = 10
        end
        inherited btnCancel: TElPopupButton
          Top = 10
        end
        inherited btnClose: TElPopupButton
          Left = 709
          Top = 10
        end
        inherited btnHelp: TElPopupButton
          Left = 637
          Top = 10
        end
        inherited btnChoose: TElPopupButton
          Left = 707
          Top = 10
          Width = 2
        end
        inherited btnCopy: TElPopupButton
          Top = 10
        end
        inherited btnFirst: TElPopupButton
          Top = 10
        end
        inherited btnLast: TElPopupButton
          Top = 10
        end
        inherited btnPrevious: TElPopupButton
          Top = 10
        end
        inherited btnNext: TElPopupButton
          Top = 10
        end
        inherited btnDesign: TElPopupButton
          Left = 619
          Top = 10
          Width = 2
        end
        inherited btnPreview: TElPopupButton
          Left = 617
          Top = 10
          Width = 2
        end
        inherited btnPrint: TElPopupButton
          Left = 615
          Top = 10
          Width = 2
        end
        inherited btnInsertEx: TElPopupButton
          Top = 10
        end
        inherited btnSendMail: TElPopupButton
          Left = 590
          Top = 10
        end
        inherited btnGenerate: TElPopupButton
          Left = 630
          Top = 10
          Width = 2
        end
        inherited btnRelation: TElPopupButton
          Left = 628
          Top = 10
          Width = 2
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 626
          Top = 10
          Width = 2
        end
      end
    end
    object dxInMonth: TdxImageEdit
      Left = 60
      Top = 28
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxInMonthChange
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object dxToMonth: TdxImageEdit
      Left = 275
      Top = 29
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      OnChange = dxToMonthChange
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object dxToYear: TdxSpinEdit
      Left = 377
      Top = 29
      Width = 60
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = dxToMonthChange
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object chkExt: TdxCheckEdit
      Left = 746
      Top = 29
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnChange = chkExtChange
      NullStyle = nsUnchecked
    end
    object ElPopupButton6: TElPopupButton
      Left = 681
      Top = 86
      Width = 88
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
      Caption = 'Ch'#7885'n ng'#224'y'
      TabOrder = 15
      Color = 15466238
      ParentColor = False
      Action = acChon
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkSat: TdxCheckEdit
      Left = 434
      Top = 87
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 14
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
    end
    object chkFri: TdxCheckEdit
      Left = 369
      Top = 87
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 13
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
      State = cbsChecked
    end
    object chkThu: TdxCheckEdit
      Left = 305
      Top = 87
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 12
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
      State = cbsChecked
    end
    object chkWed: TdxCheckEdit
      Left = 238
      Top = 87
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 11
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
      State = cbsChecked
    end
    object chkTues: TdxCheckEdit
      Left = 180
      Top = 87
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 10
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
      State = cbsChecked
    end
    object chkSun: TdxCheckEdit
      Left = 60
      Top = 87
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
    end
    object chkMon: TdxCheckEdit
      Left = 121
      Top = 87
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 9
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
      State = cbsChecked
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl2Item2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl2Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n th'#7901'i gian'
        LayoutDirection = ldHorizontal
        UseIndent = False
        object dxLayoutControl2Item6: TdxLayoutItem
          Caption = 'Th'#225'ng'
          Control = dxInMonth
          ControlOptions.ShowBorder = False
        end
        object dxlcYear: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'n'#259'm'
          Control = dxInYear
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item9: TdxLayoutItem
          AutoAligns = []
          AlignVert = avCenter
          Caption = #272#7871'n th'#225'ng'
          Control = dxToMonth
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item10: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'n'#259'm'
          Control = dxToYear
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avCenter
          Caption = 'M'#7903' r'#7897'ng'
          LookAndFeel = dmMain.StyleWeb
          Visible = False
          Control = chkExt
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcgExt: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n m'#7903' r'#7897'ng'
        Visible = False
        LayoutDirection = ldHorizontal
        object dxLayoutControl2Item17: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Ch'#7911' nh'#7853't'
          Control = chkSun
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item18: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Th'#7913' hai'
          Control = chkMon
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item16: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Th'#7913' ba'
          Control = chkTues
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item15: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Th'#7913' t'#432
          Control = chkWed
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item14: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Th'#7913' n'#259'm'
          Control = chkThu
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item13: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Th'#7913' s'#225'u'
          Control = chkFri
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item12: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Th'#7913' b'#7843'y'
          Control = chkSat
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton6'
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl2Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPanel1'
        ShowCaption = False
        Control = ElPanel1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
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
        Caption = 'C'#244'ng c'#7909' ch'#7845'm c'#244'ng nhanh - Ch'#7845'm c'#244'ng gi'#7901
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object memDayList: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterScroll = memDayListAfterScroll
    Left = 239
    Top = 143
    object memDayListWEEK_DAY: TIntegerField
      FieldName = 'WEEK_DAY'
      ReadOnly = True
    end
    object memDayListWEEY_DAY_NAME: TWideStringField
      FieldName = 'WEEY_DAY_NAME'
      ReadOnly = True
      Size = 30
    end
    object memDayListWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      ReadOnly = True
    end
    object memDayListIS_SELECTED: TBooleanField
      FieldName = 'IS_SELECTED'
    end
  end
  object dsDayList: TDataSource
    DataSet = memDayList
    Left = 239
    Top = 175
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 463
    Top = 199
    object acThangKetruoc: TAction
      Caption = 'acThangKetruoc'
      ImageIndex = 0
      OnExecute = acThangKetruocExecute
    end
    object acThangtiepTheo: TAction
      Caption = 'acThangtiepTheo'
      ImageIndex = 3
      OnExecute = acThangtiepTheoExecute
    end
    object acTaoDSNgay: TAction
      Caption = 'acTaoDSNgay'
      OnExecute = acTaoDSNgayExecute
    end
    object acXemdulieu: TAction
      Caption = 'acXemdulieu'
      OnExecute = acXemdulieuExecute
    end
    object acLoadData: TAction
      Caption = 'acLoadData'
      ImageIndex = 10
      OnExecute = acLoadDataExecute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      DataSource = dsEmpWorkDay
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 44
      DataSource = dsEmpWorkDay
    end
    object acMultiDelete: TAction
      Category = 'Dataset'
      Caption = 'acMultiDelete'
      ImageIndex = 40
      OnExecute = acMultiDeleteExecute
    end
    object acChon: TAction
      Caption = 'acChon'
      ImageIndex = 44
      OnExecute = acChonExecute
    end
    object acBochon: TAction
      Caption = 'acBochon'
      ImageIndex = 45
    end
    object acUpdateInOut: TAction
      Caption = 'acUpdateInOut'
      ImageIndex = 9
      OnExecute = acUpdateInOutExecute
      OnUpdate = acUpdateInOutUpdate
    end
    object acMultiPost: TAction
      Category = 'Dataset'
      Caption = 'acMultiPost'
      ImageIndex = 9
      OnExecute = acMultiPostExecute
    end
  end
  object qryEmpWorkDay: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
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
        Name = 'VIEW_ALL'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryEmpWorkDayBeforeOpen
    BeforeRefresh = qryEmpWorkDayBeforeRefresh
    DataSource = dsOrgMap
    SQL.Strings = (
      'SELECT'
      '    hr_ds_phongban_nhanvien_1.employee_no,'
      '    hr_ds_phongban_nhanvien_1.item_name FULL_NAME,'
      '    hr_ds_phongban_nhanvien_1.title_name,'
      '    hr_ds_phongban_nhanvien_1.dept_no,'
      '    hr_ds_phongban_nhanvien_1.title_no'
      
        'FROM hr_ds_phongban_nhanvien_1(:USER_NAME,:FROM_DATE,:TO_DATE,:D' +
        'EPT_NO,:VIEW_ALL)'
      'where hr_ds_phongban_nhanvien_1.phan_loai='#39'Employee'#39)
    FieldOptions = []
    Left = 304
    Top = 144
    object qryEmpWorkDayEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryEmpWorkDayFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryEmpWorkDayTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpWorkDayDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryEmpWorkDayTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
  end
  object dsEmpWorkDay: TDataSource
    DataSet = qryEmpWorkDay
    Left = 304
    Top = 176
  end
  object qryWorkTime: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'TITLE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'WORK_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORKING_TIME'
      'WHERE'
      '   WT_ID = :OLD_WT_ID')
    EditSQL.Strings = (
      'UPDATE HR_WORKING_TIME SET'
      '   WT_ID = :WT_ID, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO,'
      '   WORK_DATE = :WORK_DATE,'
      '   START_TIME = :START_TIME,'
      '   END_TIME = :END_TIME,'
      '   WHT_NO = :WHT_NO,'
      '   END_DATE = :END_DATE,'
      '   TOTAL_TIME = :TOTAL_TIME,'
      '   DEPT_NO = :DEPT_NO,'
      '   TITLE_NO = :TITLE_NO'
      'WHERE'
      '   WT_ID = :OLD_WT_ID')
    GeneratorLinks.Strings = (
      'WT_ID=gen_hr_working_time_id')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORKING_TIME('
      '   WT_ID, /*PK*/'
      '   EMPLOYEE_NO,'
      '   WORK_DATE,'
      '   START_TIME,'
      '   END_TIME,'
      '   WHT_NO,'
      '   END_DATE,'
      '   TOTAL_TIME,'
      '   DEPT_NO,'
      '   TITLE_NO)'
      'VALUES ('
      '   :WT_ID,'
      '   :EMPLOYEE_NO,'
      '   :WORK_DATE,'
      '   :START_TIME,'
      '   :END_TIME,'
      '   :WHT_NO,'
      '   :END_DATE,'
      '   :TOTAL_TIME,'
      '   :DEPT_NO,'
      '   :TITLE_NO)')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryWorkTimeBeforeDelete
    BeforePost = qryWorkTimeBeforePost
    OnNewRecord = qryWorkTimeNewRecord
    DataSource = dsEmpWorkDay
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , WORK_DATE'
      '     , START_TIME'
      '     , END_TIME'
      '     , HR_WORKING_TIME.WHT_NO'
      '     , WHT_NAME'
      '     , END_DATE'
      '     , TOTAL_TIME'
      '     , WHT_COLOR'
      '     , DEPT_NO'
      '     , TITLE_NO'
      '     , WT_ID'
      'FROM HR_WORKING_TIME'
      'LEFT JOIN HR_WORK_HOUR_TYPE'
      '  on HR_WORKING_TIME.WHT_NO=HR_WORK_HOUR_TYPE.WHT_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and'
      '      DEPT_NO=:DEPT_NO and'
      '      TITLE_NO=:TITLE_NO and'
      '     WORK_DATE=:WORK_DATE')
    FieldOptions = []
    Left = 456
    Top = 400
    object qryWorkTimeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryWorkTimeWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryWorkTimeSTART_TIME: TTimeField
      FieldName = 'START_TIME'
    end
    object qryWorkTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryWorkTimeWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object qryWorkTimeWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryWorkTimeEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qryWorkTimeTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
    object qryWorkTimeWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
    object qryWorkTimeDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryWorkTimeTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
    object qryWorkTimeWT_ID: TIntegerField
      FieldName = 'WT_ID'
      Required = True
    end
  end
  object dsWorkTime: TDataSource
    DataSet = qryWorkTime
    Left = 456
    Top = 456
  end
  object ImageList1: TImageList
    Left = 96
    Top = 160
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
      0000EFEFEFFFC0C0C0FF969B98FF769085FF7F948BFFA8A8A8FFD7D7D7FFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCFFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCCCCCCFFC5C5C5FFB5B5B5FFCDCDCDFFCECE
      CEFFD0D0D0FF0000000000000000000000000000000000000000C6C6C6FF767E
      7AFF06C76FFF00D87AFF00E184FF00E488FF00E387FF00DB7EFF00D274FF2C8E
      5FFFA6A6A6FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDEDFFDDDDDDFFDCDCDCFFDEDE
      DEFFDEDEDEFFDDDDDDFFDEDEDEFFE9E9E9FFD1D1D1FFC6C6C6FFD4D4D4FFEBEB
      EBFFEDEDEDFF00000000000000000000000000000000CDCDCDFF27955CFF00C3
      64FF63E3A7FFB0F3CFFFB9F3D1FFC8F5DCFFBEF4D5FFACF2CAFFA3F2CCFF1CCE
      79FF00BD5DFFA3A8A5FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFD3D3D3FFCACACAFFF0F0
      F0FFF0F0F0FFE2E2E2FFEEEEEEFFC2C4C2FF5BC875FFBABBBAFFFCFCFCFFD4D4
      D4FFEEEEEEFF000000000000000000000000EBEBEBFF268E53FF13C267FF3EE3
      84FF53E48AFF7BEAA5FF9EEFBEFFB6F2CFFFA9F0C6FF88EBAFFF5BD989FF35DC
      75FF4AE599FF00B14FFFC0C1C0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4FFD6D6D6FFCDCDCDFFF4F4
      F4FFF4F4F4FFE3E3E3FFBEC3BEFF25C955FF27DD6AFF6CE89DFFB1B9B3FFC2C2
      C2FFCFCFCFFF000000000000000000000000B0B3B1FF06B657FF2DD86FFF16DC
      65FF44E280FF69E799FF85EBACFF93EDB6FF8CECB1FF7AE9A4FFCCF7DCFF28DF
      70FF00D858FF12D96EFF05A243FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FFCECECEFFC6C6C6FFE8E8
      E8FFE6E6E6FFA3B1ACFF0CB132FF00C138FF00CE44FF0FD755FF13D757FF9CAB
      A1FFE6E6E6FF0000000000000000000000001E9548FF00C849FF00D150FFFBFD
      FCFF8EDAA8FF52D07FFF63E595FF6FE89DFF6AE799FF82E4A6FF5CE690FF0FDC
      62FF00D454FF00CA4AFF00C058FFDADADAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFDCDCDCFFD3D3D3FFFAFA
      FAFFB9CFB9FF009514FF32B74DFF50CB6FFF2EC65AFF50D678FF4CD575FF14C2
      45FFC5DBCAFF00000000000000000000000000AB42FF00C241FF00CB4BFF00D4
      54FF26DF72FFA1F1C0FFFFFFFFFF4ADB80FF42E27FFF84ECABFF67E89AFF00D7
      57FF00CF4EFF00C645FF00BC3BFF95AA9BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFDFDFDFFFD6D6D6FFFEFE
      FEFFF2F5F2FF65B86BFF78C883FF71C983FFEDEDEDFF70CE88FF78D58EFF78D2
      8CFF46BC5DFF9DAA9EFF000000000000000000B135FF00BD3BFF00C544FF0ECF
      55FF29D96AFF39DF77FFF9FCFAFFFFFFFFFFFFFFFFFFFFFFFFFF53E187FF1DD4
      60FF00C848FF00C03FFF00B735FF83A28AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFDEDEDEFF95CB99FFEFEFEFFFE2E2E2FFEFEFEFFF77BC83FF9ED8
      A7FF9ED6A5FF6EBB73FF889A88FF0000000001AC2BFF3FC45FFF49CD6DFF49D2
      72FF49D676FF49DA79FF91EAAFFFFFFFFFFFF9FCFAFF49DB7AFF49D877FF49D4
      74FF49CE6FFF49C869FF1FB844FF86A28CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEFEFEFFFE3E3E3FFEFEFEFFFEFEFEFFFE3E3E3FFEFEFEFFFD6D6D6FF83B2
      86FFC6E3C7FFC6E2C6FF9ECE9EFF7B977BFF009E20FF57C56DFF57CA73FF57CF
      77FF57D37AFF57D67DFF57D87FFFFDFEFDFFFFFFFFFF67CC83FF57D47BFF57D1
      78FF57CD74FF57C770FF53C067FF5C785DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEDDCFFFEFDFD0FFF1E1D2FFF2E3
      D4FFF3E4D5FFF4E5D6FFF4E5D6FFF3E5D5FFF3E3D4FFF1E2D3FFF0E0D1FFEEDD
      CFFFAABA8BFFE8F3E8FF88C288FFFCFCFCFF6A8E62FF65C575FF65C978FF65CD
      7CFF65D07FFF65D382FF81D396FF9FD9ADFFFFFFFFFFF2FBF5FFE8F6EBFF65CE
      7DFF65CB7AFF65C776FF1DAB35FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B96717FFCE8739FFE1A45AFFEFB5
      67FFFCCA81FFFFD797FFFFCD80FFFAC16DFFEDAC56FFE3A964FFCF8A3EFFBE71
      27FFA84F01FFD3D9D3FF0000000000000000B86717FF0CA022FF73C87FFF73CC
      82FF73CE85FF73D087FF92DBA2FFFFFFFFFFFFFFFFFFBFEAC8FF73CF86FF73CD
      83FF73C980FF6DC478FF749F76FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6884FFFEDD5BDFFF2DFC9FFF6E3
      CCFFF8E3C8FFF9DEB8FFF5C98EFFF0C489FFE9BA80FFEACAA5FFE1BB94FFD4A6
      7BFFA95206FF00000000000000000000000000000000E0C9B3FF1EA52FFF80CB
      8AFF80CE8BFF80CF8CFF80D08DFF82D190FFE8F4EAFFDCF0DFFF80CE8CFF80CC
      8AFF78C681FF349139FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C28651FFCC945FFFD5A06AFFDDAB
      74FFE3B27AFFE5B77EFFE5B67EFFE2B27AFFDCAB74FFD5A06AFFCB935EFFC287
      52FFC0834DFF0000000000000000000000000000000000000000D49F6AFF1785
      14FF6CC175FF8CCE94FF8CCF95FF8CD095FFFFFFFFFFEBF6ECFF8CCE93FF2DA8
      39FF75662FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFF83A783FF229728FF0C9215FF0A8F13FF47944AFFC6CEC6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFF00F00000000
      0007C00700000000000780010000000000070001000000000007000000000000
      0007000000000000000700000000000000030000000000000001000000000000
      0000000000000000000000000000000000030001000000000007800300000000
      0007C00700000000FFFFF01F0000000000000000000000000000000000000000
      000000000000}
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 412
    Top = 236
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object qryOrgMap: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'tu_ngay'
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
      '    '
      'select hr_mask_dept_list.dept_no,'
      '        hr_mask_dept_list.dept_name,'
      '        hr_mask_dept_list.p_dept_no'
      '    from hr_mask_dept_list(:user_name, null, null)'
      '    where (hr_mask_dept_list.ended_date is null'
      '    or hr_mask_dept_list.ended_date >= :tu_ngay )'
      '    and hr_mask_dept_list.founded_date <= :den_ngay'
      '    order by hr_mask_dept_list.display_index')
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
    Left = 24
    Top = 88
  end
  object qryUpdateWorkTime: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 272
    Top = 254
  end
end
