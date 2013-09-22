inherited frmWageProgress: TfrmWageProgress
  Left = 256
  Top = 119
  Width = 622
  BorderIcons = [biSystemMenu]
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Width = 614
    Panels = <
      item
        Alignment = taLeftJustify
        Width = 200
        Control = elpbTinhLuong
        IsHTML = False
      end
      item
        Alignment = taCenter
        Text = 'Nh'#226'n vi'#234'n :'
        IsHTML = False
      end
      item
        Alignment = taLeftJustify
        IsHTML = False
      end>
    Visible = True
    object elpbTinhLuong: TElBiProgressBar
      Left = 2
      Top = 2
      Width = 196
      Height = 15
      LightColor = clWhite
      DarkColor = clMoneyGreen
      LightValue = 0
      DarkValue = 20
      Additive = False
      ProgressShowMode = psmAllFull
      LightTextFullLine = False
      DarkTextFullLine = False
      DarkTextColor = clBlack
      LightTextColor = clBlack
      BorderStyle = ebsNone
      LightButtonStyle = False
      DarkButtonStyle = False
      Transparent = False
      DockOrientation = doNoOrient
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 614
    Height = 271
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object elpbHuy: TElPopupButton
      Left = 367
      Top = 236
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 15
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 3
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Huy'#777
      TabOrder = 1
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object elpbDong: TElPopupButton
      Left = 529
      Top = 236
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 9
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272'o'#769'&ng'
      TabOrder = 3
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object elpbXemChiTiet: TElPopupButton
      Left = 448
      Top = 236
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 25
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Chi ti'#7871't'
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      OnClick = elpbXemChiTietClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object mcWageProgress: TElMemoCombo
      Left = 12
      Top = 12
      Width = 200
      Height = 100
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
      ScrollBars = ssVertical
      Text = #13#10
      Multiline = True
      BorderStyle = bsNone
      ButtonColor = clBtnFace
      ButtonWidth = 15
      Ctl3D = True
      DragMode = dmAutomatic
      ParentColor = False
      ParentCtl3D = False
      ReadOnly = True
      DockOrientation = doVertical
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item5: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElMemoCombo1'
        ShowCaption = False
        Control = mcWageProgress
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'L'#432#803'a cho'#803'n'
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Visible = False
          Control = elpbHuy
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = elpbXemChiTiet
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = elpbDong
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
        Caption = 'Di'#234#771'n bi'#234#769'n ti'#769'nh l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 176
    Top = 80
  end
end
