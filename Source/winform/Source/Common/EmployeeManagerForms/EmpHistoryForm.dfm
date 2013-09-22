inherited frmEmpHistory: TfrmEmpHistory
  Left = 199
  Top = 120
  Width = 944
  Height = 626
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 573
    Width = 936
  end
  object pageMain: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 936
    Height = 249
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
    Style = etsAngledTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabMain
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
    object tabMain: TElTabSheet
      PageControl = pageMain
      ImageIndex = 0
      TabVisible = True
      Caption = 'Ti'#7875'u s'#7917' c'#225' nh'#226'n'
      object gridBiography: TdxDBGrid
        Left = 0
        Top = 0
        Width = 932
        Height = 223
        Bands = <
          item
            Width = 403
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'KEY_INDEX'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = gridBiographyEnter
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = EmpInfoDM.dsBiography
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        object gridBiographyKEY_INDEX: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'STT '
          Color = clInfoBk
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEY_INDEX'
        end
        object gridBiographyFROM_TIME: TdxDBGridColumn
          Caption = 'Kho'#7843'ng th'#7901'i gian '
          HeaderAlignment = taCenter
          Width = 210
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FROM_TIME'
          Caption_UTF7 = 'Kho+HqM-ng th+Ht0-i gian '
        end
        object gridBiographyEMP_EVENT: TdxDBGridColumn
          Caption = 'N'#7897'i dung s'#7921' ki'#7879'n'
          HeaderAlignment = taCenter
          Width = 343
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMP_EVENT'
          Caption_UTF7 = 'N+Htk-i dung s+HvE ki+Hsc-n'
        end
      end
    end
    object tabEmpOrg: TElTabSheet
      PageControl = pageMain
      ImageIndex = 2
      TabVisible = True
      Caption = 'Ho'#7841't '#273#7897'ng '#273'o'#224'n th'#7875' - x'#227' h'#7897'i'
      Visible = False
      object gridEmpOrg: TdxDBGrid
        Left = 0
        Top = 0
        Width = 630
        Height = 223
        Bands = <
          item
            Width = 403
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'KEY_INDEX'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = gridEmpOrgEnter
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = EmpInfoDM.dsEmpOrg
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        object gridEmpOrgKEY_INDEX: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'STT '
          Color = clInfoBk
          HeaderAlignment = taCenter
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEY_INDEX'
        end
        object gridEmpOrgORG_NAME: TdxDBGridPopupColumn
          Caption = 'Tham gia '#273'o'#224'n th'#7875' - t'#7893' ch'#7913'c '
          HeaderAlignment = taCenter
          Width = 181
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORG_NAME'
          OnCloseUp = gridEmpOrgORG_NAMECloseUp
          OnInitPopup = gridEmpOrgORG_NAMEInitPopup
          Caption_UTF7 = 'Tham gia +ARE-o+AOA-n th+HsM - t+HtU ch+Huk-c '
        end
        object gridEmpOrgJOIN_DATE: TdxDBGridDateColumn
          Caption = 'Tham gia t'#7915' ng'#224'y'
          HeaderAlignment = taCenter
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JOIN_DATE'
          Caption_UTF7 = 'Tham gia t+Hus ng+AOA-y'
        end
        object gridEmpOrgORG_DUTY: TdxDBGridColumn
          Caption = 'Ch'#7913'c v'#7909' trong t'#7893' ch'#7913'c'
          HeaderAlignment = taCenter
          Width = 146
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORG_DUTY'
          Caption_UTF7 = 'Ch+Huk-c v+HuU trong t+HtU ch+Huk-c'
        end
        object gridEmpOrgNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 0
    Top = 249
    Width = 936
    Height = 5
    Cursor = crVSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageMain
    ControlBottomRight = pageBottom
    AutoHide = False
    Align = alTop
    BevelOuter = bvNone
    UseXPThemes = False
  end
  object pageBottom: TElPageControl [3]
    Left = 0
    Top = 254
    Width = 936
    Height = 273
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = ImageList1
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
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
    TabOrder = 3
    object tabBottom: TElTabSheet
      PageControl = pageBottom
      ImageIndex = 1
      TabVisible = True
      Caption = 'Quan h'#7879' gia '#273#236'nh - x'#227' h'#7897'i'
      object gridRelationship: TdxDBGrid
        Left = 0
        Top = 0
        Width = 932
        Height = 247
        Bands = <
          item
            Caption = 'Th'#244'ng tin c'#225' nh'#226'n'
            Width = 531
          end
          item
            Caption = 'Gi'#7843'm tr'#7915' gia c'#7843'nh'
            Width = 399
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'KEY_INDEX'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = gridRelationshipEnter
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = EmpInfoDM.dsRelationship
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object gridRelationshipKEY_INDEX: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'STT '
          Color = clInfoBk
          HeaderAlignment = taCenter
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KEY_INDEX'
        end
        object gridRelationshipPERSON_NAME: TdxDBGridColumn
          Caption = 'T'#234'n ng'#432#7901'i li'#234'n quan '
          HeaderAlignment = taCenter
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PERSON_NAME'
          Caption_UTF7 = 'T+AOo-n ng+AbAe3Q-i li+AOo-n quan '
        end
        object gridRelationshipRELATIONSHIP_NAME: TdxDBGridPopupColumn
          Caption = 'Quan h'#7879' '
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RELATIONSHIP_NAME'
          OnCloseUp = gridRelationshipRELATIONSHIP_NAMECloseUp
          OnInitPopup = gridRelationshipRELATIONSHIP_NAMEInitPopup
          Caption_UTF7 = 'Quan h+Hsc '
        end
        object gridRelationshipBIRTH_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y sinh'
          HeaderAlignment = taCenter
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BIRTH_DATE'
          Caption_UTF7 = 'Ng+AOA-y sinh'
        end
        object gridRelationshipSO_CMND: TdxDBGridColumn
          Caption = 'S'#7889' CMND'
          HeaderAlignment = taCenter
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SO_CMND'
          Caption_UTF7 = 'S+HtE CMND'
        end
        object gridRelationshipSO_HOCHIEU: TdxDBGridColumn
          Caption = 'S'#7889' h'#7897' chi'#7871'u'
          HeaderAlignment = taCenter
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SO_HOCHIEU'
          Caption_UTF7 = 'S+HtE h+Htk chi+Hr8-u'
        end
        object gridRelationshipMASO_THUE_CANHAN: TdxDBGridColumn
          Caption = 'M'#227' s'#7889' thu'#7871
          HeaderAlignment = taCenter
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MASO_THUE_CANHAN'
          Caption_UTF7 = 'M+AOM s+HtE thu+Hr8'
        end
        object gridRelationshipDUOC_GIAMTRU_GIACANH: TdxDBGridCheckColumn
          Caption = #272#432#7907'c gi'#7843'm tr'#7915
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 84
          BandIndex = 1
          RowIndex = 0
          FieldName = 'DUOC_GIAMTRU_GIACANH'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = '+ARABsB7j-c gi+HqM-m tr+Hus'
        end
        object gridRelationshipGIAMTRU_TUTHANG: TdxDBGridSpinColumn
          Caption = 'T'#7915' th'#225'ng'
          HeaderAlignment = taCenter
          Width = 53
          BandIndex = 1
          RowIndex = 0
          FieldName = 'GIAMTRU_TUTHANG'
          MinValue = 1.000000000000000000
          MaxValue = 12.000000000000000000
          Caption_UTF7 = 'T+Hus th+AOE-ng'
        end
        object gridRelationshipGIAMTRU_TUNAM: TdxDBGridSpinColumn
          Caption = 'T'#7915' n'#259'm'
          HeaderAlignment = taCenter
          Width = 54
          BandIndex = 1
          RowIndex = 0
          FieldName = 'GIAMTRU_TUNAM'
          MinValue = 1900.000000000000000000
          MaxValue = 999999.000000000000000000
          Caption_UTF7 = 'T+Hus n+AQM-m'
        end
        object gridRelationshipGIAMTRU_DENTHANG: TdxDBGridSpinColumn
          Caption = #272#7871'n th'#225'ng'
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 1
          RowIndex = 0
          FieldName = 'GIAMTRU_DENTHANG'
          MinValue = 1.000000000000000000
          MaxValue = 12.000000000000000000
          Caption_UTF7 = '+ARAevw-n th+AOE-ng'
        end
        object gridRelationshipGIAMTRU_DENNAM: TdxDBGridSpinColumn
          Caption = #272#7871'n n'#259'm'
          HeaderAlignment = taCenter
          Width = 60
          BandIndex = 1
          RowIndex = 0
          FieldName = 'GIAMTRU_DENNAM'
          MinValue = 1900.000000000000000000
          MaxValue = 999999.000000000000000000
          Caption_UTF7 = '+ARAevw-n n+AQM-m'
        end
        object gridRelationshipNOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250' th'#234'm'
          HeaderAlignment = taCenter
          Width = 75
          BandIndex = 1
          RowIndex = 0
          FieldName = 'NOTE'
          Caption_UTF7 = 'Ghi ch+APo th+AOo-m'
        end
      end
    end
  end
  inline frameToolbar1: TframeToolbar [4]
    Left = 0
    Top = 527
    Width = 936
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 936
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
        Caption = 'Ti'#7875'u s'#7917' c'#225' nh'#226'n - Quan h'#7879' x'#227' h'#7897'i'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 88
  end
  object ImageList1: TImageList
    Left = 72
    Top = 136
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414753004147
      5300414753000000000041475300414753004147530000000000414753004147
      5300414753004147530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5C5C500201F230018545A0000F2FF0000F2FF00355C1400355C140011BD
      E4001ACAFF0022C0FE002BAAFB0000000000000000000000000041475300EFD8
      880041475300000000000CAFFF000CAFFE0041475300000000003530DD004147
      53003530DD004147530000000000000000000000000000000000000000000000
      00000000000000000000B9612400B25E2400AA5B240000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B9BABB006759
      2F00837044003A363300201F230002E5F10000F2FF0000F2FF001771730002DC
      FF0011D2FF001ACAFF0044ACE20000000000000000000000000041475300F3E1
      A500414753000000000035C6FC0035C7FC0041475300000000003739DE004147
      53003638DE004147530000000000000000000000000000000000000000000000
      00000000000000000000B961240075F6FC00FDE7CF00FCE3C900201F23006D40
      23006D4023005F3A230000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E8000E5D2
      AA00E4BD45006C603F00201F2300127B830002E5F10004D8E4001A444C0004C8
      E4000AD7FF001ACAFF000000000000000000000000000000000041475300F5E7
      B60041475300000000004BD3FB004CD4FB0041475300000000003845E0004147
      53003944E0004147530041475300000000000000000000000000000000000000
      00000000000000000000B961240083F6FC0083F6FC00FCE4CA00F8D5B000201F
      230083F6FB00452F2300392A2300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000085868800D4D3
      D200DBD0B9008A82760072706F0030242100214D640018545A00165A68001466
      76000E9FBA006ECDE4000000000000000000000000000000000041475300F8ED
      C700414753000000000061E0F90061E1FA00414753003B53E3003B52E3003B52
      E3003B52E3003B52E30041475300000000000000000000000000000000000000
      00000000000000000000B961240092F7FC0092F6FC0092F6FB00F5D0A700F4C9
      9D00201F230092F6FC0026222300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      800055514B00E2CA9900817F7F002A485E002A9CE4002772A40082B4DA004A5F
      710075747500000000000000000000000000000000000000000041475300FAF3
      D900414753000000000073EBF80073EAF9000BAEFF003E62E6003D61E5003E62
      E6003E62E6003E62E60041475300000000000000000000000000000000000000
      00000000000000000000B9612400A0F7FB00A0F7FB00A0F7FB00F6D0A800F2C3
      9200F0BD8800201F230027222300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D8E9000987B
      1400E1B41400E4BC4A00266A97002A9CE400283A4A0082B4DA006689A600272A
      3000201F2300A3A4A6000000000000000000414753004147530041475300FEFC
      F50041475300414753002CC2FC002CC2FD002CC1FC004484EB004173E8004172
      E9004173E8004173E80041475300000000000000000041475300414753004147
      53004147530041475300B9612400BCF7FB00BCF8FB000175EF000183F400BCF8
      FB00EEB87F00EAAB6A00201F2300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E8B6000E5BF
      5700E1B41800E0B2080022384A0021273000201F230058748C00201F2300272A
      3000201F2300888687000000000000000000EED57F0041475300FFFFFF00FFFF
      FF0041475300EED57F0040CDFC0040CDFC0040CDFC004795EF004795EE004795
      EE004796EE004147530041475300000000000000000041475300F6E6B500F6E6
      B400F6E6B400F6E5B500B9612400C9F9FA000174EF000177F000008EF7000091
      F700C9F8FA00EAAC6B00E69D5100201F23000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAFB000F0DBAE00ECCF
      8E00E6C36800E2B72C00201F2300201F2300201F2300353F4A00201F2300201F
      2300201F2300757475000000000000000000F0DC930041475300FFFFFF00FFFF
      FF0041475300F0DC930053D9FA0053D8FA0053D8FB004AA6F1004AA6F2004AA6
      F1004AA7F2004147530041475300000000000000000041475300F7E8BD00F7E9
      BE00F7E9BE00F7E9BE00B9612400017AF100017AF100D4F8FB00D4F8FB000091
      F700D4F8FB00D4F8FB00023BEA000000C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6C00E8DCC600B0A1
      8500EDD39A00E8C6750068571F0050431A0038322200201F2300201F2300201F
      23002C2C2C00AEAFB0000000000000000000F4E5AF0041475300FFFFFF00FFFF
      FF0041475300F4E5AF004147530041475300414753004DB6F4004DB6F4004DB5
      F4004DB6F4004147530041475300000000000000000041475300414753004147
      53004147530041475300B9612400DDF9FA00DDF9FA00DDF9FA00DDF8FA000195
      F90000A4FE00DDF8FA000241EE00033BEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008D8E90009D9B9B009B823800E5C0
      5200A08F6D00A4998600ECCF8E00E6C26700D6AE2A006F685500000000000000
      000000000000000000000000000000000000FCF8EC00FCF8EC00FFFFFF00FFFF
      FF00FCF8EC00FCF8EC0080F2F80080F2F8000000000051CFF80051D0F80051CF
      F90052D0F80052CFF900414753000000000000000000414753004147530000A8
      FF0000A8FF0041475300B9612400E4F9FA00E4F9FA00E4F9FA00E4F9FA00E4F9
      FA0000A0FC00E4F9FA0027222300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062616400F4E3C000E6C2
      5A00E3BA37009E895B00F2DEB700E0C79200665F5200C5C5C500000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000053D8FA0053D8
      FA0053D8FA0053D8FA0000000000000000004147530041475300414753004147
      5300414753004147530041475300B25E2400AA5B2400E4F9FA00E4F9FA00E4F9
      FA00E4F9FA00E4F9FA0026212300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D9B9B00F7EC
      D600EACB8200E2B82E007B756D0068656100C5C5C50000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000004147
      53004147530041475300000000000000000041475300FEFAF200FEFBF200FDFA
      F200FDFBF100FDFBF100414753000349F200023DEB00874B24006D4023005F3A
      2400E4F9FA00E4F9FA0027222300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D9B9B007E7E
      8000FBF4E800EFD8A300BF9F3D006C6C6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414753004147
      530041475300000000000000000000000000000000000000000053D8FA0053D8
      FA0053D8FA004147530000000000000000000000000041475300FEFBF200FDFA
      F200FDFBF100FDFBF100414753000349F200023DEB00023DEB000124DD000119
      D60052352300452F230027222300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5C5C5006C6C6C00F7ECD6007A6E56000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0041475300000000000000000000000000000000000000000053D8FA0053D8
      FA0053D8FA00000000000000000000000000000000000000000041475300FFFF
      FF00FFFFFF0041475300045AFC000453F8000349F2000349F200414753000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5C5C500767578009D9B9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004147
      5300414753004147530041475300414753004147530041475300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F000C443FFFF0000F000C443FC7F0000
      C000C443FC030000C001C441FC010000C003C401FC010000E007C401FC010000
      C003000180010000C00300018000000080030001800000008003000180000000
      003F008180010000803F03C300010000C07F03E300010000C0FFC7C380010000
      F0FFC7C7C01F0000F8FFCFFFE03F000000000000000000000000000000000000
      000000000000}
  end
end
