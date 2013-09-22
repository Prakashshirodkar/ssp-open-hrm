inherited frmInterview: TfrmInterview
  Left = 40
  Top = 114
  Width = 960
  Height = 618
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 0
    Width = 952
    Height = 584
    Align = alClient
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 952
    Height = 584
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object panelMain: TElPanel
      Left = 14
      Top = 224
      Width = 666
      Height = 44
      Align = alNone
      BevelOuter = bvNone
      UseXPThemes = False
      Color = 15466238
      MouseCapture = False
      TabOrder = 6
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object pageMain: TElPageControl
        Left = 0
        Top = 22
        Width = 666
        Height = 22
        BorderWidth = 0
        DrawFocus = False
        Flat = True
        HotTrack = True
        Multiline = False
        OnChange = pageMainChange
        RaggedRight = False
        ScrollOpposite = False
        ShowBorder = False
        Style = etsAngledTabs
        TabPosition = etpBottom
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clBlue
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        FlatTabBorderColor = clBtnShadow
        DraggablePages = False
        ActiveTabFont.Charset = DEFAULT_CHARSET
        ActiveTabFont.Color = clWindowText
        ActiveTabFont.Height = -11
        ActiveTabFont.Name = 'MS Sans Serif'
        ActiveTabFont.Style = []
        TabCursor = crDefault
        Align = alBottom
        ParentColor = False
        TabOrder = 0
      end
      object gridCheckList: TdxDBGrid
        Left = 0
        Top = 0
        Width = 593
        Height = 22
        Bands = <
          item
            Caption = 'Th'#244'ng tin t'#7893'ng h'#7907'p'
            Width = 567
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'EMPLOYEE_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 1
        OnEnter = gridCheckListEnter
        DataSource = dsCandidatorList
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        ShowBands = True
        OnCustomDrawCell = gridCheckListCustomDrawCell
        object gridCheckListIS_CADIDATE: TdxDBGridCheckColumn
          Alignment = taCenter
          Caption = 'Nh'#226'n vi'#234'n'
          Color = 11777535
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IS_CANDIDATE'
          ValueChecked = '0'
          ValueUnchecked = '1'
          Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
        end
        object gridCheckListEMPLOYEE_NO: TdxDBGridColumn
          Caption = 'M'#227' '#7913'ng vi'#234'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_NO'
          Caption_UTF7 = 'M+AOM +Huk-ng vi+AOo-n'
        end
        object gridCheckListFULL_NAME: TdxDBGridColumn
          Caption = 'H'#7885' v'#224' t'#234'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 148
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FULL_NAME'
          Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
        end
        object gridCheckListGENDER: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Gi'#7899'i t'#237'nh'
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 16
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GENDER'
          Descriptions.WideStrings = (
            'N'#7919
            'Nam')
          Images = EmpInfoDM.imglGender
          ImageIndexes.WideStrings = (
            '0'
            '1')
          ShowDescription = True
          Values.WideStrings = (
            '0'
            '1')
          Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
        end
        object gridCheckListBIRTH_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y sinh'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BIRTH_DATE'
          Caption_UTF7 = 'Ng+AOA-y sinh'
        end
        object gridCheckListCONTACT_PHONE: TdxDBGridColumn
          Caption = #272'i'#7879'n tho'#7841'i'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 154
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTACT_PHONE'
          Caption_UTF7 = '+ARA-i+Hsc-n tho+HqE-i'
        end
        object gridCheckListEMAIL: TdxDBGridHyperLinkColumn
          Caption = 'Email'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMAIL'
        end
        object gridCheckListCONTACT_ADDR: TdxDBGridColumn
          Caption = #272#7883'a ch'#7881' li'#234'n l'#7841'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 134
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTACT_ADDR'
          Caption_UTF7 = '+ARAeyw-a ch+Hsk li+AOo-n l+HqE-c'
        end
        object gridCheckListCHECK_MARK: TdxDBGridCalcColumn
          Caption = #272'i'#7875'm s'#7889
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CHECK_MARK'
          Caption_UTF7 = '+ARA-i+HsM-m s+HtE'
        end
        object gridCheckListSTATE: TdxDBGridCheckColumn
          Alignment = taLeftJustify
          Caption = #272#7841't?'
          HeaderAlignment = taCenter
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STATE'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = '+ARAeoQ-t?'
        end
        object gridCheckListNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
        object gridCheckListTHOIGIAN_HEN_PV: TdxDBGridTimeColumn
          Alignment = taCenter
          Caption = 'Th'#7901'i gian h'#7865'n PV'
          HeaderAlignment = taCenter
          Visible = False
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'THOIGIAN_HEN_PV'
          TimeEditFormat = tfHourMin
          Caption_UTF7 = 'Th+Ht0-i gian h+Hrk-n PV'
        end
        object gridCheckListDA_PHONGVAN: TdxDBGridCheckColumn
          Caption = #272#227' PV'
          HeaderAlignment = taCenter
          MinWidth = 20
          Visible = False
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DA_PHONGVAN'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = '+ARAA4w PV'
        end
      end
      object ElSplitter2: TElSplitter
        Left = 593
        Top = 0
        Width = 5
        Height = 22
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridCheckList
        ControlBottomRight = gridDetail
        AutoHide = False
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object gridDetail: TdxDBGrid
        Left = 598
        Top = 0
        Width = 68
        Height = 22
        Bands = <
          item
            Caption = #272'i'#7875'm chi ti'#7871't'
            Fixed = bfLeft
            Width = 127
          end
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ITEM_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 3
        DataSource = dsDetail
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        ShowBands = True
        object gridDetailITEM_NAME: TdxDBGridColumn
          Caption = 'Ti'#234'u ch'#237
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 127
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Ti+AOo-u ch+AO0'
        end
        object gridDetailITEM_RATE: TdxDBGridColumn
          Caption = 'H'#7879' s'#7889
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 56
          BandIndex = 1
          RowIndex = 0
          FieldName = 'ITEM_RATE'
          Caption_UTF7 = 'H+Hsc s+HtE'
        end
        object gridDetailMARK: TdxDBGridCalcColumn
          Caption = #272'i'#7875'm'
          HeaderAlignment = taCenter
          Width = 57
          BandIndex = 1
          RowIndex = 0
          FieldName = 'MARK'
          Caption_UTF7 = '+ARA-i+HsM-m'
        end
        object gridDetailNOTES: TdxDBGridColumn
          Caption = 'Nh'#7853'n x'#233't'
          HeaderAlignment = taCenter
          Width = 107
          BandIndex = 1
          RowIndex = 0
          FieldName = 'NOTES'
          Caption_UTF7 = 'Nh+Hq0-n x+AOk-t'
        end
      end
    end
    inline frameToolbar1: TframeToolbar
      Left = 2
      Top = 536
      Width = 807
      Height = 46
      Align = alClient
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 807
        inherited btnClose: TElPopupButton
          Left = 1105
        end
        inherited btnHelp: TElPopupButton
          Left = 975
        end
        inherited btnChoose: TElPopupButton
          Left = 1045
        end
        inherited btnDesign: TElPopupButton
          Left = 638
          Width = 67
          Action = frameToolbar1.acPrint
        end
        inherited btnPreview: TElPopupButton
          Left = 558
          Width = 80
          Action = frameToolbar1.acDesign
        end
        inherited btnPrint: TElPopupButton
          Left = 478
          Width = 80
          Action = frameToolbar1.acPreview
        end
        inherited btnSendMail: TElPopupButton
          Width = 26
        end
        inherited btnGenerate: TElPopupButton
          Left = 870
          Width = 100
          Hint = ''
          ImageIndex = 58
          UseImageList = True
          Images = dmMain.imgAction
          Caption = '&L'#7853'p danh s'#225'ch'
          Action = acCreateCheckList
        end
        inherited btnRelation: TElPopupButton
          Left = 790
          Width = 80
          ImageIndex = 43
          UseImageList = True
          Images = dmMain.imgAction
          ShowText = True
          Caption = 'C'#7853'p nh'#7853't'
          Action = acCreateDetail
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 710
          Width = 80
          Hint = 'T'#237'nh '#273'i'#7875'm t'#7915' c'#225'c chi ti'#7871't'
          ImageIndex = 8
          UseImageList = True
          Images = dmMain.imgAction
          ShowText = True
          Caption = 'T'#237'nh '#273'i'#7875'm'
          Action = acTinhDiem
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
              inherited dxlctrlViewLog: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item9: TdxLayoutItem
                Visible = True
              end
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
      inherited ActionList1: TActionList
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
    object panelTop: TPanel
      Left = 14
      Top = 28
      Width = 699
      Height = 140
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 9
      object gridRecruitingPlan: TdxDBGrid
        Left = 0
        Top = 0
        Width = 312
        Height = 140
        Bands = <
          item
            Caption = 'K'#7871' ho'#7841'ch tuy'#7875'n d'#7909'ng'
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
        ShowBands = True
        OnChangeNode = gridRecruitingPlanChangeNode
        object gridRecruitingPlanPLAN_NO: TdxDBGridColumn
          Caption = 'M'#227' s'#7889
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NO'
          Caption_UTF7 = 'M+AOM s+HtE'
        end
        object gridRecruitingPlanPLAN_NAME: TdxDBGridColumn
          Caption = 'K'#7871' ho'#7841'ch tuy'#7875'n d'#7909'ng'
          HeaderAlignment = taCenter
          Width = 132
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NAME'
          Caption_UTF7 = 'K+Hr8 ho+HqE-ch tuy+HsM-n d+HuU-ng'
        end
        object gridRecruitingPlanFROM_DATE: TdxDBGridDateColumn
          Caption = 'T'#7915' ng'#224'y'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FROM_DATE'
          Caption_UTF7 = 'T+Hus ng+AOA-y'
        end
        object gridRecruitingPlanTO_DATE: TdxDBGridDateColumn
          Caption = #273#7871'n ng'#224'y'
          HeaderAlignment = taCenter
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TO_DATE'
          Caption_UTF7 = '+AREevw-n ng+AOA-y'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 312
        Top = 0
        Width = 5
        Height = 140
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridRecruitingPlan
        ControlBottomRight = gridTestList
        AutoHide = False
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object gridTestList: TdxDBGrid
        Left = 317
        Top = 0
        Width = 382
        Height = 140
        Bands = <
          item
            Caption = 'Danh m'#7909'c c'#225'c '#273#7907't ph'#7887'ng v'#7845'n tuy'#7875'n d'#7909'ng'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'INTERVIEW_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        OnEnter = gridTestListEnter
        DataSource = dsInterviewList
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        OnChangeNode = gridTestListChangeNode
        object gridTestListINTERVIEW_NO: TdxDBGridColumn
          Caption = 'M'#227' s'#7889' '
          HeaderAlignment = taCenter
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'INTERVIEW_NO'
          Caption_UTF7 = 'M+AOM s+HtE '
        end
        object gridTestListINTERVIEW_NAME: TdxDBGridColumn
          Caption = #272#7907't ph'#7887'ng v'#7845'n tuy'#7875'n d'#7909'ng '
          HeaderAlignment = taCenter
          Width = 167
          BandIndex = 0
          RowIndex = 0
          FieldName = 'INTERVIEW_NAME'
          Caption_UTF7 = '+ARAe4w-t ph+Hs8-ng v+HqU-n tuy+HsM-n d+HuU-ng '
        end
        object gridTestListINTERVIEW_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y '
          HeaderAlignment = taCenter
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'INTERVIEW_DATE'
          Caption_UTF7 = 'Ng+AOA-y '
        end
        object gridTestListNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
    end
    object dxFontColorCandidator: TdxButtonEdit
      Left = 109
      Top = 201
      Width = 60
      Color = 4194304
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxFontColorCandidatorButtonClick
      ExistButtons = True
    end
    object dxFontColorEmployee: TdxButtonEdit
      Left = 246
      Top = 201
      Width = 60
      Color = clBlue
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxFontColorCandidatorButtonClick
      ExistButtons = True
    end
    object dxColorValidCandidator: TdxButtonEdit
      Left = 370
      Top = 201
      Width = 60
      Color = 13426175
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxFontColorCandidatorButtonClick
      ExistButtons = True
    end
    object dxColorInvalidCandidator: TdxButtonEdit
      Left = 521
      Top = 201
      Width = 60
      Color = 13948116
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxFontColorCandidatorButtonClick
      ExistButtons = True
    end
    object chkAutoCalc: TdxCheckEdit
      Left = 668
      Top = 201
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      StyleController = dmMain.StyleController
    end
    object dxTinhDiem: TdxImageEdit
      Left = 763
      Top = 201
      Width = 210
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnCloseUp = dxTinhDiemCloseUp
      DropDownRows = 16777223
    end
    object dxSelectFile: TdxPopupEdit
      Left = 716
      Top = 513
      Width = 234
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnChange = dxSelectFileChange
      OnCloseUp = dxSelectFileCloseUp
      OnInitPopup = dxSelectFileInitPopup
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item13: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'K'#7871' ho'#7841'ch ph'#7887'ng v'#7845'n tuy'#7875'n d'#7909'ng'
        object dxLayoutControl1Item14: TdxLayoutItem
          Caption = 'Panel1'
          ShowCaption = False
          Control = panelTop
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group5: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'K'#7870'T QU'#7842' PH'#7886'NG V'#7844'N TUY'#7874'N D'#7908'NG'
        object dxLayoutControl1Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = #7912'ng vi'#234'n b'#234'n ngo'#224'i'
            Control = dxFontColorCandidator
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = #7912'ng vi'#234'n n'#7897'i b'#7897
            Control = dxFontColorEmployee
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = #7912'ng vi'#234'n '#273#7841't'
            Control = dxColorValidCandidator
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = #7912'ng vi'#234'n ch'#432'a '#273#7841't'
            Control = dxColorInvalidCandidator
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'C'#7853'p nh'#7853't t'#7921' '#273#7897'ng'
            Control = chkAutoCalc
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'C'#225'ch t'#237'nh '#273'i'#7875'm'
            Control = dxTinhDiem
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'ElPanel1'
          ShowCaption = False
          Control = panelMain
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item8: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'Ch'#7885'n m'#7851'u in'
        Control = dxSelectFile
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
        Caption = 'Qu'#7843'n l'#253' k'#7871't qu'#7843' ph'#7887'ng v'#7845'n tuy'#7875'n d'#7909'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 691
  end
  object qryRecruitmentPlan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_RECRUITMENT_PLAN.PLAN_NO')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , PLAN_NAME'
      '     , FROM_DATE'
      '     , TO_DATE'
      'FROM HR_RECRUITMENT_PLAN'
      'order by FROM_DATE desc')
    FieldOptions = []
    Left = 91
    Top = 115
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
      Required = True
    end
    object qryRecruitmentPlanTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
  end
  object dsRecruitmentPlan: TDataSource
    DataSet = qryRecruitmentPlan
    Left = 91
    Top = 147
  end
  object qryNeedInfo: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'SELECT '
      '       HR_RECRUITING_NEED.POSITION_NO'
      '     , DEPT_NAME'
      '     , TITLE_NAME'
      'FROM HR_RECRUITING_NEED'
      'JOIN HR_POSITION'
      ' on HR_RECRUITING_NEED.POSITION_NO=HR_POSITION.POSITION_NO'
      'JOIN HR_DEPARTMENT on '
      '  HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO '
      'JOIN HR_TITLE on '
      '  HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      'where PLAN_NO=:PLAN_NO')
    FieldOptions = []
    Left = 91
    Top = 195
    object qryNeedInfoPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryNeedInfoDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryNeedInfoTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
  end
  object dsNeedInfo: TDataSource
    DataSet = qryNeedInfo
    Left = 91
    Top = 227
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 216
    Top = 160
    object acInitTabInterface: TAction
      Caption = 'acInitTabInterface'
      OnExecute = acInitTabInterfaceExecute
    end
    object acCreateCheckList: TAction
      Caption = 'acCreateCheckList'
      ImageIndex = 58
      OnExecute = acCreateCheckListExecute
      OnUpdate = acCreateCheckListUpdate
    end
    object acCheckListRefresh: TAction
      Caption = 'acCheckListRefresh'
      OnExecute = acCheckListRefreshExecute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 1
      DataSource = dsCandidatorList
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 0
      DataSource = dsCandidatorList
    end
    object acCreateDetail: TAction
      Caption = 'acCreateDetail'
      ImageIndex = 43
      OnExecute = acCreateDetailExecute
    end
    object acTinhDiem: TAction
      Caption = 'acTinhDiem'
      ImageIndex = 8
      OnExecute = acTinhDiemExecute
    end
  end
  object ImageList1: TImageList
    Left = 120
    Top = 200
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00F4F4F400F5F5F500FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFDFFFBFBFBFFECECECFFE5E5E5FF0000000000000000000000000000
      000096969800354D4200438F4D004FAD57004EA757003F7149004D505700EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000BABABC006F6F8900707089007070890070708900707089007F7F9100FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFEDEDEDFFE1E1
      E1FFD2D2D2FF9B9B9BFF3B3A3AFFF1F1F1FF0000000000000000F7F7F7004D6A
      510055D162006AE176007AF085007BF286007BF1860078EE830067DF720043A6
      5100C5C5C500000000000000000000000000000000000000000000000000BBBB
      BB003855EE003A62EA003F6AEF004471F3004675F5004472F300406CF1006061
      9400FCFCFC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE4BF00EBDDAE00E6D49A00D6B9
      5A00D6B95A00D6B95A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4FFD8D8D8FFD2D2D2FFABAB
      ABFF788598FF6E9BE1FFB1BCD0FF0000000000000000FCFCFC003A7A430053D0
      61005FDA6D006DE5790079F084007AF085007AF0850079F085006DE579005FDA
      6D004FD15F00C2C2C20000000000000000000000000000000000BBBBBB00334E
      EE003558E7003A60EB003F67F000426DF300436EF400426DF3003F67F0003C64
      F0005D5D9100FCFCFC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E9CC00EFE4BF00EBDDAE00E2CE
      8B00D6B95A00D6B95A0000000000000000000000000000000000000000000000
      00000000000000000000FAFAFAFFE6E6E6FFDEDEDEFFDADADAFFA7A7A8FF6AA4
      EBFF81A6DFFFD8E8FFFFFCFCFCFF00000000000000005E72610041C251004DCA
      5C005AD5670066DF72006BE7780078EE830077EE830071E87C0066DF73005AD5
      68004DCA5C0039BA4A00F3F3F3000000000000000000BDBDBD002B42E7002E4C
      E0003356E8002643D3003A60EB003C64EE003D65EF003B65F2002D4EDC00375A
      E8003458E9005C5C9000FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000F6F0DC00F2E9CC00EFE4BF00E6D4
      9A00E2CE8B00D6B95A0000000000000000000000000000000000000000000000
      000000000000F2F2F2FFEAEAEAFFE7E7E7FFE2E2E2FFADADAEFF007EDEFF1EB0
      FEFFEDF1FAFFBAC3CEFF0000000000000000E0E0E0002DB43F003ABA4A0047C4
      560052CD60004CCF5900F2F5F10050CD5B0069E2760064DE72005CD76A0052CF
      610047C456003BBB4B0037564B0000000000E6E6E6002335DF00263FD8002A46
      DE008A8CCB00FFFFFE00203DD100375BE900355CED00ACACD600F7F5F7001F3E
      D6002F4EE1002D4AE10073749A00000000000000000000000000000000000000
      0000000000000000000000000000021421000000000000000000F2E9CC00EBDD
      AE00E6D49A00E2CE8B0000000000000000000000000000000000000000000000
      000000000000F4F4F4FFEDEDEDFFEBEBEBFFB9B9BAFF007DDDFF00A9FFFF24D5
      FFFF2FB8F3FF00000000000000000000000088918A0027AB390032B444003DBD
      4D0037BD4600F5F8F400FFFFFF00FFFFFF0045C2500058D3660051CD600048C6
      57003EBD4E0033B4440025A6360000000000D3D3D5001F34D500233AD500253F
      D900FFFFFF00FFFFFF00FFFEFC001835CE00A09FD000FFFFFF00FFFFFF008D9E
      EF002B47DD002841D9003E45A800000000000000000000000000000000000000
      0000040C1200149BF700149BF700149BF700149BF70000000000F6F0DC00EFE4
      BF00EBDDAE00E6D49A0000000000000000000000000000000000000000000000
      000000000000F6F6F6FFF8F8F8FFCFCFD0FF007ADBFF00AAFFFF24D4FFFF37BC
      F4FF00000000000000000000000000000000487F4F0024A4340029AC3B0023AC
      3400F6F9F600FFFFFF00FFFFFF00FFFFFF00FFFFFF0037B7430045C354003DBD
      4D0034B5450029AC3B0025AC3600FAFAFA00D3D3D5001C2FD2002034D200233A
      D500253FD800FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF008F9EED002743
      DB00273FD900233AD5003C41A600000000000000000000000000000000000000
      0000000000000000000028A3F700149BF700149BF70000000000F9F4E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D5D5FF0379D8FF00AAFFFF26D3FFFF37BCF4FF0000
      000000000000000000000000000000000000387D3F001F9D2E0021A33200E4F3
      E500FFFFFF00FFFFFF002BB63D00EDF9EF00FFFFFF00FFFFFF0029AC380031B2
      420029AC3A0022A4330026A73500F5F5F500D3D3D5001B2CCF001A2BCD001F33
      D1002238D4002139D600FFFFFF00FFFFFF00FFFFFF00838FE200243DD800243C
      D6002137D4001D31D1003A3EA400000000000000000000000000000000000000
      00000000000064BEF60043AFF70024A2F700149BF70000000000F9F6E9000000
      0000A18C4700A18C470000000000000000000000000000000000000000000000
      000000000000D5D5D5FF0378D7FF00AAFFFF25D0FFFF3CC3F5FF000000000000
      000000000000000000000000000000000000417E480044AA500037A84500179E
      2800E6F5E8001FA831002EB0400024AE3600ECF8EE00FFFFFF00FFFFFF001CA1
      2D0032A9410045AD510030A73E00FDFDFD00D3D3D4003C47D4003C49D2002F3F
      D1001F33D1009E9FD900FFFFFF00FFFFFF00FFFFFF00FFFEFD000D20C7002A3D
      D3003B4BD600414FD5003A3EA30000000000000000004DA64D00439143000000
      00007CBFE70078C6F600149BF70000000000149BF70000000000FBF8EF000000
      0000A18C47000000000000000000000000000000000000000000000000000000
      0000D5D5D5FF0376D6FF00AAFFFF26CFFFFF3EC4F5FF00000000000000000000
      000000000000000000000000000000000000829385004EAA570051AE5B0054B3
      5F0051B45D0050B65D0047B4560045B4530039AF4900EFF9F100FFFFFF00FFFF
      FF0046AD520051AF5B0022992D0000000000D2D2D3004B54D5004A53D3004B57
      D5009595DE00FFFFFF00FFFFFF00AEB5EE00FFFFFF00FFFFFF00FBFAFC003642
      D0004E5AD7004D58D5003A3DA2000000000000000000489C48000000000078C6
      F60094D2F80078C6F60000000000739973000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D5
      D5FF0374D5FF00AAFFFF22CAFFFF46CBF6FF0000000000000000000000000000
      00000000000000000000000000000000000000000000309C3A005EB0660060B3
      680061B66A0062B86C0063BA6D0063BB6E0063BB6E0059B66400F1F8F200FFFF
      FF007FC2860063B36B002357440000000000EDEDED005C61DB00575DD300585F
      D500FFFFFF00FFFFFF00B3B8ED005C67DA00616BDB00FFFFFF00FFFFFF00A0A6
      E8005B63D7006A72DA005555AA0000000000000000000000000078C6F60078C6
      F60078C6F6000000000082BF880096CB9600A6D3A600B6DBB600B6DBB6000000
      0000000000000000000000000000000000000000000000000000D2D2D2FF0373
      D3FF00AAFFFF22C9FFFF49CCF6FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C7A540081BE85006CB5
      72006FB976006FBA770070BB780071BC780071BC780070BB780068B6700088C5
      8E0074B97A002E9A3700000000000000000000000000BFBFCD00777BDE00686D
      D700646AD700BFC1EF006A70DA006C73DA006C73DA006F76DB00AAADEA00696F
      D900868BDF003536B7000000000000000000000000004DA64D000000000078C6
      F6000000000065AE83008EC78E00A6D3A600BCDDBC00CDE6CD00D1E8D1000000
      00000000000000000000000000000000000000000000C9C9C9FF015BA7FF00AA
      FFFF27C3FBFF53D6F9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000147D1C00ABD3
      AF0083BF88007BBB80007DBE83007EBE84007EBE84007CBD82007CBC81009BCB
      9F005AAB6000C9CFCA0000000000000000000000000000000000BDBDCC008F91
      E4007C7FDB00787CDB007A7EDB007A7FDC007A7FDC007A7FDC00787CDB00A1A4
      E6003739B700000000000000000000000000000000004DA64D004DA64D000000
      00005FAD69007CBE7C0096CB9600B3D9B300CDE6CD00E2F1E200ECF5EC000000
      000000000000000000000000000000000000D9D9D9FF181817FF635B57FF28BF
      F7FF55D4F5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002977
      31008DC29100CCE4CD00B9DABC00B2D6B400B4D7B600C3DFC500C5E0C6002B93
      3200D0D5D000000000000000000000000000000000000000000000000000BDBD
      CC00A1A2E800ACADE700ADAEE800ADAFE800ADAFE800ADAFE800BABBEB003839
      B700000000000000000000000000000000000000000031582400315824003158
      2400315824003158240031582400315824003158240031582400315824000000
      0000000000000000000000000000000000000A45F0FF415D88FFD5D5D5FFE8E6
      E6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8AAB600106025003192370057A85C00479F4C00147E1C002B4B5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBECD004B4BA7004B4BA7004B4BA7004B4CA7004B4BA7005454AB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005177F7FFBCD9FFFF748AF6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC3FFFFFFFFFFFF0F00FF00FFE01FF80
      C007E007FE01FF018003C003FE01FC0180018001FE01F80300010001F001F807
      00010001F001F80F00000001F001FC1F000000010001F83F000000010003F07F
      000100010007E0FF80010001000FC1FF80038003000F83FFC003C007000F07FF
      E007E00F000F0FFFF01FF01F000F1FFF00000000000000000000000000000000
      000000000000}
  end
  object qryCandidatorList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'plan_no'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'INTERVIEW_no'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'position_no'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_CANDIDATOR_INTERVIEW SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   INTERVIEW_NO = :INTERVIEW_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   CHECK_MARK = :CHECK_MARK,'
      '   STATE = :STATE,'
      '   NOTE = :NOTE,'
      '   IS_CANDIDATE = :IS_CANDIDATE,'
      '   THOIGIAN_HEN_PV = :THOIGIAN_HEN_PV,'
      '   DA_PHONGVAN = :DA_PHONGVAN'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   INTERVIEW_NO = :OLD_INTERVIEW_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryCandidatorListAfterPost
    SQL.Strings = (
      'select '
      '  HR_CANDIDATOR_INTERVIEW.plan_no,'
      '  HR_CANDIDATOR_INTERVIEW.INTERVIEW_no,'
      '  HR_CANDIDATOR_INTERVIEW.position_no,'
      '  HR_CANDIDATOR_INTERVIEW.employee_no,'
      '  hr_employee.last_name||'#39' '#39'||hr_employee.middle_name||'#39' '#39'||'
      '    hr_employee.first_name full_name,'
      '  hr_employee.gender,'
      '  hr_employee.birth_date,'
      '  hr_employee.contact_phone,'
      '  hr_employee.contact_addr,'
      '  hr_employee.email,'
      '  HR_CANDIDATOR_INTERVIEW.CHECK_MARK,'
      '  HR_CANDIDATOR_INTERVIEW.state,'
      '  HR_CANDIDATOR_INTERVIEW.note,'
      '  HR_CANDIDATOR_INTERVIEW.is_candidate,'
      '  HR_CANDIDATOR_INTERVIEW.thoigian_hen_pv,'
      '  HR_CANDIDATOR_INTERVIEW.da_phongvan '
      'from HR_CANDIDATOR_INTERVIEW'
      'join hr_employee on'
      '  HR_CANDIDATOR_INTERVIEW.employee_no=hr_employee.employee_no'
      'where HR_CANDIDATOR_INTERVIEW.plan_no=:plan_no and'
      '      HR_CANDIDATOR_INTERVIEW.INTERVIEW_no=:INTERVIEW_NO and'
      '      HR_CANDIDATOR_INTERVIEW.position_no=:position_no'
      ''
      '')
    FieldOptions = []
    Left = 139
    Top = 299
    object qryCandidatorListPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryCandidatorListINTERVIEW_NO: TWideStringField
      FieldName = 'INTERVIEW_NO'
      Required = True
      Size = 30
    end
    object qryCandidatorListPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryCandidatorListEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryCandidatorListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryCandidatorListGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryCandidatorListBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryCandidatorListCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryCandidatorListCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 255
    end
    object qryCandidatorListEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qryCandidatorListCHECK_MARK: TIBOFloatField
      FieldName = 'CHECK_MARK'
    end
    object qryCandidatorListSTATE: TSmallintField
      FieldName = 'STATE'
      Required = True
    end
    object qryCandidatorListNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryCandidatorListIS_CANDIDATE: TSmallintField
      FieldName = 'IS_CANDIDATE'
    end
    object qryCandidatorListTHOIGIAN_HEN_PV: TTimeField
      FieldName = 'THOIGIAN_HEN_PV'
    end
    object qryCandidatorListDA_PHONGVAN: TSmallintField
      FieldName = 'DA_PHONGVAN'
    end
  end
  object dsCandidatorList: TDataSource
    DataSet = qryCandidatorList
    Left = 155
    Top = 335
  end
  object ColorDialog1: TColorDialog
    Left = 272
    Top = 96
  end
  object qryInterviewList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_INTERVIEW'
      'WHERE'
      '   INTERVIEW_NO = :OLD_INTERVIEW_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_INTERVIEW SET'
      '   INTERVIEW_NO = :INTERVIEW_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   INTERVIEW_NAME = :INTERVIEW_NAME,'
      '   INTERVIEW_DATE = :INTERVIEW_DATE,'
      '   NOTE = :NOTE'
      'WHERE'
      '   INTERVIEW_NO = :OLD_INTERVIEW_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_INTERVIEW('
      '   INTERVIEW_NO, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   INTERVIEW_NAME,'
      '   INTERVIEW_DATE,'
      '   NOTE)'
      'VALUES ('
      '   :INTERVIEW_NO,'
      '   :PLAN_NO,'
      '   :INTERVIEW_NAME,'
      '   :INTERVIEW_DATE,'
      '   :NOTE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'SELECT '
      '       PLAN_NO'
      '     , INTERVIEW_NO'
      '     , INTERVIEW_NAME'
      '     , INTERVIEW_DATE'
      '     , NOTE'
      'FROM HR_INTERVIEW'
      'where PLAN_NO=:PLAN_NO')
    FieldOptions = []
    Left = 131
    Top = 115
    object qryInterviewListPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryInterviewListINTERVIEW_NO: TWideStringField
      FieldName = 'INTERVIEW_NO'
      Required = True
      Size = 30
    end
    object qryInterviewListINTERVIEW_NAME: TWideStringField
      FieldName = 'INTERVIEW_NAME'
      Required = True
      Size = 126
    end
    object qryInterviewListINTERVIEW_DATE: TDateField
      FieldName = 'INTERVIEW_DATE'
      Required = True
    end
    object qryInterviewListNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsInterviewList: TDataSource
    DataSet = qryInterviewList
    Left = 131
    Top = 147
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    FieldOptions = []
    Left = 363
    Top = 307
  end
  object memCandidatorList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 174
    Top = 299
    object memCandidatorListPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Size = 30
    end
    object memCandidatorListINTERVIEW_NO: TWideStringField
      FieldName = 'INTERVIEW_NO'
      Size = 30
    end
    object memCandidatorListPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
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
        Name = 'INTERVIEW_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'POSITION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CAN_INTERVIEW_DETAIL'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   INTERVIEW_NO = :OLD_INTERVIEW_NO AND'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_CAN_INTERVIEW_DETAIL SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   INTERVIEW_NO = :INTERVIEW_NO, /*PK*/'
      '   ITEM_NO = :ITEM_NO, /*PK*/'
      '   ITEM_TYPE = :ITEM_TYPE, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   MARK = :MARK,'
      '   NOTES = :NOTES'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   INTERVIEW_NO = :OLD_INTERVIEW_NO AND'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CAN_INTERVIEW_DETAIL('
      '   EMPLOYEE_NO, /*PK*/'
      '   INTERVIEW_NO, /*PK*/'
      '   ITEM_NO, /*PK*/'
      '   ITEM_TYPE, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   MARK,'
      '   NOTES)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :INTERVIEW_NO,'
      '   :ITEM_NO,'
      '   :ITEM_TYPE,'
      '   :PLAN_NO,'
      '   :POSITION_NO,'
      '   :MARK,'
      '   :NOTES)')
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryCandidatorListAfterPost
    DataSource = dsCandidatorList
    SQL.Strings = (
      'SELECT HR_CAN_INTERVIEW_DETAIL.PLAN_NO'
      '     , HR_CAN_INTERVIEW_DETAIL.INTERVIEW_NO'
      '     , HR_CAN_INTERVIEW_DETAIL.EMPLOYEE_NO'
      '     , HR_CAN_INTERVIEW_DETAIL.POSITION_NO'
      '     , HR_CAN_INTERVIEW_DETAIL.ITEM_NO'
      '     , ITEM_NAME'
      '     , HR_CAN_INTERVIEW_DETAIL.MARK'
      '     , HR_CAN_INTERVIEW_DETAIL.ITEM_TYPE'
      '     , ITEM_RATE'
      '     , HR_CAN_INTERVIEW_DETAIL.NOTES'
      'FROM HR_CAN_INTERVIEW_DETAIL'
      'JOIN HR_RECRUIMENT_ITEM on'
      '  HR_CAN_INTERVIEW_DETAIL.ITEM_NO=HR_RECRUIMENT_ITEM.ITEM_NO and'
      '  HR_CAN_INTERVIEW_DETAIL.ITEM_TYPE=HR_RECRUIMENT_ITEM.ITEM_TYPE'
      'where '
      '  HR_CAN_INTERVIEW_DETAIL.PLAN_NO=:PLAN_NO and'
      '  HR_CAN_INTERVIEW_DETAIL.INTERVIEW_NO=:INTERVIEW_NO and'
      '  HR_CAN_INTERVIEW_DETAIL.EMPLOYEE_NO=:EMPLOYEE_NO and'
      '  HR_CAN_INTERVIEW_DETAIL.POSITION_NO=:POSITION_NO')
    FieldOptions = []
    Left = 227
    Top = 299
    object qryDetailPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryDetailINTERVIEW_NO: TWideStringField
      FieldName = 'INTERVIEW_NO'
      Required = True
      Size = 30
    end
    object qryDetailEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
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
    object qryDetailMARK: TIBOFloatField
      FieldName = 'MARK'
    end
    object qryDetailITEM_TYPE: TWideStringField
      FieldName = 'ITEM_TYPE'
      Required = True
      Size = 30
    end
    object qryDetailITEM_RATE: TIBOFloatField
      FieldName = 'ITEM_RATE'
    end
    object qryDetailNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 3072
    end
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 227
    Top = 335
  end
  object qryTinhDiem: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'plan_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERVIEW_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'type_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure HR_CANDIDATOR_INTERVIEW_MARK(:plan_no,:INTERVI' +
        'EW_NO,:type_no)')
    FieldOptions = []
    Left = 595
    Top = 275
  end
  object rpInterview: TppReport
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
    Left = 432
    Top = 296
    Version = '7.0'
    mmColumnWidth = 0
  end
  object dsnInterview: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpInterview
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 432
    Top = 328
  end
  object qryCurrentCandidator: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'plan_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERVIEW_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'position_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'employee_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsCandidatorList
    SQL.Strings = (
      'select '
      '  HR_CANDIDATOR_INTERVIEW.plan_no,'
      '  HR_CANDIDATOR_INTERVIEW.INTERVIEW_no,'
      '  HR_INTERVIEW.interview_date,'
      '  HR_CANDIDATOR_INTERVIEW.position_no,'
      '  HR_CANDIDATOR_INTERVIEW.employee_no,'
      '  hr_employee.last_name||'#39' '#39'||hr_employee.middle_name||'#39' '#39'||'
      '    hr_employee.first_name full_name,'
      
        '  case when hr_employee.gender=1 then '#39'Anh'#39' else '#39'Ch'#225#187#8249#39' end GEN' +
        'DER_TEXT,'
      '  hr_employee.contact_phone,'
      '  hr_employee.contact_addr,'
      '  hr_employee.email,'
      '  hr_title.title_name '
      'from HR_CANDIDATOR_INTERVIEW'
      'join hr_employee on'
      '  HR_CANDIDATOR_INTERVIEW.employee_no=hr_employee.employee_no'
      
        'join hr_interview on HR_CANDIDATOR_INTERVIEW.plan_no=hr_intervie' +
        'w.plan_no '
      
        'and  HR_CANDIDATOR_INTERVIEW.INTERVIEW_no=hr_interview.interview' +
        '_no '
      
        'join hr_position on  HR_CANDIDATOR_INTERVIEW.position_no=hr_posi' +
        'tion.position_no'
      'join hr_title on hr_position.title_no = hr_title.title_no '
      'where HR_CANDIDATOR_INTERVIEW.plan_no=:plan_no and'
      '      HR_CANDIDATOR_INTERVIEW.INTERVIEW_no=:INTERVIEW_NO and'
      '      HR_CANDIDATOR_INTERVIEW.position_no=:position_no and'
      '      HR_CANDIDATOR_INTERVIEW.employee_no = :employee_no')
    FieldOptions = []
    Left = 696
    Top = 283
    object qryCurrentCandidatorPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryCurrentCandidatorINTERVIEW_NO: TWideStringField
      FieldName = 'INTERVIEW_NO'
      Required = True
      Size = 30
    end
    object qryCurrentCandidatorINTERVIEW_DATE: TDateField
      FieldName = 'INTERVIEW_DATE'
      Required = True
    end
    object qryCurrentCandidatorPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryCurrentCandidatorEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryCurrentCandidatorFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 129
    end
    object qryCurrentCandidatorGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      ReadOnly = True
      Required = True
      Size = 9
    end
    object qryCurrentCandidatorCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryCurrentCandidatorCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 255
    end
    object qryCurrentCandidatorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qryCurrentCandidatorTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
  end
  object dsCurrentCandidator: TDataSource
    DataSet = qryCurrentCandidator
    Left = 696
    Top = 319
  end
  object ppUngVienHienHanh: TppDBPipeline
    DataSource = dsCurrentCandidator
    UserName = 'UngVienHienHanh'
    Left = 696
    Top = 352
  end
  object qryThongTinUngVien: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERVIEW_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POSITION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PLAN_NAME,'
      '    FROM_DATE,'
      '    TO_DATE,'
      '    INTERVIEW_DATE,'
      '    TITLE_NAME,'
      '    EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    BIRTH_DATE,'
      '    BIRTH_PLACE_ID,'
      '    STATUS_NAME,'
      '    GENDER,'
      '    GENDER_TEXT,'
      '    CONTACT_PHONE,'
      '    CONTACT_ADDR,'
      '    EMAIL,'
      '    THOIGIAN_HEN_PV,'
      '    EDU_LEVEL,'
      '    WORK_HISTORY,'
      '    LUONG_MONGDOI,'
      '    NGAY_TIEPNHAN,'
      '    SO_UV_DUTUYEN,'
      '    SO_UV_MOI_PV,'
      '    ID_CARD_NO,'
      '    ISSUED_PLACE,'
      '    RESIDENT_ADDR,'
      '    HAND_PHONE,'
      '    CHIEU_CAO,'
      '    CAN_NANG,'
      '    CHUYEN_NGANH,'
      '    TRINH_DO,'
      '    NAM_TOTNGHIEP,'
      '    CHUYENMON_DAOTAO,'
      '    DIEM_TOTNGHIEP,'
      '    TRINHDO_VANHOA,'
      '    TINH_LIENHE,'
      '    SOTRUONG_CTAC,'
      '    NANG_KHIEU,'
      '    QUE_QUAN,'
      '    NGOAI_NGU,'
      '    VI_TINH,'
      '    NGAY_NOP_HOSO'
      'FROM HR_THONGTIN_UNGVIEN(:PLAN_NO,:INTERVIEW_NO,:POSITION_NO)'
      'ORDER BY THOIGIAN_HEN_PV')
    FieldOptions = []
    Left = 736
    Top = 283
    object qryThongTinUngVienPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Size = 126
    end
    object qryThongTinUngVienFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
    end
    object qryThongTinUngVienTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
    object qryThongTinUngVienINTERVIEW_DATE: TDateField
      FieldName = 'INTERVIEW_DATE'
    end
    object qryThongTinUngVienTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryThongTinUngVienEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryThongTinUngVienFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryThongTinUngVienBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryThongTinUngVienBIRTH_PLACE_ID: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object qryThongTinUngVienSTATUS_NAME: TWideStringField
      FieldName = 'STATUS_NAME'
      Size = 30
    end
    object qryThongTinUngVienGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      Size = 30
    end
    object qryThongTinUngVienCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryThongTinUngVienCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 126
    end
    object qryThongTinUngVienEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qryThongTinUngVienTHOIGIAN_HEN_PV: TTimeField
      FieldName = 'THOIGIAN_HEN_PV'
    end
    object qryThongTinUngVienEDU_LEVEL: TWideStringField
      FieldName = 'EDU_LEVEL'
      Size = 300
    end
    object qryThongTinUngVienWORK_HISTORY: TWideStringField
      FieldName = 'WORK_HISTORY'
      Size = 300
    end
    object qryThongTinUngVienLUONG_MONGDOI: TIBOFloatField
      FieldName = 'LUONG_MONGDOI'
    end
    object qryThongTinUngVienNGAY_TIEPNHAN: TDateField
      FieldName = 'NGAY_TIEPNHAN'
    end
    object qryThongTinUngVienSO_UV_DUTUYEN: TIntegerField
      FieldName = 'SO_UV_DUTUYEN'
    end
    object qryThongTinUngVienSO_UV_MOI_PV: TIntegerField
      FieldName = 'SO_UV_MOI_PV'
    end
    object qryThongTinUngVienGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryThongTinUngVienID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryThongTinUngVienISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryThongTinUngVienRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryThongTinUngVienHAND_PHONE: TWideStringField
      FieldName = 'HAND_PHONE'
      Size = 30
    end
    object qryThongTinUngVienCHIEU_CAO: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object qryThongTinUngVienCAN_NANG: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object qryThongTinUngVienCHUYEN_NGANH: TWideStringField
      FieldName = 'CHUYEN_NGANH'
      Size = 126
    end
    object qryThongTinUngVienTRINH_DO: TWideStringField
      FieldName = 'TRINH_DO'
      Size = 126
    end
    object qryThongTinUngVienNAM_TOTNGHIEP: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryThongTinUngVienCHUYENMON_DAOTAO: TWideStringField
      FieldName = 'CHUYENMON_DAOTAO'
      Size = 126
    end
    object qryThongTinUngVienDIEM_TOTNGHIEP: TIBOFloatField
      FieldName = 'DIEM_TOTNGHIEP'
    end
    object qryThongTinUngVienTRINHDO_VANHOA: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 126
    end
    object qryThongTinUngVienTINH_LIENHE: TWideStringField
      FieldName = 'TINH_LIENHE'
      Size = 126
    end
    object qryThongTinUngVienSOTRUONG_CTAC: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object qryThongTinUngVienNANG_KHIEU: TWideStringField
      FieldName = 'NANG_KHIEU'
      Size = 255
    end
    object qryThongTinUngVienQUE_QUAN: TWideStringField
      FieldName = 'QUE_QUAN'
      Size = 126
    end
    object qryThongTinUngVienNGOAI_NGU: TWideStringField
      FieldName = 'NGOAI_NGU'
      Size = 255
    end
    object qryThongTinUngVienVI_TINH: TWideStringField
      FieldName = 'VI_TINH'
      Size = 255
    end
    object qryThongTinUngVienNGAY_NOP_HOSO: TDateField
      FieldName = 'NGAY_NOP_HOSO'
    end
  end
  object dsThongTinUngVien: TDataSource
    DataSet = qryThongTinUngVien
    Left = 736
    Top = 319
  end
  object ppThongTinUngVien: TppDBPipeline
    DataSource = dsThongTinUngVien
    UserName = 'ThongTinUngVien'
    Left = 736
    Top = 352
  end
  object qryDanhSachPhongVan: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'INTERVIEW_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT INTERVIEW_DATE,'
      '    EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    BIRTH_DATE,'
      '    BIRTH_PLACE_ID,'
      '    STATUS_NAME,'
      '    GENDER,'
      '    GENDER_TEXT,'
      '    CONTACT_PHONE,'
      '    CONTACT_ADDR,'
      '    EMAIL,'
      '    THOIGIAN_HEN_PV,'
      '    EDU_LEVEL,'
      '    WORK_HISTORY,'
      '    LUONG_MONGDOI,'
      '    ID_CARD_NO,'
      '    ISSUED_PLACE,'
      '    RESIDENT_ADDR ,'
      '    HAND_PHONE,'
      '    CHIEU_CAO,'
      '    CAN_NANG,'
      '    CHUYEN_NGANH,'
      '    TRINH_DO,'
      '    NAM_TOTNGHIEP,'
      '    CHUYENMON_DAOTAO,'
      '    DIEM_TOTNGHIEP,'
      '    TRINHDO_VANHOA,'
      '    TINH_LIENHE,'
      '    SOTRUONG_CTAC ,'
      '    NANG_KHIEU ,'
      '    QUE_QUAN,'
      '    NGOAI_NGU ,'
      '    VI_TINH ,'
      '    NGAY_NOP_HOSO,'
      '    DONVI_UNGTUYEN,'
      '    CHUCDANH_UNGTUYEN,'
      '    VITRI_UNGTUYEN,'
      '    GHI_CHU,'
      '    KQ_NGOAINGU,'
      '    KQ_HINHTHUC,'
      '    KQ_TACPHONG,'
      '    KQ_UNGXU,'
      '    KQ_CHUYENMON,'
      '    KQ_SUCKHOE,'
      '    DEXUAT_TUYENDUNG,'
      '    KQ_KHONGDAT'
      'FROM HR_CANDIDATOR_PHONGVAN(:PLAN_NO,:INTERVIEW_NO)'
      'ORDER BY CHUCDANH_UNGTUYEN, NGAY_NOP_HOSO')
    FieldOptions = []
    Left = 768
    Top = 283
    object qryDanhSachPhongVanINTERVIEW_DATE: TDateField
      FieldName = 'INTERVIEW_DATE'
    end
    object qryDanhSachPhongVanEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDanhSachPhongVanFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryDanhSachPhongVanBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryDanhSachPhongVanBIRTH_PLACE_ID: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object qryDanhSachPhongVanSTATUS_NAME: TWideStringField
      FieldName = 'STATUS_NAME'
      Size = 30
    end
    object qryDanhSachPhongVanGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryDanhSachPhongVanGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      Size = 30
    end
    object qryDanhSachPhongVanCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryDanhSachPhongVanCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 126
    end
    object qryDanhSachPhongVanEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qryDanhSachPhongVanTHOIGIAN_HEN_PV: TTimeField
      FieldName = 'THOIGIAN_HEN_PV'
    end
    object qryDanhSachPhongVanEDU_LEVEL: TWideStringField
      FieldName = 'EDU_LEVEL'
      Size = 300
    end
    object qryDanhSachPhongVanWORK_HISTORY: TWideStringField
      FieldName = 'WORK_HISTORY'
      Size = 300
    end
    object qryDanhSachPhongVanLUONG_MONGDOI: TIBOFloatField
      FieldName = 'LUONG_MONGDOI'
    end
    object qryDanhSachPhongVanID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryDanhSachPhongVanISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryDanhSachPhongVanRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryDanhSachPhongVanHAND_PHONE: TWideStringField
      FieldName = 'HAND_PHONE'
      Size = 30
    end
    object qryDanhSachPhongVanCHIEU_CAO: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object qryDanhSachPhongVanCAN_NANG: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object qryDanhSachPhongVanCHUYEN_NGANH: TWideStringField
      FieldName = 'CHUYEN_NGANH'
      Size = 126
    end
    object qryDanhSachPhongVanTRINH_DO: TWideStringField
      FieldName = 'TRINH_DO'
      Size = 126
    end
    object qryDanhSachPhongVanNAM_TOTNGHIEP: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryDanhSachPhongVanCHUYENMON_DAOTAO: TWideStringField
      FieldName = 'CHUYENMON_DAOTAO'
      Size = 126
    end
    object qryDanhSachPhongVanDIEM_TOTNGHIEP: TIBOFloatField
      FieldName = 'DIEM_TOTNGHIEP'
    end
    object qryDanhSachPhongVanTRINHDO_VANHOA: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 126
    end
    object qryDanhSachPhongVanTINH_LIENHE: TWideStringField
      FieldName = 'TINH_LIENHE'
      Size = 126
    end
    object qryDanhSachPhongVanSOTRUONG_CTAC: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object qryDanhSachPhongVanNANG_KHIEU: TWideStringField
      FieldName = 'NANG_KHIEU'
      Size = 255
    end
    object qryDanhSachPhongVanQUE_QUAN: TWideStringField
      FieldName = 'QUE_QUAN'
      Size = 126
    end
    object qryDanhSachPhongVanNGOAI_NGU: TWideStringField
      FieldName = 'NGOAI_NGU'
      Size = 255
    end
    object qryDanhSachPhongVanVI_TINH: TWideStringField
      FieldName = 'VI_TINH'
      Size = 255
    end
    object qryDanhSachPhongVanNGAY_NOP_HOSO: TDateField
      FieldName = 'NGAY_NOP_HOSO'
    end
    object qryDanhSachPhongVanDONVI_UNGTUYEN: TWideStringField
      FieldName = 'DONVI_UNGTUYEN'
      Size = 126
    end
    object qryDanhSachPhongVanCHUCDANH_UNGTUYEN: TWideStringField
      FieldName = 'CHUCDANH_UNGTUYEN'
      Size = 126
    end
    object qryDanhSachPhongVanVITRI_UNGTUYEN: TWideStringField
      FieldName = 'VITRI_UNGTUYEN'
      Size = 126
    end
    object qryDanhSachPhongVanGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryDanhSachPhongVanKQ_NGOAINGU: TWideStringField
      FieldName = 'KQ_NGOAINGU'
      Size = 126
    end
    object qryDanhSachPhongVanKQ_HINHTHUC: TWideStringField
      FieldName = 'KQ_HINHTHUC'
      Size = 126
    end
    object qryDanhSachPhongVanKQ_TACPHONG: TWideStringField
      FieldName = 'KQ_TACPHONG'
      Size = 126
    end
    object qryDanhSachPhongVanKQ_UNGXU: TWideStringField
      FieldName = 'KQ_UNGXU'
      Size = 126
    end
    object qryDanhSachPhongVanKQ_CHUYENMON: TWideStringField
      FieldName = 'KQ_CHUYENMON'
      Size = 126
    end
    object qryDanhSachPhongVanKQ_SUCKHOE: TWideStringField
      FieldName = 'KQ_SUCKHOE'
      Size = 126
    end
    object qryDanhSachPhongVanDEXUAT_TUYENDUNG: TWideStringField
      FieldName = 'DEXUAT_TUYENDUNG'
      Size = 90
    end
    object qryDanhSachPhongVanKQ_KHONGDAT: TSmallintField
      FieldName = 'KQ_KHONGDAT'
    end
  end
  object dsDanhSachPhongVan: TDataSource
    DataSet = qryDanhSachPhongVan
    Left = 768
    Top = 319
  end
  object ppDanhSachPhongVan: TppDBPipeline
    DataSource = dsDanhSachPhongVan
    UserName = 'DanhSachPhongVan'
    Left = 768
    Top = 352
  end
  object qryKetQuaPhongVan: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERVIEW_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT INTERVIEW_DATE,'
      '    EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    BIRTH_DATE,'
      '    BIRTH_PLACE_ID,'
      '    STATUS_NAME,'
      '    GENDER,'
      '    GENDER_TEXT,'
      '    CONTACT_PHONE,'
      '    CONTACT_ADDR,'
      '    EMAIL,'
      '    THOIGIAN_HEN_PV,'
      '    EDU_LEVEL,'
      '    WORK_HISTORY,'
      '    LUONG_MONGDOI,'
      '    ID_CARD_NO,'
      '    ISSUED_PLACE,'
      '    RESIDENT_ADDR ,'
      '    HAND_PHONE,'
      '    CHIEU_CAO,'
      '    CAN_NANG,'
      '    CHUYEN_NGANH,'
      '    TRINH_DO,'
      '    NAM_TOTNGHIEP,'
      '    CHUYENMON_DAOTAO,'
      '    DIEM_TOTNGHIEP,'
      '    TRINHDO_VANHOA,'
      '    TINH_LIENHE,'
      '    SOTRUONG_CTAC ,'
      '    NANG_KHIEU ,'
      '    QUE_QUAN,'
      '    NGOAI_NGU ,'
      '    VI_TINH ,'
      '    NGAY_NOP_HOSO,'
      '    DONVI_UNGTUYEN,'
      '    CHUCDANH_UNGTUYEN,'
      '    VITRI_UNGTUYEN,'
      '    GHI_CHU,'
      '    KQ_NGOAINGU,'
      '    KQ_HINHTHUC,'
      '    KQ_TACPHONG,'
      '    KQ_UNGXU,'
      '    KQ_CHUYENMON,'
      '    KQ_SUCKHOE,'
      '    DEXUAT_TUYENDUNG,'
      '    KQ_KHONGDAT'
      'FROM HR_CANDIDATOR_PHONGVAN(:PLAN_NO,:INTERVIEW_NO)'
      'ORDER BY KQ_KHONGDAT,CHUCDANH_UNGTUYEN, NGAY_NOP_HOSO')
    FieldOptions = []
    Left = 800
    Top = 283
    object DateField1: TDateField
      FieldName = 'INTERVIEW_DATE'
    end
    object WideStringField1: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object DateField2: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object WideStringField3: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object WideStringField4: TWideStringField
      FieldName = 'STATUS_NAME'
      Size = 30
    end
    object SmallintField1: TSmallintField
      FieldName = 'GENDER'
    end
    object WideStringField5: TWideStringField
      FieldName = 'GENDER_TEXT'
      Size = 30
    end
    object WideStringField6: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object WideStringField7: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 126
    end
    object WideStringField8: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object TimeField1: TTimeField
      FieldName = 'THOIGIAN_HEN_PV'
    end
    object WideStringField9: TWideStringField
      FieldName = 'EDU_LEVEL'
      Size = 300
    end
    object WideStringField10: TWideStringField
      FieldName = 'WORK_HISTORY'
      Size = 300
    end
    object IBOFloatField1: TIBOFloatField
      FieldName = 'LUONG_MONGDOI'
    end
    object WideStringField11: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object WideStringField12: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object WideStringField13: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object WideStringField14: TWideStringField
      FieldName = 'HAND_PHONE'
      Size = 30
    end
    object IBOFloatField2: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object IBOFloatField3: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object WideStringField15: TWideStringField
      FieldName = 'CHUYEN_NGANH'
      Size = 126
    end
    object WideStringField16: TWideStringField
      FieldName = 'TRINH_DO'
      Size = 126
    end
    object IntegerField1: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object WideStringField17: TWideStringField
      FieldName = 'CHUYENMON_DAOTAO'
      Size = 126
    end
    object IBOFloatField4: TIBOFloatField
      FieldName = 'DIEM_TOTNGHIEP'
    end
    object WideStringField18: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 126
    end
    object WideStringField19: TWideStringField
      FieldName = 'TINH_LIENHE'
      Size = 126
    end
    object WideStringField20: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object WideStringField21: TWideStringField
      FieldName = 'NANG_KHIEU'
      Size = 255
    end
    object WideStringField22: TWideStringField
      FieldName = 'QUE_QUAN'
      Size = 126
    end
    object WideStringField23: TWideStringField
      FieldName = 'NGOAI_NGU'
      Size = 255
    end
    object WideStringField24: TWideStringField
      FieldName = 'VI_TINH'
      Size = 255
    end
    object DateField3: TDateField
      FieldName = 'NGAY_NOP_HOSO'
    end
    object WideStringField25: TWideStringField
      FieldName = 'DONVI_UNGTUYEN'
      Size = 126
    end
    object WideStringField26: TWideStringField
      FieldName = 'CHUCDANH_UNGTUYEN'
      Size = 126
    end
    object WideStringField27: TWideStringField
      FieldName = 'VITRI_UNGTUYEN'
      Size = 126
    end
    object WideStringField28: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object WideStringField29: TWideStringField
      FieldName = 'KQ_NGOAINGU'
      Size = 126
    end
    object WideStringField30: TWideStringField
      FieldName = 'KQ_HINHTHUC'
      Size = 126
    end
    object WideStringField31: TWideStringField
      FieldName = 'KQ_TACPHONG'
      Size = 126
    end
    object WideStringField32: TWideStringField
      FieldName = 'KQ_UNGXU'
      Size = 126
    end
    object WideStringField33: TWideStringField
      FieldName = 'KQ_CHUYENMON'
      Size = 126
    end
    object WideStringField34: TWideStringField
      FieldName = 'KQ_SUCKHOE'
      Size = 126
    end
    object WideStringField35: TWideStringField
      FieldName = 'DEXUAT_TUYENDUNG'
      Size = 90
    end
    object SmallintField2: TSmallintField
      FieldName = 'KQ_KHONGDAT'
    end
  end
  object dsKetQuaPhongVan: TDataSource
    DataSet = qryKetQuaPhongVan
    Left = 800
    Top = 319
  end
  object ppKetQuaPhongVan: TppDBPipeline
    DataSource = dsKetQuaPhongVan
    UserName = 'KetQuaPhongVan'
    Left = 800
    Top = 352
  end
end
