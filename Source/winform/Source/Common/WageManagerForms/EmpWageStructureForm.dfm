inherited frmEmpWageStructure: TfrmEmpWageStructure
  Left = 188
  Top = 248
  Width = 834
  Height = 490
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 442
    Width = 826
  end
  object panelBackground: TElPanel [1]
    Left = 0
    Top = 0
    Width = 826
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    MouseCapture = False
    TabOrder = 1
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object Splitter1: TSplitter
      Left = 215
      Top = 0
      Height = 442
    end
    object pageMain: TElPageControl
      Left = 218
      Top = 0
      Width = 608
      Height = 442
      BorderWidth = 0
      Color = clBackground
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = imgIcon
      Multiline = False
      OnChanging = pageMainChanging
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
      ActivePage = tabNhanvienCocau
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
      TabOrder = 0
      ShowHint = True
      object tabNhanvienCocau: TElTabSheet
        PageControl = pageMain
        ImageIndex = 1
        TabVisible = True
        Caption = 'Ph'#226'n nh'#243'm nh'#226'n vi'#234'n'
        object Splitter2: TSplitter
          Left = 0
          Top = 249
          Width = 608
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object dxlcTop: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 608
          Height = 249
          Align = alTop
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          object gridEmpInWageGroup: TdxDBGrid
            Left = 10
            Top = 10
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
            TabOrder = 0
            DataSource = dsEmpWageGroup
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            ShowBands = True
            object gridEmpInWageGroupEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridEmpInWageGroupFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' v'#224' t'#234'n'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 125
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object gridEmpInWageGroupDEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883' - ph'#242'ng ban'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 142
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
              Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
            end
            object gridEmpInWageGroupTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 144
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridEmpInWageGroupIS_DISMISSED: TdxDBGridCheckColumn
              Caption = #272#227' ngh'#7881
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IS_DISMISSED'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = '+ARAA4w ngh+Hsk'
            end
            object gridEmpInWageGroupDISMISS_DATE: TdxDBGridDateColumn
              Caption = 'Ng'#224'y ngh'#7881
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DISMISS_DATE'
              Caption_UTF7 = 'Ng+AOA-y ngh+Hsk'
            end
          end
          object ElPopupButton1: TElPopupButton
            Left = 250
            Top = 214
            Width = 70
            Height = 25
            Cursor = crDefault
            ImageIndex = 2
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            TabOrder = 3
            Color = clBtnFace
            ParentColor = False
            Action = acChuyenxuong
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton2: TElPopupButton
            Left = 180
            Top = 214
            Width = 70
            Height = 25
            Cursor = crDefault
            ImageIndex = 1
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            TabOrder = 2
            Color = clBtnFace
            ParentColor = False
            Action = acChuyenlen
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object imOption: TdxImageEdit
            Left = 59
            Top = 215
            Width = 121
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 1
            StyleController = dmMain.StyleController
            OnChange = acViewDataExecute
            DropDownRows = 33554439
            PopupBorder = pbFrame3D
          end
          object dxlcTopGroup_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxlcTopItem1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridEmpInWageGroup
              ControlOptions.ShowBorder = False
            end
            object dxlcTopGroup1: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxlcTopItem4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'T'#249'y ch'#7885'n'
                Control = imOption
                ControlOptions.ShowBorder = False
              end
              object dxlcTopItem3: TdxLayoutItem
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxlcTopItem2: TdxLayoutItem
                Caption = 'ElPopupButton1'
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 252
          Width = 608
          Height = 166
          Align = alClient
          TabOrder = 1
          AutoContentSizes = [acsWidth, acsHeight]
          object gridEmpNoGroup: TdxDBGrid
            Left = 10
            Top = 10
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
            TabOrder = 0
            DataSource = dsEmpNoGroup
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridEmpNoGroupEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              Color = clInfoBk
              HeaderAlignment = taCenter
              Sorted = csUp
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridEmpNoGroupFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' v'#224' t'#234'n'
              HeaderAlignment = taCenter
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object gridEmpNoGroupDEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883' - ph'#242'ng ban'
              HeaderAlignment = taCenter
              Width = 142
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
              Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
            end
            object gridEmpNoGroupTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              HeaderAlignment = taCenter
              Width = 139
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridEmpNoGroupIS_DISMISSED: TdxDBGridCheckColumn
              Caption = #272#227' ngh'#7881
              HeaderAlignment = taCenter
              Width = 47
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IS_DISMISSED'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = '+ARAA4w ngh+Hsk'
            end
            object gridEmpNoGroupDISMISS_DATE: TdxDBGridDateColumn
              Caption = 'Ngh'#7881' ng'#224'y'
              HeaderAlignment = taCenter
              Visible = False
              Width = 175
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DISMISS_DATE'
              Caption_UTF7 = 'Ngh+Hsk ng+AOA-y'
            end
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
              Control = gridEmpNoGroup
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object tabTongket: TElTabSheet
        PageControl = pageMain
        ImageIndex = 2
        TabVisible = True
        Caption = 'Th'#244'ng tin t'#7893'ng h'#7907'p'
        Visible = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 608
          Height = 418
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          object dxSelectDept: TdxPopupEdit
            Left = 145
            Top = 28
            Width = 201
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxSelectDeptChange
            OnCloseUp = dxSelectDeptCloseUp
            OnInitPopup = dxSelectDeptInitPopup
          end
          object gridSummary: TdxDBGrid
            Left = 10
            Top = 98
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
            TabOrder = 4
            DataSource = dsSummary
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridSummaryEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' nh'#226'n vi'#234'n'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
            end
            object gridSummaryFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' v'#224' t'#234'n'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 135
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
            end
            object gridSummaryDEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883' - ph'#242'ng ban'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 140
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
              Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
            end
            object gridSummaryTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 134
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridSummaryIS_DISMISSED: TdxDBGridCheckColumn
              Caption = #272#227' ngh'#7881
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IS_DISMISSED'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = '+ARAA4w ngh+Hsk'
            end
            object gridSummarySTRUCTURE_NAME: TdxDBGridColumn
              Caption = 'Thu'#7897'c nh'#243'm c'#417' c'#7845'u l'#432#417'ng'
              DisableEditor = True
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 1501
              BandIndex = 0
              RowIndex = 0
              FieldName = 'STRUCTURE_NAME'
              GroupIndex = 0
              Caption_UTF7 = 'Thu+Htk-c nh+APM-m c+AaE c+HqU-u l+AbABoQ-ng'
            end
          end
          object imOptionPage2: TdxImageEdit
            Left = 145
            Top = 57
            Width = 105
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 1
            StyleController = dmMain.StyleController
            DropDownRows = 33554439
            PopupBorder = pbFrame3D
          end
          object chkViewAll: TdxCheckEdit
            Left = 325
            Top = 57
            Width = 23
            Color = clBtnFace
            ParentColor = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 2
            StyleController = dmMain.StyleController
            State = cbsChecked
          end
          object ElPopupButton3: TElPopupButton
            Left = 354
            Top = 28
            Width = 101
            Height = 25
            Cursor = crDefault
            ImageIndex = 17
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = '&Xem d'#7919' li'#7879'u'
            TabOrder = 3
            Color = clBtnFace
            ParentColor = False
            Action = acViewData
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Group4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ch'#7885'n '#273#417'n v'#7883' - ph'#242'ng ban'
                  Control = dxSelectDept
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Group2: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxlc: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Tr'#7841'ng th'#225'i'
                    Control = imOptionPage2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Caption = 'Xem c'#7845'p d'#432#7899'i'
                    Control = chkViewAll
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                Caption = 'ElPopupButton3'
                ShowCaption = False
                Control = ElPopupButton3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Item2: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridSummary
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object pageControl: TElPageControl
      Left = 0
      Top = 0
      Width = 215
      Height = 442
      BorderWidth = 0
      Color = clBackground
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = imgIcon
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
      ActivePage = tabOperationInfo
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
      ParentShowHint = False
      TabOrder = 1
      ShowHint = True
      object tabOperationInfo: TElTabSheet
        PageControl = pageControl
        ImageIndex = 0
        TabVisible = True
        Caption = 'C'#417' c'#7845'u l'#432#417'ng doanh nghi'#7879'p'
        object dxtlWageStructure: TdxDBTreeList
          Left = 0
          Top = 0
          Width = 215
          Height = 418
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'STRUCTURE_NO'
          ParentField = 'P_STRUCTURE_NO'
          Align = alClient
          TabOrder = 0
          DataSource = dsWageStructure
          HideFocusRect = True
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
          ShowHeader = False
          TreeLineColor = clMenuHighlight
          TreeLineStyle = tlSolid
          OnChangeNode = dxtlWageStructureChangeNode
          object dxtlWageStructureSTRUCTURE_NAME: TdxDBTreeListColumn
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = dxtlWageStructureSTRUCTURE_NAMECustomDrawCell
            FieldName = 'STRUCTURE_NAME'
          end
          object dxtlWageStructureEMP_COUNT: TdxDBTreeListColumn
            Caption = ' '
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMP_COUNT'
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
        Caption = 'Nh'#226'n vi'#234'n - nh'#243'm c'#417' c'#7845'u l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 576
    Top = 8
  end
  object imgIcon: TImageList
    Left = 184
    Top = 64
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040004040400040404000404
      040004040400040404003C383400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C3C3009B885C009B885C009B885C009B885C009B885C009B885C009B88
      5C009B885C009B885C00AB9567002B3339000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000343434000404
      04000404040004040400343434000000000000000000000000007CC4F40038A8
      F00000000000000000000000000000000000C8643400D0744400DC946400E4AC
      8400E0A89000DC946400D07444003C3834000000000000000000040404000404
      04000404040004040400040404000000000000000000C1C3C3006E7173000707
      0800CBCECE00948D7C00E7D4AA00E7D4AA00E7D4AA00E7D4AA00E7D4AA00E8D9
      B800F4DFB200FAE7BC0007070800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000098909000F4F4E400ECDC
      D400E0CCC000D4AC9C00C08868006C4028004C4C5000000000007CC4F40038A8
      F00000000000000000000000000000000000C8643400D8845C00E4AC8400E4AC
      8400F8F0D800E09C7400D07444003C38340000000000000000000000000000C4
      E00000D4E40000C4E00004ACCC000000000000000000C5C8C800000000000000
      00000000000000000000909AA200B3A48500FBE1AA00F8D99700F5CC74008B6B
      29007294A90007273D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4C8C400FFFFFF00F8F4F400F4F4
      E400ECD4C400D8B8A000C4947800B0704400C8D0D000B0E0F8007CC4F40038A8
      F0001498F0001498F000000000000000000004040400D47C5000E4AC8400F8E0
      BC00F8E0BC00E09C7400D0744400000000000000000000000000000000000000
      000000D4E40000BCD800089CC40000000000EAB03600E4BF7400E8D9B800F9ED
      D400C1C3C300000000007294A900BBB4A800F9EDD400F9E3B400FFE19A00483A
      200069CCFF000A598F0057585600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECE4E400F8F4F400F8F4F400ECE4
      E400ECD4C400D8B8A000C4947800B8B8B800FFFFFF00B0E0F8004C4C50003434
      34001498F0001498F0000C70B800000000000000000004040400040404006CBC
      F00064A4CC009C48240000000000000000000000000000000000000000000404
      040000D4E40004ACCC00089CC40000000000F4C25700F5CC7400FAEAC500FFFD
      F300C1C3C300000000005C86A100BEBEBC00FFFDF300FFF6D90084868700C4EF
      FF0050A4DC0011A1FF001094EC00454546000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010080000744C34008C78
      6800DCC4B400D0A89000C0886800000000000000000000000000000000000000
      000068A0C8001498F0001498F00000000000040404000404040064A4CC006CBC
      F0006CBCF00070B8E000000000000000000000000000000000000404040004E4
      EC0000D4E400040404000404040000000000F7C76100EAB03600F4CF8000FFE1
      9A00C1C3C3000000000043799D00C1C3C300FFFFFE00C8C3B900575856004F51
      4E00C0A55F00415E710011A1FF00070708000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010080000E8AC2C00ECC4
      7800846C5C0080503400906040003434340000000000000000000000000030A0
      E0001498F0001498F000000000000000000004040400040404006CBCF0006CBC
      F0006CBCF0006CBCF0000404040000000000000000000404040004F4F40004F4
      F40000D4E400040404000000000000000000BBB4A800B3AA9700AB956700AD84
      2B00C1C3C300A7ABAC0005297D002B56C2002E56B9002E56B9002E56B9004F51
      4E004899CE0011A1FF001094EC00A7ABAC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C402800E8A00C00E8A4
      1C00E8A41C00E8AC2C00A89070006C40280000000000B0E0F8007CC4F40038A8
      F0000878C80050403800000000000000000004040400040404006CBCF0006CBC
      F0006CBCF0006CBCF0000404040000000000000000000404040004F4F40004F4
      F40004E4EC000098A40004040400000000000000000000000000000000000000
      0000000000000000000000000000A7ABAC00183651000B53F60066666400BEE8
      FF0043799D008486870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090705C00E8AC2C00E8B4
      3C00E4B44C00E4B44C00E4B44C0000000000FFFFFF00B0E0F80068A0C8000000
      00000000000000000000000000000000000004040400141414003038380070B8
      E0006CBCF0006CBCF0000404040068686800189098000000000004F4F40004F4
      F4000404040000D4E40004E4EC0004040400FFC33E00FED77E00FFF6D900FFFF
      FE00C1C3C3000000000000000000000000000000000000000000BEBEBC00BEE8
      FF002B3339002B9CE80011A1FF00797977000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000098786800ECC05C00F0C4
      6C00F0C46C00F0CC8400F0C46C0000000000FFFFFF00B0E0F800000000000000
      00001498F0001498F0000000000000000000585858001414140058585800B0B0
      B000C0C0C000040404006868680044DCF80034E4F80020D8E800040404000404
      0400000000000000000004F4F40004040400F7C76100F5CC7400FAE7BC00FFF6
      D900C1C3C300000000000000000000000000000000000000000093938E00A7AB
      AC0062C0FA001094EC004F514E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C40280098786800F0C46C00F0D4
      9400F0DCA400F0DCA400F0DCA400D0B87800FFFFFF00B0E0F8007CC4F40038A8
      F0001498F0001498F00000000000000000000000000080808000040404000404
      0400040404006868680044ACC80050D8F80034E4F80004040400000000000404
      0400041C240000B8B80004F4F40004040400F7C76100EAAA2000F7C76100FED7
      7E00C1C3C3000000000000000000000000000000000000000000000000008486
      870069CCFF000B4E7D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010080000E0B87800F0D49400F0DC
      A400F8E0C000F8E8C400F8E0C000F8E0B400B89870007C8080007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000404
      0400686868004474940064C8F00054D0F80004040400000000000404040024E8
      F80014F0F8000404040068686800000000008486870082817A00817C6F007C75
      6300C5C8C800000000000000000000000000000000000000000000000000CED1
      D100C5C8C800CBCECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C402800E0B87800F0DCA400F8E8
      C400F4F4E400F4F4E400F4F4E400F8ECD400CC9C84007C8080007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000404
      04004090C0005CACE4006CBCF00004040400000000000000000044DCF80030C8
      D800686868000404040004040400040404007C756300817C6F00817C6F008281
      7A00C5C8C8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACA4A000B87C5C00D0A88000F8E0
      C000F8F4F400F8F4F400F8F4F400F4F4E400C494780000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400348CCC004CA4D8000404040000000000000000000000000044ACC80044DC
      F8000404040028B8C80034E4F80004040400F4C25700F4CF8000F9EDD400FFFF
      FE00C1C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001008000084644C00F4F4E400B8B0
      A80084644C00A45C3400B0704400CC9C8400B87C5C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04002888C0004498D0004CA4D8001414140000000000000000006868680044AC
      C80050D8F80038A0B8006868680000000000F7C76100F4C25700F7DDA400FFEE
      BD00C1C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C402800100800006C402800B8A898008C7C740000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400040404000404040058585800686868000000000000000000000000000000
      000064C8F000040404000000000000000000FFEAAF00F5CC7400FDCD6800FCC3
      4700C1C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF01FFF0000000C18700C180010000
      800700E1BC030000000301F104010000000183E104000000003103C104000000
      80C101830000000080030181FE030000801F004007C000008001000C07C10000
      0003802007E300000007E04107E300000007E0C007FF00000007E1C007FF0000
      007FE0C107FF0000F07FE0F307FF000000000000000000000000000000000000
      000000000000}
  end
  object qryWageStructure: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06.gdb'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'STRUCTURE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT STRUCTURE_NO'
      '     , STRUCTURE_NAME '
      '     , (select count(hr_emp_wage_group.employee_no)'
      '        from hr_emp_wage_group'
      
        '        where hr_emp_wage_group.structure_no=HR_WAGE_STRUCTURE.s' +
        'tructure_no)'
      '        EMP_COUNT '
      '     , P_STRUCTURE_NO'
      '     , ITEM_HEIGHT'
      '     , ITEM_WIDTH'
      '     , ITEM_SHAPE'
      '     , ITEM_COLOR'
      '     , ITEM_ALIGN'
      'FROM HR_WAGE_STRUCTURE   ')
    FieldOptions = []
    Left = 88
    Top = 144
    object qryWageStructureSTRUCTURE_NO: TWideStringField
      FieldName = 'STRUCTURE_NO'
      Required = True
      Size = 30
    end
    object qryWageStructureSTRUCTURE_NAME: TWideStringField
      FieldName = 'STRUCTURE_NAME'
      Size = 126
    end
    object qryWageStructureEMP_COUNT: TIntegerField
      FieldName = 'EMP_COUNT'
      ReadOnly = True
    end
    object qryWageStructureP_STRUCTURE_NO: TWideStringField
      FieldName = 'P_STRUCTURE_NO'
      Size = 30
    end
    object qryWageStructureITEM_HEIGHT: TIntegerField
      FieldName = 'ITEM_HEIGHT'
    end
    object qryWageStructureITEM_WIDTH: TIntegerField
      FieldName = 'ITEM_WIDTH'
    end
    object qryWageStructureITEM_SHAPE: TSmallintField
      FieldName = 'ITEM_SHAPE'
    end
    object qryWageStructureITEM_COLOR: TIntegerField
      FieldName = 'ITEM_COLOR'
    end
    object qryWageStructureITEM_ALIGN: TSmallintField
      FieldName = 'ITEM_ALIGN'
    end
  end
  object dsWageStructure: TDataSource
    DataSet = qryWageStructure
    Left = 88
    Top = 192
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 336
    Top = 192
    object acChuyenlen: TAction
      Caption = 'acChuyenlen'
      ImageIndex = 1
      OnExecute = acChuyenlenExecute
      OnUpdate = acChuyenlenUpdate
    end
    object acChuyenxuong: TAction
      Caption = 'acChuyenxuong'
      ImageIndex = 2
      OnExecute = acChuyenxuongExecute
      OnUpdate = acChuyenxuongUpdate
    end
    object acViewData: TAction
      Caption = 'acViewData'
      ImageIndex = 17
      OnExecute = acViewDataExecute
    end
  end
  object dsEmpWageGroup: TDataSource
    DataSet = qryEmpWageGroup
    Left = 240
    Top = 208
  end
  object qryEmpNoGroup: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'is_dismissed'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06.gdb'
    GeneratorLinks.Strings = (
      'STRUCTURE_NO=GEN_HR_WAGE_STRUCTURE_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '   employee_no,'
      '   full_name,'
      '   dept_name,'
      '   title_name,'
      '   is_dismissed,'
      '   dismiss_date'
      'from hr_wage_emp_nogroup(:is_dismissed)')
    FieldOptions = []
    Left = 240
    Top = 288
    object qryEmpNoGroupEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpNoGroupFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 99
    end
    object qryEmpNoGroupDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryEmpNoGroupTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpNoGroupIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryEmpNoGroupDISMISS_DATE: TDateField
      FieldName = 'DISMISS_DATE'
    end
  end
  object dsEmpNoGroup: TDataSource
    DataSet = qryEmpNoGroup
    Left = 240
    Top = 320
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06.gdb'
    GeneratorLinks.Strings = (
      'STRUCTURE_NO=GEN_HR_WAGE_STRUCTURE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'employee_no')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageStructure
    FieldOptions = []
    Left = 304
    Top = 144
  end
  object qrySummary: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'user_name'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'in_dept_no'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'view_all'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'is_dismissed'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06.gdb'
    GeneratorLinks.Strings = (
      'STRUCTURE_NO=GEN_HR_WAGE_STRUCTURE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'employee_no')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageStructure
    SQL.Strings = (
      'select'
      '   employee_no,'
      '   full_name,'
      '   dept_name,'
      '   title_name,'
      '   is_dismissed,'
      '   structure_name'
      
        'from hr_wage_emp_group_report(:user_name,:in_dept_no,:view_all,:' +
        'is_dismissed)')
    FieldOptions = []
    Left = 360
    Top = 120
    object qrySummaryEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qrySummaryFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qrySummaryDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qrySummaryTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qrySummaryIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qrySummarySTRUCTURE_NAME: TWideStringField
      FieldName = 'STRUCTURE_NAME'
      Size = 126
    end
  end
  object dsSummary: TDataSource
    DataSet = qrySummary
    Left = 360
    Top = 152
  end
  object qryEmpWageGroup: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'structure_no'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'is_dismissed'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_25_12_06.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageStructure
    SQL.Strings = (
      'select'
      '   employee_no,'
      '   full_name,'
      '   dept_name,'
      '   title_name,'
      '   is_dismissed,'
      '   dismiss_date'
      'from hr_wage_emp_group(:structure_no,:is_dismissed)')
    FieldOptions = []
    Left = 242
    Top = 168
    object qryEmpWageGroupEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryEmpWageGroupFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryEmpWageGroupDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryEmpWageGroupTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpWageGroupIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryEmpWageGroupDISMISS_DATE: TDateField
      FieldName = 'DISMISS_DATE'
    end
  end
end
