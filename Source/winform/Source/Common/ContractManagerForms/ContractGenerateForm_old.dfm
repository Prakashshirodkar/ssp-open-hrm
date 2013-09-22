inherited frmContractGenerate: TfrmContractGenerate
  Left = 154
  Top = 98
  Width = 800
  Height = 502
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 449
    Width = 792
  end
  object dxsidebarMenu: TdxSideBar [1]
    Left = 0
    Top = 0
    Width = 143
    Height = 449
    BkGround.BeginColor = 14743778
    BkGround.EndColor = 13693895
    BkGround.FillStyle = bfsHorz
    BkGround.Step = 1
    Color = 10277075
    CanSelected = False
    GroupFont.Charset = ANSI_CHARSET
    GroupFont.Color = clBlue
    GroupFont.Height = -11
    GroupFont.Name = 'Tahoma'
    GroupFont.Style = [fsBold]
    Groups = <
      item
        Caption = 'Ch'#7913'c n'#259'ng'
        Index = 0
        IconType = dxsgLargeIcon
        Items = <
          item
            Caption = '1. L'#7853'p h'#7907'p '#273#7891'ng m'#7851'u'
            CustomData = 'HD_M'
            Index = 0
            IsDefault = True
            LargeImage = 3
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = '2. Ch'#7885'n danh s'#225'ch nh'#226'n vi'#234'n k'#253' h'#7907'p '#273#7891'ng'
            CustomData = 'HD_DS'
            Index = 1
            IsDefault = True
            LargeImage = 4
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = '3. Th'#7921'c hi'#7879'n k'#253' h'#7907'p '#273#7891'ng & k'#7871't qu'#7843
            CustomData = 'HD_KQ'
            Index = 2
            IsDefault = True
            LargeImage = 2
            SmallImage = -1
            Tag = 0
          end>
      end>
    ActiveGroupIndex = 0
    GroupHeightOffSet = 3
    ItemFont.Charset = ANSI_CHARSET
    ItemFont.Color = 22784
    ItemFont.Height = -13
    ItemFont.Name = 'Tahoma'
    ItemFont.Style = []
    LargeImages = ImageList1
    ScrollDelay = 300
    SpaceHeight = 7
    TransparentImages = True
    ShowGroups = False
    StoreInRegistry = False
    OnItemClick = dxsidebarMenuItemClick
  end
  object pageMain: TElPageControl [2]
    Left = 143
    Top = 0
    Width = 649
    Height = 449
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    OnChanging = pageMainChanging
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsAngledTabs
    TabIndex = 0
    TabPosition = etpRight
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabHopdongMau
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
    object tabHopdongMau: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'L'#7853'p h'#7907'p '#273#7891'ng m'#7851'u'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 626
        Height = 449
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxDBEdit1: TdxDBEdit
          Left = 133
          Top = 28
          Width = 453
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          DataField = 'CONTRACT_NAME'
          DataSource = dsTemplate
          StyleController = dmMain.StyleController
        end
        object dxDBPopupEdit1: TdxDBPopupEdit
          Left = 133
          Top = 51
          Width = 453
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 1
          DataField = 'DEPT_NAME'
          DataSource = dsTemplate
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit1CloseUp
          OnInitPopup = dxDBPopupEdit1InitPopup
        end
        object dxDBEdit2: TdxDBEdit
          Left = 133
          Top = 74
          Width = 453
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          DataField = 'REPRESENTATIVE'
          DataSource = dsTemplate
          StyleController = dmMain.StyleController
        end
        object dxDBPopupEdit2: TdxDBPopupEdit
          Left = 133
          Top = 97
          Width = 453
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 3
          DataField = 'CONTRACT_TYPE_NAME'
          DataSource = dsTemplate
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit2CloseUp
          OnInitPopup = dxDBPopupEdit2InitPopup
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 133
          Top = 120
          Width = 100
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 4
          DataField = 'STARTED_DATE'
          DataSource = dsTemplate
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 342
          Top = 120
          Width = 100
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 5
          DataField = 'EXPIRED_DATE'
          DataSource = dsTemplate
          StyleController = dmMain.StyleController
          PopupBorder = pbSingle
        end
        object dxDBPopupEdit3: TdxDBPopupEdit
          Left = 133
          Top = 143
          Width = 453
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 6
          DataField = 'TEMPLATE_FILE'
          DataSource = dsTemplate
          StyleController = dmMain.StyleController
          OnCloseUp = dxDBPopupEdit3CloseUp
          OnInitPopup = dxDBPopupEdit3InitPopup
        end
        object pageTemplate: TElPageControl
          Left = 14
          Top = 199
          Width = 289
          Height = 193
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = True
          Images = ImageList2
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
          ActivePage = tabVitriCongtac
          FlatTabBorderColor = clBtnShadow
          DraggablePages = False
          ActiveTabFont.Charset = DEFAULT_CHARSET
          ActiveTabFont.Color = clWindowText
          ActiveTabFont.Height = -11
          ActiveTabFont.Name = 'MS Sans Serif'
          ActiveTabFont.Style = []
          TabCursor = crDefault
          ParentColor = False
          TabOrder = 10
          object tabVitriCongtac: TElTabSheet
            PageControl = pageTemplate
            ImageIndex = 1
            TabVisible = True
            Caption = 'V'#7883' tr'#237' c'#244'ng t'#225'c'
            object dxLayoutControl4: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 169
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object dxDBPopupEdit4: TdxDBPopupEdit
                Left = 131
                Top = 28
                Width = 163
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 0
                DataField = 'POSITION_NAME'
                DataSource = dsTemplate
                StyleController = dmMain.StyleController
                OnCloseUp = dxDBPopupEdit4CloseUp
                OnInitPopup = dxDBPopupEdit4InitPopup
              end
              object dxDBDateEdit3: TdxDBDateEdit
                Left = 131
                Top = 51
                Width = 100
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 1
                DataField = 'ASSIGNED_DATE'
                DataSource = dsTemplate
                StyleController = dmMain.StyleController
                PopupBorder = pbSingle
              end
              object dxDBDateEdit4: TdxDBDateEdit
                Left = 280
                Top = 51
                Width = 100
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 2
                DataField = 'ENDED_DATE'
                DataSource = dsTemplate
                StyleController = dmMain.StyleController
                PopupBorder = pbSingle
              end
              object dxDBEdit3: TdxDBEdit
                Left = 131
                Top = 107
                Width = 454
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 3
                DataField = 'CONGVIEC_PHAILAM'
                DataSource = dsTemplate
                StyleController = dmMain.StyleController
              end
              object dxDBEdit4: TdxDBEdit
                Left = 131
                Top = 130
                Width = 182
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 4
                DataField = 'THOIGIAN_LAMCHINH'
                DataSource = dsTemplate
                StyleController = dmMain.StyleController
              end
              object dxDBEdit5: TdxDBEdit
                Left = 404
                Top = 130
                Width = 181
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 5
                DataField = 'THOIGIAN_LAMTHEM'
                DataSource = dsTemplate
                StyleController = dmMain.StyleController
              end
              object dxDBMemo1: TdxDBMemo
                Left = 131
                Top = 153
                Width = 185
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 6
                DataField = 'GHICHU'
                DataSource = dsTemplate
                StyleController = dmMain.StyleController
                Height = 89
              end
              object dxLayoutControl4Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl4Group1: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  Caption = 'V'#7883' tr'#237' b'#7893' nhi'#7879'm c'#244'ng t'#225'c'
                  object dxLayoutControl4Item1: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'V'#7883' tr'#237' b'#7893' nhi'#7879'm c'#244'ng t'#225'c'
                    Control = dxDBPopupEdit4
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl4Group4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl4Item2: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = #193'p d'#7909'ng t'#7915' ng'#224'y'
                      Control = dxDBDateEdit3
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl4Item3: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = #272#7871'n ng'#224'y'
                      Control = dxDBDateEdit4
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutControl4Group2: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = #272'i'#7873'u ki'#7879'n l'#224'm vi'#7879'c'
                  object dxLayoutControl4Item4: TdxLayoutItem
                    Caption = 'C'#244'ng vi'#7879'c ph'#7843'i l'#224'm'
                    Control = dxDBEdit3
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl4Group3: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl4Item5: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Th'#7901'i gian l'#224'm ch'#237'nh th'#7913'c'
                      Control = dxDBEdit4
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl4Item6: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'Th'#7901'i gian l'#224'm th'#234'm'
                      Control = dxDBEdit5
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl4Item7: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    Caption = 'Th'#244'ng tin b'#7893' sung kh'#225'c'
                    CaptionOptions.AlignVert = tavTop
                    Control = dxDBMemo1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object tabLuong: TElTabSheet
            PageControl = pageTemplate
            ImageIndex = 0
            TabVisible = True
            Caption = 'H'#7879' s'#7889' '#273'i k'#232'm h'#7907'p '#273#7891'ng'
            Visible = False
            object dxLayoutControl5: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 169
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object gridFormal: TdxDBGrid
                Left = 14
                Top = 28
                Width = 250
                Height = 129
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'FORMAL_PARAM'
                SummaryGroups = <>
                SummarySeparator = ', '
                TabOrder = 0
                OnMouseUp = gridFormalMouseUp
                DataSource = dsFormal
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                object gridFormalFORMAL_PARAM: TdxDBGridColumn
                  Caption = 'K'#253' hi'#7879'u'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 96
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FORMAL_PARAM'
                  Caption_UTF7 = 'K+AP0 hi+Hsc-u'
                end
                object gridFormalPARAM_NAME: TdxDBGridColumn
                  Caption = 'T'#234'n h'#7879' s'#7889'/m'#7913'c l'#432#417'ng/ph'#7909' c'#7845'p '#273'i k'#232'm'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 351
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PARAM_NAME'
                  Caption_UTF7 = 
                    'T+AOo-n h+Hsc s+HtE-/m+Huk-c l+AbABoQ-ng/ph+HuU c+HqU-p +ARE-i k' +
                    '+AOg-m'
                end
                object gridFormalFORMAL_VALUE: TdxDBGridCalcColumn
                  Caption = 'Gi'#225' tr'#7883
                  HeaderAlignment = taCenter
                  Width = 122
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FORMAL_VALUE'
                  Caption_UTF7 = 'Gi+AOE tr+Hss'
                end
              end
              object dxLayoutGroup5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl5Group1: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'H'#7879' s'#7889'/ m'#7913'c l'#432#417'ng '#273'i k'#232'm h'#7907'p '#273#7891'ng'
                  object dxLayoutControl5Item1: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    Caption = 'dxDBGrid1'
                    ShowCaption = False
                    Control = gridFormal
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            Caption = '1. THI'#7870'T L'#7852'P H'#7906'P '#272#7890'NG LAO '#272#212'NG M'#7850'U'
            CaptionOptions.AlignHorz = taCenter
            object dxLayoutControl1Item1: TdxLayoutItem
              Caption = 'T'#234'n h'#7907'p '#273#7891'ng lao '#273#7897'ng'
              Control = dxDBEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              Caption = #272#417'n v'#7883' s'#7917' d'#7909'ng lao '#273#7897'ng'
              Control = dxDBPopupEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Caption = 'T'#234'n ng'#432#7901'i '#273#7841'i di'#7879'n'
              Control = dxDBEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              Caption = 'Lo'#7841'i h'#7907'p '#273#7891'ng lao '#273#7897'ng'
              Control = dxDBPopupEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Group2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item5: TdxLayoutItem
                Caption = 'Ng'#224'y b'#7855't '#273#7847'u hi'#7879'u l'#7921'c'
                Control = dxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item6: TdxLayoutItem
                Caption = 'Ng'#224'y k'#7871't th'#250'c hi'#7879'u l'#7921'c'
                Control = dxDBDateEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              Caption = 'M'#7851'u in h'#7907'p  '#273#7891'ng'
              Control = dxDBPopupEdit3
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'N'#7896'I DUNG C'#193'C '#272'I'#7872'U KHO'#7842'N H'#7906'P '#272#7890'NG'
            CaptionOptions.AlignHorz = taCenter
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'ElPageControl1'
              ShowCaption = False
              Control = pageTemplate
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabChonDSNhanvien: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'Ch'#7885'n danh s'#225'ch nh'#226'n vi'#234'n'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 626
        Height = 449
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object gridEmp: TdxDBGrid
          Left = 14
          Top = 28
          Width = 713
          Height = 355
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsEmployee
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
          object gridEmpEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object gridEmpFULL_NAME: TdxDBGridPopupColumn
            Caption = 'H'#7885' t'#234'n nh'#226'n vi'#234'n '
            HeaderAlignment = taCenter
            Width = 148
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            OnCloseUp = gridEmpFULL_NAMECloseUp
            OnInitPopup = gridEmpFULL_NAMEInitPopup
            Caption_UTF7 = 'H+Hs0 t+AOo-n nh+AOI-n vi+AOo-n '
          end
          object gridEmpBIRTH_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y sinh'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BIRTH_DATE'
            Caption_UTF7 = 'Ng+AOA-y sinh'
          end
          object gridEmpGENDER: TdxDBGridImageColumn
            Alignment = taRightJustify
            Caption = 'Gi'#7899'i t'#237'nh'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GENDER'
            Descriptions.WideStrings = (
              'N'#7919
              'Nam')
            Images = EmpInfoDM.imglGender
            ImageIndexes.WideStrings = (
              '0'
              '1')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
          end
          object gridEmpCAREER_NAME: TdxDBGridMaskColumn
            Caption = 'Ngh'#7873' nghi'#7879'p'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAREER_NAME'
            Caption_UTF7 = 'Ngh+HsE nghi+Hsc-p'
          end
          object gridEmpEDU_LEVEL_NAME: TdxDBGridMaskColumn
            Caption = 'Tr'#236'nh '#273#7897
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDU_LEVEL_NAME'
            Caption_UTF7 = 'Tr+AOw-nh +AREe2Q'
          end
        end
        inline frameToolbar1: TframeToolbar
          Left = 2
          Top = 408
          Width = 760
          Height = 46
          Color = 15466238
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          inherited dxLayoutControl1: TdxLayoutControl
            inherited btnClose: TElPopupButton
              Left = 971
            end
            inherited btnHelp: TElPopupButton
              Left = 841
            end
            inherited btnChoose: TElPopupButton
              Left = 911
            end
            inherited btnGenerate: TElPopupButton
              Width = 94
              ImageIndex = 16
              UseImageList = True
              Images = dmMain.imgAction
              Caption = '&Ch'#7885'n nhanh'
              Action = acChonnhanh
            end
            inherited dxLayoutControl1Group_Root: TdxLayoutGroup
              inherited dxLayoutControl1Group1: TdxLayoutGroup
                inherited dxLayoutControl1Group4: TdxLayoutGroup
                  Visible = True
                  inherited dxlctrlGenerate: TdxLayoutItem
                    Visible = True
                  end
                end
                inherited dxLayoutControl1Item14: TdxLayoutItem
                  Visible = False
                end
              end
            end
          end
          inherited ActionList1: TActionList
            Left = 281
          end
          inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
            Left = 273
          end
          inherited ElPopupMenu1: TElPopupMenu
            Left = 288
          end
          inherited ElPopupMenu2: TElPopupMenu
            Left = 281
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Item2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = frameToolbar1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = '2. CH'#7884'N DANH S'#193'CH NH'#194'N VI'#202'N PH'#193'T SINH H'#7906'P '#272#7890'NG'
            CaptionOptions.AlignHorz = taCenter
            object dxLayoutControl2Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'gridDecisionEmp'
              ShowCaption = False
              Control = gridEmp
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabKetqua: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'K'#7871't qu'#7843' th'#7921'c hi'#7879'n'
      Visible = False
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 626
        Height = 449
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object ElPopupButton1: TElPopupButton
          Left = 423
          Top = 28
          Width = 189
          Height = 25
          Cursor = crDefault
          ImageIndex = 62
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Th'#7921'c hi'#7879'n ph'#225't sinh h'#7907'p '#273#7891'ng'
          TabOrder = 0
          Color = 15466238
          ParentColor = False
          Action = acCreateContract
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object viewMessage: TElMemoCombo
          Left = 15
          Top = 54
          Width = 464
          Height = 179
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
        object gridResult: TdxDBGrid
          Left = 15
          Top = 268
          Width = 458
          Height = 154
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsEmployee
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          OnCustomDraw = gridResultCustomDraw
          object gridResultEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object gridResultFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 133
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridResultCONTRACT_NO: TdxDBGridColumn
            Caption = 'S'#7889' H'#272'L'#272
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTRACT_NO'
            Caption_UTF7 = 'S+HtE H+ARA-L+ARA'
          end
          object gridResultRESULT: TdxDBGridImageColumn
            Alignment = taRightJustify
            Caption = 'K'#7871't qu'#7843
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RESULT'
            Descriptions.WideStrings = (
              'Ch'#432'a x'#7917' l'#237
              'Kh'#244'ng th'#224'nh c'#244'ng'
              'Th'#224'nh c'#244'ng')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2')
            Caption_UTF7 = 'K+Hr8-t qu+HqM'
          end
          object gridResultMESSAGE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 212
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MESSAGE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxLayoutGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup4: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            Caption = '3. TH'#7920'C HI'#7878'N K'#221' H'#7906'P '#272#7890'NG '
            CaptionOptions.AlignHorz = taCenter
            object dxLayoutControl3Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item3: TdxLayoutItem
              Control = viewMessage
            end
          end
          object dxLayoutControl3Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = ' DANH S'#193'CH K'#7870'T QU'#7842' TH'#7920'C HI'#7878'N K'#221' H'#7906'P '#272#7890'NG LAO '#272#7896'NG'
            CaptionOptions.AlignHorz = taCenter
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item4: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Control = gridResult
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
        Caption = 'Ph'#225't sinh h'#7907'p '#273#7891'ng lao '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 712
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Top = 144
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
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
      000000000000000000000000000000000000000000000000000000000000FAF5
      F5FFF4EBEBFFF4EBEBFFF4EBEBFFF4EBEBFFF4EBEBFFF4EBEBFFF4EBEBFFF4EB
      EBFFF4EAEAFFF4EAEAFFF4EBEBFFF4EBEBFFF4EBEBFFF4EBEBFFF4EBEBFFF4EB
      EBFFF4EBEBFFF4EBEBFFF6EEEDFFFCFBFBFF0000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000DCD7D7FFAC5C
      5DFFA14048FFA14048FFA14048FFA14048FFA14048FFA14048FFA14048FFA03D
      46FFB46568FFC68180FFA4454DFFA14048FFA14048FFA14048FFA14048FFA140
      48FFA14048FFA14149FF9E3F43FFBF8484FF0000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000BCB2B2FFB64C
      54FFDA6577FFD86475FFD86475FFD86475FFD86475FFD86475FFD76476FFDD8B
      95FFEECDCCFFF4DDDDFFDC9294FFD56A78FFD86475FFD86475FFD86475FFD864
      75FFD86475FFD96476FFD15F6FFFA54547FF0000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000C8C0C0FFC057
      5DFFFB778AFFF97587FFF97587FFF97587FFF97587FFF97587FFF58593FFE8B1
      B3FFEFCFCFFFFFFFFFFFE0A5A5FFD87B7EFFFB7689FFF97587FFF97587FFF975
      87FFF97587FFF97688FFE66978FFB36466FF0000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000E2DEDEFFB260
      60FFFF8C9FFFFF8B9DFFFF8B9DFFFF8C9DFFFF8C9DFFFF8B9DFFECA1A7FFDA94
      94FFFCF9F9FFFFFFFFFFEFD3D3FFD17B7AFFEE7D89FFFF8B9DFFFF8B9DFFFF8B
      9DFFFF8B9DFFFF8C9FFFD46772FFCD9D9DFF0000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FDFDFDFFA776
      76FFE47E8DFFFF9FB2FFE293ACFFB387A9FFAD85A9FFAB84A9FFD69097FFD986
      85FFFFFFFFFFFFFFFFFFF5E3E3FFD78280FFF08791FFFF9CAFFFFF9BAEFFFF9B
      AEFFFF9CB0FFFFA1B6FFB3575AFFD5C8C8FF0000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000F1F1F1FFEEEF
      EEFFEEEFEEFFEEEFEEFFEEEFEEFFEEEFEEFFEEEFEEFFEEEFEEFFEFEFEFFFDCD7
      D4FF9D504CFFA06274FF005BA4FF0071C4FF007ACFFF007ACEFF1462A6FFAB86
      92FFBECED5FFBFCED5FFF0E0DFFF7C82A2FF5E7AAEFFAD92B8FFF5A8BDFFF09C
      ABFFD8808CFFB75B60FFC79B9BFFFCFCFCFF0000000000000000000000000000
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
      000000000000000000000000000000000000E6E6E6FF748774FF416A41FF3E67
      3EFF3E673EFF3E673EFF3E673EFF3E673EFF3E673EFF3E663EFF3E663EFF4067
      40FF344B24FF3C444DFF095DA3FF0287DDFF0598F4FF0499F6FF0671BDFF2B67
      96FF3988BCFF3F8ABBFF658BA5FF2C6DA3FF007FD6FF0474C3FF566D9DFFA85A
      5EFFCA9293FFCCBCBCFFF9F9F9FF000000000000000000000000000000000000
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
      0000000000000000000000000000000000002A5B2AFF005600FF007300FF0077
      00FF007700FF007700FF007700FF007700FF007600FF037904FF128412FF0B7E
      0AFF006954FF006DC0FF038DE5FF0596F1FF0597F2FF0393ECFF046CB7FF1B81
      CEFF2289D9FF2B8EDBFF4298D8FF136EB2FF028AE1FF049AF6FF007DD3FF63A2
      D2FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000004200FF007600FF008200FF0081
      00FF008100FF008100FF008100FF008100FF018201FF0A8A07FF156C69FF107E
      2EFF026F6FFF006AA3FF0175CAFF0493EDFF0494EEFF0072C2FF197CC8FF298E
      DDFF2990DFFF298FDEFF2E93E0FF2E8AD3FF0170BFFF0392ECFF0493EDFF0671
      C0FFF6F7F8FF0000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000316732FF057605FF058606FF0585
      06FF058506FF058506FF058506FF048406FF138A11FF148635FF406EFFFF2972
      94FF048400FF038400FF026F6CFF0287E1FF038BE4FF0E74C1FF349AEAFF3298
      E8FF3298E8FF3298E8FF3197E8FF3399E9FF1779C3FF0389E1FF0599F4FF0173
      C4FFD9E2EAFF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000004D7B51FF0C780FFF128E13FF118D
      12FF118D12FF118D12FF108C11FF178D17FF239320FF52A2A4FF5F99FEFF6493
      F2FF1F911AFF0C860AFF097946FF027ED8FF0287DEFF197DCAFF3AA0F1FF389E
      EFFF389EEFFF389EEFFF389EEFFF3AA0F1FF1D7FCAFF0185DBFF0599F5FF0173
      C4FFD9E2EAFF0000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000759A79FF127517FF209A23FF2099
      23FF209923FF209923FF1F9621FF309930FF52A94FFF9DCAD8FF88BBFFFF89B9
      FFFF80C07CFF1E901CFF0C7E3AFF0379C7FF0181D6FF2689D7FF42A8FAFF41A7
      F9FF41A7F9FF41A7F9FF41A7F9FF42A8FAFF2B8EDDFF017BCEFF0496F2FF0272
      C2FFF7F8F9FF0000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000099B79DFF13731BFF2DA42FFF2BA1
      2EFF2BA12EFF2CA22FFF289E2AFF3DA13EFF69B568FFD8EBEAFF9CC8FFFFB2D5
      FFFFB4DAB0FF289426FF1A8B39FF0678B2FF037CD1FF3296E5FF48AEFFFF48AE
      FFFF47ADFEFF47ADFEFF47ADFEFF47ADFFFF3598E8FF057FD2FF0393ECFF1279
      C4FF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000BEC3BEFF126922FF3AAE3EFF3AAD
      3EFF3AAD3EFF3AAD3EFF36A538FF4EA94FFF81BD7FFFC8D6F0FF0C67F2FF5E80
      E5FFBBD7B6FF3D9E3CFF26943BFF07729DFF0581D5FF3295E1FF399DEAFF2589
      D4FF4CB2FFFF4BB1FFFF4BB1FFFF4CB2FFFF3599E5FF037CCFFF048DE5FF4290
      CBFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000EDEEEDFF3A7F48FF2E9737FF47B8
      4BFF47B64BFF46B64AFF4FAA4FFF71B971FF83BC81FFBFC7D5FF4A75AEFF7A8F
      B9FFB9CEB4FF53A952FF3C9D43FF0B6D8BFF028EDFFF0A6DB9FF076CB6FF005E
      A8FF3BA0EBFF4FB5FFFF4DB3FFFF4FB5FFFF2D8ED9FF0181D5FF0387DCFF7CB1
      D9FF000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000CBD3CCFF307F42FF0F71
      26FF2A9038FF39A445FF49AA4DFF7AB67BFF517A72FF204469FF133C65FF1038
      61FF375D6DFF448057FF4AAA46FF157784FF02A6ECFF02B9F9FF02A7E8FF0074
      BCFF0E73BBFF49AEF6FF52B8FFFF53B7FEFF0A73BFFF038FE8FF0D7CCAFFBCC3
      C8FF000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000E2E5E2FFB6BD
      B7FF72AA80FF37894DFF107128FF2C615AFF173D67FF1F4E7FFF25588AFF2355
      86FF1B4777FF184061FF1C6540FF096968FF01A2E3FF02C4F9FF02C2F6FF02B8
      EFFF018BCDFF2A8CD4FF58BDFFFF2E91D6FF0075C7FF0498F3FF2F82C1FFDFE2
      E6FF000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000768FA2FF174271FF275F99FF286099FF286099FF2860
      99FF28609AFF255C94FF1F4469FF7FA7BEFF0088C8FF00D3FAFF00D5FAFF00D3
      FAFF01C0F2FF0079BDFF187AC1FF0075C0FF0599F4FF0381D5FF83A1B9FF0000
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
      00000000000000000000526F8DFF22598FFF2966A3FF2865A2FF2865A2FF2865
      A2FF2865A2FF2967A5FF194675FFB0C0CFFF2883C0FF01C5EAFF01E5FDFF01DE
      FBFF02D4FBFF00B4E9FF019FE0FF03A9F2FF0496EBFF0870BEFFE5EBF1FF0000
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
      0000000000000000000033577DFF25629EFF2B6DAFFF2B6DAFFF2B6DAFFF2B6D
      AFFF2B6DAFFF2B6EB0FF22578DFF7E91A6FFC6D6E3FF1A83C0FF00D8EFFF00EB
      FCFF00E0FCFF02D2FBFF02BFF7FF029EE3FF1477BDFFA6C1D6FF000000000000
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
      00000000000000000000214B78FF2768AAFF2C72B8FF2C71B7FF2C71B7FF2C71
      B7FF2C72B8FF2C72B9FF2B66A5FF4A6689FFFCFCFCFFBBCFDFFF1E83C2FF008B
      C5FF01A3D6FF019BD6FF017CC3FF2681C2FFB9CEDFFFFBFBFBFF000000000000
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
      000000000000BAC0CAFF204E7EFF2A71B9FF2D78C4FF2D78C4FF2D78C4FF2D78
      C4FF2C77C2FF276EB4FF215E9AFF1B446FFF8699A6FF00000000FEFEFEFFD2DD
      E6FFACC0D1FFABC0D0FFDDE5ECFF000000000000000000000000000000000000
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
      0000000000007A8497FF1E4977FF2871B8FF2E7DCCFF2E7DCCFF2E7CCCFF2D7C
      CBFF1D578EFF11436EFF05385BFF013555FF416983FFF1F1F2FF000000000000
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
      0000EEEEF0FF697BA2FF183F66FF1E62A0FF2F83D7FF2E81D6FF2970BBFF1D4D
      7DFF133C62FF0C3A60FF053759FF003455FF3E6781FFEDEEEEFF000000000000
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
      0000EEEEEFFF6A7CA2FF184067FF135084FF2F87E0FF2873C3FF214A7AFF1C42
      69FF133D64FF0D3B61FF053859FF003556FF4C687BFFFCFCFCFF000000000000
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
      0000F9F9F9FF7785A3FF19426AFF063759FF295EA2FF294878FF21446FFF1C42
      6BFF133D64FF0D3B61FF053859FF003557FF8F9EA8FF00000000000000000000
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
      000000000000D1D5DCFF2A4F75FF153D65FF304A79FF2A4975FF21446FFF1C42
      6BFF133D64FF0D3B61FF053859FF083C5CFFE9ECEEFF00000000000000000000
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
      000000000000000000009AA5C2FF394F82FF2F4C7BFF2A4976FF21446FFF1C42
      6BFF133D64FF0C3B61FF114363FFA3B2BCFF0000000000000000000000000000
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
      00000000000000000000DFE0E4FF5C7099FF2D4979FF274674FF1E426DFF183F
      69FF103B62FF1A456AFFAAB8C1FFF8F8F8FF0000000000000000000000000000
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
      0000000000000000000000000000FAFAFBFFBAC3D3FF9FACC1FF98A9BDFF9EAF
      C0FFCBD4DDFFF9F9FAFF00000000000000000000000000000000000000000000
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
      0000F0D1BFFFDB8B5DFFF3D9CBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFDFDFDFFF9F9F9FFF2F2F2FFE9E9E9FFE7E7E7FFE3E3E3FFDBDBDBFFD4D4
      D4FFCDCDCDFFC8C8C8FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC9C9C9FFCECE
      CEFFD4D4D4FFDDDDDDFFE7E7E7FFEBEBEBFFF0F0F0FFF8F8F8FFFCFCFCFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7E6
      DCFFD3723BFFD37F4FFFD06A30FFEABB9FFFFEFBFAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF7F7F7FFE3E3E3FFCCCC
      CCFFBABABAFFAAAAAAFF9B9B9BFF858585FF808080FF8F8F8FFF969696FF9898
      98FF999999FF979797FF949494FF949494FF949494FF949494FF979797FF9898
      98FF949494FF939393FF8E8E8EFF797979FF8A8A8AFF9A9A9AFFA9A9A9FFBABA
      BAFFCCCCCCFFE3E3E3FFF7F7F7FFFEFEFEFF0000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF7F7F7FFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFE5E5E5FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFE5E5E5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBF4F0FFD77C
      48FFE19B72FFEDEFEFFFCEA892FFCC692FFFD98351FFF5DED2FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFF6F6F6FFEEEE
      EEFFE8E8E8FFE3E3E3FFDCDCDCFFC5C5C5FFE1E1E1FFEDEDEDFFE3E3E3FFECEC
      ECFFF1F1F1FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF2F2F2FFF4F4F4FFF0F0
      F0FFEBEBEBFFE1E1E1FFF3F3F3FFBCBCBCFFD6D6D6FFDEDEDEFFE2E2E2FFE8E8
      E8FFEEEEEEFFF6F6F6FFFCFCFCFF000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFE0E0E0FF9D9F9FFFB6B7
      B7FFECECECFFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFDFFDD9369FFD983
      52FFF8F3EFFFF4F8FAFFEAF1F4FFD4C2B8FFCB8257FFD16C32FFEBC0A7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFDFD
      FDFFFCFCFCFF0000000000000000E4E4E4FFD5D5D5FFE2E2E2FFDDDDDDFFE5E5
      E5FFEDEDEDFFF4F4F4FFF7F7F7FFF8F8F8FFF7F7F7FFF7F7F7FFF2F2F2FFECEC
      ECFFE4E4E4FFDBDBDBFFE7E7E7FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E0FF89969BFF3BABCAFF61A2
      B0FF828D8EFFCACACAFFF1F1F1FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF989898FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6AE8EFFD4723AFFF5E5
      DBFFF4F9FBFFF1F1F0FFF3F3F3FFF0F4F7FFE0E6EBFFCF9B7EFFCE5D1CFFE19D
      76FFFBF3EEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F2FFC1C1C1FFE8E8E8FFDADADAFFE7E7
      E7FFF2F2F2FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFF1F1
      F1FFE4E4E4FFD9D9D9FFEDEDEDFFA9A9A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBDFFF9F9F9FFB5E1F0FF50CD
      EBFF7BB6C4FF879596FF8B8B8BFFA8A8A8FFC7C7C7FFDFDFDFFFEFEFEFFFF9F9
      F9FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFF8F9F8FFF7F7F7FFF6F5F5FFF3F4
      F4FFF3F2F2FFF0F0F0FFEFEFEFFFEDEDEDFFECECEBFFE9EAEAFFE8E8E8FFE6E6
      E7FFE4E5E4FFE2E3E3FFE1E1E1FFDFDFDFFFDEDEDEFFDCDCDCFFDADADBFFD9D9
      DAFFD8D8D8FFFFFFFFFF989898FF000000000000000000000000000000000000
      000000000000000000000000000000000000EBC2A9FFD06528FFF0D2C0FFF7FD
      FFFFF1F1F1FFF2F1F1FFF1F1F1FFF3F7F8FFF3F1F1FFDEA280FFD7A283FFCB6B
      33FFD77E49FFF4DBCEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F3FF999999FFF1F1F1FFD9D9D9FFE1E1
      E1FFE9E9E9FFEFEFEFFFF4F4F4FFF5F5F5FFF5F5F5FFF2F2F2FFEEEEEEFFE8E8
      E8FFDFDFDFFFDBDBDBFFF2F2F2FFA1A1A1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFBFFA8A8A8FFFBFBFBFFFAFAFAFFBAE2
      EDFFD4D8D8FFCDCDCDFFC6C6C6FFD0D0D0FFBEBEBEFF9D9D9DFF8F8F8FFF9C9C
      9CFFBBBBBBFFD6D6D6FFEAEAEAFFF6F6F6FFFCFCFCFF00000000000000000000
      00000000000000000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFF9F9F9FFF8F7F8FFF6F6F7FFF4F5
      F5FFF3F3F3FFF1F1F1FFF0F0F0FFEEEEEEFFEDECEDFFEAEBEBFFE9E8E9FFE7E7
      E7FFE6E6E6FFE3E3E3FFE2E2E2FFE1E0E1FFDEDFDFFFDEDDDDFFDCDCDCFFDADA
      DAFFD8D9D9FFFFFFFFFF989898FF000000000000000000000000000000000000
      0000000000000000000000000000EBC0A7FFCE6020FFEABBA0FFF9FEFFFFF2F2
      F2FFF2F2F2FFF2F2F2FFF3F5F6FFF1EEECFFDC9972FFF2CBB4FFEDF8FEFFC8B8
      AFFFCB7748FFD2682AFFEABDA3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFCDCDCDFFD6D6D6FFE3E3E3FFDADA
      DAFFE5E5E5FFEDEDEDFFF3F3F3FFF5F5F5FFF5F5F5FFF1F1F1FFECECECFFE3E3
      E3FFD9D9D9FFE9E9E9FFBABABAFFE6E6E6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9E9E9FFA2A6A7FFFBFBFBFFFAFAFAFFFBFB
      FBFFF0F0F0FFECECECFFD6D6D6FFC7C7C7FFCDCDCDFFF1F1F1FFFCFCFCFFF7F7
      F7FFD2D2D2FFA8A8A8FF919191FF929292FFAEAEAEFFCCCCCCFFE3E3E3FFF2F2
      F2FFFDFDFDFF00000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFAFAF9FFF8F9F8FFF7F7F7FFF6F6
      F5FFF5F4F4FFF2F3F2FFF0F1F1FFEFEFEFFFEDEDEEFFECEBECFFEAEAEAFFE9E8
      E8FFE7E7E6FFE5E4E4FFE3E3E3FFE1E2E1FFE0E0E0FFDEDEDEFFDCDDDDFFDBDB
      DBFFDADAD9FFFFFFFFFF989898FF000000000000000000000000000000000000
      00000000000000000000F5E0D4FFCD6022FFE19D76FFFBFEFFFFF3F4F4FFF2F2
      F2FFF2F2F2FFF3F3F3FFF4FAFDFFDE9F7BFFE6AB8AFFFDFFFFFFF3F3F4FFE8ED
      F0FFCBC8C8FFC98258FFD05E1BFFE19E79FFFDFBF9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFA5A5A5FFE8E8E8FFDDDD
      DDFFE1E1E1FFEEEEEEFFE9E9E9FFBCBCBCFFCACACAFFF0F0F0FFEBEBEBFFDEDE
      DEFFE1E1E1FFD6D6D6FFBABABAFFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFAFFA3ADAEFFC3EBEEFFFBFBFBFFFBFBFBFFFCFC
      FCFFFCFCFCFFF5F5F5FFF1F1F1FFE1E1E1FFCDCDCDFFC9C9C9FFDADADAFFFCFC
      FCFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFE4E4E4FFB6B6B6FF969696FF9191
      91FFD8D8D8FF00000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFAFAFBFFF9F9F9FFF8F7F8FFF7F7
      F7FFF5F5F5FFF4F3F3FFF1F1F2FFF0F1F0FFEEEEEEFFEDECECFFEAEBEBFFE9E9
      E9FFE8E8E7FFE6E5E5FFE4E4E4FFE3E3E2FFE1E0E0FFDFDFDFFFDDDDDEFFDCDB
      DCFFDADADAFFFFFFFFFF989898FF000000000000000000000000000000000000
      000000000000FCF8F5FFD88351FFDD9064FFFBF7F4FFF5F7F8FFF3F3F3FFF3F3
      F3FFF3F3F3FFF5FBFFFFE8C6B4FFE3A27DFFFFFEFDFFF5F6F6FFF1F1F1FFF5F5
      F4FFEAEEF0FFCECDCCFFC78664FFCF5E1BFFDA7F4CFFF6E4DAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEEEEEFFA5A5A5FFD9D9
      D9FFE5E5E5FFEAEAEAFFEAEAEAFFD5D5D5FFDCDCDCFFEDEDEDFFE8E8E8FFE6E6
      E6FFC9C9C9FFB5B5B5FFF2F2F2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8D8D8FF65BBBFFFF1F6F6FFF3F3F3FFD9D9D9FFE1E1
      E1FFF1F1F1FFF8F8F8FFF8F8F8FFF1F1F1FFEFEFEFFFD3D3D3FFB6C0C4FFCED1
      D3FFF7F7F7FFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFBEBEBEFF00000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFBFBFBFFFAFAFAFFF9F8F9FFF7F7
      F7FFF6F5F6FFF4F5F4FFF3F3F3FFF1F1F1FFEFEFEFFFEEEEEEFFECECECFFEAEA
      EAFFE9E9E8FFE7E7E7FFE5E5E5FFE4E3E3FFE1E2E1FFE0E0E0FFDEDEDFFFDDDC
      DCFFDBDCDBFFFFFFFFFF989898FF000000000000000000000000000000000000
      000000000000E09B75FFD77D4AFFF8F0EAFFF6F9FBFFF3F3F3FFF4F4F4FFF3F3
      F3FFF5F9FCFFEDDCD1FFDF986FFFFBF4EEFFF6F8FAFFF2F2F2FFF3F3F3FFF2F2
      F2FFF5F5F4FFF1F5F6FFD7DDE1FFC49D85FFCB642CFFD25F1EFFECC2A8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F1FFBEBE
      BEFFABABABFFC7C7C7FFCACACAFFC7C7C7FFC8C8C8FFCBCBCBFFC3C3C3FFA5A5
      A5FFD0D0D0FFF6F6F6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F2FF7FA2A4FF9FEFF0FFFCFCFCFFF5F5F5FFF4F4F4FFEBEB
      EBFFE5E5E5FFE2E2E2FFE3E3E3FFDADADAFFDDDDDDFFF5F5F5FF94E0EBFFC4CA
      CCFFC8C8C8FFECECECFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
      F5FFE3E3E3FF00000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFCFCFCFFFAFBFBFFFAF9F9FFF8F8
      F8FFF7F7F6FFF6F6F5FFF4F3F3FFF2F2F2FFF1F1F0FFEFEFEFFFEDEDEDFFEBEC
      EBFFEAEAE9FFE7E8E8FFE6E6E6FFE4E5E5FFE2E2E3FFE1E1E1FFDFDFE0FFDDDE
      DDFFDCDCDCFFFFFFFFFF989898FF000000000000000000000000000000000000
      0000E8B79AFFD26D33FFF4E0D3FFF8FCFFFFF4F3F3FFF4F4F4FFF4F4F4FFF5F8
      F9FFF2EEECFFDE9B74FFF7E3D8FFF8FCFEFFF3F3F2FFF4F4F4FFF4F4F4FFF4F4
      F4FFF3F3F3FFF5F6F5FFF8F8F8FFE1EAF2FFC6C3C4FFC57549FFD2500FFFDF97
      6BFFFDF9F6FF000000000000000000000000000000000000000000000000FEFE
      FEFFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF0F0
      F0FFE8E8E8FFD3D3D3FF838383FFACACACFF8D8D8DFF939393FFE3E3E3FFEAEA
      EAFFF1F1F1FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF8F8
      F8FF000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFFBABDBDFF7DE5E7FFBCF0F0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFF5F5F5FFF0F0F0FFE0E0E0FFCEE4E7FFE2F1F4FFEBEB
      EBFFD1D1D1FFC5C5C5FFDDDDDDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFCECE
      CEFFF7F7F7FF00000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFDFCFCFFFBFCFCFFFAFAFAFFF9F9
      F9FFF8F7F8FFF6F6F6FFF4F4F5FFF3F3F3FFF1F2F2FFEFF0EFFFEEEEEEFFECEC
      EDFFEAEBEBFFE9E8E8FFE7E7E7FFE6E6E5FFE4E3E4FFE2E2E2FFE1E1E1FFDEDF
      DFFFDDDDDDFFFFFFFFFF989898FF00000000000000000000000000000000F0CF
      BCFFCE6528FFEFCCB6FFF9FFFFFFF4F4F4FFF5F5F4FFF4F4F4FFF5F5F6FFF6FA
      FCFFDB976FFFDC9165FFFCFFFFFFF4F6F7FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF9F8F9FFF3F9F9FFCFE1EBFFBE8B70FFCF51
      0CFFD46725FFF8EAE2FF00000000000000000000000000000000FEFEFEFFC9C9
      C9FF9A9A9AFF919191FF909090FF909090FF909090FF919191FF8F8F8FFF8B8B
      8BFF868686FF8A8A8AFF8D8D8DFFD1D1D1FFBABABAFF898989FF8A8A8AFF8787
      87FF8C8C8CFF909090FF919191FF919191FF919191FF919191FF949494FFA4A4
      A4FFD2D2D2FF0000000000000000000000000000000000000000000000000000
      0000E4E4E4FF70B4B4FFA6FEFEFFCFF1F1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF2F2
      F2FFF4F4F4FFDBDBDBFFC7C7C8FFA9B4B9FFDDE2E4FFECECECFFFDFDFDFFB5B5
      B5FFFCFCFCFF00000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFDFDFDFFFCFCFCFFFBFBFAFFF9F9
      FAFFF8F9F8FFF6F7F7FFF5F6F5FFF4F4F4FFF2F3F2FFF1F0F1FFEFEFEFFFEDEE
      EEFFEBEBEBFFEAEAE9FFE8E8E8FFE6E7E6FFE4E5E4FFE3E3E3FFE1E2E1FFDFE0
      E0FFDEDEDEFFFFFFFFFF989898FF000000000000000000000000F6E4D9FFD26C
      32FFE7B495FFFBFFFFFFF5F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF7FBFDFFE5B9
      9FFFCD5C1CFFD87339FFE5B89EFFF4F7F8FFF7FBFEFFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF8F7F7FFFBFCFCFFDFF3F6FFB8AA
      A4FFC85919FFD25810FFE9B89EFF00000000000000000000000000000000ABAB
      ABFFE6E6E6FFDDDDDDFFDDDDDDFFDEDEDEFFDFDFDFFFE0E0E0FFE1E1E1FFE2E2
      E2FFE3E3E3FFE4E4E4FFDEDEDEFFCBCBCBFFCECECEFFE2E2E2FFE4E4E4FFE4E4
      E4FFE3E3E3FFE3E3E3FFE2E2E2FFE1E1E1FFE1E1E1FFDFDFDFFFDFDFDFFFD5D5
      D5FFC0C0C0FF000000000000000000000000000000000000000000000000F7F7
      F7FF95A6A6FF94FCFCFFA5FBFBFFE3F4F4FFFAFAFAFFD3D3D3FFD7D7D7FFE9E9
      E9FFF5F5F5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFF3F3F3FFF5F5F5FFA9DAE6FFA6C3CCFF68B2CAFF5EC3DEFFB9CFD8FFA0A0
      A0FFE8E8E8FFFDFDFDFF000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFEFEFEFFFCFDFDFFFCFCFCFFFBFA
      FBFFF9FAF9FFF8F8F7FFF7F6F6FFF5F5F4FFF3F3F3FFF1F1F2FFF0F0F0FFEEEE
      EEFFECEDEDFFEBEBEBFFE9E9E9FFE7E7E8FFE5E6E6FFE4E4E4FFE2E2E2FFE0E1
      E0FFDFDFDFFFFFFFFFFF989898FF0000000000000000FBF3EEFFD67B48FFE09C
      74FFFCFFFFFFF6F7F8FFF5F5F5FFF6F6F6FFF6F6F6FFF6F8FAFFF3EAE5FFD06E
      35FFDC7134FFF58E52FFE77A3CFFE0976DFFEDDCD1FFF7FDFFFFF6F7F9FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F5FFF8F7F6FFFDFDFCFFEFFB
      FCFFBEC7CBFFBD6D3EFFCF5610FFF2D4C8FF000000000000000000000000A3A3
      A3FFE2E2E2FFDCDCDCFFD5D9DCFFD1D6DCFFD2D7DCFFD3D7DDFFD3D7DDFFD4D7
      DDFFD4D7DDFFD6D9DFFFCACCD3FF9A9CA3FFADAFB5FFD5D7DDFFD6D8DFFFD5D8
      DEFFD5D8DEFFD5D8DEFFD4D8DEFFD3D8DEFFD2D8DDFFDADDDFFFD9D9D9FFE0E0
      E0FFAFAFAFFF0000000000000000000000000000000000000000FEFEFEFFCECE
      CEFF76D5D5FFA8FFFFFFA3F6F6FFF7F9F9FFFFFFFFFFEBEBEBFFECECECFFD7D7
      D7FFD9D9D9FFDADADAFFE0E0E0FFECECECFFF7F7F7FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFEFF8FAFFD0EEF3FFEDEDEDFFD5D5D5FFB0BCC1FF55ADC8FF6092
      A7FF9A9B9CFFDBDBDBFFFCFCFCFF0000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFFEFEFEFFFDFDFDFFFCFCFCFFFBFB
      FBFFFAF9F9FFF8F8F9FFF7F8F7FFF6F6F6FFF5F4F4FFF2F3F2FFF1F1F1FFEFEF
      EFFFEDEDEEFFECECECFFEAEAEAFFE9E8E8FFE7E6E6FFE5E5E5FFE3E3E3FFE1E2
      E1FFDFE0E0FFFFFFFFFF989898FF00000000FDFBF9FFDE966DFFCD5E1EFFDF9D
      76FFF6F6F4FFF7FBFCFFF6F6F6FFF6F6F6FFF6F6F6FFF7FBFEFFEDD5C7FFD56E
      33FFFA9A62FFFD9B63FFF89259FFED8143FFE07A3FFFE5B498FFF6F7F8FFF7FA
      FBFFF7F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF8F7F7FFFCFD
      FCFFF8FCFDFFCFE4EEFFC36D3DFFD15837FF000000000000000000000000A2A2
      A2FFE6E6E6FFD6D9DCFFA5744BFFBE7836FFBE823FFFBF8A45FFC1924AFFC39B
      4FFFC5A253FFC6A957FFC8B05CFFCAB761FFCBB863FFC7B25DFFC7AD59FFC6A5
      55FFC49E51FFC2964CFFC08E47FFBE8642FFBD7934FFA88667FFDEE2E6FFE0E0
      E0FFAFAFAFFF0000000000000000000000000000000000000000EEEEEEFF78A6
      A6FFA3FFFFFFA8FFFFFFAFF1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBFFF4F4F4FFEBEBEBFFE6E6E6FFF2F2F2FFF0F0F0FFD4D4D4FFE2E2
      E2FFE9E9E9FFF4F4F4FFF7F7F7FFF1F1F1FFF5F5F5FFDFDFDFFFC9C9C9FF8AAB
      B5FF539AB8FF8E9498FFDCDCDCFFFDFDFDFF00000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF00000000EDC5AEFFCD6326FFD96F33FFE97D
      40FFDC8B5DFFF1EAE5FFF8FEFFFFF6F6F6FFF6F6F6FFF7FBFEFFEACFC0FFE68F
      58FFFFB683FFFFA36DFFFC9A62FFF8945BFFF48C50FFE67738FFDE966CFFF5F3
      F1FFF9FEFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F5
      F7FFFAFCF8FFFCFFFFFFDFC1A9FFD16243FF000000000000000000000000A3A3
      A3FFE8E9E9FFD0D6DAFFBE6924FFF28E27FFF09A31FFF3A738FFF6B341FFF8BF
      47FFFBCB4EFFFDD554FFFFDD5AFFFFE161FFFFE265FFFFE160FFFEDB59FFFCD3
      53FFFAC94DFFF8BD46FFF5B13FFFF3A437FFF2982FFFB87C48FFDAE1E8FFE1E1
      E1FFAFAFAFFF00000000000000000000000000000000FBFBFBFFABB3B3FF89F4
      F4FFA8FFFFFFA8FFFFFFC1F1F1FFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFF0F0F0FFE8E8
      E8FFDFDFDFFFD9D9D9FFD0D0D0FFD4D4D4FFD2D2D2FFF2F2F2FFEBEBEBFFD4D4
      D4FFA5B1B7FF4E9DBBFF9A9EA0FFF1F1F1FF00000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FFCACACAFFC1C1C1FFBFBFC0FFE5E5
      E2FFEAEAE4FFEBEBE4FFC6C5C1FFBFBFC0FFC3C0BFFFEAE4E0FFEAE4E4FFE9E4
      E0FFC1C0C0FFBFC0BFFFCAC7C9FFEEE5EFFFEDE5EFFFCAC7CCFFBFBFBFFFC0C0
      C0FFC0C0C0FFC0C0C0FF989898FF00000000DB8A5DFFD1672AFFF18D54FFFA96
      5CFFEC7E40FFDE8857FFEDD8CAFFF9FFFFFFF8F9FAFFF8FBFDFFEFDED5FFE595
      61FFFFC799FFFFB380FFFFA46FFFFD9A63FFF9955CFFF69054FFE87A3AFFDF90
      63FFF0E1D8FFFAFFFFFFF8F9F9FFF7F7F7FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7
      F7FFFDFEFFFFF9F5F1FFD77D48FFFBF2EFFF000000000000000000000000A3A3
      A3FFEBEBEBFFD2D7DBFFBB6727FFEF8724FFED922DFFF09E34FFF3AA3BFFF5B5
      41FFF7BF48FFF9C74DFFFACE51FFFBD353FFFBD453FFFBD252FFFACD50FFF8C6
      4CFFF7BD46FFF5B340FFF2A839FFF09C33FFF0912BFFB57B4AFFDCE3EAFFE4E4
      E4FFAFAFAFFF00000000000000000000000000000000DDDDDDFF71C0C0FFA8FF
      FFFFA8FFFFFFA7FEFEFFD4F1F1FFFFFFFFFFD2D2D2FFDBDBDBFFE0E0E0FFE5E5
      E5FFF9F9F9FFFAFAFAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFFEFEFEFFF2F2F2FFF4F4F4FFDADADAFFF5F5
      F5FFDEDEDEFFA5BDC5FF489AB2FFD4D4D4FF00000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFDADADAFFD2D2D2FFECECEAFFB0B1
      D2FF6F70D8FF8484D5FFE8E8EBFFD5D4D0FFEEEBEAFFA4D6F0FF8ADCF9FFB1D5
      E9FFEEEBE8FFD7D3D7FFE8E9E7FF79CC6BFF75CC66FFE6E8E5FFDAD4DAFFD1D1
      D1FFD1D1D1FFD1D1D1FF989898FF00000000CE682DFFE5874EFFFFAA74FFFE9B
      63FFFA965DFFF2874AFFE27B41FFE6B59AFFF5F4F3FFF9FFFFFFF7F7F8FFE09C
      74FFF1AD79FFFFCC9EFFFFB987FFFFA874FFFF9F68FFFB985FFFF89258FFEE81
      43FFE07E46FFE9C2ACFFF9FDFEFFFAFDFEFFF8F8F8FFF9F9F9FFF8F8F8FFFBFE
      FEFFFBF6F5FFD8814EFFF5DFD5FF00000000000000000000000000000000A4A4
      A4FFEEEEEEFFD2D7DBFFB96224FFEE7F1FFFEC8A27FFEE962EFFF1A035FFF3AA
      3BFFF4B340FFF6BB45FFF7C149FFF8C44BFFF8C54CFFF8C44BFFF7C048FFF6BA
      44FFF4B23FFFF2A93AFFF09F34FFEE942DFFEE8926FFB37647FFDDE5EBFFE6E6
      E6FFAFAFAFFF000000000000000000000000F4F4F4FF88A3A3FF9CFFFFFFA8FF
      FFFFA8FFFFFFA4FAFAFFE9F6F6FFF9F9F9FFF3F3F3FFEFEFEFFFE7E7E7FFDFDF
      DFFFD6D6D6FFD1D1D1FFD4D4D4FFE4E4E4FFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFD6D6D6FFC1C1
      C1FFF1F1F1FFE9E9E9FF5CA4C0FFDADADAFF00000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFE3E3E3FFE4E4DFFFCDCDD6FF2424
      A5FF1A1ABEFF0B0BAFFF6969B6FFF4ECDEFF95C5E9FF2BB0FAFF51CAFBFF2EAC
      F8FFB5CFE5FFEEDFE4FF4E9B4EFF00AE00FF03B200FF479B45FFE5DCE5FFDCDC
      DCFFDCDCDCFFDCDCDCFF989898FF00000000D37742FFE7935DFFFFBF8EFFFFA9
      74FFFE9E66FFFB985EFFF68E53FFE77A3CFFDE8856FFEDD4C4FFFAFFFFFFF5EE
      E9FFE09F79FFE89D67FFFEC89AFFFFC090FFFFB07DFFFFA46EFFFD9A62FFF894
      5BFFF3894CFFE4783AFFE2A27CFFF5EFEAFFFCFFFFFFF9FAFBFFFAFCFDFFFBFC
      FBFFDA9169FFECC3AEFF0000000000000000000000000000000000000000A4A4
      A4FFF0F0F0FFD2D8DCFFB75D20FFEC771AFFEA8222FFEC8D28FFEF962FFFF19F
      34FFF2A739FFF3AE3DFFF4B340FFF5B642FFF5B742FFF5B642FFF4B240FFF3AD
      3CFFF2A638FFF09E33FFEE942DFFEC8A27FFEC8121FFB17143FFDEE6ECFFE8E8
      E8FFAFAFAFFF000000000000000000000000C2C4C4FF7CE4E4FFA8FFFFFFA8FF
      FFFFA8FFFFFFA5F4F4FFFBFCFCFFF0F0F0FFD0D0D0FFD9D9D9FFE2E2E2FFF4F4
      F4FFFBFBFBFFF8F8F8FFEDEDEDFFE9E9E9FFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFFF4F4F4FF0000
      0000DEDEDEFFB6C8CFFF99B3BDFFFDFDFDFF00000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFECECECFFF1F1EBFFBFBFD5FF2D2D
      9CFF6565BBFF4B4BADFF5353A9FFFBF4E9FF7CBBECFF46A9F6FF80C5F8FF3AA2
      F5FF9FC9ECFFF1E7E3FF418740FF59A953FF5DAD57FF3C853BFFDFDEDFFFE8E7
      E8FFE5E5E5FFE5E5E5FF989898FF00000000E6B293FFD8783EFFFBC293FFFFC2
      92FFFFAE7AFFFFA16AFFFC9860FFF89359FFF28649FFE27A3FFFE5B193FFF8FB
      FCFFFAFFFFFFE7BDA5FFE0915DFFF6B887FFFFCA9DFFFFB886FFFFA772FFFE9D
      65FFFA965DFFF68F54FFEA7C3CFFE08753FFEBC5B0FFFBFDFFFFFDFFFFFFE1A4
      7FFFE5AE8EFF000000000000000000000000000000000000000000000000A4A4
      A4FFF1F2F2FFD2D8DCFFB5561BFFEA6E15FFE8781CFFEA8122FFEC8B26FFEE91
      29FFEF982CFFF09E2FFFF1A232FFF2A534FFF2A635FFF2A534FFF1A132FFF09D
      2EFFEF972CFFED9028FFEB8824FFEA7F20FFEA771BFFAF6C3FFFDFE7EDFFEAEA
      EAFFAFAFAFFF00000000000000000000000084BBBBFFA5FFFFFFA8FFFFFFA8FF
      FFFFA8FFFFFFB4F1F1FFFFFFFFFFF9F9F9FFF9F9F9FFF3F3F3FFD8D8D8FFE8E8
      E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFFFCFCFCFF0000
      00000000000000000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EFFF8F8F8FFF7F7F6FFEDEDEFFF9696
      CBFF9999CFFF8C8CC9FFBCBCDAFFFDFBF4FFD1E2F0FF8EC7F6FFA1D1FAFF8FC8
      F5FFE2EAF0FFF9F6F6FFB4C6B4FF9BBA9BFF9CBB9CFFAFC3AFFFF5F3F5FFF1F1
      F1FFF0F0F0FFF0F0F0FF989898FF00000000FAF1ECFFD78353FFD7773DFFF4B3
      82FFFFC698FFFFB381FFFFA56FFFFD9B63FFFA965DFFF68E53FFE87A3BFFE092
      65FFF2E3DBFFFDFFFFFFF1E0D6FFDF976CFFE79A64FFFCC494FFFFC090FFFFAC
      78FFFFA069FFFB975FFFF79258FFF18546FFE47638FFE6A580FFE4AE8EFFE09B
      74FF00000000000000000000000000000000000000000000000000000000A4A4
      A4FFF3F4F3FFD2D8DCFFB35018FFE8620AFFE5690FFFE87519FFEB8428FFED92
      39FFEF9F48FFF1A855FFF2AF5EFFF3B364FFF3B465FFF3B364FFF2AF5FFFF1A9
      56FFEF9F4BFFED933BFFEB842AFFE7751AFFE7680EFFAD663BFFDFE9EEFFEBEB
      EBFFAFAFAFFF000000000000000000000000E7E9E9FF99C9C9FF8CF9F9FFA5FF
      FFFFA8FFFFFFC6F1F1FFFFFFFFFFDCDCDCFFD6D6D6FFE1E1E1FFE7E7E7FFF5F5
      F5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7FF000000000000
      00000000000000000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2FFC3C3C3FFFEFEFEFFFFFFFFFFFDFD
      FFFFD8D8EFFFE5E5F5FFFFFFFFFFFFFFFFFFFFFFFFFFEEF9FFFFD7EFFFFFF6FC
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5ECE5FFE3EBE3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF989898FF0000000000000000FBF5F1FFE2A381FFCF67
      2AFFE79A66FFFEC596FFFFBB8AFFFFA874FFFE9F68FFFC9860FFF89359FFEF81
      43FFE07F47FFE9C2ACFFFBFFFFFFF9FAFBFFE7BFA8FFDF905EFFF4B27FFFFFC6
      97FFFFB27FFFFFA46DFFFD9A62FFF8945AFFF79055FFE4773AFFD98958FFFDF8
      F6FF00000000000000000000000000000000000000000000000000000000A4A4
      A4FFF5F5F6FFD2D9DCFFB04816FFE9691EFFEA8746FFEE9E64FFF1AD78FFF3B6
      83FFF4BB88FFF4BF8CFFF5C08DFFF5C18EFFF5C28EFFF5C18EFFF5C08DFFF4BE
      8CFFF3BB89FFF3B684FFF1AE7AFFEEA169FFED8C4DFFAA5F37FFE0E9EFFFEDED
      EDFFAFAFAFFF0000000000000000000000000000000000000000F3F4F4FFA6CA
      CAFF87ECECFFCCF1F4FFFFFFFFFFFCFCFCFFF7F7F7FFE7E7E7FFDEDEDEFFDBDB
      DBFFCECECEFFEFEFEFFFE1E1E1FFE9E9E9FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFD1D1D1FF000000000000
      00000000000000000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8FFB1B1B1FF9D9D9EFF9F9F
      9DFFA2A29FFFA1A19FFF9D9D9DFF9D9D9DFF9D9D9DFFA09E9DFFA29F9DFF9F9E
      9DFF9D9D9DFF9D9D9DFF9D9D9DFFA19FA1FFA1A0A1FF9D9D9DFF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF989898FF00000000000000000000000000000000EFCC
      B9FFD3733DFFDB8047FFF7B988FFFFC191FFFFB07DFFFFA46EFFFD9A62FFF995
      5CFFF48A4EFFE5783AFFE3A07AFFF6F1EDFFFFFFFFFFF3E5DEFFE09B73FFEA9D
      69FFFEC596FFFFB987FFFFA772FFFE9F68FFF9965DFFDC804CFFF9EDE7FF0000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A5FFF7F7F7FFD2D8DCFFAF4515FFF19A6DFFEEA074FFEFA375FFF0A775FFF0AA
      76FFF1AC77FFF1AE78FFF2B17AFFF2B27AFFF2B27BFFF2B17AFFF2B079FFF1AE
      78FFF1AB77FFF0A975FFEFA574FFEFA273FFF1A276FFAA6B4CFFE0E7EBFFEFEF
      EFFFAFAFAFFF0000000000000000000000000000000000000000000000000000
      0000D8D8D8FF83D2EFFF6BD6FFFF9DE2FFFF97DFFFFFC3EBFFFFEDF8FFFFFCFC
      FCFFFEFEFEFFFEFEFEFFE5E5E5FFDFDFDFFFF3F3F3FFD5D5D5FFD9D9D9FFE7E7
      E7FFE6E6E6FFFDFDFDFFFFFFFFFFFFFFFFFFE3E3E3FFF3F3F3FF000000000000
      00000000000000000000000000000000000000000000989898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF989898FF000000000000000000000000000000000000
      0000F9ECE4FFD98657FFD26B30FFF0AB79FFFFC99BFFFFB784FFFFA670FFFE9C
      64FFF9965DFFF68F54FFEB7C3DFFDD824EFFECD0C0FFFEFFFFFFFBFDFEFFE4B0
      93FFDF874EFFFDC394FFFFC091FFFFAC78FFE17A3FFFEFCFBCFF000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6FFF8F9F9FFD2D8DBFFAE4515FFEF8E5EFFEA8B5BFFEB905DFFEC9461FFED99
      63FFEE9C65FFEE9E66FFEFA068FFEFA168FFEFA269FFEFA168FFEEA067FFEE9E
      66FFEE9B65FFED9863FFEC9460FFEB8F5DFFED8E5DFFAA6E52FFE0E7EBFFF0F0
      F0FFB0B0B0FF0000000000000000000000000000000000000000000000000000
      0000BCBDBEFF9BE0FDFFCEEFFFFFD7F2FFFF7FD5FFFF59C7FFFF55C3FFFF57C1
      FFFF7FCDFFFFA7DBFFFFCFEAFFFFF6FAFFFFFFFFFFFFF4F4F4FFF3F3F3FFEEEE
      EEFFE2E2E2FFE5E5E5FFFFFFFFFFFFFFFFFFBEBEBEFFFBFBFBFF000000000000
      00000000000000000000000000000000000000000000989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF000000000000000000000000000000000000
      000000000000FBF2EEFFDF9B73FFD0682CFFE5945EFFFCBE8EFFFFBB8AFFFFA8
      72FFFE9D65FFFA965DFFF69156FFED8041FFDF773CFFE8B99EFFFBFEFEFFFDFF
      FFFFE8BFA6FFE39563FFF0AB78FFDE824AFFE7B396FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6FFFAFAFAFFD1D8DBFFAD4514FFEE844FFFE8804CFFE9814DFFE9834EFFE987
      50FFEA8A52FFEB8D54FFEB8F56FFEB9056FFEB9056FFEB9056FFEB8F55FFEB8C
      54FFEA8952FFE98650FFE9824EFFE8804CFFEB834FFFA86C50FFE1E8EBFFF2F2
      F2FFB0B0B0FF000000000000000000000000000000000000000000000000FDFD
      FDFF95A4ABFFAFE4FFFFDBF3FFFFE9F7FFFF8ED6FFFFA1DCFFFFC1E7FFFF8ED3
      FFFF92D2FFFF86CBFFFF79C4FFFF72BEFFFF6AB8FFFF90C8FFFFB6D9FFFFDBEB
      FFFFFAFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5FF00000000000000000000
      00000000000000000000000000000000000000000000989898FFCACACAFFC1C1
      C1FFBFBFC0FFE5E5E2FFEAEAE4FFEBEBE4FFC6C5C1FFBFBFC0FFC3C0BFFFEAE4
      E0FFEAE4E4FFE9E4E0FFC1C0C0FFBFC0BFFFCAC7C9FFEEE5EFFFEDE5EFFFCAC7
      CCFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFD0D0D0FF989898FF000000000000000000000000000000000000
      0000000000000000000000000000ECC4ADFFD37642FFD8783DFFF4AF7EFFFFC0
      90FFFFAE7AFFFFA069FFFC9860FFF79259FFF48B4EFFE67939FFE2996EFFF5E9
      E2FFFFFFFFFFE9BDA4FFCD6021FFEABDA4FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6FFFBFBFCFFD1D7DAFFAC4414FFEC7A41FFE7773FFFE7773FFFE7773FFFE777
      3FFFE77840FFE77A41FFE87B42FFE87C43FFE87D43FFE87C43FFE87B42FFE779
      41FFE77840FFE7773FFFE7773FFFE7773FFFEA7941FFA76B4FFFE1E8EBFFF3F3
      F3FFB0B0B0FF000000000000000000000000000000000000000000000000FCFC
      FCFF8EAAB8FF74CDFFFFA8DFFFFFBFE7FFFF67C5FFFF63C1FFFF75C6FFFF81C9
      FFFF92CFFFFFAAD8FFFF98CEFFFF96CBFFFF5AACFFFF5AAAFFFF5AA6FFFF59A3
      FFFF5EA3FFFF7DB1FFFFA0C4FFFFBED5FFFFC8C9CBFF00000000000000000000
      00000000000000000000000000000000000000000000989898FFDADADAFFD2D2
      D2FFECECEAFFB0B1D2FF6F70D8FF8484D5FFE8E8EBFFD5D4D0FFEEEBEAFFA4D6
      F0FF8ADCF9FFB1D5E9FFEEEBE8FFD7D3D7FFE8E9E7FF79CC6BFF75CC66FFE6E8
      E5FFDAD4DAFFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FFE1E1E1FF989898FF000000000000000000000000000000000000
      000000000000000000000000000000000000FBF3EEFFE1A37FFFCF672AFFE898
      62FFFEBF90FFFFB582FFFFA46DFFFD9A62FFF9955CFFF68F55FFEC7E3FFFE285
      50FFE9BCA1FFD67C49FFE4A887FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6FFFCFDFDFFD0D6DAFFAB4413FFEA7034FFE56E32FFE56E32FFE56D32FFE56D
      32FFE56D32FFE56D32FFE56D32FFE56D32FFE56D32FFE56D32FFE56D32FFE56D
      32FFE56D32FFE56D32FFE56E32FFE56E32FFE86F34FFA66A4EFFE1E8EBFFF4F4
      F4FFB0B0B0FF0000000000000000000000000000000000000000000000000000
      0000DDDEDFFFA8BAC4FF8CB4CCFF74B9E4FF58B9FAFF59BAFFFF69BEFFFF6ABC
      FFFF69BAFFFF69B7FFFF90C8FFFF8AC3FFFF68B0FFFF68ADFFFF68AAFFFF68A7
      FFFF67A4FFFF67A1FFFF679EFFFF4989F7FFEFEFEFFF00000000000000000000
      00000000000000000000000000000000000000000000989898FFE3E3E3FFE4E4
      DFFFCDCDD6FF2424A5FF1A1ABEFF0B0BAFFF6969B6FFF4ECDEFF95C5E9FF2BB0
      FAFF51CAFBFF2EACF8FFB5CFE5FFEEDFE4FF4E9B4EFF00AE00FF03B200FF479B
      45FFE5DCE5FFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
      DCFFDCDCDCFFEBEBEBFF989898FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFCCB8FFD373
      3DFFDC7F46FFF7B483FFFFBC8BFFFFA973FFFF9E67FFFB975FFFF79258FFF187
      4AFFD46626FFDC9267FFFEFCFBFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6FFFDFEFEFFCED4D8FFAB3E0AFFEF6521FFE96320FFE96320FFE96320FFE963
      20FFE96320FFE96320FFE96320FFE96320FFE96320FFE96320FFE96320FFE963
      20FFE96320FFE96320FFE96320FFE96320FFEC6521FFA46447FFDFE7EAFFF5F5
      F5FFB0B0B0FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFC9CDD1FF9FB3C2FF83AA
      C9FF77B5EBFF5BACFBFF69B2FFFF77B6FFFF76B3FFFF76B1FFFF75AEFFFF75AB
      FFFF75A9FFFF75A6FFFF74A4FFFF668BCBFFFAFAFAFF00000000000000000000
      00000000000000000000000000000000000000000000989898FFECECECFFF1F1
      EBFFBFBFD5FF2D2D9CFF6565BBFF4B4BADFF5353A9FFFBF4E9FF7CBBECFF46A9
      F6FF80C5F8FF3AA2F5FF9FC9ECFFF1E7E3FF418740FF59A953FF5DAD57FF3C85
      3BFFDFDEDFFFE8E7E8FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFF4F4F4FF989898FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8EB
      E4FFDD9369FFD26C30FFEDA06BFFFFBE8EFFFFB27FFFFFA36DFFFF9E66FFE882
      47FFD16D34FFF8EBE3FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6FFFDFDFDFFD8DBDDFF8A563EFFA75835FFA45A38FFA55B3AFFA55D3BFFA55E
      3DFFA65F3FFFA66140FFA66242FFA66243FFA66445FFA76546FFA76647FFA767
      49FFA7684AFFA7694CFFA76A4DFFA76B4FFFAA6A4EFF8F6D5EFFE8EDEEFFF5F5
      F5FFB0B0B0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFECECECFFBFC5CAFF99ADC3FF7FA2CCFF72A6EDFF63A1FCFF78AB
      FFFF82AEFFFF82ADFFFF7FABFFFF899BB8FFFEFEFEFF00000000000000000000
      00000000000000000000000000000000000000000000B1B1B1FFF8F8F8FFF7F7
      F6FFEDEDEFFF9696CBFF9999CFFF8C8CC9FFBCBCDAFFFDFBF4FFD1E2F0FF8EC7
      F6FFA1D1FAFF8FC8F5FFE2EAF0FFF9F6F6FFB4C6B4FF9BBA9BFF9CBB9CFFAFC3
      AFFFF5F3F5FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFFFFFFFFF989898FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EABDA3FFD16B32FFE0874FFFF7B381FFFFBA88FFF3955DFFD168
      2AFFEABFA6FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A7FFFAFAFAFFEEEDEDFFE5ECEFFFE2ECF1FFE5EEF3FFE7F0F5FFEAF3F7FFECF5
      F9FFECF5F9FFECF5F9FFECF5F9FFECF5F8FFECF4F8FFECF4F8FFECF4F8FFECF4
      F7FFECF4F7FFECF3F7FFECF3F6FFE9F0F4FFE7EEF2FFECF1F2FFECECECFFF8F8
      F8FFB0B0B0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFE3E3E4FFB5BC
      C6FF91A2BFFF7F9CD1FF6094EFFFC7C9CDFF0000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1FFB1B1B1FFFEFE
      FEFFFFFFFFFFFDFDFFFFD8D8EFFFE5E5F5FFFFFFFFFFFFFFFFFFFFFFFFFFEEF9
      FFFFD7EFFFFFF6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5ECE5FFE3EBE3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF989898FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5E1D5FFD88556FFD36D31FFDF844BFFD1682CFFE5AD
      8CFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2FFF6F6F6FFF4F4F4FFF2F2F2FFF5F5F5FFF8F8F8FFF9F9F9FFFCFCFCFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFFAFAFAFFF7F7F7FFF8F8F8FFE2E2
      E2FFC4C4C4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8D8D8FFB1B1
      B1FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF989898FF989898FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDF9F7FFE8B79BFFD78353FFF1D3C2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DAFFB5B5B5FFB0B0B0FFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFB0B0B0FFB0B0
      B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0
      B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFAFAFAFFFAFAFAFFFB0B0B0FFBDBD
      BDFFDADADAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FFE00000000000000000000000000000
      FFC00000000000000000000000000000FFC00000000000000000000000000000
      FFC00000000000000000000000000000FFC00000000000000000000000000000
      FFC00000000000000000000000000000C0000000000000000000000000000000
      000000010000000000000000000000000000000F000000000000000000000000
      0000000700000000000000000000000000000007000000000000000000000000
      0000000700000000000000000000000000000007000000000000000000000000
      0000000F0000000000000000000000000000000F000000000000000000000000
      0000000F0000000000000000000000008000000F000000000000000000000000
      C000000F000000000000000000000000FC00001F000000000000000000000000
      FC00001F000000000000000000000000FC00003F000000000000000000000000
      FC00003F000000000000000000000000F80041FF000000000000000000000000
      F8003FFF000000000000000000000000F0003FFF000000000000000000000000
      F0003FFF000000000000000000000000F0007FFF000000000000000000000000
      F8007FFF000000000000000000000000FC00FFFF000000000000000000000000
      FC00FFFF000000000000000000000000FE03FFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFF1FFFFE000000FFFFFFFFFFFFFFFFF
      FFE07FFF00000000FF8FFFFF00000001FFC03FFF80000001FF03FFFF80000001
      FF801FFFC60000FFFF00FFFF80000001FF8007FFFE0000FFFF0007FF80000001
      FF0003FFFE0000FFFE00007F80000001FE0001FFFE0000FFFE00000780000001
      FC00007FFF0000FFFC00000780000001F800003FFF8001FFFC00000780000001
      F800001FFFC003FFF800000780000001F0000007E000000FF000000780000001
      E0000003C0000007F000000780000001C0000001E0000007E000000380000001
      80000000E0000007C00000018000000100000000E0000007C000000080000001
      00000000E0000007800000008000000100000000E00000078000000080000001
      00000001E0000007000000008000000100000003E00000070000001080000001
      00000007E00000070000001F800000010000000FE00000070000003F80000001
      8000000FE0000007C000003F80000001E000001FE0000007F000003F80000001
      F000003FE0000007F000003F80000001F800007FE0000007E000007F80000001
      FE0000FFE0000007E000007F80000001FF0001FFE0000007F000007F80000001
      FFC001FFE0000007FF00007F80000001FFE003FFE0000007FFF0007F80000001
      FFF807FFE0000007FFFF80FF80000001FFFC0FFFE0000007FFFFFDFFC0000001
      FFFE1FFFE0000007FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsTemplate: TDataSource
    DataSet = qryTemplate
    Left = 7
    Top = 248
  end
  object qryTemplate: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONTRACT_TEMPLATE'
      'WHERE'
      '   TEMPLATE_NO = :OLD_TEMPLATE_NO')
    EditSQL.Strings = (
      'UPDATE HR_CONTRACT_TEMPLATE SET'
      '   TEMPLATE_NO = :TEMPLATE_NO, /*PK*/'
      '   CONTRACT_TYPE_NO = :CONTRACT_TYPE_NO,'
      '   CONTRACT_NAME = :CONTRACT_NAME,'
      '   REPRESENTATIVE = :REPRESENTATIVE,'
      '   EMPLOYER_NO = :EMPLOYER_NO,'
      '   STARTED_DATE = :STARTED_DATE,'
      '   EXPIRED_DATE = :EXPIRED_DATE,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   FILE_NAME = :FILE_NAME,'
      '   TEMPLATE_FILE = :TEMPLATE_FILE,'
      '   CONTRACT_NOTE = :CONTRACT_NOTE,'
      '   CONGVIEC_PHAILAM = :CONGVIEC_PHAILAM,'
      '   THOIGIAN_LAMCHINH = :THOIGIAN_LAMCHINH,'
      '   THOIGIAN_LAMTHEM = :THOIGIAN_LAMTHEM,'
      '   GHICHU = :GHICHU,'
      '   POSITION_NO = :POSITION_NO,'
      '   ASSIGNED_DATE = :ASSIGNED_DATE,'
      '   ENDED_DATE = :ENDED_DATE'
      'WHERE'
      '   TEMPLATE_NO = :OLD_TEMPLATE_NO')
    GeneratorLinks.Strings = (
      'TEMPLATE_NO=GEN_HR_CONTRACT_TEMPLATE_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CONTRACT_TEMPLATE('
      '   TEMPLATE_NO, /*PK*/'
      '   CONTRACT_TYPE_NO,'
      '   CONTRACT_NAME,'
      '   REPRESENTATIVE,'
      '   EMPLOYER_NO,'
      '   STARTED_DATE,'
      '   EXPIRED_DATE,'
      '   FILE_CONTENT,'
      '   FILE_NAME,'
      '   TEMPLATE_FILE,'
      '   CONTRACT_NOTE,'
      '   CONGVIEC_PHAILAM,'
      '   THOIGIAN_LAMCHINH,'
      '   THOIGIAN_LAMTHEM,'
      '   GHICHU,'
      '   POSITION_NO,'
      '   ASSIGNED_DATE,'
      '   ENDED_DATE)'
      'VALUES ('
      '   :TEMPLATE_NO,'
      '   :CONTRACT_TYPE_NO,'
      '   :CONTRACT_NAME,'
      '   :REPRESENTATIVE,'
      '   :EMPLOYER_NO,'
      '   :STARTED_DATE,'
      '   :EXPIRED_DATE,'
      '   :FILE_CONTENT,'
      '   :FILE_NAME,'
      '   :TEMPLATE_FILE,'
      '   :CONTRACT_NOTE,'
      '   :CONGVIEC_PHAILAM,'
      '   :THOIGIAN_LAMCHINH,'
      '   :THOIGIAN_LAMTHEM,'
      '   :GHICHU,'
      '   :POSITION_NO,'
      '   :ASSIGNED_DATE,'
      '   :ENDED_DATE)')
    KeyLinks.Strings = (
      'HR_CONTRACT_TEMPLATE.TEMPLATE_NO')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = d
    SQL.Strings = (
      'SELECT TEMPLATE_NO'
      '     , HR_CONTRACT_TEMPLATE.CONTRACT_TYPE_NO'
      '     , CONTRACT_TYPE_NAME'
      '     , TIME_LIMIT'
      '     , TIME_UNIT    '
      '     , CONTRACT_NAME'
      '     , REPRESENTATIVE'
      '     , EMPLOYER_NO'
      '     , A.DEPT_NAME'
      '     , STARTED_DATE'
      '     , EXPIRED_DATE'
      '     , FILE_CONTENT'
      '     , FILE_NAME'
      '     , TEMPLATE_FILE'
      '     , CONTRACT_NOTE'
      '     , CONGVIEC_PHAILAM'
      '     , THOIGIAN_LAMCHINH'
      '     , THOIGIAN_LAMTHEM'
      '     , GHICHU'
      '     , HR_CONTRACT_TEMPLATE.POSITION_NO'
      '     , B.DEPT_NAME||'#39'-'#39'||TITLE_NAME POSITION_NAME'
      '     , ASSIGNED_DATE'
      '     , HR_CONTRACT_TEMPLATE.ENDED_DATE'
      'FROM HR_CONTRACT_TEMPLATE'
      'left join HR_DEPARTMENT A on EMPLOYER_NO=A.DEPT_NO'
      
        'left join HR_POSITION on HR_CONTRACT_TEMPLATE.POSITION_NO=HR_POS' +
        'ITION.POSITION_NO'
      'left join HR_DEPARTMENT B on HR_POSITION.DEPT_NO=B.DEPT_NO'
      'left join HR_TITLE on HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      
        'left join HR_CONTRACT_TYPE on HR_CONTRACT_TEMPLATE.CONTRACT_TYPE' +
        '_NO=HR_CONTRACT_TYPE.CONTRACT_TYPE_NO')
    FieldOptions = []
    Left = 7
    Top = 216
    object qryTemplateTEMPLATE_NO: TIntegerField
      FieldName = 'TEMPLATE_NO'
      Required = True
    end
    object qryTemplateCONTRACT_TYPE_NO: TWideStringField
      FieldName = 'CONTRACT_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryTemplateCONTRACT_NAME: TWideStringField
      FieldName = 'CONTRACT_NAME'
      Required = True
      Size = 126
    end
    object qryTemplateREPRESENTATIVE: TWideStringField
      FieldName = 'REPRESENTATIVE'
      Size = 63
    end
    object qryTemplateEMPLOYER_NO: TWideStringField
      FieldName = 'EMPLOYER_NO'
      Required = True
      Size = 15
    end
    object qryTemplateDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryTemplateSTARTED_DATE: TDateField
      FieldName = 'STARTED_DATE'
      Required = True
      OnChange = qryTemplateSTARTED_DATEChange
    end
    object qryTemplateEXPIRED_DATE: TDateField
      FieldName = 'EXPIRED_DATE'
    end
    object qryTemplateFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryTemplateFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 30
    end
    object qryTemplateTEMPLATE_FILE: TWideStringField
      FieldName = 'TEMPLATE_FILE'
      Size = 30
    end
    object qryTemplateCONTRACT_NOTE: TWideStringField
      FieldName = 'CONTRACT_NOTE'
      Size = 3072
    end
    object qryTemplateCONGVIEC_PHAILAM: TWideStringField
      FieldName = 'CONGVIEC_PHAILAM'
      Size = 126
    end
    object qryTemplateTHOIGIAN_LAMCHINH: TWideStringField
      FieldName = 'THOIGIAN_LAMCHINH'
      Size = 63
    end
    object qryTemplateTHOIGIAN_LAMTHEM: TWideStringField
      FieldName = 'THOIGIAN_LAMTHEM'
      Size = 63
    end
    object qryTemplateGHICHU: TWideStringField
      FieldName = 'GHICHU'
      Size = 3072
    end
    object qryTemplatePOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryTemplatePOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      OnChange = qryTemplatePOSITION_NAMEChange
      Size = 253
    end
    object qryTemplateASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object qryTemplateENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
    object qryTemplateCONTRACT_TYPE_NAME: TWideStringField
      FieldName = 'CONTRACT_TYPE_NAME'
      Required = True
      OnChange = qryTemplateCONTRACT_TYPE_NAMEChange
      Size = 126
    end
    object qryTemplateTIME_LIMIT: TIntegerField
      FieldName = 'TIME_LIMIT'
      OnChange = qryTemplateTIME_LIMITChange
    end
    object qryTemplateTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
      OnChange = qryTemplateTIME_LIMITChange
    end
  end
  object ImageList2: TImageList
    Left = 65533
    Top = 171
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F8F0FF31A931FF079507FF3EAF
      3EFFF4FAF4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0C5B6FFEFDDD3FFA65F32FF000000000000
      0000000000000000000000000000000000000000000000000000E7B89EFFDF9D
      76FFFAF1EBFFF2DBCDFFFAEDE7FF96D092FF0CA00FFF55C567FF4AC25BFF55C0
      5DFF089A08FFACDBACFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8D5C9FFF3DFD8FFFFB3A4FFFFFAF9FFC38E72FFFBF8
      F6FF0000000000000000000000000000000000000000DA8554FFFE9D65FFFDA0
      60FFE0572FFFEC7741FFF37645FF09B024FF27C14FFF1AB73BFFF5FBF6FF0BAA
      1AFF0DA71BFF029804FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFE2DAFFE5CEBDFFFFC1ABFFFEC7BCFFFDCDC2FFFFE5E0FFF6DB
      D4FFD7BCA8FF00000000000000000000000000000000E09871FFFFA169FFFC9A
      62FFF38251FFF48F54FFCF8839FF3DD878FF33C760FF1FBA3EFFFFFFFFFF1BB3
      2CFF13AF23FF0DA61AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4CFC1FFE1BEABFFFFCBBDFFFFD4CCFFD7DDC2FFFFCEC7FFFFCFC8FFFFDE
      D6FFFEFCFEFF9C4A15FF000000000000000000000000E6B191FFFFAF7BFFFF9F
      6BFFFD9C64FFFA975FFFD38B42FF46E681FFF7FCFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF09AB1FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4EC
      E6FFE7C1AEFFFFCFC7FFFFD3CAFFFCDACDFFFFCCD7FFFFD8DAFFFDECDCFFFFC8
      C1FFFFA386FFFFFEFDFF9C5632FF0000000000000000F0D0BEFFFFC095FFFFAC
      78FFFFA56CFFFF9D66FFFE9666FF35E071FF36DB6BFF16C64AFFFFFFFFFF12B7
      31FF0AB127FF13AE28FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5A2
      8AFFFFDBD5FFFFDBDFFFC1A974FFFFE5F6FFFFEEEFFFFFF8FCFFCD784FFFF7B6
      95FFF2BDB2FFFEDAD1FFFFF4F9FF92471BFF00000000FDFAF8FFFFCD9CFFFFD4
      B5FFFFAF7EFFFFA872FFFF9F67FF86952EFF4CF18CFF42DF76FFA0E9BBFF2CC9
      59FF2CC353FFA9D9A9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F4F1FFD39E82FFFFE1
      DAFFF0DDCFFFE0C8A2FFF3FAE3FFFFF8FBFFFAFDFCFFFFAE8FFFFFE7DCFFEFAB
      9EFFFFFCFEFFF5D0BEFFFFF5F3FFA56135FF0000000000000000E4A785FFFFDB
      AEFFFFBC8FFFFFB788FFE9C3A6FFF4B18AFFE99451FF3C9C20FF17AF28FF4693
      1AFFF2F9F2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFAFFDAA288FFFFE4E2FFF9F2
      EFFFC3DBB4FFF6F9EAFFFFF8F5FFFFF5F1FFFBC7B1FFFFE6D6FFFFD1C0FFFDCB
      CEFFFFF9FCFFFFF9F7FFB87A5AFF00000000000000000000000000000000F3DB
      CEFFFBCC9AFFF7884BFFF99157FFEF8344FFFEA56FFFFF9D67FFFFBF9EFFDB8B
      5DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5987DFFFFE7E8FF21CA57FF35E1
      6FFFF4FDF5FFFFEAF9FFDECFA8FFFBC1B3FFFEF8F8FFFFFCFBFFD4B887FFFCE2
      DFFFFAE6E0FFBF8D6DFF00000000000000000000000000000000000000000000
      000000000000E0874BFFEE9460FFEC8A52FFE98348FFEF9460FFDF976FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBBCAAFFFFF2F0FFE1B0A3FF3BC2
      5FFF3FE174FF87FFB0FFFFF3F9FFFFF8F7FFFEEBEAFFF6B6A9FFFFF4F7FFF5E5
      DAFFDABDAAFF0000000000000000000000000000000000000000000000000000
      0000E7B190FFFD905DFFF79152FFF48D52FFF0884CFFDC7942FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEE1D9FFCD9C80FFFFFEFEFFF4D5
      D0FF63AD61FF3AE478FF73FAA4FFFFF8FCFFEDD5BEFFFAEBE5FFF7E8E3FFCEA7
      8CFF000000000000000000000000000000000000000000000000000000000000
      0000F7A270FFFEA26AFFFE9C64FFFA975DFFF69055FFEA8346FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B47753FFFBEF
      EAFFFDF9F8FFB79674FF3CE477FF52FC8FFFF5E9E3FFE7D2C6FFDCC0AEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5A877FFFFBB8CFFFFAC78FFFF9D67FFFD995EFFF89C5FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4B1
      9BFFE1C0AFFFFFFFFFFFDAB5A4FFC6BDA4FFE5D0C5FFEBDCD2FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCD8ABFFFFF0E2FFDE9055FFF4A063FFFF9C63FFFEB281FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F3F0FFBA7E59FFFFFFFFFFD3B099FFEFE2DBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7824AFFFFEFC6FFFFDCB2FFFFCB9FFFFFC191FFF8A871FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD8563FFFDFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9824DFFFBDCB3FFFAD4A3FFD87A3CFFFDF9F6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFF0700000000FE3FC00300000000
      FC0F800300000000F807800300000000F003800300000000E001800300000000
      E0008003000000008000C007000000000001E00F000000000003F81F00000000
      0007F03F00000000000FF03F00000000C01FF03F00000000E03FF03F00000000
      F07FF03F00000000FCFFF83F0000000000000000000000000000000000000000
      000000000000}
  end
  object memEmployee: TdxMemData
    Indexes = <>
    SortOptions = []
    OnNewRecord = memEmployeeNewRecord
    Left = 40
    Top = 216
    object memEmployeeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memEmployeeFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memEmployeeGENDER: TIntegerField
      FieldName = 'GENDER'
    end
    object memEmployeeBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object memEmployeeEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Size = 127
    end
    object memEmployeeCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 127
    end
    object memEmployeeDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memEmployeeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memEmployeeRESULT: TIntegerField
      FieldName = 'RESULT'
    end
    object memEmployeeCONTRACT_NO: TWideStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object memEmployeeMESSAGE: TWideStringField
      FieldName = 'MESSAGE'
    end
  end
  object dsEmployee: TDataSource
    DataSet = memEmployee
    Left = 40
    Top = 248
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 112
    Top = 120
    object acChonnhanh: TAction
      Caption = 'acChonnhanh'
      ImageIndex = 16
      OnExecute = acChonnhanhExecute
    end
    object acRefreshFormal: TAction
      Caption = 'acRefreshFormal'
      OnExecute = acRefreshFormalExecute
    end
    object acCreateContract: TAction
      Caption = 'acCreateContract'
      ImageIndex = 62
      OnExecute = acCreateContractExecute
      OnUpdate = acCreateContractUpdate
    end
  end
  object qryFormal: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TEMPLATE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONTRACT_FORMAL'
      'WHERE'
      '   FORMAL_PARAM = :OLD_FORMAL_PARAM AND'
      '   TEMPLATE_NO = :OLD_TEMPLATE_NO')
    EditSQL.Strings = (
      'UPDATE HR_CONTRACT_FORMAL SET'
      '   FORMAL_PARAM = :FORMAL_PARAM, /*PK*/'
      '   TEMPLATE_NO = :TEMPLATE_NO, /*PK*/'
      '   FORMAL_VALUE = :FORMAL_VALUE'
      'WHERE'
      '   FORMAL_PARAM = :OLD_FORMAL_PARAM AND'
      '   TEMPLATE_NO = :OLD_TEMPLATE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CONTRACT_FORMAL('
      '   FORMAL_PARAM, /*PK*/'
      '   TEMPLATE_NO, /*PK*/'
      '   FORMAL_VALUE)'
      'VALUES ('
      '   :FORMAL_PARAM,'
      '   :TEMPLATE_NO,'
      '   :FORMAL_VALUE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = d
    DataSource = dsTemplate
    SQL.Strings = (
      'SELECT TEMPLATE_NO'
      '     , FORMAL_PARAM'
      '     , PARAM_NAME'
      '     , FORMAL_VALUE'
      'FROM HR_CONTRACT_FORMAL'
      'left JOIN HR_FORMAL_PARAM on FORMAL_PARAM=PARAM_NO'
      'where TEMPLATE_NO=:TEMPLATE_NO'
      '')
    FieldOptions = []
    Left = 79
    Top = 216
    object qryFormalTEMPLATE_NO: TIntegerField
      FieldName = 'TEMPLATE_NO'
      Required = True
    end
    object qryFormalFORMAL_PARAM: TWideStringField
      FieldName = 'FORMAL_PARAM'
      Required = True
      Size = 30
    end
    object qryFormalPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 126
    end
    object qryFormalFORMAL_VALUE: TIBOFloatField
      FieldName = 'FORMAL_VALUE'
    end
  end
  object dsFormal: TDataSource
    DataSet = qryFormal
    Left = 79
    Top = 248
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = d
    DataSource = dsTemplate
    FieldOptions = []
    Left = 7
    Top = 280
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 261
    Top = 319
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acRefreshFormal
      Caption = 'C'#7853'p nh'#7853't danh s'#225'ch tham s'#7889
      Category = 0
      Hint = 'C'#7853'p nh'#7853't danh s'#225'ch tham s'#7889
      Visible = ivAlways
    end
  end
  object menuFormal: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end>
    UseOwnFont = False
    Left = 197
    Top = 319
  end
  object qryCreateContract: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CONTRACT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTRACT_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTRACT_TYPE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYER_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPRESENTATIVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STARTED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXPIRED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEMPLATE_FILE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    OnError = qryCreateContractError
    SQL.Strings = (
      'INSERT INTO HR_CONTRACT('
      '   CONTRACT_NO, '
      '   CONTRACT_NAME,'
      '   CONTRACT_TYPE_NO,'
      '   EMPLOYEE_NO,'
      '   EMPLOYER_NO,'
      '   REPRESENTATIVE,'
      '   STARTED_DATE,'
      '   EXPIRED_DATE,'
      '   TEMPLATE_FILE)'
      'VALUES ('
      '   :CONTRACT_NO,'
      '   :CONTRACT_NAME,'
      '   :CONTRACT_TYPE_NO,'
      '   :EMPLOYEE_NO,'
      '   :EMPLOYER_NO,'
      '   :REPRESENTATIVE,'
      '   :STARTED_DATE,'
      '   :EXPIRED_DATE,'
      '   :TEMPLATE_FILE)')
    FieldOptions = []
    Left = 7
    Top = 312
  end
  object qryAssignPosition: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ASSIGNED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDED_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POSITION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IS_MAIN_POSITION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTRACT_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    OnError = qryAssignPositionError
    SQL.Strings = (
      ''
      'insert into HR_ASSIGNMENT'
      '(  EMPLOYEE_NO'
      ' , ASSIGNED_DATE'
      ' , ENDED_DATE'
      ' , POSITION_NO'
      ' , IS_MAIN_POSITION'
      ' , CONTRACT_NO'
      ')'
      'values'
      '(  :EMPLOYEE_NO'
      ' , :ASSIGNED_DATE'
      ' , :ENDED_DATE'
      ' , :POSITION_NO'
      ' , :IS_MAIN_POSITION'
      ' , :CONTRACT_NO'
      ')')
    FieldOptions = []
    Left = 39
    Top = 312
  end
  object qryUpdateParam: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM_VALUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOC_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOC_TYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARAM_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    OnError = qryUpdateParamError
    SQL.Strings = (
      'update HR_FORMAL_DETAIL'
      'set '
      '   PARAM_VALUE=:PARAM_VALUE'
      'where'
      ' DOC_NO=:DOC_NO and'
      ' DOC_TYPE=:DOC_TYPE and '
      ' EMPLOYEE_NO=:EMPLOYEE_NO and '
      ' PARAM_NO=:PARAM_NO')
    FieldOptions = []
    Left = 71
    Top = 312
  end
  object qryContractItem: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CONTRACT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONGVIEC_PHAILAM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'THOIGIAN_LAMCHINH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'THOIGIAN_LAMTHEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GHICHU'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    OnError = qryCreateContractError
    SQL.Strings = (
      'INSERT INTO HR_CONTRACT_ITEMS('
      '   CONTRACT_NO, /*PK*/'
      '   CONGVIEC_PHAILAM,'
      '   THOIGIAN_LAMCHINH,'
      '   THOIGIAN_LAMTHEM,'
      '   GHICHU)'
      'VALUES ('
      '   :CONTRACT_NO,'
      '   :CONGVIEC_PHAILAM,'
      '   :THOIGIAN_LAMCHINH,'
      '   :THOIGIAN_LAMTHEM,'
      '   :GHICHU)')
    FieldOptions = []
    Left = 7
    Top = 344
  end
end
