inherited frmTrainingPlan: TfrmTrainingPlan
  Left = 276
  Top = 161
  Width = 859
  Height = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 508
    Width = 851
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 851
    Height = 508
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 481
      Width = 837
      Color = 15466238
      TabOrder = 13
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 837
        inherited btnClose: TElPopupButton
          Left = 845
        end
        inherited btnHelp: TElPopupButton
          Left = 715
        end
        inherited btnChoose: TElPopupButton
          Left = 785
        end
        inherited btnDesign: TElPopupButton
          Left = 479
          Width = 1
        end
        inherited btnPreview: TElPopupButton
          Left = 478
          Width = 1
        end
        inherited btnPrint: TElPopupButton
          Width = 1
        end
        inherited btnGenerate: TElPopupButton
          Left = 610
          Width = 100
          Hint = 'Ph'#225't sinh khung d'#7919' li'#7879'u '
          ImageIndex = 62
          UseImageList = True
          Images = dmMain.imgAction
          Caption = '& Ph'#225't sinh'
          Action = acGenerateFee
        end
        inherited btnRelation: TElPopupButton
          Left = 510
          Width = 100
          Hint = 'L'#7853'p nhanh chi ti'#7871't k'#7871' ho'#7841'ch '#273#224'o t'#7841'o c'#259'n c'#7913' theo quy ch'#7871' '#273#224'o t'#7841'o'
          ImageIndex = 62
          UseImageList = True
          Images = dmMain.imgAction
          ShowText = True
          Caption = '&L'#7853'p k'#7871' ho'#7841'ch'
          Action = acGeneratePlan
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 485
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    object Panel1: TPanel [1]
      Left = 2
      Top = 185
      Width = 837
      Height = 86
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 17
      object pageMain: TElPageControl
        Left = 0
        Top = 0
        Width = 837
        Height = 86
        BorderWidth = 0
        DrawFocus = False
        Flat = True
        HotTrack = True
        Images = ImageList1
        Multiline = False
        OnChanging = pageMainChanging
        OnChange = pageMainChange
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
        ActivePage = tabPlanInfo
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
        TabOrder = 0
        object tabPlanInfo: TElTabSheet
          PageControl = pageMain
          ImageIndex = 1
          TabVisible = True
          Caption = 'Th'#244'ng tin k'#7871' ho'#7841'ch'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 837
            Height = 62
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object gridClass: TdxDBGrid
              Left = 14
              Top = 28
              Width = 724
              Height = 102
              Bands = <
                item
                  Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
                  Width = 615
                end>
              DefaultLayout = False
              HeaderMinRowCount = 2
              HeaderPanelRowCount = 1
              KeyField = 'CLASS_NO'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              DataSource = dsClass
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              object gridClassPHAN_NHOM_TEN: TdxDBGridMRUColumn
                Caption = 'Ph'#226'n nh'#243'm'
                HeaderAlignment = taCenter
                Width = 115
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PHAN_NHOM_TEN'
                ImmediateDropDown = True
                Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
              end
              object gridClassIS_PLANNED: TdxDBGridImageColumn
                Alignment = taLeftJustify
                Caption = 'Ph'#226'n nh'#243'm'
                DisableCaption = True
                DisableEditor = True
                HeaderAlignment = taCenter
                MinWidth = 16
                Visible = False
                Width = 48
                BandIndex = 0
                RowIndex = 0
                FieldName = 'IS_PLANNED'
                Descriptions.WideStrings = (
                  #272#224'o t'#7841'o m'#7903' r'#7897'ng'
                  #272#224'o t'#7841'o theo quy ch'#7871' c'#244'ng ty')
                ShowDescription = True
                Values.WideStrings = (
                  '0'
                  '1')
                Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
              end
              object gridClassCLASS_NO: TdxDBGridColumn
                Caption = 'K'#253' hi'#7879'u'
                HeaderAlignment = taCenter
                Width = 80
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CLASS_NO'
                Caption_UTF7 = 'K+AP0 hi+Hsc-u'
              end
              object gridClassCONTENT_NAME: TdxDBGridMemoColumn
                Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
                HeaderAlignment = taCenter
                Width = 205
                BandIndex = 0
                RowIndex = 0
                HeaderMaxLineCount = 1
                FieldName = 'CLASS_CONTENT'
                Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
              end
              object gridClassSTART_DATE: TdxDBGridDateColumn
                Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
                HeaderAlignment = taCenter
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'START_DATE'
                Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
              end
              object gridClassEND_DATE: TdxDBGridDateColumn
                Caption = 'Ng'#224'y k'#7871't th'#250'c'
                HeaderAlignment = taCenter
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'END_DATE'
                Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
              end
              object gridClassSTUDENT_COUNT: TdxDBGridSpinColumn
                Alignment = taCenter
                Caption = 'S'#7889' l'#432#7907'ng '
                HeaderAlignment = taCenter
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'STUDENT_COUNT'
                MinValue = 1.000000000000000000
                MaxValue = 99999999.000000000000000000
                Caption_UTF7 = 'S+HtE l+AbAe4w-ng '
              end
              object gridClassCLASS_CODE: TdxDBGridPopupColumn
                Caption = 'M'#227' l'#7899'p t'#432#417'ng '#7913'ng theo qui ch'#7871
                HeaderAlignment = taCenter
                Width = 93
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CLASS_CODE'
                OnCloseUp = gridClassCLASS_CODECloseUp
                OnInitPopup = gridClassCLASS_CODEInitPopup
                Caption_UTF7 = 'M+AOM l+Hts-p t+AbABoQ-ng +Huk-ng theo qui ch+Hr8'
              end
              object gridClassEDU_FIELD_NAME: TdxDBGridPopupColumn
                Caption = 'Chuy'#234'n m'#244'n '#273#224'o t'#7841'o '
                HeaderAlignment = taCenter
                Width = 126
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EDU_FIELD_NAME'
                OnCloseUp = gridClassEDU_FIELD_NAMECloseUp
                OnInitPopup = gridClassEDU_FIELD_NAMEInitPopup
                Caption_UTF7 = 'Chuy+AOo-n m+APQ-n +AREA4A-o t+HqE-o '
              end
              object gridClassFIELD_LEVEL_NAME: TdxDBGridPopupColumn
                Caption = 'Ch'#7913'ng ch'#7881' '#273#7841't '#273#432#7907'c '
                HeaderAlignment = taCenter
                Width = 120
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FIELD_LEVEL_NAME'
                OnCloseUp = gridClassFIELD_LEVEL_NAMECloseUp
                OnInitPopup = gridClassFIELD_LEVEL_NAMEInitPopup
                Caption_UTF7 = 'Ch+Huk-ng ch+Hsk +AREeoQ-t +AREBsB7j-c '
              end
              object gridClassCOST: TdxDBGridCalcColumn
                Caption = 'T'#7893'ng kinh ph'#237
                HeaderAlignment = taCenter
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COST'
                Caption_UTF7 = 'T+HtU-ng kinh ph+AO0'
              end
              object gridClassCURRENCY_NAME: TdxDBGridPopupColumn
                Caption = #272#417'n v'#7883' ti'#7873'n t'#7879
                HeaderAlignment = taCenter
                Width = 67
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CURRENCY_NAME'
                OnCloseUp = gridClassCURRENCY_NAMECloseUp
                OnInitPopup = gridClassCURRENCY_NAMEInitPopup
                Caption_UTF7 = '+ARABoQ-n v+Hss ti+HsE-n t+Hsc'
              end
              object gridClassTEACHER: TdxDBGridColumn
                Caption = 'Gi'#7843'ng vi'#234'n'
                HeaderAlignment = taCenter
                Width = 150
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TEACHER'
                Caption_UTF7 = 'Gi+HqM-ng vi+AOo-n'
              end
              object gridClassNATION_NAME: TdxDBGridPopupColumn
                Caption = #272'T t'#7841'i qu'#7889'c gia'
                HeaderAlignment = taCenter
                Width = 125
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NATION_NAME'
                OnCloseUp = gridClassNATION_NAMECloseUp
                OnInitPopup = gridClassNATION_NAMEInitPopup
                Caption_UTF7 = '+ARA-T t+HqE-i qu+HtE-c gia'
              end
              object gridClassTP_TINH: TdxDBGridColumn
                Caption = 'T'#7841'i T'#7881'nh/TP'
                HeaderAlignment = taCenter
                Width = 137
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TP_TINH'
                Caption_UTF7 = 'T+HqE-i T+Hsk-nh/TP'
              end
              object gridClassTG_CAMKET_LAMVIEC: TdxDBGridCalcColumn
                Caption = 'Th'#7901'i gian cam k'#7871't l'#224'm vi'#7879'c sau '#273#224'o t'#7841'o'
                HeaderAlignment = taCenter
                Width = 115
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TG_CAMKET_LAMVIEC'
                Caption_UTF7 = 'Th+Ht0-i gian cam k+Hr8-t l+AOA-m vi+Hsc-c sau +AREA4A-o t+HqE-o'
              end
              object gridClassDV_CAMKET_LAMVIEC: TdxDBGridImageColumn
                Alignment = taRightJustify
                Caption = #272#417'n v'#7883' t'#237'nh'
                HeaderAlignment = taCenter
                MinWidth = 16
                Width = 64
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DV_CAMKET_LAMVIEC'
                Descriptions.WideStrings = (
                  'Ng'#224'y'
                  'Tu'#7847'n'
                  'Th'#225'ng'
                  'N'#259'm')
                ShowDescription = True
                Values.WideStrings = (
                  '1'
                  '7'
                  '30'
                  '365')
                Caption_UTF7 = '+ARABoQ-n v+Hss t+AO0-nh'
              end
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group4: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'Danh s'#225'ch l'#7899'p '#273#224'o t'#7841'o'
                object dxLayoutControl1Item7: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'dxDBGrid1'
                  ShowCaption = False
                  Control = gridClass
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl1Group1: TdxLayoutGroup
              Caption = 'Th'#244'ng tin k'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
              LayoutDirection = ldHorizontal
              object dxLayoutControl1Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item2: TdxLayoutItem
                  Caption = 'M'#227' k'#7871' ho'#7841'ch '
                  Control = dxMA_KEHOACH
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item8: TdxLayoutItem
                  Caption = 'Ng'#224'y l'#7853'p k'#7871' ho'#7841'ch '
                  Control = dxCREATE_DATE
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  Caption = 'Lo'#7841'i h'#236'nh '#273#224'o t'#7841'o'
                  Control = dxLOAIHINH_DAOTAO
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  Caption = 'Ngu'#7891'n kinh ph'#237
                  Control = dxNGUON_KINHPHI
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group2: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'K'#7871' ho'#7841'ch '#273#224'o t'#7841'o '
                  Control = dxTEN_KEHOACH
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  Caption = 'H'#236'nh th'#7913'c '#273#224'o t'#7841'o'
                  Control = dxHINHTHUC_DAOTAO
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item9: TdxLayoutItem
                  Caption = 'Ngu'#7891'n '#273#224'o t'#7841'o'
                  Control = dxNGUON_DAOTAO
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#7853'p tin '#273#237'nh k'#232'm'
                  Control = dxTAPTIN_DINHKEO
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object tabPlanFee: TElTabSheet
          PageControl = pageMain
          ImageIndex = 5
          TabVisible = True
          Caption = 'Chi ph'#237' d'#7921' to'#225'n'
          Visible = False
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 837
            Height = 62
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object gridClassFree: TdxDBGrid
              Left = 14
              Top = 28
              Width = 427
              Height = 182
              Bands = <
                item
                  Caption = 'Chi ph'#237' chung'
                  Width = 615
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'CLASS_NO'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              DataSource = dsClass
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              ShowBands = True
              object gridClassFreeCLASS_NO: TdxDBGridColumn
                Caption = 'M'#227' l'#7899'p'
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CLASS_NO'
                Caption_UTF7 = 'M+AOM l+Hts-p'
              end
              object gridClassFreeCONTENT_NAME: TdxDBGridColumn
                Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 182
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CLASS_CONTENT'
                Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
              end
              object gridClassFreeSTUDENT_COUNT: TdxDBGridColumn
                Alignment = taCenter
                Caption = 'S'#7889' l'#432#7907'ng'
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 63
                BandIndex = 0
                RowIndex = 0
                FieldName = 'STUDENT_COUNT'
                Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
              end
              object gridClassFreeCURRENCY_NAME: TdxDBGridPopupColumn
                Caption = #272#417'n v'#7883' ti'#7873'n t'#7879
                HeaderAlignment = taCenter
                Visible = False
                Width = 83
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CURRENCY_NAME'
                OnCloseUp = gridClassFreeCURRENCY_NAMECloseUp
                OnInitPopup = gridClassFreeCURRENCY_NAMEInitPopup
                Caption_UTF7 = '+ARABoQ-n v+Hss ti+HsE-n t+Hsc'
              end
              object gridClassFreeCOST: TdxDBGridCalcColumn
                Caption = 'Chi ph'#237' chung'
                HeaderAlignment = taCenter
                Width = 105
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COST'
                Caption_UTF7 = 'Chi ph+AO0 chung'
              end
            end
            object gridFee: TdxDBGrid
              Left = 441
              Top = 28
              Width = 250
              Height = 129
              Bands = <
                item
                  Caption = 'Chi ph'#237' chi ti'#7871't'
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'FEE_NO'
              SummaryGroups = <>
              SummarySeparator = ', '
              TabOrder = 1
              DataSource = dsClassFee
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              ShowBands = True
              object gridFeeFEE_NAME: TdxDBGridColumn
                Caption = 'Kho'#7843'n m'#7909'c chi ph'#237
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 176
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FEE_NAME'
                Caption_UTF7 = 'Kho+HqM-n m+HuU-c chi ph+AO0'
              end
              object gridFeeTOTAL_VALUE: TdxDBGridCalcColumn
                Caption = 'Gi'#225' tr'#7883
                HeaderAlignment = taCenter
                Width = 91
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TOTAL_VALUE'
                Caption_UTF7 = 'Gi+AOE tr+Hss'
              end
            end
            object dxLayoutControl3Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl3Group1: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'Chi ti'#7871't k'#7871' ho'#7841'ch kinh ph'#237' t'#7915'ng l'#7899'p h'#7885'c'
                LayoutDirection = ldHorizontal
                object dxLayoutControl3Item1: TdxLayoutItem
                  AutoAligns = []
                  AlignVert = avClient
                  ShowCaption = False
                  Control = gridClassFree
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item2: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'dxDBGrid1'
                  ShowCaption = False
                  Control = gridFee
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object tabWord: TElTabSheet
          PageControl = pageMain
          ImageIndex = 4
          TabVisible = True
          Caption = 'V'#259'n b'#7843'n '#273'i k'#232'm'
          Visible = False
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 837
            Height = 62
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object panelShowEditor: TPanel
              Left = 14
              Top = 53
              Width = 1307
              Height = 177
              Align = alClient
              BevelOuter = bvNone
              Color = 15466238
              TabOrder = 1
            end
            object ElPopupButton1: TElPopupButton
              Left = 759
              Top = 28
              Width = 25
              Height = 25
              Cursor = crDefault
              Hint = 'M'#7903' r'#7897'ng/Thu h'#7865'p m'#224'n h'#236'nh so'#7841'n th'#7843'o v'#259'n b'#7843'n'
              ImageIndex = 1
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
              ParentShowHint = False
              ShowHint = True
              Action = acZoomOut
              DockOrientation = doNoOrient
              DoubleBuffered = False
            end
            object dxTAPTIN_DINHKEO: TdxDBButtonEdit
              Left = 10000
              Top = 10000
              Width = 271
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 2
              DataField = 'FILE_NAME'
              DataSource = dsTrainingPlan
              StyleController = dmMain.StyleController
              Buttons = <
                item
                  Default = True
                end
                item
                  Default = False
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D7DCE5FF7487
                    A6FFFF00FF00FF00FF00FF00FF00FF00FF001BA1D0FF59CEF6FF0A9CCDFFFF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0027497AFF2649
                    7BFF2B4776FFFF00FF00FF00FF001BA1CFFF85E6FFFF53D9FFFF51B8DBFF12A9
                    DEFF41B2D8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00275D95FF3882
                    BDFF26659FFF2C4A79FF21A8D6FF93EEFFFF60DFFFFF60DFFFFF47B5D9FF2EC1
                    F3FF31C0F1FF0197CAFFFF00FF00FF00FF00FF00FF00FF00FF00C9D3DFFF296D
                    A8FF6DB1E0FF2575B4FF5F9DBEFF71EAFFFF6BE5FFFF6AE5FFFF41B2D8FF36C8
                    F8FF41CCFAFF45CFFFFF089FD2FFF5FBFDFFFF00FF00FF00FF00FF00FF00C9D7
                    E4FF2978B8FF76BEECFF2782C5FF59B4D4FF75EFFFFF74EEFFFF3AAFD7FF3AD3
                    FFFF4BD3FFFF4BD4FFFF50D6FFFF27B7E5FF1CA2CFFFFF00FF00FF00FF00FF00
                    FF003EB0D7FF237ABDFF38A2E7FF4A769FFFA58D8DFFBA8A8AFFAF7F80FFBD98
                    98FFA08C8DFF53DCFFFF56D9FFFF58DAFFFF4BD0F7FF25A6D2FFFF00FF00FF00
                    FF00D5EEF6FF43B2D9FF7493ACFFE0B2AFFFEDE4E6FFEDE2C2FFEFEDD0FFE5DD
                    DAFFF8DFE5FFA18B8BFF5EE0FFFF60DFFFFF65E2FFFF0298CCFFFF00FF00FF00
                    FF00FF00FF00FF00FF00A68D8DFFF8E7D1FFFFF0D4FFFFFFFDFFFFFFFFFFFFFF
                    FBFFFAF9F1FFEAD0D3FF6ADEF8FF6BE5FFFF51D3F3FF029BCDFFFF00FF00FF00
                    FF00FF00FF00F7F5F5FFF3EEEEFFFAD5ACFFFEF5E3FFFFFEF2FFFFFFF7FFFFFF
                    FDFFFFFFFCFFFFFFFEFF9A9497FF66D7F3FFA9F3FFFF039BCDFFFF00FF00FF00
                    FF00FF00FF00E7E1E1FFFAF4EFFFFDF0E2FFFDF3DBFFFEF9E4FFFFFFEEFFFFFF
                    F7FFFFFFF9FFF9F8DFFF9B9194FFA7F3FFFFACF5FFFF059CCEFFFF00FF00FF00
                    FF00FF00FF00F9F8F8FFFFFFFFFFF9D3ACFFFDF1E1FFFEF5DBFFFEF8DBFFFFFE
                    E1FFFFFFE6FFCDB8A3FFA28C8DFFB5F8FFFFB0F7FFFF079FCFFFFF00FF00FF00
                    FF00FF00FF00FF00FF00CEC2C2FFF1C3A4FFFBD9B3FFFDF2E0FFFCE8C3FFFFED
                    C5FFE3CA99FFFFFFFFFFA79090FF24A4D2FFECFFFFFF079ECFFFFF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00CFC3C3FFFFFFFFFFBB9072FFAA8269FFA985
                    72FFFFFFFFFFAB9494FFFF00FF00FF00FF003CADD5FFFF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00A69090FFA28A8AFFA38B8BFFA28B
                    8BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  Kind = bkGlyph
                end>
              OnButtonClick = dxTAPTIN_DINHKEOButtonClick
              ExistButtons = True
            end
            object dxLayoutControl2Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl2Group1: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'N'#7897'i dung l'#432'u tr'#7919
                object dxLayoutControl2Group2: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl2Item2: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'T'#7853'p tin '#273#237'nh k'#232'm'
                    Control = dxTAPTIN_DINHKEO
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcZoomOut: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Caption = 'ElPopupButton1'
                    ShowCaption = False
                    Control = ElPopupButton1
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl2Item1: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'panelShowEditor'
                  ShowCaption = False
                  Control = panelShowEditor
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object gridPlan: TdxDBGrid [2]
      Left = 2
      Top = 2
      Width = 239
      Height = 183
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PLAN_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alTop
      TabOrder = 0
      DataSource = dsTrainingPlan
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridPlanPLAN_NO: TdxDBGridColumn
        Caption = 'M'#227' KH '
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_NO'
        Caption_UTF7 = 'M+AOM KH '
      end
      object gridPlanPLAN_NAME: TdxDBGridColumn
        Caption = 'K'#7871' ho'#7841'ch '#273#224'o t'#7841'o '
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_NAME'
        Caption_UTF7 = 'K+Hr8 ho+HqE-ch +AREA4A-o t+HqE-o '
      end
    end
    object dxDBEdit1: TdxDBEdit [3]
      Left = 639
      Top = 51
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      DataField = 'DUTY'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit [4]
      Left = 502
      Top = 51
      Width = 95
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      DataField = 'CREATE_BY'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
    end
    object dxDBSpinEdit1: TdxDBSpinEdit [5]
      Left = 502
      Top = 74
      Width = 95
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      Alignment = taCenter
      DataField = 'AT_PERIOD'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      MaxValue = 4.000000000000000000
      MinValue = 1.000000000000000000
      StoredValues = 49
    end
    object dxDBSpinEdit2: TdxDBSpinEdit [6]
      Left = 341
      Top = 74
      Width = 95
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Alignment = taCenter
      DataField = 'AT_MONTH'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      StoredValues = 49
    end
    object dxDBSpinEdit3: TdxDBSpinEdit [7]
      Left = 639
      Top = 74
      Width = 95
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      DataField = 'AT_YEAR'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      StoredValues = 48
    end
    object dxMA_KEHOACH: TdxDBEdit [8]
      Left = 341
      Top = 28
      Width = 95
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'PLAN_NO'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
    end
    object dxCREATE_DATE: TdxDBDateEdit [9]
      Left = 341
      Top = 51
      Width = 95
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      DataField = 'CREATE_DATE'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxTEN_KEHOACH: TdxDBEdit [10]
      Left = 502
      Top = 28
      Width = 20
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      DataField = 'PLAN_NAME'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
    end
    object dxHINHTHUC_DAOTAO: TdxDBPopupEdit [11]
      Left = 341
      Top = 130
      Width = 150
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 9
      DataField = 'FORM_NAME'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      OnCloseUp = dxHINHTHUC_DAOTAOCloseUp
      OnInitPopup = dxHINHTHUC_DAOTAOInitPopup
    end
    object dxLOAIHINH_DAOTAO: TdxDBPopupEdit [12]
      Left = 575
      Top = 130
      Width = 168
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 10
      DataField = 'TYPE_NAME'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      OnCloseUp = dxLOAIHINH_DAOTAOCloseUp
      OnInitPopup = dxLOAIHINH_DAOTAOInitPopup
    end
    object dxNGUON_DAOTAO: TdxDBPopupEdit [13]
      Left = 341
      Top = 153
      Width = 150
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 11
      DataField = 'SUPPLY_NAME'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      OnCloseUp = dxNGUON_DAOTAOCloseUp
      OnInitPopup = dxNGUON_DAOTAOInitPopup
    end
    object dxNGUON_KINHPHI: TdxDBPopupEdit [14]
      Left = 575
      Top = 153
      Width = 722
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 12
      DataField = 'SOURCE_NAME'
      DataSource = dsTrainingPlan
      StyleController = dmMain.StyleController
      OnCloseUp = dxNGUON_KINHPHICloseUp
      OnInitPopup = dxNGUON_KINHPHIInitPopup
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcGroupPlan: TdxLayoutGroup [0]
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'gridPlan'
          ShowCaption = False
          Control = gridPlan
          ControlOptions.ShowBorder = False
        end
        object dxlcMainGroup8: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainGroup1: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            Caption = 'K'#7870' HO'#7840'CH '#272#192'O T'#7840'O - HU'#7844'N LUY'#7878'N'
            LayoutDirection = ldHorizontal
            object dxlcMainGroup3: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxlcMainItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'M'#227' s'#7889
                Control = dxMA_KEHOACH
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ng'#224'y l'#7853'p'
                Control = dxCREATE_DATE
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem13: TdxLayoutItem
                Caption = 'Th'#225'ng'
                Control = dxDBSpinEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcMainGroup4: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxlcMainItem11: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'T'#234'n k'#7871' ho'#7841'ch'
                Control = dxTEN_KEHOACH
                ControlOptions.ShowBorder = False
              end
              object dxlcMainGroup5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxlcMainGroup7: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxlcMainItem15: TdxLayoutItem
                    Caption = 'Ng'#432#7901'i l'#7853'p'
                    Control = dxDBEdit2
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcMainItem12: TdxLayoutItem
                    Caption = 'Qu'#253
                    CaptionOptions.AlignHorz = taCenter
                    Control = dxDBSpinEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxlcMainGroup9: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxlcMainItem14: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ch'#7913'c v'#7909
                    Control = dxDBEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcMainItem8: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'N'#259'm'
                    CaptionOptions.AlignHorz = taCenter
                    Control = dxDBSpinEdit3
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object dxlcMainGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'N'#7896'I DUNG K'#7870' HO'#7840'CH'
            object dxlcMainGroup10: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'H'#236'nh th'#7913'c '#273#224'o t'#7841'o'
                Control = dxHINHTHUC_DAOTAO
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Lo'#7841'i h'#236'nh '#273#224'o t'#7841'o'
                Control = dxLOAIHINH_DAOTAO
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcMainGroup11: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ngu'#7891'n '#273#224'o t'#7841'o'
                Control = dxNGUON_DAOTAO
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Ngu'#7891'n kinh ph'#237
                Control = dxNGUON_KINHPHI
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object dxlcMainItem2: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = Panel1
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
        Caption = 'L'#7853'p k'#7871' ho'#7841'ch hu'#7845'n luy'#7879'n - '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 48
  end
  object ImageList1: TImageList
    Left = 99
    Top = 147
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000D1BEBBFFC8968DFFC8968AFFC89588FFC89386FFC89284FFC891
      83FFC89081FFC88E7FFFC78C7DFFFAF7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C49289FFFFF4E6FFFFF4E3FFFFF2E0FFFFF1DCFFFFF0D9FFFFEE
      D5FFFFEDD2FFFFEBCEFFFFECCDFFF6F0EFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5928AFFFFF6EBFFFFF6E8FFFFF4E5FFFFF3E1FFFFF2DEFFFFF0
      DAFFFFEFD7FFFFECD3FFFFEED1FFF6F0EFFF0000000000000000000000000000
      00000000000000000000000000008A7A5800F6DCA400F5D89A00F4D186008A7A
      5800EAA81D00E8A30E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001975A6FF2280B3FF2280B3FF2280
      B3FF2180B3FF8A6E72FFFFF8F0FFFFF8EDFFFFF5EAFFFFF5E7FFFFF4E3FFFFF2
      E0FFFFF1DCFFFFEED9FFFFF0D6FFF6F0EFFF0000000000000000000000000000
      000053B6F60053B6F600000000008A7A5800FAEAC800F9E5BC00F6DCA4008A7A
      5800ECB23600E8A4110000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E8BC9FF52B8FFFF52B8FFFF52B8
      FFFF51B8FFFF9B8288FFFFFAF5FFFFFAF3FFFFF7EFFFFFF7ECFFFFF6E8FFFFF4
      E5FFFFF3E1FFFFF0DEFFFFF2DBFFF6F0EFFF000000006C6C6C00000000006C6C
      6C0053B6F60053B6F6001A1A1A005F5B54008A7A58008A7A58008A7A58008A7A
      58008A7A58008A7A580000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003790C9FF4FB5FFFF50B6FFFF50B6
      FFFF4FB6FFFFA28A8DFFFFFDFBFFFFFCF8FFFFF9F4FFFFF9F1FFFFF8EDFFFFF5
      EAFFFFF5E7FFFFF4E3FFFFF4E0FFF6F0EFFF6C6C6C0000000000B1CCDC008CCE
      FB0053B6F6001B9EF7000E86D800031D2E005F5B5400FDF5E500FAEAC8008A7A
      5800EEBB4E00EAA81D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F94C9FF4DB3FFFF4EB4FFFF4EB4
      FFFF4DB4FFFFA79193FFFFFFFFFFFFFEFDFFFFFDFAFFFFFBF6FFFFFAF3FFFFF7
      EFFFFFF7EBFFFFF6E7FFFFF3E2FFF6F0EEFF00000000EBEBEB00CDEAFC006C6C
      6C00000000006C6C6C001199F7000F8FE80011191F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004897C9FF4AB0FFFF4AB0FFFF4AB0
      FFFF4AB1FFFFAE9A98FFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFBFFFFFCF7FFFFF9
      F3FFFEF8EEFFFCF3E2FFFBEFD7FFF6F0EFFF0000000000000000000000000000
      000000000000000000001199F7001199F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000509BC9FF47AEFFFF48AEFFFF48AE
      FFFF48AEFFFFB3A29CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFCFFFEFB
      F5FFF8EFDFFFF8EDD6FFF0DEC1FFF6F0EFFF00000000000000006C6C6C000000
      0000000000006C6C6C001199F7001199F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000599FC9FF45ACFFFF46ACFFFF46AC
      FFFF46ACFFFFBAAAA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFEFDFFFCF8
      EFFFF8F0EEFFFFF4E0FFCA9683FF0000000000000000232424006C6C6C008CCE
      FB0053B6F6001B9EF7001199F700000000006C6C6C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061A3C9FF41A8FAFF42A8FBFF42A8
      FBFF42A8FBFFBFB1A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFBF5FFF9F4
      E4FFF9F3F3FFD3A083FF00000000000000006C6C6C006C6C6C00CDEAFC008CCE
      FB000000000000000000063D63000000000000000000000000008CCEFB003FAD
      F9001199F7001199F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006AA7C9FF3DA4F5FF3FA5F6FF3FA5
      F6FF3EA4F6FFC4B8ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF6FFF7F2
      E3FFDCB39FFF00000000000000000000000000000000FCFEFF00CDEAFC006992
      AB00000000000000000000000000000000000000000000000000A8DAFC006FC2
      FA004CB3F9004CB3F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000072ABC9FF379EF0FF39A0F2FF38A1
      F3FF38A1F3FF35A0F5FF52A5E5FF51A5E5FF51A2E4FF50A2E2FF3F8BBCFFF0EB
      E8FF0000000000000000000000000000000000000000BDBEBF00CDEAFC008CCE
      FB0053B6F6001B9EF7001199F7000A609A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007BAEC9FF339AEBFF567690FFD2D0
      CFFFD0CDCCFFD0CECCFFC6C4C3FFB3B1AFFF5E7180FF369CECFF2485C5FF0000
      000000000000000000000000000000000000000000001A1A1A0070828D0085C2
      E80053B6F60053B6F6000A5C940002131F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000609DBBFFA5CBE3FFA7CFE8FFACAB
      ABFFFDFDFDFFF8F8F8FFF1F1F1FFADACACFFA2C7DDFFA6CCE3FF5D9EC0FF0000
      0000000000000000000000000000000000000000000000000000000000002324
      240053B6F60053B6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009595
      95FFF5F5F5FFEBEBEBFFD9D9D9FF989898FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADB0B0001010
      0F0010100F00453B1A00453B1A001C3E14001C3E14002B2E1500453B1A00453B
      1A00453B1A002B2E150000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B99E5700D4BE6A00948345002A8C1100C6AC6300D4BE6A00D4BE
      6A00D4BE6A00453B1A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D739D00458EC600363539002733
      3E0000000000000000000000000000000000000000000000000000ECFF0000E4
      FF0000E4FF0002DCFF0013D1FF001ACAFF001EC5FF0021C1FE0024B6FF0029B2
      FC002BACFB002CA7FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007C7D7B00000000000000
      0000000000008A886D00E9DCB200E9DCB2002A8C1100F8E4B700E9DCB200E9DC
      B200F8E4B7003C3B3A000000000000000000000000000000000000000000917D
      4A00E4BB3E000000000071D7FF0076DCFF0076DCFF0076DCFF00201F230062A4
      AD007EDBE400626164000000000000000000000000000000000000ECFF0000EC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000002BACFB000000000000000000D7DCE5FF7487A6FF000000000000
      000000000000000000001BA1D0FF59CEF6FF0A9CCDFF00000000000000000000
      0000000000000000000000000000000000003C3B3A00E8E6E100FEFBF200B4A9
      A3000000000010100F00D5CAC400E1DBD4002B6C1A00F8EDE600FCF7E400FEFF
      FD00676D6D00000000000000000000000000000000000000000000000000FAF3
      E600EDD49500000000006CC1D60084EDFF0084EDFF0084EDFF0065ADBA003A53
      5A0038525A00457C9E000000000000000000000000000000000000F2FF0000EC
      FF0000000000FFFFFF00C7C7C800FFFFFF00C7C7C800FFFFFF00FFFFFF00FFFF
      FF00000000002BACFB00000000000000000027497AFF26497BFF2B4776FF0000
      0000000000001BA1CFFF85E6FFFF53D9FFFF51B8DBFF12A9DEFF41B2D8FF0000
      000000000000000000000000000000000000FAF4F100FEFFFD00FAF4F100E8E6
      E100EED1BE007A5642000C7BC5001D3B4F003B687D0000C6D8008BAEB100ADB0
      B000000000000000000000000000000000000000000000000000000000007F7E
      8000C5C2BD00000000000000000062A4AD0076CCD6007EDBE4008AF4FF0076CC
      D600252B31005196BA000000000000000000000000000000000000F2FF0000EC
      FF0000000000FFFFFF00C7C7C8000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000002BACFB000000000000000000275D95FF3882BDFF26659FFF2C4A
      79FF21A8D6FF93EEFFFF60DFFFFF60DFFFFF47B5D9FF2EC1F3FF31C0F1FF0197
      CAFF00000000000000000000000000000000F8EDE600D5CAC400F8EDE600E8E6
      E1003B687D000C7BC5000887DF001C6BA1007ACAFA0083D7FF0075726F00A7A8
      A800E1F9FB003C3B3A00ADB0B00000000000000000000000000000000000B9BA
      BB0000000000ECCF8E00B2A79300000000002A363F00201F23007EDBE4004870
      7600334C5A00334C5A000000000000000000000000000000000000F2FF0000F2
      FF0016C6D60000000000B9B9BA000000000000000000FFFFFF00FFFFFF000000
      0000259AD40029B2FC000000000000000000C9D3DFFF296DA8FF6DB1E0FF2575
      B4FF5F9DBEFF71EAFFFF6BE5FFFF6AE5FFFF41B2D8FF36C8F8FF41CCFAFF45CF
      FFFF089FD2FFF5FBFDFF00000000000000009292920095766600C0B5AF007A56
      42000C5589000F9CFD001C6BA1007ACAFA007ACAFA002D55640000000000908C
      8900F1FFFF0061605E006265650000000000000000000000000000000000BD9A
      2300E0B10300D6AE2B0079DFFF0062AFC80000000000252B3100538D9F0075D6
      F1007BE3FF007BE3FF000000000000000000000000000000000000F2FF0000F2
      FF0000ECFF0000ECFF003E929F00C7C7C800C7C7C800000000001EC5FF0021C1
      FE0024BCFE0024B6FF00000000000000000000000000C9D7E4FF2978B8FF76BE
      ECFF2782C5FF59B4D4FF75EFFFFF74EEFFFF3AAFD7FF3AD3FFFF4BD3FFFF4BD4
      FFFF50D6FFFF27B7E5FF1CA2CFFF000000000000000094664E00ECA40800EDAF
      2A0075726F000C55890010100F007ACAFA001D3B4F005993B600000000004C52
      5300F1FFFF007C7D7B004C525300000000000000000000000000A08E6800E7C4
      6C00E3B93500000000007BE3FF00000000005C989F00446B760084EDFF0084ED
      FF0084EDFF0084EDFF000000000000000000000000000000000000F2FF0000F2
      FF0000F2FF0000ECFF00E3E3E400FFFFFF00F1F1F100000000001ACAFF0021C1
      FE0024BCFE0024BCFE00000000000000000000000000000000003EB0D7FF237A
      BDFF38A2E7FF4A769FFFA58D8DFFBA8A8AFFAF7F80FFBD9898FFA08C8DFF53DC
      FFFF56D9FFFF58DAFFFF4BD0F7FF25A6D2FF00000000A88A7500ECA40800EDAF
      2A00453B1A0000000000000000005993B6000000000000000000000000003C3B
      3A00F1FFFF003C3B3A0000000000000000000000000000000000F2DEB800EED3
      9B00E8C779000000000084EDFF00000000004162680084EDFF0084EDFF0084ED
      FF0084EDFF0084EDFF000000000000000000000000000000000000F2FF0000F2
      FF0000F2FF0004D4E400FFFFFF00F1F1F10000000000F1F1F100000000001EC5
      FF0021C1FE0024BCFE0000000000000000000000000000000000D5EEF6FF43B2
      D9FF7493ACFFE0B2AFFFEDE4E6FFEDE2C2FFEFEDD0FFE5DDDAFFF8DFE5FFA18B
      8BFF5EE0FFFF60DFFFFF65E2FFFF0298CCFF00000000B3958400EBB74E00F1C0
      5900EBB74E0065662C00453B1A00000000000000000000000000241716004C52
      5300E1F9FB00FEFFFD004A6C6E00B5B8B80000000000706F7200EADFCC000000
      0000EFD7A500EACB85007EDBE4008AF4FF008AF4FF0000000000000000008AF4
      FF008AF4FF008AF4FF000000000000000000000000000000000000F2FF0000F2
      FF0000F2FF0000F2FF00ABABAD000000000000000000E3E3E400000000001EC5
      FF0021C1FE0024BCFE0000000000000000000000000000000000000000000000
      0000A68D8DFFF8E7D1FFFFF0D4FFFFFFFDFFFFFFFFFFFFFFFBFFFAF9F1FFEAD0
      D3FF6ADEF8FF6BE5FFFF51D3F3FF029BCDFFB5B8B800C6A37D00F5C86900F4CF
      8000F5D48D00F5D48D00F5D48D00FFD77E007A56420000000000BEC1C1008EF3
      F800E1F9FB00F1FFFF008EF3F80010100F000000000000000000A88F4700E4BB
      3E00C6AE7B0000000000AE9D7B000000000000000000000000004E7B83005C98
      9F007EDBE400000000000000000000000000000000000000000000F2FF0000F2
      FF0000F2FF0004D8E400FFFFFF00FFFFFF00F1F1F1000000000013D1FF001ACA
      FF001EC5FF0021C1FE000000000000000000000000000000000000000000F7F5
      F5FFF3EEEEFFFAD5ACFFFEF5E3FFFFFEF2FFFFFFF7FFFFFFFDFFFFFFFCFFFFFF
      FEFF9A9497FF66D7F3FFA9F3FFFF039BCDFF92929200D5AF7400F5D48D00F8DE
      A700F8E4B700F8E4B700F8DEA700F6D99A007A56420000000000999B9A008EF3
      F800BFD6D800241716008EF3F800212829000000000000000000F5E6C900E7C4
      6C00E2B82D00C3A76200E6D5B500000000008AF4FF008AF4FF00000000000000
      000000000000000000000000000000000000000000000000000000F2FF0000F2
      FF0000F2FF0000F2FF0000000000000000000000000002DCFF0013D1FF0016CE
      FF001ACAFF0021C1FE000000000000000000000000000000000000000000E7E1
      E1FFFAF4EFFFFDF0E2FFFDF3DBFFFEF9E4FFFFFFEEFFFFFFF7FFFFFFF9FFF9F8
      DFFF9B9194FFA7F3FFFFACF5FFFF059CCEFF8A888600ECC38100F8DEA700FAE9
      C400FCF2D900FCF2D900F6ECD000F8E4B70061605E0000000000000000006BB5
      BA00E8E6E1003C3B3A008EF3F800C6C9C80000000000000000008F8E8E00F9EF
      DD00EDD49500E3B9350000000000000000008AF4FF008AF4FF008AF4FF000000
      000000000000000000000000000000000000000000000000000000F2FF0000F2
      FF0000F2FF0000F2FF0000ECFF0000ECFF0000E4FF0002DCFF000ED4FF0016CE
      FF001ACAFF001EC5FF000000000000000000000000000000000000000000F9F8
      F8FFFFFFFFFFF9D3ACFFFDF1E1FFFEF5DBFFFEF8DBFFFFFEE1FFFFFFE6FFCDB8
      A3FFA28C8DFFB5F8FFFFB0F7FFFF079FCFFF9B938E00D3A47100E9CF9800FCF2
      D900FEFFFD00FEFBF200FCF7E400FAE9C4007069640000000000000000000000
      000061605E0061605E00BEC1C100000000000000000000000000000000007F7E
      8000EEE8DF00F1DCB100D7B0380000000000000000008AF4FF007EDBE4000000
      000000000000000000000000000000000000000000000000000000F2FF0000F2
      FF00000000000000000000000000000000000000000000000000000000000000
      00001EC5FF001EC5FF0000000000000000000000000000000000000000000000
      0000CEC2C2FFF1C3A4FFFBD9B3FFFDF2E0FFFCE8C3FFFFEDC5FFE3CA99FFFFFF
      FFFFA79090FF24A4D2FFECFFFFFF079ECFFFBEC1C100E8E6E100CEC1B600A88A
      75009C5B3400AA735100C6967300E0B9920075726F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006C6C6C00F9EFDD00D3BC84000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000F2
      FF0000F2FF0000F2FF0000E4FF0002DCFF000ED4FF001ACAFF0024BCFE0029B2
      FC002BACFB000000000000000000000000000000000000000000000000000000
      000000000000CFC3C3FFFFFFFFFFBB9072FFAA8269FFA98572FFFFFFFFFFAB94
      94FF00000000000000003CADD5FF00000000000000000000000000000000BEC1
      C100929292009B938E00B4A19600B39584007C7D7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A69090FFA28A8AFFA38B8BFFA28B8BFF000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F800FFFF00000000F800F00100000000
      F800E001000000000000E0010000000000008001000000000000000100000000
      00000001000000000000087F000000000000C07F000000000001800100000000
      00030181000000000007000100000000000F000100000000001F80FF00000000
      001FC1FF00000000E0FFE1FF00000000C003FF3FC003FFFFE003FE0FC003FFFF
      8003C003C0033C7F0007C003C003181F000FC001C003000F0001E001C0030003
      0001C001C00380018001C001C003C00080038001C003C00080000001C003F000
      00400003C003E00000408007C003E0000060C00FC003E0000071C00FC003F000
      007FF07FC003F80DE07FF8FFC003FC3F00000000000000000000000000000000
      000000000000}
  end
  object dsTrainingPlan: TDataSource
    DataSet = qryTrainingPlan
    Left = 91
    Top = 99
  end
  object qryTrainingPlan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_PLAN'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_PLAN SET'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   PLAN_NAME = :PLAN_NAME,'
      '   PLAN_CONTENT = :PLAN_CONTENT,'
      '   PLAN_SOURCE = :PLAN_SOURCE,'
      '   PLAN_FORM = :PLAN_FORM,'
      '   PLAN_TYPE = :PLAN_TYPE,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   CREATE_DATE = :CREATE_DATE,'
      '   PLAN_SUPPLY = :PLAN_SUPPLY,'
      '   CREATE_BY = :CREATE_BY,'
      '   DUTY = :DUTY,'
      '   AT_MONTH = :AT_MONTH,'
      '   AT_PERIOD = :AT_PERIOD,'
      '   AT_YEAR = :AT_YEAR,'
      '   REASON = :REASON,'
      '   PLAN_COST = :PLAN_COST'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_PLAN('
      '   PLAN_NO, /*PK*/'
      '   PLAN_NAME,'
      '   PLAN_CONTENT,'
      '   PLAN_SOURCE,'
      '   PLAN_FORM,'
      '   PLAN_TYPE,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   CREATE_DATE,'
      '   PLAN_SUPPLY,'
      '   CREATE_BY,'
      '   DUTY,'
      '   AT_MONTH,'
      '   AT_PERIOD,'
      '   AT_YEAR,'
      '   REASON,'
      '   PLAN_COST)'
      'VALUES ('
      '   :PLAN_NO,'
      '   :PLAN_NAME,'
      '   :PLAN_CONTENT,'
      '   :PLAN_SOURCE,'
      '   :PLAN_FORM,'
      '   :PLAN_TYPE,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :CREATE_DATE,'
      '   :PLAN_SUPPLY,'
      '   :CREATE_BY,'
      '   :DUTY,'
      '   :AT_MONTH,'
      '   :AT_PERIOD,'
      '   :AT_YEAR,'
      '   :REASON,'
      '   :PLAN_COST)')
    KeyLinks.Strings = (
      'PLAN_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryTrainingPlanAfterPost
    OnNewRecord = qryTrainingPlanNewRecord
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , PLAN_NAME'
      '     , PLAN_CONTENT'
      '     , PLAN_SOURCE'
      '     , PLAN_FORM'
      '     , PLAN_TYPE'
      '     , FILE_NAME'
      '     , FILE_CONTENT'
      '     , SOURCE_NAME'
      '     , FORM_NAME'
      '     , TYPE_NAME'
      '     , CREATE_DATE'
      '     , PLAN_SUPPLY'
      '     , SUPPLY_NAME'
      '     , CREATE_BY'
      '     , DUTY'
      '     , AT_MONTH'
      '     , AT_PERIOD'
      '     , AT_YEAR'
      '     , REASON'
      '     , PLAN_COST'
      'FROM HR_TRAINING_PLAN '
      'LEFT JOIN HR_TRAINING_TYPE on PLAN_TYPE=TYPE_NO'
      'LEFT JOIN HR_TRAINING_FORM on PLAN_FORM=FORM_NO'
      'LEFT JOIN HR_TRAINING_SOURCE on PLAN_SOURCE=SOURCE_NO'
      'LEFT JOIN HR_TRAINING_SUPPLY on PLAN_SUPPLY=SUPPLY_NO')
    FieldOptions = []
    Left = 59
    Top = 67
    object qryTrainingPlanPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryTrainingPlanPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingPlanPLAN_CONTENT: TBlobField
      FieldName = 'PLAN_CONTENT'
      Size = 8
    end
    object qryTrainingPlanPLAN_SOURCE: TWideStringField
      FieldName = 'PLAN_SOURCE'
      Size = 30
    end
    object qryTrainingPlanPLAN_FORM: TWideStringField
      FieldName = 'PLAN_FORM'
      Size = 30
    end
    object qryTrainingPlanPLAN_TYPE: TWideStringField
      FieldName = 'PLAN_TYPE'
      Size = 30
    end
    object qryTrainingPlanFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 63
    end
    object qryTrainingPlanFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Size = 126
    end
    object qryTrainingPlanTYPE_NAME: TWideStringField
      FieldName = 'TYPE_NAME'
      Size = 126
    end
    object qryTrainingPlanSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Size = 126
    end
    object qryTrainingPlanCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object qryTrainingPlanPLAN_SUPPLY: TWideStringField
      FieldName = 'PLAN_SUPPLY'
      Size = 30
    end
    object qryTrainingPlanSUPPLY_NAME: TWideStringField
      FieldName = 'SUPPLY_NAME'
      Size = 126
    end
    object qryTrainingPlanCREATE_BY: TWideStringField
      FieldName = 'CREATE_BY'
      Size = 126
    end
    object qryTrainingPlanDUTY: TWideStringField
      FieldName = 'DUTY'
      Size = 126
    end
    object qryTrainingPlanAT_PERIOD: TIntegerField
      FieldName = 'AT_PERIOD'
    end
    object qryTrainingPlanAT_YEAR: TIntegerField
      FieldName = 'AT_YEAR'
    end
    object qryTrainingPlanREASON: TWideStringField
      FieldName = 'REASON'
      Size = 3072
    end
    object qryTrainingPlanPLAN_COST: TIBOFloatField
      FieldName = 'PLAN_COST'
    end
    object qryTrainingPlanFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryTrainingPlanAT_MONTH: TIntegerField
      FieldName = 'AT_MONTH'
    end
  end
  object dsClass: TDataSource
    DataSet = qryClass
    Left = 59
    Top = 99
  end
  object OpenDialog1: TOpenDialog
    Left = 130
    Top = 147
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 163
    Top = 147
    object acGenerateFee: TAction
      Caption = 'acGenerateFee'
      ImageIndex = 62
      OnExecute = acGenerateFeeExecute
      OnUpdate = acGenerateFeeUpdate
    end
    object acGeneratePlan: TAction
      Caption = 'acGeneratePlan'
      ImageIndex = 62
      OnExecute = acGeneratePlanExecute
      OnUpdate = acGeneratePlanUpdate
    end
    object acZoomOut: TAction
      Caption = 'acZoom'
      ImageIndex = 1
      OnExecute = acZoomOutExecute
    end
  end
  object qryClass: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_CLASS'
      'WHERE'
      '   CLASS_NO = :OLD_CLASS_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_CLASS SET'
      '   CLASS_NO = :CLASS_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   CLASS_CODE = :CLASS_CODE,'
      '   EDU_FIELD = :EDU_FIELD,'
      '   STUDENT_COUNT = :STUDENT_COUNT,'
      '   LEVEL_RESULT = :LEVEL_RESULT,'
      '   START_DATE = :START_DATE,'
      '   END_DATE = :END_DATE,'
      '   COST = :COST,'
      '   CURRENCY = :CURRENCY,'
      '   TEACHER = :TEACHER,'
      '   CLASS_CONTENT = :CLASS_CONTENT,'
      '   IS_PLANNED = :IS_PLANNED,'
      '   PHAN_LOAI = :PHAN_LOAI,'
      '   QUOC_GIA = :QUOC_GIA,'
      '   TP_TINH = :TP_TINH,'
      '   TG_CAMKET_LAMVIEC = :TG_CAMKET_LAMVIEC,'
      '   DV_CAMKET_LAMVIEC = :DV_CAMKET_LAMVIEC'
      'WHERE'
      '   CLASS_NO = :OLD_CLASS_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_CLASS('
      '   CLASS_NO, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   CLASS_CODE,'
      '   EDU_FIELD,'
      '   STUDENT_COUNT,'
      '   LEVEL_RESULT,'
      '   START_DATE,'
      '   END_DATE,'
      '   COST,'
      '   CURRENCY,'
      '   TEACHER,'
      '   CLASS_CONTENT,'
      '   IS_PLANNED,'
      '   PHAN_LOAI,'
      '   QUOC_GIA,'
      '   TP_TINH,'
      '   TG_CAMKET_LAMVIEC,'
      '   DV_CAMKET_LAMVIEC)'
      'VALUES ('
      '   :CLASS_NO,'
      '   :PLAN_NO,'
      '   :CLASS_CODE,'
      '   :EDU_FIELD,'
      '   :STUDENT_COUNT,'
      '   :LEVEL_RESULT,'
      '   :START_DATE,'
      '   :END_DATE,'
      '   :COST,'
      '   :CURRENCY,'
      '   :TEACHER,'
      '   :CLASS_CONTENT,'
      '   :IS_PLANNED,'
      '   :PHAN_LOAI,'
      '   :QUOC_GIA,'
      '   :TP_TINH,'
      '   :TG_CAMKET_LAMVIEC,'
      '   :DV_CAMKET_LAMVIEC)')
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryClassAfterPost
    OnNewRecord = qryClassNewRecord
    DataSource = dsTrainingPlan
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , CLASS_NO'
      '     , CLASS_CODE'
      '     , EDU_FIELD'
      '     , EDU_FIELD_NAME'
      '     , STUDENT_COUNT'
      '     , LEVEL_RESULT'
      '     , FIELD_LEVEL_NAME'
      '     , START_DATE'
      '     , END_DATE'
      '     , COST'
      '     , CURRENCY'
      '     , CURRENCY_NAME'
      '     , TEACHER'
      '     , CLASS_CONTENT'
      '     , IS_PLANNED'
      '     , PHAN_LOAI'
      '     , PHAN_NHOM_TEN'
      '     , QUOC_GIA'
      '     , TP_TINH'
      '     , HR_NATION.NATION_NAME'
      '     , TG_CAMKET_LAMVIEC'
      '     , DV_CAMKET_LAMVIEC'
      'FROM HR_TRAINING_CLASS'
      'LEFT JOIN HR_EDU_FIELD ON EDU_FIELD=HR_EDU_FIELD.EDU_FIELD_NO'
      'LEFT JOIN HR_FIELD_LEVEL ON'
      '  EDU_FIELD=HR_FIELD_LEVEL.EDU_FIELD_NO AND'
      '  LEVEL_RESULT=HR_FIELD_LEVEL.FIELD_LEVEL_NO'
      'LEFT JOIN HR_CURRENCY ON CURRENCY=CURRENCY_NO'
      
        'LEFT JOIN HR_NATION ON HR_TRAINING_CLASS.QUOC_GIA = HR_NATION.NA' +
        'TION_NO '
      
        'LEFT JOIN HR_TRAINING_PHANNHOM ON HR_TRAINING_CLASS.PHAN_LOAI = ' +
        'HR_TRAINING_PHANNHOM.PHAN_NHOM_ID '
      'WHERE PLAN_NO=:PLAN_NO')
    FieldOptions = []
    Left = 89
    Top = 67
    object qryClassPHAN_NHOM_TEN: TWideStringField
      FieldName = 'PHAN_NHOM_TEN'
      LookupDataSet = dmMain.qryAccessHistory
      Required = True
      Size = 126
    end
    object qryClassPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryClassCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryClassEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      OnChange = qryClassEDU_FIELD_NAMEChange
      Size = 30
    end
    object qryClassSTUDENT_COUNT: TIntegerField
      FieldName = 'STUDENT_COUNT'
    end
    object qryClassLEVEL_RESULT: TWideStringField
      FieldName = 'LEVEL_RESULT'
      Size = 30
    end
    object qryClassFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      OnChange = qryClassFIELD_LEVEL_NAMEChange
      Size = 126
    end
    object qryClassSTART_DATE: TDateField
      FieldName = 'START_DATE'
      LookupResultField = 'END_DATE'
      Required = True
    end
    object qryClassEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object qryClassCOST: TIBOFloatField
      FieldName = 'COST'
    end
    object qryClassCURRENCY: TWideStringField
      FieldName = 'CURRENCY'
      Size = 30
    end
    object qryClassCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      OnChange = qryClassCURRENCY_NAMEChange
      Size = 63
    end
    object qryClassTEACHER: TWideStringField
      FieldName = 'TEACHER'
      Size = 63
    end
    object qryClassCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      OnChange = qryClassCLASS_CODEChange
      Size = 30
    end
    object qryClassIS_PLANNED: TIntegerField
      FieldName = 'IS_PLANNED'
    end
    object qryClassCLASS_CONTENT: TWideStringField
      FieldName = 'CLASS_CONTENT'
      Required = True
      Size = 3072
    end
    object qryClassEDU_FIELD: TWideStringField
      FieldName = 'EDU_FIELD'
      Size = 30
    end
    object qryClassPHAN_LOAI: TSmallintField
      FieldName = 'PHAN_LOAI'
      Required = True
    end
    object qryClassQUOC_GIA: TWideStringField
      FieldName = 'QUOC_GIA'
      Size = 30
    end
    object qryClassTP_TINH: TWideStringField
      FieldName = 'TP_TINH'
      Size = 63
    end
    object qryClassNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Size = 126
    end
    object qryClassTG_CAMKET_LAMVIEC: TIBOFloatField
      FieldName = 'TG_CAMKET_LAMVIEC'
    end
    object qryClassDV_CAMKET_LAMVIEC: TSmallintField
      FieldName = 'DV_CAMKET_LAMVIEC'
    end
  end
  object qryClassFee: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASS_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_CLASS_FEE SET'
      '   CLASS_NO = :CLASS_NO, /*PK*/'
      '   FEE_NO = :FEE_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   TOTAL_VALUE = :TOTAL_VALUE'
      'WHERE'
      '   CLASS_NO = :OLD_CLASS_NO AND'
      '   FEE_NO = :OLD_FEE_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsClass
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , CLASS_NO'
      '     , HR_TRAINING_CLASS_FEE.FEE_NO'
      '     , FEE_NAME'
      '     , TOTAL_VALUE'
      'FROM HR_TRAINING_CLASS_FEE'
      
        'JOIN HR_TRAINING_FEE on HR_TRAINING_CLASS_FEE.FEE_NO=HR_TRAINING' +
        '_FEE.FEE_NO'
      'where PLAN_NO=:PLAN_NO and'
      '      CLASS_NO=:CLASS_NO'
      '      ')
    FieldOptions = []
    Left = 123
    Top = 68
    object qryClassFeePLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryClassFeeCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryClassFeeFEE_NO: TWideStringField
      FieldName = 'FEE_NO'
      Required = True
      Size = 30
    end
    object qryClassFeeFEE_NAME: TWideStringField
      FieldName = 'FEE_NAME'
      Required = True
      Size = 126
    end
    object qryClassFeeTOTAL_VALUE: TIBOFloatField
      FieldName = 'TOTAL_VALUE'
    end
  end
  object dsClassFee: TDataSource
    DataSet = qryClassFee
    Left = 67
    Top = 147
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 156
    Top = 68
  end
end
