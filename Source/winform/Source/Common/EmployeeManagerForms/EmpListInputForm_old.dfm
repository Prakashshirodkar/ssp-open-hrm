inherited frmEmpListInput: TfrmEmpListInput
  Left = 286
  Top = 197
  Width = 829
  Height = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 496
    Width = 821
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 821
    Height = 496
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 469
      Color = 15466238
      TabOrder = 3
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 3
      Top = 59
      Width = 718
      Height = 318
      Bands = <
        item
          Caption = 'Nh'#226'n vi'#234'n'
          Fixed = bfLeft
        end
        item
          Caption = 'Th'#244'ng tin c'#225' nh'#226'n'
        end
        item
          Caption = 'Th'#224'nh ph'#7847'n xu'#7845't th'#226'n'
        end
        item
          Caption = 'Th'#244'ng tin li'#234'n h'#7879
        end
        item
          Caption = 'Th'#244'ng tin kh'#225'c'
        end>
      DefaultLayout = False
      KeyField = 'EMPLOYEE_NO'
      TabOrder = 2
      Filter.Criteria = {00000000}
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
      OptionsView = [edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object dxdbgMainPORTRAIT: TdxDBGridGraphicColumn
        Caption = 'H'#236'nh ch'#226'n dung'
        HeaderAlignment = taCenter
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 1
        FieldName = 'PORTRAIT'
        QuickDraw = True
        Caption_UTF7 = 'H+AOw-nh ch+AOI-n dung'
      end
      object dxdbgMainIMG_TYPE: TdxDBGridColumn
        Caption = 'Ki'#7875'u h'#236'nh'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMG_TYPE'
        Caption_UTF7 = 'Ki+HsM-u h+AOw-nh'
      end
      object dxdbgMainEMPLOYEE_NO: TdxDBGridColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object dxdbgMainLAST_NAME: TdxDBGridColumn
        Caption = 'H'#7885
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LAST_NAME'
        Caption_UTF7 = 'H+Hs0'
      end
      object dxdbgMainMIDDLE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n l'#243't'
        HeaderAlignment = taCenter
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MIDDLE_NAME'
        Caption_UTF7 = 'T+AOo-n l+APM-t'
      end
      object dxdbgMainFIRST_NAME: TdxDBGridColumn
        Caption = 'T'#234'n'
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FIRST_NAME'
        Caption_UTF7 = 'T+AOo-n'
      end
      object dxdbgMainFULL_NAME: TdxDBGridColumn
        Caption = 'H'#7885' t'#234'n '#273#7847'y '#273#7911
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 t+AOo-n +AREepw-y +AREe5w'
      end
      object dxdbgMainEMPLOYEE_ID: TdxDBGridColumn
        Caption = 'M'#227' d'#7921' ph'#242'ng'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'EMPLOYEE_ID'
        Caption_UTF7 = 'M+AOM d+HvE ph+API-ng'
      end
      object dxdbgMainREGISTERED_NAME: TdxDBGridColumn
        Caption = 'T'#234'n khai sinh'
        HeaderAlignment = taCenter
        Width = 127
        BandIndex = 1
        RowIndex = 0
        FieldName = 'REGISTERED_NAME'
        Caption_UTF7 = 'T+AOo-n khai sinh'
      end
      object dxdbgMainALIAS: TdxDBGridColumn
        Caption = 'B'#237' danh'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ALIAS'
        Caption_UTF7 = 'B+AO0 danh'
      end
      object dxdbgMainGENDER: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = 'Gi'#7899'i t'#237'nh'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 52
        BandIndex = 1
        RowIndex = 0
        FieldName = 'GENDER'
        Descriptions.WideStrings = (
          'N'#7919
          'Nam'
          '')
        Images = dmMain.imglGender
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
      end
      object dxdbgMainBIRTH_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y sinh'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'BIRTH_DATE'
        Caption_UTF7 = 'Ng+AOA-y sinh'
      end
      object dxdbgMainMARRIAL_STATUS_NAME: TdxDBGridMRUColumn
        Caption = 'H'#244'n nh'#226'n'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 1
        RowIndex = 0
        FieldName = 'MARRIAL_STATUS_NAME'
        ShowButtonStyle = sbNone
        DropDownListStyle = True
        DropDownRows = 10
        ImmediateDropDown = True
        PopupBorder = pbFlat
        MaxItemCount = 10
        Caption_UTF7 = 'H+APQ-n nh+AOI-n'
      end
      object dxdbgMainID_CARD_NO: TdxDBGridColumn
        Caption = 'S'#7889' CMND'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ID_CARD_NO'
        Caption_UTF7 = 'S+HtE CMND'
      end
      object dxdbgMainISSUED_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y c'#7845'p'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ISSUED_DATE'
        Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
      end
      object dxdbgMainMATINH_CAP_CMND: TdxDBGridPopupColumn
        Caption = 'M'#227' t'#7881'nh c'#7845'p CMND'
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 1
        RowIndex = 0
        FieldName = 'MATINH_CAP_CMND'
        OnCloseUp = dxdbgMainMATINH_CAP_CMNDCloseUp
        OnInitPopup = dxdbgMainMATINH_CAP_CMNDInitPopup
        Caption_UTF7 = 'M+AOM t+Hsk-nh c+HqU-p CMND'
      end
      object dxdbgMainISSUED_PLACE: TdxDBGridColumn
        Caption = 'N'#417'i c'#7845'p'
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ISSUED_PLACE'
        Caption_UTF7 = 'N+AaE-i c+HqU-p'
      end
      object dxdbgMainPASSPORT: TdxDBGridColumn
        Caption = 'Passport'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PASSPORT'
      end
      object dxdbgMainPASSPORT_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y c'#7845'p passport'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PASSPORT_DATE'
        Caption_UTF7 = 'Ng+AOA-y c+HqU-p passport'
      end
      object dxdbgMainPASSPORT_PLACE: TdxDBGridColumn
        Caption = 'N'#417'i c'#7845'p passport'
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PASSPORT_PLACE'
        Caption_UTF7 = 'N+AaE-i c+HqU-p passport'
      end
      object dxdbgMainPASSPORT_EXPIRED: TdxDBGridDateColumn
        Caption = 'Ng'#224'y h'#7871't h'#7841'n passport'
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PASSPORT_EXPIRED'
        Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n passport'
      end
      object dxdbgMainVISA_NO: TdxDBGridColumn
        Caption = 'Visa'
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 1
        RowIndex = 0
        FieldName = 'VISA_NO'
      end
      object dxdbgMainVISA_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y c'#7845'p Visa'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 1
        RowIndex = 0
        FieldName = 'VISA_DATE'
        Caption_UTF7 = 'Ng+AOA-y c+HqU-p Visa'
      end
      object dxdbgMainVISA_PLACE: TdxDBGridColumn
        Caption = 'N'#417'i c'#7845'p visa'
        HeaderAlignment = taCenter
        Width = 133
        BandIndex = 1
        RowIndex = 0
        FieldName = 'VISA_PLACE'
        Caption_UTF7 = 'N+AaE-i c+HqU-p visa'
      end
      object dxdbgMainNATIONAL_NAME: TdxDBGridMRUColumn
        Caption = 'Qu'#7889'c t'#7883'ch'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NATIONAL_NAME'
        ImmediateDropDown = True
        Caption_UTF7 = 'Qu+HtE-c t+Hss-ch'
      end
      object dxdbgMainVISA_EXPIRED: TdxDBGridDateColumn
        Caption = 'Ng'#224'y h'#7871't h'#7841'n visa'
        HeaderAlignment = taCenter
        Width = 127
        BandIndex = 1
        RowIndex = 0
        FieldName = 'VISA_EXPIRED'
        Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n visa'
      end
      object dxdbgMainRACE_NAME: TdxDBGridMRUColumn
        Caption = 'D'#226'n t'#7897'c'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 2
        RowIndex = 0
        FieldName = 'RACE_NAME'
        ImmediateDropDown = True
        Caption_UTF7 = 'D+AOI-n t+Htk-c'
      end
      object dxdbgMainRELIGION_NAME: TdxDBGridMRUColumn
        Caption = 'T'#244'n gi'#225'o'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 2
        RowIndex = 0
        FieldName = 'RELIGION_NAME'
        ImmediateDropDown = True
        Caption_UTF7 = 'T+APQ-n gi+AOE-o'
      end
      object dxdbgMainBIRTH_PLACE_NAME: TdxDBGridColumn
        Caption = 'N'#417'i sinh'
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 2
        RowIndex = 0
        FieldName = 'BIRTH_PLACE_NAME'
        Caption_UTF7 = 'N+AaE-i sinh'
      end
      object dxdbgMainNATIVE_PLACE_NAME: TdxDBGridColumn
        Caption = 'Qu'#234' qu'#225'n'
        HeaderAlignment = taCenter
        Width = 163
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NATIVE_PLACE_NAME'
        Caption_UTF7 = 'Qu+AOo qu+AOE-n'
      end
      object dxdbgMainDESCENT_NAME: TdxDBGridMRUColumn
        Caption = 'Xu'#7845't th'#226'n'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 2
        RowIndex = 0
        FieldName = 'DESCENT_NAME'
        ImmediateDropDown = True
        Caption_UTF7 = 'Xu+HqU-t th+AOI-n'
      end
      object dxdbgMainCONTACT_ADDR: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881' li'#234'n l'#7841'c'
        HeaderAlignment = taCenter
        Width = 176
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CONTACT_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk li+AOo-n l+HqE-c'
      end
      object dxdbgMainRESIDENT_ADDR: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881' th'#432#7901'ng tr'#250
        HeaderAlignment = taCenter
        Width = 149
        BandIndex = 3
        RowIndex = 0
        FieldName = 'RESIDENT_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk th+AbAe3Q-ng tr+APo'
      end
      object dxdbgMainPROVISION_ADDR: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881' t'#7841'm tr'#250
        HeaderAlignment = taCenter
        Width = 128
        BandIndex = 3
        RowIndex = 0
        FieldName = 'PROVISION_ADDR'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk t+HqE-m tr+APo'
      end
      object dxdbgMainCONTACT_PHONE: TdxDBGridColumn
        Caption = #272'i'#7879'n tho'#7841'i'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CONTACT_PHONE'
        Caption_UTF7 = '+ARA-i+Hsc-n tho+HqE-i'
      end
      object dxdbgMainHAND_PHONE: TdxDBGridColumn
        Caption = 'Mobile'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 3
        RowIndex = 0
        FieldName = 'HAND_PHONE'
      end
      object dxdbgMainFAX: TdxDBGridColumn
        Caption = 'Fax'
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 3
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dxdbgMainEMAIL: TdxDBGridColumn
        Caption = 'Email'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 3
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dxdbgMainWEBSITE: TdxDBGridColumn
        Caption = 'Website'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 3
        RowIndex = 0
        FieldName = 'WEBSITE'
      end
      object dxdbgMainCURRENCY_NAME: TdxDBGridMRUColumn
        Caption = #272#417'n v'#7883' ti'#7873'n t'#7879
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 4
        RowIndex = 0
        FieldName = 'CURRENCY_NAME'
        ImmediateDropDown = True
        Caption_UTF7 = '+ARABoQ-n v+Hss ti+HsE-n t+Hsc'
      end
      object dxdbgMainACCOUNT_ID: TdxDBGridColumn
        Caption = 'S'#7889' t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 4
        RowIndex = 0
        FieldName = 'ACCOUNT_ID'
        Caption_UTF7 = 'S+HtE t+AOA-i kho+HqM-n'
      end
      object dxdbgMainACCOUNT_NAME: TdxDBGridColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n'
        HeaderAlignment = taCenter
        Width = 139
        BandIndex = 4
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n'
      end
      object dxdbgMainACCOUNT_BANK: TdxDBGridColumn
        Caption = 'Ng'#226'n h'#224'ng'
        HeaderAlignment = taCenter
        Width = 157
        BandIndex = 4
        RowIndex = 0
        FieldName = 'ACCOUNT_BANK'
        Caption_UTF7 = 'Ng+AOI-n h+AOA-ng'
      end
      object dxdbgMainACCOUNT_ID_2: TdxDBGridColumn
        Caption = 'S'#7889' t'#224'i kho'#7843'n 2'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 4
        RowIndex = 0
        FieldName = 'ACCOUNT_ID_2'
        Caption_UTF7 = 'S+HtE t+AOA-i kho+HqM-n 2'
      end
      object dxdbgMainACCOUNT_NAME_2: TdxDBGridColumn
        Caption = 'T'#234'n t'#224'i kho'#7843'n 2'
        HeaderAlignment = taCenter
        Width = 145
        BandIndex = 4
        RowIndex = 0
        FieldName = 'ACCOUNT_NAME_2'
        Caption_UTF7 = 'T+AOo-n t+AOA-i kho+HqM-n 2'
      end
      object dxdbgMainACCOUNT_BANK_2: TdxDBGridColumn
        Caption = 'Ng'#226'n h'#224'ng 2'
        HeaderAlignment = taCenter
        Width = 156
        BandIndex = 4
        RowIndex = 0
        FieldName = 'ACCOUNT_BANK_2'
        Caption_UTF7 = 'Ng+AOI-n h+AOA-ng 2'
      end
      object dxdbgMainMASO_THUE_CANHAN: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' thu'#7871' c'#225' nh'#226'n'
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 4
        RowIndex = 0
        FieldName = 'MASO_THUE_CANHAN'
        Caption_UTF7 = 'M+AOM s+HtE thu+Hr8 c+AOE nh+AOI-n'
      end
      object dxdbgMainCOQUAN_THUE_QUANLY: TdxDBGridColumn
        Caption = 'C'#417' quan thu'#7871
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 4
        RowIndex = 0
        FieldName = 'COQUAN_THUE_QUANLY'
        Caption_UTF7 = 'C+AaE quan thu+Hr8'
      end
      object dxdbgMainNOTES: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 4
        RowIndex = 0
        FieldName = 'NOTES'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object dximOption: TdxImageEdit [2]
      Left = 119
      Top = 28
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dximOptionChange
      DropDownRows = 16777223
    end
    object dxDisplayPortrait: TdxCheckEdit [3]
      Left = 322
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = acChangeOptionExecute
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        Caption = 'T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
        LayoutDirection = ldHorizontal
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ph'#226'n nh'#243'm nh'#226'n vi'#234'n'
          Control = dximOption
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem4: TdxLayoutItem
          Caption = 'Hi'#7875'n th'#7883' h'#236'nh '#7843'nh'
          Control = dxDisplayPortrait
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
        Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 128
  end
  inherited qryList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMPLOYEE'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMPLOYEE SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   FIRST_NAME = :FIRST_NAME,'
      '   MIDDLE_NAME = :MIDDLE_NAME,'
      '   LAST_NAME = :LAST_NAME,'
      '   REGISTERED_NAME = :REGISTERED_NAME,'
      '   ALIAS = :ALIAS, '
      '   GENDER = :GENDER,'
      '   BIRTH_DATE = :BIRTH_DATE,'
      '   MARRIAL_STATUS = :MARRIAL_STATUS,'
      '   ID_CARD_NO = :ID_CARD_NO,'
      '   ISSUED_DATE = :ISSUED_DATE,'
      '   ISSUED_PLACE = :ISSUED_PLACE,'
      '   PASSPORT = :PASSPORT,'
      '   PASSPORT_DATE = :PASSPORT_DATE,'
      '   PASSPORT_PLACE = :PASSPORT_PLACE,'
      '   PASSPORT_EXPIRED = :PASSPORT_EXPIRED,'
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
      '   PORTRAIT = :PORTRAIT,'
      '   IMG_TYPE = :IMG_TYPE,'
      '   IS_CADIDATE = :IS_CADIDATE,'
      '   NOTES = :NOTES,'
      '   EMPLOYEE_ID = :EMPLOYEE_ID,'
      '   DESCENT_FROM = :DESCENT_FROM,'
      '   ACCOUNT_ID = :ACCOUNT_ID,'
      '   ACCOUNT_BANK = :ACCOUNT_BANK,'
      '   ACCOUNT_NAME = :ACCOUNT_NAME,'
      '   ACCOUNT_ID_2 = :ACCOUNT_ID_2,'
      '   ACCOUNT_BANK_2 = :ACCOUNT_BANK_2,'
      '   ACCOUNT_NAME_2 = :ACCOUNT_NAME_2,'
      '   MASO_THUE_CANHAN = :MASO_THUE_CANHAN,'
      '   COQUAN_THUE_QUANLY = :COQUAN_THUE_QUANLY,'
      '   MATINH_CAP_CMND = :MATINH_CAP_CMND,'
      '   VISA_NO = :VISA_NO,'
      '   VISA_DATE = :VISA_DATE,'
      '   VISA_PLACE = :VISA_PLACE,'
      '   VISA_EXPIRED = :VISA_EXPIRED'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_EMPLOYEE('
      '   EMPLOYEE_NO, /*PK*/'
      '   FIRST_NAME,'
      '   MIDDLE_NAME,'
      '   LAST_NAME,'
      '   REGISTERED_NAME,'
      '   ALIAS, '
      '   GENDER,'
      '   BIRTH_DATE,'
      '   MARRIAL_STATUS,'
      '   ID_CARD_NO,'
      '   ISSUED_DATE,'
      '   ISSUED_PLACE,'
      '   PASSPORT,'
      '   PASSPORT_DATE,'
      '   PASSPORT_PLACE,'
      '   PASSPORT_EXPIRED'
      '   RACE_NO,'
      '   CURRENCY_NO,'
      '   NATIONAL_NO,'
      '   RELIGION_NO,'
      '   BIRTH_PLACE_ID,'
      '   NATIVE_PLACE_ID,'
      '   CONTACT_ADDR,'
      '   PROVISION_ADDR,'
      '   RESIDENT_ADDR,'
      '   CONTACT_PHONE,'
      '   HAND_PHONE,'
      '   EMAIL,'
      '   FAX,'
      '   WEBSITE,'
      '   PORTRAIT,'
      '   IMG_TYPE,'
      '   IS_CADIDATE,'
      '   NOTES,'
      '   EMPLOYEE_ID,'
      '   DESCENT_FROM,'
      '   ACCOUNT_ID,'
      '   ACCOUNT_BANK,'
      '   ACCOUNT_NAME,'
      '   ACCOUNT_ID_2,'
      '   ACCOUNT_BANK_2,'
      '   ACCOUNT_NAME_2,'
      '   MASO_THUE_CANHAN,'
      '   COQUAN_THUE_QUANLY,'
      '   MATINH_CAP_CMND,'
      '   VISA_NO,'
      '   VISA_DATE,'
      '   VISA_PLACE,'
      '   VISA_EXPIRED)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :FIRST_NAME,'
      '   :MIDDLE_NAME,'
      '   :LAST_NAME,   '
      '   :REGISTERED_NAME,'
      '   :ALIAS, '
      '   :GENDER,'
      '   :BIRTH_DATE,'
      '   :MARRIAL_STATUS,'
      '   :ID_CARD_NO,'
      '   :ISSUED_DATE,'
      '   :ISSUED_PLACE,'
      '   :PASSPORT,'
      '   :PASSPORT_DATE,'
      '   :PASSPORT_PLACE,'
      '   :PASSPORT_EXPIRED'
      '   :RACE_NO,'
      '   :CURRENCY_NO,'
      '   :NATIONAL_NO,'
      '   :RELIGION_NO,'
      '   :BIRTH_PLACE_ID,'
      '   :NATIVE_PLACE_ID,'
      '   :CONTACT_ADDR,'
      '   :PROVISION_ADDR,'
      '   :RESIDENT_ADDR,'
      '   :CONTACT_PHONE,'
      '   :HAND_PHONE,'
      '   :EMAIL,'
      '   :FAX,'
      '   :WEBSITE,'
      '   :PORTRAIT,'
      '   :IMG_TYPE,'
      '   :IS_CADIDATE,'
      '   :NOTES,'
      '   :EMPLOYEE_ID,'
      '   :DESCENT_FROM,'
      '   :ACCOUNT_ID,'
      '   :ACCOUNT_BANK,'
      '   :ACCOUNT_NAME,'
      '   :ACCOUNT_ID_2,'
      '   :ACCOUNT_BANK_2,'
      '   :ACCOUNT_NAME_2,'
      '   :MASO_THUE_CANHAN,'
      '   :COQUAN_THUE_QUANLY,'
      '   :MATINH_CAP_CMND,'
      '   :VISA_NO,'
      '   :VISA_DATE,'
      '   :VISA_PLACE,'
      '   :VISA_EXPIRED)')
    AfterPost = qryListAfterPost
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      ' , EMPLOYEE_ID'
      ' , FIRST_NAME'
      ' , MIDDLE_NAME'
      ' , LAST_NAME'
      ' , FULL_NAME'
      ' , REGISTERED_NAME'
      ' , ALIAS'
      ' , GENDER'
      ' , BIRTH_DATE'
      ' , MARRIAL_STATUS'
      ' , MARRIAL_STATUS_NAME '
      ' , ID_CARD_NO'
      ' , ISSUED_DATE'
      ' , ISSUED_PLACE'
      ' , PASSPORT'
      ' , PASSPORT_DATE'
      ' , PASSPORT_PLACE'
      ' , PASSPORT_EXPIRED'
      ' , RACE_NO'
      ' , RACE_NAME'
      ' , CURRENCY_NO'
      ' , CURRENCY_NAME'
      ' , NATIONAL_NO'
      ' , NATIONAL_NAME'
      ' , RELIGION_NO'
      ' , RELIGION_NAME'
      ' , BIRTH_PLACE_ID'
      ' , BIRTH_PLACE_NAME'
      ' , NATIVE_PLACE_ID'
      ' , NATIVE_PLACE_NAME'
      ' , CONTACT_ADDR'
      ' , PROVISION_ADDR'
      ' , RESIDENT_ADDR'
      ' , CONTACT_PHONE'
      ' , HAND_PHONE'
      ' , EMAIL'
      ' , FAX'
      ' , WEBSITE'
      ' , PORTRAIT'
      ' , IMG_TYPE'
      ' , IS_CADIDATE'
      ' , NOTES'
      ' , DESCENT_FROM'
      ' , DESCENT_NAME'
      ' , ACCOUNT_ID'
      ' , ACCOUNT_BANK'
      ' , ACCOUNT_NAME'
      ' , ACCOUNT_ID_2'
      ' , ACCOUNT_BANK_2'
      ' , ACCOUNT_NAME_2'
      ' , MASO_THUE_CANHAN'
      ' , COQUAN_THUE_QUANLY'
      ' , MATINH_CAP_CMND'
      ' , VISA_NO'
      ' , VISA_DATE'
      ' , VISA_PLACE'
      ' , VISA_EXPIRED'
      'FROM HR_MASK_EMPLOYEE(:USER_NAME) ')
    Left = 88
    Top = 128
    object qryListEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryListEMPLOYEE_ID: TWideStringField
      FieldName = 'EMPLOYEE_ID'
      Size = 30
    end
    object qryListFIRST_NAME: TWideStringField
      FieldName = 'FIRST_NAME'
      Required = True
      OnChange = qryListFIRST_NAMEChange
      Size = 30
    end
    object qryListMIDDLE_NAME: TWideStringField
      FieldName = 'MIDDLE_NAME'
      OnChange = qryListFIRST_NAMEChange
      Size = 60
    end
    object qryListLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      Required = True
      OnChange = qryListFIRST_NAMEChange
      Size = 30
    end
    object qryListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      OnChange = qryListFULL_NAMEChange
      Size = 96
    end
    object qryListREGISTERED_NAME: TWideStringField
      FieldName = 'REGISTERED_NAME'
      Size = 189
    end
    object qryListALIAS: TWideStringField
      FieldName = 'ALIAS'
      Size = 189
    end
    object qryListGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryListBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryListMARRIAL_STATUS: TWideStringField
      FieldName = 'MARRIAL_STATUS'
      Size = 30
    end
    object qryListMARRIAL_STATUS_NAME: TWideStringField
      FieldName = 'MARRIAL_STATUS_NAME'
      Size = 126
    end
    object qryListID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryListISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryListISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryListPASSPORT: TWideStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object qryListPASSPORT_DATE: TDateField
      FieldName = 'PASSPORT_DATE'
    end
    object qryListPASSPORT_PLACE: TWideStringField
      FieldName = 'PASSPORT_PLACE'
      Size = 126
    end
    object qryListRACE_NO: TWideStringField
      FieldName = 'RACE_NO'
      Size = 30
    end
    object qryListRACE_NAME: TWideStringField
      FieldName = 'RACE_NAME'
      Size = 126
    end
    object qryListCURRENCY_NO: TWideStringField
      FieldName = 'CURRENCY_NO'
      Size = 30
    end
    object qryListCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
    object qryListNATIONAL_NO: TWideStringField
      FieldName = 'NATIONAL_NO'
      Size = 30
    end
    object qryListNATIONAL_NAME: TWideStringField
      FieldName = 'NATIONAL_NAME'
      Size = 126
    end
    object qryListRELIGION_NO: TWideStringField
      FieldName = 'RELIGION_NO'
      Size = 30
    end
    object qryListRELIGION_NAME: TWideStringField
      FieldName = 'RELIGION_NAME'
      Size = 126
    end
    object qryListBIRTH_PLACE_ID: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object qryListBIRTH_PLACE_NAME: TWideStringField
      FieldName = 'BIRTH_PLACE_NAME'
      Size = 126
    end
    object qryListNATIVE_PLACE_ID: TWideStringField
      FieldName = 'NATIVE_PLACE_ID'
      Size = 126
    end
    object qryListNATIVE_PLACE_NAME: TWideStringField
      FieldName = 'NATIVE_PLACE_NAME'
      Size = 126
    end
    object qryListCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 255
    end
    object qryListPROVISION_ADDR: TWideStringField
      FieldName = 'PROVISION_ADDR'
      Size = 255
    end
    object qryListRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryListCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryListHAND_PHONE: TWideStringField
      FieldName = 'HAND_PHONE'
      Size = 30
    end
    object qryListEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qryListFAX: TWideStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qryListWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 30
    end
    object qryListPORTRAIT: TBlobField
      FieldName = 'PORTRAIT'
      Size = 8
    end
    object qryListIMG_TYPE: TWideStringField
      FieldName = 'IMG_TYPE'
      Size = 15
    end
    object qryListIS_CADIDATE: TSmallintField
      FieldName = 'IS_CADIDATE'
    end
    object qryListNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 3072
    end
    object qryListDESCENT_FROM: TWideStringField
      FieldName = 'DESCENT_FROM'
      Size = 30
    end
    object qryListDESCENT_NAME: TWideStringField
      FieldName = 'DESCENT_NAME'
      Size = 126
    end
    object qryListACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 30
    end
    object qryListACCOUNT_BANK: TWideStringField
      FieldName = 'ACCOUNT_BANK'
      Size = 126
    end
    object qryListPASSPORT_EXPIRED: TDateField
      FieldName = 'PASSPORT_EXPIRED'
    end
    object qryListACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryListACCOUNT_ID_2: TWideStringField
      FieldName = 'ACCOUNT_ID_2'
      Size = 30
    end
    object qryListACCOUNT_BANK_2: TWideStringField
      FieldName = 'ACCOUNT_BANK_2'
      Size = 126
    end
    object qryListACCOUNT_NAME_2: TWideStringField
      FieldName = 'ACCOUNT_NAME_2'
      Size = 126
    end
    object qryListMASO_THUE_CANHAN: TWideStringField
      FieldName = 'MASO_THUE_CANHAN'
      Size = 30
    end
    object qryListCOQUAN_THUE_QUANLY: TWideStringField
      FieldName = 'COQUAN_THUE_QUANLY'
      Size = 63
    end
    object qryListMATINH_CAP_CMND: TWideStringField
      FieldName = 'MATINH_CAP_CMND'
      Size = 30
    end
    object qryListVISA_NO: TWideStringField
      FieldName = 'VISA_NO'
      Size = 30
    end
    object qryListVISA_DATE: TDateField
      FieldName = 'VISA_DATE'
    end
    object qryListVISA_PLACE: TWideStringField
      FieldName = 'VISA_PLACE'
      Size = 255
    end
    object qryListVISA_EXPIRED: TDateField
      FieldName = 'VISA_EXPIRED'
    end
  end
  inherited dsList: TDataSource
    Left = 80
    Top = 168
  end
  inherited bmMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 120
    Top = 136
    DockControlHeights = (
      0
      0
      0
      0)
    inherited miInsert: TdxBarButton
      Action = frameToolbar1.acDSInsert
    end
    inherited miDelete: TdxBarButton
      Action = frameToolbar1.acDSDelete
    end
    inherited miSave: TdxBarButton
      Action = frameToolbar1.acDSPost
    end
    inherited miCancel: TdxBarButton
      Action = frameToolbar1.acDSCancel
    end
  end
  inherited pmMain: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = frmListBase.miInsert
        Visible = True
      end
      item
        Item = frmListBase.miDelete
        Visible = True
      end
      item
        BeginGroup = True
        Item = frmListBase.miSave
        Visible = True
      end
      item
        Item = frmListBase.miCancel
        Visible = True
      end>
    Left = 160
    Top = 120
  end
  object ActionList1: TActionList
    Left = 216
    Top = 128
    object acGetData: TAction
      Caption = 'acGetData'
      OnExecute = acGetDataExecute
    end
    object acChangeOption: TAction
      OnExecute = acChangeOptionExecute
    end
  end
end
