inherited frmEmpDocument: TfrmEmpDocument
  Left = 178
  Width = 727
  Height = 412
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 313
    Width = 719
  end
  object pageTop: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 719
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
      Caption = 'H'#7907'p '#273#7891'ng lao '#273#7897'ng '
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 719
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
              Width = 272
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'CONTRACT_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          OnDblClick = acDetailExecute
          DataSource = EmpInfoDM.dsEmpContract
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridWorkChangeCONTRACT_NO: TdxDBGridColumn
            Caption = 'S'#7889' H'#272
            HeaderAlignment = taCenter
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTRACT_NO'
            Caption_UTF7 = 'S+HtE H+ARA'
          end
          object gridWorkChangeCONTRACT_TYPE_NAME: TdxDBGridColumn
            Caption = 'Lo'#7841'i h'#7907'p '#273#7891'ng'
            HeaderAlignment = taCenter
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTRACT_TYPE_NAME'
            Caption_UTF7 = 'Lo+HqE-i h+HuM-p +AREe0w-ng'
          end
          object gridWorkChangeCONTRACT_NAME: TdxDBGridColumn
            Caption = 'T'#234'n h'#7907'p '#273#7891'ng'
            HeaderAlignment = taCenter
            Width = 179
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTRACT_NAME'
            Caption_UTF7 = 'T+AOo-n h+HuM-p +AREe0w-ng'
          end
          object gridWorkChangeREPRESENTATIVE: TdxDBGridColumn
            Caption = 'Ng'#432#7901'i '#273#7841'i di'#7879'n'
            HeaderAlignment = taCenter
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPRESENTATIVE'
            Caption_UTF7 = 'Ng+AbAe3Q-i +AREeoQ-i di+Hsc-n'
          end
          object gridWorkChangeSTARTED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y '#225'p d'#7909'ng'
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STARTED_DATE'
            Caption_UTF7 = 'Ng+AOA-y +AOE-p d+HuU-ng'
          end
          object gridWorkChangeEXPIRED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y h'#7871't h'#7841'n'
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EXPIRED_DATE'
            Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n'
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
  object ElSplitter1: TElSplitter [2]
    Left = 0
    Top = 273
    Width = 719
    Height = 5
    Cursor = crVSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageTop
    AutoHide = False
    Align = alTop
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object pageBottom: TElPageControl [3]
    Left = 0
    Top = 278
    Width = 719
    Height = 35
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
    TabOrder = 3
    object tabBottom: TElTabSheet
      PageControl = pageBottom
      ImageIndex = 1
      TabVisible = True
      Caption = 'T'#224'i li'#7879'u gi'#7845'y t'#7901' li'#234'n quan'
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 719
        Height = 11
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
          KeyField = 'DOC_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = EmpInfoDM.dsEmpDocument
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridWorkHistoryDOC_ID: TdxDBGridColumn
            Caption = 'M'#227' h'#7891' s'#417' '
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOC_ID'
            Caption_UTF7 = 'M+AOM h+HtM s+AaE '
          end
          object gridWorkHistoryDOC_NAME: TdxDBGridColumn
            Caption = 'T'#234'n h'#7891' s'#417' '
            HeaderAlignment = taCenter
            Width = 185
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOC_NAME'
            Caption_UTF7 = 'T+AOo-n h+HtM s+AaE '
          end
          object gridWorkHistoryDOC_FILENAME: TdxDBGridButtonColumn
            Caption = 'T'#7853'p tin '#273#237'nh k'#232'm'
            HeaderAlignment = taCenter
            Width = 185
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOC_FILENAME'
            Buttons = <
              item
                Default = True
              end
              item
                Default = False
                Glyph.Data = {
                  360C0000424D360C000000000000360000002800000020000000200000000100
                  180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFCFCFCFFFFFFFFFFFFE9E9E9EAEAEAF0F0F0FAFAFAFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFC
                  FCFCFFFFFFD6D7D9496F95766E77997E7AA5A2A3EDEDEDFCFCFCFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFD5D5D7346DA10A94ED3184C1ABAEBEBBA29ECDCCCDFCFCFCFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDADABAB5B5B6B1B1B6B1B1B6B0B0B5AF
                  AFB5AFAFB5AFAFB5AEAEB5AEAEB4AEAEB4ADADB4ADADB5AEAEB3ACACB9B1B0AC
                  A9AC2668A40896F040B7F77DD3F960A9D8A9B5C6C4C2C0FFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB79B9BDDC1C1DAC1C1D9BFBFD9BEBED8BC
                  BCD7BBBBD7B9B9D6B7B7D5B6B6D3B4B4D3B1B1D2B0B0CEABACD7B4B3B6929624
                  5F9F0595F13DB4F381D3F8CDF9FE99EFFF249BE2CDCFD1FFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB29898FEFBFBFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EBEF3379B601
                  8EE83DB5F57ED2F8C8F6FD9EF0FE30C2FF7DA4BDF9F9F9FCFCFCFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB49A9AFAF4F4FDFDFDFCFBFBFDFCFCFBFA
                  FAF3F0F0F1ECECF0E9E9EEE6E6EDE2E2E8DDDEF4E5E2D3CCD12A6CAA0189E23F
                  B7F680D3F8C8F6FD9DF1FF24B7FC7AA0BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB49B9BFBF6F6FFFFFFFFFFFFFFFFFFFEFE
                  FEF2EFEFF0EBEBEEE7E7EBE2E2E7DCDDF0E0DDC1B2B81A5EA0008FE940B7F685
                  D5F8CDF9FE9AEFFF20AEF366809CF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB69D9DFBF5F5FAFAFAEFEBEBEEEAEAEDE7
                  E7EDE7E7EDE4E4ECE2E2E9DFDFEFE1DFC4C4CE2273B60492EC45B9F783D4F8CB
                  F8FE96EDFF1BAAEF96B5D7A17B76F0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFDFDFDFDFDFDB8A1A1FFFFFFFFFFFFF9F9F9F9F7F7F9F7
                  F7F7F3F3F2EBEBEEE5E5EBE2E2F2E7E46080A8007DD34CC0FB81D2F7C7F6FD95
                  EEFF18A8EF9AC5E8FFEAE3937A7BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFCFCFCFFFFFFFFFFFFAC9796D8C9C8C2B3B3BAA8A9BEACADC7B7
                  B7D5C8C8E4D9D9EFE5E5EBDFDFF1E6E7B9A4A53770A26CC6F3D5FEFF95ECFF19
                  A6ED7D95B7F6DBD5F4E4E5957A7AF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFDFDFDFFFFFFD8D7D79687879174758D6F719477779D8282A28887A38A
                  8BA48D8EAA9393C6B4B4C8B6B5BEAAAAB49A98A9979A5993C069CDF322AAED9A
                  BCDBF5DBD4EAE1E2F5E2E2967C7CF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
                  FEFEFEFFFFFFB5B0B09074749A7C7EA38681C8B7ABE2D8CEEBE3DCEBE2DEE0D5
                  CECFBFB6BDAAA7B9A6A8AB9595A38A8AC4B6B7C2AFAEB8A1A24F9CD38CA9C8E7
                  C0B9CDB3B5E5D4D4F6E4E4977D7DF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFDFDFD
                  FFFFFFAEA7A6937273957778C1A48EE6CDB1FFFFE9FFFFF4FFFFF8FFFFFDFFFE
                  F6FFFBEAF4EAD3D1BAABC5B6B6C2B1B2BDAAAAC4B2B3F3E5E4F5DFDBF1DCD9E6
                  D6D7E5D2D2EDE1E1F4E1E1987F7FF0F0F0FEFEFEFFFFFFFFFFFFFAFAFAFFFFFF
                  D4D1D1927171927474CBA488ECD2B2E6CDB1FBF4DEFDF8E8F9F3E9F9F4EBF8F0
                  E4F7ECD9F9E9D2FCE1C2D8B8A3CABCBDC4B4B4C1AEAED9C4C4D9C4C4D7C0C0D7
                  BDBDD1B5B5E4D3D3F5E3E3988080F0F0F0FEFEFEFFFFFFFFFFFFFCFCFCFCFCFC
                  947E7E97797CC09074E9C09BE5C7A8E6C7ABFDF1D9FEFAE5FBF3E3FBF3E3FAF1
                  DFF9EED7F9E5CBF5D9BCF9D0ABD5B19CCBC0C2CAB8B8E9D9D9E2CFCFE2CECEE1
                  CCCCDDC6C6E9DADAF4E1E1998282F0F0F0FEFEFEFFFFFFFFFFFFFFFFFFC7C3C3
                  94777BA57969E2AA7FE4B793E6C2A1E5C1A2FCE9CEFEF3D9FBF1DAFBF1DAFAEC
                  D4F8E4CAF6DBBEF4D1B1F2C6A3EFB78ED5BEB5C7BABCD4BEBDE2CECEDDC7C7DC
                  C5C5D8BEBEE6D5D5F3E0E09A8383F0F0F0FEFEFEFFFFFFFFFFFFFFFFFF9F9191
                  9B8082C58862E3A77BE3B18AE4BA97E4B996FCDFC1FDE7C9F9E4C9F9E5CAF8E2
                  C6F7DABDF5D2B2F2C8A5EFBD98F1B185DCA98DD2CACDD1BDBDE1CBCBDCC4C4DB
                  C3C3D6BBBBE4D3D3F3E0E09B8484F0F0F0FEFEFEFFFFFFFFFFFFFFFFFF948081
                  A17D78D3895BE1A074E3A980E4B38DE3B18CFBD5B3FEDCBBFADBBBFBDCBCFADA
                  B9F9D5B4F8D0ACF5C6A0F2B992F2AF81E6A479D7CBCACEBDBCE4D1D0E1CDCDE0
                  CCCCDCC5C5E7D7D7F2DFDF9B8686F0F0F0FEFEFEFFFFFFFFFFFFF9F9F9978184
                  A4796DD68653DF9868E0A073DFA67DDFA37BF9CAA5FBCEAAF5CAA6F5C9A6F5C8
                  A4F3C39EF1BD97F1B98FF6BB8CFCBE85EDA46FD7C6C2CEC0C0D8BFBED8BEBED5
                  BBBBD0B2B2E1CDCDF2E0E09B8787F0F0F0FEFEFEFFFFFFFFFFFFF9F9F9998587
                  A87E71D5824EDA8B5ADC9464E3A675F0BA8AFCCE9FFDD2A4FAD1A5FACEA4F9CB
                  A1F9CA9FF9CA9DFACB9AFBC995FCC58FF0AA76D9C6C2D3C7C8E5D2D1E3D0D0E2
                  CECEDFC9C9E7D7D7F2DEDE9D8989F1F1F1FEFEFEFFFFFFFFFFFFFFFFFF9A898A
                  AC8A84D1804EE59B64F5BD86FBCD9AFCD2A1FED9AAFEDEB1FEE1B5FFE3B7FFE3
                  B7FFE1B5FFDEB0FED8A9FCCF9FFDCC98EBAB7CDBCECCCFBFBFD6BBBBD1B5B5D0
                  B2B2CAA9A9DDC8C8F3E0E09E8B8BF1F1F1FEFEFEFFFFFFFFFFFFFFFFFFA59898
                  AD9395D19064FEC88EF7C794F9CD9DFCD5A8FEE0B4FEE5BCFEE8C0FEEAC2FEE9
                  C2FEE8BFFEE4BAFEDFB4FDD8ABFFD19EE8B491D9D2D5E2D5D5FAF0F0F1E4E4EE
                  DFDFEDDFDFF0E3E3F4E1E19F8C8CF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFC4C0C0
                  B39FA3B8866FF6BB82F9CF9FFAD3A7FEDEB2FFE8BEFDEBC5FFEBC8FFECCAFEEC
                  CAFFEBC8FEEAC4FEE5BCFEE2B7FCCB99E0C1B2D6CFD3D6C6C5DCCECED8C8C8D5
                  C2C2D4C1C1D3C1C1DDC7C7A18E8EF5F5F5FEFEFEFFFFFFFFFFFFFCFCFCFAFAFA
                  A79292B6A1A2D29870FFDAA8F8DAAFFDE5BBFFECC7FEEDCDFEEED1FEEFD3FEEE
                  D3FFEED1FEECCBFDECC8FFE9BCE6B898E0D9DBCCBCBCC5ADADD4C2C2D2BFBFD2
                  BEBED2BEBECCB7B7C8A1A1B1A8A8FFFFFFFEFEFEFFFFFFFFFFFFF9F9F9FFFFFF
                  D8D3D3BBA7A9B89E99DFAC82FFE9BCFDEBC5FDECCCFDEED3FEF0D9FEF1DCFEF1
                  DBFDEFD8FEF1D7FFF1CDE9C09DDED0CEDAD2D2E0D2D2D9C9C9FFFFFFFFFFFFFF
                  FFFFFEFCFCE0C9C9B2A7A7FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
                  FFFFFFB7AEAEC5B3B5C0A8A4D7AF8EFBE2B9FFF5D6FFF7E0FFF8E6FFF9ECFFFA
                  EDFFF7E4FAE5C9E5C3ABDFD2D0D6CDCEEBE3E2EEE4E4D5C4C4FEFDFDFDFBFBF8
                  F3F3DCC2C2ACA0A0FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FDFDFDFFFFFFB9B2B2C7B5B6CDBCBDCFB0A2E3C6ADF1DAC1F7E3CFF7E4D5F2DD
                  CEE8CDBCDEC5BADBD0D2D5CBCCE8E0DFFFFFFFE9DEDED6C7C7FFFFFFF9F5F5E0
                  C9C9AEA3A3FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFDFDFDFFFFFFDBD8D8BCAFAFC6B8BAC7B7B8CEBAB7D3BEB8D4C1BCD5C5
                  C1D3C7C8D5CBCDDAD0D0F3EEEEFFFDFDFDF8F8EAE0E0D7C8C8FCFAFAE6D1D1AF
                  A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFC0B9B8E0D6D6D7CDCED3C9CAD6CDCEDDD5
                  D6E5DEDEF4F0EFFFFFFFFFFFFFFEFAFAFFFCFCEDE4E4D4C5C5E9D8D8AFA7A7FF
                  FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFDFDFDFDFDFDCFCECEFCFCFCF7F6F6F4F2F2F5F3F3F7F5
                  F5F8F8F8F7F4F4F2EFEFF2EDEDF1EBEBF1EAEAE3D9D9CCBABAB0A9A9FEFEFEFD
                  FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D3D3D6D2D2CFCACAD1CBCBCFC8C8CDC4
                  C4CBC0C0CBBFBFCBBEBEC9BCBCC8B9B9C5B5B5CBBABABBB0B0FFFFFFFCFCFCFE
                  FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                Kind = bkDown
              end>
            OnButtonClick = gridWorkHistoryDOC_FILENAMEButtonClick
            Caption_UTF7 = 'T+Hq0-p tin +AREA7Q-nh k+AOg-m'
          end
          object gridWorkHistoryDOC_NOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 185
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOC_NOTE'
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
  inline frameToolbar1: TframeToolbar [4]
    Left = 0
    Top = 332
    Width = 719
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
      Width = 719
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
        Caption = 'H'#7907'p '#273#7891'ng lao '#273#7897'ng - H'#7891' s'#417' li'#234'n quan'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 208
    Top = 104
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
    Left = 160
    Top = 80
    object acDetail: TAction
      Caption = 'acDetail'
      OnExecute = acDetailExecute
      OnUpdate = acDetailUpdate
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*|*.*'
    Left = 32
    Top = 80
  end
end
