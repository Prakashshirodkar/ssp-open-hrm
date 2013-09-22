object frameSendMail: TframeSendMail
  Left = 0
  Top = 0
  Width = 620
  Height = 356
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 620
    Height = 356
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 456
      Top = 107
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 80
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'G'#7917'i mail'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acSendMail
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxSelectTemplate: TdxButtonEdit
      Left = 252
      Top = 108
      Width = 204
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      OnChange = dxSelectTemplateChange
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = dxSelectTemplateButtonClick
      ExistButtons = True
    end
    object ElPopupButton2: TElPopupButton
      Left = 531
      Top = 107
      Width = 75
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
      Caption = 'S'#7917'a m'#7851'u'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acDesignTemplate
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxSubject: TdxEdit
      Left = 62
      Top = 28
      Width = 508
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      StyleController = dmMain.StyleController
    end
    object dxLog: TElMemoCombo
      Left = 15
      Top = 166
      Width = 505
      Height = 109
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
      MemoFont.Name = 'MS Sans Serif'
      MemoFont.Style = []
      MemoMaxLength = 0
      MemoScrollBars = ssNone
      MemoWordWrap = True
      MemoActiveBorderType = fbtSunken
      MemoFlatScrollBars = False
      RightMargin = 1
      RTLContent = False
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      Transparent = False
      Multiline = True
      BorderStyle = bsNone
      ButtonColor = clBtnFace
      ButtonWidth = 15
      Ctl3D = True
      ParentColor = False
      ParentCtl3D = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxBar: TdxfProgressBar
      Left = 14
      Top = 328
      Width = 146
      Height = 19
      BarBevelOuter = bvNone
      BeginColor = 10931878
      BevelOuter = bvNone
      BorderWidth = 1
      Color = clBtnFace
      EndColor = 8047491
      Font.Charset = ANSI_CHARSET
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
      Style = sExSolid
      TabOrder = 7
      TransparentGlyph = True
    end
    object dxSenderName: TdxEdit
      Left = 251
      Top = 51
      Width = 359
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      StyleController = dmMain.StyleController
    end
    object dxSender: TdxHyperLinkEdit
      Left = 62
      Top = 51
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = '+ Th'#244'ng tin g'#7917'i mail'
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          Caption = 'Ti'#234'u '#273#7873' '
          Control = dxSubject
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'Ng'#432#7901'i g'#7917'i'
            Control = dxSender
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahClient
            Caption = 'T'#234'n ng'#432#7901'i g'#7917'i'
            Control = dxSenderName
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        Caption = '+ T'#249'y ch'#7885'n'
        LayoutDirection = ldHorizontal
        object Chon: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avCenter
          Caption = 'Ch'#7885'n m'#7851'u'
          Control = dxSelectTemplate
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '+ K'#7871't qu'#7843' th'#7921'c hi'#7879'n'
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'Th'#244'ng tin'
          CaptionOptions.AlignVert = tavTop
          ShowCaption = False
          Control = dxLog
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'Tr'#7841'ng th'#225'i'
          CaptionOptions.Layout = clTop
          ShowCaption = False
          Control = dxBar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 112
    Top = 104
    object acSendMail: TAction
      Caption = 'acSendMail'
      ImageIndex = 80
      OnExecute = acSendMailExecute
    end
    object acDesignTemplate: TAction
      Caption = 'acDesignTemplate'
      ImageIndex = 59
      OnExecute = acDesignTemplateExecute
    end
  end
  object dlgTemplate: TOpenDialog
    Filter = 'Report template (*.rtm)|*.rtm'
    Left = 200
    Top = 160
  end
  object memMainData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 104
    Top = 160
  end
  object dsMainData: TDataSource
    DataSet = memMainData
    Left = 168
    Top = 160
  end
  object F_MailAPI: TMAPIMail
    EditDialog = False
    Left = 136
    Top = 160
  end
end
