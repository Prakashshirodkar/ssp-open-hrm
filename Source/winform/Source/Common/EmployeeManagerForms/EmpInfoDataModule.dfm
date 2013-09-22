object EmpInfoDM: TEmpInfoDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 168
  Top = 150
  Height = 518
  Width = 793
  object dsEmpList: TDataSource
    DataSet = qryEmpList
    Left = 16
    Top = 56
  end
  object qryEmpList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
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
      '   BIRTH_PLACE_ID = :BIRTH_PLACE_NAME,'
      '   NATIVE_PLACE_ID = :NATIVE_PLACE_NAME,'
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
      '   CANHAN_KHONG_CUTRU = :CANHAN_KHONG_CUTRU,'
      '   COQUAN_THUE_QUANLY = :COQUAN_THUE_QUANLY,'
      '   NGAY_KHAIBAO_CUTRU = :NGAY_KHAIBAO_CUTRU,'
      '   MATINH_CAP_CMND = :MATINH_CAP_CMND,'
      '   USERACCID = :USERACCID,'
      '   SUBSYSTEMID = :SUBSYSTEMID,'
      '   VISA_NO = :VISA_NO,'
      '   VISA_DATE = :VISA_DATE,'
      '   VISA_PLACE = :VISA_PLACE,'
      '   VISA_EXPIRED = :VISA_EXPIRED,'
      '   APEC_NO=:APEC_NO,'
      '   APEC_DATE=:APEC_DATE,'
      '   APEC_EXPIRED=:APEC_EXPIRED'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
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
      '   PASSPORT_EXPIRED,'
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
      '   CANHAN_KHONG_CUTRU,'
      '   COQUAN_THUE_QUANLY,'
      '   NGAY_KHAIBAO_CUTRU,'
      '   MATINH_CAP_CMND,'
      '   USERACCID,'
      '   SUBSYSTEMID,'
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
      '   :PASSPORT_EXPIRED,'
      '   :RACE_NO,'
      '   :CURRENCY_NO,'
      '   :NATIONAL_NO,'
      '   :RELIGION_NO,'
      '   :BIRTH_PLACE_NAME,'
      '   :NATIVE_PLACE_NAME,'
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
      '   :CANHAN_KHONG_CUTRU,'
      '   :COQUAN_THUE_QUANLY,'
      '   :NGAY_KHAIBAO_CUTRU,'
      '   :MATINH_CAP_CMND,'
      '   :USERACCID,'
      '   :SUBSYSTEMID,'
      '   :VISA_NO,'
      '   :VISA_DATE,'
      '   :VISA_PLACE,'
      '   :VISA_EXPIRED'
      '   :APEC_NO,'
      '   :APEC_DATE,'
      '   :APEC_EXPIRED)')
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryEmpListAfterPost
    OnNewRecord = qryEmpListNewRecord
    SQL.Strings = (
      '                                      SELECT EMPLOYEE_NO'
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
      ' , CANHAN_KHONG_CUTRU'
      ' , COQUAN_THUE_QUANLY'
      ' , NGAY_KHAIBAO_CUTRU'
      ' , USERACCID'
      ' , SUBSYSTEMID'
      ' , USERACC_NAME'
      ' , MATINH_CAP_CMND'
      ' , TENTINH_CAP_CMND'
      ' , VISA_NO'
      ' , VISA_DATE'
      ' , VISA_PLACE'
      ' , VISA_EXPIRED'
      ' , APEC_NO'
      ' , APEC_DATE'
      ' , APEC_EXPIRED'
      'FROM HR_MASK_EMPLOYEE(:USER_NAME) ')
    FieldOptions = []
    Left = 16
    Top = 8
    object qryEmpListEMPLOYEE_NO: TWideStringField
      Tag = 2
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpListLAST_NAME: TWideStringField
      FieldName = 'LAST_NAME'
      OnChange = qryEmpListLAST_NAMEChange
      Size = 30
    end
    object qryEmpListFIRST_NAME: TWideStringField
      FieldName = 'FIRST_NAME'
      Required = True
      OnChange = qryEmpListFIRST_NAMEChange
      Size = 30
    end
    object qryEmpListMIDDLE_NAME: TWideStringField
      FieldName = 'MIDDLE_NAME'
      OnChange = qryEmpListMIDDLE_NAMEChange
      Size = 30
    end
    object qryEmpListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      OnChange = qryEmpListFULL_NAMEChange
      Size = 92
    end
    object qryEmpListGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryEmpListBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      LookupResultField = 'SYS_CURRENT'
    end
    object qryEmpListMARRIAL_STATUS: TWideStringField
      FieldName = 'MARRIAL_STATUS'
      Size = 30
    end
    object qryEmpListID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryEmpListISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryEmpListISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 255
    end
    object qryEmpListRACE_NO: TWideStringField
      FieldName = 'RACE_NO'
      Size = 30
    end
    object qryEmpListRACE_NAME: TWideStringField
      FieldName = 'RACE_NAME'
      OnChange = qryEmpListRACE_NAMEChange
      Size = 30
    end
    object qryEmpListCURRENCY_NO: TWideStringField
      FieldName = 'CURRENCY_NO'
      Size = 30
    end
    object qryEmpListCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      OnChange = qryEmpListCURRENCY_NAMEChange
      Size = 63
    end
    object qryEmpListNATIONAL_NO: TWideStringField
      FieldName = 'NATIONAL_NO'
      Size = 30
    end
    object qryEmpListNATIONAL_NAME: TWideStringField
      FieldName = 'NATIONAL_NAME'
      OnChange = qryEmpListNATIONAL_NAMEChange
      Size = 126
    end
    object qryEmpListRELIGION_NO: TWideStringField
      FieldName = 'RELIGION_NO'
      Size = 30
    end
    object qryEmpListRELIGION_NAME: TWideStringField
      FieldName = 'RELIGION_NAME'
      OnChange = qryEmpListRELIGION_NAMEChange
      Size = 30
    end
    object qryEmpListCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 255
    end
    object qryEmpListPROVISION_ADDR: TWideStringField
      FieldName = 'PROVISION_ADDR'
      Size = 255
    end
    object qryEmpListRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryEmpListCONTACT_PHONE: TWideStringField
      FieldName = 'CONTACT_PHONE'
      Size = 30
    end
    object qryEmpListHAND_PHONE: TWideStringField
      FieldName = 'HAND_PHONE'
      Size = 30
    end
    object qryEmpListEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object qryEmpListFAX: TWideStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qryEmpListWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 30
    end
    object qryEmpListPORTRAIT: TBlobField
      FieldName = 'PORTRAIT'
      Size = 8
    end
    object qryEmpListIMG_TYPE: TWideStringField
      FieldName = 'IMG_TYPE'
      Size = 15
    end
    object qryEmpListIS_CADIDATE: TSmallintField
      FieldName = 'IS_CADIDATE'
    end
    object qryEmpListNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 3072
    end
    object qryEmpListEMPLOYEE_ID: TWideStringField
      FieldName = 'EMPLOYEE_ID'
      Size = 30
    end
    object qryEmpListDESCENT_FROM: TWideStringField
      FieldName = 'DESCENT_FROM'
      Size = 30
    end
    object qryEmpListDESCENT_NAME: TWideStringField
      FieldName = 'DESCENT_NAME'
      OnChange = qryEmpListDESCENT_NAMEChange
      Size = 126
    end
    object qryEmpListACCOUNT_ID: TWideStringField
      FieldName = 'ACCOUNT_ID'
      Size = 30
    end
    object qryEmpListACCOUNT_BANK: TWideStringField
      FieldName = 'ACCOUNT_BANK'
      Size = 126
    end
    object qryEmpListREGISTERED_NAME: TWideStringField
      FieldName = 'REGISTERED_NAME'
      Size = 189
    end
    object qryEmpListALIAS: TWideStringField
      FieldName = 'ALIAS'
      Size = 189
    end
    object qryEmpListPASSPORT: TWideStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object qryEmpListPASSPORT_DATE: TDateField
      FieldName = 'PASSPORT_DATE'
    end
    object qryEmpListPASSPORT_PLACE: TWideStringField
      FieldName = 'PASSPORT_PLACE'
      Size = 126
    end
    object qryEmpListMARRIAL_STATUS_NAME: TWideStringField
      FieldName = 'MARRIAL_STATUS_NAME'
      OnChange = qryEmpListMARRIAL_STATUS_NAMEChange
      Size = 126
    end
    object qryEmpListBIRTH_PLACE_ID: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object qryEmpListBIRTH_PLACE_NAME: TWideStringField
      FieldName = 'BIRTH_PLACE_NAME'
      Size = 126
    end
    object qryEmpListNATIVE_PLACE_ID: TWideStringField
      FieldName = 'NATIVE_PLACE_ID'
      Size = 126
    end
    object qryEmpListNATIVE_PLACE_NAME: TWideStringField
      FieldName = 'NATIVE_PLACE_NAME'
      Size = 126
    end
    object qryEmpListMASO_THUE_CANHAN: TWideStringField
      FieldName = 'MASO_THUE_CANHAN'
      Size = 30
    end
    object qryEmpListCANHAN_KHONG_CUTRU: TSmallintField
      FieldName = 'CANHAN_KHONG_CUTRU'
      OnChange = qryEmpListCANHAN_KHONG_CUTRUChange
    end
    object qryEmpListCOQUAN_THUE_QUANLY: TWideStringField
      FieldName = 'COQUAN_THUE_QUANLY'
      Size = 63
    end
    object qryEmpListNGAY_KHAIBAO_CUTRU: TDateField
      FieldName = 'NGAY_KHAIBAO_CUTRU'
    end
    object qryEmpListUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Size = 30
    end
    object qryEmpListSUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
    end
    object qryEmpListUSERACC_NAME: TWideStringField
      FieldName = 'USERACC_NAME'
      OnChange = qryEmpListUSERACC_NAMEChange
      Size = 126
    end
    object qryEmpListMATINH_CAP_CMND: TWideStringField
      FieldName = 'MATINH_CAP_CMND'
      Size = 30
    end
    object qryEmpListTENTINH_CAP_CMND: TWideStringField
      FieldName = 'TENTINH_CAP_CMND'
      Size = 126
    end
    object qryEmpListPASSPORT_EXPIRED: TDateField
      FieldName = 'PASSPORT_EXPIRED'
    end
    object qryEmpListVISA_NO: TWideStringField
      FieldName = 'VISA_NO'
      Size = 30
    end
    object qryEmpListVISA_DATE: TDateField
      FieldName = 'VISA_DATE'
    end
    object qryEmpListVISA_PLACE: TWideStringField
      FieldName = 'VISA_PLACE'
      Size = 255
    end
    object qryEmpListVISA_EXPIRED: TDateField
      FieldName = 'VISA_EXPIRED'
    end
    object qryEmpListACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryEmpListACCOUNT_ID_2: TWideStringField
      FieldName = 'ACCOUNT_ID_2'
      Size = 30
    end
    object qryEmpListACCOUNT_BANK_2: TWideStringField
      FieldName = 'ACCOUNT_BANK_2'
      Size = 126
    end
    object qryEmpListACCOUNT_NAME_2: TWideStringField
      FieldName = 'ACCOUNT_NAME_2'
      Size = 126
    end
    object qryEmpListAPEC_NO: TWideStringField
      FieldName = 'APEC_NO'
      Size = 30
    end
    object qryEmpListAPEC_DATE: TDateField
      FieldName = 'APEC_DATE'
    end
    object qryEmpListAPEC_EXPIRED: TDateField
      FieldName = 'APEC_EXPIRED'
    end
  end
  object imglGender: TImageList
    Left = 16
    Top = 224
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
  object qryEmpAbility: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_EDU_LEVEL'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO AND'
      '   EDU_LEVEL_NO = :OLD_EDU_LEVEL_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMP_EDU_LEVEL SET'
      '   EDU_FIELD_NO = :EDU_FIELD_NO, /*PK*/'
      '   EDU_LEVEL_NO = :EDU_LEVEL_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   ISSUED_DATE = :ISSUED_DATE,'
      '   ISSUED_PLACE = :ISSUED_PLACE,'
      '   EDU_ARCHIVEMENT = :EDU_ARCHIVEMENT,'
      '   EMP_EDU_NOTE = :EMP_EDU_NOTE,'
      '   DUYET = :DUYET'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO AND'
      '   EDU_LEVEL_NO = :OLD_EDU_LEVEL_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMP_EDU_LEVEL('
      '   EDU_FIELD_NO, /*PK*/'
      '   EDU_LEVEL_NO, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   ISSUED_DATE,'
      '   ISSUED_PLACE,'
      '   EDU_ARCHIVEMENT,'
      '   EMP_EDU_NOTE,'
      '   DUYET)'
      'VALUES ('
      '   :EDU_FIELD_NO,'
      '   :EDU_LEVEL_NO,'
      '   :EMPLOYEE_NO,'
      '   :ISSUED_DATE,'
      '   :ISSUED_PLACE,'
      '   :EDU_ARCHIVEMENT,'
      '   :EMP_EDU_NOTE,'
      '   :DUYET)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryEmpAbilityNewRecord
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT HR_EMP_EDU_LEVEL.EMPLOYEE_NO'
      '     , HR_EMP_EDU_LEVEL.EDU_FIELD_NO'
      '     , HR_EDU_FIELD.EDU_FIELD_NAME'
      '     , HR_EMP_EDU_LEVEL.EDU_LEVEL_NO'
      '     , HR_FIELD_LEVEL.FIELD_LEVEL_NAME '
      '     , HR_EMP_EDU_LEVEL.ISSUED_DATE'
      '     , HR_EMP_EDU_LEVEL.ISSUED_PLACE'
      '     , HR_EMP_EDU_LEVEL.EDU_ARCHIVEMENT'
      '     , HR_EMP_EDU_LEVEL.EMP_EDU_NOTE'
      '     , HR_EMP_EDU_LEVEL.DUYET'
      'FROM HR_EMP_EDU_LEVEL'
      'JOIN HR_FIELD_LEVEL on'
      
        '     HR_EMP_EDU_LEVEL.EDU_FIELD_NO=HR_FIELD_LEVEL.EDU_FIELD_NO a' +
        'nd'
      '     HR_EMP_EDU_LEVEL.EDU_LEVEL_NO=HR_FIELD_LEVEL.FIELD_LEVEL_NO'
      'JOIN HR_EDU_FIELD on '
      '  HR_EMP_EDU_LEVEL.EDU_FIELD_NO=HR_EDU_FIELD.EDU_FIELD_NO'
      ''
      'where HR_EMP_EDU_LEVEL.EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 144
    Top = 8
    object qryEmpAbilityEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpAbilityEDU_FIELD_NO: TWideStringField
      FieldName = 'EDU_FIELD_NO'
      Required = True
      Size = 30
    end
    object qryEmpAbilityEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      Required = True
      OnChange = qryEmpAbilityEDU_FIELD_NAMEChange
      Size = 30
    end
    object qryEmpAbilityEDU_LEVEL_NO: TWideStringField
      FieldName = 'EDU_LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryEmpAbilityFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      Required = True
      OnChange = qryEmpAbilityFIELD_LEVEL_NAMEChange
      Size = 126
    end
    object qryEmpAbilityISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryEmpAbilityISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryEmpAbilityEDU_ARCHIVEMENT: TWideStringField
      FieldName = 'EDU_ARCHIVEMENT'
      Size = 126
    end
    object qryEmpAbilityEMP_EDU_NOTE: TWideStringField
      FieldName = 'EMP_EDU_NOTE'
      Size = 3072
    end
    object qryEmpAbilityDUYET: TSmallintField
      FieldName = 'DUYET'
    end
  end
  object dsEmpAbility: TDataSource
    DataSet = qryEmpAbility
    Left = 144
    Top = 56
  end
  object qryEmpPrivateInfo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'UPDATE HR_EMP_PRIVATE_INFO SET'
      '   NGAY_VAO_DANG = NULL,'
      '   NGAY_VAO_DOAN = NULL,'
      '   CHUC_VU_DANG = NULL,'
      '   CHUC_VU_DOAN = NULL,'
      '   TRINH_DO = NULL,'
      '   CONGVIEC_LAUNHAT = NULL,'
      '   SOTRUONG_CTAC = NULL,'
      '   NAM_TOTNGHIEP = NULL,'
      '   TOTNGHIEP_TAI = NULL,'
      '   NGAY_VAO_CDOAN = NULL,'
      '   CHUC_VU_CDOAN = NULL,'
      '   NGHE_NGHIEP = NULL,'
      '   NGAY_VAO_CONGTY = NULL,'
      '   TRINHDO_VANHOA = NULL,'
      '   CHIEU_CAO = NULL,'
      '   CAN_NANG = NULL,'
      '   DAUVET_DACBIET = NULL,'
      '   ngay_thamgiacm=NULL,'
      '   ngay_chuyendangchinhthuc=NULL,,'
      '   capuycaonhatdaqua=NULL,'
      '   capuyhiennay=NULL,'
      '   dacdiem_lichsu=NULL,'
      '   suckhoe=NULL,'
      '   lyluan_chinhtri=NULL,'
      '   ngay_nhapngu=NULL,'
      '   ngay_xuatngu=null,'
      '   quanham=NULL,'
      '   trocap_xuatngu=null'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO'
      '')
    EditSQL.Strings = (
      'UPDATE HR_EMP_PRIVATE_INFO SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   NGAY_VAO_DANG = :NGAY_VAO_DANG,'
      '   NGAY_VAO_DOAN = :NGAY_VAO_DOAN,'
      '   CHUC_VU_DANG = :CHUC_VU_DANG,'
      '   CHUC_VU_DOAN = :CHUC_VU_DOAN,'
      '   TRINH_DO = :TRINH_DO,'
      '   CONGVIEC_LAUNHAT = :CONGVIEC_LAUNHAT,'
      '   SOTRUONG_CTAC = :SOTRUONG_CTAC,'
      '   NAM_TOTNGHIEP = :NAM_TOTNGHIEP,'
      '   TOTNGHIEP_TAI = :TOTNGHIEP_TAI,'
      '   NGAY_VAO_CDOAN = :NGAY_VAO_CDOAN,'
      '   CHUC_VU_CDOAN = :CHUC_VU_CDOAN,'
      '   NGHE_NGHIEP = :NGHE_NGHIEP,'
      '   NGAY_VAO_CONGTY = :NGAY_VAO_CONGTY,'
      '   TRINHDO_VANHOA = :TRINHDO_VANHOA,'
      '   CHIEU_CAO = :CHIEU_CAO,'
      '   CAN_NANG = :CAN_NANG,'
      '   DAUVET_DACBIET = :DAUVET_DACBIET,'
      '   ngay_thamgiacm=:ngay_thamgiacm,'
      '   ngay_chuyendangchinhthuc=:ngay_chuyendangchinhthuc,'
      '   capuycaonhatdaqua=:capuycaonhatdaqua,'
      '   capuyhiennay=:capuyhiennay,'
      '   dacdiem_lichsu=:dacdiem_lichsu,'
      '   suckhoe=:suckhoe,'
      '   lyluan_chinhtri=:lyluan_chinhtri,'
      '   ngay_nhapngu=:ngay_nhapngu,'
      '   ngay_xuatngu=:ngay_xuatngu,'
      '   quanham=:quanham,'
      '   trocap_xuatngu=:trocap_xuatngu'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      '')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , NGAY_VAO_DANG'
      '     , NGAY_VAO_DOAN'
      '     , CHUC_VU_DANG'
      '     , CHUC_VU_DOAN'
      '     , TRINH_DO'
      '     , HR_EDU_LEVEL.EDU_LEVEL_NAME TEN_TRINH_DO'
      '     , CONGVIEC_LAUNHAT'
      '     , SOTRUONG_CTAC'
      '     , NAM_TOTNGHIEP'
      '     , TOTNGHIEP_TAI'
      '     , NGAY_VAO_CDOAN'
      '     , CHUC_VU_CDOAN'
      '     , NGHE_NGHIEP'
      '     , CAREER_NAME TEN_NGHE_NGHIEP'
      '     , NGAY_VAO_CONGTY'
      '     , HR_CHUCVU_DANG.TEN_CHUCVU TEN_CHUCVU_DANG'
      '     , HR_CHUCVU_DOAN.TEN_CHUCVU TEN_CHUCVU_DOAN'
      '     , HR_CHUCVU_CDOAN.TEN_CHUCVU TEN_CHUCVU_CDOAN'
      '     , TRINHDO_VANHOA'
      '     , ACADEMIC_NAME'
      '     , CHIEU_CAO'
      '     , CAN_NANG'
      '     , DAUVET_DACBIET'
      '     , NGAY_THAMGIACM'
      '     , NGAY_CHUYENDANGCHINHTHUC'
      '     , CAPUYCAONHATDAQUA'
      '     , CAPUYHIENNAY'
      '     , DACDIEM_LICHSU'
      '     , SUCKHOE'
      '     , LYLUAN_CHINHTRI'
      '     , NGAY_NHAPNGU'
      '     , NGAY_XUATNGU'
      '     , QUANHAM'
      '     , TROCAP_XUATNGU'
      'FROM HR_EMP_PRIVATE_INFO'
      'LEFT JOIN HR_EDU_LEVEL on TRINH_DO=EDU_LEVEL_NO'
      'LEFT JOIN HR_CAREER on NGHE_NGHIEP=CAREER_NO'
      
        'LEFT JOIN HR_CHUCVU_DANG on CHUC_VU_DANG=HR_CHUCVU_DANG.MA_CHUCV' +
        'U'
      
        'LEFT JOIN HR_CHUCVU_DOAN on CHUC_VU_DOAN=HR_CHUCVU_DOAN.MA_CHUCV' +
        'U'
      
        'LEFT JOIN HR_CHUCVU_CDOAN on CHUC_VU_CDOAN=HR_CHUCVU_CDOAN.MA_CH' +
        'UCVU'
      'left JOIN HR_ACADEMIC on ACADEMIC_NO=TRINHDO_VANHOA'
      'WHERE EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 86
    Top = 8
    object qryEmpPrivateInfoEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 90
    end
    object qryEmpPrivateInfoNGAY_VAO_DANG: TDateField
      FieldName = 'NGAY_VAO_DANG'
    end
    object qryEmpPrivateInfoNGAY_VAO_DOAN: TDateField
      FieldName = 'NGAY_VAO_DOAN'
    end
    object qryEmpPrivateInfoCHUC_VU_DANG: TWideStringField
      FieldName = 'CHUC_VU_DANG'
      Size = 63
    end
    object qryEmpPrivateInfoCHUC_VU_DOAN: TWideStringField
      FieldName = 'CHUC_VU_DOAN'
      Size = 63
    end
    object qryEmpPrivateInfoTRINH_DO: TWideStringField
      FieldName = 'TRINH_DO'
      Size = 30
    end
    object qryEmpPrivateInfoCONGVIEC_LAUNHAT: TWideStringField
      FieldName = 'CONGVIEC_LAUNHAT'
      Size = 255
    end
    object qryEmpPrivateInfoSOTRUONG_CTAC: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object qryEmpPrivateInfoNAM_TOTNGHIEP: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryEmpPrivateInfoTOTNGHIEP_TAI: TWideStringField
      FieldName = 'TOTNGHIEP_TAI'
      Size = 126
    end
    object qryEmpPrivateInfoTEN_TRINH_DO: TWideStringField
      FieldName = 'TEN_TRINH_DO'
      OnChange = qryEmpPrivateInfoTEN_TRINH_DOChange
      Size = 126
    end
    object qryEmpPrivateInfoNGAY_VAO_CDOAN: TDateField
      FieldName = 'NGAY_VAO_CDOAN'
    end
    object qryEmpPrivateInfoCHUC_VU_CDOAN: TWideStringField
      FieldName = 'CHUC_VU_CDOAN'
      Size = 63
    end
    object qryEmpPrivateInfoNGHE_NGHIEP: TWideStringField
      FieldName = 'NGHE_NGHIEP'
      Size = 30
    end
    object qryEmpPrivateInfoTEN_NGHE_NGHIEP: TWideStringField
      FieldName = 'TEN_NGHE_NGHIEP'
      OnChange = qryEmpPrivateInfoTEN_NGHE_NGHIEPChange
      Size = 126
    end
    object qryEmpPrivateInfoNGAY_VAO_CONGTY: TDateField
      FieldName = 'NGAY_VAO_CONGTY'
    end
    object qryEmpPrivateInfoTEN_CHUCVU_DANG: TWideStringField
      FieldName = 'TEN_CHUCVU_DANG'
      Size = 126
    end
    object qryEmpPrivateInfoTEN_CHUCVU_DOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_DOAN'
      Size = 126
    end
    object qryEmpPrivateInfoTEN_CHUCVU_CDOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_CDOAN'
      Size = 126
    end
    object qryEmpPrivateInfoTRINHDO_VANHOA: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 30
    end
    object qryEmpPrivateInfoACADEMIC_NAME: TWideStringField
      FieldName = 'ACADEMIC_NAME'
      OnChange = qryEmpPrivateInfoACADEMIC_NAMEChange
      Size = 126
    end
    object qryEmpPrivateInfoCHIEU_CAO: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object qryEmpPrivateInfoCAN_NANG: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object qryEmpPrivateInfoDAUVET_DACBIET: TWideStringField
      FieldName = 'DAUVET_DACBIET'
      Size = 3072
    end
    object qryEmpPrivateInfoNGAY_THAMGIACM: TDateField
      FieldName = 'NGAY_THAMGIACM'
    end
    object qryEmpPrivateInfoNGAY_CHUYENDANGCHINHTHUC: TDateField
      FieldName = 'NGAY_CHUYENDANGCHINHTHUC'
    end
    object qryEmpPrivateInfoCAPUYCAONHATDAQUA: TWideStringField
      FieldName = 'CAPUYCAONHATDAQUA'
      Size = 300
    end
    object qryEmpPrivateInfoCAPUYHIENNAY: TWideStringField
      FieldName = 'CAPUYHIENNAY'
      Size = 300
    end
    object qryEmpPrivateInfoDACDIEM_LICHSU: TWideStringField
      FieldName = 'DACDIEM_LICHSU'
      Size = 300
    end
    object qryEmpPrivateInfoSUCKHOE: TWideStringField
      FieldName = 'SUCKHOE'
      Size = 300
    end
    object qryEmpPrivateInfoLYLUAN_CHINHTRI: TWideStringField
      FieldName = 'LYLUAN_CHINHTRI'
      Size = 300
    end
    object qryEmpPrivateInfoNGAY_NHAPNGU: TDateField
      FieldName = 'NGAY_NHAPNGU'
    end
    object qryEmpPrivateInfoNGAY_XUATNGU: TDateField
      FieldName = 'NGAY_XUATNGU'
    end
    object qryEmpPrivateInfoQUANHAM: TWideStringField
      FieldName = 'QUANHAM'
      Size = 300
    end
    object qryEmpPrivateInfoTROCAP_XUATNGU: TIBOFloatField
      FieldName = 'TROCAP_XUATNGU'
    end
  end
  object dsEmpPrivateInfo: TDataSource
    DataSet = qryEmpPrivateInfo
    Left = 86
    Top = 56
  end
  object qryEmpWorkChange: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT'
      '  DOC_NO,'
      '  DOC_NAME,'
      '  DOC_TYPE,'
      '  POSITION_NO,'
      '  DEPT_NAME,'
      '  TITLE_NAME,'
      '  ASSIGNED_DATE,'
      '  IS_MAIN_POSITION,'
      '  IS_DISMISSED,'
      '  DISMISSED_DATE'
      'FROM HR_WORK_POSITION_REPORT(:EMPLOYEE_NO)')
    FieldOptions = []
    Left = 216
    Top = 8
    object qryEmpWorkChangeDOC_NO: TWideStringField
      FieldName = 'DOC_NO'
      Size = 30
    end
    object qryEmpWorkChangeDOC_NAME: TWideStringField
      FieldName = 'DOC_NAME'
      Size = 126
    end
    object qryEmpWorkChangeDOC_TYPE: TIntegerField
      FieldName = 'DOC_TYPE'
    end
    object qryEmpWorkChangePOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryEmpWorkChangeDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryEmpWorkChangeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryEmpWorkChangeASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object qryEmpWorkChangeIS_MAIN_POSITION: TIntegerField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryEmpWorkChangeIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryEmpWorkChangeDISMISSED_DATE: TDateField
      FieldName = 'DISMISSED_DATE'
    end
  end
  object dsEmpWorkChange: TDataSource
    DataSet = qryEmpWorkChange
    Left = 216
    Top = 56
  end
  object qryEmpWorkHistory: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORK_HISTORY'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   FROM_DATE = :OLD_FROM_DATE AND'
      '   TO_DATE = :OLD_TO_DATE')
    EditSQL.Strings = (
      'UPDATE HR_WORK_HISTORY SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   FROM_DATE = :FROM_DATE, /*PK*/'
      '   TO_DATE = :TO_DATE, /*PK*/'
      '   WORK_JOB = :WORK_JOB,'
      '   WORK_PLACE = :WORK_PLACE,'
      '   CONTACT_PERSON = :CONTACT_PERSON,'
      '   PLACE_ADDR = :PLACE_ADDR,'
      '   PLACE_PHONE = :PLACE_PHONE,'
      '   NOTE = :NOTE,'
      '   WORK_FIELD = :WORK_FIELD'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   FROM_DATE = :OLD_FROM_DATE AND'
      '   TO_DATE = :OLD_TO_DATE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORK_HISTORY('
      '   EMPLOYEE_NO, /*PK*/'
      '   FROM_DATE, /*PK*/'
      '   TO_DATE, /*PK*/'
      '   WORK_JOB,'
      '   WORK_PLACE,'
      '   CONTACT_PERSON,'
      '   PLACE_ADDR,'
      '   PLACE_PHONE,'
      '   NOTE,'
      '   WORK_FIELD)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :FROM_DATE,'
      '   :TO_DATE,'
      '   :WORK_JOB,'
      '   :WORK_PLACE,'
      '   :CONTACT_PERSON,'
      '   :PLACE_ADDR,'
      '   :PLACE_PHONE,'
      '   :NOTE,'
      '   :WORK_FIELD)')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryEmpWorkHistoryBeforePost
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , FROM_DATE||TO_DATE KEY_ID'
      '     , FROM_DATE'
      '     , TO_DATE'
      '     , WORK_JOB'
      '     , WORK_PLACE'
      '     , CONTACT_PERSON'
      '     , PLACE_ADDR'
      '     , PLACE_PHONE'
      '     , NOTE'
      '     , WORK_FIELD'
      'FROM HR_WORK_HISTORY'
      'where EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 288
    Top = 8
    object qryEmpWorkHistoryEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkHistoryFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
      Required = True
    end
    object qryEmpWorkHistoryTO_DATE: TDateField
      FieldName = 'TO_DATE'
      Required = True
    end
    object qryEmpWorkHistoryWORK_JOB: TWideStringField
      FieldName = 'WORK_JOB'
      Required = True
      Size = 126
    end
    object qryEmpWorkHistoryWORK_PLACE: TWideStringField
      FieldName = 'WORK_PLACE'
      Required = True
      Size = 126
    end
    object qryEmpWorkHistoryCONTACT_PERSON: TWideStringField
      FieldName = 'CONTACT_PERSON'
      Size = 63
    end
    object qryEmpWorkHistoryPLACE_ADDR: TWideStringField
      FieldName = 'PLACE_ADDR'
      Size = 126
    end
    object qryEmpWorkHistoryPLACE_PHONE: TWideStringField
      FieldName = 'PLACE_PHONE'
      Size = 30
    end
    object qryEmpWorkHistoryNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryEmpWorkHistoryWORK_FIELD: TWideStringField
      FieldName = 'WORK_FIELD'
      Size = 126
    end
    object qryEmpWorkHistoryKEY_ID: TWideStringField
      FieldName = 'KEY_ID'
      ReadOnly = True
      Required = True
    end
  end
  object dsEmpWorkHistory: TDataSource
    DataSet = qryEmpWorkHistory
    Left = 288
    Top = 56
  end
  object qryEmpContract: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT CONTRACT_NO'
      '     , HR_CONTRACT.CONTRACT_TYPE_NO'
      '     , CONTRACT_TYPE_NAME'
      '     , CONTRACT_NAME'
      '     , REPRESENTATIVE'
      '     , STARTED_DATE'
      '     , EXPIRED_DATE'
      '     , CONTRACT_NOTE'
      'FROM HR_CONTRACT'
      'JOIN HR_CONTRACT_TYPE on '
      
        '   HR_CONTRACT.CONTRACT_TYPE_NO=HR_CONTRACT_TYPE.CONTRACT_TYPE_N' +
        'O'
      'where EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 16
    Top = 120
    object qryEmpContractCONTRACT_NO: TWideStringField
      FieldName = 'CONTRACT_NO'
      Required = True
      Size = 30
    end
    object qryEmpContractCONTRACT_TYPE_NO: TWideStringField
      FieldName = 'CONTRACT_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryEmpContractCONTRACT_TYPE_NAME: TWideStringField
      FieldName = 'CONTRACT_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryEmpContractCONTRACT_NAME: TWideStringField
      FieldName = 'CONTRACT_NAME'
      Required = True
      Size = 126
    end
    object qryEmpContractREPRESENTATIVE: TWideStringField
      FieldName = 'REPRESENTATIVE'
      Size = 63
    end
    object qryEmpContractSTARTED_DATE: TDateField
      FieldName = 'STARTED_DATE'
      Required = True
    end
    object qryEmpContractEXPIRED_DATE: TDateField
      FieldName = 'EXPIRED_DATE'
    end
    object qryEmpContractCONTRACT_NOTE: TWideStringField
      FieldName = 'CONTRACT_NOTE'
      Size = 3072
    end
  end
  object dsEmpContract: TDataSource
    DataSet = qryEmpContract
    Left = 16
    Top = 176
  end
  object qryEmpDocument: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_DOCUMENT'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMP_DOCUMENT SET'
      '   DOC_ID = :DOC_ID, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   DOC_NAME = :DOC_NAME,'
      '   DOC_CONTENT = :DOC_CONTENT,'
      '   DOC_FILENAME = :DOC_FILENAME,'
      '   DOC_NOTE = :DOC_NOTE'
      'WHERE'
      '   DOC_ID = :OLD_DOC_ID AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMP_DOCUMENT('
      '   DOC_ID, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   DOC_NAME,'
      '   DOC_CONTENT,'
      '   DOC_FILENAME,'
      '   DOC_NOTE)'
      'VALUES ('
      '   :DOC_ID,'
      '   :EMPLOYEE_NO,'
      '   :DOC_NAME,'
      '   :DOC_CONTENT,'
      '   :DOC_FILENAME,'
      '   :DOC_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , DOC_ID'
      '     , DOC_NAME'
      '     , DOC_CONTENT'
      '     , DOC_FILENAME'
      '     , DOC_NOTE'
      'FROM HR_EMP_DOCUMENT'
      'where EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 86
    Top = 120
    object qryEmpDocumentEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpDocumentDOC_ID: TWideStringField
      FieldName = 'DOC_ID'
      Required = True
      Size = 30
    end
    object qryEmpDocumentDOC_NAME: TWideStringField
      FieldName = 'DOC_NAME'
      Required = True
      Size = 126
    end
    object qryEmpDocumentDOC_CONTENT: TBlobField
      FieldName = 'DOC_CONTENT'
      Size = 8
    end
    object qryEmpDocumentDOC_FILENAME: TWideStringField
      FieldName = 'DOC_FILENAME'
      Size = 63
    end
    object qryEmpDocumentDOC_NOTE: TWideStringField
      FieldName = 'DOC_NOTE'
      Size = 3072
    end
  end
  object dsEmpDocument: TDataSource
    DataSet = qryEmpDocument
    Left = 86
    Top = 176
  end
  object qryEmpWageStandard: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
        Value = Null
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT WAGE_SCALE'
      '     , CAREER_NAME'
      '     , WAGE_LEVEL'
      '     , WAGE_COEFF'
      '     , APPLY_MONTH'
      '     , APPLY_YEAR'
      '     , APPLY_PERIOD'
      '     , PERIOD_ID'
      '     , CHANGE_NO'
      'FROM HR_WAGE_STANDARD_DETAIL'
      'JOIN HR_CAREER on WAGE_SCALE=CAREER_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO'
      'order by PERIOD_ID')
    FieldOptions = []
    Left = 144
    Top = 120
    object qryEmpWageStandardWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 30
    end
    object qryEmpWageStandardCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Required = True
      Size = 126
    end
    object qryEmpWageStandardWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object qryEmpWageStandardWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
      Required = True
    end
    object qryEmpWageStandardAPPLY_MONTH: TIntegerField
      FieldName = 'APPLY_MONTH'
      Required = True
    end
    object qryEmpWageStandardAPPLY_YEAR: TIntegerField
      FieldName = 'APPLY_YEAR'
      Required = True
    end
    object qryEmpWageStandardAPPLY_PERIOD: TIntegerField
      FieldName = 'APPLY_PERIOD'
      Required = True
    end
    object qryEmpWageStandardPERIOD_ID: TIntegerField
      FieldName = 'PERIOD_ID'
    end
    object qryEmpWageStandardCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
  end
  object dsEmpWageStandard: TDataSource
    DataSet = qryEmpWageStandard
    Left = 144
    Top = 176
  end
  object qryEmpReward: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'employee_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'select'
      '  hr_decision_reward.decision_no,'
      '  hr_decision.decision_title,'
      '  hr_decision.decision_date,'
      '  hr_decision_level.level_name,'
      '  hr_reward_form.reward_name,'
      '  hr_reward_list.reward_list_name'
      'from hr_decision_reward'
      'join hr_decision'
      '  on hr_decision_reward.decision_no=hr_decision.decision_no'
      'left join hr_decision_level'
      
        '  on hr_decision_reward.decision_level=hr_decision_level.level_n' +
        'o'
      'left join hr_reward_form'
      '  on hr_decision_reward.reward_form_no=hr_reward_form.reward_no'
      'left join hr_reward_list'
      
        '  on hr_decision_reward.reward_list_no=hr_reward_list.reward_lis' +
        't_no'
      'where  hr_decision_reward.emp_no=:employee_no'
      ' ')
    FieldOptions = []
    Left = 216
    Top = 120
    object qryEmpRewardDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryEmpRewardDECISION_TITLE: TWideStringField
      FieldName = 'DECISION_TITLE'
      Required = True
      Size = 126
    end
    object qryEmpRewardDECISION_DATE: TDateField
      FieldName = 'DECISION_DATE'
      Required = True
    end
    object qryEmpRewardLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Size = 126
    end
    object qryEmpRewardREWARD_NAME: TWideStringField
      FieldName = 'REWARD_NAME'
      Size = 126
    end
    object qryEmpRewardREWARD_LIST_NAME: TWideStringField
      FieldName = 'REWARD_LIST_NAME'
      Size = 126
    end
  end
  object dsEmpReward: TDataSource
    DataSet = qryEmpReward
    Left = 216
    Top = 176
  end
  object qryEmpDiscipline: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'employee_no'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'select'
      '  hr_decision_disc.decision_no,'
      '  hr_decision.decision_title,'
      '  hr_decision.decision_date,'
      '  hr_decision_level.level_name,'
      '  hr_discipline_form.disc_name,'
      '  hr_discipline_list.disc_list_name'
      'from hr_decision_disc'
      'join hr_decision'
      '  on hr_decision_disc.decision_no=hr_decision.decision_no'
      'left join hr_decision_level'
      '  on hr_decision_disc.decision_level=hr_decision_level.level_no'
      'left join hr_discipline_form'
      '  on hr_decision_disc.disc_form_no=hr_discipline_form.disc_no'
      'left join hr_discipline_list'
      
        '  on hr_decision_disc.disc_list_no=hr_discipline_list.disc_list_' +
        'no'
      'where  hr_decision_disc.emp_no=:employee_no'
      ' ')
    FieldOptions = []
    Left = 423
    Top = 8
    object qryEmpDisciplineDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryEmpDisciplineDECISION_TITLE: TWideStringField
      FieldName = 'DECISION_TITLE'
      Required = True
      Size = 126
    end
    object qryEmpDisciplineDECISION_DATE: TDateField
      FieldName = 'DECISION_DATE'
      Required = True
    end
    object qryEmpDisciplineLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Size = 126
    end
    object qryEmpDisciplineDISC_NAME: TWideStringField
      FieldName = 'DISC_NAME'
      Size = 126
    end
    object qryEmpDisciplineDISC_LIST_NAME: TWideStringField
      FieldName = 'DISC_LIST_NAME'
      Size = 126
    end
  end
  object dsEmpDiscipline: TDataSource
    DataSet = qryEmpDiscipline
    Left = 423
    Top = 56
  end
  object dsBiography: TDataSource
    DataSet = qryBiography
    Left = 355
    Top = 176
  end
  object qryBiography: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_BIOGRAPHY'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   KEY_INDEX = :OLD_KEY_INDEX')
    EditSQL.Strings = (
      'UPDATE HR_EMP_BIOGRAPHY SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   KEY_INDEX = :KEY_INDEX, /*PK*/'
      '   FROM_TIME = :FROM_TIME,'
      '   EMP_EVENT = :EMP_EVENT'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   KEY_INDEX = :OLD_KEY_INDEX')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMP_BIOGRAPHY('
      '   EMPLOYEE_NO, /*PK*/'
      '   KEY_INDEX, /*PK*/'
      '   FROM_TIME,'
      '   EMP_EVENT)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :KEY_INDEX,'
      '   :FROM_TIME,'
      '   :EMP_EVENT)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryBiographyNewRecord
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , KEY_INDEX'
      '     , FROM_TIME'
      '     , EMP_EVENT'
      'FROM HR_EMP_BIOGRAPHY'
      'where EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 355
    Top = 120
    object qryBiographyEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryBiographyKEY_INDEX: TIntegerField
      FieldName = 'KEY_INDEX'
      Required = True
    end
    object qryBiographyFROM_TIME: TWideStringField
      FieldName = 'FROM_TIME'
      Required = True
      Size = 126
    end
    object qryBiographyEMP_EVENT: TWideStringField
      FieldName = 'EMP_EVENT'
      Size = 3072
    end
  end
  object qryRelationship: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_RELATIONSHIP'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   KEY_INDEX = :OLD_KEY_INDEX')
    EditSQL.Strings = (
      'UPDATE HR_EMP_RELATIONSHIP SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   KEY_INDEX = :KEY_INDEX, /*PK*/'
      '   PERSON_NAME = :PERSON_NAME,'
      '   RELATIONSHIP = :RELATIONSHIP,'
      '   NOTE = :NOTE,'
      '   BIRTH_YEAR = :BIRTH_YEAR,'
      '   DUOC_GIAMTRU_GIACANH = :DUOC_GIAMTRU_GIACANH,'
      '   GIAMTRU_TUTHANG = :GIAMTRU_TUTHANG,'
      '   GIAMTRU_TUNAM = :GIAMTRU_TUNAM,'
      '   GIAMTRU_DENTHANG = :GIAMTRU_DENTHANG,'
      '   GIAMTRU_DENNAM = :GIAMTRU_DENNAM,'
      '   MASO_THUE_CANHAN = :MASO_THUE_CANHAN,'
      '   SO_CMND = :SO_CMND,'
      '   SO_HOCHIEU = :SO_HOCHIEU,'
      '   BIRTH_DATE = :BIRTH_DATE'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   KEY_INDEX = :OLD_KEY_INDEX')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMP_RELATIONSHIP('
      '   EMPLOYEE_NO, /*PK*/'
      '   KEY_INDEX, /*PK*/'
      '   PERSON_NAME,'
      '   RELATIONSHIP,'
      '   NOTE,'
      '   BIRTH_YEAR,'
      '   DUOC_GIAMTRU_GIACANH,'
      '   GIAMTRU_TUTHANG,'
      '   GIAMTRU_TUNAM,'
      '   GIAMTRU_DENTHANG,'
      '   GIAMTRU_DENNAM,'
      '   MASO_THUE_CANHAN,'
      '   SO_CMND,'
      '   SO_HOCHIEU,'
      '   BIRTH_DATE)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :KEY_INDEX,'
      '   :PERSON_NAME,'
      '   :RELATIONSHIP,'
      '   :NOTE,'
      '   :BIRTH_YEAR,'
      '   :DUOC_GIAMTRU_GIACANH,'
      '   :GIAMTRU_TUTHANG,'
      '   :GIAMTRU_TUNAM,'
      '   :GIAMTRU_DENTHANG,'
      '   :GIAMTRU_DENNAM,'
      '   :MASO_THUE_CANHAN,'
      '   :SO_CMND,'
      '   :SO_HOCHIEU,'
      '   :BIRTH_DATE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryRelationshipNewRecord
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT EMPLOYEE_NO'
      '     , KEY_INDEX'
      '     , PERSON_NAME'
      '     , RELATIONSHIP'
      '     , RELATIONSHIP_NAME'
      '     , NOTE'
      '     , BIRTH_YEAR'
      '     , DUOC_GIAMTRU_GIACANH'
      '     , GIAMTRU_TUTHANG'
      '     , GIAMTRU_TUNAM'
      '     , GIAMTRU_DENTHANG'
      '     , GIAMTRU_DENNAM'
      '     , MASO_THUE_CANHAN'
      '     , SO_CMND'
      '     , SO_HOCHIEU'
      '     , BIRTH_DATE'
      'FROM HR_EMP_RELATIONSHIP'
      'left JOIN HR_RELATIONSHIP on RELATIONSHIP=RELATIONSHIP_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 423
    Top = 120
    object qryRelationshipEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryRelationshipKEY_INDEX: TIntegerField
      FieldName = 'KEY_INDEX'
      Required = True
    end
    object qryRelationshipPERSON_NAME: TWideStringField
      FieldName = 'PERSON_NAME'
      Required = True
      Size = 126
    end
    object qryRelationshipRELATIONSHIP: TWideStringField
      FieldName = 'RELATIONSHIP'
      Size = 30
    end
    object qryRelationshipRELATIONSHIP_NAME: TWideStringField
      FieldName = 'RELATIONSHIP_NAME'
      OnChange = qryRelationshipRELATIONSHIP_NAMEChange
      Size = 126
    end
    object qryRelationshipBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Required = True
    end
    object qryRelationshipBIRTH_YEAR: TIntegerField
      FieldName = 'BIRTH_YEAR'
    end
    object qryRelationshipSO_CMND: TWideStringField
      FieldName = 'SO_CMND'
      Size = 30
    end
    object qryRelationshipSO_HOCHIEU: TWideStringField
      FieldName = 'SO_HOCHIEU'
      Size = 63
    end
    object qryRelationshipMASO_THUE_CANHAN: TWideStringField
      FieldName = 'MASO_THUE_CANHAN'
      Size = 30
    end
    object qryRelationshipDUOC_GIAMTRU_GIACANH: TSmallintField
      FieldName = 'DUOC_GIAMTRU_GIACANH'
    end
    object qryRelationshipGIAMTRU_TUTHANG: TSmallintField
      FieldName = 'GIAMTRU_TUTHANG'
    end
    object qryRelationshipGIAMTRU_TUNAM: TIntegerField
      FieldName = 'GIAMTRU_TUNAM'
    end
    object qryRelationshipGIAMTRU_DENTHANG: TSmallintField
      FieldName = 'GIAMTRU_DENTHANG'
    end
    object qryRelationshipGIAMTRU_DENNAM: TIntegerField
      FieldName = 'GIAMTRU_DENNAM'
    end
    object qryRelationshipNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsRelationship: TDataSource
    DataSet = qryRelationship
    Left = 423
    Top = 176
  end
  object qryInternalMission: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT'
      '     HR_MISSION.MISSION_NO '
      '     , TO_PLACE'
      '     , FROM_DATE'
      '     , TO_DATE'
      '     , MISSION_DUTY'
      '     , bussiness_expense'
      '     ,CURRENCY_NAME'
      'FROM HR_MISSION'
      
        'JOIN hr_mission_member on  HR_MISSION.MISSION_NO=hr_mission_memb' +
        'er.mission_no'
      
        'left join hr_currency on hr_mission_member.currency_no=hr_curren' +
        'cy.currency_no'
      'where hr_mission_member.employee_no=:EMPLOYEE_NO and'
      '      hr_mission.mission_type=0'
      'order by FROM_DATE')
    FieldOptions = []
    Left = 584
    Top = 120
    object qryInternalMissionMISSION_NO: TWideStringField
      FieldName = 'MISSION_NO'
      Required = True
      Size = 30
    end
    object qryInternalMissionTO_PLACE: TWideStringField
      FieldName = 'TO_PLACE'
      Required = True
      Size = 255
    end
    object qryInternalMissionFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
      Required = True
    end
    object qryInternalMissionTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
    object qryInternalMissionMISSION_DUTY: TWideStringField
      FieldName = 'MISSION_DUTY'
      Size = 126
    end
    object qryInternalMissionBUSSINESS_EXPENSE: TIBOFloatField
      FieldName = 'BUSSINESS_EXPENSE'
    end
    object qryInternalMissionCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
  end
  object dsInternalMission: TDataSource
    DataSet = qryInternalMission
    Left = 584
    Top = 176
  end
  object qryExternalMission: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT'
      '       HR_MISSION.MISSION_NO'
      '     , NATION_NAME'
      '     , TO_PLACE'
      '     , FROM_DATE'
      '     , TO_DATE'
      '     , MISSION_DUTY'
      '     , bussiness_expense'
      '     ,CURRENCY_NAME'
      'FROM HR_MISSION'
      
        'JOIN hr_mission_member on  HR_MISSION.MISSION_NO=hr_mission_memb' +
        'er.mission_no'
      'left join HR_NATION on TO_NATION=NATION_NO'
      
        'left join hr_currency on hr_mission_member.currency_no=hr_curren' +
        'cy.currency_no'
      'where hr_mission_member.employee_no=:EMPLOYEE_NO and'
      '      hr_mission.mission_type=1'
      'order by FROM_DATE')
    FieldOptions = []
    Left = 672
    Top = 120
    object qryExternalMissionMISSION_NO: TWideStringField
      FieldName = 'MISSION_NO'
      Required = True
      Size = 30
    end
    object qryExternalMissionNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Size = 126
    end
    object qryExternalMissionTO_PLACE: TWideStringField
      FieldName = 'TO_PLACE'
      Required = True
      Size = 255
    end
    object qryExternalMissionFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
      Required = True
    end
    object qryExternalMissionTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
    object qryExternalMissionMISSION_DUTY: TWideStringField
      FieldName = 'MISSION_DUTY'
      Size = 126
    end
    object qryExternalMissionBUSSINESS_EXPENSE: TIBOFloatField
      FieldName = 'BUSSINESS_EXPENSE'
    end
    object qryExternalMissionCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
  end
  object dsExternalMission: TDataSource
    DataSet = qryExternalMission
    Left = 672
    Top = 176
  end
  object qryEstimate: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT HR_ESTIMATE_DETAIL.STAGE_NO'
      '     , HR_ESTIMATE_STAGE.STAGE_NAME'
      '     , HR_ESTIMATE_DETAIL.ITEM_NO'
      '     , HR_ESTIMATE_ITEM.ITEM_NAME'
      '     , HR_ESTIMATE_DETAIL.ESTIMATE_LEVEL'
      '     , hr_sys_est_detail.level_name'
      '     , HR_ESTIMATE_DETAIL.ESTIMATE_MARK'
      '     , TOTAL_MARK'
      '     , AVERAGE_MARK'
      'FROM HR_ESTIMATE_DETAIL '
      'JOIN HR_ESTIMATE_STAGE on '
      '  HR_ESTIMATE_DETAIL.STAGE_NO=HR_ESTIMATE_STAGE.STAGE_NO  '
      'left JOIN HR_ESTIMATE_TOTAL on '
      '  HR_ESTIMATE_DETAIL.STAGE_NO=HR_ESTIMATE_TOTAL.STAGE_NO and'
      
        '  HR_ESTIMATE_DETAIL.EMPLOYEE_NO=HR_ESTIMATE_TOTAL.EMPLOYEE_NO a' +
        'nd'
      
        '  HR_ESTIMATE_DETAIL.POSITION_NO=HR_ESTIMATE_TOTAL.POSITION_NO a' +
        'nd'
      
        '  HR_ESTIMATE_DETAIL.ASSIGNED_DATE=HR_ESTIMATE_TOTAL.ASSIGNED_DA' +
        'TE'
      'LEFT JOIN HR_ESTIMATE_ITEM on '
      '  HR_ESTIMATE_DETAIL.ITEM_NO=HR_ESTIMATE_ITEM.ITEM_NO'
      'LEFT JOIN hr_sys_est_detail on'
      
        '   HR_ESTIMATE_DETAIL.estimate_sys=hr_sys_est_detail.sys_estimat' +
        'e and'
      '   HR_ESTIMATE_DETAIL.estimate_level=hr_sys_est_detail.level_no'
      ''
      'where'
      '   HR_ESTIMATE_DETAIL.EMPLOYEE_NO=:EMPLOYEE_NO'
      'order by 2,4')
    FieldOptions = []
    Left = 584
    Top = 8
    object qryEstimateSTAGE_NO: TWideStringField
      FieldName = 'STAGE_NO'
      Required = True
      Size = 30
    end
    object qryEstimateSTAGE_NAME: TWideStringField
      FieldName = 'STAGE_NAME'
      Required = True
      Size = 126
    end
    object qryEstimateITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryEstimateITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 126
    end
    object qryEstimateESTIMATE_LEVEL: TWideStringField
      FieldName = 'ESTIMATE_LEVEL'
      Required = True
      Size = 30
    end
    object qryEstimateLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Size = 126
    end
    object qryEstimateESTIMATE_MARK: TIBOFloatField
      FieldName = 'ESTIMATE_MARK'
      Required = True
    end
    object qryEstimateTOTAL_MARK: TIBOFloatField
      FieldName = 'TOTAL_MARK'
    end
    object qryEstimateAVERAGE_MARK: TIBOFloatField
      FieldName = 'AVERAGE_MARK'
    end
  end
  object dsEstimate: TDataSource
    DataSet = qryEstimate
    Left = 584
    Top = 56
  end
  object qryEstimateSummary: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT HR_ESTIMATE_SUM_DETAIL.STAGE_NO'
      '     , HR_ESTIMATE_SUM.STAGE_NAME'
      '     , HR_ESTIMATE_SUM_DETAIL.ITEM_NO'
      '     , HR_ESTIMATE_ITEM.ITEM_NAME'
      '     , HR_ESTIMATE_SUM_DETAIL.ESTIMATE_LEVEL'
      '     , hr_sys_est_sum.level_name'
      '     , HR_ESTIMATE_SUM_DETAIL.ESTIMATE_MARK'
      '     , HR_ESTIMATE_SUM_TOTAL.ESTIMATE_MARK ESTIMATE_MARK_TOTAL'
      '     , HR_ESTIMATE_SUM_TOTAL.ESTIMATE_MARK_AVERAGE'
      'FROM HR_ESTIMATE_SUM_DETAIL'
      'JOIN HR_ESTIMATE_SUM on '
      '   HR_ESTIMATE_SUM_DETAIL.STAGE_NO=HR_ESTIMATE_SUM.STAGE_NO'
      'JOIN HR_ESTIMATE_ITEM on '
      '   HR_ESTIMATE_SUM_DETAIL.ITEM_NO=HR_ESTIMATE_ITEM.ITEM_NO'
      'LEFT JOIN hr_sys_est_sum on'
      
        '   HR_ESTIMATE_SUM_DETAIL.estimate_sys=hr_sys_est_sum.sys_estima' +
        'te and'
      '   HR_ESTIMATE_SUM_DETAIL.estimate_level=hr_sys_est_sum.level_no'
      'lEFT JOIN HR_ESTIMATE_SUM_TOTAL ON'
      
        '   HR_ESTIMATE_SUM_TOTAL.STAGE_NO=HR_ESTIMATE_SUM_DETAIL.STAGE_N' +
        'O AND'
      
        '   HR_ESTIMATE_SUM_TOTAL.EMPLOYEE_NO=HR_ESTIMATE_SUM_DETAIL.EMPL' +
        'OYEE_NO AND'
      
        '   HR_ESTIMATE_SUM_TOTAL.POSITION_NO=HR_ESTIMATE_SUM_DETAIL.POSI' +
        'TION_NO AND'
      
        '   HR_ESTIMATE_SUM_TOTAL.ASSIGNED_DATE=HR_ESTIMATE_SUM_DETAIL.AS' +
        'SIGNED_DATE'
      'where HR_ESTIMATE_SUM_DETAIL.EMPLOYEE_NO=:EMPLOYEE_NO'
      'order by 2,4')
    FieldOptions = []
    Left = 504
    Top = 8
    object qryEstimateSummarySTAGE_NO: TWideStringField
      FieldName = 'STAGE_NO'
      Required = True
      Size = 30
    end
    object qryEstimateSummarySTAGE_NAME: TWideStringField
      FieldName = 'STAGE_NAME'
      Required = True
      Size = 126
    end
    object qryEstimateSummaryITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryEstimateSummaryITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 126
    end
    object qryEstimateSummaryESTIMATE_LEVEL: TWideStringField
      FieldName = 'ESTIMATE_LEVEL'
      Required = True
      Size = 30
    end
    object qryEstimateSummaryLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Size = 126
    end
    object qryEstimateSummaryESTIMATE_MARK: TIBOFloatField
      FieldName = 'ESTIMATE_MARK'
      Required = True
    end
    object qryEstimateSummaryESTIMATE_MARK_TOTAL: TIBOFloatField
      FieldName = 'ESTIMATE_MARK_TOTAL'
    end
    object qryEstimateSummaryESTIMATE_MARK_AVERAGE: TIBOFloatField
      FieldName = 'ESTIMATE_MARK_AVERAGE'
    end
  end
  object dsEstimateSummary: TDataSource
    DataSet = qryEstimateSummary
    Left = 504
    Top = 56
  end
  object qryEmpOrg: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_ORG'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   ORG_NO = :OLD_ORG_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMP_ORG SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   ORG_NO = :ORG_NO, /*PK*/'
      '   KEY_INDEX = :KEY_INDEX,'
      '   JOIN_DATE = :JOIN_DATE,'
      '   ORG_DUTY = :ORG_DUTY,'
      '   NOTE = :NOTE'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   ORG_NO = :OLD_ORG_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMP_ORG('
      '   EMPLOYEE_NO, /*PK*/'
      '   ORG_NO, /*PK*/'
      '   KEY_INDEX,'
      '   JOIN_DATE,'
      '   ORG_DUTY,'
      '   NOTE)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :ORG_NO,'
      '   :KEY_INDEX,'
      '   :JOIN_DATE,'
      '   :ORG_DUTY,'
      '   :NOTE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryEmpOrgNewRecord
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT '
      '       KEY_INDEX'
      '     , EMPLOYEE_NO'
      '     , HR_EMP_ORG.ORG_NO'
      '     , ORG_NAME '
      '     , JOIN_DATE'
      '     , ORG_DUTY'
      '     , NOTE'
      'FROM HR_EMP_ORG'
      'JOIN HR_ORGANIZATION on HR_EMP_ORG.ORG_NO=HR_ORGANIZATION.ORG_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 355
    Top = 8
    object qryEmpOrgKEY_INDEX: TIntegerField
      FieldName = 'KEY_INDEX'
      Required = True
    end
    object qryEmpOrgEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpOrgORG_NO: TWideStringField
      FieldName = 'ORG_NO'
      Required = True
      Size = 30
    end
    object qryEmpOrgORG_NAME: TWideStringField
      FieldName = 'ORG_NAME'
      Required = True
      Size = 126
    end
    object qryEmpOrgJOIN_DATE: TDateField
      FieldName = 'JOIN_DATE'
    end
    object qryEmpOrgORG_DUTY: TWideStringField
      FieldName = 'ORG_DUTY'
      Size = 126
    end
    object qryEmpOrgNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsEmpOrg: TDataSource
    DataSet = qryEmpOrg
    Left = 355
    Top = 56
  end
  object ActionList1: TActionList
    Left = 16
    Top = 278
    object acTaomemHesoHD_QD: TAction
      Caption = 'acTaomemHesoHD_QD'
      OnExecute = acTaomemHesoHD_QDExecute
    end
    object acHuymemHesoHD_QD: TAction
      Caption = 'acHuymemHesoHD_QD'
      OnExecute = acHuymemHesoHD_QDExecute
    end
    object acRefreshMemHesoHD_QD: TAction
      Caption = 'acRefreshMemHesoHD_QD'
      OnExecute = acRefreshMemHesoHD_QDExecute
    end
  end
  object memHesoQD_HD: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 86
    Top = 224
    object memHesoQD_HDNGAY_APDUNG: TDateField
      FieldName = 'NGAY_APDUNG'
    end
    object memHesoQD_HDTEN_CONGVAN: TWideStringField
      DisplayWidth = 127
      FieldName = 'TEN_CONGVAN'
      Size = 127
    end
    object memHesoQD_HDMA_CONGVAN: TWideStringField
      FieldName = 'MA_CONGVAN'
      Size = 30
    end
    object memHesoQD_HDLOAI_CONGVAN: TWideStringField
      FieldName = 'LOAI_CONGVAN'
      Size = 30
    end
  end
  object dsHesoQD_HD: TDataSource
    DataSet = memHesoQD_HD
    Left = 86
    Top = 278
  end
  object qryDSHesoHD_QD: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , PARAM_NAME'
      'FROM HR_FORMAL_PARAM')
    FieldOptions = []
    Left = 144
    Top = 224
    object qryDSHesoHD_QDPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryDSHesoHD_QDPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 126
    end
  end
  object qryHesoQD_HD: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'select'
      '  NGAY_APDUNG,'
      '  LOAI_CONGVAN,'
      '  MASO_CONGVAN,'
      '  TIEUDE_CONGVAN,'
      '  MASO_THAMSO,'
      '  GIATRI_THAMSO'
      'FROM HR_EMP_FOFMAL_REPORT(:EMPLOYEE_NO)'
      'order by NGAY_APDUNG,LOAI_CONGVAN,MASO_CONGVAN')
    FieldOptions = []
    Left = 144
    Top = 278
    object qryHesoQD_HDNGAY_APDUNG: TDateField
      FieldName = 'NGAY_APDUNG'
    end
    object qryHesoQD_HDLOAI_CONGVAN: TWideStringField
      FieldName = 'LOAI_CONGVAN'
      Size = 30
    end
    object qryHesoQD_HDMASO_CONGVAN: TWideStringField
      FieldName = 'MASO_CONGVAN'
      Size = 30
    end
    object qryHesoQD_HDTIEUDE_CONGVAN: TWideStringField
      FieldName = 'TIEUDE_CONGVAN'
      Size = 126
    end
    object qryHesoQD_HDMASO_THAMSO: TWideStringField
      FieldName = 'MASO_THAMSO'
      Size = 30
    end
    object qryHesoQD_HDGIATRI_THAMSO: TIBOFloatField
      FieldName = 'GIATRI_THAMSO'
    end
  end
  object qryTraining: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT'
      '       hr_training_class.class_no'
      '     , PLAN_NAME'
      '     , hr_edu_field.edu_field_name'
      '     , hr_field_level.field_level_name'
      '     , hr_training_class.start_date'
      '     , hr_training_class.end_date'
      '     , ALLOWANCE'
      '     , hr_currency.currency_name'
      '     , hr_training_result.result_name'
      '     , NOTE'
      'FROM HR_TRAINEE'
      'left JOIN hr_training_class on'
      '  HR_TRAINEE.plan_no=hr_training_class.plan_no and'
      '  HR_TRAINEE.class_no=hr_training_class.class_no'
      
        'left JOIN hr_field_level ON hr_training_class.edu_field=hr_field' +
        '_level.edu_field_no'
      
        '   and hr_training_class.level_result=hr_field_level.field_level' +
        '_no'
      
        'left JOIN hr_edu_field ON hr_field_level.edu_field_no=hr_edu_fie' +
        'ld.edu_field_no'
      
        'left JOIN HR_TRAINING_PLAN on hr_training_class.plan_no=HR_TRAIN' +
        'ING_PLAN.PLAN_NO'
      'LEFT JOIN HR_CURRENCY on'
      '  HR_TRAINEE.CURRENCY=HR_CURRENCY.CURRENCY_NO'
      'LEFT JOIN HR_TRAINING_RESULT on'
      '  EDU_RESULT=RESULT_NO'
      ''
      'where EMPLOYEE_NO=:EMPLOYEE_NO'
      'order by START_DATE')
    FieldOptions = []
    Left = 288
    Top = 120
    object qryTrainingCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryTrainingPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      Required = True
      Size = 30
    end
    object qryTrainingFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object qryTrainingEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object qryTrainingALLOWANCE: TIBOFloatField
      FieldName = 'ALLOWANCE'
    end
    object qryTrainingCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
    object qryTrainingNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryTrainingRESULT_NAME: TWideStringField
      FieldName = 'RESULT_NAME'
      Size = 126
    end
  end
  object dsTraining: TDataSource
    DataSet = qryTraining
    Left = 288
    Top = 176
  end
  object qryCheck: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'last_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'first_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'middle_name'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select count(employee_no)'
      'from hr_employee'
      'where last_name=:last_name and'
      '      first_name=:first_name and'
      '      middle_name=:middle_name')
    FieldOptions = []
    Left = 16
    Top = 330
    object qryCheckCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
  object qryEmpLanguage: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_LANGUAGE'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   LANGUAGE_NO = :OLD_LANGUAGE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMP_LANGUAGE SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   LANGUAGE_NO = :LANGUAGE_NO, /*PK*/'
      '   LEVEL_NO = :LEVEL_NO, /*PK*/'
      '   ISSUED_DATE = :ISSUED_DATE,'
      '   ISSUED_PLACE = :ISSUED_PLACE,'
      '   ARCHIVEMENT = :ARCHIVEMENT,'
      '   NOTE = :NOTE,'
      '   DUYET = :DUYET'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   LANGUAGE_NO = :OLD_LANGUAGE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMP_LANGUAGE('
      '   EMPLOYEE_NO, /*PK*/'
      '   LANGUAGE_NO, /*PK*/'
      '   LEVEL_NO, /*PK*/'
      '   ISSUED_DATE,'
      '   ISSUED_PLACE,'
      '   ARCHIVEMENT,'
      '   NOTE,'
      '   DUYET)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :LANGUAGE_NO,'
      '   :LEVEL_NO,'
      '   :ISSUED_DATE,'
      '   :ISSUED_PLACE,'
      '   :ARCHIVEMENT,'
      '   :NOTE,'
      '   :DUYET)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryEmpLanguageNewRecord
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT HR_EMP_LANGUAGE.EMPLOYEE_NO'
      '     , HR_EMP_LANGUAGE.LANGUAGE_NO'
      '     , HR_LANGUAGE.LANGUAGE_NAME'
      '     , HR_EMP_LANGUAGE.LEVEL_NO'
      '     , HR_LANGUAGE_LEVEL.LEVEL_NAME '
      '     , HR_EMP_LANGUAGE.ISSUED_DATE'
      '     , HR_EMP_LANGUAGE.ISSUED_PLACE'
      '     , HR_EMP_LANGUAGE.ARCHIVEMENT'
      '     , HR_EMP_LANGUAGE.NOTE'
      '     , HR_EMP_LANGUAGE.DUYET'
      'FROM HR_EMP_LANGUAGE'
      'left JOIN HR_LANGUAGE_LEVEL on'
      
        '     HR_EMP_LANGUAGE.LANGUAGE_NO=HR_LANGUAGE_LEVEL.LANGUAGE_NO a' +
        'nd'
      '     HR_EMP_LANGUAGE.LEVEL_NO=HR_LANGUAGE_LEVEL.LEVEL_NO'
      'left JOIN HR_LANGUAGE on'
      '  HR_EMP_LANGUAGE.LANGUAGE_NO=HR_LANGUAGE.LANGUAGE_NO'
      ''
      'where HR_EMP_LANGUAGE.EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 584
    Top = 224
    object qryEmpLanguageEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpLanguageLANGUAGE_NO: TWideStringField
      FieldName = 'LANGUAGE_NO'
      Required = True
      Size = 30
    end
    object qryEmpLanguageLANGUAGE_NAME: TWideStringField
      FieldName = 'LANGUAGE_NAME'
      Required = True
      OnChange = qryEmpLanguageLANGUAGE_NAMEChange
      Size = 126
    end
    object qryEmpLanguageLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryEmpLanguageLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      OnChange = qryEmpLanguageLEVEL_NAMEChange
      Size = 126
    end
    object qryEmpLanguageISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryEmpLanguageISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryEmpLanguageARCHIVEMENT: TWideStringField
      FieldName = 'ARCHIVEMENT'
      Size = 126
    end
    object qryEmpLanguageNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryEmpLanguageDUYET: TSmallintField
      FieldName = 'DUYET'
    end
  end
  object dsEmpLanguage: TDataSource
    DataSet = qryEmpLanguage
    Left = 584
    Top = 278
  end
  object qryEmpSkill: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMP_SKILL'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   LEVEL_NO = :OLD_LEVEL_NO AND'
      '   SKILL_NO = :OLD_SKILL_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMP_SKILL SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   LEVEL_NO = :LEVEL_NO, /*PK*/'
      '   SKILL_NO = :SKILL_NO, /*PK*/'
      '   ISSUED_DATE = :ISSUED_DATE,'
      '   ISSUED_PLACE = :ISSUED_PLACE,'
      '   ARCHIVEMENT = :ARCHIVEMENT,'
      '   NOTE = :NOTE,'
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
    OnNewRecord = qryEmpSkillNewRecord
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT HR_EMP_SKILL.EMPLOYEE_NO'
      '     , HR_EMP_SKILL.SKILL_NO'
      '     , HR_SKILL.SKILL_NAME'
      '     , HR_EMP_SKILL.LEVEL_NO'
      '     , HR_SKILL_LEVEL.LEVEL_NAME '
      '     , HR_EMP_SKILL.ISSUED_DATE'
      '     , HR_EMP_SKILL.ISSUED_PLACE'
      '     , HR_EMP_SKILL.ARCHIVEMENT'
      '     , HR_EMP_SKILL.NOTE'
      '     , HR_EMP_SKILL.DUYET'
      'FROM HR_EMP_SKILL'
      'left JOIN HR_SKILL_LEVEL on'
      '     HR_EMP_SKILL.SKILL_NO=HR_SKILL_LEVEL.SKILL_NO and'
      '     HR_EMP_SKILL.LEVEL_NO=HR_SKILL_LEVEL.LEVEL_NO'
      'left JOIN HR_SKILL on'
      '  HR_EMP_SKILL.SKILL_NO=HR_SKILL.SKILL_NO'
      ''
      'where HR_EMP_SKILL.EMPLOYEE_NO=:EMPLOYEE_NO'
      '')
    FieldOptions = []
    Left = 672
    Top = 224
    object qryEmpSkillEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpSkillSKILL_NO: TWideStringField
      FieldName = 'SKILL_NO'
      Required = True
      Size = 30
    end
    object qryEmpSkillSKILL_NAME: TWideStringField
      FieldName = 'SKILL_NAME'
      Required = True
      OnChange = qryEmpSkillSKILL_NAMEChange
      Size = 126
    end
    object qryEmpSkillLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryEmpSkillLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      OnChange = qryEmpSkillLEVEL_NAMEChange
      Size = 126
    end
    object qryEmpSkillISSUED_DATE: TDateField
      FieldName = 'ISSUED_DATE'
    end
    object qryEmpSkillISSUED_PLACE: TWideStringField
      FieldName = 'ISSUED_PLACE'
      Size = 126
    end
    object qryEmpSkillARCHIVEMENT: TWideStringField
      FieldName = 'ARCHIVEMENT'
      Size = 126
    end
    object qryEmpSkillNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryEmpSkillDUYET: TSmallintField
      FieldName = 'DUYET'
    end
  end
  object dsEmpSkill: TDataSource
    DataSet = qryEmpSkill
    Left = 672
    Top = 278
  end
  object qryQT_ThayDoiPhieuKCB: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ID_BAOHIEM_PHIEUKCB')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT ID_BAOHIEM_PHIEUKCB'
      '     , HR_BAOHIEM_QT_THAYDOI_PHIEUKCB.ID_BAOHIEM_SODANGKY'
      '     , SOPHIEU_KCB'
      '     , HR_BAOHIEM_QT_THAYDOI_PHIEUKCB.ID_BAOHIEM_BENHVIEN'
      '     , DANGKY_TUNGAY'
      '     , DANGKY_DENNGAY'
      '     , TEN_BENHVIEN'
      '     , TEN_TINH_THANHPHO'
      '     , TINH_TRANG'
      '     , NGAY_TRATHE'
      'FROM HR_BAOHIEM_QT_THAYDOI_PHIEUKCB'
      
        'JOIN HR_BAOHIEM_BENHVIEN ON  HR_BAOHIEM_QT_THAYDOI_PHIEUKCB.ID_B' +
        'AOHIEM_BENHVIEN = HR_BAOHIEM_BENHVIEN.ID_BAOHIEM_BENHVIEN'
      
        'JOIN HR_BAOHIEM_TINH_THANHPHO ON HR_BAOHIEM_BENHVIEN.MA_TINH_THA' +
        'NHPHO = HR_BAOHIEM_TINH_THANHPHO.MA_TINH_THANHPHO'
      
        'JOIN HR_BAOHIEM_SODANGKY ON HR_BAOHIEM_SODANGKY.ID_BAOHIEM_SODAN' +
        'GKY = HR_BAOHIEM_QT_THAYDOI_PHIEUKCB.ID_BAOHIEM_SODANGKY '
      'WHERE EMPLOYEE_NO = :EMPLOYEE_NO'
      'ORDER BY DANGKY_TUNGAY,ID_BAOHIEM_PHIEUKCB')
    FieldOptions = []
    Left = 672
    Top = 8
    object qryQT_ThayDoiPhieuKCBSOPHIEU_KCB: TWideStringField
      FieldName = 'SOPHIEU_KCB'
      Size = 30
    end
    object qryQT_ThayDoiPhieuKCBTEN_BENHVIEN: TWideStringField
      FieldName = 'TEN_BENHVIEN'
      ReadOnly = True
      Required = True
      Size = 63
    end
    object qryQT_ThayDoiPhieuKCBTEN_TINH_THANHPHO: TWideStringField
      FieldName = 'TEN_TINH_THANHPHO'
      Size = 63
    end
    object qryQT_ThayDoiPhieuKCBDANGKY_TUNGAY: TDateField
      FieldName = 'DANGKY_TUNGAY'
    end
    object qryQT_ThayDoiPhieuKCBDANGKY_DENNGAY: TDateField
      FieldName = 'DANGKY_DENNGAY'
    end
    object qryQT_ThayDoiPhieuKCBTINH_TRANG: TSmallintField
      FieldName = 'TINH_TRANG'
      Required = True
    end
    object qryQT_ThayDoiPhieuKCBNGAY_TRATHE: TDateField
      FieldName = 'NGAY_TRATHE'
    end
    object qryQT_ThayDoiPhieuKCBID_BAOHIEM_SODANGKY: TIntegerField
      FieldName = 'ID_BAOHIEM_SODANGKY'
    end
    object qryQT_ThayDoiPhieuKCBID_BAOHIEM_PHIEUKCB: TIntegerField
      FieldName = 'ID_BAOHIEM_PHIEUKCB'
    end
    object qryQT_ThayDoiPhieuKCBID_BAOHIEM_BENHVIEN: TIntegerField
      FieldName = 'ID_BAOHIEM_BENHVIEN'
    end
  end
  object dsQT_ThayDoiPhieuKCB: TDataSource
    DataSet = qryQT_ThayDoiPhieuKCB
    Left = 672
    Top = 56
  end
  object qryQT_DongHienTai: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ID_BAOHIEM_QT_DONG_HIENTAI')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT ID_BAOHIEM_QT_DONG_HIENTAI'
      '     , HR_BAOHIEM_QT_DONG_HIENTAI.ID_BAOHIEM_SODANGKY'
      '     , TU_THANG'
      '     , TU_NAM'
      '     , TIEN_LUONG'
      '     , TILE_NLD_NOP'
      '     , TILE_DN_NOP'
      '     , GHI_CHU'
      '     , TILE_NOP'
      '     , PHU_CAP'
      '     , TIENNOP_BAOHIEM'
      '     , TILE_BHXH_NLD_NOP'
      '     , TT_BHXH_NLD_NOP'
      '     , TILE_BHYT_NLD_NOP'
      '     , TT_BHYT_NLD_NOP'
      '     , TILE_BHTN_NLD_NOP'
      '     , TT_BHTN_NLD_NOP'
      '     , TILE_BHXH_DN_NOP'
      '     , TT_BHXH_DN_NOP'
      '     , TILE_BHYT_DN_NOP'
      '     , TT_BHYT_DN_NOP'
      '     , TILE_BHTN_DN_NOP'
      '     , TT_BHTN_DN_NOP'
      'FROM HR_BAOHIEM_QT_DONG_HIENTAI'
      
        'JOIN HR_BAOHIEM_SODANGKY ON HR_BAOHIEM_SODANGKY.ID_BAOHIEM_SODAN' +
        'GKY = HR_BAOHIEM_QT_DONG_HIENTAI.ID_BAOHIEM_SODANGKY'
      'WHERE EMPLOYEE_NO = :EMPLOYEE_NO'
      'ORDER BY (TU_THANG - 1 + 12 * TU_NAM) * 10')
    FieldOptions = []
    Left = 216
    Top = 224
    object qryQT_DongHienTaiTU_THANG: TIntegerField
      FieldName = 'TU_THANG'
      Required = True
    end
    object qryQT_DongHienTaiTU_NAM: TIntegerField
      FieldName = 'TU_NAM'
      Required = True
    end
    object qryQT_DongHienTaiTIEN_LUONG: TIBOFloatField
      FieldName = 'TIEN_LUONG'
      Required = True
    end
    object qryQT_DongHienTaiPHU_CAP: TIBOFloatField
      FieldName = 'PHU_CAP'
    end
    object qryQT_DongHienTaiTILE_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_NLD_NOP'
    end
    object qryQT_DongHienTaiTILE_DN_NOP: TIBOFloatField
      FieldName = 'TILE_DN_NOP'
    end
    object qryQT_DongHienTaiTILE_NOP: TIBOFloatField
      FieldName = 'TILE_NOP'
    end
    object qryQT_DongHienTaiTIENNOP_BAOHIEM: TIBOFloatField
      FieldName = 'TIENNOP_BAOHIEM'
    end
    object qryQT_DongHienTaiGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 750
    end
    object qryQT_DongHienTaiID_BAOHIEM_SODANGKY: TIntegerField
      FieldName = 'ID_BAOHIEM_SODANGKY'
    end
    object qryQT_DongHienTaiID_BAOHIEM_QT_DONG_HIENTAI: TIntegerField
      FieldName = 'ID_BAOHIEM_QT_DONG_HIENTAI'
    end
    object qryQT_DongHienTaiTILE_BHXH_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_BHXH_NLD_NOP'
    end
    object qryQT_DongHienTaiTT_BHXH_NLD_NOP: TIBOFloatField
      FieldName = 'TT_BHXH_NLD_NOP'
    end
    object qryQT_DongHienTaiTILE_BHYT_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_BHYT_NLD_NOP'
    end
    object qryQT_DongHienTaiTT_BHYT_NLD_NOP: TIBOFloatField
      FieldName = 'TT_BHYT_NLD_NOP'
    end
    object qryQT_DongHienTaiTILE_BHTN_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_BHTN_NLD_NOP'
    end
    object qryQT_DongHienTaiTT_BHTN_NLD_NOP: TIBOFloatField
      FieldName = 'TT_BHTN_NLD_NOP'
    end
    object qryQT_DongHienTaiTILE_BHXH_DN_NOP: TIBOFloatField
      FieldName = 'TILE_BHXH_DN_NOP'
    end
    object qryQT_DongHienTaiTT_BHXH_DN_NOP: TIBOFloatField
      FieldName = 'TT_BHXH_DN_NOP'
    end
    object qryQT_DongHienTaiTILE_BHYT_DN_NOP: TIBOFloatField
      FieldName = 'TILE_BHYT_DN_NOP'
    end
    object qryQT_DongHienTaiTT_BHYT_DN_NOP: TIBOFloatField
      FieldName = 'TT_BHYT_DN_NOP'
    end
    object qryQT_DongHienTaiTILE_BHTN_DN_NOP: TIBOFloatField
      FieldName = 'TILE_BHTN_DN_NOP'
    end
    object qryQT_DongHienTaiTT_BHTN_DN_NOP: TIBOFloatField
      FieldName = 'TT_BHTN_DN_NOP'
    end
  end
  object qryQT_DongTruocDay: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ID_BAOHIEM_QT_DONG_TRUOCDAY')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT ID_BAOHIEM_QT_DONG_TRUOCDAY'
      '     , HR_BAOHIEM_QT_DONG_TRUOCDAY.ID_BAOHIEM_SODANGKY'
      '     , TU_THANG'
      '     , TU_NAM'
      '     , TIEN_LUONG'
      '     , PHU_CAP'
      '     , TILE_NLD_NOP'
      '     , TILE_DN_NOP'
      '     , GHI_CHU'
      '     , TILE_NOP'
      '     , TILE_BHXH_NLD_NOP'
      '     , TILE_BHYT_NLD_NOP'
      '     , TILE_BHXH_DN_NOP'
      '     , TILE_BHYT_DN_NOP'
      '     , TILE_BHTN_DN_NOP'
      '     , TILE_BHTN_NLD_NOP'
      '     , TT_BHXH_NLD_NOP'
      '     , TT_BHYT_NLD_NOP'
      '     , TT_BHTN_NLD_NOP'
      '     , TT_BHXH_DN_NOP'
      '     , TT_BHYT_DN_NOP'
      '     , TT_BHTN_DN_NOP'
      '     , TIENNOP_BAOHIEM'
      'FROM HR_BAOHIEM_QT_DONG_TRUOCDAY'
      
        'JOIN HR_BAOHIEM_SODANGKY ON HR_BAOHIEM_SODANGKY.ID_BAOHIEM_SODAN' +
        'GKY = HR_BAOHIEM_QT_DONG_TRUOCDAY.ID_BAOHIEM_SODANGKY'
      'WHERE EMPLOYEE_NO = :EMPLOYEE_NO'
      'ORDER BY (TU_THANG - 1 + 12 * TU_NAM) * 10')
    FieldOptions = []
    Left = 504
    Top = 224
    object qryQT_DongTruocDayID_BAOHIEM_QT_DONG_TRUOCDAY: TIntegerField
      FieldName = 'ID_BAOHIEM_QT_DONG_TRUOCDAY'
      Required = True
    end
    object qryQT_DongTruocDayID_BAOHIEM_SODANGKY: TIntegerField
      FieldName = 'ID_BAOHIEM_SODANGKY'
      Required = True
    end
    object qryQT_DongTruocDayTU_THANG: TIntegerField
      FieldName = 'TU_THANG'
      Required = True
    end
    object qryQT_DongTruocDayTU_NAM: TIntegerField
      FieldName = 'TU_NAM'
      Required = True
    end
    object qryQT_DongTruocDayTIEN_LUONG: TIBOFloatField
      FieldName = 'TIEN_LUONG'
      Required = True
    end
    object qryQT_DongTruocDayPHU_CAP: TIBOFloatField
      FieldName = 'PHU_CAP'
    end
    object qryQT_DongTruocDayTILE_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_NLD_NOP'
    end
    object qryQT_DongTruocDayTILE_DN_NOP: TIBOFloatField
      FieldName = 'TILE_DN_NOP'
    end
    object qryQT_DongTruocDayGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 750
    end
    object qryQT_DongTruocDayTILE_NOP: TIBOFloatField
      FieldName = 'TILE_NOP'
    end
    object qryQT_DongTruocDayTILE_BHXH_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_BHXH_NLD_NOP'
    end
    object qryQT_DongTruocDayTILE_BHYT_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_BHYT_NLD_NOP'
    end
    object qryQT_DongTruocDayTILE_BHXH_DN_NOP: TIBOFloatField
      FieldName = 'TILE_BHXH_DN_NOP'
    end
    object qryQT_DongTruocDayTILE_BHYT_DN_NOP: TIBOFloatField
      FieldName = 'TILE_BHYT_DN_NOP'
    end
    object qryQT_DongTruocDayTILE_BHTN_DN_NOP: TIBOFloatField
      FieldName = 'TILE_BHTN_DN_NOP'
    end
    object qryQT_DongTruocDayTILE_BHTN_NLD_NOP: TIBOFloatField
      FieldName = 'TILE_BHTN_NLD_NOP'
    end
    object qryQT_DongTruocDayTT_BHXH_NLD_NOP: TIBOFloatField
      FieldName = 'TT_BHXH_NLD_NOP'
    end
    object qryQT_DongTruocDayTT_BHYT_NLD_NOP: TIBOFloatField
      FieldName = 'TT_BHYT_NLD_NOP'
    end
    object qryQT_DongTruocDayTT_BHTN_NLD_NOP: TIBOFloatField
      FieldName = 'TT_BHTN_NLD_NOP'
    end
    object qryQT_DongTruocDayTT_BHXH_DN_NOP: TIBOFloatField
      FieldName = 'TT_BHXH_DN_NOP'
    end
    object qryQT_DongTruocDayTT_BHYT_DN_NOP: TIBOFloatField
      FieldName = 'TT_BHYT_DN_NOP'
    end
    object qryQT_DongTruocDayTT_BHTN_DN_NOP: TIBOFloatField
      FieldName = 'TT_BHTN_DN_NOP'
    end
    object qryQT_DongTruocDayTIENNOP_BAOHIEM: TIBOFloatField
      FieldName = 'TIENNOP_BAOHIEM'
    end
  end
  object dsQT_DongHienTai: TDataSource
    DataSet = qryQT_DongHienTai
    Left = 216
    Top = 278
  end
  object dsQT_DongTruocDay: TDataSource
    DataSet = qryQT_DongTruocDay
    Left = 504
    Top = 278
  end
  object qryEmpWageCompany: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsEmpList
    SQL.Strings = (
      'SELECT HR_COMP_WAGE_STANDARD_DETAIL.WAGE_SCALE'
      '     , HR_COMPANY_WAGE_SCALE.WAGE_SCALE_NAME CAREER_NAME'
      '     , WAGE_LEVEL'
      '     , WAGE_COEFF'
      '     , APPLY_MONTH'
      '     , APPLY_YEAR'
      '     , APPLY_PERIOD'
      '     , PERIOD_ID'
      '     , CHANGE_NO'
      'FROM HR_COMP_WAGE_STANDARD_DETAIL'
      
        'JOIN HR_COMPANY_WAGE_SCALE ON HR_COMPANY_WAGE_SCALE.WAGE_SCALE=H' +
        'R_COMP_WAGE_STANDARD_DETAIL.WAGE_SCALE'
      'WHERE EMPLOYEE_NO = :EMPLOYEE_NO'
      'ORDER BY PERIOD_ID')
    FieldOptions = []
    Left = 504
    Top = 120
    object qryEmpWageCompanyWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 30
    end
    object qryEmpWageCompanyCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 63
    end
    object qryEmpWageCompanyWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object qryEmpWageCompanyWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
      Required = True
    end
    object qryEmpWageCompanyAPPLY_MONTH: TIntegerField
      FieldName = 'APPLY_MONTH'
      Required = True
    end
    object qryEmpWageCompanyAPPLY_YEAR: TIntegerField
      FieldName = 'APPLY_YEAR'
      Required = True
    end
    object qryEmpWageCompanyAPPLY_PERIOD: TIntegerField
      FieldName = 'APPLY_PERIOD'
      Required = True
    end
    object qryEmpWageCompanyPERIOD_ID: TIntegerField
      FieldName = 'PERIOD_ID'
    end
    object qryEmpWageCompanyCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
  end
  object dsEmpWageCompany: TDataSource
    DataSet = qryEmpWageCompany
    Left = 504
    Top = 176
  end
end
