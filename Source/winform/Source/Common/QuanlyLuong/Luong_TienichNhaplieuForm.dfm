inherited frmLuong_TienichNhaplieu: TfrmLuong_TienichNhaplieu
  Left = 506
  Top = 260
  BorderStyle = bsToolWindow
  ClientHeight = 209
  ClientWidth = 361
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 361
    Height = 190
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
    object dxTextValue: TdxEdit
      Left = 109
      Top = 51
      Width = 294
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
    end
    object dxDateValue: TdxDateEdit
      Left = 109
      Top = 74
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object dxNumValue: TdxCalcEdit
      Left = 109
      Top = 97
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      Text = '0'
    end
    object ElPopupButton1: TElPopupButton
      Left = 97
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
      Left = 172
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
    object dxChoncotluong: TdxImageEdit
      Left = 109
      Top = 28
      Width = 221
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxChoncotluongChange
      DropDownRows = 16777231
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Ch'#7885'n c'#7897't l'#432#417'ng'
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'Ch'#7885'n c'#7897't l'#432#417'ng'
          Control = dxChoncotluong
          ControlOptions.ShowBorder = False
        end
        object dxlcTextValue: TdxLayoutItem
          Caption = 'Gi'#225' tr'#7883' nh'#7853'p'
          Visible = False
          Control = dxTextValue
          ControlOptions.ShowBorder = False
        end
        object dxlcDateValue: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Gi'#225' tr'#7883' nh'#7853'p'
          Visible = False
          Control = dxDateValue
          ControlOptions.ShowBorder = False
        end
        object dxlcNumValue: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Gi'#225' tr'#7883' nh'#7853'p'
          Visible = False
          Control = dxNumValue
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
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
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avBottom
        Caption = 'New Group'
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited sbMain: TElStatusBar
    Top = 190
    Width = 361
  end
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Ti'#7879'n '#237'ch nh'#7853'p li'#7879'u nhanh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 488
  end
  object dsCongthuc: TDataSource
    DataSet = qryCongthuc
    Left = 24
    Top = 168
  end
  object qryCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_LUONG_CONGTHUC.CT_MA'
      'HR_LUONG_CONGTHUC.PA_MA')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PA_MA'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_BIEUTHUC'
      '     , CT_NHAPTRUCTIEP'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_TUDONG_CAPNHAT'
      '     , CT_THUTU_TINH'
      '     , CT_THUTU_HIENTHI'
      '     , CT_SESSION'
      '     , CT_WIDTH'
      'FROM HR_LUONG_CONGTHUC'
      'where '
      '  CT_HINHTHUC_NHAPLIEU<>'#39'TINHTOAN'#39' and'
      '  CT_HINHTHUC_NHAPLIEU<>'#39'TUDONG_CAPNHAT'#39' and  '
      '  PA_MA=:PA_MA')
    FieldOptions = []
    Left = 24
    Top = 136
    object qryCongthucPA_MA: TIntegerField
      FieldName = 'PA_MA'
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
    object qryCongthucCT_NHAPTRUCTIEP: TIntegerField
      FieldName = 'CT_NHAPTRUCTIEP'
    end
    object qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_TUDONG_CAPNHAT: TIntegerField
      FieldName = 'CT_TUDONG_CAPNHAT'
    end
    object qryCongthucCT_THUTU_TINH: TIntegerField
      FieldName = 'CT_THUTU_TINH'
    end
    object qryCongthucCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
    object qryCongthucCT_SESSION: TIntegerField
      FieldName = 'CT_SESSION'
      Required = True
    end
    object qryCongthucCT_WIDTH: TIntegerField
      FieldName = 'CT_WIDTH'
    end
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
