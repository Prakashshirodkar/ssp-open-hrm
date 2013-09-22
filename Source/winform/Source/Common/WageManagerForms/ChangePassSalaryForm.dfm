inherited frmChangePassSalary: TfrmChangePassSalary
  Left = 551
  Top = 290
  Width = 282
  Height = 172
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 119
    Width = 274
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 274
    Height = 119
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object edtOldPass: TdxEdit
      Left = 116
      Top = 10
      Width = 114
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      MaxLength = 15
      PasswordChar = '*'
      StyleController = dmMain.StyleController
      StoredValues = 2
    end
    object edtNewPass: TdxEdit
      Left = 116
      Top = 33
      Width = 114
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      MaxLength = 15
      PasswordChar = '*'
      StyleController = dmMain.StyleController
      StoredValues = 2
    end
    object edtNewConfirm: TdxEdit
      Left = 116
      Top = 56
      Width = 114
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      MaxLength = 15
      PasswordChar = '*'
      StyleController = dmMain.StyleController
      StoredValues = 2
    end
    object btnOK: TElPopupButton
      Left = 122
      Top = 92
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = #272#7891'ng '#253' v'#224' '#273#243'ng c'#7917'a s'#7893
      DrawDefaultFrame = True
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = #272#7891'ng '#253
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Left = 197
      Top = 92
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Kh'#244'ng '#273#7891'ng '#253' v'#224' '#273#243'ng c'#7917'a s'#7893
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcOldPass: TdxLayoutItem
        Caption = 'M'#7853't kh'#7849'u c'#361
        Offsets.Left = 8
        Offsets.Right = 8
        Offsets.Top = 8
        Control = edtOldPass
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'M'#7853't kh'#7849'u m'#7899'i'
        Offsets.Left = 8
        Offsets.Right = 8
        Control = edtNewPass
        ControlOptions.ShowBorder = False
      end
      object dxlcChangPass: TdxLayoutItem
        Caption = 'Nh'#7853'p l'#7841'i m'#7853't kh'#7849'u m'#7899'i'
        Offsets.Left = 8
        Offsets.Right = 8
        Control = edtNewConfirm
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntButton1'
          ShowCaption = False
          Control = btnOK
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'TntButton2'
          ShowCaption = False
          Control = btnCancel
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qryPass: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\WPP\Database\SSP_HRM_DB_WPP.GDB'
    EditSQL.Strings = (
      'UPDATE SYS_SUBSYSTEM SET'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   PASS_LOCK_SALARY = :PASS_LOCK_SALARY'
      'WHERE'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'SUBSYSTEMID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PASS_LOCK_SALARY'
      '     , SUBSYSTEMID'
      'FROM SYS_SUBSYSTEM')
    FieldOptions = []
    Left = 8
    Top = 48
    object qryPassPASS_LOCK_SALARY: TWideStringField
      FieldName = 'PASS_LOCK_SALARY'
      Size = 63
    end
    object qryPassSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
  end
end
