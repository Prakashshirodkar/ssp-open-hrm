object frmSystemConfig: TfrmSystemConfig
  Left = 234
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 203
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001001800680300001600000028000000100000002000
    00000100180000000000000C0000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000FFFF008080000000000000
    808080FFFFFF00FF008080808080808080808080808080808080800000008080
    8080808000FFFF008080000000808080808080FFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFF808080000000000000000000808080000000000000000000
    8080800000000000000000000000000000000000000000008080800000000000
    00000000808080000000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000
    808080FFFFFF000000808080808080808080808080FFFFFF0000000000008080
    80FFFFFF00FF00808080808080808080808080FFFFFF00000080800080800080
    8000808080FFFFFF000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    808080FFFFFF000000FFFF00808000808000808080FFFFFF0000000000008080
    80000000000000000000000000000000808080FFFFFF00000000000000000000
    0000000000FFFFFF000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000008080
    80FFFFFF80000080000080000080000080000080808080808080808080808080
    8080808080808080808080000000808080FFFFFF000000FF0000FF0000FF0000
    800000FFFFFF0000000000000000000000000000000000000000000000008080
    80FFFFFF000000FFFF00FF0000FF0000800000FFFFFF00000000000000000000
    0000000000000000000000000000808080FFFFFF000000000000000000000000
    800000FFFFFF0000000000000000000000000000000000000000000000008080
    80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
    0000000000000000000000000000000000808080808080808080808080808080
    808080808080808080000000000000000000000000000000000000000000CE01
    00000000000000000000CC000000CC0100008001000000010000000100000001
    00000001000000010000007F0000007F0000007F0000007F0000807F0000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 404
    Height = 203
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object TntGroupBox1: TElGroupBox
      Left = 10
      Top = 10
      Width = 403
      Height = 151
      Align = alClient
      AutoDisableChildren = False
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      Caption = 'K'#7871't n'#7889'i'
      Flat = False
      FlatAlways = False
      ShowFocus = False
      TabOrder = 0
      UseXPThemes = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 3
        Top = 16
        Width = 397
        Height = 132
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object ButtonBrowser: TElPopupButton
          Left = 303
          Top = 64
          Width = 65
          Height = 25
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Ch'#7885'n ...'
          TabOrder = 4
          OnClick = ButtonBrowserClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object EditDatabase: TElEdit
          Left = 79
          Top = 66
          Width = 250
          Height = 21
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
          Alignment = taLeftJustify
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          RTLContent = False
          Transparent = False
          RightMargin = 1
          TopMargin = 4
          BorderStyle = bsNone
          ActiveBorderType = fbtLineBorder
          InactiveBorderType = fbtLineBorder
          LineBorderActiveColor = clBlack
          LineBorderInactiveColor = clBlack
          MaxUndoLevel = 0
          OnChange = EditDatabaseChange
          Ctl3D = True
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object EditServer: TElEdit
          Left = 79
          Top = 35
          Width = 250
          Height = 21
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
          Alignment = taLeftJustify
          BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
          RTLContent = False
          Transparent = False
          RightMargin = 1
          TopMargin = 4
          BorderStyle = bsNone
          ActiveBorderType = fbtLineBorder
          InactiveBorderType = fbtLineBorder
          LineBorderActiveColor = clBlack
          LineBorderInactiveColor = clBlack
          MaxUndoLevel = 0
          OnChange = EditServerChange
          Color = clBtnFace
          Ctl3D = True
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object RaBtnLocal: TElRadioButton
          Left = 10
          Top = 10
          Width = 55
          Height = 17
          Cursor = crDefault
          Checked = True
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          Caption = '&C'#7909'c b'#7897
          TabOrder = 0
          OnClick = RaBtnLocalClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object RaBtnRemote: TElRadioButton
          Left = 71
          Top = 10
          Width = 50
          Height = 17
          Cursor = crDefault
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          Caption = '&T'#7915' xa'
          TabOrder = 1
          OnClick = RaBtnRemoteClick
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxUsername: TdxEdit
          Left = 77
          Top = 95
          Width = 76
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 6
          OnChange = dxUsernameChange
        end
        object dxPassword: TdxMaskEdit
          Left = 208
          Top = 95
          Width = 89
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 7
          IgnoreMaskBlank = False
          PasswordChar = '*'
          OnChange = dxPasswordChange
        end
        object chkDefault: TdxCheckEdit
          Left = 303
          Top = 95
          Width = 121
          Style.ButtonStyle = bts3D
          TabOrder = 5
          Caption = 'M'#7863'c '#273#7883'nh'
          OnChange = chkDefaultChange
          State = cbsChecked
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl2Item4: TdxLayoutItem
              Caption = 'RaBtnLocal'
              ShowCaption = False
              Control = RaBtnLocal
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item5: TdxLayoutItem
              Caption = 'RaBtnRemote'
              ShowCaption = False
              Control = RaBtnRemote
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxloServer: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'M'#225'y ch'#7911
            Control = EditServer
          end
          object dxLayoutControl2Group4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxloDB: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'C'#417' s'#7903' d'#7919' li'#7879'u'
              Control = EditDatabase
            end
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Caption = 'ButtonBrowser'
              ShowCaption = False
              Control = ButtonBrowser
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl2Item2: TdxLayoutItem
              Caption = 'T'#234'n truy c'#7853'p'
              Control = dxUsername
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              Caption = 'M'#7853't kh'#7849'u'
              Control = dxPassword
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'dxCheckEdit1'
              ShowCaption = False
              Control = chkDefault
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object btnTest: TElPopupButton
      Left = 169
      Top = 168
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&K'#7871't n'#7889'i th'#7917
      TabOrder = 1
      Action = acTestConnection
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 319
      Top = 168
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 3
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 244
      Top = 168
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 2
      Action = acSaveConfig
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item3: TdxLayoutItem
        Caption = 'TntGroupBox1'
        ShowCaption = False
        Control = TntGroupBox1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'btnTest'
          ShowCaption = False
          Control = btnTest
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'btnClose'
          ShowCaption = False
          Control = btnClose
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'G:\CoSoVatChat\CoSoVatChat02\Backup\LastCSVC.gdb'
    Filter = 'Interbase Database Files|*.gdb'
    Left = 256
    Top = 40
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'C'#7845'u h'#236'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 328
    Top = 40
  end
  object actionMain: TActionList
    Left = 293
    Top = 41
    object acSaveConfig: TAction
      Caption = 'acSaveConfig'
      OnExecute = acSaveConfigExecute
      OnUpdate = acSaveConfigUpdate
    end
    object acCancel: TAction
      Caption = 'acCancel'
      OnExecute = acCancelExecute
      OnUpdate = acCancelUpdate
    end
    object acTestConnection: TAction
      Caption = 'acTestConnection'
      OnExecute = acTestConnectionExecute
    end
  end
  object IB_Connection1: TIB_Connection
    PasswordStorage = psKeyFromUserReg
    SQLDialect = 3
    Params.Strings = (
      'SQL DIALECT=3'
      'PATH=F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
      'USER NAME=SYSDBA')
    Left = 37
    Top = 122
    SavedPassword = '.JuMbLe.01.99407022E63360C115'
  end
  object IB_Transaction1: TIB_Transaction
    IB_Connection = dmMain.connMain
    AutoCommit = True
    Isolation = tiCommitted
    Left = 32
    Top = 160
  end
  object qrySysInfo: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    IB_Connection = IB_Connection1
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SUBSYSTEMID'
      '     , SUBSYSTEMNAME'
      '     , SSP_VERSION'
      'FROM SYS_SUBSYSTEM'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 69
    Top = 122
    object qrySysInfoSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qrySysInfoSUBSYSTEMNAME: TWideStringField
      FieldName = 'SUBSYSTEMNAME'
      Size = 126
    end
    object qrySysInfoSSP_VERSION: TWideStringField
      FieldName = 'SSP_VERSION'
      Size = 63
    end
  end
end
