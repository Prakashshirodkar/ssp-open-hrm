inherited frmEstimateStageSummary: TfrmEstimateStageSummary
  Tag = -1
  Left = 332
  Top = 278
  Width = 498
  Height = 382
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 329
    Width = 490
  end
  object pageMain: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 490
    Height = 283
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
    TabIndex = 1
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabTongket
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
    object tabThongtin: TElTabSheet
      PageControl = pageMain
      ImageIndex = 0
      TabVisible = True
      Caption = 'Th'#244'ng tin chung'
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 490
        Height = 259
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object dxDBEdit1: TdxDBEdit
          Left = 141
          Top = 28
          Width = 293
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          DataField = 'STAGE_NO'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
        end
        object dxDBEdit2: TdxDBEdit
          Left = 141
          Top = 55
          Width = 293
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          DataField = 'STAGE_NAME'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
        end
        object dxStageType: TdxDBImageEdit
          Left = 141
          Top = 139
          Width = 240
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          DataField = 'STAGE_TYPE'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
          OnChange = dxStageTypeChange
          PopupBorder = pbFrame3D
        end
        object dxDBSpinEdit1: TdxDBSpinEdit
          Left = 141
          Top = 193
          Width = 90
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 6
          DataField = 'FROM_MONTH'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
        end
        object dxDBSpinEdit2: TdxDBSpinEdit
          Left = 296
          Top = 193
          Width = 90
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 7
          DataField = 'FROM_YEAR'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
        end
        object dxDBSpinEdit3: TdxDBSpinEdit
          Left = 296
          Top = 220
          Width = 90
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 9
          DataField = 'TO_YEAR'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
        end
        object dxDBSpinEdit4: TdxDBSpinEdit
          Left = 141
          Top = 220
          Width = 90
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 8
          DataField = 'TO_MONTH'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 141
          Top = 166
          Width = 90
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 4
          DataField = 'FROM_DATE'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
          PopupBorder = pbFrame3D
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 296
          Top = 166
          Width = 90
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 5
          DataField = 'TO_DATE'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
          PopupBorder = pbFrame3D
        end
        object dxEstimateMethod: TdxDBImageEdit
          Left = 141
          Top = 82
          Width = 343
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          DataField = 'ESTIMATE_METHOD'
          DataSource = frmEstimateManager.dsEstimateSumStage
          StyleController = dmMain.StyleController
          PopupBorder = pbFrame3D
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            Caption = 'Th'#244'ng tin '#273#7907't '#273#225'nh gi'#225
            object dxLayoutControl1Item1: TdxLayoutItem
              Caption = 'M'#227' s'#7889' '#273#7907't '#273#225'nh gi'#225' '
              Control = dxDBEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              Caption = 'Ti'#234'u '#273#7873' '#273#7907't '#273#225'nh gi'#225' '
              Control = dxDBEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              Caption = 'Ph'#432#417'ng th'#7913'c t'#7893'ng k'#7871't '
              Control = dxEstimateMethod
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Th'#244'ng tin th'#7901'i gian'
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Ch'#7885'n th'#7901'i gian '
              Control = dxStageType
              ControlOptions.ShowBorder = False
            end
            object groupNgay: TdxLayoutGroup
              Enabled = False
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item4: TdxLayoutItem
                Caption = 'T'#7915' ng'#224'y '
                Control = dxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                Caption = #273#7871'n ng'#224'y '
                Control = dxDBDateEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object groupTuthangNam: TdxLayoutGroup
                Enabled = False
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item6: TdxLayoutItem
                  Caption = 'T'#7915' th'#225'ng '
                  Control = dxDBSpinEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item7: TdxLayoutItem
                  Caption = 'n'#259'm '
                  Control = dxDBSpinEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object groupDenThangNam: TdxLayoutGroup
                Enabled = False
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item9: TdxLayoutItem
                  Caption = #273#7871'n th'#225'ng '
                  Control = dxDBSpinEdit4
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item8: TdxLayoutItem
                  Caption = 'n'#259'm '
                  Control = dxDBSpinEdit3
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object tabTongket: TElTabSheet
      PageControl = pageMain
      ImageIndex = 1
      TabVisible = True
      Caption = 'Th'#244'ng tin t'#7893'ng k'#7871't'
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 490
        Height = 259
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object dxDBGrid1: TdxDBGrid
          Left = 22
          Top = 28
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'FROM_STAGE'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsSumReg
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGrid1FROM_STAGE: TdxDBGridColumn
            Caption = 'M'#227' '#273#7907't '#273#225'nh gi'#225' '
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FROM_STAGE'
            Caption_UTF7 = 'M+AOM +AREe4w-t +AREA4Q-nh gi+AOE '
          end
          object dxDBGrid1STAGE_NAME: TdxDBGridPopupColumn
            Caption = #272#7907't '#273#225'nh gi'#225' '
            HeaderAlignment = taCenter
            Width = 362
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STAGE_NAME'
            OnCloseUp = dxDBGrid1STAGE_NAMECloseUp
            OnInitPopup = dxDBGrid1STAGE_NAMEInitPopup
            Caption_UTF7 = '+ARAe4w-t +AREA4Q-nh gi+AOE '
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'T'#7893'ng k'#7871't t'#7915' c'#225'c '#273#7907't '#273#225'nh gi'#225
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = dxDBGrid1
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  inline frameToolbar1: TframeToolbar [2]
    Left = 0
    Top = 283
    Width = 490
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 490
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
        Caption = 'Thi'#7871't l'#7853'p '#273#7907't t'#7893'ng k'#7871't '#273#225'nh gi'#225' thi '#273'ua'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 376
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 264
    Top = 160
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      DataSource = frmEstimateManager.dsEstimateSumStage
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 14
      DataSource = frmEstimateManager.dsEstimateSumStage
    end
    object acClose: TAction
      Caption = 'acClose'
      ImageIndex = 15
    end
  end
  object ImageList1: TImageList
    Left = 288
    Top = 40
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800000000000000000000000000000000000000000000000000000000000000
      00008C8E8E004C6F83004C6F83004C6F83004C6F83004D4F5100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCD4A400DCCC9400D8C48400D8C0
      7800D0BC6C00D0B86000CCB45400C8AC4800C4A43C00C0A03000C09C24006868
      6800000000000000000000000000000000000000000000000000000000000000
      000086888900ABCEE2009ABFD40089B5CC0084C3E900435F7000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8D8A800DCD4A400DCCC9400D8C4
      8400D8C07800D0BC6C00D0B86000CCB45400C8AC4800C4A43C00C0A030006868
      6800000000000000000000000000000000000000000000000000000000000000
      000086888900BAD9EA00B0C8D3009ABFD40084C3E900435F7000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8DCB400E8D8A800DCD4A400DCCC
      9400DCCC9400D8C07800D8C07800D0B86000D0B86000CCB45400C8AC48006868
      6800000000000000000000000000000000007454310060584F00000000000000
      000086888900D4E2E900BFCDD300B0C8D300A7D3ED00435F7000000000000000
      0000D6C58A00C3A65900C59F3F00744F17000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECE4C400E8DCB400E8D8A800E8D8
      A800DCD4A400DCCC9400D8C48400D8C07800D0BC6C00D0B86000CCB454006868
      680000000000000000000000000000000000553F1600EFA91100A3720A00BCB9
      B50086888900DCDFDF00CCD0D000BFCDD300BAD9EA005766720000000000CCD0
      D000DED4B700BCB08A00B6A478007F6B38000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0ECD400ECE4C400ECE4C400E8DC
      B400E8D8A800DCD4A400DCCC9400D8C48400D8C07800D0BC6C00D0B860006868
      680000000000000000000000000000000000744F1700EFA91100D9980D00EFA9
      110057463500E9EAE800DCDFDF00DCDFDF00D4E2E900576672008C8E8E007FAF
      7000FAEAD100D6CAA200D6C58A00817459000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0ECD400F0ECD400ECE4C400ECE4
      C400E8DCB400E8D8A800DCD4A400DCCC9400DCCC9400D8C07800D8C078006868
      680000000000000000000000000000000000744F1700ECB03000F0BC4900ECB0
      3000A8843300F7F8F900F7F8F900F7F8F900468DBE009FA1A2004D4F510098BA
      8E00EFECDD00CCC9B100CCC9B100857B69000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F0E400ECECE000F0ECD400ECE4
      C400ECE4C400DCD4A400E8D8A800E8D8A800DCD4A400DCCC9400D8C484006868
      680000000000000000000000000000000000744F1700F2C35C00F3C86A00F3C8
      6A00F2C35C00F0BC4900150E060060584F000000000071767D00566FA600ADC3
      A200FDFEFE00F4F4F200FEF5DB00868889000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8E800F8F0E400ECECE000F0EC
      D4003C4848001084E00080786000E8DCB400E8D8A800DCD4A400DCCC94006868
      68000000000000000000000000000000000074543100F1CC7B00F5D38B00F5D3
      8B00F5D38B00C3A65900150E0600744F1700A3720A00808180006E84BA00D4D8
      D000ADC3A200ADC3A2006F6F6C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F400F8F8E800F8F0E400CCCC
      C00010B8E8001090E0001084E00010284000E8DCB400E8D8A800DCD4A4006868
      68000000000000000000000000000000000074543100F5D38B00F7DDA400F9E3
      B200F9E3B200F7D99900A28B5A00F3C86A00A8843300868889007D89A400D4D8
      D000C6CAC6006491610000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F8F8F400F8F8E80010A8
      A80010ACB80010C4F0001090E00080786000C0B89800E8DCB400E8D8A8006868
      680000000000000000000000000000000000A96D5600EFD19100F9E3B200FAEA
      D100FAEAD100FAE9C200F9E3B20074543100553F160060584F00DCDFDF00B9C8
      EA0088AAFB009FA1A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F8F8F400F8F8
      F400A8A8A40018ECF40014D4F000D0C8B800F0ECD400ECE4C400ECE4C4006868
      680000000000000000000000000000000000A96D5600E6926F0081745900857B
      6900FFFDF300FDF4E400FAE9C200F7DDA400C3A65900ABADAC00808180008081
      80008C8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F8F8
      F400F8F8F40010ACB80018ECF40008687800F0ECD400F0ECD400ECE4C4006868
      680000000000000000000000000000000000000000004D4F510085605100F4BF
      A90085605100E9EAE800FDF4E400FAE9C200B6A4780000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCCCC00018ECF40018ECF40040302000A0500800000000000000
      000000000000000000000000000000000000000000000000000000000000999C
      9A00C7A79A00F4BFA9006F6F6C00FEF5DB00B6A4780000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ECECE0001098980018ECF40010383800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000060584F00F9EAE40094888400857B690000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000887058003C5C5C00087888000038
      4800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ABADAC00C6CAC600ABADAC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00000FF03F00000000000FF03F00000000
      000FF03F00000000000F303000000000000F002000000000000F000000000000
      000F000000000000000F008000000000000F000100000000000F000300000000
      000F000300000000000F000700000000000F807F00000000001FE07F00000000
      003FF87F00000000000FFC7F0000000000000000000000000000000000000000
      000000000000}
  end
  object dsSumReg: TDataSource
    DataSet = qrySumReg
    Left = 352
    Top = 128
  end
  object qrySumReg: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'STAGE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_ESTIMATE_SUM_REG'
      'WHERE'
      '   FROM_STAGE = :OLD_FROM_STAGE AND'
      '   STAGE_NO = :OLD_STAGE_NO')
    EditSQL.Strings = (
      'UPDATE HR_ESTIMATE_SUM_REG SET'
      '   FROM_STAGE = :FROM_STAGE, /*PK*/'
      '   STAGE_NO = :STAGE_NO  /*PK*/'
      'WHERE'
      '   FROM_STAGE = :OLD_FROM_STAGE AND'
      '   STAGE_NO = :OLD_STAGE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_ESTIMATE_SUM_REG('
      '   FROM_STAGE, /*PK*/'
      '   STAGE_NO) /*PK*/'
      'VALUES ('
      '   :FROM_STAGE,'
      '   :STAGE_NO)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qrySumRegNewRecord
    DataSource = frmEstimateManager.dsEstimateSumStage
    SQL.Strings = (
      'SELECT HR_ESTIMATE_SUM_REG.STAGE_NO'
      '     , FROM_STAGE'
      '     , HR_ESTIMATE_STAGE.STAGE_NAME'
      'FROM HR_ESTIMATE_SUM_REG'
      'JOIN HR_ESTIMATE_STAGE on '
      '  FROM_STAGE=HR_ESTIMATE_STAGE.STAGE_NO'
      'where HR_ESTIMATE_SUM_REG.STAGE_NO=:STAGE_NO')
    FieldOptions = []
    Left = 384
    Top = 128
    object qrySumRegSTAGE_NO: TWideStringField
      FieldName = 'STAGE_NO'
      Required = True
      Size = 30
    end
    object qrySumRegFROM_STAGE: TWideStringField
      FieldName = 'FROM_STAGE'
      Required = True
      Size = 30
    end
    object qrySumRegSTAGE_NAME: TWideStringField
      FieldName = 'STAGE_NAME'
      Required = True
      Size = 126
    end
  end
end
