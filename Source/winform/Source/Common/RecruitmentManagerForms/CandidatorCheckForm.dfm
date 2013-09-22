inherited frmCandidatorCheck: TfrmCandidatorCheck
  Left = 266
  Top = 147
  Width = 828
  Height = 560
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 507
    Width = 820
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 820
    Height = 507
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridRecruitingPlan: TdxDBGrid
      Left = 14
      Top = 28
      Width = 319
      Height = 180
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PLAN_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsRecruitmentPlan
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      OnChangeNode = gridRecruitingPlanChangeNode
      object gridRecruitingPlanPLAN_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' k'#7871' ho'#7841'ch'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_NO'
        Caption_UTF7 = 'M+AOM s+HtE k+Hr8 ho+HqE-ch'
      end
      object gridRecruitingPlanPLAN_NAME: TdxDBGridColumn
        Caption = 'K'#7871' ho'#7841'ch tuy'#7875'n d'#7909'ng'
        HeaderAlignment = taCenter
        Width = 155
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLAN_NAME'
        Caption_UTF7 = 'K+Hr8 ho+HqE-ch tuy+HsM-n d+HuU-ng'
      end
      object gridRecruitingPlanFROM_DATE: TdxDBGridDateColumn
        Caption = 'T'#7915' ng'#224'y'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FROM_DATE'
        Caption_UTF7 = 'T+Hus ng+AOA-y'
      end
      object gridRecruitingPlanTO_DATE: TdxDBGridDateColumn
        Caption = #273#7871'n ng'#224'y'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TO_DATE'
        Caption_UTF7 = '+AREevw-n ng+AOA-y'
      end
    end
    object chkCandidator: TdxCheckEdit
      Left = 591
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object chkEmployee: TdxCheckEdit
      Left = 591
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      StyleController = dmMain.StyleController
    end
    object ElPanel1: TElPanel
      Left = 14
      Top = 294
      Width = 792
      Height = 181
      Align = alNone
      BevelOuter = bvNone
      UseXPThemes = False
      Color = 15466238
      MouseCapture = False
      TabOrder = 16
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object pageMain: TElPageControl
        Left = 0
        Top = 159
        Width = 792
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
        Width = 792
        Height = 159
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'EMPLOYEE_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = dsCandidatorList
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        OnCustomDrawCell = gridCheckListCustomDrawCell
        object gridCheckListIS_CADIDATE: TdxDBGridCheckColumn
          Alignment = taCenter
          Caption = 'Nh'#226'n vi'#234'n'
          Color = 11777535
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 50
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
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_NO'
          Caption_UTF7 = 'M+AOM +Huk-ng vi+AOo-n'
        end
        object gridCheckListFULL_NAME: TdxDBGridColumn
          Caption = 'H'#7885' v'#224' t'#234'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 109
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
          Width = 54
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
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BIRTH_DATE'
          Caption_UTF7 = 'Ng+AOA-y sinh'
        end
        object gridCheckListCONTACT_PHONE: TdxDBGridColumn
          Caption = #272'i'#7879'n tho'#7841'i'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTACT_PHONE'
          Caption_UTF7 = '+ARA-i+Hsc-n tho+HqE-i'
        end
        object gridCheckListEMAIL: TdxDBGridHyperLinkColumn
          Caption = 'Email'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMAIL'
        end
        object gridCheckListCONTACT_ADDR: TdxDBGridColumn
          Caption = #272#7883'a ch'#7881' li'#234'n l'#7841'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTACT_ADDR'
          Caption_UTF7 = '+ARAeyw-a ch+Hsk li+AOo-n l+HqE-c'
        end
        object gridCheckListSTATE: TdxDBGridCheckColumn
          Alignment = taLeftJustify
          Caption = 'K'#7871't qu'#7843' '#273#7841't?'
          HeaderAlignment = taCenter
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STATE'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = 'K+Hr8-t qu+HqM +AREeoQ-t?'
        end
        object gridCheckListNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
    end
    object dxFontColorCandidator: TdxButtonEdit
      Left = 715
      Top = 28
      Width = 70
      Color = 4194304
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
    object dxFontColorEmployee: TdxButtonEdit
      Left = 715
      Top = 51
      Width = 70
      Color = clBlue
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxFontColorCandidatorButtonClick
      ExistButtons = True
    end
    object chkInvalidCandidator: TdxCheckEdit
      Left = 591
      Top = 176
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 9
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object ElPopupButton1: TElPopupButton
      Left = 476
      Top = 236
      Width = 90
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
      Caption = '&Duy'#7879't h'#7891' s'#417
      TabOrder = 12
      Color = 15466238
      ParentColor = False
      Action = acCreateCheckList
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxColorValidCandidator: TdxButtonEdit
      Left = 715
      Top = 176
      Width = 70
      Color = 13426175
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 10
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxFontColorCandidatorButtonClick
      ExistButtons = True
    end
    object dxColorInvalidCandidator: TdxButtonEdit
      Left = 715
      Top = 199
      Width = 70
      Color = 13948116
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 11
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxFontColorCandidatorButtonClick
      ExistButtons = True
    end
    object ElPopupButton2: TElPopupButton
      Left = 646
      Top = 236
      Width = 80
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
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 566
      Top = 236
      Width = 80
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
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object chkTheoBangCap: TdxCheckEdit
      Left = 591
      Top = 130
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object chkTheoKinhNghiem: TdxCheckEdit
      Left = 591
      Top = 153
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      StyleController = dmMain.StyleController
    end
    object dxDK_KETHOP: TdxImageEdit
      Left = 699
      Top = 130
      Width = 107
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnCloseUp = dxDK_KETHOPCloseUp
      DropDownRows = 16777223
    end
    object dxDK_UngVien: TdxImageEdit
      Left = 591
      Top = 107
      Width = 119
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnCloseUp = dxDK_UngVienCloseUp
      DropDownRows = 16777223
    end
    object ElPopupButton4: TElPopupButton
      Left = 726
      Top = 236
      Width = 80
      Height = 25
      Cursor = crDefault
      ImageIndex = 45
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 15
      Color = 15466238
      ParentColor = False
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxSelectFile: TdxPopupEdit
      Left = 368
      Top = 480
      Width = 234
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 17
      StyleController = dmMain.StyleController
      OnChange = dxSelectFileChange
      OnCloseUp = dxSelectFileCloseUp
      OnInitPopup = dxSelectFileInitPopup
    end
    object ElPopupButton5: TElPopupButton
      Left = 602
      Top = 480
      Width = 72
      Height = 25
      Cursor = crDefault
      ImageIndex = 61
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xem'
      TabOrder = 18
      Color = 15466238
      ParentColor = False
      Action = acPreview
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 674
      Top = 480
      Width = 72
      Height = 25
      Cursor = crDefault
      ImageIndex = 59
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Thi'#7871't k'#7871
      TabOrder = 19
      Color = 15466238
      ParentColor = False
      Action = acDesign
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 746
      Top = 480
      Width = 72
      Height = 25
      Cursor = crDefault
      ImageIndex = 60
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'In'
      TabOrder = 20
      Color = 15466238
      ParentColor = False
      Action = acPrint
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Group1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Danh m'#7909'c k'#7871' ho'#7841'ch tuy'#7875'n d'#7909'ng'
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridRecruitingPlan
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group8: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            Caption = 'T'#249'y ch'#7885'n danh s'#225'ch '#7913'ng vi'#234'n'
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Group7: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ch'#7885'n theo '#7913'ng vi'#234'n b'#234'n ngo'#224'i'
                Control = chkCandidator
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ch'#7885'n t'#7915' nh'#226'n vi'#234'n n'#7897'i b'#7897
                Control = chkEmployee
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group6: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              Offsets.Left = 10
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Ch'#7885'n font hi'#7875'n th'#7883
                Control = dxFontColorCandidator
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Ch'#7885'n font hi'#7875'n th'#7883
                Control = dxFontColorEmployee
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            Caption = 'T'#249'y ch'#7885'n x'#233't duy'#7879't h'#7891' s'#417
            object dxLayoutControl1Group11: TdxLayoutGroup
              Caption = 'New Group'
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item16: TdxLayoutItem
                Caption = 'L'#7885'c '#7913'ng vi'#234'n'
                Control = dxDK_UngVien
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Group13: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'L'#7885'c theo b'#7857'ng c'#7845'p'
                  Control = chkTheoBangCap
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item15: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = #272'i'#7873'u ki'#7879'n k'#7871't h'#7907'p'
                  Control = dxDK_KETHOP
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Item14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'L'#7885'c theo kinh nghi'#7879'm'
                Control = chkTheoKinhNghiem
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group12: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Xem '#7913'ng vi'#234'n ch'#432'a '#273#7841't'
                Control = chkInvalidCandidator
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Group10: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Offsets.Left = 10
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item7: TdxLayoutItem
                  Caption = #7912'ng vi'#234'n '#273#7841't'
                  Control = dxColorValidCandidator
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item11: TdxLayoutItem
                  Caption = #7912'ng vi'#234'n ch'#432'a '#273#7841't'
                  Control = dxColorInvalidCandidator
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object dxLayoutControl1Group9: TdxLayoutGroup
            ShowCaption = False
            LayoutDirection = ldHorizontal
            UseIndent = False
            object dxLayoutControl1Item9: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
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
            object dxLayoutControl1Item10: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item17: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Danh s'#225'ch s'#417' lo'#7841'i '#7913'ng vi'#234'n'
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'ElPanel1'
          ShowCaption = False
          Control = ElPanel1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group14: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item18: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'Ch'#7885'n m'#7851'u in'
          Control = dxSelectFile
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item19: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item20: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = ElPopupButton6
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item21: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
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
        Caption = 'X'#233't duy'#7879't h'#7891' s'#417' '#7913'ng vi'#234'n'
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
    Left = 139
    Top = 115
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
    Left = 139
    Top = 147
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
    end
    object acCheckListRefresh: TAction
      Caption = 'acCheckListRefresh'
      OnExecute = acCheckListRefreshExecute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      DataSource = dsCandidatorList
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 44
      DataSource = dsCandidatorList
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      ImageIndex = 45
      DataSource = dsCandidatorList
    end
    object acPreview: TAction
      Category = 'Reports'
      Caption = 'acPreview'
      ImageIndex = 61
      OnExecute = acPreviewExecute
    end
    object acDesign: TAction
      Category = 'Reports'
      Caption = 'acDesign'
      ImageIndex = 59
      OnExecute = acDesignExecute
    end
    object acPrint: TAction
      Category = 'Reports'
      Caption = 'acPrint'
      ImageIndex = 60
      OnExecute = acPrintExecute
    end
  end
  object ImageList1: TImageList
    Left = 120
    Top = 200
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00F4F4F400F5F5F500FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096969800354D4200438F4D004FAD57004EA757003F7149004D505700EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000BABABC006F6F8900707089007070890070708900707089007F7F9100FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F7004D6A
      510055D162006AE176007AF085007BF286007BF1860078EE830067DF720043A6
      5100C5C5C500000000000000000000000000000000000000000000000000BBBB
      BB003855EE003A62EA003F6AEF004471F3004675F5004472F300406CF1006061
      9400FCFCFC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE4BF00EBDDAE00E6D49A00D6B9
      5A00D6B95A00D6B95A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC003A7A430053D0
      61005FDA6D006DE5790079F084007AF085007AF0850079F085006DE579005FDA
      6D004FD15F00C2C2C20000000000000000000000000000000000BBBBBB00334E
      EE003558E7003A60EB003F67F000426DF300436EF400426DF3003F67F0003C64
      F0005D5D9100FCFCFC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E9CC00EFE4BF00EBDDAE00E2CE
      8B00D6B95A00D6B95A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E72610041C251004DCA
      5C005AD5670066DF72006BE7780078EE830077EE830071E87C0066DF73005AD5
      68004DCA5C0039BA4A00F3F3F3000000000000000000BDBDBD002B42E7002E4C
      E0003356E8002643D3003A60EB003C64EE003D65EF003B65F2002D4EDC00375A
      E8003458E9005C5C9000FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000F6F0DC00F2E9CC00EFE4BF00E6D4
      9A00E2CE8B00D6B95A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E0002DB43F003ABA4A0047C4
      560052CD60004CCF5900F2F5F10050CD5B0069E2760064DE72005CD76A0052CF
      610047C456003BBB4B0037564B0000000000E6E6E6002335DF00263FD8002A46
      DE008A8CCB00FFFFFE00203DD100375BE900355CED00ACACD600F7F5F7001F3E
      D6002F4EE1002D4AE10073749A00000000000000000000000000000000000000
      0000000000000000000000000000021421000000000000000000F2E9CC00EBDD
      AE00E6D49A00E2CE8B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000088918A0027AB390032B444003DBD
      4D0037BD4600F5F8F400FFFFFF00FFFFFF0045C2500058D3660051CD600048C6
      57003EBD4E0033B4440025A6360000000000D3D3D5001F34D500233AD500253F
      D900FFFFFF00FFFFFF00FFFEFC001835CE00A09FD000FFFFFF00FFFFFF008D9E
      EF002B47DD002841D9003E45A800000000000000000000000000000000000000
      0000040C1200149BF700149BF700149BF700149BF70000000000F6F0DC00EFE4
      BF00EBDDAE00E6D49A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000487F4F0024A4340029AC3B0023AC
      3400F6F9F600FFFFFF00FFFFFF00FFFFFF00FFFFFF0037B7430045C354003DBD
      4D0034B5450029AC3B0025AC3600FAFAFA00D3D3D5001C2FD2002034D200233A
      D500253FD800FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF008F9EED002743
      DB00273FD900233AD5003C41A600000000000000000000000000000000000000
      0000000000000000000028A3F700149BF700149BF70000000000F9F4E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000387D3F001F9D2E0021A33200E4F3
      E500FFFFFF00FFFFFF002BB63D00EDF9EF00FFFFFF00FFFFFF0029AC380031B2
      420029AC3A0022A4330026A73500F5F5F500D3D3D5001B2CCF001A2BCD001F33
      D1002238D4002139D600FFFFFF00FFFFFF00FFFFFF00838FE200243DD800243C
      D6002137D4001D31D1003A3EA400000000000000000000000000000000000000
      00000000000064BEF60043AFF70024A2F700149BF70000000000F9F6E9000000
      0000A18C4700A18C470000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417E480044AA500037A84500179E
      2800E6F5E8001FA831002EB0400024AE3600ECF8EE00FFFFFF00FFFFFF001CA1
      2D0032A9410045AD510030A73E00FDFDFD00D3D3D4003C47D4003C49D2002F3F
      D1001F33D1009E9FD900FFFFFF00FFFFFF00FFFFFF00FFFEFD000D20C7002A3D
      D3003B4BD600414FD5003A3EA30000000000000000004DA64D00439143000000
      00007CBFE70078C6F600149BF70000000000149BF70000000000FBF8EF000000
      0000A18C47000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000829385004EAA570051AE5B0054B3
      5F0051B45D0050B65D0047B4560045B4530039AF4900EFF9F100FFFFFF00FFFF
      FF0046AD520051AF5B0022992D0000000000D2D2D3004B54D5004A53D3004B57
      D5009595DE00FFFFFF00FFFFFF00AEB5EE00FFFFFF00FFFFFF00FBFAFC003642
      D0004E5AD7004D58D5003A3DA2000000000000000000489C48000000000078C6
      F60094D2F80078C6F60000000000739973000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000309C3A005EB0660060B3
      680061B66A0062B86C0063BA6D0063BB6E0063BB6E0059B66400F1F8F200FFFF
      FF007FC2860063B36B002357440000000000EDEDED005C61DB00575DD300585F
      D500FFFFFF00FFFFFF00B3B8ED005C67DA00616BDB00FFFFFF00FFFFFF00A0A6
      E8005B63D7006A72DA005555AA0000000000000000000000000078C6F60078C6
      F60078C6F6000000000082BF880096CB9600A6D3A600B6DBB600B6DBB6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C7A540081BE85006CB5
      72006FB976006FBA770070BB780071BC780071BC780070BB780068B6700088C5
      8E0074B97A002E9A3700000000000000000000000000BFBFCD00777BDE00686D
      D700646AD700BFC1EF006A70DA006C73DA006C73DA006F76DB00AAADEA00696F
      D900868BDF003536B7000000000000000000000000004DA64D000000000078C6
      F6000000000065AE83008EC78E00A6D3A600BCDDBC00CDE6CD00D1E8D1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000147D1C00ABD3
      AF0083BF88007BBB80007DBE83007EBE84007EBE84007CBD82007CBC81009BCB
      9F005AAB6000C9CFCA0000000000000000000000000000000000BDBDCC008F91
      E4007C7FDB00787CDB007A7EDB007A7FDC007A7FDC007A7FDC00787CDB00A1A4
      E6003739B700000000000000000000000000000000004DA64D004DA64D000000
      00005FAD69007CBE7C0096CB9600B3D9B300CDE6CD00E2F1E200ECF5EC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002977
      31008DC29100CCE4CD00B9DABC00B2D6B400B4D7B600C3DFC500C5E0C6002B93
      3200D0D5D000000000000000000000000000000000000000000000000000BDBD
      CC00A1A2E800ACADE700ADAEE800ADAFE800ADAFE800ADAFE800BABBEB003839
      B700000000000000000000000000000000000000000031582400315824003158
      2400315824003158240031582400315824003158240031582400315824000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8AAB600106025003192370057A85C00479F4C00147E1C002B4B5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBECD004B4BA7004B4BA7004B4BA7004B4CA7004B4BA7005454AB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3FFFFFFFFF0000F00FF00FFE010000
      C007E007FE0100008003C003FE01000080018001FE01000000010001F0010000
      00010001F001000000000001F001000000000001000100000000000100030000
      000100010007000080010001000F000080038003000F0000C003C007000F0000
      E007E00F000F0000F01FF01F000F000000000000000000000000000000000000
      000000000000}
  end
  object qryCandidatorList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'plan_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'position_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CANDIDATOR_CHECK'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_CANDIDATOR_CHECK SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   STATE = :STATE,'
      '   NOTE = :NOTE,'
      '   IS_CANDIDATE = :IS_CANDIDATE'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CANDIDATOR_CHECK('
      '   EMPLOYEE_NO, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   STATE,'
      '   NOTE,'
      '   IS_CANDIDATE)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :PLAN_NO,'
      '   :POSITION_NO,'
      '   :STATE,'
      '   :NOTE,'
      '   :IS_CANDIDATE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '  hr_candidator_check.plan_no,'
      '  hr_candidator_check.position_no,'
      '  hr_candidator_check.employee_no,'
      '  hr_employee.last_name||'#39' '#39'||hr_employee.middle_name||'#39' '#39'||'
      '    hr_employee.first_name full_name,'
      '  hr_employee.gender,'
      '  hr_employee.birth_date,'
      '  hr_employee.contact_phone,'
      '  hr_employee.contact_addr,'
      '  hr_employee.email,'
      '  hr_candidator_check.state,'
      '  hr_candidator_check.note,'
      '  hr_candidator_check.is_candidate '
      'from hr_candidator_check'
      'join hr_employee on'
      '  hr_candidator_check.employee_no=hr_employee.employee_no'
      'where hr_candidator_check.plan_no=:plan_no and'
      '      hr_candidator_check.position_no=:position_no ')
    FieldOptions = []
    Left = 155
    Top = 299
    object qryCandidatorListPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
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
  end
  object dsCandidatorList: TDataSource
    DataSet = qryCandidatorList
    Left = 155
    Top = 331
  end
  object ColorDialog1: TColorDialog
    Left = 272
    Top = 96
  end
  object qryDeleteData: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'plan_no'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'delete from hr_candidator_check'
      'where plan_no=:plan_no ')
    FieldOptions = []
    Left = 227
    Top = 307
  end
  object qry: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'plan_no'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'delete from hr_candidator_check'
      'where plan_no=:plan_no ')
    FieldOptions = []
    Left = 299
    Top = 307
  end
  object qryCheckCandidator: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHECK_CANDIDATOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHECK_EMPLOYEE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GET_INVALID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'THEO_BANGCAP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'THEO_KINHNGHIEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOAN_TU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOC_LAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOAI_UNGVIEN'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      
        'execute procedure HR_SP_CHECK_CANDIDATOR(:PLAN_NO,:CHECK_CANDIDA' +
        'TOR,:CHECK_EMPLOYEE,:GET_INVALID,:THEO_BANGCAP,:THEO_KINHNGHIEM,' +
        ':TOAN_TU, :LOC_LAI, :LOAI_UNGVIEN)')
    FieldOptions = []
    Left = 339
    Top = 307
  end
  object rpCheck: TppReport
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
    Left = 552
    Top = 344
    Version = '7.0'
    mmColumnWidth = 0
  end
  object dsnCheck: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpCheck
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 552
    Top = 376
  end
  object qryDSUngVien: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end>
    Active = True
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsRecruitmentPlan
    SQL.Strings = (
      'SELECT KEHOACH_TUYENDUNG,'
      '    NGAY_BD_TUYENDUNG,'
      '    NGAY_KT_TUYENDUNG,'
      '    MA_UNGVIEN,'
      '    HOTEN_UNGVIEN,'
      '    NGAY_SINH,'
      '    GIOI_TINH,'
      '    TINHTRANG_HONNHAN,'
      '    SO_CMND,'
      '    NOICAP_CMND,'
      '    NOI_SINH,'
      '    QUE_QUAN,'
      '    DIACHI_LIENHE,'
      '    DIACHI_THUONGTRU,'
      '    SO_DIENTHOAI,'
      '    SO_DIDONG,'
      '    EMAIL,'
      '    TINH_LIENHE,'
      '    CHIEU_CAO,'
      '    CAN_NANG,'
      '    TRINHDO_VANHOA,'
      '    TRINH_DO,'
      '    CHUYEN_NGANH,'
      '    CHUYENMON_DAOTAO,'
      '    NAM_TOTNGHIEP,'
      '    DIEM_TOTNGHIEP,'
      '    NANG_KHIEU,'
      '    SOTRUONG_CTAC,'
      '    CHUCDANH_UNGTUYEN,'
      '    DONVI_UNGTUYEN,'
      '    VITRI_UNGTUYEN,'
      '    NGAY_NOP_HOSO,'
      '    NGOAI_NGU,'
      '    VI_TINH'
      'FROM HR_CANDIDATOR_VIEW(:PLAN_NO)'
      'ORDER BY MA_UNGVIEN')
    FieldOptions = []
    Left = 507
    Top = 347
    object qryDSUngVienKEHOACH_TUYENDUNG: TWideStringField
      FieldName = 'KEHOACH_TUYENDUNG'
      Size = 126
    end
    object qryDSUngVienNGAY_BD_TUYENDUNG: TDateField
      FieldName = 'NGAY_BD_TUYENDUNG'
    end
    object qryDSUngVienNGAY_KT_TUYENDUNG: TDateField
      FieldName = 'NGAY_KT_TUYENDUNG'
    end
    object qryDSUngVienMA_UNGVIEN: TWideStringField
      FieldName = 'MA_UNGVIEN'
      Size = 30
    end
    object qryDSUngVienHOTEN_UNGVIEN: TWideStringField
      FieldName = 'HOTEN_UNGVIEN'
      Size = 126
    end
    object qryDSUngVienNGAY_SINH: TDateField
      FieldName = 'NGAY_SINH'
    end
    object qryDSUngVienGIOI_TINH: TIntegerField
      FieldName = 'GIOI_TINH'
    end
    object qryDSUngVienTINHTRANG_HONNHAN: TWideStringField
      FieldName = 'TINHTRANG_HONNHAN'
      Size = 126
    end
    object qryDSUngVienSO_CMND: TWideStringField
      FieldName = 'SO_CMND'
      Size = 30
    end
    object qryDSUngVienNOICAP_CMND: TWideStringField
      FieldName = 'NOICAP_CMND'
      Size = 126
    end
    object qryDSUngVienNOI_SINH: TWideStringField
      FieldName = 'NOI_SINH'
      Size = 255
    end
    object qryDSUngVienQUE_QUAN: TWideStringField
      FieldName = 'QUE_QUAN'
      Size = 255
    end
    object qryDSUngVienDIACHI_LIENHE: TWideStringField
      FieldName = 'DIACHI_LIENHE'
      Size = 255
    end
    object qryDSUngVienDIACHI_THUONGTRU: TWideStringField
      FieldName = 'DIACHI_THUONGTRU'
      Size = 255
    end
    object qryDSUngVienSO_DIENTHOAI: TWideStringField
      FieldName = 'SO_DIENTHOAI'
      Size = 30
    end
    object qryDSUngVienSO_DIDONG: TWideStringField
      FieldName = 'SO_DIDONG'
      Size = 30
    end
    object qryDSUngVienEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object qryDSUngVienTINH_LIENHE: TWideStringField
      FieldName = 'TINH_LIENHE'
      Size = 126
    end
    object qryDSUngVienCHIEU_CAO: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object qryDSUngVienCAN_NANG: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object qryDSUngVienTRINHDO_VANHOA: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 126
    end
    object qryDSUngVienTRINH_DO: TWideStringField
      FieldName = 'TRINH_DO'
      Size = 126
    end
    object qryDSUngVienCHUYEN_NGANH: TWideStringField
      FieldName = 'CHUYEN_NGANH'
      Size = 126
    end
    object qryDSUngVienCHUYENMON_DAOTAO: TWideStringField
      FieldName = 'CHUYENMON_DAOTAO'
      Size = 255
    end
    object qryDSUngVienNAM_TOTNGHIEP: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryDSUngVienDIEM_TOTNGHIEP: TIBOFloatField
      FieldName = 'DIEM_TOTNGHIEP'
    end
    object qryDSUngVienNANG_KHIEU: TWideStringField
      FieldName = 'NANG_KHIEU'
      Size = 255
    end
    object qryDSUngVienSOTRUONG_CTAC: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object qryDSUngVienCHUCDANH_UNGTUYEN: TWideStringField
      FieldName = 'CHUCDANH_UNGTUYEN'
      Size = 126
    end
    object qryDSUngVienDONVI_UNGTUYEN: TWideStringField
      FieldName = 'DONVI_UNGTUYEN'
      Size = 126
    end
    object qryDSUngVienVITRI_UNGTUYEN: TWideStringField
      FieldName = 'VITRI_UNGTUYEN'
      Size = 126
    end
    object qryDSUngVienNGAY_NOP_HOSO: TDateField
      FieldName = 'NGAY_NOP_HOSO'
    end
    object qryDSUngVienNGOAI_NGU: TWideStringField
      FieldName = 'NGOAI_NGU'
      Size = 255
    end
    object qryDSUngVienVI_TINH: TWideStringField
      FieldName = 'VI_TINH'
      Size = 255
    end
  end
  object dsDSUngVien: TDataSource
    DataSet = qryDSUngVien
    Left = 507
    Top = 378
  end
  object ppDSUngVien: TppDBPipeline
    DataSource = dsDSUngVien
    UserName = 'DanhSachUngVien'
    Left = 507
    Top = 411
    object ppDSUngVienppField1: TppField
      FieldAlias = 'KEHOACH_TUYENDUNG'
      FieldName = 'KEHOACH_TUYENDUNG'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDSUngVienppField2: TppField
      FieldAlias = 'NGAY_BD_TUYENDUNG'
      FieldName = 'NGAY_BD_TUYENDUNG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDSUngVienppField3: TppField
      FieldAlias = 'NGAY_KT_TUYENDUNG'
      FieldName = 'NGAY_KT_TUYENDUNG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDSUngVienppField4: TppField
      FieldAlias = 'MA_UNGVIEN'
      FieldName = 'MA_UNGVIEN'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppDSUngVienppField5: TppField
      FieldAlias = 'HOTEN_UNGVIEN'
      FieldName = 'HOTEN_UNGVIEN'
      FieldLength = 126
      DisplayWidth = 126
      Position = 4
    end
    object ppDSUngVienppField6: TppField
      FieldAlias = 'NGAY_SINH'
      FieldName = 'NGAY_SINH'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppDSUngVienppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'GIOI_TINH'
      FieldName = 'GIOI_TINH'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDSUngVienppField8: TppField
      FieldAlias = 'TINHTRANG_HONNHAN'
      FieldName = 'TINHTRANG_HONNHAN'
      FieldLength = 126
      DisplayWidth = 126
      Position = 7
    end
    object ppDSUngVienppField9: TppField
      FieldAlias = 'SO_CMND'
      FieldName = 'SO_CMND'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object ppDSUngVienppField10: TppField
      FieldAlias = 'NOICAP_CMND'
      FieldName = 'NOICAP_CMND'
      FieldLength = 126
      DisplayWidth = 126
      Position = 9
    end
    object ppDSUngVienppField11: TppField
      FieldAlias = 'NOI_SINH'
      FieldName = 'NOI_SINH'
      FieldLength = 255
      DisplayWidth = 255
      Position = 10
    end
    object ppDSUngVienppField12: TppField
      FieldAlias = 'QUE_QUAN'
      FieldName = 'QUE_QUAN'
      FieldLength = 255
      DisplayWidth = 255
      Position = 11
    end
    object ppDSUngVienppField13: TppField
      FieldAlias = 'DIACHI_LIENHE'
      FieldName = 'DIACHI_LIENHE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 12
    end
    object ppDSUngVienppField14: TppField
      FieldAlias = 'DIACHI_THUONGTRU'
      FieldName = 'DIACHI_THUONGTRU'
      FieldLength = 255
      DisplayWidth = 255
      Position = 13
    end
    object ppDSUngVienppField15: TppField
      FieldAlias = 'SO_DIENTHOAI'
      FieldName = 'SO_DIENTHOAI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppDSUngVienppField16: TppField
      FieldAlias = 'SO_DIDONG'
      FieldName = 'SO_DIDONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object ppDSUngVienppField17: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 63
      DisplayWidth = 63
      Position = 16
    end
    object ppDSUngVienppField18: TppField
      FieldAlias = 'TINH_LIENHE'
      FieldName = 'TINH_LIENHE'
      FieldLength = 126
      DisplayWidth = 126
      Position = 17
    end
    object ppDSUngVienppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHIEU_CAO'
      FieldName = 'CHIEU_CAO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDSUngVienppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_NANG'
      FieldName = 'CAN_NANG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDSUngVienppField21: TppField
      FieldAlias = 'TRINHDO_VANHOA'
      FieldName = 'TRINHDO_VANHOA'
      FieldLength = 126
      DisplayWidth = 126
      Position = 20
    end
    object ppDSUngVienppField22: TppField
      FieldAlias = 'TRINH_DO'
      FieldName = 'TRINH_DO'
      FieldLength = 126
      DisplayWidth = 126
      Position = 21
    end
    object ppDSUngVienppField23: TppField
      FieldAlias = 'CHUYEN_NGANH'
      FieldName = 'CHUYEN_NGANH'
      FieldLength = 126
      DisplayWidth = 126
      Position = 22
    end
    object ppDSUngVienppField24: TppField
      FieldAlias = 'CHUYENMON_DAOTAO'
      FieldName = 'CHUYENMON_DAOTAO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 23
    end
    object ppDSUngVienppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'NAM_TOTNGHIEP'
      FieldName = 'NAM_TOTNGHIEP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDSUngVienppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIEM_TOTNGHIEP'
      FieldName = 'DIEM_TOTNGHIEP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppDSUngVienppField27: TppField
      FieldAlias = 'NANG_KHIEU'
      FieldName = 'NANG_KHIEU'
      FieldLength = 255
      DisplayWidth = 255
      Position = 26
    end
    object ppDSUngVienppField28: TppField
      FieldAlias = 'SOTRUONG_CTAC'
      FieldName = 'SOTRUONG_CTAC'
      FieldLength = 255
      DisplayWidth = 255
      Position = 27
    end
    object ppDSUngVienppField29: TppField
      FieldAlias = 'CHUCDANH_UNGTUYEN'
      FieldName = 'CHUCDANH_UNGTUYEN'
      FieldLength = 126
      DisplayWidth = 126
      Position = 28
    end
    object ppDSUngVienppField30: TppField
      FieldAlias = 'DONVI_UNGTUYEN'
      FieldName = 'DONVI_UNGTUYEN'
      FieldLength = 126
      DisplayWidth = 126
      Position = 29
    end
    object ppDSUngVienppField31: TppField
      FieldAlias = 'VITRI_UNGTUYEN'
      FieldName = 'VITRI_UNGTUYEN'
      FieldLength = 126
      DisplayWidth = 126
      Position = 30
    end
    object ppDSUngVienppField32: TppField
      FieldAlias = 'NGAY_NOP_HOSO'
      FieldName = 'NGAY_NOP_HOSO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 31
    end
    object ppDSUngVienppField33: TppField
      FieldAlias = 'NGOAI_NGU'
      FieldName = 'NGOAI_NGU'
      FieldLength = 255
      DisplayWidth = 255
      Position = 32
    end
    object ppDSUngVienppField34: TppField
      FieldAlias = 'VI_TINH'
      FieldName = 'VI_TINH'
      FieldLength = 255
      DisplayWidth = 255
      Position = 33
    end
  end
end
