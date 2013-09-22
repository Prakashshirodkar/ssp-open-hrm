inherited frmTieuchuanPhep: TfrmTieuchuanPhep
  Left = 226
  Top = 111
  Width = 748
  Height = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 454
    Width = 740
  end
  inherited dxlcMain: TdxLayoutControl
    Top = 418
    Width = 740
    Height = 36
    Align = alBottom
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 9
      Color = 15466238
    end
  end
  object pageMain: TElPageControl [2]
    Left = 0
    Top = 0
    Width = 740
    Height = 418
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = ImageList1
    Multiline = False
    OnChange = pageMainChange
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
    ActivePage = tabCauhinh
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
    TabOrder = 2
    object tabQuyche: TElTabSheet
      PageControl = pageMain
      ImageIndex = 3
      TabVisible = True
      Caption = 'Quy ch'#7871' ti'#234'u chu'#7849'n ph'#233'p'
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 740
        Height = 394
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxDBEdit1: TdxDBEdit
          Left = 91
          Top = 28
          Width = 230
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'MA_DOITUONG'
          DataSource = dsDoituong
          StyleController = dmMain.StyleController
        end
        object dxDBEdit2: TdxDBEdit
          Left = 91
          Top = 51
          Width = 230
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          DataField = 'TEN_DOITUONG'
          DataSource = dsDoituong
          StyleController = dmMain.StyleController
        end
        object dxDBPopupEdit1: TdxDBPopupEdit
          Left = 91
          Top = 74
          Width = 230
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 2
          DataField = 'WORK_TYPE_NAME'
          DataSource = dsDoituong
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit1CloseUp
          OnInitPopup = dxDBPopupEdit1InitPopup
        end
        object dxDBMemo1: TdxDBMemo
          Left = 91
          Top = 97
          Width = 230
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          DataField = 'GHI_CHU'
          DataSource = dsDoituong
          StyleController = dmMain.StyleController
          ScrollBars = ssBoth
          Height = 118
        end
        object gridDoituong: TdxDBGrid
          Left = 14
          Top = 215
          Width = 339
          Height = 152
          Bands = <
            item
              Caption = 'Danh s'#225'ch ph'#226'n lo'#7841'i quy ch'#7871
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MA_DOITUONG'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 4
          DataSource = dsDoituong
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object gridDoituongTEN_DOITUONG: TdxDBGridColumn
            Caption = 'Ph'#226'n lo'#7841'i quy ch'#7871
            HeaderAlignment = taCenter
            Width = 233
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TEN_DOITUONG'
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i quy ch+Hr8'
          end
          object gridDoituongWORK_TYPE_NAME: TdxDBGridColumn
            Caption = 'Nh'#243'm c'#244'ng vi'#7879'c m'#7863'c '#273#7883'nh'
            HeaderAlignment = taCenter
            Width = 141
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WORK_TYPE_NAME'
            Caption_UTF7 = 'Nh+APM-m c+APQ-ng vi+Hsc-c m+Hrc-c +AREeyw-nh'
          end
        end
        object gridChitietQuyche: TdxDBGrid
          Left = 377
          Top = 28
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'TU_THOIGIAN'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 5
          DataSource = dsChitietQuyche
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridChitietQuycheTU_THOIGIAN: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'T'#7915' (n'#259'm)'
            HeaderAlignment = taCenter
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TU_THOIGIAN'
            Caption_UTF7 = 'T+Hus (n+AQM-m)'
          end
          object gridChitietQuycheDEN_THOIGIAN: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = #272#7871'n (n'#259'm)'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEN_THOIGIAN'
            Caption_UTF7 = '+ARAevw-n (n+AQM-m)'
          end
          object gridChitietQuycheSO_NGAYPHEP: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'S'#7889' ng'#224'y ph'#233'p'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SO_NGAYPHEP'
            MaxValue = 100000.000000000000000000
            Caption_UTF7 = 'S+HtE ng+AOA-y ph+AOk-p'
          end
          object gridChitietQuycheCT_SO_NGAYPHEP: TdxDBGridColumn
            Caption = 'Tr'#432#7901'ng h'#7907'p '#273#7863'c bi'#7879't'
            HeaderAlignment = taCenter
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CT_SO_NGAYPHEP'
            Caption_UTF7 = 'Tr+AbAe3Q-ng h+HuM-p +AREetw-c bi+Hsc-t'
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            Caption = '* Ph'#226'n lo'#7841'i quy ch'#7871
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'K'#253' hi'#7879'u'
              Control = dxDBEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'T'#234'n ph'#226'n lo'#7841'i'
              Control = dxDBEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Nh'#243'm c'#244'ng vi'#7879'c'
              Control = dxDBPopupEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Th'#244'ng tin th'#234'm'
              CaptionOptions.AlignVert = tavTop
              Control = dxDBMemo1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              AutoAligns = []
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridDoituong
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = '* Chi ti'#7871't quy ch'#7871' t'#237'nh ph'#233'p'
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridChitietQuyche
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabPhanloaiNhanvien: TElTabSheet
      PageControl = pageMain
      ImageIndex = 2
      TabVisible = True
      Caption = #193'p d'#7909'ng quy ch'#7871' cho nh'#226'n vi'#234'n'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 740
        Height = 394
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object gridQuyche: TdxDBGrid
          Left = 400
          Top = 28
          Width = 287
          Height = 109
          Bands = <
            item
              Caption = 'Danh s'#225'ch ph'#226'n lo'#7841'i quy ch'#7871
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MA_DOITUONG'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 7
          OnEnter = gridNhanvienEnter
          DataSource = dsDoituong
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object dxDBGridColumn1: TdxDBGridColumn
            Caption = 'Ph'#226'n lo'#7841'i quy ch'#7871
            HeaderAlignment = taCenter
            Width = 151
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TEN_DOITUONG'
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i quy ch+Hr8'
          end
          object dxDBGridColumn2: TdxDBGridColumn
            Caption = 'Nh'#243'm c'#244'ng vi'#7879'c'
            HeaderAlignment = taCenter
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WORK_TYPE_NAME'
            Caption_UTF7 = 'Nh+APM-m c+APQ-ng vi+Hsc-c'
          end
        end
        object gridApdungNhanvien: TdxDBGrid
          Left = 400
          Top = 137
          Width = 326
          Height = 242
          Bands = <
            item
              Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n '#225'p d'#7909'ng theo quy ch'#7871
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MA_NHANVIEN'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 8
          OnEnter = gridNhanvienEnter
          DataSource = dsDSApdung
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object gridApdungNhanvienMA_NHANVIEN: TdxDBGridColumn
            Caption = 'M'#227' NV'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MA_NHANVIEN'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridApdungNhanvienFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 136
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridApdungNhanvienTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c v'#7909
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c v+HuU'
          end
          object gridApdungNhanvienDEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
          end
          object gridApdungNhanvienWORK_TYPE_NAME: TdxDBGridColumn
            Caption = 'Ph'#226'n lo'#7841'i CV'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WORK_TYPE_NAME'
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i CV'
          end
        end
        object gridNhanvien: TdxDBGrid
          Left = 14
          Top = 51
          Width = 339
          Height = 328
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 2
          OnEnter = gridNhanvienEnter
          DataSource = dsDanhsachNV
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridNhanvienEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            HeaderAlignment = taCenter
            Visible = False
            Width = 238
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridNhanvienFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            HeaderAlignment = taCenter
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridNhanvienTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c v'#7909
            HeaderAlignment = taCenter
            Width = 139
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c v+HuU'
          end
          object gridNhanvienWORK_TYPE_NAME: TdxDBGridColumn
            Caption = 'Ph'#226'n lo'#7841'i CV'
            HeaderAlignment = taCenter
            Visible = False
            Width = 238
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WORK_TYPE_NAME'
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i CV'
          end
          object gridNhanvienDEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            HeaderAlignment = taCenter
            Visible = False
            Width = 179
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
          end
        end
        object ElPopupButton1: TElPopupButton
          Left = 361
          Top = 224
          Width = 27
          Height = 27
          Cursor = crDefault
          Hint = 
            'H'#7911'y b'#7887' quy ch'#7871' '#225'p d'#7909'ng t'#237'nh ph'#233'p cho to'#224'n b'#7897' nh'#226'n vi'#234'n trong dan' +
            'h s'#225'ch'
          ImageIndex = 72
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
          Action = acRemoveAll
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 361
          Top = 197
          Width = 27
          Height = 27
          Cursor = crDefault
          Hint = 'H'#7911'y b'#7887' quy ch'#7871' '#225'p d'#7909'ng t'#237'nh ph'#233'p cho nh'#226'n vi'#234'n '#273#432#7907'c ch'#7885'n'
          ImageIndex = 70
          UseImageList = True
          Images = dmMain.imgAction
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
          Action = acRemove
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 361
          Top = 170
          Width = 27
          Height = 27
          Cursor = crDefault
          Hint = #193'p d'#7909'ng quy ch'#7871' t'#237'nh ph'#233'p cho to'#224'n b'#7897' nh'#226'n vi'#234'n trong danh s'#225'ch'
          ImageIndex = 74
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
          Action = acAddAll
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 361
          Top = 143
          Width = 27
          Height = 27
          Cursor = crDefault
          Hint = 
            #193'p d'#7909'ng quy ch'#7871' t'#237'nh ph'#233'p cho nh'#226'n vi'#234'n '#273#432#7907'c ch'#7885'n trong danh s'#225'c' +
            'h'
          ImageIndex = 73
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
          ParentShowHint = False
          ShowHint = True
          Action = acAdd
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxSelectDept: TdxPopupEdit
          Left = 73
          Top = 28
          Width = 184
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnCloseUp = dxSelectDeptCloseUp
          OnInitPopup = dxSelectDeptInitPopup
        end
        object chkViewAll: TdxCheckEdit
          Left = 276
          Top = 28
          Width = 73
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          Alignment = taRightJustify
          Caption = 'C'#7845'p d'#432#7899'i'
          StyleController = dmMain.StyleController
          OnChange = chkViewAllChange
          StoredValues = 1
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl2Group2: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = '* Danh s'#225'ch nh'#226'n vi'#234'n ch'#432'a '#225'p d'#7909'ng'
            object dxLayoutControl2Group5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item8: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Ch'#7885'n '#273#417'n v'#7883
                Control = dxSelectDept
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item9: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'dxCheckEdit1'
                ShowCaption = False
                Control = chkViewAll
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Control = gridNhanvien
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Group3: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avCenter
            Caption = #272'i'#7873'u khi'#7875'n'
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
              Caption = 'ElPopupButton4'
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item5: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Group1: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avClient
            Caption = '* '#193'p d'#7909'ng quy ch'#7871' t'#237'nh ph'#233'p'
            object dxLayoutControl2Item1: TdxLayoutItem
              ShowCaption = False
              Control = gridQuyche
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item2: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridApdungNhanvien
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabCauhinh: TElTabSheet
      PageControl = pageMain
      ImageIndex = 1
      TabVisible = True
      Caption = #272#7883'nh ngh'#297'a d'#7919' li'#7879'u'
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 740
        Height = 394
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxDBSpinEdit1: TdxDBSpinEdit
          Left = 241
          Top = 28
          Width = 70
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          Alignment = taCenter
          DataField = 'TU_THANG'
          DataSource = dsPhepCauhinh
          StyleController = dmMain.StyleController
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 49
        end
        object dxDBSpinEdit2: TdxDBSpinEdit
          Left = 375
          Top = 28
          Width = 70
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          Alignment = taCenter
          DataField = 'DEN_THANG'
          DataSource = dsPhepCauhinh
          ReadOnly = True
          StyleController = dmMain.StyleController
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 113
        end
        object dxNam: TdxDBImageEdit
          Left = 467
          Top = 28
          Width = 90
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 2
          Alignment = taCenter
          DataField = 'DEN_NAM'
          DataSource = dsPhepCauhinh
          ReadOnly = True
          StyleController = dmMain.StyleController
          DropDownRows = 16777223
          PopupBorder = pbSingle
          StoredValues = 65
        end
        object dxDBSpinEdit3: TdxDBSpinEdit
          Left = 241
          Top = 51
          Width = 70
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          Alignment = taCenter
          DataField = 'SONGAY_TOIDA'
          DataSource = dsPhepCauhinh
          StyleController = dmMain.StyleController
          MaxValue = 100.000000000000000000
          MinValue = -1.000000000000000000
          StoredValues = 49
        end
        object dxLoaichamcong: TdxDBImageEdit
          Left = 241
          Top = 74
          Width = 200
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 4
          DataField = 'LOAI_CHAMCONG'
          DataSource = dsPhepCauhinh
          StyleController = dmMain.StyleController
          DropDownRows = 16777223
          PopupBorder = pbSingle
        end
        object ElPageControl1: TElPageControl
          Left = 14
          Top = 130
          Width = 289
          Height = 193
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = False
          Multiline = False
          RaggedRight = False
          ScrollOpposite = False
          ShowBorder = False
          ShowTabs = False
          Style = etsAngledTabs
          TabIndex = 0
          TabPosition = etpLeft
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          TabBkColor = clInfoBk
          ActivePage = ElTabS_GioCong
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
          ParentShowHint = False
          TabOrder = 8
          ShowHint = False
          object ElTabS_GioCong: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = 'Gi'#7901' c'#244'ng'
            object dxLayoutControl5: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 193
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object GridDSGioPhep: TdxDBGrid
                Left = 371
                Top = 3
                Width = 250
                Height = 129
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch gi'#7901' c'#244'ng ph'#233'p'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'wht_no'
                SummaryGroups = <>
                SummarySeparator = ', '
                BorderStyle = bsNone
                TabOrder = 5
                DataSource = dsDSGioPhep
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                ShowBands = True
                object GridDSGioPhepWHT_NO: TdxDBGridMaskColumn
                  Alignment = taCenter
                  Caption = 'M'#227' gi'#7901
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  OnCustomDrawCell = GridDSGioPhepWHT_NOCustomDrawCell
                  FieldName = 'WHT_NO'
                  Caption_UTF7 = 'M+AOM gi+Ht0'
                end
                object GridDSGioPhepWHT_NAME: TdxDBGridMaskColumn
                  Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Width = 208
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WHT_NAME'
                  Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng'
                end
                object GridDSGioPhepWHT_RATE: TdxDBGridMaskColumn
                  Caption = 'H'#7879' s'#7889
                  HeaderAlignment = taCenter
                  Width = 48
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WHT_RATE'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object GridDSGioPhepLA_GIOPHEP: TdxDBGridMaskColumn
                  Visible = False
                  Width = 200
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'LA_GIOPHEP'
                end
                object GridDSGioPhepWHT_COLOR: TdxDBGridMaskColumn
                  Visible = False
                  Width = 207
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WHT_COLOR'
                end
              end
              object GridDSGioCong: TdxDBGrid
                Left = 3
                Top = 3
                Width = 250
                Height = 129
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch lo'#7841'i gi'#7901' c'#244'ng'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'wht_no'
                SummaryGroups = <>
                SummarySeparator = ', '
                BorderStyle = bsNone
                TabOrder = 0
                DataSource = dsDSGioCong
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                ShowBands = True
                object GridDSGioCongWHT_NO: TdxDBGridMaskColumn
                  Alignment = taCenter
                  Caption = 'M'#227' gi'#7901
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  OnCustomDrawCell = GridDSGioCongWHT_NOCustomDrawCell
                  FieldName = 'WHT_NO'
                  Caption_UTF7 = 'M+AOM gi+Ht0'
                end
                object GridDSGioCongWHT_NAME: TdxDBGridMaskColumn
                  Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Width = 202
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WHT_NAME'
                  Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng'
                end
                object GridDSGioCongWHT_RATE: TdxDBGridMaskColumn
                  Caption = 'H'#7879' s'#7889
                  HeaderAlignment = taCenter
                  Width = 48
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WHT_RATE'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object GridDSGioCongLA_GIOPHEP: TdxDBGridMaskColumn
                  Visible = False
                  Width = 221
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'LA_GIOPHEP'
                end
                object GridDSGioCongWHT_COLOR: TdxDBGridMaskColumn
                  Visible = False
                  Width = 228
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WHT_COLOR'
                end
              end
              object ElPopupButton9: TElPopupButton
                Left = 343
                Top = 154
                Width = 27
                Height = 27
                Cursor = crDefault
                ImageIndex = 72
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
                Action = acRemoveAllHour
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object ElPopupButton10: TElPopupButton
                Left = 343
                Top = 127
                Width = 27
                Height = 27
                Cursor = crDefault
                ImageIndex = 70
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
                Action = acRemoveHour
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object ElPopupButton11: TElPopupButton
                Left = 343
                Top = 100
                Width = 27
                Height = 27
                Cursor = crDefault
                ImageIndex = 74
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
                Action = acAddAllHour
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object ElPopupButton12: TElPopupButton
                Left = 343
                Top = 73
                Width = 27
                Height = 27
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
                Action = acAddHour
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object dxLayoutControl5Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl5Item2: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'dxDBGrid2'
                  ShowCaption = False
                  Control = GridDSGioCong
                end
                object dxLayoutControl5Group2: TdxLayoutGroup
                  AutoAligns = []
                  AlignVert = avCenter
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl5Item6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'ElPopupButton12'
                    ShowCaption = False
                    Control = ElPopupButton12
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl5Item5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'ElPopupButton11'
                    ShowCaption = False
                    Control = ElPopupButton11
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl5Item4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'ElPopupButton10'
                    ShowCaption = False
                    Control = ElPopupButton10
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl5Item3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'ElPopupButton9'
                    ShowCaption = False
                    Control = ElPopupButton9
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl5Item1: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'dxDBGrid1'
                  ShowCaption = False
                  Control = GridDSGioPhep
                end
              end
            end
          end
          object ElTab_NgayCong: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = False
            Caption = 'Ng'#224'y c'#244'ng'
            Visible = False
            object dxLayoutControl4: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 193
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object gridDSNgaycong: TdxDBGrid
                Left = 3
                Top = 3
                Width = 286
                Height = 465
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch lo'#7841'i ng'#224'y c'#244'ng'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'WDT_NO'
                SummaryGroups = <>
                SummarySeparator = ', '
                BorderStyle = bsNone
                TabOrder = 0
                OnEnter = gridNhanvienEnter
                DataSource = dsDSNgaycong
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                ShowBands = True
                object gridDSNgaycongWDT_NO: TdxDBGridColumn
                  Alignment = taCenter
                  Caption = 'M'#227' ng'#224'y'
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Width = 75
                  BandIndex = 0
                  RowIndex = 0
                  OnCustomDrawCell = gridDSNgaycongWDT_NOCustomDrawCell
                  FieldName = 'WDT_NO'
                  Caption_UTF7 = 'M+AOM ng+AOA-y'
                end
                object gridDSNgaycongWDT_NAME: TdxDBGridColumn
                  Caption = 'Lo'#7841'i ng'#224'y c'#244'ng'
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Width = 174
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WDT_NAME'
                  Caption_UTF7 = 'Lo+HqE-i ng+AOA-y c+APQ-ng'
                end
                object gridDSNgaycongWDT_RATE: TdxDBGridColumn
                  Caption = 'H'#7879' s'#7889
                  HeaderAlignment = taCenter
                  Width = 48
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WDT_RATE'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object gridDSNgaycongWDT_COLOR: TdxDBGridMaskColumn
                  DisableCaption = True
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'WDT_COLOR'
                  DisableFilter = True
                end
              end
              object gridDSNgayphep: TdxDBGrid
                Left = 359
                Top = 3
                Width = 286
                Height = 465
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch ng'#224'y c'#244'ng ph'#233'p'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'WDT_NO'
                SummaryGroups = <>
                SummarySeparator = ', '
                BorderStyle = bsNone
                TabOrder = 5
                OnEnter = gridNhanvienEnter
                DataSource = dsDSNgayphep
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                ShowBands = True
                object gridDSNgayphepWDT_NO: TdxDBGridColumn
                  Caption = 'M'#227' ng'#224'y'
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Sorted = csUp
                  Width = 76
                  BandIndex = 0
                  RowIndex = 0
                  OnCustomDrawCell = gridDSNgayphepWDT_NOCustomDrawCell
                  FieldName = 'WDT_NO'
                  Caption_UTF7 = 'M+AOM ng+AOA-y'
                end
                object gridDSNgayphepWDT_NAME: TdxDBGridColumn
                  Caption = 'Lo'#7841'i ng'#224'y c'#244'ng'
                  Color = clInfoBk
                  HeaderAlignment = taCenter
                  Width = 203
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WDT_NAME'
                  Caption_UTF7 = 'Lo+HqE-i ng+AOA-y c+APQ-ng'
                end
                object gridDSNgayphepWDT_RATE: TdxDBGridColumn
                  Alignment = taCenter
                  Caption = 'H'#7879' s'#7889
                  HeaderAlignment = taCenter
                  Width = 53
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'WDT_RATE'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object gridDSNgayphepWDT_COLOR: TdxDBGridMaskColumn
                  DisableCaption = True
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'WDT_COLOR'
                  DisableFilter = True
                end
              end
              object ElPopupButton8: TElPopupButton
                Left = 331
                Top = 154
                Width = 27
                Height = 27
                Cursor = crDefault
                Hint = 
                  'H'#7911'y b'#7887' quy ch'#7871' '#225'p d'#7909'ng t'#237'nh ph'#233'p cho to'#224'n b'#7897' nh'#226'n vi'#234'n trong dan' +
                  'h s'#225'ch'
                ImageIndex = 72
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
                Action = acRemoveAllDate
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object ElPopupButton5: TElPopupButton
                Left = 331
                Top = 73
                Width = 27
                Height = 27
                Cursor = crDefault
                Hint = 
                  #193'p d'#7909'ng quy ch'#7871' t'#237'nh ph'#233'p cho nh'#226'n vi'#234'n '#273#432#7907'c ch'#7885'n trong danh s'#225'c' +
                  'h'
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
                ParentShowHint = False
                ShowHint = True
                Action = acAddDate
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object ElPopupButton6: TElPopupButton
                Left = 331
                Top = 100
                Width = 27
                Height = 27
                Cursor = crDefault
                Hint = #193'p d'#7909'ng quy ch'#7871' t'#237'nh ph'#233'p cho to'#224'n b'#7897' nh'#226'n vi'#234'n trong danh s'#225'ch'
                ImageIndex = 74
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
                ParentShowHint = False
                ShowHint = True
                Action = acAddAllDate
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object ElPopupButton7: TElPopupButton
                Left = 331
                Top = 127
                Width = 27
                Height = 27
                Cursor = crDefault
                Hint = 'H'#7911'y b'#7887' quy ch'#7871' '#225'p d'#7909'ng t'#237'nh ph'#233'p cho nh'#226'n vi'#234'n '#273#432#7907'c ch'#7885'n'
                ImageIndex = 70
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
                ParentShowHint = False
                ShowHint = True
                Action = acRemoveDate
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object dxLayoutControl4Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl4Item1: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'gridDSNgaycong'
                  ShowCaption = False
                  Control = gridDSNgaycong
                end
                object dxLayoutControl4Group3: TdxLayoutGroup
                  AutoAligns = []
                  AlignVert = avCenter
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl4Item4: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    Caption = 'ElPopupButton5'
                    ShowCaption = False
                    Control = ElPopupButton5
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl4Item5: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    Caption = 'ElPopupButton6'
                    ShowCaption = False
                    Control = ElPopupButton6
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl4Item6: TdxLayoutItem
                    Caption = 'ElPopupButton7'
                    ShowCaption = False
                    Control = ElPopupButton7
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl4Item3: TdxLayoutItem
                    Caption = 'ElPopupButton8'
                    ShowCaption = False
                    Control = ElPopupButton8
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl4Item2: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'gridDSNgayphep'
                  ShowCaption = False
                  Control = gridDSNgayphep
                end
              end
            end
          end
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl3Group3: TdxLayoutGroup
            Caption = '* Quy '#273#7883'nh ph'#226'n b'#7893' ng'#224'y ph'#233'p'
            object dxLayoutControl3Group5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl3Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = '1. Th'#7901'i '#273'i'#7875'm chuy'#7875'n ph'#233'p n'#259'm c'#361':  + T'#7915' th'#225'ng'
                Control = dxDBSpinEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item3: TdxLayoutItem
                Caption = '+ '#272#7871'n th'#225'ng'
                Control = dxDBSpinEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item4: TdxLayoutItem
                Caption = 'c'#7911'a '
                Control = dxNam
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl3Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl3Group8: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = '2. S'#7889' ng'#224'y ph'#233'p t'#7889'i '#273'a '#273#432#7907'c chuy'#7875'n n'#259'm sau: '
                  Control = dxDBSpinEdit3
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item7: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 
                    '( tr'#432#7901'ng h'#7907'p kh'#244'ng quy '#273#7883'nh s'#7889' ng'#224'y t'#7889'i '#273'a th'#236' '#273#7875' gi'#225' tr'#7883' l'#224' -1 ' +
                    ')'
                end
              end
              object dxLayoutControl3Item14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = '3. Quy '#273#7883'nh t'#237'nh ph'#233'p theo lo'#7841'i ch'#7845'm c'#244'ng:'
                Control = dxLoaichamcong
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl3Group1: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = '* Danh s'#225'ch quy '#273#7883'nh ng'#224'y/gi'#7901' c'#244'ng ph'#233'p'
            object dxLayoutControl3Item12: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'ElPageControl1'
              LookAndFeel = dmMain.StyleWeb
              ShowCaption = False
              Control = ElPageControl1
              ControlOptions.ShowBorder = False
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
        Caption = 'Quy '#273#7883'nh ti'#234'u chu'#7849'n ngh'#7881' ph'#233'p n'#259'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 200
    Top = 168
  end
  object ImageList1: TImageList
    Left = 658
    Top = 82
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000EFEFEFFFD7D7D7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2FFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFDFF0C0C0CFF2C2C2CFF555657FFF9F9F9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1A38DFFEC7D2BFFE473
      25FFE47B29FFE4802CFFC28548FFD6D5D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000313131FF252525FF414141FFBFC5CAFF2C7FB7FFAAAE
      B0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3A589FFE48630FFE592
      3CFFE39142FFE89E4FFFE79B4BFFEC9741FFC2864AFFFDFDFDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000656565FF282828FF3A3A3AFF3C3735FF3E8FC8FF7598AAFF9BB8
      D1FF2D6D94FFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEC1B5FFE6933DFFE8A2
      56FFEAAE69FFEBB270FFEAB06DFFE8A85EFFE79B49FFE57727FFFAF9F8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3A3A3FF2A2A2AFF424242FF423D3AFF5196CAFF539BD1FF58A0D5FF3785
      B6FFAFB6B9FF5E9DCDFF627D8BFFFDFDFDFF00000000B8B8B8FFFDFDFDFFF6F6
      F6FFF3F3F3FFEFEFEFFFEBEBEBFFE8E8E8FFE5E5E5FFE9E9E9FFF5F5F5FFD1D1
      D1FF8D8D8DFFA1A1A1FF000000000000000000000000ECEBE9FFEAA153FFEBB4
      73FFEDBF83FFEFC691FFEDC28AFFEAB475FFE8A35BFFE08232FFCAB097FFEAE7
      E2FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      DCFF2D2D2DFF454545FF484442FF5396C7FF559DD2FF58A0D2FF5BA2D4FF5DA3
      D5FF5EA6D8FF4685A7FFC0C5CAFFB7BEC4FF00000000B9B9B9FFFDFEFDFFCFCF
      CFFFD4D4D3FFD2D2D1FFD0D0D0FFCECECEFFCDCDCDFFCDCDCDFFD0D0D0FFD6D6
      D6FFFFFFFFFF7E7E7EFF00000000000000000000000000000000EEAB63FFECB7
      78FFEFCB99FFF2D6ADFFEFC799FFE6AB6FFFE0934FFFE0863AFFD2752BFFD47E
      37FFECEBE8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFAFF2F2F
      2FFF464646FF545251FF5689AEFF569ED2FF569FD2FF5BA3D4FF5FA6D6FF62A8
      D7FF65AAD7FF68ADDAFF58A4D2FFBFC4C6FF00000000B8B8B8FFFFFFFFFFCFCF
      CFFFFBFBFBFFD4D4D4FFF6F5F5FFD0D0D0FFEFF0F0FFCDCDCDFFEFEFEFFFD2D3
      D3FFFEFEFEFF9F9F9FFF0000000000000000000000000000000000000000D8BB
      91FFEFB979FFEFC895FFEFCCA0FFE8B176FFE19451FFEAAB6DFFD18545FFDB8B
      42FFE88530FFCBC1B5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3DFF4545
      45FF5C5B5BFF5C7A91FF549FD3FFE7F2F9FFDEEDF6FFE2EEF8FF6CAEDAFF67AC
      D9FF6AAEDAFF6CB0DBFF70B4DEFFC5C5C9FF00000000B8B8B8FFFFFFFFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFC1C1C1FFC1C1C1FFC1C1C1FFCFCFCFFFCFCF
      CFFFF8F8F8FFB5B5B5FF00000000000000000000000000000000000000000000
      0000F2F1EEFFEA9C55FFE6924AFFE38339FFE5AB6DFFD79A61FFDA9C61FFE29F
      5CFFE28F41FFD08E52FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000606060FF444444FF5D5D
      5DFF636F78FF5FA7D9FFF0F7FBFF5998BEFFF2F8FCFF649FC2FF80B8DFFF71B3
      DCFF75B6DDFF77B8DFFF84B6D6FFDFDCDEFF00000000B8B8B8FFFFFFFFFFCFCF
      CFFFFFFFFEFFD6D6D6FFFBFBFBFFC6C6C6FFF5F5F5FFC2C2C2FFEFEFEFFFCDCD
      CDFFF2F2F2FFAFAFAFFF00000000000000000000000000000000000000000000
      0000CE7D37FFEAAA64FFEFBC82FFEBAC68FFDCA775FFDCAA7DFFDFA46EFFE39D
      5BFFDE853DFFDA924AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D9D9DFF444444FF616161FF696A
      6BFF6FB2E0FF70AFDAFF8DC1E2FFF4F9FCFF6EB1DBFFE3F0F8FFE4EFF8FF7AB9
      DFFF80BCE0FF81B6D6FFD3D0D1FF0000000000000000B8B8B8FFFFFFFFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFC1C1C1FFC1C1C1FFC1C1C1FFCFCFCFFFCFCF
      CFFFEEEDEDFFADADADFF00000000000000000000000000000000000000000000
      0000EEA65AFFEFC48FFFF0C998FFEEBE83FFDF9C5AFFDEB085FFDD9C5FFFE39E
      5DFFE19451FFE1C7ACFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000494949FF696969FF666361FF78B7
      E1FF7AB5DDFF77B5DDFFEBF4FAFF8EC1E2FFE9F3F9FF94C6E5FF74A9C6FF87C1
      E3FF86BFE0FFE6E3E5FF000000000000000000000000B8B8B8FFFFFFFFFFFFFF
      FFFFFFFFFFFFD8D8D8FFFEFEFEFFD6D6D6FFFAFAFAFFD3D3D3FFF4F4F4FFD0D0
      CFFFEFEEEFFFAFAFAFFF0000000000000000000000000000000000000000E2DE
      DAFFF1C793FFF4DBB7FFF2D5AAFFEFC58DFFE1A05EFFD67D3DFFE08540FFE8AC
      6CFFEBC298FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8989FF565451FF81B7DBFF83BB
      DFFF85BDE0FF87BFE1FF80BBDFFFE9F3F9FF71A7C5FF7EAEC9FFA3CDE8FF8BC6
      E6FFEEEDEDFF00000000000000000000000000000000B8B8B8FFFFFFFFFFFFFF
      FFFFFFFFFFFFD8D8D8FFD8D8D8FFD6D6D6FFD5D5D5FFD3D3D4FFD1D2D1FFD0D0
      D0FFF1F1F1FFB2B2B2FF00000000000000000000000000000000000000000000
      0000F6C68CFFF4D8B4FFFAEEDCFFF4DAB5FFE4A563FFDF9E61FFEAB070FFCB93
      58FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E8EDFF7CB8DEFF90C3
      E3FF90C3E4FF92C5E4FF93C6E5FF95C9E6FF8BC2E3FF91C7E6FF9BCFEAFFE9EF
      F2FF0000000000000000000000000000000000000000B9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF9F9F9FFF7F6
      F7FFF3F4F4FFB5B4B4FF00000000000000000000000000000000000000000000
      0000D8CFC2FFF2CD9AFFF5D5A6FFE8BA81FFDC9B5EFFE9BC87FFEFC490FFECAA
      61FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAD1
      EAFF96C8E6FF9CCCE8FF9DCEE8FFA0CEE8FFA1D0E9FFA5D3EAFF86B8D7FF0000
      000000000000000000000000000000000000000000003E62ABFFA1BDE4FF86A7
      D9FF6E95D0FF5982C6FF4772BDFF3862B4FF2C56ACFF2449A5FF1D409FFF1A3A
      9BFF193A9AFF1747A5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000E8A45CFFF2D4ADFFF3D8B2FFEFCA96FFF3BB
      78FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFDFEFF90C6E5FFAAD5EBFFA9D5ECFFABD6ECFF91C1DDFFD9D7D8FF0000
      000000000000000000000000000000000000000000004065ADFFE3F0FDFFD3E3
      F7FFC6D9F2FFB9CFEDFFAFC5E8FFA7BCE2FFA1B5DEFF9CAFDAFF9AAAD7FF98A7
      D5FF98A6D4FF1747A5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000EBB372FFF4DCB9FFF6E2C6FFF7E4CAFFF7C6
      89FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2F1F8FF9FD2E9FF9DCEE5FFE6E3E5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F8F8FFF6CB92FFF1D5AAFFF5D2A2FFD8D0
      C3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFDFDFFFBF7F6FFF5EDEAFFF3E8E4FFF4EAE6FFF8F2F0FFFDFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5AB8BFFE2BCA6FFF1D3C2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F3FFAFB3B7FF728EA3FF4487
      B8FF2D8ED2FF698EABFF0000000000000000000000000000000000000000F8F2
      F0FFE9D5CEFFCB9A83FFB36936FFAC5A1AFFAD5E23FFBE7F5BFFDEC0B4FFF1E5
      E0FFFDFBFBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000465F7FFF4E5B73FF00000000FEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4DDCFFFF5F5F5FFF3F3F3FFF6F5F4FFD57943FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8BBBEFF409FDAFF5DD8FFFF2CB3F5FF0E9BECFF1C9F
      ECFF2A98DAFF097EDBFF000000000000000000000000FEFEFEFFF2E6E2FFC997
      7DFFAC570AFFCB9464FFE6CCB4FFE8CFB7FFE8CFB9FFDCB796FFB66A25FFAF60
      24FFE8D4CCFFFBF9F8FF00000000000000000000000000000000000000000000
      00000000000000000000708091FF27588FFF27588EFF1C3561FFF6F6F6FFFDFD
      FDFF000000000000000000000000000000000000000000000000000000000000
      0000F9ECE4FFFBF9F7FFF9F9F9FFF7F7F7FFF3F3F3FFF4F4F4FFC68662FFEDC2
      A9FF000000000000000000000000000000000000000000000000000000000000
      0000FDFDFDFF4697CBFF84E9F9FF2D9ED9FF80E9F8FF8CF2FEFF7CE6FCFF64D6
      FAFF50C3F8FF46B5EAFFC7CCD0FF0000000000000000F5EBE8FFBA764CFFBF79
      38FFEAD2BAFFBA691BFFB6600CFFB86311FFB65F0BFFB55F0BFFD29D69FFDFBC
      9BFFAE5809FFE8D4CCFFFDFBFBFF000000000000000000000000000000000000
      0000000000009EA5ABFF2A5E94FF275381FF25507CFF29598BFF113A75FFE4E4
      E4FF000000000000000000000000000000000000000000000000000000000000
      0000F5E0D4FFFBFBFBFFC7C7C7FFB4B4B4FFD9D9D9FFF4F4F4FFF3F3F3FFE5DD
      D9FFD77B46FF000000000000000000000000000000000000000000000000F4F4
      F4FF4AC3FCFF218DCBFF8FF6FBFF8EF5FFFF62DBEEFF83E6FCFF86DCFBFF65CC
      F9FF47BBF7FF4FC1F7FF83A1B8FF00000000FBF8F7FFCE9F87FFC27B38FFDCB2
      87FFBD6A18FFBF6F1FFFCA8743FFD59E67FFFBF7F2FFC06E1CFFC06F1FFFBD6C
      1BFFE9CDB2FFAE590DFFF3E8E4FF000000000000000000000000000000000000
      0000CBCDCDFF195598FF6E88A4FF737F8DFF828991FFADB2B8FF7C98B5FF2359
      9AFFB8B8B9FF000000000000000000000000000000000000000000000000E6B0
      91FFF6F6F6FFC9C9C9FFD2D2D2FFFAFAFAFFE0E0E0FFDADADAFFDBDBDBFFF7F7
      F7FFF6F6F6FFC67242FFF5DED1FF000000000000000000000000FEFEFEFF42C2
      FFFF1A97D7FF9BFFFFFF85F3FAFF55CDEAFF8BE4FDFF71D6FAFF69CFF9FF4FC0
      F7FF45B8F6FF36ACF6FF6299BEFF00000000F4EAE7FFB76310FFEDD6BFFFC271
      1EFFC57826FFC87A28FFD2914CFFDBA770FFFEFDFCFFC77825FFC77927FFC577
      26FFC88138FFD1975CFFCC9D83FFFDFBFBFF000000000000000000000000ECEC
      ECFF2467ACFFB4C1D0FFEEEEEFFFF6F6F6FFDADADAFFF3F3F3FFEFEEEEFFC9D3
      DCFF2969ADFF767A86FF00000000000000000000000000000000DC9F7CFFF4F4
      F4FFE7E7E7FFDFDFDFFFF5F5F5FFE9E9E9FFEDEDECFFFFFFFFFFCCCCCCFFFBFB
      FBFFEDEDEDFF979797FFBCA89CFFE19D76FF000000000000000049ABE2FF13A6
      E9FF9DFFFFFF8FF9FEFF75E7FBFF59CAF9FF57C8F8FF5ACAF9FF58C9F9FF45B9
      F7FF3CB2F6FF269EF4FF4E93BFFF00000000D6AF9CFFD69E64FFC97D2DFFCA7E
      2CFFCD822FFFCE8431FFD89A55FFE0AE76FFFEFDFCFFCF832EFFCF8331FFCD80
      2EFFC97B27FFEFD9C3FFB76415FFFAF6F5FF0000000000000000FEFEFEFF2C72
      B5FF8BA6C1FFEFEFEFFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF2F2F2FFEEEE
      EEFFF1EFEDFF2F74B6FF384A6CFF0000000000000000EBBEA5FFFDF8F3FFF3F3
      F3FFB4B4B4FFF7F7F7FFEBEBEBFFFFFFFFFF5474F4FF5A5B99FF8F8F8FFFD2D2
      D2FFDBDBDBFF9B9B9BFFB9B9B9FFF8EBE3FF00000000809EAEFF21BEFAFF9CFF
      FFFF91F8FFFF8FEAF7FF5DCFFAFF57C8F8FF5ACBF9FF61D0F9FF37ADF5FF4DBF
      F8FF33AAF5FF1F99F4FF5394C0FF00000000BF7C49FFEED5B9FFCD7F29FFD288
      35FFD58B38FFD78E3BFFDEA25CFFF5E3CEFFFDF9F5FFD78D38FFD58D3AFFD48A
      37FFD18734FFDFAD76FFC87B27FFF7F1EFFF00000000000000003677B2FF658D
      B6FFF3F1F0FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF2F2
      F2FFEEEEEEFFFEF8F3FF3881C2FFF0F0F0FFFDFAF8FFD96B2CFFF3E0D4FFF1F4
      F4FFF3F3F3FFAEAEAEFFFFFFFFFFE5E5E4FF817DBAFFF5F5F4FFFFFFFFFFDEDE
      DEFFBDBDBDFFAAAAAAFFD6B4A0FF00000000E5E5E6FF50D5FFFF7EE2FCFF8AF5
      FEFF86EFF9FFE8FCFFFF5FCEF9FF70DDFBFF85EFFDFF73E0FBFF4EC1F7FF4EC0
      F8FF29A1F4FF1B95F3FF86A6BCFF00000000C27A39FFF3DEC6FFD58A35FFD992
      3EFFDC9541FFDD9843FFE4AB63FFFFFFFFFFFDF8F2FFDE9741FFDD9743FFDA94
      40FFD8903CFFDB9E58FFD89951FFF4EBE8FF00000000497CA7FF497EB2FFF6F4
      F2FFF8F8F8FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF4F4
      F4FFF0EFEFFF89ADCEFF9FB0BFFF00000000D56B2FFFFFB784FFFFAD79FFFEAB
      79FFEFEDEDFFF7F7F6FFD6D6D6FFB4B4B4FFFFFFFFFFF8F8F8FFCCCCCCFFCCCC
      CCFFFBFBFBFFE0A684FF00000000000000000000000035C5FAFFCCFEFFFF86EF
      FDFF82EFFDFFA3FFFFFF66CFF9FF70D8FAFF70DDFBFF65D4FAFF48B8F6FF4ABC
      F7FF1893F2FF1390F4FFE6E8E9FF00000000C98952FFF5E1CAFFDFA054FFE09C
      49FFE29E48FFE5A24DFFEBB26CFFFFFFFFFFFDF9F3FFE5A14BFFE4A14BFFE29D
      47FFE1A153FFE6B67CFFDFA45DFFF8F3F1FF6B89A1FF3B79B4FFF9F5F1FFEEEE
      EEFFF8F8F8FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFF4F4
      F4FFB0C4D6FF7398B9FF0000000000000000D26D33FFFCB483FFFFB380FFFFA7
      70FFFFA774FFF9B289FFF3F7F6FFF8F8F8FFAEAEAEFFDDDDDDFFDADADAFFEFF0
      F0FFDB9269FF0000000000000000000000000000000073BFD7FFC9F9FEFF69D7
      FAFF7DE5FCFF7FDCF9FF91DDFBFF7BD5FAFF85D3FAFF69C2F8FF80D9FAFF67B9
      F7FF42A7F4FF1297FAFF0000000000000000D3A586FFF1D5B2FFE6A95EFFEAB2
      69FFF3D0A1FFF4D1A2FFF6D7ADFFFFFFFFFFFFFDFBFFF5CF9DFFF5D3A7FFECB5
      6CFFE9B068FFF4DBBCFFE2AA66FF000000005084B4FF7BA1C5FFF3F0EEFFE4E4
      E4FFF8F8F8FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFD6DD
      E3FF518DC1FF00000000000000000000000000000000EDC7B1FFD87439FFFFB1
      7EFFFFCEB2FFFFBB94FFFC9356FFF1D1BEFFFBFBF6FFE9E9E9FFE7E7E7FFDEAB
      8DFFFDF9F7FF000000000000000000000000000000000000000085D9FFFF52C7
      F8FF6CD3FAFF7AD1FAFFAFEFFDFFB3E6FCFFADE1FCFFB5E6FCFF9FD5FAFF78BF
      F7FF4FABF7FFC8D1D6FF0000000000000000F8F1EFFFF0C790FFF3D1A3FFF0BC
      75FFF4C27FFFF6C682FFF7C781FFFCE8CBFFF9CC8DFFF7C783FFF5C581FFF2BE
      78FFEEB76DFFF8E3C7FFD59F6FFFFEFEFEFF0000000093A7B9FF6392BCFFAAA9
      A8FFD6D6D6FFF7F7F7FFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFEAE9E9FF3F8C
      CEFF00000000000000000000000000000000000000000000000000000000D781
      4FFFF29259FFFFC3A0FFFEDCC8FFFBB186FFF69C68FFF4F5F1FFECDDD5FFECC4
      ADFF000000000000000000000000000000000000000000000000ECEDEEFF88E2
      FFFF55BFF7FF6BCCF9FF84CDF9FFACD9FBFFCFE9FCFFE2F9FEFFB0D9FAFF90CA
      F8FF5EA6D7FF00000000000000000000000000000000DAA26CFFFAE9D1FFF6C5
      80FFF9CA85FFFBCD88FFFDCE87FFFFFFFFFFFFF3E1FFFDCE89FFFBCC88FFF8C6
      81FFFBEAD2FFF8D5A2FFFBF8F7FF000000000000000000000000ACAEAFFFCECF
      D0FFC9C9C9FFD4D4D4FFF8F8F8FFF9F9F9FFFAFAFAFFF3F0EDFF4494D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9ECE4FFD16E34FFF8955CFFFB985FFFF8945CFFF2894CFFDF9C75FF0000
      0000000000000000000000000000000000000000000000000000000000004994
      D3FF7BD6FAFF80D1F9FF73CEF9FFC7E8FCFF89D0FAFFF2F9FEFFC3E3FBFF68BD
      F9FF000000000000000000000000000000000000000000000000F7CE91FFFEF3
      E5FFFED79AFFFFD695FFFFD99CFFFFDA9FFFFFD89AFFFFD89AFFFFD38FFFFEEE
      D7FFFEE6C2FFE2C1ACFFFEFEFEFF000000000000000000000000C8C8C8FF6C6C
      6CFFE4E5E5FFC6C6C6FFE9E9E9FFF6F6F6FFF6F3F0FF579FDAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0D2C0FFD97135FFF9965EFFD88758FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006AB3F0FF55ADF1FF82C9FBFF8AD1FCFFE1F3FEFFD3ECFEFF96DAFFFF0000
      000000000000000000000000000000000000000000000000000000000000F8CD
      8FFFFFF3DEFFFFF6E8FFFFEAC6FFFFE6BAFFFFE8BFFFFFF1D8FFFFF8EDFFFFEE
      C5FFE4C4B0FFFEFEFEFF0000000000000000000000000000000000000000DBDB
      DBFF000000009CA7B0FF89B1D1FFFAF5F1FF6EA9D7FFECEDEEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3A987FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5C1D8FFBAC6D1FFFBFBFCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6C8B5FFFEDEABFFFFFCE0FFFFFFEDFFFFFFE9FFFFF4CCFFEBC196FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2C9CFFF65A7DAFFCCD2D6FF00000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FFFFFCFFF0000FC1FFFFF80FF0000
      FC0FFFFF803F0000F803FFFF801F0000F000800380070000E0008003C0070000
      C0008003E0030000C0008003F003000080008003F003000000018003F0030000
      00038003E007000000078003F00F0000800F8003F00F0000E01F8003FE0F0000
      F01F8003FE0F0000FC3FFFFFFE0F0000FFFFFFFFF01FFFFFFC7FFF03E007FE5F
      F83FFC038003FC0FF00FF0018001F80FF007E0010001F007E001C0010000E003
      C000C0010000C001800080010000C00000010001000080010003800100000003
      00078003000100078007C0030000800FE00FC0078001C01FF01FE00FC001C03F
      FC3FF01FE003E83FFF7FFF1FF01FFC7F00000000000000000000000000000000
      000000000000}
  end
  object dsDoituong: TDataSource
    DataSet = qryDoituong
    Left = 34
    Top = 266
  end
  object qryDoituong: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_PHEP_DOITUONG'
      'WHERE'
      '   MA_DOITUONG = :OLD_MA_DOITUONG')
    EditSQL.Strings = (
      'UPDATE HR_PHEP_DOITUONG SET'
      '   MA_DOITUONG = :MA_DOITUONG, /*PK*/'
      '   TEN_DOITUONG = :TEN_DOITUONG,'
      '   GHI_CHU = :GHI_CHU,'
      '   PHANLOAI_MACDINH = :PHANLOAI_MACDINH'
      'WHERE'
      '   MA_DOITUONG = :OLD_MA_DOITUONG')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_PHEP_DOITUONG('
      '   MA_DOITUONG, /*PK*/'
      '   TEN_DOITUONG,'
      '   GHI_CHU,'
      '   PHANLOAI_MACDINH)'
      'VALUES ('
      '   :MA_DOITUONG,'
      '   :TEN_DOITUONG,'
      '   :GHI_CHU,'
      '   :PHANLOAI_MACDINH)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDoituongNewRecord
    SQL.Strings = (
      'SELECT MA_DOITUONG'
      '     , TEN_DOITUONG'
      '     , GHI_CHU'
      '     , PHANLOAI_MACDINH'
      '     , WORK_TYPE_NAME'
      'FROM HR_PHEP_DOITUONG'
      'left JOIN HR_WORK_TYPE on PHANLOAI_MACDINH=WORK_TYPE_NO'
      '')
    FieldOptions = []
    Left = 34
    Top = 226
    object qryDoituongMA_DOITUONG: TWideStringField
      FieldName = 'MA_DOITUONG'
      Required = True
      Size = 30
    end
    object qryDoituongTEN_DOITUONG: TWideStringField
      FieldName = 'TEN_DOITUONG'
      Required = True
      Size = 126
    end
    object qryDoituongGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
    object qryDoituongPHANLOAI_MACDINH: TWideStringField
      FieldName = 'PHANLOAI_MACDINH'
      Size = 30
    end
    object qryDoituongWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Size = 126
    end
  end
  object qryDanhsachNV: TIBOQuery
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
      end>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_get_emp_dept.employee_no,'
      '       hr_get_emp_dept.full_name,'
      '       hr_get_emp_dept.title_name,'
      '       hr_get_emp_dept.dept_name,'
      '       hr_get_emp_dept.work_type_name'
      'from hr_get_emp_dept(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      
        'where hr_get_emp_dept.employee_no not in (select hr_phep_doituon' +
        'g_apdung.ma_nhanvien from hr_phep_doituong_apdung)'
      '     and hr_get_emp_dept.is_main_position=1 '
      '     and hr_get_emp_dept.is_dismissed=0')
    FieldOptions = []
    Left = 98
    Top = 226
    object qryDanhsachNVEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 810
    end
    object qryDanhsachNVFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 10449
    end
    object qryDanhsachNVTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 3402
    end
    object qryDanhsachNVDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 3402
    end
    object qryDanhsachNVWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Size = 126
    end
  end
  object dsDanhsachNV: TDataSource
    DataSet = qryDanhsachNV
    Left = 98
    Top = 266
  end
  object qryChitietQuyche: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MA_DOITUONG'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_PHEP_DOITUONG_QUYCHE'
      'WHERE'
      '   DEN_THOIGIAN = :OLD_DEN_THOIGIAN AND'
      '   MA_DOITUONG = :OLD_MA_DOITUONG AND'
      '   TU_THOIGIAN = :OLD_TU_THOIGIAN')
    EditSQL.Strings = (
      'UPDATE HR_PHEP_DOITUONG_QUYCHE SET'
      '   DEN_THOIGIAN = :DEN_THOIGIAN, /*PK*/'
      '   MA_DOITUONG = :MA_DOITUONG, /*PK*/'
      '   TU_THOIGIAN = :TU_THOIGIAN, /*PK*/'
      '   SO_NGAYPHEP = :SO_NGAYPHEP,'
      '   CT_SO_NGAYPHEP = :CT_SO_NGAYPHEP'
      'WHERE'
      '   DEN_THOIGIAN = :OLD_DEN_THOIGIAN AND'
      '   MA_DOITUONG = :OLD_MA_DOITUONG AND'
      '   TU_THOIGIAN = :OLD_TU_THOIGIAN')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_PHEP_DOITUONG_QUYCHE('
      '   DEN_THOIGIAN, /*PK*/'
      '   MA_DOITUONG, /*PK*/'
      '   TU_THOIGIAN, /*PK*/'
      '   SO_NGAYPHEP,'
      '   CT_SO_NGAYPHEP)'
      'VALUES ('
      '   :DEN_THOIGIAN,'
      '   :MA_DOITUONG,'
      '   :TU_THOIGIAN,'
      '   :SO_NGAYPHEP,'
      '   :CT_SO_NGAYPHEP)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDoituong
    SQL.Strings = (
      'SELECT MA_DOITUONG'
      '     , TU_THOIGIAN'
      '     , DEN_THOIGIAN'
      '     , SO_NGAYPHEP'
      '     , CT_SO_NGAYPHEP'
      'FROM HR_PHEP_DOITUONG_QUYCHE'
      'where MA_DOITUONG=:MA_DOITUONG')
    FieldOptions = []
    Left = 66
    Top = 226
    object qryChitietQuycheMA_DOITUONG: TWideStringField
      FieldName = 'MA_DOITUONG'
      Required = True
      Size = 30
    end
    object qryChitietQuycheTU_THOIGIAN: TIntegerField
      FieldName = 'TU_THOIGIAN'
      Required = True
    end
    object qryChitietQuycheDEN_THOIGIAN: TIntegerField
      FieldName = 'DEN_THOIGIAN'
      Required = True
    end
    object qryChitietQuycheSO_NGAYPHEP: TIntegerField
      FieldName = 'SO_NGAYPHEP'
    end
    object qryChitietQuycheCT_SO_NGAYPHEP: TWideStringField
      FieldName = 'CT_SO_NGAYPHEP'
      Size = 63
    end
  end
  object dsChitietQuyche: TDataSource
    DataSet = qryChitietQuyche
    Left = 66
    Top = 266
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 168
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
      OnUpdate = acAddAllUpdate
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
    object acDocDSNhanvien: TAction
      Caption = 'acDocDSNhanvien'
      OnExecute = acDocDSNhanvienExecute
    end
    object acDocDSApdung: TAction
      Caption = 'acDocDSApdung'
      OnExecute = acDocDSApdungExecute
    end
    object acAddDate: TAction
      Caption = 'acAddDate'
      ImageIndex = 73
      OnExecute = acAddDateExecute
      OnUpdate = acAddDateUpdate
    end
    object acAddAllDate: TAction
      Caption = 'acAddAllDate'
      ImageIndex = 74
      OnExecute = acAddAllDateExecute
      OnUpdate = acAddAllDateUpdate
    end
    object acRemoveDate: TAction
      Caption = 'acRemoveDate'
      ImageIndex = 70
      OnExecute = acRemoveDateExecute
      OnUpdate = acRemoveDateUpdate
    end
    object acRemoveAllDate: TAction
      Caption = 'acRemoveAllDate'
      ImageIndex = 72
      OnExecute = acRemoveAllDateExecute
      OnUpdate = acRemoveAllDateUpdate
    end
    object acAddHour: TAction
      Caption = 'acAddHour'
      ImageIndex = 73
      OnExecute = acAddHourExecute
      OnUpdate = acAddHourUpdate
    end
    object acAddAllHour: TAction
      Caption = 'acAddAllHour'
      ImageIndex = 74
      OnExecute = acAddAllHourExecute
      OnUpdate = acAddAllHourUpdate
    end
    object acRemoveHour: TAction
      Caption = 'acRemoveHour'
      ImageIndex = 70
      OnExecute = acRemoveHourExecute
      OnUpdate = acRemoveHourUpdate
    end
    object acRemoveAllHour: TAction
      Caption = 'acRemoveAllHour'
      ImageIndex = 72
      OnExecute = acRemoveAllHourExecute
      OnUpdate = acRemoveAllHourUpdate
    end
  end
  object qryDSApdung: TIBOQuery
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
        Name = 'ma_doituong'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_PHEP_DOITUONG_APDUNG'
      'WHERE'
      '   MA_DOITUONG = :OLD_MA_DOITUONG AND'
      '   MA_NHANVIEN = :OLD_MA_NHANVIEN')
    EditSQL.Strings = (
      'UPDATE HR_PHEP_DOITUONG_APDUNG SET'
      '   MA_DOITUONG = :MA_DOITUONG, /*PK*/'
      '   MA_NHANVIEN = :MA_NHANVIEN  /*PK*/'
      'WHERE'
      '   MA_DOITUONG = :OLD_MA_DOITUONG AND'
      '   MA_NHANVIEN = :OLD_MA_NHANVIEN')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_PHEP_DOITUONG_APDUNG('
      '   MA_DOITUONG, /*PK*/'
      '   MA_NHANVIEN) /*PK*/'
      'VALUES ('
      '   :MA_DOITUONG,'
      '   :MA_NHANVIEN)')
    KeyLinks.Strings = (
      'ma_nhanvien')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryDSApdungBeforeDelete
    DataSource = dsDoituong
    SQL.Strings = (
      'select '
      '       hr_phep_doituong_apdung.ma_nhanvien,'
      '       hr_phep_doituong_apdung.ma_doituong,'
      '       hr_get_emp_dept.full_name,'
      '       hr_get_emp_dept.title_name,'
      '       hr_get_emp_dept.dept_name,'
      '       hr_get_emp_dept.work_type_name'
      'from hr_phep_doituong_apdung'
      'join hr_get_emp_dept(:USER_NAME,:DEPT_NO,:VIEW_ALL) on'
      
        '  hr_phep_doituong_apdung.ma_nhanvien=hr_get_emp_dept.employee_n' +
        'o'
      '     and hr_get_emp_dept.is_main_position=1 '
      '     and hr_get_emp_dept.is_dismissed=0'
      'where hr_phep_doituong_apdung.ma_doituong=:ma_doituong')
    FieldOptions = []
    Left = 130
    Top = 226
    object qryDSApdungMA_NHANVIEN: TWideStringField
      FieldName = 'MA_NHANVIEN'
      Size = 30
    end
    object qryDSApdungFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 10449
    end
    object qryDSApdungTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 3402
    end
    object qryDSApdungDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 3402
    end
    object qryDSApdungWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Size = 126
    end
    object qryDSApdungMA_DOITUONG: TWideStringField
      FieldName = 'MA_DOITUONG'
      Required = True
      Size = 30
    end
  end
  object dsDSApdung: TDataSource
    DataSet = qryDSApdung
    Left = 130
    Top = 266
  end
  object dsNull: TDataSource
    Left = 120
    Top = 168
  end
  object qryPhepCauhinh: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_PHEP_CAUHINH'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    EditSQL.Strings = (
      'UPDATE HR_PHEP_CAUHINH SET'
      '   KEY_ID = :KEY_ID, /*PK*/'
      '   TU_THANG = :TU_THANG,'
      '   DEN_THANG = :DEN_THANG,'
      '   DEN_NAM = :DEN_NAM,'
      '   SONGAY_TOIDA = :SONGAY_TOIDA,'
      '   LOAI_CHAMCONG = :LOAI_CHAMCONG'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_PHEP_CAUHINH('
      '   KEY_ID, /*PK*/'
      '   TU_THANG,'
      '   DEN_THANG,'
      '   DEN_NAM,'
      '   SONGAY_TOIDA,'
      '   LOAI_CHAMCONG)'
      'VALUES ('
      '   :KEY_ID,'
      '   :TU_THANG,'
      '   :DEN_THANG,'
      '   :DEN_NAM,'
      '   :SONGAY_TOIDA,'
      '   :LOAI_CHAMCONG)')
    Unicode = True
    RecordCountAccurate = True
    BeforeInsert = qryPhepCauhinhBeforeInsert
    OnNewRecord = qryPhepCauhinhNewRecord
    SQL.Strings = (
      'SELECT KEY_ID'
      '     , TU_THANG'
      '     , DEN_THANG'
      '     , DEN_NAM'
      '     , SONGAY_TOIDA'
      '     , LOAI_CHAMCONG'
      'FROM HR_PHEP_CAUHINH')
    FieldOptions = []
    Left = 186
    Top = 226
    object qryPhepCauhinhKEY_ID: TIntegerField
      FieldName = 'KEY_ID'
      Required = True
    end
    object qryPhepCauhinhTU_THANG: TIntegerField
      FieldName = 'TU_THANG'
      Required = True
      OnChange = qryPhepCauhinhTU_THANGChange
    end
    object qryPhepCauhinhDEN_THANG: TIntegerField
      FieldName = 'DEN_THANG'
      Required = True
    end
    object qryPhepCauhinhDEN_NAM: TIntegerField
      FieldName = 'DEN_NAM'
      Required = True
    end
    object qryPhepCauhinhSONGAY_TOIDA: TIntegerField
      FieldName = 'SONGAY_TOIDA'
      Required = True
    end
    object qryPhepCauhinhLOAI_CHAMCONG: TWideStringField
      FieldName = 'LOAI_CHAMCONG'
      Size = 30
    end
  end
  object dsPhepCauhinh: TDataSource
    DataSet = qryPhepCauhinh
    Left = 186
    Top = 266
  end
  object qryDSNgaycong: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_WORK_DATE_TYPE.WDT_NO')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT WDT_NO'
      '     , WDT_NAME'
      '     , WDT_RATE'
      '     , LA_NGAYPHEP'
      '     , WDT_COLOR'
      'FROM HR_WORK_DATE_TYPE'
      'where (LA_NGAYPHEP is null)or(LA_NGAYPHEP=0)')
    FieldOptions = []
    Left = 226
    Top = 226
    object qryDSNgaycongWDT_NO: TWideStringField
      FieldName = 'WDT_NO'
      Required = True
      Size = 30
    end
    object qryDSNgaycongWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      Required = True
      Size = 126
    end
    object qryDSNgaycongWDT_RATE: TIBOFloatField
      FieldName = 'WDT_RATE'
    end
    object qryDSNgaycongLA_NGAYPHEP: TSmallintField
      FieldName = 'LA_NGAYPHEP'
    end
    object qryDSNgaycongWDT_COLOR: TIntegerField
      FieldName = 'WDT_COLOR'
    end
  end
  object dsDSNgaycong: TDataSource
    DataSet = qryDSNgaycong
    Left = 226
    Top = 266
  end
  object qryDSNgayphep: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_DATE_TYPE SET'
      '   LA_NGAYPHEP = 0'
      'WHERE'
      '   WDT_NO = :OLD_WDT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_DATE_TYPE SET'
      '   LA_NGAYPHEP = 1'
      'WHERE'
      '   WDT_NO = :WDT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryDSApdungBeforeDelete
    SQL.Strings = (
      'SELECT WDT_NO'
      '     , WDT_NAME'
      '     , WDT_RATE'
      '     , LA_NGAYPHEP'
      '     , WDT_COLOR'
      'FROM HR_WORK_DATE_TYPE'
      'where LA_NGAYPHEP=1')
    FieldOptions = []
    Left = 258
    Top = 226
    object qryDSNgayphepWDT_NO: TWideStringField
      FieldName = 'WDT_NO'
      Required = True
      Size = 30
    end
    object qryDSNgayphepWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      Required = True
      Size = 126
    end
    object qryDSNgayphepWDT_RATE: TIBOFloatField
      FieldName = 'WDT_RATE'
    end
    object qryDSNgayphepLA_NGAYPHEP: TSmallintField
      FieldName = 'LA_NGAYPHEP'
    end
    object qryDSNgayphepWDT_COLOR: TIntegerField
      FieldName = 'WDT_COLOR'
    end
  end
  object dsDSNgayphep: TDataSource
    DataSet = qryDSNgayphep
    Left = 258
    Top = 266
  end
  object qryDSGioCong: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_work_hour_type.wht_no,'
      '      hr_work_hour_type.wht_name,'
      '      hr_work_hour_type.wht_rate,'
      '      hr_work_hour_type.la_giophep,'
      '      hr_work_hour_type.wht_color'
      'from hr_work_hour_type'
      'where hr_work_hour_type.la_giophep is null'
      '  or (hr_work_hour_type.la_giophep = 0)')
    FieldOptions = []
    Left = 290
    Top = 226
    object qryDSGioCongWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryDSGioCongWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
    object qryDSGioCongWHT_RATE: TIBOFloatField
      FieldName = 'WHT_RATE'
    end
    object qryDSGioCongLA_GIOPHEP: TSmallintField
      FieldName = 'LA_GIOPHEP'
    end
    object qryDSGioCongWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
  end
  object qryDSGioPhep: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_WORK_Hour_TYPE SET'
      '   LA_GIOPHEP = 0'
      'WHERE'
      '   WHT_NO = :OLD_WHT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'UPDATE HR_WORK_Hour_TYPE SET'
      '   LA_GIOPHEP = 1'
      'WHERE'
      '   WHT_NO = :WHT_NO')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryDSApdungBeforeDelete
    SQL.Strings = (
      'select hr_work_hour_type.wht_no,'
      '      hr_work_hour_type.wht_name,'
      '      hr_work_hour_type.wht_rate,'
      '      hr_work_hour_type.la_giophep,'
      '      hr_work_hour_type.wht_color'
      'from hr_work_hour_type'
      'where hr_work_hour_type.la_giophep =1')
    FieldOptions = []
    Left = 322
    Top = 226
    object qryDSGioPhepWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryDSGioPhepWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
    object qryDSGioPhepWHT_RATE: TIBOFloatField
      FieldName = 'WHT_RATE'
    end
    object qryDSGioPhepLA_GIOPHEP: TSmallintField
      FieldName = 'LA_GIOPHEP'
    end
    object qryDSGioPhepWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
  end
  object dsDSGioCong: TDataSource
    DataSet = qryDSGioCong
    Left = 290
    Top = 266
  end
  object dsDSGioPhep: TDataSource
    DataSet = qryDSGioPhep
    Left = 322
    Top = 266
  end
end
