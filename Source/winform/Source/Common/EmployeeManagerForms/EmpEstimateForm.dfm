inherited frmEmpEstimate: TfrmEmpEstimate
  Left = 201
  Top = 189
  Width = 697
  Height = 522
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 469
    Width = 689
  end
  object pageMain: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 689
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
    ActivePage = pageEstimate
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
    object pageEstimate: TElTabSheet
      PageControl = pageMain
      ImageIndex = 0
      TabVisible = True
      Caption = #272#225'nh gi'#225' thi '#273'ua trong k'#7923
      object gridEstimate: TdxDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 249
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEM_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = EmpInfoDM.dsEstimate
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridEstimateSTAGE_NO: TdxDBGridColumn
          Caption = 'M'#227' '#273#7907't'
          Color = 14540287
          HeaderAlignment = taCenter
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STAGE_NO'
          Caption_UTF7 = 'M+AOM +AREe4w-t'
        end
        object gridEstimateSTAGE_NAME: TdxDBGridColumn
          Caption = #272#7907't '#273#225'nh gi'#225
          Color = 14540287
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 140
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STAGE_NAME'
          GroupIndex = 0
          Caption_UTF7 = '+ARAe4w-t +AREA4Q-nh gi+AOE'
        end
        object gridEstimateITEM_NO: TdxDBGridColumn
          Caption = 'M'#227' ti'#234'u ch'#237
          HeaderAlignment = taCenter
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NO'
          Caption_UTF7 = 'M+AOM ti+AOo-u ch+AO0'
        end
        object gridEstimateITEM_NAME: TdxDBGridColumn
          Caption = 'Ti'#234'u ch'#237' '#273#225'nh gi'#225
          HeaderAlignment = taCenter
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Ti+AOo-u ch+AO0 +AREA4Q-nh gi+AOE'
        end
        object gridEstimateLEVEL_NAME: TdxDBGridColumn
          Caption = 'M'#7913'c '#273'i'#7875'm '#273#7841't '#273#432#7907'c'
          Color = 16643566
          HeaderAlignment = taCenter
          Width = 140
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEVEL_NAME'
          Caption_UTF7 = 'M+Huk-c +ARE-i+HsM-m +AREeoQ-t +AREBsB7j-c'
        end
        object gridEstimateESTIMATE_MARK: TdxDBGridColumn
          Alignment = taCenter
          Caption = #272'i'#7875'm'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ESTIMATE_MARK'
          Caption_UTF7 = '+ARA-i+HsM-m'
        end
      end
    end
    object pageSummary: TElTabSheet
      PageControl = pageMain
      ImageIndex = 1
      TabVisible = True
      Caption = 'T'#7893'ng k'#7871't '#273#225'nh gi'#225' thi '#273'ua'
      Visible = False
      object gridEstimateSummary: TdxDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 249
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEM_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = EmpInfoDM.dsEstimateSummary
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridEstimateSummarySTAGE_NO: TdxDBGridColumn
          Caption = 'M'#227' '#273#7907't'
          Color = 14540287
          HeaderAlignment = taCenter
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STAGE_NO'
          Caption_UTF7 = 'M+AOM +AREe4w-t'
        end
        object gridEstimateSummarySTAGE_NAME: TdxDBGridColumn
          Caption = #272#7907't t'#7893'ng k'#7871't '#273#225'nh gi'#225
          Color = 14540287
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STAGE_NAME'
          GroupIndex = 0
          Caption_UTF7 = '+ARAe4w-t t+HtU-ng k+Hr8-t +AREA4Q-nh gi+AOE'
        end
        object gridEstimateSummaryITEM_NO: TdxDBGridColumn
          Caption = 'M'#227' ti'#234'u ch'#237
          HeaderAlignment = taCenter
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NO'
          Caption_UTF7 = 'M+AOM ti+AOo-u ch+AO0'
        end
        object gridEstimateSummaryITEM_NAME: TdxDBGridColumn
          Caption = 'Ti'#234'u ch'#237' '#273#225'nh gi'#225
          HeaderAlignment = taCenter
          Width = 146
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM_NAME'
          Caption_UTF7 = 'Ti+AOo-u ch+AO0 +AREA4Q-nh gi+AOE'
        end
        object gridEstimateSummaryLEVEL_NAME: TdxDBGridColumn
          Caption = 'M'#7913'c '#273#225'nh gi'#225' '#273#7841't '#273#432#7907'c'
          Color = 16641761
          HeaderAlignment = taCenter
          Width = 140
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEVEL_NAME'
          Caption_UTF7 = 'M+Huk-c +AREA4Q-nh gi+AOE +AREeoQ-t +AREBsB7j-c'
        end
        object gridEstimateSummaryESTIMATE_MARK: TdxDBGridColumn
          Caption = #272'i'#7875'm'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ESTIMATE_MARK'
          Caption_UTF7 = '+ARA-i+HsM-m'
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 0
    Top = 273
    Width = 689
    Height = 9
    Cursor = crVSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageMain
    AutoHide = False
    ShowSnapButton = True
    Align = alTop
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object pageBottom: TElPageControl [3]
    Left = 0
    Top = 282
    Width = 689
    Height = 187
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
    ActivePage = tabTraining
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
    TabOrder = 3
    object tabTraining: TElTabSheet
      PageControl = pageBottom
      ImageIndex = 2
      TabVisible = True
      Caption = 'Qu'#225' tr'#236'nh '#273#224'o t'#7841'o - hu'#7845'n luy'#7879'n'
      object gridTraining: TdxDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 163
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CLASS_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = EmpInfoDM.dsTraining
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        object gridTrainingCLASS_NO: TdxDBGridColumn
          Caption = 'M'#227' l'#7899'p'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLASS_NO'
          Caption_UTF7 = 'M+AOM l+Hts-p'
        end
        object gridTrainingPLAN_NAME: TdxDBGridColumn
          Caption = 'Theo k'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
          DisableEditor = True
          HeaderAlignment = taCenter
          Sorted = csUp
          Visible = False
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NAME'
          GroupIndex = 0
          Caption_UTF7 = 'Theo k+Hr8 ho+HqE-ch +AREA4A-o t+HqE-o'
        end
        object gridTrainingEDU_FIELD_NAME: TdxDBGridColumn
          Caption = 'Chuy'#234'n m'#244'n '#273#224'o t'#7841'o'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 133
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EDU_FIELD_NAME'
          Caption_UTF7 = 'Chuy+AOo-n m+APQ-n +AREA4A-o t+HqE-o'
        end
        object gridTrainingFIELD_LEVEL_NAME: TdxDBGridColumn
          Caption = 'Ch'#7913'ng ch'#7881' '#273#7841't '#273#432#7907'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIELD_LEVEL_NAME'
          Caption_UTF7 = 'Ch+Huk-ng ch+Hsk +AREeoQ-t +AREBsB7j-c'
        end
        object gridTrainingSTART_DATE: TdxDBGridDateColumn
          Caption = 'B'#7855't '#273#7847'u'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'START_DATE'
          Caption_UTF7 = 'B+Hq8-t +AREepw-u'
        end
        object gridTrainingEND_DATE: TdxDBGridDateColumn
          Caption = 'K'#7871't th'#250'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'END_DATE'
          Caption_UTF7 = 'K+Hr8-t th+APo-c'
        end
        object gridTrainingALLOWANCE: TdxDBGridColumn
          Caption = 'Chi ph'#237
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ALLOWANCE'
          Caption_UTF7 = 'Chi ph+AO0'
        end
        object gridTrainingCURRENCY_NAME: TdxDBGridColumn
          Caption = 'Ti'#7873'n t'#7879
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CURRENCY_NAME'
          Caption_UTF7 = 'Ti+HsE-n t+Hsc'
        end
        object gridTrainingRESULT_NAME: TdxDBGridColumn
          Caption = 'K'#7871't qu'#7843' '#273#224'o t'#7841'o'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RESULT_NAME'
          Caption_UTF7 = 'K+Hr8-t qu+HqM +AREA4A-o t+HqE-o'
        end
        object gridTrainingNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
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
        Caption = #272#225'nh gi'#225' thi '#273'ua'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ImageList1: TImageList
    Left = 64
    Top = 150
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000B9BA
      BB00A3A4A600A3A4A60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A4A6007563
      2C00B49745006D63510000000000000000000000000000000000000000000000
      0000A3A4A600424B530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5C5C500201F230018545A0000F2FF0000F2FF00355C1400355C140011BD
      E4001ACAFF0022C0FE002BAAFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000068676A00E2E1
      DF00F7EBD3006D635100D3CEC8006D6C6F000000000000000000AEAFB0005761
      690043607300262A30004F768E00B9BABB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B9BABB006759
      2F00837044003A363300201F230002E5F10000F2FF0000F2FF001771730002DC
      FF0011D2FF001ACAFF0044ACE200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C5C5007B7A
      7D0058575A00C8B38900F7EBD300D2CDC4006D6C6F00000000004E6B7E007DCD
      F8007DCDF8004F768E0077C2EB006C6C6C000000000002AFBF0015B1D3000000
      0000FFFEFD00EAE7DB004843310077766B006263530048433100E7D7A000E7D7
      A0000000000000000000806B23000000000000000000000000007E7E8000E5D2
      AA00E4BD45006C603F00201F2300127B830002E5F10004D8E4001A444C0004C8
      E4000AD7FF001ACAFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A3A4
      A6008F7A4700EACB7B00F1DCB200F5E6CA00A4A0A000424B53007DCDF8007DCD
      F8007DCDF8007DCDF8004256630098999B000000000002DBEF001BC8EF000000
      0000FFFEFD00212F1C00A1C79300EAF3E800C9E4C9007DAE7D00212F1C00E7D7
      A00000000000E7D7A0000000000000000000000000000000000085868800D4D3
      D200DBD0B9008A82760072706F0030242100214D640018545A00165A68001466
      76000E9FBA006ECDE40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAFB0007361
      2100E2B72600E4BE5600DFC58B00D6C29A003941480077C2EB00496B80006CAC
      D0007DCDF8006097B500B9BABB000000000000000000039EBF001BC5EF000000
      0000FFFEFD0000000000A1C79300EAF3E800C9E4C9008CC68C0000000000F2E9
      CB00EEE1BA00E9D9A60000000000000000000000000000000000000000007E7E
      800055514B00E2CA9900817F7F002A485E002A9CE4002772A40082B4DA004A5F
      7100757475000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C500E0C68E00E8C6
      7400E4BC4600D4A91000201F2300201F2300201F2300201F2300201F2300374B
      58004F768E008585850000000000000000000000000005B9EF001CBAEF000000
      0000FFFEFD0000000000A1C79300EAF3E800C9E4C9008CC68C0000000000F8F4
      E500F5EDD600EEE1BA00000000000000000000000000000000008D8E9000987B
      1400E1B41400E4BC4A00266A97002A9CE400283A4A0082B4DA006689A600272A
      3000201F2300A3A4A60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062616400F2DFBA00EED5
      9C00E9CA8000E5BF590080671200201F23006097B500374B5800201F2300201F
      2300201F2300201F23008D8E90000000000000000000058ABF001DB3EE000000
      0000FFFEFD0000000000A1C79300EAF3E800C9E4C9008CC68C0000000000FDFB
      F500F8F4E500F5EDD600000000000000000000000000000000009E8B6000E5BF
      5700E1B41800E0B2080022384A0021273000201F230058748C00201F2300272A
      3000201F23008886870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008D8E9000C5C5C500DCD2C1006F66
      5A00F1DCB100EBCD8B00E3BA3700BC960A003D4949006CACD0006CACD0005A8C
      A80036353900454545007B7A7D000000000000000000000000001EACEE000000
      0000000000000000000062635300A1A79F0097AB970062635300000000000000
      00000000000000000000000000000000000000000000AEAFB000F0DBAE00ECCF
      8E00E6C36800E2B72C00201F2300201F2300201F2300353F4A00201F2300201F
      2300201F23007574750000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000085858500FFFDFB00706A6000BCAB
      8A007C746700F1DCB200E8C67400E4BC4600D4A90F00987A0D007B7A7D007B7A
      7D00AEAFB00000000000C5C5C50000000000000000000A9AFE0024A7EF000000
      00000000000000000000A1C79300EAF3E800C9E4C9008CC68C00000000000000
      000000000000000000000000000000000000000000006C6C6C00E8DCC600B0A1
      8500EDD39A00E8C6750068571F0050431A0038322200201F2300201F2300201F
      23002C2C2C00AEAFB00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5C5C5005D5C5F00F1DCB200E6C1
      5600E2B82F00C3A96A00E6D5B600F1DCB100C5AC76006C6C6C00000000000000
      000000000000000000000000000000000000000000000965BF0034A5F1000000
      00000000000000000000A1C79300EAF3E800C9E4C9008CC68C00000000000000
      0000000000000000000000000000000000008D8E90009D9B9B009B823800E5C0
      5200A08F6D00A4998600ECCF8E00E6C26700D6AE2A006F685500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C500D4D1CE00F6E8
      CD00EACB7B00E2B728006D635100BFB39E006C6C6C0000000000000000000000
      000000000000000000000000000000000000000000000D71EE0043A2F4000000
      00000000000000000000A1C79300EAF3E800C9E4C9008CC68C00000000000000
      0000000000000000000000000000000000000000000062616400F4E3C000E6C2
      5A00E3BA37009E895B00F2DEB700E0C79200665F5200C5C5C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6C00ABAB
      AB00F9F0DF00EED59C00D8B2410050493C00C5C5C50000000000000000000000
      000000000000000000000000000000000000000000000000000051A0F6000000
      0000000000000000000081A1750081A1750081A1750082B98200000000000000
      00000000000000000000000000000000000000000000000000009D9B9B00F7EC
      D600EACB8200E2B82E007B756D0068656100C5C5C50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008D8E
      9000908F9100FBF4E900E6C15600D6AE2A006F6A5E0000000000000000000000
      000000000000000000000000000000000000000000000F55EE005E9DF8000000
      00000000000000000000626353008D8D8D008D8D8D0062635300000000000000
      00000000000000000000000000000000000000000000000000009D9B9B007E7E
      8000FBF4E800EFD8A300BF9F3D006C6C6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AEAFB000C5C5C5008C857C0098999B0000000000000000000000
      000000000000000000000000000000000000000000003B7AFC0080B2F9000000
      000000000000484331008D8D8D008D8D8D008D8D8D008D8D8D00484331000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5C5C5006C6C6C00F7ECD6007A6E56000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A3A4A600B9BABB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000048433100626353006263530048433100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5C5C500767578009D9B9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E3FFFFF7F0000000C3F3FFF3F0000000
      C0C00001C0000000C0400001C0010000E0000001C0030000C0010001E0070000
      80030001C003000080010001C003000000010001800300000005081F80030000
      003F081F003F0000807F081F803F0000C07F081FC07F0000E07F081FC0FF0000
      F87F081FF0FF0000FCFF0C3FF8FF000000000000000000000000000000000000
      000000000000}
  end
end
