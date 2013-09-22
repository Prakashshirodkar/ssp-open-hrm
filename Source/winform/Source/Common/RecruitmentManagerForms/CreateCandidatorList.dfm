inherited frmCreateCandidatorList: TfrmCreateCandidatorList
  Tag = -1
  Left = 426
  Top = 349
  Width = 313
  Height = 202
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 149
    Width = 305
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 305
    Height = 149
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxSelectSource: TdxImageEdit
      Left = 82
      Top = 28
      Width = 146
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxSelectSourceChange
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object ElPopupButton1: TElPopupButton
      Left = 216
      Top = 115
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 15
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 141
      Top = 115
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 9
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'&ng '#253
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxppSelectSource: TdxPopupEdit
      Left = 82
      Top = 51
      Width = 389
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dxppSelectSourceChange
      OnCloseUp = dxppSelectSourceCloseUp
      OnInitPopup = dxppSelectSourceInitPopup
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        Caption = 'Danh s'#225'ch '#273#432#7907'c thi'#7871't l'#7853'p t'#7915' :'
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Ngu'#7891'n d'#7919' li'#7879'u'
          Control = dxSelectSource
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'T'#234'n ngu'#7891'n'
          Control = dxppSelectSource
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'New Group'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
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
  object dxlcSelectSource: TdxLayoutControl [2]
    Left = 48
    Top = 152
    Width = 132
    Height = 90
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    object ElPopupButton3: TElPopupButton
      Left = 91
      Top = 38
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 0
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 10
      Top = 38
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 1
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridItemList: TdxDBGrid
      Left = 10
      Top = 10
      Width = 222
      Height = 252
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEM_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 2
      OnDblClick = gridItemListDblClick
      DataSource = dsItemList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridItemListITEM_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM_NO'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object gridItemListITEM_NAME: TdxDBGridColumn
        Caption = 'Danh m'#7909'c'
        HeaderAlignment = taCenter
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM_NAME'
        Caption_UTF7 = 'Danh m+HuU-c'
      end
      object gridItemListITEM_DATE: TdxDBGridDateColumn
        Caption = 'T'#7915' ng'#224'y'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM_DATE'
        Caption_UTF7 = 'T+Hus ng+AOA-y'
      end
    end
    object dxlcSelectSourceGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcSelectSourceItem3: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'gridItemList'
        ShowCaption = False
        Control = gridItemList
        ControlOptions.ShowBorder = False
      end
      object dxlcSelectSourceGroup1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcSelectSourceItem2: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcSelectSourceItem1: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
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
        Caption = 'Thi'#7871't l'#7853'p danh s'#225'ch '#7913'ng vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 472
    Top = 8
  end
  object dsItemList: TDataSource
    DataSet = qryItemList
    Left = 80
    Top = 104
  end
  object qryItemList: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\SEI\Databases\DB_REPARE\HRM_DB.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 48
    Top = 104
    object qryItemListPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryItemListITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryItemListITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 126
    end
    object qryItemListITEM_DATE: TDateField
      FieldName = 'ITEM_DATE'
      Required = True
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 80
    Top = 56
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 9
      OnExecute = acDongyExecute
      OnUpdate = acDongyUpdate
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acBoquaExecute
    end
  end
  object spExecute: TIBOStoredProc
    Params = <
      item
        DataType = ftString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TEST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FROM_ITEM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FROM_ITEM_TYPE'
        ParamType = ptInput
      end>
    StoredProcHasDML = True
    StoredProcName = 'HR_SP_INIT_TEST_LIST'
    DatabaseName = 'D:\Working\SEI\Databases\DB_REPARE\HRM_DB.gdb'
    IB_Connection = dmMain.connMain
    Left = 24
    Top = 96
  end
  object qryExecute: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'plan_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'test_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'test_type'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'from_item_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'from_item_type'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOC_LAI'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\SEI\Databases\DB_REPARE\HRM_DB.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure hr_sp_init_test_list(:plan_no,:test_no,:test_t' +
        'ype,:from_item_no,:from_item_type, :LOC_LAI)')
    FieldOptions = []
    Left = 144
    Top = 64
  end
end
