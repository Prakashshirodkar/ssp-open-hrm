inherited frmLookAndFeelDetail: TfrmLookAndFeelDetail
  Left = 262
  Top = 243
  BorderStyle = bsToolWindow
  ClientHeight = 139
  ClientWidth = 277
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 120
    Width = 277
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 277
    Height = 120
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleMacDinh
    object dxDBEdit1: TdxDBEdit
      Left = 53
      Top = 29
      Width = 95
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      DataField = 'LF_ID'
      DataSource = frmUIConfig.dsLAFList
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit
      Left = 53
      Top = 53
      Width = 121
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'LF_TITLE'
      DataSource = frmUIConfig.dsLAFList
      StyleController = dmMain.StyleController
    end
    object ElPopupButton1: TElPopupButton
      Left = 62
      Top = 92
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 44
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'&ng '#253
      TabOrder = 2
      Color = clCream
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 140
      Top = 92
      Width = 75
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
      Caption = '&B'#7887' qua'
      TabOrder = 3
      Color = clCream
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Th'#244'ng tin l'#432'u tr'#7919
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'K'#253' hi'#7879'u'
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Ti'#234'u '#273#7873
          Control = dxDBEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
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
        Caption = 'T'#249'y ch'#7885'n giao di'#7879'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 0
    Top = 40
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 48
    Top = 88
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 44
      OnExecute = acDongyExecute
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 47
      OnExecute = acBoquaExecute
    end
  end
end
