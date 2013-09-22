inherited frmInsertUser: TfrmInsertUser
  Tag = -1
  Left = 432
  Top = 361
  Width = 333
  Height = 221
  BorderIcons = [biSystemMenu]
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 168
    Width = 325
    Visible = False
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 325
    Height = 168
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBEdit1: TdxDBEdit
      Left = 104
      Top = 55
      Width = 192
      Style.BorderColor = 12681984
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'USERACCID'
      DataSource = frmSecurity.dsUserList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit
      Left = 104
      Top = 29
      Width = 192
      Style.BorderColor = 12681984
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      DataField = 'DISPLAYNAME'
      DataSource = frmSecurity.dsUserList
      StyleController = dmMain.StyleController
    end
    object edtPasswordConfirm: TdxMaskEdit
      Left = 104
      Top = 107
      Width = 192
      Style.BorderColor = 12681984
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      IgnoreMaskBlank = False
      PasswordChar = '*'
      StyleController = dmMain.StyleController
    end
    object ElPopupButton1: TElPopupButton
      Left = 169
      Top = 140
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'&ng '#253
      TabOrder = 4
      Color = 16775408
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 247
      Top = 140
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 5
      Color = 16775408
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object edtPassword: TdxMaskEdit
      Left = 104
      Top = 81
      Width = 175
      Style.BorderColor = 12681984
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      IgnoreMaskBlank = False
      PasswordChar = '*'
      StyleController = dmMain.StyleController
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'B'#7841'n h'#227'y nh'#7853'p th'#244'ng tin '#273#259'ng k'#253' t'#7841'i '#273#226'y '
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          Caption = 'T'#234'n ng'#432#7901'i d'#249'ng'
          Control = dxDBEdit2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          Caption = 'T'#234'n '#273#259'ng nh'#7853'p '
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
        object dxlcPassword: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          Caption = 'M'#7853't kh'#7849'u'
          Control = edtPassword
          ControlOptions.ShowBorder = False
        end
        object dxlcConfirmPassword: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          Caption = 'Nh'#7853'p l'#7841'i m'#7853't kh'#7849'u'
          Control = edtPasswordConfirm
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'ElPopupButton2'
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
        Caption = #272#259'ng k'#253' ng'#432#7901'i d'#249'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 296
    Top = 8
  end
  object ActionList1: TActionList
    Left = 64
    Top = 72
    object acDongy: TAction
      Caption = 'acDongy'
      OnExecute = acDongyExecute
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      OnExecute = acBoquaExecute
    end
  end
end
