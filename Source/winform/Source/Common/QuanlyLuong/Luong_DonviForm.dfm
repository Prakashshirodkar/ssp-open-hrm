inherited frmLuong_Donvi: TfrmLuong_Donvi
  Left = 173
  Top = 191
  Width = 853
  Height = 512
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 459
    Width = 845
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 845
    Height = 459
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    inline frameToolbar1: TframeToolbar
      Left = 2
      Top = 411
      Width = 760
      Height = 46
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 977
        end
        inherited btnHelp: TElPopupButton
          Left = 847
        end
        inherited btnChoose: TElPopupButton
          Left = 917
        end
        inherited btnDesign: TElPopupButton
          Left = 637
        end
        inherited btnPreview: TElPopupButton
          Left = 557
          Width = 80
          ImageIndex = 57
          Caption = 'C'#7853'p nh'#7853't'
          Action = acCapnhatDulieu
        end
        inherited btnPrint: TElPopupButton
          Width = 80
          ImageIndex = 62
          Caption = 'Ph'#225't sinh'
          Action = acPhatsinhDulieu
        end
        inherited btnGenerate: TElPopupButton
          Left = 762
        end
        inherited btnRelation: TElPopupButton
          Left = 737
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 712
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
            inherited dxLayoutControl1Group3: TdxLayoutGroup
              Visible = True
              inherited dxLayoutControl1Item8: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item7: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    object tlData: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
          DisableCustomizing = True
          DisableDragging = True
          Fixed = bfLeft
        end
        item
        end>
      DefaultLayout = False
      HeaderMinRowCount = 2
      HeaderPanelRowCount = 1
      KeyField = 'MA_DONVI'
      ParentField = 'P_DEPT_NO'
      TabOrder = 1
      DataSource = dsData
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      ShowGrid = True
      TreeLineColor = clGrayText
      OnCustomDrawCell = tlDataCustomDrawCell
      object tlDataDEPT_NAME: TdxDBTreeListColumn
        Caption = #272#417'n v'#7883
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 234
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object tlDataENDED_DATE: TdxDBTreeListDateColumn
        Caption = 'Ng'#224'y k'#7871't th'#250'c'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDED_DATE'
        Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
      end
    end
    object dxViewInvalidDept: TdxCheckEdit
      Left = 137
      Top = 388
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      Alignment = taRightJustify
      StyleController = dmMain.StyleController
      OnChange = dxViewInvalidDeptChange
      StoredValues = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item3: TdxLayoutItem
        AutoAligns = []
        AlignVert = avBottom
        Caption = 'Xem ph'#242'ng ban h'#7871't hi'#7879'u l'#7921'c'
        Control = dxViewInvalidDept
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = tlData
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
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
        Caption = 'Ti'#7879'n '#237'ch nh'#7853'p li'#7879'u theo '#272#417'n v'#7883
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 40
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 80
    Top = 200
  end
  object qryCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CT_HINHTHUC'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PA_MA'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_THUTU_HIENTHI'
      'FROM HR_LUONG_CONGTHUC'
      'where PA_MA=:PA_MA and'
      '      CT_HINHTHUC_NHAPLIEU=:CT_HINHTHUC'
      'order by CT_THUTU_HIENTHI')
    FieldOptions = []
    Left = 120
    Top = 168
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
    object qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
  end
  object ActionList: TActionList
    Images = dmMain.imgAction
    Left = 88
    Top = 72
    object acPhatsinhDulieu: TAction
      Caption = 'acPhatsinhDulieu'
      ImageIndex = 62
      OnExecute = acPhatsinhDulieuExecute
    end
    object acXemdulieu: TAction
      Caption = 'acXemdulieu'
      ImageIndex = 6
      OnExecute = acXemdulieuExecute
    end
    object acInitQuery: TAction
      Caption = 'acInitQuery'
      OnExecute = acInitQueryExecute
    end
    object acCapnhatDulieu: TAction
      Caption = 'acCapnhatDulieu'
      ImageIndex = 57
      OnExecute = acCapnhatDulieuExecute
      OnUpdate = acCapnhatDulieuUpdate
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
    Top = 168
  end
  object qryData: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 80
    Top = 168
    object qryDataMA_DONVI: TWideStringField
      FieldName = 'MA_DONVI'
      Required = True
      Size = 15
    end
    object qryDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDataP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDataENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
  end
end
