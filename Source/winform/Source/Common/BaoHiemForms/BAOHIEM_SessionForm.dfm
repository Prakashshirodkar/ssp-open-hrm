inherited frmBAOHIEM_Session: TfrmBAOHIEM_Session
  Left = 357
  Top = 193
  Width = 686
  Height = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 433
    Width = 678
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 678
    Height = 433
    inherited frameToolbar1: TframeToolbar
      Top = 398
    end
    inherited dxdbgMain: TdxDBGrid
      Width = 568
      Height = 165
      HeaderMinRowCount = 2
      KeyField = 'S_MA'
      Filter.Criteria = {00000000}
      object dxdbgMainS_MA: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'STT'
        HeaderAlignment = taCenter
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_MA'
      end
      object dxdbgMainS_TIEUDE: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873
        HeaderAlignment = taCenter
        Width = 375
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_TIEUDE'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ'
      end
      object dxdbgMainS_REFRESH: TdxDBGridCheckColumn
        Caption = 'Refresh d'#7919' li'#7879'u sau khi t'#237'nh to'#225'n'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_REFRESH'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Refresh d+Hu8 li+Hsc-u sau khi t+AO0-nh to+AOE-n'
      end
      object dxdbgMainS_EXEC_BEFORE: TdxDBGridCheckColumn
        Caption = 'Th'#7921'c thi B-Script'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_EXEC_BEFORE'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Th+HvE-c thi B-Script'
      end
      object dxdbgMainS_EXEC_AFTER: TdxDBGridCheckColumn
        Caption = 'Th'#7921'c thi A-Script'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_EXEC_AFTER'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Th+HvE-c thi A-Script'
      end
    end
    object pageScript: TElPageControl [2]
      Left = 10
      Top = 199
      Width = 694
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
      TabPosition = etpRight
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabBScript
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 5
      object tabBScript: TElTabSheet
        PageControl = pageScript
        ImageIndex = -1
        TabVisible = True
        Caption = 'Before Script'
        object dxDBMemo1: TdxDBMemo
          Left = 0
          Top = 0
          Width = 671
          Align = alClient
          TabOrder = 0
          DataField = 'S_BEFORE_SCRIPT'
          DataSource = dsList
          StyleController = dmMain.StyleController
          Height = 193
        end
      end
      object tabAScript: TElTabSheet
        PageControl = pageScript
        ImageIndex = -1
        TabVisible = True
        Caption = 'After Script'
        Visible = False
        object dxDBMemo2: TdxDBMemo
          Left = 0
          Top = 0
          Width = 671
          Align = alClient
          TabOrder = 0
          DataField = 'S_AFTER_SCRIPT'
          DataSource = dsList
          StyleController = dmMain.StyleController
          Height = 193
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem3: TdxLayoutItem [1]
        ShowCaption = False
        Control = pageScript
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
        Caption = 'Danh s'#225'ch session t'#237'nh to'#225'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 112
  end
  inherited qryList: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'MAU_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_SESSION'
      'WHERE'
      '   MAU_ID = :OLD_MAU_ID AND'
      '   S_MA = :OLD_S_MA')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_SESSION SET'
      '   MAU_ID = :MAU_ID, /*PK*/'
      '   S_MA = :S_MA, /*PK*/'
      '   S_TIEUDE = :S_TIEUDE,'
      '   S_BEFORE_SCRIPT = :S_BEFORE_SCRIPT,'
      '   S_AFTER_SCRIPT = :S_AFTER_SCRIPT,'
      '   S_REFRESH = :S_REFRESH,'
      '   S_EXEC_BEFORE = :S_EXEC_BEFORE,'
      '   S_EXEC_AFTER = :S_EXEC_AFTER'
      'WHERE'
      '   MAU_ID = :OLD_MAU_ID AND'
      '   S_MA = :OLD_S_MA')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_SESSION('
      '   MAU_ID, /*PK*/'
      '   S_MA, /*PK*/'
      '   S_TIEUDE,'
      '   S_BEFORE_SCRIPT,'
      '   S_AFTER_SCRIPT,'
      '   S_REFRESH,'
      '   S_EXEC_BEFORE,'
      '   S_EXEC_AFTER)'
      'VALUES ('
      '   :MAU_ID,'
      '   :S_MA,'
      '   :S_TIEUDE,'
      '   :S_BEFORE_SCRIPT,'
      '   :S_AFTER_SCRIPT,'
      '   :S_REFRESH,'
      '   :S_EXEC_BEFORE,'
      '   :S_EXEC_AFTER)')
    BeforeOpen = qryListBeforeOpen
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT MAU_ID'
      '     , S_MA'
      '     , S_TIEUDE'
      '     , S_BEFORE_SCRIPT'
      '     , S_AFTER_SCRIPT'
      '     , S_REFRESH'
      '     , S_EXEC_BEFORE'
      '     , S_EXEC_AFTER'
      'FROM HR_BAOHIEM_SESSION'
      'where MAU_ID=:MAU_ID')
    object qryListS_MA: TIntegerField
      FieldName = 'S_MA'
      Required = True
    end
    object qryListS_TIEUDE: TWideStringField
      FieldName = 'S_TIEUDE'
      Required = True
      Size = 126
    end
    object qryListS_BEFORE_SCRIPT: TWideStringField
      FieldName = 'S_BEFORE_SCRIPT'
      Size = 3072
    end
    object qryListS_AFTER_SCRIPT: TWideStringField
      FieldName = 'S_AFTER_SCRIPT'
      Size = 3072
    end
    object qryListS_REFRESH: TIntegerField
      FieldName = 'S_REFRESH'
    end
    object qryListS_EXEC_BEFORE: TIntegerField
      FieldName = 'S_EXEC_BEFORE'
    end
    object qryListS_EXEC_AFTER: TIntegerField
      FieldName = 'S_EXEC_AFTER'
    end
    object qryListMAU_ID: TIntegerField
      FieldName = 'MAU_ID'
      Required = True
    end
  end
  inherited bmMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
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
  end
  object qryKTXoa: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MAU_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ct_session'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select count(*) SL_CONGTHUC'
      'from hr_baohiem_congthuc'
      'where hr_baohiem_congthuc.mau_id  = :MAU_ID'
      'and hr_baohiem_congthuc.ct_session = :ct_session')
    FieldOptions = []
    Left = 72
    Top = 112
    object qryKTXoaSL_CONGTHUC: TIntegerField
      FieldName = 'SL_CONGTHUC'
      ReadOnly = True
      Required = True
    end
  end
  object qryUpdate: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MAU_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'S_MA'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update hr_baohiem_session'
      'set hr_baohiem_session.s_ma = hr_baohiem_session.s_ma -1'
      'where hr_baohiem_session.mau_id = :MAU_ID'
      'and hr_baohiem_session.s_ma > :S_MA')
    FieldOptions = []
    Left = 104
    Top = 112
  end
end
