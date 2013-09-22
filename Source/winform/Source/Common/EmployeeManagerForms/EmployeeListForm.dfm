inherited frmEmployees: TfrmEmployees
  Left = 311
  Top = 217
  Width = 741
  Height = 500
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 447
    Width = 733
  end
  object mainPanel: TPanel [1]
    Left = 0
    Top = 0
    Width = 624
    Height = 447
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object panelCenter: TPanel
      Left = 193
      Top = 0
      Width = 431
      Height = 447
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object panelShowForm: TPanel
        Left = 2
        Top = 32
        Width = 427
        Height = 413
        Align = alClient
        BevelOuter = bvNone
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
      end
      object panelHeader: TPanel
        Left = 2
        Top = 2
        Width = 427
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        BevelWidth = 0
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 427
          Height = 30
          Align = alClient
          BevelKind = bkSoft
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object lblReportCaption: TElLabel
            Left = 2
            Top = 2
            Width = 174
            Height = 24
            Align = alClient
            Alignment = taCenter
            BiDiMode = bdLeftToRight
            Caption = 'H'#7890' S'#416' NH'#194'N VI'#202'N'
            Color = clCream
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            WordWrap = True
            Effect = lesShadow
            Style = ltsOutlined
          end
          object dxLayoutGroup1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutItem1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'lblReportCaption'
              ShowCaption = False
              Control = lblReportCaption
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object panelLeft: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 447
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 185
        Height = 32
        Align = alTop
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dximOption: TdxImageEdit
          Left = 48
          Top = 2
          Width = 126
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnChange = dximOptionChange
          DropDownRows = 16777223
          PopupBorder = pbSingle
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'T'#249'y ch'#7885'n'
            Control = dximOption
            ControlOptions.ShowBorder = False
          end
        end
      end
      object gridEmpList: TdxDBGrid
        Left = 0
        Top = 32
        Width = 185
        Height = 415
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'EMPLOYEE_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = EmpInfoDM.dsEmpList
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        OnChangeNode = gridEmpListChangeNode
        object gridEmpListEMPLOYEE_NO: TdxDBGridColumn
          Caption = 'M'#227' NV'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_NO'
          Caption_UTF7 = 'M+AOM NV'
        end
        object gridEmpListFULL_NAME: TdxDBGridColumn
          Caption = 'H'#7885' t'#234'n nh'#226'n vi'#234'n'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 131
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FULL_NAME'
          Caption_UTF7 = 'H+Hs0 t+AOo-n nh+AOI-n vi+AOo-n'
        end
        object gridEmpListFIRST_NAME: TdxDBGridColumn
          Caption = 'T'#234'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIRST_NAME'
          Caption_UTF7 = 'T+AOo-n'
        end
        object gridEmpListMIDDLE_NAME: TdxDBGridColumn
          Caption = 'T'#234'n l'#243't'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MIDDLE_NAME'
          Caption_UTF7 = 'T+AOo-n l+APM-t'
        end
        object gridEmpListLAST_NAME: TdxDBGridColumn
          Caption = 'H'#7885
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LAST_NAME'
          Caption_UTF7 = 'H+Hs0'
        end
        object gridEmpListGENDER: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Gi'#7899'i t'#237'nh'
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 16
          Visible = False
          Width = 93
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
          Values.WideStrings = (
            '0'
            '1')
          Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
        end
        object gridEmpListBIRTH_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y sinh'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BIRTH_DATE'
          Caption_UTF7 = 'Ng+AOA-y sinh'
        end
        object gridEmpListMARRIAL_STATUS: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'T'#236'nh tr'#7841'ng h'#244'n nh'#226'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          MinWidth = 16
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MARRIAL_STATUS'
          Descriptions.WideStrings = (
            #272#7897'c th'#226'n'
            #272#227' c'#243' gia '#273#236'nh'
            'Kh'#225'c')
          Values.WideStrings = (
            'DOCTHAN'
            'COGIADINH'
            'KHAC')
          Caption_UTF7 = 'T+AOw-nh tr+HqE-ng h+APQ-n nh+AOI-n'
        end
        object gridEmpListID_CARD_NO: TdxDBGridColumn
          Caption = 'S'#7889' CMND'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ID_CARD_NO'
          Caption_UTF7 = 'S+HtE CMND'
        end
        object gridEmpListISSUED_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y c'#7845'p'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ISSUED_DATE'
          Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
        end
        object gridEmpListISSUED_PLACE: TdxDBGridColumn
          Caption = 'N'#417'i c'#7845'p'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ISSUED_PLACE'
          Caption_UTF7 = 'N+AaE-i c+HqU-p'
        end
        object gridEmpListCONTACT_ADDR: TdxDBGridColumn
          Caption = #272#7883'a ch'#7881' li'#234'n h'#7879
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTACT_ADDR'
          Caption_UTF7 = '+ARAeyw-a ch+Hsk li+AOo-n h+Hsc'
        end
        object gridEmpListPROVISION_ADDR: TdxDBGridColumn
          Caption = #272#7883'a ch'#7881' t'#7841'm tr'#250
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PROVISION_ADDR'
          Caption_UTF7 = '+ARAeyw-a ch+Hsk t+HqE-m tr+APo'
        end
        object gridEmpListRESIDENT_ADDR: TdxDBGridColumn
          Caption = #272#7883'a ch'#7881' th'#432#7901'ng tr'#250
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RESIDENT_ADDR'
          Caption_UTF7 = '+ARAeyw-a ch+Hsk th+AbAe3Q-ng tr+APo'
        end
        object gridEmpListCONTACT_PHONE: TdxDBGridColumn
          Caption = #272'i'#7879'n tho'#7841'i li'#234'n l'#7841'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTACT_PHONE'
          Caption_UTF7 = '+ARA-i+Hsc-n tho+HqE-i li+AOo-n l+HqE-c'
        end
        object gridEmpListHAND_PHONE: TdxDBGridColumn
          Caption = 'S'#7889' di '#273#7897'ng'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HAND_PHONE'
          Caption_UTF7 = 'S+HtE di +AREe2Q-ng'
        end
        object gridEmpListEMAIL: TdxDBGridColumn
          Caption = 'Email'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMAIL'
        end
        object gridEmpListFAX: TdxDBGridColumn
          Caption = 'Fax'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FAX'
        end
        object gridEmpListWEBSITE: TdxDBGridColumn
          Caption = 'Web site'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WEBSITE'
        end
        object gridEmpListRACE_NO: TdxDBGridColumn
          Caption = 'M'#227' d'#226'n t'#7897'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RACE_NO'
          Caption_UTF7 = 'M+AOM d+AOI-n t+Htk-c'
        end
        object gridEmpListRACE_NAME: TdxDBGridPopupColumn
          Caption = 'D'#226'n t'#7897'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RACE_NAME'
          Caption_UTF7 = 'D+AOI-n t+Htk-c'
        end
        object gridEmpListCURRENCY_NO: TdxDBGridColumn
          Caption = 'M'#227' ti'#7873'n t'#7879
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CURRENCY_NO'
          Caption_UTF7 = 'M+AOM ti+HsE-n t+Hsc'
        end
        object gridEmpListCURRENCY_NAME: TdxDBGridPopupColumn
          Caption = 'S'#7917' d'#7909'ng ti'#7873'n t'#7879
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CURRENCY_NAME'
          Caption_UTF7 = 'S+Hu0 d+HuU-ng ti+HsE-n t+Hsc'
        end
        object gridEmpListNATIONAL_NO: TdxDBGridColumn
          Caption = 'M'#227' qu'#7889'c t'#7883'ch'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NATIONAL_NO'
          Caption_UTF7 = 'M+AOM qu+HtE-c t+Hss-ch'
        end
        object gridEmpListNATIONAL_NAME: TdxDBGridPopupColumn
          Caption = 'Qu'#7889'c t'#7883'ch'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NATIONAL_NAME'
          Caption_UTF7 = 'Qu+HtE-c t+Hss-ch'
        end
        object gridEmpListRELIGION_NO: TdxDBGridColumn
          Caption = 'M'#227' t'#244'n gi'#225'o'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RELIGION_NO'
          Caption_UTF7 = 'M+AOM t+APQ-n gi+AOE-o'
        end
        object gridEmpListRELIGION_NAME: TdxDBGridPopupColumn
          Caption = 'T'#244'n gi'#225'o'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RELIGION_NAME'
          Caption_UTF7 = 'T+APQ-n gi+AOE-o'
        end
        object gridEmpListBIRTH_PLACE_ID: TdxDBGridColumn
          Caption = 'M'#227' n'#417'i sinh'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BIRTH_PLACE_ID'
          Caption_UTF7 = 'M+AOM n+AaE-i sinh'
        end
        object gridEmpListBIRTH_PLACE_NAME: TdxDBGridPopupColumn
          Caption = 'N'#417'i sinh'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BIRTH_PLACE_NAME'
          Caption_UTF7 = 'N+AaE-i sinh'
        end
        object gridEmpListNATIVE_PLACE_ID: TdxDBGridColumn
          Caption = 'M'#227' qu'#234' qu'#225'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NATIVE_PLACE_ID'
          Caption_UTF7 = 'M+AOM qu+AOo qu+AOE-n'
        end
        object gridEmpListNATIVE_PLACE_NAME: TdxDBGridPopupColumn
          Caption = 'Qu'#234' qu'#225'n'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NATIVE_PLACE_NAME'
          Caption_UTF7 = 'Qu+AOo qu+AOE-n'
        end
        object gridEmpListNOTES: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOTES'
          Caption_UTF7 = 'Ghi ch+APo'
        end
        object gridEmpListEMPLOYEE_ID: TdxDBGridColumn
          Caption = 'M'#227' s'#7889' th'#7867' NV'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 213
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_ID'
          Caption_UTF7 = 'M+AOM s+HtE th+Hrs NV'
        end
      end
    end
    object ElSplitter1: TElSplitter
      Left = 185
      Top = 0
      Width = 8
      Height = 447
      Cursor = crHSplit
      SnapTopLeft = True
      SnapBottomRight = False
      ControlTopLeft = panelLeft
      ControlBottomRight = panelCenter
      AutoHide = False
      ShowSnapButton = True
      Align = alLeft
      BevelOuter = bvLowered
      UseXPThemes = False
    end
  end
  object dxsidebarMenu: TdxSideBar [2]
    Left = 624
    Top = 0
    Width = 109
    Height = 447
    Align = alRight
    BkGround.BeginColor = 14743778
    BkGround.EndColor = 13693895
    BkGround.FillStyle = bfsHorz
    BkGround.Step = 1
    Color = 10277075
    CanSelected = True
    GroupFont.Charset = ANSI_CHARSET
    GroupFont.Color = clBlue
    GroupFont.Height = -11
    GroupFont.Name = 'Tahoma'
    GroupFont.Style = [fsBold]
    Groups = <
      item
        Caption = 'Th'#244'ng tin chung'
        Index = 0
        IconType = dxsgLargeIcon
        Items = <
          item
            Caption = 'Th'#244'ng tin chung'
            CustomData = 'TT_CHUNG'
            Index = 0
            IsDefault = True
            LargeImage = 10
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Tr'#236'nh '#273#7897' n'#259'ng l'#7921'c'
            CustomData = 'TD_NANGLUC'
            Index = 1
            IsDefault = True
            LargeImage = 9
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Qu'#225' tr'#236'nh c'#244'ng t'#225'c'
            CustomData = 'QT_CONGTAC'
            Index = 2
            IsDefault = True
            LargeImage = 8
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'H'#7907'p '#273#7891'ng lao '#273#7897'ng - H'#7891' s'#417' li'#234'n quan'
            CustomData = 'HOPDONG_HS'
            Index = 3
            IsDefault = True
            LargeImage = 6
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'L'#432#417'ng c'#417' b'#7843'n - B'#7843'o hi'#7875'm x'#227' h'#7897'i'
            CustomData = 'LUONG_CBNN'
            Index = 4
            IsDefault = True
            LargeImage = 3
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Gi'#7845'y ph'#233'p lao '#273#7897'ng'
            CustomData = 'LABOR_LICENSE'
            Index = 5
            IsDefault = True
            LargeImage = 24
            SmallImage = -1
            Tag = 0
          end>
      end
      item
        Caption = 'T'#7893' ch'#7913'c'
        Index = 1
        IconType = dxsgLargeIcon
        Items = <
          item
            Caption = 'C'#244'ng t'#225'c trong n'#432#7899'c - n'#432#7899'c ngo'#224'i'
            CustomData = 'CONGTAC'
            Index = 0
            IsDefault = True
            LargeImage = 13
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Khen th'#432#7903'ng - K'#7927' lu'#7853't'
            CustomData = 'KHENTHUONG_KL'
            Index = 1
            IsDefault = True
            LargeImage = 12
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Thi '#273'ua - '#272#224'o t'#7841'o'
            CustomData = 'DANHGIA_THIDUA'
            Index = 2
            IsDefault = True
            LargeImage = 5
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Ti'#7875'u s'#7917' c'#225' nh'#226'n'
            CustomData = 'TIEUSU_QH'
            Index = 3
            IsDefault = True
            LargeImage = 11
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'In h'#7891' s'#417' c'#225' nh'#226'n'
            CustomData = 'IN_HOSO'
            Index = 4
            IsDefault = True
            LargeImage = 7
            SmallImage = -1
            Tag = 0
          end>
      end
      item
        Caption = 'Nh'#7853'p li'#7879'u t'#7893'ng h'#7907'p'
        Index = 2
        IconType = dxsgLargeIcon
        Items = <
          item
            Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
            CustomData = 'DANHSACH_NHANVIEN'
            Index = 0
            IsDefault = True
            LargeImage = 23
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Th'#244'ng tin b'#7893' sung'
            CustomData = 'THONGTIN_THEM'
            Index = 1
            IsDefault = True
            LargeImage = 6
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
    LargeImages = imgLargeIcon
    ScrollDelay = 300
    SpaceHeight = 7
    TransparentImages = True
    ShowGroups = True
    StoreInRegistry = False
    OnItemClick = dxsidebarMenuItemClick
  end
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'H'#7891' s'#417' nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 616
    Top = 168
  end
  object mainActionList: TActionList
    Left = 442
    Top = 200
    object acGetEmpList: TAction
      Caption = 'acShowEmpInfo'
      OnExecute = acGetEmpListExecute
    end
  end
  object imgLargeIcon: TImageList
    Height = 32
    Width = 32
    Left = 122
    Top = 144
    Bitmap = {
      494C010119001D00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000000001000001002000000000000000
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0BCA8FFBFAA
      96FFA48E7BFF947E6BFF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFEDEDEDFFEDEDEDFFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF1F1F1FFF1F1F1FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF3F3F3FFF3F3F3FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
      A9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
      A9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFF3F3F3FFF3F3F3FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF4F4F4FFF4F4F4FFD1BDA9FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFE0D3C5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFE0D3C5FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFD1BDA9FFF4F4F4FFF4F4F4FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF6F6F6FFF6F6F6FFD1BDA9FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFE0D3C5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFE0D3C5FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFD1BDA9FFF6F6F6FFF6F6F6FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF7F7F7FFF7F7F7FFD1BDA9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFE0D3C5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE0D3C5FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFD1BDA9FFF7F7F7FFF7F7F7FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF8F8F8FFF8F8F8FFD1BDA9FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFE0D3C5FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFE0D3C5FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFD1BDA9FFF8F8F8FFF8F8F8FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF9F9F9FFF9F9F9FFD1BDA9FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFE0D3C5FFE0D3C5FFD1BDA9FFF9F9F9FFF9F9F9FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFF9F9F9FFF9F9F9FFD1BDA9FFEFE2D4FFEFE2D4FFEFE2D4FFEFE2D4FFEFE2
      D4FFEFE2D4FFE0D3C5FFEFE2D4FFEFE2D4FFEFE2D4FFEFE2D4FFE0D3C5FFEFE2
      D4FFEFE2D4FFEFE2D4FFEFE2D4FFD1BDA9FFF9F9F9FFF9F9F9FFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFAFAFAFFFAFAFAFFD1BDA9FFE8D9CAFFE8D9CAFFE8D9CAFFE8D9CAFFE8D9
      CAFFE8D9CAFFE0D3C5FFE8D9CAFFE8D9CAFFE8D9CAFFE8D9CAFFE0D3C5FFE8D9
      CAFFE8D9CAFFE8D9CAFFE8D9CAFFD1BDA9FFFAFAFAFFFAFAFAFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFBFBFBFFFBFBFBFFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
      A9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
      A9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFFBFBFBFFFBFBFBFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFDFDFDFFFDFDFDFFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFFDFDFDFFFDFDFDFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFF8F79
      66FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFDFDFDFFFDFDFDFFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFE0D3C5FFE0D3C5FFE0D3
      C5FFE0D3C5FFE0D3C5FFE0D3C5FFE0D3C5FFFDFDFDFFFDFDFDFFFAF9F7FF927C
      69FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFBFFF5F5F5FFDCD5CFFF9F8A
      77FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFEFEFEFFFEFEFEFFB6B6B6FFACACACFFB6B6B6FFD5D5D5FFC1C1C1FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFCBCBCBFFACACACFF8383
      83FFD5D5D5FFB6B6B6FFF1F1F1FFF0F0F0FFE4E4E4FFD8D6D5FFBAAA9BFFB9A4
      91FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFEFEFEFFFEFEFEFF989898FFA2A2A2FF989898FFCBCBCBFFB6B6B6FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFA2A2A2FF989898FFA2A2
      A2FFC1C1C1FF9C9B9AFFCBC5C1FFC9C2BDFFBBAFA4FFB8A89BFFCDBFB1FFD8C7
      B7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB
      F9FFCFBDACFFC4B4A6FFC1B1A3FFC4B4A7FFCCC3BCFFD0C3B7FFD9C9B9FFFCFA
      F9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFFFFFFFFFFFFFFFFD5CDC6FFD5CDC6FFD5CDC6FFCEC4BCFFCEC4BCFFC7BC
      B3FFE3DED9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDDD1C5FFFFFFFFFFFAFAFAFFE7E7E7FFD1C4B8FFD9C9B9FFFCFAF9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFFFFFFFFFFFFFFFF8F7966FFAB9B8CFFA49283FFB2A396FF8F7966FFB9AB
      9FFFE3DED9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE5DCD4FFFBFBFBFFE9E9E9FFDBD2C9FFD9C9B9FFFCFAF9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDBCFC4FFEEEEEEFFE8E0D9FFD9C9B9FFFCFAF9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0
      ECFFDBD2C9FFDACDBFFFE5DACEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFF1ECE7FFD7C9
      BDFFD4C4B5FFE2D5C9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1BDA9FFD1BD
      A9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
      A9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
      A9FFE5D9CEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCD6
      D400C4B2B400B4969400B6787400AC626400B04E4C00AC3E3C00AC2C2C00BC22
      1C00BA161400B70E0C00B4080400B4080400B4080400B40A0C00B70E0C00BC1A
      1C00B4242400AC2C2C00AC3E3C00AC535400AC626400B4828400BC9A9C00CCBA
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B40E0C04B219
      1A0EA8222211A72B2B0800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFDFDFDFFFA8A7
      A7FF93908FFF8F8B8BFF8F8D8CFF908D8DFF918E8EFF918F8FFF939090FF9391
      91FF949292FF949393FF858595FF858596FF878796FF888795FF949393FF9492
      92FF939191FF939090FF92908FFF918F8EFF908E8DFF8F8D8DFF908C8CFF9592
      92FFB6B6B6FFEBEBEBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AC424400B408
      0400BC160C00BC1B1400C0221400BC2E1400C4342400C83A2400CC442400D44E
      2C00D4563400D8623400DC663C00DC6C3C00DD723C00E0764400E47C4400E47C
      4400E47C4400E0764400E0764400DD723C00DC6C3C00D45C3400D3522C00C83E
      2400BC160C00AC4A4C000000000000000000000000000000000000000000B308
      0401BA170D04BB1C1503BF221401000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1663B238347276C5E33
      1C9662351D919D53304CCF6D3F13A9572E3C9B4C2A4BB8502D22000000000000
      00000000000000000000000000000000000000000000E9E9E9FF9B9493FFC7B2
      AFFFC1AAA6FFC6B0ACFFCCB7B4FFD2BEBCFFD7C5C4FFDDCCCBFFE3D3D2FFE8DA
      D9FFEDE0DFFFEFE3E3FF7873F3FF6C6CFFFF7171FFFF8883F3FFF0E4E3FFEEE1
      E1FFE9DBDAFFE4D5D4FFDECECDFFD9C7C5FFD3C0BEFFCDB9B6FFC8B2AEFFC2AB
      A7FFB19C99FF9B9795FFF6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC424400B7120C00B42C
      1400C02D1C00BF321C00C83A2400C83E2400CC442400D44E2400CC4E2C00D456
      3400D45C3400D8623400DC663C00DC6C3C00DD723C00E47C4400E47C4400E482
      4400E48A4C00EC8E5400EC945400EC9A5400EC9E5400F4A85C00F4A85C00F4B2
      6400F4AE5C00CC4A2C00B44E4400000000000000000000000000B1110C096619
      0B6F58150D8A5C180E84671E127C7624156992311A48B3421E28BA472816CC54
      340CD25B3402000000000000000000000000DC723C01A95C32423C2112BC0402
      01FB040201FB4D2E1BAC362213C5060402F80F0A05EF8D61356CF2A75B02EEAE
      6206ECA95908CA492B03000000000000000000000000DAD9D9FFCDB9B6FFBDA5
      A0FFBFA7A3FFC5AEAAFFCAB5B2FFD0BCBAFFD5C3C1FFDBCAC8FFE0D0CFFFE5D6
      D5FFEADCDCFFEEE1E1FF837DF1FF5F5FFFFF5F5FFFFF8881F0FFEEE1E1FFEBDD
      DCFFE6D7D7FFE1D2D0FFDCCBCAFFD7C5C3FFD1BEBCFFCCB7B4FFC6B0ADFFC0A9
      A5FFBAA29DFFB09D99FFF4F4F4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFF000000000000000000000000D9D2D400B4080400AC261400B42C
      1400C02D1C00BF361C00BD3A1C00C83E2400CC442400CC4A2C00D44E2C00D456
      2C00D45C3400D45C3400DC663C00DC6C3C00DD723C00E0764400E47C4400E482
      4C00E48A4C00EC8E4C00EC945400EC9A5400EEA25C00EEA25C00F4AE5C00F4B2
      6400F4B66400F4B26400BC160C00DCD6D40000000000000000001F0E1FDE7C7B
      82FF585867FF424250FF22232CFF09030AF3190804E02A0F09CA3D160DB65322
      119B6E301B7B9541254CB654322CC460351CA5552D419E53304B2B8ED7FF136F
      EAFF00187CFF180E08E50076DEFF37A9F7FF030E40FF6C4A2A8B9A6E3A5E7253
      2F88956F3D63DFA35B16BB160C010000000000000000EEEEEEFFCAB6B3FFBFA7
      A3FFBDA5A0FFC3ACA8FFC8B3B0FFCEBAB7FFD3C0BEFFD9C7C5FFDECECCFFE3D4
      D3FFE7D9D9FFEBDEDEFF9F98EDFF7171FFFF7474FFFFAFA8EDFFEDE1E1FFE9DC
      DBFFE3D4D3FFDECECCFFDAC8C6FFD4C2C0FFCFBBB9FFCAB4B1FFC4AEAAFFBFA7
      A2FFB9A09BFFA29592FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEFFF949494FF727272FF727272FF727272FF727272FF727272FF7272
      72FF86909AFF8F9BA5FF797D7FFF727272FF727272FF727272FF727272FF7272
      72FF727272FF8A8A8AFFE5E5E5FF00000000C4AAAC00AC0E0400B4261400B42C
      1400B42E1C00BF361C00C4342400C83E2400CC442400CC452C00D44E2C00D352
      2C00D45C3400D45C3400DC6A3400DC6C3C00DC6C3C00E0764400E47C4400E482
      4400E5864C00EC8E4C00EC945400EC9A5400EC9E5400EEA25C00F4A85C00F4AE
      5C00F4B26400F4B26400CC4A2C00C4AAAC0000000000A00D08126F706EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9ECFBFFB3B6C0FF7A7D82FF6162
      6BFF080412F51A0B06E02D160BCB1E0F22DC040214FA1A0E08E1B9FFFFFF1586
      E3FF0044E8FF003484FF1896E1FF00AEFFFF0B3667FE20160CDD050323FA0000
      00FF44321CB8DDA15B18000000000000000000000000F6F6F6FFB8A9A7FFC1A9
      A5FFBBA29EFFC1A9A5FFC6B0ADFFCCB7B4FFD2BFBCFFD7C6C4FFDCCCCAFFE1D2
      D0FFE5D7D6FFE8DBDAFFB3ABE7FF7B7BFFFF7D7DFFFFC2B9E7FFEBDFDFFFE9DE
      DDFFE7DBDAFFE1D4D2FFD8C7C5FFD2BEBCFFCDB8B5FFC7B2AEFFC2ABA7FFBCA4
      A0FFB79E98FFA59D9CFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000929292FF020202FF030303FF030303FF030303FF030303FF070707FF0A0A
      0AFF73ACDCFF96CFFFFF48647AFF030303FF030303FF030303FF030303FF0303
      03FF030303FF030303FF727272FF00000000B48D8C00AC150C00A4221400B42C
      1400B42C1400BF321C00BD3A1C00C83E2400C3422400CC4A2C00CC4E2C00D352
      2C00D45C3400D45C3400DC663C00DC6C3C00DC6C3C00E0764400E47C4400E482
      4C00E5864C00EC8E4C00EC8E4C00EC945400EC9E5400EEA25C00EEA25C00F4A8
      5C00F4A85C00F4AE5C00D45C3400B48D8C000000000080101241AEB2B7FFFFFF
      FFFFF5FCFEFFF6FCFEFFFAFDFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6EAF5FF265488FF2B72E6FF0053E7FF000462FF2874B8FF0663
      DCFF0024D3FF004FE1FF006EE0FF008EEDFF1062A5FF1B198CFF87D7FFFF5173
      A7FF7E57307B00000000000000000000000000000000FBFBFBFFAFA5A3FFC2AC
      A7FFB9A09BFFBFA8A4FFC5B0ACFFCBB8B4FFD1BEBCFFD6C5C2FFDBCAC8FFDFCF
      CEFFE2D4D3FFE5D8D7FFC4B9E2FF8484FFFF8484FFFFD3C9E2FFE9DDDCFFE7DB
      DAFFE5DAD9FFE4D8D6FFE2D5D3FFD9C9C7FFCBB6B3FFC5AEABFFBFA8A3FFBAA1
      9CFFB49B96FFB4B0AFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2C2C2FF020202FF030303FF040404FF0A0A0AFF161616FF232323FF1D21
      23FF87C5F6FF97D2FFFF76A3C6FF020202FF030303FF030303FF030303FF0303
      03FF030303FF030303FFB8B8B8FF00000000AC727400AC150C00AC260C00AA2A
      1400B42E1C00B4341C00BF361C00C43E1C00C3422400CC442400D44E2C00D352
      2C00D4563400D45C3400D8623400DC6C3C00DC6C3C00DC724400E47C4400E47A
      3C00E4743400E4743400E87E3400EC8C4400EC945400EC9E5400EEA25C00F4A8
      5C00F4A85C00F4A85C00DC663C00AC72740000000000580B067DDDE8FCFFF6FF
      FFFFE3F7FBFFE3F6FBFFE3F6FBFFE2F6FBFFE5F6FBFFEAF8FBFFF0FAFDFFFCFF
      FEFFFFFFFEFFFFFFFFFFBFC5D8FFC3DAF4FF33A0EBFF0045E7FF0031D2FF002E
      D4FF0030D3FF0024D0FF003AD4FF0086E4FF00A3F0FF35CEF9FF80F4FFFF2A33
      51F791643767BE834838BE583423AB72740100000000FEFEFEFFAAA4A3FFC6B0
      ACFFB9A19CFFBFA8A4FFC5B0ACFFCBB7B4FFD0BDBBFFD5C4C1FFD9C9C7FFDDCE
      CCFFE0D2D0FFE3D5D4FFD2C7DCFF8B8BFFFF8A8AFFFFE1D6DBFFE6DADAFFE5DA
      D9FFE4D9D7FFE3D7D5FFE1D5D4FFE0D3D2FFDBCECBFFC7B2AEFFBDA4A0FFB89F
      9AFFB29993FFCDCCCCFF00000000000000000000000000000000FEFEFEFFFAFA
      FAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF8F8F8FF2A2A2AFF0D0D0DFF1A1A1AFF272727FF323232FF3D3D3DFF2F3F
      4AFF95D1FDFF99D3FFFF98D2FCFF121619FF101010FF101010FF101010FF1010
      10FF101010FF383838FFFEFEFEFF00000000AC5D5C00A01C0C00A4221400AC26
      1400B42C1400BF321C00B4341C00BC3D2400C83E2400C4462400CC4A2C00D352
      2C00CC523400D45C3400D8623400D8623400DC6C3C00DD723C00DD723C00E474
      3400FCDECC00FCFEFC00FCFEFC00F4C6A400EC863C00EC9A5400EC9E5400EC9E
      5400EEA25C00EEA25C00DD723C00AC5D5C00000000002D0803B8ECFDFFFFEEFD
      FCFFD9F4FAFFDCF5FBFFDBF5FBFFD9F3FBFFDAF4FBFFD5F1FAFFCFEBF6FFD6F3
      FAFFE2FFFFFFD1E3E1FFB5BEBBFFE2E3DEFF63BBE5FF004BDAFF0047D9FF0046
      D8FF0041D7FF0037D5FF002ED3FF002DD4FF009FE9FF16AFECFF6FE2FFFF0604
      02F9130D07EB130D07EB60321A90A358570D0000000000000000B7B3B2FFC9B5
      B1FFBAA39EFFC0AAA5FFC5B0ADFFCAB7B4FFCFBDBAFFD4C3C0FFD8C8C6FFDBCC
      CAFFDED0CEFFE0D3D2FFDED1D5FF9090FFFF9594FCFFE5D9D8FFE5D9D8FFE4D9
      D7FFE4D8D6FFE2D7D5FFE1D5D4FFE0D4D3FFDFD3D1FFDDD0CEFFC6B2AEFFB9A2
      9CFFAF9891FFEBEBEBFF000000000000000000000000F2F2F2FFA4A2A2FF948D
      8CFF948D8CFF96908FFF989392FF9B9696FF9E9999FFA09C9CFFA09C9CFFA09C
      9CFFA09C9CFF868282FF2A2929FF363636FF404040FF4B4B4BFF555555FF4663
      76FF9AD4FFFF9BD5FFFF9BD6FFFF3F525FFF393939FF393939FF393939FF3939
      39FF373737FFC2C2C2FF0000000000000000AF464400B4453400AC3C2C00AA2A
      1400AC2E1400A4321C00BF361C00BC3D2400C83E2400C4462400CC4A2C00CC4E
      2C00D4562C00D45C3400D45C3400DC663C00DC6C3C00DC6C3C00DC5C2400FCFA
      F400F7EEEC00ECAE8400E49A6400FCFEFC00F4C8AC00EC8C4400EC9A5400EC9A
      5400EC9E5400EC9E5400E47C4400AC4A4C0000000000190918DCE7F9FFFFE3FA
      FCFFCFF2F9FFD0F1FAFFCFF2F8FFCEF2F8FFCFF0F8FFCEF1F9FFC6EAF6FFDCFE
      FFFF34639AFF00004CFF000050FF00138CFF0064D9FF0054DBFF0059DCFF0054
      DBFF004ED6FF0054DAFF0046D5FF0030CDFF003FD7FF0BB2ECFF38C1EFFF9CE8
      FFFFC6FFFFFF7194BEFF5E331C96A9494B040000000000000000CBCACAFFCBB7
      B4FFBBA6A0FFC0ABA6FFC6B1ADFFCAB7B4FFCFBDBAFFD3C2BFFFD6C7C4FFDACB
      C9FFDDCECCFFDFD1CFFFE0D4D2FF9B9AFCFFA3A1F8FFE3D8D6FFE4D8D6FFE3D8
      D6FFE3D8D6FFE2D7D5FFE1D6D4FFE0D5D3FFDFD4D2FFE0D5D3FFE0D6D4FFBFAB
      A6FFA6948FFFF8F8F8FF000000000000000000000000C2BFBFFFC6B0ADFFBFA7
      A3FFC7B2AEFFCFBBB9FFD7C5C3FFDFCECDFFE6D8D7FFEDE0E0FFF0E4E4FFF0E4
      E4FFF0E4E4FFEFE3E3FFDACDCDFF9A908FFF6B6665FF555454FF626262FF628D
      AAFF9CD7FFFF9DD7FFFF9ED8FFFF5E8197FF575757FF4D4D4DFF6A6A6AFFA3A3
      A3FFEEEEEEFF000000000000000000000000B4363400B44E4400B4524400B445
      3400AC261400AC2E1400BF361C00BD3A1C00BC3D2400C3422400C4462400CC4E
      2C00D3522C00D4563400D45C3400D8623400DC663C00D8623400E47C4400FCFE
      FC00E4763C00E4743400E4743400EC8E5400FCFEFC00E47A3400EC945400EC94
      5400EC945400EC9A5400E47C4400B4363400000000001F2643F9D7EBFFFFD8F7
      FAFFC6EFF8FFC7F0F9FFC6EEF9FFC3EFF7FFC3EEF8FFC2EEF8FFC7F2FBFFA3CA
      E2FF43B2D8FF5FD4FBFF0088F6FF0073EAFF0061DCFF0065DDFF006CDFFF005F
      DAFF0080E8FF0080E6FF57AFE7FF28A3EEFF0026CBFF06A9ECFF2BBBEEFF62D2
      F2FFC0FFFFFF565871DDD1723E15000000000000000000000000F9F9F9FFB9AB
      A8FFC4B1ADFFC0ADA8FFC5B2AEFFCAB7B4FFCEBDBAFFD2C2BFFFD5C6C3FFD9CA
      C8FFDBCDCBFFDED0CEFFDFD3D1FFA9A7F8FFAEABF3FFE2D7D5FFE3D7D5FFE3D8
      D6FFE3D8D6FFE2D7D5FFE1D6D4FFE1D6D4FFE1D6D4FFE5DDDBFFE5DDDBFFCEC0
      BCFFB0ABA9FF00000000000000000000000000000000C9C8C7FFC5AFABFFBDA5
      A0FFC5AEABFFCCB8B5FFD4C1BFFFDBCAC8FFE2D3D2FFE9DCDBFFEEE3E2FFF1E7
      E7FFF2E8E8FFEFE5E4FFE9DCDCFFAFB2BBFF2C6185FF18577FFF185478FF73B1
      D7FF99D5FBFF95D1F8FFB0E0FEFF77AED0FF3F5866FFBABBBCFFFBFBFBFF0000
      000000000000000000000000000000000000B4242400BC625C00BF5A4C00B452
      4400B44E3C00B02A0C00A4321C00BD3A1C00BC3D2400C3422400C4462400CC4A
      2C00CC4E2C00D4562C00D45C3400D45C3400DC663C00DC5C2400E48A6400FCFE
      FC00D4561400E47A3C00E47A3C00E5864C00FCFEFC00E4762C00EC8E4C00EC8E
      4C00EC945400EC945400E4824400AC2C2C00B4252502374662FFCBE3FEFFCEF5
      F9FFBAEDF8FFBCEDF6FFBAECF7FFBCEDF7FFB5E8F5FFAAE1F2FFA8E0F3FF98D4
      EBFF95A8C6FF9CB1DAFF6CBBE6FF3CB1ECFF0074DFFF007BE2FF0078E0FF007F
      E3FF0091EFFF5A6367FFFFFFFFFFE1DEEBFF0061DFFF009AE8FF1FB4EDFF5CDF
      FFFF070837FF442B18B58D512A619C282817000000000000000000000000D2D1
      D1FFCAB7B3FFC3B1ACFFC6B4AFFFCAB9B5FFCEBDBAFFD2C2BFFFD5C6C3FFD8C9
      C7FFDACDCAFFDDCFCDFFDED2D0FFA6A3F3FFB0ACEEFFE1D6D4FFE2D7D5FFE2D8
      D6FFE2D8D6FFE2D8D6FFE2D8D6FFE2D8D6FFE7E0DEFFE9E1E0FFDED4D1FFAD9E
      9AFFF6F6F6FF00000000000000000000000000000000E1E1E1FFC7B1ADFFBAA1
      9CFFC2AAA6FFC9B3B0FFD0BCB9FFD6C4C2FFDDCDCBFFE4D5D4FFE8DCDBFFECE0
      DFFFEDE3E2FFEDE4E3FFC9CDD4FF7293AAFF175A82FF145A84FF135C87FF589B
      C7FF87C1F0FF8FC6F3FF72ACD6FF4884ACFF145E89FF1D6A91FF99A3A8FFFEFE
      FEFF00000000000000000000000000000000BB1E1C00BC766C00C0625400BF5A
      4C00BF5E4C00B4453400AA2A1400B4341C00BD3A1C00BC3D2400C4462400CC4A
      2C00CC4E2C00D3522C00D4562C00D45C3400D44E2400E0764C00FCFEFC00FCFE
      FC00ECB29C00D4561400DC5E1C00F4C8AC00FCF6F400E4743400E48A4C00E48A
      4C00EC8E4C00EC8E4C00E5864C00BC1B1400B0303130506C92FFBFD9F8FFC4F2
      F8FFAFEAF7FFB1EAF6FFACE7F5FF92DAEFFF8ED7EFFF8FD5F0FF90D5EEFF92D5
      EFFF98E3FDFF77B9D3FFB5D7DCFF49A8DFFF008AE4FF008CE4FF0089E4FF0090
      E5FF007DE5FF220800FF49A7C7FF25B5E9FF0074E5FF0092E4FF14AFECFF42CB
      F6FF6A9FCDFF000021FF170E08E588140F460000000000000000000000000000
      0000E4E3E3FFB8B1B0FFC1B2B0FFC8B6B2FFCDBDB9FFD2C2BFFFD4C6C3FFD8C9
      C7FFDACDCAFFDDD0CEFFDBD3DEFF9D9DFBFFA3A2F8FFE7DFDFFFE2D7D5FFE2D8
      D6FFE4DAD8FFE6DEDCFFE8E1DFFFE5DDDBFFD5C7C4FFBBAFACFFBAB5B3FFF4F4
      F4FF0000000000000000000000000000000000000000FBFBFBFFC8B3B0FFB69D
      98FFBEA6A1FFC5AEABFFCBB6B3FFD1BEBBFFD8C6C4FFDECECDFFE3D5D4FFE6DA
      D9FFE8DDDCFFE9DEDDFF58829EFF236389FF135C86FF135E89FF28709BFF97C9
      F3FF9BD1FFFF94CEFFFF97CEFDFF85BBE3FF1B6590FF165D88FF1F729BFFE9E9
      E9FF00000000000000000000000000000000B9121400C48A8400C0665C00C062
      5400BF5E4C00C0625400AC2E1400B4341C00B43A1C00BC3D2400C3422400C446
      2400CC4E2C00CC4E2C00D4563400D4461C00DC7A5400FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCF2F400FCFEFC00FCFEFC00E4824400E47C4400E4824C00E586
      4C00E48A4C00E5864C00E4824400BA161400A6363D555C82AFFFB4D1F3FFBCF2
      F9FFA5E6F4FFA6E8F5FF9CE3F2FF80D3EDFF7FD4ECFF7ED1ECFF7FCFEDFF85D8
      F4FF66A7BAFF000050FF000093FF0088DFFF0099E6FF0098E6FF009BE6FF0281
      DDFF02D5FFFF003A9AFF00007BFF006BDBFF0071E5FF009BE8FF0BAAEAFF2CBB
      EFFF69E5FFFFDBFFFFFF0C0832F29D1311280000000000000000000000000000
      00000000000000000000FEFEFEFFE9E8E8FFC5C2C1FFB8B0AEFFC7B8B5FFD4C4
      C2FFE0D6D3FFF9F7F6FFFEFEFEFFD9D6F5FFE3E1F6FFFFFFFFFFF7F4F4FFECE5
      E4FFE1D7D5FFD0C2BFFFB4ABA9FFBFBBBAFFEDECECFF00000000000000000000
      0000000000000000000000000000000000000000000000000000C0B1AEFFB49B
      95FFB9A09CFFC0A8A4FFC6AFACFFCBB6B3FFD2BFBCFFD8C7C5FFDDCECCFFE1D3
      D1FFE3D6D5FFB4B7BFFF728BA1FF456F8FFF135D88FF12628DFF8EC0E5FF9FD3
      FFFF96CFFFFF96D0FFFF97D0FFFF99D2FFFF56A0C9FF126F9DFF11719FFFC7CC
      CFFF00000000000000000000000000000000B70E0C00CF9A9400C16E6400C066
      5C00C0625400C1665400B4453400AC2E1400B4341C00C43E1C00C3422400C342
      2400C4462400CC4E2C00CC3E1400DC7E5C00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00ECAA8C00E4926C00DC662C00E4743400E47C4400E47C4400E47C
      4400E4824C00E4824400E4824C00B40804009F3D3F6E6B92C0FFA2C4EEFFBAF2
      F8FF9CE6F4FF9CE4F5FF9AE5F5FF9AE6F3FF6ACBE9FF6ECEEBFF6DCFEEFF5CB1
      D2FF002799FF0F3AB6FF00BFF7FF00ADECFF00A4E7FF00A6E7FF00AAE9FF00A3
      E7FF077FD8FF06C8FAFF00CAFFFF008EE6FF0064DCFF0094E6FF01A2EAFF28C0
      F5FFA3B7D3FF7F8EAEE494563C5A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFD6D5
      D5FFB5BDC3FFC8DDEAFFC7DCEAFFC3D6E2FFC8DBE7FFD4E5F0FFCADFEBFFADAC
      ACFFD5D4D4FFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7AFADFFB59D
      98FFB49B96FFBBA29DFFC0A9A5FFC5AFABFFCCB7B4FFD2C0BDFFD7C7C4FFDBCC
      CAFFDED0CEFFE0D4D2FFE2D6D4FFBBBEC5FF23668EFF136692FFA9D6FAFF97D1
      FFFF98D2FFFF9FD5FFFFACDBFFFFA8D9FFFF6FB4DEFF0F76A5FF0F7BADFFCBD0
      D2FF00000000000000000000000000000000B70E0C00D4A6A400C2726400C16E
      6400BF6A5C00BC6A5400C0625400AC260C00B4341C00B43A1C00BC3D2400C342
      2400C4462400C4320C00DC866C00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00E4865C00D4561C00DC6A3400DD723C00E0764400E0764400E47C4400E47C
      4400E47C4400E47C4400E47C4400B40804009D403F766D99CCFF8DB4E8FFBAF4
      F9FF90E3F3FF91E4F2FF8FE1F2FF5ACBE9FF5CC9EAFF5AC5E8FF5BCBEAFF3595
      C5FFFFF1F6FFA5E9FAFF6DE1F8FF66D0F1FF63CDEDFF03B3E9FF07B1E9FF04B0
      EAFF00AAE9FF0082DCFF0076DAFF0070DEFF007CE1FF0092E6FF009FEAFF249B
      E6FF0D0704F078412479DB77410A000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F8FF99B2C2FF8CC9F1FF79B7E5FF7CB8E6FF7AB8E4FF89C7EFFFA1DBFEFFBBBF
      C2FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8FFC6B2
      AEFFB09791FFB59C96FFBAA19DFFBFA7A3FFC5AFACFFCCB8B5FFD1BFBDFFD6C5
      C3FFD9CAC8FFDCCECCFFDED2D0FFE0D4D3FF4986A7FF277CA9FFB0DDFFFF99D3
      FFFF9FD6FFFFADDCFFFFBBE2FFFFC9E8FFFFA1D1EFFF0F79AAFF0D82B5FFE8E9
      EAFF00000000000000000000000000000000B70E0C00D7B6B400BC766C00BC76
      6C00C16E6400BF6E5C00C2726400B02A0C00AC2E1400B4341C00BD3A1C00C43E
      1C00BC2A0400DC8E7C00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00E076
      4C00D4522400DC663C00DC6C3C00DC6C3C00DD723C00DC724400E4763C00E076
      4400E0764400E0764400E47C4400B40804009C403B767AA3D3FF7BAAE4FFC2F6
      F9FF85E1F2FF89E2F3FF6AD4ECFF4FC7E8FF49C7E7FF4AC4E8FF47BFE7FF47C7
      ECFF3F96C1FF186FB4FF1E75B6FF859FBEFF90AFE1FF30CAEEFF15BEECFF0EB6
      E9FF01A9E9FF009FE6FF008CE4FF007CE1FF008BE5FF008EE6FF0094E8FF07C4
      FFFF000B59FF2B170DCEC46A3A24000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFCFFD0D0
      D0FF76A1BFFF8FC7F6FF9CD1FFFF9AD0FFFF9ED2FFFF9BCEF7FF84C0EAFF9FA6
      ABFFF6F6F6FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FFC6C1C0FFB8ACA9FFBFA9A5FFB9A09BFFBFA8A3FFC9B5B1FFE6DDDBFFD2C2
      BFFFE4D9D7FFE2D7D5FFDED2D0FFE3DAD8FF6B99B2FF3D96C2FFACDCFFFF9DD5
      FEFFACDCFFFFBAE2FFFFC8E8FFFFD5EEFFFFBEDFF3FF0E7CAEFF2289B5FFFEFE
      FEFF00000000000000000000000000000000B70E0C00E0C7C400C27E7400C87A
      6C00BC766C00C2726400C4766400AC362400A4160400A4160400AC160400AC0E
      0400DC9A8C00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00DC663C00CC44
      2400D8623400D8623400DC663C00DC663C00DC6A3400DC6C3C00DC6C3C00DD72
      3C00DD723C00DC724400DD723C00B40804009D413C766A96CFFF76ABE4FFD0FA
      FCFF79DEF1FF7DDFF0FF84E4F2FF49CAE8FF38C0E5FF38C1E6FF37BEE5FF35BA
      E4FF3FC8EAFF4AD2F1FF3EA2C2FF008EDFFF49A5E0FF34DAF3FF20C7EDFF0CB9
      EBFF04B2EAFF009EE7FF008EE3FF0082E2FF0084E4FF008FEAFF7EBFEDFF84E7
      FEFF39B8FFFF482516ACD9703B05000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADAFF7498
      AFFFA2D2FCFFA4D4FFFF98CFFFFF94CEFFFF94CEFFFF96CFFFFFA4D5FFFF86B1
      D0FFC5C7C8FFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDCDCFFBDB8B7FFD3D7D9FFE0EAF1FFD5DB
      DFFFE2EBF1FFE4EDF3FFC8C2C0FFC2BEBDFF879EA9FF1C84B4FF53A4D2FF4D9F
      CEFF84C1E5FFC7E8FFFFD4EEFFFFE1F3FFFFA7D2E7FF0D80B2FF5694AFFF0000
      000000000000000000000000000000000000B7120C00E8D2CC00B4827C00C47E
      7C00C87A6C00BC766C00C2726400AC3A2400CF9A9400FCFEFC00FCFEFC00E8D2
      CC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00CC523400D4461C00D456
      2C00D45C3400D45C3400D8623400DC663C00DC663C00DC663C00DC6C3C00DC6C
      3C00DC6C3C00DC6C3C00DC6C3C00B40A0C009F444176477FC2FF63A4E2FFECFF
      FEFF6FDDEFFF76DEF1FF6FDBEFFF20BDE2FF26BDE2FF1EB6E0FF4DCEEAFF29BC
      E3FF34C1E7FF42CFEEFF006EAEFF0078DAFF6FF2F8FF5EFAFEFF46A4E0FF91D0
      EAFF05B0E9FF009DE6FF009AE7FF0791E5FF0088ECFF002F80FF79818CFF3C65
      ABFF2C4975E2D166390D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFF9DA8B1FFB0DA
      FFFFA8D7FFFF97CFFFFF95CEFFFF95CFFFFF96CFFFFF96D0FFFF97D0FFFFA1D5
      FFFF9CA9B4FFFAFAFAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FF91B9D4FF84C0EDFF84BE
      EBFF87C2ECFF99D4F8FFD7D9DBFF00000000B9C2C6FF1075A3FF0F76A5FF0F79
      AAFF2186B5FFC6E7FBFFE0F3FFFFECF7FEFF4CA4CCFF0D84B6FFA1B4BDFF0000
      000000000000000000000000000000000000BA161400ECDADC00C48E8400B482
      7C00C4857C00C97A7400BF6A5C00E9D6D400FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00C3422400C43E1C00CC4E2C00D352
      2C00D4563400D4562C00D45C3400D45C3400D8623400D8623400DC663C00D862
      3400DC663C00DC663C00DC6A3400B9121400A64142661C5CA9FF89BCECFFCEE6
      F5FF75E2F1FF6CDDF0FF59D4ECFF48CFEBFF4DD1EBFF3ECAE8FF51D0EAFF1EBE
      E5FF28C3E7FF2BBFE3FF93B2C9FF74AEE7FFBDFFFFFF145AA2FF97B6C8FF94BC
      E5FF29C8EFFF00A8EFFF7FA1D9FF8ABEE4FF03AAF5FF003494FF788A92FF000E
      4AFF6E331E7FDB663C0100000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F8FF9BB0C1FFADD9
      FFFF96D0FFFF96D0FFFF98D1FFFF9CD3FFFF9ED4FFFF9AD2FFFF98D2FFFF9AD3
      FFFF9AB4C9FFF2F2F2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFA1A9AFFF91C5F0FF9FD2FFFF96CE
      FFFF9CD1FFFF98CCF5FF99A5ACFFFDFDFDFFE9EAEBFF0F78A7FF0F79AAFF0F7B
      ACFF0E7DAFFF5AACD3FFE6F5FEFF77BEDFFF0D86B9FF188DBCFFF1F1F2FF0000
      000000000000000000000000000000000000BB1E1C00EEDFDC00CF9A9400C48E
      8400C4868400B4827C00BF6E5C00FCFEFC00BF5E4C00B4453400D6AEA400FCFE
      FC00FCFEFC00FCFEFC00FCF2F400BC2E0C00BD3A1C00CC442400CC4E2C00CC4A
      2C00D3522C00CC523400D4562C00D45C3400D45C3400D45C3400D45C3400D862
      3400D8623400D8623400D45C3400BC1A1C00B1343635002680FFC3EFFFFF7B9F
      DFFF9BF1F7FF5ED9EDFF61DAEFFF61D8EFFF5BD7EEFF56D7EDFF56D4EDFF2AC4
      E5FF5AD6ECFF2CC9E8FF37C5E6FF7096BEFF266BAAFFA3F0F5FF81B3CCFF94CD
      EAFF40DEFBFF0063BAFF57697CFFF1EDFEFF86D9F6FF004DAFFF8095A1FF000D
      57FF662E1887D661340400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDEDFF9BB5CBFFA4D6
      FFFF99D2FFFF9ED4FFFFA3D6FFFFA7D9FFFFACDBFFFFB0DCFFFFA9DAFFFF9AD4
      FFFFA3D0F1FFE2E2E2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DADBDCFFA4CDF0FFA4D5FFFF96CFFFFF95CF
      FFFF96CFFFFF97D0FFFFA4D0F5FFE8E8E8FF000000004F93B0FF0E7DAEFF0D7F
      B1FF0D81B3FF0D84B6FF2798C9FF0C87BBFF0C89BCFF7AA4B5FF000000000000
      000000000000000000000000000000000000AC2C2C00E9D6D400CCA69C00C492
      8C00C48E8400C4857C00C87A6C00D6AFAC00A4321C009C0E0400A41604009002
      0400FCFEFC00FCFEFC00DC866C00B4220400C83E2400C4462400CC452C00D44E
      2400CC4A2C00CC4E2C00D3522C00CC523400D4562C00D45C3400D4563400D45C
      3400D45C3400D45C3400D3522C00AC2C2C0000000000000041FFFBFFFFFF276B
      CBFFF7FFFFFF58DAEDFF54D8EEFF55D8EEFF52D6ECFF4AD2ECFF59D9EFFF78DF
      F1FF81E1F1FF31C9E9FF42D0EBFF99EDF8FF9EEFFBFF9CEDFBFF8BA7C2FFA6D5
      F1FFA5FFFFFF0D336BFFAEFFFFFF7BA4C2FF5C8DC6FF4889B2FFAEF4FFFF0002
      4EFF652C1986D25B340200000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFB7B9BAFF96BEDBFFA8D9
      FFFFA5D8FFFFA9DAFFFFAEDCFFFFB2DEFFFFB6DFFFFFBBE2FFFFBEE3FFFFBAE2
      FFFF8DC4EAFF93999DFFEEEEEEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDC2C6FFACD9FFFF97D0FFFF99D2FFFF9FD5
      FFFFA2D6FFFF9BD3FFFF9FD5FFFFC2C5C8FF00000000D9DDDFFF1A87B6FF0D82
      B5FF0D85B7FF0C86BAFF0C89BCFF0C8ABEFF3F9CC3FFF3F3F4FF000000000000
      000000000000000000000000000000000000B43A3400E9D6D400D6AFAC00CC9E
      9400CD969400C48A8400C48A8400C4857C00BC766C009C1A0400A42214009C0E
      0400EEDFDC00FCFEFC00E8CDCC00AF1E0400C43E1C00BC3D2400C3422400CC44
      2400CC4A2C00D44E2400CC4A2C00D44E2C00D3522C00D3522C00D4562C00D456
      2C00D4563400D4563400CC452C00B43A3400000000001B1925E19DC2FEFF599D
      DCFF6A8BD7FFFEFFFFFF76E5F2FF3ED2EAFF41D1EAFF3CD0EAFF68DCF0FF73E0
      F0FF7BE1F2FF7CE0F1FF66DAEFFF93E6F4FF96E6F5FFA2EEF7FFA0FDFEFF266C
      B2FF00008EFFD2F1EFFFAEF0FAFF94E8F8FF9AEDF9FF99EEFBFF8CDCFBFF0000
      48FF6A2B1A80D356340300000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FF577485FF91BAD6FFAEDC
      FFFFB0DDFFFFB4DFFFFFB8E1FFFFBCE3FFFFC0E4FFFFC4E6FFFFC7E8FFFFCBE9
      FFFF9BCFF2FF1A6088FF989FA3FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFF94A2ADFFABDAFFFFA2D6FFFFA9D9FFFFAFDC
      FFFFB5DFFFFFB9E1FFFFA8DAFFFF91A0ABFFF8F8F8FF00000000DADEE0FF5F9F
      B9FF2695C2FF1A91C1FF3A9AC1FF8DB2C1FFF8F8F8FF00000000000000000000
      000000000000000000000000000000000000AC4A4C00E0C7C400DCBCB400CCA6
      9C00CC9E9400CD969400C48A8400C48A8400CC928C00AC3C2C009C1A04009C0E
      0400D4928400FCFEFC00ECC6BC00AF1E0400BD3A1C00BC3D2400C43E1C00C342
      2400C3422400CC442400CC4A2C00D44E2400CC4A2C00D44E2C00D3522C00D44E
      2C00D3522C00D3522C00CC442400AC4A4C00000000007A6C7F741436A9FFFFFF
      FFFF79B1E4FF163CBCFFD2E6F4FFE0FFFFFF8AEEF5FF5DE0EFFF75E4F1FF74E4
      F2FF7EE5F4FF8CE9F4FF9CF1F7FFAAF7FAFFAAF8FAFF6DB4E4FF0337BCFF0067
      CDFF009EDDFF3A58C8FFF9FFFFFFA6E9F7FF88E0F2FF8BE4F3FF86D0F7FF0000
      3EFF6E2B177AD2522C0100000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D5FF1C6289FF71A5C4FFB6E0
      FFFFBAE2FFFFBEE4FFFFC2E5FFFFC5E7FFFFC9E8FFFFCCE9FFFFC8E5FAFF98BE
      D7FF649CBFFF12628DFF2C6C8DFFDDDDDDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E4E4FF5183A3FFB5DFFFFFB2DEFFFFB7E0FFFFBDE3
      FFFFC2E5FFFFC7E7FFFFC4E6FFFF4182ABFF96A0A6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC5D5C00E7BABC00E0C7C400D6AE
      A400CCA6A400CF9A9400C4968C00C48E8C00C48E8400CC928400A01C0C009002
      0400E8D2CC00FCFEFC00B9564400AC260C00BF361C00BF361C00BC3D2400C83A
      2400C83E2400C3422400CC442400CC442400CC452C00CC452C00CC4A2C00CC4A
      2C00D44E2C00D44E2C00CC361C00AC5D5C0000000000000000001B1825E00000
      76FF698EE6FFD1F8FFFF6486DCFF2848C1FF5C6FCCFFACBCE7FFB3CCEDFFB1D1
      EEFFA8CAECFF92B5E4FF5A79D1FF2C53C4FF1E46C4FF6197DDFF2ECCECFF00AD
      DFFF00ACE0FF007DD1FF293FBDFFE8FFFFFFCCFCFDFF93EBF7FF52AEEBFF0000
      35FF7C2E1A6A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFF9AA4A9FF126692FF3784ACFFC0E5
      FFFFC3E6FFFFC7E8FFFFCAE9FFFFCDEAFEFFC9E6FAFF7EA8C4FF236188FF165B
      84FF25678FFF35759AFF257199FFB5BBBEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A5ABFF236F99FFBCE2FDFFBFE4FFFFC4E7FFFFC9E9
      FFFFCAE7FCFF8CB4CFFF5085A8FF276C94FF2A6B8FFFF8F8F8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6787400DCA2A400E8D2CC00D7B6
      B400D4AAA400CCA69C00CD9F9C00C4968C00CC8E8C00CC928400C48A8400F4E6
      E400FCFEFC00B95644009C060400AF1E0400AC260C00B02A0C00BC2E0C00BC2E
      1400BF321C00BF361C00C83E2400C83E2400CC442400CC442400CC442400CC44
      2400CC452C00CC442400C02D1C00B67874000000000000000000000000009981
      914A332934C2000047FF031779FF5D77D2FF5C83E5FF3D5ED5FF3B5FD5FF546E
      D8FF4568D7FF436DD9FF5881E1FF6990EAFF2B47A5FF2B3CAAFF9CF4FCFF00A0
      DCFF00A5DCFF00A8DFFF0092D6FF0017B0FF6778D0FFD1F5FBFF7AABF4FF0602
      20F8923220480000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFF6F8996FF116D9AFF11719FFFB0D9
      F2FFCCEAFFFFCFEBFFFFD1ECFEFFB7D8EDFF447B9EFF155982FF155E88FF1D66
      90FF31769CFF4585A9FF307EA6FFC4C9CBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000638799FF116E9BFF9DCCE8FFCBEAFFFFCFEBFEFFB3D4
      EAFF3D7599FF155C85FF1F6790FF3B7DA2FF357EA5FFFAFAFAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4929400D08A8400EEDFDC00DCBC
      B400D7B6B400D6AEA400CCA6A400CC9E9400CD969400C48E8400D08A8400C87A
      6C00BC766C00C16E6400C2726400C2726400CC6E5C00CC665C00CC625400CC5C
      4C00CC5C4C00CC533C00CC523400CC4A3400CC452C00C83E2400C83E2400CC44
      2400C83E2400CC442400C0221400B49294000000000000000000000000000000
      000000000000D1AAA1068D737E4F6A52597B2C2040C80E0A35ED00002EFF0000
      30FF00002EFF00002EFF1E1238D7472A24A264363082000049FFCDFFFFFF009F
      DBFF00A2DCFF00A1DBFF009EDBFF00A9DEFF0073CDFF0034BDFF000098FF260D
      07CFB93921130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFF60899DFF1074A3FF0F78A8FF7EBC
      DBFFD3EDFFFFD2ECFDFFA1C6DEFF2B6A90FF155D87FF14618CFF166691FF2974
      9DFF3E83A9FF5092B5FF2E83ACFFE7E7E8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055879EFF0F77A7FF6AB0D2FFD3EDFDFF9BC1DAFF2466
      8EFF14608BFF176893FF307AA2FF4B8FB2FF4B8EAEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4AEAC00D4727400F4E6E400DCC2
      BC00DCBEBC00D4B6AC00D6AFAC00CD9F9C00CD9F9C00CC968C00C48E8400D08A
      8400CC8A7C00D0827400C47E6C00C4766C00C2726400CC665C00BC6A5400CC62
      5400CC5A4400CA544400CC533C00C94D3C00CC4A3400CC452C00BC3D2400C83A
      2400C83E2400C83E2400BC160C00C4B2B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000031FFB3CBFCFF1DBC
      E4FF009FDBFF009EDCFF009DDBFF0098DAFF009BD9FF0087DFFF000045FF671E
      127C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFEFF7695A3FF0E7AABFF0E7EAFFF55A8
      CFFFC8E4F6FF7EACC8FF1D628BFF15608BFF14648FFF136894FF20739DFF3582
      AAFF4990B5FF5C9DBFFF4488A8FFF8F8F8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083A4B3FF0D80B2FF3597C4FF669ABAFF19628CFF1465
      90FF136B96FF2478A3FF418CB3FF5A9FC1FF7BA1B2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4CACC00C4554C00F7EEEC00D4CA
      CC00DCC2BC00DCC2BC00D4B6AC00D6AFAC00CCA69C00CD9F9C00CD969400C48E
      8400C4868400C4857C00CC7E7400C87A6C00C4766C00C16E6400CC6E5C00C166
      5400CC625400BF5A4C00CA544400C94D3C00CC4A3400CC463400CC3D2C00C83E
      2400BF361C00CC361C00B7120C00D9D2D4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000056313E8E2738B1FFD4FF
      FFFF00A0DBFF0099D8FF009BDBFF009AD8FF0099D9FF0073DAFF000037FF7A26
      1663000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9CED1FF1081B3FF0C85B7FF1E8B
      BCFF3C7CA2FF155F89FF14638EFF136793FF126B97FF18729FFF2D80AAFF418E
      B5FF549CBFFF549FC4FF88A4B0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F2F3FF428AABFF12709DFF14638EFF136995FF126F
      9CFF1978A5FF358BB4FF509DC2FF4A9FC6FFE2E5E6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB1E1C00F7EEEC00E9D6
      D400E8CDCC00DCC2BC00DCBEBC00D4B6AC00D6AFAC00CD9F9C00CD9F9C00CC96
      8C00CC8E8C00C4857C00C4857C00CC7E7400C87A6C00C4766C00C16E6400CC66
      5C00C1665400CC5C4C00CC5C4C00CA544400C94D3C00CC463400CC3D2C00C436
      2C00BF361C00C02D1C00B7120C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD726C09000018FF526D
      DDFFDCFFFFFF46C8EBFF0096D9FF008ED5FF0096D8FF0061D8FF080219F58725
      1E4F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFA3B6BEFF0F79A9FF126C
      99FF14628DFF136692FF126B96FF126F9BFF1373A1FF247FABFF398DB6FF4D9A
      C0FF5FA7C9FF3E93B8FFEFEFEFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0BBC1FF136793FF126E9AFF1173A1FF1379
      A8FF2A89B5FF469BC3FF49A3CAFFB6C3C8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B46E6C00CC5A5C00F7EE
      EC00F4E6E400ECDADC00E8CDCC00DCC2BC00DCBCB400D6AFAC00CCA69C00CD9F
      9C00CD969400CC8E8C00C4868400C47E7C00C97A7400C4766C00C8726C00CC6E
      5C00CC665C00CC625400BF5E4C00CA544400CA544400C94D3C00CC463400CC3D
      2C00C4342400B70E0C00B07A7C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AC6269241109
      13EA060B8AFF7694E9FFC7FFFFFF8DEEFDFF47D1EFFF0C62D9FF0E0504ED982D
      2141000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FF2D6C8EFF1365
      91FF126A95FF126E9AFF12729FFF1176A4FF1B7EACFF318CB7FF4599C1FF57A5
      CAFF3D9CC5FFC5CED1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CB1BCFF2582AEFF107CADFF1785
      B6FF3699C4FF74A3B6FFDEE2E4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B46E6C00BC1B
      1400CC565400C8726C00DC8E8C00E4A6A400E7BABC00E0C7C400ECD2D400ECD2
      D400E8D2CC00E8CDCC00E0C7C400DCBCB400D6AFAC00DCA2A400CC968C00D08A
      8400C4767400CC665C00C4554C00C4423C00C4362C00BC2A2400BC221C00BC16
      0C00B70E0C00B678740000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000734556690E0712EE000047FF121895FF4560C9FF2538BCFF260706CCAB14
      0B17000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3BCC1FF1770
      9AFF12719EFF1175A3FF1178A8FF147EAEFF288BB8FF3D98C2FF429EC8FF479B
      BEFFD0D6D9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFE4E7E8FFE5E8
      E9FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCC2C400BCA2A400B4828400AC6A6C00AC535400AC3E3C00AC2C2C00BC22
      1C00BA161400B40A0C00B4080400B40A0C00B4080400B40A0C00B70E0C00BC1B
      1400B4242400AC323400AC424400AC535400AC727400C48A8400C4AAAC00D4CA
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A1424A1B824C5865674F55A167545AB7B49D9F1F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCD2
      D4FF548DA7FF187FAEFF0E7FB0FF1586B7FF2B93C0FF5C9CB6FFACBDC4FFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8D6
      D005BAB4AB0DA7A28A12A19071169A86521B987D431E96783421947426239A73
      18259F7311259A6F0A269A6F0A26986B0327996B03269B700A24A3740A22A375
      11209E77201D9B7A28199E823E16A1854710A590600A00000000B7AD9808CDC7
      BF1300000000000000000000000000000000000000000000000000000000D4D4
      DC00B4B2C4009C96B400847AB4007462AC005C4EAC00543AAC00442CAC003C1E
      B4003812BC00310EBC002C06B4002C06B4002C06B400340ABC00300EB4003416
      BC003C22B4004C32AC00543EAC006452AC007462AC008C82B4009C96B400C4C2
      CC0000000000000000000000000000000000000000000000000000000000DCDA
      DC00B0B6C400949EB400798AB4005C76AC004C66AC003C5EAC002C52AC001C4A
      B4001346BC000C3EB400063AB400063AB400063AB4000C3EB4001042BC001346
      BC00244AB4003456AC003C5EB400546AAC006C7EAC007C8EB400949EB400BCBE
      CC0000000000000000000000000000000000000000000000000000000000D8D4
      DC00C0B2C400AC93B400A47BB4009C62AC00944BAC00943DAC008C2AAC00941E
      BC009413BC008C0AB4008C06B4008C06B4008C06B4008C0AB400940DBC009413
      BC009422B4009432AC00A43EB4009852AC009C62AC00AC82B400B49ABC00C4BA
      CC00000000000000000000000000000000000000000000000000AA8C43049D71
      03218B6309427D5D0D56725A0C617358106A6E5910706D5813756C5913796E5A
      177B6B5A167E6B5D1A7F6E601E8070621F7D71661F7C7669237A796C24777D6F
      25738275276E877829679180265D99892F4EB39C31309F8B2B410008BDFF0000
      BBFF8D6D486E00000000000000000000000000000000000000005742AC002C06
      B400310EBC00310EBC004816BC00471AC4004C1CCC005322CC005C26CC00642E
      D4006C32D4007036D400763ADC00763ADC00873EE4008442DC008442E4008946
      E4008946E4008442DC008442E400843EDC00763ADC007036D400642ED4005322
      CC00310EBC005C4EAC00000000000000000000000000000000004262AC00063A
      B4000C42B4001042BC00144ABC00144EC4002152C4002356CC00265ACC002D62
      D4002D62D400346AD4003C6ADC003C72DC003C72DC004376E400447AE4004376
      E400447AE4004376DC004376E4003C72DC003C6EDC003466D4002D62D4002356
      CC001042BC00476AB400000000000000000000000000000000009444AC008C06
      B400940DBC00940DBC00A116BC00A61AC400A71EC400AC22CC00AD26CC00B72E
      D400BC32D400BD36D400C43ADC00C43ADC00CC42DC00CD42E400CD42E400D146
      E400D146E400CC42DC00CD42E400CC42DC00C43ADC00BD36D400B72ED400AC22
      CC00940DBC00944BAC0000000000000000000000000000000000B4810C02A381
      1217987917319174153F8C711449896F1951876E1856836D1C5B836B1B627161
      1C77564A1597483F12A9483F12A95A4E18977166237C87792A6394852C5A978B
      32569E933450A89C3C4AACA03D45BFB244319A933D590513D0FF0630FFFF0C43
      FDFF0031DDFF927B5A730000000000000000000000005742AC002D0AB4004415
      B4004C1ABC004C1EC4005422C4005422C4005C26CC00642AD400642BCC006C32
      D4006C32D4007436DC007036D4007C3EDC007C3EDC008442DC008946E4008F4A
      E4008F4AE4009C52EC009C52EC00A156EC00A95AF400A45AEC00AC5EF400B462
      F400B462F400642AD4005742AC0000000000000000004262AC00063AB4001C4A
      B400144ABC002152C4002152C4002356CC00265ACC00265ACC002D62D4002D62
      D4003466D4003C6ADC003C6EDC003C6EDC003C72DC004376E4004376DC004C7E
      E4004C7EE4004E82EC004F82E400568AEC005C8EF4005C8EEC005C92F4006496
      F4006496F400265ACC00476AB4000000000000000000943DAC00910AAC009C15
      B400961ABC00A41EBC00A822C400AC22CC00AD26CC00B52AD400AE2ECC00BC32
      D400BC32D400C636DC00C43ADC00C43ADC00C93EDC00CC42DC00D146E400D44A
      E400D44AE400DC52EC00DC52EC00E256EC00E256EC00E95CF400E95CF400EC62
      F400EC62F400BC26D4009444AC00000000000000000000000000000000000000
      0000B5901C03B8921B06BE982309C19C230AC29E220CC1A12A0DB79C281A967E
      1F4B65571985413810B22E280CCA362F0FC08D7F275BA8963242635A1E903D37
      12BB403C15B8857C2C6BE6D65207B0A845410511D1FF062FFFFF0B3FF3FF1253
      F6FF106CFCFF0051DEFF7D653F6C00000000D4D2D4002C06B4003412B4004415
      B4004C1ABC004F1EBC00541EC4005322CC005C26CC005B2ACC00642AD4006C32
      D4006C32D4007036D400763ADC007C3EDC007C3EDC008442E4008946E4008946
      E400944EE400944EEC00944EE400A156EC00A45AEC00A95AF400AC5EF400B462
      F400B462F400B462F4003C16C400D4D4DC00D4D6DC00063AB4001346B400144A
      B4001C4ABC001D4EBC002152C4002356C400265ACC002B5ED4002D62D4002D62
      D4003466D400346AD4003C6EDC003C6EDC003C72DC004376E4004C7AE4004C7E
      E4004C7EE4004E82EC005386EC00568AEC00568AEC005C8EF4005C92F4005C92
      F4006496F4006496F400043EC400DCDADC00D4D2D4008C06B4009412AC009C15
      B4009C1AB400A41EBC00A71EC400A822C400AD26CC00B32ACC00B52AD400B72E
      D400BC32D400BD36D400C43ADC00C93EDC00C93EDC00CD42E400D146E400D44A
      E400D44AE400DC4EEC00D84EE400E256EC00E45AEC00E95CF400E95CF400EC62
      F400F466F400EC62F400A012BC00D8D4DC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2B0
      2B035668169703553BFC005156FF00230CFF62591B8DB19F3732047042FB1661
      5DFF011E0FFF3E3D15BAB9AC483C0211D1FF062FFFFF0B3FF4FF1153F4FF0E65
      F6FF62AEFBFFFFFFFFFF1C1B8DFE00000000ACAAC400370AAC004312AC004415
      B4003C1AB4004F1EBC00541EC4005422C4005C26CC005B2ACC00642BCC00642E
      D4006C32D4007036D4007436DC00763ADC00843EDC008442DC008946E4008F4A
      E4008F4AE400944EE4009C52EC009C52EC00A45AEC00A95AF400AC5EF400AC5E
      F400B462F400B462F400642BCC00ACAAC400ACB2C400083AAC001342AC001346
      B4001C4ABC001D4EBC002152C4002356C400265ACC002C5ECC002C5ECC002D62
      D4003466D400346ADC00346AD4003C6EDC003C72DC004376DC004376E4004C7A
      E4004C7EE4004F82E4004E82EC005386EC00568AEC005C8EF4005C8EF4006496
      F4005C92F4006496F4002C5ECC00ACB2C400BCACC400910AAC009412AC009916
      AC009C15B400A41EBC00A41EBC00A822C400AD26CC00B32ACC00B32ACC00BC32
      D400BC32D400C636DC00BD36D400C43ADC00C93EDC00CD42E400CC42DC00D44A
      E400D44AE400DC4EEC00DC52EC00DC52EC00E256EC00E95CF400E95CF400E95C
      F400F466F400EC62F400B52AD400BCACC4000000000000000000000000000000
      00000000000000000000000000000000000000000000C7A72D08C8AB2D070000
      000068FFE3FF5EFCF8FF23F2FFFF0095BCFF141205E81D9F59DD00FFFFFF58FF
      FFFF0EFFFFFF171608E50310D7FF0630FFFF0B3EF3FF1052F4FF1167F6FF67B2
      FBFFE7FCFFFFFAF9FEFF6B5F619100000000948DB400370AAC004312AC004415
      B4004C1AB4004C1ABC004F1EBC005422C4005C26CC005B2ACC00642AD400642E
      D4006C32D4007036D400763ADC00763ADC007C3EDC008442DC008946E4008946
      E4008F4AE400944EEC009C52EC009C52EC00A156EC00A156EC00A95AF400AC5E
      F400B462F400AC5EF4006C32D400948DB4008C9AB400083AAC001342AC001346
      B4001C4AB4001D4EBC002152BC002152C400265ACC00265ACC002B5ED4003462
      CC003466D400346AD4003C6ADC003C6EDC003C72DC004376E4004376DC00447A
      E4004C7EE4004E82EC004E82EC005386EC00568AEC005C8EF4005C8EEC005C8E
      F4005C92F4005C92F4003466D4008C9AB400AC8DB4008F0AA4009414A4009916
      AC009C1AB400A41EBC00A41EBC00A822C400AC26C400B32ACC00B52AD400AE2E
      CC00BC32D400BD36D400C43ADC00C93EDC00C93EDC00CC42DC00D146E400CC42
      DC00D84EE400DC4EEC00D84EE400E256EC00E256EC00E45AEC00E95CF400E45A
      EC00E95CF400E95CF400BC32D400AC8DB4000000000000000000000000000000
      0000000000000000000000000000000000005E4E11881B1A05DD2E280AC58370
      1C5BE7FFF2FF6FEDE5FF16D5EEFF00C8F7FF00484DFF00A8ADFF15E1DDFF00FF
      FEFF05C9D5FF0300BEFF0630FFFF0B3EF3FF1052F6FF1069F6FF68B3FBFFE6FB
      FFFFFDFBFEFF575470A400000000000000007C72AC00370AAC004112A4004415
      B4003C1AB4004C1ABC004F1EBC005422C4005422C4005C26CC00642BCC00642E
      D4006C32D4006C32D4007436DC00763ADC007C3EDC00843EDC008442DC008946
      E4008F4AE4008F4AE400944EE4009C52EC009C52EC00A45AEC00A45AEC00A95A
      F400A95AF400A45AEC00763ADC008475B4007486B400083AAC001442A4001446
      AC001346B4001D4EBC001D4EBC002356C4002356C400265ACC002C5ECC002D62
      D4002D62D4003466D400346AD4003C6EDC003C6EDC003C6EDC002C62DC004376
      E400306AE400447AE4005C8EEC00447AEC005386EC00568AEC005C8EF400568A
      EC005C8EF4005C92F4003C6EDC007486AC00A072AC008F0AA400910EA4009916
      AC009916AC009C1AB400A41EBC00A822C400AC26C400AD26CC00B32ACC00B72E
      D400BC32D400BC32D400C636DC00BD36D400C93EDC00CC42DC00CD42E400D146
      E400D44AE400D44AE400DC4EEC00DC52EC00DC52EC00E256EC00E95CF400E95C
      F400E45AEC00E95CF400C43ADC00A475B4000000000000000000000000000000
      0000000000000000000000000000384F0AB6004197FF00B7DAFF002D4AFF0303
      01FB89FFEDFF2FEBDFFF12D2ECFF00A0DCFF00C9E8FF00AEB8FF00EEF3FF00C0
      D2FF0400B6FF062FFFFF0B3EF4FF1054F4FF1067F6FF69B5FBFFE4FCFFFFFDFB
      FEFF58546EA20000000000000000000000006C5AAC00370AAC004112A4004312
      AC004415B4004C1AB4004F1EBC005422BC005926C4005C26CC00642BCC00642A
      D4006C32D4006C32D400642AD400641ED4007C32E4007436DC008442E4008442
      E400873EE400873EE400944EEC00944EEC009C52EC009C52EC00A156EC00A156
      EC00A45AEC00A95AF400843EDC006C5EAC005872AC000C3EA4001342AC001342
      AC001C4AB400144AB4001D4EBC002152BC002356C400265ACC002C5ECC002D62
      D4002D62D4003466D400346ADC00346AD4003C6EDC00306AE400F8FAFC00FCFE
      FC00749EEC00E4EAFC00FCFEFC005386EC004E82EC005386EC00568AEC005C8E
      F400568AEC005C8EF4003C72DC005C76AC009C5DAC00910EA40094129C00910E
      A4009916AC009C1AB400A41EB400A222BC00A822C400AC26C400B32ACC00B72E
      D400BC32D400BC32D400BD36D400C43ADC00C43ADC00C93EDC00CD42E400CC42
      DC00D44AE400D44AE400D44AE400DC52EC00DC52EC00E256EC00E256EC00E256
      EC00E95CF400E45AEC00C93EDC009C5DAC000000000000000000000000000000
      00000000000000000000A99A2D38C0FFFFFF59F6E4FF66FEFFFF00CAF9FF009D
      CEFF001A3BFF008BB7FF0097D6FF008AD0FF0090D3FF00C1E6FF00B2CAFF0500
      BAFF052DFDFF0D40F4FF1053F4FF126AF6FF69B5FBFFE9FDFFFFF6F4FBFF5A53
      6CA0000000000000000000000000000000005C46AC005C35AC00542CB4004416
      AC004416AC004C1AB4004F1EBC004F1EBC005422C4005926C400642BCC00642B
      CC00642AD4005C1ACC007436DC00E4D4F400FCFEFC007432DC007425DC007425
      DC00AC7AEC00BC96EC008436E400944EEC00944EE4009C52EC00A156EC00A156
      EC00A156EC00A156EC008946E4005C46AC004C66AC003C5EB4002C52AC001342
      AC001446AC001C4AB4001D4EBC002152BC002356C400275AC400265ACC002C5E
      CC002D62D4003466D400346AD4003C6ADC00346ADC001C52D400FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC008CAEF400346EE400487EEC005386EC00568A
      EC00568AEC00568AEC004376E4004466AC009444AC009C36AC00A432A4009414
      A4009916AC009C1AAC00A41EB400A222BC00A822C400AC26C400B32ACC00B32A
      CC00B72ED400BC32D400BD36D400C43ADC00C43ADC00C93EDC00CC42DC00CD42
      E400D146E400D44AE400DC4EEC00D84EE400DC4EEC00DC52EC00E256EC00E256
      EC00E256EC00E256EC00D146E4009444AC000000000000000000000000000000
      00000000000000000000000000009BC478CEFFFEFFFF67EFE3FF00D6EBFF00BE
      E6FF00B9E9FF00A7DBFF00AADAFF00A4D8FF00A7DAFF0077B8FF0500BEFF052F
      FCFF0D3EF4FF1053F4FF136AF6FF6AB4FBFFE6FDFFFFF9F6FFFF716A7C9B0000
      0000000000000000000000000000000000004E36B400643EB4006C46B4005C3A
      B4004312AC004415B4004C1EB4004F1EBC005422C4005926C4005926C4004C16
      CC005C22D400D4CAF400FCFEFC00A782E400B89AEC00DCCEF400A782E400FCFE
      FC00FCFEFC00FCFEFC00CCAAF4008436E400944EEC00944EEC009C52EC009C52
      EC009C52EC00A156EC008946E4004C32AC00335AB400476AB400476AB400335A
      B4001342AC001C4AB4001D4EBC001D4EBC002152BC002356C400265ACC002C5E
      CC002D62D4002D62D4003466D4002C66D4003066DC005C8EEC00FCFEFC004F82
      E400205ADC00215EDC008CAAEC00FCFEFC00FCFEFC006C96EC005386EC004F82
      E400568AEC005386EC00447AE4003456AC009436B400A442AC00A442AC00A436
      AC00940EAC009916AC009C1AB400A41EB400A116BC00A40DBC00A40DBC00B41E
      CC00B72ED400BC32D400BC32D400C636DC00C43ADC00C43ADC00C93EDC00CC42
      DC00CF3AE400CC33E400CC33E400D43EE400DC4EEC00D84EE400DC52EC00D84E
      E400E256EC00DC52EC00D146E4009436B4000000000000000000000000000000
      0000000000000000000000000000A0810A2AFFFFFFFF94E7DFFF6BFCF9FF00B8
      DDFF00B6DBFF00B8DEFF00B5DDFF00BCE0FF0087BCFF0402BDFF062FFDFF0B40
      F4FF1052F4FF1169F6FF6BB6FBFFE8FDFFFFFFF8FFFF171546E692872F61847A
      2B70A2973A50EADA530200000000000000004426B400644EB400724EBC006C46
      B4006C3EBC00440EAC004C1AB4004F1EBC005422BC005422C4005416C400C0AA
      EC00FCFEFC00A782E4003C02CC005C15CC00BC9EEC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC008436E4008F4AE400944EE400944EEC00944E
      EC00944EEC009C52EC008F4AE4004426B4002C4EAC005C7ABC004C6EB400446A
      BC004466B4000C3EAC001C4AB4001D4EBC002152BC002356C400275AC400265A
      CC003462CC002D62D4002C66D400245AD400DCE6F400FCFEFC00BCD2F400205A
      DC004376DC00447AE400205ADC00FCFEFC00E4EAFC005386EC004E82EC005386
      EC004E82EC005386EC00447AE400244EB4008C2AAC00AC54B400AC4CB400AC4C
      B400A43EAC00940EAC009C1AAC009C0AB400AC36C400ECD5F400F4DAF400BC56
      D400B016CC00B72ED400BC32D400BC32D400C632DC00C93EDC00C93EDC00CC33
      E400D84EE400F4DAF400F8E2FC00E476EC00CF3AE400DC4EEC00DC4EEC00DC4E
      EC00DC52EC00DC4EEC00D44AE4009026B4000000000000000000000000000000
      00009D873F2A483F1D9E322803B82E2401BB298658F93AC8D7FF00E5E6FF00BE
      DEFF00C5E1FF00C8E3FF00D7E9FF0097BEFF0500BCFF052FFDFF0D40F3FF1053
      F4FF1169F6FF70B9FBFFEBFFFFFFF8E4F1FF2F55B1FF5A6D52FF7E9D92FFA9CE
      C2FF091003F5BCAE3D3400000000000000003C1BBC00846ABC007556BC006C46
      BC007556BC005C32B4004312AC004C1AB4004F1EBC005422C4004C0EBC00CCB6
      EC00AC8AE400642AD400D4CAF400FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00AC7AEC00873EE4008F4AE400944EE400944E
      E400944EEC00944EE4008F4AE4003416BC001D4EBC00718AC4004C72B4004C6E
      BC004C6EBC00335AB4001342AC00244EB4002152BC002152C4001C4EC400114A
      C4001C52CC002356CC003466D4001F56D40084A2E400FCFEFC00B0C6EC00215E
      DC003C72DC004376E400215EDC00F8FAFC00487EEC00346EE4004C7EE4004C7E
      E4004E82EC004F82E4004C7EE400144ABC00961ABC00B46DBC00AC54B400AC4C
      B400AC4EBC00A436AC009C0EAC00910AAC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00AE36CC00B41ECC00B72ED400B52AD400B52AD400C632DC00C632DC00BC26
      DC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00D45EEC00D43EE400D84EE400D84E
      E400DC4EEC00D84EE400D44AE400961ABC000000000000000000000000000000
      000001965EFE00789DFF005D77FF006A88FF006082FF009EB1FF00D1E8FF00CB
      E2FF00DDEAFF00BDD4FF03529FFF0500C8FF052FFCFF0D40F3FF1053F6FF1169
      F6FF6DB7FBFFEBFFFFFFF8DCEEFF0059ADFF63FFFFFFCBFFFFFFE3FFFFFFF5FF
      FFFF689B84FFB4A63C3600000000000000003412B400947EC4007C5CBC007556
      BC00724EBC007752C4004C1AB4004C1AB4004816BC00440AB4003402B4009C7A
      DC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00D4B6F4007C32E4008946E4008F4AE4008F4A
      E4008F4AE4008F4AE4008F4AE4003812BC001346B400849ACC005476BC005476
      BC004C72BC004C6EBC001346B4001C4AB4001B4EB4002152BC001346BC00CCD6
      F400FCFEFC00043AC4000C4ACC00648AE4005482DC002B5ED400FCFEFC00205A
      DC00205ADC00215EDC004376E400FCFEFC00D8E2F4003C72E4004C7EE4004C7E
      E4004C7EE4004C7EE4004C7EE4001042BC009012B400BD82C400AE5AB400AC54
      B400AC4CB400AC4EBC008A02A400B14EC400FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00D482E400CC52DC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00DC9AEC00CC52
      DC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00E49EEC00CC33E400D44AE400D44A
      E400D44AE400D44AE400D44AE400940DBC000000000000000000000000009AA6
      5E5B1AFFFFFF5DF3E8FF00FFFFFF00E9FAFF00E9F7FF00D8EBFF00D1E4FF00E3
      EBFF027FB5FF0300BBFF0313EAFF052FF9FF0D3EF3FF1054F4FF0E67F6FF6DB8
      FBFFE9FDFFFFFFEBF5FF0055AAFF00FFFFFF29F9F9FFAAFCFBFFEBFFFFFFDCFF
      FFFF676F1F8C0000000000000000000000002D0AB400A492CC008062BC007C5C
      BC007556BC007556BC006436B4003C06B4004C1AB400AC96DC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00ECE2FC007425DC008946E4008946E4008946
      E4008F4AE4008946E4008946E4002D0AB4001346BC0094A6CC00607EBC005C7A
      BC005476BC00547AC4002C56B400083AAC002152BC000432AC00041EAC00DCE6
      F400FCFEFC00D4DEF4008CAAE400FCFEFC00FCFEFC007496E400FCFEFC00FCFE
      FC00A4BAEC00B0C6EC00FCFEFC00FCFEFC00FCFEFC00306AE4004C7AE400447A
      E4004C7AE4004C7AE4004C7AE4000C3EB4008D0EB400C493C400B463B400AE5A
      B400AE5AB400AC4CB400C072CC008A02A400FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00B43ECC00C45ED400FCFEFC00FCFEFC00FCFEFC00FCFEFC00E4A2EC00BC1A
      D400FCFEFC00FCFEFC00FCFEFC00FCFEFC00DC6AEC00DC6AEC00D43EE400D146
      E400D44AE400D44AE400D44AE4008C0AB400000000000000000000000000A6AD
      6A56E4E7C5FF61E4E6FFA9F6F2FF6BFEFEFF00E7F0FF00D9E7FF00E3EBFF01B6
      CFFF0300CCFF0322FBFF062DF4FF0D41F3FF1154F6FF0D64F6FF71B9FBFFEDFF
      FFFFFCE6F1FF002A95FF00FFFFFF00F5F6FF00F7F7FF95FFFFFF9BD4CAFF7265
      227F000000000000000000000000000000002D0AB400B4A3D4008466BC008062
      BC007C5CBC007C5CBC007956C40034029C00D4CEEC00F4F4FC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC006C1EDC008442E4008442DC008946
      E4008442DC008946E4008946E4002C06B4001346B400A3B2D4006482BC00607E
      BC005C7ABC005C7ABC00446ABC000C3EAC00FCFEFC00E4E6FC00E4E6F400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC002D62D400FCFEFC008CAA
      EC00FCFEFC00FCFEFC00A4BAEC001052D400306AE4003C6EDC004376E4004376
      DC00447AE4004376E400447AE400063AB4008D0EB400CCA3CC00B463B400B45E
      BC00AC54B400CC96D400FCFEFC0080029400B65EC400FCFEFC00FCFEFC00D492
      DC009402AC00F8E2FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00BC02
      D400D46EE400FCFEFC00FCFEFC00E4AAEC00BC02D400FCFEFC00DC96EC00CF3A
      E400D146E400CC42DC00D146E4008C06B4000000000000000000000000000000
      0000C0AB660898B970AAB1F1D9FF5DDBD5FFB7FBF6FF00EAEEFF00EAEFFF00B1
      CBFF0400D5FF0730F8FF0C41F3FF1256F4FF0E66F6FF6CB7FBFFEDFEFFFFF4DD
      EEFF125AAEFF00DCEFFF00F2F2FF00F4F5FF00F8F8FF72FFFFFF194D43FF332D
      0DC696872E51DEC5430700000000000000003102AC00C0B2DC008C6EBC00846A
      BC008062BC007C5EC4008766C4003402A400B4A4E4004C16AC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC006C1EDC007C3EDC00843EDC008442
      E4008442E4008442E4008442E4002C06B4001346B400B4BEDC006A86BC006A86
      BC00607EBC005C7EC4005C7ABC001342AC00FCFEFC00FCFEFC00FCFEFC0094AE
      E4001C4ABC000436BC00446ECC00E4E6FC00FCFEFC00CCD6F40094AEEC003C6E
      D4003C6EDC00F1F2FC004376DC00346ADC003C72DC003C72DC003C72E4004376
      DC004376E4004376E4004376DC00063AB4008C0AB400D4B3D400B46CB400B46C
      B400AC54B400DCB2DC00FCFEFC00F4E5F40087029C008002940087029C009402
      AC00DCB4E400FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4E5
      F400B416D400B102CC00BC02D400B406D400E4B2F400FCFEFC00DC96EC00CC33
      E400CC42DC00CD42E400CD42E4008C06B4000000000000000000000000000000
      00000000000000000000708B3F79FFFFFFFF5DE5D6FF00EFF2FF00E8EDFF00FF
      FAFF0063B2FF062DF6FF1157F7FF136BF6FF499CFAFFE8FBFFFFFFFDFFFF004E
      A5FF10FFF2FF00CEE7FF00EEF2FF00F3F3FF00F7F7FF32FAFAFFBAFFFFFF6C87
      82FF040401FA4E4615A5D5C04309000000002D0AB400CCC2DC008C74BC008C74
      BC00866AC4008466BC008462C4004416A400AC96DC003C04AC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC005C12D4007C3EDC007C3EDC00843E
      DC008442DC007C3EDC00843EDC002C06B4001346B400C4CAE400748EBC00718A
      C4006A86BC006482BC006B86C400042A9C0094AAD400FCFEFC006C8AD4000436
      AC00144EC4002152C4001D4EBC00043EC400E4EEFC00FCFEFC00FCFEFC00E4EA
      FC001C52CC00215EDC002C62DC003C6ED4003C6EDC003C72DC003C72DC003C72
      DC003C72DC003C72DC003C72DC000436BC008D0EB400DCC2DC00B476B400B46D
      BC00B46CB400AE5AB400A43EAC00F4E5F400FCFEFC00F0DEF400ECD5F400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00F7EEFC00F8E2FC00FCFEFC00FCFEFC00FCFEFC00C42EDC00C43A
      DC00C93EDC00C93EDC00C93EDC008C06B4000000000000000000000000000000
      0000000000005656318B001319FF001E6BFF03D4D3FF00F0F3FF00F6F2FF00DE
      F6FF131A4CFF3A5E44FF0D6AFFFF1780F9FF89C6FBFFFFFFFFFF6045A2FF0052
      80FF00FBFFFF00D3E9FF00F2F2FF00F0F4FF00F6F5FF08F9F9FF8AFCFCFFD6FF
      FFFFF4FFFFFF131E07E9CEB43A12000000002D0AB400D4CCE400947EC400947A
      C4008C74BC00866AC400866AC4005C35AC00AC9EDC005422B400FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC005C12D400763ADC00763ADC007036
      D4007C3EDC00763ADC007C3EDC002D0AB4001C46BC00CCD6E4007C92BC00748E
      BC00718AC4006B86C4006482BC003462B400FCFEFC00FCFEFC000426A4001B4E
      B4002152BC002152BC002356C4001C4EC4004C76D400FCFEFC00FCFEFC002D62
      D4002B5ED4003466D400346AD400346ADC003C6ADC003C6EDC003C6ED4003C6E
      DC003C72DC003C6EDC003C72DC000C3EB4008D0EB400E4CCE400BC7CBC00B476
      B400B972BC00B46DBC00AE5AB400C484CC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00ECC2EC00D8A6E400DCAEEC00DCB4E400E4B2EC00E4B2EC00E7B6EC00E7B6
      EC00E4B2F400E4B2EC00FCFEFC00FCFEFC00F0CEF400C632DC00C42EDC00BD36
      D400C93EDC00C43ADC00C93EDC008C0AB400000000000000000000000000BDAD
      8215192610DE000029FF001F67FF00F0EBFF00FCFCFF00FBF6FF00DBF3FF1A14
      5AFF345615FFF9FBFFFFC7CFDFFF0C6FE9FF7ED7FFFFFFDCECFF0072BAFF00FF
      FFFF00E9F4FF00CAE0FF00EEF0FF00F0F3FF00F3F4FF00F7F7FFC2FFFFFFFFFF
      FFFFF1FFFFFF3E3611B700000000000000003412B400DCD2EC009C86C400947E
      C400947AC4008C72C4008C74BC007556BC00C4B6E400FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC005C12D4007036D4007436DC00763A
      DC00763ADC00763ADC007436DC003412B4001D4EBC00D6DEEC00839AC4007A92
      C4007C92BC006482BC00B4C6E400FCFEFC00FCFEFC00CCD6EC00042AA4001B4E
      B4001D4EBC002152BC002456BC002356C400114AC400FCFEFC00BCCAEC000442
      CC002B5ED4003466D4003466D400346AD400346AD400346ADC003C6ADC00346A
      DC003C6ED4003C6EDC00346ADC000C42B4009012B400ECDAE400BC85BC00BC85
      BC00B476BC00B972BC00B46DBC00AC4CB4009C2CAC00BC7CC400D48ED400FCFE
      FC00E4CBEC008A02A4009C02B400A40DBC00A40DBC00AC12C400AC12CC00B40E
      CC00A404C400D47AE400FCFEFC00DC96EC00B40ECC00C42EDC00C636DC00C43A
      DC00C43ADC00C43ADC00C636DC009413BC0000000000000000000000000057A9
      65AA14BDE5FF428DB0FF00FFFFFF00F9FAFF00FFFAFF00DCF2FF1E2068FF3152
      13FFF0F6FFFFFAEAEBFF003A8DFF0071B6FF282DACFF006EB6FF00FFFFFF00D8
      E3FF00CCDDFF00DFEBFF00EBF0FF00EFF3FF00F2F3FF2EFFFFFF90BC8AF476B3
      6AAB669C3D8FD5BB3B1600000000000000003C1BBC00DCD6EC00A492CC009C86
      C400947EC400947AC4008E76C4008C72C40034029C007C5CBC00F4EEF400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00E4D4F4005C12D4007036D4007436DC007036
      D4007436DC007036D4006C32D4003C1BBC001D4EBC00DCE6EC0090A2CC00839A
      C4007A92C400748EC4009CAED400F4F6FC00FCFEFC00F4F6FC0004229C001446
      AC001B4EB4001D4EBC002152BC00114AC400345ECC00FCFEFC00FCFEFC00648A
      E4001C52CC002D62D4002D62D4003466D4003466D4003466D400346AD400346A
      D400346ADC003C6ADC003466D4001C4ABC00961ABC00ECDBEC00C493C400BC85
      BC00BC7CBC00BC7CBC00B972BC00BC7CC40081028C0087029C0080029400D4AE
      DC00FCFEFC00E4CBEC009C0AB4009402AC009C0AB400A012BC00A40AC400A404
      C400DC96EC00FCFEFC00FCFEFC00B416D400C42ED400BC32D400BD36D400BD36
      D400C636DC00BD36D400BC32D400961ABC00000000000000000000000000A0B9
      8386FFFFFFFF93FBF5FFB7FFFFFF9AFFFFFF74E4FBFF21246EFF335417FFEEF5
      FFFFFFF1F3FF00278EFF00FFFFFF00FFF9FF00FFF8FF00DADBFF00D4DBFF00DF
      E8FF00D8E7FF00E8EEFF00EBF0FF00EDF1FF00F8F9FF20CBD0FF211C08D7C3A6
      301500000000000000000000000000000000442CAC00DCD4E400B19ECC009C8A
      C4009C8AC400947EC400947AC400947CCC005C35AC0028029C0028029C00542C
      B400C4B6E400FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00B89AEC00541ECC006C32D4006C32D4006C32
      D4006C32D4007036D400642ED4004426B4002C52AC00E4EAF4009CAECC008CA2
      C400849ACC008496C4006C8ABC004C72B400CCD2EC00FCFEFC002C56B4000436
      A4001C4AB4001B4EB400144ABC000436AC00BCC6EC00FCFEFC00FCFEFC00FCFE
      FC00144ECC002B5ED4002D62D4002D62D4002D62D4003466D4003466D4003466
      D4003466D4003466D4002D62D4002C52AC008C2AAC00ECDBEC00CC9EC400C48B
      C400BC85BC00BC85BC00BC7CBC00BC7CC400A432A400940A9400910EA4008702
      9C00CC86D400FCFEFC00FCFEFC00F8E2FC00DCAEEC00E4A2EC00E8D2EC00FCFE
      FC00FCFEFC00F0CEF400AC12CC00B32ACC00B72ED400BC32D400BC32D400BC32
      D400BC32D400BD36D400B72ED4008C2AAC00000000000000000000000000C7C2
      A02C7EB46DD90BB180F119A26FDE0E9386EE2E2A78FF315518FFF0F7FFFFFFF4
      F6FF002892FF00FFFFFF00F7F4FF00F2F1FF00F1F1FF00F1F2FF00ECEFFF00E2
      EAFF00DFEAFF00E9EFFF00EBEFFF00EEF2FF00F1F4FF00FFFFFF001813FF4F42
      10A0D2B434020000000000000000000000004E36B400D4CEEC00BCABD400AC96
      CC00A492CC009C86C4009782C4009782C400947CCC0028029C00400EA4003C0A
      A4003402A4003C04AC009882D400FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC007C4AD4005C22D400642BCC006C32D400642E
      D4006C32D4006C32D400642AD4004E36B400335AB400DCE2EC00ACB6D40094A6
      CC008CA2C400839AC400849ACC006482BC00B4C6E400FCFEFC00FCFEFC00335A
      B40004229C00042AA400042EAC008CAAE400FCFEFC0094AEE4003966CC005C82
      D400144EC4002C5ECC002B5ED4003462CC002D62D4002D62D4002D62D4002D62
      D4002D62D4002C66D400265ACC00335AB4009436B400E8D2EC00D2AACC00C493
      C400C493C400BC85BC00BD82C400BC7CC400B972BC0081028C0094129C009412
      9C008A02A4008A02A400BC6BC400ECC6F400F4EEF400F7EEFC00ECD5F400D08E
      DC00AD26CC00A40AC400B422D400B52AD400B72ED400B72ED400B72ED400B72E
      D400BC32D400B72ED400B32ACC009436B4000000000000000000000000000000
      00000000000000000000C0AD8D1E302D73F32E5316FFF1F7FFFFFFF3F7FF0032
      98FF00FFFFFF00F8F6FF00F7F3FF00F3F3FF00F0F0FF00EEEEFF00E6ECFF00E4
      ECFF00E5EBFF00E8EEFF00E9F0FF00EEF3FF08F4F7FF00FFFFFF00BDD5FF0505
      01F9A58B22380000000000000000000000005C4AAC00CCC2E400C4B6DC00B19E
      CC00AC96CC00A48ECC009C86C4009782C4009F8ACC005C35AC0037069C004112
      A4004416AC004312AC003C04AC003102AC007152CC00E4DEF400FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC004406C400642AD400642AD400642ED400642B
      CC00642ED400642BCC005426CC005C4AAC004C66AC00D6DEEC00B6C2DC009CAE
      CC0094A6CC008CA2C400839AC4007A92C400FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00E4EEF400FCFEFC00FCFEFC00FCFEFC00041EAC00144ABC001C4E
      C400265ACC00265ACC00265ACC002B5ED4002C5ECC002B5ED4002D62D4002D62
      D4003462CC002B5ED400265ACC004C66AC00944BAC00DCC2E400D9BAD400CC9E
      C400C493C400C493C400BC85BC00BC85BC00CC8ACC00942E9C00800294009412
      9C009414A4009414A400910AAC008A02A4009402AC009C02B4009C06BC00A012
      BC00A71EC400AD26CC00B32ACC00B32ACC00B52AD400B32ACC00B72ED400B72E
      D400B72ED400B72ED400AD26CC009444AC000000000000000000000000000000
      0000CAC1A714474499B62D3C6AFF365B24FFF1F7FFFFFDF5FAFF103A9EFF08FF
      FFFF00FAF7FF00F9F6FF00F6F3FF00F6F4FF00F1F2FF00EFF0FF00EAEEFF00E5
      EBFF00E6EDFF00E5ECFF00F3F9FF40F4F0FFAAF7F5FFC9FFFFFF66FFFFFF0069
      47FFBA9C28150000000000000000000000006C5EAC00BCB2E400CCC2DC00BCAB
      D400B19ECC00AC9ACC00A48ECC009C8AC4009C86C4009F8ACC004416A4003706
      9C004416A4004416AC004416AC004C1AB400440AB4003102AC005422BC00C0AA
      EC00FCFEFC00FCFEFC007C52DC004C1CCC005C26CC005B2ACC005B2ACC00642A
      D400642AD400642ED4004C1EC4006C5EAC005C76AC00C4CEEC00C4CEDC00ACB6
      D4009CAECC0098AACC008CA2C4007C92BC00A3B2D400607EBC00040E8400E4EE
      FC00FCFEFC00FCFEFC00ACBEE400FCFEFC00FCFEFC006482CC00144ABC002152
      C4002356C4002356C400265ACC00265ACC00265ACC00265ACC002C5ECC002C5E
      CC002B5ED4002D62D4002152C4005C76AC009C5DAC00DCBAE400DCC2DC00D2AA
      CC00CC9EC400C493C400C493C400C286C400BC85BC00C286C4008C1294008002
      940094129C009414A4009C1AAC009C1AAC009C1AB400A41EB400A41EBC00A222
      BC00A822C400AC26C400AD26CC00AD26CC00AD26CC00B32ACC00B32ACC00B52A
      D400B32ACC00B52AD400A71EC4009C5DAC00000000000000000000000000D5CA
      B511232887F32E5405FF526F4BFFE9F0FFFFFFFFFFFF32379CFF64FFFFFF4DFF
      FCFF7CFFFFFFD6FDF8FF82FDFAFF00F5F5FF00F3F1FF00EFF0FF00E8EDFF00E4
      EAFF00E1EAFF00EDF4FF009FA9FF495107CB7EC985EA59DFC6FF39ECDAFF7A64
      1666000000000000000000000000000000008475B400AC9EDC00D4CCE400BCB2
      D400B4A3D400B4A2CC00AC96CC00A492CC009C86CC009C8AC400A48ECC00643E
      B40037069C0034029C003C06A400370AAC00440EAC004C0EBC003C06B4003402
      B4003402B4005416C400440ABC00541ECC005C26CC005426CC005C26CC005C26
      CC005C26CC005C26CC00471AC4008475B4007486B400ACBEE400CCD6E400ACBA
      D400ACB6D4009CAED40098AACC0090A2CC00839AC400849EC4006B86C400D6DE
      EC00FCFEFC00335AB400041294000436A400A9BAE4000436AC001346B400144A
      BC00114AC4002356C4002356C4002356CC00265ACC00265ACC00265ACC00265A
      CC00265ACC00265ACC001C4EC4007486AC00A475B400D4A2DC00E4CCE400D4AE
      CC00D2AACC00CC9EC400C89AC400C48BC400C48BC400C286C400C48BC400A43E
      AC008C0494008C0494008C069C008F0AA400910EA4009C0EAC009C15B400A116
      BC00A61AC400A61AC400A822C400AD26CC00AD26CC00AD26CC00AD26CC00AD26
      CC00B32ACC00AD26CC00A61AC400A47BB4000000000000000000E9E3DB0D2429
      82F399AE89FFFFFFFFFFFFFFFFFFFFFFFFFF00238FFFF2FFFFFF63FFFFFFB1FF
      FFFF34C4A5FF63DFD6FFBBF0E8FF06F7F5FF00F1F1FF00F0F2FF2BF7F4FF90F9
      F4FF04F0F3FF00F3FAFF0092A7FF423511AC00000000CBA63007B8A434360000
      0000000000000000000000000000000000009C92B4009882D400E0DAEC00C4BA
      DC00BCB2D400BCABD400B19ECC00AC9ACC00A492CC009C86C4009C86CC009C86
      CC009F8ACC009476CC00866AC4008462C4007C5DCC007C5AC4007752C400744E
      C4006C45CC00603AC4006036CC00642BCC005A2ECC005C26CC005322CC005926
      C4005426CC005C26CC003C16C4009C92B400949EB40094AADC00D6DEEC00B6C2
      DC00AEBED400ACB2C4009CAED40098AACC0090A2CC00839AC400839AC4007C96
      CC00ACB6D400748ECC006482C4005C7EC4004F76C4004A72C4004F76C4004A72
      C400486EC4003C6ACC003462CC002C5ECC002C5ECC00265ACC002356CC00265A
      CC002356CC00265ACC001346BC00849EC400AC93B400CC86D400ECDBEC00D4B3
      D400D4B3D400CCA3CC00CCA3CC00C89AC400C493C400C286C400C286C400C286
      C400C286C400BC74C400BC66C400B45EBC00B65EC400B85AC400AC4EBC00B14E
      C400B446C400AC3EC400AE36CC00AC32CC00B32ACC00AD26CC00AD26CC00AC22
      CC00AD26CC00AD26CC009C16C400AC8DB40000000000C0AB6B111A1C7EF4BCD1
      C2FFEDF4FFFFF1F3F8FFFFFFFFFFC1B7DFFF1C9BC2FFFFFFFFFF68ECDEFF447B
      41A993B072A8FFFFFFFF7BEDE4FF31FBFBFF00F9FBFF01CCCCFEB5E0CAFF66DB
      D4FFC7FFFFFF00F4FBFF00A6BDFF322A0FC0CAA3340200000000000000000000
      000000000000000000000000000000000000B4B2C4007C66CC00ECE6F400C4BA
      DC00C4BADC00BCABD400BCABD400B19ECC00AC9ACC00A492CC009F8ACC009782
      C400947CCC00947AC4008C6ECC008A6EC4008462C4007C5DCC007956C4007152
      CC00694AC4006C45CC006442C4006036CC005C32CC005B2ACC005C26CC005322
      CC005322CC005422C4003812BC00B4AEC400ACB2C4007C96D400E4EAF400BECA
      DC00B6C2DC00AEBED400ACB6D4009CAECC0098AACC0090A2CC00849ACC008496
      C4007C96CC00748EC400718AC4006482CC006B86C4005C7ECC00547AC4005476
      CC004A72C400446ECC00446AC4003966CC003462CC002C5ECC002356CC002356
      C4002356CC002356CC001346BC00B0B6C400BCACC400C072CC00F4E5F400D9BA
      D400D9BAD400D4AECC00D2AACC00CC9CCC00C493C400C493C400C286C400BD82
      C400BC7CC400BC74C400B46DBC00BC6BC400B862C400B65EC400B454C400B454
      C400B24AC400B446C400B43ECC00A83AC400AC32CC00AE2ECC00AC26C400AC22
      CC00A822C400AC22CC00940DBC00C0B2C400D2D0CE1831347EF384A198FFA8BA
      D0FFC2CFDFFFEBF3F5FFC7C8E7FF73709B8AA5C984A004A058FA9CA478580000
      00009AB98490FFFFFFFF67E8DFFF49FCFCFF00FFFFFF04714AFA5F762B9FFFFF
      FFFF52E0D7FF98FFFFFF00C6E5FF3A2F13B70000000000000000000000000000
      000000000000000000000000000000000000CCCAD400694AC400F4EEF400D4CC
      E400CCC2DC00C4B6DC00BCABD400BCABD400AC9ED400AC9ACC00A492CC009C86
      CC009782C400947CCC008E76C4008C72CC00866AC4007C66CC007C5AC4007C56
      CC007752C400704ACC006C45CC006442C4006036CC005C32CC00542EC4005322
      CC004C1EC4004C1CCC00310EBC00D4D2D400D4D2D4005C7ECC00E4EEF400C4CE
      E400BECADC00B6C2DC00AEBED400ACB6D4009CAECC0098AACC0090A2CC00849E
      C4007C96CC007A92C4007492CC00718AC4006B86C4006482CC005C7EC400547A
      C4004C72CC004A72C400446ACC00446AC4003462CC002C5ECC00275AC4002356
      CC001C52CC002152C4000C3EBC00D4D6DC00D4D2D400B14EC400F4EEF400E4CA
      DC00DCC2DC00D9BAD400D4AED400D2AACC00CCA3CC00C89AC400C493C400C286
      C400BC85BC00BC7CC400BC74C400BC74C400BC6BC400B45EBC00B65EC400B454
      C400B454C400B24AC400AF42C400B43ECC00AC36C400AC32CC00B32ACC00AC22
      CC00A91ECC00A822C400940DBC00D4D2D400F7F7FA182E318EFA729389FF7E99
      AAFFA2B8C7FFCCCEE8FF7C77A383000000000000000000000000000000000000
      000098B07B7AFFFFFFFF54E6DCFF9DFFFFFF00F5FBFF4C4228A10000000075BB
      6ADEEDFAF3FF5DF5F6FF00A566FFA989382C0000000000000000000000000000
      000000000000000000000000000000000000000000003C1AB400F4EEF400DCD6
      EC00CCCAD400CCC2E400C4BADC00BCB2D400BCABD400AC9ED400AC9ACC00A492
      CC009F8ACC009782C400947AC4009476CC008A6EC4008C6ECC007C5EC4007C5A
      C4007C56CC007752C400694AC4006C45CC00603AC4006036CC005C32CC00542E
      C4005322CC00471AC400300EB40000000000000000001D4EBC00ECF2F400D4DA
      E400C9D2E400BECADC00B6C2DC00AEBED400ACB6D400A3B2D40098AACC0090A2
      CC00849EC4008496C4007492CC00748EC400748ECC006482C4006482C4005C7E
      CC00547AC4004C72CC00486EC400446ACC003966CC003C62C4002C5ECC00265A
      CC002152C4001C4EC4000C3EB40000000000000000009C1AB400F4EEF400E4D2
      E400E4CADC00DCBCDC00D9BAD400D4B3D400CCA3CC00CCA3CC00C493C400C493
      C400C48BC400BD82C400BC7CBC00BC74C400BC6BC400BC6BC400B862C400B85A
      C400B454C400B14EC400B24AC400AF42C400AC3ACC00AC36C400AE2ECC00AC26
      C400A822C4009C16C4008D0EB4000000000000000000B29E72122E2E91F97A9D
      8DFFB3BBD6FF7571AA8700000000000000000000000000000000000000000000
      0000C4C1993899C289EE41E6D5FFA5F7FFFF139969FFAD9A661E000000000000
      0000BFB1662F90A1526B00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007C6EB4006C56CC00F4EE
      F400ECE6F400E0DAEC00D4CCE400CCC2DC00BCB2D400BCABD400B4A3D400AC9A
      CC00A492CC009F8ACC009482CC00947AC4008C72C4008A6EC400866AC4007C66
      CC007C5AC4007956C400704ACC00694AC4006442C400643ACC00542EC4005A2E
      CC004C24C400340ABC00847AAC0000000000000000007486B4005C7ECC00F1F2
      FC00DCE6EC00D6DEEC00C9D2E400BECADC00AEBED400ACB6D4009CAED40098AA
      CC0094A6CC008C9ECC007C96C4007A92C400748EC400748ECC006482C4006482
      CC00547AC400547AC4004A72C400486EC4003C66C4003966CC003C62C400275A
      C4002356C4000C3EBC007C8AAC000000000000000000A475B400AC52CC00F4EE
      F400F4E6EC00ECDAE400E4CCE400D9BAD400D4B3D400D2AACC00CCA3CC00CC96
      D400C493C400C286C400BD82C400BC7CBC00BC74C400BC6BC400BC66C400B862
      C400B85AC400B454C400B14EC400B446C400AF42C400AC3ACC00AC36C400AE2E
      CC00A822C400940DBC00A47AAC00000000000000000000000000AB967314312F
      9FFF76616E860000000000000000000000000000000000000000000000000000
      00000000000000000000C8D0B23CB0C6A060CDCBA82E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000746AAC003C1B
      BC007152CC008472D400A48ADC00B4A4E400C8BAEC00D4C6EC00D4CEEC00DCD2
      EC00D4CEEC00D4CCE400CCC2E400C4BAE400BCAEDC00AC9EDC00A492D4009482
      CC008C72CC007C5DCC006C4EC400603AC400542EC4004426BC003416BC003812
      BC002D0AB400847AAC00000000000000000000000000000000006C7EAC001C4A
      BC005476CC007492D4008CA6DC00A9BAE400B0C6EC00CCD6EC00CCD6EC00D4DA
      EC00CCD6EC00CCD6E400C4CAE400B4C6E400ACBADC00A3B2D40094A6D400849A
      CC00748ECC005C7ECC004A72C4003C62C400275AC4002152BC00144ABC001042
      BC000C3EB4007486AC00000000000000000000000000000000009C6AAC00961A
      BC00AC52CC00BC72D400D08EDC00D8A6E400DCBAEC00E4CBEC00E4CBEC00E8D2
      EC00E4D2E400E4CCE400DCC2E400DCB2DC00D4AEDC00CC9ED400C493C400C484
      CC00C072CC00B65EC400B14EC400A83AC400A42EBC00941EBC00961ABC00940D
      BC008D0EB400A47AAC000000000000000000000000000000000000000000FCFC
      FD0D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C4C2CC00A4A2BC008C82B400746AAC006452AC00543EAC00442CAC003C1E
      B4003416BC002D0AB4002C06B4002D0AB4002C06B4002D0AB400310EBC003416
      BC003C22B4004C32AC005742AC006C56AC007C72AC00948DB400ACAAC400CCCA
      D400000000000000000000000000000000000000000000000000000000000000
      0000C4C6CC00A4AABC008492B4006C7EAC00546EAC003C5EAC002C56B4001C4A
      B4001346BC000C3EB400063AB400063AB400063AB400063AB4000C3EBC001346
      BC00244EB4003456AC004262AC005872AC007482AC008C96B400ACAEC400CCCE
      D400000000000000000000000000000000000000000000000000000000000000
      0000CCC2CC00B4A2BC00AC82B4009C6AAC009852AC00943DAC00902EAC00941E
      B4009413BC008C0AB4008C06B4008C0AB4008C06B4008C0AB400940DBC009413
      BC009026B400902EAC009444AC009C56AC00A072AC00AC8DB400BCACC400D4CA
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00F2F2F200E5E5E500E4E4E400EFEFEF00F9F9F900FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDA
      DC00C4C2C400B4B2B400A4A6A400A4A2A4009C9A9C009C9E9C009C9A9C009C9E
      9C009C9E9C009C9A9C009C9A9C009C9A9C00949694009C9A9C009C9E9C00A4A2
      A4009C9A9C009C9A9C009C9A9C009C9E9C009C9E9C00ACAAAC00B4B6B400CCCA
      CC0000000000000000000000000000000000000000000000000000000000DCDA
      D400C4BEB400B4AE9400B09E7C00AC965C00AC8E4C00AC8A3C00AC872C00B486
      1C00BA861400B5820C00B5820C00B47E0400B47E0400B5820C00BC860C00BA86
      1400B2862400AC872C00AD8E4400AC8E4C00AC966400B4A27C00BCB29C00CCC6
      BC00000000000000000000000000000000000000000000000000000000006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F5F5F500DDDD
      DD00B8B8B8009A9A9A0098989800ADADAD00C6C6C600D8D8D800E5E5E500F1F1
      F100FAFAFA00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9E9C009C9A
      9C009C9A9C009C9E9C00A4A2A400A4A6A400ACAEAC00ACAEAC00B4B2B400B4B6
      B400BCBABC00BCBABC00BCBEBC00C4C2C400C4C2C400C4C6C400C4C6C400CCCA
      CC00C4C6C400CCCACC00C4C2C400C4C2C400C4C2C400BCBABC00B4B6B400ACAE
      AC009C9E9C00A4A2A40000000000000000000000000000000000AD8E4400B482
      0400BC860C00BC8C1400B8921400C4961C00C49E1C00C9A22400CEAA2400D4AE
      2C00D4B22C00D6BA3400DCC03C00DCC03C00DCC63C00E3CA4400E3CA4400E3CA
      4400E4CE4400E3CA4400E4CA3C00DCC64400DCC03C00D6BA3400CCAE2C00CCA6
      2400BC8A0C00B4924C00000000000000000000000000000000003366CC003366
      CC003399CC003366CC003366CC003366CC006666CC003366CC003399CC003399
      CC003366CC006666CC003366CC003399CC003366CC003399CC003366CC003399
      CC006666CC006699CC0066666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600D3D3D3007F7F
      7F00444444003F3F3F00474747005C5C5C006E6E6E00838383009A9A9A00B2B2
      B200C8C8C800DADADA00E8E8E800F3F3F300FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9E9C00949694009C9A
      9C009C9E9C00A4A6A400ACAAAC00ACAAAC00ACAEAC00B4B6B400B4B6B400BCBA
      BC00BCBABC00BCBABC00BCBEBC00BCBEBC00C4C2C400C4C6C400C4C6C400CCCA
      CC00CCCACC00CCCECC00D4D2D400CCCECC00D4D6D400DCDADC00D4D6D400DCDE
      DC00DCDEDC00B4B2B4009C9E9C000000000000000000AC8A3C00B5820C00B38E
      1400BC961C00C09A1C00C49E1C00C9A22400CCA62400CBAA2C00D4AE2C00D4B5
      3400D4B53400D6BA3400D6BA3400DCC03C00DCC64400DCC64400E4CE4400E4D2
      4C00E6D64C00ECDC5400ECDC5400ECDC5400ECE25400F4EB5C00F4EB5C00F4EE
      6400F4EB5C00CBAA2C00AD8E44000000000000000000000000003366CC003399
      CC0033CCCC0033CCFF0033CCFF0033CCFF0033CCFF0033CCCC0033CCCC0033CC
      CC0033CCFF0033CCFF0033CCCC0033CCFF0033CCFF0033CCCC0033CCFF0033CC
      CC000099CC000066990066666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D4005C666900275D
      7A003B6DAD000896CE0010799C001D6076002B4851003D3D3D004A4A4A005E5E
      5E007171710087878700A0A0A000B9B9B900CFCFCF00DFDFDF00EBEBEB00F5F5
      F500FDFDFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCDADC0094929400949294009496
      94009C9E9C00A4A2A400ACAAAC00ACAAAC00B4B2B400B4B2B400B4B6B400B4B6
      B400BCBABC00BCBEBC00C4C2C400C4C2C400C4C2C400C4C6C400CCCACC00C4C6
      C400CCCECC00CCCECC00D4D2D400D4D2D400D4D6D400D4D6D400DCDADC00DCDA
      DC00DCDEDC00DCDEDC009C9E9C00DCDADC00D7D6D400B47E0400BA861400B38E
      1400B7921C00BC961C00C59E2400C9A22400CCA62400CBAA2C00CCAE2C00D4B2
      2C00D4B53400D6BA3400DCC03C00DCC03C00DCC63C00E3CA4400E4CE4400E4CE
      4400E6D64C00E6D64C00ECDC5400ECE25400ECE25C00F0E65C00F4EB5C00F4EE
      6400F4F26400F4F26400B48E0C00D7D6D40000000000000000003399CC0033CC
      CC003399CC0033CCFF0033CCCC0033CCFF0033CCCC0033CCFF0033CCCC0033CC
      FF0033CCCC0033CCFF0033CCCC0033CCFF0033CCCC0033CCFF0033CCFF000099
      CC0033CCCC003366CC005F5F5F00000000000000000000000000000000000000
      000000000000000000000000000000000000000000008A8A8A002B75AF00496A
      B500496BB6003E82D9003586DB00258DD9001693D5000792C400137393002059
      6C0031444A003F3F3F004E4E4E0065656500777777008E8E8E00A6A6A600BEBE
      BE00D3D3D300E2E2E200EEEEEE00F8F8F800FEFEFE0000000000000000000000
      000000000000000000000000000000000000BCBEBC0094929400949294009496
      94009C9A9C009C9E9C00A4A6A400ACAAAC00ACAEAC00B4B2B400B4B6B400BCBA
      BC00B4B6B400BCBEBC00BCBEBC00BCBEBC00C4C2C400C4C6C400C4C6C400CCCA
      CC00CCCACC00CCCECC00D4D2D400D4D2D400D4D2D400D4D6D400D4D6D400DCDA
      DC00DCDADC00DCDADC00B4B2B400BCBEBC00C4BAAC00AA7E0400AC861400B08A
      1400B7921C00BC961C00C09A1C00C9A22400CCA62400CBAA2C00CCAE2C00D4B2
      2C00D4B53400D6BA3400DCC03C00DCC03C00DCC63C00DCC64400E4CE4400E4D2
      4C00E4D24C00E6D64C00ECDC5400ECDC5400ECE25400F0E65C00F4EB5C00F4EB
      5C00F4EE6400F4F26400CBAA2C00C4BEAC0000000000000000003399CC0066CC
      FF0033CCCC000099CC0033CCCC0033CCFF0033CCCC0033CCFF0033CCFF0033CC
      CC0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCCC000099CC0033CC
      CC0066CCFF003366CC0042424200868686008686860086868600868686000000
      0000000000000000000000000000000000000000000072727200357AC1004A67
      B000476FBE003F7FD6003E82D9003D84DE003B87E2003A89E6002F8EE4002093
      DF001196D800068CB900166C890023536300353F420042424200535353006969
      69007D7D7D0094949400ACACAC00C2C2C200D5D5D500E4E4E400F1F1F100FAFA
      FA00FEFEFE00000000000000000000000000ACAEAC008C8E8C008C8E8C009492
      94009C9A9C009C9E9C00A4A2A400A4A6A400ACAEAC00B4B2B400B4B2B400B4B6
      B400BCBABC00BCBABC00BCBEBC00C4C2C400C4C2C400C4C2C400C4C6C400CCCA
      CC00CCCACC00CCCECC00CCCECC00D4D2D400D4D2D400D4D6D400DCDADC00DCDA
      DC00DCDADC00DCDADC00BCBABC00ACAEAC00B4AA8C00AA7E0C00AC861400B08A
      1400B7921C00BC961C00BC9A2400C49E1C00CCA62400CBAA2C00CCAE2C00D4B2
      2C00D4B53400D6BA3400D6BA3400DCC03C00DCC63C00DCC64400E3CA4400E4CE
      4400E6D64C00E6D64C00ECDC5400ECDC5400ECE25400F0E65C00F0E65C00F4EB
      5C00F4EB5C00F4EB5C00D4B53400B4AA8C0000000000000000003399CC0066CC
      FF0066CCFF0033CCFF003399CC0033CCFF0033CCFF0033CCFF0033CCCC003399
      CC003399CC0033CCCC0033CCFF0033CCFF0033CCCC000099CC0066CCCC0066CC
      FF0066CCFF003366CC000066000033FF330099FF9900CCFFCC00669966008686
      860000000000000000000000000000000000000000005D5D5D00337DC5004B65
      AD004573C300417BD1003F7FD6003E82D9003D84DE003B87E2003A89E600398C
      EA00388FEF003791F3002895EB001A97E3000D99D8000A86AF00166C8900264D
      5B003B3B3B0046464600585858006B6B6B007F7F7F0098989800B5B5B500D7D7
      D700F5F5F500000000000000000000000000A4A6A4008C8A8C008C8A8C009492
      9400949694009C9A9C00A4A2A400A4A6A400ACAAAC00A4A6A400ACAEAC00ACAA
      AC00ACAEAC00B4B2B400B4B6B400BCBABC00BCBEBC00C4C6C400C4C6C400CCCA
      CC00C4C6C400CCCECC00CCCECC00D4D2D400CCCECC00D4D6D400D4D6D400D4D6
      D400DCDADC00DCDADC00BCBEBC00A4A6A400AC9A7400AA7E0C00AA7E0C00B08A
      1400B38E1400B7921C00C09A1C00BC9A2400C9A22400CCA62400CCAE2C00CCAE
      2C00D4B53400D6BA3400D6BA3400DCC03C00DCC03C00DCC63C00E3CA4400E4CE
      4400E4CE4400E6D64C00ECDA4C00ECDC5400ECDC5400ECE25400F0E65C00F0E6
      5C00F4EB5C00F4EB5C00DCC03C00B29E740000000000000000003399CC0066CC
      FF0066CCFF0066CCFF0033CCFF003399CC0033CCFF003399CC00009999003399
      CC003399CC000099990033CCCC0033CCFF000099CC0033CCFF0066CCFF0066CC
      FF0066CCFF003366CC000066000033FF330099FF9900CCFFCC0099CC99003399
      330096969600000000000000000000000000000000005D5D5D00357FCC004A68
      B1004279CB004279CD00417BD1003F7FD6003E82D9003D84DE003B87E2003A89
      E600398CEA00388FEF003791F3003694F6003496FB003099FC002399EF001699
      E2000A99D6000D80A6001D6076002A4751003C3C3C004A4A4A0066666600A1A1
      A100E4E4E400000000000000000000000000A4A2A400848684008C8A8C008C8E
      8C00949694009C9A9C009C9E9C009C9A9C00ACAAAC00D4D2D400E4E2E400ECEE
      EC00F4F2F400F4F2F400ECEEEC00E4E2E400CCCACC00BCBABC00C4C6C400C4C6
      C400CCCACC00CCCACC00CCCECC00CCCECC00D4D2D400D4D2D400D4D2D400D4D6
      D400D4D6D400D4D6D400C4C6C400A4A2A400AC965C00AA7E0C00A8821400AC86
      1400B08A1400B7921C00BC961C00C59E2400C9A22400CCA62400CEAA2400CEAA
      2400D4AE2400D4B53400D6BA3400DCC03C00DCC03C00DCC63C00E3CA4400E4CA
      3C00E4CA3C00E4D64400E6D64C00ECDA4C00ECDC5400ECDC5400ECE25400F0E6
      5C00F0E65C00F0E65C00DCC63C00AC965C0000000000000000003399CC0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF003399CC000099CC0066CCFF0066CC
      FF0004040400336699003399CC000099CC003399CC0066CCCC0066CCFF0066CC
      FF0066CCFF003366CC000033000033FF330099FF9900CCFFCC0099FF99003399
      3300868686000000000000000000000000000000000057697100407DD300486B
      B700417BD0004376C9004279CD00417BD1003F7FD6003E82D9003D84DE003B87
      E2003A89E600398CEA00388FEF003791F3003694F6003496FB003399FF003399
      FF003399FF002D99F9002099EC001399DF000A93C90010799C00383838008888
      8800DCDCDC000000000000000000000000009C9A9C0094969400949694008C8E
      8C008C8E8C009496940094969400D4D6D400FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFAFC00BCBEBC00C4C6
      C400CCCACC00CCCACC00CCCACC00CCCECC00CCCECC00D4D2D400D4D2D400CCCE
      CC00D4D6D400D4D2D400C4C6C4009C9E9C00AD8E4400B2862400B4963C00AC8A
      1C00B08A1400B38E1400BC961C00BC9A2400C59E2400C9A61C00C89E1400ECDA
      A400E4CE8400CEAE1C00D8BA2C00D8B62400DCBE2400D6BA3400DCBE2C00ECDA
      7C00F4EEBC00E4CA3C00E4CE4400ECDA4C00ECDC5400ECDA4C00ECDC5400ECDC
      5400ECE25400ECE25400E4CE4400AD8E440000000000000000003399CC0099CC
      FF0099CCFF0066CCFF0099CCFF0066CCCC003399CC0066CCFF0066CCFF0066CC
      FF003366990099CCCC0066669900333333003939390033669900666699006699
      CC0066CCFF003366CC000033000033CC330099FF9900CCFFCC0099FF990033CC
      330086868600000000000000000000000000000000004E7481003E81D900486C
      B800407DD3004474C4004376C9004279CD00417BD1003F7FD6003E82D9003D84
      DE003B87E2003A89E600398CEA00388FEF003791F3003694F6003496FB003399
      FF003399FF003399FF003399FF003399FF003399FF000D99D900383838008888
      8800DCDCDC000000000000000000000000009C9E9C009C9A9C009C9E9C009C9A
      9C0094929400949294008C8A8C00E4E6E400FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00BCBABC00C4C2
      C400C4C6C400CCCACC00CCCACC00CCCACC00CCCECC00CCCECC00D4D2D400D4D2
      D400D4D2D400D4D2D400C4C6C4009C9E9C00B18A3400AC872C00B99A4400B99A
      4400B18E1C00B38E1400B7921C00BC961400C59E2400CCB24C00D8BE5C00FCFE
      FC00FCFEFC00D4B22C00E0CA6C00E8DA9C00ECE09C00E4D68C00DCBA1400FCFE
      FC00FCFEFC00ECE09C00ECDC5400E6D64C00E4D64400ECDC5400ECDC5400ECDC
      5400ECDC5400ECDC5400E4CE4400AC8A3C0000000000000000003399CC0099CC
      FF0099CCFF0099CCFF0066CCCC003399CC0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF006699CC0099CCCC006699CC003366990033666600333366006666
      9900669999003399CC000033000033CC330099FF9900CCFFCC0099FF990033CC
      33008686860000000000000000000000000000000000305663003C85E100476D
      BA003F80D8004571C0004474C4004376C9004279CD00407CD2003F7FD6003E82
      D9003D84DE003B87E2003A89E600398CEA00388FEF003791F3003694F6003496
      FB003399FF003399FF003399FF003399FF003399FF000D99D900383838008888
      8800DCDCDC000000000000000000000000009C9A9C00A4A2A4009C9E9C00A4A2
      A4009C9E9C00949694008C8A8C00DCDADC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00B4B6B400C4C2
      C400C4C6C400C4C6C400CCCACC00CCCACC00CCCACC00CCCECC00CCCECC00CCCE
      CC00D4D2D400CCCECC00CCCACC0094969400B2862400AC923C00BCA25400C49E
      4400BCA24C00B7921C00B18E1C00B88A0400ECE6CC00F4EDCC00C0920400FCFE
      FC00FCFBF400C49E0400FCF6E400FCFEFC00FCFEFC00FCFEFC00D4B20400FCF2
      D400FCFEFC00E4CA3C00ECE8A400FCF2D400E4D63C00E6D64C00ECDA4C00ECDA
      4C00ECDC5400ECDC5400E4CE4400B286240000000000000000003399CC0099CC
      FF0099CCFF0066CCCC003399CC0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF006699CC009999CC0099CCCC006699CC003399FF000066CC003366
      660033669900336699000033000033CC330066CC6600C0DCC00099FF990033CC
      33008686860000000000000000000000000000000000264D59003D83DD00476E
      BC003D83DD00476FBC004571C0004474C4004376C9004279CD00407CD2003F7F
      D6003E82D9003D84DE003B87E2003A89E600398CEA00388FEF003791F3003694
      F6003496FB003399FF003399FF003399FF003399FF000D99D900383838008888
      8800DCDCDC000000000000000000000000009C9E9C00ACAEAC00A4A2A400A4A2
      A400A4A2A4009C9A9C0084868400BCBEBC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00ECEEEC00BCBABC00C4C2
      C400C4C6C400C4C6C400CCCACC00C4C6C400CCCACC00CCCACC00CCCACC00CCCE
      CC00CCCECC00CCCECC00CCCECC00A4A2A400BC8B1C00B49A5400BCA25400B49A
      5400BCA24C00BCA64C00B48E0C00AC860400ECE6C400FCFEFC00CCB24C00B88A
      0400B88E0400DCCA7400FCFEFC00FCFEFC00FCFEFC00FCFEFC00F1E6B400D4B2
      0400D4B20400E3CA4400FCFEFC00FCF2D400DCCA3400E4D24C00E6D64C00E6D6
      4C00E6D64C00ECDA4C00E4CE4400BC8B1C0000000000000000003399CC0099CC
      FF0066CCFF003399CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCCC006699CC0099CCCC0066CCFF0066CCFF000099FF000066
      CC000033660033666600424242003399330066CC6600C0DCC00099FF990033CC
      330086868600000000000000000000000000000000002D4B5E003C85DE004670
      BD003C86E000486CB900476FBC004571C0004474C4004376C9004279CD00407C
      D2003F7FD6003E82D9003D84DE003B87E2003A89E600398CEA00388FEF003791
      F3003694F6003497FB003399FF003399FF003399FF000D99D900383838008888
      8800DCDCDC000000000000000000000000009C9A9C00B4B6B400A4A6A400A4A2
      A400A4A6A400ACAAAC008C8A8C008C8A8C00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00CCCACC00BCBEBC00C4C2
      C400BCBEBC00C4C6C400C4C6C400CCCACC00C4C6C400CCCACC00CCCACC00CCCA
      CC00CCCACC00CCCACC00C4C6C4009C9E9C00B4821400BCA66400BCA65C00BCA2
      5C00BCA24C00BFA65400B4923400A8820400ECE6C400FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00F4F2CC00E4CA2C00E4CE4400E4D24C00E4D2
      4C00E4D24C00E4D24C00E4D24C00BA86140000000000000000003399CC0066CC
      FF0033CCCC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF003399CC0033CCCC0066CCFF00CCFFFF0099CCFF003399
      FF000066CC000033660039393900555555006699660099CC990066CC660033CC
      330086868600000000000000000000000000FCFCFC002A5E80003B88E4004671
      BF003B89E5004969B400486CB900476FBC004571C0004474C4004376C9004279
      CD00407CD2003F7FD6003E82D9003D84DE003B87E2003A89E600398CEA00388F
      EF003791F3003594F7003497FB003399FF003399FF000D99D900383838008888
      8800DCDCDC0000000000000000000000000094969400C4C2C400A4A6A400ACAA
      AC00A4A6A400ACAEAC009C9E9C0084868400C4C2C400FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F2F400ACAEAC00BCBEBC00C4C2
      C400C4C2C400BCBEBC00C4C6C400C4C6C400C4C6C400CCCACC00C4C6C400CCCA
      CC00CCCACC00CCCACC00CCCACC009C9A9C00B47E0C00C4AE7C00BCA66400BCA6
      5C00BCA65C00BFA65400C0AA5400A47A0400ECE6C400FCFEFC00CCA94C00D6BA
      5C00D6BA5C00DCC26400FCFEFC00E4D69400DCBE4C00F2EED400FCFEFC00DCCA
      5C00E4CE6C00ECDE8400FCFEFC00F4EDCC00E4C22C00E3CA4400E4CE4400E4D2
      4C00E4CE4400E4D24C00E4CE4400B5820C0000000000000000003399CC0066CC
      CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF00336699003399CC0066CCFF00CCFFFF00CCFF
      FF003399FF000099CC0000336600336666005F5F5F009999990066CC660033CC
      330086868600000000000000000000000000F6F6F60026668C00398BE9004278
      CB00398BE9004A67B0004969B400486CB900476FBC004571C0004474C5004376
      C9004279CD00407CD2003F7FD6003E82D9003D84DE003B87E2003A89E600398C
      EA00388FEF003791F3003594F7003497FB003399FF000D99D900383838008888
      8800DCDCDC0000000000000000000000000094929400C4C6C400A4A6A400A4A6
      A400A4A6A400A4A6A400A4A6A4008C8A8C0084868400D4D6D400FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00B4B2B400BCBABC00BCBABC00BCBE
      BC00BCBEBC00C4C2C400C4C2C400C4C2C400C4C6C400C4C6C400C4C6C400C4C6
      C400C4C6C400C4C6C400C4C6C4009C9A9C00B47E0400CCBA8C00BEAA6C00C1AA
      6400BCA65C00BCA65C00CAAE5C00A8820400E9DEC400FCFBF400B48E0C00C59E
      2400C9A22400CCAE2C00FCFEFC00DCCA7400CCAA1C00F4EDCC00FCFEFC00D8B6
      2400DCBE3400E4CE6400FCFEFC00F4EDCC00DCBE2400E3CA4400E3CA4400E3CA
      4400E4CE4400E4CE4400E3CA4400B482040000000000000000003399CC0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF00336699003399CC0066CCFF0099FF
      FF00F0FBFF0033CCFF000099FF00003366003366660055555500669966003399
      330086868600000000000000000000000000C2C2C20027668C003A8DEB004080
      D600355D87003C46610040517A00445C94004669B000476FBC004571C1004474
      C5004376C9004279CD00407CD2003F7FD6003E82D9003D84DE003B87E2003A89
      E600398CEA00388FEF003791F3003594F7003497FB000D99D800383838008888
      8800DCDCDC0000000000000000000000000094969400D4D2D400ACAAAC00ACAA
      AC00ACAAAC00ACAAAC00B4B2B4008C8A8C00949294008C8A8C00A4A6A4009492
      94008486840094929400BCBABC00A4A6A400B4B6B400BCBABC00BCBABC00BCBA
      BC00BCBEBC00BCBEBC00C4C2C400BCBEBC00C4C2C400C4C2C400C4C6C400C4C2
      C400C4C6C400C4C6C400C4C6C4009C9A9C00B47E0C00CEC29C00BCAA7400BEAA
      6C00C1AA6400C1AA6400BCA65C00B08A1400DED6BC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00F4F2CC00DCBE2400DCC63C00DCC64400E4CA
      3C00DCC64400E3CA4400E3CA4400B482040000000000000000003399CC00CCFF
      FF00CCFFFF00F0FBFF00CCFFFF00CCFFFF00F0FBFF00CCFFFF00CCFFFF00F0FB
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00D6E7E70099CCCC003399CC0033CC
      FF0099FFFF00CCFFFF0066CCFF003399FF003366990042424200777777003399
      330096969600000000000000000000000000C2C2C20028688C00408AE0004383
      D6003333330045598F0042527F003E49680039405200363A440039465E003C53
      7A004064A1004272C0004279CD00407CD2003F7FD6003E82D9003D84DE003B87
      E2003A89E600398CEA00388FEF003791F3003594F7000D98D800383838008888
      8800DCDCDC0000000000000000000000000094929400D4D6D400ACAAAC00ACAA
      AC00ACAEAC00ACAAAC00ACAEAC00949694008C8E8C00949294008C8A8C00B4B2
      B400E4E2E400D4D2D4009C9E9C00ACAAAC00ACAEAC00B4B6B400BCBABC00B4B2
      B400B4B2B400B4B6B400BCBABC00BCBEBC00C4C2C400BCBEBC00C4C2C400C4C2
      C400C4C2C400C4C2C400C4C2C40094969400AA7E0400D4CAAC00C4AE7C00C4AE
      7400BEAA6C00C4AE6C00C1AA6400B4923400E4DAB400FCFEFC00DCCD9C00FCFB
      F400FCFEFC00FCFEFC00E1D29400FCFEFC00E8DA9C00B88E0400C49E0400C092
      0400FCFEFC00FCFEFC00FCFEFC00F4EDCC00D4B81C00DCC03C00DCC03C00DCC6
      3C00DCC63C00DCC63C00DCC64400B47E040000000000000000003399CC003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC000066
      990033CCFF0099FFFF0099FFFF0099CCFF009999990066666600868686006666
      660099999900000000000000000000000000C1C1C100326B93004686D6004686
      D600373D4B004969B4004969B4004969B4004969B4004969B4004662A4004258
      8C003E4E740039415300353B450037455A003A5883003B67A3003C78C4003D84
      DE003B87E2003A89E600398CEB00388FEF003791F3000E98D600383838008282
      8200D4D4D400FCFCFC00000000000000000094969400E4E2E400ACAEAC00B4B2
      B400ACAAAC00ACAEAC00B4B2B4009C9E9C008C8A8C0084868400BCBABC00FCFE
      FC00FCFEFC00FCFEFC00FCFAFC009C9E9C00B4B2B400B4B2B400B4B6B400CCCA
      CC00FCFAFC00FCFEFC00BCBEBC00C4C2C400BCBABC00C4C2C400BCBEBC00C4C2
      C400C4C2C400C4C2C400C4C2C4009C9A9C00B47E0C00DED6BC00C4B27C00C4AE
      7C00C4AE7400BEAA6C00C4AE6C00BCA64C00E4D6B400FCFEFC00CAAE5C00D6BA
      5C00F9F6EC00ECDEB400B88E0400FCFEFC00FCFBF400F4E8BC00F2EED400F4E8
      BC00FCFEFC00FCFEFC00FCFEFC00F4EEC400D4B81C00DCC03C00DCC03C00DCC0
      3C00DCC03C00DCC03C00DCC03C00B48204000000000000000000000000009999
      6600C0C0C000DDDDDD00CCCCCC00CC99660099996600CC996600CC9999009966
      66002929290099336600FF669900FF669900FF669900FF999900CC9999008686
      86003366990033CCFF0066CCFF00CCCCCC0099999900CCFFFF00868686004242
      420086868600000000000000000000000000BEBEBE003089BF004888D600446A
      A30038425500476FBD00476FBD00476FBD00476FBD00476FBD00476FBD00476F
      BD00476FBD00476FBD0066A5D5005F98C8004C72A2003D52790039465F003640
      4F0035485E0036588000376AA400387CC900388FEF000E97D500383838007070
      7000BEBEBE00F3F3F30000000000000000009C9A9C00E4E6E400B4B6B400ACAE
      AC00B4B2B400ACAEAC00ACAEAC00ACAEAC007C7E7C007C7E7C00FCFAFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00B4B2B400ACAAAC00ACAEAC00ACAEAC00C4C2
      C400FCFEFC00FCFEFC00B4B6B400B4B6B400BCBEBC00BCBEBC00BCBEBC00BCBE
      BC00BCBEBC00BCBEBC00BCBEBC009C9E9C00B4821400E0DAC400C4B68C00C4B2
      8400C4B27C00C7B27400BEAA6C00BCA65C00E9DEC400FCFEFC00FCFBF4009C6E
      0400D4BE7400B88E0400E1D29400FCFEFC00F9F6EC00E4DCAC00F4E8BC00F1E6
      B400ECDEB400ECE09C00FCFEFC00F4EDCC00CEAE1C00D6BA3400DCBE3400DCC0
      3C00DCC03C00DCC03C00DCBE3400BA8614000000000000000000000000009999
      6600A4A0A000C0C0C000B2B2B200999966006666660086868600A4A0A0009966
      66006633330099666600CC999900FF999900FF999900FF999900FF99CC00CC99
      990086868600336699008686860086868600C6D6EF00C6D6EF0086868600CCCC
      CC0042424200969696000000000000000000A4A4A400338DBF004C8CD600466C
      A3003A5073004474C5004474C5004474C5004474C5004474C5004474C5004474
      C5004474C5004474C5007CD5F0008FF5FF008FF5FF008AECFB006DBBE5004474
      C5004370BC004064A1003C588600394C6B0036404F002A4C5C00343434005353
      5300A7A7A700EAEAEA0000000000000000009C9E9C00E4E6E400BCBABC00B4B6
      B400B4B2B400B4B2B400ACAEAC00BCBABC008482840074767400ECEEEC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00A4A6A400A4A2A400BCBEBC00B4B6B400CCCA
      CC00FCFEFC00FCFEFC00C4C2C400C4C2C400C4C6C400BCBABC00BCBEBC00BCBA
      BC00BCBEBC00BCBEBC00BCBABC00A4A2A400BC8B1C00E4DECC00CCBD9400C4B2
      8400C4B28400CAB67C00C7B27400BCA65C00F0EADC00FCFEFC00FCFEFC00B38E
      1400FCFEFC00AA7E0400FCFEFC00FCFEFC00E1D29400B4820400B88A0400C096
      0400C0960400C0920400F4F2DC00F2EED400CEAE1C00D4B53400D6BA3400D6BA
      3400D6BA3400DCBE3400D4B53400BC8B1C000000000000000000000000000000
      0000999966009999660099996600666666005555550077777700969696004D4D
      4D0066666600A4A0A000C0C0C000CC99CC00CC999900CC999900CC999900F0CA
      A60099666600999999007777770066666600D6E7E70086868600EAEAEA0099CC
      FF00336699000033330000000000000000008C8C8C003690BF004F8FD6003F4C
      70003B567F004279CC004279CC004279CC004279CC004279CC004279CC004279
      CC004279CC004279CC006FCCF5007AE0FF007AE0FF007AE0FF006CC6F2004279
      CC004279CC004279CC004279CC004279CC004279CC004279CC003B5B89004646
      4600A6A6A600EAEAEA0000000000000000009C9A9C00E4E2E400C4C2C400B4B6
      B400B4B6B400B4B2B400B4B2B400B4B6B400949694007C7A7C0094969400FCFE
      FC00FCFEFC00FCFEFC00E4E2E4009492940094969400FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F2F400B4B2B400BCBABC00BCBA
      BC00BCBABC00BCBABC00B4B6B4009C9A9C00B2862400E4DECC00CCC2A400CCBD
      9400C4B68C00C4B28400CAB67C00BEAA6C00ECE6D400FCFEFC00FCFEFC00DCD2
      A400AA7E0400BCA64C00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00F1E6B400CEAE1C00D4B53400D4B53400D4B5
      3400D4B53400D4B53400D4B22C00AC872C000000000000000000000000000000
      00000000000086868600777777005F5F5F005F5F5F0077777700000000008686
      860086868600B2B2B200D7D7D700C0C0C000CC99990099669900CC999900CC99
      9900868686000000000033CC33006699990055555500EAEAEA00CCFFFF00CCCC
      FF006699FF003366990029292900000000008B8B8B003992BF005292D6004157
      7A003C67A200407ED400407ED400407ED400407ED400407ED400407ED400407E
      D400407ED400407ED4004C96E00053A4E80056A9EB0060BCF50058ADED00407E
      D400407ED400407ED400407ED400407ED400407ED400407ED400395984004949
      4900B2B2B200F0F0F00000000000000000009C9E9C00E4E6E400C4C6C400BCBE
      BC00BCBABC00B4B6B400B4B2B400BCBABC00B4B2B400747674007C7A7C008486
      8400BCBABC00A4A6A4008C8A8C009C9E9C0094929400FCFEFC00FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00F4F6F400B4B2B400B4B6B400BCBA
      BC00B4B6B400BCBABC00B4B2B4009C9E9C00AC8A3C00E9DEC400D4CAAC00CCBE
      9C00CCBA8C00C4B68C00C4B28400CCB67400CAB67C00FCFEFC00FCFEFC00FCFE
      FC00B18E1C00F2EED400FCFEFC00FCFEFC00E4DCAC00D0B65400D6BA5C00D6BA
      5C00DCC25C00D8BE5C00DCC66400C9A61C00D4AE2400D4B22C00D4B53400D4B2
      2C00D4B53400D4B53400CBAA2C00B18A34000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086868600A4A0A000C0C0C000A4A0A000868686008686860096969600A4A0
      A000000000003399330033CC330033FF33009696960099CCCC009999CC00C6D6
      EF00CCCCFF006699FF006666CC00000000008787870042A8D900496A9E00383C
      4A00839DBE0078A9E6006BA1E4003E82DB003E82DB003E82DB003E82DB003E82
      DB003E82DB003E82DB003E82DB003E82DB003E82DB003E82DB003E82DB003E82
      DB003E82DB003E82DB003E82DB003E82DB003E82DB003E82DB00385B87005858
      5800BBBBBB00F5F5F50000000000000000009C9A9C00DCDEDC00D4D2D400C4C2
      C400BCBEBC00BCBABC00B4B6B400B4B6B400BCBABC00949694007C7A7C008482
      8400848684008C8A8C00949294009C9A9C0094969400ACAAAC00A4A6A400C4C2
      C400FCFEFC00FCFEFC00BCBABC00BCBABC00B4B6B400B4B6B400B4B6B400B4B6
      B400B4B6B400B4B6B400ACAEAC009C9E9C00AD8E4400ECDABC00DCD2BC00D4C6
      A400CEC29C00CCBD9400C4B28400CBB68400C4AE7400DCD2A400FCFEFC00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00A8820400B4920C00BC961400C49A
      1400C89E1400C4A21C00C9A61C00CBAA2C00CCAE2C00D4AE2400CCAE2C00D4AE
      2C00D4B22C00D4AE2C00CCA62400AC8E4C000000000000000000000000000000
      0000000000009999660099663300666633006666330000000000000000000000
      0000000000009696960096969600868686007777770077777700969696000000
      0000000000000066330066CC660099FF990066FF660033CC3300336699006699
      CC00CCCCFF00CCCCFF00C6D6EF00000000005D5D5D00303F4800365982005E8F
      C900A8CCF500C9E2FA00DDF1FC00EFFFFF00D4F0FC00BBE1F8008EC4F20078B5
      EE0062A6EB003B89E6003B89E6003B89E6003B89E6003B89E6003B89E6003B89
      E6003B89E6003B89E6003B89E6003B89E6003B89E6003B89E600365376005C5C
      5C00C4C4C400F9F9F9000000000000000000A4A2A400D4D6D400DCDADC00C4C6
      C400C4C2C400BCBEBC00BCBABC00B4B6B400BCBABC00BCBEBC007C7E7C007C7A
      7C00848684008C8E8C0094929400949694009C9A9C009C9E9C009C9A9C00B4B6
      B400FCFEFC00FCFEFC00ACAEAC00ACAEAC00B4B2B400B4B2B400B4B2B400B4B2
      B400B4B2B400B4B6B400ACAAAC009C9E9C00AC965C00E0D2B400E0DAC400DCCA
      A400CCC2A400CEC29C00CCBD9400C4B68C00CBB68400C4AE6C00D4C69400D4C2
      9400DCCD9C00E0CEA400D4C69400AC8A0C00B48E0C00BC961C00C09A1C00C59E
      2400C59E2400C9A22400CCA62400CCA62400CBAA2C00CBAA2C00CBAA2C00CCAE
      2C00CBAA2C00D4AE2C00CC9E1C00AC965C000000000000000000000000000000
      000099666600CC993300FFCC6600CCCC66009999330066663300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003366330066996600EAEAEA0099FF990033CC3300008000003366
      990033669900D6E7E700000000000000000033333300365A830036608F003876
      BC00387CC800398DEC00398DEC00398DEC0065AAF1006EB1F2008DC7F600A9DC
      FA00B9EAFC00D3FFFF00C5F8FE00A5E2FA0088CDF60074BEF30059A9EF004194
      ED00398DEC00398DEC00398DEC00398DEC00398DEC00398DEC00344A61006666
      6600CDCDCD00FEFEFE000000000000000000A4A6A400D4D2D400DCDEDC00CCCA
      CC00C4C6C400C4C2C400BCBEBC00BCBEBC00B4B6B400BCBABC00BCBEBC009C9A
      9C007C7E7C007C7E7C00848684008C8A8C008C8E8C009496940094929400ACAE
      AC00F4F6F400F4F6F400ACAAAC00ACAEAC00ACAEAC00B4B2B400B4B2B400B4B2
      B400B4B2B400B4B2B400A4A6A400ACAAAC00B29E7400DCC69C00E8E2D400D9CE
      B400D4CAAC00CEC29C00CEC29C00CCBD9400C4B68C00CBB68400CAB67C00B99A
      44009C720400946A04009C760400AA7E0400AC8A0C00B48E0C00B8921400BC96
      1400C49A1400C49E1C00C4A21C00CCA62400CCA62400CCA62400CEAA2400CCA6
      2400CBAA2C00CEAA2400C09A1C00B29E74000000000000000000000000000000
      000066663300CCCC6600F0CAA600FFCC9900FFCC660099663300000000000000
      0000000000000000000099666600CC666600CC66660066666600000000000000
      00000000000066996600336633006699660066CC660033CC3300339933000000
      000000000000000000000000000000000000D6D6D600ACACAC00909090006B6B
      6B005E5E5E0033333300343F4B00344A6300315D96002361CC00317AD1003680
      D0003693F5003693F50049A0F6005BAEF8007DCAFC0082D1FC0099E5FD00AEF8
      FF00AAF8FE0090E3FC007ED5FA006DC8F80050ADF60043A0F500344B63008080
      8000D7D7D700000000000000000000000000B4B2B400C4C2C400E4E6E400CCCE
      CC00CCCACC00C4C6C400C4C2C400BCBEBC00BCBABC00B4B6B400BCBABC00BCBE
      BC00BCBABC00BCBABC00B4B2B400B4B2B400B4B2B400ACAEAC00B4B6B400ACAE
      AC00A4A6A400ACAAAC00ACAEAC00B4B2B400B4B2B400ACAEAC00ACAEAC00B4B2
      B400ACAEAC00B4B2B400A4A2A400ACAEAC00B4AA9400D4BA8400ECE6DC00DCD2
      BC00D9CEB400D4CAAC00D4C6A400CEC29C00CCBD9400CCBA8C00CBB68400D0BE
      8C00D4BE8400CCBA7C00CDB26C00CCAE6400CCAE6400CAAE5C00C7AE5400C0AA
      5400C4AA4C00CCAA4400CCA63C00CCA43400CBAA2C00CCA52C00C9A22400CCA6
      2400CCA62400CCA62400C4921400B4AE94000000000000000000000000000000
      000066663300CCCC9900FFECCC00F0CAA600FFCC6600CC993300000000000000
      00000000000099666600CC669900FF999900FF999900CC666600666666000000
      0000000000000000000033993300336633000080000033993300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000075757500243B7700123CB40019358D003535
      350033333300333F4C00344C6400345E8900346496002A74D2002A7ADF003497
      FC003C9EFC0052B2FD005FBFFE006BCCFF0083E6FF0080D9E60033333300B3B3
      B300E9E9E900000000000000000000000000C4C2C400BCBABC00ECEEEC00D4D2
      D400D4D2D400CCCACC00C4C6C400C4C2C400C4C2C400BCBABC00B4B6B400BCBA
      BC00B4B6B400B4B6B400B4B6B400B4B2B400B4B2B400B4B2B400ACAEAC00B4B2
      B400B4B2B400ACAEAC00B4B6B400B4B2B400ACAEAC00B4B2B400B4B2B400ACAE
      AC00ACAEAC00ACAEAC00A4A2A400C4C2C400C4BEAC00C1AA6400F4EEE400E0DA
      C400DCD2BC00D9CEB400D4CAAC00D4C6A400CEC29C00CCBD9400CCBA8C00CBB6
      8400D4BA8400CCB67400C7B27400CDB26C00CCB36400CCAE6400CCAA5C00C7AE
      5400CCA94C00CCAA4400CCAA4400CCAA3C00CCA43400CBAA2C00CCA52C00C59E
      2400C9A22400C4A21C00BC8A0C00C4BEB4000000000000000000000000000000
      00006666660099996600CCCC9900CCCC6600CC99330099996600000000000000
      0000000000005F5F5F00CC999900FFCCCC00FFCCCC00FF999900993366000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C00224593001649C4001C3E99003939
      3900E8E8E8000000000000000000E8E8E80039393900040C760002056C002929
      3D0033404D00334D660033608C003359800033404D004E4E4E008F8F8F00ECEC
      EC00FAFAFA00000000000000000000000000D4D6D400ACAEAC00F4F2F400D4D6
      D400D4D6D400D4D2D400CCCACC00C4C6C400C4C6C400BCBEBC00BCBEBC00BCBA
      BC00B4B6B400BCBABC00B4B2B400B4B6B400B4B2B400B4B6B400B4B2B400B4B6
      B400ACAEAC00B4B2B400B4B2B400ACAEAC00B4B2B400ACAEAC00ACAEAC00ACAE
      AC00ACAAAC00ACAEAC009C9E9C00D4D6D400D4D2CC00BC9E4C00F9F6EC00E4DE
      CC00E0DAC400DCD2BC00D9CEB400D4CAAC00D4C6A400CEC29C00CCBD9400CCBA
      8C00CBB68400CBB68400CAB67C00C7B27400CDB26C00CCB36400CAAE5C00CAAE
      5C00C0AA5400CCA94C00CCAA4400CCA64400CCA63C00CCA43400CCA52C00CCA5
      2C00CC9E1C00C59E2400BC860C00D7D6D4000000000000000000000000000000
      0000000000006666660066663300666633009966660000000000000000000000
      00000000000055555500A4A0A000E3E3E300FFCCCC00FF999900CC6666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C002252B3001A55D4001C4BB9002C38
      57002C385600333333003434340038383800353535000719860005117D002729
      44006A6A6A00A4A4A40000000000000000000000000000000000FEFEFE000000
      000000000000000000000000000000000000000000009C9E9C00F4F6F400E4E2
      E400DCDADC00D4D6D400D4D2D400CCCACC00CCCACC00C4C2C400C4C2C400BCBA
      BC00BCBABC00B4B6B400B4B6B400B4B6B400B4B6B400B4B2B400B4B2B400ACAE
      AC00B4B2B400B4B2B400ACAEAC00ACAEAC00B4B2B400ACAEAC00B4B2B400ACAE
      AC00ACAAAC00ACAAAC009C9A9C000000000000000000BA861400F9F6EC00E8E2
      D400E4DECC00E0DAC400DCD2BC00D9CEB400D8CEAC00D4C6A400CEC29C00CCBD
      9400CCBA8C00CBB68400CAB67C00C4B27C00C7B27400CDB26C00CCAE6400CAAE
      5C00CCAA5C00C0AA5400CCA94C00CCA64400CCA63C00CCA63C00CCA52C00C59E
      2400C59E2400C09A1C00B5820C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007777770077777700A4A0A000C0C0C000CC669900CC6699000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D8D8D005099C90061C5FD001C5ADB001A53
      D100174BC7001544BD00123CB40017359500183087000B259600091E8D00282C
      480070707000D0D0D00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A6A400BCBEBC00F4F6
      F400ECEEEC00E4E2E400DCDEDC00D4D2D400CCCECC00C4C6C400C4C6C400C4C2
      C400BCBEBC00BCBABC00BCBABC00B4B2B400B4B2B400B4B6B400B4B2B400B4B6
      B400B4B2B400ACAEAC00B4B2B400B4B2B400ACAEAC00B4B2B400ACAEAC00ACAE
      AC00ACAAAC009C9E9C00A4A6A4000000000000000000B49E6C00CCAA5C00F9F6
      EC00F4EEE400ECE6DC00E9E2CC00E0DAC400D9CEB400D4CAAC00D4C6A400CEC2
      9C00CCBD9400CCBA8C00CBB68400C4B27C00C7B27400C4AE7400CDB26C00CCAE
      6400CAAE5C00CCAA5C00CCAA5400CCA94C00CCA64400C49E3C00CCA63C00CCA5
      2C00C09A3400BC860C00B29E7400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000077777700555555005F5F5F0099666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008686860045708B00519ACA002458BA001E5C
      D5001B57D7001950CD001648C3001441BB001139B0001032A7000D2A9D002930
      4C0082828200D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A2A4009C9E
      9C00B4B6B400C4C6C400CCCECC00DCDADC00E4E2E400E4E6E400E4E6E400E4E6
      E400E4E2E400DCDEDC00DCDEDC00D4D6D400D4D2D400CCCACC00C4C6C400BCBE
      BC00BCBABC00B4B6B400ACAEAC00ACAAAC00A4A6A400A4A6A400A4A2A4009C9E
      9C009C9A9C00A4A6A40000000000000000000000000000000000AC966C00BC8C
      1400CCA24C00CCB67400D4BE8400DCD2A400E4DAB400E9DEC400ECE6CC00E8E2
      D400E9E2CC00E9E2CC00E0DAC400DED6BC00D8CEAC00DCCAA400D4C29400D4BA
      8400C7B27400CCAE6400BCA64C00C49E3C00C09A3400C4962400BC8B1C00BC8C
      1400B5820C00B29E740000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BBBBBB00929292008D8D8D005F5F5F005E5E
      5E004747470031353D002D3B5A002C385700273865002338740021326D002C32
      4800B8B8B800E8E8E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCACC00B4B6B400ACAEAC00A4A2A4009C9E9C009C9A9C009C9A9C009C9E
      9C009C9E9C009C9A9C009C9A9C00949694009C9A9C009C9A9C009C9E9C00A4A2
      A4009C9A9C009C9A9C009C9A9C009C9E9C00A4A6A400ACAAAC00BCBEBC00D4D2
      D400000000000000000000000000000000000000000000000000000000000000
      0000CCCAC400BCB29C00B4A28400AC966C00AC925400AC8A3C00AC872C00B486
      1C00BA861400B5820C00B47E0400B5820C00B47E0400B5820C00B5820C00BC8C
      1400B2862400B18A3400AD8E4400AC925400AC9A7400B4A28400C4BAAC00D4D2
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00E3E3E300C8C8C900C1C1C300C0C0C200C5C5
      C700DCDCDC00F8F8F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900A2A2A200B6B6B600000000000000000000000000000000000000
      0000FCFCFC00EFEFEF00DEDEDE00D4D4D400E8E8E800F7F7F700FDFDFD00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FCFCFC00FDFD
      FD00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F0F000878F9B0027569C002157A7002157A7002556
      A00065758F00E7E8E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500D9D9D900B5B5B500A4A4A400F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00E6E6E600CBCB
      CB00909191006C6D6D00C3C3C300000000000000000000000000FCFCFC00F1F1
      F100DEDEDE00ABB0B1005E6F77005163700090949900CECECF00E5E5E500F2F2
      F200F8F8F800FCFCFC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900E9E9E900DBDBDB00D8D8
      D800E0E0E000E8E8E800EFEFEF00F3F3F300F9F9F900FCFCFC00FDFDFD000000
      0000000000000000000000000000FDFDFD00FCFCFC00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00F9F9F900CBCCCC00F4F4F400FAFBFB00FAFB
      FB00FBFBFB00FCFCFD00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F1F1F200F0F1F100FBFB
      FB000000000000000000E7E7E7005A6F8D000560DA000268F1000269F2000461
      DE0047668F00DEDEDF000000000000000000FAFAFA00F2F2F200F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F3009C9C9D00A9A9A900A2A2A2005B555100624C3C005853
      4E00A5A5A500EEEEEE0000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00C9C9C900A9A9A900909090005D65
      710053667D00AEAEAE00000000000000000000000000F6F6F600E4E4E400B2B5
      B70060707A00286A8000148EB600106EBE00204781005C647100B0B1B300CDCD
      CD00DCDCDC00EBEBEB00F7F7F700FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00C7C7C7009A9796008984
      820094908D00A19F9D00B0AFAE00BDBDBC00C9C9C800D4D4D400DEDEDE00E6E6
      E600EDEDED00F1F1F100EFEFEF00D5D5D500A7A8A9009FA0A2009EA0A1009EA0
      A1009EA0A1009EA0A1009EA0A1009A9C9D004C525500909CA20097A3AA0098A4
      AB009AA5AC00B9BDBF00E5E6E600FBFBFB000000000000000000000000000000
      0000000000000000000000000000F8F8F800D8D8D9008B929C007C879600D4D4
      D500F8F8F800FCFCFC00DDDEDE004B698F00036AE8000074FC000073FC00036A
      E80049699000DCDDDD00FCFCFC00F4F4F500CBCBCC007C879700B6B8BA00EFEF
      F000FEFEFE00000000000000000000000000000000000000000000000000FCFC
      FC00DDDDDD00858585006363630069696900646362006E6864009B7A6100A47F
      610070543F00544D480099999900E8E8E8000000000000000000000000000000
      000000000000EDEDED00AEAEAE00929292008E8E8E0070727700394863005276
      A1006D767E0000000000000000000000000000000000E6E6E600828B8D003165
      76001373B000059CDD0001B5F0000082F1000560DE0017499500565D6900B7B7
      B700CFCFCF00D2D2D200DDDDDD00EDEDED00F9F9F900FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA009D9490009F563400C764
      2B00B8632F00A45F3400915D3E0082614B007F6B5E00837A7300918D89009F9B
      9900AEACAB00B8B8B700A2A2A20073737300858686008A8B8B008B8C8C008C8C
      8C008B8C8C008B8C8C008A8B8B00797C7D0021425200068ED0000693D8000693
      D8000690D6000B82C300708B9A00E7E7E7000000000000000000000000000000
      00000000000000000000F3F3F300C7C8C9005E738C000C61C3000A61C6006073
      8B00C6C7C800D7D7D800A9ACAF00315E92000273EF00027AFD00027AFD000272
      ED003D628C00BBBCBE00E1E1E100BCBDBF0049688E00095DC7002E5E9900B1B4
      B600F0F0F000000000000000000000000000000000000000000000000000F9F9
      F9008C8C8C00616161006A6A6A005E5E5E00646362006B564600895F41009371
      5800AB866B00AE8668007B5D4500554C45007C7C7C00D0D0D000000000000000
      0000CBCBCB00949494008D8D8D00858586004F57670024406D00527DAD00728C
      A200C6C6C600000000000000000000000000FEFEFE00D6D6D600446770000B9A
      C0000194EB0000A6F50000B9FD000087FF000066F8000957CA003D4C6300ACAC
      AC00CECECE00CDCDCD00CECECE00D3D3D300E0E0E000F1F1F100FAFAFA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA009D695100E4763000F787
      3000F6893000F2863000ED823000E77D2F00E0772F00D7702E00C1662D00A960
      3300935D3B00825F48006B60570094939200A7A7A700ACACAC00ADADAD00ACAC
      AC00AAAAAA00A5A5A5009B9B9B00828586001954660008B6EB0003BFF90003C1
      FB0003BFFB0003B0F2001185BA00CBCDCE000000000000000000000000000000
      000000000000F0F1F100B4B6B80040679100076EDA00047BF200047AF100076B
      D600436488004A698C001B5FAF00046FE200037DF8000481FD000481FD00027A
      F5000A69D100356297006D79860036629600046CDF000377F100046EE2003362
      9700BBBCBD00F6F6F6000000000000000000000000000000000000000000C4C4
      C4007F7F7F0078787800636363005B5A59005D5B5A006D554400845739008759
      3900885E4100936F5500AD886C00B78D6D0087664C00463B3300696969008989
      8900888888008E8E8E00666771002B3E5E00274C8000507DAE008AAFD0007B80
      850000000000000000000000000000000000FEFEFE00D1D2D20044707B0006A2
      CF00009BF40000A7F70000B8FD000086FF000067FD000855CA0040506800ADAD
      AD00CECECE00CDCDCD00CCCCCC00CDCDCD00CFCFCF00D5D5D500E8E8E800F8F8
      F800FDFDFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F2F200AF715100F0823000FD8F
      3200FE913200FE913200FE913200FC8F3200FC8F3200FA8D3100F88B3100F487
      3000EE833000DC7A310099755900A6A4A200B7B7B700BBBBBB00BBBBBB00B4B4
      B4009B9B9B00666666005A5A5A00444949001D41480014859C0010C8EC0010D6
      FC000FD7FE000BCAF9000C9CCE00B8BDBF000000000000000000000000000000
      0000FDFDFD00CACBCD002F6195000772DB000683F6000789FC000788FC000581
      F6000378EC000374E900037AF2000481F9000687FD000688FE000687FE000585
      FC00037DF7000374EB000470E2000476EC000480F8000583FC00047EF500076A
      D2005C748F00EAEAEA0000000000000000000000000000000000CECECE009696
      9600959595007D7D7D0066656400656564005B534C0067584D006C5544007C52
      36008658380087573700885B3C00946D5100AD86690096735900503D2F00241B
      14003A39390043697B0015416F002D518600507FAF007EA8CE008399AA00C8C8
      C80000000000000000000000000000000000FEFEFE00D2D3D300446F7A0007A0
      CF000097F40000A6F60000B8FD000086FF000066FC000855CA0041506800AEAE
      AE00CFCFCF00CDCDCD00CCCCCC00CCCCCC00CCCCCC00CDCDCD00D1D1D100E0E0
      E000F6F6F600FCFCFC0000000000FDFDFD00FCFCFC00FCFCFC00FEFEFE000000
      000000000000000000000000000000000000F5F5F400B4785400F2863100FE92
      3300FF933300FF933300FE933300FE933300FE933300FE933300FE923300FE92
      3300FD913300EC893400A5816100B0ADAC00BFBFBF00C3C3C300C3C3C300B1B1
      B1006A6A6A009A9A9A00AFAFAF0071797A00298795001F9AAC001DA3B7001FDF
      FC001EE0FE0019D5FB0011A7D300ABB2B4000000000000000000000000000000
      0000FDFDFD00D5D6D600466B8E000A79DB000A8BF6000B90FD000B90FD000A8F
      FD00098CFD00088AFD00098CFD00098EFD000A8EFE000A8EFE000A8EFE00098D
      FE00088CFD000789FD000687FC00078AFD00088BFD000889FA000880EB001A67
      B2009CA1A600F2F2F200000000000000000000000000DDDDDD00AAAAAA00BBBA
      BB00A4A5A5008E8E8E00868482006A646000745E50006B584C0065574C006752
      4300784F34008657370087583700794C2E0068442B006A4C38007C5E49007658
      42002B5E660030B9DA00238EBF004C76A8006C9DC5009DBED900808589000000
      000000000000000000000000000000000000FEFEFE00D2D3D300446F7A00079E
      CF000096F40000A6F60000B8FD000085FE000066FC000855CA0041516900AEAE
      AE00CFCFCF00CDCDCD00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CDCDCD00D0D0
      D000DDDDDD00F0F0F000ECECEC00DCDCDC00C1C1C100D7D7D700F2F2F2000000
      000000000000000000000000000000000000F5F5F500B57A5500F28A3500FE97
      3700FF973800FF973800FF973800FF973800FF973800FF973800FF973800FF97
      3800FD963700ED8F3800A8876600B5B3B100C5C5C500C9C9C900C9C9C900C4C4
      C400C1C1C100C1C1C100B9B9B900636F710039B2C00031DFF50030E2F80030E6
      FC002FE6FE0026DCFB0018AED300A3ACAD000000000000000000000000000000
      000000000000F6F6F600C0C2C300456F92000D84E5000E94FA000F97FE000F96
      FE000F96FE000E95FE000E95FE000E94FD000E94FC000D93FB000D93FC000D93
      FD000D93FE000C93FE000C92FE000C92FE000B92FD000B89F1001D6FB600929A
      A000E6E6E700FDFDFD00000000000000000000000000EEEEEE00D0D0D000D1D1
      D100B8B9B900B4B2B200A09F9E0076685E007C604E007D645300755F50006B5B
      4F006A544500714B31006C462A006541280065412800673F2400683D22003E68
      6C003EB6D5001BD5FF0001C6FB004CC3EB0096C0DF007C92A300C0C0C0000000
      000000000000000000000000000000000000FEFEFE00D2D3D300446F7A00079D
      CF000095F40000A5F60000B5FB00007EFB000063F9000854C90041506800AEAE
      AE00CFCFCF00CDCDCD00CCCCCC00CDCDCD00CDCDCD00CECECE00CDCDCD00CACA
      CA00C6C6C600BBBBBC009EA1A2006C73770053595C0070717100DCDCDC00FBFB
      FB0000000000000000000000000000000000F5F5F500B67D5600F28F3A00FE9C
      3D00FF9C3E00FF9C3E00FF9C3D00FF9C3D00FF9C3D00FF9C3D00FF9C3D00FF9C
      3D00FD9B3C00ED933E00AB8B6A00BAB8B600CBCBCB00CFCFCF00CFCFCF00CFCF
      CF00C8C8C8009B9F9F00838A8B003F53550049D2E20043EBFC0043ECFE0042EC
      FE0041EBFE0035E2FB001FB2D400A8B0B1000000000000000000000000000000
      000000000000FEFEFE00ECECEC0095999D00166FB8000E93F900139CFE00149D
      FF00149CFE00139BFD00129AFA001095F1000D88D9000C87D2000D87D8000F94
      F1001198FA001199FD001199FE001199FE000F96FD000B84E80062768400D9D9
      DA00FAFAFA000000000000000000000000000000000000000000FAFAFA00CFCF
      CF00DBDBDA00DAD9D800ACA9A70096887F00836B5A007B604E00816653007B63
      520067574C00614F430062422B0066402600664026006C3D20003C5C5B0037AE
      CC0020D4FF0000C9FF0028D5FF00AAF3FF00C4E8F80074706D004B4A4900A1A1
      A100EBEBEB00000000000000000000000000FEFEFE00D2D3D300456F7A00079F
      CF00009DF60000AEF90000B9FB00007CF100005FF000094EC10044516900B2B2
      B200D0D0D000CDCDCD00CDCDCD00CECECE00CECECE00CACACA00C1C1C100ADAE
      AE007E82840054606700547588006796AD00677A83004C4F4F00AFB0B000EFEF
      EF00FCFCFC00000000000000000000000000F5F5F500B67E5800F3933F00FEA1
      4300FFA14400FFA14400FFA14300FFA14300FFA14300FFA14300FFA14300FFA1
      4300FDA04200ED984300AD8F6E00BFBDBB00D1D1D100D4D4D400D3D3D300D2D2
      D200C7C7C7004D595A004C8D9200469EA50057E7F30055EDFB0054EEFB0055EE
      FC0054F0FE0045E6FB0027B8D400AFB7B7000000000000000000000000000000
      000000000000FDFDFD00DBDCDC005A758C00067FE1001096FA0019A2FE0019A2
      FE0019A1FD00179EF6000E8ACE000396C80001AFDF0000B5E60001AFDF000395
      C7000F8CD300159DF900169FFD00169FFE00149CFD000C89EB003D6C9300BEBF
      C100DBDBDC00E6E6E700F8F8F80000000000000000000000000000000000A0A0
      9F00DEDBD900E0E1E100CBC2BC00BEAFA500A594880082685700705849006352
      46005D4F440060524800604F430062402A006F3E1F00455B560037AAC70025D4
      FE0000CAFF001FD0FF00A9F1FF00BEE9F200B5A59300DFBBA100BCA492005A4E
      47004341400097979700E6E6E60000000000FDFDFD00D1D2D200436D790006A0
      CF0000BDFB0000C3FD0000C1FC0000A8FA00006DF5000746BF00404E6600BEBE
      C000D4D4D400D2D2D200CECECE00C9C9C900BFBFBF00A5A6A70073777A004D5B
      62004C6C7E006094B20071B6DB0079B8D8006E949C00506163008B8D8D00D2D2
      D200F0F0F000FAFAFA00FEFEFE0000000000F5F5F500B6815A00F3984400FEA5
      4900FFA64A00FFA64A00FFA64A00FFA64A00FFA64A00FFA64A00FFA64900FFA5
      4900FDA54900ED9D4A00B0937300C4C2C000D7D7D700D7D7D700B5B5B5009B9B
      9B00C5C5C500676F71006ED0D6006CEDF60069EEF8005DD6DE0048A9B00065E6
      EF0069F2FC0056EBFB002FBDD500B2B9BA000000000000000000FBFBFB00F3F3
      F300EEEEEF00E4E4E5009EA2A6001271BD000B90F3001AA3FD001FA8FE001FA7
      FD001DA3F6000D8CC30001B1E00001C0F20001BDEE0001BBEB0001C0F10001C1
      F20001A7D600138FD4001AA4FA001BA5FE001AA3FD001397F6001279CB003E6A
      8E0046709000647C8F00DEDEDE00000000000000000000000000C1C1C100A49E
      9A00BCB7B300B5B0AC00E8DCD400DDCEC400BDB0A60096898000594B42005546
      3C005D4D42005C4E430062524700795744004D60590033A2BE0029D3FD0000CB
      FF0018CFFF00A1EFFF00C3F0F80099846E0085461D00935F3A00C3987800EAC6
      AD00C3AA970062564C0042403F00D2D2D200F7F7F700BBBDBE003364730004A7
      D60000C8FD0000C9FE0000CAFE0000B5FE000078FB00045BDD00224986008084
      8A00DFDFDF00DFDFDF00C1C1C1009FA1A200686E71004C5B63004D6F81005686
      A1005F99BA006CAFD50078C2EB007ABBD80069A1A900516D70006B6E6F00C2C2
      C200D6D6D600EBEBEB00FAFAFA00FEFEFE00F5F5F500B6845B00F39D4900FEAA
      5000FFAB5100FFAB5100FFAB5100FFAB5100FFAB5000FFAB5000FFAA5000FFAA
      5000FDA94F00EDA25000B2977900C9C8C600DEDEDE00DBDBDB006E6E6E002E2E
      2E00C0C0C000919797006CACAF0084F1F70080F1F700447F8200243233005FB0
      B5007FF3FB006AEFFB0037C2D500B4BABA0000000000FBFBFB00D3D4D4008C96
      9D0075869200667C8D00316B9500088AE80019A1FB0025ADFD0026AEFE0025AD
      FA001691CD0001B2E20001BFF00004A7D1001E85A6002A7F9C000F90B60002BA
      E90001C0F2000795C50020A4F20021AAFD0021AAFE001EA5FC00179CF6001595
      EF00158EE2002A71A400C8C9CA00FDFDFD0000000000EAEAEA0089868400DCD5
      CF00938A8400A8785600CFB39F00E4DBD600CDC5BF00ABA49F007A726E005749
      3F0057483D0066534500805D4800576C690033A0BC002ED2FB0000CCFF0012CD
      FF0099EDFF00C6F5FD009C8C7A00884A20008B522B00894F280083492200935B
      3500C5957200EEC8AC00C1A9970069777600F2F2F2009AA0A2002479930002B2
      E40000C5FE0000C9FF0000CBFF0000B5FF00007AFE000163F1000E55BA004C5A
      6D00BEBFC000B1B2B3006D7378004E657100588298005B8FAB005F98B800619E
      C00063A1C3006BAED40078C2EB0077B8D40060ACB3004F777B00565A5B00B5B5
      B500D1D1D100D7D7D700F1F1F100FEFEFE00F5F5F500B6855D00F3A15000FEAF
      5700FFAF5800FFAF5800FFAF5800FFAF5700FFAF5700FFAF5700FFAF5700FFAF
      5700FDAE5600EEA65600B59B7D00CECDCB00E3E3E300E2E2E2007A7A7A004343
      4300CBCBCB00BFC1C100618284009CF0F4009AF3F800598689003B45460076B7
      BA0099F6FB007EF2FB0041C6D600B4BABA0000000000F3F3F3008A959C00147D
      C4001891DD001995E300199CEE001DA5F80029B0FD002EB4FE002EB3FD0029AA
      EF00079DC90001C1F20004A9D300448399009DB4BA00B0C2C7006E96A2000E94
      BA0001C1F20002ACD900219EE00028AFFC0028B0FE0027AFFE0026AEFD0025AD
      FD0022A5F3002D7AAF00C4C6C700FDFDFD00FBFBFB008B8A8A00D3CBC500B4B1
      AE0099786100A7673B00764E3100A1928700D8D3D000C5BEBA00AFA8A3008A7F
      78006E574600815B4400576762002E99B40031D1F80000CCFF000BCCFF008FEA
      FF00C6F7FF00948E820080451E0089502900854F29008A51290095562C009756
      2900874A1F00975A3100CC946C007E736A00EEEEEE00979FA2001F84A30000B9
      EC0000C4FF0000C7FF0000CAFF0000B4FF00007AFF000066F8000651BD002D42
      5E00565C60005F737E006D98AF0075B3D40075BCE2006AACD00065A4C70065A4
      C70068A9CD0073BCE40079C3EB0072B9D20058B6BB00518387004E555700ADAD
      AD00D6D6D600E8E8E800F6F6F600FEFEFE00F5F5F500B7885E00F3A65500FEB3
      5E00FFB45F00FFB45F00FFB45F00FFB45E00FFB45E00FFB45E00FFB45E00FFB4
      5E00FDB35D00EEAB5C00B79F8100D3D1D000E9E9E900EBEBEB00D6D6D600BDBD
      BD00E6E6E600DADBDB00606D6D00B4EDEF00B5F7FA00A7E3E50090BEC000AFEE
      F000B3F9FD0092F5FB004ACAD600B7BCBC0000000000ECECEC006C839200249C
      E20032B5FA0034B8FC0034B8FD0035B9FD0037BAFE0037BAFE0035B9FC00279E
      D50003B4E20001C0F100188BB00098AEB400EAEDED00F1F2F300ABBBBF002583
      A10001BDED0003B2E000259CD70030B5FC0030B6FE002FB5FE002FB5FD002DB3
      FD0029AAF3002F7EB000C4C6C700FDFDFD00C3C3C300ACA6A100D9D2CD008B81
      7B00855A3C006D493100623E25006441280097857900D3CDCA00D5CBC300C5B6
      AB00A48776004E5A55002B92AC0034CEF40000CEFF0007CBFF0085E7FF00C7F8
      FF00BDB09C00A15929007F47210079431E00884D25008C512700A8612F00B367
      32008F522700A05929009D592A00B8B5B300EFEFEF0097A0A3001F84A30000B8
      EE0000C2FF0000C5FF0002C9FF0002B4FF00027AFF000065F700024DB9001931
      5100617F8F008DC1D9008ECDED008ACFF30081CAF00079C2EA0072B9E10072B9
      E00075BFE80079C5EF0079C2E9006EB6CA0051BDC200549095004C585D00AAAB
      AB00EDEDED00FAFAFA00FEFEFE0000000000F5F5F500B78B6100F3AA5B00FEB8
      6600FFB86600FFB86600FFB86600FFB86600FFB86600FFB86600FFB86600FFB8
      6600FEB86500F0AF6300B89F8200D3D1CF00ECECEC00F3F3F300F2F2F200F3F3
      F300F3F3F300E6E7E70072767600BBDCDD00CDFAFB00CEFBFC00CEFBFC00CDFB
      FD00C7FCFE009BF5FA004ACAD200BABEBE0000000000E3E3E400587E920030AA
      E90040BFFD0041C0FE0041C0FE0041C0FE0040C0FE0040C0FE003EBDFB0027A2
      D50003BAE90001C0F1001F8AAA00A0B0B500ECEDED00E6E7E80093A6AC00168B
      AE0001BFF00004A8D40030AAE60038BAFD0038BBFE0035B8FC002FB1F7002AA9
      EF00249DE0003077A400CBCCCD00FDFDFD00DBDBDA00EDE4DD00ACA8A500614A
      3B00654630006D513D006E513D00684A350078563F00BEA69400E8DED700F2DD
      D20095A9A900278FA90037CBF00003CFFF0002CAFF007AE4FF00C7F8FF00A6BB
      BD00AF876B00D8A27B00CE997300AC7E5D008B5D3E0088522D008C502600904E
      2100AD5E2800C47036008273680000000000EFEFEF0097A0A3001F83A20000B6
      EE0002C1FF000DC5FF001CCDFF002AC1FF001782FF000367F600044CB9002A46
      690089B2C8009FD6F20099D6F60091D2F40089CEF30081CAF1007CC8F1007AC6
      F1007AC7F1007AC7F1007ABFE4006AB2C1004EC1C50054999F004B5E66009E9F
      A000EDEDED00000000000000000000000000F5F5F500B78C6300F3AF6100FEBD
      6D00FFBD6E00FFBD6E00FFBD6E00FFBD6E00FFBD6E00FFBD6E00FFBD6E00FFBD
      6E00FEBC6D00F5B76B00BC9B7300C4C1BD00E0E0DF00E9E9E900ECECEC00ECEC
      EC00EBECEC00E3E3E3009194940088ACAD00B5F3F400B8F8F900B8F8F900B6F8
      F900AAF6F8007AEBEE0043ACAE00C9CBCB00FEFEFE00DBDBDC004A7C980039B1
      ED0049C3FC004AC4FD0049C5FE004AC5FE004AC5FE004AC5FF0047C3FB0033A5
      D30004B6E50001C4F500099FC7005584940098A6A900879AA000357D940003AE
      DA0001BFEF00149CC5003DBBF60041C0FE0040C0FE0037B7F8002596D6004477
      95005B7D910086949C00E5E6E60000000000FEFEFE00C5C4C300A1948B00AA75
      50008B69510073574400735745009A765E00CA9C7C00D1A08000DBB8A400BDCC
      CD00369CB50039C7EB0005CFFF0000CAFF006EE1FF00C7F9FF00AAC3C7008E7C
      700090817700B69F8E00E6C3AA00EAC6AE00DAB9A300B3988500B5947D00D19D
      7A00D98D59007B4F3100D5D5D50000000000EFEFEF0097A0A3002083A3000DB8
      EE001CC5FF0040CFFE007BE1FE007ADBFE0021ADFF000378F5000652B9003B5A
      7B0095BCD200A7DAF6009FD7F50097D4F40090D1F30088CDF30081CAF2007BC8
      F1007AC7F1007AC6F1007ABBDC0067AFBA004AC5C70054A0A6004C656E007B7E
      7F00E5E5E500000000000000000000000000F5F5F500B88F6600F4B46800FEC1
      7500FFC27600FFC27600FFC27600FFC27600FFC27600FFC27600FFC27600FFC2
      7600FEC17500FBBF7400E2AF6E00B29E8200B2AEA600BABAB500BCBDB700BDBD
      B700BCBDB700B7B9B3008D908B00436C680068C6C0006DCDC6006DCDC6006CCC
      C50063C9C2005BB2A5007B7D6800E3E3E300FEFEFE00D6D7D700407B9A0037A7
      DE0042B3E7003FB5EE0044BEF70051C8FD0054CAFE0054CAFF0052C8FD0049BA
      EA000CA3CC0001C3F50001BFF00007A2CA00158AAE001091B60002B1DD0001C1
      F10006ACD60038AAD8004BC4FB004BC6FE0047C3FD0032AEEF0039799D00BBBD
      BE00E3E4E400F0F0F000FCFCFC00000000000000000000000000C7B4A700DAA1
      7B00D3A48400C2977900BF967A00D8A98A00D9AC8D00E3AE8E00B2A28E00308F
      A50037C2E50009D1FF0000C9FF0064DFFF00C6F8FF00AECBD1008E7F75008F7E
      73009183790091857C00B39E9000E7C7B200EDCDB800EBCFBA00ECD1BF00F9E0
      D000BF997E0093918F000000000000000000EEEEEE0099A0A3003488A4003CC1
      EA007FD5F1008BCBE5005FB3DE002BAAE9000FABF10002A0E8000A68B1003E59
      73009EC3D700AEDEF700A6DAF6009ED7F50096D3F4008FD0F30087CDF2007FC9
      F1007BC8F2007BC6F0007AB8D70063B3BB0048CACD0055A8AE004C6975006569
      6C00DDDDDD00000000000000000000000000F5F5F500B8916800F4B87000FEC6
      7D00FFC77F00FFC77F00FFC77F00FFC77E00FFC67E00FFC67E00FFC67E00FFC6
      7E00FEC67E00FEC67D00F9C37C00EAB87800DAAD7400D4AC7700D4AD7800D4AD
      7800D4AD7800D3AC7600C7A26F00594C3500C3A26E00CCAA7400CCAA7400CCAA
      7300CCAA7200D0A46800AB8B6300F2F2F20000000000E5E5E50080929B006988
      9600718B9800597988002DA8E40052C8FB005DCFFE005ECFFF005DCEFE005ACB
      FA0038A6CD0006B0DC0001C3F50001C4F50001C2F30001C2F20002C1F10007AC
      D70035A4CC0053C8F90056CAFD0055CBFE004BC5FC0025A1E10071859000E8E8
      E800FEFEFE0000000000000000000000000000000000F6F5F500CD936A00DBAF
      9000D8AD9000DAAF9100DCB19300DAB09400E4B49600C0AC98003490A50038BF
      E0000CD1FF0000C9FF0059DDFF00C3F6FF00B1D4DB0080756D008A7B71008F83
      7A0091857D0093877F0092888100B2A29700EAD0BF00F0D7C600F3DDCF00E9C7
      AF006F625A00FAFAFA000000000000000000F2F2F2009EA2A3006C8A92009EC1
      CB0078A5BD0042638100325375001A538F000E6BC2000969AB001C5569005D76
      8500AFD2E500B5E1F800ADDDF600A5D9F5009DD6F50096D3F4008ED0F30086CD
      F2007FCAF2007BC5EF0078B8D4005EC0C6004AD8D80057B2B8004D717E00555D
      6200D3D3D300FDFDFD000000000000000000F5F5F500B8946A00F4BC7700FECA
      8600FFCB8700FFCB8700FFCB8700FFCB8700FFCB8700FFCB8700FFCB8700FFCB
      8700FFCB8700FECB8600FECA8600FDC98500FBC98500FAC88400FAC88400FAC8
      8400FAC88400FAC78400F5C38100AD8A5C00F0BF7E00FAC78300FAC78300FAC7
      8300FAC78200F1BA7400B5936C00F5F4F40000000000FBFBFB00EEEEEE00E8E9
      E900E7E7E700AEB1B3002B89B8004CC2F60068D3FE006AD4FF0069D4FE0067D2
      FD0063CEF70041AACF0014A2C90006B3E00006B6E30008ADD7001DA1C60048B1
      D6005ECDF80061CFFD0061D0FE0060D0FE0053C9FC00309ACE008D949700E9E9
      E900FEFEFE0000000000000000000000000000000000F4F3F300BA9F8D00CA99
      7700DFAD8C00E3B99D00DFBBA100E7BB9F00CCB49F003B92A40037BBDE0011D2
      FF0000C9FF004CDAFF00BEF3FF00CDF3FC00CFCCC8007A716B00827870009085
      7D0091878100948A8300958C8500948C8700B1A49C00EDDBCF00FFE7D7008369
      5500D8D8D800000000000000000000000000F7F7F700CBCCCC00737474005C6B
      7100515D67007D80840086898E00636B77002D425D003F4C5E0046535B00A5C0
      CA00BFE1F100BCE3F800B3DFF700ACDCF600A4D9F5009CD5F40094D2F3008DCF
      F30085CDF3007FC7EE0076BBD5005ACED2004CE3E10058BCC000537B8B004A57
      5F00BDBEBE00F7F7F7000000000000000000F5F5F500B8966C00F4C07E00FECF
      8F00FFD09000FFD09000FFD09000FFD09000FFD09000FFD09000FFD09000FFD0
      9000FFD09000FFCF8F00FFCF8F00FECF8F00FECF8F00FECF8F00FECF8E00FECF
      8E00FECF8E00FECF8E00FCCE8D00FCCD8C00FCCD8C00FECE8E00FECF8E00FECF
      8E00FECE8C00F3BF7C00B4957100F7F7F6000000000000000000000000000000
      0000F9F9F900C4C6C700487D960052C4F40073D7FE0076D9FF0075D9FF0074D8
      FE0072D6FD006FD5FA0068CBEF0059B7D90052B2D3005FBEE20069CEF5006CD4
      FB006ED4FD006ED5FE006DD5FF006CD5FE0067D2FC004EBDEE004387A600ADB1
      B200EEEFEF00FEFEFE000000000000000000000000000000000000000000EAE9
      E800C2B5AD00BD9B8400D8A38000CFB19A004093A50035B5D60015D3FF0000C9
      FF0042D8FF00BBF3FF00C4E9F100DCDBD700E3DEDA00DAD4D1009B938D008A81
      7B00928A8400948C8600958E890097908C0096908C00B8B0AB00B49680009997
      950000000000000000000000000000000000FDFDFD00F0F0F000CACACA006769
      69008A8B8A00C3C3C300C7C6C500A9A9A90066656400656668006A747800C2DA
      E000CCECFA00C2E6F900BAE2F800B3DFF700ABDCF600A3D9F5009CD5F50093D1
      F3008CCDF00084C5E80078B8CC005FD9DA005AE9E80063C4C8005C8A9D004F67
      7500989A9C00EDEDED000000000000000000F5F5F500B9986E00F4C58400FED4
      9800FFD59900FFD59900FFD59900FFD59900FFD59900FFD59900FFD49900FFD4
      9900FFD49900FFD49900FFD49800FFD49800FFD49800FFD49800FFD49800FFD4
      9800FFD49800FFD49800FFD49800FFD49700FFD49700FFD49700FFD39700FFD3
      9700FED29500F3C38300B6997400F7F7F600000000000000000000000000FBFB
      FB00DEDFDF0088959A004DA7CC0072D3F70081DDFE0082DDFF0082DDFF0081DD
      FF0080DDFE007FDCFE007EDBFD007CD9FC007BD9FB007BDAFC007BDAFD007BDA
      FE007ADAFE007ADAFE0079DAFE0078DAFE0076D9FE006FD3FA004FBCEA003E85
      A400B5B8B800F6F6F60000000000000000000000000000000000000000000000
      00000000000000000000E1E0DE005B969F0038B5D60019D3FF0000C8FF0038D6
      FF00B7F2FF00C6EEF700E7DACE00E0CBBF00E3DEDA00F4F1EF00DBD7D4009A93
      8F0075706C00847E7B0097928E0097928F009C989500978C840059524D00B8B8
      B800000000000000000000000000000000000000000000000000E4E4E4008181
      8100ABABAB00E2E1E100E5E5E500BCBCBC007474730045474800949FA300D2E8
      EE00D2EEFA00C9E8F900C1E5F900BAE2F800B2DFF700A9DBF500A0D4F00097CD
      EA008EC2DC0086B4C4007FC0C60079E7E8007AEEED007BCCD0006E9FB400577B
      8D00777C7F00E3E3E3000000000000000000F5F5F500B89A7000F4C98C00FED8
      A100FFD9A300FFD9A300FFD9A300FFD9A300FFD9A300FFD9A200FFD9A200FFD9
      A200FFD9A200FFD9A200FFD9A200FFD9A200FFD9A200FFD9A200FFD9A200FFD9
      A200FFD8A200FFD8A100FFD8A100FFD8A100FFD8A100FFD8A100FFD8A100FFD8
      A100FED79F00F3C88B00B69B7600F7F7F6000000000000000000FAFAFA00DCDC
      DD00839297004EA8CB007BD3F4008EE0FC0090E2FE0090E2FE008FE1FE008EE1
      FE008DE1FE008DE1FF008CE1FF008BE0FF008BE0FF008AE0FF0089DFFE0088DF
      FE0085DDFD0083DDFD0084DDFD0085DEFD0084DEFE0081DCFE0072D2F6003DA7
      D400758C9600F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000092A1A50039AAC7001AD6FF0000C9FF002ED4FF00B5F4
      FF00CBF0F800E6DED500F4DED000F3E1D600E6D9CF00E5E1DD00F6F4F300D3D0
      CE007C79770085817F0096929000979593009D979300695F5800787979008383
      8400B1B1B1000000000000000000000000000000000000000000EEEEEE00A1A1
      A10087878700D0D0D000D2D2D200A6A6A600505050004B4E4F00BAC6CB00DEF0
      F800D9EFFB00D0ECFA00C8E7F900BFE2F500B5DDF100A9D2E7009CC3D40093BA
      C40093C8CD0096D9DB0099EAEA009EF2F200A2F2F10098D2D6007FB1C7006593
      AD00646D7200D9D9D900FEFEFE0000000000F7F6F600B3977000F0C98E00FDDC
      A900FEDDAC00FEDEAC00FEDEAD00FFDEAD00FFDEAC00FFDEAC00FFDEAC00FFDE
      AC00FFDDAC00FFDDAC00FFDDAC00FFDDAC00FFDDAC00FFDDAC00FFDDAB00FFDD
      AB00FFDDAB00FFDDAB00FFDDAB00FFDDAB00FFDDAB00FFDDAB00FFDDAB00FFDD
      AB00FEDCA900F4CC9300B69D7900F7F7F60000000000FCFCFC00DBDBDC007B8D
      94004CAACE0083D6F4009BE5FC009FE6FE009EE6FE009CE5FD0098E4FD0098E3
      FD009AE5FE009AE5FE0099E5FE0099E5FF0098E5FE0097E4FE0094E2FE008DDE
      FB007AD3F30068C5E60079CCE9008BDCF7008FE1FC0089DDFB006AC7EC00568D
      A200C2C3C400F9F9F90000000000000000000000000000000000000000000000
      00000000000096979900665F5D008AADB60017CCF80021D3FF00B4F6FF00ACDD
      E900B0A69C00EDD0BE00F7EBE300F6EAE100F8ECE400EBE2DD00E1DEDC00E6E5
      E400DEDCDB009C9997008F8D8C009B9A99007F736A00666363008A8A8A008686
      86007F7F7F00A8A8A800FCFCFC00000000000000000000000000F9F9F900DBDB
      DB00858585007A7A7A008888880067676700696969006D6E6F00D2D9DB00E7F6
      FC00DEF1FA00D3EAF500C7E2EE00B9D5E200A7C2CB00A2C2C800A6D3D600ACE2
      E300B3F0F000B9F6F500BFF7F600C3F6F600C3EEED00ADCFD20088B9D00071AC
      CA005F707800C9CACA00FBFBFB0000000000FBFBFB00AEA39300DEB77800F7D7
      A500FCDFB000FDE0B400FEE1B500FEE2B500FEE2B600FEE2B600FEE2B600FEE2
      B600FFE2B600FFE2B600FFE2B600FFE2B600FFE2B600FFE2B600FFE2B500FFE2
      B500FFE2B500FFE1B500FFE1B500FFE1B500FFE1B500FFE1B500FFE1B500FFE1
      B500FEE0B300F3D09B00B59F7B00F7F7F70000000000F9F9F900A1A8AB00389B
      BE0083D4F000A7E8FC00ADEBFE00ADEAFE00A9E7FB009BDEF3007FCBE4007ACF
      EC0090DDF6009FE5FB00A6E9FE00A7E9FE00A6E9FE00A1E7FC008DDCF60068C4
      E5005697AF0083939900859BA20073C0D9008BD9F30078CFED005797AE00B3B6
      B700F1F1F1000000000000000000000000000000000000000000000000000000
      0000A3A4A600585858008D8D8D00B8B0AD00A7C0C600ADEAF900BBEBF200A0A7
      AA00F6F5F500F1DAC800FFFCF900FAF3EE00FAF3EE00FDF6F200EFECE900EBEE
      EF00FAFCFE00DEDEDE00A1A1A10077726E004943400082838300848484008B8B
      8B008888880081818100A0A0A000F2F2F200000000000000000000000000F4F4
      F400E0E0E000B9B9B900ABABAB00B7B7B7009797970090919100E1E4E400E9F2
      F400D8E6EA00C2D2D800B2C3C700B4CCCF00BDDDDE00C6ECEC00CEF5F500D4FA
      FA00D8F9F900DBF7F700DAF1F200D0E4E500B6CBCE009AB7C2008CC4E00079BA
      D8005F7A8800B8BABB00F8F8F80000000000FEFEFE00EEEEED00B0A38E00CDAD
      7800E3C38D00ECCD9B00F1D4A600F6DAAD00F9DEB400FBE1B900FCE4BC00FEE5
      BE00FEE5BF00FEE6BF00FEE6C000FEE6C000FEE6C000FEE6C000FFE6C000FFE6
      C000FFE6C000FFE6BF00FFE6BF00FFE6BF00FFE6BF00FFE6BF00FFE6BF00FFE6
      BF00FEE4BD00F2D3A200B3A08200F8F8F80000000000FBFBFB00C8CACA00588B
      9C0079CDE800AEE8FA00B9EDFE00B5EAFA009DDAEE008AAEB80098A1A3006F8E
      99005CA0B6007DCFE900ABE9FC00B6EDFE00B5EDFE00A9E7FB0070BDD6007C8E
      9400C1C2C300E6E6E600D9DADA00929FA4005CA9C3005499B200A8ADAE00EEEF
      EF00FEFEFE00000000000000000000000000000000000000000000000000A8AA
      B3005555560097979300BEBEBE00BABBBB00BFBAB700DDDFE00098A0A2000000
      0000F6F5F500D3A68700FDE5D300FFFFFB000000000000000000FFFFFE00D8B5
      9F00DBC5B600FFFEFD00DCD8D600554C4700616162007E7E7E0099999900EDED
      ED00BEBEBE008484840083838300D4D4D4000000000000000000000000000000
      0000FCFCFC00F7F7F700F4F4F400DBDBDB0084848400ACACAC00D0D0D000B3B6
      B700AAB0B200C4D1D200D4E4E400DFF2F200E6F8F800EAFBFB00EDFAFA00EDF5
      F500E6EFEF00D8E0E200BCC8CD00AAC2CE009CC4D80094CAE7008DCEF0007BBC
      D9005F7A8700B9BABB00F8F8F8000000000000000000FEFEFE00F9F9F900E7E6
      E500CECBC600C3BCB000C0B49E00C2B08F00CDB58B00DDC08E00E7CC9900EED3
      A600F3DAB000F7E0B900FAE4BF00FCE6C300FDE8C600FEE9C800FEEAC900FEEA
      C900FEEACA00FEEACA00FEEACA00FFEACA00FFEACA00FFEACA00FFEACA00FFEA
      CA00FEE9C700F2D7A900B4A38500F8F8F8000000000000000000F3F3F300B9BB
      BB005990A1007FD0EA00AEE6F60096D5E90085A3AC00C6C8C900EBEBEB00DFDF
      DF00A1A5A60066AABF00B2E9FA00C5F1FE00C4F1FE00B2E8F8006FA9BC00BEC0
      C100F7F7F700FEFEFE00FBFBFB00E3E3E300A8AFB100B3B7B800ECECEC00FEFE
      FE00000000000000000000000000000000000000000000000000B2B5C200141F
      7800353E89009E9FA800C1C0BB00CBCBCB00E0E2E30092949600FBFBFB000000
      000000000000E9E7E700BFAEA300C3A28B00EACDB800FCEBDE00A6846C00A095
      8F00D7D3D000C8C0BA00DAD6D4009B9A9A008D8D8E007C7C7C00A3A3A3000000
      0000CBCBCB0085858500C0C0C000FEFEFE000000000000000000000000000000
      00000000000000000000FBFBFB00CDCDCD006363630086868600767676006162
      6200A0A3A300E7EAEA00F7FAFA00F8FCFC00F5F9F900F1F4F400E7E9E900D1D5
      D700B7C0C500A9BEC8009EBFD2009AC6DE0095CBE6008BC5E1007BB5D3006998
      B0005F6B7200CECFCF00FBFBFB0000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FCFCFC00F8F8F700EEEDEC00DFDEDB00CBC7C000C1B9
      AB00BFB29B00C6B39100D2BA8F00E2C89700EAD2A600F0DAB200F4E0BC00F8E5
      C500FBE9CB00FCECCF00FEEED300FEEED400FFEFD500FFEFD500FFEFD500FFEF
      D500FEEDD200F3DCB100B4A48700F8F8F800000000000000000000000000F1F1
      F100B4B7B8005390A2005BB6D10076969F00C8C9CA00F6F6F600FEFEFE00FAFA
      FA00BABCBD006AAEC100C0EDFA00D5F5FE00D4F5FE00BEEAF70073A8B700CCCD
      CD00FDFDFD000000000000000000FDFDFD00F8F8F800F9F9F900FEFEFE000000
      00000000000000000000000000000000000000000000B8BBC6001D2680002131
      A1002F46BE004B5CB900A3A6B700DCDBD900999C9E00F7F7F700000000000000
      000000000000000000000000000000000000E9E7E500BBB1AA00CECECE000000
      00000000000000000000DEDEDE00D8D8D9009E9E9E008F8F8F00848384009797
      97008E8E8E00B7B7B70000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900BEBEBE006363630085858500A9A9A9008383
      8300A8A8A800EDEDED00F2F2F200EDEDEE00E0E1E200C9CCCE00B9C2C700ACBF
      C7009AB1BC00798E99005B6C75007593A3007A9EB200607B8900576A73006D76
      7B00ADAFAF00E8E8E800FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FD00FBFBFB00F6F5F500EBEBEA00D8D7D400C6C2BA00BFB7A600C1B49A00C9B8
      9400DAC39600EFD7AA00FAEACE00FEF2DE00FFF3E000FFF3E000FFF3E000FFF3
      E000FEF1DD00F3E0B900B4A68900F8F8F800000000000000000000000000FEFE
      FE00F0F1F100BBBDBD0080949900CCCDCD00F7F7F7000000000000000000FBFB
      FB00B4B7B70070B7CB00CFF1FA00E1F7FE00DDF6FD00C0EAF40074A3AF00D1D2
      D200FDFDFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD004F569B002030A100344A
      BC003D54C5005068D0008395E2008B8F9900F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E400D6D6D6009A9A9A00979797008989
      8900ACACAC00FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00E0E0E000D6D6D600E3E3E300DBDBDB008C8C
      8C00A8A8A800CFCFCF00ADAEAE0091939300B0B6B900B1BEC50097A7AB00717D
      8300697073008D909100A8AAAB007D8082007D828400A4A6A700C2C3C300DDDD
      DD00EEEEEE00FAFAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FDFDFD00F9F9F900F3F2
      F200E4E3E100B3A99200F0DEB600FDF5E600FEF7EA00FEF7EB00FEF7EB00FEF7
      EB00FEF6E900F3E3C300B4A78C00F9F9F8000000000000000000000000000000
      000000000000F8F8F800F2F2F200FAFAFA00000000000000000000000000FAFA
      FA00B1B3B30067B6CA00B2E2EF00B1E2EE009FDAE90080C8DB0069939E00DEDE
      DF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABDCC004A5FCB004860
      CD005A71D100879CE9007983A100ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E800D3D3D30099999900AAAA
      AA00FAFAFA000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FCFCFC00FCFCFC00FEFEFE00E5E5E5008686
      86007B7B7B00737373006E6E6E005A5D5D0082898B006A7073007B7E7F00A8AA
      AA00CCCCCC00E6E6E600EBEBEB00E8E8E800E7E7E700EFEFEF00F9F9F900FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00B6B2A800DAC48F00F5EBD100FAF3E300FBF6E900FCF8ED00FDF9
      F000FDF8EE00F1E4C500B2A88C00F9F9F9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00C6C7C700538B9A006A959F0075939A0081939800969EA000C5C6C600F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFC2CF008395
      DA009CB0F5007F8BA700E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600AAAAAA00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDEDED009D9D
      9D0097979700C2C2C200C7C7C7007F8080008C8D8D00BDBEBE00DEDEDE00EFEF
      EF00FAFAFA00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F0EFEF00AFA99700BFB28D00CDBE9300DCCC9D00E3D5A900E9DC
      B700ECE0BE00DDCA9700ACA48D00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000D8D8D900D6D7D700E1E1E100EBEBEB00F3F3F300FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E5
      E600B3B7BF00DDDDDD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F6F600ECEC
      EC00EDEDED00F6F6F600F2F2F200E8E8E800EAEAEA00F5F5F500FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FBFBFB00F2F2F200E7E7E600D7D6D500BFBDB900B4B1
      A600AEA79200A59D8500D6D6D400FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC000000000000000000E9E9
      E900EAEAEA00F0F0F000FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8FAF800E7F4E700E1ECE100F1F5F200F3FAF300F9FB
      F900FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDCDC005A5A5A0029292900A8A8A800B4B4B400B4B4B400B4B4
      B400B4B4B400B6B6B600E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB0000000000FEFE
      FE00FBFBFB00000000000000000000000000FEFEFE00FDFDFD0000000000F7F7
      F700F6F6F600FAFAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCFCFC0000000000D6D7D900496F9500766E
      7700997E7A00A5A2A300EDEDED00FCFCFC000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00FBFBFB00FBFB
      FB00FCFCFC00F3F3F300E0E0E000B4B6B50096799800A197A300D2DFD300EBEC
      EB00FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700686868001D312B0064B099002F79620021252300A3A3A300B4B4B400B4B4
      B400B4B4B400B4B4B400B5B5B500E2E2E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD0000000000CAC6C600C8C7
      C700F1F1F100F9F9F900FDFDFD00FEFEFE0000000000FCFCFC00B2AAA700B4A6
      A200B7B4B300E7E7E700F7F7F700FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D5D700346DA1000A94ED003184
      C100ABAEBE00BBA29E00CDCCCD00FCFCFC000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00EFF6EF00ECF5
      EC00E7E9E700DAD9DA009A849B00AA58AA00CE4ED200AA2EB8008A569300C2BD
      C300E4E4E400F4F5F400FDFDFD00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00777777001828
      24004D927D007DE3C30088EFCF003EA5860025755D001B2220009D9D9D00B4B4
      B400B4B4B400B4B4B400B4B4B400B5B5B500DEDEDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0000000000B3A9A900CA939300B385
      84009E8D8D00CBCACA00F3F3F30000000000F1F1F100B8AEAB00FDF3F000FFFA
      F900DFCCC600AA999500BDBAB900EDEDED00FBFBFB00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCDADA00BAB5B500B6B1B100B6B1B100B6B0
      B000B5AFAF00B5AFAF00B5AFAF00B5AEAE00B5AEAE00B4AEAE00B4ADAD00B4AD
      AD00B5AEAE00B3ACAC00B9B1B000ACA9AC002668A4000896F00040B7F7007DD3
      F90060A9D800A9B5C600C4C2C000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00F3F6F300DFED
      E000B1BCB200966B9600CF69CF00EA64EA00E645EC00C814DA00B715CF008D33
      9C00A090A300E1E7E100E9F4E900FBFCFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400858585001B2623003F7D6A0064C7
      AA006ED4B50078DEBF0083E9CA003DA48500329A7B00297C6300171F1C009696
      9600B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400D9D9D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1A3A200D6A6A600F8E5E200FACF
      C700E3ACA800B2828100A0909000C2C0C000BBB2AF00FFFDFC00FAFAFA00F5F1
      F200FBF7F800FFF4F100D9BEB800A6948F00BFBDBC00EFEFEF00FAFAFA00FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B79B9B00DDC1C100DAC1C100D9BFBF00D9BE
      BE00D8BCBC00D7BBBB00D7B9B900D6B7B700D5B6B600D3B4B400D3B1B100D2B0
      B000CEABAC00D7B4B300B6929600245F9F000595F1003DB4F30081D3F800CDF9
      FE0099EFFF00249BE200CDCFD100000000000000000000000000000000000000
      000000000000FDFDFD00FAFCFB00FBFCFB00F8F8F800F6F6F600E5E7E600BCBA
      BC009B639B00DB64DB00F266F200FA64FA00EB47F000CC11DC00C101DA00BE0B
      D9009829AA0082778700D8E6D900EBECEB00F8F8F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900949494001F2724003972600063C6A80068CEAF0079E0
      C00089F0D00074DBBC007CE3C3003DA48500329A7B00329A7B002B826800131E
      1A008F8F8F00B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400D4D4D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B09F9F00DFB1B000FAEFEC00FFF0EC00FFD8
      CF00FFDED400DAADAC00C6929200D4C3C000FFFFFE00FCFBFB00F9F5F500F6F2
      F200F4EEEE00F2ECEC00F8F2F300FCEBE800D4B5AC00A5938E00C5C3C200F1F1
      F100FBFBFB00FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000B2989800FEFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9EBEF003379B600018EE8003DB5F5007ED2F800C8F6FD009EF0
      FE0030C2FF007DA4BD00F9F9F900FCFCFC000000000000000000000000000000
      000000000000FDFDFD00F5F9F500E7F6E700EBF2EB00CDCECC00BFC2BD008D83
      8B00CF5FCF00F562F500FE67FE00FD67FD00ED4EF100CC16D800C404DA00C400
      E000B704D10074318600697C7700A4B0AE00DADCDC00EEF0EF00F9FBF900FDFD
      FD0000000000000000000000000000000000000000000000000000000000FDFD
      FD00A2A2A200252A28003366570061C2A50067CDAE0077DEBE0087EECE0065CD
      AC007EE6C6006ED5B60076DBBD003CA38400329A7B00329A7B00329A7B002D87
      6C00111F1A0087878700B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400D0D0
      D000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B29F9F00E5B9B800FBEEEA00FFF1ED00FDEAE600FDDA
      D200FEDAD200D8BAB900DDD7D700FEFFFF00FDFDFD00FAF8F800FAF7F700F6F2
      F200F6F0F000F3ECEC00F0E6E600EEE6E700F6EEEF00F9E6E100CFAFA700A696
      9200CCCBCA00F5F5F500FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000B49A9A00FAF4F400FDFDFD00FCFBFB00FDFC
      FC00FBFAFA00F3F0F000F1ECEC00F0E9E900EEE6E600EDE2E200E8DDDE00F4E5
      E200D3CCD1002A6CAA000189E2003FB7F60080D3F800C8F6FD009DF1FF0024B7
      FC007AA0BA000000000000000000000000000000000000000000FCFCFC00FCFC
      FC00FDFDFD00FAFAFA00ECEDEC00E0E9DF009BA38D00986C66006C504B006245
      5B00CE59CE00FC66FC00FF6AFF00FE76FE00F774F800E243E700CA13DA00C805
      E100B801D30064188000256284002C7DA1006F899800C4D4C800E8F2E800FAFB
      FA00FDFDFD00FDFDFD0000000000000000000000000000000000B0B0B0002E30
      30002C5A4C005EBC9F0066CCAD0074DCBC0086EDCD006CD3B3003EA584003199
      780079E1C1006BD1B2006ED6B6003BA28300329A7B00329A7B00329A7B00329A
      7B002E8C6F000F221C007E7E7E00B4B4B400B4B4B400B4B4B400B4B4B400B4B4
      B400D1D1D100FEFEFE0000000000000000000000000000000000000000000000
      0000FAFAFA00B6A0A000E9C1BF00FCEBE700FEEBE700FDEAE600FFEEE900FFE1
      DA00FEDDD600DAC2C000DDD5D500F6F6F50000000000FEFDFD00F9F6F600F6F2
      F200F6F0F000F3ECEC00F2E9E900EFE4E400EBDEDE00EADFE000F5ECEC00F7DF
      DA00C8A9A100A89B9700E4E4E400FEFEFE000000000000000000000000000000
      0000000000000000000000000000B49B9B00FBF6F60000000000000000000000
      0000FEFEFE00F2EFEF00F0EBEB00EEE7E700EBE2E200E7DCDD00F0E0DD00C1B2
      B8001A5EA000008FE90040B7F60085D5F800CDF9FE009AEFFF0020AEF3006680
      9C00F6F6F60000000000000000000000000000000000FEFEFE00F8FAF800F1F7
      F100F0F2F000E4E4E300D1CECE0092787700B45E5C00C95D5900813C3B00602C
      4A00CA55CA00FB71FC00FF88FF00FE97FE00FD88FD00F771F900E845EF00D31A
      E600BB09D300601C8600147BA600129ADA002288CD0047789100B4C1C000DFE3
      E100F2F7F200FBFCFB000000000000000000C4C4C400383A3900274F430059B4
      990066CCAD0072DABA0086EDCD0070D6B60042A9880031997800319978003199
      780079E1C1006AD0B10069CFB00039A18200329A7B00329A7B00329A7B00329A
      7B00329A7B00309073000F241E0075757500B4B4B400B4B4B400B4B4B400B4B4
      B400BDBDBD00DEDEDE00FEFEFE0000000000000000000000000000000000F3F3
      F300B79F9F00EEC8C500FCE8E200FEE7E200FDE6E200FFEDE800F1D7D300F1CE
      C900FFE3DC00F7DAD400DBB9B700CDB1AF00DACAC800F2EEEC00FDFDFD00F9F6
      F700F5EFEF00F3ECEC00F2E9E900EFE4E400EEE1E100EBDEDD00E8D9D900EDE7
      EA00FFF1ED00C3A29B00EEEEEE00FDFDFD000000000000000000000000000000
      0000000000000000000000000000B69D9D00FBF5F500FAFAFA00EFEBEB00EEEA
      EA00EDE7E700EDE7E700EDE4E400ECE2E200E9DFDF00EFE1DF00C4C4CE002273
      B6000492EC0045B9F70083D4F800CBF8FE0096EDFF001BAAEF0096B5D700A17B
      7600F0F0F000FEFEFE00000000000000000000000000FEFEFE00F9FBF900EAF6
      EA00D8E7D700B2ADA900955B5D00D5656600EB646500DE5C5C008A403F005C2B
      4300C566C400F29DF300FEADFE00FF9FFF00FF8CFF00FD77FE00FA65FB00F050
      F400C928D50062278600137EA8000EA0EE001091F1001E8FE1002C70A4007E9A
      9A00D7E8DA00F9FAF90000000000000000004040400052A48B0066CCAD0070D7
      B80083EBCB0074DCBC0046AD8C00319978003199780031997800319978003199
      780079E1C1006AD0B10066CCAD0038A08100329A7B00329A7B00329A7B00329A
      7B00329A7B00329A7B00309476000E2A21006B6B6B00B4B4B400B4B4B400B4B4
      B400BCBCBC00D3D3D300EDEDED000000000000000000FEFEFE0000000000BEA9
      A900F5CFCC00FDE4DD00FEE2DC00FEE3DE00FFE8E300EDCECB00E9C8C500EAC7
      C300E3BDB900F2D2CD00FFE7E000F6D8D300D9B3B100C8A2A000D5BDB900EFE6
      E300F9F6F600F6F0F000F1E7E700EFE4E300EDE0E000EBDEDE00F0E8E800ECD1
      CA00B9A7A200FBFBFB0000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00B8A1A1000000000000000000F9F9F900F9F7
      F700F9F7F700F7F3F300F2EBEB00EEE5E500EBE2E200F2E7E4006080A800007D
      D3004CC0FB0081D2F700C7F6FD0095EEFF0018A8EF009AC5E800FFEAE300937A
      7B00F0F0F0000000000000000000000000000000000000000000FCFCFC00F1F2
      F100C2CBBE00A36A6400DF646400F4636300FC656500E15D5D008B403F00552A
      330076547000D19FD000EEABEE00FC9FFC00FF8BFF00FE77FE00F666F500E15D
      E400A346AB003C4476001193C1000FA1F4001096F9000F91F400128DE0003B81
      AB00C2C9C900F5F5F5000000000000000000404040005FBFA20066CCAD00489C
      81004BB291003199780031997800319978003199780031997800319978003199
      780079E1C1006AD0B10066CCAD0038A08100329A7B00329A7B00329A7B00329A
      7B00329A7B00329A7B00329A7B00309678001030270060606000B4B4B400B4B4
      B400BBBBBB00D1D1D100E9E9E900FDFDFD00FEFEFE000000000000000000C9AB
      AA00FEDED700FEDFD700FEE0D900FEE2DC00EBC9C500EECDC900FFE8E200FFEA
      E400F8DED900E7C5C100E3BDBA00F2D4CE00FFE8E200F5D9D400D6AEAB00C498
      9500D1B1AC00EADCD800F5EFEE00F1E8E900EEE3E400EBE0DF00DDB6AF00AA9B
      9800000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC000000000000000000AC979600D8C9C800C2B3B300BAA8A900BEAC
      AD00C7B7B700D5C8C800E4D9D900EFE5E500EBDFDF00F1E6E700B9A4A5003770
      A2006CC6F300D5FEFF0095ECFF0019A6ED007D95B700F6DBD500F4E4E500957A
      7A00F0F0F000FEFEFE00000000000000000000000000FDFDFD00FDFDFD00F1F2
      F100CDC6C600BB686800EE616100FF676700FD656500DF5B5B00883F3D006F39
      3800583233005C415200BC85B900E795E600F585F400F072F000D660DB008245
      93002A53740019A0C40013B8EB000FA0F6001094F8001095F9000E8FEE003582
      B700BBC4C600F2F2F200FEFEFE0000000000404040005FBFA20066CCAD002671
      5900319978003199780031997800319978003199780031997800319978002F8F
      71006ECFB1006AD0B10066CCAD0038A08100329A7B00329A7B00329A7B00329A
      7B00329A7B00329A7B00329A7B00329A7B0031987A0013382D0054545400B4B4
      B400BABABA00D0D0D000E7E7E700FDFDFD00000000000000000000000000C7AC
      AC00FEDAD300FFDDD500FDDCD500EAC5C100F2D0CA00FFE4DD00FDE6E200FEE8
      E300FFEAE500FFEDE700F8E1DC00E8C7C400E2BDB900F0D2CD00FFEAE500F4DA
      D600D2A8A500BE8A8700CDA59E00E8D6D200EBDDDA00DCBDB200D3979200A392
      9300FCFCFC00FEFEFE000000000000000000000000000000000000000000FDFD
      FD0000000000D8D7D70096878700917475008D6F7100947777009D828200A288
      8700A38A8B00A48D8E00AA939300C6B4B400C8B6B500BEAAAA00B49A9800A997
      9A005993C00069CDF30022AAED009ABCDB00F5DBD400EAE1E200F5E2E200967C
      7C00F0F0F000FEFEFE00000000000000000000000000FCFCFC00F1F7F100F4F8
      F400CFCCC800B9656500F0616100FF666600FD676700E15E5E00894240007039
      3700723A3800643435004F30400090588B00CB72CB00B75EBC005A4178002072
      940014B3D70010C6EE0011C1F90010A2F8001093F7001095F9000E8FEE00317F
      B400B3C5BF00EDF6ED00FDFDFD0000000000404040005FBFA20066CCAD002671
      590031997800319978003199780031997800319978002F927200287960002974
      5C0049A4880064CBAC0066CCAD0038A081004CAE8F0045A88900329A7B00329A
      7B00329A7B00329A7B00329A7B00329A7B00329A7B0031997A00164134004A4A
      4A00B9B9B900CECECE00E6E6E600FCFCFC00FEFEFE000000000000000000C8AE
      AD00FFDAD200FBD7CF00EAC4BF00F5D2CB00FFDFD700FDE0D900FEECE600FFEA
      E600FEEAE600FEE9E500FFECE700FFEFEA00F9E4DF00E8C8C600E0BAB700EED0
      CC00FFECE700F3DBD800CD9F9D00BA807B00BC837C00FBE1DD00EBBBB900A08B
      8B00FEFEFE00FEFEFE0000000000000000000000000000000000FEFEFE000000
      0000B5B0B000907474009A7C7E00A3868100C8B7AB00E2D8CE00EBE3DC00EBE2
      DE00E0D5CE00CFBFB600BDAAA700B9A6A800AB959500A38A8A00C4B6B700C2AF
      AE00B8A1A2004F9CD3008CA9C800E7C0B900CDB3B500E5D4D400F6E4E400977D
      7D00F0F0F000FEFEFE00000000000000000000000000FCFCFC00F4F9F400E5F6
      E500C0C8B800B7636100F0616200FE696900FD727100EC8A8500AD6F69007C44
      4100783E3C00773B38004F283100291747004726620032275100166E8C0013BD
      DC0011CBF50011CDFC0010C2FB000FA0F7000F93F7001095F9000E8FEE002F7C
      B300A3BEAF00F0F6F000FCFCFC0000000000404040005FBFA20066CCAD002671
      590031997800319978003199780030937300287C610027725B00469E820063C7
      A90066CCAD0066CCAD0070D7B7004FB596006FCCAD00A3F5D60049AC8D00329A
      7B00329A7B00329A7B00329A7B00329A7B00329A7B00329A7B00329A7B000818
      1400B8B8B800CDCDCD00E4E4E400FBFBFB00000000000000000000000000CBB0
      AF00FAD3CB00EBC4BE00F8D1C900FFDBD200FDD7CE00FEEBE900FFF2F300FFEE
      ED00FEECE800FFEDE800FEECE900FEEBE700FFEDE900FFF1ED00FBE8E400E9CC
      C900DFBAB800EDD0CC00FEEDE900F0D8D500D0A2A200EBE1D500E1B4AF00A28E
      8E00FEFEFE0000000000000000000000000000000000FDFDFD0000000000AEA7
      A6009372730095777800C1A48E00E6CDB100FFFFE900FFFFF400FFFFF800FFFF
      FD00FFFEF600FFFBEA00F4EAD300D1BAAB00C5B6B600C2B1B200BDAAAA00C4B2
      B300F3E5E400F5DFDB00F1DCD900E6D6D700E5D2D200EDE1E100F4E1E100987F
      7F00F0F0F000FEFEFE00000000000000000000000000FEFEFE00FAFAFA00F1F6
      F100B6C3AE00B8666400F0666600FB817F00F7ABA400F2B9AD00E8AA9C00C281
      75008E4F4A007C3F3A004F283100140B6D0007057F00081C67000C809D0010C7
      EA0011CFFD0013CEFC0014C3FA00149FF4001293F6000F94F9000E8FEE00307F
      B200B6C2C200EFF0EF00FEFEFE0000000000404040005FBFA20066CCAD002671
      59003199780030947500297E64002671590043997F0060C5A70066CCAD0066CC
      AD006ED5B60089EFCF0099FFDF0097E4CD003A4B45009CE7CE00A6F9DA0051B1
      9300329A7B00329A7B00329A7B00329A7B00329A7B00329A7B00329A7B00091C
      1600B7B7B700CBCBCB00E3E3E300FAFAFA00FEFEFE000000000000000000CAB0
      B000F1C7C200FAD0C700FFD6CD00FDD1C600FEE4E100FEEEDC00FEE1BF00FEED
      E200FFF4F600FEF2F200FEEEEB00FFEEEA00FEEFEB00FEEDEA00FFEFEB00FFF3
      EF00FBEAE700E9CCC900DFBAB800ECD0CC00FFEDEE009AEF9300BDB19000A78F
      930000000000FEFEFE000000000000000000FAFAFA0000000000D4D1D1009271
      710092747400CBA48800ECD2B200E6CDB100FBF4DE00FDF8E800F9F3E900F9F4
      EB00F8F0E400F7ECD900F9E9D200FCE1C200D8B8A300CABCBD00C4B4B400C1AE
      AE00D9C4C400D9C4C400D7C0C000D7BDBD00D1B5B500E4D3D300F5E3E3009880
      8000F0F0F000FEFEFE00000000000000000000000000FEFEFE00FDFDFD00F1F2
      F100C9C7C400B9727000EB908F00F6C1B900F5CCC100F7C3B500F7B6A600F0A6
      9400D98675009F584B00562D3900110978000707A900071B7F000A7EA00011C8
      EB0016D0FD0025D1FC0056D6F90055BEF400229DF5001396F8000E90EE003581
      B800BDC5C800F3F3F300FEFEFE0000000000404040005FBFA20066CCAD002671
      590029826600256F57003F9378005FC2A30066CCAD0066CCAD006DD3B40086EC
      CC0098FEDE009AECD300A1BDB300A8A9A800353535005A605E0089D2B900A7FB
      DC0058B69700329A7B00329A7B00329A7B00329A7B00329A7B00329A7B00091C
      1600B9B9B900D8D8D800F2F2F200FEFEFE0000000000FEFEFE0000000000CDB6
      B600FDD0C700FFD0C500FDCBC100FEDEDB00FDF4E500FFE2AD00FDCA8400FAC7
      8700FBD4A900FEEBDE00FFF8F900FFF5F600FEF0ED00FEF0ED00FFF1EE00FEF0
      ED00FFF1EE00FFF5F200FBECE900EAD0CD00DFB7B800CFD0B300DAB5AA00A48F
      910000000000FEFEFE000000000000000000FCFCFC00FCFCFC00947E7E009779
      7C00C0907400E9C09B00E5C7A800E6C7AB00FDF1D900FEFAE500FBF3E300FBF3
      E300FAF1DF00F9EED700F9E5CB00F5D9BC00F9D0AB00D5B19C00CBC0C200CAB8
      B800E9D9D900E2CFCF00E2CECE00E1CCCC00DDC6C600E9DADA00F4E1E1009982
      8200F0F0F000FEFEFE00000000000000000000000000FDFDFD00F6F9F600F2F3
      F200D4D4D1009A838100D4BDB500ECD0C600F3CBBF00F7C2B300F9B5A400F7A6
      9200EA957F00C47463004B293E000C0789000807AF00081C81000F80A1001BCB
      EB0041D8FC0084E5F900A9EBF70096E4F60066C9F50032ABF8001594EE003481
      B500BBC8C700F1F6F100FDFDFD0000000000404040005FBFA20066CCAD002671
      59003B8E74005DBFA10066CCAD0066CCAD006BD1B3008CEACD00A0FDDF00A0F0
      D700A4C4BA00ACADAC00B2B3B200B8B9B8003B3B3B005A5A5A006469670092D7
      BF00A7FCDC005FBC9D00329A7B00329A7B00329A7B00329A7B00329A7B00091C
      1600FCFCFC0000000000000000000000000000000000FCFCFC0000000000C6BF
      BF00F9D0CD00FAD2CA00FDECE600FFFBE800FDF0C600FEE8B900FED49700FAC4
      8100F6B77100F5B36F00F8C79800FDE8D600FFFAFB00FFF9FB00FEF2F000FEF2
      EF00FFF3F000FEF1EF00FFF2F000FFF7F500FCEFEC00F1D6D900D59B9C00AB9D
      9D000000000000000000000000000000000000000000C7C3C30094777B00A579
      6900E2AA7F00E4B79300E6C2A100E5C1A200FCE9CE00FEF3D900FBF1DA00FBF1
      DA00FAECD400F8E4CA00F6DBBE00F4D1B100F2C6A300EFB78E00D5BEB500C7BA
      BC00D4BEBD00E2CECE00DDC7C700DCC5C500D8BEBE00E6D5D500F3E0E0009A83
      8300F0F0F000FEFEFE00000000000000000000000000FBFBFB00F0F9F000EAF8
      EA00EAF2EA00B0C6B0007F887700BEABA300E7C3B800F1B9A900F4AE9B00E69D
      8B00B87469005C3750001A0F8A000705C5000807B00009197A0020829F0063D5
      E500B2EFF800BFF2F800AAEEF6009AEAF60092E8F6007DDBF80045B1EA003E87
      B400A4BDAE00EBF4EB00FCFCFC0000000000404040005FBFA20066CCAD005CBE
      A00066CCAD0066CCAD006BCEB10091E7CD00AFFDE500AEF5DF00ADCDC300B1B3
      B200B6B7B600BCBDBC00C2C3C200C8C9C80041414100636363006D6D6D003B3D
      3D0097D8C200A8FDDD0066C3A400329A7B00329A7B00329A7B00329A7B00091C
      1600000000000000000000000000000000000000000000000000000000000000
      0000C7C3C300D3BCBE00F3E0D900F7F1D200FEF4CA00FEECBF00FEE3B100FCCE
      9000F7BD7D00F4B06F00F0A25B00EF9E5800F4B88400FCE1CA00FFFCFC00FFFD
      FF00FEF5F300FEF4F100FEF5F300FDF3F100FEF3F100FFFEFB00D09C9C00BFB9
      B90000000000FEFEFE000000000000000000000000009F9191009B808200C588
      6200E3A77B00E3B18A00E4BA9700E4B99600FCDFC100FDE7C900F9E4C900F9E5
      CA00F8E2C600F7DABD00F5D2B200F2C8A500EFBD9800F1B18500DCA98D00D2CA
      CD00D1BDBD00E1CBCB00DCC4C400DBC3C300D6BBBB00E4D3D300F3E0E0009B84
      8400F0F0F000FEFEFE00000000000000000000000000FDFDFD00FAFBFA00EDF9
      ED00D2F2D200BEEBBE00BDD1BD00A7A6A100AC938D00D9A89B00D29588008E5E
      610037226100130BAC000503DF000303DA000808B5000711800031566F00A6C6
      C900C1EBED00B0EEF5009EECF70097EBF60096EAF50090E5F0007CC9D500537B
      8900BBC8BF00F2F3F200FDFDFD0000000000404040005FBFA20066CCAD0066CC
      AD0069CEB00094E3CC00BDFBE700BFF8E600B6D4CA00B5B8B600BBBBBB00C0C1
      C000C6C7C600CCCDCC00D9D9D900DDDEDD00464746006B6B6B00797979003D3E
      3D008689870079B7A300A8FFE00070CAAB00329A7B00329A7B00329A7B00091C
      1600000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00C9C1C100E5D1CD00FCF9EA00FCEECA00FFE8B700FFE0
      A900FBCF9200F6BA7900F1A96800EC9C5A00E88D4600E8893F00EEA46B00F9D9
      BE00FFFEFC0000000000FEF8F700FDF5F300FEFAF800F9ECEB00B4818100E4E3
      E300000000000000000000000000000000000000000094808100A17D7800D389
      5B00E1A07400E3A98000E4B38D00E3B18C00FBD5B300FEDCBB00FADBBB00FBDC
      BC00FADAB900F9D5B400F8D0AC00F5C6A000F2B99200F2AF8100E6A47900D7CB
      CA00CEBDBC00E4D1D000E1CDCD00E0CCCC00DCC5C500E7D7D700F2DFDF009B86
      8600F0F0F000FEFEFE0000000000000000000000000000000000FCFCFC00F7F7
      F700E5F3E500B4E8B400BEE8BE00E0EAE000B5B8B1008C7A6E0066505000261D
      63000A06C7000100E9000000ED000303DF000809B3000C0F9F00191A70004551
      6A0087B1BA0096DCE40094E6F10094E6F20094E0E9008AC7CC00729791009EB2
      A200E0E3E100FAFAFA000000000000000000404040005FBFA20068CDAE0096E0
      CA00C9F9EA00D1FAED00C3DBD400BABDBB00BFBFBF00C5C5C500CBCBCB00D0D1
      D000DCDCDC00EDEDED00D0D0D0005A5A5A007B7B7B0073757400848584004343
      4300959595003537360093CDB900A6FFDF0077D1B100329A7B00329A7B00091C
      1600000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA0000000000D1CECE00FBF3F100F8F6F900F5EFEE00F7EBDC00FBE5
      BD00FFDEA400FFD49100FAC27F00F2AC6900EB995700E5894800E27A3300E073
      2A00E8915500F7D0B000FFFFFB00FDFCFF00FEFFFF00E7C1C100AA9293000000
      0000FEFEFE00000000000000000000000000F9F9F90097818400A4796D00D686
      5300DF986800E0A07300DFA67D00DFA37B00F9CAA500FBCEAA00F5CAA600F5C9
      A600F5C8A400F3C39E00F1BD9700F1B98F00F6BB8C00FCBE8500EDA46F00D7C6
      C200CEC0C000D8BFBE00D8BEBE00D5BBBB00D0B2B200E1CDCD00F2E0E0009B87
      8700F0F0F000FEFEFE00000000000000000000000000FDFDFD00FBFCFB00F8F8
      F800EAEDEA00CBEACB00A8E6A900A9DEAA00C5DFC4006D996A00546461001719
      9D000000E4000000F2000000F0000303DD00080AB300090BA4000C0DA3001013
      82002837590059838D0082C8D1008BD1D80075A1A7009AA7A700CCD9CF00CDE8
      CE00E9EDE900FAFBFA00FDFDFD0000000000404040008FD1BD00D4F7ED00DDFD
      F3008DB1A600B5B8B600C6C6C600C9CAC900CFCFCF00D5D5D500DFE0DF00F0F0
      F000DDDDDD006565650059595900C8C9C800EDEDED006C6C6C00909190004949
      4900A5A5A5003838380081828100558D7B00A5FFDF0080D8B800349B7C00091C
      1600000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FEFEFE00CCC1BE0000000000F6F2F200F6F0F000F3ECEF00F1E9
      EA00F3E3D400F9DBAF00FFD28F00FFCA7E00FBBC7100F1A25B00E4864400E079
      3700DC682200D85D1500DE712C00FBDEC100F3E8ED00B7848400E4E3E3000000
      000000000000000000000000000000000000F9F9F90099858700A87E7100D582
      4E00DA8B5A00DC946400E3A67500F0BA8A00FCCE9F00FDD2A400FAD1A500FACE
      A400F9CBA100F9CA9F00F9CA9D00FACB9A00FBC99500FCC58F00F0AA7600D9C6
      C200D3C7C800E5D2D100E3D0D000E2CECE00DFC9C900E7D7D700F2DEDE009D89
      8900F1F1F100FEFEFE00000000000000000000000000FBFBFB00EDF7ED00EDF5
      ED00E5EAE500C9E8C900D1EBD100D2EBD20079C5790056B1550065877500131B
      9C000000E9000000F2000000EF000203DC00070AB100090CA600090BA800090A
      A000141B6700495C570046746300638E8200B2BDB700E1E3E200EBF3EB00D2F1
      D200E7F7E800EEF9EE00FDFDFD000000000083838300535856008E999500324F
      4600346A5900B8B8B800D6D6D600D9DAD900E2E3E200F3F3F300E9E9E9007373
      730054545400C3C3C300F2F2F200BEBEBE004B4B4B0072727200CBCBCB004F4F
      4F00B4B5B4003E3F3E008F908F000021160051AE9100A4FFE00087DEBF000C1F
      180000000000000000000000000000000000000000000000000000000000FEFE
      FE0000000000DBDADA00F2E8E500FCFBFB00F7F3F300F6F1F000F4EBEB00F2E8
      E800EFE5E800ECE2E400EFDBCD00F7D1A200FEC67B00FFC06800F6AA5A00E17E
      3B00DC6F2B00DA631900E8965800F2D3C400C7959700CAC5C50000000000FEFE
      FE0000000000000000000000000000000000000000009A898A00AC8A8400D180
      4E00E59B6400F5BD8600FBCD9A00FCD2A100FED9AA00FEDEB100FEE1B500FFE3
      B700FFE3B700FFE1B500FFDEB000FED8A900FCCF9F00FDCC9800EBAB7C00DBCE
      CC00CFBFBF00D6BBBB00D1B5B500D0B2B200CAA9A900DDC8C800F3E0E0009E8B
      8B00F1F1F100FEFEFE00000000000000000000000000FCFCFC00F5F9F500DDF4
      DD00D7F1D700C2EAC200D7EAD800E3E7E300D2E6D20061B75F0025623D00121C
      9D000000E8000000F2000000EF000203DB00070BAE00090DA300090CA7000809
      A0001C206E004A7157006EA36E0086B48700E3EDE300EEF0EE00E9F3E900C7EF
      C700D8F3D800F6FAF600FBFBFB0000000000000000008F8F8F007C7C7C009595
      9500060A0900C5C5C500E9E9E900F5F5F500F2F2F200808080004D4D4D00BBBB
      BB00F5F5F500CDCDCD005555550069696900CDCECD00E9EAE900D6D6D6003434
      3400C4C5C400444544009E9F9E0021453A008AEDCF0093F3D5004C7768004142
      420000000000000000000000000000000000000000000000000000000000FDFD
      FD0000000000C1BAB900FFFFFE00F9F7F700F8F4F400F6F0F000F3ECEC00F2E8
      E800F0E5E500EEE1E100EBDFE200EADFE300EEDACF00F6CD9E00FEBD6A00EA8E
      4200E4894900F1B99100E8C8C800BE9A9D00D3D0D00000000000FEFEFE000000
      00000000000000000000000000000000000000000000A5989800AD939500D190
      6400FEC88E00F7C79400F9CD9D00FCD5A800FEE0B400FEE5BC00FEE8C000FEEA
      C200FEE9C200FEE8BF00FEE4BA00FEDFB400FDD8AB00FFD19E00E8B49100D9D2
      D500E2D5D500FAF0F000F1E4E400EEDFDF00EDDFDF00F0E3E300F4E1E1009F8C
      8C00F0F0F000FEFEFE0000000000000000000000000000000000F9FAF900F6F9
      F600D5F0D500ABE4AC00CDE6CE00E5E9E500E7EFE70085C684004A7C5D00131D
      9B000000E8000000F2000000EF000103DA00060BAC00080D9F00090DA400080A
      9C00262C7400A1B2A800DBEADB00A5DBA500DAEDDB00E4F1E500C3E6C300DCF0
      DC00F0F2F000FAFAFA0000000000000000000000000000000000000000000000
      00005A5A5A00CECECE00F7F7F7008F8F8F0049494900B2B2B200F7F7F700DADA
      DA005F5F5F0060606000CCCCCC00EDEDED00E4E4E400707070004F4F4F00B5B5
      B500D8D9D8004A4A4A00ADAEAD0034564B00568F7D002F363200B0B0B0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECECEC00E2D9D700FEFEFE00F9F7F600F7F4F400F6F1F100F4ECEC00F2E9
      E800EFE5E600EEE1E100ECDEDD00EBDCDB00EFE6E900E0CCCA00C99E9100E2AC
      9800D4AEAA00C0A6AA00C4B9B900F9F9F90000000000FDFDFD00000000000000
      00000000000000000000000000000000000000000000C4C0C000B39FA300B886
      6F00F6BB8200F9CF9F00FAD3A700FEDEB200FFE8BE00FDEBC500FFEBC800FFEC
      CA00FEECCA00FFEBC800FEEAC400FEE5BC00FEE2B700FCCB9900E0C1B200D6CF
      D300D6C6C500DCCECE00D8C8C800D5C2C200D4C1C100D3C1C100DDC7C700A18E
      8E00F5F5F500FEFEFE000000000000000000000000000000000000000000FBFB
      FB00F0F2F000E0EFE000AEDDAE00CAE6CA00DCECDC0088C88600719381001D24
      A1000000E8000000F2000202EF000406DA00060BA800090E9C00080DA000070B
      990036397C00CFD0D300ECF3ED00A6DDA600A3DEA300B9E5B900E6F2E600F3F4
      F300FCFCFC000000000000000000000000000000000000000000000000000000
      0000606060007676760030303000ADADAD00F8F8F800E6E6E6006C6C6C005959
      5900C6C7C600F0F0F000EFEFEF007F7F7F004A4A4A00ADADAD00E4E4E400EDED
      ED00919191004A4A4A00BCBDBC000D0D0D008F8F8F00F9F9F900000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC000000
      0000C0BDBC00FFFCFC00FCFBFC00FAF7F700F8F5F500F6F1F100F4ECEC00F2E9
      E900F0E6E600EEE2E200EBDEDE00E8DBDC00F9EDEC00BEA39B00EBEAEB00E6E5
      E500EDECEC00000000000000000000000000FDFDFD0000000000000000000000
      000000000000000000000000000000000000FCFCFC00FAFAFA00A7929200B6A1
      A200D2987000FFDAA800F8DAAF00FDE5BB00FFECC700FEEDCD00FEEED100FEEF
      D300FEEED300FFEED100FEECCB00FDECC800FFE9BC00E6B89800E0D9DB00CCBC
      BC00C5ADAD00D4C2C200D2BFBF00D2BEBE00D2BEBE00CCB7B700C8A1A100B1A8
      A80000000000FEFEFE0000000000000000000000000000000000000000000000
      0000FDFDFD00F4F4F400EAF2EB00B9DFB9008BCE8B0072C17000719380001B22
      A0000000E8000505F2001212F0002C2EE3002B30B40011169D000A0F9F00060A
      960030347700C1C5C600D8E9D8008BCF8B00AEDBAE00ECF3ED00F4F5F400FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000069696900787878002F2F2F00EEEEEE007777770053535300C0C0C000F2F2
      F200F5F5F5008E8E8E0046464600A6A6A600E7E7E700F4F4F400A2A2A2004444
      44008C8C8C00DADBDA00D1D1D100404040000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00D1CACA0000000000FBFAFA00FBF7F700F8F4F400F6F1F100F4ECEC00F2E9
      E900F0E6E600EDE1E100EBDDDD00EBE1E200F5DEDA00B0A6A300000000000000
      00000000000000000000FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F90000000000D8D3D300BBA7
      A900B89E9900DFAC8200FFE9BC00FDEBC500FDECCC00FDEED300FEF0D900FEF1
      DC00FEF1DB00FDEFD800FEF1D700FFF1CD00E9C09D00DED0CE00DAD2D200E0D2
      D200D9C9C900000000000000000000000000FEFCFC00E0C9C900B2A7A7000000
      0000FEFEFE000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700E8EAE800BEDEBF006CBC6B004E7D60001821
      9E000A0AE9001D1DF3005858F2008E8FF0008384E3004649BE00161BA400090E
      9600242B6F007895800093CB9300CEE5CE00E9EBE900F8F8F800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00000000000D0D0D001E1E1E005A5A5A00F9FAF900FAFAFA009D9D
      9D00474747009D9E9D00EAEAEA00F9F9F900B2B2B2004848480083838300DBDC
      DB00EFEFEF00C3C3C30042424200767676000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000CCCA
      CA00FAF6F500FDFEFE00FCFBFB00FBF8F800F8F4F400F6F1F100F4ECEC00F2E9
      E900F0E6E600EEE2E200E9DBDB00F6ECEC00CAAEA600E0E0E00000000000FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000B7AE
      AE00C5B3B500C0A8A400D7AF8E00FBE2B900FFF5D600FFF7E000FFF8E600FFF9
      EC00FFFAED00FFF7E400FAE5C900E5C3AB00DFD2D000D6CDCE00EBE3E200EEE4
      E400D5C4C400FEFDFD00FDFBFB00F8F3F300DCC2C200ACA0A00000000000FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00EDEEED00D8E6D7006C8F79002B34
      A1003434E7008282F600B2B2F500AFAFF500A1A2F4008C8CEE005A5DD1002226
      A4002A32710074967B00DCE9DC00EFF0EF00FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090909000CACACA005E5E5E00ABABAB00494949009696
      9600EBEBEB00FBFBFB00C2C2C2004C4C4C007A7A7A00DBDBDB00F2F2F200D2D2
      D200515151004B4B4B00D0D0D000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD0000000000C5C1
      C00000000000FCFDFE00FCFBFB00FAF6F600F7F4F400F6F1F100F4ECEC00F1E8
      E800EFE5E500EDE1E100EADEDF00FAE8E400AB9C980000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD000000
      0000B9B2B200C7B5B600CDBCBD00CFB0A200E3C6AD00F1DAC100F7E3CF00F7E4
      D500F2DDCE00E8CDBC00DEC5BA00DBD0D200D5CBCC00E8E0DF0000000000E9DE
      DE00D6C7C70000000000F9F5F500E0C9C900AEA3A30000000000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00EFF0EF00C5CAC9005E63
      9700A0A1DB00C1C1F200BDBDF600B1B1F700A2A2F7009595F6008B8AEE007071
      CD0053588100CACFCC00F1F2F100FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D000090909002B2B2B009E9E9E00FDFD
      FD00CECECE00555555006F6F6F00DBDBDB00F5F5F500DFDFDF00606060003F3F
      3F00C3C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00CCCA
      CA00E9E3E200FFFDFC0000000000FCFBFB00F6F4F400F4EFEF00F3EAEA00F2E9
      E900F0E6E600EBDFDE00F2E9EA00DBBEB700CFCDCD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD0000000000DBD8D800BCAFAF00C6B8BA00C7B7B800CEBAB700D3BEB800D4C1
      BC00D5C5C100D3C7C800D5CBCD00DAD0D000F3EEEE00FFFDFD00FDF8F800EAE0
      E000D7C8C800FCFAFA00E6D1D100AFA5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00EEEEEE00B9BA
      BB009494A100BABADC00B7B7ED00ABABF5009D9CF5009493EE00908FDE007B7A
      A600B7B7BD00EFEFEF00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00DDDDDD00909090007B7B7B005858
      580064646400D8D8D800F7F7F700EAEAEA006F6F6F0035353500B5B5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECEBEB00C7C3C200D1C7C400F5E8E400FFFCFA00FDFAFA00F5F0F100F0E8
      E800EEE3E300EADFDF00FCEEEC00B19C9700FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD000000000000000000C0B9B800E0D6D600D7CDCE00D3C9CA00D6CD
      CE00DDD5D600E5DEDE00F4F0EF000000000000000000FEFAFA00FFFCFC00EDE4
      E400D4C5C500E9D8D800AFA7A70000000000FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900EAEA
      EA00D1D1D2009797A300A1A1CB00A1A0E4009695E4008281C3008989A100CECE
      D100EBEBEB00FAFAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090909000383838003737
      3700CFCFCF00F1F1F1007E7E7E002D2D2D00A6A6A600FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00000000000000000000000000D7D5D400C1B6B300D9C6C100F6E5E100FCF3
      F200F4EDEE00F2ECEE00EDD1CB00C0BBBA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00CFCECE00FCFCFC00F7F6F600F4F2F200F5F3
      F300F7F5F500F8F8F800F7F4F400F2EFEF00F2EDED00F1EBEB00F1EAEA00E3D9
      D900CCBABA00B0A9A900FEFEFE00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00F2F2F200E9E9E900A9A9B0008888AD008686AF00A8A8B200DDDDDE00F2F2
      F200FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00FEFEFE006060
      6000686868002A2A2A0098989800FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00FBFBFB00FEFEFE000000000000000000F0F0F000C6BFBD00C2AE
      A800DAC3BD00F5E7E400BFA69F00F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5D3D300D6D2D200CFCACA00D1CBCB00CFC8
      C800CDC4C400CBC0C000CBBFBF00CBBEBE00C9BCBC00C8B9B900C5B5B500CBBA
      BA00BBB0B00000000000FCFCFC00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F800E5E5E500CBCBCE00CFCFD100E7E7E700F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007272
      720089898900F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00F7F7F70000000000000000000000
      0000D0C9C700D4A69B00BAADA90000000000FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFD2D2006A6967003B0507003B05
      07006A6967000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868000000000068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006E767D002B3C60006B1B28008600
      00003B0507006E70700000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0D89800F0D89800F0D0
      9400F0D09400F0D0940088888800F0D08400F0D08400F0D08400F0D08400E0C0
      840088888800F0C87400F0C06800F0C06800F0C0680088888800ECC05C00E8B8
      4C00E8B04000E8B04000E8B03400000000000000000000000000000000000000
      000000000000000000000000000000000000040404001C1C1800040404000404
      0400040404000404040004040400101010001010100004040400040404000404
      04000404040004040400040404001C1C18000404040004040400040404000404
      0400040404000404040010101000101010000404040004040400040404000404
      0400040404000404040004040400686868000404040004040400040404000404
      0400040404000404040004040400040404001414100004040400040404000404
      0400040404000404040004040400141410000404040004040400040404000404
      0400040404000404040010080800100808000404040004040400040404000404
      04000404040004040400040404006868680056B1D3001373B00035496F006B1B
      2800860000003B0507006E707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0DCA400F0DCA400F0D8
      9800F0D89800F0D8980088888800F0D09400F0D09400F0D08400F0D08400E0C0
      840088888800F0C88000F0C87400F0C06800F0C0680088888800ECC05C00ECC0
      5C00E8B84C00E8B04000E8B04000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400D8C87800DCC88400E0CC
      9400AC9C6C00A8A07800A8A07800E4D4A400D4C4A400E8DCB400ECE0C400ECE0
      C400ECE0C400F0E8CC00F0ECD800B4B8B400F0ECD800F4F0E400F4F0E400F4F0
      E400989898007880780068686400747474007880780078807800B4B8B400FFFF
      FF00FFFFFF00FFFFFF00040404006868680004040400100808008C744800C8B0
      8800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800040404006868680056B1D300219ACE001373B0003549
      6F006B1B2800860000003B050700777777000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0DCA400F0DCA400F0DC
      A400F0DCA400F0DCA40088888800F0D89800F0D89800F0D09400F0D09400E0C8
      940088888800F0D08400F0C88000F0C87400F0C8740088888800D0A850000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400D8C87800DCC884009C8C
      5C0014340C0014340C0004040400E4D4A400D4C4A400E8DCB400ECE0C400ECE0
      C400ECE0C400F0E8CC00F0ECD800B4B8B400F0ECD800F4F0E400F4F0E400F4F0
      E4003C3C38005890B00048A8E00030A8F000002438000404040078807800FFFF
      FF00FFFFFF00FFFFFF000404040068686800040404000404040010080800C0A8
      6C00F0D09400F0D09400F0D89800F0E0A800C8B08800F8E0B400F8E0B400F8E4
      C400F8E4C400F8ECD400F8ECD400C8B08800F8ECD400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F4E400DCDCD400C8B08800F8F8F400F8F8F400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00040404006868680089C8D9002EB1DB00219ACE001373
      B00035496F006B1B2800860000003B0507007777770000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4E0B400F4E0B400F4E0
      B400F0DCA400F0DCA40088888800F0DCA400F0DCA400F0D89800F0D89800E0C8
      A00088888800F0D08400F0D08400F0C88000F0C8740088888800B09858000000
      00006C707400546C7800546C7800183848000020380000040400000000000000
      00000000000000000000000000000000000004040400D8C87800DCC88400C0B0
      7800204C10003080180004040400A0987800D4C4A400E8DCB400ECE0C400ECE0
      C400ECE0C400F0E8CC00F0E8CC00B4B8B400F0ECD800F4F0E400F4F0E400F4F0
      E4003C3C380070C0F00050B0F00030A8F000001828000404040078807800FFFF
      FF00FFFFFF00FFFFFF00040404006868680004040400083C9800000410001008
      0800C0A87800F0D09400F0D89800F0E0A800C8B08800F8E0B400F8E0B400F8E4
      C400F8E4C400F8ECD400F8ECD400C8B08800F8ECD400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F4E400DCDCD400C8B08800F8F8F400F8F8F400F8F8F400FFFF
      FF00FFFFFF00FFFFFF0004040400686868000000000089C8D9002EB1DB00219A
      CE001373B00035496F006B1B2800860000003B05070077777700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800888888008888
      8800888888008888880088888800888888008888880088888800888888008888
      8800888888008888880088888800888888008888880088888800888888000000
      0000A0D8F80068C0F00048B0F00038A8F8001498F00000040400000000000000
      00000000000000000000000000000000000004040400D8C87800DCC88400E0CC
      9400284018004088200008200800746C5C00D4C4A400E8DCB400ECE0C400ECE0
      C400ECE0C400F0E8CC00F0E8CC00B4B8B400F0ECD800F4F0E400F4F0E400F4F0
      E4003C3C380070C0F00050B0F00030A8F00004040400040404004C4C4C00E0E0
      D000FFFFFF00FFFFFF000404040068686800040404000C64F8000860C8000004
      100010080800C0A87800F0D89800F0E0A800C8B08800F8E0B400F8E0B400F8E4
      C400F8E4C400C8BCA40090887800C8B08800F8ECD400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F4E400DCDCD400C8B08800F8F8F400F8F8F400F8F8F400FFFF
      FF00FFFFFF00FFFFFF000404040068686800000000000000000076C5DA002EB1
      DB00219ACE001373B00035496F006B1B2800860000003B050700CFD2D2000000
      0000CBCECE00A6A8A800838585008385850097999900BEC0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8E4C400F8E4C400F8E4
      C400F8E4C400F4E0B40088888800F4E0B400F4E0B400F0DCA400F0DCA400E0D0
      A40088888800F0D09400F0D09400F0D08400F0D0840088888800B09858000000
      0000A0D8F80068C0F00048B0F00038A8F8001498F00000040400000000000000
      00000000000000000000000000000000000004040400D8C87800DCC88400E0CC
      94003C442C0048883800284018004C4C3C00D4C4A400CCC09400B4AC8400B4AC
      8400ECE0C400F0E8CC00F0E8CC00B4B8B400F0ECD800F0ECD800B8B0A4007C80
      84004868780070C0F00050B0F00030A8F0000860980000304800040404000404
      040078807800FFFFFF000404040068686800040404000C64F8000870F8000860
      C8000010180010080800AC946C00F0E0A800C8B08800F0E0A800F8E0B400F8E4
      C400F8E4C4002828200010080800C8B08800F8ECD400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F4E400DCDCD400C8B08800F8F8F400F8F8F400F8F8F400F8F8
      F400FFFFFF00FFFFFF00040404006868680000000000000000000000000076C5
      DA002EB1DB00219ACE001373B00035496F006B1B28003B050700838585007777
      77003B382A004B4332005F593E004B4332002C26190010100F00585A6000BEC0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8E4C400F8E4C400F8E4
      C400F8E4C400F8E4C40088888800F4E0B400F4E0B400F4E0B400F0DCA400E0D0
      A40088888800F0D89800F0D09400F0D09400F0D0840088888800A08850000000
      0000A0D8F80068C0F00048B0F00038A8F8001498F00000040400000404000000
      00000000000000000000000000000000000004040400D8C87800DCC88400DCC8
      840070604000488838002C581C001C1C180098948C003C442C00486C3C00204C
      10005C584800ECE0C400F0E8CC00B8B0B000E0D8C0005C585400A8B0B800B8E0
      F80098D0F00070C0F00050B0F00030A8F0001098F0001098F0000878C8000018
      2800040404005C5854000404040068686800040404000854C8000870F800087C
      F8000870D800001C34000404040098886000C8B08800F0E0A800F8E0B400F8E4
      C4007870580004040400002C3000746C6400F8ECD400F8ECD400F8F4E400F8F4
      E400F8F4E400F8F4E400DCDCD400C8B08800F8F8F400F8F8F400F8F8F400F8F8
      F400F8F8F400FFFFFF0004040400686868000000000000000000000000000000
      000076C5DA002EB1DB00219ACE001373B00035496F003B0507002C2619009E8B
      6200E4CC9A00F5E2B900F9EDD400FDF1D500EBDCBD00A99978002C2619001010
      0F00A6A8A8000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8ECD400F8ECD400F8EC
      D400F8E4C400F8E4C40088888800F8E4C400F8E4C400F4E0B400F4E0B400E0D4
      B40088888800F0DCA400F0D89800F0D094008078780050504000141414006078
      880094D0F80068C0F00048B0F00038A8F8001498F00008487800041014000004
      04008078780000000000000000000000000004040400B8B0A400B8B0A400B8B0
      A400747468004074300040743000040404005C585400C0D8B80098C0880064A0
      54002C581C0090948C00B8B0B000ACACA4003C3C3800C4CCC400E0F0F800B8E0
      F80098D0F00070C0F00050B0F00030A8F0001098F0001098F0001098F0000C8C
      E40000182800040404000404040068686800040404006454340008489800087C
      F800087CF8000888E800001C34000404040074747400C8B08800C8B088009890
      8400040404000074840000D8D80004040400B0B0A000C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B0880004040400686868000000000000000000000000000000
      00000000000076C5DA002EB1DB00219ACE001373B0004B433200DBBE8400F1DA
      AB00EBDCBD00F1E4CB00F9EDD400FAF4E900FFFEFE00FFFEFE00EBDCBD004B43
      320010100F00B4B7B70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8ECD400F8ECD400F8EC
      D400F8ECD400F8ECD40088888800F8E4C400F8E4C400F8E4C400F4E0B400E0D4
      B40088888800F0DCA400F0DCA400807878001414140088909800C8E8F800A0D8
      F80080C8F00068C0F00048B0F00038A8F8001498F0001498F0001498F0000850
      88000410140080787800000000000000000004040400D8C07400D8C87800DCC8
      8400D0C08400304C2800609848000404040030303000F4F8F400D8E8D000A0C8
      980050784800ACA49400F0E8CC00747474007C808400FFFFFF00E0F0F800B8E0
      F80098D0F0003860780040586800286080000C8CE4001098F0001098F0001098
      F0000860980004040400040404006868680004040400F0C86C00988048001038
      60000878E8000890F8000C94EC00001C34000404040088786000B8A884001414
      1000002C300000F8F80000F8F8000058600058584800F8ECD400F8ECD400F8F4
      E400F8F4E400F8F4E400DCDCD400C8B08800F8F4E400F8F8F400F8F8F400F8F8
      F400F8F8F400F8F8F40004040400686868000000000000000000000000000000
      00000000000000000000B6CBD700A6BBD50035496F00CEB87900ECD19700EAD5
      A900EBDCBD00F1E4CB00FAF4E900FFFEFE00FFFEFE00FFFEFE00FFFEFE00F1E4
      CB002C2619003B382A00000000000000000000000000CFD2D200D4C7C700D4C7
      C700D2D0D00000000000000000000000000000000000F8ECD400F8ECD400F8EC
      D400F8ECD400F8ECD40088888800F8ECD400F8E4C400F8E4C400F8E4C400E0D4
      B40088888800F4E0B4008078780034343000D8D8D800D8F0F800C8E8F800A0D8
      F80080C8F00068C0F00048B0F00038A8F8001498F0001498F0001498F0001498
      F0000878C80004101400808080000000000004040400D8C07400D8C87800DCC8
      8400E0CC94003C442C0070A85C001828100028281C00A0A0A000FFFFFF00D0E0
      C8003C442C00ECE0C400ECE0C4005C585400A0A0A000B4B8B400A8B0B80088A8
      B8003040480004040400C4CCC400D4D4C400204058001098F0001098F0001098
      F0000C70B80004040400040404006868680004040400F0C86C00F0C87800C0A0
      6000203040000C84D80008A4F80008A4F8000040640004040400040404000010
      180000C8D800007484000098980000E8E80000101800DCCCB400F8ECD400F8F4
      E400F8F4E400F8F4E400DCDCD400C8B08800F8F4E400F8F4E400F8F8F400F8F8
      F400F8F8F400F8F8F4000404040068686800000000000000000000000000BEC8
      D80092AAE20099AFE000A6BBD5009297A300A0855100E7CA8C00C6BD8100A5BD
      7E00B9C38A00B8CA9800BCD1A600C2DBB900C2DBB900C2DBB900C2DBB900CAE4
      BE008B96570010100F00A6A8A80000000000D9B1B100E18B8B00E2848400E37F
      7F00E18B8B00DBA9A900CFD2D200000000000000000088888800888888008888
      8800888888008888880088888800888888008888880088888800888888008888
      8800888888008078780034343000E8E8E800FFFFFF00D8F0F800C8E8F800A0D8
      F80080C8F00068C0F0004098D00038A8F8001498F0001498F0001498F0001498
      F0001498F00008609800606060008080800004040400D8BC6800D8C07400D8C8
      7800DCC884005850400078B06800304C28005850400090846800686054005C58
      4800D4C4A400ECE0C400ECE0C4007C8084008078600074746800747468007474
      68007474680074746800C4CCC400E8E0D000305068001098F0001098F0001098
      F0000C70B80004040400040404006868680004040400F0C86C00F0C87800F0C8
      7800E0C07800001018000468A80008A4F80000BCF800044C640004040400008C
      980000C8D800645C54004858480000E8E8000074840034343000F8ECD400F8EC
      D400F8F4E400F8F4E400DCDCD400C8B08800F8F4E400F8F4E400F8F4E400F8F8
      F400F8F8F400F8F8F4000404040068686800000000000000000000000000B5C1
      DA00809FE600809FE60088A3DF00585A6000DABC7E00DBBE8400C6BD810098B0
      66009EB77500A5BD7E00A4C48C00ABC69000A9CB9B00A9CB9B00A9CB9B00A9CB
      9B00B9C38A002C26190077777700D6BBBB00E5787800E47D7D00E47D7D00E47D
      7D00E47D7D00E5787800DCA3A3000000000000000000F8F0E400F8F0E400F8F0
      E400F8F0E400F8F0E40088888800F8ECD400F8ECD400F8ECD400F8E4C400E0D4
      B4008888880014141400BCBCB400FFFFFF00FFFFFF00D8F0F800C8E8F800A0D8
      F800406078004040280068583000041014001870A8001498F0001498F0001498
      F0001498F0001498F000041014008080800004040400D8BC6800D8C07400D8C8
      7800DCC884007060400078A06800486C3C0028281C00E4D4A400E8DCB400E8DC
      B400E8DCB400ECE0C400ECE0C400B8B0B000F0E8CC00F0E8CC00F0ECD800F0EC
      D800F0ECD800ACA494005C6064002C586C000C8CE4001098F0001098F0001098
      F0000868A80004040400040404006868680004040400F0C06800F0C86C00F0C8
      7800F0C878004040400040607800044C780000BCF80000BCF8000080980000E0
      F80010484800ECD4A400DCCCA4001058580000E8E80000182400B8B09800F8EC
      D400F8ECD40004040400E0D8C400C8B08800F8F4E400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F8F4000404040068686800000000000000000000000000B5C1
      DA00809FE60086A2E4007A98DD006A696700E7CA8C00DBBE8400C6BD81009BB2
      6A009EB77500A5BD7E00A3C18800ABC69000A9CB9B00A9CB9B00A9CB9B00ABC6
      9000C7D198005F593E006B454500E18B8B00E47D7D00E37F7F00E47A7A00E47A
      7A00E47D7D00E47D7D00E47D7D00D6BBBB0000000000F8F0E400F8F0E400F8F0
      E400F8F0E400F8F0E40088888800F8ECD400F8ECD400F8ECD400F8ECD400E0D8
      C4008888880000040400CCCCC400BCBCB400BCBCB400A0B0B80090A8B8004860
      680000040400C0A86C00F0C88000786038002424240038A8F8001498F0001498
      F0001498F0001498F000002038006C70740004040400D8BC6800D8C07400D8C8
      7800DCC88400AC9C6C00688C5800688C580004040400E4D4A400E4D4A400E8DC
      B400E8DCB400ECE0C400ECE0C400B8B0B000ECE0C400F0E8CC00E0D8C000A0A0
      90006C90A40060A8D00050B0F00030A8F0001098F0001098F0001098F0001098
      F0000018280030303000040404006868680004040400F0C06800F0C86C00D0B0
      60007060380054646C0078C8F0004088B8000040580000BCE80000D0F8000098
      A80068686800ECD4A400F8E4C400746C640000B8B8000098980034343000F8EC
      D400040404000404040004040400C8B08800F8F4E400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F4E4000404040068686800000000000000000000000000B5C1
      DA00809FE60086A2E4007A98DD0077777700E7CA8C00DABC7E00DBBE8400A1B1
      69009BB26A009EB77500A5BD7E00A3C18800A4C48C00A4C48C00A4C48C00A3C1
      8800C7D1980073674B006B1B2800E18B8B00E37F7F00E47D7D00DCA3A300DBA9
      A900E47D7D00E37F7F00E47A7A00DE99990000000000F8F8E800F8F0E400F8F0
      E400F8F0E400F8F0E40088888800F8F0E400F8ECD400F8ECD400F8ECD400E0D8
      C400888888003434300040402800404028004040280034343000343430003434
      240034342400F0D08400F0C88000786038000004040038A8F8001498F0001498
      F0001498F0001498F000002038006C70740004040400D8BC6800D8BC6800D8C0
      7400D8C87800D0B88000485C44008CB8800010101000A8A07800E4D4A400E8DC
      B400E8DCB400E8DCB400ECE0C400B8B0B000ECE0C400C4BCA4007C808400B8E0
      F80098D0F00070C0F00050B0F00030A8F0001098F0001098F0000C8CE4000024
      38005C585400E8E0D000040404006868680004040400E4B45800584820005054
      5400B8D8E800A0D8F80078C8F00058B8F0003090D800003444000098B8000034
      44000010180010080800C8B89400C8C0B0002448400000E8E800002C30000404
      0400343430000034440004040400C8B08800F8F4E400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F4E4000404040068686800000000000000000000000000B5C1
      DA00809FE60086A2E4007A98DD006E767D00ECD19700DABC7E00DBBE8400B5B3
      6D0098B066009EB775009EB77500AAC18700ABC69000ABC69000ABC69000AAC1
      8700C7D198005F593E009D393900E2848400E47D7D00E0909000000000000000
      0000DE999900E47A7A00E47D7D00E18B8B0000000000F8F8E800F8F8E800F8F8
      E800F8F0E400F8F0E40088888800F8F0E400F8F0E400F8ECD400F8ECD400E0D8
      C40088888800F8E4C400F8E4C400F4E0B400F4E0B40088888800F0DCA400F0D8
      9800F0D09400C0A86C007868440018140400185078001498F0001498F0001498
      F0001498F0001498F000384048006C70740004040400D8BC6800D8BC6800D8C0
      7400D8C87800D8C878004C4C3C0098C088002030200080705000E4D4A400E4D4
      A400E8DCB400E8DCB400E8DCB400B8B0B000D4C4A40068686400E0F0F800B8E0
      F80098D0F00070C0F00050B0F0002898E000086098004070900078807800E0D8
      C000F4F0E400F4F0E4000404040068686800040404002820100098989800E8F0
      F800C8E8F800A0D8F80078C8F00058B8F00030A8F00020A0F800004064000C78
      C8000888E8000010180068686800C8C0B000C8BCA4000074840000A4B8001008
      08000404040000BCE800044C640004040400F8ECD400F8F4E400F8F4E400F8F4
      E400F8F4E400F8F4E4000404040068686800000000000000000000000000B5C1
      DA00809FE60083A1E50088A3DF005E647300EAD5A900DABC7E00DBBE8400CEB8
      790099AD5E009BB26A009BB26A00AFBF8200EBDCBD00EBDCBD00EBDCBD00EBDC
      BD00EAD5A9003B382A00BA6B6B00E18B8B00E5787800DCA3A300000000000000
      0000D9B1B100E47A7A00E37F7F00E37F7F0000000000F8F8F400F8F8E800F8F8
      E800F8F8E800F8F0E40088888800F8F0E400F8F0E400F8F0E400F8ECD400E0D8
      C40088888800F8E4C400F8E4C400F8E4C400F4E0B40088888800E0C8A0007868
      44002424240020485800286088002890D8001498F0001498F0001498F0001498
      F0001498F0000870B800606060008080800004040400C4B48400C4B48400C4B4
      8400C4B48400C4B4940058504000A8C8A000485C44004C4C3C00C4BCA400C4BC
      A400C4BCA400D4C4A400D4C4A400ACACA4005C584800C4CCC400E0F0F800B8E0
      F80098D0F0005088A0001828380074746800B4B8B400C8C8B800C4CCC400C4CC
      C400C4CCC400C4CCC40004040400686868000404040080808000FFFFFF00E8F0
      F800C8E8F800A0D8F8006098B80048789800185888000C94EC0020A0F80020A0
      F80020A0F8000468A8000404040098908400DCCCB400746C640000B8C8000034
      4400005860000088A80000BCF800001C3400C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B088000404040068686800000000000000000000000000B5C1
      DA00809FE60083A1E50092AAE200757E9300CBBFA600E7CA8C00DABC7E00DBBE
      8400A9AE640099AD5E0098B0660098B06600B9C38A00EAD5A900EAD5A900EAD5
      A900C1A978002C261900CBCECE00D2D0D000D6BBBB00D4C7C700000000000000
      0000D7B7B700E47A7A00E37F7F00E47D7D000000000088888800888888008888
      8800888888008888880088888800888888008888880088888800888888008888
      8800888888008888880088888800888888008888880058585000384048007090
      A80080C8F00068C0F00048B0F00038A8F8001498F0001498F0001498F0001498
      F0000888E80000182800808080000000000004040400C8B06C00CCB87400CCB8
      7400D0B88000D0C08400685C4400A8C8A0007088680028281C00D4C89800D4C8
      9800D4C4A400E4D4A400E4D4A400B8B0B00038342C00FFFFFF00E0F0F800B8E0
      F80098D0F0000404040030303000A0A090000010180000243800002438000024
      38000404040004040400040404006868680004040400C8C8C800FFFFFF00E8F0
      F800C8E8F8007090A80068686800E0C89000787058002C48580020A0F80020A0
      F80020A0F8000888E8000404040090887800ECD4A400DCCCA4002448400000D0
      E80000A4B800040404001058680000B0E80000406400E0D8C400E0D8C400E0D8
      C400E0D8C400E0D8C4000404040068686800000000000000000000000000B5C1
      DA00809FE60083A1E5008BA6E400BFC4CB006A696700F9EDD400DABC7E00DABC
      7E00CEB8790095A8570095A8570099AD5E0099AD5E00C6BD8100E4CC9A00ECD1
      97004B4332009799990000000000000000000000000000000000000000000000
      0000D9B1B100E47A7A00E37F7F00E37F7F0000000000F8F8F400F8F8F400F8F8
      F400F8F8E800F8F8E80088888800F8F0E400F8F0E400F8F0E400F8F0E400E0D8
      C40088888800F8ECD400F8E4C400C8BCA4001008080088909800C8E8F800A0D8
      F80080C8F00068C0F00048B0F00038A8F8001498F0001498F0001498F0003840
      48000018280080808000000000000000000004040400D0B05400D4B85C00D8BC
      6800D8BC6800D8C07400AC985C00848C78009CBC940004040400E0CC9400E4D4
      A400E4D4A400E4D4A400E4D4A400B8B0B00050483000E0E0D000E0F0F800B8E0
      F80098D0F0002C586C0004040400183848000C8CE4001098F0001098F0001098
      F000002438000404040004040400686868000404040070582000745C2C008068
      30008068300080683000B0945400F0C87800A8A080002030400020A0F80020A0
      F80020A0F80020A0F8000404040090887800F0E0A800F8E0B400B8A884000074
      840004040400ECDCB00004040400105868000080B80010080800DCCCB400F8EC
      D400F8ECD400F8ECD4000404040068686800000000000000000000000000B5C1
      DA00809FE60083A1E50086A2E400CFD2D200A6A8A80083858500FDF1D500E7CA
      8C00DABC7E00B5B36D0095A8570095A8570095A8570095A85700CEB879007367
      4B00777777000000000000000000000000000000000000000000000000000000
      0000E0909000E47D7D00E47D7D00E284840000000000F8F8F400F8F8F400F8F8
      F400F8F8F400F8F8E80088888800F8F8E800F8F0E400F8F0E400F8F0E400E0D8
      C40088888800F8ECD400C8BCA4001008080098989800D8F0F800C8E8F800A0D8
      F80080C8F00068C0F00048B0F00038A8F8001088D80008609800003458003840
      48000000000000000000000000000000000004040400D0B04800D0B05400D4B8
      5C00D8BC6800D8BC6800C8B06C0060685800C0D8B80010101000AC9C6C00E0CC
      9400E4D4A400E4D4A400E4D4A400B8B0A400948C740068686400E0F0F800B8E0
      F80098D0F00070C0F00050B0F00030A8F0001098F0001098F0001098F0000878
      C8000404040068605400040404006868680004040400E8B84C00ECC05C00ECC0
      5C00F0C06800F0C86C0090784000645434002C4858000C78C80020A0F80020A0
      F80020A0F8000468A80010080800C8B08800F0E0A800F0E0A800F8E0B4000404
      0400A8A08000F8E4C400E0D8C40004040400004064000058880028282000F8EC
      D400F8ECD400F8ECD4000404040068686800000000000000000000000000B5C1
      DA00809FE60083A1E50086A2E400C6CDD600000000009799990077777700E1DA
      CC00F5E2B900ECD19700B8BD7300A9AE640099AD5E008B9657005B783F008E99
      8D000000000000000000000000000000000000000000D2CDCD00DE999900E090
      9000E47D7D00E37F7F00E5787800DE99990000000000FFFFFF00FFFFFF00F8F8
      F400F8F8F400F8F8F40088888800F8F8E800F8F0E400F8F0E400F8F0E400E0D8
      C40088888800F8ECD4005050400088888800FFFFFF00D8F0F800C8E8F800A0D8
      F80080C8F0005098C80020486800203030008080800080808000000000000000
      00000000000000000000000000000000000004040400D0B04800D0B054009078
      38003840180054502400AC985C005C584800C8D8C00038342C0080705000E0CC
      9400E0CC9400E4D4A400E4D4A400B8B0A400E4D4A40038342C0088909800B8E0
      F80098D0F00070C0F00050B0F00030A8F0001098F0001098F0000878C8000018
      28005C584800F0E8CC00040404006868680004040400E8B03C00E8B84C00D0A0
      48007060380054646C0064A0C80058B8F00030A8F00020A0F80020A0F80020A0
      F80020A0F800001C3400AC946C00C8B08800F0E0A800F0E0A800F0E0A800F0E0
      A800F8E0B400F8E0B400DCCCB400C8B0880004040400044C7800004058000404
      0400F8E4C400040404000404040068686800CFD2D2000000000000000000B5C1
      DA00809FE60083A1E50086A2E400C6CDD6000000000000000000BEC0C0006E70
      700072716E009A927D009A927D005B783F005B783F005B783F008CB28200B8C8
      B6000000000000000000000000000000000000000000D2CDCD00E2848400E47A
      7A00E37F7F00E47D7D00E18B8B00D4C7C70000000000FFFFFF00FFFFFF00F8F8
      F400F8F8F400F8F8F40088888800F8F8E800F8F8E800F8F0E400F8F0E400E0D8
      C40088888800F8ECD40000040400D8D8D800FFFFFF00D8F0F800C8E8F800A0D8
      F8005888A80000040400C0A86C00685838000004040000040400000404000004
      04000004040000040400606060000000000004040400D0B04800907838006870
      600070A85C00448C2C0014340C0050483000D8E8D0006870600050483000E0CC
      9400E0CC9400E0CC9400E0CC9400B8B0A400E4D4A400E0CC9400685C44002838
      38006C90A40070C0F00050B0F00030A8F0000C8CE4000038580030302800B4AC
      8400ECE0C400ECE0C400040404006868680004040400E8B03C0090702C005054
      5400B8D8E800A0D8F80078C8F00058B8F00030A8F00020A0F80020A0F8000C84
      D80010385400AC946000F0D09400C8B08800F0D89800F0E0A800F0E0A800F0E0
      A800F0E0A800F8E0B400DCCCB400C8B08800F8E4C40004040400005888000034
      5800040404000404040004040400686868008BA6E400B5C1DA0000000000B8C4
      DA00809FE60083A1E50086A2E400C6CDD6000000000000000000000000000000
      0000CBCECE00B4B7B700A6A8A800ACBDAA008CB2820095B68C0090B4860095B6
      8C00CBD1CD0000000000000000000000000000000000D2D0D000E2848400E47D
      7D00E47D7D00E2848400D4C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000040400FFFFFF00FFFFFF00D8F0F800C8E8F800A0D8
      F800385868000004040098846400141414003048580008487800084878000848
      78000848780000203800606060000000000004040400CCA83C0068686800D8E8
      D000A8C8A00078B06800407430003C342000C4CCC40090A0900028281C00DCC8
      8400DCC88400E0CC9400E0CC9400B8B0A400E4D4A400E4D4A400E4D4A400CCC0
      940028281C0070C0F00050B0F00030A8F0000C70B80004040400746C5C00ECE0
      C400ECE0C400ECE0C400040404006868680004040400A078200050545400E8F0
      F800C8E8F800A0D8F80078C8F00058B8F0003090D8002878A800607878009880
      4800E0C07800F0D09400F0D09400C8B08800F0D09400F0D89800F0D89800F0E0
      A800F0E0A800F0E0A800ECD4A400C8B08800F8E0B400F8E0B400040404000040
      780000345800087CF800040404006868680083A1E500809FE600A6BBD500B8C4
      DA00809FE60083A1E50086A2E400C6CDD6000000000000000000000000000000
      000000000000000000000000000000000000B0C4AD008CB2820090B486008CB2
      8200C1CCC10000000000000000000000000000000000CFD2D200E0909000E47A
      7A00E47D7D00E47D7D00DCA3A3000000000000000000FFFFFF00A8404000F82C
      2C00F8383800F8383800F8444400F8505000F8505000F85C5C00F8686800F874
      7400F8848400F884840000040400E8E8E800FFFFFF00D8F0F800C8E8F800A0D8
      F80070B0D8001830380000040400041014003098E8001498F0001498F0001498
      F0001498F00000345800606060000000000004040400CCA83C0054502400E4EC
      E400E4ECE400B8D4B0005C74540068686800A0A0A000C8D8C00004040400D8C8
      7800DCC88400DCC88400E0CC9400B8B0A400E0CC9400E4D4A400E4D4A400E4D4
      A40038342C0070C0F00050B0F00030A8F0000C70B80004040400746C5C00E8DC
      B400E8DCB400E8DCB40004040400686868000404040038280800DCDCD400E8F0
      F800C8E8F800A0D8F8005888A80048483000A8987800F0C86C00B0945400B094
      5400B0945400AC946000C0A86C00C8B08800F0D09400F0D09400F0D89800F0D8
      9800F0E0A800F0E0A800DCCCA400C8B08800F0E0A800F0E0A800F8E0B4000404
      040000345800087CF800040404006868680083A1E50083A1E50083A1E50092AA
      E20083A1E50083A1E50086A2E400C6CDD6000000000000000000000000000000
      000000000000CBD1CD00CFD2D20000000000CBD1CD0095B68C0090B486008CB2
      8200B0C4AD000000000000000000000000000000000000000000D2CDCD00DBA9
      A900E47D7D00E47D7D00E37F7F00D4C7C70000000000FFFFFF00B85C5C00F838
      3800F8444400F8505000F8505000F85C5C00F8686800F8686800F8848400F884
      8400F8909000F89090005030300088888800FFFFFF00D8F0F800C8E8F800A0D8
      F80080C8F00068C0F00048B0F00038A8F8001498F0001498F0001498F0001498
      F0000888E80004101400000000000000000004040400C0A45400A89048003C3C
      3800B4B8B40090A0900048403000C0B0780078807800F4F0E400101010009C8C
      5C00D0C08400D0C08400D0C08400B8B0A400D4C89800D4C89800D4C89800D4C8
      980038342C005890B0003888B0002078B800085088000404040068605400E4D4
      A400E4D4A400E4D4A40004040400686868000404040034343000FFFFFF00E8F0
      F800C8E8F800A0D8F80020304000806830005848300010304800044C7800044C
      7800044C78000010180068686800C8B08800F0D09400F0D09400F0D09400F0D0
      9400F0D89800F0D89800DCCCA400C8B08800F0E0A800F0E0A800040404000034
      5800087CF8000870F8000404040068686800809FE60083A1E50083A1E50083A1
      E50083A1E50083A1E50086A2E400C6CDD6000000000000000000CBD1CD00A2BD
      9C009CBA940095B68C00C1CCC10000000000000000009CBA94008CB282008CB2
      8200AAC1A600000000000000000000000000D4C7C700D4C7C70000000000D2D0
      D000E2848400E47D7D00E47A7A00D9B1B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000040400BCBCB400D8F0F800C8E8F800A0D8
      F80080C8F00068C0F00048B0F00038A8F8001498F0001498F0001498F0000888
      E8000030480000000000000000000000000004040400B8A87000B8A87000AC9C
      6C009080480090804800C0B07800B4AC84005C585400FFFFFF004C4C4C006860
      5400C4B48400C4B48400C4B49400ACACA400C4B49400C4BCA400C4BCA400C4BC
      A400A0987800A0987800848C7800948C7400A0987800A0987800ACA49400C4BC
      A400C4BCA400C4BCA400040404006868680004040400281C0000FFFFFF00E8F0
      F800C8E8F800A0D8F80064A0C800102838001038600020A0F80020A0F80020A0
      F80020A0F800001C340074644400C8B08800C8B08800C8B08800C8B08800C8B0
      8800C8B08800C8B08800C8B08800C8B08800C8B088000404040004040400087C
      F800087CF8000870F800040404006868680099AFE00083A1E50083A1E50083A1
      E50083A1E50083A1E50086A2E400C6CDD6000000000000000000C1CCC1008CB2
      82008CB282008CB28200B8C8B60000000000000000009CBA940090B486008CB2
      8200AAC1A60000000000D9B1B100E0909000E47D7D00DBA9A900000000000000
      0000E18B8B00E47D7D00E47A7A00DBA9A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000404000004040088888800C8E8F800A0D8
      F80080C8F00068C0F00048B0F00038A8F8001498F0001498F0000870B8000018
      28000000000000000000000000000000000004040400C8A02C00C8A02C00CCA8
      3C00CCA83C00D0B04800D0B04800C0A860004C4C4C00FFFFFF00788078005044
      2800D8BC6800D8C07400D8C07400B8B0A400DCC88400DCC88400E0CC9400E0CC
      9400E0CC9400E0CC9400C4BCA400D4C89800E4D4A400E4D4A400E4D4A400E4D4
      A400E4D4A400E4D4A4000404040068686800040404007050080080808000E8F0
      F800C8E8F800A0D8F80078C8F00058B8F00030A8F00020A0F80020A0F80020A0
      F8000C70B80010080800E0B86800C8B08800F0C87800F0CC8400F0CC8400F0D0
      9400F0D09400F0D09400E0C89000C8B088000404040004040400040404000404
      04000404040004040400040404006868680000000000B5C1DA0083A1E50083A1
      E50083A1E50083A1E50086A2E400C6CDD6000000000000000000CBD1CD0095B6
      8C0090B486008CB282009CBA9400CBD1CD00B8C8B60090B4860090B486008CB2
      8200B0C4AD0000000000DE999900E5787800E47A7A00E090900000000000D4C7
      C700E2848400E47D7D00E47A7A00DBA9A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000040400141414005868
      6800A0D8F80068C0F00048B0F00038A8F8001498F00000182800000404000000
      00000000000000000000000000000000000004040400C49C1C00C8A02C00C8A0
      2C00CCA83C00CCA83C00D0B04800C0A8600068605400E0E0D000B4B8B4002820
      1000D8BC6800D8BC6800D8BC6800B8B0A400D8C87800D8C87800DCC88400DCC8
      8400DCC88400E0CC9400C4BCA400D4C89800E0CC9400E0CC9400E0CC9400E4D4
      A400E4D4A400E4D4A400040404006868680004040400D8981000281C00008080
      8000C8E8F800A0D8F80078C8F00058B8F00030A8F00020A0F80020A0F8000468
      A80028282000C0985000F0C86C00C8B08800F0C87800F0C87800F0C87800F0CC
      8400F0CC8400F0CC8400E0C89000C8B08800F0D09400F0D09400F0D09400F0D0
      9400F0D09400F0D8980004040400686868000000000000000000B5C1DA00809F
      E60083A1E50083A1E50086A2E400C6CDD600000000000000000000000000A2BD
      9C008CB2820090B4860090B4860095B68C0090B4860090B4860090B486008CB2
      8200C1CCC10000000000D9B1B100E47A7A00E37F7F00E47D7D00DE999900E090
      9000E47D7D00E37F7F00E47D7D00D6BBBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000606060000000
      0000A0D8F80068C0F00048B0F00038A8F8001498F00000040400000000000000
      00000000000000000000000000000000000004040400C49C1C00C49C1C00C8A0
      2C00C8A02C00CCA83C00CCA83C00C0A8600080786000ACACA400E4ECE4000404
      0400D4B85C00D8BC6800D8BC6800B8B0A400D8C07400D8C07400D8C87800D8C8
      7800DCC88400DCC88400C4B49400D4C89800E0CC9400E0CC9400E0CC9400E0CC
      9400E0CC9400E0CC9400040404006868680004040400E8A81800E8A818007050
      08002828200054646C0078C8F00058B8F00030A8F0000C84D800001C34009070
      2C00ECC05C00ECC05C00F0C06800C8B08800F0C86C00F0C87800F0C87800F0C8
      7800F0C87800F0C87800E0C89000C8B08800F0CC8400F0D09400F0D09400F0D0
      9400F0D09400F0D09400040404006868680000000000000000000000000099AF
      E000809FE60083A1E50086A2E400C6CDD600000000000000000000000000B8C8
      B6008CB2820090B4860090B4860090B4860090B4860090B486008CB282009CBA
      9400CFD2D20000000000D2CDCD00E2848400E47D7D00E37F7F00E47A7A00E47D
      7D00E37F7F00E47D7D00E18B8B00D2CDCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0D8F80068C0F00048B0F00038A8F8001498F00000040400000000000000
      00000000000000000000000000000000000004040400C49C1C00C49C1C00C49C
      1C00C8A02C00C8A02C00CCA83C00C0A45400B8A8700068686400B4B8B4002828
      1C00D0B05400D4B85C00D8BC6800ACA49400D8BC6800D8BC6800D8C07400D8C0
      7400D8C87800D8C87800C4B49400D0C08400DCC88400DCC88400DCC88400E0CC
      9400E0CC9400E0CC9400040404006868680004040400E8A00C00E8A81800E8A8
      1800E8A818004040400078C8F00058B8F00030A8F0000C70B80004040400E8B8
      4C00ECC05C00ECC05C00ECC05C00C8B08800F0C06800F0C86C00F0C86C00F0C8
      7800F0C87800F0C87800DCC08400C8B08800F0C87800F0CC8400F0CC8400F0CC
      8400F0CC8400F0CC84000404040068686800000000000000000000000000BEC8
      D80083A1E50083A1E50086A2E400C6CDD600000000000000000000000000CFD2
      D200A2BD9C008CB2820090B4860090B4860090B486008CB2820090B48600C1CC
      C100000000000000000000000000D7B7B700E47D7D00E47D7D00E37F7F00E37F
      7F00E47D7D00E47D7D00D7B7B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0D8F80068C0F00048B0F00038A8F8001498F00000040400000000000000
      00000000000000000000000000000000000004040400C49C1C00C49C1C00C49C
      1C00C49C1C00C8A02C00C8A02C00C0A04800B8A87000947C2C00A8883800A888
      3800D0B04800D0B05400D4B85C00ACA49400D8BC6800D8BC6800D8BC6800D8BC
      6800D8C07400D8C07400C4B48400D0C08400D8C87800D8C87800D8C87800DCC8
      8400DCC88400DCC88400040404006868680004040400E8A00C00E8A00C00E8A0
      0C00E8A818004040400078C8F00058B8F00030A8F0000C70B80004040400E8B0
      3C00E8B84C00E8B84C00ECC05C00C8B08800ECC05C00F0C06800F0C06800F0C0
      6800F0C86C00F0C86C00D8C07800C8B08800F0C87800F0C87800F0C87800F0C8
      7800F0C87800F0C878000404040068686800000000000000000000000000CFD2
      D20092AAE200809FE60086A2E400C6CDD6000000000000000000000000000000
      0000CFD2D200AAC1A60095B68C0090B4860090B486009CBA9400C1CCC1000000
      000000000000000000000000000000000000D7B7B700E18B8B00E47D7D00E37F
      7F00E18B8B00D7B7B70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000404000004040000040400000404000004040000040400000000000000
      0000000000000000000000000000000000000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400000000000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      040004040400040404000404040000000000424D3E000000000000003E000000
      2800000080000000000100000100010000000000001000000000000000000000
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
      00000000000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000000F000000000000000000000000
      C000000F000000000000000000000000C000001F000000000000000000000000
      C000003F000000000000000000000000C000007F000000000000000000000000
      C00001FF000000000000000000000000C00003FF000000000000000000000000
      C00007FF000000000000000000000000E000000FFFFFC3FF80000003FFFFFFFF
      C0000003E1FF803F80000001FFFFFFFF80000001C007000380000001FFFC0007
      00000000C000000180000001FFF00001000000008000000380000001FFF00001
      000000008000000780000003FFF00001000000008000000080000003C0000001
      0000000080000000C0000003800000030000000080000000C000000380000007
      0000000080000001C00000078000001F0000000000000000E00000078000000F
      0000000000000000F000000F8000000F0000000000000000FC00007FC000000F
      0000000000000001FFC003FFC000000F0000000000000001FFE00FFFC000000F
      0000000000000001FFC007FFE000000F0000000000000001FFC003FFFE00001F
      0000000000000003FF8003FFFF01001F0000000000000003FF8003FFFE00001F
      0000000000000003FF8003FFFE00803F0000000080000003FF0001FFFE00803F
      0000000080000003FF0000FFFC00407F0000000080000003FF0000FFFC007FFF
      00000000C0000007FE0000FFFC003FFF00000000E0000007FE0000FFFC003FFF
      00000000F8000007FE0000FFFC007FFF00000000FFFF800FFE0000FFFC007FFF
      00000000FFFF800FFF0001FFFC007FFF80000001FFFF800FFF0001FFFE00FFFF
      80000001FFFFC00FFF8003FFFF01FFFFC0000003FFFFF00FFFC007FFFF87FFFF
      F000000FFFFFFC1FFFE00FFFFFFFFFFFE000004FE000000FE000000FE000000F
      C0000007C0000003C0000003C0000003C0000003800000018000000180000001
      F0000001000000000000000000000000FFE00001000000000000000000000000
      FF900001000000000000000000000000FF000003000000000000000000000000
      FE000007000000000000000000000000FC00000F000000000000000000000000
      FE00001F000000000000000000000000FE000003000000000000000000000000
      F0000003000000000000000000000000F0000003000000000000000000000000
      E0000007000000000000000000000000E000000F000000000000000000000000
      F0000003000000000000000000000000FC000001000000000000000000000000
      F8000001000000000000000000000000E0000003000000000000000000000000
      E0000003000000000000000000000000E000000F000000000000000000000000
      E0000007000000000000000000000000FC000007000000000000000000000000
      F0000007000000000000000000000000E000000F000000000000000000000000
      C000009F0000000000000000000000008000007F000000000000000000000000
      001000FF00000000000000000000000001F020FF800000018000000180000001
      83F033FF800000018000000180000001C7FC7FFFC0000003C0000003C0000003
      EFFFFFFFF000000FF000000FF000000FFFFFFFFFE03FFFFFE000000FE000000F
      E00001FF8003FFFFC0000003C0000003C00001FF80007FFF8000000180000001
      C00001FF800007FF0000000000000000C00001FF8000007F0000000000000000
      C000001F800000070000000000000000C000000F800000070000000000000000
      C0000007800000070000000000000000C0000007800000070000000000000000
      C0000007800000070000000000000000C0000007800000070000000000000000
      C0000007800000070000000000000000C0000007800000070000000000000000
      C0000007000000070000000000000000C0000007000000070000000000000000
      C0000007000000070000000000000000C0000007000000070000000000000000
      C0000007000000030000000000000000E0000007000000030000000000000000
      E0000003000000030000000000000000F0000003000000030000000000000000
      F8200401000000030000000000000000FFF00801000000030000000000000000
      F8781801000000030000000000000000F03FF803000000030000000000000000
      F03C381F000000070000000000000000F0381C3FFE0000070000000000000000
      F0381FFFFE0600070000000000000000F8781FFFFE0003DF8000000180000001
      FFF81FFFFE0003FF8000000180000001FFFC3FFFFE0003FFC0000003C0000003
      FFFFFFFFFE0003FFF000000FF000000FFFFC03FFFFFFFFF1F00FFFFF87FFFF3F
      FFFC03FFFE0FFF81C001FFFF001E0001FF0C031FF803FE038000FFFF00000000
      FE000007E000F80780003FFF00000000FC000007E000300700000FFF00000000
      F8000003E000000F000007FF00000000F0000003C000000F0000021F00000000
      F00000038000001F0000001F00000000F80000038000001F0000000F00000000
      F8000007C00000070000000700000000F8000001E00000010000000100000000
      C0000001C0000000000000000000000080000000800000000000000000000000
      8000000000000000000000000000000080000000000000000000000100000000
      8000000000000001000000070000000000000001000000010000000700000000
      00000001C0000003000000070000000080000007800000030000000300000000
      80000007800000070000000300000000F0000003E000000F0000000300000000
      E0000003FC00000FC000000300000000C0000003FC000007C000000100000000
      80000003F8000001C00000010000000080000007F0000000E000000100000000
      80000007E010C000F000000180000000C000000FC0180010FC000001E0000000
      E000061F803F1C03FC000001FF800000E06007FF007FFE03FC000003FFFC0000
      F8E00FFF80FFFF07FC00000FFFFFF000FFE00FFFC1FFFF8FFFC003FFFFFFF000
      FFF01FFFE3FFFFFFFFC01FFFFFFFF800FFFFFF61FFFC07FFFFF801FFFFA723FF
      FE000080FF8007FFFFE000FFFF4080FFFFFFFF00FF8000FFFF80007FFE81003F
      FE000001FF8000FFFE00003FFF00000FFE000001F800007FF800001FFE000003
      FE7FF800F800000FE000000FFC000001FE000007C0000003C0000003F0008000
      FE7000078000000300000001E0000000FE0000038000000300000001A0000003
      F8C00007C0000003000000006000000FF60000038000000100000000E0000003
      E8000003800000010000000060000003D00000038000000100000000E0000007
      A000000380000001000000006000000B400000038000000100000000A000000B
      000000038000000100000007A000000F80000003800000010000000FF000000B
      80000003800000010000000FF800040F80000003C00000030000000FF4000017
      00000003800000010000000FF100001F00000003800000010000000FE800002F
      80000003800000018000000FE800005F80000003C0000003F000001FF00000BF
      80000003E0000007F000003FD000077F0000000BF000000FF00000FFE4003DFF
      40000717FC00003FF40000FFA0002FFFA000002FFE00007FFC0001FFA8007FFF
      D000245FFF0000FFFE0007FFC2007FFFE80000FFFF8001FFFE001FFFF0007FFF
      F601817FFFC003FFFF803FFFEE00FFFFF80000FFFFE007FFFF80FFFFF180FFFF
      FE0004FFFFF81FFFFFE3FFFFFE717FFF07FFFFFF000000FF8000000080000000
      03FFFFFF000000FF000000000000000001FFFFFF000000FF0000000000000000
      00FFFFFF0000003F0000000000000000007FFFFF0000003F0000000000000000
      803FFFFF0000003F0000000000000000C0103FFF0000003F0000000000000000
      E0000FFF0000001F0000000000000000F00007FF000000070000000000000000
      F80003FF000000030000000000000000FC000387000000010000000000000000
      E0000101000000000000000000000000E0000001000000000000000000000000
      E0000000000000000000000000000000E0000000000000000000000000000000
      E0000030000000000000000000000000E0000030000000000000000000000000
      E0000030000000010000000000000000E00003F0000000030000000000000000
      E00007F00000000F0000000000000000E0800F800000003F0000000000000000
      60C00F8000000001000000000000000020F00781000000010000000000000000
      00FF078100000001000000000000000000F907C0000000030000000000000000
      00C1872000000007000000000000000000C18430FFFE000F0000000000000000
      80C00420FFFF801F0000000000000000C0E00400FFFFC03F0000000000000000
      E0E00400FFFFE03F0000000000000000E0E00E01FFFFE03F0000000000000000
      E0F01F03FFFFE03F000000010000000100000000000000000000000000000000
      000000000000}
  end
end
