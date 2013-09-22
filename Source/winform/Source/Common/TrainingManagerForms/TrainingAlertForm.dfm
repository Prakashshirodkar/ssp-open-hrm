inherited frmTrainingAlert: TfrmTrainingAlert
  Left = 223
  Top = 235
  Width = 778
  Height = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 452
    Width = 770
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 770
    Height = 452
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 425
      Color = 15466238
      TabOrder = 8
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 924
        end
        inherited btnHelp: TElPopupButton
          Left = 824
        end
        inherited btnChoose: TElPopupButton
          Left = 894
          Width = 30
          ImageIndex = 9
          UseImageList = True
          Images = dmMain.imgAction
          Caption = '&Ch'#7885'n ph'#432#417'ng '#225'n'
          Action = acChon
        end
        inherited btnDesign: TElPopupButton
          Left = 548
          Width = 1
        end
        inherited btnPreview: TElPopupButton
          Left = 478
        end
        inherited btnPrint: TElPopupButton
          Width = 1
        end
        inherited btnGenerate: TElPopupButton
          Left = 699
          Width = 120
          ImageIndex = 9
          UseImageList = True
          Images = dmMain.imgAction
          Caption = '&Ch'#7885'n ph'#432#417'ng '#225'n'
          Action = acChon
        end
        inherited btnRelation: TElPopupButton
          Left = 579
          Width = 120
          ImageIndex = 6
          UseImageList = True
          Images = dmMain.imgAction
          ShowText = True
          Caption = '&Ki'#7875'm tra ph'#432#417'ng '#225'n'
          Action = acXemTruocKehoach
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 554
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxlctrlInsert: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlInsertCopy: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlDelete: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlSave: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlCancel: TdxLayoutItem
              Visible = False
            end
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
            end
          end
        end
      end
    end
    object dxDept: TdxPopupEdit [1]
      Left = 134
      Top = 28
      Width = 211
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxDeptChange
      OnCloseUp = dxDeptCloseUp
      OnInitPopup = dxDeptInitPopup
    end
    object dxViewAll: TdxCheckEdit [2]
      Left = 411
      Top = 28
      Width = 22
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
    end
    object ElPopupButton1: TElPopupButton [3]
      Left = 646
      Top = 28
      Width = 87
      Height = 25
      Cursor = crDefault
      ImageIndex = 20
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem d'#7919' li'#7879'u'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acXem
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxAtDate: TdxDateEdit [4]
      Left = 525
      Top = 51
      Width = 90
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object dxClass: TdxPopupEdit [5]
      Left = 134
      Top = 51
      Width = 211
      Enabled = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnChange = dxClassChange
      OnCloseUp = dxClassCloseUp
      OnInitPopup = dxClassInitPopup
    end
    object dxSelectAll: TdxCheckEdit [6]
      Left = 411
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      StyleController = dmMain.StyleController
      OnChange = dxSelectAllChange
      State = cbsChecked
    end
    object dxFromDate: TdxDateEdit [7]
      Left = 525
      Top = 28
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object gridData: TdxDBGrid [8]
      Left = 14
      Top = 107
      Width = 730
      Height = 285
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'KEY_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 6
      OnMouseUp = gridDataMouseUp
      DataSource = dsData
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridDataEMPLOYEE_NO: TdxDBGridColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridDataFULL_NAME: TdxDBGridColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object gridDataDEPT_NAME: TdxDBGridColumn
        Caption = #272#417'n v'#7883' - ph'#242'ng ban'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        GroupIndex = 0
        Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
      end
      object gridDataTITLE_NAME: TdxDBGridColumn
        Caption = 'Ch'#7913'c danh'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c danh'
      end
      object gridDataASSIGNED_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y b'#7893' nhi'#7879'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ASSIGNED_DATE'
        Caption_UTF7 = 'Ng+AOA-y b+HtU nhi+Hsc-m'
      end
      object gridDataCOURSE_CODE: TdxDBGridColumn
        Caption = 'M'#227' ch'#432#417'ng tr'#236'nh'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COURSE_CODE'
        Caption_UTF7 = 'M+AOM ch+AbABoQ-ng tr+AOw-nh'
      end
      object gridDataCOURSE_NAME: TdxDBGridColumn
        Caption = 'Ch'#432#417'ng tr'#236'nh '#272'T'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COURSE_NAME'
        Caption_UTF7 = 'Ch+AbABoQ-ng tr+AOw-nh +ARA-T'
      end
      object gridDataCLASS_CODE: TdxDBGridColumn
        Caption = 'M'#227' l'#7899'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASS_CODE'
        Caption_UTF7 = 'M+AOM l+Hts-p'
      end
      object gridDataCLASS_NAME: TdxDBGridColumn
        Caption = 'L'#7899'p '#273#224'o t'#7841'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASS_NAME'
        Caption_UTF7 = 'L+Hts-p +AREA4A-o t+HqE-o'
      end
      object gridDataTIME_PERIOD: TdxDBGridColumn
        Caption = 'Gi'#7899'i h'#7841'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIME_PERIOD'
        Caption_UTF7 = 'Gi+Hts-i h+HqE-n'
      end
      object gridDataTIME_UNIT: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = #272#417'n v'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIME_UNIT'
        Descriptions.WideStrings = (
          'ng'#224'y'
          'tu'#7847'n'
          'th'#225'ng'
          'n'#259'm')
        ShowDescription = True
        Values.WideStrings = (
          '1'
          '7'
          '30'
          '365')
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object gridDataEXPIRED_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y h'#7871't h'#7841'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EXPIRED_DATE'
        Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n'
      end
      object gridDataOVER_DUE: TdxDBGridColumn
        Caption = 'S'#7889' ng'#224'y tr'#7875
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OVER_DUE'
        Caption_UTF7 = 'S+HtE ng+AOA-y tr+HsM'
      end
      object gridDataSELECTED: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'Ch'#7885'n'
        HeaderAlignment = taCenter
        Width = 28
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SELECTED'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Ch+Hs0-n'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        Caption = '* T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
        LayoutDirection = ldHorizontal
        object dxlcMainGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainItem2: TdxLayoutItem
            AutoAligns = []
            Caption = 'Ch'#7885'n '#273#417'n v'#7883' - ph'#242'ng ban'
            Control = dxDept
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem7: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            Caption = 'L'#7885'c theo l'#7899'p '#273#224'o t'#7841'o'
            Control = dxClass
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlcMainGroup5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxlcMainItem3: TdxLayoutItem
              AutoAligns = []
              Caption = 'Xem c'#7845'p d'#432#7899'i'
              Control = dxViewAll
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem8: TdxLayoutItem
              Caption = 'Ch'#7885'n t'#7845't c'#7843
              Control = dxSelectAll
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainGroup6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxlcMainItem10: TdxLayoutItem
              Caption = 'Ch'#7885'n xem t'#7915' ng'#224'y'
              Control = dxFromDate
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              Caption = 'T'#237'nh '#273#7871'n ng'#224'y'
              Control = dxAtDate
              ControlOptions.ShowBorder = False
            end
          end
          object dxlcMainItem4: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlcMainGroup2: TdxLayoutGroup [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '* Danh s'#225'ch nh'#226'n vi'#234'n c'#7847'n '#273#224'o t'#7841'o'
        object dxlcMainItem6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'gridData'
          ShowCaption = False
          Control = gridData
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
        Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n qu'#225' h'#7841'n '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 696
    Top = 24
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 192
    Top = 176
    object acXem: TAction
      Caption = 'acXem'
      ImageIndex = 20
      OnExecute = acXemExecute
    end
    object acSelectAll: TAction
      Caption = 'acSelectAll'
      OnExecute = acSelectAllExecute
      OnUpdate = acSelectAllUpdate
    end
    object acUnSelectAll: TAction
      Caption = 'acUnSelectAll'
      OnExecute = acUnSelectAllExecute
    end
    object acSelectAllForDept: TAction
      Caption = 'acSelectAllForDept'
      OnExecute = acSelectAllForDeptExecute
    end
    object acUnselectAllForDept: TAction
      Caption = 'acUnselectAllForDept'
      OnExecute = acUnselectAllForDeptExecute
    end
    object acXemTruocKehoach: TAction
      Caption = 'acXemTruocKehoach'
      ImageIndex = 6
    end
    object acChon: TAction
      Caption = 'acChon'
      ImageIndex = 9
    end
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 56
    Top = 168
  end
  object qryData: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'VIEW_DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VIEW_FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VIEW_AT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VIEW_AT_CLASS'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    EditSQL.Strings = (
      'select tree_id from hr_global_variable')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'KEY_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '  EMPLOYEE_NO||HR_TRAINING_ALERT.CLASS_CODE KEY_ID,'
      '  EMPLOYEE_NO ,'
      '  FULL_NAME ,'
      '  POSITION_NO ,'
      '  DEPT_NO ,'
      '  DEPT_NAME ,'
      '  TITLE_NO ,'
      '  TITLE_NAME ,'
      '  ASSIGNED_DATE ,'
      '  HR_TRAINING_ALERT.COURSE_CODE ,'
      '  COURSE_NAME ,'
      '  HR_TRAINING_ALERT.CLASS_CODE ,'
      '  HR_TRAINING_ALERT.CLASS_NAME ,'
      '  HR_TRAINING_ALERT.TIME_PERIOD ,'
      '  HR_TRAINING_ALERT.TIME_UNIT ,'
      '  EXPIRED_DATE ,'
      '  OVER_DUE ,'
      '  HR_TRAINING_ALERT.DAY_COUNT, '
      '  SELECTED'
      '  , TEACHER'
      '  , CLASS_PLACE'
      ''
      
        'from HR_TRAINING_ALERT (:VIEW_DEPT_NO ,:VIEW_ALL,:VIEW_FROM_DATE' +
        ' ,:VIEW_AT_DATE ,:VIEW_AT_CLASS)'
      'LefT JOIN HR_TR_CLASS on '
      '  HR_TRAINING_ALERT.CLASS_CODE=HR_TR_CLASS.CLASS_CODE'
      'order by DEPT_NAME,EMPLOYEE_NO')
    FieldOptions = []
    Left = 56
    Top = 140
    object qryDataEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryDataPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryDataDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDataTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryDataASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object qryDataCOURSE_CODE: TWideStringField
      FieldName = 'COURSE_CODE'
      Size = 30
    end
    object qryDataCOURSE_NAME: TWideStringField
      FieldName = 'COURSE_NAME'
      Size = 126
    end
    object qryDataCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
    object qryDataCLASS_NAME: TWideStringField
      FieldName = 'CLASS_NAME'
      Size = 126
    end
    object qryDataTIME_PERIOD: TIntegerField
      FieldName = 'TIME_PERIOD'
    end
    object qryDataTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
    end
    object qryDataEXPIRED_DATE: TDateField
      FieldName = 'EXPIRED_DATE'
    end
    object qryDataOVER_DUE: TIntegerField
      FieldName = 'OVER_DUE'
    end
    object qryDataDAY_COUNT: TIntegerField
      FieldName = 'DAY_COUNT'
    end
    object qryDataSELECTED: TIntegerField
      FieldName = 'SELECTED'
      Required = True
    end
    object qryDataKEY_ID: TWideStringField
      FieldName = 'KEY_ID'
      ReadOnly = True
      Size = 60
    end
    object qryDataTEACHER: TWideStringField
      FieldName = 'TEACHER'
      Size = 126
    end
    object qryDataCLASS_PLACE: TWideStringField
      FieldName = 'CLASS_PLACE'
      Size = 3072
    end
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
    Left = 200
    Top = 136
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acSelectAll
      Caption = 'Ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = acUnSelectAll
      Caption = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = acSelectAllForDept
      Caption = 'Ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Action = acUnselectAllForDept
      Caption = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Ch'#7885'n nhanh theo '#273#417'n v'#7883
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton3
          Visible = True
        end
        item
          Item = dxBarButton4
          Visible = True
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Ch'#7885'n nhanh theo l'#7899'p h'#7885'c'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
  end
  object dxSelectMenu: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarSubItem1
        Visible = True
      end
      item
        Item = dxBarSubItem2
        Visible = True
      end>
    UseOwnFont = False
    Left = 168
    Top = 192
  end
end
