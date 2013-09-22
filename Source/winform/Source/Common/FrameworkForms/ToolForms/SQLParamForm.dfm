inherited frmSQLParam: TfrmSQLParam
  Left = 406
  Top = 332
  Width = 299
  Height = 128
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 75
    Width = 291
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 291
    Height = 75
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleMacDinh
    object ElPopupButton1: TElPopupButton
      Left = 69
      Top = 47
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 14
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'&ng '#253
      TabOrder = 0
      Color = clCream
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 147
      Top = 47
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
      TabOrder = 1
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
      object dxParamGroup: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Nh'#7853'p gi'#225' tr'#7883' c'#225'c tham s'#7889
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
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
        Caption = 'Tham s'#7889' SQL'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 328
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 296
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 14
      OnExecute = acDongyExecute
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 47
      OnExecute = acBoquaExecute
    end
  end
end
