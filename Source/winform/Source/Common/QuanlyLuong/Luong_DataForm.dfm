inherited frmLuong_Data: TfrmLuong_Data
  Left = 206
  Top = 247
  Width = 855
  Height = 488
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 435
    Width = 847
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 847
    Height = 435
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    inline frameToolbar1: TframeToolbar
      Left = 2
      Top = 387
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
      TabOrder = 4
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnPrint: TElPopupButton
          ImageIndex = 62
          Caption = 'Ph'#225't sinh'
          Action = acPhatsinhDulieu
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
      HeaderPanelRowCount = 1
      KeyField = 'MA_DONVI'
      ParentField = 'P_DEPT_NO'
      TabOrder = 0
      DataSource = dsData
      LookAndFeel = lfFlat
      TreeLineColor = clGrayText
      object tlDataDEPT_NAME: TdxDBTreeListColumn
        Caption = #272#417'n v'#7883
        Color = 10921727
        DisableCaption = True
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
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
        Caption = 'Ti'#7879'n '#237'ch nh'#7853'p li'#7879'u'
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
  object qryData: TIBOQuery
    Params = <>
    DatabaseName = 
      'H:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\05_Hienthuc\Database\SSP' +
      '_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_DONVI'
      '      , DEPT_NAME'
      '      , P_DEPT_NO'
      'from WD_AAA'
      'left JOIN HR_DEPARTMENT on DEPT_NO=MA_DONVI')
    FieldOptions = []
    Left = 80
    Top = 168
  end
  object qryCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end>
    DatabaseName = 
      'H:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\05_Hienthuc\Database\SSP' +
      '_HRM_DB_30.GDB'
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
      'where PA_MA=:PA_MA'
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
    object acChuanbiThamso: TAction
      Caption = 'acChuanbiThamso'
      OnExecute = acChuanbiThamsoExecute
    end
    object acPhatsinhDulieu: TAction
      Caption = 'acPhatsinhDulieu'
      ImageIndex = 62
    end
  end
  object qryPhatsinh: TIBOQuery
    Params = <>
    DatabaseName = 
      'H:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\05_Hienthuc\Database\SSP' +
      '_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 152
    Top = 168
  end
end
