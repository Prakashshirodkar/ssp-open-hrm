inherited frmContractMaker: TfrmContractMaker
  Left = 321
  Top = 165
  Width = 716
  Height = 482
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 429
    Width = 708
  end
  inline frameToolbar1: TframeToolbar [1]
    Left = 0
    Top = 383
    Width = 708
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 708
      inherited btnGenerate: TElPopupButton
        ImageIndex = 57
        UseImageList = True
        Images = dmMain.imgAction
        Action = acPhatsinhHesoDikem
      end
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited dxLayoutControl1Group1: TdxLayoutGroup
          inherited dxLayoutControl1Group4: TdxLayoutGroup
            Visible = True
          end
        end
      end
    end
  end
  object pageMain: TElPageControl
    Left = 0
    Top = 0
    Width = 708
    Height = 383
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = ImageList1
    Multiline = False
    OnChanging = pageMainChanging
    OnChange = pageMainChange
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
    ActivePage = tabNoidungHD
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
    TabOrder = 2
    object tabNoidungHD: TElTabSheet
      PageControl = pageMain
      ImageIndex = 0
      TabVisible = True
      Caption = 'Th'#244'ng tin h'#7907'p '#273#7891'ng'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 704
        Height = 357
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxDBEdit1: TdxDBEdit
          Left = 105
          Top = 28
          Width = 180
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'CONTRACT_NO'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
        end
        object dxDBEdit2: TdxDBEdit
          Left = 105
          Top = 74
          Width = 443
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          DataField = 'CONTRACT_NAME'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
        end
        object dxDBPopupEdit1: TdxDBPopupEdit
          Left = 357
          Top = 28
          Width = 237
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 2
          DataField = 'CONTRACT_TYPE_NAME'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit1CloseUp
          OnInitPopup = dxDBPopupEdit1InitPopup
        end
        object dxDBPopupEdit2: TdxDBPopupEdit
          Left = 105
          Top = 51
          Width = 180
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 1
          DataField = 'DEPT_NAME'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit2CloseUp
          OnInitPopup = dxDBPopupEdit2InitPopup
        end
        object dxDBEdit3: TdxDBEdit
          Left = 357
          Top = 51
          Width = 443
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          DataField = 'REPRESENTATIVE'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
        end
        object dxDBPopupEdit3: TdxDBPopupEdit
          Left = 105
          Top = 130
          Width = 180
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 5
          DataField = 'FULL_NAME'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit3CloseUp
          OnInitPopup = dxDBPopupEdit3InitPopup
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 357
          Top = 130
          Width = 115
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 7
          DataField = 'STARTED_DATE'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 357
          Top = 153
          Width = 115
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 8
          DataField = 'EXPIRED_DATE'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 357
          Top = 209
          Width = 142
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 10
          DataField = 'FILE_NAME'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          Buttons = <
            item
              Default = True
            end
            item
              Default = False
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D7DCE5FF7487
                A6FFFF00FF00FF00FF00FF00FF00FF00FF001BA1D0FF59CEF6FF0A9CCDFFFF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0027497AFF2649
                7BFF2B4776FFFF00FF00FF00FF001BA1CFFF85E6FFFF53D9FFFF51B8DBFF12A9
                DEFF41B2D8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00275D95FF3882
                BDFF26659FFF2C4A79FF21A8D6FF93EEFFFF60DFFFFF60DFFFFF47B5D9FF2EC1
                F3FF31C0F1FF0197CAFFFF00FF00FF00FF00FF00FF00FF00FF00C9D3DFFF296D
                A8FF6DB1E0FF2575B4FF5F9DBEFF71EAFFFF6BE5FFFF6AE5FFFF41B2D8FF36C8
                F8FF41CCFAFF45CFFFFF089FD2FFF5FBFDFFFF00FF00FF00FF00FF00FF00C9D7
                E4FF2978B8FF76BEECFF2782C5FF59B4D4FF75EFFFFF74EEFFFF3AAFD7FF3AD3
                FFFF4BD3FFFF4BD4FFFF50D6FFFF27B7E5FF1CA2CFFFFF00FF00FF00FF00FF00
                FF003EB0D7FF237ABDFF38A2E7FF4A769FFFA58D8DFFBA8A8AFFAF7F80FFBD98
                98FFA08C8DFF53DCFFFF56D9FFFF58DAFFFF4BD0F7FF25A6D2FFFF00FF00FF00
                FF00D5EEF6FF43B2D9FF7493ACFFE0B2AFFFEDE4E6FFEDE2C2FFEFEDD0FFE5DD
                DAFFF8DFE5FFA18B8BFF5EE0FFFF60DFFFFF65E2FFFF0298CCFFFF00FF00FF00
                FF00FF00FF00FF00FF00A68D8DFFF8E7D1FFFFF0D4FFFFFFFDFFFFFFFFFFFFFF
                FBFFFAF9F1FFEAD0D3FF6ADEF8FF6BE5FFFF51D3F3FF029BCDFFFF00FF00FF00
                FF00FF00FF00F7F5F5FFF3EEEEFFFAD5ACFFFEF5E3FFFFFEF2FFFFFFF7FFFFFF
                FDFFFFFFFCFFFFFFFEFF9A9497FF66D7F3FFA9F3FFFF039BCDFFFF00FF00FF00
                FF00FF00FF00E7E1E1FFFAF4EFFFFDF0E2FFFDF3DBFFFEF9E4FFFFFFEEFFFFFF
                F7FFFFFFF9FFF9F8DFFF9B9194FFA7F3FFFFACF5FFFF059CCEFFFF00FF00FF00
                FF00FF00FF00F9F8F8FFFFFFFFFFF9D3ACFFFDF1E1FFFEF5DBFFFEF8DBFFFFFE
                E1FFFFFFE6FFCDB8A3FFA28C8DFFB5F8FFFFB0F7FFFF079FCFFFFF00FF00FF00
                FF00FF00FF00FF00FF00CEC2C2FFF1C3A4FFFBD9B3FFFDF2E0FFFCE8C3FFFFED
                C5FFE3CA99FFFFFFFFFFA79090FF24A4D2FFECFFFFFF079ECFFFFF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00CFC3C3FFFFFFFFFFBB9072FFAA8269FFA985
                72FFFFFFFFFFAB9494FFFF00FF00FF00FF003CADD5FFFF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00A69090FFA28A8AFFA38B8BFFA28B
                8BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Kind = bkGlyph
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object dxDBPopupEdit5: TdxDBPopupEdit
          Left = 105
          Top = 153
          Width = 180
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 6
          DataField = 'PRE_CONTRACT_NAME'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit5CloseUp
          OnInitPopup = dxDBPopupEdit5InitPopup
        end
        object dxDBMemo1: TdxDBMemo
          Left = 105
          Top = 232
          Width = 185
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          DataField = 'CONTRACT_NOTE'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          Height = 89
        end
        object dxDBPopupEdit4: TdxDBPopupEdit
          Left = 105
          Top = 209
          Width = 180
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 9
          DataField = 'TEMPLATE_FILE'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit4CloseUp
          OnInitPopup = dxDBPopupEdit4InitPopup
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            Caption = 'TH'#212'NG TIN B'#202'N S'#7916' D'#7908'NG LAO '#272#7896'NG'
            object dxLayoutControl1Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'S'#7889' h'#7907'p '#273#7891'ng'
                  Control = dxDBEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  Caption = #272#417'n v'#7883' s'#7917' d'#7909'ng L'#272
                  Control = dxDBPopupEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group5: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Lo'#7841'i h'#7907'p '#273#7891'ng '
                  Control = dxDBPopupEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Ng'#432#7901'i '#273#7841'i di'#7879'n'
                  Control = dxDBEdit3
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'T'#234'n h'#7907'p '#273#7891'ng'
              Control = dxDBEdit2
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            Caption = 'TH'#212'NG TIN B'#202'N NG'#431#7900'I LAO '#272#7896'NG'
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Group10: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item6: TdxLayoutItem
                Caption = 'Ng'#432#7901'i lao '#273#7897'ng'
                Control = dxDBPopupEdit3
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item13: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'H'#7907'p '#273#7891'ng tr'#432#7899'c'
                Control = dxDBPopupEdit5
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group9: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
                Control = dxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ng'#224'y k'#7871't th'#250'c'
                Control = dxDBDateEdit2
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Group6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'V'#258'N B'#7842'N L'#431'U TR'#7918
            object dxLayoutControl1Group8: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'M'#7851'u in h'#7907'p '#273#7891'ng'
                Control = dxDBPopupEdit4
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item9: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avCenter
                Caption = 'T'#7853'p tin l'#432'u tr'#7919
                Control = dxDBButtonEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Ghi ch'#250
              CaptionOptions.AlignVert = tavTop
              Control = dxDBMemo1
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabDieukhoanChitiet: TElTabSheet
      PageControl = pageMain
      ImageIndex = 1
      TabVisible = True
      Caption = #272'i'#7873'u kho'#7843'n h'#7907'p '#273#7891'ng'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 704
        Height = 357
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxDBPopupEdit6: TdxDBPopupEdit
          Left = 105
          Top = 51
          Width = 200
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 2
          OnEnter = acChitietBonhiemSETDSExecute
          DataField = 'POSITION_TITLE'
          DataSource = ContractDM.dsChitietBonhiem
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit6CloseUp
          OnInitPopup = dxDBPopupEdit6InitPopup
        end
        object dxDBDateEdit3: TdxDBDateEdit
          Left = 372
          Top = 51
          Width = 90
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 3
          OnEnter = acChitietBonhiemSETDSExecute
          DataField = 'ASSIGNED_DATE'
          DataSource = ContractDM.dsChitietBonhiem
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBDateEdit4: TdxDBDateEdit
          Left = 531
          Top = 51
          Width = 90
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 4
          OnEnter = acChitietBonhiemSETDSExecute
          DataField = 'ENDED_DATE'
          DataSource = ContractDM.dsChitietBonhiem
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBEdit4: TdxDBEdit
          Left = 105
          Top = 28
          Width = 200
          Color = clInfoBk
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          CharCase = ecUpperCase
          DataField = 'HOTEN_NV'
          DataSource = ContractDM.dsContract
          StyleController = dmMain.StyleController
        end
        object dxDBEdit6: TdxDBEdit
          Left = 105
          Top = 107
          Width = 184
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnEnter = acChitietDieukhoanSETDSExecute
          DataField = 'CONGVIEC_PHAILAM'
          DataSource = ContractDM.dsChitietDieukhoan
          StyleController = dmMain.StyleController
        end
        object dxDBEdit7: TdxDBEdit
          Left = 105
          Top = 130
          Width = 219
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnEnter = acChitietDieukhoanSETDSExecute
          DataField = 'THOIGIAN_LAMCHINH'
          DataSource = ContractDM.dsChitietDieukhoan
          StyleController = dmMain.StyleController
        end
        object dxDBEdit8: TdxDBEdit
          Left = 431
          Top = 130
          Width = 219
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnEnter = acChitietDieukhoanSETDSExecute
          DataField = 'THOIGIAN_LAMTHEM'
          DataSource = ContractDM.dsChitietDieukhoan
          StyleController = dmMain.StyleController
        end
        object dxDBMemo2: TdxDBMemo
          Left = 105
          Top = 153
          Width = 185
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnEnter = acChitietDieukhoanSETDSExecute
          DataField = 'GHICHU'
          DataSource = ContractDM.dsChitietDieukhoan
          StyleController = dmMain.StyleController
          Height = 89
        end
        object chkViTriChinh: TdxDBCheckEdit
          Left = 372
          Top = 28
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          DataField = 'IS_MAIN_POSITION'
          DataSource = ContractDM.dsChitietBonhiem
          StyleController = dmMain.StyleController
          ValueChecked = '1'
          ValueUnchecked = '0'
          NullStyle = nsUnchecked
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group2: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            Caption = 'V'#7882' TR'#205' C'#212'NG T'#193'C'
            object dxLayoutControl2Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'H'#7885' t'#234'n nh'#226'n vi'#234'n'
                Control = dxDBEdit4
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item5: TdxLayoutItem
                Caption = 'V'#7883' tr'#237' ch'#237'nh'
                Control = chkViTriChinh
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'V'#7883' tr'#237' l'#224'm vi'#7879'c'
                Control = dxDBPopupEdit6
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
                Control = dxDBDateEdit3
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ng'#224'y k'#7871't th'#250'c'
                Control = dxDBDateEdit4
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl2Group5: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = #272'I'#7872'U KI'#7878'N L'#192'M VI'#7878'C'
            object dxLayoutControl2Group6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl2Item6: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'C'#244'ng vi'#7879'c ph'#7843'i l'#224'm'
                Control = dxDBEdit6
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Group8: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl2Item7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Gi'#7901' l'#224'm ch'#237'nh th'#7913'c'
                  Control = dxDBEdit7
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Gi'#7901' l'#224'm th'#234'm'
                  Control = dxDBEdit8
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl2Item9: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Ghi ch'#250' th'#234'm'
              CaptionOptions.AlignVert = tavTop
              Control = dxDBMemo2
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabHesoDikemHopdong: TElTabSheet
      PageControl = pageMain
      ImageIndex = 3
      TabVisible = True
      Caption = 'H'#7879' s'#7889' '#273'i k'#232'm h'#7907'p '#273#7891'ng'
      Visible = False
      object dxLayoutControl10: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 704
        Height = 357
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object gridFormalParam: TdxDBGrid
          Left = 2
          Top = 203
          Width = 639
          Height = 146
          Bands = <
            item
              Alignment = taLeftJustify
              Width = 221
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PARAM_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnEnter = gridFormalParamEnter
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = ContractDM.dsHesoDikem
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          object gridFormalParamPARAM_NO: TdxDBGridColumn
            Caption = 'K'#253' hi'#7879'u tham s'#7889
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARAM_NO'
            Caption_UTF7 = 'K+AP0 hi+Hsc-u tham s+HtE'
          end
          object gridFormalParamPARAM_NAME: TdxDBGridColumn
            Caption = 'T'#234'n tham s'#7889' k'#232'm h'#7907'p '#273#7891'ng'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 179
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARAM_NAME'
            Caption_UTF7 = 'T+AOo-n tham s+HtE k+AOg-m h+HuM-p +AREe0w-ng'
          end
          object gridFormalParamPARAM_VALUE: TdxDBGridCalcColumn
            Caption = 'Gi'#225' tr'#7883' '#225'p d'#7909'ng'
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARAM_VALUE'
            Caption_UTF7 = 'Gi+AOE tr+Hss +AOE-p d+HuU-ng'
          end
          object gridFormalParamNOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 220
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxCHANGE_NO: TdxDBEdit
          Left = 49
          Top = 28
          Width = 115
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          OnEnter = dxCHANGE_NOEnter
          DataField = 'CHANGE_NO'
          DataSource = ContractDM.dsApdung_HesoCB
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 64
        end
        object dxDBEdit9: TdxDBEdit
          Left = 216
          Top = 28
          Width = 121
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnEnter = dxCHANGE_NOEnter
          DataField = 'CHANGE_NAME'
          DataSource = ContractDM.dsApdung_HesoCB
          StyleController = dmMain.StyleController
        end
        object dxDBSpinEdit1: TdxDBSpinEdit
          Left = 556
          Top = 28
          Width = 70
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnEnter = dxWAGE_SCALEEnter
          Alignment = taCenter
          DataField = 'APPLY_YEAR'
          DataSource = ContractDM.dsHesoCB_Canhan
          StyleController = dmMain.StyleController
          MaxValue = 3000.000000000000000000
          MinValue = 1900.000000000000000000
          StoredValues = 49
        end
        object dxDBSpinEdit2: TdxDBSpinEdit
          Left = 640
          Top = 28
          Width = 50
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnEnter = dxWAGE_SCALEEnter
          Alignment = taCenter
          DataField = 'APPLY_PERIOD'
          DataSource = ContractDM.dsHesoCB_Canhan
          StyleController = dmMain.StyleController
          MaxValue = 9.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 49
        end
        object dxDBSpinEdit3: TdxDBSpinEdit
          Left = 473
          Top = 28
          Width = 60
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnEnter = dxWAGE_SCALEEnter
          Alignment = taCenter
          DataField = 'APPLY_MONTH'
          DataSource = ContractDM.dsHesoCB_Canhan
          StyleController = dmMain.StyleController
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 49
        end
        object dxWAGE_SCALE: TdxDBPopupEdit
          Left = 74
          Top = 77
          Width = 90
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 5
          OnEnter = dxWAGE_SCALEEnter
          DataField = 'WAGE_SCALE'
          DataSource = ContractDM.dsHesoCB_Canhan
          StyleController = dmMain.StyleController
          OnCloseUp = dxWAGE_SCALECloseUp
          OnInitPopup = dxWAGE_SCALEInitPopup
        end
        object dxDBEdit10: TdxDBEdit
          Left = 216
          Top = 77
          Width = 127
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnEnter = dxWAGE_SCALEEnter
          DataField = 'CAREER_NAME'
          DataSource = ContractDM.dsHesoCB_Canhan
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 64
        end
        object dxDBCalcEdit1: TdxDBCalcEdit
          Left = 510
          Top = 77
          Width = 79
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 7
          OnEnter = dxWAGE_SCALEEnter
          DataField = 'WAGE_COEFF'
          DataSource = ContractDM.dsHesoCB_Canhan
          StyleController = dmMain.StyleController
        end
        object dxDBEdit11: TdxDBEdit
          Left = 608
          Top = 77
          Width = 70
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnEnter = dxWAGE_SCALEEnter
          Alignment = taCenter
          DataField = 'WAGE_LEVEL'
          DataSource = ContractDM.dsHesoCB_Canhan
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 65
        end
        object dxDBPopupEdit7: TdxDBPopupEdit
          Left = 74
          Top = 133
          Width = 90
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 9
          OnEnter = dxDBPopupEdit7Enter
          DataField = 'WAGE_SCALE'
          DataSource = ContractDM.dsHeSo_CongTy
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit7CloseUp
          OnInitPopup = dxDBPopupEdit7InitPopup
        end
        object dxDBEdit5: TdxDBEdit
          Left = 216
          Top = 133
          Width = 223
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnEnter = dxWAGE_SCALEEnter
          DataField = 'WAGE_SCALE_NAME'
          DataSource = ContractDM.dsHeSo_CongTy
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 64
        end
        object dxDBCalcEdit2: TdxDBCalcEdit
          Left = 510
          Top = 133
          Width = 79
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 11
          OnEnter = dxWAGE_SCALEEnter
          DataField = 'WAGE_COEFF'
          DataSource = ContractDM.dsHeSo_CongTy
          StyleController = dmMain.StyleController
        end
        object dxDBEdit12: TdxDBEdit
          Left = 608
          Top = 133
          Width = 70
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnEnter = dxWAGE_SCALEEnter
          Alignment = taCenter
          DataField = 'WAGE_LEVEL'
          DataSource = ContractDM.dsHeSo_CongTy
          ReadOnly = True
          StyleController = dmMain.StyleController
          StoredValues = 65
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl10Group1: TdxLayoutGroup
            Caption = 'H'#7878' S'#7888' NG'#7840'CH B'#7852'C'
            object dxLayoutControl10Group7: TdxLayoutGroup
              Caption = 'New Group'
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl10Item1: TdxLayoutItem
                Caption = 'M'#227' '#273#7907't'
                Control = dxCHANGE_NO
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'T'#234'n '#273#7907't'
                Control = dxDBEdit9
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item5: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = #193'p d'#7909'ng t'#7915': Th'#225'ng'
                Control = dxDBSpinEdit3
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'N'#259'm'
                Control = dxDBSpinEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item4: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'K'#7923
                Control = dxDBSpinEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl10Group2: TdxLayoutGroup
              Caption = 'H'#7879' s'#7889' LCB'
              LayoutDirection = ldHorizontal
              object dxLayoutControl10Item6: TdxLayoutItem
                Caption = 'M'#227' ng'#7841'ch'
                Control = dxWAGE_SCALE
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item7: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'T'#234'n ng'#7841'ch'
                Control = dxDBEdit10
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item8: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'H'#7879' s'#7889' '#225'p d'#7909'ng'
                Control = dxDBCalcEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item9: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'B'#7853'c'
                Control = dxDBEdit11
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl10Group3: TdxLayoutGroup
              Caption = 'H'#7879' s'#7889' l'#432#417'ng ch'#7913'c danh'
              LayoutDirection = ldHorizontal
              object dxLayoutControl10Item10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'M'#227' ng'#7841'ch'
                Control = dxDBPopupEdit7
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item11: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'T'#234'n ng'#7841'ch'
                Control = dxDBEdit5
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item12: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'H'#7879' s'#7889' '#225'p d'#7909'ng'
                Control = dxDBCalcEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl10Item13: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'B'#7853'c'
                Control = dxDBEdit12
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'H'#7878' S'#7888' '#272'I K'#200'M H'#7906'P '#272#7890'NG'
            LayoutDirection = ldHorizontal
            UseIndent = False
          end
          object dxLayoutItem1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'gridFormalParam'
            ShowCaption = False
            Control = gridFormalParam
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
        Caption = 'H'#7907'p '#273#7891'ng lao '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 232
    Top = 224
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 360
    Top = 160
    object acChitietBonhiemSETDS: TAction
      Caption = 'acChitietBonhiemSETDS'
      OnExecute = acChitietBonhiemSETDSExecute
    end
    object acChitietDieukhoanSETDS: TAction
      Caption = 'acChitietDieukhoanSETDS'
      OnExecute = acChitietDieukhoanSETDSExecute
    end
    object acNoidungHDSETDS: TAction
      Caption = 'acNoidungHDSETDS'
      OnExecute = acNoidungHDSETDSExecute
    end
    object acChitietHesoDikem: TAction
      Caption = 'acChitietHesoDikem'
      OnExecute = acChitietHesoDikemExecute
    end
    object acPhatsinhHesoDikem: TAction
      Caption = 'acPhatsinhHesoDikem'
      ImageIndex = 57
      OnExecute = acPhatsinhHesoDikemExecute
      OnUpdate = acPhatsinhHesoDikemUpdate
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 168
    Top = 224
  end
  object ImageList1: TImageList
    Left = 136
    Top = 224
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      C5008383840058544C004F421A00423E3700575659009D9B9B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040004040400040404000404
      0400040404000404040004040400000000000000000000000000000000000000
      0000000000009CD4EC008CCCF0008CCCF00080C8F00080C8F00074C4F00074C4
      F00074C4F00074C4F00074C4F000686868000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D9B9B006859
      2F00BD981800E1B31100E1B31100201F2300201F2300201F2300201F2300201F
      2300201F2300201F2300201F2300000000000000000000000000000000000000
      0000000000000000000000000000F0DCA400F0DCA400F0D49400F0CC8400F0C8
      7800F0C46C00ECBC5C00E8B43C00000000000000000000000000000000000000
      000000000000ACDCF4009CD4EC008CCCF0008CCCF0008CCCF00080C8F00074C4
      F00074C4F00074C4F00074C4F000686868000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDD19600EDD1
      9600EDD19600EDD19600EDD19600201F230000ECFF0000E4FF0012D1FF001EC5
      FF0024BCFE0027B4FC00201F2300000000000000000000000000000000000000
      0000000000000000000000000000F8E4C4006058500060585000605850006058
      50006058500060585000E8B84C00000000000000000000000000000000000000
      000000000000ACDCF400ACDCF400ACDCF4008CCCF0008CCCF0008CCCF00080C8
      F00080C8F00074C4F00074C4F000686868000000000000000000000000000000
      0000000000000F191F0016252E003C637B0061A1C80077C6F60068ADD7004A7C
      9A00578AA9000000000000000000000000000000000000000000F2E1BE00F2E1
      BE00F2E1BE00F2E1BE00F2E1BE00201F230000ECFF0000E4FF0012D1FF001ACA
      FF0021C1FE0024BCFE00201F2300000000000000000000000000000000000000
      0000000000000000000000000000F8ECD400F8ECD400F8E4C400F8E0B400F0DC
      A400F0D49400F0C87800ECBC5C0000000000D0B45400D8C47800F0ECD400F8F0
      E40000000000BCE4F800ACACA400ACACA400ACACA400ACACA400ACACA400ACAC
      A400ACACA40080C8F00074C4F000686868000000000000000000000000000F19
      1F0068ADD70061A1C80077C6F60077C6F60077C6F60077C6F60077C6F60077C6
      F60077C6F6000000000000000000000000000000000000000000F9EFDE009993
      8900B4ACA000F9EFDE00F9EFDE00201F230000F2FF0000E4FF000DD5FF0016CE
      FF001EC5FF0024BCFE00201F23000000000000000000345C7800082838000828
      3800040404000828380004040400F8F8E800C8C8B800BCB4A400B8AC9400B8A8
      8400B8A07400B0A06800F0C46C0000000000D0B45400D0B45400DCC88400E0D0
      940000000000BCE4F800BCE4F800BCE4F800ACDCF400ACDCF4009CD4EC008CCC
      F0008CCCF0008CCCF00080C8F000686868000000000000000000000000000000
      00000000000000000000070C0F002D4A5C00578AA90088CDF70081CAF70078C6
      F60077C6F60000000000000000000000000000000000000000007C7B7D002E2D
      3000201F23002E2D3000B8B5B100201F230000F2FF0000ECFF0003DCFF0012D1
      FF001ACAFF0021C1FE00201F230000000000405868001498F0001498F000746C
      540044ACF0001018180064BCF000FFFFFF00605850006058500060585000F8E4
      C400000000000000000000000000000000000000000000000000000000000000
      000000000000CCE8F800CCE8F800BCE4F800BCE4F800ACDCF400ACDCF400ACDC
      F4009CD4EC008CCCF0008CCCF000686868000000000000000000000000000000
      000016252E00000000000B0F0F00464E4F0030393F00C3E6FB00B4E6FF0096D3
      F8001E323E00000000000000000000000000000000000000000083838400201F
      2300E3B93800E3B93800CAA63900201F230000F2FF0000F2FF0000E4FF0003DC
      FF0012D1FF001EC5FF00201F230000000000888078001498F00010181800A8D8
      F80044ACF0000C88E800746C5400FFFFFF00FFFFFF00FFFFFF00F8F8E800F8EC
      D400E8A00800E8A0080050380000000000000000000000000000000000000000
      000000000000DCECF800ACACA400ACACA400ACACA400ACACA400ACACA400ACAC
      A400ACACA4009CD4EC008CCCF000686868000000000000000000000000000000
      00004A7C9A00141E1F00394C4D00000000001C1F2000E1E9EE00E3F3FD006373
      7E00000000000000000000000000000000000000000000000000626164005148
      3400E6C26600E6C26600E6C26600201F230000F2FF0000F2FF0000E4FF0003DC
      FF0012D1FF001ACAFF00201F2300000000001498F00044ACF000101818001018
      1800746C54001498F00010181800FFFFFF00C8C8B800C8C8B800C8C8B800F8EC
      D400E8A00800503800000000000000000000CCA83C00DCC88400F0ECD400F8F8
      E80000000000DCECF800DCECF800CCE8F800CCE8F800CCE8F800BCE4F800BCE4
      F800ACDCF400ACDCF400ACDCF400686868000000000000000000000000000000
      00003C637B002D4A5C00232B2F001C1F2000000000001212120063737E000000
      00000000000000000000000000000000000000000000000000003C3B3F008575
      5400EACB8500EACB8500EACB8500201F230000F2FF0000F2FF0000E4FF00201F
      2300201F2300201F2300201F23000000000034A8F00064BCF0004C6878001018
      1800746C54001498F00000304C00FFFFFF00FFFFFF00FFFFFF00F8F8F400F8F0
      E00004040400000000000000000000000000D0B45400D8C47800F0E4C400F0EC
      D40000000000ECF4F400DCECF800DCECF800DCECF800CCE8F800CCE8F800BCE4
      F800BCE4F800ACDCF400ACDCF400686868000000000000000000000000000000
      0000000000007EB6D900ABC0CD00ABC0CD00ABC0CD00141E1F00000000000000
      0000000000000000000000000000000000000000000000000000201F2300AE9D
      7A00EFD5A000EFD5A000EFD5A000201F230000F2FF0000F2FF0000ECFF00201F
      23000000000000000000201F2300000000003488C80010181800FFFFFF001018
      1800746C54009CACB800ECF4F800DCF0F8000404040000000000000000000000
      000000000000000000000000000000000000D0B45400CCA83C00D8C47800D8C4
      780000000000F8F8F400ECF4F400ECF4F400DCECF800DCECF800CCE8F800CCE8
      F800BCE4F800BCE4F800BCE4F800686868000000000000000000000000000000
      000000000000232B2F007EB6D9007EB6D9007EB6D90000000000000000000000
      00000000000000000000000000000000000000000000000000002C2C2C00F5E7
      CD00F5E7CD00F5E7CD00F5E7CD00201F230000F2FF0000F2FF0000F2FF00201F
      230000000000201F2300000000000000000010181800746C5400746C5400A8D8
      F80044ACF0001498F000D8D8D800CCDCE8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00ECF4F400ECF4F400DCECF800DCECF800DCEC
      F800CCE8F800CCE8F800BCE4F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000056535200F9EF
      DE00F9EFDE00F9EFDE00F9EFDE00201F2300201F2300201F2300201F2300201F
      2300201F2300000000000000000000000000000000005C9CC800746C5400A8D8
      F80010181800746C5400F8F8F400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00F8F8F400ECF4F400ECF4F400DCEC
      F800DCECF8001098F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8F00FBF6
      EE00FBF6EE00FBF6EE00FBF6EE00FBF6EE00FBF6EE00FBF6EE004C4B4F000000
      0000000000000000000000000000000000000000000000000000405868001018
      180010181800B8D0D80004040400000000000000000000000000000000000000
      000000000000000000000000000000000000D0AC4800DCC88400F0ECD400F8F8
      F40000000000ECF4F400F8F8F400FFFFFF00FFFFFF00FFFFFF00ECF4F400ECF4
      F400DCECF8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C5009D9B9B00C5C5
      C500E3E1DE00FFFDF900FFFDF900FFFDF900FFFDF900FFFDF9007C7B7D000000
      0000000000000000000000000000000000000000000000000000746C540044AC
      F00074C4F000A8D8F8008898A800000000000000000000000000000000000000
      000000000000000000000000000000000000D0B45400D4B86000E8D4A400E8DC
      B400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      C5009D9B9B007C7B7D002E2D3000201F2300201F230058575A009D9B9B000000
      0000000000000000000000000000000000000000000000000000040404000C60
      980064BCF00080C8F00080C8F000101818000000000000000000000000000000
      000000000000000000000000000000000000D8C47800D0B45400D4B86000D0B4
      5400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCD00B2B3B4008E8E8F0062616400AEAFB0000000
      000000000000000000000000000000000000000000000000000000304C000848
      780034A8F00050B0F00054B8F000746C54000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F800FFFFE03FFE00C800FFFFC001FE00
      F8003003C001FE0008008003C001FE000800C003C00180000800E003C0010000
      0800E003C0010001F800E007C00100030800E00FC00100070800F00FC00D007F
      0800F007C00B00FF0801F871C00780FFF801FFF9C01FC1FF0803FFFD801FC1FF
      0FFFFFFFE01FC0FF0FFFFFFFFC1FC0FF00000000000000000000000000000000
      000000000000}
  end
  object qryGenerateFormalParam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CONTRACT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APPLY_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure HR_GEN_CONTRACT_PARAM(:CONTRACT_NO,:EMPLOYEE_N' +
        'O,:APPLY_DATE)')
    FieldOptions = []
    Left = 200
    Top = 224
  end
end
