inherited frmLuong_Vitri: TfrmLuong_Vitri
  Left = 210
  Top = 227
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
      TabOrder = 1
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
      KeyField = 'MA_VITRI'
      ParentField = 'P_POSITION_NO'
      TabOrder = 0
      DataSource = dsData
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      ShowGrid = True
      TreeLineColor = clGrayText
      object tlDataDEPT_NAME: TdxDBTreeListColumn
        Caption = 'V'#7883' tr'#237' c'#244'ng t'#225'c'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 234
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'POSITION_NAME'
        Caption_UTF7 = 'V+Hss tr+AO0 c+APQ-ng t+AOE-c'
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
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
        Caption = 'Ti'#7879'n '#237'ch nh'#7853'p li'#7879'u theo V'#7883' tr'#237' c'#244'ng t'#225'c'
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
    SQL.Strings = (
      'SELECT MA_VITRI'
      '     , TITLE_NAME||'#39'-'#39'||DEPT_NAME POSITION_NAME'
      '     , P_POSITION_NO'
      'FROM WP_AAA'
      'left JOIN HR_POSITION on POSITION_NO=MA_VITRI'
      
        'left JOIN HR_DEPARTMENT on HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEP' +
        'T_NO'
      'left JOIN HR_TITLE on HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO')
    FieldOptions = []
    Left = 80
    Top = 168
    object qryDataMA_VITRI: TWideStringField
      FieldName = 'MA_VITRI'
      Required = True
      Size = 15
    end
    object qryDataPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 255
    end
    object qryDataP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
  end
end
