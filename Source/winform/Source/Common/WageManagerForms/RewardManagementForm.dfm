inherited frmRewardManagement: TfrmRewardManagement
  Left = 362
  Top = 96
  Width = 828
  Height = 567
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 514
    Width = 820
  end
  object PanelBackground: TElPanel [1]
    Left = 0
    Top = 0
    Width = 820
    Height = 485
    Align = alClient
    BevelOuter = bvNone
    TransparentXPThemes = False
    UseXPThemes = False
    MouseCapture = False
    TabOrder = 1
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object LeftPanel: TElPanel
      Left = 0
      Top = 0
      Width = 321
      Height = 485
      Align = alLeft
      BevelOuter = bvNone
      TransparentXPThemes = False
      UseXPThemes = False
      MouseCapture = False
      TabOrder = 0
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object gridRewardResion: TdxDBGrid
        Left = 0
        Top = 0
        Width = 321
        Height = 485
        Bands = <
          item
            Caption = 'N'#7897'i dung th'#432#7903'ng'
            Width = 231
          end>
        DefaultLayout = False
        HeaderMinRowCount = 2
        HeaderPanelRowCount = 1
        KeyField = 'RESION_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = gridRewardResionEnter
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsREsion
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
        ShowBands = True
        object gridRewardResionRESION_NO: TdxDBGridColumn
          Caption = 'STT'
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 24
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RESION_NO'
        end
        object gridRewardResionLY_DO: TdxDBGridColumn
          Caption = 'N'#7897'i dung'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LY_DO'
          Caption_UTF7 = 'N+Htk-i dung'
        end
        object gridRewardResionTHANG: TdxDBGridSpinColumn
          Caption = 'Th'#225'ng th'#432#7903'ng'
          HeaderAlignment = taCenter
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'THANG'
          MinValue = 1.000000000000000000
          MaxValue = 12.000000000000000000
          Caption_UTF7 = 'Th+AOE-ng th+AbAe3w-ng'
        end
        object gridRewardResionNAM: TdxDBGridSpinColumn
          Caption = 'N'#259'm th'#432#7903'ng'
          HeaderAlignment = taCenter
          Width = 34
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NAM'
          MinValue = 1900.000000000000000000
          MaxValue = 9999.000000000000000000
          Caption_UTF7 = 'N+AQM-m th+AbAe3w-ng'
        end
        object gridRewardResionCO_TINH_THUE: TdxDBGridCheckColumn
          Caption = 'C'#243' t'#237'nh thu'#7871' TN'
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CO_TINH_THUE'
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption_UTF7 = 'C+APM t+AO0-nh thu+Hr8 TN'
        end
      end
    end
    object RightPanel: TElPanel
      Left = 326
      Top = 0
      Width = 494
      Height = 485
      Align = alClient
      BevelOuter = bvNone
      TransparentXPThemes = False
      UseXPThemes = False
      MouseCapture = False
      TabOrder = 1
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 494
        Height = 485
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object chkViewAll: TdxCheckEdit
          Left = 372
          Top = 29
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          StyleController = dmMain.StyleController
        end
        object ElPopupButton1: TElPopupButton
          Left = 395
          Top = 28
          Width = 85
          Height = 25
          Cursor = crDefault
          ImageIndex = 10
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Xem'
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Action = acXem
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxSoTien: TdxCalcEdit
          Left = 240
          Top = 54
          Width = 155
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 3
          Alignment = taRightJustify
          StyleController = dmMain.StyleController
          Text = '0'
          PopupBorder = pbSingle
          StoredValues = 1
        end
        object ElPopupButton2: TElPopupButton
          Left = 395
          Top = 53
          Width = 85
          Height = 25
          Cursor = crDefault
          ImageIndex = 54
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Nh'#7853'p nhanh'
          TabOrder = 4
          Color = 15466238
          ParentColor = False
          Action = acNhapNhanh
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object gridResionDetail: TdxDBGrid
          Left = 3
          Top = 86
          Width = 576
          Height = 396
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          TabOrder = 5
          OnEnter = gridResionDetailEnter
          DataSource = dsResionDetail
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridResionDetailEMPLOYEE_NO: TdxDBGridMaskColumn
            Caption = 'M'#227' NV'
            DisableEditor = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridResionDetailFULL_NAME: TdxDBGridPopupColumn
            Caption = 'H'#7885' t'#234'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 155
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            OnCloseUp = gridResionDetailFULL_NAMECloseUp
            OnInitPopup = gridResionDetailFULL_NAMEInitPopup
            Caption_UTF7 = 'H+Hs0 t+AOo-n'
          end
          object gridResionDetailDEPT_NAME: TdxDBGridMaskColumn
            Caption = #272#417'n v'#7883
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 142
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss'
          end
          object gridResionDetailTITLE_NAME: TdxDBGridMaskColumn
            Caption = 'Ch'#7913'c v'#7909
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c v+HuU'
          end
          object gridResionDetailRESION_NO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 621
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RESION_NO'
          end
          object gridResionDetailSO_TIEN: TdxDBGridCalcColumn
            Caption = 'S'#7889' ti'#7873'n'
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SO_TIEN'
            Caption_UTF7 = 'S+HtE ti+HsE-n'
          end
        end
        object cmbDeptList: TdxPopupEdit
          Left = 67
          Top = 29
          Width = 207
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnCloseUp = cmbDeptListCloseUp
          OnInitPopup = cmbDeptListInitPopup
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group4: TdxLayoutGroup
            Caption = '* Th'#244'ng tin t'#249'y ch'#7885'n'
            object dxLayoutControl1Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item1: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avCenter
                Caption = 'Ph'#242'ng ban'
                LookAndFeel = dmMain.StyleWeb
                Control = cmbDeptList
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item2: TdxLayoutItem
                AutoAligns = []
                AlignVert = avCenter
                Caption = 'Xem c'#7845'p d'#432#7899'i'
                Control = chkViewAll
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'ElPopupButton1'
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item4: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avCenter
                Caption = 'S'#7889' ti'#7873'n'
                Control = dxSoTien
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'New Group'
            LookAndFeel = dmMain.StyleWeb
            ShowCaption = False
            ShowBorder = False
            object dxLayoutControl1Item10: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridResionDetail
            end
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Caption = 'New Group'
            ShowCaption = False
            LayoutDirection = ldHorizontal
            ShowBorder = False
          end
        end
      end
    end
    object ElSplitter1: TElSplitter
      Left = 321
      Top = 0
      Width = 5
      Height = 485
      Cursor = crHSplit
      SnapTopLeft = True
      SnapBottomRight = True
      ControlTopLeft = LeftPanel
      ControlBottomRight = RightPanel
      AutoHide = False
      Align = alLeft
      UseXPThemes = False
    end
  end
  object dxLayoutControl2: TdxLayoutControl [2]
    Left = 0
    Top = 485
    Width = 820
    Height = 29
    Align = alBottom
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton3: TElPopupButton
      Left = 227
      Top = 2
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 11
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Kh'#244'ng l'#432'u'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 2
      Top = 2
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 46
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm'
      TabOrder = 0
      Color = 15466238
      ParentColor = False
      Action = DataSetInsert1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 152
      Top = 2
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
      Caption = 'L'#432'u'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 743
      Top = 2
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 60
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'In'
      TabOrder = 7
      Color = 15466238
      ParentColor = False
      Action = acIn
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 668
      Top = 2
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
      Caption = 'Thi'#7871't k'#7871
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acThietKe
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 593
      Top = 2
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 6
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xem tr'#432#7899'c'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acXemTruoc
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 450
      Top = 3
      Width = 143
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      OnCloseUp = dxPopupEdit1CloseUp
      OnInitPopup = dxPopupEdit1InitPopup
    end
    object ElPopupButton9: TElPopupButton
      Left = 77
      Top = 2
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
      Caption = 'X'#243'a'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl2Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avCenter
        Caption = 'New Group'
        LookAndFeel = dmMain.StyleWeb
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl2Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item8: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton9'
          ShowCaption = False
          Control = ElPopupButton9
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avCenter
          Caption = 'Ch'#7885'n m'#7851'u in v'#259'n b'#7843'n'
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton8'
          ShowCaption = False
          Control = ElPopupButton8
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton7'
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton6'
          ShowCaption = False
          Control = ElPopupButton6
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
        Caption = 'Thi'#7871't l'#7853'p khen th'#432#7903'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryResion: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_REWARD_RESION'
      'WHERE'
      '   RESION_NO = :OLD_RESION_NO')
    EditSQL.Strings = (
      'UPDATE HR_REWARD_RESION SET'
      '   RESION_NO = :RESION_NO, /*PK*/'
      '   LY_DO = :LY_DO,'
      '   THANG = :THANG,'
      '   NAM = :NAM,'
      '   CO_TINH_THUE = :CO_TINH_THUE'
      'WHERE'
      '   RESION_NO = :OLD_RESION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_REWARD_RESION('
      '   RESION_NO, /*PK*/'
      '   LY_DO,'
      '   THANG,'
      '   NAM,'
      '   CO_TINH_THUE)'
      'VALUES ('
      '   :RESION_NO,'
      '   :LY_DO,'
      '   :THANG,'
      '   :NAM,'
      '   :CO_TINH_THUE)')
    KeyLinks.Strings = (
      'hr_reward_resion.resion_no')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_reward_resion.resion_no,'
      '      hr_reward_resion.ly_do'
      '     , THANG'
      '     , NAM'
      '     , CO_TINH_THUE'
      'from hr_reward_resion')
    FieldOptions = []
    Left = 48
    Top = 80
    object qryResionRESION_NO: TIntegerField
      FieldName = 'RESION_NO'
      Required = True
    end
    object qryResionLY_DO: TWideStringField
      FieldName = 'LY_DO'
      Required = True
      Size = 63
    end
    object qryResionTHANG: TSmallintField
      FieldName = 'THANG'
    end
    object qryResionNAM: TSmallintField
      FieldName = 'NAM'
    end
    object qryResionCO_TINH_THUE: TSmallintField
      FieldName = 'CO_TINH_THUE'
    end
  end
  object dsREsion: TDataSource
    DataSet = qryResion
    Left = 48
    Top = 112
  end
  object qryResionDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'RESION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      '')
    EditSQL.Strings = (
      'UPDATE HR_REWARD_RESION_DETAIL SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   RESION_NO = :RESION_NO, /*PK*/'
      '   SO_TIEN = :SO_TIEN'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   RESION_NO = :OLD_RESION_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryResionDetailBeforePost
    DataSource = dsREsion
    SQL.Strings = (
      'select hr_reward_resion_detail.employee_no,'
      '      hr_get_emp_list.full_name,'
      '      hr_get_emp_list.title_name,'
      '      hr_get_emp_list.dept_name,'
      '      hr_reward_resion_detail.resion_no,'
      '      hr_reward_resion_detail.so_tien,'
      '      hr_reward_resion.ly_do'
      'from hr_reward_resion_detail'
      'join hr_get_emp_list(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      
        '  on hr_get_emp_list.emp_no = hr_reward_resion_detail.employee_n' +
        'o'
      'join hr_reward_resion'
      
        '  on hr_reward_resion.resion_no = hr_reward_resion_detail.resion' +
        '_no'
      'where hr_reward_resion_detail.resion_no = :RESION_NO'
      
        'and hr_get_emp_list.is_main_position =1 and hr_get_emp_list.dism' +
        'iss_date is null'
      ' ')
    FieldOptions = []
    Left = 88
    Top = 80
    object qryResionDetailEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryResionDetailFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryResionDetailRESION_NO: TIntegerField
      FieldName = 'RESION_NO'
      Required = True
    end
    object qryResionDetailSO_TIEN: TIBOFloatField
      FieldName = 'SO_TIEN'
    end
    object qryResionDetailTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryResionDetailDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryResionDetailLY_DO: TWideStringField
      FieldName = 'LY_DO'
      Required = True
      Size = 63
    end
  end
  object dsResionDetail: TDataSource
    DataSet = qryResionDetail
    Left = 88
    Top = 112
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 48
    Top = 48
    object acXem: TAction
      Caption = 'acXem'
      ImageIndex = 10
      OnExecute = acXemExecute
      OnUpdate = acXemUpdate
    end
    object acNhapNhanh: TAction
      Caption = 'acNhapNhanh'
      ImageIndex = 54
      OnExecute = acNhapNhanhExecute
      OnUpdate = acNhapNhanhUpdate
    end
    object acXemTruoc: TAction
      Caption = 'acXemTruoc'
      ImageIndex = 6
      OnExecute = acXemTruocExecute
    end
    object acThietKe: TAction
      Caption = 'acThietKe'
      ImageIndex = 59
      OnExecute = acThietKeExecute
    end
    object acIn: TAction
      Caption = 'acIn'
      ImageIndex = 60
      OnExecute = acInExecute
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      ImageIndex = 46
      DataSource = dsREsion
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 14
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 11
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      ImageIndex = 47
      DataSource = dsREsion
    end
    object acChonNhanh: TAction
      Caption = 'acChonNhanh'
      ImageIndex = 62
      OnExecute = acChonNhanhExecute
    end
  end
  object qryDeptList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'user_name'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'hr_department.dept_no')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select  hr_department.dept_no,'
      '        hr_department.dept_name,'
      '        hr_department.p_dept_no'
      'from hr_department'
      'where'
      '    (:user_name = '#39'sspadmin'#39' or (:user_name = '#39'smallfoot'#39'))'
      '    or hr_department.dept_no in'
      '    ('
      '        select sys_userdept.dept_no'
      '        from sys_userdept'
      '        where sys_userdept.final_read = 1'
      '          and sys_userdept.useraccid = :user_name'
      '    )')
    FieldOptions = []
    Left = 128
    Top = 80
    object qryDeptListDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDeptListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDeptListP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
  end
  object dsDeptList: TDataSource
    DataSet = qryDeptList
    Left = 128
    Top = 112
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 136
    Top = 200
  end
  object ppResionDetail: TppDBPipeline
    DataSource = dsThuongLe
    UserName = 'RewardResionDetail'
    Left = 168
    Top = 264
  end
  object rpResionDetail: TppReport
    AutoStop = False
    DataPipeline = ppResionDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    PreviewFormSettings.WindowState = wsMaximized
    Left = 168
    Top = 200
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppResionDetail'
  end
  object dsnResionDetail: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpResionDetail
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 168
    Top = 232
  end
  object qryThuongLe: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RESION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryResionDetailBeforePost
    DataSource = dsREsion
    SQL.Strings = (
      'select hr_reward_resion_detail.employee_no,'
      '      hr_get_emp_list.full_name,'
      '      hr_get_emp_list.title_name,'
      '      hr_get_emp_list.dept_name,'
      '      hr_reward_resion_detail.resion_no,'
      '      hr_reward_resion_detail.so_tien,'
      '      hr_reward_resion.ly_do'
      'from hr_reward_resion_detail'
      'join hr_get_emp_list(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      
        '  on hr_get_emp_list.emp_no = hr_reward_resion_detail.employee_n' +
        'o'
      'join hr_reward_resion'
      
        '  on hr_reward_resion.resion_no = hr_reward_resion_detail.resion' +
        '_no'
      'where hr_reward_resion_detail.resion_no = :RESION_NO '
      'and (so_tien>0 or not (so_tien is null))')
    FieldOptions = []
    Left = 136
    Top = 232
    object WideStringField1: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object IntegerField1: TIntegerField
      FieldName = 'RESION_NO'
      Required = True
    end
    object IBOFloatField1: TIBOFloatField
      FieldName = 'SO_TIEN'
    end
    object WideStringField3: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object WideStringField4: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object WideStringField5: TWideStringField
      FieldName = 'LY_DO'
      Required = True
      Size = 63
    end
  end
  object dsThuongLe: TDataSource
    DataSet = qryThuongLe
    Left = 136
    Top = 264
  end
end
