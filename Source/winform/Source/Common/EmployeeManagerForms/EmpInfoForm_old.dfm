inherited frmEmpInfo: TfrmEmpInfo
  Tag = -1
  Left = 266
  Top = 127
  Width = 866
  Height = 616
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 563
    Width = 858
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 858
    Height = 563
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 568
      Width = 788
      Color = 15466238
      TabOrder = 45
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 788
        inherited btnClose: TElPopupButton
          Left = 1206
        end
        inherited btnHelp: TElPopupButton
          Left = 1076
        end
        inherited btnChoose: TElPopupButton
          Left = 1146
        end
        inherited btnDesign: TElPopupButton
          Left = 866
        end
        inherited btnPreview: TElPopupButton
          Left = 796
        end
        inherited btnPrint: TElPopupButton
          Left = 726
          ImageIndex = -1
          Caption = '&X'#7917' l'#237' t'#234'n'
          Action = acXuliTen
        end
        inherited btnSendMail: TElPopupButton
          Left = 701
        end
        inherited btnGenerate: TElPopupButton
          Left = 991
        end
        inherited btnRelation: TElPopupButton
          Left = 966
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 941
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group3: TdxLayoutGroup
              Visible = True
            end
          end
        end
      end
    end
    object dxDBEdit1: TdxDBEdit [1]
      Left = 280
      Top = 84
      Width = 71
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      DataField = 'LAST_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit [2]
      Left = 351
      Top = 84
      Width = 167
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      DataField = 'MIDDLE_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit3: TdxDBEdit [3]
      Left = 518
      Top = 84
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      DataField = 'FIRST_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit5: TdxDBEdit [4]
      Left = 280
      Top = 28
      Width = 115
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      DataField = 'EMPLOYEE_NO'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit6: TdxDBEdit [5]
      Left = 484
      Top = 28
      Width = 127
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'EMPLOYEE_ID'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dbimGENDER: TdxDBImageEdit [6]
      Left = 516
      Top = 130
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 9
      DataField = 'GENDER'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
      Images = EmpInfoDM.imglGender
    end
    object dxDBDateEdit1: TdxDBDateEdit [7]
      Left = 280
      Top = 130
      Width = 90
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      DataField = 'BIRTH_DATE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBEdit7: TdxDBEdit [8]
      Left = 280
      Top = 186
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 10
      DataField = 'ID_CARD_NO'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit8: TdxDBEdit [9]
      Left = 594
      Top = 186
      Width = 236
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 13
      DataField = 'ISSUED_PLACE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit2: TdxDBDateEdit [10]
      Left = 350
      Top = 186
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 11
      DataField = 'ISSUED_DATE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBPopupEdit1: TdxDBPopupEdit [11]
      Left = 84
      Top = 288
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 22
      DataField = 'NATIONAL_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit1CloseUp
      OnInitPopup = dxDBPopupEdit1InitPopup
    end
    object dxDBPopupEdit2: TdxDBPopupEdit [12]
      Left = 462
      Top = 288
      Width = 483
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 24
      DataField = 'BIRTH_PLACE_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit2CloseUp
      OnInitPopup = dxDBPopupEdit2InitPopup
    end
    object dxDBPopupEdit3: TdxDBPopupEdit [13]
      Left = 293
      Top = 288
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 23
      DataField = 'RACE_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit3CloseUp
      OnInitPopup = dxDBPopupEdit3InitPopup
    end
    object dxDBPopupEdit4: TdxDBPopupEdit [14]
      Left = 462
      Top = 311
      Width = 483
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 27
      DataField = 'NATIVE_PLACE_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit4CloseUp
      OnInitPopup = dxDBPopupEdit4InitPopup
    end
    object dxDBPopupEdit5: TdxDBPopupEdit [15]
      Left = 84
      Top = 311
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 25
      DataField = 'RELIGION_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit5CloseUp
      OnInitPopup = dxDBPopupEdit5InitPopup
    end
    object dxDBPopupEdit6: TdxDBPopupEdit [16]
      Left = 293
      Top = 311
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 26
      DataField = 'DESCENT_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit6CloseUp
      OnInitPopup = dxDBPopupEdit6InitPopup
    end
    object dxDBEdit9: TdxDBEdit [17]
      Left = 84
      Top = 367
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 28
      DataField = 'CONTACT_PHONE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit10: TdxDBEdit [18]
      Left = 84
      Top = 390
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 29
      DataField = 'HAND_PHONE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit11: TdxDBEdit [19]
      Left = 293
      Top = 367
      Width = 442
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 31
      DataField = 'RESIDENT_ADDR'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit14: TdxDBEdit [20]
      Left = 293
      Top = 390
      Width = 442
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 32
      DataField = 'PROVISION_ADDR'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit15: TdxDBEdit [21]
      Left = 293
      Top = 413
      Width = 442
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 33
      DataField = 'CONTACT_ADDR'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBHyperLinkEdit1: TdxDBHyperLinkEdit [22]
      Left = 84
      Top = 413
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 30
      AutoSelect = True
      DataField = 'EMAIL'
      DataSource = EmpInfoDM.dsEmpList
      MaxLength = 20
      StyleController = dmMain.StyleController
      StoredValues = 2
    end
    object Panel1: TPanel [23]
      Left = 14
      Top = 28
      Width = 133
      Height = 197
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 44
      object dxDBGraphicEdit1: TdxDBGraphicEdit
        Left = 4
        Top = 5
        Width = 122
        Hint = 'Click phai de load h'#236'nh'
        ParentShowHint = False
        ShowHint = True
        Style.BorderColor = clOlive
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 0
        Caption = '( H'#236'nh ch'#226'n dung )'
        StyleController = dmMain.StyleController
        DataField = 'PORTRAIT'
        DataSource = EmpInfoDM.dsEmpList
        Stretch = True
        OnAssignPicture = dxDBGraphicEdit1AssignPicture
        OnGetGraphicClass = dxDBGraphicEdit1GetGraphicClass
        Height = 160
      end
      object dxDBMemo1: TdxDBMemo
        Tag = -1
        Left = 4
        Top = 165
        Width = 121
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsDefault
        TabOrder = 1
        Alignment = taCenter
        CharCase = ecUpperCase
        DataField = 'FULL_NAME'
        DataSource = EmpInfoDM.dsEmpList
        ReadOnly = True
        Height = 36
        StoredValues = 65
      end
    end
    object dxDBEdit12: TdxDBEdit [24]
      Left = 84
      Top = 469
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 34
      DataField = 'ACCOUNT_ID'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit13: TdxDBEdit [25]
      Left = 534
      Top = 469
      Width = 543
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 36
      DataField = 'ACCOUNT_BANK'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit4: TdxDBEdit [26]
      Left = 280
      Top = 107
      Width = 237
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      DataField = 'REGISTERED_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit16: TdxDBEdit [27]
      Left = 517
      Top = 107
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      DataField = 'ALIAS'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit3: TdxDBDateEdit [28]
      Left = 350
      Top = 209
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 15
      DataField = 'PASSPORT_DATE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBEdit17: TdxDBEdit [29]
      Left = 280
      Top = 209
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 14
      DataField = 'PASSPORT'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit18: TdxDBEdit [30]
      Left = 594
      Top = 209
      Width = 252
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 17
      DataField = 'PASSPORT_PLACE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBPopupEdit7: TdxDBPopupEdit [31]
      Left = 418
      Top = 130
      Width = 98
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 8
      DataField = 'MARRIAL_STATUS_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit7CloseUp
      OnInitPopup = dxDBPopupEdit7InitPopup
    end
    object dxDBEdit19: TdxDBEdit [32]
      Left = 84
      Top = 515
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 40
      DataField = 'MASO_THUE_CANHAN'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit20: TdxDBEdit [33]
      Left = 293
      Top = 515
      Width = 139
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 41
      DataField = 'COQUAN_THUE_QUANLY'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit4: TdxDBDateEdit [34]
      Left = 534
      Top = 515
      Width = 260
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 42
      DataField = 'NGAY_KHAIBAO_CUTRU'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBPopupEdit9: TdxDBPopupEdit [35]
      Left = 279
      Top = 538
      Width = 191
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 43
      DataField = 'USERACC_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit9CloseUp
      OnInitPopup = dxDBPopupEdit9InitPopup
    end
    object dxDBPopupEdit10: TdxDBPopupEdit [36]
      Left = 487
      Top = 186
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 12
      DataField = 'MATINH_CAP_CMND'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      OnCloseUp = dxDBPopupEdit10CloseUp
      OnInitPopup = dxDBPopupEdit10InitPopup
    end
    object dxDBDateEdit5: TdxDBDateEdit [37]
      Left = 487
      Top = 209
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 16
      DataField = 'PASSPORT_EXPIRED'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBEdit21: TdxDBEdit [38]
      Left = 280
      Top = 232
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 18
      DataField = 'VISA_NO'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit6: TdxDBDateEdit [39]
      Left = 350
      Top = 232
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 19
      DataField = 'VISA_DATE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBDateEdit7: TdxDBDateEdit [40]
      Left = 487
      Top = 232
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 20
      DataField = 'VISA_EXPIRED'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBEdit22: TdxDBEdit [41]
      Left = 594
      Top = 232
      Width = 170
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 21
      DataField = 'VISA_PLACE'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit23: TdxDBEdit [42]
      Left = 293
      Top = 469
      Width = 139
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 35
      DataField = 'ACCOUNT_NAME'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit24: TdxDBEdit [43]
      Left = 84
      Top = 492
      Width = 120
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 37
      DataField = 'ACCOUNT_ID_2'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit25: TdxDBEdit [44]
      Left = 293
      Top = 492
      Width = 139
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 38
      DataField = 'ACCOUNT_NAME_2'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit26: TdxDBEdit [45]
      Left = 534
      Top = 492
      Width = 321
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 39
      DataField = 'ACCOUNT_BANK_2'
      DataSource = EmpInfoDM.dsEmpList
      StyleController = dmMain.StyleController
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup3: TdxLayoutGroup [0]
        AutoAligns = []
        AlignHorz = ahClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainGroup17: TdxLayoutGroup
          Caption = 'H'#204'NH CH'#194'N DUNG'
          object dxlcMainItem28: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Panel1'
            ShowCaption = False
            Control = Panel1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup19: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainGroup15: TdxLayoutGroup
            Caption = '* M'#195' S'#7888' C'#193' NH'#194'N'
            LayoutDirection = ldHorizontal
            object dxlcMainItem7: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'M'#227' ch'#237'nh th'#7913'c'
              Control = dxDBEdit5
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem8: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'M'#227' th'#7867' ch'#7845'm c'#244'ng'
              Control = dxDBEdit6
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup2: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = '* TH'#212'NG TIN C'#193' NH'#194'N'
            object dxlcMainGroup21: TdxLayoutGroup
              ShowCaption = False
              ShowBorder = False
              object dxlcMainGroup22: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxlcMainItem3: TdxLayoutItem
                  Caption = 'H'#7885' / T'#234'n l'#243't / T'#234'n '
                  Control = dxDBEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'T'#234'n l'#243't'
                  ShowCaption = False
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'T'#234'n '
                  ShowCaption = False
                  Control = dxDBEdit3
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcMainGroup27: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxlcMainItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'T'#234'n khai sinh / B'#237' danh'
                  Control = dxDBEdit4
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem31: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Control = dxDBEdit16
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcMainGroup9: TdxLayoutGroup
                AutoAligns = [aaVertical]
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxlcMainItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ng'#224'y sinh'
                  Control = dxDBDateEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem35: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'H'#244'n nh'#226'n'
                  Control = dxDBPopupEdit7
                  ControlOptions.ShowBorder = False
                end
                object dxlcMainItem9: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Gi'#7899'i t'#237'nh'
                  ShowCaption = False
                  Control = dbimGENDER
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object dxlcMainGroup6: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            ShowCaption = False
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlcMainGroup5: TdxLayoutGroup
              ShowCaption = False
              ShowBorder = False
            end
            object dxlcMainGroup7: TdxLayoutGroup
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
            end
          end
          object dxlcMainGroup8: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            Caption = '* TH'#7866' C'#258'N C'#431#7898'C'
            object dxlcMainGroup25: TdxLayoutGroup
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem11: TdxLayoutItem
                Caption = 'S'#7889' CMND / c'#7845'p ng'#224'y'
                Control = dxDBEdit7
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem13: TdxLayoutItem
                Caption = 'Ng'#224'y c'#7845'p'
                ShowCaption = False
                Control = dxDBDateEdit2
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem39: TdxLayoutItem
                Caption = 'M'#227' t'#7881'nh c'#7845'p'
                Control = dxDBPopupEdit10
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem12: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'N'#417'i c'#7845'p'
                Control = dxDBEdit8
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcMainGroup20: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem33: TdxLayoutItem
                Caption = 'Passport / c'#7845'p ng'#224'y'
                Control = dxDBEdit17
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem32: TdxLayoutItem
                Caption = 'dxDBDateEdit3'
                ShowCaption = False
                Control = dxDBDateEdit3
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem40: TdxLayoutItem
                Caption = 'Ng'#224'y h'#7871't h'#7841'n'
                Control = dxDBDateEdit5
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem34: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'N'#417'i c'#7845'p'
                Control = dxDBEdit18
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcMainGroup1: TdxLayoutGroup
              Caption = 'New Group'
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem41: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Visa / c'#7845'p ng'#224'y'
                Control = dxDBEdit21
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem42: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = dxDBDateEdit6
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem43: TdxLayoutItem
                Caption = 'Ng'#224'y h'#7871't h'#7841'n'
                Control = dxDBDateEdit7
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem44: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'N'#417'i c'#7845'p'
                Control = dxDBEdit22
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object dxlcMainGroup28: TdxLayoutGroup [1]
        Caption = '* TH'#212'NG TIN TH'#192'NH PH'#7846'N XU'#7844'T TH'#194'N'
        object dxlcMainGroup18: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem15: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Qu'#7889'c t'#7883'ch'
            Control = dxDBPopupEdit1
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem17: TdxLayoutItem
            Caption = 'D'#226'n t'#7897'c'
            CaptionOptions.AlignHorz = taRightJustify
            Control = dxDBPopupEdit3
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem16: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'N'#417'i sinh'
            Control = dxDBPopupEdit2
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup23: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem19: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'T'#244'n gi'#225'o'
            Control = dxDBPopupEdit5
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem20: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Xu'#7845't th'#226'n'
            CaptionOptions.AlignHorz = taRightJustify
            Control = dxDBPopupEdit6
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem18: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Qu'#234' qu'#225'n'
            Control = dxDBPopupEdit4
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlcMainGroup12: TdxLayoutGroup [2]
        Caption = '* TH'#212'NG TIN LI'#202'N H'#7878
        LayoutDirection = ldHorizontal
        object dxlcMainGroup14: TdxLayoutGroup
          ShowCaption = False
          ShowBorder = False
          object dxlcMainItem21: TdxLayoutItem
            Caption = 'S'#7889' '#273'i'#7879'n tho'#7841'i'
            Control = dxDBEdit9
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem22: TdxLayoutItem
            Caption = 'Mobile'
            Control = dxDBEdit10
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem24: TdxLayoutItem
            Caption = 'Email'
            Control = dxDBHyperLinkEdit1
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup16: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          ShowBorder = False
          object dxlcMainItem23: TdxLayoutItem
            Caption = #272#7883'a ch'#7881' th'#432#7901'ng tr'#250
            CaptionOptions.AlignHorz = taRightJustify
            Control = dxDBEdit11
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem26: TdxLayoutItem
            Caption = #272#7883'a ch'#7881' t'#7841'm tr'#250
            CaptionOptions.AlignHorz = taRightJustify
            Control = dxDBEdit14
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem27: TdxLayoutItem
            Caption = #272#7883'a ch'#7881' li'#234'n h'#7879
            CaptionOptions.AlignHorz = taRightJustify
            Control = dxDBEdit15
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlcMainGroup4: TdxLayoutGroup [3]
        Caption = '* TH'#212'NG TIN KH'#193'C'
        object dxlcMainGroup26: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem2: TdxLayoutItem
            Caption = 'S'#7889' t'#224'i kho'#7843'n 1'
            Control = dxDBEdit12
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem29: TdxLayoutItem
            Caption = 'T'#234'n t'#224'i kho'#7843'n 1'
            Control = dxDBEdit23
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem30: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ng'#226'n h'#224'ng 1'
            Control = dxDBEdit13
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup10: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem25: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'S'#7889' t'#224'i kho'#7843'n 2'
            Control = dxDBEdit24
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem45: TdxLayoutItem
            Caption = 'T'#234'n t'#224'i kho'#7843'n 2'
            Control = dxDBEdit25
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem46: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ng'#226'n h'#224'ng 2'
            Control = dxDBEdit26
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup24: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainItem14: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'M'#227' s'#7889' thu'#7871
            Control = dxDBEdit19
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem36: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'C'#417' quan thu'#7871
            Control = dxDBEdit20
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem37: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ng'#224'y khai b'#225'o c'#432' tr'#250
            Control = dxDBDateEdit4
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainItem38: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Quy'#7873'n xem b'#225'o c'#225'o tr'#234'n web x'#233't theo quy'#7873'n c'#7911'a user'
          Control = dxDBPopupEdit9
          ControlOptions.AutoAlignment = False
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
        Caption = 'Nh'#226'n vi'#234'n - th'#244'ng tin chung'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 744
    Top = 8
  end
  object ActionList1: TActionList
    Left = 776
    Top = 8
    object acXuliTen: TAction
      Caption = 'acXuliTen'
      OnExecute = acXuliTenExecute
    end
  end
end
