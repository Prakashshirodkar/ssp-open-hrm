object frameSendMail: TframeSendMail
  Left = 0
  Top = 0
  Width = 700
  Height = 493
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
    Width = 700
    Height = 493
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    OnKeyDown = dxLayoutControl1KeyDown
    OnKeyUp = dxLayoutControl1KeyUp
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 536
      Top = 130
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
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acSendMail
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxSelectTemplate: TdxButtonEdit
      Left = 332
      Top = 131
      Width = 204
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
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
      Left = 611
      Top = 130
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
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acDesignTemplate
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxSubject: TdxEdit
      Left = 68
      Top = 51
      Width = 508
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
    end
    object dxBar: TdxfProgressBar
      Left = 14
      Top = 465
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
      Left = 257
      Top = 74
      Width = 359
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      StyleController = dmMain.StyleController
    end
    object dxSender: TdxHyperLinkEdit
      Left = 68
      Top = 74
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      StyleController = dmMain.StyleController
    end
    object dxEdit_SMTPServer: TdxEdit
      Left = 68
      Top = 28
      Width = 538
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      StyleController = dmMain.StyleController
    end
    object ElPageControl_main: TElPageControl
      Left = 14
      Top = 188
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = False
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      Style = etsAngledTabs
      TabIndex = 0
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = ElTabSheet_Compose
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 11
      object ElTabSheet_Compose: TElTabSheet
        PageControl = ElPageControl_main
        ImageIndex = -1
        TabVisible = True
        Caption = 'N'#7897'i dung email'
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 170
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxMailBody: TWebBrowser
            Left = 2
            Top = 2
            Width = 300
            Height = 150
            TabOrder = 0
            OnDocumentComplete = dxMailBodyDocumentComplete
            ControlData = {
              4C000000021F0000810F00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
          object dxEdit_HTML: TdxEdit
            Left = 96
            Top = 228
            Width = 626
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            StyleController = dmMain.StyleController
          end
          object ElPopupButton3: TElPopupButton
            Left = 591
            Top = 227
            Width = 75
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            Caption = 'L'#7845'y file ...'
            TabOrder = 2
            Color = 15466238
            ParentColor = False
            Action = acHTMLBrowse
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxLayoutControl3Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl3Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'WebBrowser1'
              LookAndFeel = dmMain.StyleWeb
              ShowCaption = False
              Control = dxMailBody
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl3Item2: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avCenter
                Caption = 'L'#7845'y n'#7897'i dung t'#7915' file'
                Control = dxEdit_HTML
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl3Item3: TdxLayoutItem
                Caption = 'ElPopupButton3'
                ShowCaption = False
                Control = ElPopupButton3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object ElTabSheet_sendStatus: TElTabSheet
        PageControl = ElPageControl_main
        ImageIndex = -1
        TabVisible = True
        Caption = 'Ti'#7871'n tr'#236'nh g'#7903'i email'
        Visible = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 170
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxLog: TElMemoCombo
            Left = 3
            Top = 3
            Width = 468
            Height = 275
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
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxLog'
              LookAndFeel = dmMain.StyleWeb
              ShowCaption = False
              Control = dxLog
            end
          end
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = '+ Th'#244'ng tin g'#7917'i mail'
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'Mail server'
          Control = dxEdit_SMTPServer
          ControlOptions.ShowBorder = False
        end
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
        object dxLayoutControl1Item9: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'ElPageControl1'
          CaptionOptions.Layout = clTop
          ShowCaption = False
          Control = ElPageControl_main
          ControlOptions.ShowBorder = False
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
    object acHTMLBrowse: TAction
      Caption = 'acHTMLBrowse'
      OnExecute = acHTMLBrowseExecute
    end
    object acLoadHTML: TAction
      Caption = 'acLoadHTML'
      OnExecute = acLoadHTMLExecute
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
  object MailMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 376
    Top = 56
  end
  object SMTP: TIdSMTP
    OnStatus = SMTPStatus
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 408
    Top = 56
  end
  object AttachmentDialog: TOpenDialog
    Filter = 'HTML file|*.html;*.htm'
    Left = 440
    Top = 56
  end
end
