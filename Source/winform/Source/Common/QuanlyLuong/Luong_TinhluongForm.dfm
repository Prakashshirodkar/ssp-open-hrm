inherited frmLuong_Tinhluong: TfrmLuong_Tinhluong
  Left = 479
  Top = 251
  Width = 599
  Height = 411
  BorderStyle = bsSizeToolWin
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 358
    Width = 591
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 591
    Height = 358
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object lbOption: TElLabel
      Left = 14
      Top = 99
      Width = 155
      Height = 20
      AutoSize = False
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object ElLabel1: TElLabel
      Left = 193
      Top = 68
      Width = 70
      Height = 20
      AutoSize = False
      Caption = 'Ch'#7913'c v'#7909'      :'
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ElLabel2: TElLabel
      Left = 193
      Top = 48
      Width = 70
      Height = 20
      AutoSize = False
      Caption = 'Nh'#226'n vi'#234'n   :'
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ElLabel3: TElLabel
      Left = 193
      Top = 28
      Width = 120
      Height = 20
      AutoSize = False
      Caption = #272#417'n v'#7883' - ph'#242'ng ban:'
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbDonvi: TElLabel
      Left = 313
      Top = 28
      Width = 232
      Height = 20
      AutoSize = False
      Color = 15466238
      ParentColor = False
    end
    object lbNhanvien: TElLabel
      Left = 263
      Top = 48
      Width = 168
      Height = 20
      AutoSize = False
      Color = 15466238
      ParentColor = False
    end
    object lbChucvu: TElLabel
      Left = 263
      Top = 68
      Width = 161
      Height = 20
      AutoSize = False
      Color = 15466238
      ParentColor = False
    end
    object Bevel1: TBevel
      Left = 193
      Top = 88
      Width = 552
      Height = 7
      Shape = bsTopLine
    end
    object bar: TdxfProgressBar
      Left = 251
      Top = 95
      Width = 229
      Height = 24
      BarBevelOuter = bvLowered
      BeginColor = 6487906
      BevelOuter = bvLowered
      Color = 15466238
      EndColor = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Max = 100
      Min = 0
      Orientation = orHorizontal
      ParentColor = False
      ParentFont = False
      Position = 0
      ShowTextStyle = stsPercent
      Step = 1
      Style = sRectangles
      TabOrder = 6
      TransparentGlyph = True
    end
    object memThongso: TElMemoCombo
      Left = 14
      Top = 152
      Width = 552
      Height = 123
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
      BorderStyle = bsSingle
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
    object ElPopupButton1: TElPopupButton
      Left = 496
      Top = 324
      Width = 81
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
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acDong
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 249
      Top = 324
      Width = 92
      Height = 25
      Cursor = crDefault
      ImageIndex = 96
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#7921'c hi'#7879'n'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acThuchien
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxAll: TdxCheckEdit
      Left = 146
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxAllChange
    end
    object dxSelected: TdxCheckEdit
      Left = 146
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dxSelectedChange
    end
    object dxUntracked: TdxCheckEdit
      Left = 146
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      StyleController = dmMain.StyleController
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group8: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Group7: TdxLayoutGroup
          AutoAligns = [aaVertical]
          Caption = '* T'#249'y ch'#7885'n t'#237'nh l'#432#417'ng'
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = '1. T'#237'nh to'#224'n b'#7897' b'#7843'ng l'#432#417'ng'
            Control = dxAll
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = '2. Ch'#7881' t'#237'nh NV '#273#432#7907'c ch'#7885'n'
            Control = dxSelected
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = '*  T'#7855't ch'#7871' '#273#7897' theo d'#245'i'
            Control = dxUntracked
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            AutoAligns = []
            AlignVert = avBottom
            CaptionOptions.AlignVert = tavBottom
            ShowCaption = False
            Control = lbOption
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = '* Di'#7877'n ti'#7871'n t'#237'nh l'#432#417'ng'
          object dxLayoutControl1Group4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              ShowCaption = False
              Control = ElLabel3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item15: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Control = lbDonvi
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group11: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item2: TdxLayoutItem
                ShowCaption = False
                Control = ElLabel2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item16: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Control = lbNhanvien
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group10: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item1: TdxLayoutItem
                ShowCaption = False
                Control = ElLabel1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item17: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Control = lbChucvu
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Item18: TdxLayoutItem
            Control = Bevel1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'Ho'#224'n th'#224'nh'
            Control = bar
            ControlOptions.AutoAlignment = False
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '* Nh'#7853't k'#253' t'#7889'c '#273#7897' t'#237'nh to'#225'n'
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'mcWageProgress'
          ShowCaption = False
          Control = memThongso
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahCenter
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
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
        Caption = 'Th'#7921'c hi'#7879'n t'#237'nh l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 272
    Top = 240
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 528
    Top = 144
    object acThuchien: TAction
      Caption = 'acThuchien'
      ImageIndex = 96
      OnExecute = acThuchienExecute
      OnUpdate = acThuchienUpdate
    end
    object acDung: TAction
      Caption = 'acDung'
      ImageIndex = 15
    end
    object acDong: TAction
      Caption = 'acDong'
      ImageIndex = 67
      OnExecute = acDongExecute
    end
  end
  object scriptExecute: TIB_Script
    IB_Connection = dmMain.connMain
    Left = 144
    Top = 200
  end
  object dxClock: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = dxClockTimer
    Left = 64
    Top = 240
  end
end
