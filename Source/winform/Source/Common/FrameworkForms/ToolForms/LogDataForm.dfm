inherited frmLogData: TfrmLogData
  Left = 74
  Top = 241
  Width = 911
  Height = 504
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 451
    Width = 903
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 903
    Height = 451
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    inline frameDateTime1: TframeDateTime
      Left = 256
      Top = 28
      Width = 459
      Height = 29
      Color = 15466238
      ParentColor = False
      TabOrder = 5
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 459
      end
    end
    object dxSelectType: TdxPopupEdit
      Left = 80
      Top = 31
      Width = 121
      Enabled = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      OnCloseUp = dxSelectTypeCloseUp
      OnInitPopup = dxSelectTypeInitPopup
    end
    object dxSelectAll: TdxCheckEdit
      Left = 233
      Top = 31
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxSelectAllChange
      State = cbsChecked
    end
    object ElPopupButton1: TElPopupButton
      Left = 715
      Top = 30
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
      Caption = '&Xem'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      Action = acXem
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridLogData: TdxDBGrid
      Left = 14
      Top = 90
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LOG_ID'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 3
      DataSource = dsLogData
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
      object gridLogDataCONNECTION_ID: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881' IP'
        Color = 14673151
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONNECTION_ID'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk IP'
      end
      object gridLogDataHOST_NAME: TdxDBGridColumn
        Caption = 'T'#234'n m'#225'y'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HOST_NAME'
        Caption_UTF7 = 'T+AOo-n m+AOE-y'
      end
      object gridLogDataUSER_ID: TdxDBGridColumn
        Caption = 'Ng'#432#7901'i d'#249'ng'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USER_ID'
        Caption_UTF7 = 'Ng+AbAe3Q-i d+APk-ng'
      end
      object gridLogDataTIME_ID: TdxDBGridDateColumn
        Caption = 'Th'#7901'i '#273'i'#7875'm'
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIME_ID'
        Caption_UTF7 = 'Th+Ht0-i +ARE-i+HsM-m'
      end
      object gridLogDataFEATURENAME: TdxDBGridColumn
        Caption = 'Ph'#226'n lo'#7841'i ch'#7913'c n'#259'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME'
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i ch+Huk-c n+AQM-ng'
      end
      object gridLogDataACTION_TYPE: TdxDBGridImageColumn
        Alignment = taCenter
        Caption = 'Ph'#226'n lo'#7841'i'
        Color = clInfoBk
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACTION_TYPE'
        Descriptions.WideStrings = (
          'Th'#234'm'
          'S'#7917'a'
          'X'#243'a'
          'Hi'#7879'u ch'#7881'nh')
        ShowDescription = True
        Values.WideStrings = (
          'INSERT'
          'EDIT'
          'DELETE'
          'EXECUTE')
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
      end
      object gridLogDataLOG_DATA: TdxDBGridColumn
        Caption = 'Nh'#7853't k'#253
        HeaderAlignment = taCenter
        Width = 342
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOG_DATA'
        SummaryFooterType = cstCount
        SummaryFooterField = 'LOG_DATA'
        SummaryFooterFormat = 'T'#7893'ng s'#7889' l'#7847'n ghi: #0'
        Caption_UTF7 = 'Nh+Hq0-t k+AP0'
        SummaryFooterFormat_UTF7 = 'T+HtU-ng s+HtE l+Hqc-n ghi: #0'
      end
    end
    object ElPopupButton2: TElPopupButton
      Left = 790
      Top = 30
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
      Caption = '&X'#243'a'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acXoa
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Xem theo lo'#7841'i'
          Control = dxSelectType
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'T'#7845't c'#7843
          Control = dxSelectAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Control = frameDateTime1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '* NH'#7852'T K'#221' D'#7918' LI'#7878'U'
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridLogData
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxlcFeatureList: TdxLayoutControl [2]
    Left = 80
    Top = 152
    Width = 265
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton7: TElPopupButton
      Left = 2
      Top = 166
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Danh m'#7909'c'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 113
      Top = 166
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
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton9: TElPopupButton
      Left = 188
      Top = 166
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object treeList: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FEATUREID'
      ParentField = 'P_FEATUREID'
      TabOrder = 0
      OnDblClick = treeListDblClick
      DataSource = dsFeatureList
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object treeListFEATURENAME: TdxDBTreeListColumn
        Caption = 'Danh s'#225'ch ch'#7913'c n'#259'ng'
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME'
        Caption_UTF7 = 'Danh s+AOE-ch ch+Huk-c n+AQM-ng'
      end
      object treeListFEATURENAME_ENG: TdxDBTreeListColumn
        Caption = 'Danh s'#225'ch ch'#7913'c n'#259'ng'
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME_ENG'
        Caption_UTF7 = 'Danh s+AOE-ch ch+Huk-c n+AQM-ng'
      end
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = treeList
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup4: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem6: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton7
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton8
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton9
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
        Caption = 'Nh'#7853't k'#253' thay '#273#7893'i d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 616
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 344
    Top = 64
    object acXem: TAction
      Caption = 'acXem'
      ImageIndex = 6
      OnExecute = acXemExecute
    end
    object acXoa: TAction
      Caption = 'acXoa'
      ImageIndex = 47
      OnExecute = acXoaExecute
    end
  end
  object dsLogData: TDataSource
    DataSet = qryLogData
    Left = 152
    Top = 192
  end
  object qryLogData: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'SYS_LOG_DATA.LOG_ID')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LOG_ID'
      '     , CONNECTION_ID'
      '     , HOST_NAME'
      '     , TIME_ID'
      '     , USER_ID'
      '     , SYSTEM_ID'
      '     , FEATURE_ID'
      '     , FEATURENAME'
      '     , LOG_DATA'
      '     , ACTION_TYPE'
      'FROM SYS_LOG_DATA'
      'left JOIN SYS_FEATURE_LIST on '
      '  FEATURE_ID=FEATUREID AND'
      '  SYSTEM_ID=SUBSYSTEMID'
      'order by LOG_ID')
    FieldOptions = []
    Left = 152
    Top = 160
    object qryLogDataLOG_ID: TIntegerField
      FieldName = 'LOG_ID'
      Required = True
    end
    object qryLogDataCONNECTION_ID: TWideStringField
      FieldName = 'CONNECTION_ID'
      Required = True
      Size = 30
    end
    object qryLogDataHOST_NAME: TWideStringField
      FieldName = 'HOST_NAME'
      Size = 30
    end
    object qryLogDataTIME_ID: TDateTimeField
      FieldName = 'TIME_ID'
      Required = True
    end
    object qryLogDataUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Size = 30
    end
    object qryLogDataSYSTEM_ID: TSmallintField
      FieldName = 'SYSTEM_ID'
    end
    object qryLogDataFEATURE_ID: TSmallintField
      FieldName = 'FEATURE_ID'
    end
    object qryLogDataLOG_DATA: TWideStringField
      FieldName = 'LOG_DATA'
      Size = 3072
    end
    object qryLogDataFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
    object qryLogDataACTION_TYPE: TWideStringField
      FieldName = 'ACTION_TYPE'
      Size = 15
    end
  end
  object dsFeatureList: TDataSource
    DataSet = qryFeatureList
    Left = 240
    Top = 256
  end
  object qryFeatureList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SUBSYSTEMID'
      '     , FEATUREID'
      '     , FEATURENAME'
      '     , P_FEATUREID'
      '     , FEATURENAME_ENG'
      'FROM SYS_FEATURE_LIST'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 240
    Top = 208
    object qryFeatureListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryFeatureListFEATUREID: TSmallintField
      FieldName = 'FEATUREID'
      Required = True
    end
    object qryFeatureListFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
    object qryFeatureListP_FEATUREID: TIntegerField
      FieldName = 'P_FEATUREID'
    end
    object qryFeatureListFEATURENAME_ENG: TWideStringField
      FieldName = 'FEATURENAME_ENG'
      Size = 126
    end
  end
end
