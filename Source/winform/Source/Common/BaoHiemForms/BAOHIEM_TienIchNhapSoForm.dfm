inherited frmBAOHIEM_TienIchNhapSo: TfrmBAOHIEM_TienIchNhapSo
  Left = 505
  Top = 69
  BorderStyle = bsToolWindow
  ClientHeight = 244
  ClientWidth = 356
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 225
    Width = 356
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 356
    Height = 225
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxUpdateAll: TdxCheckEdit
      Left = 109
      Top = 153
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      StyleController = dmMain.StyleController
      OnChange = dxUpdateAllChange
    end
    object dxUpdateSelected: TdxCheckEdit
      Left = 109
      Top = 176
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnChange = dxUpdateSelectedChange
    end
    object ElPopupButton1: TElPopupButton
      Left = 94
      Top = 206
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 62
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'C'#7853'p nh'#7853't'
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acCapnhat
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 169
      Top = 206
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 67
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'ng'
      TabOrder = 7
      Color = 15466238
      ParentColor = False
      Action = acDong
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxChoncot: TdxImageEdit
      Left = 109
      Top = 28
      Width = 216
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxChoncotChange
      DropDownRows = 15
    end
    object dxTuSo: TdxEdit
      Left = 109
      Top = 74
      Width = 216
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      StyleController = dmMain.StyleController
    end
    object dxDenSo: TdxEdit
      Left = 109
      Top = 97
      Width = 236
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      StyleController = dmMain.StyleController
    end
    object dxNumValue: TdxCalcEdit
      Left = 109
      Top = 51
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      Text = '0'
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n nh'#7853'p li'#7879'u'
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'Ch'#7885'n c'#7897't c'#7853'p nh'#7853't'
          Control = dxChoncot
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Caption = 'S'#7889' s'#7893' '#273#432#7907'c c'#7845'p'
          Control = dxNumValue
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'T'#7915' s'#7889
          Control = dxTuSo
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = #272#7871'n s'#7889
          Control = dxDenSo
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n c'#7853'p nh'#7853't'
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'C'#7853'p nh'#7853't t'#7845't c'#7843
          Control = dxUpdateAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Theo NV '#273#432#7907'c ch'#7885'n'
          Control = dxUpdateSelected
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        Caption = 'New Group'
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton2
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
        Caption = 'Ti'#7879'n '#237'ch nh'#7853'p nhanh s'#7893' BHXH'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MAU_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'MAU_ID'
      'CT_MA')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MAU_ID'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_BIEUTHUC'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_THUTU_TINH'
      '     , CT_THUTU_HIENTHI'
      '     , CT_SESSION'
      '     , CT_WIDTH'
      'FROM HR_BAOHIEM_CONGTHUC'
      'where '
      '  CT_HINHTHUC_NHAPLIEU<>'#39'TINHTOAN'#39' and'
      '  CT_HINHTHUC_NHAPLIEU<>'#39'TUDONG_CAPNHAT'#39' and  '
      '  MAU_ID=:MAU_ID and'
      '  CT_KIEUDULIEU = '#39'VARCHAR'#39)
    FieldOptions = []
    Left = 8
    Top = 48
    object qryCongthucMAU_ID: TIntegerField
      FieldName = 'MAU_ID'
      Required = True
    end
    object qryCongthucCT_MA: TIntegerField
      FieldName = 'CT_MA'
      Required = True
    end
    object qryCongthucCT_KYHIEU: TWideStringField
      FieldName = 'CT_KYHIEU'
      Required = True
      Size = 63
    end
    object qryCongthucCT_TIEUDE: TWideStringField
      FieldName = 'CT_TIEUDE'
      Required = True
      Size = 126
    end
    object qryCongthucCT_KIEUDULIEU: TWideStringField
      FieldName = 'CT_KIEUDULIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_BIEUTHUC: TWideStringField
      FieldName = 'CT_BIEUTHUC'
      Size = 3072
    end
    object qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_THUTU_TINH: TIntegerField
      FieldName = 'CT_THUTU_TINH'
    end
    object qryCongthucCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
    object qryCongthucCT_SESSION: TIntegerField
      FieldName = 'CT_SESSION'
    end
    object qryCongthucCT_WIDTH: TIntegerField
      FieldName = 'CT_WIDTH'
      Required = True
    end
  end
  object dsCongthuc: TDataSource
    DataSet = qryCongthuc
    Left = 8
    Top = 80
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 160
    Top = 72
    object acCapnhat: TAction
      Caption = 'acCapnhat'
      ImageIndex = 62
      OnExecute = acCapnhatExecute
      OnUpdate = acCapnhatUpdate
    end
    object acDong: TAction
      Caption = 'acDong'
      ImageIndex = 67
      OnExecute = acDongExecute
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 152
    Top = 120
  end
end
