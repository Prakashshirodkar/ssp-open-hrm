inherited frmRecruitmentPlan: TfrmRecruitmentPlan
  Left = 0
  Top = 127
  Width = 974
  Height = 577
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 520
    Width = 966
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 966
    Height = 520
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 493
      Color = 15466238
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 981
        end
        inherited btnHelp: TElPopupButton
          Left = 851
        end
        inherited btnChoose: TElPopupButton
          Left = 921
        end
        inherited btnDesign: TElPopupButton
          UseImageList = True
          Images = dmMain.imgAction
          Action = frameToolbar1.acPrint
        end
        inherited btnPreview: TElPopupButton
          UseImageList = True
          Images = dmMain.imgAction
          Action = frameToolbar1.acDesign
        end
        inherited btnPrint: TElPopupButton
          UseImageList = True
          Images = dmMain.imgAction
          Action = frameToolbar1.acPreview
        end
        inherited btnGenerate: TElPopupButton
          Width = 119
          Hint = 'Ph'#225't sinh c'#225'c kho'#7843'n m'#7909'c chi ph'#237
          ImageIndex = 58
          UseImageList = True
          Images = dmMain.imgAction
          Caption = 'Ph'#225't sinh chi ph'#237
          Action = acPhatSinh
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group3: TdxLayoutGroup
              Visible = True
              inherited dxLayoutControl1Item8: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item7: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item6: TdxLayoutItem
                Visible = True
              end
            end
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
      inherited ActionList1: TActionList
        Images = dmMain.imgAction
        inherited acPrint: TAction
          OnExecute = frameToolbar1acPrintExecute
        end
        inherited acDesign: TAction
          OnExecute = frameToolbar1acDesignExecute
        end
        inherited acPreview: TAction
          OnExecute = frameToolbar1acPreviewExecute
        end
      end
    end
    object Panel1: TPanel [1]
      Left = 2
      Top = 2
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 4
      object gridPlan: TdxDBGrid
        Left = 0
        Top = 0
        Width = 210
        Height = 41
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PLAN_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        DataSource = dsRecruitmentPlan
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridPlanPLAN_NO: TdxDBGridColumn
          Caption = 'M'#227' '#273#7907't '
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NO'
          Caption_UTF7 = 'M+AOM +AREe4w-t '
        end
        object gridPlanPLAN_NAME: TdxDBGridColumn
          Caption = #272#7907't tuy'#7875'n d'#7909'ng '
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NAME'
          Caption_UTF7 = '+ARAe4w-t tuy+HsM-n d+HuU-ng '
        end
      end
      object ElSplitter1: TElSplitter
        Left = 210
        Top = 0
        Width = 5
        Height = 41
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridPlan
        ControlBottomRight = pageMain
        AutoHide = False
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object pageMain: TElPageControl
        Left = 215
        Top = 0
        Width = 747
        Height = 41
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
        TabIndex = 1
        TabPosition = etpTop
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clBlue
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        ActivePage = tabNeedInfo
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
        object tabPlanInfo: TElTabSheet
          PageControl = pageMain
          ImageIndex = 1
          TabVisible = True
          Caption = 'Th'#244'ng tin k'#7871' ho'#7841'ch'
          Visible = False
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 747
            Height = 17
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object dxDBEdit1: TdxDBEdit
              Left = 290
              Top = 28
              Width = 144
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 1
              DataField = 'PLAN_NAME'
              DataSource = dsRecruitmentPlan
              StyleController = dmMain.StyleController
            end
            object dxPLAN_NO: TdxDBEdit
              Left = 94
              Top = 28
              Width = 90
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              DataField = 'PLAN_NO'
              DataSource = dsRecruitmentPlan
              StyleController = dmMain.StyleController
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 94
              Top = 51
              Width = 90
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 2
              DataField = 'FROM_DATE'
              DataSource = dsRecruitmentPlan
              StyleController = dmMain.StyleController
              PopupBorder = pbFrame3D
            end
            object dxDBDateEdit2: TdxDBDateEdit
              Left = 94
              Top = 74
              Width = 90
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 3
              DataField = 'TO_DATE'
              DataSource = dsRecruitmentPlan
              StyleController = dmMain.StyleController
              PopupBorder = pbFrame3D
            end
            object dxDBButtonEdit1: TdxDBButtonEdit
              Left = 94
              Top = 97
              Width = 144
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 6
              DataField = 'FILE_NAME'
              DataSource = dsRecruitmentPlan
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
              OnButtonClick = dxDBButtonEdit1ButtonClick
              ExistButtons = True
            end
            object dxDBEdit3: TdxDBEdit
              Left = 290
              Top = 51
              Width = 144
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 4
              DataField = 'RECRUITING_FORM'
              DataSource = dsRecruitmentPlan
              StyleController = dmMain.StyleController
            end
            object gridRecruitingBoard: TdxDBGrid
              Left = 14
              Top = 231
              Width = 250
              Height = 129
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'KEY_INDEX'
              SummaryGroups = <>
              SummarySeparator = ', '
              TabOrder = 8
              DataSource = dsRecruitingBoard
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
              object gridRecruitingBoardKEY_INDEX: TdxDBGridSpinColumn
                Alignment = taCenter
                Caption = 'STT '
                Color = clInfoBk
                HeaderAlignment = taCenter
                Width = 41
                BandIndex = 0
                RowIndex = 0
                FieldName = 'KEY_INDEX'
              end
              object gridRecruitingBoardMEMBER_NAME: TdxDBGridColumn
                Caption = 'Th'#224'nh vi'#234'n h'#7897'i '#273#7891'ng '
                HeaderAlignment = taCenter
                Width = 156
                BandIndex = 0
                RowIndex = 0
                FieldName = 'MEMBER_NAME'
                Caption_UTF7 = 'Th+AOA-nh vi+AOo-n h+Htk-i +AREe0w-ng '
              end
              object gridRecruitingBoardMEMBER_ROLE: TdxDBGridColumn
                Caption = 'Vai tr'#242' - v'#7883' tr'#237' '
                HeaderAlignment = taCenter
                Width = 107
                BandIndex = 0
                RowIndex = 0
                FieldName = 'MEMBER_ROLE'
                Caption_UTF7 = 'Vai tr+API - v+Hss tr+AO0 '
              end
              object gridRecruitingBoardNOTE: TdxDBGridColumn
                Caption = 'Ghi ch'#250
                HeaderAlignment = taCenter
                Width = 91
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOTE'
                Caption_UTF7 = 'Ghi ch+APo'
              end
            end
            object dxDBMemo1: TdxDBMemo
              Left = 94
              Top = 120
              Width = 416
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 7
              DataField = 'NOTE'
              DataSource = dsRecruitmentPlan
              StyleController = dmMain.StyleController
              Height = 78
            end
            object dxDBPopupEdit1: TdxDBPopupEdit
              Left = 290
              Top = 74
              Width = 208
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 5
              DataField = 'SOURCE_NAME'
              DataSource = dsRecruitmentPlan
              StyleController = dmMain.StyleController
              OnCloseUp = dxDBPopupEdit1CloseUp
              OnInitPopup = dxDBPopupEdit1InitPopup
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group1: TdxLayoutGroup
                Caption = 'Th'#244'ng tin '#273#7907't tuy'#7875'n d'#7909'ng'
                object dxLayoutControl1Group3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item2: TdxLayoutItem
                    Caption = 'M'#227' s'#7889' '#273#7907't '
                    Control = dxPLAN_NO
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item1: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = #272#7907't tuy'#7875'n d'#7909'ng '
                    Control = dxDBEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Group6: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Group7: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutControl1Item3: TdxLayoutItem
                      Caption = 'T'#7915' ng'#224'y '
                      Control = dxDBDateEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item4: TdxLayoutItem
                      Caption = #273#7871'n ng'#224'y'
                      Control = dxDBDateEdit2
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl1Group2: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutControl1Item6: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'H'#236'nh th'#7913'c tuy'#7875'n d'#7909'ng'
                      Control = dxDBEdit3
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item9: TdxLayoutItem
                      Caption = 'Ngu'#7891'n tuy'#7875'n d'#7909'ng'
                      Control = dxDBPopupEdit1
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#7853'p tin '#273#237'nh k'#232'm'
                  CaptionOptions.AlignVert = tavTop
                  Control = dxDBButtonEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item8: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'Ghi ch'#250
                  CaptionOptions.AlignVert = tavTop
                  Control = dxDBMemo1
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group4: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'Th'#224'nh ph'#7847'n h'#7897'i '#273#7891'ng tuy'#7875'n d'#7909'ng'
                object dxLayoutControl1Item7: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'dxDBGrid1'
                  ShowCaption = False
                  Control = gridRecruitingBoard
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object tabNeedInfo: TElTabSheet
          PageControl = pageMain
          ImageIndex = 0
          TabVisible = True
          Caption = 'Nhu c'#7847'u tuy'#7875'n d'#7909'ng'
          object ElSplitter2: TElSplitter
            Left = 0
            Top = 249
            Width = 747
            Height = 5
            Cursor = crVSplit
            SnapTopLeft = True
            SnapBottomRight = True
            ControlTopLeft = Panel2
            ControlBottomRight = gridNeedRequest
            AutoHide = False
            Align = alTop
            BevelOuter = bvLowered
            UseXPThemes = False
          end
          object gridNeedRequest: TdxDBGrid
            Left = 0
            Top = 254
            Width = 747
            Height = 213
            Bands = <
              item
                Caption = 'Y'#202'U C'#7846'U CHUY'#202'N M'#212'N NGHI'#7878'P V'#7908' CHO T'#7914'NG V'#7882' TR'#205
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EDU_FIELD_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 1
            DataSource = dsNeedRequest
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            ShowBands = True
            object gridNeedRequestColumn4: TdxDBGridColumn
              Alignment = taCenter
              Caption = 'STT'
              Color = clInfoBk
              HeaderAlignment = taCenter
              Sorted = csUp
              Width = 46
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = gridNeedRequestColumn4CustomDrawCell
            end
            object gridNeedRequestEDU_FIELD_NAME: TdxDBGridPopupColumn
              Caption = 'Chuy'#234'n m'#244'n - nghi'#7879'p v'#7909' '
              HeaderAlignment = taCenter
              Width = 168
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EDU_FIELD_NAME'
              OnCloseUp = gridNeedRequestEDU_FIELD_NAMECloseUp
              OnInitPopup = gridNeedRequestEDU_FIELD_NAMEInitPopup
              Caption_UTF7 = 'Chuy+AOo-n m+APQ-n - nghi+Hsc-p v+HuU '
            end
            object gridNeedRequestFIELD_LEVEL_NAME: TdxDBGridPopupColumn
              Caption = 'M'#7913'c '#273#7897' t'#432#417'ng '#7913'ng c'#7847'n c'#243' '
              HeaderAlignment = taCenter
              Width = 164
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FIELD_LEVEL_NAME'
              OnCloseUp = gridNeedRequestFIELD_LEVEL_NAMECloseUp
              OnInitPopup = gridNeedRequestFIELD_LEVEL_NAMEInitPopup
              Caption_UTF7 = 'M+Huk-c +AREe2Q t+AbABoQ-ng +Huk-ng c+Hqc-n c+APM '
            end
            object gridNeedRequestMANDATORY: TdxDBGridCheckColumn
              Alignment = taCenter
              Caption = 'B'#7855't bu'#7897'c'
              HeaderAlignment = taCenter
              Width = 57
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MANDATORY'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = 'B+Hq8-t bu+Htk-c'
            end
            object gridNeedRequestNOTE: TdxDBGridColumn
              Caption = 'Ghi ch'#250
              HeaderAlignment = taCenter
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOTE'
              Caption_UTF7 = 'Ghi ch+APo'
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 747
            Height = 249
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel2'
            TabOrder = 2
            object gridNeedInfo: TdxDBGrid
              Left = 0
              Top = 0
              Width = 401
              Height = 249
              Bands = <
                item
                  Alignment = taLeftJustify
                  Caption = 'DANH S'#193'CH V'#7882' TR'#205' C'#7846'N TUY'#7874'N D'#7908'NG'
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'POSITION_NO'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alLeft
              TabOrder = 0
              DataSource = dsNeedInfo
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              ShowBands = True
              object gridNeedInfoColumn4: TdxDBGridColumn
                Alignment = taCenter
                Caption = 'STT'
                Color = clInfoBk
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 40
                BandIndex = 0
                RowIndex = 0
                OnCustomDrawCell = gridNeedInfoColumn4CustomDrawCell
              end
              object gridNeedInfoPOSITION_NO: TdxDBGridColumn
                Caption = 'M'#227' s'#7889' v'#7883' tr'#237' '
                Color = clInfoBk
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 86
                BandIndex = 0
                RowIndex = 0
                FieldName = 'POSITION_NO'
                Caption_UTF7 = 'M+AOM s+HtE v+Hss tr+AO0 '
              end
              object gridNeedInfoDEPT_NAME: TdxDBGridPopupColumn
                Caption = #272#417'n v'#7883' - ph'#242'ng ban '
                HeaderAlignment = taCenter
                Width = 135
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DEPT_NAME'
                PopupAutoSize = False
                OnCloseUp = gridNeedInfoDEPT_NAMECloseUp
                OnInitPopup = gridNeedInfoDEPT_NAMEInitPopup
                Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban '
              end
              object gridNeedInfoTITLE_NAME: TdxDBGridColumn
                Caption = 'Ch'#7913'c v'#7909' '
                Color = clInfoBk
                HeaderAlignment = taCenter
                Width = 140
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TITLE_NAME'
                Caption_UTF7 = 'Ch+Huk-c v+HuU '
              end
              object gridNeedInfoNGAY_NHAN_YEUCAU: TdxDBGridDateColumn
                Caption = 'Ng'#224'y nh'#7853'n y'#234'u c'#7847'u'
                HeaderAlignment = taCenter
                Width = 110
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NGAY_NHAN_YEUCAU'
                Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n y+AOo-u c+Hqc-u'
              end
              object gridNeedInfoSONAM_KINHNGHIEM: TdxDBGridCalcColumn
                Caption = 'S'#7889' n'#259'm kinh nghi'#7879'm'
                HeaderAlignment = taCenter
                Width = 110
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SONAM_KINHNGHIEM'
                Caption_UTF7 = 'S+HtE n+AQM-m kinh nghi+Hsc-m'
              end
              object gridNeedInfoNEED_COUNT: TdxDBGridSpinColumn
                Alignment = taCenter
                Caption = 'S'#7889' l'#432#7907'ng '
                HeaderAlignment = taCenter
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NEED_COUNT'
                MinValue = 1.000000000000000000
                MaxValue = 99999999.000000000000000000
                Caption_UTF7 = 'S+HtE l+AbAe4w-ng '
              end
            end
            object ElSplitter3: TElSplitter
              Left = 401
              Top = 0
              Width = 5
              Height = 249
              Cursor = crHSplit
              SnapTopLeft = True
              SnapBottomRight = True
              ControlTopLeft = gridNeedInfo
              ControlBottomRight = gridDetail
              AutoHide = False
              Align = alLeft
              BevelOuter = bvLowered
              UseXPThemes = False
            end
            object pageDetail: TElPageControl
              Left = 406
              Top = 0
              Width = 341
              Height = 249
              BorderWidth = 0
              DrawFocus = False
              Flat = False
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
              ActivePage = tabChiPhi
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
              object tabChiPhi: TElTabSheet
                PageControl = pageDetail
                ImageIndex = -1
                TabVisible = True
                Caption = 'Kho'#7843'n m'#7909'c chi ph'#237
                object gridDetail: TdxDBGrid
                  Left = 0
                  Top = 0
                  Width = 341
                  Height = 228
                  Bands = <
                    item
                      Caption = 'KHO'#7842'N M'#7908'C CHI PH'#205
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'ITEM_NO'
                  ShowSummaryFooter = True
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  Align = alClient
                  TabOrder = 0
                  DataSource = dsDetail
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                  object gridDetailITEM_NAME: TdxDBGridColumn
                    Caption = 'Chi ph'#237
                    Color = clInfoBk
                    DisableEditor = True
                    HeaderAlignment = taCenter
                    Width = 154
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'ITEM_NAME'
                    Caption_UTF7 = 'Chi ph+AO0'
                  end
                  object gridDetailAMOUNT: TdxDBGridCalcColumn
                    Caption = 'Th'#224'nh ti'#7873'n'
                    HeaderAlignment = taCenter
                    Width = 105
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'AMOUNT'
                    SummaryFooterType = cstSum
                    SummaryFooterFormat = '#,##0'
                    Caption_UTF7 = 'Th+AOA-nh ti+HsE-n'
                  end
                end
              end
              object tabKenhTuyenDung: TElTabSheet
                PageControl = pageDetail
                ImageIndex = -1
                TabVisible = True
                Caption = 'K'#234'nh tuy'#7875'n d'#7909'ng d'#7921' ki'#7871'n'
                Visible = False
                object gridNeedSource: TdxDBGrid
                  Left = 0
                  Top = 0
                  Width = 357
                  Height = 228
                  Bands = <
                    item
                      Caption = 'KHO'#7842'N M'#7908'C CHI PH'#205
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'SOURCE_NO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  Align = alClient
                  TabOrder = 0
                  DataSource = dsNeedSorce
                  Filter.Criteria = {00000000}
                  LookAndFeel = lfFlat
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                  object gridNeedSourceSOURCE_NO: TdxDBGridColumn
                    HeaderAlignment = taCenter
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'SOURCE_NO'
                  end
                  object gridNeedSourceSOURCE_NAME: TdxDBGridPopupColumn
                    Caption = 'K'#234'nh tuy'#7875'n d'#7909'ng'
                    HeaderAlignment = taCenter
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'SOURCE_NAME'
                    OnCloseUp = gridNeedSourceSOURCE_NAMECloseUp
                    OnInitPopup = gridNeedSourceSOURCE_NAMEInitPopup
                    Caption_UTF7 = 'K+AOo-nh tuy+HsM-n d+HuU-ng'
                  end
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
          object panelShowEditor: TPanel
            Left = 0
            Top = 0
            Width = 521
            Height = 17
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
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
        Caption = 'L'#7853'p k'#7871' ho'#7841'ch tuy'#7875'n d'#7909'ng'
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
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000040404000404
      0400040404000404040004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8E0B400F0D0
      9000F0C46C00E4B03C00E8A00C00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060483800040404000404
      0400040404000404040004040400000000000000000000000000F8E8D000F8E0
      B400F0D09000F0C46C00E4B03C00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400DCE4D800F4F4E400E8D8
      D000DCC0B000CCA08400BC845C00100800000000000000000000F4F4E400F8E8
      D000F8E0B400F0D09000F0C46C00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400FFFFFF00F4F4F400ECE4
      E400E0CCB400CCA08400BC845C00A86434001498F0001498F0001498F000F4F4
      E400F8E8D000F8E0B400F0D09000040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4E400CCC4C400F4F4F400E8D8
      D000DCC0B0000404040004040400040404000404040028A0F0001498F000F4F4
      F400F4F4E400F8E8D00004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006860500078584000847060007858
      4000D8B4A400489C4800489C48000404040080C8F0004090C8001498F000FFFF
      FF00F4F4F400F4F4E40094583400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090604000E8A00C00E4AC
      2C009C8C8400489C480004040400B4E0F8008CCCF40070B0800080C0800098C8
      9800040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090706000E8A00C00E8A8
      1C00E4AC2C00489C48003C7C3C00C0E0F8002878780080C08000ACD4AC00C0E0
      C000040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C7C5C00E8B84C00ECBC
      5C00F0C46C00489C4800489C4800489C480058A85C008CC48C00C0E0C000E0F0
      E000040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078584000E4B46C00F0C46C00F0CC
      8400F0D09000ECE4E4003C7C3C003C7C3C003C7C3C003C7C3C003C7C3C003C7C
      3C00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000058645800ECC47800F0D09000F0DC
      A400F8E0B400F8E0B400F0DCA400F0D898007858400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C847400F0CC8400F0DCA400F4E4
      C400F8E8D000F8E8D000F8E8D000F8E0B400845C440000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8989000E0C88400F8E0B400F4F0
      D800F4F4F400F4F4F400F4F0D800F4E4C400604C400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400D8C8C0009C8C84007858
      4000B0704000C0947000E0CCB400F8E8D0006C54480000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000586458008C84
      74008C847400A8989000BCB0A400907058002020200000000000000000000000
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
      00000000000000000000000000000000FFC0000000000000FFC0000000000000
      81C000000000000000C000000000000000000000000000000000000000000000
      0001000000000000800700000000000080070000000000008007000000000000
      0007000000000000007F000000000000007F000000000000007F000000000000
      007F000000000000C07F000000000000C003FF3FC003FFFFE003FE0FC003FFFF
      8003C003C0033C7F0007C003C003181F000FC001C003000F0001E001C0030003
      0001C001C00380018001C001C003C00080038001C003C00080000001C003F000
      00400003C003E00000408007C003E0000060C00FC003E0000071C00FC003F000
      007FF07FC003F80DE07FF8FFC003FC3F00000000000000000000000000000000
      000000000000}
  end
  object dsRecruitmentPlan: TDataSource
    DataSet = qryRecruitmentPlan
    Left = 59
    Top = 219
  end
  object qryRecruitmentPlan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUITMENT_PLAN'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_RECRUITMENT_PLAN SET'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   PLAN_NAME = :PLAN_NAME,'
      '   FROM_DATE = :FROM_DATE,'
      '   TO_DATE = :TO_DATE,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   RECRUITING_FORM = :RECRUITING_FORM,'
      '   NOTE = :NOTE,'
      '   CONTENT = :CONTENT,'
      '   RECRUITMENT_SOURCE = :RECRUITMENT_SOURCE'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUITMENT_PLAN('
      '   PLAN_NO, /*PK*/'
      '   PLAN_NAME,'
      '   FROM_DATE,'
      '   TO_DATE,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   RECRUITING_FORM,'
      '   NOTE,'
      '   CONTENT,'
      '   RECRUITMENT_SOURCE)'
      'VALUES ('
      '   :PLAN_NO,'
      '   :PLAN_NAME,'
      '   :FROM_DATE,'
      '   :TO_DATE,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :RECRUITING_FORM,'
      '   :NOTE,'
      '   :CONTENT,'
      '   :RECRUITMENT_SOURCE)')
    KeyLinks.Strings = (
      'HR_RECRUITMENT_PLAN.PLAN_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryRecruitmentPlanAfterPost
    OnNewRecord = qryRecruitmentPlanNewRecord
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , PLAN_NAME'
      '     , FROM_DATE'
      '     , TO_DATE'
      '     , FILE_NAME'
      '     , FILE_CONTENT'
      '     , RECRUITING_FORM'
      '     , HR_RECRUITMENT_PLAN.NOTE'
      '     , CONTENT'
      '     , RECRUITMENT_SOURCE'
      '     , SOURCE_NAME'
      'FROM HR_RECRUITMENT_PLAN'
      'LEFT JOIN HR_RECRUIMENT_SOURCE on RECRUITMENT_SOURCE=SOURCE_NO')
    FieldOptions = []
    Left = 59
    Top = 187
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
    object qryRecruitmentPlanFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
      LookupResultField = 'TO_DATE'
      Required = True
    end
    object qryRecruitmentPlanTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
    object qryRecruitmentPlanFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 63
    end
    object qryRecruitmentPlanFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryRecruitmentPlanRECRUITING_FORM: TWideStringField
      FieldName = 'RECRUITING_FORM'
      Size = 126
    end
    object qryRecruitmentPlanNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryRecruitmentPlanCONTENT: TBlobField
      FieldName = 'CONTENT'
      Size = 8
    end
    object qryRecruitmentPlanRECRUITMENT_SOURCE: TWideStringField
      FieldName = 'RECRUITMENT_SOURCE'
      Size = 30
    end
    object qryRecruitmentPlanSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Size = 126
    end
  end
  object qryRecruitingBoard: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUITING_BOARD'
      'WHERE'
      '   KEY_INDEX = :OLD_KEY_INDEX AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_RECRUITING_BOARD SET'
      '   KEY_INDEX = :KEY_INDEX, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   MEMBER_NAME = :MEMBER_NAME,'
      '   MEMBER_ROLE = :MEMBER_ROLE,'
      '   NOTE = :NOTE'
      'WHERE'
      '   KEY_INDEX = :OLD_KEY_INDEX AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUITING_BOARD('
      '   KEY_INDEX, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   MEMBER_NAME,'
      '   MEMBER_ROLE,'
      '   NOTE)'
      'VALUES ('
      '   :KEY_INDEX,'
      '   :PLAN_NO,'
      '   :MEMBER_NAME,'
      '   :MEMBER_ROLE,'
      '   :NOTE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryRecruitingBoardNewRecord
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'SELECT KEY_INDEX'
      '     , MEMBER_NAME'
      '     , MEMBER_ROLE'
      '     , NOTE'
      '     , PLAN_NO'
      'FROM HR_RECRUITING_BOARD'
      'where PLAN_NO=:PLAN_NO')
    FieldOptions = []
    Left = 92
    Top = 187
    object qryRecruitingBoardKEY_INDEX: TIntegerField
      FieldName = 'KEY_INDEX'
      Required = True
    end
    object qryRecruitingBoardMEMBER_NAME: TWideStringField
      FieldName = 'MEMBER_NAME'
      Required = True
      Size = 126
    end
    object qryRecruitingBoardMEMBER_ROLE: TWideStringField
      FieldName = 'MEMBER_ROLE'
      Size = 126
    end
    object qryRecruitingBoardNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryRecruitingBoardPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
  end
  object dsRecruitingBoard: TDataSource
    DataSet = qryRecruitingBoard
    Left = 92
    Top = 219
  end
  object OpenDialog1: TOpenDialog
    Left = 123
    Top = 123
  end
  object dsNeedInfo: TDataSource
    DataSet = qryNeedInfo
    Left = 126
    Top = 219
  end
  object qryNeedInfo: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUITING_NEED'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_RECRUITING_NEED SET'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   NEED_COUNT = :NEED_COUNT,'
      '   NOTE = :NOTE,'
      '   NGAY_NHAN_YEUCAU = :NGAY_NHAN_YEUCAU,'
      '   SONAM_KINHNGHIEM = :SONAM_KINHNGHIEM'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUITING_NEED('
      '   PLAN_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   NEED_COUNT,'
      '   NOTE,'
      '   NGAY_NHAN_YEUCAU,'
      '   SONAM_KINHNGHIEM)'
      'VALUES ('
      '   :PLAN_NO,'
      '   :POSITION_NO,'
      '   :NEED_COUNT,'
      '   :NOTE,'
      '   :NGAY_NHAN_YEUCAU,'
      '   :SONAM_KINHNGHIEM)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNeedInfoNewRecord
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , HR_RECRUITING_NEED.POSITION_NO'
      '     , NEED_COUNT'
      '     , NOTE'
      '     , TITLE_NAME'
      '     ,DEPT_NAME'
      '     , NGAY_NHAN_YEUCAU'
      '     , SONAM_KINHNGHIEM'
      'FROM HR_RECRUITING_NEED'
      'join HR_POSITION on '
      '  HR_RECRUITING_NEED.POSITION_NO=HR_POSITION.POSITION_NO'
      'join HR_DEPARTMENT on'
      '  HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'join HR_TITLE on'
      '  HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO '
      'where PLAN_NO=:PLAN_NO')
    FieldOptions = []
    Left = 126
    Top = 187
    object qryNeedInfoPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryNeedInfoPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryNeedInfoNGAY_NHAN_YEUCAU: TDateField
      FieldName = 'NGAY_NHAN_YEUCAU'
    end
    object qryNeedInfoNEED_COUNT: TSmallintField
      FieldName = 'NEED_COUNT'
      Required = True
    end
    object qryNeedInfoSONAM_KINHNGHIEM: TIBOFloatField
      FieldName = 'SONAM_KINHNGHIEM'
    end
    object qryNeedInfoNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryNeedInfoTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryNeedInfoDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      OnChange = qryNeedInfoDEPT_NAMEChange
      Size = 126
    end
  end
  object qryNeedRequest: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'POSITION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUIT_NEED_DETAIL'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO AND'
      '   EDU_LEVEL_NO = :OLD_EDU_LEVEL_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_RECRUIT_NEED_DETAIL SET'
      '   EDU_FIELD_NO = :EDU_FIELD_NO, /*PK*/'
      '   EDU_LEVEL_NO = :EDU_LEVEL_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   NOTE = :NOTE,'
      '   MANDATORY = :MANDATORY'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO AND'
      '   EDU_LEVEL_NO = :OLD_EDU_LEVEL_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUIT_NEED_DETAIL('
      '   EDU_FIELD_NO, /*PK*/'
      '   EDU_LEVEL_NO, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   NOTE,'
      '   MANDATORY)'
      'VALUES ('
      '   :EDU_FIELD_NO,'
      '   :EDU_LEVEL_NO,'
      '   :PLAN_NO,'
      '   :POSITION_NO,'
      '   :NOTE,'
      '   :MANDATORY)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryNeedRequestNewRecord
    DataSource = dsNeedInfo
    SQL.Strings = (
      'SELECT'
      '       HR_RECRUIT_NEED_DETAIL.plan_no'
      '     , HR_RECRUIT_NEED_DETAIL.position_no'
      '     , HR_RECRUIT_NEED_DETAIL.edu_field_no'
      '     , HR_EDU_FIELD.edu_field_name'
      '     , HR_RECRUIT_NEED_DETAIL.edu_level_no'
      '     , HR_FIELD_LEVEL.field_level_name '
      '     , HR_RECRUIT_NEED_DETAIL.note'
      '     , HR_RECRUIT_NEED_DETAIL.MANDATORY'
      'FROM HR_RECRUIT_NEED_DETAIL'
      'JOIN HR_FIELD_LEVEL on'
      
        '     HR_RECRUIT_NEED_DETAIL.EDU_FIELD_NO=HR_FIELD_LEVEL.EDU_FIEL' +
        'D_NO and'
      
        '     HR_RECRUIT_NEED_DETAIL.EDU_LEVEL_NO=HR_FIELD_LEVEL.FIELD_LE' +
        'VEL_NO'
      'JOIN HR_EDU_FIELD on '
      '  HR_RECRUIT_NEED_DETAIL.EDU_FIELD_NO=HR_EDU_FIELD.EDU_FIELD_NO'
      ''
      'where HR_RECRUIT_NEED_DETAIL.plan_no=:PLAN_NO and'
      '      HR_RECRUIT_NEED_DETAIL.position_no=:POSITION_NO')
    FieldOptions = []
    Left = 160
    Top = 187
    object qryNeedRequestPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryNeedRequestPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryNeedRequestEDU_FIELD_NO: TWideStringField
      FieldName = 'EDU_FIELD_NO'
      Required = True
      Size = 30
    end
    object qryNeedRequestEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      Required = True
      Size = 30
    end
    object qryNeedRequestEDU_LEVEL_NO: TWideStringField
      FieldName = 'EDU_LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryNeedRequestFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryNeedRequestNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryNeedRequestMANDATORY: TSmallintField
      FieldName = 'MANDATORY'
      Required = True
    end
  end
  object dsNeedRequest: TDataSource
    DataSet = qryNeedRequest
    Left = 160
    Top = 219
  end
  object qryDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'POSITION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUITING_NEED_DETAIL'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_RECRUITING_NEED_DETAIL SET'
      '   ITEM_NO = :ITEM_NO, /*PK*/'
      '   ITEM_TYPE = :ITEM_TYPE, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   AMOUNT = :AMOUNT'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUITING_NEED_DETAIL('
      '   ITEM_NO, /*PK*/'
      '   ITEM_TYPE, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   AMOUNT)'
      'VALUES ('
      '   :ITEM_NO,'
      '   :ITEM_TYPE,'
      '   :PLAN_NO,'
      '   :POSITION_NO,'
      '   :AMOUNT)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsNeedInfo
    SQL.Strings = (
      'SELECT hr_recruiting_need_detail.PLAN_NO'
      '     , hr_recruiting_need_detail.POSITION_NO'
      '     , hr_recruiting_need_detail.ITEM_NO'
      '     , ITEM_NAME'
      '     , hr_recruiting_need_detail.amount'
      '     , hr_recruiting_need_detail.ITEM_TYPE'
      'FROM hr_recruiting_need_detail'
      'JOIN HR_RECRUIMENT_ITEM on'
      
        '  hr_recruiting_need_detail.ITEM_NO=HR_RECRUIMENT_ITEM.ITEM_NO a' +
        'nd'
      
        '  hr_recruiting_need_detail.ITEM_TYPE=HR_RECRUIMENT_ITEM.ITEM_TY' +
        'PE'
      'where '
      '  hr_recruiting_need_detail.PLAN_NO=:PLAN_NO and'
      '  hr_recruiting_need_detail.POSITION_NO=:POSITION_NO')
    FieldOptions = []
    Left = 59
    Top = 259
    object qryDetailPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryDetailPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryDetailITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryDetailITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 3072
    end
    object qryDetailAMOUNT: TIBOFloatField
      FieldName = 'AMOUNT'
    end
    object qryDetailITEM_TYPE: TWideStringField
      FieldName = 'ITEM_TYPE'
      Required = True
      Size = 30
    end
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 59
    Top = 295
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 92
    Top = 295
    object acPhatSinh: TAction
      Caption = 'acPhatSinh'
      ImageIndex = 58
      OnExecute = acPhatSinhExecute
      OnUpdate = acPhatSinhUpdate
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    FieldOptions = []
    Left = 92
    Top = 259
  end
  object qryNeedSorce: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'POSITION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUITING_NEED_SOURCE'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO AND'
      '   SOURCE_NO = :OLD_SOURCE_NO')
    EditSQL.Strings = (
      'UPDATE HR_RECRUITING_NEED_SOURCE SET'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   SOURCE_NO = :SOURCE_NO  /*PK*/'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO AND'
      '   SOURCE_NO = :OLD_SOURCE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUITING_NEED_SOURCE('
      '   PLAN_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   SOURCE_NO) /*PK*/'
      'VALUES ('
      '   :PLAN_NO,'
      '   :POSITION_NO,'
      '   :SOURCE_NO)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsNeedInfo
    SQL.Strings = (
      'SELECT HR_RECRUITING_NEED_SOURCE.SOURCE_NO'
      '     , SOURCE_NAME'
      '     , PLAN_NO'
      '     , POSITION_NO'
      'FROM HR_RECRUITING_NEED_SOURCE'
      
        'JOIN HR_RECRUIMENT_SOURCE on HR_RECRUITING_NEED_SOURCE.SOURCE_NO' +
        '=HR_RECRUIMENT_SOURCE.SOURCE_NO'
      'WHERE PLAN_NO=:PLAN_NO'
      'AND POSITION_NO=:POSITION_NO')
    FieldOptions = []
    Left = 126
    Top = 256
    object qryNeedSorceSOURCE_NO: TWideStringField
      FieldName = 'SOURCE_NO'
      Required = True
      Size = 30
    end
    object qryNeedSorceSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Required = True
      Size = 126
    end
    object qryNeedSorcePLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryNeedSorcePOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
  end
  object dsNeedSorce: TDataSource
    DataSet = qryNeedSorce
    Left = 126
    Top = 296
  end
  object rpTuyenDung: TppReport
    AutoStop = False
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    PreviewFormSettings.WindowState = wsMaximized
    Left = 160
    Top = 259
    Version = '7.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataField = 'TAX_CODE'
        Transparent = True
        mmHeight = 7144
        mmLeft = 101600
        mmTop = 2910
        mmWidth = 5556
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object daDataModule1: TdaDataModule
    end
  end
  object dsnTuyenDung: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpTuyenDung
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 160
    Top = 295
  end
  object ppThongtin_Hopdong: TppDBPipeline
    DataSource = dsCurrentPlan
    UserName = 'KeHoachTuyenDung'
    Left = 56
    Top = 336
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsNeedInfo
    UserName = 'NhuCauTuyenDung'
    Left = 92
    Top = 336
  end
  object dsThongtinTochuc: TDataSource
    DataSet = dmMain.qryOrgInfo
    Left = 56
    Top = 368
  end
  object ppThongtinTochuc: TppDBPipeline
    DataSource = dsThongtinTochuc
    UserName = 'Thongtin_Tochuc'
    Left = 56
    Top = 400
    object ppThongtinTochucppField1: TppField
      FieldAlias = 'SUPER_ORG'
      FieldName = 'SUPER_ORG'
      FieldLength = 126
      DisplayWidth = 126
      Position = 0
    end
    object ppThongtinTochucppField2: TppField
      FieldAlias = 'ORG_NAME'
      FieldName = 'ORG_NAME'
      FieldLength = 63
      DisplayWidth = 63
      Position = 1
    end
    object ppThongtinTochucppField3: TppField
      FieldAlias = 'ORG_SHORT_NAME'
      FieldName = 'ORG_SHORT_NAME'
      FieldLength = 63
      DisplayWidth = 63
      Position = 2
    end
    object ppThongtinTochucppField4: TppField
      FieldAlias = 'ORG_LOGO'
      FieldName = 'ORG_LOGO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppThongtinTochucppField5: TppField
      FieldAlias = 'IMG_TYPE'
      FieldName = 'IMG_TYPE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object ppThongtinTochucppField6: TppField
      FieldAlias = 'PHONE_NUMBER'
      FieldName = 'PHONE_NUMBER'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppThongtinTochucppField7: TppField
      FieldAlias = 'FAX_NUMBER'
      FieldName = 'FAX_NUMBER'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object ppThongtinTochucppField8: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object ppThongtinTochucppField9: TppField
      FieldAlias = 'WEBSITE'
      FieldName = 'WEBSITE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object ppThongtinTochucppField10: TppField
      FieldAlias = 'ORG_ADDRESS'
      FieldName = 'ORG_ADDRESS'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppThongtinTochucppField11: TppField
      FieldAlias = 'ORG_TYPE'
      FieldName = 'ORG_TYPE'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppThongtinTochucppField12: TppField
      FieldAlias = 'ORG_DOMAIN'
      FieldName = 'ORG_DOMAIN'
      FieldLength = 126
      DisplayWidth = 126
      Position = 11
    end
    object ppThongtinTochucppField13: TppField
      FieldAlias = 'DIRECTOR'
      FieldName = 'DIRECTOR'
      FieldLength = 63
      DisplayWidth = 63
      Position = 12
    end
    object ppThongtinTochucppField14: TppField
      FieldAlias = 'CHIEF_ACCOUNTANT'
      FieldName = 'CHIEF_ACCOUNTANT'
      FieldLength = 63
      DisplayWidth = 63
      Position = 13
    end
    object ppThongtinTochucppField15: TppField
      FieldAlias = 'GENERAL_ACCOUNTANT'
      FieldName = 'GENERAL_ACCOUNTANT'
      FieldLength = 63
      DisplayWidth = 63
      Position = 14
    end
    object ppThongtinTochucppField16: TppField
      FieldAlias = 'ACCOUNTANT'
      FieldName = 'ACCOUNTANT'
      FieldLength = 63
      DisplayWidth = 63
      Position = 15
    end
    object ppThongtinTochucppField17: TppField
      FieldAlias = 'CASHIER'
      FieldName = 'CASHIER'
      FieldLength = 63
      DisplayWidth = 63
      Position = 16
    end
    object ppThongtinTochucppField18: TppField
      FieldAlias = 'STORE_KEEPER'
      FieldName = 'STORE_KEEPER'
      FieldLength = 63
      DisplayWidth = 63
      Position = 17
    end
    object ppThongtinTochucppField19: TppField
      FieldAlias = 'CHIEF_HR'
      FieldName = 'CHIEF_HR'
      FieldLength = 63
      DisplayWidth = 63
      Position = 18
    end
    object ppThongtinTochucppField20: TppField
      FieldAlias = 'ORG_TRADE_NAME'
      FieldName = 'ORG_TRADE_NAME'
      FieldLength = 63
      DisplayWidth = 63
      Position = 19
    end
    object ppThongtinTochucppField21: TppField
      FieldAlias = 'DEPUTY_DIRECTOR'
      FieldName = 'DEPUTY_DIRECTOR'
      FieldLength = 63
      DisplayWidth = 63
      Position = 20
    end
    object ppThongtinTochucppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'SYS_INFO_ID'
      FieldName = 'SYS_INFO_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppThongtinTochucppField23: TppField
      FieldAlias = 'BANK_NAME'
      FieldName = 'BANK_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 22
    end
    object ppThongtinTochucppField24: TppField
      FieldAlias = 'ACCOUNT_CODE'
      FieldName = 'ACCOUNT_CODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object ppThongtinTochucppField25: TppField
      FieldAlias = 'TAX_CODE'
      FieldName = 'TAX_CODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 24
    end
    object ppThongtinTochucppField26: TppField
      FieldAlias = 'ESTABLISHED_DATE'
      FieldName = 'ESTABLISHED_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 25
    end
    object ppThongtinTochucppField27: TppField
      FieldAlias = 'FOLLOWING_ORDER'
      FieldName = 'FOLLOWING_ORDER'
      FieldLength = 30
      DisplayWidth = 30
      Position = 26
    end
  end
  object qryCurrentPlan: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\0 Phat Tien\SSP-HRM PHAT TIEN\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUITMENT_PLAN'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_RECRUITMENT_PLAN SET'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   PLAN_NAME = :PLAN_NAME,'
      '   FROM_DATE = :FROM_DATE,'
      '   TO_DATE = :TO_DATE,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   RECRUITING_FORM = :RECRUITING_FORM,'
      '   NOTE = :NOTE,'
      '   CONTENT = :CONTENT,'
      '   RECRUITMENT_SOURCE = :RECRUITMENT_SOURCE'
      'WHERE'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUITMENT_PLAN('
      '   PLAN_NO, /*PK*/'
      '   PLAN_NAME,'
      '   FROM_DATE,'
      '   TO_DATE,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   RECRUITING_FORM,'
      '   NOTE,'
      '   CONTENT,'
      '   RECRUITMENT_SOURCE)'
      'VALUES ('
      '   :PLAN_NO,'
      '   :PLAN_NAME,'
      '   :FROM_DATE,'
      '   :TO_DATE,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :RECRUITING_FORM,'
      '   :NOTE,'
      '   :CONTENT,'
      '   :RECRUITMENT_SOURCE)')
    KeyLinks.Strings = (
      'HR_RECRUITMENT_PLAN.PLAN_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryRecruitmentPlanAfterPost
    OnNewRecord = qryRecruitmentPlanNewRecord
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , PLAN_NAME'
      '     , FROM_DATE'
      '     , TO_DATE'
      '     , FILE_NAME'
      '     , FILE_CONTENT'
      '     , RECRUITING_FORM'
      '     , HR_RECRUITMENT_PLAN.NOTE'
      '     , CONTENT'
      '     , RECRUITMENT_SOURCE'
      '     , SOURCE_NAME'
      'FROM HR_RECRUITMENT_PLAN'
      'LEFT JOIN HR_RECRUIMENT_SOURCE on RECRUITMENT_SOURCE=SOURCE_NO'
      'WHERE PLAN_NO=:PLAN_NO')
    FieldOptions = []
    Left = 91
    Top = 371
    object WideStringField1: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'PLAN_NAME'
      Required = True
      Size = 126
    end
    object DateField1: TDateField
      FieldName = 'FROM_DATE'
      LookupResultField = 'TO_DATE'
      Required = True
    end
    object DateField2: TDateField
      FieldName = 'TO_DATE'
    end
    object WideStringField3: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 63
    end
    object BlobField1: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object WideStringField4: TWideStringField
      FieldName = 'RECRUITING_FORM'
      Size = 126
    end
    object WideStringField5: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object BlobField2: TBlobField
      FieldName = 'CONTENT'
      Size = 8
    end
    object WideStringField6: TWideStringField
      FieldName = 'RECRUITMENT_SOURCE'
      Size = 30
    end
    object WideStringField7: TWideStringField
      FieldName = 'SOURCE_NAME'
      Size = 126
    end
  end
  object dsCurrentPlan: TDataSource
    DataSet = qryCurrentPlan
    Left = 91
    Top = 403
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsNeedSorce
    UserName = 'KenhTuyenDung'
    Left = 124
    Top = 336
  end
end
