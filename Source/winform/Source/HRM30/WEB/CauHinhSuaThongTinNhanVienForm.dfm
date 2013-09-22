inherited frmCauHinhSuaThongTinNhanVien: TfrmCauHinhSuaThongTinNhanVien
  Left = 152
  Top = 177
  Width = 791
  Height = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 422
    Width = 783
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 783
    Height = 422
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 395
      Color = 15466238
      TabOrder = 54
      inherited dxLayoutControl1: TdxLayoutControl
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
            inherited dxlctrlHelp: TdxLayoutItem
              Visible = False
            end
          end
        end
      end
    end
    object dxDBCheckEdit1: TdxDBCheckEdit [1]
      Left = 113
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      DataField = 'EMPLOYEE_NO'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit2: TdxDBCheckEdit [2]
      Left = 113
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'EMPLOYEE_ID'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit3: TdxDBCheckEdit [3]
      Left = 113
      Top = 153
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      DataField = 'FIRST_NAME'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit4: TdxDBCheckEdit [4]
      Left = 113
      Top = 130
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      DataField = 'MIDDLE_NAME'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit5: TdxDBCheckEdit [5]
      Left = 113
      Top = 107
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      DataField = 'LAST_NAME'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit6: TdxDBCheckEdit [6]
      Left = 113
      Top = 268
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 9
      DataField = 'GENDER'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit7: TdxDBCheckEdit [7]
      Left = 113
      Top = 245
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      DataField = 'MARRIAL_STATUS'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit8: TdxDBCheckEdit [8]
      Left = 113
      Top = 222
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      DataField = 'BIRTH_DATE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit9: TdxDBCheckEdit [9]
      Left = 113
      Top = 199
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      DataField = 'ALIAS'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit10: TdxDBCheckEdit [10]
      Left = 113
      Top = 176
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      DataField = 'REGISTERED_NAME'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit11: TdxDBCheckEdit [11]
      Left = 272
      Top = 245
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 20
      DataField = 'PASSPORT_PLACE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit12: TdxDBCheckEdit [12]
      Left = 272
      Top = 222
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 19
      DataField = 'PASSPORT_DATE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit13: TdxDBCheckEdit [13]
      Left = 272
      Top = 199
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 18
      DataField = 'PASSPORT'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit14: TdxDBCheckEdit [14]
      Left = 272
      Top = 176
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 17
      DataField = 'ISSUED_PLACE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit15: TdxDBCheckEdit [15]
      Left = 272
      Top = 153
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 16
      DataField = 'ISSUED_DATE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit16: TdxDBCheckEdit [16]
      Left = 272
      Top = 130
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 15
      DataField = 'ID_CARD_NO'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit17: TdxDBCheckEdit [17]
      Left = 272
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 14
      DataField = 'RELIGION_NO'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit18: TdxDBCheckEdit [18]
      Left = 272
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 13
      DataField = 'RACE_NO'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit19: TdxDBCheckEdit [19]
      Left = 272
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 12
      DataField = 'NATIONAL_NO'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit20: TdxDBCheckEdit [20]
      Left = 272
      Top = 268
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 21
      DataField = 'PASSPORT_EXPIRED'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit21: TdxDBCheckEdit [21]
      Left = 428
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 26
      DataField = 'DESCENT_FROM'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit22: TdxDBCheckEdit [22]
      Left = 428
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 25
      DataField = 'NATIVE_PLACE_ID'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit23: TdxDBCheckEdit [23]
      Left = 428
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 24
      DataField = 'BIRTH_PLACE_ID'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit24: TdxDBCheckEdit [24]
      Left = 428
      Top = 130
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 27
      DataField = 'CONTACT_PHONE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit25: TdxDBCheckEdit [25]
      Left = 428
      Top = 268
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 33
      DataField = 'CONTACT_ADDR'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit26: TdxDBCheckEdit [26]
      Left = 428
      Top = 245
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 32
      DataField = 'PROVISION_ADDR'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit27: TdxDBCheckEdit [27]
      Left = 428
      Top = 222
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 31
      DataField = 'RESIDENT_ADDR'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit28: TdxDBCheckEdit [28]
      Left = 428
      Top = 176
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 29
      DataField = 'EMAIL'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit29: TdxDBCheckEdit [29]
      Left = 428
      Top = 153
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 28
      DataField = 'HAND_PHONE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit30: TdxDBCheckEdit [30]
      Left = 428
      Top = 199
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 30
      DataField = 'WEBSITE'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit31: TdxDBCheckEdit [31]
      Left = 580
      Top = 222
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 43
      DataField = 'COQUAN_THUE_QUANLY'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit32: TdxDBCheckEdit [32]
      Left = 580
      Top = 199
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 42
      DataField = 'MASO_THUE_CANHAN'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit33: TdxDBCheckEdit [33]
      Left = 580
      Top = 176
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 41
      DataField = 'ACCOUNT_BANK'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit34: TdxDBCheckEdit [34]
      Left = 580
      Top = 153
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 40
      DataField = 'ACCOUNT_ID'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit35: TdxDBCheckEdit [35]
      Left = 580
      Top = 130
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 39
      DataField = 'CURRENCY_NO'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit36: TdxDBCheckEdit [36]
      Left = 580
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 38
      DataField = 'DAUVET_DACBIET'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit37: TdxDBCheckEdit [37]
      Left = 580
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 37
      DataField = 'CHIEU_CAO'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit38: TdxDBCheckEdit [38]
      Left = 580
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 36
      DataField = 'CAN_NANG'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit39: TdxDBCheckEdit [39]
      Left = 428
      Top = 347
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 35
      DataField = 'CHUC_VU_CDOAN'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit40: TdxDBCheckEdit [40]
      Left = 428
      Top = 324
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 34
      DataField = 'NGAY_VAO_CDOAN'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit41: TdxDBCheckEdit [41]
      Left = 272
      Top = 347
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 23
      DataField = 'CHUC_VU_DOAN'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit42: TdxDBCheckEdit [42]
      Left = 272
      Top = 324
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 22
      DataField = 'NGAY_VAO_DOAN'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit43: TdxDBCheckEdit [43]
      Left = 113
      Top = 347
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 11
      DataField = 'CHUC_VU_DANG'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit44: TdxDBCheckEdit [44]
      Left = 113
      Top = 324
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 10
      DataField = 'NGAY_VAO_DANG'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit45: TdxDBCheckEdit [45]
      Left = 580
      Top = 245
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 44
      DataField = 'NGAY_VAO_CONGTY'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit46: TdxDBCheckEdit [46]
      Left = 580
      Top = 347
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 47
      DataField = 'TRINHDO_CHUYENMON'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit47: TdxDBCheckEdit [47]
      Left = 580
      Top = 324
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 46
      DataField = 'TRINHDO_KYNANG'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit48: TdxDBCheckEdit [48]
      Left = 580
      Top = 301
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 45
      DataField = 'TRINHDO_NGOAINGU'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit49: TdxDBCheckEdit [49]
      Left = 721
      Top = 143
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 53
      DataField = 'CONGVIEC_LAUNHAT'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit50: TdxDBCheckEdit [50]
      Left = 721
      Top = 120
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 52
      DataField = 'NAM_TOTNGHIEP'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit51: TdxDBCheckEdit [51]
      Left = 721
      Top = 97
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 51
      DataField = 'NGHE_NGHIEP'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit52: TdxDBCheckEdit [52]
      Left = 721
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 50
      DataField = 'SOTRUONG_CTAC'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit53: TdxDBCheckEdit [53]
      Left = 721
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 49
      DataField = 'TRINHDO_VANHOA'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    object dxDBCheckEdit54: TdxDBCheckEdit [54]
      Left = 721
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 48
      DataField = 'TRINHDO_HOCVAN'
      DataSource = dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsUnchecked
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup6: TdxLayoutGroup [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainGroup2: TdxLayoutGroup
          AutoAligns = []
          AlignVert = avClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainGroup1: TdxLayoutGroup
            AutoAligns = []
            Caption = 'M'#227' s'#7889' c'#225' nh'#226'n'
            object dxlcMainItem2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'M'#227' ch'#237'nh th'#7913'c'
              Control = dxDBCheckEdit1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem3: TdxLayoutItem
              Caption = 'M'#227' th'#7867' d'#7921' ph'#242'ng'
              Control = dxDBCheckEdit2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup3: TdxLayoutGroup
            Caption = 'Th'#244'ng tin c'#225' nh'#226'n'
            object dxlcMainItem6: TdxLayoutItem
              Caption = 'H'#7885' nh'#226'n vi'#234'n'
              Control = dxDBCheckEdit5
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem5: TdxLayoutItem
              Caption = 'T'#234'n l'#243't nh'#226'n vi'#234'n'
              Control = dxDBCheckEdit4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem4: TdxLayoutItem
              Caption = 'T'#234'n nh'#226'n vi'#234'n'
              Control = dxDBCheckEdit3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem11: TdxLayoutItem
              Caption = 'T'#234'n khai sinh'
              Control = dxDBCheckEdit10
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem10: TdxLayoutItem
              Caption = 'B'#237' danh'
              Control = dxDBCheckEdit9
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem9: TdxLayoutItem
              Caption = 'Ng'#224'y sinh'
              Control = dxDBCheckEdit8
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem8: TdxLayoutItem
              Caption = 'T'#236'nh tr'#7841'ng h'#244'n nh'#226'n'
              Control = dxDBCheckEdit7
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem7: TdxLayoutItem
              Caption = 'Gi'#7899'i t'#237'nh'
              Control = dxDBCheckEdit6
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup16: TdxLayoutGroup
            Caption = #272#7843'ng'
            object dxlcMainItem45: TdxLayoutItem
              Caption = 'Ng'#224'y v'#224'o '#272#7843'ng'
              Control = dxDBCheckEdit44
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem44: TdxLayoutItem
              Caption = 'Ch'#7913'c v'#7909' '#272#7843'ng'
              Control = dxDBCheckEdit43
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxlcMainGroup5: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainGroup7: TdxLayoutGroup
            Caption = 'L'#253' l'#7883'ch'
            object dxlcMainItem20: TdxLayoutItem
              Caption = 'Qu'#7889'c t'#7883'ch'
              Control = dxDBCheckEdit19
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem19: TdxLayoutItem
              Caption = 'D'#226'n t'#7897'c'
              Control = dxDBCheckEdit18
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem18: TdxLayoutItem
              Caption = 'T'#244'n gi'#225'o'
              Control = dxDBCheckEdit17
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup4: TdxLayoutGroup
            Caption = 'Th'#7867' c'#259'n c'#432#7899'c'
            object dxlcMainItem17: TdxLayoutItem
              Caption = 'S'#7889' CMND'
              Control = dxDBCheckEdit16
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem16: TdxLayoutItem
              Caption = 'Ng'#224'y c'#7845'p CMND'
              Control = dxDBCheckEdit15
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem15: TdxLayoutItem
              Caption = 'N'#7907'i c'#7845'p CMND'
              Control = dxDBCheckEdit14
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem14: TdxLayoutItem
              Caption = 'S'#7889' Passport'
              Control = dxDBCheckEdit13
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem13: TdxLayoutItem
              Caption = 'Ng'#224'y c'#7845'p Passport'
              Control = dxDBCheckEdit12
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem12: TdxLayoutItem
              Caption = 'N'#417'i c'#7845'p Passport'
              Control = dxDBCheckEdit11
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem21: TdxLayoutItem
              Caption = 'Ng'#224'y h'#7871't h'#7841'n Passport'
              Control = dxDBCheckEdit20
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup17: TdxLayoutGroup
            Caption = #272'o'#224'n'
            object dxlcMainItem43: TdxLayoutItem
              Caption = 'Ng'#224'y v'#224'o '#272'o'#224'n'
              Control = dxDBCheckEdit42
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem42: TdxLayoutItem
              Caption = 'Ch'#7913'c v'#7909' '#272'o'#224'n'
              Control = dxDBCheckEdit41
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxlcMainGroup8: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainGroup9: TdxLayoutGroup
            Caption = 'Xu'#7845't th'#226'n'
            object dxlcMainItem24: TdxLayoutItem
              Caption = 'Qu'#234' qu'#225'n'
              Control = dxDBCheckEdit23
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem23: TdxLayoutItem
              Caption = 'N'#417'i sinh'
              Control = dxDBCheckEdit22
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem22: TdxLayoutItem
              Caption = 'Th'#224'nh ph'#7847'n xu'#7845't th'#226'n'
              Control = dxDBCheckEdit21
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup10: TdxLayoutGroup
            Caption = 'Li'#234'n h'#7879
            object dxlcMainItem25: TdxLayoutItem
              Caption = #272'i'#7879'n tho'#7841'i'
              Control = dxDBCheckEdit24
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem30: TdxLayoutItem
              Caption = 'Mobile'
              Control = dxDBCheckEdit29
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem29: TdxLayoutItem
              Caption = 'Email'
              Control = dxDBCheckEdit28
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem31: TdxLayoutItem
              Caption = 'Website'
              Control = dxDBCheckEdit30
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem28: TdxLayoutItem
              Caption = #272#7883'a ch'#7881' th'#432#7901'ng tr'#250
              Control = dxDBCheckEdit27
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem27: TdxLayoutItem
              Caption = #272#7883'a ch'#7881' t'#7841'm tr'#250
              Control = dxDBCheckEdit26
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem26: TdxLayoutItem
              Caption = #272#7883'a ch'#7881' li'#234'n h'#7879
              Control = dxDBCheckEdit25
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup18: TdxLayoutGroup
            Caption = 'C'#244'ng '#273'o'#224'n'
            object dxlcMainItem41: TdxLayoutItem
              Caption = 'Ng'#224'y v'#224'o C'#244'ng '#272'o'#224'n'
              Control = dxDBCheckEdit40
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem40: TdxLayoutItem
              Caption = 'Ch'#7913'c v'#7909' C'#244'ng '#273'o'#224'n'
              Control = dxDBCheckEdit39
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxlcMainGroup11: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainGroup13: TdxLayoutGroup
            Caption = #272#7863'c '#273'i'#7875'm c'#225' nh'#226'n'
            object dxlcMainItem39: TdxLayoutItem
              Caption = 'C'#226'n n'#7863'ng'
              Control = dxDBCheckEdit38
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem38: TdxLayoutItem
              Caption = 'Chi'#7873'u cao'
              Control = dxDBCheckEdit37
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem37: TdxLayoutItem
              Caption = 'D'#7845'u v'#7871't '#273#7863'c bi'#7879't'
              Control = dxDBCheckEdit36
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup12: TdxLayoutGroup
            Caption = 'Th'#244'ng tin kh'#225'c'
            object dxlcMainItem36: TdxLayoutItem
              Caption = 'Ti'#7873'n t'#7879
              Control = dxDBCheckEdit35
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem35: TdxLayoutItem
              Caption = 'T'#224'i kho'#7843'n ng'#226'n h'#224'ng'
              Control = dxDBCheckEdit34
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem34: TdxLayoutItem
              Caption = 'T'#234'n ng'#226'n h'#224'ng'
              Control = dxDBCheckEdit33
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem33: TdxLayoutItem
              Caption = 'M'#227' s'#7889' thu'#7871
              Control = dxDBCheckEdit32
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem32: TdxLayoutItem
              Caption = 'C'#417' quan thu'#7871' qu'#7843'n l'#253
              Control = dxDBCheckEdit31
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem46: TdxLayoutItem
              Caption = 'Ng'#224'y v'#224'o c'#244'ng ty'
              Control = dxDBCheckEdit45
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup14: TdxLayoutGroup
            Caption = 'Tr'#236'nh '#273#7897' chuy'#234'n m'#244'n'
            object dxlcMainItem49: TdxLayoutItem
              Caption = 'Tr'#236'nh '#273#7897' ngo'#7841'i ng'#7919
              Control = dxDBCheckEdit48
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem48: TdxLayoutItem
              Caption = 'Tr'#236'nh '#273#7897' k'#7929' n'#259'ng'
              Control = dxDBCheckEdit47
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem47: TdxLayoutItem
              Caption = 'Chuy'#234'n m'#244'n kh'#225'c'
              Control = dxDBCheckEdit46
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxlcMainGroup15: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainGroup19: TdxLayoutGroup
            Caption = 'H'#7885'c v'#7845'n chung'
            object dxlcMainItem55: TdxLayoutItem
              Caption = 'Tr'#236'nh '#273#7897' h'#7885'c v'#7845'n'
              Control = dxDBCheckEdit54
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem54: TdxLayoutItem
              Caption = 'Tr'#236'nh '#273#7897' v'#259'n h'#243'a'
              Control = dxDBCheckEdit53
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem53: TdxLayoutItem
              Caption = 'S'#7903' tr'#432#7901'ng c'#244'ng t'#225'c'
              Control = dxDBCheckEdit52
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem52: TdxLayoutItem
              Caption = 'Ngh'#7873' nghi'#7879'p'
              Control = dxDBCheckEdit51
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem51: TdxLayoutItem
              Caption = 'N'#259'm t'#7889't nghi'#7879'p'
              Control = dxDBCheckEdit50
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem50: TdxLayoutItem
              Caption = 'C'#244'ng vi'#7879'c l'#226'u nh'#7845't'
              Control = dxDBCheckEdit49
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
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
        Caption = 'C'#7845'u h'#236'nh cho ph'#233'p s'#7917'a th'#244'ng tin nh'#226'n vi'#234'n tr'#234'n ch'#7913'c n'#259'ng web'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryConfig: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_CONFIG_EDIT_EMPLOYEE SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO,'
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
      '   COQUAN_THUE_QUANLY = :COQUAN_THUE_QUANLY,'
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
      '   TRINHDO_KYNANG = :TRINHDO_KYNANG,'
      '   TRINHDO_NGOAINGU = :TRINHDO_NGOAINGU,'
      '   TRINHDO_CHUYENMON = :TRINHDO_CHUYENMON,'
      '   TRINHDO_HOCVAN = :TRINHDO_HOCVAN,'
      '   TRINHDO_VANHOA = :TRINHDO_VANHOA,'
      '   SOTRUONG_CTAC = :SOTRUONG_CTAC,'
      '   NAM_TOTNGHIEP = :NAM_TOTNGHIEP,'
      '   NGHE_NGHIEP = :NGHE_NGHIEP,'
      '   CONGVIEC_LAUNHAT = :CONGVIEC_LAUNHAT'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select EMPLOYEE_NO ,'
      '    LAST_NAME   ,'
      '    MIDDLE_NAME   ,'
      '    FIRST_NAME    ,'
      '    GENDER        ,'
      '    BIRTH_DATE    ,'
      '    MARRIAL_STATUS,'
      '    ID_CARD_NO    ,'
      '    ISSUED_DATE   ,'
      '    ISSUED_PLACE  ,'
      '    RACE_NO       ,'
      '    CURRENCY_NO   ,'
      '    NATIONAL_NO   ,'
      '    RELIGION_NO   ,'
      '    BIRTH_PLACE_ID,'
      '    NATIVE_PLACE_ID ,'
      '    CONTACT_ADDR  ,'
      '    PROVISION_ADDR,'
      '    RESIDENT_ADDR ,'
      '    CONTACT_PHONE ,'
      '    HAND_PHONE    ,'
      '    EMAIL         ,'
      '    FAX           ,'
      '    WEBSITE       ,'
      '    EMPLOYEE_ID   ,'
      '    DESCENT_FROM  ,'
      '    ACCOUNT_ID    ,'
      '    ACCOUNT_BANK  ,'
      '    REGISTERED_NAME ,'
      '    ALIAS         ,'
      '    PASSPORT      ,'
      '    PASSPORT_DATE ,'
      '    PASSPORT_PLACE,'
      '    PASSPORT_EXPIRED  ,'
      '    MASO_THUE_CANHAN ,'
      '    COQUAN_THUE_QUANLY ,'
      '    CHIEU_CAO     ,'
      '    CAN_NANG      ,'
      '    DAUVET_DACBIET,'
      '    NGAY_VAO_DANG ,'
      '    CHUC_VU_DANG  ,'
      '    NGAY_VAO_DOAN ,'
      '    CHUC_VU_DOAN  ,'
      '    NGAY_VAO_CDOAN,'
      '    CHUC_VU_CDOAN ,'
      '    NGAY_VAO_CONGTY'
      '     , TRINHDO_KYNANG'
      '     , TRINHDO_NGOAINGU'
      '     , TRINHDO_CHUYENMON'
      '     , TRINHDO_HOCVAN'
      '     , TRINHDO_VANHOA'
      '     , SOTRUONG_CTAC'
      '     , NAM_TOTNGHIEP'
      '     , NGHE_NGHIEP'
      '     , CONGVIEC_LAUNHAT'
      'from hr_config_edit_employee')
    FieldOptions = []
    Left = 8
    Top = 32
    object qryConfigEMPLOYEE_NO: TSmallintField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryConfigLAST_NAME: TSmallintField
      FieldName = 'LAST_NAME'
    end
    object qryConfigMIDDLE_NAME: TSmallintField
      FieldName = 'MIDDLE_NAME'
    end
    object qryConfigFIRST_NAME: TSmallintField
      FieldName = 'FIRST_NAME'
    end
    object qryConfigGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryConfigBIRTH_DATE: TSmallintField
      FieldName = 'BIRTH_DATE'
    end
    object qryConfigMARRIAL_STATUS: TSmallintField
      FieldName = 'MARRIAL_STATUS'
    end
    object qryConfigID_CARD_NO: TSmallintField
      FieldName = 'ID_CARD_NO'
    end
    object qryConfigISSUED_DATE: TSmallintField
      FieldName = 'ISSUED_DATE'
    end
    object qryConfigISSUED_PLACE: TSmallintField
      FieldName = 'ISSUED_PLACE'
    end
    object qryConfigRACE_NO: TSmallintField
      FieldName = 'RACE_NO'
    end
    object qryConfigCURRENCY_NO: TSmallintField
      FieldName = 'CURRENCY_NO'
    end
    object qryConfigNATIONAL_NO: TSmallintField
      FieldName = 'NATIONAL_NO'
    end
    object qryConfigRELIGION_NO: TSmallintField
      FieldName = 'RELIGION_NO'
    end
    object qryConfigBIRTH_PLACE_ID: TSmallintField
      FieldName = 'BIRTH_PLACE_ID'
    end
    object qryConfigNATIVE_PLACE_ID: TSmallintField
      FieldName = 'NATIVE_PLACE_ID'
    end
    object qryConfigCONTACT_ADDR: TSmallintField
      FieldName = 'CONTACT_ADDR'
    end
    object qryConfigPROVISION_ADDR: TSmallintField
      FieldName = 'PROVISION_ADDR'
    end
    object qryConfigRESIDENT_ADDR: TSmallintField
      FieldName = 'RESIDENT_ADDR'
    end
    object qryConfigCONTACT_PHONE: TSmallintField
      FieldName = 'CONTACT_PHONE'
    end
    object qryConfigHAND_PHONE: TSmallintField
      FieldName = 'HAND_PHONE'
    end
    object qryConfigEMAIL: TSmallintField
      FieldName = 'EMAIL'
    end
    object qryConfigFAX: TSmallintField
      FieldName = 'FAX'
    end
    object qryConfigWEBSITE: TSmallintField
      FieldName = 'WEBSITE'
    end
    object qryConfigEMPLOYEE_ID: TSmallintField
      FieldName = 'EMPLOYEE_ID'
    end
    object qryConfigDESCENT_FROM: TSmallintField
      FieldName = 'DESCENT_FROM'
    end
    object qryConfigACCOUNT_ID: TSmallintField
      FieldName = 'ACCOUNT_ID'
    end
    object qryConfigACCOUNT_BANK: TSmallintField
      FieldName = 'ACCOUNT_BANK'
    end
    object qryConfigREGISTERED_NAME: TSmallintField
      FieldName = 'REGISTERED_NAME'
    end
    object qryConfigALIAS: TSmallintField
      FieldName = 'ALIAS'
    end
    object qryConfigPASSPORT: TSmallintField
      FieldName = 'PASSPORT'
    end
    object qryConfigPASSPORT_DATE: TSmallintField
      FieldName = 'PASSPORT_DATE'
    end
    object qryConfigPASSPORT_PLACE: TSmallintField
      FieldName = 'PASSPORT_PLACE'
    end
    object qryConfigPASSPORT_EXPIRED: TSmallintField
      FieldName = 'PASSPORT_EXPIRED'
    end
    object qryConfigMASO_THUE_CANHAN: TSmallintField
      FieldName = 'MASO_THUE_CANHAN'
    end
    object qryConfigCOQUAN_THUE_QUANLY: TSmallintField
      FieldName = 'COQUAN_THUE_QUANLY'
    end
    object qryConfigCHIEU_CAO: TSmallintField
      FieldName = 'CHIEU_CAO'
    end
    object qryConfigCAN_NANG: TSmallintField
      FieldName = 'CAN_NANG'
    end
    object qryConfigDAUVET_DACBIET: TSmallintField
      FieldName = 'DAUVET_DACBIET'
    end
    object qryConfigNGAY_VAO_DANG: TSmallintField
      FieldName = 'NGAY_VAO_DANG'
    end
    object qryConfigCHUC_VU_DANG: TSmallintField
      FieldName = 'CHUC_VU_DANG'
    end
    object qryConfigNGAY_VAO_DOAN: TSmallintField
      FieldName = 'NGAY_VAO_DOAN'
    end
    object qryConfigCHUC_VU_DOAN: TSmallintField
      FieldName = 'CHUC_VU_DOAN'
    end
    object qryConfigNGAY_VAO_CDOAN: TSmallintField
      FieldName = 'NGAY_VAO_CDOAN'
    end
    object qryConfigCHUC_VU_CDOAN: TSmallintField
      FieldName = 'CHUC_VU_CDOAN'
    end
    object qryConfigNGAY_VAO_CONGTY: TSmallintField
      FieldName = 'NGAY_VAO_CONGTY'
    end
    object qryConfigTRINHDO_KYNANG: TSmallintField
      FieldName = 'TRINHDO_KYNANG'
    end
    object qryConfigTRINHDO_NGOAINGU: TSmallintField
      FieldName = 'TRINHDO_NGOAINGU'
    end
    object qryConfigTRINHDO_CHUYENMON: TSmallintField
      FieldName = 'TRINHDO_CHUYENMON'
    end
    object qryConfigTRINHDO_HOCVAN: TSmallintField
      FieldName = 'TRINHDO_HOCVAN'
    end
    object qryConfigTRINHDO_VANHOA: TSmallintField
      FieldName = 'TRINHDO_VANHOA'
    end
    object qryConfigSOTRUONG_CTAC: TSmallintField
      FieldName = 'SOTRUONG_CTAC'
    end
    object qryConfigNAM_TOTNGHIEP: TSmallintField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryConfigNGHE_NGHIEP: TSmallintField
      FieldName = 'NGHE_NGHIEP'
    end
    object qryConfigCONGVIEC_LAUNHAT: TSmallintField
      FieldName = 'CONGVIEC_LAUNHAT'
    end
  end
  object dsConfig: TDataSource
    DataSet = qryConfig
    Left = 8
    Top = 64
  end
end
