object frmChangePass: TfrmChangePass
  Tag = -1
  Left = 390
  Top = 297
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 124
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 271
    Height = 124
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object edtOldPass: TdxEdit
      Left = 119
      Top = 11
      Width = 114
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      MaxLength = 15
      PasswordChar = '*'
      StyleController = dmMain.StyleController
      StoredValues = 2
    end
    object edtNewPass: TdxEdit
      Left = 119
      Top = 37
      Width = 114
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      MaxLength = 15
      PasswordChar = '*'
      StyleController = dmMain.StyleController
      StoredValues = 2
    end
    object edtNewConfirm: TdxEdit
      Left = 119
      Top = 63
      Width = 114
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      MaxLength = 15
      PasswordChar = '*'
      StyleController = dmMain.StyleController
      StoredValues = 2
    end
    object btnOK: TElPopupButton
      Left = 115
      Top = 96
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
      Color = clBtnFace
      ParentColor = False
      OnClick = btnOKClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Left = 193
      Top = 96
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
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
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
        object dxLayoutControl1Item1: TdxLayoutItem
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
        Font.Style = [fsBold]
        Caption = 'Thay '#273#7893'i m'#7853't kh'#7849'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 144
    Top = 48
  end
  object qryUserPassword: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Project\SSP-HRM-2.0\Databases\MinhViet\SSP_HRM_MINHVIET.gdb'
    EditSQL.Strings = (
      'UPDATE SYS_USERACCOUNT SET'
      '   USERACCID = :USERACCID, /*PK*/'
      '   DISPLAYNAME = :DISPLAYNAME,'
      '   USERACCPASS = :USERACCPASS,'
      '   LASTACCESS = :LASTACCESS,'
      '   BEACTIVE = :BEACTIVE'
      'WHERE'
      '   USERACCID = :OLD_USERACCID')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT USERACCID'
      '     , DISPLAYNAME'
      '     , USERACCPASS'
      '     , LASTACCESS'
      '     , BEACTIVE'
      'FROM SYS_USERACCOUNT'
      'where USERACCID=:USER_ID')
    FieldOptions = []
    Left = 56
    Top = 72
    object qryUserPasswordUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryUserPasswordDISPLAYNAME: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 126
    end
    object qryUserPasswordUSERACCPASS: TWideStringField
      FieldName = 'USERACCPASS'
      Size = 63
    end
    object qryUserPasswordLASTACCESS: TDateTimeField
      FieldName = 'LASTACCESS'
    end
    object qryUserPasswordBEACTIVE: TSmallintField
      FieldName = 'BEACTIVE'
    end
  end
end
