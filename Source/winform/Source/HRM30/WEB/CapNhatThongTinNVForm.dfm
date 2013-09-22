inherited frmCapNhatThongTinNV: TfrmCapNhatThongTinNV
  Left = 80
  Top = 90
  Width = 1071
  Height = 645
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 592
    Width = 1063
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 1063
    Height = 592
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 565
      Width = 738
      Color = 15466238
      TabOrder = 1
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 738
        inherited btnClose: TElPopupButton
          Left = 989
        end
        inherited btnHelp: TElPopupButton
          Left = 859
        end
        inherited btnChoose: TElPopupButton
          Left = 929
        end
        inherited btnDesign: TElPopupButton
          Left = 649
        end
        inherited btnPreview: TElPopupButton
          Left = 579
        end
        inherited btnPrint: TElPopupButton
          Left = 509
        end
        inherited btnSendMail: TElPopupButton
          Left = 484
        end
        inherited btnGenerate: TElPopupButton
          Left = 774
          ImageIndex = 9
          UseImageList = True
          Images = dmMain.imgAction
          Caption = 'C'#7853'p nh'#7853't'
          Action = acCapNhat
        end
        inherited btnRelation: TElPopupButton
          Left = 749
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 724
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxlctrlInsert: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlInsertCopy: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlDelete: TdxLayoutItem
              Visible = False
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
    end
    object gridDSNVHieuChinh: TdxDBGrid [1]
      Left = 2
      Top = 2
      Width = 191
      Height = 546
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EMPLOYEE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alLeft
      TabOrder = 0
      DataSource = dsDSNVHieuChinh
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      OnChangeNode = gridDSNVHieuChinhChangeNode
      object gridDSNVHieuChinhEMPLOYEE_NO: TdxDBGridColumn
        Caption = 'M'#227' NV'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM NV'
      end
      object gridDSNVHieuChinhFULL_NAME: TdxDBGridColumn
        Caption = 'H'#7885' t'#234'n NV'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 t+AOo-n NV'
      end
    end
    object pageThongTin: TElPageControl [2]
      Left = 193
      Top = 2
      Width = 289
      Height = 193
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
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabThongTinChung
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      object tabThongTinChung: TElTabSheet
        PageControl = pageThongTin
        ImageIndex = -1
        TabVisible = True
        Caption = 'Th'#244'ng tin chung'
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 172
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxEmployeeNo_HR: TdxDBEdit
            Left = 201
            Top = 28
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            DataField = 'EMPLOYEE_NO'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxLastName_HR: TdxDBEdit
            Left = 201
            Top = 51
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            DataField = 'LAST_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxMiddleName_HR: TdxDBEdit
            Left = 286
            Top = 51
            Width = 109
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            DataField = 'MIDDLE_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxFirstName_HR: TdxDBEdit
            Left = 395
            Top = 51
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            DataField = 'FIRST_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxRegisteredName_HR: TdxDBEdit
            Left = 201
            Top = 74
            Width = 194
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            DataField = 'REGISTERED_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxAlias_HR: TdxDBEdit
            Left = 395
            Top = 74
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            DataField = 'ALIAS'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dbimGENDER: TdxDBImageEdit
            Left = 286
            Top = 97
            Width = 109
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 7
            DataField = 'GENDER'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            DropDownRows = 16777223
            PopupBorder = pbSingle
            Descriptions.WideStrings = (
              '')
            ImageIndexes.WideStrings = (
              '0')
            Values.WideStrings = (
              '')
            StoredValues = 64
          end
          object dxBirthDate_HR: TdxDBDateEdit
            Left = 201
            Top = 97
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 6
            DataField = 'BIRTH_DATE'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxIDCardNo_HR: TdxDBEdit
            Left = 201
            Top = 120
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 9
            DataField = 'ID_CARD_NO'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxIssuedDate_HR: TdxDBDateEdit
            Left = 286
            Top = 120
            Width = 109
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 10
            DataField = 'ISSUED_DATE'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxIssuedPlace_HR: TdxDBEdit
            Left = 395
            Top = 120
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 11
            DataField = 'ISSUED_PLACE'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxPassport_HR: TdxDBEdit
            Left = 201
            Top = 143
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 12
            DataField = 'PASSPORT'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxPassportDate_HR: TdxDBDateEdit
            Left = 286
            Top = 143
            Width = 109
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 13
            DataField = 'PASSPORT_DATE'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxPassportPlace_HR: TdxDBEdit
            Left = 395
            Top = 143
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 14
            DataField = 'PASSPORT_PLACE'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxStatusName_HR: TdxDBEdit
            Left = 395
            Top = 97
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 8
            DataField = 'STATUS_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNationName_HR: TdxDBEdit
            Left = 201
            Top = 166
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 15
            DataField = 'NATION_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxBIRTH_PLACE_ID_HR: TdxDBEdit
            Left = 286
            Top = 166
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 16
            DataField = 'BIRTH_PLACE_ID'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxRACE_NAME_HR: TdxDBEdit
            Left = 201
            Top = 189
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 17
            DataField = 'RACE_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNATIVE_PLACE_ID_HR: TdxDBEdit
            Left = 286
            Top = 189
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 18
            DataField = 'NATIVE_PLACE_ID'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxRELIGION_NAME_HR: TdxDBEdit
            Left = 201
            Top = 212
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 19
            DataField = 'RELIGION_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxDESCENT_NAME_HR: TdxDBEdit
            Left = 286
            Top = 212
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 20
            DataField = 'DESCENT_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCONTACT_PHONE_HR: TdxDBEdit
            Left = 201
            Top = 235
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 21
            DataField = 'CONTACT_PHONE'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxRESIDENT_ADDR_HR: TdxDBEdit
            Left = 286
            Top = 235
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 22
            DataField = 'RESIDENT_ADDR'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxHAND_PHONE_HR: TdxDBEdit
            Left = 201
            Top = 258
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 23
            DataField = 'HAND_PHONE'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxPROVISION_ADDR_HR: TdxDBEdit
            Left = 286
            Top = 258
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 24
            DataField = 'PROVISION_ADDR'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxEMAIL_HR: TdxDBHyperLinkEdit
            Left = 201
            Top = 281
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 25
            AutoSelect = True
            DataField = 'EMAIL'
            DataSource = dsDuLieuNhanSu
            MaxLength = 20
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 66
          end
          object dxCONTACT_ADDR_HR: TdxDBEdit
            Left = 286
            Top = 281
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 26
            DataField = 'CONTACT_ADDR'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxEmployeeNo_WEB: TdxDBEdit
            Left = 489
            Top = 28
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 48
            DataField = 'EMPLOYEE_NO'
            DataSource = dsDuLieuWeb
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxLastName_WEB: TdxDBEdit
            Left = 489
            Top = 51
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 49
            DataField = 'LAST_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxMiddleName_WEB: TdxDBEdit
            Left = 612
            Top = 51
            Width = 154
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 51
            DataField = 'MIDDLE_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxFirstName_WEB: TdxDBEdit
            Left = 744
            Top = 51
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 53
            DataField = 'FIRST_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxBirthDate_WEB: TdxDBDateEdit
            Left = 489
            Top = 97
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 59
            DataField = 'BIRTH_DATE'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
          end
          object dbimGENDER_WEB: TdxDBImageEdit
            Left = 612
            Top = 97
            Width = 101
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 61
            DataField = 'GENDER'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
            DropDownRows = 16777223
            PopupBorder = pbSingle
            Descriptions.WideStrings = (
              '')
            ImageIndexes.WideStrings = (
              '0'
              '1')
            Values.WideStrings = (
              '')
          end
          object dxStatusName_WEB: TdxDBEdit
            Left = 744
            Top = 97
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 63
            DataField = 'STATUS_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxIDCardNo_WEB: TdxDBEdit
            Left = 489
            Top = 120
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 65
            DataField = 'ID_CARD_NO'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxIssuedDate_WEB: TdxDBDateEdit
            Left = 612
            Top = 120
            Width = 101
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 67
            DataField = 'ISSUED_DATE'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
          end
          object dxIssuedPlace_WEB: TdxDBEdit
            Left = 744
            Top = 120
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 69
            DataField = 'ISSUED_PLACE'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxPassport_WEB: TdxDBEdit
            Left = 489
            Top = 143
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 71
            DataField = 'PASSPORT'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxPassportDate_WEB: TdxDBDateEdit
            Left = 612
            Top = 143
            Width = 101
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 73
            DataField = 'PASSPORT_DATE'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
          end
          object dxPassportPlace_WEB: TdxDBEdit
            Left = 744
            Top = 143
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 75
            DataField = 'PASSPORT_PLACE'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxNationName_WEB: TdxDBEdit
            Left = 489
            Top = 166
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 77
            DataField = 'NATION_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxBIRTH_PLACE_ID_WEB: TdxDBEdit
            Left = 612
            Top = 166
            Width = 265
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 79
            DataField = 'BIRTH_PLACE_ID'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxRACE_NAME_WEB: TdxDBEdit
            Left = 489
            Top = 189
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 81
            DataField = 'RACE_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxNATIVE_PLACE_ID_WEB: TdxDBEdit
            Left = 612
            Top = 189
            Width = 265
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 83
            DataField = 'NATIVE_PLACE_ID'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxRELIGION_NAME_WEB: TdxDBEdit
            Left = 489
            Top = 212
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 85
            DataField = 'RELIGION_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxDESCENT_NAME_WEB: TdxDBEdit
            Left = 612
            Top = 212
            Width = 265
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 87
            DataField = 'DESCENT_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxRegisteredName_WEB: TdxDBEdit
            Left = 489
            Top = 74
            Width = 278
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 55
            DataField = 'REGISTERED_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxAlias_WEB: TdxDBEdit
            Left = 744
            Top = 74
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 57
            DataField = 'ALIAS'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxHAND_PHONE_WEB: TdxDBEdit
            Left = 489
            Top = 258
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 93
            DataField = 'HAND_PHONE'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxPROVISION_ADDR_WEB: TdxDBEdit
            Left = 612
            Top = 258
            Width = 265
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 95
            DataField = 'PROVISION_ADDR'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxEMAIL_WEB: TdxDBHyperLinkEdit
            Left = 489
            Top = 281
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 97
            AutoSelect = True
            DataField = 'EMAIL'
            DataSource = dsDuLieuWeb
            MaxLength = 20
            StyleController = dmMain.StyleController
            StoredValues = 2
          end
          object dxCONTACT_ADDR_WEB: TdxDBEdit
            Left = 612
            Top = 281
            Width = 265
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 99
            DataField = 'CONTACT_ADDR'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxCOQUAN_THUE_QUANLY_HR: TdxDBEdit
            Left = 286
            Top = 350
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 31
            DataField = 'COQUAN_THUE_QUANLY'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCURRENCY_NAME_HR: TdxDBEdit
            Left = 201
            Top = 304
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 27
            DataField = 'CURRENCY_NAME'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxACCOUNT_ID_HR: TdxDBEdit
            Left = 286
            Top = 304
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 28
            DataField = 'ACCOUNT_ID'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxACCOUNT_BANK_HR: TdxDBEdit
            Left = 201
            Top = 327
            Width = 264
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 29
            DataField = 'ACCOUNT_BANK'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxMASO_THUE_CANHAN_HR: TdxDBEdit
            Left = 201
            Top = 350
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 30
            DataField = 'MASO_THUE_CANHAN'
            DataSource = dsDuLieuNhanSu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCURRENCY_NAME_WEB: TdxDBEdit
            Left = 489
            Top = 304
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 101
            DataField = 'CURRENCY_NAME'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxACCOUNT_ID_WEB: TdxDBEdit
            Left = 612
            Top = 304
            Width = 245
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 103
            DataField = 'ACCOUNT_ID'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxACCOUNT_BANK_WEB: TdxDBEdit
            Left = 489
            Top = 327
            Width = 335
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 105
            DataField = 'ACCOUNT_BANK'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxMASO_THUE_CANHAN_WEB: TdxDBEdit
            Left = 489
            Top = 350
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 107
            DataField = 'MASO_THUE_CANHAN'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxCOQUAN_THUE_QUANLY_WEB: TdxDBEdit
            Left = 612
            Top = 350
            Width = 245
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 109
            DataField = 'COQUAN_THUE_QUANLY'
            DataSource = dsDuLieuWeb
            StyleController = dmMain.StyleController
          end
          object dxDuyetLastName: TdxCheckEdit
            Left = 589
            Top = 51
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 50
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetMiddleName: TdxCheckEdit
            Left = 721
            Top = 51
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 52
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetFirstName: TdxCheckEdit
            Left = 814
            Top = 51
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 54
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetStatusName: TdxCheckEdit
            Left = 814
            Top = 97
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 64
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetGender: TdxCheckEdit
            Left = 721
            Top = 97
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 62
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetBirthDate: TdxCheckEdit
            Left = 589
            Top = 97
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 60
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetAlias: TdxCheckEdit
            Left = 814
            Top = 74
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 58
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetRegisteredName: TdxCheckEdit
            Left = 721
            Top = 74
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 56
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetPassport: TdxCheckEdit
            Left = 589
            Top = 143
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 72
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetIssuedPlace: TdxCheckEdit
            Left = 814
            Top = 120
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 70
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetIssuedDate: TdxCheckEdit
            Left = 721
            Top = 120
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 68
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetIDCardNo: TdxCheckEdit
            Left = 589
            Top = 120
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 66
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetPassportPlace: TdxCheckEdit
            Left = 814
            Top = 143
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 76
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetPassportDate: TdxCheckEdit
            Left = 721
            Top = 143
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 74
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxCONTACT_PHONE_WEB: TdxDBEdit
            Left = 489
            Top = 235
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 89
            DataField = 'CONTACT_PHONE'
            DataSource = dsDuLieuWeb
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxRESIDENT_ADDR_WEB: TdxDBEdit
            Left = 612
            Top = 235
            Width = 246
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 91
            DataField = 'RESIDENT_ADDR'
            DataSource = dsDuLieuWeb
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxDuyetNATION_NAME: TdxCheckEdit
            Left = 589
            Top = 166
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 78
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetBIRTH_PLACE_ID: TdxCheckEdit
            Left = 814
            Top = 166
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 80
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetRaceName: TdxCheckEdit
            Left = 589
            Top = 189
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 82
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetNATIVE_PLACE_ID: TdxCheckEdit
            Left = 814
            Top = 189
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 84
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetPROVISION_ADDR: TdxCheckEdit
            Left = 814
            Top = 258
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 96
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetHAND_PHONE: TdxCheckEdit
            Left = 589
            Top = 258
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 94
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetRESIDENT_ADDR: TdxCheckEdit
            Left = 814
            Top = 235
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 92
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetCONTACT_PHONE: TdxCheckEdit
            Left = 589
            Top = 235
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 90
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetDESCENT_NAME: TdxCheckEdit
            Left = 814
            Top = 212
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 88
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetRELIGION_NAME: TdxCheckEdit
            Left = 589
            Top = 212
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 86
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetCOQUAN_THUE_QUANLY: TdxCheckEdit
            Left = 814
            Top = 350
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 110
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetMASO_THUE_CANHAN: TdxCheckEdit
            Left = 589
            Top = 350
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 108
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetACCOUNT_BANK: TdxCheckEdit
            Left = 814
            Top = 327
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 106
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetACCOUNT_ID: TdxCheckEdit
            Left = 814
            Top = 304
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 104
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetCURRENCY_NAME: TdxCheckEdit
            Left = 589
            Top = 304
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 102
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetCONTACT_ADDR: TdxCheckEdit
            Left = 814
            Top = 281
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 100
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetEMAIL: TdxCheckEdit
            Left = 589
            Top = 281
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 98
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxCAN_NANG_HR: TdxDBCalcEdit
            Left = 201
            Top = 373
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 32
            DataField = 'CAN_NANG'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxDAUVET_DACBIET_HR: TdxDBEdit
            Left = 286
            Top = 373
            Width = 109
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 33
            DataField = 'DAUVET_DACBIET'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCHIEU_CAO_HR: TdxDBCalcEdit
            Left = 395
            Top = 373
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 34
            DataField = 'CHIEU_CAO'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxNGAY_VAO_DANG_HR: TdxDBDateEdit
            Left = 201
            Top = 396
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 35
            DataField = 'NGAY_VAO_DANG'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxNGAY_VAO_DOAN_HR: TdxDBDateEdit
            Left = 201
            Top = 419
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 37
            DataField = 'NGAY_VAO_DOAN'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxNGAY_VAO_CDOAN_HR: TdxDBDateEdit
            Left = 201
            Top = 442
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 39
            DataField = 'NGAY_VAO_CDOAN'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxTEN_CHUCVU_DANG_HR: TdxDBEdit
            Left = 286
            Top = 396
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 36
            DataField = 'TEN_CHUCVU_DANG'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxTEN_CHUCVU_DOAN_HR: TdxDBEdit
            Left = 286
            Top = 419
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 38
            DataField = 'TEN_CHUCVU_DOAN'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxTEN_CHUCVU_CDOAN_HR: TdxDBEdit
            Left = 286
            Top = 442
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 40
            DataField = 'TEN_CHUCVU_CDOAN'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNGAY_VAO_CONGTY_HR: TdxDBDateEdit
            Left = 201
            Top = 465
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 41
            DataField = 'NGAY_VAO_CONGTY'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxACADEMIC_NAME_HR: TdxDBEdit
            Left = 286
            Top = 465
            Width = 109
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 42
            DataField = 'ACADEMIC_NAME'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxEDU_LEVEL_NAME_HR: TdxDBEdit
            Left = 395
            Top = 465
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 43
            DataField = 'EDU_LEVEL_NAME'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCAREER_NAME_HR: TdxDBEdit
            Left = 201
            Top = 488
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 44
            DataField = 'CAREER_NAME'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxSOTRUONG_CTAC_HR: TdxDBEdit
            Left = 286
            Top = 488
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 45
            DataField = 'SOTRUONG_CTAC'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNAM_TOTNGHIEP_HR: TdxDBCalcEdit
            Left = 201
            Top = 511
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 46
            DataField = 'NAM_TOTNGHIEP'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxCONGVIEC_LAUNHAT_HR: TdxDBEdit
            Left = 286
            Top = 511
            Width = 179
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 47
            DataField = 'CONGVIEC_LAUNHAT'
            DataSource = dsThongTinThem_Nhansu
            ReadOnly = True
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCAN_NANG_WEB: TdxDBCalcEdit
            Left = 489
            Top = 373
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 111
            DataField = 'CAN_NANG'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxDAUVET_DACBIET_WEB: TdxDBEdit
            Left = 612
            Top = 373
            Width = 184
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 113
            DataField = 'DAUVET_DACBIET'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCHIEU_CAO_WEB: TdxDBCalcEdit
            Left = 744
            Top = 373
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 115
            DataField = 'CHIEU_CAO'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxNGAY_VAO_DANG_WEB: TdxDBDateEdit
            Left = 489
            Top = 396
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 117
            DataField = 'NGAY_VAO_DANG'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxTEN_CHUCVU_DANG_WEB: TdxDBEdit
            Left = 612
            Top = 396
            Width = 304
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 119
            DataField = 'TEN_CHUCVU_DANG'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNGAY_VAO_DOAN_WEB: TdxDBDateEdit
            Left = 489
            Top = 419
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 121
            DataField = 'NGAY_VAO_DOAN'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxTEN_CHUCVU_DOAN_WEB: TdxDBEdit
            Left = 612
            Top = 419
            Width = 304
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 123
            DataField = 'TEN_CHUCVU_DOAN'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNGAY_VAO_CDOAN_WEB: TdxDBDateEdit
            Left = 489
            Top = 442
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 125
            DataField = 'NGAY_VAO_CDOAN'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxTEN_CHUCVU_CDOAN_WEB: TdxDBEdit
            Left = 612
            Top = 442
            Width = 304
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 127
            DataField = 'TEN_CHUCVU_CDOAN'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCAREER_NAME_WEB: TdxDBEdit
            Left = 489
            Top = 488
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 135
            DataField = 'CAREER_NAME'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxSOTRUONG_CTAC_WEB: TdxDBEdit
            Left = 612
            Top = 488
            Width = 304
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 137
            DataField = 'SOTRUONG_CTAC'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxCONGVIEC_LAUNHAT_WEB: TdxDBEdit
            Left = 612
            Top = 511
            Width = 304
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 141
            DataField = 'CONGVIEC_LAUNHAT'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNAM_TOTNGHIEP_WEB: TdxDBCalcEdit
            Left = 489
            Top = 511
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 139
            DataField = 'NAM_TOTNGHIEP'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxACADEMIC_NAME_WEB: TdxDBEdit
            Left = 612
            Top = 465
            Width = 184
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 131
            DataField = 'ACADEMIC_NAME'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxNGAY_VAO_CONGTY_WEB: TdxDBDateEdit
            Left = 489
            Top = 465
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 129
            DataField = 'NGAY_VAO_CONGTY'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxEDU_LEVEL_NAME_WEB: TdxDBEdit
            Left = 744
            Top = 465
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 133
            DataField = 'EDU_LEVEL_NAME'
            DataSource = dsThongTinThem_Web
            ReadOnly = False
            StyleController = dmMain.StyleController
            StoredValues = 64
          end
          object dxDuyetCanNang: TdxCheckEdit
            Left = 589
            Top = 373
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 112
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetDauVetDacBiet: TdxCheckEdit
            Left = 721
            Top = 373
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 114
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetChieuCao: TdxCheckEdit
            Left = 814
            Top = 373
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 116
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetNgayVaoDang: TdxCheckEdit
            Left = 589
            Top = 396
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 118
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetChucVuDang: TdxCheckEdit
            Left = 814
            Top = 396
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 120
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetChucVuDoan: TdxCheckEdit
            Left = 814
            Top = 419
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 124
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetNgayVaoDoan: TdxCheckEdit
            Left = 589
            Top = 419
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 122
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetChucVuCDoan: TdxCheckEdit
            Left = 814
            Top = 442
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 128
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetNgayVaoCDoan: TdxCheckEdit
            Left = 589
            Top = 442
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 126
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetNgayVaoCty: TdxCheckEdit
            Left = 589
            Top = 465
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 130
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetTDVanHoa: TdxCheckEdit
            Left = 721
            Top = 465
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 132
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetTDHocVan: TdxCheckEdit
            Left = 814
            Top = 465
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 134
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetNgheNghiep: TdxCheckEdit
            Left = 589
            Top = 488
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 136
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetSoTruongCTac: TdxCheckEdit
            Left = 814
            Top = 488
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 138
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetCVLauNhat: TdxCheckEdit
            Left = 814
            Top = 511
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 142
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxDuyetNamTotNghiep: TdxCheckEdit
            Left = 589
            Top = 511
            Width = 23
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 140
            StyleController = dmMain.StyleController
            NullStyle = nsUnchecked
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Group1: TdxLayoutGroup
              AutoAligns = []
              AlignVert = avClient
              Caption = 'Th'#244'ng tin b'#234'n nh'#226'n s'#7921
              object dxLayoutControl1Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'M'#227' NV'
                Control = dxEmployeeNo_HR
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Group2: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item2: TdxLayoutItem
                  Caption = 'H'#7885' t'#234'n NV'
                  Control = dxLastName_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxMiddleName_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Control = dxFirstName_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group3: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#234'n khai sinh / b'#237' danh'
                  Control = dxRegisteredName_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Control = dxAlias_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group4: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item8: TdxLayoutItem
                  Caption = 'Ng'#224'y sinh/Gi'#7899'i t'#237'nh/H'#244'n nh'#226'n'
                  Control = dxBirthDate_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dbimGENDER
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item15: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Control = dxStatusName_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group5: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item9: TdxLayoutItem
                  Caption = 'S'#7889' CMND/Ng'#224'y c'#7845'p/N'#417'i c'#7845'p'
                  Control = dxIDCardNo_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxIssuedDate_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item11: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Control = dxIssuedPlace_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group6: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item12: TdxLayoutItem
                  Caption = 'Passport/Ng'#224'y c'#7845'p/N'#417'i c'#7845'p'
                  Control = dxPassport_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxPassportDate_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item14: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Control = dxPassportPlace_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group7: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item16: TdxLayoutItem
                  Caption = 'Qu'#7889'c t'#7883'ch/N'#417'i sinh'
                  Control = dxNationName_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item17: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxBIRTH_PLACE_ID_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group8: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item18: TdxLayoutItem
                  Caption = 'D'#226'n t'#7897'c/Qu'#234' qu'#225'n'
                  Control = dxRACE_NAME_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item19: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxNATIVE_PLACE_ID_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group9: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item20: TdxLayoutItem
                  Caption = 'T'#244'n gi'#225'o/Xu'#7845't th'#226'n'
                  Control = dxRELIGION_NAME_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item21: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxDESCENT_NAME_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group10: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item22: TdxLayoutItem
                  Caption = 'S'#7889' '#272'T/'#272'C th'#432#7901'ng tr'#250
                  Control = dxCONTACT_PHONE_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item23: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxRESIDENT_ADDR_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group11: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item24: TdxLayoutItem
                  Caption = 'Mobile/'#272'C t'#7841'm tr'#250
                  Control = dxHAND_PHONE_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item25: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxPROVISION_ADDR_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group12: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item26: TdxLayoutItem
                  Caption = 'Email/'#272'C li'#234'n h'#7879
                  Control = dxEMAIL_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item27: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxCONTACT_ADDR_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group13: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item31: TdxLayoutItem
                  Caption = 'Ti'#7873'n t'#7879'/T'#224'i kho'#7843'n'
                  Control = dxCURRENCY_NAME_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item29: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxACCOUNT_ID_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Item30: TdxLayoutItem
                Caption = 'Ng'#226'n h'#224'ng'
                Control = dxACCOUNT_BANK_HR
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Group14: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item32: TdxLayoutItem
                  Caption = 'M'#227' s'#7889' thu'#7871'/C'#417' quan thu'#7871
                  Control = dxMASO_THUE_CANHAN_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item28: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxCOQUAN_THUE_QUANLY_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group30: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item96: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'C'#226'n n'#7863'ng/D'#7845'u v'#7871't/Chi'#7873'u cao'
                  Control = dxCAN_NANG_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item97: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxDAUVET_DACBIET_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item98: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCHIEU_CAO_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group31: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item99: TdxLayoutItem
                  Caption = 'Ng'#224'y v'#224'o '#272#7843'ng/Ch'#7913'c v'#7909
                  Control = dxNGAY_VAO_DANG_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item100: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxTEN_CHUCVU_DANG_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group32: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item101: TdxLayoutItem
                  Caption = 'Ng'#224'y v'#224'o '#272'o'#224'n/Ch'#7913'c v'#7909
                  Control = dxNGAY_VAO_DOAN_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item102: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxTEN_CHUCVU_DOAN_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group33: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item103: TdxLayoutItem
                  Caption = 'Ng'#224'y v'#224'o C'#272'o'#224'n/Ch'#7913'c v'#7909
                  Control = dxNGAY_VAO_CDOAN_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item104: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Control = dxTEN_CHUCVU_CDOAN_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group34: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item105: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ng'#224'y v'#224'o Cty/T'#272' V'#259'n h'#243'a/T'#272' h'#7885'c v'#7845'n'
                  Control = dxNGAY_VAO_CONGTY_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item106: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxACADEMIC_NAME_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item108: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Control = dxEDU_LEVEL_NAME_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group35: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item107: TdxLayoutItem
                  Caption = 'Ngh'#7873' nghi'#7879'p/S'#7903' tr'#432#7901'ng c'#244'ng t'#225'c'
                  Control = dxCAREER_NAME_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item109: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxSOTRUONG_CTAC_HR
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group36: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item111: TdxLayoutItem
                  Caption = 'N'#259'm t'#7889't nghi'#7879'p/C'#244'ng vi'#7879'c l'#226'u nh'#7845't'
                  Control = dxNAM_TOTNGHIEP_HR
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item110: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCONGVIEC_LAUNHAT_HR
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl1Group15: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Th'#244'ng tin ch'#7881'nh s'#7917'a'
              object dxLayoutControl1Item33: TdxLayoutItem
                AutoAligns = [aaVertical]
                Control = dxEmployeeNo_WEB
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Group16: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item34: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxLastName_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item66: TdxLayoutItem
                  Caption = 'dxCheckEdit1'
                  ShowCaption = False
                  Control = dxDuyetLastName
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item35: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxMiddleName_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item67: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetMiddleName
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item36: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxFirstName_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item68: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  ShowCaption = False
                  Control = dxDuyetFirstName
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group24: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item55: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxRegisteredName_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item73: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetRegisteredName
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item56: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxAlias_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item72: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetAlias
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group17: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item38: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxBirthDate_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item71: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetBirthDate
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item37: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dbimGENDER_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item70: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetGender
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item39: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxStatusName_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item69: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetStatusName
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group18: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item41: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxIDCardNo_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item77: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetIDCardNo
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item40: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxIssuedDate_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item76: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetIssuedDate
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item42: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxIssuedPlace_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item75: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetIssuedPlace
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group19: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item43: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxPassport_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item74: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetPassport
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item44: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxPassportDate_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item82: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetPassportDate
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item45: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxPassportPlace_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item81: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetPassportPlace
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group21: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item49: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxNationName_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item48: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNATION_NAME
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item50: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxBIRTH_PLACE_ID_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item78: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetBIRTH_PLACE_ID
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group22: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item51: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxRACE_NAME_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item79: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetRaceName
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item52: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxNATIVE_PLACE_ID_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item80: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNATIVE_PLACE_ID
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group23: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item53: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxRELIGION_NAME_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item88: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetRELIGION_NAME
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item54: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxDESCENT_NAME_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item87: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetDESCENT_NAME
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group20: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item46: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCONTACT_PHONE_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item86: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetCONTACT_PHONE
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item47: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxRESIDENT_ADDR_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item85: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetRESIDENT_ADDR
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group25: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item58: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxHAND_PHONE_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item84: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetHAND_PHONE
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item59: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxPROVISION_ADDR_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item83: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetPROVISION_ADDR
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group26: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item57: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxEMAIL_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item95: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetEMAIL
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item60: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCONTACT_ADDR_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item94: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetCONTACT_ADDR
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group27: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item61: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCURRENCY_NAME_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item93: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetCURRENCY_NAME
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item62: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxACCOUNT_ID_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item92: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetACCOUNT_ID
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group29: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item63: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxACCOUNT_BANK_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item91: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetACCOUNT_BANK
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group28: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item64: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxMASO_THUE_CANHAN_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item90: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetMASO_THUE_CANHAN
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item65: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCOQUAN_THUE_QUANLY_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item89: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetCOQUAN_THUE_QUANLY
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group37: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item112: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCAN_NANG_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item128: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetCanNang
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item113: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxDAUVET_DACBIET_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item129: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetDauVetDacBiet
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item114: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCHIEU_CAO_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item130: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetChieuCao
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group38: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item115: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxNGAY_VAO_DANG_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item131: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNgayVaoDang
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item116: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxTEN_CHUCVU_DANG_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item132: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetChucVuDang
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group39: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item117: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxNGAY_VAO_DOAN_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item134: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNgayVaoDoan
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item118: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxTEN_CHUCVU_DOAN_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item133: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetChucVuDoan
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group40: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item120: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxNGAY_VAO_CDOAN_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item136: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNgayVaoCDoan
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item119: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxTEN_CHUCVU_CDOAN_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item135: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetChucVuCDoan
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group43: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item125: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxNGAY_VAO_CONGTY_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item137: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNgayVaoCty
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item126: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxACADEMIC_NAME_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item138: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetTDVanHoa
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item127: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxEDU_LEVEL_NAME_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item139: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetTDHocVan
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group41: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item121: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCAREER_NAME_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item140: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNgheNghiep
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item122: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxSOTRUONG_CTAC_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item141: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetSoTruongCTac
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group42: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item123: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxNAM_TOTNGHIEP_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item143: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetNamTotNghiep
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item124: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = dxCONGVIEC_LAUNHAT_WEB
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item142: TdxLayoutItem
                  ShowCaption = False
                  Control = dxDuyetCVLauNhat
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
      object tabTrinhDo: TElTabSheet
        PageControl = pageThongTin
        ImageIndex = -1
        TabVisible = True
        Caption = 'Tr'#236'nh '#273#7897' k'#7929' n'#259'ng - ngo'#7841'i ng'#7919' - chuy'#234'n m'#244'n'
        Visible = False
        object dxKyNang: TdxDBGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 185
          Bands = <
            item
              Caption = 'Tr'#236'nh '#273#7897' k'#7929' n'#259'ng'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KEY_FIELD'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
          TabOrder = 0
          DataSource = dsTrinhDoKyNang
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object dxKyNangEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object dxKyNangSKILL_NO: TdxDBGridColumn
            Caption = 'Ma k'#7929' n'#259'ng'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SKILL_NO'
            Caption_UTF7 = 'Ma k+Hvk n+AQM-ng'
          end
          object dxKyNangSKILL_NAME: TdxDBGridColumn
            Caption = 'T'#234'n k'#7929' n'#259'ng'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SKILL_NAME'
            Caption_UTF7 = 'T+AOo-n k+Hvk n+AQM-ng'
          end
          object dxKyNangLEVEL_NO: TdxDBGridColumn
            Caption = 'M'#227' tr'#236'nh '#273#7897
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEVEL_NO'
            Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q'
          end
          object dxKyNangLEVEL_NAME: TdxDBGridColumn
            Caption = 'T'#234'n tr'#236'nh '#273#7897
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEVEL_NAME'
            Caption_UTF7 = 'T+AOo-n tr+AOw-nh +AREe2Q'
          end
          object dxKyNangISSUED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 162
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_DATE'
            Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
          end
          object dxKyNangISSUED_PLACE: TdxDBGridColumn
            Caption = 'N'#417'i c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 184
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_PLACE'
            Caption_UTF7 = 'N+AaE-i c+HqU-p'
          end
          object dxKyNangARCHIVEMENT: TdxDBGridColumn
            Caption = 'B'#7857'ng c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ARCHIVEMENT'
            Caption_UTF7 = 'B+HrE-ng c+HqU-p'
          end
          object dxKyNangNOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 143
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object dxKyNangDUYET: TdxDBGridCheckColumn
            Caption = 'Duy'#7879't'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 96
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DUYET'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Duy+Hsc-t'
          end
        end
        object gridNgoaiNgu: TdxDBGrid
          Left = 0
          Top = 185
          Width = 289
          Height = 176
          Bands = <
            item
              Caption = 'Tr'#236'nh '#273#7897' ngo'#7841'i ng'#7919
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KEY_FIELD'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alTop
          TabOrder = 1
          DataSource = dsTrinhDoNgoaiNgu
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object gridNgoaiNguEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridNgoaiNguLANGUAGE_NO: TdxDBGridColumn
            Caption = 'M'#227' ngo'#7841'i ng'#7919
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LANGUAGE_NO'
            Caption_UTF7 = 'M+AOM ngo+HqE-i ng+Hu8'
          end
          object gridNgoaiNguLANGUAGE_NAME: TdxDBGridColumn
            Caption = 'T'#234'n ngo'#7841'i ng'#7919
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LANGUAGE_NAME'
            Caption_UTF7 = 'T+AOo-n ngo+HqE-i ng+Hu8'
          end
          object gridNgoaiNguLEVEL_NO: TdxDBGridColumn
            Caption = 'M'#227' tr'#236'nh '#273#7897
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEVEL_NO'
            Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q'
          end
          object gridNgoaiNguLEVEL_NAME: TdxDBGridColumn
            Caption = 'T'#234'n tr'#236'nh '#273#7897
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEVEL_NAME'
            Caption_UTF7 = 'T+AOo-n tr+AOw-nh +AREe2Q'
          end
          object gridNgoaiNguISSUED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_DATE'
            Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
          end
          object gridNgoaiNguISSUED_PLACE: TdxDBGridColumn
            Caption = 'N'#7907'i c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_PLACE'
            Caption_UTF7 = 'N+HuM-i c+HqU-p'
          end
          object gridNgoaiNguARCHIVEMENT: TdxDBGridColumn
            Caption = 'B'#7857'ng c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ARCHIVEMENT'
            Caption_UTF7 = 'B+HrE-ng c+HqU-p'
          end
          object gridNgoaiNguNOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object gridNgoaiNguDUYET: TdxDBGridCheckColumn
            Caption = 'Duy'#7879't'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DUYET'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Duy+Hsc-t'
          end
        end
        object gridChuyenMonKhac: TdxDBGrid
          Left = 0
          Top = 361
          Width = 289
          Height = 71
          Bands = <
            item
              Caption = 'Chuy'#234'n m'#244'n kh'#225'c'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'KEY_FIELD'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 2
          DataSource = dsChuyenMonKhac
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object gridChuyenMonKhacEMPLOYEE_NO: TdxDBGridColumn
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 389
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
          end
          object gridChuyenMonKhacEDU_FIELD_NO: TdxDBGridColumn
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 389
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDU_FIELD_NO'
          end
          object gridChuyenMonKhacEDU_FIELD_NAME: TdxDBGridColumn
            Caption = 'T'#234'n chuy'#234'n m'#244'n'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 195
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDU_FIELD_NAME'
            Caption_UTF7 = 'T+AOo-n chuy+AOo-n m+APQ-n'
          end
          object gridChuyenMonKhacEDU_LEVEL_NO: TdxDBGridColumn
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 389
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDU_LEVEL_NO'
          end
          object gridChuyenMonKhacFIELD_LEVEL_NAME: TdxDBGridColumn
            Caption = 'T'#234'n tr'#236'nh '#273#7897
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIELD_LEVEL_NAME'
            Caption_UTF7 = 'T+AOo-n tr+AOw-nh +AREe2Q'
          end
          object gridChuyenMonKhacISSUED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_DATE'
            Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
          end
          object gridChuyenMonKhacISSUED_PLACE: TdxDBGridColumn
            Caption = 'N'#417'i c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_PLACE'
            Caption_UTF7 = 'N+AaE-i c+HqU-p'
          end
          object gridChuyenMonKhacEDU_ARCHIVEMENT: TdxDBGridColumn
            Caption = 'B'#7857'ng c'#7845'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDU_ARCHIVEMENT'
            Caption_UTF7 = 'B+HrE-ng c+HqU-p'
          end
          object gridChuyenMonKhacEMP_EDU_NOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 227
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMP_EDU_NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object gridChuyenMonKhacKEY_FIELD: TdxDBGridColumn
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 1228
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KEY_FIELD'
          end
          object gridChuyenMonKhacDUYET: TdxDBGridCheckColumn
            Caption = 'Duy'#7879't'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DUYET'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Duy+Hsc-t'
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = []
          AlignVert = avClient
          ShowCaption = False
          Control = gridDSNVHieuChinh
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem4: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'New Item'
          ShowCaption = False
          Control = pageThongTin
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
        Caption = 'C'#7853'p nh'#7853't th'#244'ng tin nh'#226'n vi'#234'n hi'#7879'u ch'#7881'nh tr'#234'n web'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryDSNVHieuChinh: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select distinct  EMPLOYEE_NO ,'
      '    FULL_NAME'
      'from hr_dsnv_hieuchinh_thongtin ')
    FieldOptions = []
    Left = 16
    Top = 40
    object qryDSNVHieuChinhEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDSNVHieuChinhFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
  end
  object dsDSNVHieuChinh: TDataSource
    DataSet = qryDSNVHieuChinh
    Left = 16
    Top = 72
  end
  object qryDuLieuNhanSu: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'employee_no'
        ParamType = ptInput
        Value = Null
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_EMPLOYEE SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   LAST_NAME = :LAST_NAME,'
      '   MIDDLE_NAME = :MIDDLE_NAME,'
      '   FIRST_NAME = :FIRST_NAME,'
      '   GENDER = :GENDER,'
      '   BIRTH_DATE = :BIRTH_DATE,'
      '   MARRIAL_STATUS = :MARRIAL_STATUS,'
      '   ID_CARD_NO = :ID_CARD_NO,'
      '   ISSUED_DATE = :ISSUED_DATE,'
      '   ISSUED_PLACE = :ISSUED_PLACE,'
      '   RACE_NO = :RACE_NO,'
      '   CURRENCY_NO = :CURRENCY_NO,'
      '   NATIONAL_NO = :NATIONAL_NO,'
      '   RELIGION_NO = :RELIGION_NO,'
      '   BIRTH_PLACE_ID = :BIRTH_PLACE_ID,'
      '   NATIVE_PLACE_ID = :NATIVE_PLACE_ID,'
      '   CONTACT_ADDR = :CONTACT_ADDR,'
      '   PROVISION_ADDR = :PROVISION_ADDR,'
      '   RESIDENT_ADDR = :RESIDENT_ADDR,'
      '   CONTACT_PHONE = :CONTACT_PHONE,'
      '   HAND_PHONE = :HAND_PHONE,'
      '   EMAIL = :EMAIL,'
      '   FAX = :FAX,'
      '   WEBSITE = :WEBSITE,'
      '   EMPLOYEE_ID = :EMPLOYEE_ID,'
      '   DESCENT_FROM = :DESCENT_FROM,'
      '   ACCOUNT_ID = :ACCOUNT_ID,'
      '   ACCOUNT_BANK = :ACCOUNT_BANK,'
      '   REGISTERED_NAME = :REGISTERED_NAME,'
      '   ALIAS = :ALIAS,'
      '   PASSPORT = :PASSPORT,'
      '   PASSPORT_DATE = :PASSPORT_DATE,'
      '   PASSPORT_PLACE = :PASSPORT_PLACE,'
      '   PASSPORT_EXPIRED = :PASSPORT_EXPIRED,'
      '   MASO_THUE_CANHAN = :MASO_THUE_CANHAN,'
      '   COQUAN_THUE_QUANLY = :COQUAN_THUE_QUANLY'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'select hr_employee.EMPLOYEE_NO,'
      '        LAST_NAME,'
      '        MIDDLE_NAME,'
      '        FIRST_NAME,'
      '        GENDER,'
      '        BIRTH_DATE,'
      '        hr_employee.MARRIAL_STATUS,'
      '        hr_marrial_status.status_name,'
      '        ID_CARD_NO,'
      '        ISSUED_DATE,'
      '        ISSUED_PLACE,'
      '        hr_employee.RACE_NO,'
      '        hr_race.race_name,'
      '        hr_employee.CURRENCY_NO,'
      '        hr_currency.currency_name,'
      '        hr_employee.NATIONAL_NO,'
      '        hr_nation.nation_name,'
      '        hr_employee.RELIGION_NO,'
      '        hr_religion.religion_name,'
      '        BIRTH_PLACE_ID,'
      '        NATIVE_PLACE_ID,'
      '        CONTACT_ADDR,'
      '        PROVISION_ADDR,'
      '        RESIDENT_ADDR,'
      '        CONTACT_PHONE,'
      '        HAND_PHONE,'
      '        EMAIL,'
      '        FAX,'
      '        WEBSITE,'
      '        EMPLOYEE_ID,'
      '        hr_employee.DESCENT_FROM,'
      '        hr_descent_list.descent_name,'
      '        ACCOUNT_ID,'
      '        ACCOUNT_BANK,'
      '        REGISTERED_NAME,'
      '        ALIAS,'
      '        PASSPORT,'
      '        PASSPORT_DATE,'
      '        PASSPORT_PLACE,'
      '        PASSPORT_EXPIRED,'
      '        MASO_THUE_CANHAN,'
      '        COQUAN_THUE_QUANLY'
      'from hr_employee'
      
        '    left join hr_marrial_status on hr_employee.marrial_status = ' +
        'hr_marrial_status.status_id'
      '    left join hr_race on hr_employee.race_no = hr_race.race_no'
      
        '    left join hr_currency on hr_employee.currency_no = hr_curren' +
        'cy.currency_no'
      
        '    left join hr_nation on hr_employee.national_no = hr_nation.n' +
        'ation_no'
      
        '    left join hr_religion on hr_employee.religion_no = hr_religi' +
        'on.religion_no'
      
        '    left join hr_descent_list on  hr_employee.descent_from = hr_' +
        'descent_list.descent_no'
      'where hr_employee.employee_no = :employee_no')
    FieldOptions = []
    Left = 48
    Top = 40
    object qryDuLieuNhanSuEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDuLieuNhanSuLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      Size = 30
    end
    object qryDuLieuNhanSuMIDDLE_NAME: TWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 63
    end
    object qryDuLieuNhanSuFIRST_NAME: TWideStringField
      FieldName = 'FIRST_NAME'
      Size = 30
    end
    object qryDuLieuNhanSuGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryDuLieuNhanSuBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryDuLieuNhanSuMARRIAL_STATUS: TWideStringField
      FieldName = 'MARRIAL_STATUS'
      Size = 30
    end
    object qryDuLieuNhanSuSTATUS_NAME: TWideStringField
      FieldName = 'STATUS_NAME'
      Size = 126
    end
    object qryDuLieuNhanSuID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryDuLieuNhanSuISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryDuLieuNhanSuISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 255
    end
    object qryDuLieuNhanSuRACE_NO: TWideStringField
      FieldName = 'RACE_NO'
      Size = 30
    end
    object qryDuLieuNhanSuRACE_NAME: TWideStringField
      FieldName = 'RACE_NAME'
      Size = 30
    end
    object qryDuLieuNhanSuCURRENCY_NO: TWideStringField
      FieldName = 'CURRENCY_NO'
      Size = 30
    end
    object qryDuLieuNhanSuCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
    object qryDuLieuNhanSuNATIONAL_NO: TWideStringField
      FieldName = 'NATIONAL_NO'
      Size = 30
    end
    object qryDuLieuNhanSuNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Size = 126
    end
    object qryDuLieuNhanSuRELIGION_NO: TWideStringField
      FieldName = 'RELIGION_NO'
      Size = 30
    end
    object qryDuLieuNhanSuRELIGION_NAME: TWideStringField
      FieldName = 'RELIGION_NAME'
      Size = 30
    end
    object qryDuLieuNhanSuBIRTH_PLACE_ID: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object qryDuLieuNhanSuNATIVE_PLACE_ID: TWideStringField
      FieldName = 'NATIVE_PLACE_ID'
      Size = 126
    end
    object qryDuLieuNhanSuCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 255
    end
    object qryDuLieuNhanSuPROVISION_ADDR: TWideStringField
      FieldName = 'PROVISION_ADDR'
      Size = 255
    end
    object qryDuLieuNhanSuRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryDuLieuNhanSuCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryDuLieuNhanSuHAND_PHONE: TWideStringField
      FieldName = 'HAND_PHONE'
      Size = 30
    end
    object qryDuLieuNhanSuEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object qryDuLieuNhanSuFAX: TWideStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qryDuLieuNhanSuWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 30
    end
    object qryDuLieuNhanSuEMPLOYEE_ID: TWideStringField
      FieldName = 'EMPLOYEE_ID'
      Size = 30
    end
    object qryDuLieuNhanSuDESCENT_FROM: TWideStringField
      FieldName = 'DESCENT_FROM'
      Size = 30
    end
    object qryDuLieuNhanSuDESCENT_NAME: TWideStringField
      FieldName = 'DESCENT_NAME'
      Size = 126
    end
    object qryDuLieuNhanSuACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 30
    end
    object qryDuLieuNhanSuACCOUNT_BANK: TWideStringField
      FieldName = 'ACCOUNT_BANK'
      Size = 126
    end
    object qryDuLieuNhanSuREGISTERED_NAME: TWideStringField
      FieldName = 'REGISTERED_NAME'
      Size = 63
    end
    object qryDuLieuNhanSuALIAS: TWideStringField
      FieldName = 'ALIAS'
      Size = 63
    end
    object qryDuLieuNhanSuPASSPORT: TWideStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object qryDuLieuNhanSuPASSPORT_DATE: TDateField
      FieldName = 'PASSPORT_DATE'
    end
    object qryDuLieuNhanSuPASSPORT_PLACE: TWideStringField
      FieldName = 'PASSPORT_PLACE'
      Size = 255
    end
    object qryDuLieuNhanSuPASSPORT_EXPIRED: TDateField
      FieldName = 'PASSPORT_EXPIRED'
    end
    object qryDuLieuNhanSuMASO_THUE_CANHAN: TWideStringField
      FieldName = 'MASO_THUE_CANHAN'
      Size = 30
    end
    object qryDuLieuNhanSuCOQUAN_THUE_QUANLY: TWideStringField
      FieldName = 'COQUAN_THUE_QUANLY'
      Size = 63
    end
  end
  object dsDuLieuNhanSu: TDataSource
    DataSet = qryDuLieuNhanSu
    Left = 48
    Top = 72
  end
  object imglGender: TImageList
    Left = 16
    Top = 104
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2AE
      C4006B68B7005A58B9005A58B9005A58B9006B68B7008790B400A8A7A400C2BF
      BE00C2BFBE000000000000000000000000000000000000000000000000008CB1
      7E006C9651005D924C005D924C005D924C006C9651008CB17E00A7BB9D00BDB9
      B000C7CCBB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D1D300625F
      CE005654DD005B59E300605FEB00605FEB00625FCE00625FCE00625FCE008082
      C400B4B1B000C2BFBE00000000000000000000000000000000008CB17E005D92
      4C006C9651006C9651006C96510079A35A006C9651006C9651006C9651008CB1
      7E00BDB9B000C7CCBB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2BFBE005654
      DD00605FEB007170EA008181F4007170EA00D2B5EF009E90DE00605FEB005654
      DD005A58B900C2BFBE00000000000000000000000000000000006C9651006C96
      51006C9651007DB16D007DB16D008CB17E00ACD29D006C96510079A35A006C96
      51006C965100C7CCBB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B76
      D400605FEB008181F4008181F4009E90DE00FBEBF700D2B5EF007170EA007170
      EA005A58B900D2D1D30000000000000000000000000000000000C7CCBB006C96
      510079A35A007DB16D007DB16D00E3F8C600E3F8C6007DB16D007DB16D0079A3
      5A005D924C00D1D2D00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D1
      D3005654DD007170EA007B76D400D2B5EF00FFCCFF00D2B5EF008181F4007170
      EA00B2AEC400E7E3DD000000000000000000000000000000000000000000A7BB
      9D006C96510079A35A00ACD29D00E3F8C600E3F8C6008CB17E008CB17E0079A3
      5A00A7BB9D00E2E1DF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2D1D3006B68B7008082C4008082C4008082C4009E90DE007B76D400B2AE
      C400000000000000000000000000000000000000000000000000000000000000
      0000A7BB9D007DB16D006DB0BC006DB0BC008BBECE007DB16D007DB16D00A7BB
      9D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D1
      D3007674740062605E005D6B87005D7ABA005D7ABA005D7ABA00C2BFBE00D2D1
      D300000000000000000000000000000000000000000000000000000000000000
      0000C6D7E10061A5CD0061A5CD0061A5CD00599FCB00659EAE00C7CCBB00E2E1
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E3DD006260
      5E0062605E005D6B87006E93D9006E93D9006E93D9006E93D9008790B400D2D1
      D300000000000000000000000000000000000000000000000000000000000000
      000069ACD20077BDE5006FB5DB006FB5DB006FB5DB0069ACD200ADC3CF00E2E1
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D8D8E006260
      5E0062605E006D8CBA006E93D9006E93D9006E93D9006E93D9006E93D900D2D1
      D30000000000000000000000000000000000000000000000000000000000C6D7
      E10077BDE5007EC5F0007EC5F00077BDE50077BDE50077BDE50082B3CD00E2E1
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000062605E006260
      5E0062605E006D8CBA0079B1F50079B1F50079B1F50079B1F5006E93D900D2D1
      D30000000000000000000000000000000000000000000000000000000000ABD0
      E4008BD3FD008BD3FD008BD3FD007EC5F0008BD3FD007EC5F00082B3CD00E2E1
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D8D8E006260
      5E00767474006979900079B1F50079B1F50079B1F50079B1F50079B1F500D2D1
      D3000000000000000000000000000000000000000000000000000000000099C2
      D8008BD3FD008BD3FD008BD3FD008BD3FD008BD3FD008BD3FD008BBECE00E2E1
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006260
      5E0062605E0062605E0062605E005D6B87005F82C4005F82C4005D6B87000000
      0000000000000000000000000000000000000000000000000000000000007588
      8A005492B30073AAC90073AAC9005492B30044829D005492B30075888A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2BF
      BE008D8D8E008D8D8E00A8A7A400A8A7A4008D8D8E00767474008D8D8E000000
      000000000000000000000000000000000000000000000000000000000000C6D7
      E1005492B3008BBECE00ABD0E4008BBECE0082B3CD005492B300D1D2D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B4B1B000A8A7A400C2BFBE00C2BFBE00A8A7A4008D8D8E00D2D1D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099C2D80082B3CD00ABD0E400ABD0E40082B3CD00ADC3CF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C2BFBE008D8D8E008D8D8E008D8D8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADC3CF0073AAC90073AAC900ADC3CF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000E007E00700000000
      C003C00300000000C003C00300000000E003C00300000000E003E00300000000
      F00FF00F00000000E00FF00F00000000C00FF00F00000000C00FE00F00000000
      C00FE00F00000000C00FE00F00000000E01FE01F00000000E01FE01F00000000
      F01FF03F00000000F87FF87F0000000000000000000000000000000000000000
      000000000000}
  end
  object qryDuLieuWeb: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'employee_no'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_WEB_EMPLOYEE SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   LAST_NAME = :LAST_NAME,'
      '   MIDDLE_NAME = :MIDDLE_NAME,'
      '   FIRST_NAME = :FIRST_NAME,'
      '   GENDER = :GENDER,'
      '   BIRTH_DATE = :BIRTH_DATE,'
      '   MARRIAL_STATUS = :MARRIAL_STATUS,'
      '   ID_CARD_NO = :ID_CARD_NO,'
      '   ISSUED_DATE = :ISSUED_DATE,'
      '   ISSUED_PLACE = :ISSUED_PLACE,'
      '   RACE_NO = :RACE_NO,'
      '   CURRENCY_NO = :CURRENCY_NO,'
      '   NATIONAL_NO = :NATIONAL_NO,'
      '   RELIGION_NO = :RELIGION_NO,'
      '   BIRTH_PLACE_ID = :BIRTH_PLACE_ID,'
      '   NATIVE_PLACE_ID = :NATIVE_PLACE_ID,'
      '   CONTACT_ADDR = :CONTACT_ADDR,'
      '   PROVISION_ADDR = :PROVISION_ADDR,'
      '   RESIDENT_ADDR = :RESIDENT_ADDR,'
      '   CONTACT_PHONE = :CONTACT_PHONE,'
      '   HAND_PHONE = :HAND_PHONE,'
      '   EMAIL = :EMAIL,'
      '   FAX = :FAX,'
      '   WEBSITE = :WEBSITE,'
      '   EMPLOYEE_ID = :EMPLOYEE_ID,'
      '   DESCENT_FROM = :DESCENT_FROM,'
      '   ACCOUNT_ID = :ACCOUNT_ID,'
      '   ACCOUNT_BANK = :ACCOUNT_BANK,'
      '   REGISTERED_NAME = :REGISTERED_NAME,'
      '   ALIAS = :ALIAS,'
      '   PASSPORT = :PASSPORT,'
      '   PASSPORT_DATE = :PASSPORT_DATE,'
      '   PASSPORT_PLACE = :PASSPORT_PLACE,'
      '   PASSPORT_EXPIRED = :PASSPORT_EXPIRED,'
      '   MASO_THUE_CANHAN = :MASO_THUE_CANHAN,'
      '   COQUAN_THUE_QUANLY = :COQUAN_THUE_QUANLY'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryDuLieuWebBeforePost
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'select hr_web_employee.EMPLOYEE_NO,'
      '        LAST_NAME,'
      '        MIDDLE_NAME,'
      '        FIRST_NAME,'
      '        GENDER,'
      '        BIRTH_DATE,'
      '        hr_web_employee.MARRIAL_STATUS,'
      '        hr_marrial_status.status_name,'
      '        ID_CARD_NO,'
      '        ISSUED_DATE,'
      '        ISSUED_PLACE,'
      '        hr_web_employee.RACE_NO,'
      '        hr_race.race_name,'
      '        hr_web_employee.CURRENCY_NO,'
      '        hr_currency.currency_name,'
      '        hr_web_employee.NATIONAL_NO,'
      '        hr_nation.nation_name,'
      '        hr_web_employee.RELIGION_NO,'
      '        hr_religion.religion_name,'
      '        BIRTH_PLACE_ID,'
      '        NATIVE_PLACE_ID,'
      '        CONTACT_ADDR,'
      '        PROVISION_ADDR,'
      '        RESIDENT_ADDR,'
      '        CONTACT_PHONE,'
      '        HAND_PHONE,'
      '        EMAIL,'
      '        FAX,'
      '        WEBSITE,'
      '        EMPLOYEE_ID,'
      '        hr_web_employee.DESCENT_FROM,'
      '        hr_descent_list.descent_name,'
      '        ACCOUNT_ID,'
      '        ACCOUNT_BANK,'
      '        REGISTERED_NAME,'
      '        ALIAS,'
      '        PASSPORT,'
      '        PASSPORT_DATE,'
      '        PASSPORT_PLACE,'
      '        PASSPORT_EXPIRED,'
      '        MASO_THUE_CANHAN,'
      '        COQUAN_THUE_QUANLY'
      'from hr_web_employee'
      
        '    left join hr_marrial_status on hr_web_employee.marrial_statu' +
        's = hr_marrial_status.status_id'
      
        '    left join hr_race on hr_web_employee.race_no = hr_race.race_' +
        'no'
      
        '    left join hr_currency on hr_web_employee.currency_no = hr_cu' +
        'rrency.currency_no'
      
        '    left join hr_nation on hr_web_employee.national_no = hr_nati' +
        'on.nation_no'
      
        '    left join hr_religion on hr_web_employee.religion_no = hr_re' +
        'ligion.religion_no'
      
        '    left join hr_descent_list on  hr_web_employee.descent_from =' +
        ' hr_descent_list.descent_no'
      'where hr_web_employee.employee_no = :employee_no')
    FieldOptions = []
    Left = 80
    Top = 40
    object qryDuLieuWebEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryDuLieuWebLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      Size = 30
    end
    object qryDuLieuWebMIDDLE_NAME: TWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 63
    end
    object qryDuLieuWebFIRST_NAME: TWideStringField
      FieldName = 'FIRST_NAME'
      Size = 30
    end
    object qryDuLieuWebGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryDuLieuWebBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryDuLieuWebMARRIAL_STATUS: TWideStringField
      FieldName = 'MARRIAL_STATUS'
      Size = 30
    end
    object qryDuLieuWebSTATUS_NAME: TWideStringField
      FieldName = 'STATUS_NAME'
      Size = 126
    end
    object qryDuLieuWebID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryDuLieuWebISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryDuLieuWebISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 255
    end
    object qryDuLieuWebRACE_NO: TWideStringField
      FieldName = 'RACE_NO'
      Size = 30
    end
    object qryDuLieuWebRACE_NAME: TWideStringField
      FieldName = 'RACE_NAME'
      Size = 30
    end
    object qryDuLieuWebCURRENCY_NO: TWideStringField
      FieldName = 'CURRENCY_NO'
      Size = 30
    end
    object qryDuLieuWebCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
    object qryDuLieuWebNATIONAL_NO: TWideStringField
      FieldName = 'NATIONAL_NO'
      Size = 30
    end
    object qryDuLieuWebNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Size = 126
    end
    object qryDuLieuWebRELIGION_NO: TWideStringField
      FieldName = 'RELIGION_NO'
      Size = 30
    end
    object qryDuLieuWebRELIGION_NAME: TWideStringField
      FieldName = 'RELIGION_NAME'
      Size = 30
    end
    object qryDuLieuWebBIRTH_PLACE_ID: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object qryDuLieuWebNATIVE_PLACE_ID: TWideStringField
      FieldName = 'NATIVE_PLACE_ID'
      Size = 126
    end
    object qryDuLieuWebCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 255
    end
    object qryDuLieuWebPROVISION_ADDR: TWideStringField
      FieldName = 'PROVISION_ADDR'
      Size = 255
    end
    object qryDuLieuWebRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryDuLieuWebCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryDuLieuWebHAND_PHONE: TWideStringField
      FieldName = 'HAND_PHONE'
      Size = 30
    end
    object qryDuLieuWebEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object qryDuLieuWebFAX: TWideStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qryDuLieuWebWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 30
    end
    object qryDuLieuWebEMPLOYEE_ID: TWideStringField
      FieldName = 'EMPLOYEE_ID'
      Size = 30
    end
    object qryDuLieuWebDESCENT_FROM: TWideStringField
      FieldName = 'DESCENT_FROM'
      Size = 30
    end
    object qryDuLieuWebDESCENT_NAME: TWideStringField
      FieldName = 'DESCENT_NAME'
      Size = 126
    end
    object qryDuLieuWebACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 30
    end
    object qryDuLieuWebACCOUNT_BANK: TWideStringField
      FieldName = 'ACCOUNT_BANK'
      Size = 126
    end
    object qryDuLieuWebREGISTERED_NAME: TWideStringField
      FieldName = 'REGISTERED_NAME'
      Size = 63
    end
    object qryDuLieuWebALIAS: TWideStringField
      FieldName = 'ALIAS'
      Size = 63
    end
    object qryDuLieuWebPASSPORT: TWideStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object qryDuLieuWebPASSPORT_DATE: TDateField
      FieldName = 'PASSPORT_DATE'
    end
    object qryDuLieuWebPASSPORT_PLACE: TWideStringField
      FieldName = 'PASSPORT_PLACE'
      Size = 255
    end
    object qryDuLieuWebPASSPORT_EXPIRED: TDateField
      FieldName = 'PASSPORT_EXPIRED'
    end
    object qryDuLieuWebMASO_THUE_CANHAN: TWideStringField
      FieldName = 'MASO_THUE_CANHAN'
      Size = 30
    end
    object qryDuLieuWebCOQUAN_THUE_QUANLY: TWideStringField
      FieldName = 'COQUAN_THUE_QUANLY'
      Size = 63
    end
  end
  object dsDuLieuWeb: TDataSource
    DataSet = qryDuLieuWeb
    Left = 80
    Top = 72
  end
  object qryCauHinh: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , LAST_NAME'
      '     , MIDDLE_NAME'
      '     , FIRST_NAME'
      '     , GENDER'
      '     , BIRTH_DATE'
      '     , MARRIAL_STATUS'
      '     , ID_CARD_NO'
      '     , ISSUED_DATE'
      '     , ISSUED_PLACE'
      '     , RACE_NO'
      '     , CURRENCY_NO'
      '     , NATIONAL_NO'
      '     , RELIGION_NO'
      '     , BIRTH_PLACE_ID'
      '     , NATIVE_PLACE_ID'
      '     , CONTACT_ADDR'
      '     , PROVISION_ADDR'
      '     , RESIDENT_ADDR'
      '     , CONTACT_PHONE'
      '     , HAND_PHONE'
      '     , EMAIL'
      '     , FAX'
      '     , WEBSITE'
      '     , EMPLOYEE_ID'
      '     , DESCENT_FROM'
      '     , ACCOUNT_ID'
      '     , ACCOUNT_BANK'
      '     , REGISTERED_NAME'
      '     , ALIAS'
      '     , PASSPORT'
      '     , PASSPORT_DATE'
      '     , PASSPORT_EXPIRED'
      '     , PASSPORT_PLACE'
      '     , MASO_THUE_CANHAN'
      '     , COQUAN_THUE_QUANLY'
      '     , CHIEU_CAO'
      '     , CAN_NANG'
      '     , DAUVET_DACBIET'
      '     , NGAY_VAO_DANG'
      '     , CHUC_VU_DANG'
      '     , NGAY_VAO_DOAN'
      '     , CHUC_VU_DOAN'
      '     , NGAY_VAO_CDOAN'
      '     , CHUC_VU_CDOAN'
      '     , NGAY_VAO_CONGTY'
      '     , TRINHDO_HOCVAN'
      '     , TRINHDO_VANHOA'
      '     , SOTRUONG_CTAC'
      '     , NGHE_NGHIEP'
      '     , NAM_TOTNGHIEP'
      '     , CONGVIEC_LAUNHAT'
      'FROM HR_CONFIG_EDIT_EMPLOYEE')
    FieldOptions = []
    Left = 112
    Top = 40
    object qryCauHinhEMPLOYEE_NO: TSmallintField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryCauHinhLAST_NAME: TSmallintField
      FieldName = 'LAST_NAME'
    end
    object qryCauHinhMIDDLE_NAME: TSmallintField
      FieldName = 'MIDDLE_NAME'
    end
    object qryCauHinhFIRST_NAME: TSmallintField
      FieldName = 'FIRST_NAME'
    end
    object qryCauHinhGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryCauHinhBIRTH_DATE: TSmallintField
      FieldName = 'BIRTH_DATE'
    end
    object qryCauHinhMARRIAL_STATUS: TSmallintField
      FieldName = 'MARRIAL_STATUS'
    end
    object qryCauHinhID_CARD_NO: TSmallintField
      FieldName = 'ID_CARD_NO'
    end
    object qryCauHinhISSUED_DATE: TSmallintField
      FieldName = 'ISSUED_DATE'
    end
    object qryCauHinhISSUED_PLACE: TSmallintField
      FieldName = 'ISSUED_PLACE'
    end
    object qryCauHinhRACE_NO: TSmallintField
      FieldName = 'RACE_NO'
    end
    object qryCauHinhCURRENCY_NO: TSmallintField
      FieldName = 'CURRENCY_NO'
    end
    object qryCauHinhNATIONAL_NO: TSmallintField
      FieldName = 'NATIONAL_NO'
    end
    object qryCauHinhRELIGION_NO: TSmallintField
      FieldName = 'RELIGION_NO'
    end
    object qryCauHinhBIRTH_PLACE_ID: TSmallintField
      FieldName = 'BIRTH_PLACE_ID'
    end
    object qryCauHinhNATIVE_PLACE_ID: TSmallintField
      FieldName = 'NATIVE_PLACE_ID'
    end
    object qryCauHinhCONTACT_ADDR: TSmallintField
      FieldName = 'CONTACT_ADDR'
    end
    object qryCauHinhPROVISION_ADDR: TSmallintField
      FieldName = 'PROVISION_ADDR'
    end
    object qryCauHinhRESIDENT_ADDR: TSmallintField
      FieldName = 'RESIDENT_ADDR'
    end
    object qryCauHinhCONTACT_PHONE: TSmallintField
      FieldName = 'CONTACT_PHONE'
    end
    object qryCauHinhHAND_PHONE: TSmallintField
      FieldName = 'HAND_PHONE'
    end
    object qryCauHinhEMAIL: TSmallintField
      FieldName = 'EMAIL'
    end
    object qryCauHinhFAX: TSmallintField
      FieldName = 'FAX'
    end
    object qryCauHinhWEBSITE: TSmallintField
      FieldName = 'WEBSITE'
    end
    object qryCauHinhEMPLOYEE_ID: TSmallintField
      FieldName = 'EMPLOYEE_ID'
    end
    object qryCauHinhDESCENT_FROM: TSmallintField
      FieldName = 'DESCENT_FROM'
    end
    object qryCauHinhACCOUNT_ID: TSmallintField
      FieldName = 'ACCOUNT_ID'
    end
    object qryCauHinhACCOUNT_BANK: TSmallintField
      FieldName = 'ACCOUNT_BANK'
    end
    object qryCauHinhREGISTERED_NAME: TSmallintField
      FieldName = 'REGISTERED_NAME'
    end
    object qryCauHinhALIAS: TSmallintField
      FieldName = 'ALIAS'
    end
    object qryCauHinhPASSPORT: TSmallintField
      FieldName = 'PASSPORT'
    end
    object qryCauHinhPASSPORT_DATE: TSmallintField
      FieldName = 'PASSPORT_DATE'
    end
    object qryCauHinhPASSPORT_EXPIRED: TSmallintField
      FieldName = 'PASSPORT_EXPIRED'
    end
    object qryCauHinhPASSPORT_PLACE: TSmallintField
      FieldName = 'PASSPORT_PLACE'
    end
    object qryCauHinhMASO_THUE_CANHAN: TSmallintField
      FieldName = 'MASO_THUE_CANHAN'
    end
    object qryCauHinhCOQUAN_THUE_QUANLY: TSmallintField
      FieldName = 'COQUAN_THUE_QUANLY'
    end
    object qryCauHinhCHIEU_CAO: TSmallintField
      FieldName = 'CHIEU_CAO'
    end
    object qryCauHinhCAN_NANG: TSmallintField
      FieldName = 'CAN_NANG'
    end
    object qryCauHinhDAUVET_DACBIET: TSmallintField
      FieldName = 'DAUVET_DACBIET'
    end
    object qryCauHinhNGAY_VAO_DANG: TSmallintField
      FieldName = 'NGAY_VAO_DANG'
    end
    object qryCauHinhCHUC_VU_DANG: TSmallintField
      FieldName = 'CHUC_VU_DANG'
    end
    object qryCauHinhNGAY_VAO_DOAN: TSmallintField
      FieldName = 'NGAY_VAO_DOAN'
    end
    object qryCauHinhCHUC_VU_DOAN: TSmallintField
      FieldName = 'CHUC_VU_DOAN'
    end
    object qryCauHinhNGAY_VAO_CDOAN: TSmallintField
      FieldName = 'NGAY_VAO_CDOAN'
    end
    object qryCauHinhCHUC_VU_CDOAN: TSmallintField
      FieldName = 'CHUC_VU_CDOAN'
    end
    object qryCauHinhNGAY_VAO_CONGTY: TSmallintField
      FieldName = 'NGAY_VAO_CONGTY'
    end
    object qryCauHinhTRINHDO_HOCVAN: TSmallintField
      FieldName = 'TRINHDO_HOCVAN'
    end
    object qryCauHinhTRINHDO_VANHOA: TSmallintField
      FieldName = 'TRINHDO_VANHOA'
    end
    object qryCauHinhSOTRUONG_CTAC: TSmallintField
      FieldName = 'SOTRUONG_CTAC'
    end
    object qryCauHinhNGHE_NGHIEP: TSmallintField
      FieldName = 'NGHE_NGHIEP'
    end
    object qryCauHinhNAM_TOTNGHIEP: TSmallintField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryCauHinhCONGVIEC_LAUNHAT: TSmallintField
      FieldName = 'CONGVIEC_LAUNHAT'
    end
  end
  object dsCauHinh: TDataSource
    DataSet = qryCauHinh
    Left = 112
    Top = 72
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 48
    Top = 104
    object acCapNhat: TAction
      Caption = 'acCapNhat'
      ImageIndex = 9
      OnExecute = acCapNhatExecute
      OnUpdate = acCapNhatUpdate
    end
  end
  object qryThongTinThem_Nhansu: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'employee_no'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_EMP_PRIVATE_INFO SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   CHIEU_CAO = :CHIEU_CAO,'
      '   CAN_NANG = :CAN_NANG,'
      '   DAUVET_DACBIET = :DAUVET_DACBIET,'
      '   NGAY_VAO_DANG = :NGAY_VAO_DANG,'
      '   CHUC_VU_DANG = :CHUC_VU_DANG,'
      '   NGAY_VAO_DOAN = :NGAY_VAO_DOAN,'
      '   CHUC_VU_DOAN = :CHUC_VU_DOAN,'
      '   NGAY_VAO_CDOAN = :NGAY_VAO_CDOAN,'
      '   CHUC_VU_CDOAN = :CHUC_VU_CDOAN,'
      '   NGAY_VAO_CONGTY = :NGAY_VAO_CONGTY,'
      '   TRINH_DO = :TRINH_DO,'
      '   TRINHDO_VANHOA = :TRINHDO_VANHOA,'
      '   SOTRUONG_CTAC = :SOTRUONG_CTAC,'
      '   NGHE_NGHIEP = :NGHE_NGHIEP,'
      '   NAM_TOTNGHIEP = :NAM_TOTNGHIEP,'
      '   CONGVIEC_LAUNHAT = :CONGVIEC_LAUNHAT'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'hr_emp_private_info.EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'select  hr_emp_private_info.EMPLOYEE_NO,'
      '        hr_emp_private_info.chieu_cao,'
      '        hr_emp_private_info.can_nang,'
      '        hr_emp_private_info.dauvet_dacbiet,'
      '        hr_emp_private_info.ngay_vao_dang,'
      '        hr_emp_private_info.chuc_vu_dang ,'
      '        hr_chucvu_dang.ten_chucvu ten_chucvu_dang,'
      '        hr_emp_private_info.ngay_vao_doan,'
      '        hr_emp_private_info.chuc_vu_doan,'
      '        hr_chucvu_doan.ten_chucvu ten_chucvu_doan,'
      '        hr_emp_private_info.ngay_vao_cdoan ,'
      '        hr_emp_private_info.chuc_vu_cdoan,'
      '        hr_chucvu_cdoan.ten_chucvu ten_chucvu_cdoan,'
      '        hr_emp_private_info.ngay_vao_congty,'
      '        hr_emp_private_info.trinh_do,'
      '        hr_edu_level.edu_level_name,'
      '        hr_emp_private_info.trinhdo_vanhoa,'
      '        hr_academic.academic_name,'
      '        hr_emp_private_info.sotruong_ctac,'
      '        hr_emp_private_info.nghe_nghiep,'
      '        hr_career.career_name ,'
      '        hr_emp_private_info.nam_totnghiep,'
      '        hr_emp_private_info.congviec_launhat '
      '    from hr_emp_private_info'
      
        '    left join hr_chucvu_dang on hr_emp_private_info.chuc_vu_dang' +
        ' = hr_chucvu_dang.ma_chucvu '
      
        '    left join hr_chucvu_doan on hr_emp_private_info.chuc_vu_doan' +
        ' = hr_chucvu_doan.ma_chucvu'
      
        '    left join hr_chucvu_cdoan on hr_emp_private_info.chuc_vu_cdo' +
        'an = hr_chucvu_cdoan.ma_chucvu'
      
        '    left join hr_edu_level on hr_emp_private_info.trinh_do = hr_' +
        'edu_level.edu_level_no'
      
        '    left join hr_academic on hr_emp_private_info.trinhdo_vanhoa ' +
        '= hr_academic.academic_no'
      
        '    left join hr_career on hr_emp_private_info.nghe_nghiep = hr_' +
        'career.career_no    '
      '    where hr_emp_private_info.employee_no = :employee_no')
    FieldOptions = []
    Left = 16
    Top = 136
    object qryThongTinThem_NhansuEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryThongTinThem_NhansuCHIEU_CAO: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object qryThongTinThem_NhansuCAN_NANG: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object qryThongTinThem_NhansuDAUVET_DACBIET: TWideStringField
      FieldName = 'DAUVET_DACBIET'
      Size = 126
    end
    object qryThongTinThem_NhansuNGAY_VAO_DANG: TDateField
      FieldName = 'NGAY_VAO_DANG'
    end
    object qryThongTinThem_NhansuCHUC_VU_DANG: TWideStringField
      FieldName = 'CHUC_VU_DANG'
      Size = 30
    end
    object qryThongTinThem_NhansuTEN_CHUCVU_DANG: TWideStringField
      FieldName = 'TEN_CHUCVU_DANG'
      Size = 126
    end
    object qryThongTinThem_NhansuNGAY_VAO_DOAN: TDateField
      FieldName = 'NGAY_VAO_DOAN'
    end
    object qryThongTinThem_NhansuCHUC_VU_DOAN: TWideStringField
      FieldName = 'CHUC_VU_DOAN'
      Size = 30
    end
    object qryThongTinThem_NhansuTEN_CHUCVU_DOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_DOAN'
      Size = 126
    end
    object qryThongTinThem_NhansuNGAY_VAO_CDOAN: TDateField
      FieldName = 'NGAY_VAO_CDOAN'
    end
    object qryThongTinThem_NhansuCHUC_VU_CDOAN: TWideStringField
      FieldName = 'CHUC_VU_CDOAN'
      Size = 30
    end
    object qryThongTinThem_NhansuTEN_CHUCVU_CDOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_CDOAN'
      Size = 126
    end
    object qryThongTinThem_NhansuNGAY_VAO_CONGTY: TDateField
      FieldName = 'NGAY_VAO_CONGTY'
    end
    object qryThongTinThem_NhansuTRINH_DO: TWideStringField
      FieldName = 'TRINH_DO'
      Size = 30
    end
    object qryThongTinThem_NhansuEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Size = 126
    end
    object qryThongTinThem_NhansuTRINHDO_VANHOA: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 30
    end
    object qryThongTinThem_NhansuACADEMIC_NAME: TWideStringField
      FieldName = 'ACADEMIC_NAME'
      Size = 126
    end
    object qryThongTinThem_NhansuSOTRUONG_CTAC: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object qryThongTinThem_NhansuNGHE_NGHIEP: TWideStringField
      FieldName = 'NGHE_NGHIEP'
      Size = 30
    end
    object qryThongTinThem_NhansuCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 126
    end
    object qryThongTinThem_NhansuNAM_TOTNGHIEP: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryThongTinThem_NhansuCONGVIEC_LAUNHAT: TWideStringField
      FieldName = 'CONGVIEC_LAUNHAT'
      Size = 255
    end
  end
  object dsThongTinThem_Nhansu: TDataSource
    DataSet = qryThongTinThem_Nhansu
    Left = 16
    Top = 168
  end
  object qryThongTinThem_web: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'employee_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_WEB_EMP_PRIVATE_INFO SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   CHIEU_CAO = :CHIEU_CAO,'
      '   CAN_NANG = :CAN_NANG,'
      '   DAUVET_DACBIET = :DAUVET_DACBIET,'
      '   NGAY_VAO_DANG = :NGAY_VAO_DANG,'
      '   CHUC_VU_DANG = :CHUC_VU_DANG,'
      '   NGAY_VAO_DOAN = :NGAY_VAO_DOAN,'
      '   CHUC_VU_DOAN = :CHUC_VU_DOAN,'
      '   NGAY_VAO_CDOAN = :NGAY_VAO_CDOAN,'
      '   CHUC_VU_CDOAN = :CHUC_VU_CDOAN,'
      '   NGAY_VAO_CONGTY = :NGAY_VAO_CONGTY,'
      '   TRINHDO_HOCVAN = :TRINHDO_HOCVAN,'
      '   TRINHDO_VANHOA = :TRINHDO_VANHOA,'
      '   SOTRUONG_CTAC = :SOTRUONG_CTAC,'
      '   NGHE_NGHIEP = :NGHE_NGHIEP,'
      '   NAM_TOTNGHIEP = :NAM_TOTNGHIEP,'
      '   CONGVIEC_LAUNHAT = :CONGVIEC_LAUNHAT'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'hr_web_emp_private_info.EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryThongTinThem_webBeforePost
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'select  hr_web_emp_private_info.EMPLOYEE_NO,'
      '        hr_web_emp_private_info.chieu_cao,'
      '        hr_web_emp_private_info.can_nang,'
      '        hr_web_emp_private_info.dauvet_dacbiet,'
      '        hr_web_emp_private_info.ngay_vao_dang,'
      '        hr_web_emp_private_info.chuc_vu_dang ,'
      '        hr_chucvu_dang.ten_chucvu ten_chucvu_dang,'
      '        hr_web_emp_private_info.ngay_vao_doan,'
      '        hr_web_emp_private_info.chuc_vu_doan,'
      '        hr_chucvu_doan.ten_chucvu ten_chucvu_doan,'
      '        hr_web_emp_private_info.ngay_vao_cdoan ,'
      '        hr_web_emp_private_info.chuc_vu_cdoan,'
      '        hr_chucvu_cdoan.ten_chucvu ten_chucvu_cdoan,'
      '        hr_web_emp_private_info.ngay_vao_congty,'
      '        hr_web_emp_private_info.trinhdo_hocvan,'
      '        hr_edu_level.edu_level_name,'
      '        hr_web_emp_private_info.trinhdo_vanhoa,'
      '        hr_academic.academic_name,'
      '        hr_web_emp_private_info.sotruong_ctac,'
      '        hr_web_emp_private_info.nghe_nghiep,'
      '        hr_career.career_name ,'
      '        hr_web_emp_private_info.nam_totnghiep,'
      '        hr_web_emp_private_info.congviec_launhat'
      '    from hr_web_emp_private_info'
      
        '    left join hr_chucvu_dang on hr_web_emp_private_info.chuc_vu_' +
        'dang = hr_chucvu_dang.ma_chucvu'
      
        '    left join hr_chucvu_doan on hr_web_emp_private_info.chuc_vu_' +
        'doan = hr_chucvu_doan.ma_chucvu'
      
        '    left join hr_chucvu_cdoan on hr_web_emp_private_info.chuc_vu' +
        '_cdoan = hr_chucvu_cdoan.ma_chucvu'
      
        '    left join hr_edu_level on hr_web_emp_private_info.trinhdo_ho' +
        'cvan = hr_edu_level.edu_level_no'
      
        '    left join hr_academic on hr_web_emp_private_info.trinhdo_van' +
        'hoa = hr_academic.academic_no'
      
        '    left join hr_career on hr_web_emp_private_info.nghe_nghiep =' +
        ' hr_career.career_no'
      '    where hr_web_emp_private_info.employee_no = :employee_no')
    FieldOptions = []
    Left = 48
    Top = 136
    object qryThongTinThem_webEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryThongTinThem_webCHIEU_CAO: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object qryThongTinThem_webCAN_NANG: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object qryThongTinThem_webDAUVET_DACBIET: TWideStringField
      FieldName = 'DAUVET_DACBIET'
      Size = 126
    end
    object qryThongTinThem_webNGAY_VAO_DANG: TDateField
      FieldName = 'NGAY_VAO_DANG'
    end
    object qryThongTinThem_webCHUC_VU_DANG: TWideStringField
      FieldName = 'CHUC_VU_DANG'
      Size = 30
    end
    object qryThongTinThem_webTEN_CHUCVU_DANG: TWideStringField
      FieldName = 'TEN_CHUCVU_DANG'
      Size = 126
    end
    object qryThongTinThem_webNGAY_VAO_DOAN: TDateField
      FieldName = 'NGAY_VAO_DOAN'
    end
    object qryThongTinThem_webCHUC_VU_DOAN: TWideStringField
      FieldName = 'CHUC_VU_DOAN'
      Size = 30
    end
    object qryThongTinThem_webTEN_CHUCVU_DOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_DOAN'
      Size = 126
    end
    object qryThongTinThem_webNGAY_VAO_CDOAN: TDateField
      FieldName = 'NGAY_VAO_CDOAN'
    end
    object qryThongTinThem_webCHUC_VU_CDOAN: TWideStringField
      FieldName = 'CHUC_VU_CDOAN'
      Size = 30
    end
    object qryThongTinThem_webTEN_CHUCVU_CDOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_CDOAN'
      Size = 126
    end
    object qryThongTinThem_webNGAY_VAO_CONGTY: TDateField
      FieldName = 'NGAY_VAO_CONGTY'
    end
    object qryThongTinThem_webTRINHDO_HOCVAN: TWideStringField
      FieldName = 'TRINHDO_HOCVAN'
      Size = 30
    end
    object qryThongTinThem_webEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Size = 126
    end
    object qryThongTinThem_webTRINHDO_VANHOA: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 30
    end
    object qryThongTinThem_webACADEMIC_NAME: TWideStringField
      FieldName = 'ACADEMIC_NAME'
      Size = 126
    end
    object qryThongTinThem_webSOTRUONG_CTAC: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object qryThongTinThem_webNGHE_NGHIEP: TWideStringField
      FieldName = 'NGHE_NGHIEP'
      Size = 30
    end
    object qryThongTinThem_webCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 126
    end
    object qryThongTinThem_webNAM_TOTNGHIEP: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryThongTinThem_webCONGVIEC_LAUNHAT: TWideStringField
      FieldName = 'CONGVIEC_LAUNHAT'
      Size = 255
    end
  end
  object dsThongTinThem_Web: TDataSource
    DataSet = qryThongTinThem_web
    Left = 48
    Top = 168
  end
  object qryTrinhDoKyNang: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
        Value = 'NV-0016'
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_SKILL'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO AND'
      '   SKILL_NO = :OLD_SKILL_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMP_SKILL SET'
      '   DUYET = :DUYET'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO AND'
      '   SKILL_NO = :OLD_SKILL_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMP_SKILL('
      '   EMPLOYEE_NO, /*PK*/'
      '   LEVEL_NO, /*PK*/'
      '   SKILL_NO, /*PK*/'
      '   ISSUED_DATE,'
      '   ISSUED_PLACE,'
      '   ARCHIVEMENT,'
      '   NOTE,'
      '   DUYET)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :LEVEL_NO,'
      '   :SKILL_NO,'
      '   :ISSUED_DATE,'
      '   :ISSUED_PLACE,'
      '   :ARCHIVEMENT,'
      '   :NOTE,'
      '   :DUYET)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'SELECT HR_EMP_SKILL.EMPLOYEE_NO'
      '         , HR_EMP_SKILL.SKILL_NO'
      '         , HR_SKILL.SKILL_NAME'
      '         , HR_EMP_SKILL.LEVEL_NO'
      '         , HR_SKILL_LEVEL.LEVEL_NAME '
      '         , HR_EMP_SKILL.ISSUED_DATE'
      '         , HR_EMP_SKILL.ISSUED_PLACE'
      '         , HR_EMP_SKILL.ARCHIVEMENT'
      '         , HR_EMP_SKILL.NOTE'
      '         , HR_EMP_SKILL.duyet'
      
        '         , HR_EMP_SKILL.EMPLOYEE_NO || '#39'-'#39' || HR_EMP_SKILL.SKILL' +
        '_NO || '#39'-'#39' ||  HR_EMP_SKILL.LEVEL_NO KEY_FIELD '
      '    FROM HR_EMP_SKILL'
      '    left JOIN HR_SKILL_LEVEL on'
      '         HR_EMP_SKILL.SKILL_NO=HR_SKILL_LEVEL.SKILL_NO and'
      '         HR_EMP_SKILL.LEVEL_NO=HR_SKILL_LEVEL.LEVEL_NO'
      '    left JOIN HR_SKILL on'
      '      HR_EMP_SKILL.SKILL_NO=HR_SKILL.SKILL_NO'
      '    where HR_EMP_SKILL.EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 80
    Top = 136
    object qryTrinhDoKyNangEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryTrinhDoKyNangSKILL_NO: TWideStringField
      FieldName = 'SKILL_NO'
      Required = True
      Size = 30
    end
    object qryTrinhDoKyNangSKILL_NAME: TWideStringField
      FieldName = 'SKILL_NAME'
      Size = 126
    end
    object qryTrinhDoKyNangLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryTrinhDoKyNangLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Size = 126
    end
    object qryTrinhDoKyNangISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryTrinhDoKyNangISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryTrinhDoKyNangARCHIVEMENT: TWideStringField
      FieldName = 'ARCHIVEMENT'
      Size = 126
    end
    object qryTrinhDoKyNangNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryTrinhDoKyNangDUYET: TSmallintField
      FieldName = 'DUYET'
    end
    object qryTrinhDoKyNangKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      ReadOnly = True
      Required = True
      Size = 96
    end
  end
  object dsTrinhDoKyNang: TDataSource
    DataSet = qryTrinhDoKyNang
    Left = 80
    Top = 168
  end
  object qryTrinhDoNgoaiNgu: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_EMP_LANGUAGE SET'
      '   DUYET = :DUYET'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   LANGUAGE_NO = :OLD_LANGUAGE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_EMP_LANGUAGE.EMPLOYEE_NO'
      'HR_EMP_LANGUAGE.LANGUAGE_NO'
      'HR_EMP_LANGUAGE.LEVEL_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'SELECT HR_EMP_LANGUAGE.EMPLOYEE_NO'
      '         , HR_EMP_LANGUAGE.LANGUAGE_NO'
      '         , HR_LANGUAGE.LANGUAGE_NAME'
      '         , HR_EMP_LANGUAGE.LEVEL_NO'
      '         , HR_LANGUAGE_LEVEL.LEVEL_NAME '
      '         , HR_EMP_LANGUAGE.ISSUED_DATE'
      '         , HR_EMP_LANGUAGE.ISSUED_PLACE'
      '         , HR_EMP_LANGUAGE.ARCHIVEMENT'
      '         , HR_EMP_LANGUAGE.NOTE'
      '         , HR_EMP_LANGUAGE.duyet'
      
        '         , HR_EMP_LANGUAGE.EMPLOYEE_NO || '#39'-'#39' || HR_EMP_LANGUAGE' +
        '.LANGUAGE_NO || '#39'-'#39' || HR_EMP_LANGUAGE.LEVEL_NO KEY_FIELD'
      '    FROM HR_EMP_LANGUAGE'
      '    left JOIN HR_LANGUAGE_LEVEL on'
      
        '         HR_EMP_LANGUAGE.LANGUAGE_NO=HR_LANGUAGE_LEVEL.LANGUAGE_' +
        'NO and'
      '         HR_EMP_LANGUAGE.LEVEL_NO=HR_LANGUAGE_LEVEL.LEVEL_NO'
      '    left JOIN HR_LANGUAGE on'
      '      HR_EMP_LANGUAGE.LANGUAGE_NO=HR_LANGUAGE.LANGUAGE_NO'
      '    where HR_EMP_LANGUAGE.EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 112
    Top = 136
    object qryTrinhDoNgoaiNguEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryTrinhDoNgoaiNguLANGUAGE_NO: TWideStringField
      FieldName = 'LANGUAGE_NO'
      Required = True
      Size = 30
    end
    object qryTrinhDoNgoaiNguLANGUAGE_NAME: TWideStringField
      FieldName = 'LANGUAGE_NAME'
      Size = 126
    end
    object qryTrinhDoNgoaiNguLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryTrinhDoNgoaiNguLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Size = 126
    end
    object qryTrinhDoNgoaiNguISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryTrinhDoNgoaiNguISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryTrinhDoNgoaiNguARCHIVEMENT: TWideStringField
      FieldName = 'ARCHIVEMENT'
      Size = 126
    end
    object qryTrinhDoNgoaiNguNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryTrinhDoNgoaiNguDUYET: TSmallintField
      FieldName = 'DUYET'
    end
    object qryTrinhDoNgoaiNguKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      ReadOnly = True
      Required = True
      Size = 96
    end
  end
  object dsTrinhDoNgoaiNgu: TDataSource
    DataSet = qryTrinhDoNgoaiNgu
    Left = 112
    Top = 168
  end
  object qryChuyenMonKhac: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_EMP_EDU_LEVEL SET'
      '   DUYET = :DUYET'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO AND'
      '   EDU_LEVEL_NO = :OLD_EDU_LEVEL_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_EMP_EDU_LEVEL.EMPLOYEE_NO'
      'HR_EMP_EDU_LEVEL.EDU_FIELD_NO'
      'HR_EMP_EDU_LEVEL.EDU_LEVEL_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSNVHieuChinh
    SQL.Strings = (
      'SELECT HR_EMP_EDU_LEVEL.EMPLOYEE_NO'
      '         , HR_EMP_EDU_LEVEL.EDU_FIELD_NO'
      '         , HR_EDU_FIELD.EDU_FIELD_NAME'
      '         , HR_EMP_EDU_LEVEL.EDU_LEVEL_NO'
      '         , HR_FIELD_LEVEL.FIELD_LEVEL_NAME '
      '         , HR_EMP_EDU_LEVEL.ISSUED_DATE'
      '         , HR_EMP_EDU_LEVEL.ISSUED_PLACE'
      '         , HR_EMP_EDU_LEVEL.EDU_ARCHIVEMENT'
      '         , HR_EMP_EDU_LEVEL.EMP_EDU_NOTE'
      '         , HR_EMP_EDU_LEVEL.duyet '
      
        '         , HR_EMP_EDU_LEVEL.EMPLOYEE_NO || '#39'-'#39' || HR_EMP_EDU_LEV' +
        'EL.EDU_FIELD_NO || '#39'-'#39' || HR_EMP_EDU_LEVEL.EDU_LEVEL_NO KEY_FIEL' +
        'D'
      '    FROM HR_EMP_EDU_LEVEL'
      '    JOIN HR_FIELD_LEVEL on'
      
        '         HR_EMP_EDU_LEVEL.EDU_FIELD_NO=HR_FIELD_LEVEL.EDU_FIELD_' +
        'NO and'
      
        '         HR_EMP_EDU_LEVEL.EDU_LEVEL_NO=HR_FIELD_LEVEL.FIELD_LEVE' +
        'L_NO'
      '    JOIN HR_EDU_FIELD on '
      '      HR_EMP_EDU_LEVEL.EDU_FIELD_NO=HR_EDU_FIELD.EDU_FIELD_NO'
      '    where HR_EMP_EDU_LEVEL.EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 16
    Top = 200
    object qryChuyenMonKhacEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryChuyenMonKhacEDU_FIELD_NO: TWideStringField
      FieldName = 'EDU_FIELD_NO'
      Required = True
      Size = 30
    end
    object qryChuyenMonKhacEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      Required = True
      Size = 30
    end
    object qryChuyenMonKhacEDU_LEVEL_NO: TWideStringField
      FieldName = 'EDU_LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryChuyenMonKhacFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryChuyenMonKhacISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryChuyenMonKhacISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryChuyenMonKhacEDU_ARCHIVEMENT: TWideStringField
      FieldName = 'EDU_ARCHIVEMENT'
      Size = 126
    end
    object qryChuyenMonKhacEMP_EDU_NOTE: TWideStringField
      FieldName = 'EMP_EDU_NOTE'
      Size = 3072
    end
    object qryChuyenMonKhacDUYET: TSmallintField
      FieldName = 'DUYET'
    end
    object qryChuyenMonKhacKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      ReadOnly = True
      Required = True
      Size = 96
    end
  end
  object dsChuyenMonKhac: TDataSource
    DataSet = qryChuyenMonKhac
    Left = 16
    Top = 232
  end
end
