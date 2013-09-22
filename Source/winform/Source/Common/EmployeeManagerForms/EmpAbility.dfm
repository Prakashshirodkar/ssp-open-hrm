inherited frmEmpAbility: TfrmEmpAbility
  Left = 127
  Top = 177
  Width = 820
  Height = 528
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 475
    Width = 812
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 812
    Height = 475
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 448
      Width = 629
      Color = 15466238
      TabOrder = 28
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 629
        inherited btnCancel: TElPopupButton
          Left = 275
          Width = 80
          Height = 25
        end
        inherited btnClose: TElPopupButton
          Left = 962
        end
        inherited btnHelp: TElPopupButton
          Left = 832
        end
        inherited btnChoose: TElPopupButton
          Left = 902
        end
        inherited btnFirst: TElPopupButton
          Left = 360
        end
        inherited btnLast: TElPopupButton
          Left = 429
        end
        inherited btnPrevious: TElPopupButton
          Left = 383
        end
        inherited btnNext: TElPopupButton
          Left = 406
        end
        inherited btnDesign: TElPopupButton
          Left = 622
        end
        inherited btnPreview: TElPopupButton
          Left = 552
        end
        inherited btnPrint: TElPopupButton
          Left = 482
        end
        inherited btnSendMail: TElPopupButton
          Left = 457
        end
        inherited btnGenerate: TElPopupButton
          Left = 747
        end
        inherited btnRelation: TElPopupButton
          Left = 722
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 697
        end
      end
    end
    object dxDBDateEdit1: TdxDBDateEdit [1]
      Left = 114
      Top = 130
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 9
      DataField = 'NGAY_VAO_DANG'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBDateEdit2: TdxDBDateEdit [2]
      Left = 364
      Top = 84
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      DataField = 'NGAY_VAO_DOAN'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBDateEdit3: TdxDBDateEdit [3]
      Left = 364
      Top = 107
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      DataField = 'NGAY_VAO_CDOAN'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBPopupEdit1: TdxDBPopupEdit [4]
      Left = 114
      Top = 278
      Width = 140
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 22
      DataField = 'TEN_TRINH_DO'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit1CloseUp
      OnInitPopup = dxDBPopupEdit1InitPopup
    end
    object dxDBSpinEdit1: TdxDBSpinEdit [5]
      Left = 369
      Top = 278
      Width = 69
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 25
      DataField = 'NAM_TOTNGHIEP'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      StoredValues = 48
    end
    object dxDBEdit4: TdxDBEdit [6]
      Left = 454
      Top = 278
      Width = 234
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 26
      DataField = 'TOTNGHIEP_TAI'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBPopupEdit2: TdxDBPopupEdit [7]
      Left = 369
      Top = 255
      Width = 319
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 24
      DataField = 'TEN_NGHE_NGHIEP'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit2CloseUp
      OnInitPopup = dxDBPopupEdit2InitPopup
    end
    object dxDBEdit5: TdxDBEdit [8]
      Left = 114
      Top = 301
      Width = 164
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 23
      DataField = 'SOTRUONG_CTAC'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBEdit6: TdxDBEdit [9]
      Left = 369
      Top = 301
      Width = 502
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 27
      DataField = 'CONGVIEC_LAUNHAT'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit4: TdxDBDateEdit [10]
      Left = 114
      Top = 199
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 18
      DataField = 'NGAY_VAO_CONGTY'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBPopupEdit3: TdxDBPopupEdit [11]
      Left = 114
      Top = 255
      Width = 140
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 21
      DataField = 'ACADEMIC_NAME'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit3CloseUp
      OnInitPopup = dxDBPopupEdit3InitPopup
    end
    object dxDBPopupEdit4: TdxDBPopupEdit [12]
      Left = 605
      Top = 84
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      DataField = 'TEN_CHUCVU_DOAN'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit4CloseUp
      OnInitPopup = dxDBPopupEdit4InitPopup
    end
    object dxDBPopupEdit5: TdxDBPopupEdit [13]
      Left = 605
      Top = 130
      Width = 123
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 11
      DataField = 'TEN_CHUCVU_DANG'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit5CloseUp
      OnInitPopup = dxDBPopupEdit5InitPopup
    end
    object dxDBPopupEdit6: TdxDBPopupEdit [14]
      Left = 605
      Top = 107
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 8
      DataField = 'TEN_CHUCVU_CDOAN'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit6CloseUp
      OnInitPopup = dxDBPopupEdit6InitPopup
    end
    object dxDBCalcEdit1: TdxDBCalcEdit [15]
      Left = 259
      Top = 28
      Width = 75
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      DataField = 'CAN_NANG'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBCalcEdit2: TdxDBCalcEdit [16]
      Left = 114
      Top = 28
      Width = 75
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      DataField = 'CHIEU_CAO'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBEdit1: TdxDBEdit [17]
      Left = 415
      Top = 28
      Width = 201
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      DataField = 'DAUVET_DACBIET'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object pageLevel: TElPageControl [18]
      Left = 14
      Top = 357
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
      ActivePage = tabLanguage
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 32
      object tabLanguage: TElTabSheet
        PageControl = pageLevel
        ImageIndex = -1
        TabVisible = True
        Caption = 'Tr'#236'nh '#273#7897' ngo'#7841'i ng'#7919
        object gridNgoaingu: TdxDBGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 172
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'LANGUAGE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = EmpInfoDM.dsEmpLanguage
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridNgoainguEDU_FIELD_NAME: TdxDBGridPopupColumn
            Caption = 'T'#234'n ngo'#7841'i ng'#7919
            HeaderAlignment = taCenter
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LANGUAGE_NAME'
            OnCloseUp = gridNgoainguEDU_FIELD_NAMECloseUp
            OnInitPopup = gridNgoainguEDU_FIELD_NAMEInitPopup
            Caption_UTF7 = 'T+AOo-n ngo+HqE-i ng+Hu8'
          end
          object gridNgoainguFIELD_LEVEL_NAME: TdxDBGridPopupColumn
            Caption = 'Tr'#236'nh '#273#7897' '
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEVEL_NAME'
            OnCloseUp = gridNgoainguFIELD_LEVEL_NAMECloseUp
            OnInitPopup = gridNgoainguFIELD_LEVEL_NAMEInitPopup
            Caption_UTF7 = 'Tr+AOw-nh +AREe2Q '
          end
          object gridNgoainguISSUED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y c'#7845'p'
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_DATE'
            Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
          end
          object gridNgoainguISSUED_PLACE: TdxDBGridColumn
            Caption = 'N'#417'i c'#7845'p'
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_PLACE'
            Caption_UTF7 = 'N+AaE-i c+HqU-p'
          end
          object gridNgoainguEDU_ARCHIVEMENT: TdxDBGridColumn
            Caption = 'Th'#224'nh t'#237'ch '#273#7841't '#273#432#7907'c'
            HeaderAlignment = taCenter
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ARCHIVEMENT'
            Caption_UTF7 = 'Th+AOA-nh t+AO0-ch +AREeoQ-t +AREBsB7j-c'
          end
        end
      end
      object tabSkill: TElTabSheet
        PageControl = pageLevel
        ImageIndex = -1
        TabVisible = True
        Caption = 'Tr'#236'nh '#273#7897' k'#7929' n'#259'ng'
        Visible = False
        object gridKynang: TdxDBGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 172
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'SKILL_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = EmpInfoDM.dsEmpSkill
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridKynangEMPLOYEE_NO: TdxDBGridMaskColumn
            Visible = False
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
          end
          object gridKynangSKILL_NO: TdxDBGridMaskColumn
            Visible = False
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SKILL_NO'
          end
          object gridKynangSKILL_NAME: TdxDBGridPopupColumn
            Caption = 'T'#234'n k'#7929' n'#259'ng'
            HeaderAlignment = taCenter
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SKILL_NAME'
            OnCloseUp = gridKynangSKILL_NAMECloseUp
            OnInitPopup = gridKynangSKILL_NAMEInitPopup
            Caption_UTF7 = 'T+AOo-n k+Hvk n+AQM-ng'
          end
          object gridKynangLEVEL_NO: TdxDBGridMaskColumn
            Visible = False
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEVEL_NO'
          end
          object gridKynangLEVEL_NAME: TdxDBGridPopupColumn
            Caption = 'T'#234'n tr'#236'nh '#273#7897
            HeaderAlignment = taCenter
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEVEL_NAME'
            OnCloseUp = gridKynangLEVEL_NAMECloseUp
            OnInitPopup = gridKynangLEVEL_NAMEInitPopup
            Caption_UTF7 = 'T+AOo-n tr+AOw-nh +AREe2Q'
          end
          object gridKynangISSUED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y c'#7845'p'
            HeaderAlignment = taCenter
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_DATE'
            Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
          end
          object gridKynangISSUED_PLACE: TdxDBGridMaskColumn
            Caption = 'N'#417'i c'#7845'p'
            HeaderAlignment = taCenter
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_PLACE'
            Caption_UTF7 = 'N+AaE-i c+HqU-p'
          end
          object gridKynangARCHIVEMENT: TdxDBGridMaskColumn
            Caption = 'Th'#224'nh t'#237'ch '#273#7841't '#273#432#7907'c'
            HeaderAlignment = taCenter
            Width = 164
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ARCHIVEMENT'
            Caption_UTF7 = 'Th+AOA-nh t+AO0-ch +AREeoQ-t +AREBsB7j-c'
          end
          object gridKynangNOTE: TdxDBGridMaskColumn
            Visible = False
            Width = 15963
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOTE'
          end
        end
      end
      object tabOther: TElTabSheet
        PageControl = pageLevel
        ImageIndex = -1
        TabVisible = True
        Caption = 'C'#225'c chuy'#234'n m'#244'n kh'#225'c'
        Visible = False
        object gridChuyenmon: TdxDBGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 172
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EDU_FIELD_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = EmpInfoDM.dsEmpAbility
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridChuyenmonEDU_FIELD_NAME: TdxDBGridPopupColumn
            Caption = 'L'#297'nh v'#7921'c chuy'#234'n m'#244'n '
            HeaderAlignment = taCenter
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDU_FIELD_NAME'
            OnCloseUp = gridChuyenmonEDU_FIELD_NAMECloseUp
            OnInitPopup = gridChuyenmonEDU_FIELD_NAMEInitPopup
            Caption_UTF7 = 'L+ASk-nh v+HvE-c chuy+AOo-n m+APQ-n '
          end
          object gridChuyenmonFIELD_LEVEL_NAME: TdxDBGridPopupColumn
            Caption = 'Tr'#236'nh '#273#7897' '
            HeaderAlignment = taCenter
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FIELD_LEVEL_NAME'
            OnCloseUp = gridChuyenmonFIELD_LEVEL_NAMECloseUp
            OnInitPopup = gridChuyenmonFIELD_LEVEL_NAMEInitPopup
            Caption_UTF7 = 'Tr+AOw-nh +AREe2Q '
          end
          object gridChuyenmonISSUED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y c'#7845'p'
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_DATE'
            Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
          end
          object gridChuyenmonISSUED_PLACE: TdxDBGridColumn
            Caption = 'N'#417'i c'#7845'p'
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISSUED_PLACE'
            Caption_UTF7 = 'N+AaE-i c+HqU-p'
          end
          object gridChuyenmonEDU_ARCHIVEMENT: TdxDBGridColumn
            Caption = 'Th'#224'nh t'#237'ch '#273#7841't '#273#432#7907'c'
            HeaderAlignment = taCenter
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDU_ARCHIVEMENT'
            Caption_UTF7 = 'Th+AOA-nh t+AO0-ch +AREeoQ-t +AREBsB7j-c'
          end
        end
      end
    end
    object dxDBDateEdit5: TdxDBDateEdit [19]
      Left = 364
      Top = 176
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 16
      DataField = 'NGAY_THAMGIACM'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit6: TdxDBDateEdit [20]
      Left = 364
      Top = 130
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 10
      DataField = 'NGAY_CHUYENDANGCHINHTHUC'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBCalcEdit3: TdxDBCalcEdit [21]
      Left = 114
      Top = 176
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 15
      DataField = 'TROCAP_XUATNGU'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit [22]
      Left = 364
      Top = 199
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 19
      DataField = 'CAPUYCAONHATDAQUA'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBEdit3: TdxDBEdit [23]
      Left = 605
      Top = 199
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 20
      DataField = 'CAPUYHIENNAY'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBEdit7: TdxDBEdit [24]
      Left = 605
      Top = 176
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 17
      DataField = 'DACDIEM_LICHSU'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBEdit8: TdxDBEdit [25]
      Left = 114
      Top = 84
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      DataField = 'SUCKHOE'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBEdit9: TdxDBEdit [26]
      Left = 114
      Top = 107
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      DataField = 'LYLUAN_CHINHTRI'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBEdit10: TdxDBEdit [27]
      Left = 605
      Top = 153
      Width = 567
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 14
      DataField = 'QUANHAM'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit7: TdxDBDateEdit [28]
      Left = 364
      Top = 153
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 13
      DataField = 'NGAY_XUATNGU'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit8: TdxDBDateEdit [29]
      Left = 114
      Top = 153
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 12
      DataField = 'NGAY_NHAPNGU'
      DataSource = EmpInfoDM.dsEmpPrivateInfo
      StyleController = dmMain.StyleController
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup7: TdxLayoutGroup [0]
        Caption = '* '#272#7862'C '#272'I'#7874'M C'#193' NH'#194'N'
        LayoutDirection = ldHorizontal
        object dxlcMainItem5: TdxLayoutItem
          Caption = 'Chi'#7873'u cao (m)'
          Control = dxDBCalcEdit2
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
          Caption = 'C'#226'n n'#7863'ng (kg)'
          Control = dxDBCalcEdit1
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'D'#7845'u v'#7871't '#273#7863'c bi'#7879't'
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcMainGroup1: TdxLayoutGroup [1]
        Caption = '* THAM GIA '#272'O'#192'N TH'#7874' - T'#7892' CH'#7912'C'
        object dxlcMainGroup14: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem25: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'S'#7913'c kh'#7887'e'
            Control = dxDBEdit8
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ng'#224'y v'#224'o '#272'o'#224'n'
            Control = dxDBDateEdit2
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem17: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ch'#7913'c v'#7909
            Control = dxDBPopupEdit4
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup18: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem26: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'L'#253' lu'#7853'n ch'#237'nh tr'#7883
            Control = dxDBEdit9
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem6: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ng'#224'y v'#224'o C'#244'ng '#273'o'#224'n'
            Control = dxDBDateEdit3
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem19: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ch'#7913'c v'#7909
            Control = dxDBPopupEdit6
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup12: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ng'#224'y v'#224'o '#272#7843'ng'
            LookAndFeel = dmMain.StyleWeb
            Control = dxDBDateEdit1
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem21: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ng'#224'y v'#224'o '#272#7843'ng ch'#237'nh th'#7913'c'
            Control = dxDBDateEdit6
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem18: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ch'#7913'c v'#7909
            Control = dxDBPopupEdit5
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup11: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem28: TdxLayoutItem
            Caption = 'Ng'#224'y nh'#7853'p ng'#361
            Control = dxDBDateEdit8
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem27: TdxLayoutItem
            Caption = 'Ng'#224'y xu'#7845't ng'#361
            Control = dxDBDateEdit7
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem29: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Qu'#226'n h'#224'm (khi xu'#7845't ng'#361')'
            Control = dxDBEdit10
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup13: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem30: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Tr'#7907' c'#7845'p khi xu'#7845't ng'#361
            Control = dxDBCalcEdit3
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem11: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ng'#224'y tham gia c'#225'ch m'#7841'ng'
            Control = dxDBDateEdit5
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem24: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #272#7863'c '#273'i'#7875'm l'#7883'ch s'#7917
            Control = dxDBEdit7
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup2: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem15: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ng'#224'y v'#224'o c'#244'ng ty'
            Control = dxDBDateEdit4
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem22: TdxLayoutItem
            Caption = 'C'#7845'p '#7911'y cao nh'#7845't '#273#227' qua'
            Control = dxDBEdit2
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem23: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'C'#7845'p '#7911'y hi'#7879'n nay'
            Control = dxDBEdit3
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlcMainGroup4: TdxLayoutGroup [2]
        Caption = '* TR'#204'NH '#272#7896' H'#7884'C V'#7844'N CHUNG'
        LayoutDirection = ldHorizontal
        object dxlcMainGroup6: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainItem16: TdxLayoutItem
            Caption = 'Tr'#236'nh '#273#7897' v'#259'n h'#243'a'
            Control = dxDBPopupEdit3
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem8: TdxLayoutItem
            Caption = 'Tr'#236'nh '#273#7897' h'#7885'c v'#7845'n'
            Control = dxDBPopupEdit1
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem12: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'S'#7903' tr'#432#7901'ng c'#244'ng t'#225'c'
            Control = dxDBEdit5
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup8: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainItem14: TdxLayoutItem
            Caption = 'Ngh'#7873' nghi'#7879'p'
            Control = dxDBPopupEdit2
            ControlOptions.ShowBorder = False
          end
          object dxlcMainGroup9: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxlcMainGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem9: TdxLayoutItem
                Caption = 'N'#259'm TN'
                Control = dxDBSpinEdit1
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'T'#7841'i'
                Control = dxDBEdit4
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcMainItem13: TdxLayoutItem
              Caption = 'C'#244'ng vi'#7879'c l'#226'u nh'#7845't'
              Control = dxDBEdit6
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxlcMainGroup5: TdxLayoutGroup [3]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '* TR'#204'NH '#272#7896' CHUY'#202'N M'#212'N - L'#296'NH V'#7920'C '
        object dxlcMainItem20: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'ElPageControl1'
          ShowCaption = False
          Control = pageLevel
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
        Caption = 'Tr'#236'nh '#273#7897' - n'#259'ng l'#7921'c c'#7911'a nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 264
    Top = 272
  end
end
