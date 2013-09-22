inherited frmReviewTrainingPlan: TfrmReviewTrainingPlan
  Left = 222
  Top = 232
  Width = 778
  Height = 480
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pageMain: TElPageControl [0]
    Left = 143
    Top = 0
    Width = 627
    Height = 427
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
    TabPosition = etpRight
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabSelect
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
    object tabSelect: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'Xem danh s'#225'ch qu'#225' h'#7841'n '#273#224'o t'#7841'o'
      object dxlcMain: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 604
        Height = 427
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxDept: TdxPopupEdit
          Left = 134
          Top = 28
          Width = 211
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnChange = dxDeptChange
          OnCloseUp = dxDeptCloseUp
          OnInitPopup = dxDeptInitPopup
        end
        object dxViewAll: TdxCheckEdit
          Left = 430
          Top = 28
          Width = 22
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          StyleController = dmMain.StyleController
        end
        object ElPopupButton1: TElPopupButton
          Left = 453
          Top = 28
          Width = 87
          Height = 25
          Cursor = crDefault
          ImageIndex = 20
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Xem d'#7919' li'#7879'u'
          TabOrder = 5
          Color = 15466238
          ParentColor = False
          Action = acXem
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxAtDate: TdxDateEdit
          Left = 284
          Top = 74
          Width = 80
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 2
          StyleController = dmMain.StyleController
          Date = -700000.000000000000000000
        end
        object dxClass: TdxPopupEdit
          Left = 134
          Top = 51
          Width = 211
          Enabled = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 7
          StyleController = dmMain.StyleController
          OnChange = dxClassChange
          OnCloseUp = dxClassCloseUp
          OnInitPopup = dxClassInitPopup
        end
        object dxSelectAll: TdxCheckEdit
          Left = 430
          Top = 51
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          StyleController = dmMain.StyleController
          OnChange = dxSelectAllChange
          State = cbsChecked
        end
        object dxFromDate: TdxDateEdit
          Left = 134
          Top = 74
          Width = 80
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 1
          StyleController = dmMain.StyleController
          Date = -700000.000000000000000000
        end
        object gridData: TdxDBGrid
          Left = 14
          Top = 130
          Width = 730
          Height = 285
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KEY_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 6
          OnMouseUp = gridDataMouseUp
          DataSource = dsData
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridDataEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object gridDataFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 169
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridDataDEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            DisableEditor = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            GroupIndex = 0
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
          end
          object gridDataTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c danh'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c danh'
          end
          object gridDataASSIGNED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y b'#7893' nhi'#7879'm'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ASSIGNED_DATE'
            Caption_UTF7 = 'Ng+AOA-y b+HtU nhi+Hsc-m'
          end
          object gridDataCOURSE_CODE: TdxDBGridColumn
            Caption = 'M'#227' ch'#432#417'ng tr'#236'nh'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COURSE_CODE'
            Caption_UTF7 = 'M+AOM ch+AbABoQ-ng tr+AOw-nh'
          end
          object gridDataCOURSE_NAME: TdxDBGridColumn
            Caption = 'Ch'#432#417'ng tr'#236'nh '#272'T'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COURSE_NAME'
            Caption_UTF7 = 'Ch+AbABoQ-ng tr+AOw-nh +ARA-T'
          end
          object gridDataCLASS_CODE: TdxDBGridColumn
            Caption = 'M'#227' l'#7899'p'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLASS_CODE'
            Caption_UTF7 = 'M+AOM l+Hts-p'
          end
          object gridDataCLASS_NAME: TdxDBGridColumn
            Caption = 'L'#7899'p '#273#224'o t'#7841'o'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLASS_NAME'
            Caption_UTF7 = 'L+Hts-p +AREA4A-o t+HqE-o'
          end
          object gridDataTIME_PERIOD: TdxDBGridColumn
            Caption = 'Gi'#7899'i h'#7841'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIME_PERIOD'
            Caption_UTF7 = 'Gi+Hts-i h+HqE-n'
          end
          object gridDataTIME_UNIT: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = #272#417'n v'#7883
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 16
            Visible = False
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIME_UNIT'
            Descriptions.WideStrings = (
              'ng'#224'y'
              'tu'#7847'n'
              'th'#225'ng'
              'n'#259'm')
            ShowDescription = True
            Values.WideStrings = (
              '1'
              '7'
              '30'
              '365')
            Caption_UTF7 = '+ARABoQ-n v+Hss'
          end
          object gridDataEXPIRED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y h'#7871't h'#7841'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EXPIRED_DATE'
            Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n'
          end
          object gridDataOVER_DUE: TdxDBGridColumn
            Caption = 'S'#7889' ng'#224'y tr'#7875
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OVER_DUE'
            Caption_UTF7 = 'S+HtE ng+AOA-y tr+HsM'
          end
          object gridDataSELECTED: TdxDBGridCheckColumn
            Alignment = taCenter
            Caption = 'Ch'#7885'n'
            HeaderAlignment = taCenter
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SELECTED'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Ch+Hs0-n'
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup2: TdxLayoutGroup
            Caption = '* T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
            LayoutDirection = ldHorizontal
            object dxlcMainGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxlcMainItem2: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                Caption = 'Ch'#7885'n '#273#417'n v'#7883' - ph'#242'ng ban'
                Control = dxDept
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem7: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                Caption = 'L'#7885'c theo l'#7899'p '#273#224'o t'#7841'o'
                Control = dxClass
                ControlOptions.ShowBorder = False
              end
              object dxlcMainGroup1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxlcMainItem10: TdxLayoutItem
                  Caption = 'Ch'#7885'n xem t'#7915' ng'#224'y'
                  Control = dxFromDate
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem5: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'T'#237'nh '#273#7871'n ng'#224'y'
                  Control = dxAtDate
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxlcMainGroup4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainGroup6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxlcMainItem3: TdxLayoutItem
                  AutoAligns = []
                  Caption = 'Xem c'#7845'p d'#432#7899'i'
                  Control = dxViewAll
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem8: TdxLayoutItem
                  Caption = 'Ch'#7885'n t'#7845't c'#7843
                  Control = dxSelectAll
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcMainItem4: TdxLayoutItem
                Caption = 'ElPopupButton1'
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxlcMainGroup2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = '* Danh s'#225'ch nh'#226'n vi'#234'n c'#7847'n '#273#224'o t'#7841'o'
            object dxlcMainItem6: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'gridData'
              ShowCaption = False
              Control = gridData
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabPlan: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'Ph'#225'c th'#7843'o k'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 604
        Height = 427
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object gridClass: TdxDBGrid
          Left = 14
          Top = 28
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'RecID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsClass
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridClassCLASS_CODE: TdxDBGridColumn
            Caption = 'M'#227' l'#7899'p'
            HeaderAlignment = taCenter
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLASS_CODE'
            Caption_UTF7 = 'M+AOM l+Hts-p'
          end
          object gridClassCLASS_CONTENT: TdxDBGridColumn
            Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            Width = 161
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLASS_CONTENT'
            Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
          end
          object gridClassSTART_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
            HeaderAlignment = taCenter
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'START_DATE'
            Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
          end
          object gridClassEND_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y k'#7871't th'#250'c'
            HeaderAlignment = taCenter
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'END_DATE'
            Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
          end
          object gridClassSTUDENT_COUNT: TdxDBGridSpinColumn
            Caption = 'S'#7889' l'#432#7907'ng '
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STUDENT_COUNT'
            Caption_UTF7 = 'S+HtE l+AbAe4w-ng '
          end
          object gridClassTEACHER: TdxDBGridColumn
            Caption = 'Gi'#225'o vi'#234'n '#273#7913'ng l'#7899'p'
            HeaderAlignment = taCenter
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TEACHER'
            Caption_UTF7 = 'Gi+AOE-o vi+AOo-n +AREe6Q-ng l+Hts-p'
          end
        end
        object gridDetail: TdxDBGrid
          Left = 14
          Top = 190
          Width = 250
          Height = 129
          Bands = <
            item
              Fixed = bfLeft
              Width = 226
            end
            item
              Width = 323
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'RecID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 1
          DataSource = dsTrainee
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridDetailEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object gridDetailFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 125
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridDetailDEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 136
            BandIndex = 1
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss'
          end
          object gridDetailTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c danh'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 131
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c danh'
          end
          object gridDetailSTART_DATE: TdxDBGridDateColumn
            Caption = 'B'#7855't '#273#7847'u'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 1
            RowIndex = 0
            FieldName = 'START_DATE'
            Caption_UTF7 = 'B+Hq8-t +AREepw-u'
          end
          object gridDetailEND_DATE: TdxDBGridDateColumn
            Caption = 'K'#7871't th'#250'c'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 69
            BandIndex = 1
            RowIndex = 0
            FieldName = 'END_DATE'
            Caption_UTF7 = 'K+Hr8-t th+APo-c'
          end
          object gridDetailCLASS_CODE: TdxDBGridColumn
            Caption = 'M'#227' l'#7899'p'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 65
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CLASS_CODE'
            Caption_UTF7 = 'M+AOM l+Hts-p'
          end
          object gridDetailSELECTED: TdxDBGridCheckColumn
            Caption = '[X]'
            HeaderAlignment = taCenter
            Width = 25
            BandIndex = 1
            RowIndex = 0
            FieldName = 'SELECTED'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object pageControl: TElPageControl
          Left = 14
          Top = 395
          Width = 576
          Height = 23
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = True
          Multiline = False
          OnChange = acSelectClassExecute
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
          ActivePage = ElTabSheet1
          FlatTabBorderColor = clBtnShadow
          DraggablePages = False
          ActiveTabFont.Charset = DEFAULT_CHARSET
          ActiveTabFont.Color = clWindowText
          ActiveTabFont.Height = -11
          ActiveTabFont.Name = 'MS Sans Serif'
          ActiveTabFont.Style = []
          TabCursor = crDefault
          ParentColor = False
          TabOrder = 5
          object ElTabSheet1: TElTabSheet
            PageControl = pageControl
            ImageIndex = -1
            TabVisible = True
            Caption = 'ElTabSheet1'
          end
          object ElTabSheet2: TElTabSheet
            PageControl = pageControl
            ImageIndex = -1
            TabVisible = True
            Caption = 'ElTabSheet2'
            Visible = False
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            Caption = '* Danh s'#225'ch l'#7899'p d'#7921' ki'#7871'n '#273#224'o t'#7841'o'
            object dxLayoutControl1Item1: TdxLayoutItem
              ShowCaption = False
              Control = gridClass
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = '* Danh s'#225'ch h'#7885'c vi'#234'n tham gia t'#7915'ng l'#7899'p '
            object dxLayoutControl1Item2: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridDetail
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Caption = 'ElPageControl1'
              ShowCaption = False
              Control = pageControl
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  inherited sbMain: TElStatusBar
    Top = 427
    Width = 770
  end
  object dxsidebarMenu: TdxSideBar [2]
    Left = 0
    Top = 0
    Width = 143
    Height = 427
    BkGround.BeginColor = 14743778
    BkGround.EndColor = 13693895
    BkGround.FillStyle = bfsHorz
    BkGround.Step = 1
    Color = 10277075
    CanSelected = True
    GroupFont.Charset = ANSI_CHARSET
    GroupFont.Color = clBlue
    GroupFont.Height = -11
    GroupFont.Name = 'Tahoma'
    GroupFont.Style = [fsBold]
    Groups = <
      item
        Caption = 'K'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
        Index = 0
        IconType = dxsgLargeIcon
        Items = <
          item
            Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n qu'#225' h'#7841'n '#273#224'o t'#7841'o'
            CustomData = 'DSQH'
            Index = 0
            IsDefault = True
            LargeImage = 15
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Ph'#225'c th'#7843'o k'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
            CustomData = 'PTKH'
            Index = 1
            IsDefault = True
            LargeImage = 10
            SmallImage = -1
            Tag = 1
          end
          item
            Caption = 'X'#225'c nh'#7853'n ph'#432#417'ng '#225'n '#273#224'o t'#7841'o'
            Index = 2
            IsDefault = True
            LargeImage = 11
            SmallImage = -1
            Tag = 2
          end>
      end>
    ActiveGroupIndex = 0
    GroupHeightOffSet = 3
    ItemFont.Charset = ANSI_CHARSET
    ItemFont.Color = 22784
    ItemFont.Height = -13
    ItemFont.Name = 'Tahoma'
    ItemFont.Style = []
    LargeImages = imgLargeIcon
    ScrollDelay = 300
    SpaceHeight = 7
    TransparentImages = True
    ShowGroups = True
    StoreInRegistry = False
    OnItemClick = dxsidebarMenuItemClick
  end
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Ph'#225'c th'#7843'o k'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 680
  end
  object imgLargeIcon: TImageList
    Height = 32
    Width = 32
    Left = 112
    Top = 3
    Bitmap = {
      494C010110001300040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000A000000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFDFDFDFFFA8A7
      A7FF93908FFF8F8B8BFF8F8D8CFF908D8DFF918E8EFF918F8FFF939090FF9391
      91FF949292FF949393FF858595FF858596FF878796FF888795FF949393FF9492
      92FF939191FF939090FF92908FFF918F8EFF908E8DFF8F8D8DFF908C8CFF9592
      92FFB6B6B6FFEBEBEBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFBFBFBFFF6F6F6FFF0F0F0FFEDEDEDFFEDEDEDFFEFEFEFFFF5F5F5FFFAFA
      FAFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E9E9FF9B9493FFC7B2
      AFFFC1AAA6FFC6B0ACFFCCB7B4FFD2BEBCFFD7C5C4FFDDCCCBFFE3D3D2FFE8DA
      D9FFEDE0DFFFEFE3E3FF7873F3FF6C6CFFFF7171FFFF8883F3FFF0E4E3FFEEE1
      E1FFE9DBDAFFE4D5D4FFDECECDFFD9C7C5FFD3C0BEFFCDB9B6FFC8B2AEFFC2AB
      A7FFB19C99FF9B9795FFF6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEEEEEFFE1E1E1FFE0E0
      E0FF728698FFB8734AFFBF834FFFC79153FFCE9E56FFD2A758FFD3AC5AFFCDAA
      59FFBFA255FFBCA154FFB8A153FFB7A053FFB39E52FFB29D51FFB19A50FFAE96
      4FFFAE944EFFAE924CFFAE8F4BFFAE8C49FFAB8748FFA87E46FFA47545FF9F6A
      42FF9A5E40FF97523FFF967C79FF000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF6F6F6FFE0E0E0FFC2C2
      C2FFA6A4A2FF958F86FF958A7AFF968977FF968B78FF968C7CFF959087FFA4A2
      9FFFBFBFBFFFDDDDDDFFF4F4F4FFFEFEFEFF0000000000000000000000000000
      00000000000000000000000000000000000000000000DAD9D9FFCDB9B6FFBDA5
      A0FFBFA7A3FFC5AEAAFFCAB5B2FFD0BCBAFFD5C3C1FFDBCAC8FFE0D0CFFFE5D6
      D5FFEADCDCFFEEE1E1FF837DF1FF5F5FFFFF5F5FFFFF8881F0FFEEE1E1FFEBDD
      DCFFE6D7D7FFE1D2D0FFDCCBCAFFD7C5C3FFD1BEBCFFCCB7B4FFC6B0ADFFC0A9
      A5FFBAA29DFFB09D99FFF4F4F4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000827CEFFF5E5EFDFF5E5EFDFF8780EEFFECDFDFFFE9DB
      DAFFE4D5D5FFDFD0CEFFDAC9C8FFD5C3C1FFCFBDBBFFCAB6B3FFC4AFACFFBEA8
      A4FFB9A19CFF000000000000000000000000FDFDFDFFA8A8A8FFA8A8A8FFA8A8
      A8FF91969AFFA19891FFA1A1A1FFA1A1A1FF9C9CA2FFA1A1A1FFA1A1A1FF9797
      97FF8B8B8BFF939393FF959595FF959595FF969696FF969696FF979797FF9797
      97FF979797FF979797FF979797FF969696FF969696FF969696FF959595FF9494
      94FF949494FF888787FF635550FF000000000000000000000000000000000000
      0000000000000000000000000000F3F3F3FFCDCDCDFF9B948EFF9B7B5EFFC08A
      53FFDD9E57FFDFA45EFFE0AA64FFE2AF6AFFE3B26EFFE3B56FFFE3B670FFE3B7
      70FFC9A56BFFA18B6BFF99938AFFC7C7C7FFF0F0F0FFFEFEFEFF000000000000
      00000000000000000000000000000000000000000000EEEEEEFFCAB6B3FFBFA7
      A3FFBDA5A0FFC3ACA8FFC8B3B0FFCEBAB7FFD3C0BEFFD9C7C5FFDECECCFFE3D4
      D3FFE7D9D9FFEBDEDEFF9F98EDFF7171FFFF7474FFFFAFA8EDFFEDE1E1FFE9DC
      DBFFE3D4D3FFDECECCFFDAC8C6FFD4C2C0FFCFBBB9FFCAB4B1FFC4AEAAFFBFA7
      A2FFB9A09BFFA29592FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CBCBFF888181FF47446AFF333372FF343472FF4E4B6AFF6A6565FF6862
      62FF797D86FF80858EFF686466FF5F5756FF5D5453FF5A504FFF584E4CFF554B
      48FF534845FF58514FFFE1E1E1FF00000000FCFCFCFFB6B6B6FFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFF84807EFFFDFDFDFF0000000000000000000000000000
      000000000000FBFBFBFFD9D9D9FF998F87FFAD7145FFD8813CFFDB8C46FFE299
      56FFEAA467FFF1AC77FFF8B589FFFCBD97FFFCBD96FFF7B587FFF1AD77FFEBAA
      6CFFE5A864FFE1A962FFDFA861FFBA905DFF978D82FFD2D2D2FFF9F9F9FF0000
      00000000000000000000000000000000000000000000F6F6F6FFB8A9A7FFC1A9
      A5FFBBA29EFFC1A9A5FFC6B0ADFFCCB7B4FFD2BFBCFFD7C6C4FFDCCCCAFFE1D2
      D0FFE5D7D6FFE8DBDAFFB3ABE7FF7B7BFFFF7D7DFFFFC2B9E7FFEBDFDFFFE9DE
      DDFFE7DBDAFFE1D4D2FFD8C7C5FFD2BEBCFFCDB8B5FFC7B2AEFFC2ABA7FFBCA4
      A0FFB79E98FFA59D9CFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000837B7BFF020202FF030303FF030303FF030303FF030303FF070707FF0A0A
      0AFF73ACDCFF96CFFFFF48647AFF030303FF030303FF030303FF030303FF0303
      03FF030303FF030303FF727272FF00000000FCFCFCFFBBBBBBFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFF908E8DFFFEFEFEFF0000000000000000000000000000
      0000F6F6F6FFBDBBBBFF9D6B4CFFD46C27FFD87C33FFDF9044FFEAAA66FFF4C7
      8EFFFADDABFFFDEDC0FFFEF5CBFFFEF7CFFFFEF7CFFFFEF6CCFFFDEEC3FFFADF
      AEFFF4C990FFEAAD68FFE0994BFFDD994DFFDD9750FFA8805AFFB4B2B1FFF3F3
      F3FF0000000000000000000000000000000000000000FBFBFBFFAFA5A3FFC2AC
      A7FFB9A09BFFBFA8A4FFC5B0ACFFCBB8B4FFD1BEBCFFD6C5C2FFDBCAC8FFDFCF
      CEFFE2D4D3FFE5D8D7FFC4B9E2FF8484FFFF8484FFFFD3C9E2FFE9DDDCFFE7DB
      DAFFE5DAD9FFE4D8D6FFE2D5D3FFD9C9C7FFCBB6B3FFC5AEABFFBFA8A3FFBAA1
      9CFFB49B96FFB4B0AFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ACA1A1FF020202FF030303FF040404FF0A0A0AFF161616FF232323FF1D21
      23FF87C5F6FF97D2FFFF76A3C6FF020202FF030303FF030303FF030303FF0303
      03FF030303FF030303FFB8B8B8FF00000000FBFBFBFFB6B9B5FFF7F7F7FFEFEF
      EFFFEBEBEBFFEFEFEFFFEEEEEEFFECECECFFEFEFEFFFEDEDEDFFEFEFEFFFF1F1
      F1FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FF9B9A9AFFFEFEFEFF000000000000000000000000F6F6
      F6FFB2AEACFFB25B29FFD3631CFFD8812FFFE7AD60FFF7D699FFFEE5ACFFFEE4
      ABFFFEE8B1FFFEEDBCFFFEF5C9FFFEFBD7FFFEFAD4FFFEF3C6FFFEECB8FFFEE6
      AEFFFEE3A9FFFEE4AAFFF9DA9EFFE9B267FFDA8E3BFFDA8A41FFC27D45FFA7A1
      9DFFF2F2F2FF00000000000000000000000000000000FEFEFEFFAAA4A3FFC6B0
      ACFFB9A19CFFBFA8A4FFC5B0ACFFCBB7B4FFD0BDBBFFD5C4C1FFD9C9C7FFDDCE
      CCFFE0D2D0FFE3D5D4FFD2C7DCFF8B8BFFFF8A8AFFFFE1D6DBFFE6DADAFFE5DA
      D9FFE4D9D7FFE3D7D5FFE1D5D4FFE0D3D2FFDBCECBFFC7B2AEFFBDA4A0FFB89F
      9AFFB29993FFCDCCCCFF00000000000000000000000000000000A9A3A2FFC2AD
      A9FFB59D98FFBBA4A0FFC0ACA8FFC6B3B0FFCBB9B7FFD0BFBCFFD4C4C2FFD8C9
      C7FFDACCCAFF262323FF0D0D0DFF1A1A1AFF272727FF323232FF3D3D3DFF2F3F
      4AFF95D1FDFF99D3FFFF98D2FCFF121619FF101010FF101010FF101010FF1010
      10FF101010FF2F2E2EFFFEFEFEFF00000000FCFCFCFFB9BCB9FFF6F6F6FFD5D5
      D5FFD2D2D2FFD3D3D3FFD1D1D1FFD0D0D0FFCDCDCDFFD2D2D2FFCCCCCCFFDFDF
      DFFFD9D9D9FFDCDCDCFFDBDBDBFFDEDEDEFFE1E1E1FFE0E0E0FFD9D9D9FFE4E4
      E4FFE1E1E1FFDADADAFFDCDCDCFFE0E0E0FFDCDCDCFFE1E1E1FFD8D8D8FFE7E7
      E7FFF8F8F8FFF8F8F8FFA1A1A1FFFEFEFEFF0000000000000000FAFAFAFFB8B4
      B3FFB5501CFFD15C14FFDE903FFFF6CC87FFFED68FFFFED185FFFED58DFFFEDD
      9CFFFEE4AAFFFEECB9FFFEF3C7FFFEF8D1FFFEF7D0FFFEF1C4FFFEEAB5FFFEE3
      A7FFFEDB99FFFED48AFFFECE80FFFED48CFFF8D08DFFE09948FFD87E34FFC674
      39FFADA7A4FFF7F7F7FF00000000000000000000000000000000B4B0AFFFC9B5
      B1FFBAA39EFFC0AAA5FFC5B0ADFFCAB7B4FFCFBDBAFFD4C3C0FFD8C8C6FFDBCC
      CAFFDED0CEFFE0D3D2FFDED1D5FF9090FFFF9594FCFFE5D9D8FFE5D9D8FFE4D9
      D7FFE4D8D6FFE2D7D5FFE1D5D4FFE0D4D3FFDFD3D1FFDDD0CEFFC6B2AEFFB9A2
      9CFFAC958EFFE4E4E4FF000000000000000000000000F2F2F2FF7A7675FF8274
      72FF7D6E6BFF817371FF847876FF897E7DFF8E8382FF918887FF938989FF948B
      8AFF958C8BFF807A7AFF2A2929FF363636FF404040FF4B4B4BFF555555FF4663
      76FF9AD4FFFF9BD5FFFF9BD6FFFF3F525FFF393939FF393939FF393939FF3939
      39FF333232FFAEAEAEFF0000000000000000FCFCFCFFBBBDBBFFF5F5F5FFDFDF
      DFFFDCDCDCFFE2E2E2FFDCDCDCFFE2E2E2FFDBDBDBFFE2E2E2FFDADADAFFE0E0
      E0FFD8D8D8FFDCDCDCFFE0E0E0FFD5D5D5FFD8D8D8FFDDDDDDFFE0E0E0FFDADA
      DAFFDBDBDBFFD1D1D1FFE0E0E0FFDBDBDBFFDFDFDFFFD5D5D5FFDBDBDBFFD4D4
      D4FFF3F3F3FFF8F8F8FFA7A7A7FFFEFEFEFF00000000FEFEFEFFD3D3D3FFAC51
      28FFCF520AFFE39C4DFFFCCE85FFFEC26DFFFEC56EFFFECC7BFFFED48AFFFEDB
      98FFFEE2A6FFFEE8B2FFFEEEBDFFFEF2C4FFFEF1C3FFFEEDBBFFFEE7B0FFFEE0
      A3FFFED995FFFED287FFFECA78FFFEC36CFFFEBF69FFFDCD83FFE7A658FFD574
      29FFBC6A34FFC7C5C5FFFDFDFDFF000000000000000000000000AAA9A9FFCBB7
      B4FFBBA6A0FFC0ABA6FFC6B1ADFFCAB7B4FFCFBDBAFFD3C2BFFFD6C7C4FFDACB
      C9FFDDCECCFFDFD1CFFFE0D4D2FF9B9AFCFFA3A1F8FFE3D8D6FFE4D8D6FFE3D8
      D6FFE3D8D6FFE2D7D5FFE1D6D4FFE0D5D3FFDFD4D2FFE0D5D3FFE0D6D4FFBFAB
      A6FF9A7A6BFFC2C0C0FF000000000000000000000000C1BEBEFFC6B0ADFFBFA7
      A3FFC7B2AEFFCFBBB9FFD7C5C3FFDFCECDFFE6D8D7FFEDE0E0FFF0E4E4FFF0E4
      E4FFF0E4E4FFEFE3E3FFDACDCDFF9A908FFF6B6665FF555454FF626262FF628D
      AAFF9CD7FFFF9DD7FFFF9ED8FFFF5E8197FF575757FF4C4C4CFF615E5DFF7B6F
      6CFF907264FF000000000000000000000000FBFBFBFFB3B2B2FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FF999999FFFDFDFDFF00000000F2F2F2FF9D7563FFCE49
      04FFE49A4BFFFDC172FFFEB45DFFFEBB64FFFABB65FFF1B061FFF2B86FFFF3C1
      7BFFF4C987FFF4D193FFF5D79CFFF5DBA2FFF6DDA4FFF6DCA1FFF7D99CFFF6D5
      93FFF6CF89FFF5C87DFFF5C171FFF8BC67FFFEBA62FFFEB25BFFFEBD6DFFE9A7
      58FFD3671EFFA17154FFECECECFF000000000000000000000000997261FFAF87
      77FFC4B1ADFFC0ADA8FFC5B2AEFFCAB7B4FFCEBDBAFFD2C2BFFFD5C6C3FFD9CA
      C8FFDBCDCBFFDED0CEFFDFD3D1FFA9A7F8FFAEABF3FFE2D7D5FFE3D7D5FFE3D8
      D6FFE3D8D6FFE2D7D5FFE1D6D4FFE1D6D4FFE1D6D4FFE5DDDBFFE5DDDBFFCEC0
      BCFF98572DFF00000000000000000000000000000000C0BFBEFFC5AFABFFBDA5
      A0FFC5AEABFFCCB8B5FFD4C1BFFFDBCAC8FFE2D3D2FFE9DCDBFFEEE3E2FFF1E7
      E7FFF2E8E8FFEFE5E4FFE9DCDCFFAFB2BBFF2C6185FF18577FFF185478FF73B1
      D7FF99D5FBFF95D1F8FFB0E0FEFF77AED0FF39505DFFA7A2A2FFE1DAD8FF0000
      000000000000000000000000000000000000E8E8E8FFA39E9BFFF8F8F8FFF7F7
      F7FFF5F5F5FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FF9E9E9DFFEEEEEEFF00000000CAC7C7FFC5450AFFDD83
      35FFFDB664FFFEAA53FFFEB15BFFFBB25CFFEDBC99FFF8EAE0FFF9EEE5FFF9EF
      E6FFFAF1E8FFFAF2E9FFFAF3EAFFFAF4EBFFFAF5ECFFFBF6EDFFFBF6EDFFFBF6
      EDFFFBF5EDFFFAF4ECFFFAF4EAFFF5E3CFFFF7B66BFFFEB059FFFEA852FFFEB1
      5FFFE29344FFCE5613FFBAB5B2FFFEFEFEFF000000000000000000000000B770
      33FFCAB4ACFFC3B1ACFFC6B4AFFFCAB9B5FFCEBDBAFFD2C2BFFFD5C6C3FFD8C9
      C7FFDACDCAFFDDCFCDFFDED2D0FFA6A3F3FFB0ACEEFFE1D6D4FFE2D7D5FFE2D8
      D6FFE2D8D6FFE2D8D6FFE2D8D6FFE2D8D6FFE7E0DEFFE9E1E0FFDED4D1FFAD8D
      76FFDA8E42FF00000000000000000000000000000000B3B1B1FFC7B1ADFFBAA1
      9CFFC2AAA6FFC9B3B0FFD0BCB9FFD6C4C2FFDDCDCBFFE4D5D4FFE8DCDBFFECE0
      DFFFEDE3E2FFEDE4E3FFC9CDD4FF7293AAFF175A82FF145A84FF135C87FF589B
      C7FF87C1F0FF8FC6F3FF72ACD6FF4884ACFF145E89FF1C688FFF85898DFFAC8C
      76FF00000000000000000000000000000000B8B7B7FF979C99FFF3F3F3FFD0D0
      D0FFD0D0D0FFD1D1D1FFCCCCCCFFD2D2D2FFEAEAEAFFE8E8E8FFECECECFFE7E7
      E7FFEBEBEBFFE8E8E8FFECECECFFEDEDEDFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7
      E7FFEAEAEAFFEAEAEAFFE6E6E6FFE5E5E5FFEAEAEAFFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFA8A9A8FFC7C7C7FFFAFAFAFFA27E6FFFD25A11FFF9AE
      5CFFFEA04BFFFEA751FFFEAE58FFFCBE75FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDD6A9FFFEAD56FFFEA64FFFFE9F
      49FFFCAB59FFD5691FFFA27057FFF5F5F5FF0000000000000000000000000000
      0000E39046FFB8875DFFC1A494FFC8B6B2FFCDBDB9FFD2C2BFFFD4C6C3FFD8C9
      C7FFDACDCAFFDDD0CEFFDBD3DEFF9D9DFBFFA3A2F8FFE7DFDFFFE2D7D5FFE2D8
      D6FFE4DAD8FFE6DEDCFFE8E1DFFFE5DDDBFFD5C7C3FFBB9B84FFB9814CFFF398
      46FF00000000000000000000000000000000000000009F7C6DFFC6ADA8FFB69D
      98FFBEA6A1FFC5AEABFFCBB6B3FFD1BEBBFFD8C6C4FFDECECDFFE3D5D4FFE6DA
      D9FFE8DDDCFFE9DEDDFF58829EFF236389FF135C86FF135E89FF28709BFF97C9
      F3FF9BD1FFFF94CEFFFF97CEFDFF85BBE3FF1B6590FF165D88FF1A6A8FFFDE8B
      40FF000000000000000000000000000000007D716DFF9EA3A8FFF4F4F4FFD3D3
      D3FFDDDDDDFFD0D0D0FFD4D4D4FFCCCCCCFFD3D3D3FFCFCFCFFFD3D3D3FFD6D6
      D6FFDCDCDCFFD0D0D0FFD1D1D1FFD2D2D2FFD7D7D7FFD4D4D4FFD3D3D3FFC9C9
      C9FFDADADAFFCACACAFFCECECEFFC9C9C9FFD5D5D5FFD2D2D2FFDEDEDEFFE0E0
      E0FFF8F8F8FFF8F8F8FFA9AAAAFF8D8783FFEFEFEFFFAF562EFFE89040FFFE97
      42FFFE9D48FFFEA44EFFFEAB54FFFEBF79FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFED6ABFFFEAA53FFFEA34DFFFE9C
      47FFFE9540FFED9846FFBC4D18FFE6E6E6FF0000000000000000000000000000
      00000000000000000000FDAA54FFE8AE6FFFC4C1C0FFB8B0AEFFC7B8B5FFD4C4
      C2FFE0D6D3FFF9F7F6FFFEFEFEFFD9D6F5FFE3E1F6FFFFFFFFFFF7F4F4FFECE5
      E4FFE1D7D5FFD0C2BFFFB4ABA9FFBEBAB9FFECC69FFF00000000000000000000
      0000000000000000000000000000000000000000000000000000BC9E8DFFB49B
      95FFB9A09CFFC0A8A4FFC6AFACFFCBB6B3FFD2BFBCFFD8C7C5FFDDCECCFFE1D3
      D1FFE3D6D5FFB4B7BFFF728BA1FF456F8FFF135D88FF12628DFF8EC0E5FF9FD3
      FFFF96CFFFFF96D0FFFF97D0FFFF99D2FFFF56A0C9FF126F9DFF11719FFFC67F
      3FFF0000000000000000000000000000000059483BFFA7A8B5FFF7F7F7FFDEDE
      DEFFE5E5E5FFDFDFDFFFE1E1E1FFE5E5E5FFDCDCDCFFDDDDDDFFDCDCDCFFE4E4
      E4FFE2E2E2FFDCDCDCFFDDDDDDFFD8D8D8FFE1E1E1FFE6E6E6FFDCDCDCFFD5D5
      D5FFD8D8D8FFDEDEDEFFD9D9D9FFD5D5D5FFD5D5D5FFD8D8D8FFD4D4D4FFD7D7
      D7FFE6E6E6FFF8F8F8FFA9A9ABFF61574AFFE3E3E3FFCB5110FFFB9945FFFE93
      3FFFFE9A45FFFEA14BFFFEA751FFFEBC75FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFED4A9FFFEA64FFFFE9F4AFFFE98
      43FFFE923EFFFD9642FFD35912FFD0CDCCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFD5D4
      D4FFB5BDC3FFC8DDEAFFC7DCEAFFC3D6E2FFC8DBE7FFD4E5F0FFCADFEBFFADAC
      ACFFD4D3D3FFFBFBFBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B58560FFB59D
      98FFB49B96FFBBA29DFFC0A9A5FFC5AFABFFCCB7B4FFD2C0BDFFD7C7C4FFDBCC
      CAFFDED0CEFFE0D4D2FFE2D6D4FFBBBEC5FF23668EFF136692FFA9D6FAFF97D1
      FFFF98D2FFFF9FD5FFFFACDBFFFFA8D9FFFF6FB4DEFF0F76A5FF0F7BADFFCA7E
      3CFF00000000000000000000000000000000393224FF9F9FB1FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFAAAAADFF474732FFD2CECDFFDE691EFFFE8936FFFE8F
      3CFFFE9641FFFE9C48FFFEA34DFFFEB872FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFED2A7FFFEA14CFFFE9B46FFFE95
      40FFFE8E3AFFFE8834FFE37225FFBEB5B1FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F7FF99B2C2FF8CC9F1FF79B7E5FF7CB8E6FF7AB8E4FF89C7EFFFA1DBFEFFBABE
      C1FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E77E33FFC6A7
      9AFFB09791FFB59C96FFBAA19DFFBFA7A3FFC5AFACFFCCB8B5FFD1BFBDFFD6C5
      C3FFD9CAC8FFDCCECCFFDED2D0FFE0D4D3FF4986A7FF277CA9FFB0DDFFFF99D3
      FFFF9FD6FFFFADDCFFFFBBE2FFFFC9E8FFFFA1D1EFFF0F79AAFF0D82B5FFE789
      3CFF000000000000000000000000000000002D2E23FFA1A1B7FFF7F7F7FFF3F3
      F3FFEFEFEFFFF1F1F1FFF2F2F2FFF0F0F0FFF3F3F3FFF1F1F1FFF2F2F2FFF3F3
      F3FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFACACAFFF35442CFFCBC5C3FFE97123FFFE8532FFFE8C
      38FFFE923EFFFE9843FFFE9E49FFFEB46EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFECFA5FFFE9D48FFFE9742FFFE91
      3DFFFE8A37FFFE8431FFEF7727FFB7ABA6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFFCFCF
      CFFF76A1BFFF8FC7F6FF9CD1FFFF9AD0FFFF9ED2FFFF9BCEF7FF84C0EAFF9EA5
      AAFFF5F5F5FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F185
      36FFC57E49FFB88A6BFFBFA094FFB9A09BFFBFA8A3FFC9B5B1FFE6DDDBFFD2C2
      BFFFE4D9D7FFE2D7D5FFDED2D0FFE3DAD8FF6B99B2FF3D96C2FFACDCFFFF9DD5
      FEFFACDCFFFFBAE2FFFFC8E8FFFFD5EEFFFFBEDFF3FF0E7CAEFF227FA3FFFD90
      3DFF000000000000000000000000000000002D3023FFA2A2BDFFF6F6F6FFD6D6
      D6FFD2D2D2FFD4D4D4FFD2D2D2FFD2D2D2FFD0D0D0FFD2D2D2FFCDCDCDFFE0E0
      E0FFDCDCDCFFDFDFDFFFDEDEDEFFDFDFDFFFE3E3E3FFE4E4E4FFDCDCDCFFE3E3
      E3FFE3E3E3FFDCDCDCFFDDDDDDFFE2E2E2FFDDDDDDFFE0E0E0FFDBDBDBFFE8E8
      E8FFF8F8F8FFF8F8F8FFADADB1FF35452CFFCBC5C3FFF07023FFFE812FFFFE88
      34FFFE8D3AFFFE9440FFFE9F50FFFEBA7DFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFED3ADFFFE9F50FFFE933FFFFE8C
      38FFFE8633FFFE7F2DFFF67727FFB7ABA6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D9D9FF7498
      AFFFA2D2FCFFA4D4FFFF98CFFFFF94CEFFFF94CEFFFF96CFFFFFA4D5FFFF86B1
      D0FFC4C6C7FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCA370FFBCB7B6FFD3D7D9FFE0EAF1FFD5DB
      DFFFE2EBF1FFE4EDF3FFA8B3C0FF80A0BDFF5587A9FF1C84B4FF53A4D2FF4D9F
      CEFF84C1E5FFC7E8FFFFD4EEFFFFE1F3FFFFA7D2E7FF0D80B2FF567272FF0000
      0000000000000000000000000000000000002E2F21FFA3A3C2FFF5F5F5FFDFDF
      DFFFDFDFDFFFE5E5E5FFDEDEDEFFE2E2E2FFDCDCDCFFE3E3E3FFDCDCDCFFE0E0
      E0FFDADADAFFDDDDDDFFE1E1E1FFD9D9D9FFDADADAFFDEDEDEFFE1E1E1FFDCDC
      DCFFDCDCDCFFD4D4D4FFE1E1E1FFDDDDDDFFE0E0E0FFD8D8D8FFDBDBDBFFD5D5
      D5FFF4F4F4FFF8F8F8FFAEAEB1FF36442CFFCBC5C3FFF26A1CFFFE7C2BFFFE88
      39FFFE9C56FFF29355FFE6986FFFEAAD8FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF2CCBAFFE69A74FFEC8B51FFFE9B
      55FFFE8739FFFE7B2AFFF87020FFB7ABA6FF0000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFBFF9DA8B1FFB0DA
      FFFFA8D7FFFF97CFFFFF95CEFFFF95CFFFFF96CFFFFF96D0FFFF97D0FFFFA1D5
      FFFF9CA9B4FFF9F9F9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FF90B8D3FF84C0EDFF84BE
      EBFF87C2ECFF99D4F8FF80B1DBFF000000006D9FC6FF1075A3FF0F76A5FF0F79
      AAFF2186B5FFC6E7FBFFE0F3FFFFECF7FEFF4CA4CCFF0D84B6FF956B50FF0000
      0000000000000000000000000000000000002E3022FFA1A1C1FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFAFAFB3FF38442CFFD1CCCAFFF26719FFFE9555FFFEA7
      6FFFFEAB73FFF7D0B8FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF8E8E0FFFDA9
      71FFFEA76FFFFE9658FFF86D1EFFBEB3AFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FF9BB0C1FFADD9
      FFFF96D0FFFF96D0FFFF98D1FFFF9CD3FFFF9ED4FFFF9AD2FFFF98D2FFFF9AD3
      FFFF9AB4C9FFF1F1F1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFBFFA0A8AEFF91C5F0FF9FD2FFFF96CE
      FFFF9CD1FFFF98CCF5FF638DACFF9BD1FDFF90C3EBFF0E78A7FF0F79AAFF0F7B
      ACFF0E7DAFFF5AACD3FFE6F5FEFF77BEDFFF0D86B9FF188DBCFFEADBD5FF0000
      000000000000000000000000000000000000333329FFA09FB4FFE5E5E5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFF8F8F8FFB0B0B4FF464A36FFE4E3E3FFEE6115FFFE9F68FFFEAB
      77FFFEAE79FFFEE3D2FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEF8F5FFFEAE
      7BFFFEAA76FFFEA470FFF46517FFCEC7C5FF0000000000000000000000000000
      00000000000000000000000000000000000000000000ECECECFF9BB5CBFFA4D6
      FFFF99D2FFFF9ED4FFFFA3D6FFFFA7D9FFFFACDBFFFFB0DCFFFFA9DAFFFF9AD4
      FFFFA3D0F1FFE1E1E1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9DADBFFA4CDF0FFA4D5FFFF96CFFFFF95CF
      FFFF96CFFFFF97D0FFFFA0CEF5FF98C6E8FF000000003989B0FF0E7DAEFF0D7F
      B1FF0D81B3FF0D84B6FF2798C9FF0C87BBFF0C89BCFF7AA4B5FF000000000000
      0000000000000000000000000000000000004C4840FFBAB3B9FFF8F8F8FFF5F5
      F5FFEEEEEEFFF1F1F1FFF1F1F1FFF1F1F1FFEEEEEEFFF0F0F0FFEEEEEEFFEFEF
      EFFFEEEEEEFFEEEEEEFFF3F3F3FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFB2B2B6FF767369FFF5F5F5FFD76429FFFE9559FFFEAE
      7EFFFEB181FFFEBA8DFFFEE8D9FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEF2EBFFFEC39DFFFEB0
      80FFFEAD7DFFFE9B63FFE75D17FFEDEDEDFF0000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFB6B8B9FF96BEDBFFA8D9
      FFFFA5D8FFFFA9DAFFFFAEDCFFFFB2DEFFFFB6DFFFFFBBE2FFFFBEE3FFFFBAE2
      FFFF8DC4EAFF92989CFFEDEDEDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCC1C5FFACD9FFFF97D0FFFF99D2FFFF9FD5
      FFFFA2D6FFFF9BD3FFFF9FD5FFFF8BAEC8FF000000009FC4DFFF1685B6FF0D82
      B5FF0D85B7FF0C86BAFF0C89BCFF0C8ABEFF3F9CC3FFF2E7E1FF000000000000
      000000000000000000000000000000000000897E7FFFC8C0C3FFF8F8F8FFEBEB
      EBFFE2E2E2FFE9E9E9FFEBEBEBFFE4E4E4FFE2E2E2FFE5E5E5FFE2E2E2FFE3E3
      E3FFE0E0E0FFE3E3E3FFEFEFEFFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFB4B4B7FFCBCACAFFFDFDFDFFB67E64FFFE7F3AFFFEB2
      87FFFEB489FFFEB78BFFFEBA8DFFFED2B5FFFEF8F5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFCFFFEDEC9FFFEBB90FFFEB68BFFFEB4
      89FFFEB186FFFE8645FFBF704BFFFBFBFBFF0000000000000000000000000000
      000000000000000000000000000000000000F1EBE9FF577485FF91BAD6FFAEDC
      FFFFB0DDFFFFB4DFFFFFB8E1FFFFBCE3FFFFC0E4FFFFC4E6FFFFC7E8FFFFCBE9
      FFFF9BCFF2FF1A6088FF979EA2FFF8F7F6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDB98CFF948F8EFFABDAFFFFA2D6FFFFA9D9FFFFAFDC
      FFFFB5DFFFFFB9E1FFFFA8DAFFFF7494ABFFBBDEF8FF00000000AACAE0FF4D97
      B9FF1B90C1FF0C87BAFF2687AFFF89AEBCFFF7D8C3FF00000000000000000000
      000000000000000000000000000000000000D2D2D2FF9E9FA4FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFB6B7B7FFF6F6F6FF00000000D0C8C5FFF25E11FFFEAA
      7CFFFEB891FFFEBB93FFFEBC95FFFEBE97FFFEC6A1FFFEE9DBFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEBDEFFFEBE96FFFEBC94FFFEBA92FFFEB8
      90FFFEAF85FFF86317FFC2B2ABFF000000000000000000000000000000000000
      000000000000000000000000000000000000D3A587FF1C6187FF71A5C4FFB6E0
      FFFFBAE2FFFFBEE4FFFFC2E5FFFFC5E7FFFFC9E8FFFFCCE9FFFFC8E5FAFF98BE
      D7FF649CBFFF12628DFF2C6C8DFFDCCCC0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3A885FF517F9CFFB5DFFFFFB2DEFFFFB7E0FFFFBDE3
      FFFFC2E5FFFFC7E7FFFFC4E6FFFF4081ABFF7793A6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFA8A8A8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFBABABAFFFEFEFEFF00000000FCFCFCFFBC7553FFFD7C
      38FFFEBC99FFFEBF9BFFFEC19DFFFEC29EFFFEC3A0FFFEC5A1FFFED8BFFFFEF8
      F4FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEBE0FFFEC29EFFFEC09CFFFEBE9BFFFEBC
      99FFFE8446FFCA6939FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000FDC19DFF998070FF126692FF3784ACFFC0E5
      FFFFC3E6FFFFC7E8FFFFCAE9FFFFCDEAFEFFC9E6FAFF7EA8C4FF236188FF165B
      84FF25678FFF35759AFF257199FFB4ADA8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000988071FF236F99FFBCE2FDFFBFE4FFFFC4E7FFFFC9E9
      FFFFCAE7FCFF8CB4CFFF5085A8FF276C94FF25698FFF7BA3BFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF63B17EFF52D784FF52DA
      89FF52DD8EFF52E093FF52E398FF52E69DFF52E8A2FF52EBA6FF52EEABFF52F1
      B0FF52F4B4FF52F6B9FF52F9BDFF52FBC1FF52FABFFF52F7BBFF52F5B6FF52F2
      B2FF52EFADFF52ECA9FF52EAA4FF52E79FFF52E49AFF52E195FF52DE90FF52D8
      8AFF52D183FF52C87CFF92B29DFF000000000000000000000000E4E1E1FFE15E
      1EFFFE9560FFFEC3A4FFFEC5A5FFFEC6A6FFFEC7A8FFFEC8A9FFFEC9A9FFFECE
      B0FFFEEBDFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEF4
      EDFFFEF6F1FFFEFEFEFFFEFEFEFFFEECE2FFFEC6A6FFFEC4A5FFFEC3A3FFFE9F
      6FFFEB5B15FFD7D1CFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000FBC4A4FF6F7271FF116D9AFF11719FFFB0D9
      F2FFCCEAFFFFCFEBFFFFD1ECFEFFB7D8EDFF447B9EFF155982FF155E88FF1D66
      90FF31769CFF4585A9FF307EA6FFC3BAB5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000637278FF116E9BFF9DCCE8FFCBEAFFFFCFEBFEFFB3D4
      EAFF3D7599FF155C85FF1F6790FF3B7DA2FF2E79A2FF15577FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF35AA5EFF49D77EFFDDF7
      E6FFC8F3D8FFC6F4D8FFD2F7E2FF5DE8A2FFB8F6D7FFC0F8DEFFB7F8DBFFBFFA
      E1FFB4FADEFF8EFAD1FF83FCD0FFD5FEEEFF83FCD0FFB3FCDFFF7BF8C8FF00EF
      91FF00EB8AFF00E783FF00E37CFF00DF76FF00DB6FFF00D768FF00D15FFF24BB
      64FF3FC173FF84D1A0FFC0C2C1FF00000000000000000000000000000000CEC3
      BEFFED5B13FFFEA171FFFEC9AEFFFECBAFFFFECCB0FFFECDB1FFFECEB1FFFECE
      B2FFFECFB3FFFEDCC8FFFEF8F5FFFEFEFEFFFEFEFEFFFEFCFBFFFEE5D6FFFECF
      B4FFFED7C1FFFEDAC5FFFED9C5FFFED5BDFFFECAAFFFFEC9AEFFFEA97EFFF35A
      10FFC3B0A8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBC9ADFF607781FF1074A3FF0F78A8FF7EBC
      DBFFD3EDFFFFD2ECFDFFA1C6DEFF2B6A90FF155D87FF14618CFF166691FF2974
      9DFF3E83A9FF5092B5FF2E83ABFFE6C1ACFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000557685FF0F77A7FF6AB0D2FFD3EDFDFF9BC1DAFF2466
      8EFF14608BFF176893FF307AA2FF4B8FB2FF26759BFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF35A95EFF70DF98FF96E9
      B7FF00D05CFF70E6A6FFEEFCF4FF93F0C1FFF3FDF8FFA4F5D1FFDEFBEDFFD1FB
      E9FF93F8CFFFF4FEFAFFBFFCE3FFCCFDE9FFCFFDEBFFE1FDF2FF7BF7C5FF00ED
      8EFF00EA88FF00E682FF00E27BFF00DE75FF00DA6DFF00D666FF00CF5EFFF7FC
      F9FFF7F7F7FF999999FF00000000000000000000000000000000000000000000
      0000CCBFB9FFE95B18FFFE935EFFFECEB5FFFED1B9FFFED2B9FFFED2BAFFFED3
      BBFFFED3BBFFFED4BBFFFED6BFFFFEE9DDFFFEECE2FFFEDAC6FFFED4BBFFFED3
      BBFFFED3BBFFFED2BAFFFED1B9FFFED1B9FFFECFB7FFFE9D6DFFEE5A12FFC3AD
      A4FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDCDB4FF768083FF0E7AABFF0E7EAFFF55A8
      CFFFC8E4F6FF7EACC8FF1D628BFF15608BFF14648FFF136894FF20739DFF3582
      AAFF4990B5FF5C9DBFFF447F9BFFF7CBB4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000836E63FF0D80B2FF3597C4FF669ABAFF19628CFF1465
      90FF136B96FF2478A3FF418CB3FF5A9FC1FF135C80FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFF2EA256FF2BD068FFBDF1
      D1FF22D570FF2EDA7CFFADF1CCFF5EE7A2FF3BE695FF4DEBA2FFB5F7D9FF6AF2
      B8FF67F4B9FF4FF4B2FF28F3A4FF3AF5ADFF57F6B8FF59F5B7FF4EF3AFFF21ED
      99FF7BEFBCFF00E47FFF00E078FF00DD72FF00D96BFF00D564FF17D26AFFF6F6
      F6FFCDCDCDFF0000000000000000000000000000000000000000000000000000
      000000000000DDD8D7FFCE6738FFFB722FFFFEBA98FFFED7C3FFFED8C4FFFED8
      C4FFFED8C4FFFED8C5FFFED9C5FFFED9C5FFFED9C5FFFED9C5FFFED8C4FFFED8
      C4FFFED8C4FFFED8C3FFFED7C3FFFEC0A2FFFC793AFFD8612AFFD3CAC7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C89880FF1080B2FF0C85B7FF1E8B
      BCFF3C7CA2FF155F89FF14638EFF136793FF126B97FF18729FFF2D80AAFF418E
      B5FF549CBFFF549FC4FF878F90FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C36236FF416A7DFF12709DFF14638EFF136995FF126F
      9CFF1978A5FF358BB4FF509DC2FF3F98C1FF10628AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E7FF1C8E45FF00C649FF70E0
      9AFF37D87AFF02D260FF1BDA75FF00DA6DFF00DD73FF00E178FF16E689FF13E9
      8DFF00EA89FF00EC8CFF00EE8FFF00EF90FF00EE8FFF00ED8DFF00EB8AFF06E9
      88FF1BE78CFF00E27BFF00DF75FF00DB6FFF00D869FF00D462FF63DE98FFCBCB
      CBFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFAFFC0A396FFDD5C20FFFB793BFFFEAF89FFFED7
      C4FFFEDECDFFFEDECEFFFEDECEFFFEDECEFFFEDECEFFFEDECEFFFEDECEFFFEDE
      CDFFFEDAC7FFFEB490FFFC8044FFE85B19FFBF9785FFF5F5F5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DC5C20FFA06141FF0F79A9FF126C
      99FF14628DFF136692FF126B96FF126F9BFF1373A1FF247FABFF398DB6FF4D9A
      C0FF5FA7C9FF3E8AABFFEC7840FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000857C79FF136793FF126E9AFF1173A1FF1379
      A8FF2A89B5FF469BC3FF3F9DC5FF0F5D81FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B7AABFF72A08DFF7BA6
      8BFF69957BFF8DBAA1FF8EBCA3FF3F725DFF0D4764FF22529DFF4A7BA9FF6899
      AAFF7AACABFF7BADACFF7BADACFF74A6A4FF689188FF649089FF7BADABFF79AB
      ABFF6495AAFF4575A8FF1C4D98FF0C4759FF598972FF9BBFABFFD8DAD9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FFC3ADA4FFCA744DFFEC59
      13FFF97435FFFE915DFFFEA276FFFEAB84FFFEAC86FFFEA378FFFE9361FFFA78
      3BFFEE5913FFD06F43FFC1A599FFF2F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDA89FFF275B78FF1365
      91FF126A95FF126E9AFF12729FFF1176A4FF1B7EACFF318CB7FF4599C1FF57A5
      CAFF3C93B8FFA15F40FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097ACB7FF1F7AA5FF107CADFF1785
      B6FF228DBBFF14688DFF106790FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F7FFD3CAC7FFC3A99DFFB89382FFC28B72FFC68B70FFB79180FFC2A599FFCFC5
      C1FFF3F2F2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3BCC1FF1770
      9AFF12719EFF1175A3FF1178A8FF147EAEFF288BB8FF3D98C2FF429EC8FF3E90
      B3FFC6CBCEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFA0ABB1FF1568
      8EFF12719DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCD2
      D4FF548DA7FF187FAEFF0E7FB0FF1586B7FF2B93C0FF5C9CB6FFACBDC4FFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEDEDFFC1C1C1FFB1B1B1FFB0B0B0FFAEAEAEFFB0B0B0FFB0B0B0FFB0B0
      B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0
      B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFBEBEBEFFD7D7
      D7FFDADADAFFDCDCDCFFEDEDEDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000618AAFFF5982A7FF557EA2FF557EA2FF5780A6FF5C85AEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000098A5B3FF63646EFF6B6769FF6D6B6AFF6F6D76FF70726BFF73756CFF7376
      6BFF727569FF717367FF6E7265FF6D7164FF6D7164FF6E7165FF6F7367FF7174
      69FF72766BFF73756BFF73756CFF72746BFF71726AFF6E6D6AFF796C63FF9583
      78FF96827AFF957E7BFFB4ACACFFFAFAFAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000075A9CCFF648EADFF4F71
      88FF3D5768FF314852FF264346FF204041FF213F40FF274446FF304751FF3E56
      65FF517084FF688FA8FF76A4C3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008198ACFFD18254FFD8945AFFE1A45EFFE9B361FFEEBD64FFEFC366FFEFC7
      68FFEFCA6AFFEFCD6BFFEFD06CFFEFD16DFFEFD26DFFEFD26DFFEFD16DFFEFCF
      6CFFEFCC6BFFEFC969FFEFC567FFEFC165FFECBA63FFE6AD60FFDD9E5CFFD58E
      59FFCB7C54FFC26950FFA28682FFFAFAFAFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8C1
      65FFD9B860FFD5B65FFFD1B65EFFCFB55EFFCBB35DFFCAB25CFFC9AF5BFFC5AA
      59FFC5A858FFC5A656FFC5A255FFC59F53FFC29952FFBE8F4FFFBA854EFFB478
      4BFFAE6A48FFAB5D47FF9D827EFF000000000000000000000000000000000000
      00000000000000000000000000007FADCAFF5F7F93FF374D56FF174137FF0B4F
      3DFF196163FF2F6C80FF48769DFF5178A3FF4F6C9EFF43608FFF284E6CFF1543
      4DFF073329FF0E2A22FF223137FF3A4E5AFF4A6679FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000087A5BEFF6E9AB9FF7999AFFF758D9BFF798790FF6F787CFF465955FF3257
      4DFF205355FF295E6FFF406A8CFF4B6F96FF4B6696FF415D8BFF284D6BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000819DB4FFD8A782FFD9D9D9FFD9D9D9FFBBBBDFFFD9D9D9FFD9D9D9FFD9D9
      D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
      D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
      D9FFD9D9D9FFD4BBB3FF9E7D74FFFCFCFCFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0FF5E5E5EFF8B8B8BFF969696FF989898FF9D9D9DFF9D9D9DFF9F9F9FFFA0A0
      A0FFA1A1A1FFA0A0A0FF9E9E9EFF9D9D9DFF9B9B9BFF999999FF949494FF9292
      92FF8E8E8EFF4E4746FF7C635CFF000000000000000000000000000000000000
      0000000000006E9DBFFF587A95FF1E3746FF063F31FF0E4675FF3145CBFF5657
      FDFF6969FFFF8484FFFF9C9CFFFFA9A9FFFFA9A9FFFF9696FFFF7B7BFFFF5D5D
      FFFF484AFDFF283AD1FF083F9CFF0062A3FF0285D1FF0097F3FF000000000000
      0000000000000000000000000000000000000000000000000000F3F3F3FFE9E9
      E9FF9DA6AEFFE7E7E7FFEFEFEFFFEEEEEEFFEFEFEFFFF3F3F3FFF9F9F9FFFBFB
      FBFFF0F0F0FFB7B7CBFF7B7BC7FF8D8DD4FF9292DDFF8787E5FF7373EEFF5A5A
      F6FF4749FBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009BA3ABFFEBB886FFFFFFFFFFFFFFFFFFDCDCFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEEC9B6FF9C8D87FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9D9D
      9DFF5E5E5EFFD7D7D7FFDDDDDDFFDBDBDBFFD8D8D8FFD8D8D8FFD6D6D6FFD7D7
      D7FFD7D7D7FFB0B0B0FF9F9F9FFFA4A4A4FFC0C0C0FFC0C0C0FFC7C7C7FFE6E6
      E6FFE4E4E4FF292929FF6D635FFF000000000000000000000000000000000000
      0000465867FF2B3D4BFF0A2820FF00206EFF0407F2FF2626FFFF6161FFFF9292
      FFFFBABAFFFFD4D4FFFFE6E6FFFFF3F3FFFFF6F6FFFFEAEAFFFFD7D7FFFFBBBB
      FFFF8E8EFFFF5353FFFF1111FEFF0109E6FF01399BFF0072B0FF008FE6FF008E
      FDFF000000000000000000000000000000000000000000000000A8A8A8FF9696
      96FFCACCCDFFF8F8F8FFF6F6F6FFF1F1F1FFEEEEEEFFF0F0F0FFF4F4F4FFF5F5
      F5FFF3F3F3FFEBEBEBFFACACBEFFBDBDC6FFC1C1C8FFB8B8C9FFABABCBFF9797
      CEFF7575D3FF4747D9FF0F0FDFFF0108CFFF01358FFF006AA4FF0185D5FF008C
      F9FF0085FEFF0000000000000000000000000000000000000000000000000000
      0000C9CBCCFFEBBD83FFFFFFFFFFFFFFFFFFDBDBFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFECBC9CFFB8B1AEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF9C9C
      9CFF727271FFEDEDE9FFE7E6E3FFE5E5E1FFE1E0DCFFDFDED9FFE2E1DBFFE4E3
      DCFFD0D0CCFF8E8E8EFF666666FF6E6E6EFF664B5FFFA68CA0FFBFBEBFFFDADA
      DAFFE1E1E1FF414141FF7E7977FF0000000000000000000000000000000025BF
      05FF1D9F02FF106017FF0210B8FF0808F0FF4444FCFF8C8CFFFFBDBDFFFFDCDC
      FFFFEDEDFFFFF0F0FFFFF4F4FFFFF7F7FFFFF6F6FFFFF3F3FFFFF0F0FFFFEDED
      FFFFDADAFFFFBBBBFFFF8989FEFF3E3EF8FF0505E9FF0014BCFF00569DFF0071
      DDFF0076FCFF000000000000000000000000000000000000000028C608FF24B8
      05FF66975CFFF7F7F7FFF5F5F5FFEFEFEFFFEBEBEBFFECECECFFEEEEEEFFEFEF
      EFFFEDEDEDFFCDCDCDFF6F6F70FF8F8F90FF89898BFF7A7A7DFF7A7A7FFF7F7F
      87FF787888FF686883FF58587DFF53537BFF7B7B92FF838384FF6C6C6CFF1254
      94FF006EEAFF3384DFFFF7F7F7FF000000000000000000000000000000000000
      000066965CFFC9A979FFFEFEFEFFFEFEFEFFDADAFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9B180FFD7D5D5FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFFDFDFDFF9E9E
      9EFF7E7D7CFFE7E6E4FFDCDCD9FFDFDFDCFFD6D5D2FFD8D7D4FFDBDAD6FFD8D8
      D3FFC1C0BEFF878787FF4C4C4CFF7B7B7BFF845D7AFF9D6F92FFC8C4C7FFD7D7
      D7FFCCCCCCFF525252FF949292FF0000000000000000000000001ED300FF1BB4
      00FF0C5B27FF0004CCFF1D1DEAFF6B6BFDFFB6B6FFFFDBDBFFFFD7D7FFFFD7D7
      FFFFDDDDFFFFE7E7FFFFF1F1FFFFFAFAFFFFF6F6FFFFECECFFFFE2E2FFFFD8D8
      FFFFD4D4FFFFD6D6FFFFDADAFFFFB1B1FFFF6464FBFF1616E2FF0006C3FF003A
      93FF104B9CFFB5B7BBFF00000000000000000000000000000000000000000000
      00000F5527FFCBCBDEFFECECECFFE8E8E8FFE4E4E4FFE6E6E6FFE8E8E8FFE8E8
      E8FFE5E5E6FF9696A1FF4F4F4FFF4D4D4DFF4D4D4DFF515151FF505050FF5050
      50FF505050FF505050FF525252FF4E4E4EFF4D4D4DFF4D4D4DFF4B4B50FF052F
      6FFF0F448EFFABADB1FFF9F9F9FF000000000000000000000000000000000000
      000000000000BD9F71FFF2E7E6FFF0E5E5FFCDC3E6FFECE1E0FFEADFDEFFE8DD
      DCFFE6DCDAFFE5DCD9FFE4DCD7FFE3DCD6FFE2DBD4FFE0D9D2FFDDD6CFFFDAD2
      CDFFDAD1CDFFDED3D1FFE3D7D7FFE4D8D8FFF7EDECFFF9EFEFFFF9EFEFFFF9EF
      EFFFF9EFEFFFDB9F65FFE4E4E4FF000000000000000000000000000000000000
      0000000000000000000000000000ECE1E1FFB9B0CFFFB7AFAEFFD7CDCCFF9A94
      94FF858484FFF7F7F7FFE9E9E9FFF9F9F9FFE5E5E5FFEFEFEFFFEEEEEEFFEBEB
      EBFFD7D7D7FF8C8C8CFF505050FF757575FFC5C0C4FFA79EA4FFB8B8B8FFDADA
      DAFFC5C5C5FF616161FFA5A5A5FF00000000000000000000000010C700FF0A69
      1DFF0003C1FF2323E7FF8989FEFFC9C9FFFFBFBFFFFFBEBEFFFFC7C7FFFFD1D1
      FFFFDBDBFFFFE5E5FFFFEEEEFFFFF3F3FFFFF1F1FFFFEAEAFFFFE0E0FFFFD6D6
      FFFFCCCCFFFFC3C3FFFFBABAFFFFBEBEFFFFC7C7FFFF7E7EFEFF1D1DDEFF0005
      B3FF08472DFF645953FF00000000000000000000000000000000000000000000
      0000000000002424CEFFB1B1CFFFDCDCDCFFD5D5D5FFD4D4D4FFE1E1E1FFCECE
      D5FFA4A4BBFFB5B5CAFF9797A1FF79797EFF77777DFF6A6A70FF575757FF5757
      57FF575757FF575757FF5A5A5AFF696986FF6F6F8AFF4E4E90FF1919ABFF0005
      A8FF08452CFF635852FF00000000000000000000000000000000000000000000
      000000000000624C6FFFFAF9F9FFF7F7F7FFD3D3F5FFF3F3F3FFF2F2F2FFEFEF
      EFFFEEEEEEFFEBEBEBFFE9E9E9FFE7E7E7FFE5E5E5FFE3E3E3FFE1E1E1FFE0E0
      E0FFE6E6E6FFEDEDEDFFC5C8CCFF888888FFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB1814AFFE2E2E2FF000000000000000000000000000000000000
      00000000000000000000F5F4F4FFAFAFAFFF7C7585FFDEB9C5FF968A8CFF8685
      85FF8A8989FFEAEAEAFFE7E7E7FFEAEAEAFFEBEBEBFFE9E9E9FFE7E7E7FFE5E5
      E5FFE3E3E3FFB5B5B5FF9A9A9AFF919191FFA4A4A4FFBABABAFFC5C5C5FFDADA
      DAFFC7C7C7FF666666FFB3B3B3FF0000000000000000989594FF086D0BFF0009
      A6FF1D1DE0FF9999FFFFB4B4FFFFA8A8FFFFB1B1FFFFBBBBFFFFC5C5FFFFCECE
      FFFFD7D7FFFFE0E0FFFFE6E6FFFFEAEAFFFFE9E9FFFFE4E4FFFFDCDCFFFFD3D3
      FFFFCACAFFFFC0C0FFFFB7B7FFFFADADFFFFA5A5FFFFB6B6FFFF8C8CFEFF1616
      D4FF000E94FF1D3C1AFFA6A5A5FF000000000000000000000000000000000009
      A4FF2121BDFF8080CDFF9B9BD8FF9999E0FFA5A5B6FF9C9CADFFA9A9D6FFCBCB
      FBFFD4D4FBFFDADAF8FFDEDEF6FFDFDFF3FFDCDCF1FF9898A8FF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5B5B5BFFA0A0ECFFA4A4FDFFB5B5FEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D707EFFFDF7EBFFFDFDFDFFDADAFDFFFDFDFDFFFDFDFDFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFF2F6FAFFA9C4E5FF91B2E0FFEDEFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF816325FFA09F9FFF000000000000000000000000000000000000
      00000000000000000000EDE8DCFFA9A9A9FFE2E0E1FFE1D7DCFFE4D2DAFFB7A5
      A9FF4E4E4EFFD6D6D6FFF5F5F5FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7
      F7FFECECECFFF2F2F2FFEFEFEFFFEAEAEAFFE6E6E6FFE1E1E1FFDFDFDFFFDEDE
      DEFFA1A1A1FF3A3938FF8F8E8EFF00000000EBEBEBFF4E3628FF001D6BFF0E0E
      CCFF9191FFFF9E9EFFFF9C9CFFFFA5A5FFFF7C7CDCFF7272CEFF7B7BD6FF7F7F
      DCFF8383E1FF8686E5FF8989E8FF8A8AE9FF8A8AE9FF8787E7FF8484E4FF8181
      E0FF7D7DDBFF7979D4FF7171CDFF7474D8FFA1A1FFFF9898FFFFA0A0FFFF8282
      FEFF0909BEFF002E56FF504537FF0000000000000000000000000F2767FFC1C1
      DAFFF0F0F0FFD7D7D7FFE7E7E7FFD6D6DAFFBBBBC2FF949498FF7F7F84FF8686
      8CFF8D8D93FF939399FF9D9DA3FFB5B5BBFFB9B9BFFFB7B7BBFFB8B8B8FFB8B8
      B8FFB8B8B8FFB8B8B8FFB8B8B8FFB7B7BDFFB9B9BFFFB9B9BFFFB9B9BFFFB7B7
      BFFFAFAFBAFFAFB2B4FFA4A3A1FF000000000000000000000000000000000000
      000000000000B4AB96FFF6E1C5FFF4E9E8FFD2C8EBFFF4E9E8FFF4E9E8FFF5E9
      E9FFF5EAE9FFF7ECE9FFF8EFEAFFF9F1EAFFFBF3EBFFFBF4ECFFFAF4EEFFB9CD
      E0FF6194D5FF8AAFE3FFD8E0EDFFF7EEEEFFF7EEEEFFF7EEEEFFF8EEEEFFF8EE
      EEFFF8EBE5FF967C54FFA1A09EFF000000000000000000000000000000000000
      00000000000000000000D2C0A8FFCAC9C9FFEFEFEFFFF0F0F0FFF2F2F2FFF1F1
      F1FF747474FF949494FFFAFAFAFFFCFCFCFFFCFCFCFFFDFDFDFFFCFCFCFFFAFA
      FAFFEDEDEDFFF4F4F4FFF0F0F0FFECECECFFE7E7E7FFE1E1E1FFDEDEDEFFDCDC
      DCFF565656FF4E4B46FF9B9A98FF00000000BAB9B9FF152D1EFF0101A9FF6D6D
      FAFF9292FFFF9090FFFF9999FFFF9494EFFFD7D7ECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FDFFD8D8FEFFD9D9
      FFFFD7D7FEFFF5F5FBFFFFFFFFFFDFDFF0FF8E8EEBFF9595FFFF8C8CFFFF9393
      FFFF5A5AF4FF000398FF1B3919FFC8C8C8FF00000000152B1DFFD7D7E6FFECEC
      ECFFE7E7E7FFCACACAFFF2F2F2FFFAFAFAFFECECECFFD3D3D3FFB8B8B8FF9797
      97FF999999FFA7A7A7FFB1B1B1FFBEBEBEFFD1D1D1FFC9C9C9FFC5C5C5FFC2C2
      C2FFC4C4C4FFC4C4C4FFC3C3C3FFCFCFCFFFD2D2D2FFD2D2D2FFD2D2D2FFCBCB
      CBFFCBCBCBFFCBCBCBFFB9BBB9FF000000000000000000000000000000000000
      000000000000A8A59CFFFBE9BFFFF9F9F9FFD8D8FAFFF9F9F9FFF9F9F9FFF9F9
      F9FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF9FAFAFF6BCBF4FF129F
      E6FF93BBE7FFDEE7F4FFF7F8FAFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCEFD8FF9D8C70FFB8BAB8FF000000000000000000000000000000000000
      000000000000A4A198FFA2957CFFE9E9E9FFF0F0F0FFF2F2F2FFF3F3F3FFF5F5
      F5FFA3A3A3FF828282FFE4E4E4FFFDFDFDFFFEFEFEFFFEFEFEFFFDFDFDFFFBFB
      FBFFEDEDEDFFF5F5F5FFF1F1F1FFEDEDEDFFE8E8E8FFE2E2E2FFDEDEDEFFB3B3
      B3FF474747FF5C564DFFB6B8B6FF000000007E726EFF01254FFF2E2ED7FF8C8C
      FFFF8484FFFF8D8DFFFF9595FFFFBABAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8181ECFF5555FFFF5656
      FFFF5353FFFF8C8CEAFFFFFFFFFFFFFFFFFFBEBEFEFF9191FFFF8989FFFF7F7F
      FFFF8C8CFFFF1D1DC5FF023640FF8E8884FF00000000354B65FFE2E2E2FFE3E3
      E3FFCCCCCCFFD0D0D0FFE5E5E5FFFBFBFBFFF9F9F9FFF4F4F4FFD8D8D8FFC2C2
      C2FF9D9D9DFF9F9F9FFFA8A8A8FFAFAFAFFFBFBFBFFFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC2C2
      C2FFC1C1C1FFCBCBCBFFB8BBBCFF000000000000000000000000000000000000
      000000000000BDBBB7FFFAE3AAFFF7F7F7FFD8D8F8FFF7F7F7FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F8F8FF6ACAF2FF00A1EAFF03B8
      F6FF6FDFFBFFE3EFF6FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFFAE5BDFF9B9385FFB7BABBFF000000000000000000000000000000000000
      0000000000009F9E9AFFB59E99FFF1F1F1FFF2F2F2FFF3F3F3FFF5F5F5FFF7F7
      F7FFC9C9C9FF919191FFAAAAAAFFFAFAFAFFFDFDFDFFFDFDFDFFFAFAFAFFF4F4
      F4FFEEEEEEFFF0F0F0FFF0F0F0FFEDEDEDFFE8E8E8FFE2E2E2FFD9D9D9FF8282
      82FF727272FF6F6B62FF00000000000000005A493CFF000A89FF7272FCFF7878
      FFFF8080FFFF8989FFFF9191FFFFB8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FEAFF3939FFFF3A3A
      FFFF3838FFFF7B7BEAFFFFFFFFFFFFFFFFFFBCBCFFFF8D8DFFFF8484FFFF7C7C
      FFFF7474FFFF6161F5FF001A6BFF61574AFF000000005E63A2FFDCDCDCFFDDDD
      DDFFC2C2C2FFCCCCCCFFD0D0D0FFEAEAEAFFF5F5F5FFF5F5F5FFF4F4F4FFD9D9
      D9FFCBC0B0FFD28C24FFDC9837FFE6AA56FFF1BE77FFFFD499FFFFDFB3FFFFE9
      C9FFFFEDD3FFFFE7C5FFFFDCADFFFFD193FFFFC576FFFFB958FFFFAD37FFFEA0
      12FFE4911FFFC4C4C4FFB9BBC0FF000000000000000000000000000000000000
      000000000000C5C5C5FFF7D58BFFF0E7E6FFD2CAEBFFF0E7E6FFF0E7E7FFF0E7
      E7FFF1E8E7FFF2E9E7FFF4ECE8FFF4EDE7FF69C7EEFF00A2EAFF03B9F7FF5FE0
      FEFFA1E0F1FFF1E6E4FFF1E5E4FFF1E5E4FFF1E5E4FFF1E5E4FFF1E5E5FFF1E5
      E5FFF6D199FFA19D97FF00000000000000000000000000000000000000000000
      0000B7B7B7FF8C7F82FFE5D2DAFFF3F3F3FFF4F4F4FFF6F6F6FFF5F5F5FFF7F7
      F7FFF6F6F6FFE6E6E6FFD8D8D8FFDBDBDBFFEBD8E3FFE8E0E5FFE5E5E5FFDEDE
      DEFFD7D7D7FFD9D9D9FFD8D8D8FFD4D4D4FFD8D8D8FFD8D8D8FFCFCFCFFFA09D
      9DFFCFB082FF9E9B95FF00000000000000003A3324FF2121BAFF7272FFFF7474
      FFFF7B7BFFFF8484FFFF8C8CFFFFB5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262EAFF2020FFFF2121
      FFFF1F1FFFFF7070EAFFFFFFFFFFFFFFFFFFB9B9FFFF8888FFFF8080FFFF7878
      FFFF7070FFFF7373FFFF0E13A6FF474732FF000000003A3A8FFFDADADAFFDFDF
      DFFFCBCBCBFFDFDFDFFFD9D9D9FFD5D5D5FFE1E1E1FFEFEFEFFFF0F0F0FFF1F1
      F1FFD5D5D5FFCFB692FFDF9731FFE8A850FFF1BA6EFFFDCE8DFFFFD8A4FFFFE0
      B4FFFFE2BAFFFFDEB1FFFFD79FFFFFCD88FFFFC26EFFFFB651FFFFAA30FFFE9E
      0DFFE28D1DFFC3C3C3FFBCBCC5FF000000000000000000000000000000000000
      000000000000DCDCDCFFF3D485FFF3F3F3FFD6D6F5FFF3F3F3FFF3F3F3FFF3F3
      F3FFF4F4F4FFF4F4F4FFF3F3F4FF69C8F1FF00A2EAFF04BAF7FF61E1FEFFA4E7
      FAFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6
      F6FFF7CD85FFACACACFF0000000000000000000000000000000000000000DCDC
      DCFF949292FFE8C3D1FFE6DADFFFF4F4F4FFF6F6F6FFF3F3F3FFD9D9D9FFDEDE
      DEFFE1E1E1FFE6E6E6FFEBEBEBFFDFDFDFFFF78CC9FFFE6CC2FFFD82CAFFFB9F
      D6FFF9BBE0FFF5D5E8FFEBEBEBFFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3
      B3FF000000000000000000000000000000002E2F23FF4141D7FF6767FFFF7070
      FFFF7777FFFF7F7FFFFF8686FFFFB0B0FFFFFFFFFFFFFFFFFFFFA4A4FAFF9494
      FFFFA2A2FFFF9595FEFFC0C0FBFFFFFFFFFFFFFFFFFF5858EAFF0A0AFFFF0A0A
      FFFF0808FFFF6767EAFFFFFFFFFFFFFFFFFFB6B6FFFF8383FFFF7B7BFFFF7474
      FFFF6B6BFFFF6464FFFF3333C8FF35442CFF000000004242ADFFD1D1D1FFDBDB
      DBFFD4D4D4FFE7E7E7FFE9E9E9FFE0E0E0FFD3D3D3FFDEDEDEFFEDEDEDFFEBEB
      EBFFEDEDEDFFCECECEFFDCA85FFFEBA94CFFF4B866FFFDC77EFFFFD090FFFFD5
      9CFFFFD69FFFFFD499FFFFCE8BFFFFC577FFFFBC5FFFFFB143FFFFA623FFFD9A
      08FFDF891CFFC2C2C2FFC0C0CAFF000000000000000000000000000000000000
      000000000000E6E6E6FFE4C57DFFF1F1F1FFDBDBF3FFEEEEF2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF1F2F2FF68C7F0FF00A2EBFF04BBF8FF62E1FEFFA0E6FAFFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFE9B665FFB4B4B4FF0000000000000000000000000000000000000000C0C0
      C0FFB0979EFFF8CFE1FFEAE6E8FFF7F7F7FFF8F8F8FFE9E9E9FFECE7EAFFF0EB
      EEFFEEEEEEFFEBEBEBFFE9E9E9FFE4E4E4FFDFD4DAFFE9A2CAFFFF86CAFFFF78
      C5FFFF6DC1FFFA7CC6FFE5E5E5FFF8F8F8FFFFFFFFFFFFFFFFFFFCFCFCFFCBCB
      CBFF000000000000000000000000000000002E3123FF4D4DE9FF6363FFFF6A6A
      FFFF7373FFFF7979FFFF8080FFFFACACFFFFFFFFFFFFFFFFFFFF4040F4FF3C3C
      FFFF4747FFFF3D3DFFFF6A6AF1FFFFFFFFFFFFFFFFFF5454EAFF0000FFFF0000
      FFFF0000FFFF6464EAFFFFFFFFFFFFFFFFFFB2B2FFFF7D7DFFFF7676FFFF6F6F
      FFFF6767FFFF5F5FFFFF4040D9FF35452CFF000000004747C8FFCCCCCCFFD1D1
      D1FFDBDBDBFFE2E2E2FFE6E6E6FFE8E8E8FFDFDFDFFFD5D5D5FFE4E4E4FFE9E9
      E9FFE8E8E8FFE2E2E2FFD3C0A7FFEDA94BFFF6B761FFFEC374FFFFC980FFFFCC
      88FFFFCD89FFFFCA83FFFFC576FFFFBD62FFFFB44BFFFFAA30FFFEA011FFFA94
      07FFDB831AFFC3C3C3FFC4C4CEFF000000000000000000000000000000000000
      00000000000000000000C5AB71FFE9DEDDFFDACFE1FFE2D7E0FFEADEDDFFEADE
      DDFFE9DEDDFF65C2EBFF00A3EBFF04BCF8FF64E2FEFF9DE1F0FFF0E8E0FFEEE5
      E0FFEDE3DFFFECE1DFFFEBE0DFFFEBE0DFFFECE0DFFFECE0DFFFECE0DFFFECE0
      E0FFC28C3DFFB9B9B9FF00000000000000000000000000000000C4C4C4FF8E85
      87FFFED5E7FFEECADAFFF4F4F4FFF8F8F8FFF9F9F9FFE7E7E7FFF1BDDBFFFE6E
      C3FFFC88CDFFFBA5D8FFF8C0E2FFF3DAE9FFEEECEDFFE4CDD9FFFFB6DCFFFFB3
      DBFFFFAFDAFFF3B6D7FFE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFE0DFDEFFE2D6
      D6FF000000000000000000000000000000002F3021FF5151F1FF5E5EFFFF6565
      FFFF6D6DFFFF7B7BFFFF7B7BF1FFA7A7F0FFFFFFFFFFFFFFFFFF4B4BCDFF0909
      CEFF0D0DD0FF0A0ACFFF7E7ED8FFFFFFFFFFFFFFFFFF5959D3FF0000E9FF0000
      EAFF0000E9FF6969D5FFFFFFFFFFFFFFFFFFACACF1FF7575F0FF7575FFFF6969
      FFFF6262FFFF5B5BFFFF4242E2FF36442CFF000000004F4FE4FFBDBDD4FFCECE
      CEFFD9D9D9FFDDDDDDFFE1E1E1FFE4E4E4FFE4E4E4FFD8D8D8FFD9D9D9FFE5E5
      E5FFE4E4E4FFEBEBEBFFD1D1D0FFEDAD56FFF9B65BFFFEC06AFFFFC473FFFFC6
      78FFFFC678FFFFC373FFFFBF68FFFFB856FFFFAE39FFFEA218FFFC9807FFF68D
      07FFD77C19FFC4C4C4FFC6C6D0FF000000000000000000000000000000000000
      00000000000000000000C6AB73FFEEEEEEFFE3E3EFFFE2E2EFFFEEEEEEFFEDEE
      EEFF66C6EEFF00A3EBFF04BDF8FF67E2FEFF9EE4F8FFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFB67727FFBEBEBEFF0000000000000000000000004E4EE2FF9392A3FFDDB9
      C6FFFFD5E8FFEACEDBFFF8F8F8FFFAFAFAFFFCFCFCFFE7E7E7FFF2BDD9FFFF91
      CEFFFF83C9FFFF75C4FFFF6BC1FFFF6CC2FFF0CEE2FFE8C5D7FFFFC5E3FFFFC3
      E2FFFFBFE0FFF1D2E2FFEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFBABABAFFECEC
      ECFF000000000000000000000000000000002F3122FF4949F1FF5C5CFFFF7676
      FFFF8E8EFFFF7979D7FFA6A6D6FFCBCBE6FFFFFFFFFFFFFFFFFFFEFEFEFFF1F1
      F8FFF1F1F8FFF4F4F9FFFFFFFFFFFFFFFFFFFFFFFFFFE9E9F4FFB1B1DBFFB1B1
      DBFFB2B2DCFFEEEEF7FFFFFFFFFFFFFFFFFFCFCFE9FFA7A7D6FF7979D6FF8888
      FFFF6E6EFFFF5656FFFF3B3BE2FF38442CFF00000000000000006B6BC1FFC8C8
      D0FFD5D5D5FFD9D9D9FFDCDCDCFFDFDFDFFFE1E1E1FFDDDDDDFFD4D4D4FFDEDE
      DEFFE1E1E1FFE1E1E1FFE0E0E0FFE7B777FFFBB657FFFFBC62FFFFBF68FFFFC0
      6BFFFFC06BFFFFBE66FFFFBA5CFFFFB54EFFFEAE3CFFFDA020FFF88F07FFF284
      07FFD37417FFC6C6C6FFCACAD4FF000000000000000000000000000000000000
      00000000000000000000B29E78FFECE9E5FFE5E5ECFFDDDDEEFFEBEBECFF65C5
      EEFF00A4EBFF04BFF9FF6AE3FEFF9EE3F6FFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEB
      E7FF9F5E14FFC3C3C3FF0000000000000000000000004242DBFF826E8DFFFFD5
      E8FFFED4E7FFEAD7E0FFFAFAFAFFFCFCFCFFFDFDFDFFE7E7E7FFF4C2DCFFFFB9
      DDFFFFB6DCFFFFB2DBFFFFADD9FFFE9FD3FFE9E4E7FFDDDCDCFFE3D0DAFFE3C4
      D5FFE6BDD3FFEDE0E7FFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0FF0000
      00000000000000000000000000000000000035352AFF4646EFFF8D8DFFFF9696
      FFFF9999FFFFE2E2F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6F8FF9898
      FFFF9494FFFF8484FFFF3737E0FF464A36FF00000000000000009E9ECBFFA5A5
      CDFFD0D0D0FFD4D4D4FFD7D7D7FFDADADAFFDDDDDDFFDDDDDDFFD4D4D4FFD7D7
      D7FFDEDEDEFFDCDCDCFFE6E6E6FFE1BD91FFFBB65EFFFEBA5FFFFEBB61FFFFBC
      62FFFFBC61FFFFBA5CFFFEB653FFFEB24AFFFCAB45FFF8A341FFF49229FFEE7A
      07FFCE6B15FFC8C8C8FFCDCDD8FF000000000000000000000000000000000000
      00000000000000000000AFA186FFE9D6C3FFE3DADCFFD4CDE1FF62BFE8FF00A4
      EBFF04C0FAFF6DE4FEFF9DDDEEFFE9E2DDFFEAE4DEFFEBE5DEFFEAE4DEFFE9E2
      DDFFE8E0DDFFE7DEDDFFE7DDDDFFE7DEDDFFE7DEDDFFE7DEDDFFE7DEDEFFE8D2
      C2FF9D5511FFC6C6C6FF0000000000000000343429FF3D389DFFFAD1E2FFFFD5
      E8FFFBD2E4FFEDE3E8FFFCFCFCFFFDFDFDFFF6F6F6FFE9E9E9FFF0BCD7FFFDBD
      DEFFFFC5E3FFFFC2E1FFFFBEE0FFF6BDDBFFE7E7E7FFECECECFFEEEEEEFFF7F7
      F7FFF9F9F9FFF5F5F5FFF1F1F1FFFFFFFFFFFFFFFFFFFCFCFCFFC2BBBBFF0000
      0000000000000000000000000000000000005B564DFF3737E2FF9292FFFF9B9B
      FFFF9E9EFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3FFFF9C9C
      FFFF9999FFFF8686FFFF2A2FCCFF767369FF000000003737C7FFBDBDC0FF9191
      B4FF9898C6FFCFCFCFFFD2D2D2FFD5D5D5FFD8D8D8FFD9D9D9FFD5D5D5FFD2D2
      D2FFDADADAFFD9D9D9FFE7E7E7FFE3C09EFFF9B670FFFBB86CFFFCBA69FFFDBA
      66FFFDB963FFFDB760FFFBB35DFFFAAF5AFFF8AA56FFF5A353FFF19B50FFEC83
      2EFFC96114FFCCCCCCFFD2D2DCFF000000000000000000000000000000000000
      00000000000000000000AEA496FFEBD7B7FFE7E7E8FF55B5EFFF00A4ECFF04C1
      FBFF6FE5FEFF9EE1F4FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFEAEAEAFFEAEAEAFFEAEAEAFFE8CD
      B2FF994B0FFF0000000000000000000000004D4941FFBA99B5FFFFD5E8FFFFD5
      E8FFF7CEE1FFF3F0F1FFFEFEFEFFFFFFFFFFF2F2F2FFF6F6F6FFEEEEEEFFE4E1
      E3FFE3CDD8FFE4C2D4FFE9BCD3FFECCADCFFEAEAEAFFFFFFFFFFFEFEFEFFF4F4
      F4FFF0F0F0FFEDEDEDFFFEFEFEFFFFFFFFFFFFFFFFFFDDDDDDFFE1E1E1FF0000
      000000000000000000000000000000000000B7B4B3FF212CB5FF8282FFFFA0A0
      FFFFA3A3FFFFA9A9FFFFD7D7FFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFD9D9FFFFA8A8FFFFA2A2
      FFFF9F9FFFFF7474FFFF163188FFCCCBCBFFA19F9EFFDADBE5FF9696C9FF8F8F
      CBFFA2A2D2FFC7C7D0FFCCCCCCFFD0D0D0FFD3D3D3FFD5D5D5FFD3D3D3FFCFCF
      CFFFD5D5D5FFD6D6D6FFE5E5E5FFE9C0A0FFF6B77FFFF7B87CFFF8B979FFF9B9
      77FFF9B774FFF8B571FFF7B26EFFF6AE6BFFF4A968FFF2A364FFEF9C61FFEC94
      5EFFC76B36FFD2D2D2FFD6D8DEFF000000000000000000000000000000000000
      00000000000000000000B1ADA8FFE7C8A2FF62C2EBFF00A5ECFF04C1FBFF72E5
      FEFF9EE1F3FFE6E6E6FFCECBC0FFC2C1B3FFE6E6E6FFE7E7E7FFE7E7E7FFC8C5
      B9FFC8C7BAFFE7E7E7FFE7E7E7FFE8E6E1FFBCBBB6FFD2D0C3FFE8E8E8FFE2B9
      97FFAF5E2EFF0000000000000000000000008B7F81FFFFD7E8FFFFD5E8FFFFD5
      E8FFEEC6D9FFFD99DBFFFFCCEDFFFFDFF3FFFEFCFDFFEFEFEFFFEFEFEFFFEEEE
      EEFFEFEFEFFFF9F9F9FFF7F7F7FFF2F2F2FFECECECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEA9FFE6E6E6FF0000
      000000000000000000000000000000000000F2F2F2FF122850FF6161FFFFA6A6
      FFFFA9A9FFFFABABFFFFADADFFFFC0C0FFFFF2F2FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4FFFFC0C0FFFFACACFFFFAAAAFFFFA7A7
      FFFFA5A5FFFF5252FDFF142F38FFF7F7F7FFD6D6D6FF2F3D57FF000000000000
      0000000000009F9FECFF9999C0FFC3C3C3FFC7C7C7FFD0D0D0FFD0D0D0FFCDCD
      CDFFD0D0D0FFD2D2D2FFE5E3E2FFF0BA97FFF3B98FFFF4BA8CFFF5BA89FFF6B9
      87FFF6B884FFF5B581FFF4B37EFFF3AF7BFFF1AA78FFEFA575FFED9E72FFEA98
      6FFFC46B43FFD7D7D7FFDCDEDFFF000000000000000000000000000000000000
      0000000000009E9EEAFF8585A7FF4B9BB6FF00A5ECFF04C3FCFF74E6FEFF85B8
      C6FFBABABAFFBBBBBBFFC4C4C4FFAAA19BFFC7AE9CFFCAB19CFFCBB19CFFC6BE
      B8FFAD9F94FFC9AD97FFCAAE96FFC9AB95FFC0BDBAFFB29E91FFC7A592FFBB83
      66FF00000000000000000000000000000000D5D5D5FF373C51FFAF8FC6FFFED5
      E7FFEDAFD3FFFFACE3FFFFDFF3FFFFB4E3FFFF90D5FFFF92D5FFFFB1E0FFFFD1
      ECFFFDF1F8FFF3F3F3FFEFEFEFFFF0F0F0FFF6F6F6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E827BFF000000000000
      00000000000000000000000000000000000000000000656665FF3132E5FF9B9B
      FFFFAEAEFFFFB0B0FFFFB2B2FFFFB4B4FFFFB7B7FFFFDBDBFFFFFDFDFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEFFFFB3B3FFFFB1B1FFFFAFAFFFFFADAD
      FFFF8C8CFFFF242ACBFF888984FF000000000000000000000000000000000000
      00000000000000000000000000009F9FD7FFBCBCC8FFB8B8B8FFB8B8B8FFC8C8
      C8FFCCCCCCFFD8D8D8FFEFD2C5FFF2BB9FFFF2BC9DFFF3BC9AFFF3BB97FFF3BB
      95FFF3B992FFF3B790FFF2B48DFFF1B18BFFEFAD88FFEEA885FFEBA282FFE99C
      7FFFC06849FFD8D8D8FFE8E8E7FF000000000000000000000000000000000000
      0000ADADFDFF9999DEFF3481B8FF00A6ECFF04C4FCFF77E7FEFF79B1C2FFBCBC
      BCFF0000000000000000AFA49EFFA48F84FFEBB799FF00000000F2BA96FFAE9E
      93FFAA8D7AFFEFB48EFF00000000EDAE89FFCFC8C4FFA67B65FFEAA181FF0000
      00000000000000000000000000000000000000000000000000003132E4FF8883
      D2FFC57DB4FFFFBEE9FFFFEEF9FFFFD6EFFFFFA7DDFFFFAFDFFFFF98D5FFFF92
      D2FFFF7CC8FFFF86CBFFFFA2D6FFFFC3E4FFFFE3F2FFFFFDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFF8F6B59FF000000000000
      00000000000000000000000000000000000000000000F6F6F6FF132759FF5959
      FDFFB3B3FFFFB6B6FFFFB8B8FFFFB9B9FFFFBBBBFFFFBCBCFFFFC9C9FFFFF2F2
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0FFFFB9B9FFFFB7B7FFFFB5B5FFFFAEAE
      FFFF4949F9FF162E3EFFFAFAFAFF000000000000000000000000000000000000
      000000000000000000000000000000000000BABAFDFFA9A9C9FFDFDFDFFFC8C8
      C8FFE1E1E1FFC9C3C1FFB39184FFB49384FFB49383FFB59483FFB59582FFB595
      82FFB59581FFB59481FFB59380FFB49280FFB3917FFFB38F7FFFB18D7EFFB08A
      7EFFA48177FFDFDFDFFFEBEBEBFF000000000000000000000000000000005858
      FBFF9C9CDEFF3683B8FF00A6ECFF05C5FCFF7AE8FEFF7CBCD1FFBFBFBFFFBFBF
      BFFF0000000000000000A1938EFF91847EFFB09080FF00000000B49481FFA39A
      94FF928177FFB3927FFF00000000B2907EFFD6D2D0FF887166FFB08C7EFF0000
      0000000000000000000000000000000000000000000000000000000000005656
      F6FFB976B2FFFE74CFFFFFAEE2FFFFB2E2FFFFA1DBFFFFB0E0FFFFAFDEFFFFB7
      E1FFFFC5E6FFFFB0DCFFFFBAE0FFFF9AD1FFFF98D0FFFF88C7FFFF97CEFFFFB7
      DDFFFFD7ECFFFFF6FAFFFFFFFFFFFFFFFFFFDBDADAFF836D62FF000000000000
      0000000000000000000000000000000000000000000000000000C2C3C3FF1925
      A5FF7777FFFFBCBCFFFFBEBEFFFFBFBFFFFFC0C0FFFFC1C1FFFFC2C2FFFFC4C4
      FFFFE0E0FFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFE1E1
      FFFFF8F8FFFFFFFFFFFFFFFFFFFFE3E3FFFFBEBEFFFFBDBDFFFFBBBBFFFF6565
      FFFF122686FFDEDEDEFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1C8FFF0F0F0FFF1F1
      F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEE
      EEFFEEEEEEFFEEEEEEFFE7E7E7FF000000000000000000000000C0C1C1FF1620
      8EFF2370B8FF00A6EDFF05C6FDFF7CE8FEFF72A0C8FF8E8EABFFC7C7C7FFF0F0
      F0FF0000000000000000C2C2C2FFBCBCBCFF000000000000000000000000C4C4
      C4FFC7C7C7FF000000000000000000000000D4D4D4FFD1D1D1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000236FB6FF0791CEFF2A95C2FF8F8FB5FFBC71AFFFF671C2FFFF6CC4FFFF7A
      C8FFFF8ECFFFFFA0D5FFFFAAD9FFFFB6DDFFFFB9DEFFFFADD8FFFF7CC2FFFF7C
      C1FFFF7BC1FFFF7CC1FFFF92CBFFFFB0DAFFB099A6FFCFCFCFFF000000000000
      0000000000000000000000000000000000000000000000000000000000009193
      95FF1D26BDFF7F7FFFFFC4C4FFFFC5C5FFFFC6C6FFFFC7C7FFFFC7C7FFFFC8C8
      FFFFC8C8FFFFD2D2FFFFF3F3FFFFFFFFFFFFFFFFFFFFF4F4FFFFD3D3FFFFC8C8
      FFFFCBCBFFFFCBCBFFFFCACAFFFFC8C8FFFFC5C5FFFFC2C2FFFF6D6DFFFF1625
      A0FFB0B2B2FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEDDFF9B9BB7FF9B9B
      B7FF9B9BB7FFA0A0B7FFB1B1B7FFB7B7B7FFB7B7B7FFB1B1B7FFA1A1B7FF9B9B
      B7FF9D9DB7FF9D9DB7FF9C9CB7FF9B9BB7FF9A9AB7FF9898B7FF6E6EB7FF424A
      87FF8F9090FFB7B7B7FFBBBBBBFF0000000000000000FDFDFDFFD9D9D9FF586B
      74FF0AA7E9FF05C7FEFF7FE9FEFF75A2C8FFC5C5FEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9DC6FFA38A9EFFF3A6
      CEFFF88CC9FFF979C1FFFB69BBFFFF6EBEFFFF7EC3FFFF90CBFFFF89C7FFFF88
      C7FFFF88C7FFFF88C7FFFF88C7FFFF7BC2FF806F8AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B9FA1FF1824A7FF6969FEFFC4C4FFFFCCCCFFFFCDCDFFFFCECEFFFFCECE
      FFFFCFCFFFFFCFCFFFFFD0D0FFFFDEDEFFFFDFDFFFFFD0D0FFFFCFCFFFFFCECE
      FFFFCECEFFFFCDCDFFFFCDCDFFFFCCCCFFFFBCBCFFFF5959FCFF12248DFFB8B8
      BAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFDCDCDCFF7B7B7BFFA7A7
      A7FFADD5E2FF85EAFDFF4B78C8FFC3C3FEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBB
      E7FFB2A1BBFFFBD0E1FFFCD4E6FFF9BFDCFFF99CCDFFF981C1FFF671BAFFFD68
      B9FFFF78C0FFFF8FCAFFFF94CCFFFC76BEFFA3A3DCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D7D7FF172B6AFF3C3CEFFF9797FFFFD2D2FFFFD4D4FFFFD5D5
      FFFFD5D5FFFFD5D5FFFFD6D6FFFFD6D6FFFFD6D6FFFFD5D5FFFFD5D5FFFFD5D5
      FFFFD5D5FFFFD4D4FFFFCECEFFFF8B8BFFFF3032E5FF1E305BFFEBEBEBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEAFF80848FFFA7A7A7FFDCDC
      DCFFDBDBDBFFA0AEB1FF172B69FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5C4EBFFB6A5BDFFF9CEDFFFFFD5E8FFFBD2E3FFB6B2D3FFC0BF
      E4FFAC9EC2FFB485B2FFCE78B3FFC873BAFF2F31E0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFF71797EFF182B88FF3C3CECFF8484FFFFBABA
      FFFFDADAFFFFDCDCFFFFDCDCFFFFDCDCFFFFDCDCFFFFDCDCFFFFDCDCFFFFD8D8
      FFFFB3B3FFFF7B7BFFFF3233E4FF162A75FF9FA2A6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000929FC2FF7093F6FFCCD3E1FFDBDB
      DBFFBCBCBCFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECEEFFFB9AABFFFB3A8C0FF000000000000
      0000000000000000000000000000162A75FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B4B7FF344569FF1828
      98FF2B2DDAFF5050F1FF6B6BFCFF7373FFFF7373FFFF6868FCFF4D4DEFFF2528
      D4FF15268AFF384764FFC4C6C8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A9CD0FF90B6FFFFA8C9FDFFB9BB
      C3FFFDFDFDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBCBCBFF989A9EFF747982FF656F7BFF7A8390FF8D919AFFBBBEC0FFF7F7
      F7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8BFD2FFA4B3D2FFB2B9CFFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFFFCFCFCFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFCFFFAFA
      FAFFF7F7F7FFF4F4F4FFEEEEEEFFEAEAEAFFE5E5E5FFDEDEDEFFD7D7D7FFD1D1
      D1FFC9C9C9FFC7C7C7FFD7D7D7FFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006A97BFFF6895BDFF6390B9FF608DB7FF608DB7FF618EB8FF6390BBFF6592
      BDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006895
      BDFF6692B8FF618BB0FF5A83A8FF567FA4FF567FA4FF5881A7FF5C86AFFF618C
      B6FF6492BCFF6794BFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FFDBDBDBFFC7C7C7FFBABABAFFB0B0B0FFA3A3A3FF9898
      98FF8C8B8BFF848383FF7A7979FF737271FF6A6A68FF636360FF5B5D59FF5459
      53FF50574FFF50594FFF5B5C59FFB2B2B2FFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007EB5DCFF79ADD2FF72A3
      C4FF6B98B6FF688FA9FF6186A0FF5D829BFF5F829BFF648AA3FF678FABFF6F9B
      B8FF79A9C9FF82B5D7FF83B9DDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007EB4DCFF76AACEFF6793B3FF567B
      94FF476579FF3D5965FF31575BFF2B5657FF2C5657FF325A5DFF3C5966FF4966
      79FF5A7D95FF6E99B5FF7AACCDFF78A7C8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002B5556FF2C5455FF32585BFF3B5763FF4863
      75FF58798FFF6B93ADFF76A5C4FF74A0BFFF7DB0D3FF75A6CCFF7A98B3FFE6E6
      E6FFF3F3F3FFF5F5F5FFFCFCFCFF000000000000000000000000000000000000
      0000FBFBFBFFD4D4D4FF777576FF605F5EFF5E5F5AFF5E615BFF5D665DFF5F6C
      61FF657668FF687F6FFF6D8C77FF70967EFF72A284FF72AA87FF71B48BFF6DB8
      8CFF68BF8CFF63C38BFF58A678FF70736FFFF7F7F7FFFDFDFDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008DBFDEFF83B0CCFF6F96ADFF5B7D8FFF3E77
      75FF29866EFF1BA172FF13AD75FF0EC07CFF0FBB79FF14AA74FF1C9C71FF2C81
      6CFF437577FF5F8193FF749CB4FF85B3CFFF88BADCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000087BADDFF81AFCCFF66899EFF435F6AFF215F50FF0C8A
      57FF03C172FF00E183FF00E488FF00E488FF00E488FF00E387FF00E082FF03C3
      72FF0C8D59FF216250FF44616CFF66899EFF7CA9C8FF7CAED3FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000D57FFF00A05FFF008A52FF00884FFF0277
      45FF075636FF143C31FF293B42FF3E5360FF4B677AFF4B6A80FF4C6173FF9191
      91FF9B9B9BFFADADADFFE8E8E8FF000000000000000000000000000000000000
      0000F1F1F1FF838282FF73A387FF77CA9BFF7CD0A1FF80D1A4FF84D4A7FF87D6
      AAFF87D5A9FF86D4A8FF84D3A8FF81D2A5FF7DD1A0FF77D09EFF6FCC97FF6ACC
      94FF64CA90FF5DC98BFF56C284FF5C695EFFE5E5E5FFF8F8F8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000079ADD2FF78A8CBFF46739BFF2F6573FF148B65FF03CA74FF00D9
      7BFF00DC7FFF00E083FF00E285FF00E386FF00E286FF00E184FF00DD80FF00DA
      7CFF00D678FF05C070FF188063FF336178FF6993AEFF72A3C6FF769EBDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000074A6CAFF6289A6FF284A5DFF0B714BFF01C56CFF00D375FF00D8
      7AFF00DC7FFF00E184FF00E487FF00E488FF00E488FF00E387FF00E083FF00DB
      7EFF00D778FF00D274FF00C76BFF0B774DFF3A5D66FF5B829EFF7097B4FF0000
      00000000000000000000000000000000000000000000FBFBFBFFF4F4F4FFF1F1
      F1FF819EB7FF6E9EC0FF5D829EFF264658FF0A6B47FF01BB66FF00C86FFF00CD
      74FF00D179FF00D67DFF00D880FF00C676FF33DAF2FF25D6FFFF18CDFFFF23CB
      FFFF2AC8FFFF20BFFFFF05AAFFFF009DFFFF03A2FFFF009EFFFF0097FFFF0087
      FFFF0086FFFF0086FFFFD7D9DBFF000000000000000000000000000000000000
      0000ECECECFF70716CFF78D3A5FF76D4A1FF7CD5A5FF82D7A9FF88DBB0FF8CDE
      B3FF8FDFB5FF8FE0B5FF8EE0B6FF8BDFB3FF87DFB1FF83DEAEFF7BDBA8FF72D8
      A2FF66D297FF5CCD90FF51C285FF47584CFFABABABFFE7E7E7FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00007897B1FF6B99B9FF497382FF128F60FF00C96BFF00CC6EFF00CD6FFF00CF
      71FF22D987FF4BE4A1FF6AECB5FF79F0BFFF76EFBCFF65EAB0FF43E19BFF18D5
      7FFF00CD6FFF00CB6CFF00CA6CFF01C368FF1F8663FF4D738AFF5F85A1FFC7C7
      C7FF00000000000000000000000000000000000000000000000000000000FAFA
      FAFF708DA5FF4E6F86FF186047FF01BA60FF00C96AFF00CE6FFF06D377FF38E0
      95FF70EBB5FFA1F3CFFFC8F8E3FFE2FBF0FFE2FBF0FFC6F8E2FFA0F3CFFF72EB
      B5FF3CDF96FF07D277FF00CC6EFF00C869FF01BD61FF17644AFF435E71FFB7B7
      B7FFFCFCFCFF00000000000000000000000000000000E0E0E0FFABABABFF9E9E
      9EFF475968FF314655FF0F3D2DFF01753DFF007F43FF008246FF04854BFF238D
      5EFF479472FF669983FF7E9D8FFF889790FF56DBE9FF36E0FFFF39DCFFFF40D8
      FFFF36D0FFFF2AC8FFFF1EC0FFFF12B8FFFF03B0FFFF00A6FFFF009EFFFF008F
      FFFF0086FFFF0285FEFFEAEAEAFF000000000000000000000000000000000000
      0000E9E9E9FF6F726CFF81E1B1FF85E8B5FF8AE7B7FF8CE8B9FF8FE8BAFF91E9
      BCFF91E9BCFF91E8BBFF8FE8B9FF8CE7B9FF89E7B6FF85E6B4FF7FE6B1FF7BE5
      AFFF75E4ACFF6FE3A7FF65D89EFF759081FF565555FFB9B9B9FFFEFEFEFF0000
      000000000000000000000000000000000000000000000000000000000000C9C9
      C9FF597084FF31716AFF04B75FFF00C162FF00BF60FF2ACD7DFF71E4ADFFB5F4
      D6FFCDF8E2FFD3F8E4FFDEF9E9FFE0F9EBFFDFF9EAFFD6F8E5FFCCF7E0FFC6F7
      DFFFA7F1CEFF61DFA2FF1DC772FF00BD5EFF00C060FF07AA5CFF386567FF775E
      4BFFD4D4D4FF000000000000000000000000000000000000000000000000BABA
      BAFF3C4D5AFF098248FF00BE5FFF00C364FF18CE78FF63E3A7FFA7F3CFFFB0F3
      CFFFB2F3CEFFB9F3D1FFC4F5D8FFC8F5DCFFC8F5DBFFBEF4D5FFB4F3CEFFACF2
      CAFFAAF3CBFFA3F2CCFF64E4A8FF1CCE79FF00C263FF00BD5DFF088748FF4C41
      32FFC2C2C2FFFDFDFDFF0000000000000000FEFEFEFFACBAAAFF28C708FF26C3
      05FF22BE02FF20BD02FF1CBD03FF16BC06FF11BB05FF10B807FF13B506FF1AAD
      06FF1DA406FF1D9906FF1C9106FF1C9106FF3FD2A8FF54EEFFFF3FE3FFFF3DDD
      FFFF32D5FFFF26CCFFFF1AC4FFFF0BBCFFFF00B2FFFF00A8FFFF0099FFFF0082
      FFFF0077FFFF3589E8FFFAFAFAFF000000000000000000000000000000000000
      0000E9E9E9FF6F726CFF7ADEACFF7EE6B1FF83E6B3FF86E6B4FF88E7B6FF89E7
      B7FF89E7B7FF89E7B7FF88E7B6FF86E6B4FF82E6B3FF7EE5B1FF79E5AEFF75E4
      ABFF6FE3A8FF69E3A5FF63DA9DFF9AB9A9FF9D9C9CFF9B9B9BFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000D9D9D9FF7C4C
      36FF276C51FF00B959FF00B655FF21C36EFF71E5ADFF8BEFBAFF86ECB1FF86EB
      AEFF95EEB8FFA8F0C5FFBAF3D2FFC1F4D7FFBFF3D6FFB1F2CCFF9FEFBFFF8BEC
      B1FF7EEAA9FF80ECADFF87EFB9FF61E0A1FF15BC63FF00B555FF02B456FF5250
      24FF846853FFE1E1E1FF00000000000000000000000000000000CECECEFF5636
      26FF058C44FF00B858FF07C063FF4BDD97FF7BEDB3FF6FE9A3FF6DE89DFF7FEA
      A8FF92EDB6FFA5F0C3FFB7F2D0FFC0F3D6FFBFF3D6FFB2F2CCFFA0EFC0FF8DEC
      B2FF7AE9A5FF67E798FF68E89EFF75ECAFFF4DDE99FF09BF63FF00B756FF0892
      43FF564938FFD3D3D3FF000000000000000000000000B8C4B7FF1ED600FF20D5
      00FF1BD402FF08D80DFF00D910FF00D50AFF00D003FF06CB00FF0EC500FF15C0
      00FF1CB900FF1EB300FF1CA700FF1A9800FF199A0FFF45DEC7FF42EAFFFF3AE2
      FFFF30DAFFFF23D1FFFF15C7FFFF05BCFFFF00ADFFFF0094FEFF0083FBFF0074
      F7FF1256B2FFB6B8BCFF00000000000000000000000000000000000000000000
      0000E9E9E9FF70716CFF77DBA9FF78E6AEFF7AE5AFFF7DE5B1FF7FE5B1FF80E5
      B2FF81E5B2FF80E5B2FF7FE5B1FF7DE5B0FF79E5AEFF76E4ACFF72E4AAFF6DE3
      A7FF67E2A4FF62E2A2FF5DD99AFF99B8A9FFB4B3B4FF989898FFFEFEFEFF0000
      00000000000000000000000000000000000000000000EFEFEFFF856A5FFF494C
      17FF00B251FF03AE4EFF41D489FF5DE9A0FF46DD7FFF2EBC4BFF30B645FF39B7
      4BFF42B851FF4AB957FF51BA5CFF56BB60FF54BB5EFF4EBA5AFF46B954FF3DB7
      4EFF35B648FF2BB542FF22B53DFF36CC66FF59E9A0FF2FCA79FF00AC4AFF02AC
      4EFF644D1CFF908077FF000000000000000000000000EAEAEAFF68534BFF0D76
      31FF00B251FF13C267FF4EE59CFF3EE384FF3CE17CFF53E48AFF67E798FF7BEA
      A5FF8DECB2FF9EEFBEFFADF1C9FFB6F2CFFFB4F2CEFFA9F0C6FF9AEEBBFF88EB
      AFFF71E29BFF5BD989FF44CF76FF35DC75FF34E27EFF4AE599FF15C369FF00B1
      4FFF0E7F36FF6C615AFFEFEFEFFF0000000000000000C0C8C0FF12DF00FF15DE
      00FF04E10BFF00E00CFF00DC06FF04D801FF0AD200FF12CC00FF19C700FF1FC0
      00FF20B900FF1EB200FF1DAB00FF1CA100FF188F00FF188F00FF379B57FF5AB9
      C7FF28CEFFFF0FAFFFFF0199FDFF0076F5FF0075F0FF0182ECFF0471A0FF0084
      53FF0E7E36FF0000000000000000000000000000000000000000000000000000
      0000E9E9E9FF70716CFF79DBABFF75E6ACFF75E4ACFF77E5ACFF78E5ADFF79E5
      AEFF7AE5AEFF79E5AEFF78E5ACFF76E5ACFF73E4AAFF70E4A8FF6BE3A6FF67E2
      A3FF61E1A1FF5DE19EFF5BD798FF9BBAAAFFB6B6B6FF989898FFFEFEFEFF0000
      00000000000000000000000000000000000000000000B4B0AFFF6A380CFF02A9
      49FF05AA49FF38DB8AFF20E073FF23DE6CFF40BC55FFD4EBD4FFF1F8F1FFF1F8
      F1FFF1F8F1FFF1F8F1FFF1F8F1FFF1F8F1FFF1F8F1FFF1F8F1FFF1F8F1FFF1F8
      F1FFF1F8F1FFF1F8F1FFEDF6EDFF8DCC8EFF0FCE52FF22E078FF2DD27EFF02A7
      45FF099E43FF80441AFFC3C1C1FF0000000000000000A29F9EFF284518FF00AB
      4AFF11C065FF2FDF85FF09D45CFF1FDE6AFF37E078FF4DE386FF61E694FF73E9
      A0FF84EBACFF93EDB6FF9EEFBEFFA5EFC3FFA4EFC2FF9CEEBCFF8FECB4FF83E7
      A9FFCAE6D3FFDAEEE0FFEDF8F1FF61E393FF18DD66FF04DA5DFF28E081FF13C3
      68FF00AA48FF295321FFABAAAAFF00000000000000009F9C9BFF0DA905FF08E7
      00FF07E601FF02E402FF06E000FF0DDB00FF14D500FF1CCF00FF21C800FF21C1
      00FF1FB700FF1DA800FF1A9900FF178800FF157A00FF147700FF644C00FF8141
      3AFF0D7DEAFF03A5FBFF0086F0FF0062E2FF0058D3FF0082FAFF0E767DFF10A9
      5AFF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF70716DFF7CD9ACFF70E5A9FF6CE3A7FF6EE3A8FF70E4AAFF71E4
      AAFF71E4A9FF70E4A9FF6FE3A8FF6DE3A7FF6AE3A6FF67E2A4FF62E1A1FF5FE1
      9FFF5ADF9BFF58DD9AFF5AD496FF9EBCACFFB7B7B7FF989898FFFEFEFEFF0000
      000000000000000000000000000000000000F0F0F0FF805440FF178733FF02A5
      42FF21D77BFF07D75DFF02DA5CFF1BDD68FFA6E4B6FFFFFFFFFFF4FDF7FFE3FA
      ECFFEAFBF0FFFFFFFFFFFDFEFEFFEBFBF2FFEAFBF1FFF6FDF9FFFFFFFFFFF3FD
      F6FFE2FAEBFFE7FBEEFFFFFFFFFFFFFFFFFF19CE59FF00D858FF0BD760FF18CD
      71FF00A23EFF2E6C28FF896958FFF5F5F5FFECECECFF5C402FFF019D3FFF06B6
      57FF18DB75FF2DD86FFFA4E7BDFF16DC65FF2FDF73FF44E280FF57E48DFF69E7
      99FF78E9A3FF85EBACFF8EECB3FF93EDB6FF92EDB6FF8CECB1FF82EAAAFF7AE9
      A4FFFBFDFCFFCCF7DCFF4AE384FF28DF70FF0EDC62FF00D858FF00D353FF12D9
      6EFF05B858FF019F3FFF5B4E3EFFEFEFEFFF000000000000000001923AFF02BA
      1EFF01ED05FF06EA00FF0CE500FF12DF00FF1BC600FF1EB500FF1DAC00FF1CA6
      00FF1A9900FF188D00FF168000FF137500FF177000FF695101FF8A5545FF0AB2
      FCFF007CF7FF049DEFFF00A1F6FF007DEAFF004CC2FF0070ECFF0086FFFF0D9F
      5DFF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF71716EFF80D9AEFF6DE5A8FF66E2A3FF67E2A3FF69E3A4FF6AE3
      A5FF6AE3A5FF69E3A4FF67E2A3FF66E2A3FF63E2A1FF5FE19FFF5AE09CFF59DF
      9BFF5DDD9CFF61DB9EFF63D29BFFA0BDAEFFB9B8B8FF989898FFFEFEFEFF0000
      000000000000000000000000000000000000CCCBCBFF5F4111FF00A03CFF0AC9
      66FF03D054FF00D353FF00D859FF10DC63FF9CE2AFFFFFFFFFFF98EFB9FF62E6
      94FF71E89EFFE9F5EBFFDAF9E6FF88EBAFFF87EBAEFFA6F0C3FFFFFFFFFF87E5
      A6FF5AE58FFF49E384FFF6FDF8FFFFFFFFFF11D058FF00D656FF00D151FF04D0
      57FF03BC59FF019F3BFF773F14FFDCDCDCFFBFBEBEFF244C19FF00A644FF06D3
      6BFF00CE4EFF1AD663FFFCFEFDFF45D37AFF23D869FF39E079FF4BE385FF5CE5
      90FF6AE79AFF75E9A1FF7DEAA7FF81EAAAFF80EAA9FF7BEAA6FF73E8A0FF66E0
      93FFFBFDFBFF68E798FF33E076FF1DDE69FF05DB5DFF00D656FF00D151FF00CC
      4CFF02D367FF00A744FF26511CFFCBCBCBFF00000000000000000000000006D2
      6BFF00B43EFF0AB629FF0EEB0EFF0FDA00FF20C600FF1FB500FF199500FF1683
      00FF178700FF147900FF266F02FF645F0CFFAD4512FFB9390AFF6F7B7BFF29C8
      FFFF0288F7FF12C4FDFF02B6FFFF0098FFFF0080F7FF0071F1FF0086FFFF00A1
      46FF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF71716EFF87D7B0FF69E4A5FF5CE09EFF5EE1A0FF60E1A0FF61E1
      A1FF61E1A1FF60E1A0FF5DE19FFF5CE09EFF63E1A1FF70E2A8FF81E4B2FF8AE5
      B6FF8DE3B7FF8CE1B6FF80D5AAFFA4BFB2FFBCBBBBFF9B9B9BFFFEFEFEFF0000
      0000000000000000000000000000000000009D8E88FF287426FF00AF4BFF00CC
      51FF00CC4CFF00D251FF00D657FF05DB5DFF8DE2A7FFFFFFFFFF87D797FF2CBA
      46FF30B646FFEEF7EEFFCDEBD1FF3CBB51FF3CBC52FF81D08DFFFFFFFFFF74CB
      81FF28B944FF29BA47FFFCFEFDFFFEFEFEFF00CE4DFF00D454FF00CF4FFF00CA
      4AFF00CD56FF00A33FFF435919FFAFA7A3FF897C77FF05852FFF00BE58FF00C8
      49FF00CC4CFF00D150FFCDF5DBFFFBFDFCFFBEE7CBFF8EDAA8FF6ED592FF52D0
      7FFF4ED07CFF63E595FF6BE79AFF6FE89DFF6EE89CFF6AE799FF62E694FF82E4
      A6FFFFFFFFFF5CE690FF26DE6EFF0FDC62FF00D959FF00D454FF00CF4FFF00CA
      4AFF00C646FF00C058FF058C31FF968F8BFF0000000000000000000000000000
      00000000000000D050FF9EBBA2FF5CC636FF12D106FF1DAA00FF178600FF1478
      00FF357B0CFFB9794AFFDF755AFFDA7055FFD46A4DFFCD6141FFA2766AFF43D7
      FFFF0BA4FEFF16CCFFFF0DB6FFFF008FFFFF0085FFFF007DFEFF0085FDFF00B2
      43FF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF727170FF8DD4B3FF6AE1A4FF59DD9AFF59DE9BFF5ADF9CFF5BDF
      9CFF5BDF9CFF58DF9AFF5FDF9EFF7BE4AEFF92E7BBFF98E7BFFF98E6BEFF96E4
      BBFF93E1BAFF90DFB7FF87D7AEFFB2C8BCFFBFBFBFFF9C9C9CFFFEFEFEFF0000
      000000000000000000000000000000000000866757FF049532FF00C451FF00C6
      45FF00CA4AFF00CF4FFF00D454FF00D859FF7EE19FFFFFFFFFFFFBFDFBFFF1F8
      F1FFF4FAF4FFFFFFFFFFFFFFFFFFF2F8F2FFF1F8F1FFFAFCFAFFFFFFFFFFFAFC
      FAFFF1F8F1FFF5FAF5FFFFFFFFFFF1F8F1FF00CF4FFF00D151FF00CD4DFF00C8
      48FF00C342FF00B94BFF1A842BFF987C71FF685445FF009E38FF00C54EFF00C5
      44FF00C949FF00CE4EFF4BDF84FF6BE79CFF88EDB1FFFCFEFDFFFFFFFFFFFFFF
      FFFFFCFDFCFF9ADEB1FF56DE88FF5BE590FF5AE58FFF56E48CFF4FE388FF96EB
      B6FFFFFFFFFF60E794FF15DD65FF02DA5BFF00D656FF00D151FF00CD4DFF00C8
      48FF00C342FF00C44AFF00A03BFF6B6052FF0000000000000000000000000000
      0000000000000000000046B16BFF9DBF67FF13D019FF1B9C00FF178A00FF136F
      00FF677621FFE4745BFFDF6F54FFD9694DFFD36446FFCE5F3FFFC65D3FFF5AE0
      FEFF17AFFFFF1ACFFFFF17C0FFFF0695FFFF0085FFFF0079FDFF0086E9FF00B9
      43FF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF727070FF96D2B7FF6CDCA4FF57D897FF58D898FF58D999FF57D9
      98FF5BDA9AFF78E0ABFFA1E8C3FFA5E8C6FFA1E7C2FF9FE5C2FF9DE4C0FF9AE2
      BEFF97DFBBFFA3E2C3FFD1E9DCFFD3D5D4FFC5C5C5FF9F9F9FFF000000000000
      000000000000000000000000000000000000735539FF00A53DFF00C040FF00C3
      42FF00C848FF00CD4CFF00D151FF00D555FF72DD96FFFFFFFFFFE0FAEAFFB1F3
      CAFFB8F4CFFFFBFDFBFFFEFEFEFFC0F5D4FFBBF4D0FFDBF9E7FFFFFFFFFFD3F8
      E1FFAFF2C9FFBAF4D0FFFFFFFFFFE5F2E5FF00D04FFF00CF4FFF00CA4AFF00C6
      45FF00C140FF00BF43FF029832FF8A6959FF4C4329FF00AB42FF00BE3CFF00C2
      41FF00C746FF00CB4BFF00D04FFF00D454FF00D858FF26DF72FF60E795FFA1F1
      C0FFFFFFFFFFFFFFFFFFC3EBD0FF4ADB80FF46E282FF42E27FFF3BE17BFF84EC
      ABFFFFFFFFFF67E89AFF03DA5CFF00D757FF00D353FF00CF4EFF00CA4AFF00C6
      45FF00C140FF00BC3BFF00AC40FF51523AFF0000000000000000000000000000
      0000000000000000000004B145FF99AD57FF189C02FF1A9800FF1A9800FF1992
      00FF777728FFE46E54FFDF684DFFD96346FFD35E3FFFCE5838FFC95432FF7AD6
      E6FF34BDFFFF1DD1FFFF03BAFFFF0099FFFF0086FFFF007DFEFF0082C6FF00BA
      41FF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF737070FF9BD0B8FF6DD9A3FF55D295FF56D395FF55D495FF58D5
      96FF8FE2B8FFAAE8C8FFAAE8C8FFA8E6C7FFA5E5C4FFA3E4C3FFA1E3C1FF9FE1
      BFFFA3E1C1FFD3E8DEFFD5D6D6FFDCDBDBFFC9C9C9FF999999FF000000000000
      000000000000000000000000000000000000685735FF00AC3BFF00BC3AFF00C1
      40FF00C544FF00CA4AFF00CE4EFF00D252FF67DA8DFFFFFFFFFF81ECACFF1CDD
      69FF27DE6FFFDAF1DDFFF3FCF6FF38E079FF37E079FF7CEAA6FFFFFFFFFF57DE
      87FF14DD64FF16DC66FFFFFFFFFFD8ECD9FF00D050FF00CC4CFF00C747FF00C3
      42FF00BE3DFF00BA38FF00A437FF7E6652FF424425FF00AF3BFF00BB39FF00C0
      3FFF00C443FF00C848FF00CD4DFF00D150FF00D454FF00D858FF04DA5DFF15DD
      65FFC6F6D8FFFFFFFFFFFFFFFFFFC3ECD1FF5CD285FF79D79AFF77D598FFB7E4
      C5FFFFFFFFFF70E9A2FF00D757FF00D353FF00D04FFF00CB4BFF00C747FF00C3
      42FF00BE3DFF00BA38FF00B13AFF415332FF0000000000000000000000000000
      00000000000000C647FF00A33DFF22A807FF1CA500FF1A9B00FF199300FF1992
      00FF2D9207FFE4684EFFDF6347FFD95E40FFD45839FFCE5332FFC34B27FF87C2
      C7FF46BEFDFF21BAFFFF05B9FFFF009EFFFF0087FFFF008DFFFF007CA7FF00B9
      3FFF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF747070FFA3CFBDFF70D5A2FF55CC91FF54CC90FF64D29BFF9EE2
      BFFFB5E8CDFFB1E7CBFFAFE6C9FFADE5C8FFABE4C7FFA9E3C5FFA7E1C3FFA6DF
      C2FF9AD4B7FFC4CBC8FFDBDBDBFFE5E5E5FFD6D6D6FF6B6B6BFFC9C9C9FFF5F5
      F5FF00000000000000000000000000000000685C36FF00B036FF00B938FF00BE
      3DFF00C241FF00C746FF00CB4BFF00CE4EFF62D888FFFFFFFFFFA5E0B1FF29B5
      44FF37B64BFFEFF7EFFFFBFDFBFF4ABB5AFF3DB850FF94D59CFFFFFFFFFF7ECE
      89FF26B543FF48C060FFFFFFFFFFC9EACEFF00CC4CFF00C848FF00C443FF00C0
      3FFF00BC3AFF00B735FF00A832FF7F6954FF424625FF00B135FF00B837FF00BD
      3BFF00C140FF00C544FF00C949FF0ECF55FF1DD461FF29D96AFF33DD72FF39DF
      77FF4CDE82FFF9FCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDAF8E5FF53E187FF29D869FF1DD460FF0ECE54FF00C848FF00C443FF00C0
      3FFF00BB3AFF00B735FF00B234FF415532FF0000000000000000000000000000
      00000000000000BC41FF058222FF21C000FF1FB500FF21B40AFF178F01FF178B
      00FF1A9A00FFA6712DFFC24223FFB73715FFB53518FFB13C1DFFA53514FF82A9
      A7FF6EE8FDFF15C9FFFF13B1FFFF0086FEFF0083FEFF009EFFFF00829DFF00BB
      3DFF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF747070FFA9CEC0FF72D2A2FF52C78DFF58C991FFA3E1C1FFBAE8
      D0FFB7E7CEFFB5E6CDFFB3E5CCFFB1E5CAFFAFE3C8FFADE2C7FFAADFC4FFACDF
      C5FF8CC8AAFFC8CDCBFFE0E0E0FFE9E9E9FFECECECFFAEAEAEFF6A6A6AFFC5C5
      C5FF00000000000000000000000000000000695933FF00B131FF00B635FF00BB
      39FF01C03FFF14C74FFF29CE5FFF3AD36CFF75D88FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E9CAFF36D168FF24CB5AFF0FC449FF00BD
      3CFF00B937FF00B432FF00A82DFF806853FF434522FF00B02FFF00B533FF00BA
      38FF12C148FF29C95BFF3DD06AFF41D370FF41D672FF41D975FF41DB76FF41DD
      78FF4EE082FFE5FAECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5F1
      CAFF46DD7BFF41DA76FF41D874FF41D572FF41D36FFF3DCF69FF29C85AFF12C0
      47FF00B937FF00B432FF00B02EFF425332FF0000000000000000000000000000
      00000000000026BC55FF1FA014FF16D503FF21C400FF1CBC02FF1BA100FF1995
      00FF1A9900FF4F7D0DFFD45332FFB6360DFF9C1C00FF931702FF932B0DFF747C
      73FFA2F5FDFF33D7FFFF1AC3FFFF0A9EFEFF0896FEFF00A5FFFF168F6CFF12BF
      47FF000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF757070FFB1CDC5FF74CDA1FF58C38EFF9CDBBBFFC3E9D5FFBEE7
      D2FFBDE6D1FFBBE6D0FFB8E5CEFFB7E3CCFFB4E2CAFFB2E0C8FFB0DFC7FFB1DF
      C7FF8EC7AAFFCCD0CEFFE4E4E4FFEDEDEDFFF1F1F1FFF5F5F5FFD7D7D7FF8585
      85FFFEFEFEFF0000000000000000000000006A5A35FF00AD2BFF09B537FF27C0
      50FF42C965FF46CD6CFF46D06FFF46D372FF6BD385FFFFFFFFFFC3F2D3FF5FDF
      8BFF61E18DFFE7F5E9FFFFFFFFFF76E69EFF5FE28EFF9AEDB7FFFFFFFFFF8FE6
      AAFF5FDF8AFF7FE4A0FFFFFFFFFFBCE7C5FF46D170FF46CE6DFF46CC6BFF3DC6
      61FF20BD49FF03B231FF00A629FF816853FF444624FF01AC2BFF1FB945FF3FC4
      5FFF49C96AFF49CD6DFF49CF70FF49D272FF49D474FF49D676FF49D978FF49DA
      79FF49DC7BFF91EAAFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFAFF90E9AEFF49DB
      7AFF49DA79FF49D877FF49D676FF49D474FF49D171FF49CE6FFF49CC6CFF49C8
      69FF3EC35EFF1FB844FF01AD2AFF445332FF0000000000000000000000000000
      00000000000044BF66FF20AA14FF12DF00FF21D100FF21C100FF1EAF00FF1B9C
      00FF1A9800FF6A8E27FFCB4C2BFFA12600FF890D00FF901600FF6A5D3FFF41B4
      66FF86E6DFFF97F4FEFF72E5FFFF69DDFFFF60D9FFFF0EA3CDFF46C468FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF757071FFB8CCC7FF73CA9EFF83CEA8FFC5E7D6FFC5E8D6FFC4E7
      D4FFC1E6D4FFBFE5D1FFBCE5CFFFBBE4CFFFB9E2CDFFB7E1CBFFB4DEC8FFB5DE
      C9FF90C6ABFFCED2D0FFE6E6E6FFEEEEEEFFF3F3F3FFF4F4F4FFF3F3F3FFD4D4
      D4FF000000000000000000000000000000006F6044FF08AB2DFF4CC265FF4EC6
      69FF4EC96CFF4ECC6FFF4ECE71FF4ED174FF6BD385FFFFFFFFFFB1E9C0FF45D0
      6DFF3FCB66FFE1F1E2FFFFFFFFFF58D37BFF45D370FF7FDC98FFFFFFFFFF70D1
      86FF45CF6DFF62D481FFFFFFFFFFB5E4BEFF4ED073FF4ECD70FF4ECA6DFF4EC8
      6BFF4EC568FF45BF5EFF00A123FF8B7360FF4B4B2FFF06A82AFF50C367FF50C6
      6AFF50C86DFF50CC70FF50CE72FF50D075FF50D376FF50D578FF50D77AFF50D8
      7BFF50D97CFF52DB7FFFD3F5DEFFFFFFFFFFFFFFFFFFFEFEFEFF77DD97FF50D9
      7CFF50D87BFF50D679FF50D477FF50D276FF50D074FF50CD72FF50CB6FFF50C8
      6CFF50C569FF50C266FF0CAB2EFF54593DFF0000000000000000000000000000
      0000000000004ABC67FF22BC21FF0CC407FF18D800FF21C600FF1EB000FF1CA3
      00FF199400FF728B2DFFB43710FFA32800FF921A00FF800C01FF5EA16EFF50D8
      7CFF43BA73FF7EE0DAFF97F3FCFF76E7FBFF32B6B5FF48BC6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF767071FFBFCBCCFF86CDAAFFC8E7D7FFCEE9DCFFCBE8DAFFC9E7
      D8FFC7E6D7FFC5E5D5FFC2E5D3FFC0E4D1FFBEE2D0FFBCE0CDFFBADECCFFBBDE
      CDFF93C4ABFFD0D4D2FFE8E8E8FFF1F1F1FFF5F5F5FFF7F7F7FFF5F5F5FFD5D5
      D5FF00000000000000000000000000000000887B6CFF01A223FF52C268FF55C6
      6CFF55C86FFF55CB72FF55CD74FF55D076FF6BD183FFFFFFFFFFECF6ECFFA3D5
      A3FFAAD8AAFFFDFEFDFFFFFFFFFFBFE2BFFFA3D5A3FFD4EBD4FFFFFFFFFFD0E9
      D0FFA3D5A3FFC5E4C5FFFFFFFFFFACE0B5FF55CE75FF55CC73FF55CA71FF55C7
      6EFF55C46BFF45BD5CFF04981DFFAA9C95FF706959FF009E20FF4EBF63FF57C5
      6DFF57C870FF57CA73FF57CD75FF57CF77FF57D178FF57D37AFF57D47CFF57D6
      7DFF57D77EFF57D87FFF64D787FFFDFEFDFFFFFFFFFFFFFFFFFFC3EACEFF67CC
      83FF53D078FF57D47BFF57D37AFF57D178FF57CE76FF57CD74FF57CA72FF57C7
      70FF57C56DFF53C067FF01A020FF7F7C71FF0000000000000000000000000000
      00000000000053C06DFF37D632FF26C713FF1A9B00FF1CA700FF1B9E00FF1A9B
      00FF199500FF467D08FFB53406FFAE2D00FFAE2D00FF9D2300FF8D9E8BFF66CA
      81FF0000000057D37BFF4EC373FF56CF77FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF767172FFC9D0D3FFBDE2D0FFD6ECE1FFD2EADDFFCFE9DCFFCDE8
      DBFFCBE7D9FFC9E6D8FFC6E5D5FFC5E4D4FFC3E2D2FFC1E1D1FFBFDFCFFFC0DF
      D0FF95C3ACFFD1D5D3FFE9E9E9FFF1F1F1FFF6F6F6FFF7F7F7FFF6F6F6FFD6D6
      D6FF00000000000000000000000000000000CAC7C6FF0B911AFF45BB5AFF5CC5
      70FF5CC873FF5CCA75FF5CCD77FF5CCE78FF65CB7BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA4DDADFF5CCD78FF5CCB76FF5CC974FF5CC7
      71FF5CC46FFF35B54CFF2C7414FFE0DFDFFFC1BEBDFF018717FF3AB851FF5FC5
      71FF5FC774FF5FCA76FF5FCC77FF5FCE79FF5FD07BFF5FD27DFF5FD37EFF5FD4
      7FFF5FD580FF5DD580FFA8DFB6FFE7F4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCAE8D1FF69CB82FF5ED07CFF5FCF7AFF5FCE79FF5FCC77FF5FC975FF5FC7
      73FF5FC470FF41B855FF038E17FFD3D2D2FF0000000000000000000000000000
      0000000000005EC875FF2DAC2DFF4DE852FF13CA09FF16B904FF1AA603FF199F
      03FF1A9800FF7B6F16FFBD3D11FFAA2B00FFA92A00FFB03303FF9C8178FFF3F3
      F3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF777174FFD9D5DEFFE6F2ECFFD9EBE2FFD7EAE0FFD5EADFFFD3E9
      DEFFD0E8DCFFCFE7DAFFCCE5D9FFCAE5D8FFC8E3D5FFC6E1D4FFC4E0D2FFC5E0
      D3FF99C2ADFFD5D7D6FFEBEBEBFFF3F3F3FFF8F8F8FFFAFAFAFFF8F8F8FFD7D7
      D7FF00000000000000000000000000000000F7F7F7FF3E671EFF26B03FFF63C5
      74FF63C776FF63C978FF63CC79FF63CD7BFF66C979FFFFFFFFFFFFFFFFFFD9F4
      E0FFCFF1D8FFCFF1D8FFCFF2D9FFCFF2D9FFCFF2D9FFCFF1D9FFCFF1D8FFCFF1
      D8FFCFF1D8FFF1FAF3FFFFFFFFFF9FDBA9FF63CD7AFF63CA78FF63C877FF63C6
      75FF63C372FF14A82EFF5A5E2DFFFBFBFBFFF5F5F5FF1C5912FF16A930FF65C5
      75FF65C777FF65C978FF65CB7AFF65CD7CFF65CE7DFF65D07FFF65D280FF65D3
      82FF65D483FF81D396FFFDFEFDFF9FD9ADFFEDF7EFFFFFFFFFFFFFFFFFFFF2FB
      F5FFA8E5B7FFE8F6EBFFA4D8AFFF65CE7DFF65CD7BFF65CB7AFF65C878FF65C7
      76FF65C474FF1DAB35FF225917FFF8F8F8FF0000000000000000000000000000
      0000000000000000000057B469FF46DB49FF63F071FF4BE252FF4ED74BFF52CF
      49FF3F9B16FFD86845FFCC5432FFC46243FFA12800FFB03204FF9A4E35FFD3DB
      D5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF787275FFD9D4DEFFE9F3EEFFDDEDE5FFDBECE3FFD9EBE2FFD7EA
      E1FFD5E9DFFFD3E8DDFFD1E6DBFFCFE5DAFFCCE4D8FFCBE3D6FFC8E0D4FFCAE1
      D5FF99C0ADFFD6DAD8FFEDEDEDFFF5F5F5FFFAFAFAFFFCFCFCFFF9F9F9FFD8D8
      D8FF0000000000000000000000000000000000000000959589FF029B1BFF5DC0
      6BFF6AC779FF6AC97BFF6ACB7DFF6ACD7EFF67C878FFFFFFFFFFFFFFFFFF73D5
      8BFF6AD385FF6AD385FF6AD485FF6AD486FF6AD485FF6AD485FF6AD385FF6AD3
      84FF6AD283FFBDEAC8FFFFFFFFFF9CD9A5FF6ACC7DFF6ACA7CFF6AC87AFF6AC6
      78FF4DBA5CFF0A8E14FFBCB8B5FF0000000000000000838479FF009115FF4BBA
      5BFF6CC77AFF6CC87CFF6CCA7DFF6CCC7FFF6CCE80FF6CCF82FF6CD083FF6CD2
      84FF6CD385FFD3F1DBFFFFFFFFFFF8FCF9FFF2F9F3FFFFFFFFFFFFFFFFFFE2F6
      E6FF6CD184FFB0E5BCFFC6EBCDFF6CCD80FF6CCC7FFF6CCA7DFF6CC87BFF6CC6
      79FF53BC61FF009313FF9A9B94FF000000000000000000000000000000000000
      00000000000000000000000000005DB46DFF50C857FF68E968FF60DF5BFF58B2
      39FFECAE93FFE8684EFFD0502FFFC45735FFAA2B00FFAF3102FFAB2E07FFB2BA
      AEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF797275FFD9D2DDFFEDF4F0FFE3EFE9FFE1EEE7FFDFEDE5FFDDEB
      E4FFDAEAE2FFD9EAE0FFD6E8DFFFD4E6DDFFD2E5DBFFD0E4DAFFCDE1D7FFCEE2
      D8FFB4CFC2FFE0E2E1FFF2F2F2FFF8F8F8FFFCFCFCFFFDFDFDFFFAFAFAFFD9D9
      D9FF0000000000000000000000000000000000000000FAFAFAFF3B6B24FF1FAA
      35FF71C77CFF71C87EFF71CA80FF71CC82FF60C370FFFFFFFFFFFFFFFFFF7AD4
      8EFF71D287FF71D288FF71D388FF71D388FF71D388FF71D388FF71D287FF71D1
      87FF71D086FFC1EACAFFFFFFFFFF99D6A1FF71CB81FF71C97FFF71C77DFF6CC4
      77FF11A226FF596739FFFDFDFDFF0000000000000000F9F9F9FF1F5815FF0CA0
      22FF69C375FF73C87FFF73CA81FF73CC82FF73CD84FF73CE85FF73CF86FF73D0
      87FF73D188FF92DBA2FFF6FCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEA
      C8FF73D087FF73CF86FF73CE85FF73CD83FF73CB82FF73C980FF73C87FFF6DC4
      78FF11A225FF285A1CFFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073CD84FF73CE85FF64A7
      6EFFF4A897FFEF6D56FFD95739FFC0441DFFAE2E00FFAE2E00FFAD3D16FFA2C4
      A8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9FF797376FFD8D1DDFFF0F6F2FFE7F1ECFFE5EFEAFFE3EEE8FFE2EE
      E8FFE1EDE7FFE1EDE7FFE1EDE7FFE2EEE8FFE4EFE9FFE6F0EAFFE8F1EDFFEBF3
      EFFFE7EBE9FFEBEBEBFFF5F5F5FFFBFBFBFFFEFEFEFFFEFEFEFFFAFAFAFFD9D9
      D9FF000000000000000000000000000000000000000000000000D9DAD9FF167E
      11FF3BB24BFF78C882FF78CA84FF78CB85FF6AC578FFF5FAF5FFFFFFFFFF7BC6
      7FFF5DBB62FF5DBB62FF5DBB62FF5DBB62FF5DBB62FF5DBB62FF5DBB62FF5DBB
      62FF5DBB61FFCCE8CDFFFFFFFFFF95D39CFF78CB84FF78C983FF76C780FF27AA
      39FF2A6E14FFEFEFEFFF00000000000000000000000000000000D5D6D5FF066D
      09FF1CA62FFF74C67FFF79C984FF79CB86FF79CD87FF79CE88FF79CE89FF79CF
      8AFF79D08AFF79D18BFF8CD79BFFE3F5E7FFFFFFFFFFFFFFFFFFF6FAF7FF86CE
      94FF79CF8AFF79CE89FF79CD88FF79CC87FF79CB85FF79C984FF76C780FF23A8
      34FF0A6E0AFFE7E7E7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006CB8
      7BFFF4C0B0FFF97C68FFE2664CFFCB502EFFB6390DFFB03202FFAB461FFF7BBE
      88FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDEDEDFF7F7B7DFFE4E0E7FFFAFBFBFFF9FAF9FFF8FAF9FFF8FAF9FFF8F9
      F8FFF8F8F8FFF7F7F7FFF6F6F6FFF5F4F4FFF3F2F2FFF1F1F1FFEFEFEFFFEDEE
      EEFFEFEFEFFFF5F5F5FFFBFBFBFFFDFDFDFFFFFFFFFFFFFFFFFFFBFBFBFFD9D9
      D9FF00000000000000000000000000000000000000000000000000000000BDC1
      BBFF10860FFF41B350FF7EC987FF7ECB89FF77C882FFEEF7EEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8DCF94FF7ECA88FF7BC884FF2DAB3CFF1D79
      10FFD8D9D8FF000000000000000000000000000000000000000000000000B3B6
      B1FF047008FF1EA52FFF75C57EFF80CB8AFF80CC8AFF80CE8BFF80CE8CFF80CF
      8CFF80CF8DFF80D08DFF80D08EFF82D190FFB3E2BBFFE8F4EAFFFFFFFFFFDCF0
      DFFF7FCE8CFF80CE8CFF80CD8BFF80CC8AFF80CB89FF78C681FF24A734FF0676
      08FFC8CAC8FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000077C0
      82FFFBD0C6FFFD8F7DFFED725BFFD85E40FFC14820FFB23505FFAF441FFFD2E5
      D5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FF939191FFF4F5F5FFEDEDEDFFE9E9E9FFE9E8E8FFE8E8E8FFE8E7
      E7FFE8E8E8FFE9E9E9FFEAEAEAFFEBEBEBFFEDEDEDFFEFEFEFFFF1F1F1FFF4F4
      F4FFF8F8F8FFFBFBFBFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFBFBFBFFDADA
      DAFF000000000000000000000000000000000000000000000000000000000000
      0000C5CAC5FF187E13FF2EAB3DFF7DC885FF84CC8CFFE7F4E7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF94D19AFF74C47CFF1FA42EFF29731BFFDEDF
      DEFF000000000000000000000000000000000000000000000000000000000000
      0000BDC2BDFF096C09FF0E9B1DFF5FBD69FF86CC8DFF86CD8EFF86CE8FFF86CE
      90FF86CF90FF86CF91FF86D091FF86D091FF8DD096FFF8FBF8FFFFFFFFFFF6FB
      F7FF8ACF93FF86CE8FFF86CD8EFF86CC8DFF66BF6EFF139D22FF0D690AFFD1D2
      D1FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000083CA
      8DFFBCA58CFFFFCFC5FFFC9786FFED8671FFDB755BFFC25632FFA97665FFF3F8
      F4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFAFFA0A0A0FFF4F4F4FFE6E6E6FFE8E8E8FFEAEAEAFFECECECFFEEEE
      EEFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5F5FFF6F6F6FFF8F8F8FFFAFAFAFFFBFB
      FBFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFDBDB
      DBFF000000000000000000000000000000000000000000000000000000000000
      000000000000EAEBEAFF457E3DFF0D981BFF54B85EFFACDBB1FFECF7EDFFF1F9
      F2FFF1F9F2FFF1F9F2FFF1F9F2FFF1F9F2FFF1F9F2FFF1F9F2FFF1F9F2FFF1F9
      F2FFF1F9F2FFF0F8F1FFC5E5C7FF46B251FF099113FF5F8356FFF6F6F6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9EAE9FF2D6628FF01830BFF28A735FF6CC175FF8CCE93FF8CCE
      94FF8CCF94FF8CCF95FF8CD095FF8CD095FF9CD6A3FFFFFFFFFFFFFFFFFFEBF6
      ECFF8CCE93FF8CCE93FF71C278FF2DA839FF01880BFF3A6635FFF5F5F5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007EB180FFEFD2C6FFFFD9CEFFFEBAACFFF6AE9DFFCA7960FFE8E6E6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B2FFF9F9F9FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFFAFA
      FAFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFA6A6
      A6FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009FA99FFF439547FF0E961AFF42B04DFF70C2
      77FF8ECD94FF91CF97FF91CF97FF91D098FF91D098FF91CF97FF91CF97FF8BCC
      91FF69BF71FF3AAD45FF0B9013FF447A3BFFD2D6D2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000098A298FF267028FF02810AFF179C23FF46B2
      51FF6ABF72FF85CA8BFF93D098FF93D098FF93D098FFBAE0BDFFCEE9D0FFAADB
      AFFF49B353FF1B9E27FF018209FF24631FFFC6CAC6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BB67DFF989E7EFFADA085FF90906DFFADCFAFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A5FF959595FF959595FF959595FF959595FF9595
      95FF959595FF959595FF959595FF959595FF959595FF959595FF959595FF9595
      95FF959595FF959595FF959595FF959595FF959595FF959595FF949494FFEEEE
      EEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7DCD7FF80A580FF3A93
      3FFF0D9116FF1C9C27FF2DA637FF36AB40FF35AA3FFF2AA435FF189A22FF0D8A
      10FF31782BFF839E81FFE5E7E5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6DBD6FF668A66FF1E70
      20FF04750AFF048A0BFF048E0EFF0C9215FF0C9215FF058D0EFF03890BFF0473
      07FF186116FF668364FFE3E5E3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2D2D2FFB8BBB8FFA3A9A2FF95A395FFB4C1B4FFC3C9C3FFDFE2DFFFFDFD
      FDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A2A8A1FF94A294FFB3C0B3FFC2C8C2FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEEFFD1D1D1FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFDEDEDEFFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFDFDFDFFFDFDFDFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFCFFF4F4
      F4FFE7E7E7FFD9D9D9FFCFCFCFFFCCCCCCFFCCCCCCFFD0D0D0FFDBDBDBFFE9E9
      E9FFF5F5F5FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009FACBBFF6695BFFF6695C0FF6695C1FF6695C0FF6695C0FF6996C1FF6A97
      C0FF6A98C0FF6997BFFF6593BDFF6391BCFF6391BCFF6391BCFF6492BDFF6593
      BEFF6694BFFF6795C0FF6796C0FF6896C1FF6796C1FF6695C0FF909DACFFF4F4
      F4FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFDFDFDFFFCFC
      FCFFFAFAFAFFF8F8F8FFF5F5F5FFF3F3F3FFF0F0F0FFECECECFFE9E9E9FFE6E6
      E6FFE2E2E2FFE1E1E1FFEAEAEAFFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFFF4F4F4FFD8D8D8FFB0B0AFFF958C
      82FF96826AFFA68963FFB19063FFB39465FFB49768FFB2976BFFA7926EFF9689
      73FF979289FFB5B4B4FFDBDBDBFFF6F6F6FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF8CA8C0FF76AAD5FF7FB6DEFF76A7C9FF80B7DFFF80B8DFFF81B8DFFF82B9
      DFFF84BBE0FF8BBFE2FF88BDE1FF87BCE1FF89BDE1FF8CC0E3FF87BCE1FF87BD
      E1FF88BEE2FF88BEE2FF85BBE0FF7AAACBFF82B8DDFF79ADD6FF7E9EBBFFF1F1
      F1FF000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFAFFEBEBEBFFE0E0E0FFD8D8D8FFD4D4D4FFCBCBCBFFC4C4
      C4FFBEBDBDFFB7B6B6FFB1AFAFFFACA9A9FFA6A2A1FFA09B99FF9B9491FF968E
      8BFF978A85FF97877FFF9D9491FFD7D7D7FFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFFF9F9F9FFF7F7F7FFF8F8F8FFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F5FFCECECEFF998F87FFA17753FFD28C4BFFDC96
      4FFFDF9E59FFE4A665FFE9AD70FFECB278FFECB379FFE9B374FFE6B270FFE3B3
      6DFFE2B36CFFD3A869FFA18968FF9C9791FFD3D3D3FFF7F7F7FF000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF88A6BFFF7AAED3FF89BCE0FF91C4E4FF93C6E5FF93C6E5FF93C6E6FF93C6
      E6FF93C6E6FF93C6E5FF93C6E5FF93C6E5FF93C6E5FF93C6E5FF93C6E6FF94C6
      E5FF93C6E5FF93C7E5FF94C7E6FF92C5E4FF8BBEE0FF7EB1D6FF7DA0BDFFEFEF
      EFFF000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFFE6E6E6FFACAAABFF9D9796FF9B928FFF998F8AFF9A8D88FF9E8F
      88FFA29187FFA89589FFB19B8AFFB69E8AFFBEA289FFC4A587FFC9A581FFCFA8
      7FFFD4A978FFD6A972FFC19367FFB0A9A8FFFBFBFBFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFEDEDEDFFC8C8C8FF949D
      9BFF6B867DFF537D6CFF4A7B66FF4F7D6AFF638578FF83938DFFB7B9B8FFE1E1
      E1FFFBFBFBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFE4E4E4FFA19A95FFAA6D42FFD87A35FFDB863FFFE1954FFFE9A1
      61FFF1AF77FFF6C08FFFFBCCA1FFFDD3ADFFFCD1AAFFF9CA9EFFF5BD8BFFEFAC
      71FFE8A461FFE3A35BFFDFA45CFFDDA15AFFA8845EFFA6A3A0FFE8E8E8FFFEFE
      FEFF00000000000000000000000000000000000000000000000000000000FEFE
      FEFF88A7C1FF7AAFD4FF84BAE0FF5F9DD4FF63A3D8FF63A3D8FF63A3D8FF63A3
      D8FF63A3D8FF63A3D8FF63A3D8FF5A94CBFF62A1D6FF63A3D8FF63A3D8FF63A3
      D8FF63A3D8FF63A3D8FF63A3D8FF5F9ED4FF89BFE3FF7BAFD5FF779FBEFFEBEB
      EBFF000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFB0AEAEFFBF9A7CFFD1AA7EFFD2AE86FFD2B18AFFD1B38EFFD1B4
      90FFD1B491FFD0B391FFCEB28DFFCEB089FFCEAB83FFCEA97EFFCDA776FFCEA5
      70FFCFA269FFD1A163FFCD985BFFA0938DFFF2F2F2FFFCFCFCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E5FF8F9A96FF39775DFF0A8D4CFF01A0
      4AFF00AD4CFF00B250FF00B655FF00B959FF00BD5DFF02BA60FF0AAE64FF2F92
      68FF718C82FFE5E5E5FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFFD4D4D4FF957562FFCD6624FFD6742BFFDC8B3BFFE7A85FFFF3C88CFFFBE3
      AFFFFEF0C1FFFEF3C9FFFEF7D4FFFEF9DAFFFEF9DAFFFEF7D3FFFEF2C8FFFDF0
      C0FFFAE1ACFFF2C688FFE5A358FFDC9443FFDC944BFFD18C4BFF968576FFDBDB
      DBFFFDFDFDFF000000000000000000000000000000000000000000000000FBFB
      FBFF7B9BB6FF81B8DEFF84BAE0FF6BA5D5FF6FACDAFF6FACDAFF6FACDAFF6FAC
      DAFF6FACDAFF6FACDAFF5A90C4FF4E7DB5FF568ABFFF6DAAD8FF6FACDAFF6FAC
      DAFF6FACDAFF6FACDAFF6FACDAFF6BA7D6FF88BFE3FF7CB3DCFF6E99BAFFCACA
      CAFF000000000000000000000000000000000000000000000000000000000000
      0000F4F4F4FFA39995FFDCB080FFD5AE7FFFD5B287FFD9B78FFFDFBE99FFE2C2
      9DFFE3C4A0FFE3C5A1FFE4C4A0FFE5C39DFFE5C198FFE4BF93FFE1B888FFDDB1
      7EFFD7A86EFFD19E61FFC58F53FF897872FFD2D2D2FFF4F4F4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFBFFB6B9B8FF32775AFF009340FF00A340FF00A946FF00AD
      4CFF07B455FF16BB63FF1AC069FF1AC46DFF0FC56AFF00C566FF00C769FF00C9
      6BFF04C56DFF9CB1AAFF00000000F2F2F2FFD6D6D6FFFCFCFCFF000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFD1D1
      D1FF9C6345FFD25915FFD67627FFE2A04FFFF5CF8EFFFEE3A9FFFEECC5FFFEF5
      E0FFFEFBF5FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFA
      F3FFFEF4DEFFFEEBC2FFFDE3A8FFF4CC8AFFE09C4AFFD9893AFFD9833DFF9D7B
      61FFD8D8D8FFFEFEFEFF0000000000000000000000000000000000000000D0D0
      D0FF718EA8FF7EB6DEFF80B6DEFF5B96CAFF609DCFFF609DCFFF609DCFFF609D
      CFFF609DCFFF4D7FB6FF426CA4FF4570A8FF4773ACFF4E80B7FF609CCEFF619E
      CFFF619ECFFF609DCFFF609DCFFF5C98CCFF86BDE2FF78B0DAFF77A2C1FF8F71
      5AFF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA39892FFF2C594FFF3CB9CFFF2CDA0FFF2CEA4FFF2CFA6FFF2CF
      A7FFF2D0A7FFF2CFA7FFF2CEA4FFF2CDA2FFF2CB9EFFF2C99AFFF2C794FFF2C6
      90FFF2C389FFF1BF86FFE0AC7AFF9A887FFF868787FFDCDCDCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FF8C9995FF0D8144FF009C38FF00A23EFF18B056FF54CF8DFF90E8
      BDFFB8F6DBFFC8FBE6FFCBFDEAFFC2FDE6FFB6FBDFFF9CF6D0FF69EAB1FF30DB
      8EFF04D175FF8CA89EFFFEFEFEFFADA599FFBF6325FFA39288FFEFEFEFFF0000
      0000000000000000000000000000000000000000000000000000DEDEDEFF9D61
      45FFCF4E0AFFD77B2AFFEFBB72FFFDD996FFFEE7C1FFFEFAF4FFFEFDFBFFFEF4
      E1FFFEF0CFFFFEF0C9FFFEF4CCFFFEF7D1FFFEF6CFFFFEF2C8FFFEEEC6FFFEEF
      CEFFFEF4E2FFFEFDFCFFFEF8F0FFFEE4BAFFFDD895FFEDB66CFFD88232FFD776
      31FF9D7B63FFE4E4E4FF00000000000000000000000000000000000000009C60
      44FF7C90A5FF7BB3DCFF7FB6DFFF5F9ED5FF65A5D9FF65A5D9FF65A5D9FF65A6
      D9FF5184BDFF3F68A4FF436FAAFF4572ADFF4977B2FF4C7BB5FF568AC1FF68A7
      D9FF69A8DBFF67A7DAFF65A5D9FF61A0D6FF84BCE2FF76AED9FF76A9CFFFC16D
      31FF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA39892FFF0C08DFFF2C794FFF2C998FFF2C99BFFF2CB9EFFF2CB
      9FFFF2CC9FFFF2CB9FFFF2CB9DFFF2CA9AFFF2C896FFF2C793FFF2C48DFFF2C2
      89FFF0BE84FFEEBA83FFE1AC7BFFBFACA3FFA3A4A4FFCACACAFF000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFF869690FF058739FF009935FF0EA84AFF52DA98FF8FFCD2FF9EFFDAFFABFF
      DFFFBAFFE4FFC0FFE6FFBBFFE5FFA9FFDEFF97FFD8FF89FFD3FF80FFD0FF7EFF
      CFFF48F5B3FF8BAB9FFFD1D0CFFFDCBC86FFDD7322FFD65804FFA17659FFE6E6
      E6FF0000000000000000000000000000000000000000F1F1F1FF9B7C6FFFCE43
      01FFD87B2BFFF7C67CFFFED499FFFEF6ECFFFEFAF5FFFEE6BEFFFED895FFFEDC
      9AFFFEE2A7FFFEE8B3FFFEEEBCFFFEF0C2FFFEEFC0FFFEECB8FFFEE6AEFFFEE0
      A1FFFED994FFFED693FFFEE6BFFFFEFBF8FFFEF3E5FFFED193FFF5C178FFD880
      31FFD36924FFA08E84FFF5F5F5FF00000000000000000000000000000000CC42
      01FF7DA1BBFF77B0DBFF7EB3DBFF6294C2FF6599C6FF6599C6FF6599C6FF537E
      AEFF3C5A8FFF3E5E93FF3F6297FF41669AFF44699EFF476EA1FF4971A4FF527F
      B0FF6599C6FF6599C6FF6599C6FF6296C4FF82B9E0FF75ADD9FF77AFDAFFC074
      31FF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA39792FFF0BE89FFF2C48DFFF2C590FFF2C692FFF2C795FFF2C7
      96FFF2C796FFF2C796FFF2C793FFF2C691FFF2C48EFFF2C28BFFF1C086FFF0BD
      84FFEEB982FFECB681FFDFA87AFFBEACA3FFB2B2B2FFC8C8C8FF000000000000
      000000000000000000000000000000000000000000000000000000000000ACB2
      B0FF078239FF009630FF13BD64FF4DF8B8FF64FFC7FF74FFCBFF8BFFD3FFA2FF
      DCFFB8FFE4FFC1FFE7FFBEFFE6FFABFFDFFF94FFD7FF7BFFCEFF62FFC6FF47FF
      BDFF3ED6A0FFE0E3E2FFB9AE93FFF1D298FFFEDAA1FFEC9B51FFDA6D21FFA87A
      5AFFEDEDEDFF000000000000000000000000FEFEFEFFC0BCBBFFC5440AFFD66E
      21FFF8BF72FFFED4A4FFFEFDFCFFFEEACEFFFECA7AFFFECB7AFFFCD089FFF4D7
      BEFFF8D5A2FFFEE3A9FFFEE7B0FFFEE9B4FFFEE9B3FFFEE6ADFFFBDFA3FFF6DF
      BAFFFAD495FFFECF81FFFEC874FFFEC97BFFFEEDD6FFFEFCFAFFFECE97FFF6BE
      71FFD67427FFC25E24FFCAC8C8FFFEFEFEFF000000000000000000000000D36D
      21FF81AAC7FF6FA7D6FF7CB2DCFF5B97D0FF619FD4FF609ED3FF619ED4FF5A92
      C9FF588DC4FF446DA8FF3D609DFF3E64A0FF3F68A4FF426DA9FF5993CAFF5A94
      CBFF5F9DD3FF5F9DD3FF5F9DD3FF5B98D0FF7FB5DDFF75ADDAFF78B0DCFFD0A4
      67FF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA39792FFEEBD8BFFF2C289FFF2C289FFF2C38BFFF2C48DFFF2C5
      8EFFF2C58EFFF2C48EFFF2C38CFFF2C28AFFF1C187FFF0BF85FFEFBC83FFEEB9
      82FFECB581FFEAB27FFFDFA579FFC0ADA4FFB3B4B4FFC8C8C8FF000000000000
      0000000000000000000000000000000000000000000000000000E9E9E9FF2077
      4BFF00922BFF02CB6FFF1BFFB0FF39FFB9FF54FFC1FF6DFFCAFF85FFD1FF9AFF
      D9FFADFFE0FFB7FFE3FFB2FFE1FFA2FFDCFF8DFFD4FF76FFCCFF5EFFC4FF43F4
      B5FFADC2BBFFB1AFA8FFF0D9A5FFFCE5B6FFFFE1AAFFFFDB9FFFF5B76FFFDF83
      3CFFA78F7CFFFBFBFBFF0000000000000000F2F2F2FFA06950FFD0550DFFF5B4
      64FFFECE9EFFFEFEFEFFFED9AEFFFEBB64FFFEC169FFFEC874FFFED188FFFEFC
      F9FFFAF2EAFFF9D69CFFFEE1A4FFFEE2A6FFFEE2A6FFFDDFA0FFF8E5C8FFFEFE
      FEFFFDDFACFFFECB7AFFFEC56FFFFEBE67FFFEB862FFFEDEBBFFFEFDFCFFFEC5
      8EFFF2AF60FFD15D15FFA07A66FFF6F6F6FF000000000000000000000000F2B2
      63FF7EADD1FF6CA5D4FF79B0DAFF5994CAFF609CCFFF5E9ACEFF609BCFFF5F9B
      CEFF5E9ACEFF466CA5FF3B5995FF3C5D98FF3D619CFF3F67A1FF5E9ACFFF5D99
      CEFF5D99CEFF5D99CEFF5D99CEFF5994CAFF7BB1DAFF73ABD8FF77AFDBFFCFA6
      7DFF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA39693FFECBB90FFF0BE87FFEFBD83FFF0BF85FFF1C085FFF1C0
      86FFF1C086FFF1C085FFF0BF85FFEFBE83FFEEBB83FFEEB982FFEDB681FFEBB3
      7FFFE9AF7EFFE8AC7DFFDDA278FFC2AFA7FFB6B6B6FFC8C8C8FF000000000000
      0000000000000000000000000000000000000000000000000000839791FF008A
      2AFF01C061FF01FAA5FF0FFEAEFF30FFB6FF4BFFBEFF63FFC6FF79FFCDFF8BFF
      D4FF99FFD9FFA0FFDBFF9DFFDAFF91FFD6FF80FFD0FF6CFFC9FF60FFC5FF6EBA
      9EFFDAD9D9FFDAC496FFF7E8C4FFFFEFC6FFFFE4ADFFFFD998FFFFD089FFF8B6
      6BFFDC9352FFC7C4C1FF0000000000000000D5D4D4FFC5470CFFE89645FFFEB9
      7AFFFEFCFBFFFED6ADFFFEB05AFFFEB760FFFEBE66FFFEC46DFFFECA77FFFEE9
      C6FFFEFEFEFFF9E9D9FFFBD391FFFEDB99FFFEDB98FFF7D7ABFFFEFEFEFFFEF8
      EFFFFECD7FFFFEC773FFFEC169FFFEBB63FFFEB45DFFFEAE57FFFEDDBCFFFEFB
      F8FFFEB36FFFE38E3FFFBD5019FFE1E1E1FF000000000000000000000000FBB7
      79FF7CB0D7FF69A2D2FF78ADD5FF5D87B4FF608CB8FF608CB8FF608CB8FF608C
      B8FF608CB8FF466292FF3B5183FF3C5586FF3D5789FF3F5C8DFF618DB9FF608C
      B8FF608CB8FF608CB8FF608CB8FF5C89B5FF7AAFD8FF71A9D6FF76AEDAFFC7C8
      C8FFFDB26FFF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA39693FFEABA95FFEEBA87FFEDB881FFEEB983FFEEBB83FFEFBB
      83FFEFBB83FFEEBB83FFEEB983FFEDB881FFECB681FFEBB47FFFEAB17EFFEAB0
      7FFFE9B083FFE9AF86FFDEA37FFFC3B1A9FFB8B8B8FFC8C8C8FF000000000000
      00000000000000000000000000000000000000000000F8F8F8FF277A4DFF00A4
      41FF02F098FF00F8A2FF05FEABFF22FFB3FF3DFFBAFF54FFC1FF68FFC8FF78FF
      CDFF83FFD1FF88FFD2FF86FFD2FF7DFFCFFF6FFFCAFF63FFC6FF66DFB3FFDFE2
      E1FFB1A288FFEFD4A4FFFEFBE6FFFFF3CAFFFFE7B2FFFFDA98FFFFCE80FFFFC1
      73FFF4AD63FFB49778FFFCFCFCFF00000000B09F98FFD35A12FFFCA452FFFEF0
      E4FFFEE6D0FFFEA751FFFEAD56FFFEB35DFFFEB962FFFEBF67FFFEC56EFFFECE
      84FFFEFCFAFFFEFEFEFFF7DBBFFFFCD289FFF8CC8FFFFCF8F4FFFEFEFEFFFEE2
      B5FFFEC873FFFEC36BFFFEBD65FFFEB760FFFEB15AFFFEAA53FFFEA652FFFEEC
      DCFFFEE8D6FFFAA24FFFD0520BFFBBB2AEFF000000000000000000000000FAEC
      E0FF78AED7FF67A0D1FF74A9D3FF5084B8FF548ABBFF548ABBFF548BBCFF558C
      BDFF568DBEFF46679CFF3E568CFF3D578DFF3D598FFF3E5E94FF558BBCFF548B
      BCFF548BBCFF548BBCFF548BBCFF5185B8FF79AED8FF6CA4D3FF73ACD8FFC0B8
      B1FFFDE7D5FF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29694FFE8B999FFEBB587FFEAB27FFFEBB380FFEBB480FFECB5
      80FFECB480FFEBB480FFEBB27FFFEAB27FFFEBB587FFECBB92FFEEC19FFFEEC3
      A4FFEDC2A5FFEDC1A5FFE0AC8FFFC6B3ACFFB9BABAFFC9C9C9FF000000000000
      00000000000000000000000000000000000000000000D4D6D5FF01802FFF02D8
      7CFF00EF95FF00F59EFF00FBA6FF10FEAEFF2BFFB5FF42FFBBFF54FFC1FF62FF
      C6FF6CFFC9FF6FFFCAFF6EFFCAFF66FFC7FF5AFFC3FF7BF7CAFFA6BDB4FFB5B0
      AAFFE5B475FFFBEED5FFFFF2C9FFFFEDBFFFFFE3ABFFFFD893FFFFCB7DFFFFBF
      70FFFFB263FFE8AF6DFFE1E0E0FF00000000A57C6BFFE68132FFFEBA88FFFEFD
      FCFFFEAD66FFFEA34DFFFEA952FFFEAF59FFFEB55EFFFEBA63FFFEBF67FFFEC4
      6DFFFEE7C4FFFEFEFEFFFEFEFEFFF4CAA3FFF9EADEFFFEFEFEFFFEFAF6FFFEC9
      78FFFEC26AFFFEBD65FFFEB861FFFEB25CFFFEAD56FFFEA650FFFEA04BFFFEB3
      73FFFEFEFEFFFEB077FFE2792CFFAB8C7FFF000000000000000000000000F1F0
      EFFF79AED8FF669ECEFF6FA3CEFF4C7BACFF5183B2FF5284B3FF5183B2FF5082
      B2FF4F81B0FF4F81B0FF4F81B0FF5182B1FF5182B1FF5284B3FF5183B2FF5184
      B3FF5184B2FF5183B2FF5082B2FF4C7CACFF77ACD5FF679ECCFF6FA8D6FFBA90
      6DFFFCFCFCFF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29695FFE8B99FFFE9B286FFE8AD7DFFE9AE7EFFE9AF7EFFE9AF
      7EFFE9AF7EFFE8AE7CFFEAB385FFEDBF9BFFEFC8ABFFEFC9AEFFEFC8ADFFEEC6
      ABFFEDC2A8FFECBFA6FFE4B299FFCEBFBAFFBCBDBDFFCACACAFF000000000000
      00000000000000000000000000000000000000000000A6B2AFFF009F42FF01E5
      88FF00EB90FF00F199FF00F7A1FF01FCA9FF14FFAFFF2BFFB5FF3CFFBAFF49FF
      BEFF52FFC0FF55FFC2FF54FFC1FF4DFFBFFF63FFC6FF76C0A4FFE1E1E0FFC891
      5CFFF1C899FFFFE5B3FFFFE6B0FFFFE3AAFFFFDB9BFFFFD287FFFFC777FFFFBB
      6BFFFFAF5FFFF8AB5FFFBFBBB2FF00000000AC6E51FFF68D39FFFEE6D4FFFEDF
      C6FFFE9843FFFE9F4AFFFEA54EFFFEAA54FFFEB059FFFEB55EFFFEBA62FFFEBE
      66FFFEC97CFFFEFDFBFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEE2BAFFFEC0
      68FFFEBC64FFFEB760FFFEB35CFFFEAE57FFFEA851FFFEA24CFFFE9C47FFFE96
      41FFFEE7D6FFFEDAC2FFF28734FFA57C6AFF000000000000000000000000ECD1
      B9FF78ADD9FF6096C6FF649BCDFF5E94C5FF5D94C5FF5D93C5FF5D94C5FF5D94
      C4FF5D94C5FF5E94C5FF5E94C5FF5E94C5FF6095C5FF6096C6FF6096C6FF6096
      C6FF6196C6FF6196C6FF6196C6FF6096C5FF679ECFFF6399C6FF6BA4D4FFB382
      56FFFBE4D3FF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29695FFE6BAA4FFE7AE86FFE5A77AFFE5A87BFFE6A97BFFE6A9
      7BFFE7AC80FFEBBC9AFFF0CEB6FFF0CEB7FFEFCBB3FFEFC9B3FFEFC7B0FFEEC5
      AFFFEDC2ACFFEFCCBAFFECDFDBFFD8D5D5FFC2C2C2FFCCCCCCFF000000000000
      000000000000000000000000000000000000000000008DA29CFF01BD5AFF00E1
      83FF00E78BFF00ED93FF00F29BFF00F8A2FF01FCA8FF0FFEAEFF21FFB2FF2DFF
      B6FF35FFB8FF39FFB9FF37FFB8FF37FFB9FF5AE1B0FFD9DDDBFFA8866EFFE392
      4CFFFED696FFFFD793FFFFD996FFFFD792FFFFD287FFFFCA7AFFFFC071FFFFB5
      65FFFFA959FFFE9D4DFFB7AB9BFF00000000B0714FFFFE8E41FFFEFDFDFFFEBA
      88FFFE9440FFFE9A45FFFEA04BFFFEA54FFFFEAB54FFFEB15CFFFEB865FFFEBD
      6DFFFEC172FFFEEAD0FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFECC89FFFEC0
      71FFFEBB6BFFFEB663FFFEAE59FFFEA852FFFEA34DFFFE9E49FFFE9843FFFE92
      3EFFFEC296FFFEF9F6FFFC8736FFA57E6AFF000000000000000000000000E2A8
      7EFF75AAD6FF5E96CBFF649FD3FF5D91BFFF649FD3FF64A0D4FF64A0D4FF64A0
      D4FF64A0D4FF65A0D4FF65A0D4FF649FD3FF649FD3FF649FD3FF649FD3FF649F
      D3FF649FD3FF65A0D3FF66A1D4FF6094C1FF67A1D4FF6198CCFF659DD0FFB183
      5CFFFABF94FF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29695FFE5BBA8FFE6AA86FFE3A278FFE3A379FFE3A378FFE4A7
      7EFFEDC5ABFFF1D0BCFFF0CEBAFFF0CEB9FFEFCBB7FFEFC9B5FFEFC7B3FFEEC5
      B2FFEEC8B7FFEBDEDAFFD7D4D4FFDEDEDEFFC4C4C4FFC7C7C7FF000000000000
      00000000000000000000000000000000000000000000859C95FF00CC6BFF00DD
      7DFF00E385FF00E88DFF00ED94FF00F29BFF06F7A2FF13FBABFF20FEB1FF2EFE
      B6FF37FFB9FF3DFFBAFF3CFFBAFF2BFCB3FF41A67FFFCCC7C5FFD6661AFFF7B0
      63FFFFCC83FFFFD088FFFFD189FFFFCE84FFFFC87BFFFFC070FFFFB767FFFFAD
      5DFFFFA251FFFF9746FFC9AC91FF00000000B57653FFFE9A5BFFFEFEFEFFFEA1
      5DFFFE903CFFFE9844FFFEA456FFFEAE66FFFEB772FFFEBC79FFFEC07CFFFEC2
      7EFFFEC580FFFEE5C7FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEC989FFFEC3
      7FFFFEC17DFFFEBE7BFFFEBB78FFFEB470FFFEAB62FFFEA052FFFE9440FFFE8D
      3AFFFEA96DFFFEFEFEFFFE8E48FFA9836EFF000000000000000000000000E392
      57FF88B7D8FF92C5E5FF93C4E5FF93C4E5FF94C5E5FF95C6E6FF97C7E6FF98C8
      E7FF99C9E7FF9BCAE7FF9CCBE8FF9FCDE9FFA0CDE9FF9ECDE9FF9ACAE8FF97C8
      E7FF96C7E6FF95C6E6FF94C6E6FF92C5E5FF91C4E4FF8EC2E4FF8ABBDDFFAB7D
      5BFFFCA86CFF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29695FFE4BCAEFFE3A586FFDF9B77FFDF9B76FFE3A887FFEEC9
      B6FFF1D2C2FFF0D0C0FFF0CEBEFFF0CEBDFFEFCCBBFFEFCABAFFEEC7B7FFEEC6
      B6FFE2BAACFFCEC8C8FFDDDDDDFFE6E6E6FFD2D2D2FF9D9D9DFFE3E3E3FFFAFA
      FAFF0000000000000000000000000000000000000000859C96FF00D16FFF00D8
      77FF00DE7FFF0FE48CFF24EB99FF37F0A5FF40F3ACFF40F6B0FF40F9B3FF40FA
      B5FF40FCB7FF40FCB8FF37FCB5FF06E78FFF04D780FF76866BFFE97E2CFFFFB9
      6FFFFFC787FFFFCA8AFFFFCB8BFFFFCA8AFFFFC787FFFFC180FFFFB771FFFFA9
      5CFFFF9A49FFFF903DFFC6A082FF00000000B67250FFFEA26AFFFEFEFEFFFE9F
      5DFFFEA25EFFFEAE71FFFEB275FFFEB678FFFEB97AFFFEBC7DFFFEBF7FFFFEC1
      82FFFCC082FFFADEC4FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCC48AFFFEC2
      83FFFEC181FFFEBD7EFFFEBB7CFFFEB879FFFEB477FFFEB174FFFEAB6EFFFE9E
      5AFFFEA264FFFEFEFEFFFE904EFFAA826DFF000000000000000000000000FC9E
      5CFF8FB1CAFF92BBD9FFA3AFBDFFC6C0BBFFCBC5BBFFCDC7BCFFD0CCBEFFD3CF
      BFFFD5D2C0FFD7D6C4FFD9DAC8FFD8DCCBFFD9DDCDFFDCDECEFFDBDECFFFD9DD
      CEFFD7DBCDFFCEDEDBFFC0E5F7FFCCE6F3FFBED9E7FF9EC1D8FF93C5E4FFCC88
      58FF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29796FFE4BEB3FFE1A285FFDD9574FFDF9B7BFFEDCBB9FFF1D4
      C7FFF0D2C3FFF0D1C2FFF0CFC1FFEFCEC0FFEFCCBEFFEFCBBCFFEEC8BBFFEEC8
      BAFFD7ADA0FFD0CCCCFFE1E1E1FFEAEAEAFFEBEBEBFFB3B3B3FFA2A2A2FFE1E1
      E1FF00000000000000000000000000000000000000008AA09AFF00CE69FF1CD7
      7DFF3DDF91FF48E59CFF48E8A1FF48ECA5FF48EFA9FF48F1ACFF48F4AFFF48F5
      B1FF48F6B2FF48F7B3FF21C889FF00D87AFF00DD80FF31C171FFFDA050FFFFB9
      7AFFFFC082FFFFC285FFFFC386FFFFC285FFFFBF82FFFFBB7EFFFFB679FFFFB0
      73FFFFA565FFFF9146FFCD9977FF00000000B77452FFFE9F66FFFEFEFEFFFEB6
      86FFFEAD74FFFEB077FFFEB37AFFFEB77DFFFEBA7FFFFEBC82FFFAB87FFFF6C2
      9BFFF7DED0FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF7E2D7FFF6C8
      A7FFF7B681FFFDBD83FFFEBB81FFFEB87EFFFEB57BFFFEB279FFFEAF76FFFEAB
      73FFFEBC90FFFEFEFEFFFE8F4EFFAB816CFF000000000000000000000000FBB4
      84FF9F9086FFBD937EFFF1883BFFFC903BFFFF933BFFFF983BFFFF9E3BFFFFA6
      43FFFFAE52FFFFB55DFFFFB967FFFFBD6FFFFFC074FFFFC178FFFFC27AFFFFC3
      7BFFFFC27AFFFCC47FFFD3ECF5FFDDF2FDFFEEEDEDFFAEC0CEFF92ACBCFFF3A4
      6FFF00000000000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29796FFE4C1B9FFDF9E85FFDC9579FFEBC4B4FFF1D7CDFFF1D4
      CAFFF1D3C8FFF0D3C7FFF0D1C5FFEFCFC3FFEFCDC2FFEFCBC0FFEEC8BEFFEEC8
      BEFFD8ADA3FFD3D0CFFFE5E5E5FFEDEDEDFFF1F1F1FFF6F6F6FFD7D7D7FFB4B4
      B4FF0000000000000000000000000000000000000000A0B1ACFF01C461FF4FDA
      90FF51DE96FF51E29AFF51E59FFF51E8A2FF51EBA6FF51EDA9FF51EFABFF51F0
      AEFF51F1AFFF51F1AFFF32D997FF0FC176FF00DA7DFF00DF82FFA6B263FFFFB4
      78FFFFB97EFFFFBB80FFFFBB81FFFFBB80FFFFB97EFFFFB57AFFFFB177FFFFAB
      71FFFFA56BFFFF995CFFC09A81FF00000000B17F67FFFE8F4FFFFEFEFEFFFEC4
      9FFFFEAF7AFFFEB27DFFFEB580FFFEB882FFFEBB85FFF7CAABFFFAEDE7FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFCF9F7FFF6D9C8FFFABF91FFFEBA84FFFEB781FFFEB47EFFFEB17CFFFEAE
      79FFFECBABFFFEFDFDFFFE813BFFAE8A79FF000000000000000000000000F6BE
      9AFFCDA491FFF58A3BFFFE923BFFFF933BFFFF983BFFFFA03DFFFFAA4BFFFFB3
      59FFFFB966FFFFBF72FFFFC37BFFFFC783FFFFC989FFFFCB8DFFFFCC8FFFFFCC
      8FFFFFCB8EFFFFCC90FFF6D7B8FFE5EFF1FFECF7FCFFE9E8E8FFA0928AFFDF9B
      6EFFFCC9AAFF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29796FFE5C3BDFFDD9881FFE5B2A1FFF1D9D0FFF1D8CFFFF1D6
      CDFFF1D4CBFFF1D3CAFFF0D2C8FFF0D0C7FFEFCEC4FFEFCDC3FFEECAC1FFEECA
      C1FFD8ADA4FFD4D1D1FFE6E6E6FFEEEEEEFFF3F3F3FFF4F4F4FFF8F8F8FFC0C0
      C0FF0000000000000000000000000000000000000000CDD1D0FF00B057FF47D5
      86FF59DB95FF59DF99FF59E29DFF59E4A1FF59E7A4FF59E9A7FF59EAA9FF59EC
      AAFF59EDABFF59EDACFF59EDABFF3BC98EFF07D27AFF00DC7EFF0FD97FFFDFA4
      5DFFFFB27BFFFFB47DFFFFB47DFFFFB47CFFFFB27BFFFFAF78FFFFAB75FFFFA7
      70FFFFA16AFFFF8E4DFFCBB1A1FF00000000B69C90FFFC7327FFFEF6F1FFFEDC
      C8FFFEB281FFFEB584FFFEB787FFFEBA89FFFEBC8BFFFEF0E5FFFEFAF7FFFEFA
      F7FFFEFAF7FFFEFAF7FFFEFAF7FFFEFAF7FFFEFAF7FFFEFAF7FFFEFAF7FFFEFA
      F7FFFEFAF7FFFEFAF6FFFED1B0FFFEBB8AFFFEB988FFFEB686FFFEB383FFFEB1
      80FFFEE2D2FFFEEEE5FFF96A1DFFBCACA5FF000000000000000000000000FDDB
      C7FFC9B3A6FFE4A788FFFF923BFFFF973BFFFFA13FFFFFAC4DFFFFB45DFFFFBC
      6CFFFFC179FFFFC784FFFFCD8FFFFFD097FFFFD29DFFFFD4A0FFFFD5A1FFFFD5
      A2FFFFE4C3FFFEEFE0FFFECFA3FFF4BC8BFFF3F0EBFFF6F9FAFFE0DFDCFFAC85
      6BFFE5CCBEFFFDEDE4FF0000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29897FFE5C6C2FFE1A696FFF2DBD5FFF3DBD5FFF2DAD3FFF2D8
      D2FFF1D7CFFFF1D5CEFFF0D4CCFFF0D2CBFFEFD0C9FFEFCEC8FFEFCDC5FFEFCD
      C5FFD9AFA7FFD6D3D3FFE8E8E8FFF1F1F1FFF5F5F5FFF7F7F7FFFBFBFBFFDDDD
      DDFF0000000000000000000000000000000000000000FCFCFCFF159B5DFF2ECB
      72FF62D995FF62DC98FF62DF9CFF62E1A0FF62E3A2FF62E5A4FF62E6A6FF62E8
      A8FF62E8A9FF62E9AAFF62E9A9FF63E7A9FF3BC78BFF02D77AFF00DB7DFF3DC4
      6FFFFB9F61FFFFAE7AFFFFAF7AFFFFAE7AFFFFAD78FFFFAA76FFFFA773FFFFA2
      6FFFFF9E6AFFFE7D32FFE6E3E2FF00000000DAD7D6FFEF5E12FFFECFB6FFFEF8
      F5FFFEB88EFFFEB78BFFFEBA8DFFFEBC8FFFFEBE91FFFEC093FFFEC194FFFEC2
      95FFFEC396FFFCC396FFF8D5B9FFFAEBDCFFFAE5D0FFFBC89FFFFEC497FFFEC3
      96FFFEC295FFFEC194FFFEBF92FFFEBD90FFFEBB8EFFFEB98CFFFEB68AFFFEBA
      92FFFEFBFAFFFEC2A1FFE85B13FFE7E6E6FF0000000000000000000000000000
      0000DEA37EFFEAE0DCFFEB904FFFFFA13EFFFFAC4CFFFFB45DFFFFBC6EFFFFC3
      7CFFFFCA8BFFFFD197FFFFD5A2FFFFD9AAFFFFDBAFFFFFDCB3FFFFE1BDFFFFF5
      EAFFFBFAFAFFFAF3EEFFFFD3ABFFFECFA5FFEDAC76FFE8BC99FFF5F2F0FFD6D2
      CFFFB4B3B2FFF0B899FF0000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29897FFE6CCCAFFEECDC6FFF3E0DCFFF3DDD8FFF3DCD6FFF2DA
      D5FFF2D9D3FFF1D7D2FFF1D6CFFFF0D4CEFFF0D3CCFFEFD1CBFFEFCFC9FFF0D0
      C9FFDBB2AAFFD8D5D5FFE9E9E9FFF2F2F2FFF6F6F6FFF8F8F8FFFCFCFCFFDDDD
      DDFF000000000000000000000000000000000000000000000000739F8FFF07BD
      54FF62D590FF6ADA98FF6ADC9BFF6ADE9FFF6AE0A1FF6AE2A3FF6AE3A5FF6AE4
      A6FF6AE5A7FF6AE5A7FF6AE5A7FF6AE4A6FF71E1A8FF38CC8BFF00D678FF00D9
      7BFF83A658FFFFA36CFFFFAA78FFFFA978FFFFA877FFFFA675FFFFA372FFFF9F
      6EFFFF9A68FFE2834BFF0000000000000000FBFBFBFFC56D43FFFE8D52FFFEFC
      FBFFFEDBC7FFFEBB93FFFEBD95FFFEBF96FFFEC198FFFEC299FFFEC39AFFFEC5
      9BFFFEC69CFFFBDAC4FFFEFEFEFFFEFEFEFFFEFEFEFFFBF0E9FFFDC69CFFFEC5
      9CFFFEC49BFFFEC29AFFFEC298FFFEC097FFFEBE95FFFEBC94FFFEBA92FFFEE1
      D1FFFEFAF8FFFE8241FFBA7656FFFCFCFCFF0000000000000000000000000000
      000000000000C3A08AFFEACDBFFFF9A548FFFFB35AFFFFBC6CFFFFC37CFFFFCB
      8DFFFFD29BFFFFD8A8FFFEDCB4FFFEE0BBFFFFE4C1FFFFEFDCFFFEFDFCFFF9EB
      E2FFFBB194FFFFECD6FFFFEFE0FFFFCA9AFFFCD0A8FFE59E63FFD99B6EFFEFEE
      EDFFC9C7C6FFEE7B3EFF0000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29898FFEAD9D8FFF8EBE8FFF5E2DEFFF4E1DDFFF4DFDBFFF3DE
      DAFFF3DCD8FFF3DBD6FFF3DAD4FFF2D9D3FFF2D7D1FFF1D5CFFFF1D3CEFFF2D4
      CEFFDDB4AEFFDBD7D8FFECECECFFF4F4F4FFF8F8F8FFFAFAFAFFFCFCFCFFDEDE
      DEFF000000000000000000000000000000000000000000000000E7E8E8FF0D9E
      54FF29C366FF73D798FF73DA9BFF73DB9EFF73DDA0FF73DEA2FF73E0A3FF73E0
      A4FF73E1A5FF73E1A5FF73E1A5FF73E1A5FF74E0A4FF7DDBAAFF23CF82FF00D3
      76FF06D177FFC78C44FFFFA476FFFFA577FFFFA476FFFFA274FFFFA072FFFF9F
      71FFFE8543FFD7C9C1FF000000000000000000000000CABEBAFFF35D11FFFECC
      B2FFFEFCFCFFFECDB0FFFEC19CFFFEC29DFFFEC39FFFFEC5A0FFFEC7A1FFFEC7
      A2FFFEC8A3FFFDEFE6FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDCEADFFFEC7
      A2FFFEC7A1FFFEC6A0FFFEC49FFFFEC39EFFFEC19DFFFEC09BFFFED1B7FFFEFD
      FDFFFEC0A0FFEE5A0FFFD5CFCDFF000000000000000000000000000000000000
      000000000000F8C8ACFFD6CAC4FFE8B489FFFFBA68FFFFC179FFFFCA8AFFFFD1
      9AFFFED9AAFFFEECD5FFFEFCF9FFFCF4ECFFFFFAF4FFFCF8F5FFF9DBAEFFFED9
      93FFFEA18BFFF6AD6DFFFEECDCFFFFE7D2FFFFC48FFFF9B980FFEED7C5FFE2E2
      E1FFC29B86FF000000000000000000000000000000000000000000000000FEFE
      FEFFF2F2F2FFA29898FFE9D9D9FFF9EEECFFF6E5E3FFF5E4E1FFF5E3DFFFF4E1
      DEFFF4E0DCFFF4DEDAFFF3DDD8FFF3DBD7FFF3DAD5FFF2D9D4FFF2D7D2FFF2D7
      D2FFDFB6AFFFDDDBDAFFEEEEEEFFF5F5F5FFFAFAFAFFFCFCFCFFFCFCFCFFDEDE
      DEFF0000000000000000000000000000000000000000000000000000000096B0
      A7FF00AB46FF40C671FF7AD79BFF7AD99EFF7ADAA0FF7ADCA1FF7ADDA2FF7ADE
      A3FF7ADEA4FF7ADFA4FF7ADEA4FF7ADEA4FF7ADDA3FF7FDEA5FF7AD6A8FF0DCD
      75FF00CF71FF60A476FFFC8848FFFFA478FFFFA378FFFFA378FFFFA378FFFF9C
      6BFFD6936AFF00000000000000000000000000000000FDFDFDFFBB7D60FFFC71
      2AFFFEEAE0FFFEF9F6FFFECEB3FFFEC6A5FFFEC7A6FFFEC8A7FFFEC9A8FFFECA
      A9FFFECBAAFFFEE6D6FFFEFEFEFFFEFEFEFFFEFEFEFFFEF8F4FFFECCABFFFECB
      A9FFFEC9A9FFFEC8A8FFFEC8A7FFFEC7A5FFFEC5A4FFFED1B7FFFEFAF9FFFEE2
      D4FFFA6920FFBA8A74FFFEFEFEFF000000000000000000000000000000000000
      00000000000000000000D4AF9AFFEFE6E3FFF2B678FFFFC784FFFFCF95FFFEDC
      B4FFFCF5ECFFFCFCFCFFFCFCFCFFFDFDFDFFFAF9F8FFECB586FFFEB96FFFFFCB
      7EFFFFAF81FFE29462FFE19C65FFFBEDE0FFFFE2C8FFF7E9DCFFE0DFDFFFCEBA
      AEFF000000000000000000000000000000000000000000000000000000000000
      0000F2F2F2FFA39898FFE8D7D7FFFAF1EFFFF8EAE7FFF7E9E6FFF7E7E4FFF6E6
      E3FFF6E4E0FFF5E3DFFFF5E0DDFFF4DFDBFFF4DEDAFFF3DDD8FFF3DBD7FFF3DB
      D7FFE7CAC5FFE4E3E3FFF2F2F2FFF9F9F9FFFCFCFCFFFEFEFEFFFDFDFDFFDEDE
      DEFF000000000000000000000000000000000000000000000000000000000000
      000062A087FF00AD41FF3BC26AFF80D79DFF82D9A0FF82DAA1FF82DAA2FF82DB
      A3FF82DCA4FF82DCA4FF82DCA4FF82DBA3FF82DBA2FF82DAA2FF8FDDABFF5FCD
      99FF01C96CFF56A583FFD6BEB0FFFF955DFFFFA980FFFFA980FFFFA579FFE586
      50FFF7F7F7FF0000000000000000000000000000000000000000F2F2F2FFCC67
      37FFFD7F40FFFEEFE8FFFEFAF8FFFED9C5FFFECBAEFFFECCAFFFFECDB0FFFECD
      B0FFFECEB1FFFED0B3FFFEE7DAFFFEF4EEFFFEEFE5FFFED6BEFFFECEB1FFFECE
      B1FFFECDB0FFFECDAFFFFECCAFFFFECBAEFFFEDCC9FFFEFBFAFFFEE9DEFFFC75
      32FFC16A42FFF8F8F8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000CCC1BBFFEED8C9FFFCD09DFFFCE6CCFFF9F8
      F7FFF9F9F9FFFAFAFAFFFAFAFAFFFAFAFAFFF7F7F7FFF3EAE3FFEEA86AFFFEBA
      70FFFFB977FFFDAE7FFFDA8D63FFD7A27DFFF6F5F4FFDCDAD9FFD6C5BCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F2FFA39999FFE8D7D7FFFAF3F2FFF8EDEBFFF8ECE9FFF8EAE8FFF7E9
      E7FFF7E9E7FFF7E9E6FFF7EAE7FFF8EBE8FFF9ECEAFFFAEEECFFFAEFEDFFFAF1
      EFFFEDE9E9FFECECECFFF6F6F6FFFBFBFBFFFEFEFEFFFEFEFEFFFDFDFDFFDEDE
      DEFF000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFF68A48CFF01A63EFF1CB750FF6BCE8AFF89D8A2FF89D9A2FF89D9
      A3FF89DAA4FF89DAA4FF89DAA4FF89DAA3FF89D9A3FF89D9A2FF89D8A1FF98DA
      AFFF30C27EFF55A583FF00000000D7956FFFFFA77CFFFFA478FFDB8A5BFFF3F2
      F2FF00000000000000000000000000000000000000000000000000000000EBE9
      E9FFCE6635FFFC7938FFFEE3D5FFFEFEFEFFFEEDE3FFFED6BFFFFED1B8FFFED2
      B9FFFED2B9FFFED3B9FFFED3B9FFFED3BAFFFED3BAFFFED3B9FFFED3B9FFFED2
      B9FFFED2B9FFFED1B8FFFED7C1FFFEEFE7FFFEFDFDFFFEDCCBFFFC712DFFC268
      3EFFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D3D3FFEFEEEEFFF7F7F7FFF7F7F7FFF7F7
      F7FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF8F8F8FFF6F5F5FFEEE0D4FFF0A6
      65FFFEBA71FFFFC67CFFFAC29AFFF0EAE5FFD7D5D5FFE3C5B7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F4FFA7A0A0FFF4EAEAFFFDFBFBFFFCFAF9FFFCFAF9FFFAF9F9FFF9F9
      F9FFF8F8F8FFF7F6F7FFF5F5F5FFF4F4F4FFF2F2F2FFF0F0F0FFEFEEEFFFEEED
      EDFFF0F0F0FFF6F6F6FFFBFBFBFFFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFDEDE
      DEFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000009FB8AFFF139D4FFF00AA36FF24B651FF59C77AFF83D4
      9AFF91D9A5FF91D9A5FF91D9A5FF91D8A4FF91D8A4FF91D7A3FF7CCF92FF52C1
      70FF63C487FF60A588FF00000000F6F6F6FFF08748FFD1A48AFFFCFCFCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F1FFC37A58FFF8631BFFFEBA98FFFEF8F5FFFEFDFCFFFEF0E8FFFEE2
      D3FFFED9C4FFFED7C2FFFED8C2FFFED8C2FFFED8C2FFFED7C2FFFED7C2FFFEDA
      C5FFFEE3D5FFFEF1EAFFFEFDFDFFFEF6F3FFFEB18BFFF65E15FFBF8266FFF6F6
      F6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5C1B7FFF3F2F2FFF5F4F4FFF5F5F5FFF5F5
      F5FFF5F5F5FFF6F6F6FFF7F6F6FFF5F5F5FFF2F1F1FFEEEDECFFF5F5F5FFE9D5
      C4FFF2A562FFFECF99FFF8F6F3FFCECCCBFFEDA682FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F6F6FFB5B2B2FFF7F6F6FFECECECFFE9EAEAFFE8E8E8FFE7E8E8FFE8E8
      E8FFE8E8E8FFE9E9E9FFEAEAEAFFECEBEBFFEEEEEEFFEFEFEFFFF2F2F2FFF4F4
      F4FFF8F8F8FFFBFBFBFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFDFDF
      DFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9EAEAFF77A792FF189F4FFF02A534FF00A8
      30FF12AD3DFF22B34BFF31B755FF2EB653FF21B148FF0BA935FF01A42CFF0FA5
      43FF67B48BFFD2D9D6FF0000000000000000FDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFC7B2A9FFD75B20FFFB7534FFFEBFA0FFFEF3EEFFFEFD
      FDFFFEFDFDFFFEF8F5FFFEF3EEFFFEF1EAFFFEF1EBFFFEF3EEFFFEF8F6FFFEFD
      FDFFFEFDFCFFFEF1EAFFFEB998FFFB702DFFD8622CFFCCBCB6FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C9A594FFFEFEFEFFEFEFEEFFF5F4F4FFF3F3
      F3FFF5F5F5FFFBFAFAFFFBFBFBFFEFEEEEFFF6F6F6FFE7E6E5FFC5C2BFFFEFEF
      EFFFEFDECEFFF9F8F7FFC9B2A6FFF36C2CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFFBDBDBDFFF3F3F3FFE6E6E6FFE8E8E8FFEAEAEAFFECECECFFEEEE
      EEFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5F5FFF7F7F7FFF8F8F8FFFAFAFAFFFBFB
      FBFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFC7C7
      C7FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F6FFB1C1BCFF74A6
      8EFF49A371FF30A962FF1FA453FF2CA95FFF43AB6FFF68A886FF9EBBB0FFE4E7
      E6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FFC1A79BFFCF6636FFF45F18FFFD8C
      56FFFEB490FFFED0BAFFFEE4D7FFFEEBE2FFFEEBE2FFFEE2D5FFFECEB8FFFEB0
      8BFFFD8850FFF25B13FFD06C3FFFC5AFA5FFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D3D3FFFFFFFFFFFAFAFAFFEFEFEEFFF7F7
      F7FFFDFDFDFFFFFFFFFFFAFAFAFFF5F5F5FFECEBEBFFCEBAB0FF00000000D79B
      7EFFF7F1EEFFC27F5EFFCE6B3EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0D0D0FFFCFCFCFFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFFAFA
      FAFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFC6C6
      C6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFE1DDDCFFC1A4
      98FFC58263FFD06B3DFFE66325FFEA5A18FFE95B19FFE66327FFCA6B3FFFC483
      66FFC3A89DFFE6E4E3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D7D7FFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFFEDE5E2FFBF5624FF00000000000000000000
      0000B39C92FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9C9C9FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1
      B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1
      B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB9B9B9FFF8F8
      F8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8D8D8FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFD6D6D5FFD5D5D5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000A00000000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF80000003FFFFFFFF
      FFFFFFFFFFE007FF80000001FFFFFFFF80000001FF0000FF80000001FFFC0007
      00000001FE00003F80000001FFF0000100000000F800001F80000001FFF00001
      00000000F000000F80000003FFF0000100000000E000000780000003C0000001
      00000000C0000003C0000003800000030000000080000001C000000380000007
      0000000080000001C00000078000001F0000000080000000E00000078000000F
      0000000000000000F000000F8000000F0000000000000000FC00007FC000000F
      0000000000000000FFC003FFC000000F0000000000000000FFE00FFFC000000F
      0000000000000000FFC007FFE000000F0000000000000000FFC003FFFE00001F
      0000000000000000FF8003FFFF01001F0000000000000000FF8003FFFE00001F
      0000000000000000FF8003FFFE00803F0000000000000000FF0001FFFE00803F
      0000000000000000FF0000FFFC00407F0000000080000001FF0000FFFC007FFF
      0000000080000001FE0000FFFC003FFF00000001C0000003FE0000FFFC003FFF
      00000001E0000007FE0000FFFC007FFF00000003F0000007FE0000FFFC007FFF
      00000007F800001FFF0001FFFC007FFF0000000FFC00003FFF0001FFFE00FFFF
      8000001FFF0000FFFF8003FFFF01FFFFFFFFFFFFFFE007FFFFC007FFFF87FFFF
      FFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001FFFFFFFF
      FFF81FFFFFFFFFFFF0000000FFFFFFFFFF8001FFFFFFFFFFF0000000FFE00001
      FE00007FF0001FFFF0000000FFE00001F800003FC00007FFF0000000FFC00001
      F000000FC0000007F0000001FFC00001E0000007C0000001F0000001FF800001
      C0000003F0000001F8000001FE000001C0000003F8000003F8000001FC000001
      80000001E000003FF8000001FC00000100000001C0000001F8000001FC000001
      0000000080000001F8000001F80000010000000080000001F8000001F8000003
      0000000080000001F8000003F00000030000000080000001F8000003E000000F
      0000000080000001F8000003E000000F0000000080000001FC000003C000000F
      0000000080000001FC0000038000000F00000000C0000001FC0000038000001F
      00000000C0000001FC0000030000001F0000000080000001FC0000070000001F
      0000000000000001FC0000070000001F0000000038000001F800000F0000003F
      80000001FE000001F00C421FC000003F80000001FF000001E00C421FE000003F
      C0000003FF800001C00CE73FF000003FE0000007FF800001807FFFFFFF80007F
      F000000FFFFFFFFF00FFFFFFFFE0007FF800001FFFFFFFFF01FFFFFFFFF8007F
      FC00007FFFFFFFFF03FFFFFFFFFE3EFFFF8001FFFFFFFFFF07FFFFFFFFFFFFFF
      FFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFC000FFFFF00FFFFFE003FFFFFFFFFFF800007FFF8001FFFF0000FFFFFE0001
      F000003FFE00007FFC00003FFFFE0001F000003FF800001FF800001F80000001
      F000001FF000000FE000000780000001F000001FE0000007E000000300000001
      F000001FC0000003C000000380000003F000001F800000038000000180000007
      F000001F80000001800000018000000FF000001F0000000000000000C000000F
      F000001F0000000000000000E000000FF000001F0000000000000000F800000F
      F000001F0000000000000000FC00000FF000003F0000000000000000FC00000F
      F000003F0000000000000000F800000FF000000F0000000000000000F800000F
      F000000F0000000000000000F800000FF00000070000000000000000F800001F
      F000000F0000000000000000F800003FF000000F0000000000000000F80008FF
      F000000F0000000000000000F8000FFFF000000F0000000000000000FC000FFF
      F000000F8000000180000001FE000FFFF000000F8000000180000001FF800FFF
      F000000FC0000003C0000003FFE00FFFF000000FE0000007E0000007FFE00FFF
      F000000FF000000FF000000FFFE00FFFF000000FF800001FF800001FFFF01FFF
      F800000FFE00007FFE00007FFFF83FFFFC00000FFF8001FFFF8001FFFFFFFFFF
      FFFFFFFFFFF00FFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFE1FF
      FFFFFFFFFFC003FFF000000FFF8000FFFFFFFFFFFE0000FFE000000FF800007F
      FFF07FFFFC00003FE000000FF000003FFF0007FFF000000FE000000FF000003F
      FE0003FFE0000007E000000FF000003FF800023FC0000003E000000FE000003F
      F000001FC0000003E000000FE000003FE000000F80000001E000000FE000003F
      E000000700000000E000000FE000003FC000000300000000E000000FE000003F
      C000000300000000E0000007E000003F8000000100000000E0000007E000003F
      8000000100000000E0000007E000003F8000000100000000E0000007E000003F
      8000000100000000E0000007E000003F8000000100000000E0000007E000000F
      8000000100000000E000000FE000000F8000000100000000E000000FE000000F
      8000000100000000E0000007E000000F8000000100000000E0000003E000000F
      8000000100000000F0000003E000000FC000000300000000F8000003E000000F
      C000000380000001F8000007E000000FE000000780000001FC00000FF000000F
      F0000007C0000003FE00001FF000000FF000020FE0000007FE00003FF000000F
      FC00021FF000000FFE00007FF000000FFE00037FF800001FFE0000FFF000000F
      FF800FFFFE00007FFE0021FFF800000FFFFFFFFFFF8003FFFE0077FFFC00000F
      FFFFFFFFFFFC3FFFFE00FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 200
    Top = 72
    object acXem: TAction
      Caption = 'acXem'
      ImageIndex = 20
      OnExecute = acXemExecute
    end
    object acSelectAll: TAction
      Caption = 'acSelectAll'
      OnExecute = acSelectAllExecute
      OnUpdate = acSelectAllUpdate
    end
    object acUnSelectAll: TAction
      Caption = 'acUnSelectAll'
      OnExecute = acUnSelectAllExecute
    end
    object acSelectAllForDept: TAction
      Caption = 'acSelectAllForDept'
      OnExecute = acSelectAllForDeptExecute
    end
    object acUnselectAllForDept: TAction
      Caption = 'acUnselectAllForDept'
      OnExecute = acUnselectAllForDeptExecute
    end
    object acCreatePlan: TAction
      Caption = 'acCreatePlan'
      OnExecute = acCreatePlanExecute
    end
    object acSelectClass: TAction
      Caption = 'acSelectClass'
      OnExecute = acSelectClassExecute
    end
    object acConfirmPlan: TAction
      Caption = 'acConfirmPlan'
      OnExecute = acConfirmPlanExecute
    end
  end
  object qryData: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'VIEW_DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VIEW_FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VIEW_AT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VIEW_AT_CLASS'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    EditSQL.Strings = (
      'select tree_id from hr_global_variable')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'KEY_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '  EMPLOYEE_NO||HR_TRAINING_ALERT.CLASS_CODE KEY_ID,'
      '  EMPLOYEE_NO ,'
      '  FULL_NAME ,'
      '  POSITION_NO ,'
      '  DEPT_NO ,'
      '  DEPT_NAME ,'
      '  TITLE_NO ,'
      '  TITLE_NAME ,'
      '  ASSIGNED_DATE ,'
      '  HR_TRAINING_ALERT.COURSE_CODE ,'
      '  COURSE_NAME ,'
      '  HR_TRAINING_ALERT.CLASS_CODE ,'
      '  HR_TRAINING_ALERT.CLASS_NAME ,'
      '  HR_TRAINING_ALERT.TIME_PERIOD ,'
      '  HR_TRAINING_ALERT.TIME_UNIT ,'
      '  EXPIRED_DATE ,'
      '  OVER_DUE ,'
      '  HR_TRAINING_ALERT.DAY_COUNT, '
      '  SELECTED'
      '  , TEACHER'
      '  , CLASS_PLACE'
      ''
      
        'from HR_TRAINING_ALERT (:VIEW_DEPT_NO ,:VIEW_ALL,:VIEW_FROM_DATE' +
        ' ,:VIEW_AT_DATE ,:VIEW_AT_CLASS)'
      'LefT JOIN HR_TR_CLASS on '
      '  HR_TRAINING_ALERT.CLASS_CODE=HR_TR_CLASS.CLASS_CODE'
      'order by DEPT_NAME,EMPLOYEE_NO')
    FieldOptions = []
    Top = 356
    object qryDataEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryDataPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryDataDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDataTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryDataASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object qryDataCOURSE_CODE: TWideStringField
      FieldName = 'COURSE_CODE'
      Size = 30
    end
    object qryDataCOURSE_NAME: TWideStringField
      FieldName = 'COURSE_NAME'
      Size = 126
    end
    object qryDataCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
    object qryDataCLASS_NAME: TWideStringField
      FieldName = 'CLASS_NAME'
      Size = 126
    end
    object qryDataTIME_PERIOD: TIntegerField
      FieldName = 'TIME_PERIOD'
    end
    object qryDataTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
    end
    object qryDataEXPIRED_DATE: TDateField
      FieldName = 'EXPIRED_DATE'
    end
    object qryDataOVER_DUE: TIntegerField
      FieldName = 'OVER_DUE'
    end
    object qryDataDAY_COUNT: TIntegerField
      FieldName = 'DAY_COUNT'
    end
    object qryDataSELECTED: TIntegerField
      FieldName = 'SELECTED'
      Required = True
    end
    object qryDataKEY_ID: TWideStringField
      FieldName = 'KEY_ID'
      ReadOnly = True
      Size = 60
    end
    object qryDataTEACHER: TWideStringField
      FieldName = 'TEACHER'
      Size = 126
    end
    object qryDataCLASS_PLACE: TWideStringField
      FieldName = 'CLASS_PLACE'
      Size = 3072
    end
  end
  object dsData: TDataSource
    DataSet = qryData
    Top = 392
  end
  object dxSelectMenu: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarSubItem1
        Visible = True
      end
      item
        Item = dxBarSubItem2
        Visible = True
      end>
    UseOwnFont = False
    Left = 80
    Top = 24
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
    Left = 96
    Top = 32
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acSelectAll
      Caption = 'Ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = acUnSelectAll
      Caption = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = acSelectAllForDept
      Caption = 'Ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Action = acUnselectAllForDept
      Caption = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Ch'#7885'n nhanh theo '#273#417'n v'#7883
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton3
          Visible = True
        end
        item
          Item = dxBarButton4
          Visible = True
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Ch'#7885'n nhanh theo l'#7899'p h'#7885'c'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
  end
  object memClass: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 32
    Top = 360
    object memClassCLASS_CONTENT: TWideStringField
      FieldName = 'CLASS_CONTENT'
      Size = 127
    end
    object memClassSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object memClassEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object memClassSTUDENT_COUNT: TIntegerField
      FieldName = 'STUDENT_COUNT'
    end
    object memClassCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
    object memClassTEACHER: TWideStringField
      FieldName = 'TEACHER'
      Size = 127
    end
  end
  object dsClass: TDataSource
    DataSet = memClass
    Left = 32
    Top = 392
  end
  object memTrainee: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 64
    Top = 352
    object memTraineeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memTraineeFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memTraineeDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object memTraineeTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
    object memTraineeDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memTraineeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memTraineeSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object memTraineeEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object memTraineeCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
    object memTraineeSELECTED: TIntegerField
      FieldName = 'SELECTED'
    end
  end
  object dsTrainee: TDataSource
    DataSet = memTrainee
    Left = 64
    Top = 392
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    OnError = qryExecuteError
    FieldOptions = []
    Left = 24
    Top = 292
    object WideStringField1: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object WideStringField3: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object WideStringField4: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object WideStringField5: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object WideStringField6: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object WideStringField7: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object DateField1: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object WideStringField8: TWideStringField
      FieldName = 'COURSE_CODE'
      Size = 30
    end
    object WideStringField9: TWideStringField
      FieldName = 'COURSE_NAME'
      Size = 126
    end
    object WideStringField10: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
    object WideStringField11: TWideStringField
      FieldName = 'CLASS_NAME'
      Size = 126
    end
    object IntegerField1: TIntegerField
      FieldName = 'TIME_PERIOD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'TIME_UNIT'
    end
    object DateField2: TDateField
      FieldName = 'EXPIRED_DATE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'OVER_DUE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'DAY_COUNT'
    end
    object IntegerField5: TIntegerField
      FieldName = 'SELECTED'
      Required = True
    end
    object WideStringField12: TWideStringField
      FieldName = 'KEY_ID'
      ReadOnly = True
      Size = 60
    end
    object WideStringField13: TWideStringField
      FieldName = 'TEACHER'
      Size = 126
    end
    object WideStringField14: TWideStringField
      FieldName = 'CLASS_PLACE'
      Size = 3072
    end
  end
end
