inherited frmDangkyPhep: TfrmDangkyPhep
  Left = 138
  Top = 132
  Width = 893
  Height = 560
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 507
    Width = 885
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 885
    Height = 507
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 480
      Color = 15466238
      TabOrder = 11
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 867
        end
        inherited btnHelp: TElPopupButton
          Left = 737
        end
        inherited btnChoose: TElPopupButton
          Left = 807
        end
        inherited btnLast: TElPopupButton
          Left = 380
          Width = 1
        end
        inherited btnPrevious: TElPopupButton
          Width = 1
        end
        inherited btnNext: TElPopupButton
          Left = 379
          Width = 1
        end
        inherited btnDesign: TElPopupButton
          Left = 527
        end
        inherited btnPreview: TElPopupButton
          Left = 457
        end
        inherited btnPrint: TElPopupButton
          Left = 387
        end
        inherited btnSendMail: TElPopupButton
          Left = 386
          Width = 1
        end
        inherited btnGenerate: TElPopupButton
          Left = 652
          Hint = 'Ph'#225't sinh d'#7919' li'#7879'u ch'#7845'm c'#244'ng t'#7915' d'#7919' li'#7879'u '#273#259'ng k'#253' c'#244'ng t'#225'c/ph'#233'p'
          ImageIndex = 62
          UseImageList = True
          Images = dmMain.imgAction
          Action = acPhatsinhDLChamcong
        end
        inherited btnRelation: TElPopupButton
          Left = 627
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 602
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
    object gridDSPhieu: TdxDBGrid [1]
      Left = 2
      Top = 2
      Width = 255
      Height = 198
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MASO_PHIEU'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDSPhieuDK
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridDSPhieuMASO_PHIEU: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' phi'#7871'u'
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO_PHIEU'
        Caption_UTF7 = 'M+AOM s+HtE phi+Hr8-u'
      end
      object gridDSPhieuNGAY_DANGKY: TdxDBGridDateColumn
        Caption = 'Ng'#224'y '#273#259'ng k'#253
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAY_DANGKY'
        Caption_UTF7 = 'Ng+AOA-y +AREBAw-ng k+AP0'
      end
      object gridDSPhieuDA_DUYET: TdxDBGridImageColumn
        Alignment = taCenter
        Caption = 'Tr'#7841'ng th'#225'i'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DA_DUYET'
        Descriptions.WideStrings = (
          'Ch'#7901' duy'#7879't'
          #272#227' duy'#7879't'
          'Kh'#244'ng duy'#7879't')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1'
          '2')
        Caption_UTF7 = 'Tr+HqE-ng th+AOE-i'
      end
    end
    object gridDSNhanvien: TdxDBGrid [2]
      Left = 14
      Top = 226
      Width = 227
      Height = 174
      Bands = <
        item
          Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n '#273#259'ng k'#253
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MASO_NHANVIEN'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 10
      DataSource = dsDSNhanvien
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridDSNhanvienMASO_NHANVIEN: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' NV'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MASO_NHANVIEN'
        Caption_UTF7 = 'M+AOM s+HtE NV'
      end
      object gridDSNhanvienHO_TEN: TdxDBGridPopupColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        HeaderAlignment = taCenter
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HO_TEN'
        OnCloseUp = gridDSNhanvienHO_TENCloseUp
        OnInitPopup = gridDSNhanvienHO_TENInitPopup
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object gridDSNhanvienTEN_DONVI: TdxDBGridColumn
        Caption = #272#417'n v'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 647
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_DONVI'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object gridDSNhanvienTEN_CHUCVU: TdxDBGridColumn
        Caption = 'Ch'#7913'c v'#7909
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 647
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_CHUCVU'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
    end
    object ElPopupButton1: TElPopupButton [3]
      Left = 584
      Top = 28
      Width = 75
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
      Caption = '&Xem DS'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acXemDSPhieuDK
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pageDetail: TElPageControl [4]
      Left = 241
      Top = 226
      Width = 476
      Height = 174
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      ShowBorder = False
      Style = etsAngledTabs
      TabIndex = 0
      TabPosition = etpRight
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabNVDangky
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 15
      object tabNVDangky: TElTabSheet
        PageControl = pageDetail
        ImageIndex = -1
        TabVisible = True
        Caption = #272#259'ng k'#253
        object gridChitietDK: TdxDBGrid
          Left = 0
          Top = 0
          Width = 453
          Height = 174
          Bands = <
            item
              Caption = 'Chi ti'#7871't '#273#259'ng k'#253' '
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MASO_NHANVIEN'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsChitietDK
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object gridChitietDKTU_NGAY: TdxDBGridDateColumn
            Alignment = taCenter
            Caption = 'T'#7915' ng'#224'y'
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TU_NGAY'
            Caption_UTF7 = 'T+Hus ng+AOA-y'
          end
          object gridChitietDKDEN_NGAY: TdxDBGridDateColumn
            Alignment = taCenter
            Caption = #272#7871'n ng'#224'y'
            HeaderAlignment = taCenter
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEN_NGAY'
            Caption_UTF7 = '+ARAevw-n ng+AOA-y'
          end
          object gridChitietDKWDT_NAME: TdxDBGridPopupColumn
            Alignment = taLeftJustify
            Caption = #272#259'ng k'#253' ng'#224'y c'#244'ng'
            HeaderAlignment = taCenter
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'WDT_NAME'
            OnCloseUp = gridChitietDKWDT_NAMECloseUp
            OnInitPopup = gridChitietDKWDT_NAMEInitPopup
            Caption_UTF7 = '+ARABAw-ng k+AP0 ng+AOA-y c+APQ-ng'
          end
          object gridChitietDKGHI_CHU: TdxDBGridColumn
            Alignment = taLeftJustify
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GHI_CHU'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object gridChitietDKWDT_COLOR: TdxDBGridColumn
            DisableCaption = True
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            Visible = False
            Width = 30
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'WDT_COLOR'
            DisableFilter = True
          end
          object gridChitietDK_SHOWCOLOR: TdxDBGridColumn
            DisableCaption = True
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            Visible = False
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = gridChitietDK_SHOWCOLORCustomDrawCell
            DisableGrouping = True
            DisableFilter = True
          end
        end
      end
    end
    object dxDBEdit1: TdxDBEdit [5]
      Left = 355
      Top = 86
      Width = 137
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      DataField = 'MASO_PHIEU'
      DataSource = dsDSPhieuDK
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit1: TdxDBDateEdit [6]
      Left = 572
      Top = 86
      Width = 110
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 6
      DataField = 'NGAY_DANGKY'
      DataSource = dsDSPhieuDK
      StyleController = dmMain.StyleController
    end
    object dxDBButtonEdit1: TdxDBButtonEdit [7]
      Left = 572
      Top = 109
      Width = 290
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 8
      DataField = 'FILE_NAME'
      DataSource = dsDSPhieuDK
      ReadOnly = False
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
      StoredValues = 64
      ExistButtons = True
    end
    object dxDBMemo1: TdxDBMemo [8]
      Left = 355
      Top = 132
      Width = 390
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 9
      DataField = 'GHI_CHU'
      DataSource = dsDSPhieuDK
      StyleController = dmMain.StyleController
      Height = 61
    end
    object dxDBEdit2: TdxDBEdit [9]
      Left = 355
      Top = 109
      Width = 137
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      DataField = 'NHANVIEN_LAPPHIEU'
      DataSource = dsDSPhieuDK
      StyleController = dmMain.StyleController
    end
    object dxFromDate: TdxDateEdit [10]
      Left = 355
      Top = 29
      Width = 90
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dxFromDateChange
      Date = -700000.000000000000000000
    end
    object dxToDate: TdxDateEdit [11]
      Left = 494
      Top = 29
      Width = 90
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      OnChange = dxToDateChange
      Date = -700000.000000000000000000
    end
    object dxTrangThai: TdxDBImageEdit [12]
      Left = 733
      Top = 86
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      DataField = 'DA_DUYET'
      DataSource = dsDSPhieuDK
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup3: TdxLayoutGroup [0]
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = []
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridDSPhieu
          ControlOptions.ShowBorder = False
        end
        object dxlcMainGroup8: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            Caption = '1. DANH S'#193'CH PHI'#7870'U '#272#258'NG K'#221
            LayoutDirection = ldHorizontal
            object dxlcMainItem12: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Caption = 'T'#7915' ng'#224'y'
              Control = dxFromDate
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem13: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Caption = #272#7871'n ng'#224'y'
              Control = dxToDate
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem8: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup2: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = '2. TH'#212'NG TIN PHI'#7870'U '#272#258'NG K'#221
            object dxlcMainGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxlcMainItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'M'#227' phi'#7871'u '#273#259'ng k'#253
                  Control = dxDBEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem11: TdxLayoutItem
                  Caption = 'Ng'#432#7901'i l'#7853'p phi'#7871'u'
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcMainGroup9: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxlcMainGroup1: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxlcMainItem4: TdxLayoutItem
                    Caption = 'Ng'#224'y l'#7853'p phi'#7871'u'
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcMainItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Tr'#7841'ng th'#225'i'
                    Control = dxTrangThai
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxlcMainItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#224'i li'#7879'u '#273#237'nh k'#232'm'
                  Control = dxDBButtonEdit1
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxlcMainItem10: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Ghi ch'#250
              CaptionOptions.AlignVert = tavTop
              Control = dxDBMemo1
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxlcMainGroup7: TdxLayoutGroup [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '3. DANH S'#193'CH '#272#258'NG K'#221
        LayoutDirection = ldHorizontal
        object dxlcMainItem7: TdxLayoutItem
          AutoAligns = []
          AlignVert = avClient
          ShowCaption = False
          Control = gridDSNhanvien
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem9: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'ElPageControl1'
          ShowCaption = False
          Control = pageDetail
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
        Caption = #272#259'ng k'#253' ngh'#7881' ph'#233'p / c'#244'ng t'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 760
    Top = 8
  end
  object dsDSPhieuDK: TDataSource
    DataSet = qryDSPhieuDK
    Left = 88
    Top = 56
  end
  object qryDSPhieuDK: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_PHEP_PHIEUDK'
      'WHERE'
      '   MASO_PHIEU = :OLD_MASO_PHIEU')
    EditSQL.Strings = (
      'UPDATE HR_PHEP_PHIEUDK SET'
      '   MASO_PHIEU = :MASO_PHIEU, /*PK*/'
      '   NGAY_DANGKY = :NGAY_DANGKY,'
      '   NHANVIEN_LAPPHIEU = :NHANVIEN_LAPPHIEU,'
      '   DA_DUYET = :DA_DUYET,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   MASO_PHIEU = :OLD_MASO_PHIEU')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_PHEP_PHIEUDK('
      '   MASO_PHIEU, /*PK*/'
      '   NGAY_DANGKY,'
      '   NHANVIEN_LAPPHIEU,'
      '   DA_DUYET,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   GHI_CHU)'
      'VALUES ('
      '   :MASO_PHIEU,'
      '   :NGAY_DANGKY,'
      '   :NHANVIEN_LAPPHIEU,'
      '   :DA_DUYET,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'MASO_PHIEU')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDSPhieuDKNewRecord
    SQL.Strings = (
      'SELECT MASO_PHIEU'
      '     , NGAY_DANGKY'
      '     , NHANVIEN_LAPPHIEU'
      '     , DA_DUYET'
      '     , FILE_NAME'
      '     , FILE_CONTENT'
      '     , GHI_CHU'
      'FROM HR_PHEP_PHIEUDK'
      'where NGAY_DANGKY between :FROM_DATE and :TO_DATE'
      'order by NGAY_DANGKY desc')
    FieldOptions = []
    Left = 56
    Top = 56
    object qryDSPhieuDKMASO_PHIEU: TWideStringField
      FieldName = 'MASO_PHIEU'
      Required = True
      Size = 30
    end
    object qryDSPhieuDKNGAY_DANGKY: TDateField
      FieldName = 'NGAY_DANGKY'
      Required = True
    end
    object qryDSPhieuDKNHANVIEN_LAPPHIEU: TWideStringField
      FieldName = 'NHANVIEN_LAPPHIEU'
      Size = 126
    end
    object qryDSPhieuDKDA_DUYET: TSmallintField
      FieldName = 'DA_DUYET'
      Required = True
    end
    object qryDSPhieuDKGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
    object qryDSPhieuDKFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 63
    end
    object qryDSPhieuDKFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
  end
  object qryDSNhanvien: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MASO_PHIEU'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_PHEP_PHIEUDK_NV'
      'WHERE'
      '   MASO_NHANVIEN = :OLD_MASO_NHANVIEN AND'
      '   MASO_PHIEU = :OLD_MASO_PHIEU')
    EditSQL.Strings = (
      'UPDATE HR_PHEP_PHIEUDK_NV SET'
      '   MASO_NHANVIEN = :MASO_NHANVIEN, /*PK*/'
      '   MASO_PHIEU = :MASO_PHIEU, /*PK*/'
      '   SONGAY_DANGKY = :SONGAY_DANGKY'
      'WHERE'
      '   MASO_NHANVIEN = :OLD_MASO_NHANVIEN AND'
      '   MASO_PHIEU = :OLD_MASO_PHIEU')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_PHEP_PHIEUDK_NV('
      '   MASO_NHANVIEN, /*PK*/'
      '   MASO_PHIEU, /*PK*/'
      '   SONGAY_DANGKY)'
      'VALUES ('
      '   :MASO_NHANVIEN,'
      '   :MASO_PHIEU,'
      '   :SONGAY_DANGKY)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDSNhanvienNewRecord
    DataSource = dsDSPhieuDK
    SQL.Strings = (
      'SELECT HR_PHEP_PHIEUDK_NV.MASO_PHIEU'
      '     , HR_PHEP_PHIEUDK_NV.MASO_NHANVIEN'
      '     , HR_DANHSACH_NHANVIEN.ho_ten'
      '     , HR_DANHSACH_NHANVIEN.ten_donvi'
      '     , HR_DANHSACH_NHANVIEN.ten_chucvu'
      '     , HR_PHEP_PHIEUDK_NV.SONGAY_DANGKY'
      'FROM HR_PHEP_PHIEUDK_NV'
      'JOIN HR_DANHSACH_NHANVIEN'
      
        '  on HR_PHEP_PHIEUDK_NV.MASO_NHANVIEN=HR_DANHSACH_NHANVIEN.maso_' +
        'nhanvien'
      'where  HR_PHEP_PHIEUDK_NV.MASO_PHIEU=:MASO_PHIEU')
    FieldOptions = []
    Left = 59
    Top = 136
    object qryDSNhanvienMASO_PHIEU: TWideStringField
      FieldName = 'MASO_PHIEU'
      Required = True
      Size = 30
    end
    object qryDSNhanvienMASO_NHANVIEN: TWideStringField
      FieldName = 'MASO_NHANVIEN'
      Required = True
      Size = 30
    end
    object qryDSNhanvienHO_TEN: TWideStringField
      FieldName = 'HO_TEN'
      Size = 125
    end
    object qryDSNhanvienTEN_DONVI: TWideStringField
      FieldName = 'TEN_DONVI'
      Size = 126
    end
    object qryDSNhanvienTEN_CHUCVU: TWideStringField
      FieldName = 'TEN_CHUCVU'
      Size = 126
    end
    object qryDSNhanvienSONGAY_DANGKY: TIntegerField
      FieldName = 'SONGAY_DANGKY'
    end
  end
  object dsDSNhanvien: TDataSource
    DataSet = qryDSNhanvien
    Left = 59
    Top = 164
  end
  object qryChitietDK: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MASO_PHIEU'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MASO_NHANVIEN'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_PHEP_PHIEUDK_CT'
      'WHERE'
      '   DEN_NGAY = :OLD_DEN_NGAY AND'
      '   MASO_NHANVIEN = :OLD_MASO_NHANVIEN AND'
      '   MASO_PHIEU = :OLD_MASO_PHIEU AND'
      '   TU_NGAY = :OLD_TU_NGAY')
    EditSQL.Strings = (
      'UPDATE HR_PHEP_PHIEUDK_CT SET'
      '   DEN_NGAY = :DEN_NGAY, /*PK*/'
      '   MASO_NHANVIEN = :MASO_NHANVIEN, /*PK*/'
      '   MASO_PHIEU = :MASO_PHIEU, /*PK*/'
      '   TU_NGAY = :TU_NGAY, /*PK*/'
      '   LOAI_NGAY = :LOAI_NGAY,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   DEN_NGAY = :OLD_DEN_NGAY AND'
      '   MASO_NHANVIEN = :OLD_MASO_NHANVIEN AND'
      '   MASO_PHIEU = :OLD_MASO_PHIEU AND'
      '   TU_NGAY = :OLD_TU_NGAY')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_PHEP_PHIEUDK_CT('
      '   DEN_NGAY, /*PK*/'
      '   MASO_NHANVIEN, /*PK*/'
      '   MASO_PHIEU, /*PK*/'
      '   TU_NGAY, /*PK*/'
      '   LOAI_NGAY,'
      '   GHI_CHU)'
      'VALUES ('
      '   :DEN_NGAY,'
      '   :MASO_NHANVIEN,'
      '   :MASO_PHIEU,'
      '   :TU_NGAY,'
      '   :LOAI_NGAY,'
      '   :GHI_CHU)')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietDKNewRecord
    DataSource = dsDSNhanvien
    SQL.Strings = (
      'SELECT MASO_PHIEU'
      '     , MASO_NHANVIEN'
      '     , TU_NGAY'
      '     , DEN_NGAY'
      '     , LOAI_NGAY'
      '     , WDT_NAME'
      '     , WDT_COLOR '
      '     , GHI_CHU'
      'FROM HR_PHEP_PHIEUDK_CT'
      'JOIN HR_WORK_DATE_TYPE on'
      '  LOAI_NGAY=WDT_NO'
      'where'
      '  MASO_PHIEU=:MASO_PHIEU and'
      '  MASO_NHANVIEN=:MASO_NHANVIEN ')
    FieldOptions = []
    Left = 91
    Top = 136
    object qryChitietDKMASO_PHIEU: TWideStringField
      FieldName = 'MASO_PHIEU'
      Required = True
      Size = 30
    end
    object qryChitietDKMASO_NHANVIEN: TWideStringField
      FieldName = 'MASO_NHANVIEN'
      Required = True
      Size = 30
    end
    object qryChitietDKTU_NGAY: TDateField
      FieldName = 'TU_NGAY'
      Required = True
    end
    object qryChitietDKDEN_NGAY: TDateField
      FieldName = 'DEN_NGAY'
      Required = True
    end
    object qryChitietDKLOAI_NGAY: TWideStringField
      FieldName = 'LOAI_NGAY'
      Required = True
      Size = 30
    end
    object qryChitietDKWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      Required = True
      Size = 126
    end
    object qryChitietDKWDT_COLOR: TIntegerField
      FieldName = 'WDT_COLOR'
    end
    object qryChitietDKGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 126
    end
  end
  object dsChitietDK: TDataSource
    DataSet = qryChitietDK
    Left = 91
    Top = 165
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 232
    Top = 112
    object acXemDSPhieuDK: TAction
      Caption = 'acXemDSPhieuDK'
      ImageIndex = 61
      OnExecute = acXemDSPhieuDKExecute
    end
    object acPhatsinhDLChamcong: TAction
      Caption = 'acPhatsinhDLChamcong'
      ImageIndex = 62
    end
  end
  object qryPhatsinh: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 144
    Top = 96
  end
end
