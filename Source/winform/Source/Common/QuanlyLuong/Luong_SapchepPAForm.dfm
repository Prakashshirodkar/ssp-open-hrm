inherited frmLuong_SaochepPA: TfrmLuong_SaochepPA
  Left = 453
  Top = 233
  Width = 473
  Height = 329
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object dxtlMenuList: TdxDBTreeList [0]
    Left = 432
    Top = 232
    Width = 169
    Height = 73
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'MENU_ID'
    ParentField = 'P_MENU_ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnDblClick = dxtlMenuListDblClick
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = frmLuong_Dinhnghia.dsMenuList
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HideFocusRect = True
    HideSelection = True
    ImageIndexFieldName = 'MENU_ICON_INDEX'
    Images = dmMain.imgMenuList
    LookAndFeel = lfFlat
    OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
    OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    ShowHeader = False
    TreeLineColor = clMenuHighlight
    TreeLineStyle = tlSolid
    object dxtlMenuListMENU_TITLE: TdxDBTreeListColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MENU_TITLE'
    end
    object dxtlMenuListMENU_ICON_INDEX: TdxDBTreeListMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MENU_ICON_INDEX'
    end
  end
  inherited sbMain: TElStatusBar
    Top = 276
    Width = 465
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 465
    Height = 276
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxPA_Target: TdxEdit
      Left = 89
      Top = 28
      Width = 400
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      ReadOnly = True
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object dxPA_Master: TdxPopupEdit
      Left = 89
      Top = 84
      Width = 400
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnCloseUp = dxPA_MasterCloseUp
      OnInitPopup = dxPA_MasterInitPopup
    end
    object memoInfo: TElMemoCombo
      Left = 3
      Top = 115
      Width = 358
      Height = 138
      Cursor = crIBeam
      VertScrollBarStyles.ShowTrackHint = False
      VertScrollBarStyles.Width = 17
      VertScrollBarStyles.ButtonSize = 17
      VertScrollBarStyles.UseXPThemes = False
      HorzScrollBarStyles.ShowTrackHint = False
      HorzScrollBarStyles.Width = 17
      HorzScrollBarStyles.ButtonSize = 17
      HorzScrollBarStyles.UseXPThemes = False
      UseCustomScrollBars = True
      NotifyUserChangeOnly = True
      AltButtonThinFrame = True
      DropHeight = 80
      DropWidth = 200
      Dropped = False
      MemoAlignment = taLeftJustify
      MemoColor = clWindow
      MemoFont.Charset = DEFAULT_CHARSET
      MemoFont.Color = clWindowText
      MemoFont.Height = -11
      MemoFont.Name = 'Tahoma'
      MemoFont.Style = []
      MemoMaxLength = 0
      MemoScrollBars = ssVertical
      MemoWordWrap = True
      MemoActiveBorderType = fbtSunken
      MemoFlatScrollBars = False
      RightMargin = 1
      RTLContent = False
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      Transparent = False
      WantTabs = True
      HideSelection = False
      WordWrap = True
      ScrollBars = ssHorizontal
      Multiline = True
      Align = alClient
      ActiveBorderType = fbtFlat
      BorderStyle = bsSingle
      ButtonColor = clBtnFace
      ButtonWidth = 15
      Ctl3D = True
      DragMode = dmAutomatic
      Enabled = False
      ParentColor = False
      ParentCtl3D = False
      ReadOnly = True
      DockOrientation = doVertical
      DoubleBuffered = False
    end
    object dxBar: TdxfProgressBar
      Left = 49
      Top = 251
      Width = 379
      Height = 23
      BarBevelOuter = bvNone
      BeginColor = clLime
      BevelOuter = bvLowered
      Color = 15466238
      EndColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Max = 100
      Min = 0
      Orientation = orHorizontal
      ParentColor = False
      ParentFont = False
      Position = 0
      ShowTextStyle = stsPercent
      Step = 1
      Style = sRectangles
      TabOrder = 5
      TransparentGlyph = True
    end
    object ElPopupButton1: TElPopupButton
      Left = 383
      Top = 249
      Width = 80
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acDong
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 303
      Top = 249
      Width = 80
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
      Caption = 'Th'#7921'c hi'#7879'n'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acThuchien
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'Ph'#432#417'ng '#225'n l'#432#417'ng '#273#432#7907'c sao ch'#233'p'
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'T'#234'n ph'#432#417'ng '#225'n'
          Control = dxPA_Target
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Ph'#432#417'ng '#225'n l'#432#417'ng ch'#7885'n sao ch'#233'p'
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'T'#234'n ph'#432#417'ng '#225'n'
          Control = dxPA_Master
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = memoInfo
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avBottom
          Caption = 'Ti'#7871'n tr'#236'nh'
          Control = dxBar
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
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
        Caption = 'Ti'#7879'n '#237'ch sao ch'#233'p ph'#432#417'ng '#225'n l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 160
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 104
    Top = 96
    object acThuchien: TAction
      Caption = 'acThuchien'
      ImageIndex = 62
      OnExecute = acThuchienExecute
      OnUpdate = acThuchienUpdate
    end
    object acDong: TAction
      Caption = 'acDong'
      ImageIndex = 67
      OnExecute = acDongExecute
    end
  end
  object qryMasterSession: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_LUONG_SESSION.PA_MA'
      'HR_LUONG_SESSION.S_MA')
    Unicode = True
    RecordCountAccurate = True
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
      'where PA_MA=:PA_MA'
      'order by S_MA')
    FieldOptions = []
    Left = 22
    Top = 154
    object qryMasterSessionPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qryMasterSessionS_MA: TIntegerField
      FieldName = 'S_MA'
      Required = True
    end
    object qryMasterSessionS_TIEUDE: TWideStringField
      FieldName = 'S_TIEUDE'
      Required = True
      Size = 126
    end
    object qryMasterSessionS_BEFORE_SCRIPT: TWideStringField
      FieldName = 'S_BEFORE_SCRIPT'
      Size = 3072
    end
    object qryMasterSessionS_AFTER_SCRIPT: TWideStringField
      FieldName = 'S_AFTER_SCRIPT'
      Size = 3072
    end
    object qryMasterSessionS_REFRESH: TIntegerField
      FieldName = 'S_REFRESH'
    end
    object qryMasterSessionS_EXEC_BSCRIPT: TIntegerField
      FieldName = 'S_EXEC_BSCRIPT'
    end
    object qryMasterSessionS_EXEC_AFTER: TIntegerField
      FieldName = 'S_EXEC_AFTER'
    end
  end
  object dsMasterSession: TDataSource
    DataSet = qryMasterSession
    Left = 22
    Top = 186
  end
  object qryMasterCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PA_MA'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    GeneratorLinks.Strings = (
      'CT_MA=gen_hr_luong_congthuc_id')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_LUONG_CONGTHUC.CT_MA'
      'HR_LUONG_CONGTHUC.PA_MA')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_LUONG_CONGTHUC.PA_MA'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_BIEUTHUC'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_TUDONG_CAPNHAT'
      '     , CT_THUTU_TINH'
      '     , CT_THUTU_HIENTHI'
      '     , CT_SESSION'
      '     , CT_WIDTH'
      'FROM HR_LUONG_CONGTHUC'
      'left JOIN HR_LUONG_SESSION on '
      '    HR_LUONG_CONGTHUC.PA_MA=HR_LUONG_SESSION.PA_MA and  '
      '    CT_SESSION=S_MA'
      'where HR_LUONG_CONGTHUC.PA_MA=:PA_MA '
      'order by CT_SESSION,CT_THUTU_HIENTHI')
    FieldOptions = []
    Left = 62
    Top = 154
    object qryMasterCongthucPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qryMasterCongthucCT_MA: TIntegerField
      FieldName = 'CT_MA'
      Required = True
    end
    object qryMasterCongthucCT_KYHIEU: TWideStringField
      FieldName = 'CT_KYHIEU'
      Required = True
      Size = 63
    end
    object qryMasterCongthucCT_TIEUDE: TWideStringField
      FieldName = 'CT_TIEUDE'
      Required = True
      Size = 126
    end
    object qryMasterCongthucCT_KIEUDULIEU: TWideStringField
      FieldName = 'CT_KIEUDULIEU'
      Required = True
      Size = 30
    end
    object qryMasterCongthucCT_BIEUTHUC: TWideStringField
      FieldName = 'CT_BIEUTHUC'
      Size = 3072
    end
    object qryMasterCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryMasterCongthucCT_TUDONG_CAPNHAT: TIntegerField
      FieldName = 'CT_TUDONG_CAPNHAT'
    end
    object qryMasterCongthucCT_THUTU_TINH: TIntegerField
      FieldName = 'CT_THUTU_TINH'
    end
    object qryMasterCongthucCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
    object qryMasterCongthucCT_SESSION: TIntegerField
      FieldName = 'CT_SESSION'
      Required = True
    end
    object qryMasterCongthucCT_WIDTH: TIntegerField
      FieldName = 'CT_WIDTH'
    end
  end
  object dsMasterCongthuc: TDataSource
    DataSet = qryMasterCongthuc
    Left = 62
    Top = 186
  end
  object qryTargetCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PA_MA'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_LUONG_CONGTHUC'
      'WHERE'
      '   CT_MA = :OLD_CT_MA AND'
      '   PA_MA = :OLD_PA_MA')
    EditSQL.Strings = (
      'UPDATE HR_LUONG_CONGTHUC SET'
      '   CT_MA = :CT_MA, /*PK*/'
      '   PA_MA = :PA_MA, /*PK*/'
      '   CT_KYHIEU = :CT_KYHIEU,'
      '   CT_TIEUDE = :CT_TIEUDE,'
      '   CT_KIEUDULIEU = :CT_KIEUDULIEU,'
      '   CT_BIEUTHUC = :CT_BIEUTHUC,'
      '   CT_HINHTHUC_NHAPLIEU = :CT_HINHTHUC_NHAPLIEU,'
      '   CT_TUDONG_CAPNHAT = :CT_TUDONG_CAPNHAT,'
      '   CT_THUTU_TINH = :CT_THUTU_TINH,'
      '   CT_THUTU_HIENTHI = :CT_THUTU_HIENTHI,'
      '   CT_SESSION = :CT_SESSION,'
      '   CT_WIDTH = :CT_WIDTH'
      'WHERE'
      '   CT_MA = :OLD_CT_MA AND'
      '   PA_MA = :OLD_PA_MA')
    GeneratorLinks.Strings = (
      'CT_MA=gen_hr_luong_congthuc_id')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_LUONG_CONGTHUC('
      '   CT_MA, /*PK*/'
      '   PA_MA, /*PK*/'
      '   CT_KYHIEU,'
      '   CT_TIEUDE,'
      '   CT_KIEUDULIEU,'
      '   CT_BIEUTHUC,'
      '   CT_HINHTHUC_NHAPLIEU,'
      '   CT_TUDONG_CAPNHAT,'
      '   CT_THUTU_TINH,'
      '   CT_THUTU_HIENTHI,'
      '   CT_SESSION,'
      '   CT_WIDTH)'
      'VALUES ('
      '   :CT_MA,'
      '   :PA_MA,'
      '   :CT_KYHIEU,'
      '   :CT_TIEUDE,'
      '   :CT_KIEUDULIEU,'
      '   :CT_BIEUTHUC,'
      '   :CT_HINHTHUC_NHAPLIEU,'
      '   :CT_TUDONG_CAPNHAT,'
      '   :CT_THUTU_TINH,'
      '   :CT_THUTU_HIENTHI,'
      '   :CT_SESSION,'
      '   :CT_WIDTH)')
    KeyLinks.Strings = (
      'HR_LUONG_CONGTHUC.CT_MA'
      'HR_LUONG_CONGTHUC.PA_MA')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_LUONG_CONGTHUC.PA_MA'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_BIEUTHUC'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_TUDONG_CAPNHAT'
      '     , CT_THUTU_TINH'
      '     , CT_THUTU_HIENTHI'
      '     , CT_SESSION'
      '     , CT_WIDTH'
      'FROM HR_LUONG_CONGTHUC'
      'left JOIN HR_LUONG_SESSION on '
      '    HR_LUONG_CONGTHUC.PA_MA=HR_LUONG_SESSION.PA_MA and  '
      '    CT_SESSION=S_MA'
      'where HR_LUONG_CONGTHUC.PA_MA=:PA_MA '
      'order by CT_SESSION,CT_THUTU_HIENTHI')
    FieldOptions = []
    Left = 198
    Top = 154
    object qryTargetCongthucPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qryTargetCongthucCT_MA: TIntegerField
      FieldName = 'CT_MA'
      Required = True
    end
    object qryTargetCongthucCT_KYHIEU: TWideStringField
      FieldName = 'CT_KYHIEU'
      Required = True
      Size = 63
    end
    object qryTargetCongthucCT_TIEUDE: TWideStringField
      FieldName = 'CT_TIEUDE'
      Required = True
      Size = 126
    end
    object qryTargetCongthucCT_KIEUDULIEU: TWideStringField
      FieldName = 'CT_KIEUDULIEU'
      Required = True
      Size = 30
    end
    object qryTargetCongthucCT_BIEUTHUC: TWideStringField
      FieldName = 'CT_BIEUTHUC'
      Size = 3072
    end
    object qryTargetCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryTargetCongthucCT_TUDONG_CAPNHAT: TIntegerField
      FieldName = 'CT_TUDONG_CAPNHAT'
    end
    object qryTargetCongthucCT_THUTU_TINH: TIntegerField
      FieldName = 'CT_THUTU_TINH'
    end
    object qryTargetCongthucCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
    object qryTargetCongthucCT_SESSION: TIntegerField
      FieldName = 'CT_SESSION'
      Required = True
    end
    object qryTargetCongthucCT_WIDTH: TIntegerField
      FieldName = 'CT_WIDTH'
    end
  end
  object dsTargetCongthuc: TDataSource
    DataSet = qryTargetCongthuc
    Left = 198
    Top = 186
  end
  object qryTargetSession: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'PA_MA'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
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
    IB_Connection = dmMain.connMain
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
    KeyLinks.Strings = (
      'HR_LUONG_SESSION.PA_MA'
      'HR_LUONG_SESSION.S_MA')
    Unicode = True
    RecordCountAccurate = True
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
      'where PA_MA=:PA_MA'
      'order by S_MA')
    FieldOptions = []
    Left = 134
    Top = 154
    object qryTargetSessionPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qryTargetSessionS_MA: TIntegerField
      FieldName = 'S_MA'
      Required = True
    end
    object qryTargetSessionS_TIEUDE: TWideStringField
      FieldName = 'S_TIEUDE'
      Required = True
      Size = 126
    end
    object qryTargetSessionS_BEFORE_SCRIPT: TWideStringField
      FieldName = 'S_BEFORE_SCRIPT'
      Size = 3072
    end
    object qryTargetSessionS_AFTER_SCRIPT: TWideStringField
      FieldName = 'S_AFTER_SCRIPT'
      Size = 3072
    end
    object qryTargetSessionS_REFRESH: TIntegerField
      FieldName = 'S_REFRESH'
    end
    object qryTargetSessionS_EXEC_BSCRIPT: TIntegerField
      FieldName = 'S_EXEC_BSCRIPT'
    end
    object qryTargetSessionS_EXEC_AFTER: TIntegerField
      FieldName = 'S_EXEC_AFTER'
    end
  end
  object dsTargetSession: TDataSource
    DataSet = qryTargetSession
    Left = 134
    Top = 186
  end
end
