inherited frmAuthorityConfig: TfrmAuthorityConfig
  Left = 196
  Top = 235
  Width = 667
  Height = 441
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 388
    Width = 659
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 659
    Height = 388
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridComp: TdxDBGrid
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'COMP_NAME'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsAuthorityConfig
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridCompCOMP_NAME: TdxDBGridColumn
        Caption = #272#7889'i t'#432#7907'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMP_NAME'
        Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
      end
      object gridCompCOMP_TITLE: TdxDBGridColumn
        Caption = 'T'#234'n hi'#7875'n th'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 132
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMP_TITLE'
        Caption_UTF7 = 'T+AOo-n hi+HsM-n th+Hss'
      end
      object gridCompCOMP_CLASS: TdxDBGridColumn
        Caption = 'Lo'#7841'i'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMP_CLASS'
        Caption_UTF7 = 'Lo+HqE-i'
      end
      object gridCompFEATURENAME: TdxDBGridPopupColumn
        Caption = 'Ph'#226'n quy'#7873'n tr'#234'n ch'#7913'c n'#259'ng'
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME'
        OnCloseUp = gridCompFEATURENAMECloseUp
        OnInitPopup = gridCompFEATURENAMEInitPopup
        Caption_UTF7 = 'Ph+AOI-n quy+HsE-n tr+AOo-n ch+Huk-c n+AQM-ng'
      end
      object gridCompCHECK_VIEW: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'Xem'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHECK_VIEW'
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object gridCompCHECK_INSERT: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'Th'#234'm'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHECK_INSERT'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Th+AOo-m'
      end
      object gridCompCHECK_EDIT: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'S'#7917'a'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHECK_EDIT'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'S+Hu0-a'
      end
      object gridCompCHECK_DELETE: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'X'#243'a'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHECK_DELETE'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'X+APM-a'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 152
      Top = 361
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 2
      Top = 361
      Width = 75
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
      Caption = '&Qu'#233't'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      Action = acScan
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 77
      Top = 361
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 45
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
      Action = DataSetDelete1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 227
      Top = 361
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
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 507
      Top = 361
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
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acHelp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 582
      Top = 361
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
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acClose
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridComp
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
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
  object dxlcFeatureList: TdxLayoutControl [2]
    Left = 72
    Top = 88
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
      OnClick = ElPopupButton7Click
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
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = treeList
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
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
        Caption = 'C'#7845'u h'#236'nh ph'#226'n quy'#7873'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 624
    Top = 48
  end
  object qryAuthorityConfig: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FORM_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM SYS_COMPONENTS'
      'WHERE'
      '   COMP_NAME = :OLD_COMP_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME AND'
      '   PARENT_COMP = :OLD_PARENT_COMP')
    EditSQL.Strings = (
      'UPDATE SYS_COMPONENTS SET'
      '   COMP_NAME = :COMP_NAME, /*PK*/'
      '   FORM_NAME = :FORM_NAME, /*PK*/'
      '   PARENT_COMP = :PARENT_COMP, /*PK*/'
      '   COMP_TITLE = :COMP_TITLE,'
      '   COMP_CLASS = :COMP_CLASS,'
      '   SYSTEM_ID = :SYSTEM_ID,'
      '   FEATURE_ID = :FEATURE_ID,'
      '   CHECK_VIEW = :CHECK_VIEW,'
      '   CHECK_EDIT = :CHECK_EDIT,'
      '   CHECK_INSERT = :CHECK_INSERT,'
      '   CHECK_DELETE = :CHECK_DELETE'
      'WHERE'
      '   COMP_NAME = :OLD_COMP_NAME AND'
      '   FORM_NAME = :OLD_FORM_NAME AND'
      '   PARENT_COMP = :OLD_PARENT_COMP')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO SYS_COMPONENTS('
      '   COMP_NAME, /*PK*/'
      '   FORM_NAME, /*PK*/'
      '   PARENT_COMP, /*PK*/'
      '   COMP_TITLE,'
      '   COMP_CLASS,'
      '   SYSTEM_ID,'
      '   FEATURE_ID,'
      '   CHECK_VIEW,'
      '   CHECK_EDIT,'
      '   CHECK_INSERT,'
      '   CHECK_DELETE)'
      'VALUES ('
      '   :COMP_NAME,'
      '   :FORM_NAME,'
      '   :PARENT_COMP,'
      '   :COMP_TITLE,'
      '   :COMP_CLASS,'
      '   :SYSTEM_ID,'
      '   :FEATURE_ID,'
      '   :CHECK_VIEW,'
      '   :CHECK_EDIT,'
      '   :CHECK_INSERT,'
      '   :CHECK_DELETE)')
    KeyLinks.Strings = (
      'SYS_COMPONENTS.FORM_NAME'
      'SYS_COMPONENTS.COMP_NAME'
      'SYS_COMPONENTS.PARENT_COMP')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryAuthorityConfigBeforeDelete
    SQL.Strings = (
      'SELECT FORM_NAME'
      '     , COMP_NAME'
      '     , COMP_TITLE'
      '     , PARENT_COMP'
      '     , COMP_CLASS'
      '     , SYSTEM_ID'
      '     , FEATURE_ID'
      '     , FEATURENAME'
      '     , CHECK_VIEW'
      '     , CHECK_EDIT'
      '     , CHECK_INSERT'
      '     , CHECK_DELETE'
      'FROM SYS_COMPONENTS'
      'left JOIN SYS_FEATURE_LIST on '
      '  SYSTEM_ID=SUBSYSTEMID and'
      '  FEATURE_ID=FEATUREID'
      'where FORM_NAME=:FORM_NAME and'
      '  SYSTEM_ID=:SUBSYSTEMID ')
    FieldOptions = []
    Left = 232
    Top = 152
    object qryAuthorityConfigFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Required = True
      Size = 63
    end
    object qryAuthorityConfigCOMP_NAME: TWideStringField
      FieldName = 'COMP_NAME'
      Required = True
      Size = 63
    end
    object qryAuthorityConfigPARENT_COMP: TWideStringField
      FieldName = 'PARENT_COMP'
      Required = True
      Size = 63
    end
    object qryAuthorityConfigCOMP_CLASS: TWideStringField
      FieldName = 'COMP_CLASS'
      Required = True
      Size = 63
    end
    object qryAuthorityConfigSYSTEM_ID: TSmallintField
      FieldName = 'SYSTEM_ID'
    end
    object qryAuthorityConfigFEATURE_ID: TSmallintField
      FieldName = 'FEATURE_ID'
    end
    object qryAuthorityConfigCHECK_VIEW: TSmallintField
      FieldName = 'CHECK_VIEW'
    end
    object qryAuthorityConfigCHECK_EDIT: TSmallintField
      FieldName = 'CHECK_EDIT'
    end
    object qryAuthorityConfigCHECK_INSERT: TSmallintField
      FieldName = 'CHECK_INSERT'
    end
    object qryAuthorityConfigCHECK_DELETE: TSmallintField
      FieldName = 'CHECK_DELETE'
    end
    object qryAuthorityConfigCOMP_TITLE: TWideStringField
      FieldName = 'COMP_TITLE'
      Size = 126
    end
    object qryAuthorityConfigFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
  end
  object dsAuthorityConfig: TDataSource
    DataSet = qryAuthorityConfig
    Left = 232
    Top = 200
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 256
    Top = 136
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      DataSource = dsAuthorityConfig
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      ImageIndex = 45
      OnExecute = DataSetDelete1Execute
      DataSource = dsAuthorityConfig
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 44
      DataSource = dsAuthorityConfig
    end
    object acScan: TAction
      Category = 'Dataset'
      Caption = 'acScan'
      ImageIndex = 62
      OnExecute = acScanExecute
    end
    object acHelp: TAction
      Category = 'Dataset'
      Caption = 'acHelp'
      ImageIndex = 68
    end
    object acClose: TAction
      Category = 'Dataset'
      Caption = 'acClose'
      ImageIndex = 67
      OnExecute = acCloseExecute
    end
  end
  object qryScan: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'COMP_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FORM_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARENT_COMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMP_CLASS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SYSTEM_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FEATURE_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHECK_VIEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHECK_EDIT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHECK_INSERT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHECK_DELETE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMP_TITLE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'INSERT INTO SYS_COMPONENTS('
      '   COMP_NAME, /*PK*/'
      '   FORM_NAME, /*PK*/'
      '   PARENT_COMP, /*PK*/'
      '   COMP_CLASS,'
      '   SYSTEM_ID,'
      '   FEATURE_ID,'
      '   CHECK_VIEW,'
      '   CHECK_EDIT,'
      '   CHECK_INSERT,'
      '   CHECK_DELETE,'
      '   COMP_TITLE)'
      'VALUES ('
      '   :COMP_NAME,'
      '   :FORM_NAME,'
      '   :PARENT_COMP,'
      '   :COMP_CLASS,'
      '   :SYSTEM_ID,'
      '   :FEATURE_ID,'
      '   :CHECK_VIEW,'
      '   :CHECK_EDIT,'
      '   :CHECK_INSERT,'
      '   :CHECK_DELETE,'
      '   :COMP_TITLE)')
    FieldOptions = []
    Left = 304
    Top = 184
  end
  object qryFeatureList: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'SUBSYSTEMID'
        ParamType = ptInput
      end>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
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
    Left = 344
    Top = 64
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
  object dsFeatureList: TDataSource
    DataSet = qryFeatureList
    Left = 344
    Top = 112
  end
end
