inherited frmSysInfo: TfrmSysInfo
  Left = 255
  Top = 227
  Width = 621
  Height = 414
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 379
    Width = 613
    Height = 1
  end
  object mainPage: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 613
    Height = 379
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsAngledTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabOrgInfo
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 1
    object tabOrgInfo: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'H'#7891' s'#417' c'#244'ng ty'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 613
        Height = 358
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object Bevel1: TBevel
          Left = 2
          Top = 329
          Width = 663
          Height = 2
          Shape = bsBottomLine
        end
        object dxDBGraphicEdit1: TdxDBGraphicEdit
          Left = 490
          Top = 28
          Width = 109
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          Caption = '(Logo c'#244'ng ty)'
          StyleController = dmMain.StyleController
          CustomFilter = '*.jpp'
          DataField = 'ORG_LOGO'
          DataSource = dsOrgInfo
          Stretch = True
          Height = 124
        end
        object dxDBEdit1: TdxDBEdit
          Left = 104
          Top = 28
          Width = 144
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'SUPER_ORG'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit2: TdxDBEdit
          Left = 104
          Top = 51
          Width = 144
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          DataField = 'ORG_NAME'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit3: TdxDBEdit
          Left = 104
          Top = 74
          Width = 156
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          DataField = 'ORG_SHORT_NAME'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit4: TdxDBEdit
          Left = 339
          Top = 74
          Width = 152
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          DataField = 'ORG_TRADE_NAME'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit5: TdxDBEdit
          Left = 104
          Top = 97
          Width = 156
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          DataField = 'PHONE_NUMBER'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit6: TdxDBEdit
          Left = 339
          Top = 120
          Width = 152
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          DataField = 'FAX_NUMBER'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit7: TdxDBEdit
          Left = 104
          Top = 143
          Width = 378
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          DataField = 'ORG_ADDRESS'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBHyperLinkEdit1: TdxDBHyperLinkEdit
          Left = 104
          Top = 120
          Width = 156
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          DataField = 'EMAIL'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBHyperLinkEdit2: TdxDBHyperLinkEdit
          Left = 339
          Top = 97
          Width = 152
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          DataField = 'WEBSITE'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit10: TdxDBEdit
          Left = 104
          Top = 199
          Width = 179
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          DataField = 'DIRECTOR'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit11: TdxDBEdit
          Left = 104
          Top = 245
          Width = 179
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          DataField = 'CHIEF_ACCOUNTANT'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit14: TdxDBEdit
          Left = 398
          Top = 245
          Width = 198
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 17
          DataField = 'CHIEF_HR'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit17: TdxDBEdit
          Left = 398
          Top = 199
          Width = 198
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          DataField = 'DEPUTY_DIRECTOR'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object ElPopupButton1: TElPopupButton
          Left = 2
          Top = 331
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
          Caption = '&L'#432'u'
          TabOrder = 18
          Color = 15466238
          ParentColor = False
          Action = acOrgInfoPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 77
          Top = 331
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
          ShowBorder = False
          UseXPThemes = True
          Caption = '&Kh'#244'ng l'#432'u'
          TabOrder = 19
          Color = 15466238
          ParentColor = False
          Action = acOrgInfoCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 536
          Top = 331
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 67
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          ModalResult = 1
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 21
          Color = 15466238
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton4: TElPopupButton
          Left = 461
          Top = 331
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 68
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'T&r'#7907' gi'#250'p'
          TabOrder = 20
          Color = 15466238
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 339
          Top = 28
          Width = 144
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 5
          DataField = 'ESTABLISHED_DATE'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBEdit19: TdxDBEdit
          Left = 339
          Top = 51
          Width = 144
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          DataField = 'FOLLOWING_ORDER'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit13: TdxDBEdit
          Left = 398
          Top = 222
          Width = 157
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 16
          DataField = 'DEPUTY_DIRECTOR_3'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxDBEdit15: TdxDBEdit
          Left = 104
          Top = 222
          Width = 157
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          DataField = 'DEPUTY_DIRECTOR_2'
          DataSource = dsOrgInfo
          StyleController = dmMain.StyleController
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            Caption = 'Th'#244'ng tin chung'
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Group6: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Group4: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl1Item2: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = #272#417'n v'#7883' ch'#7911' qu'#7843'n'
                    Control = dxDBEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'T'#234'n c'#244'ng ty'
                    Control = dxDBEdit2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'T'#234'n t'#7855't '
                    Control = dxDBEdit3
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item6: TdxLayoutItem
                    Caption = #272'i'#7879'n tho'#7841'i'
                    Control = dxDBEdit5
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item9: TdxLayoutItem
                    Caption = 'Email'
                    Control = dxDBHyperLinkEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Group10: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl1Item26: TdxLayoutItem
                    Caption = 'Ng'#224'y th'#224'nh l'#7853'p'
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item27: TdxLayoutItem
                    Caption = 'Theo quy'#7871't '#273#7883'nh'
                    Control = dxDBEdit19
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'T'#234'n giao d'#7883'ch'
                    Control = dxDBEdit4
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item10: TdxLayoutItem
                    Caption = 'Website'
                    Control = dxDBHyperLinkEdit2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item7: TdxLayoutItem
                    Caption = 'Fax'
                    Control = dxDBEdit6
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Item8: TdxLayoutItem
                Caption = #272#7883'a ch'#7881
                Control = dxDBEdit7
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              Caption = 'dxDBGraphicEdit1'
              ShowCaption = False
              Control = dxDBGraphicEdit1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Th'#244'ng tin nh'#226'n s'#7921
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Group11: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item13: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'T'#7893'ng gi'#225'm '#273#7889'c'
                Control = dxDBEdit10
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item12: TdxLayoutItem
                Caption = 'Ph'#243' t'#7893'ng gi'#225'm '#273#7889'c'
                Control = dxDBEdit15
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item14: TdxLayoutItem
                Caption = 'K'#7871' to'#225'n tr'#432#7903'ng'
                Control = dxDBEdit11
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group12: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item20: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Ph'#243' t'#7893'ng gi'#225'm '#273#7889'c'
                Control = dxDBEdit17
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item11: TdxLayoutItem
                Caption = 'Ph'#243' t'#7893'ng gi'#225'm '#273#7889'c'
                Control = dxDBEdit13
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item17: TdxLayoutItem
                Caption = 'Tr'#432#7903'ng ph'#242'ng nh'#226'n s'#7921
                Control = dxDBEdit14
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Group13: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item25: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Control = Bevel1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Group3: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxLayoutControl1Item21: TdxLayoutItem
                Caption = 'ElPopupButton1'
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item22: TdxLayoutItem
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item24: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton4'
                ShowCaption = False
                Control = ElPopupButton4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item23: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
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
    end
    object tabSysFormat: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'T'#249'y ch'#7885'n d'#7919' li'#7879'u'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 613
        Height = 358
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object Bevel2: TBevel
          Left = 3
          Top = 281
          Width = 604
          Height = 2
          Shape = bsBottomLine
        end
        object dxDBCalcEdit2: TdxDBCalcEdit
          Left = 122
          Top = 53
          Width = 173
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 1
          DataField = 'ROUND_NUMBER'
          DataSource = dsFormatOption
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBEdit21: TdxDBEdit
          Left = 122
          Top = 29
          Width = 173
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'NUMERIC_FORMAT'
          DataSource = dsFormatOption
          StyleController = dmMain.StyleController
        end
        object ElPopupButton5: TElPopupButton
          Left = 444
          Top = 286
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 67
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          ModalResult = 1
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 10
          Color = 15466238
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton6: TElPopupButton
          Left = 369
          Top = 286
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 68
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'T&r'#7907' gi'#250'p'
          TabOrder = 9
          Color = 15466238
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton7: TElPopupButton
          Left = 3
          Top = 286
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
          Caption = '&L'#432'u'
          TabOrder = 7
          Color = 15466238
          ParentColor = False
          Action = acFormatPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton8: TElPopupButton
          Left = 78
          Top = 286
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
          Caption = '&Kh'#244'ng l'#432'u'
          TabOrder = 8
          Color = 15466238
          ParentColor = False
          Action = acFormatCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBEdit18: TdxDBEdit
          Left = 376
          Top = 29
          Width = 173
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          DataField = 'DATE_FORMAT'
          DataSource = dsFormatOption
          StyleController = dmMain.StyleController
        end
        object dxSysFormat_dxDBEdit27: TdxDBEdit
          Left = 376
          Top = 53
          Width = 173
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          DataField = 'TIME_FORMAT'
          DataSource = dsFormatOption
          StyleController = dmMain.StyleController
        end
        object dxDBEdit8: TdxDBEdit
          Left = 376
          Top = 77
          Width = 147
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          DataField = 'DATE_TIME_FORMAT'
          DataSource = dsFormatOption
          StyleController = dmMain.StyleController
        end
        object dxDBEdit9: TdxDBEdit
          Left = 122
          Top = 77
          Width = 126
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          DataField = 'THOUSAND_SEPARATOR'
          DataSource = dsFormatOption
          StyleController = dmMain.StyleController
        end
        object dxDBEdit12: TdxDBEdit
          Left = 122
          Top = 101
          Width = 126
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          DataField = 'DECIMAL_SEPARATOR'
          DataSource = dsFormatOption
          StyleController = dmMain.StyleController
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'Hi'#7875'n th'#7883' s'#7889
              object dxLayoutControl2Item8: TdxLayoutItem
                Caption = #272#7883'nh d'#7841'ng'
                Control = dxDBEdit21
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item7: TdxLayoutItem
                Caption = 'L'#224'm tr'#242'n s'#7889' l'#7867
                Control = dxDBCalcEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item3: TdxLayoutItem
                Caption = 'Ph'#226'n c'#225'ch h'#224'ng ng'#224'n'
                Control = dxDBEdit9
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                Caption = 'Ph'#226'n c'#225'ch th'#7853'p ph'#226'n'
                Control = dxDBEdit12
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group5: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'Hi'#7875'n th'#7883' ng'#224'y - gi'#7901
              object dxLayoutControl2Item1: TdxLayoutItem
                Caption = #272#7883'nh d'#7841'ng ng'#224'y'
                Control = dxDBEdit18
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item21: TdxLayoutItem
                Caption = #272#7883'nh d'#7841'ng gi'#7901
                Control = dxSysFormat_dxDBEdit27
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                Caption = #272#7883'nh d'#7841'ng ng'#224'y gi'#7901
                Control = dxDBEdit8
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl2Group7: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Item19: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Control = Bevel2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Group8: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxLayoutControl2Item17: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avBottom
                Caption = 'ElPopupButton7'
                ShowCaption = False
                Control = ElPopupButton7
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item18: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avBottom
                Caption = 'ElPopupButton8'
                ShowCaption = False
                Control = ElPopupButton8
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item16: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                Caption = 'ElPopupButton6'
                ShowCaption = False
                Control = ElPopupButton6
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item15: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                Caption = 'ElPopupButton5'
                ShowCaption = False
                Control = ElPopupButton5
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object ElTabSheet1: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'D'#7919' li'#7879'u t'#7921' '#273#7897'ng'
      Visible = False
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 613
        Height = 358
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object Bevel3: TBevel
          Left = 3
          Top = 281
          Width = 604
          Height = 2
          Shape = bsBottomLine
        end
        object ElLabel1: TElLabel
          Left = 0
          Top = 0
          Width = 3
          Height = 13
          Color = 16775408
          ParentColor = False
        end
        object ElPopupButton9: TElPopupButton
          Left = 444
          Top = 286
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 67
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          ModalResult = 1
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 4
          Color = 15466238
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton10: TElPopupButton
          Left = 369
          Top = 286
          Width = 75
          Height = 25
          Cursor = crDefault
          ImageIndex = 68
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'T&r'#7907' gi'#250'p'
          TabOrder = 3
          Color = 15466238
          ParentColor = False
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton11: TElPopupButton
          Left = 3
          Top = 286
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
          Caption = '&L'#432'u'
          TabOrder = 1
          Color = 15466238
          ParentColor = False
          Action = acIDFormatPost
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton12: TElPopupButton
          Left = 78
          Top = 286
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
          Caption = '&Kh'#244'ng l'#432'u'
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          Action = acIDFormatCancel
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBGrid1: TdxDBGrid
          Left = 3
          Top = 3
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'FORMAT_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsIDFormat
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGrid1FORMAT_ID: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'M'#227
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 41
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FORMAT_ID'
            Caption_UTF7 = 'M+AOM'
          end
          object dxDBGrid1ID_NAME: TdxDBGridColumn
            Caption = 'T'#234'n m'#7909'c'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID_NAME'
            Caption_UTF7 = 'T+AOo-n m+HuU-c'
          end
          object dxDBGrid1FORMAT_NAME: TdxDBGridColumn
            Caption = 'Chu'#7895'i '#273#7883'nh d'#7841'ng'
            HeaderAlignment = taCenter
            Width = 261
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FORMAT_NAME'
            Caption_UTF7 = 'Chu+Htc-i +AREeyw-nh d+HqE-ng'
          end
          object dxDBGrid1CURRENT_VALUE: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'Ch'#7881' s'#7889' hi'#7879'n t'#7841'i'
            HeaderAlignment = taCenter
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CURRENT_VALUE'
            Caption_UTF7 = 'Ch+Hsk s+HtE hi+Hsc-n t+HqE-i'
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl3Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = dxDBGrid1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem6: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = Bevel3
            ControlOptions.ShowBorder = False
          end
          object dxLayoutGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            UseIndent = False
            object dxLayoutItem7: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Caption = 'ElPopupButton7'
              ShowCaption = False
              Control = ElPopupButton11
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem8: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Caption = 'ElPopupButton8'
              ShowCaption = False
              Control = ElPopupButton12
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem9: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'ElPopupButton6'
              ShowCaption = False
              Control = ElPopupButton10
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem10: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'ElPopupButton5'
              ShowCaption = False
              Control = ElPopupButton9
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
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
        Caption = 'Th'#244'ng tin h'#7879' th'#7889'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 496
  end
  object qryOrgInfo: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_ORG_INFO'
      'WHERE'
      '   SYS_INFO_ID = :OLD_SYS_INFO_ID')
    EditSQL.Strings = (
      'UPDATE SYS_ORG_INFO SET'
      '   SYS_INFO_ID = :SYS_INFO_ID, /*PK*/'
      '   SUPER_ORG = :SUPER_ORG,'
      '   ORG_NAME = :ORG_NAME,'
      '   ORG_SHORT_NAME = :ORG_SHORT_NAME,'
      '   ORG_LOGO = :ORG_LOGO,'
      '   IMG_TYPE = :IMG_TYPE,'
      '   PHONE_NUMBER = :PHONE_NUMBER,'
      '   FAX_NUMBER = :FAX_NUMBER,'
      '   EMAIL = :EMAIL,'
      '   WEBSITE = :WEBSITE,'
      '   ORG_ADDRESS = :ORG_ADDRESS,'
      '   ORG_TYPE = :ORG_TYPE,'
      '   ORG_DOMAIN = :ORG_DOMAIN,'
      '   DIRECTOR = :DIRECTOR,'
      '   CHIEF_ACCOUNTANT = :CHIEF_ACCOUNTANT,'
      '   GENERAL_ACCOUNTANT = :GENERAL_ACCOUNTANT,'
      '   ACCOUNTANT = :ACCOUNTANT,'
      '   CASHIER = :CASHIER,'
      '   STORE_KEEPER = :STORE_KEEPER,'
      '   CHIEF_HR = :CHIEF_HR,'
      '   ORG_TRADE_NAME = :ORG_TRADE_NAME,'
      '   DEPUTY_DIRECTOR = :DEPUTY_DIRECTOR,'
      '   DEPUTY_DIRECTOR_2 = :DEPUTY_DIRECTOR_2,'
      '   DEPUTY_DIRECTOR_3 = :DEPUTY_DIRECTOR_3,'
      '   BANK_NAME = :BANK_NAME,'
      '   ACCOUNT_CODE = :ACCOUNT_CODE,'
      '   TAX_CODE = :TAX_CODE,'
      '   ESTABLISHED_DATE = :ESTABLISHED_DATE,'
      '   FOLLOWING_ORDER = :FOLLOWING_ORDER'
      'WHERE'
      '   SYS_INFO_ID = :OLD_SYS_INFO_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_ORG_INFO('
      '   SYS_INFO_ID, /*PK*/'
      '   SUPER_ORG,'
      '   ORG_NAME,'
      '   ORG_SHORT_NAME,'
      '   ORG_LOGO,'
      '   IMG_TYPE,'
      '   PHONE_NUMBER,'
      '   FAX_NUMBER,'
      '   EMAIL,'
      '   WEBSITE,'
      '   ORG_ADDRESS,'
      '   ORG_TYPE,'
      '   ORG_DOMAIN,'
      '   DIRECTOR,'
      '   CHIEF_ACCOUNTANT,'
      '   GENERAL_ACCOUNTANT,'
      '   ACCOUNTANT,'
      '   CASHIER,'
      '   STORE_KEEPER,'
      '   CHIEF_HR,'
      '   ORG_TRADE_NAME,'
      '   DEPUTY_DIRECTOR,'
      '   DEPUTY_DIRECTOR_2,'
      '   DEPUTY_DIRECTOR_3,'
      '   BANK_NAME,'
      '   ACCOUNT_CODE,'
      '   TAX_CODE,'
      '   ESTABLISHED_DATE,'
      '   FOLLOWING_ORDER)'
      'VALUES ('
      '   :SYS_INFO_ID,'
      '   :SUPER_ORG,'
      '   :ORG_NAME,'
      '   :ORG_SHORT_NAME,'
      '   :ORG_LOGO,'
      '   :IMG_TYPE,'
      '   :PHONE_NUMBER,'
      '   :FAX_NUMBER,'
      '   :EMAIL,'
      '   :WEBSITE,'
      '   :ORG_ADDRESS,'
      '   :ORG_TYPE,'
      '   :ORG_DOMAIN,'
      '   :DIRECTOR,'
      '   :CHIEF_ACCOUNTANT,'
      '   :GENERAL_ACCOUNTANT,'
      '   :ACCOUNTANT,'
      '   :CASHIER,'
      '   :STORE_KEEPER,'
      '   :CHIEF_HR,'
      '   :ORG_TRADE_NAME,'
      '   :DEPUTY_DIRECTOR,'
      '   :DEPUTY_DIRECTOR_2,'
      '   :DEPUTY_DIRECTOR_3,'
      '   :BANK_NAME,'
      '   :ACCOUNT_CODE,'
      '   :TAX_CODE,'
      '   :ESTABLISHED_DATE,'
      '   :FOLLOWING_ORDER)')
    KeyLinks.Strings = (
      'SYS_INFO_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryOrgInfoAfterPost
    OnNewRecord = qryOrgInfoNewRecord
    SQL.Strings = (
      'SELECT SUPER_ORG'
      '     , ORG_NAME'
      '     , ORG_SHORT_NAME'
      '     , ORG_LOGO'
      '     , IMG_TYPE'
      '     , PHONE_NUMBER'
      '     , FAX_NUMBER'
      '     , EMAIL'
      '     , WEBSITE'
      '     , ORG_ADDRESS'
      '     , ORG_TYPE'
      '     , ORG_DOMAIN'
      '     , DIRECTOR'
      '     , CHIEF_ACCOUNTANT'
      '     , GENERAL_ACCOUNTANT'
      '     , ACCOUNTANT'
      '     , CASHIER '
      '     , STORE_KEEPER'
      '     , CHIEF_HR'
      '     , ORG_TRADE_NAME'
      '     , DEPUTY_DIRECTOR'
      '     , DEPUTY_DIRECTOR_2'
      '     , DEPUTY_DIRECTOR_3'
      '     , SYS_INFO_ID'
      '     , BANK_NAME'
      '     , ACCOUNT_CODE'
      '     , TAX_CODE'
      '     , ESTABLISHED_DATE'
      '     , FOLLOWING_ORDER'
      'FROM SYS_ORG_INFO')
    FieldOptions = []
    Left = 16
    Top = 152
    object qryOrgInfoSUPER_ORG: TWideStringField
      FieldName = 'SUPER_ORG'
      Size = 126
    end
    object qryOrgInfoORG_NAME: TWideStringField
      FieldName = 'ORG_NAME'
      Size = 63
    end
    object qryOrgInfoORG_SHORT_NAME: TWideStringField
      FieldName = 'ORG_SHORT_NAME'
      Size = 63
    end
    object qryOrgInfoORG_LOGO: TBlobField
      FieldName = 'ORG_LOGO'
      Size = 8
    end
    object qryOrgInfoIMG_TYPE: TWideStringField
      FieldName = 'IMG_TYPE'
      Size = 15
    end
    object qryOrgInfoPHONE_NUMBER: TWideStringField
      FieldName = 'PHONE_NUMBER'
      Size = 15
    end
    object qryOrgInfoFAX_NUMBER: TWideStringField
      FieldName = 'FAX_NUMBER'
      Size = 15
    end
    object qryOrgInfoEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qryOrgInfoWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 30
    end
    object qryOrgInfoORG_ADDRESS: TWideStringField
      FieldName = 'ORG_ADDRESS'
      Size = 126
    end
    object qryOrgInfoORG_TYPE: TWideStringField
      FieldName = 'ORG_TYPE'
      Size = 126
    end
    object qryOrgInfoORG_DOMAIN: TWideStringField
      FieldName = 'ORG_DOMAIN'
      Size = 126
    end
    object qryOrgInfoDIRECTOR: TWideStringField
      FieldName = 'DIRECTOR'
      Size = 63
    end
    object qryOrgInfoCHIEF_ACCOUNTANT: TWideStringField
      FieldName = 'CHIEF_ACCOUNTANT'
      Size = 63
    end
    object qryOrgInfoGENERAL_ACCOUNTANT: TWideStringField
      FieldName = 'GENERAL_ACCOUNTANT'
      Size = 63
    end
    object qryOrgInfoACCOUNTANT: TWideStringField
      FieldName = 'ACCOUNTANT'
      Size = 63
    end
    object qryOrgInfoCASHIER: TWideStringField
      FieldName = 'CASHIER'
      Size = 63
    end
    object qryOrgInfoSTORE_KEEPER: TWideStringField
      FieldName = 'STORE_KEEPER'
      Size = 63
    end
    object qryOrgInfoCHIEF_HR: TWideStringField
      FieldName = 'CHIEF_HR'
      Size = 63
    end
    object qryOrgInfoORG_TRADE_NAME: TWideStringField
      FieldName = 'ORG_TRADE_NAME'
      Size = 63
    end
    object qryOrgInfoDEPUTY_DIRECTOR: TWideStringField
      FieldName = 'DEPUTY_DIRECTOR'
      Size = 63
    end
    object qryOrgInfoSYS_INFO_ID: TSmallintField
      FieldName = 'SYS_INFO_ID'
      Required = True
    end
    object qryOrgInfoBANK_NAME: TWideStringField
      FieldName = 'BANK_NAME'
      Size = 126
    end
    object qryOrgInfoACCOUNT_CODE: TWideStringField
      FieldName = 'ACCOUNT_CODE'
      Size = 30
    end
    object qryOrgInfoTAX_CODE: TWideStringField
      FieldName = 'TAX_CODE'
      Size = 30
    end
    object qryOrgInfoESTABLISHED_DATE: TDateField
      FieldName = 'ESTABLISHED_DATE'
    end
    object qryOrgInfoFOLLOWING_ORDER: TWideStringField
      FieldName = 'FOLLOWING_ORDER'
      Size = 30
    end
    object qryOrgInfoDEPUTY_DIRECTOR_2: TWideStringField
      FieldName = 'DEPUTY_DIRECTOR_2'
      Size = 63
    end
    object qryOrgInfoDEPUTY_DIRECTOR_3: TWideStringField
      FieldName = 'DEPUTY_DIRECTOR_3'
      Size = 63
    end
  end
  object dsOrgInfo: TDataSource
    DataSet = qryOrgInfo
    Left = 16
    Top = 120
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 200
    Top = 104
    object acOrgInfoCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acOrgInfoCancel'
      ImageIndex = 47
    end
    object acOrgInfoPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acOrgInfoPost'
      ImageIndex = 14
    end
    object acFormatCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acFormatCancel'
      ImageIndex = 47
      DataSource = dsFormatOption
    end
    object acFormatPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acFormatPost'
      ImageIndex = 14
      DataSource = dsFormatOption
    end
    object acSysParamCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acSysParamCancel'
      ImageIndex = 47
    end
    object acSysParamPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acSysParamPost'
      ImageIndex = 14
    end
    object acChangeAction: TAction
      Caption = 'acChangeAction'
    end
    object acIDFormatCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acIDFormatCancel'
      ImageIndex = 47
      DataSource = dsIDFormat
    end
    object acIDFormatPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acIDFormatPost'
      ImageIndex = 44
      DataSource = dsIDFormat
    end
  end
  object dsFormatOption: TDataSource
    DataSet = qryFormatOption
    Left = 56
    Top = 152
  end
  object qryFormatOption: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_OPTIONS'
      'WHERE'
      '   OPTION_ID = :OLD_OPTION_ID')
    EditSQL.Strings = (
      'UPDATE HR_OPTIONS SET'
      '   OPTION_ID = :OPTION_ID, /*PK*/'
      '   DATE_FORMAT = :DATE_FORMAT,'
      '   TIME_FORMAT = :TIME_FORMAT,'
      '   DATE_TIME_FORMAT = :DATE_TIME_FORMAT,'
      '   ROUND_NUMBER = :ROUND_NUMBER,'
      '   NUMERIC_FORMAT = :NUMERIC_FORMAT,'
      '   THOUSAND_SEPARATOR = :THOUSAND_SEPARATOR,'
      '   DECIMAL_SEPARATOR = :DECIMAL_SEPARATOR'
      'WHERE'
      '   OPTION_ID = :OLD_OPTION_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_OPTIONS('
      '   OPTION_ID, /*PK*/'
      '   DATE_FORMAT,'
      '   TIME_FORMAT,'
      '   DATE_TIME_FORMAT,'
      '   ROUND_NUMBER,'
      '   NUMERIC_FORMAT,'
      '   THOUSAND_SEPARATOR,'
      '   DECIMAL_SEPARATOR)'
      'VALUES ('
      '   :OPTION_ID,'
      '   :DATE_FORMAT,'
      '   :TIME_FORMAT,'
      '   :DATE_TIME_FORMAT,'
      '   :ROUND_NUMBER,'
      '   :NUMERIC_FORMAT,'
      '   :THOUSAND_SEPARATOR,'
      '   :DECIMAL_SEPARATOR)')
    KeyLinks.Strings = (
      'HR_OPTIONS.OPTION_ID')
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryFormatOptionAfterPost
    SQL.Strings = (
      'SELECT OPTION_ID'
      '     , DATE_FORMAT'
      '     , TIME_FORMAT'
      '     , DATE_TIME_FORMAT'
      '     , ROUND_NUMBER'
      '     , NUMERIC_FORMAT'
      '     , THOUSAND_SEPARATOR'
      '     , DECIMAL_SEPARATOR'
      'FROM HR_OPTIONS')
    FieldOptions = []
    Left = 56
    Top = 120
    object qryFormatOptionOPTION_ID: TSmallintField
      FieldName = 'OPTION_ID'
      Required = True
    end
    object qryFormatOptionDATE_FORMAT: TWideStringField
      DisplayWidth = 30
      FieldName = 'DATE_FORMAT'
      Size = 30
    end
    object qryFormatOptionTIME_FORMAT: TWideStringField
      DisplayWidth = 30
      FieldName = 'TIME_FORMAT'
      Size = 30
    end
    object qryFormatOptionROUND_NUMBER: TSmallintField
      FieldName = 'ROUND_NUMBER'
    end
    object qryFormatOptionNUMERIC_FORMAT: TWideStringField
      FieldName = 'NUMERIC_FORMAT'
      Size = 63
    end
    object qryFormatOptionDATE_TIME_FORMAT: TWideStringField
      DisplayWidth = 30
      FieldName = 'DATE_TIME_FORMAT'
      Size = 30
    end
    object qryFormatOptionTHOUSAND_SEPARATOR: TWideStringField
      FieldName = 'THOUSAND_SEPARATOR'
      Size = 90
    end
    object qryFormatOptionDECIMAL_SEPARATOR: TWideStringField
      FieldName = 'DECIMAL_SEPARATOR'
      Size = 90
    end
  end
  object qryIDFormat: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    EditSQL.Strings = (
      'UPDATE ID_FORMAT SET'
      '   FORMAT_ID = :FORMAT_ID, /*PK*/'
      '   FORMAT_NAME = :FORMAT_NAME,'
      '   ID_NAME = :ID_NAME,'
      '   CURRENT_VALUE = :CURRENT_VALUE'
      'WHERE'
      '   FORMAT_ID = :OLD_FORMAT_ID')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'FORMAT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryFormatOptionAfterPost
    SQL.Strings = (
      'SELECT FORMAT_ID'
      '     , FORMAT_NAME'
      '     , ID_NAME'
      '     , CURRENT_VALUE'
      'FROM ID_FORMAT'
      '')
    FieldOptions = []
    Left = 96
    Top = 120
    object qryIDFormatFORMAT_ID: TSmallintField
      FieldName = 'FORMAT_ID'
      Required = True
    end
    object qryIDFormatFORMAT_NAME: TWideStringField
      FieldName = 'FORMAT_NAME'
      Size = 30
    end
    object qryIDFormatID_NAME: TWideStringField
      FieldName = 'ID_NAME'
      Size = 30
    end
    object qryIDFormatCURRENT_VALUE: TIntegerField
      FieldName = 'CURRENT_VALUE'
    end
  end
  object dsIDFormat: TDataSource
    DataSet = qryIDFormat
    Left = 96
    Top = 152
  end
end
