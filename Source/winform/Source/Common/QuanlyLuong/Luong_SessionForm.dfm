inherited frmLuongSession: TfrmLuongSession
  Left = 237
  Top = 230
  Width = 722
  Height = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 403
    Width = 714
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 714
    Height = 403
    inherited frameToolbar1: TframeToolbar
      Top = 368
    end
    inherited dxdbgMain: TdxDBGrid
      HeaderMinRowCount = 2
      KeyField = 'S_MA'
      Filter.Criteria = {00000000}
      object dxdbgMainS_MA: TdxDBGridSpinColumn
        Alignment = taCenter
        Caption = 'STT'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_MA'
        MinValue = 1.000000000000000000
        MaxValue = 100.000000000000000000
      end
      object dxdbgMainS_TIEUDE: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873' session'
        HeaderAlignment = taCenter
        Width = 322
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_TIEUDE'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ session'
      end
      object dxdbgMainS_REFRESH: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'Refresh d'#7919' li'#7879'u sau khi t'#237'nh to'#225'n'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_REFRESH'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Refresh d+Hu8 li+Hsc-u sau khi t+AO0-nh to+AOE-n'
      end
      object dxdbgMainS_EXEC_BSCRIPT: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'Th'#7921'c thi B-Script'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_EXEC_BSCRIPT'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Th+HvE-c thi B-Script'
      end
      object dxdbgMainS_EXEC_AFTER: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'Th'#7921'c thi A-Script'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 60
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
      Top = 169
      Width = 289
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
          Width = 266
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
          Width = 266
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
        Caption = 'ElPageControl1'
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
        Caption = 'Danh s'#225'ch session t'#237'nh to'#225'n '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 96
  end
  inherited qryList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PA_MA'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM HR_LUONG_SESSION'
      'WHERE'
      '   PA_MA = :OLD_PA_MA AND'
      '   S_MA = :OLD_S_MA')
    EditSQL.Strings = (
      'UPDATE HR_LUONG_SESSION SET'
      '   PA_MA = :PA_MA, /*PK*/'
      '   S_MA = :S_MA, /*PK*/'
      '   S_TIEUDE = :S_TIEUDE,'
      '   S_BEFORE_SCRIPT = :S_BEFORE_SCRIPT,'
      '   S_AFTER_SCRIPT = :S_AFTER_SCRIPT,'
      '   S_REFRESH = :S_REFRESH,'
      '   S_EXEC_BSCRIPT = :S_EXEC_BSCRIPT,'
      '   S_EXEC_AFTER = :S_EXEC_AFTER'
      'WHERE'
      '   PA_MA = :OLD_PA_MA AND'
      '   S_MA = :OLD_S_MA')
    InsertSQL.Strings = (
      'INSERT INTO HR_LUONG_SESSION('
      '   PA_MA, /*PK*/'
      '   S_MA, /*PK*/'
      '   S_TIEUDE,'
      '   S_BEFORE_SCRIPT,'
      '   S_AFTER_SCRIPT,'
      '   S_REFRESH,'
      '   S_EXEC_BSCRIPT,'
      '   S_EXEC_AFTER)'
      'VALUES ('
      '   :PA_MA,'
      '   :S_MA,'
      '   :S_TIEUDE,'
      '   :S_BEFORE_SCRIPT,'
      '   :S_AFTER_SCRIPT,'
      '   :S_REFRESH,'
      '   :S_EXEC_BSCRIPT,'
      '   :S_EXEC_AFTER)')
    BeforeOpen = qryListBeforeOpen
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT PA_MA'
      '     , S_MA'
      '     , S_TIEUDE'
      '     , S_BEFORE_SCRIPT'
      '     , S_AFTER_SCRIPT'
      '     , S_REFRESH'
      '     , S_EXEC_BSCRIPT'
      '     , S_EXEC_AFTER'
      'FROM HR_LUONG_SESSION'
      'where PA_MA=:PA_MA')
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
    object qryListS_EXEC_BSCRIPT: TIntegerField
      FieldName = 'S_EXEC_BSCRIPT'
    end
    object qryListS_EXEC_AFTER: TIntegerField
      FieldName = 'S_EXEC_AFTER'
    end
    object qryListS_MA: TIntegerField
      FieldName = 'S_MA'
      Required = True
    end
    object qryListPA_MA: TIntegerField
      FieldName = 'PA_MA'
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
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ct_session'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select count(*) SL_CONGTHUC'
      'from hr_luong_congthuc '
      'where hr_luong_congthuc.pa_ma = :PA_MA'
      'and hr_luong_congthuc.ct_session = :ct_session')
    FieldOptions = []
    Left = 248
    Top = 80
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
        Name = 'PA_MA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'S_MA'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update hr_luong_session '
      'set hr_luong_session.s_ma = hr_luong_session.s_ma -1'
      'where hr_luong_session.pa_ma = :PA_MA'
      'and hr_luong_session.s_ma > :S_MA')
    FieldOptions = []
    Left = 280
    Top = 80
  end
end
