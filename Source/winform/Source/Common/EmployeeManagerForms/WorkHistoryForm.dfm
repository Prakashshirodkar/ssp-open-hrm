inherited frmWorkHistory: TfrmWorkHistory
  Left = 212
  Top = 179
  Width = 701
  Height = 504
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 451
    Width = 693
  end
  object pageTop: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 693
    Height = 273
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
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabTop
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alTop
    ParentColor = False
    TabOrder = 1
    object tabTop: TElTabSheet
      PageControl = pageTop
      ImageIndex = 0
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh c'#244'ng t'#225'c t'#7841'i t'#7893' ch'#7913'c'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 693
        Height = 249
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object gridWorkChange: TdxDBGrid
          Left = 10
          Top = 10
          Width = 688
          Height = 199
          Bands = <
            item
              Caption = #193'p d'#7909'ng theo v'#259'n b'#7843'n'
              Width = 272
            end
            item
              Caption = 'V'#7883' tr'#237' c'#244'ng t'#225'c'
              Width = 230
            end
            item
              Caption = 'Tr'#7841'ng th'#225'i'
              Width = 184
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 2
          KeyField = 'DOC_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          OnDblClick = acDetailExecute
          DataSource = EmpInfoDM.dsEmpWorkChange
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          OnCustomDraw = gridWorkChangeCustomDraw
          object gridWorkChangeDOC_NO: TdxDBGridMaskColumn
            Caption = 'M'#227' v'#259'n b'#7843'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 165
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOC_NO'
            Caption_UTF7 = 'M+AOM v+AQM-n b+HqM-n'
          end
          object gridWorkChangeDOC_NAME: TdxDBGridMaskColumn
            Caption = 'Ti'#234'u '#273#7873' v'#259'n b'#7843'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 272
            BandIndex = 0
            RowIndex = 1
            FieldName = 'DOC_NAME'
            Caption_UTF7 = 'Ti+AOo-u +AREewQ v+AQM-n b+HqM-n'
            StoredRowIndex = 1
          end
          object gridWorkChangeDOC_TYPE: TdxDBGridImageColumn
            Alignment = taRightJustify
            Caption = 'Lo'#7841'i v'#259'n b'#7843'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOC_TYPE'
            Descriptions.WideStrings = (
              'H'#7907'p '#273#7891'ng'
              'Quy'#7871't '#273#7883'nh')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            Caption_UTF7 = 'Lo+HqE-i v+AQM-n b+HqM-n'
          end
          object gridWorkChangeTITLE_NAME: TdxDBGridMaskColumn
            Caption = 'Ch'#7913'c v'#7909
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 230
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c v+HuU'
          end
          object gridWorkChangeDEPT_NAME: TdxDBGridMaskColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 230
            BandIndex = 1
            RowIndex = 1
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
            StoredRowIndex = 1
          end
          object gridWorkChangeIS_MAIN_POSITION: TdxDBGridCheckColumn
            Alignment = taCenter
            Caption = 'V'#7883' tr'#237' ch'#237'nh?'
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 104
            BandIndex = 2
            RowIndex = 0
            FieldName = 'IS_MAIN_POSITION'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'V+Hss tr+AO0 ch+AO0-nh?'
          end
          object gridWorkChangeASSIGNED_DATE: TdxDBGridDateColumn
            Alignment = taCenter
            Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 108
            BandIndex = 2
            RowIndex = 1
            FieldName = 'ASSIGNED_DATE'
            Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
            StoredRowIndex = 1
          end
          object gridWorkChangeIS_DISMISSED: TdxDBGridCheckColumn
            Alignment = taCenter
            Caption = #272#227' ngh'#7881'?'
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 92
            BandIndex = 2
            RowIndex = 0
            FieldName = 'IS_DISMISSED'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = '+ARAA4w ngh+Hsk?'
          end
          object gridWorkChangeDISMISSED_DATE: TdxDBGridDateColumn
            Alignment = taCenter
            Caption = 'Ng'#224'y ngh'#7881
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 2
            RowIndex = 1
            FieldName = 'DISMISSED_DATE'
            Caption_UTF7 = 'Ng+AOA-y ngh+Hsk'
            StoredRowIndex = 1
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'gridWorkChange'
            ShowCaption = False
            Control = gridWorkChange
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object pageBottom: TElPageControl [2]
    Left = 0
    Top = 278
    Width = 693
    Height = 127
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
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabBottom
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
    object tabBottom: TElTabSheet
      PageControl = pageBottom
      ImageIndex = 1
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh c'#244'ng t'#225'c tr'#432#7899'c '#273#226'y'
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 693
        Height = 103
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object gridWorkHistory: TdxDBGrid
          Left = 10
          Top = 10
          Width = 688
          Height = 161
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KEY_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = EmpInfoDM.dsEmpWorkHistory
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          object gridWorkHistoryFROM_DATE: TdxDBGridDateColumn
            Caption = 'T'#7915' ng'#224'y '
            HeaderAlignment = taCenter
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FROM_DATE'
            Caption_UTF7 = 'T+Hus ng+AOA-y '
          end
          object gridWorkHistoryTO_DATE: TdxDBGridDateColumn
            Caption = #273#7871'n ng'#224'y '
            HeaderAlignment = taCenter
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TO_DATE'
            Caption_UTF7 = '+AREevw-n ng+AOA-y '
          end
          object gridWorkHistoryWORK_JOB: TdxDBGridColumn
            Caption = 'C'#244'ng vi'#7879'c/v'#7883' tr'#237' '#273#227' l'#224'm '
            HeaderAlignment = taCenter
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WORK_JOB'
            Caption_UTF7 = 'C+APQ-ng vi+Hsc-c/v+Hss tr+AO0 +AREA4w l+AOA-m '
          end
          object gridWorkHistoryWORK_PLACE: TdxDBGridColumn
            Caption = 'N'#417'i l'#224'm vi'#7879'c '
            HeaderAlignment = taCenter
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WORK_PLACE'
            Caption_UTF7 = 'N+AaE-i l+AOA-m vi+Hsc-c '
          end
          object gridWorkHistoryPLACE_ADDR: TdxDBGridColumn
            Caption = #272#7883'a ch'#7881
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLACE_ADDR'
            Caption_UTF7 = '+ARAeyw-a ch+Hsk'
          end
          object gridWorkHistoryWORK_FIELD: TdxDBGridColumn
            Caption = 'L'#297'nh v'#7921'c ho'#7841't '#273#7897'ng'
            HeaderAlignment = taCenter
            Width = 177
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WORK_FIELD'
            Caption_UTF7 = 'L+ASk-nh v+HvE-c ho+HqE-t +AREe2Q-ng'
          end
          object gridWorkHistoryCONTACT_PERSON: TdxDBGridColumn
            Caption = 'Ng'#432#7901'i li'#234'n h'#7879
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTACT_PERSON'
            Caption_UTF7 = 'Ng+AbAe3Q-i li+AOo-n h+Hsc'
          end
          object gridWorkHistoryPLACE_PHONE: TdxDBGridColumn
            Caption = 'S'#7889' '#273'i'#7879'n tho'#7841'i'
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PLACE_PHONE'
            Caption_UTF7 = 'S+HtE +ARE-i+Hsc-n tho+HqE-i'
          end
          object gridWorkHistoryNOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 167
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'gridWorkHistory'
            ShowCaption = False
            Control = gridWorkHistory
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [3]
    Left = 0
    Top = 273
    Width = 693
    Height = 5
    Cursor = crVSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageTop
    ControlBottomRight = pageBottom
    AutoHide = False
    Align = alTop
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  inline frameToolbar1: TframeToolbar [4]
    Left = 0
    Top = 405
    Width = 693
    Height = 46
    Align = alBottom
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 693
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
        Caption = 'Qu'#225' tr'#236'nh c'#244'ng t'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 88
  end
  object ImageList1: TImageList
    Left = 56
    Top = 88
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000576F7E00576F7E006A7981006A7981006A798100AEB0B000576F7E00576F
      7E00576F7E006A7981006A7981004D595E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009AE0FF00A8DAF800BAE5FC00D3ECFA00E6F8FE00A5A7A7009AE0FF00A8DA
      F800BAE5FC00D3ECFA00DAF3FE008C8C8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8B000B0B0B000B0B
      0B00A7E2FF00C4E9FD00C4E9FD00DAF3FE00F2FDFF00A5A7A700A7E2FF00B3E0
      FB00CBF0FF00C7DBE900E6F8FE008C8C8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008BF6FF004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D595E00E6E1DD00FEF9F400F0DC
      D000A7E2FF000B0B0B0026302E00CBD3D800F2FDFF00A5A7A700BAE5FC00BAE5
      FC000B0B0B0026302E00E6F8FE008C8C8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E9F1008BF6FF008BF6FF004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6EDE700FEFFFE00FEF9F400F2E2
      D800C4E9FD00464C4E0026302E00FEFFFE00FEFFFE00464C4E00CBF0FF00CBF0
      FF004D595E0026302E00FEFFFE008C8C8B000000000000000000000000000000
      000000000000000000000000000000000000000000008BF6FF008BF6FF008BF6
      FF008BF6FF008BF6FF008BF6FF004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6EDE700D9D4D100FBF4EF00F2E2
      D8006D8FB2006CB7EB0093CEF500464C4E00B8DBEF006A9D63006D8FB2004684
      B0006CB7EB0093CEF500B8DBEF00838583000000000000000000000000000000
      000000000000000000000000000000000000000000008BF6FF008BF6FF008BF6
      FF008BF6FF008BF6FF008BF6FF004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B9C9A00A27D6B00C9B8AE007D54
      3E00C49E7F00C49E7F00718454006A9D63007FB9740096CB9600B6E0B3007184
      5400B3D7AA005A715100000000000000000000000000201F2300146E760000F2
      FF0000F2FF0000F2FF004690070003D1F100000000008BF6FF008BF6FF008BF6
      FF008BF6FF008BF6FF008BF6FF004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000755D5000EAA40C00EDAF
      2C00E2BE8300996A50005A71510083C2840035473B00B3D7AA0026302E00C1E0
      C000C1E0C0006C766F00000000000000000000000000201F230018545A0000F2
      FF0000F2FF0000F2FF004690070000E1FF0009CDF10017A4C8002296C7003EC0
      F2004B5865008BF6FF008BF6FF004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A27D6B00EAA40C00EDAF
      2C00EDAF2C00EDAF2C008DA161008BC68D008BC68D0002E6E7004D595E00D0E8
      D000D7ECD5006C766F0000000000000000000000000000000000201F23001EA9
      B70000F2FF0000F2FF004690070003D1F10003DBFF0010D3FF003EC0F2000000
      0000B5BCBE004B5865008BF6FF004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0958500EEB84A00F2C3
      6100F2C36100F2C361008DA161008BC68D00A6CC9F0032CBC300C1E0C000DEF0
      DE00E8F6E80083858300000000000000000000000000000000006C6C6C006940
      280032757E00208D8F004690070006BBD60006BBD6000BD6FF00000000000000
      000000000000000000007BCBD3004B5865000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1C3C300C49E7F00F2C36100F4CC
      7900F3D29000F3D2900084A7780096CB9600B3D7AA00C1E0C000D7ECD500E8F6
      E800FEFFFE0083858300000000000000000000000000000000002BA4F1002BA4
      F1002BA4F1005B95BF0090C9F40090C9F4004B58650000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B9C9A00D7AD6F00F3D29000F8DD
      A300F9E3B700F9E3B7009592900040882B006A9D630083C28400A6CC9F00B6E0
      B300D7ECD50073857100000000000000000000000000000000002BA4F1002BA4
      F1002BA4F10090C9F40090C9F40090C9F400201F230000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083858300E2BE8300F8DDA300FBEA
      C700FCF0D600FCF0D600FCF0D600F9E3B700755D500000000000000000000000
      00000000000000000000000000000000000000000000000000002BA4F1002BA4
      F1002BA4F10090C9F40090C9F40090C9F400201F23002F2E3100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000095929000CD987100F3D29000F2E2
      D800FEFFFE00FEFFFE00FEF7E600FBEAC700755D500000000000000000000000
      00000000000000000000000000000000000000000000000000002BA4F1002127
      3000272A300090C9F400201F2300353F4A00201F2300201F2300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEB0B000E6E1DD00D3CECA00AA88
      76009D5D37009D5D3700C2876200D7AE8A006A65610000000000000000000000
      00000000000000000000000000000000000000000000000000004C4B4F00201F
      2300201F2300201F2300201F2300201F2300201F230000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1C3
      C3009B9C9A008C8C8B00B3A19600B3A1960084766F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F000FFFF00000000F000FFFC00000000
      8000FFE0000000000000FF00000000000000FF00000000000000000000000000
      0003000000000000800300000000000080038000000000008003C01C00000000
      0003C03F000000000003C03F00000000007FC03F00000000007FC03F00000000
      007FC03F00000000E07FF07F0000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Left = 192
    Top = 160
    object acDetail: TAction
      Caption = 'acDetail'
      OnExecute = acDetailExecute
      OnUpdate = acDetailUpdate
    end
  end
end
