inherited frmReportCaptionDefine: TfrmReportCaptionDefine
  Left = 206
  Top = 109
  Width = 926
  Height = 618
  Font.Charset = ANSI_CHARSET
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 565
    Width = 918
  end
  object dxReportTree: TdxDBTreeList [1]
    Left = 0
    Top = 0
    Width = 273
    Height = 565
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'REPORTID'
    ParentField = 'PREPORTID'
    Align = alLeft
    DragMode = dmAutomatic
    TabOrder = 1
    OnEnter = dxReportTreeEnter
    DataSource = frmReportsMain.dsReportTree
    Images = frmReportsMain.ImageList1
    LookAndFeel = lfFlat
    OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
    TreeLineColor = clGrayText
    OnGetImageIndex = dxReportTreeGetImageIndex
    OnGetSelectedIndex = dxReportTreeGetSelectedIndex
    object dxReportTreeREPORT_NAME: TdxDBTreeListColumn
      Caption = 'Danh m'#7909'c b'#225'o c'#225'o - th'#7889'ng k'#234
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 160
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REPORT_NAME'
      Caption_UTF7 = 'Danh m+HuU-c b+AOE-o c+AOE-o - th+HtE-ng k+AOo'
    end
    object dxReportTreeDISPLAY_INDEX: TdxDBTreeListSpinColumn
      Alignment = taCenter
      Caption = 'STT'
      HeaderAlignment = taCenter
      Sorted = csUp
      Width = 30
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DISPLAY_INDEX'
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 273
    Top = 0
    Width = 8
    Height = 565
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = dxReportTree
    ControlBottomRight = mainPanel
    AutoHide = False
    ShowSnapButton = True
    Align = alLeft
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object mainPanel: TPanel [3]
    Left = 281
    Top = 0
    Width = 637
    Height = 565
    Align = alClient
    TabOrder = 3
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 635
      Height = 563
      Align = alClient
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dmMain.StyleWeb
      object dxDBEdit1: TdxDBEdit
        Left = 101
        Top = 28
        Width = 65
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        OnEnter = dxReportTreeEnter
        Alignment = taLeftJustify
        DataField = 'REPORTID'
        DataSource = frmReportsMain.dsReportTree
        ReadOnly = False
        StyleController = dmMain.StyleController
        StoredValues = 65
      end
      object dxDBEdit2: TdxDBEdit
        Left = 212
        Top = 28
        Width = 65
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 3
        OnEnter = dxReportTreeEnter
        Alignment = taLeftJustify
        DataField = 'PREPORTID'
        DataSource = frmReportsMain.dsReportTree
        ReadOnly = False
        StyleController = dmMain.StyleController
        StoredValues = 65
      end
      object dxDBEdit3: TdxDBEdit
        Left = 101
        Top = 97
        Width = 180
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 6
        OnEnter = dxReportTreeEnter
        DataField = 'REPORT_NAME'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
      end
      object dxDBEdit4: TdxDBEdit
        Left = 212
        Top = 51
        Width = 65
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 4
        OnEnter = dxReportTreeEnter
        Alignment = taLeftJustify
        DataField = 'KEYFIELD'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
        StoredValues = 1
      end
      object dxDBEdit5: TdxDBEdit
        Left = 101
        Top = 51
        Width = 65
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        OnEnter = dxReportTreeEnter
        Alignment = taLeftJustify
        DataField = 'COLUMNCOUNT'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
        StoredValues = 1
      end
      object pageSQL: TElPageControl
        Left = 305
        Top = 28
        Width = 459
        Height = 140
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
        TabBkColor = clCream
        ActivePage = tabSQLMain
        FlatTabBorderColor = clBtnShadow
        DraggablePages = False
        ActiveTabFont.Charset = DEFAULT_CHARSET
        ActiveTabFont.Color = clWindowText
        ActiveTabFont.Height = -11
        ActiveTabFont.Name = 'MS Sans Serif'
        ActiveTabFont.Style = []
        TabCursor = crDefault
        ParentColor = False
        TabOrder = 13
        object tabSQLMain: TElTabSheet
          PageControl = pageSQL
          ImageIndex = -1
          TabVisible = True
          Caption = 'C'#226'u SQL ch'#237'nh'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 459
            Height = 119
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object dxDBMemo1: TdxDBMemo
              Left = 2
              Top = 2
              Width = 156
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              OnEnter = dxReportTreeEnter
              DataField = 'SQLSELECT'
              DataSource = frmReportsMain.dsReportTree
              StyleController = dmMain.StyleController
              ScrollBars = ssVertical
              Height = 124
            end
            object dxLayoutControl2Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'dxDBMemo1'
                ShowCaption = False
                Control = dxDBMemo1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object tabSQL1: TElTabSheet
          PageControl = pageSQL
          ImageIndex = -1
          TabVisible = True
          Caption = 'C'#226'u SQL ph'#7909' 1'
          Visible = False
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 459
            Height = 119
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object dxDBMemo2: TdxDBMemo
              Left = 3
              Top = 3
              Width = 400
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              OnEnter = dxReportTreeEnter
              DataField = 'SQL_SUB1'
              DataSource = frmReportsMain.dsReportTree
              StyleController = dmMain.StyleController
              ScrollBars = ssBoth
              Height = 113
            end
            object dxLayoutGroup1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutItem1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'dxDBMemo1'
                ShowCaption = False
                Control = dxDBMemo2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object tabSQL2: TElTabSheet
          PageControl = pageSQL
          ImageIndex = -1
          TabVisible = True
          Caption = 'C'#226'u SQL ph'#7909' 2'
          Visible = False
          object dxLayoutControl4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 459
            Height = 119
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            object dxDBMemo3: TdxDBMemo
              Left = 10
              Top = 10
              Width = 400
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbs3D
              Style.ButtonStyle = bts3D
              TabOrder = 0
              OnEnter = dxReportTreeEnter
              DataField = 'SQL_SUB2'
              DataSource = frmReportsMain.dsReportTree
              StyleController = dmMain.StyleController
              ScrollBars = ssBoth
              Height = 113
            end
            object dxLayoutGroup2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutItem2: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'dxDBMemo1'
                ShowCaption = False
                Control = dxDBMemo3
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object tabSQL3: TElTabSheet
          PageControl = pageSQL
          ImageIndex = -1
          TabVisible = True
          Caption = 'C'#226'u SQL ph'#7909' 3'
          Visible = False
          object dxLayoutControl5: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 459
            Height = 119
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            object dxDBMemo4: TdxDBMemo
              Left = 10
              Top = 10
              Width = 400
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbs3D
              Style.ButtonStyle = bts3D
              TabOrder = 0
              OnEnter = dxReportTreeEnter
              DataField = 'SQL_SUB3'
              DataSource = frmReportsMain.dsReportTree
              StyleController = dmMain.StyleController
              ScrollBars = ssBoth
              Height = 113
            end
            object dxLayoutGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutItem3: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'dxDBMemo1'
                ShowCaption = False
                Control = dxDBMemo4
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object dxDBButtonEdit1: TdxDBButtonEdit
        Left = 101
        Top = 143
        Width = 180
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsHotFlat
        TabOrder = 8
        OnEnter = dxReportTreeEnter
        DataField = 'TEMPLATE_NAME'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit1ButtonClick
        ExistButtons = True
      end
      object pageReportData: TElPageControl
        Left = 2
        Top = 196
        Width = 648
        Height = 131
        BorderWidth = 0
        DrawFocus = False
        Flat = True
        HotTrack = True
        Multiline = False
        OnChanging = pageReportDataChanging
        OnChange = pageReportDataChange
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
        ActivePage = tabCaptionData
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
        OnEnter = pageReportDataEnter
        object tabCaptionData: TElTabSheet
          PageControl = pageReportData
          ImageIndex = -1
          TabVisible = True
          Caption = 'Hi'#7875'n th'#7883' d'#7919' li'#7879'u'
          object dxlcCaptionData: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 648
            Height = 110
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object dxDBGrid1: TdxDBGrid
              Left = 2
              Top = 2
              Width = 648
              Height = 45
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'COLUMN_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              TabOrder = 0
              OnEnter = dxDBGrid1Enter
              DataSource = dsReportCaptionDefine
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
              object dxDBGrid1COLUMN_INDEX: TdxDBGridColumn
                Alignment = taCenter
                Caption = 'STT'
                HeaderAlignment = taCenter
                Width = 31
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COLUMN_INDEX'
              end
              object dxDBGrid1COLUMN_ID: TdxDBGridColumn
                Caption = 'T'#234'n d'#7919' li'#7879'u'
                HeaderAlignment = taCenter
                Width = 115
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COLUMN_ID'
                Caption_UTF7 = 'T+AOo-n d+Hu8 li+Hsc-u'
              end
              object dxDBGrid1COLUMN_CAPTION: TdxDBGridColumn
                Caption = 'T'#234'n hi'#7875'n th'#7883
                HeaderAlignment = taCenter
                Width = 146
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COLUMN_CAPTION'
                Caption_UTF7 = 'T+AOo-n hi+HsM-n th+Hss'
              end
              object dxDBGrid1COLUMN_CAPTION_ENG: TdxDBGridColumn
                Caption = 'T'#234'n hi'#7875'n th'#7883' ti'#7871'ng Anh'
                HeaderAlignment = taCenter
                Width = 162
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COLUMN_CAPTION_ENG'
                Caption_UTF7 = 'T+AOo-n hi+HsM-n th+Hss ti+Hr8-ng Anh'
              end
              object dxDBGrid1COLUMN_WIDTH: TdxDBGridColumn
                Caption = #272#7897' r'#7897'ng c'#7897't'
                HeaderAlignment = taCenter
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COLUMN_WIDTH'
                Caption_UTF7 = '+ARAe2Q r+Htk-ng c+Htk-t'
              end
              object dxDBGrid1COLUMN_FORMAT: TdxDBGridColumn
                Caption = #272#7883'nh d'#7841'ng'
                HeaderAlignment = taCenter
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COLUMN_FORMAT'
                Caption_UTF7 = '+ARAeyw-nh d+HqE-ng'
              end
              object dxDBGrid1COLUMN_GROUP: TdxDBGridCheckColumn
                Caption = 'Gom nh'#243'm '
                HeaderAlignment = taCenter
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COLUMN_GROUP'
                ValueChecked = '1'
                ValueUnchecked = '0'
                Caption_UTF7 = 'Gom nh+APM-m '
              end
              object dxDBGrid1INVISIBLE: TdxDBGridCheckColumn
                Caption = #7848'n/Hi'#7879'n'
                HeaderAlignment = taCenter
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'INVISIBLE'
                ValueChecked = '1'
                ValueUnchecked = '0'
                Caption_UTF7 = '+Hqg-n/Hi+Hsc-n'
              end
            end
            object dxlcCaptionDataGroup_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxlcCaptionDataItem1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'dxDBGrid1'
                ShowCaption = False
                Control = dxDBGrid1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object tabParamData: TElTabSheet
          PageControl = pageReportData
          ImageIndex = -1
          TabVisible = True
          Caption = 'Tham s'#7889' b'#225'o c'#225'o'
          Visible = False
          object dxLayoutControl6: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 648
            Height = 110
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object dxDBGrid2: TdxDBGrid
              Left = 2
              Top = 2
              Width = 250
              Height = 130
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'PARAM_INDEX'
              SummaryGroups = <>
              SummarySeparator = ', '
              TabOrder = 0
              OnEnter = dxDBGrid2Enter
              DataSource = dsReportParam
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              object dxDBGrid2PARAM_INDEX: TdxDBGridColumn
                Caption = 'STT '
                HeaderAlignment = taCenter
                Width = 48
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PARAM_INDEX'
              end
              object dxDBGrid2PARAM_NAME: TdxDBGridColumn
                Caption = 'T'#234'n tham s'#7889' '
                HeaderAlignment = taCenter
                Width = 84
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PARAM_NAME'
                Caption_UTF7 = 'T+AOo-n tham s+HtE '
              end
              object dxDBGrid2PARAM_CAPTION: TdxDBGridColumn
                Caption = 'T'#234'n hi'#7875'n th'#7883' '
                HeaderAlignment = taCenter
                Width = 169
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PARAM_CAPTION'
                Caption_UTF7 = 'T+AOo-n hi+HsM-n th+Hss '
              end
              object dxDBGrid2PARAM_CAPTION_ENG: TdxDBGridColumn
                Caption = 'T'#234'n hi'#7875'n th'#7883' ti'#7871'ng Anh'
                HeaderAlignment = taCenter
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PARAM_CAPTION_ENG'
                Caption_UTF7 = 'T+AOo-n hi+HsM-n th+Hss ti+Hr8-ng Anh'
              end
              object dxDBGrid2LAYOUT_GROUP_NAME: TdxDBGridColumn
                Caption = 'Nh'#243'm hi'#7875'n th'#7883' '
                HeaderAlignment = taCenter
                Width = 91
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LAYOUT_GROUP_NAME'
                Caption_UTF7 = 'Nh+APM-m hi+HsM-n th+Hss '
              end
              object dxDBGrid2WIDTH: TdxDBGridCalcColumn
                Caption = #272#7897' r'#7897'ng'
                HeaderAlignment = taCenter
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'WIDTH'
                Caption_UTF7 = '+ARAe2Q r+Htk-ng'
              end
              object dxDBGrid2DATA_TYPE: TdxDBGridImageColumn
                Alignment = taRightJustify
                Caption = 'Ki'#7875'u d'#7919' li'#7879'u'
                HeaderAlignment = taCenter
                MinWidth = 16
                Width = 133
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DATA_TYPE'
                Descriptions.WideStrings = (
                  'Ng'#224'y'
                  'Logic ( d'#7841'ng check box )'
                  'S'#7889' nguy'#234'n ( d'#7841'ng spin)'
                  'S'#7889'  (d'#7841'ng calculation)'
                  'Lookup ho'#7863'c chu'#7895'i'
                  'Gi'#7901)
                ShowDescription = True
                Values.WideStrings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                Caption_UTF7 = 'Ki+HsM-u d+Hu8 li+Hsc-u'
              end
              object dxDBGrid2TEMPLATE_NAME: TdxDBGridColumn
                Caption = 'T'#234'n m'#7849'u'
                HeaderAlignment = taCenter
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TEMPLATE_NAME'
                Caption_UTF7 = 'T+AOo-n m+Hqk-u'
              end
              object dxDBGrid2LOOKUP_ID: TdxDBGridColumn
                Caption = 'ID t'#236'm ki'#7871'm'
                HeaderAlignment = taCenter
                Width = 82
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LOOKUP_ID'
                Caption_UTF7 = 'ID t+AOw-m ki+Hr8-m'
              end
              object dxDBGrid2LOOKUPFIELD: TdxDBGridColumn
                Caption = 'D'#7919' li'#7879'u t'#236'm ki'#7871'm'
                HeaderAlignment = taCenter
                Width = 95
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LOOKUPFIELD'
                Caption_UTF7 = 'D+Hu8 li+Hsc-u t+AOw-m ki+Hr8-m'
              end
              object dxDBGrid2DISPLAYFIELD: TdxDBGridColumn
                Caption = 'D'#7919' li'#7879'u hi'#7875'n th'#7883
                HeaderAlignment = taCenter
                Width = 102
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DISPLAYFIELD'
                Caption_UTF7 = 'D+Hu8 li+Hsc-u hi+HsM-n th+Hss'
              end
              object dxDBGrid2PARAM_TYPE: TdxDBGridColumn
                Caption = 'Lo'#7841'i tham s'#7889
                HeaderAlignment = taCenter
                Width = 97
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PARAM_TYPE'
                Caption_UTF7 = 'Lo+HqE-i tham s+HtE'
              end
              object dxDBGrid2DEF_VALUE: TdxDBGridColumn
                Caption = 'Gi'#225' tr'#7883' m'#7863'c '#273#7883'nh'
                HeaderAlignment = taCenter
                Width = 99
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DEF_VALUE'
                Caption_UTF7 = 'Gi+AOE tr+Hss m+Hrc-c +AREeyw-nh'
              end
            end
            object dxLayoutControl6Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl6Item1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'dxDBGrid2'
                ShowCaption = False
                Control = dxDBGrid2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object tabChartConfig: TElTabSheet
          OnShow = tabChartConfigShow
          PageControl = pageReportData
          ImageIndex = -1
          TabVisible = True
          Caption = 'Bi'#7875'u '#273#7891' ch'#237'nh'
          Visible = False
          object panelRight: TPanel
            Left = 289
            Top = 0
            Width = 359
            Height = 110
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object TeeCommander1: TTeeCommander
              Left = 0
              Top = 0
              Width = 359
              Height = 33
              Panel = tcDemo
              Align = alTop
              BevelInner = bvLowered
              ParentShowHint = False
              TabOrder = 0
            end
            object tcDemo: TDBChart
              Left = 0
              Top = 33
              Width = 359
              Height = 77
              Title.Text.WideStrings = (
                'Bi'#7875'u '#273#7891' m'#7851'u'
                '')
              View3D = False
              Align = alClient
              TabOrder = 1
              object sLine: TLineSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clRed
                XLabelsSource = 'LABEL'
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object sBar: TBarSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 20
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 20
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clGreen
                XLabelsSource = 'LABEL'
                Gradient.Direction = gdTopBottom
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Bar'
                YValues.ValueSource = 'Y'
              end
              object sHBar: THorizBarSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 20
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 20
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clYellow
                XLabelsSource = 'LABEL'
                Gradient.Direction = gdLeftRight
                XValues.Name = 'Bar'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
              object sArea: TAreaSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clBlue
                XLabelsSource = 'LABEL'
                DrawArea = True
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object sPoint: TPointSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 0
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 0
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clWhite
                XLabelsSource = 'LABEL'
                ClickableLine = False
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = True
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object sPie: TPieSeries
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clGray
                XLabelsSource = 'LABEL'
                Active = False
                OtherSlice.Legend.Visible = False
                PieValues.Name = 'Pie'
                PieValues.ValueSource = 'Y'
              end
              object sFLine: TFastLineSeries
                Active = False
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clRed
                XLabelsSource = 'LABEL'
                LinePen.Color = clRed
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object sHLine: THorizLineSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clTeal
                XLabelsSource = 'LABEL'
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
              object sHArea: THorizAreaSeries
                Active = False
                ColorEachPoint = True
                Gradient.Direction = gdRightLeft
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clNavy
                XLabelsSource = 'LABEL'
                DrawArea = True
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
            end
          end
          object panelLeft: TPanel
            Left = 0
            Top = 0
            Width = 289
            Height = 110
            Align = alLeft
            Caption = 'panelLeft'
            TabOrder = 1
            object dxLayoutControl7: TdxLayoutControl
              Left = 1
              Top = 1
              Width = 287
              Height = 108
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object dxUsed: TdxDBCheckEdit
                Left = 82
                Top = 28
                Width = 25
                Color = 15466238
                ParentColor = False
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 0
                Alignment = taCenter
                DataField = 'USED_CHART'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
                ValueChecked = '1'
                ValueGrayed = '0'
                ValueUnchecked = '0'
                StoredValues = 1
              end
              object dxChartType: TdxDBImageEdit
                Left = 107
                Top = 28
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 1
                DataField = 'CHART_TYPE'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
                DropDownRows = 16777223
                PopupBorder = pbSingle
                DefaultImages = False
                Descriptions.WideStrings = (
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng'
                  'Bi'#7875'u '#273#7891' c'#7897't '#273#7913'ng'
                  'Bi'#7875'u '#273#7891' c'#7897't ngang'
                  'Bi'#7875'u '#273#7891' mi'#7873'n'
                  'Bi'#7875'u '#273#7891' '#273'i'#7875'm'
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng '#273#417'n'
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng ngang'
                  'Bi'#7875'u '#273#7891' mi'#7873'n ngang'
                  'Bi'#7875'u '#273#7891' th'#224'nh ph'#7847'n')
                ImageIndexes.WideStrings = (
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1')
                Values.WideStrings = (
                  'LINE'
                  'BAR'
                  'HBAR'
                  'AREA'
                  'POINT'
                  'FLINE'
                  'HLINE'
                  'HAREA'
                  'PIE')
              end
              object dxX: TdxDBEdit
                Left = 82
                Top = 153
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 5
                DataField = 'X_FIELD'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxY: TdxDBEdit
                Left = 82
                Top = 176
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 6
                DataField = 'Y_FIELD'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxTitle_Y: TdxDBEdit
                Left = 82
                Top = 199
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 7
                DataField = 'X_TITLE'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxTitle_X: TdxDBEdit
                Left = 82
                Top = 245
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 9
                DataField = 'Y_TITLE'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxTitle: TdxDBEdit
                Left = 82
                Top = 107
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 3
                DataField = 'TITLE'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxChartSourrce: TdxDBImageEdit
                Left = 82
                Top = 51
                Width = 121
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 2
                DataField = 'CHART_DATASOURCE'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
                DropDownRows = 16777223
                PopupBorder = pbSingle
              end
              object dxTitle_E: TdxDBEdit
                Left = 82
                Top = 130
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 4
                DataField = 'TITLE_ENG'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxDBEdit9: TdxDBEdit
                Left = 82
                Top = 222
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 8
                DataField = 'X_TITLE_ENG'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxDBEdit10: TdxDBEdit
                Left = 82
                Top = 268
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 10
                DataField = 'Y_TITLE_ENG'
                DataSource = dsReportChart
                StyleController = dmMain.StyleController
              end
              object dxLayoutControl7Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl7Group3: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#249'y ch'#7885'n bi'#7875'u '#273#7893
                  object dxLayoutControl7Group1: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl7Item1: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'C'#243' s'#7917' d'#7909'ng'
                      CaptionOptions.AlignHorz = taRightJustify
                      Control = dxUsed
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl7Item2: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      CaptionOptions.AlignHorz = taRightJustify
                      Control = dxChartType
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl7Item3: TdxLayoutItem
                    Caption = 'Ngu'#7891'n d'#7919' li'#7879'u'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxChartSourrce
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl7Group5: TdxLayoutGroup
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'C'#7845'u h'#236'nh d'#7919' li'#7879'u'
                  object dxLayoutControl7Item10: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ti'#234'u '#273#7873
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl7Item4: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_E
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl7Item6: TdxLayoutItem
                    Caption = 'Tr'#432#7901'ng c'#7897't X'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxX
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl7Item7: TdxLayoutItem
                    Caption = 'Tr'#432#7901'ng c'#7897't Y'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxY
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl7Item8: TdxLayoutItem
                    Caption = 'Nh'#227'n c'#7897't X'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_Y
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl7Item5: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxDBEdit9
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl7Item9: TdxLayoutItem
                    Caption = 'Nh'#227'n c'#7897't Y'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_X
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl7Item11: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxDBEdit10
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
        object tabChartConfig1: TElTabSheet
          OnShow = tabChartConfig1Show
          PageControl = pageReportData
          ImageIndex = -1
          TabVisible = True
          Caption = 'Bi'#7875'u '#273#7891' ph'#7909' 1'
          Visible = False
          object Panel1: TPanel
            Left = 289
            Top = 0
            Width = 359
            Height = 110
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object TeeCommander2: TTeeCommander
              Left = 0
              Top = 0
              Width = 359
              Height = 33
              Panel = tcDemo1
              Align = alTop
              BevelInner = bvLowered
              ParentShowHint = False
              TabOrder = 0
            end
            object tcDemo1: TDBChart
              Left = 0
              Top = 33
              Width = 359
              Height = 77
              Title.Text.WideStrings = (
                'Bi'#7875'u '#273#7891' m'#7851'u'
                '')
              View3D = False
              Align = alClient
              TabOrder = 1
              object LineSeries1: TLineSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clRed
                XLabelsSource = 'LABEL'
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object BarSeries1: TBarSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 20
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 20
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clGreen
                XLabelsSource = 'LABEL'
                Gradient.Direction = gdTopBottom
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Bar'
                YValues.ValueSource = 'Y'
              end
              object HorizBarSeries1: THorizBarSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 20
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 20
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clYellow
                XLabelsSource = 'LABEL'
                Gradient.Direction = gdLeftRight
                XValues.Name = 'Bar'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
              object AreaSeries1: TAreaSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clBlue
                XLabelsSource = 'LABEL'
                DrawArea = True
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object PieSeries1: TPieSeries
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clGray
                XLabelsSource = 'LABEL'
                Active = False
                OtherSlice.Legend.Visible = False
                PieValues.Name = 'Pie'
                PieValues.ValueSource = 'Y'
              end
              object PointSeries1: TPointSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 0
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 0
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clWhite
                XLabelsSource = 'LABEL'
                ClickableLine = False
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = True
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object FastLineSeries1: TFastLineSeries
                Active = False
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clRed
                XLabelsSource = 'LABEL'
                LinePen.Color = clRed
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object HorizLineSeries1: THorizLineSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clTeal
                XLabelsSource = 'LABEL'
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
              object HorizAreaSeries1: THorizAreaSeries
                Active = False
                ColorEachPoint = True
                Gradient.Direction = gdRightLeft
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clNavy
                XLabelsSource = 'LABEL'
                DrawArea = True
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 289
            Height = 110
            Align = alLeft
            Caption = 'panelLeft'
            TabOrder = 1
            object dxLayoutControl8: TdxLayoutControl
              Left = 1
              Top = 1
              Width = 287
              Height = 108
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object dxUsed1: TdxDBCheckEdit
                Left = 82
                Top = 28
                Width = 25
                Color = 15466238
                ParentColor = False
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 0
                Alignment = taCenter
                DataField = 'USED_CHART'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
                ValueChecked = '1'
                ValueGrayed = '0'
                ValueUnchecked = '0'
                StoredValues = 1
              end
              object dxChartType1: TdxDBImageEdit
                Left = 107
                Top = 28
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 1
                DataField = 'CHART_TYPE'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
                DropDownRows = 16777223
                PopupBorder = pbSingle
                DefaultImages = False
                Descriptions.WideStrings = (
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng'
                  'Bi'#7875'u '#273#7891' c'#7897't '#273#7913'ng'
                  'Bi'#7875'u '#273#7891' c'#7897't ngang'
                  'Bi'#7875'u '#273#7891' mi'#7873'n'
                  'Bi'#7875'u '#273#7891' '#273'i'#7875'm'
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng '#273#417'n'
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng ngang'
                  'Bi'#7875'u '#273#7891' mi'#7873'n ngang'
                  'Bi'#7875'u '#273#7891' th'#224'nh ph'#7847'n')
                ImageIndexes.WideStrings = (
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1')
                Values.WideStrings = (
                  'LINE'
                  'BAR'
                  'HBAR'
                  'AREA'
                  'POINT'
                  'FLINE'
                  'HLINE'
                  'HAREA'
                  'PIE')
              end
              object dxX1: TdxDBEdit
                Left = 82
                Top = 153
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 5
                DataField = 'X_FIELD'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxY1: TdxDBEdit
                Left = 82
                Top = 176
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 6
                DataField = 'Y_FIELD'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxTitle_X1: TdxDBEdit
                Left = 82
                Top = 199
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 7
                DataField = 'X_TITLE'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxTitle_Y1: TdxDBEdit
                Left = 82
                Top = 245
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 9
                DataField = 'Y_TITLE'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxTitle1: TdxDBEdit
                Left = 82
                Top = 107
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 3
                DataField = 'TITLE'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxChartSourrce1: TdxDBImageEdit
                Left = 82
                Top = 51
                Width = 121
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 2
                DataField = 'CHART_DATASOURCE'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
                DropDownRows = 16777223
                PopupBorder = pbSingle
              end
              object dxTitle_E1: TdxDBEdit
                Left = 82
                Top = 130
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 4
                DataField = 'TITLE_ENG'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxDBEdit17: TdxDBEdit
                Left = 82
                Top = 222
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 8
                DataField = 'X_TITLE_ENG'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxDBEdit18: TdxDBEdit
                Left = 82
                Top = 268
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 10
                DataField = 'Y_TITLE_ENG'
                DataSource = dsReportChart1
                StyleController = dmMain.StyleController
              end
              object dxLayoutGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup5: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#249'y ch'#7885'n bi'#7875'u '#273#7893
                  object dxLayoutGroup6: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem4: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'C'#243' s'#7917' d'#7909'ng'
                      CaptionOptions.AlignHorz = taRightJustify
                      Control = dxUsed1
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem5: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      CaptionOptions.AlignHorz = taRightJustify
                      Control = dxChartType1
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutItem6: TdxLayoutItem
                    Caption = 'Ngu'#7891'n d'#7919' li'#7879'u'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxChartSourrce1
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutGroup7: TdxLayoutGroup
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'C'#7845'u h'#236'nh d'#7919' li'#7879'u'
                  object dxLayoutItem7: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ti'#234'u '#273#7873
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem8: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_E1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem9: TdxLayoutItem
                    Caption = 'Tr'#432#7901'ng c'#7897't X'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxX1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem10: TdxLayoutItem
                    Caption = 'Tr'#432#7901'ng c'#7897't Y'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxY1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem11: TdxLayoutItem
                    Caption = 'Nh'#227'n c'#7897't X'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_X1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem12: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxDBEdit17
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem13: TdxLayoutItem
                    Caption = 'Nh'#227'n c'#7897't Y'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_Y1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem14: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxDBEdit18
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
        object tabChartConfig2: TElTabSheet
          OnShow = tabChartConfig2Show
          PageControl = pageReportData
          ImageIndex = -1
          TabVisible = True
          Caption = 'Bi'#7875'u '#273#7891' ph'#7909' 2'
          Visible = False
          object Panel3: TPanel
            Left = 289
            Top = 0
            Width = 359
            Height = 110
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object TeeCommander3: TTeeCommander
              Left = 0
              Top = 0
              Width = 359
              Height = 33
              Panel = tcDemo2
              Align = alTop
              BevelInner = bvLowered
              ParentShowHint = False
              TabOrder = 0
            end
            object tcDemo2: TDBChart
              Left = 0
              Top = 33
              Width = 359
              Height = 77
              Title.Text.WideStrings = (
                'Bi'#7875'u '#273#7891' m'#7851'u'
                '')
              View3D = False
              Align = alClient
              TabOrder = 1
              object LineSeries2: TLineSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clRed
                XLabelsSource = 'LABEL'
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object BarSeries2: TBarSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 20
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 20
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clGreen
                XLabelsSource = 'LABEL'
                Gradient.Direction = gdTopBottom
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Bar'
                YValues.ValueSource = 'Y'
              end
              object HorizBarSeries2: THorizBarSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 20
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 20
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clYellow
                XLabelsSource = 'LABEL'
                Gradient.Direction = gdLeftRight
                XValues.Name = 'Bar'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
              object AreaSeries2: TAreaSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clBlue
                XLabelsSource = 'LABEL'
                DrawArea = True
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object PointSeries2: TPointSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 0
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 0
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clWhite
                XLabelsSource = 'LABEL'
                ClickableLine = False
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = True
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object PieSeries2: TPieSeries
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = True
                DataSource = memDemoChart
                SeriesColor = clGray
                XLabelsSource = 'LABEL'
                Active = False
                OtherSlice.Legend.Visible = False
                PieValues.Name = 'Pie'
                PieValues.ValueSource = 'Y'
              end
              object FastLineSeries2: TFastLineSeries
                Active = False
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clRed
                XLabelsSource = 'LABEL'
                LinePen.Color = clRed
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.ValueSource = 'Y'
              end
              object HorizLineSeries2: THorizLineSeries
                Active = False
                ColorEachPoint = True
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clTeal
                XLabelsSource = 'LABEL'
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
              object HorizAreaSeries2: THorizAreaSeries
                Active = False
                ColorEachPoint = True
                Gradient.Direction = gdRightLeft
                Marks.ArrowLength = 8
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Length = 8
                Marks.Visible = False
                DataSource = memDemoChart
                SeriesColor = clNavy
                XLabelsSource = 'LABEL'
                DrawArea = True
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.ValueSource = 'X'
                YValues.Name = 'Y'
                YValues.Order = loAscending
                YValues.ValueSource = 'Y'
              end
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 289
            Height = 110
            Align = alLeft
            Caption = 'panelLeft'
            TabOrder = 1
            object dxLayoutControl9: TdxLayoutControl
              Left = 1
              Top = 1
              Width = 287
              Height = 108
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object dxUsed2: TdxDBCheckEdit
                Left = 82
                Top = 28
                Width = 25
                Color = 15466238
                ParentColor = False
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 0
                Alignment = taCenter
                DataField = 'USED_CHART'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
                ValueChecked = '1'
                ValueGrayed = '0'
                ValueUnchecked = '0'
                StoredValues = 1
              end
              object dxChartType2: TdxDBImageEdit
                Left = 107
                Top = 28
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 1
                DataField = 'CHART_TYPE'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
                DropDownRows = 16777223
                PopupBorder = pbSingle
                DefaultImages = False
                Descriptions.WideStrings = (
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng'
                  'Bi'#7875'u '#273#7891' c'#7897't '#273#7913'ng'
                  'Bi'#7875'u '#273#7891' c'#7897't ngang'
                  'Bi'#7875'u '#273#7891' mi'#7873'n'
                  'Bi'#7875'u '#273#7891' '#273'i'#7875'm'
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng '#273#417'n'
                  'Bi'#7875'u '#273#7891' '#273#432#7901'ng ngang'
                  'Bi'#7875'u '#273#7891' mi'#7873'n ngang'
                  'Bi'#7875'u '#273#7891' th'#224'nh ph'#7847'n')
                ImageIndexes.WideStrings = (
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1'
                  '-1')
                Values.WideStrings = (
                  'LINE'
                  'BAR'
                  'HBAR'
                  'AREA'
                  'POINT'
                  'FLINE'
                  'HLINE'
                  'HAREA'
                  'PIE')
              end
              object dxX2: TdxDBEdit
                Left = 82
                Top = 153
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 5
                DataField = 'X_FIELD'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxY2: TdxDBEdit
                Left = 82
                Top = 176
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 6
                DataField = 'Y_FIELD'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxTitle_X2: TdxDBEdit
                Left = 82
                Top = 199
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 7
                DataField = 'X_TITLE'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxTitle_Y2: TdxDBEdit
                Left = 82
                Top = 245
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 9
                DataField = 'Y_TITLE'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxTitle2: TdxDBEdit
                Left = 82
                Top = 107
                Width = 120
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 3
                DataField = 'TITLE'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxChartSourrce2: TdxDBImageEdit
                Left = 82
                Top = 51
                Width = 121
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 2
                DataField = 'CHART_DATASOURCE'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
                DropDownRows = 16777223
                PopupBorder = pbSingle
              end
              object dxDBEdit24: TdxDBEdit
                Left = 82
                Top = 130
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 4
                DataField = 'TITLE_ENG'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxDBEdit25: TdxDBEdit
                Left = 82
                Top = 222
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 8
                DataField = 'X_TITLE_ENG'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxDBEdit26: TdxDBEdit
                Left = 82
                Top = 268
                Width = 174
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 10
                DataField = 'Y_TITLE_ENG'
                DataSource = dsReportChart2
                StyleController = dmMain.StyleController
              end
              object dxLayoutGroup8: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup9: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#249'y ch'#7885'n bi'#7875'u '#273#7893
                  object dxLayoutGroup10: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem15: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'C'#243' s'#7917' d'#7909'ng'
                      CaptionOptions.AlignHorz = taRightJustify
                      Control = dxUsed2
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem16: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      CaptionOptions.AlignHorz = taRightJustify
                      Control = dxChartType2
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutItem17: TdxLayoutItem
                    Caption = 'Ngu'#7891'n d'#7919' li'#7879'u'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxChartSourrce2
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutGroup11: TdxLayoutGroup
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'C'#7845'u h'#236'nh d'#7919' li'#7879'u'
                  object dxLayoutItem18: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ti'#234'u '#273#7873
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem19: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxDBEdit24
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem20: TdxLayoutItem
                    Caption = 'Tr'#432#7901'ng c'#7897't X'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxX2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem21: TdxLayoutItem
                    Caption = 'Tr'#432#7901'ng c'#7897't Y'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxY2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem22: TdxLayoutItem
                    Caption = 'Nh'#227'n c'#7897't X'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_X2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem23: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxDBEdit25
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem24: TdxLayoutItem
                    Caption = 'Nh'#227'n c'#7897't Y'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxTitle_Y2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem25: TdxLayoutItem
                    Caption = 'Ti'#7871'ng Anh'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = dxDBEdit26
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
      end
      object dxDBImageEdit1: TdxDBImageEdit
        Left = 101
        Top = 74
        Width = 65
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsHotFlat
        TabOrder = 2
        OnEnter = dxReportTreeEnter
        Alignment = taRightJustify
        DataField = 'INVISIBLE'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
        DropDownRows = 16777223
        PopupBorder = pbSingle
        DefaultImages = False
        Descriptions.WideStrings = (
          'Hi'#7875'n th'#7883
          'Kh'#244'ng hi'#7875'n th'#7883)
        ImageIndexes.WideStrings = (
          ''
          '-1')
        Values.WideStrings = (
          '0'
          '1')
        StoredValues = 1
      end
      object dxDBEdit6: TdxDBEdit
        Left = 101
        Top = 120
        Width = 180
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 7
        OnEnter = dxReportTreeEnter
        DataField = 'REPORT_NAME_ENG'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
      end
      object dxDBButtonEdit2: TdxDBButtonEdit
        Left = 101
        Top = 166
        Width = 180
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsHotFlat
        TabOrder = 9
        OnEnter = dxReportTreeEnter
        DataField = 'TEMPLATE_NAME_ENG'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxDBButtonEdit2ButtonClick
        ExistButtons = True
      end
      object dxDBEdit7: TdxDBEdit
        Left = 212
        Top = 74
        Width = 65
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 5
        OnEnter = dxReportTreeEnter
        DataField = 'P_KEYFIELD'
        DataSource = frmReportsMain.dsReportTree
        StyleController = dmMain.StyleController
      end
      inline frameToolbar1: TframeToolbar
        Left = 2
        Top = 515
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
        TabOrder = 15
        inherited dxLayoutControl1: TdxLayoutControl
          Width = 792
          inherited btnDelete: TElPopupButton
            Left = 91
          end
          inherited btnInsert: TElPopupButton
            Left = -34
          end
          inherited btnSave: TElPopupButton
            Left = 166
          end
          inherited btnCancel: TElPopupButton
            Left = 241
          end
          inherited btnClose: TElPopupButton
            Left = 923
          end
          inherited btnHelp: TElPopupButton
            Left = 793
          end
          inherited btnChoose: TElPopupButton
            Left = 863
          end
          inherited btnCopy: TElPopupButton
            Left = 66
          end
          inherited btnFirst: TElPopupButton
            Left = 321
          end
          inherited btnLast: TElPopupButton
            Left = 390
          end
          inherited btnPrevious: TElPopupButton
            Left = 344
          end
          inherited btnNext: TElPopupButton
            Left = 367
          end
          inherited btnDesign: TElPopupButton
            Left = 583
          end
          inherited btnPreview: TElPopupButton
            Left = 513
          end
          inherited btnPrint: TElPopupButton
            Left = 443
          end
          inherited btnInsertEx: TElPopupButton
            Left = 41
          end
          inherited btnSendMail: TElPopupButton
            Left = 418
          end
          inherited btnGenerate: TElPopupButton
            Left = 708
            ImageIndex = 58
            UseImageList = True
            Images = dmMain.imgAction
            Action = acGenDetail
          end
          inherited btnRelation: TElPopupButton
            Left = 683
            ImageIndex = 20
            UseImageList = True
            Images = dmMain.imgAction
            Action = acCopyDetail
          end
          inherited ElPopupButton1: TElPopupButton
            Left = 658
          end
          inherited dxLayoutControl1Group_Root: TdxLayoutGroup
            inherited dxLayoutControl1Group1: TdxLayoutGroup
              inherited dxLayoutControl1Group4: TdxLayoutGroup
                Visible = True
                inherited dxLayoutControl1Item9: TdxLayoutItem
                  Visible = True
                end
                inherited dxlctrlGenerate: TdxLayoutItem
                  Visible = True
                end
              end
              inherited dxlctrlHelp: TdxLayoutItem
                Visible = False
              end
            end
          end
        end
        inherited ActionList1: TActionList
          Left = 289
        end
        inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
          Left = 249
          Top = 65520
        end
        inherited ElPopupMenu1: TElPopupMenu
          Left = 272
          Top = 8
        end
        inherited ElPopupMenu2: TElPopupMenu
          Left = 273
          Top = 8
        end
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Item24: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Control = frameToolbar1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = [aaVertical]
            Caption = 'V'#7883' tr'#237' m'#7909'c'
            object dxLayoutControl1Group5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'S'#7889' th'#7913' t'#7921' m'#7909'c (*)'
                  Control = dxDBEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'S'#7889' c'#7897't'
                  Control = dxDBEdit5
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = #7848'n/Hi'#7879'n'
                  Control = dxDBImageEdit1
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'M'#7909'c cha'
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Kh'#243'a'
                  Control = dxDBEdit4
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item22: TdxLayoutItem
                  Caption = 'Kh'#243'a cha'
                  Control = dxDBEdit7
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'T'#234'n m'#7909'c'
              Control = dxDBEdit3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item20: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'T'#234'n ti'#7871'ng Anh'
              Control = dxDBEdit6
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'M'#7851'u in'
              Control = dxDBButtonEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item21: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'M'#7851'u ti'#7871'ng Anh'
              Control = dxDBButtonEdit2
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Th'#244'ng tin c'#7911'a m'#7909'c'
            object dxLayoutControl1Item9: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'ElPageControl1'
              ShowCaption = False
              Control = pageSQL
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Item19: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'ElPageControl1'
          ShowCaption = False
          Control = pageReportData
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Caption = #272#7883'nh ngh'#297'a hi'#7875'n th'#7883' d'#7919' li'#7879'u c'#7911'a b'#225'o c'#225'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 440
    Top = 96
  end
  object dsReportCaptionDefine: TDataSource
    DataSet = qryReportCaptionDefine
    Left = 80
    Top = 328
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 376
    Top = 128
    object acSelectChart: TAction
      Caption = 'acSelectChart'
      OnExecute = acSelectChartExecute
    end
    object acGenDetail: TAction
      Caption = 'acGenDetail'
      ImageIndex = 58
      OnExecute = acGenDetailExecute
    end
    object acCopyDetail: TAction
      Caption = 'acCopyDetail'
      ImageIndex = 20
      OnExecute = acCopyDetailExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object acSelectChart1: TAction
      Caption = 'acSelectChart1'
      OnExecute = acSelectChart1Execute
    end
    object acSelectChart2: TAction
      Caption = 'acSelectChart2'
      OnExecute = acSelectChart2Execute
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Report template file *.rtm|*.rtm'
    Left = 408
    Top = 96
  end
  object qryReportParam: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_REPORT_PARAMS'
      'WHERE'
      '   PARAM_NAME = :OLD_PARAM_NAME AND'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_REPORT_PARAMS SET'
      '   PARAM_NAME = :PARAM_NAME, /*PK*/'
      '   REPORTID = :REPORTID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   PARAM_INDEX = :PARAM_INDEX,'
      '   PARAM_CAPTION = :PARAM_CAPTION,'
      '   PARAM_CAPTION_ENG = :PARAM_CAPTION_ENG,'
      '   DATA_TYPE = :DATA_TYPE,'
      '   TEMPLATE_NAME = :TEMPLATE_NAME,'
      '   LOOKUP_ID = :LOOKUP_ID,'
      '   LOOKUPFIELD = :LOOKUPFIELD,'
      '   DISPLAYFIELD = :DISPLAYFIELD,'
      '   PARAM_TYPE = :PARAM_TYPE,'
      '   DEF_VALUE = :DEF_VALUE,'
      '   LAYOUT_GROUP_NAME = :LAYOUT_GROUP_NAME,'
      '   WIDTH = :WIDTH'
      'WHERE'
      '   PARAM_NAME = :OLD_PARAM_NAME AND'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_REPORT_PARAMS('
      '   PARAM_NAME, /*PK*/'
      '   REPORTID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   PARAM_INDEX,'
      '   PARAM_CAPTION,'
      '   PARAM_CAPTION_ENG,'
      '   DATA_TYPE,'
      '   TEMPLATE_NAME,'
      '   LOOKUP_ID,'
      '   LOOKUPFIELD,'
      '   DISPLAYFIELD,'
      '   PARAM_TYPE,'
      '   DEF_VALUE,'
      '   LAYOUT_GROUP_NAME,'
      '   WIDTH)'
      'VALUES ('
      '   :PARAM_NAME,'
      '   :REPORTID,'
      '   :SUBSYSTEMID,'
      '   :PARAM_INDEX,'
      '   :PARAM_CAPTION,'
      '   :PARAM_CAPTION_ENG,'
      '   :DATA_TYPE,'
      '   :TEMPLATE_NAME,'
      '   :LOOKUP_ID,'
      '   :LOOKUPFIELD,'
      '   :DISPLAYFIELD,'
      '   :PARAM_TYPE,'
      '   :DEF_VALUE,'
      '   :LAYOUT_GROUP_NAME,'
      '   :WIDTH)')
    KeyLinks.Strings = (
      'SYS_REPORT_PARAMS.REPORTID'
      'SYS_REPORT_PARAMS.SUBSYSTEMID'
      'SYS_REPORT_PARAMS.PARAM_NAME')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryReportParamNewRecord
    DataSource = frmReportsMain.dsReportTree
    SQL.Strings = (
      'SELECT REPORTID'
      '     , SUBSYSTEMID'
      '     , PARAM_NAME'
      '     , PARAM_INDEX'
      '     , PARAM_CAPTION'
      '     , PARAM_CAPTION_ENG'
      '     , DATA_TYPE'
      '     , TEMPLATE_NAME'
      '     , LOOKUP_ID'
      '     , LOOKUPFIELD'
      '     , DISPLAYFIELD'
      '     , PARAM_TYPE'
      '     , DEF_VALUE'
      '     , LAYOUT_GROUP_NAME'
      '     , WIDTH'
      'FROM SYS_REPORT_PARAMS'
      'where REPORTID=:REPORTID and'
      '      SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 112
    Top = 296
    object qryReportParamREPORTID: TIntegerField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryReportParamSUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryReportParamPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 30
    end
    object qryReportParamPARAM_INDEX: TIntegerField
      FieldName = 'PARAM_INDEX'
      Required = True
    end
    object qryReportParamPARAM_CAPTION: TWideStringField
      FieldName = 'PARAM_CAPTION'
      Size = 255
    end
    object qryReportParamDATA_TYPE: TIntegerField
      FieldName = 'DATA_TYPE'
    end
    object qryReportParamTEMPLATE_NAME: TWideStringField
      FieldName = 'TEMPLATE_NAME'
      Size = 63
    end
    object qryReportParamLOOKUP_ID: TIntegerField
      FieldName = 'LOOKUP_ID'
    end
    object qryReportParamLOOKUPFIELD: TWideStringField
      FieldName = 'LOOKUPFIELD'
      Size = 30
    end
    object qryReportParamDISPLAYFIELD: TWideStringField
      FieldName = 'DISPLAYFIELD'
      Size = 30
    end
    object qryReportParamPARAM_TYPE: TIntegerField
      FieldName = 'PARAM_TYPE'
    end
    object qryReportParamDEF_VALUE: TWideStringField
      FieldName = 'DEF_VALUE'
      Size = 3072
    end
    object qryReportParamLAYOUT_GROUP_NAME: TWideStringField
      FieldName = 'LAYOUT_GROUP_NAME'
      Size = 30
    end
    object qryReportParamWIDTH: TIntegerField
      FieldName = 'WIDTH'
    end
    object qryReportParamPARAM_CAPTION_ENG: TWideStringField
      FieldName = 'PARAM_CAPTION_ENG'
      Size = 255
    end
  end
  object dsReportParam: TDataSource
    DataSet = qryReportParam
    Left = 112
    Top = 328
  end
  object memDemoChart: TdxMemData
    Indexes = <>
    Persistent.Option = poNone
    Persistent.Data = {
      566572CDCCCCCCCCCCFC3F030000000400000003000200580004000000030002
      00590015000000010006004C4142454C00010000000001020000000500000047
      5420310001010000000103000000050000004754203200010200000001010000
      0005000000475420330001030000000104000000050000004754203400010400
      00000103000000050000004754203500}
    SortOptions = []
    Left = 504
    Top = 95
    object memDemoChartX: TIntegerField
      FieldName = 'X'
    end
    object memDemoChartY: TIntegerField
      FieldName = 'Y'
    end
    object memDemoChartLABEL: TStringField
      FieldName = 'LABEL'
    end
  end
  object dsDemoChart: TDataSource
    DataSet = memDemoChart
    Left = 472
    Top = 95
  end
  object imgChart: TImageList
    Height = 24
    Width = 24
    Left = 312
    Top = 128
    Bitmap = {
      494C010101000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCF9F900F1E5E300E6D2CD00DCBDB600DBBD
      B800DABDBB00DCC2BE00E4D0CD00F1E5E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5ABA500C88F800098697B00334EDD002955EE002460FE00347AFF007C7F
      AE00FF7E0600FF9A3700FEA34A00F5AA6200D69C7700B6786B00C18A82000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7BB
      B80087638C003C48C900002EFF000E45FF001851FF002560FF00367AFF007D7F
      AC00FF7E0800FF993800FFA34900FFB26100FFCD8A00FFDCA000E4BB9800C189
      8100CEC3C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDC6C300B77B
      71000A35F5000030FF000031FF001046FF001851FF002560FF00367AFF007D7F
      AC00FF7E0800FF993800FFA34900FFB26100FFCB8A00FFD69C00FFE7B400CFA7
      9400B97D7300DCC5C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AF747200454AC3000030
      FF000032FF000032FF000031FF000E45FF001650FF00215DFF003277FF007A7B
      AA00FF7A0100FF973400FFA24700FFB15F00FFCB8A00FFD69C00FFE5B300FFFD
      DB00FFFFE700DEC5B400DBD5D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAE8E800524FB700002FFF000032
      FF000032FF000032FF00002FFF002A5AFF004975FF007097FF00A5C2FF00D2D4
      E500FFD6B100FFC89500FFC38900FFC18200FFC98600FFD69B00FFE5B300FFFD
      DB00FFFFE400FFFFEE00C58F8700EAE8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8C8C4000432FA000031FF000032
      FF00002EFF000029FF003B61FF00D9E1FF00F1F5FF00FFFFFF00E5EEFF00F8F7
      F500FFFBF400FFFFFF00FFFFFF00FFFAF400FFEBD100FFDFB300FFE3AF00FFFD
      DB00FFFFE400FFFFEB00B6797000D6C5C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BE887C000030FF00002FFF001340
      FF00C6D5FF007AA2FF00467DFF002B6AFF002D6BFF002E6CFF00296AFF00BBAD
      AF00FFCC8800FFCB8A00FFCA8900FFCA8800FFCD8F00FFD4A000FFE7CA00FFFF
      F400FFFFE600FFFFEA00E8D5CF00B57B72000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6827D00002EFF00325BFF00BACB
      FF001D5BFF00225EFF002460FF002560FF002560FF002560FF001F5EFF00B8A4
      A800FFC57D00FFC37E00FFC37E00FFC37E00FFC37E00FFC37D00FFC27C00FFE4
      C600FFFBF400FFFFF000ECDDD800B47970000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BA877F002853FF0086A3FF003166
      FF001E59FF001E59FF001E59FF001E59FF001E59FF001E59FF001756FF00B79E
      A100FFC07400FFBF7600FFBF7600FFBF7600FFBF7600FFBF7600FFBF7600FFBF
      7500FFCD9500FFFAF300ECDDD700B4796F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C19085001449FF000D43FF000E44
      FF000E44FF000E44FF000E44FF000E44FF000E44FF000E44FF000741FF00B18F
      9300FFB45F00FFB36200FFB36200FFB36200FFB36200FFB36200FFB36200FFB3
      6200FFB36200FFB26000ECDFDD00B47970000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C59588000236FF000437FF000437
      FF000437FF000437FF000437FF000437FF000437FF000437FF000034FF00AE86
      8C00FFAC5400FFAA5600FFAA5600FFAA5600FFAA5600FFAA5600FFAA5600FFAA
      5600FFAA5600FFAA5600ECAE7C00B47970000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C89A8B000030FF000031FF000031
      FF000031FF000031FF000031FF000031FF000031FF000031FF00002EFF00AD80
      8600FFA74B00FFA64E00FFA64E00FFA64E00FFA64E00FFA64E00FFA64E00FFA6
      4E00FFA64E00FFA64E00EC995300B47567000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFA89000008FFF00008FFF00008E
      FF00008CFF00008CFF00008BFF000089FF000088FF000087FF000084FF00A295
      8100FF993500FF9A3A00FF9A3A00FF9A3A00FF9A3A00FF9A3A00FF9A3A00FF9A
      3A00FF9A3A00FF9A3A00EC904400B47365000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB3940000EEFF0000ECFF0000EA
      FF0000E6FF0000E5FF0000E3FF0000DFFF0000DEFF0000DCFF0000D8FF0009D3
      F700DD9B4900FF922D00FF922D00FF922D00FF922D00FF922D00FF922D00FF92
      2D00FF922D00FF922D00E8893E00B4786C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC5AA0000E7FF0000E5FF0000E3
      FF0000DFFF0000DEFF0000DAFF0000D8FF0000D7FF0000D3FF0000D1FF0000D1
      FF0050B9BA00FF8C2500FF8D2600FF8D2600FF8D2600FF8D2600FF8D2600FF8D
      2600FF8D2600FF8D2600D77E4700C3948E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECEAE9006CCCCD0000DCFF0000D8
      FF0000D6FF0000D5FF0000D1FF0000CFFF0000CEFF0000CAFF0000C8FF0000C7
      FF0000C4FF00AB965E00FF7F0B00FF811200FF811200FF811200FF811200FF81
      1200FF811200FF810F00C4918900E7E5E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9C49F005CCDD60000D4
      FF0000D0FF0000D0FF0000CCFF0000C9FF0000C9FF0000C5FF0000C2FF0000C2
      FF0000BEFF000DB8F000B68C4D00FF780100FF790500FF790500FF790500FF79
      0500FF790200E47C3000DFD5D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFE7D100E4C49F003ACC
      E50000CDFF0000CCFF0000C8FF0000C6FF0000C3FF0000C2FF0000BFFF0000BE
      FF0000BAFF0000B8FF0024ADDA00F5790900FF750000FF750000FF750000FF75
      0000EF7A1D00C386720000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4CB
      C300B8C5B40052C2DB0000BFFF0000BCFF0000BAFF0000B8FF0000B6FF0000B4
      FF0000B2FF0000AFFF0000ADFF0000AAFE00FF730000FF740000ED812C00D8A5
      9300CABFBA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0CEBC00FFD5AE00D0C3A80034BAE80019B7F30000B4FF0000B0FF0000AE
      FF0000ACFF0000A9FF0000A7FE0017A6F100D1905C00DA9A7100DEB39F00FAF9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E4E200FFEAD600DFC1A000C2BEAA00A7BAB30075B3C80056AF
      D5005DADD0007CABBF009EAAAC00B4A89F00E7C1AA00F2DACC00E4E2E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FE00FF00
      0000000000000000F0001F000000000000000000E00007000000000000000000
      C000030000000000000000008000010000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800001000000000000000000800003000000000000000000
      E00007000000000000000000F0000F000000000000000000F8001F0000000000
      00000000FFFFFF00000000000000000000000000000000000000000000000000
      000000000000}
  end
  object qryReportChart: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_REPORT_CHART'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   STT = :OLD_STT AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_REPORT_CHART SET'
      '   REPORTID = :REPORTID, /*PK*/'
      '   STT = :STT, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USED_CHART = :USED_CHART,'
      '   CHART_TYPE = :CHART_TYPE,'
      '   TITLE = :TITLE,'
      '   X_TITLE = :X_TITLE,'
      '   Y_TITLE = :Y_TITLE,'
      '   TITLE_ENG = :TITLE_ENG,'
      '   X_TITLE_ENG = :X_TITLE_ENG,'
      '   Y_TITLE_ENG = :Y_TITLE_ENG,'
      '   X_FIELD = :X_FIELD,'
      '   Y_FIELD = :Y_FIELD,'
      '   CHART_DATASOURCE = :CHART_DATASOURCE'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   STT = :OLD_STT AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_REPORT_CHART('
      '   REPORTID, /*PK*/'
      '   STT, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   USED_CHART,'
      '   CHART_TYPE,'
      '   TITLE,'
      '   X_TITLE,'
      '   Y_TITLE,'
      '   TITLE_ENG,'
      '   X_TITLE_ENG,'
      '   Y_TITLE_ENG,'
      '   X_FIELD,'
      '   Y_FIELD,'
      '   CHART_DATASOURCE)'
      'VALUES ('
      '   :REPORTID,'
      '   :STT,'
      '   :SUBSYSTEMID,'
      '   :USED_CHART,'
      '   :CHART_TYPE,'
      '   :TITLE,'
      '   :X_TITLE,'
      '   :Y_TITLE,'
      '   :TITLE_ENG,'
      '   :X_TITLE_ENG,'
      '   :Y_TITLE_ENG,'
      '   :X_FIELD,'
      '   :Y_FIELD,'
      '   :CHART_DATASOURCE)')
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryReportChartAfterScroll
    OnNewRecord = qryReportChartNewRecord
    DataSource = frmReportsMain.dsReportTree
    SQL.Strings = (
      'SELECT REPORTID'
      '     , SUBSYSTEMID'
      '     , STT'
      '     , USED_CHART'
      '     , CHART_TYPE'
      '     , TITLE'
      '     , X_TITLE'
      '     , Y_TITLE'
      '     , TITLE_ENG'
      '     , X_TITLE_ENG'
      '     , Y_TITLE_ENG'
      '     , X_FIELD'
      '     , Y_FIELD'
      '     , CHART_DATASOURCE'
      'FROM SYS_REPORT_CHART'
      'where REPORTID=:REPORTID and'
      '     SUBSYSTEMID=:SUBSYSTEMID and'
      '     STT=1')
    FieldOptions = []
    Left = 144
    Top = 296
    object qryReportChartREPORTID: TIntegerField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryReportChartSUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryReportChartUSED_CHART: TIntegerField
      FieldName = 'USED_CHART'
      Required = True
      OnChange = qryReportChartUSED_CHARTChange
    end
    object qryReportChartCHART_TYPE: TWideStringField
      FieldName = 'CHART_TYPE'
      Required = True
      OnChange = qryReportChartCHART_TYPEChange
      Size = 30
    end
    object qryReportChartTITLE: TWideStringField
      FieldName = 'TITLE'
      Size = 126
    end
    object qryReportChartX_TITLE: TWideStringField
      FieldName = 'X_TITLE'
      Size = 126
    end
    object qryReportChartY_TITLE: TWideStringField
      FieldName = 'Y_TITLE'
      Size = 126
    end
    object qryReportChartX_FIELD: TWideStringField
      FieldName = 'X_FIELD'
      Size = 126
    end
    object qryReportChartY_FIELD: TWideStringField
      FieldName = 'Y_FIELD'
      Size = 30
    end
    object qryReportChartCHART_DATASOURCE: TIntegerField
      FieldName = 'CHART_DATASOURCE'
    end
    object qryReportChartTITLE_ENG: TWideStringField
      FieldName = 'TITLE_ENG'
      Size = 126
    end
    object qryReportChartX_TITLE_ENG: TWideStringField
      FieldName = 'X_TITLE_ENG'
      Size = 126
    end
    object qryReportChartY_TITLE_ENG: TWideStringField
      FieldName = 'Y_TITLE_ENG'
      Size = 126
    end
    object qryReportChartSTT: TIntegerField
      FieldName = 'STT'
      Required = True
    end
  end
  object dsReportChart: TDataSource
    DataSet = qryReportChart
    Left = 144
    Top = 328
  end
  object qryReportCaptionDefine: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_REPORT_CAPTION'
      'WHERE'
      '   COLUMN_ID = :OLD_COLUMN_ID AND'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_REPORT_CAPTION SET'
      '   COLUMN_ID = :COLUMN_ID, /*PK*/'
      '   REPORTID = :REPORTID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   COLUMN_CAPTION = :COLUMN_CAPTION,'
      '   COLUMN_CAPTION_ENG = :COLUMN_CAPTION_ENG,'
      '   COLUMN_WIDTH = :COLUMN_WIDTH,'
      '   COLUMN_GROUP = :COLUMN_GROUP,'
      '   COLUMN_ALIGN = :COLUMN_ALIGN,'
      '   COLUMN_FORMAT = :COLUMN_FORMAT,'
      '   COLUMN_FILTER = :COLUMN_FILTER,'
      '   COLUMN_INDEX = :COLUMN_INDEX,'
      '   COLUMN_FOOTER = :COLUMN_FOOTER,'
      '   INVISIBLE = :INVISIBLE,'
      '   LOOKUP_ID = :LOOKUP_ID,'
      '   COLUMN_CLASS = :COLUMN_CLASS,'
      '   DISPLAYFIELD = :DISPLAYFIELD,'
      '   REQUIRED = :REQUIRED'
      'WHERE'
      '   COLUMN_ID = :OLD_COLUMN_ID AND'
      '   REPORTID = :OLD_REPORTID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_REPORT_CAPTION('
      '   COLUMN_ID, /*PK*/'
      '   REPORTID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   COLUMN_CAPTION,'
      '   COLUMN_CAPTION_ENG,'
      '   COLUMN_WIDTH,'
      '   COLUMN_GROUP,'
      '   COLUMN_ALIGN,'
      '   COLUMN_FORMAT,'
      '   COLUMN_FILTER,'
      '   COLUMN_INDEX,'
      '   COLUMN_FOOTER,'
      '   INVISIBLE,'
      '   LOOKUP_ID,'
      '   COLUMN_CLASS,'
      '   DISPLAYFIELD,'
      '   REQUIRED)'
      'VALUES ('
      '   :COLUMN_ID,'
      '   :REPORTID,'
      '   :SUBSYSTEMID,'
      '   :COLUMN_CAPTION,'
      '   :COLUMN_CAPTION_ENG,'
      '   :COLUMN_WIDTH,'
      '   :COLUMN_GROUP,'
      '   :COLUMN_ALIGN,'
      '   :COLUMN_FORMAT,'
      '   :COLUMN_FILTER,'
      '   :COLUMN_INDEX,'
      '   :COLUMN_FOOTER,'
      '   :INVISIBLE,'
      '   :LOOKUP_ID,'
      '   :COLUMN_CLASS,'
      '   :DISPLAYFIELD,'
      '   :REQUIRED)')
    KeyLinks.Strings = (
      'SYS_REPORT_CAPTION.REPORTID'
      'SYS_REPORT_CAPTION.SUBSYSTEMID'
      'SYS_REPORT_CAPTION.COLUMN_ID')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryReportCaptionDefineNewRecord
    DataSource = frmReportsMain.dsReportTree
    SQL.Strings = (
      'SELECT REPORTID'
      '     , SUBSYSTEMID'
      '     , COLUMN_ID'
      '     , COLUMN_CAPTION'
      '     , COLUMN_CAPTION_ENG'
      '     , COLUMN_WIDTH'
      '     , COLUMN_GROUP'
      '     , COLUMN_ALIGN'
      '     , COLUMN_FORMAT'
      '     , COLUMN_FILTER'
      '     , COLUMN_INDEX'
      '     , COLUMN_FOOTER'
      '     , INVISIBLE'
      '     , LOOKUP_ID'
      '     , COLUMN_CLASS'
      '     , DISPLAYFIELD'
      '     , REQUIRED'
      'FROM SYS_REPORT_CAPTION'
      'where  REPORTID=:REPORTID and'
      '       SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 80
    Top = 296
    object qryReportCaptionDefineREPORTID: TIntegerField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryReportCaptionDefineSUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryReportCaptionDefineCOLUMN_ID: TWideStringField
      FieldName = 'COLUMN_ID'
      Required = True
      Size = 30
    end
    object qryReportCaptionDefineCOLUMN_CAPTION: TWideStringField
      FieldName = 'COLUMN_CAPTION'
      Size = 63
    end
    object qryReportCaptionDefineCOLUMN_WIDTH: TIntegerField
      FieldName = 'COLUMN_WIDTH'
    end
    object qryReportCaptionDefineCOLUMN_GROUP: TIntegerField
      FieldName = 'COLUMN_GROUP'
    end
    object qryReportCaptionDefineCOLUMN_ALIGN: TIntegerField
      FieldName = 'COLUMN_ALIGN'
    end
    object qryReportCaptionDefineCOLUMN_FORMAT: TWideStringField
      FieldName = 'COLUMN_FORMAT'
      Size = 30
    end
    object qryReportCaptionDefineCOLUMN_FILTER: TIntegerField
      FieldName = 'COLUMN_FILTER'
    end
    object qryReportCaptionDefineCOLUMN_INDEX: TIntegerField
      FieldName = 'COLUMN_INDEX'
    end
    object qryReportCaptionDefineCOLUMN_FOOTER: TIntegerField
      FieldName = 'COLUMN_FOOTER'
    end
    object qryReportCaptionDefineINVISIBLE: TIntegerField
      FieldName = 'INVISIBLE'
    end
    object qryReportCaptionDefineLOOKUP_ID: TIntegerField
      FieldName = 'LOOKUP_ID'
    end
    object qryReportCaptionDefineCOLUMN_CLASS: TIntegerField
      FieldName = 'COLUMN_CLASS'
    end
    object qryReportCaptionDefineDISPLAYFIELD: TWideStringField
      FieldName = 'DISPLAYFIELD'
      Size = 30
    end
    object qryReportCaptionDefineREQUIRED: TSmallintField
      FieldName = 'REQUIRED'
    end
    object qryReportCaptionDefineCOLUMN_CAPTION_ENG: TWideStringField
      FieldName = 'COLUMN_CAPTION_ENG'
      Size = 63
    end
  end
  object qryTest: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 187
    Top = 223
  end
  object qryInsertDetail: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'from_reportid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'to_reportid'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure SYS_COPY_REPORT_DETAIL(:FROM_REPORTID,:TO_REPO' +
        'RTID)')
    FieldOptions = []
    Left = 107
    Top = 391
  end
  object qryReportChart1: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_REPORT_CHART'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   STT = :OLD_STT AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_REPORT_CHART SET'
      '   REPORTID = :REPORTID, /*PK*/'
      '   STT = :STT, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USED_CHART = :USED_CHART,'
      '   CHART_TYPE = :CHART_TYPE,'
      '   TITLE = :TITLE,'
      '   X_TITLE = :X_TITLE,'
      '   Y_TITLE = :Y_TITLE,'
      '   TITLE_ENG = :TITLE_ENG,'
      '   X_TITLE_ENG = :X_TITLE_ENG,'
      '   Y_TITLE_ENG = :Y_TITLE_ENG,'
      '   X_FIELD = :X_FIELD,'
      '   Y_FIELD = :Y_FIELD,'
      '   CHART_DATASOURCE = :CHART_DATASOURCE'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   STT = :OLD_STT AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_REPORT_CHART('
      '   REPORTID, /*PK*/'
      '   STT, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   USED_CHART,'
      '   CHART_TYPE,'
      '   TITLE,'
      '   X_TITLE,'
      '   Y_TITLE,'
      '   TITLE_ENG,'
      '   X_TITLE_ENG,'
      '   Y_TITLE_ENG,'
      '   X_FIELD,'
      '   Y_FIELD,'
      '   CHART_DATASOURCE)'
      'VALUES ('
      '   :REPORTID,'
      '   :STT,'
      '   :SUBSYSTEMID,'
      '   :USED_CHART,'
      '   :CHART_TYPE,'
      '   :TITLE,'
      '   :X_TITLE,'
      '   :Y_TITLE,'
      '   :TITLE_ENG,'
      '   :X_TITLE_ENG,'
      '   :Y_TITLE_ENG,'
      '   :X_FIELD,'
      '   :Y_FIELD,'
      '   :CHART_DATASOURCE)')
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryReportChart1AfterScroll
    OnNewRecord = qryReportChart1NewRecord
    DataSource = frmReportsMain.dsReportTree
    SQL.Strings = (
      'SELECT REPORTID'
      '     , SUBSYSTEMID'
      '     , STT'
      '     , USED_CHART'
      '     , CHART_TYPE'
      '     , TITLE'
      '     , X_TITLE'
      '     , Y_TITLE'
      '     , TITLE_ENG'
      '     , X_TITLE_ENG'
      '     , Y_TITLE_ENG'
      '     , X_FIELD'
      '     , Y_FIELD'
      '     , CHART_DATASOURCE'
      'FROM SYS_REPORT_CHART'
      'where REPORTID=:REPORTID and'
      '     SUBSYSTEMID=:SUBSYSTEMID and'
      '     STT=2')
    FieldOptions = []
    Left = 176
    Top = 296
    object qryReportChart1REPORTID: TIntegerField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryReportChart1SUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryReportChart1STT: TIntegerField
      FieldName = 'STT'
      Required = True
    end
    object qryReportChart1USED_CHART: TIntegerField
      FieldName = 'USED_CHART'
      Required = True
      OnChange = qryReportChart1USED_CHARTChange
    end
    object qryReportChart1CHART_TYPE: TWideStringField
      FieldName = 'CHART_TYPE'
      Required = True
      OnChange = qryReportChart1CHART_TYPEChange
      Size = 30
    end
    object qryReportChart1TITLE: TWideStringField
      FieldName = 'TITLE'
      Size = 126
    end
    object qryReportChart1X_TITLE: TWideStringField
      FieldName = 'X_TITLE'
      Size = 126
    end
    object qryReportChart1Y_TITLE: TWideStringField
      FieldName = 'Y_TITLE'
      Size = 126
    end
    object qryReportChart1TITLE_ENG: TWideStringField
      FieldName = 'TITLE_ENG'
      Size = 126
    end
    object qryReportChart1X_TITLE_ENG: TWideStringField
      FieldName = 'X_TITLE_ENG'
      Size = 126
    end
    object qryReportChart1Y_TITLE_ENG: TWideStringField
      FieldName = 'Y_TITLE_ENG'
      Size = 126
    end
    object qryReportChart1X_FIELD: TWideStringField
      FieldName = 'X_FIELD'
      Size = 126
    end
    object qryReportChart1Y_FIELD: TWideStringField
      FieldName = 'Y_FIELD'
      Size = 30
    end
    object qryReportChart1CHART_DATASOURCE: TIntegerField
      FieldName = 'CHART_DATASOURCE'
    end
  end
  object dsReportChart1: TDataSource
    DataSet = qryReportChart1
    Left = 176
    Top = 328
  end
  object qryReportChart2: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_REPORT_CHART'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   STT = :OLD_STT AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_REPORT_CHART SET'
      '   REPORTID = :REPORTID, /*PK*/'
      '   STT = :STT, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   USED_CHART = :USED_CHART,'
      '   CHART_TYPE = :CHART_TYPE,'
      '   TITLE = :TITLE,'
      '   X_TITLE = :X_TITLE,'
      '   Y_TITLE = :Y_TITLE,'
      '   TITLE_ENG = :TITLE_ENG,'
      '   X_TITLE_ENG = :X_TITLE_ENG,'
      '   Y_TITLE_ENG = :Y_TITLE_ENG,'
      '   X_FIELD = :X_FIELD,'
      '   Y_FIELD = :Y_FIELD,'
      '   CHART_DATASOURCE = :CHART_DATASOURCE'
      'WHERE'
      '   REPORTID = :OLD_REPORTID AND'
      '   STT = :OLD_STT AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_REPORT_CHART('
      '   REPORTID, /*PK*/'
      '   STT, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   USED_CHART,'
      '   CHART_TYPE,'
      '   TITLE,'
      '   X_TITLE,'
      '   Y_TITLE,'
      '   TITLE_ENG,'
      '   X_TITLE_ENG,'
      '   Y_TITLE_ENG,'
      '   X_FIELD,'
      '   Y_FIELD,'
      '   CHART_DATASOURCE)'
      'VALUES ('
      '   :REPORTID,'
      '   :STT,'
      '   :SUBSYSTEMID,'
      '   :USED_CHART,'
      '   :CHART_TYPE,'
      '   :TITLE,'
      '   :X_TITLE,'
      '   :Y_TITLE,'
      '   :TITLE_ENG,'
      '   :X_TITLE_ENG,'
      '   :Y_TITLE_ENG,'
      '   :X_FIELD,'
      '   :Y_FIELD,'
      '   :CHART_DATASOURCE)')
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryReportChart2AfterScroll
    OnNewRecord = qryReportChart2NewRecord
    DataSource = frmReportsMain.dsReportTree
    SQL.Strings = (
      'SELECT REPORTID'
      '     , SUBSYSTEMID'
      '     , STT'
      '     , USED_CHART'
      '     , CHART_TYPE'
      '     , TITLE'
      '     , X_TITLE'
      '     , Y_TITLE'
      '     , TITLE_ENG'
      '     , X_TITLE_ENG'
      '     , Y_TITLE_ENG'
      '     , X_FIELD'
      '     , Y_FIELD'
      '     , CHART_DATASOURCE'
      'FROM SYS_REPORT_CHART'
      'where REPORTID=:REPORTID and'
      '     SUBSYSTEMID=:SUBSYSTEMID and'
      '     STT=3')
    FieldOptions = []
    Left = 208
    Top = 296
    object qryReportChart2REPORTID: TIntegerField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryReportChart2SUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryReportChart2STT: TIntegerField
      FieldName = 'STT'
      Required = True
    end
    object qryReportChart2USED_CHART: TIntegerField
      FieldName = 'USED_CHART'
      Required = True
      OnChange = qryReportChart2USED_CHARTChange
    end
    object qryReportChart2CHART_TYPE: TWideStringField
      FieldName = 'CHART_TYPE'
      Required = True
      OnChange = qryReportChart2CHART_TYPEChange
      Size = 30
    end
    object qryReportChart2TITLE: TWideStringField
      FieldName = 'TITLE'
      Size = 126
    end
    object qryReportChart2X_TITLE: TWideStringField
      FieldName = 'X_TITLE'
      Size = 126
    end
    object qryReportChart2Y_TITLE: TWideStringField
      FieldName = 'Y_TITLE'
      Size = 126
    end
    object qryReportChart2TITLE_ENG: TWideStringField
      FieldName = 'TITLE_ENG'
      Size = 126
    end
    object qryReportChart2X_TITLE_ENG: TWideStringField
      FieldName = 'X_TITLE_ENG'
      Size = 126
    end
    object qryReportChart2Y_TITLE_ENG: TWideStringField
      FieldName = 'Y_TITLE_ENG'
      Size = 126
    end
    object qryReportChart2X_FIELD: TWideStringField
      FieldName = 'X_FIELD'
      Size = 126
    end
    object qryReportChart2Y_FIELD: TWideStringField
      FieldName = 'Y_FIELD'
      Size = 30
    end
    object qryReportChart2CHART_DATASOURCE: TIntegerField
      FieldName = 'CHART_DATASOURCE'
    end
  end
  object dsReportChart2: TDataSource
    DataSet = qryReportChart2
    Left = 208
    Top = 328
  end
end
