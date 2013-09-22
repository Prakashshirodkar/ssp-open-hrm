inherited frmPassLockWageBook: TfrmPassLockWageBook
  Left = 543
  Top = 352
  Width = 281
  Height = 139
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 86
    Width = 273
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 273
    Height = 86
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 115
      Top = 59
      Width = 70
      Height = 25
      Cursor = crDefault
      ImageIndex = 44
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'ng '#253
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 185
      Top = 59
      Width = 68
      Height = 25
      Cursor = crDefault
      ImageIndex = 47
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'B'#7887' qua'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxPassword: TdxEdit
      Left = 88
      Top = 28
      Width = 131
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      PasswordChar = '*'
      StyleController = dmMain.StyleController
    end
    object ElPopupButton3: TElPopupButton
      Left = 20
      Top = 59
      Width = 95
      Height = 25
      Cursor = crDefault
      ImageIndex = 59
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7893'i m'#7853't kh'#7849'u'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton3Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Nh'#7853'p m'#7853't kh'#7849'u'
        object dxLayoutItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          Caption = 'Nh'#7853'p m'#7853't kh'#7849'u'
          Control = dxPassword
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton2
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
        Caption = 'Nh'#7853'p m'#7853't kh'#7849'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryPass: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
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
