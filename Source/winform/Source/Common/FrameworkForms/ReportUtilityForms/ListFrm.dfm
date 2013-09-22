inherited frmList: TfrmList
  Left = 212
  Top = 234
  Width = 580
  Height = 385
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 332
    Width = 572
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Tag = -2
    Left = 0
    Top = 0
    Width = 572
    Height = 332
    Align = alClient
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    AutoContentSizes = [acsWidth, acsHeight]
    object dxdbgMain: TdxDBGrid
      Left = 3
      Top = 3
      Width = 499
      Height = 178
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryType = cstCount
            end>
          Name = 'dxdbgMainSummaryGroup1'
        end>
      SummarySeparator = ', '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDblClick = dxdbgMainDblClick
      OnKeyDown = dxdbgMainKeyDown
      OnMouseMove = OnGridMouseMove
      OnMouseUp = dxdbgMainMouseUp
      Filter.Criteria = {00000000}
      HideSelectionColor = clMoneyGreen
      HideSelectionTextColor = clBtnText
      HighlightColor = clMoneyGreen
      HighlightTextColor = clBtnText
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
      ShowHeader = False
      OnCustomDrawCell = OnCustomDrawCell
    end
    object dxdbtlMain: TdxDBTreeList
      Left = 3
      Top = 181
      Width = 499
      Height = 122
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnDblClick = dxdbtlMainDblClick
      OnDragOver = dxdbtlMainDragOver
      OnKeyDown = dxdbtlMainKeyDown
      OnMouseMove = OnGridMouseMove
      OnMouseUp = dxdbtlMainMouseUp
      LookAndFeel = lfUltraFlat
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanInsert, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoInvertSelect, etoRowAutoHeight, etoUseBitmap, etoUseImageIndexForSelected]
      ShowHeader = False
      TreeLineColor = clGrayText
    end
    inline frameToolbar1: TframeToolbar
      Left = 3
      Top = 304
      Width = 505
      Height = 25
      Align = alBottom
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 505
        Height = 25
        inherited btnDelete: TElPopupButton
          Top = 0
        end
        inherited btnInsert: TElPopupButton
          Top = 0
        end
        inherited btnSave: TElPopupButton
          Top = 0
        end
        inherited btnCancel: TElPopupButton
          Top = 0
        end
        inherited btnClose: TElPopupButton
          Left = 747
          Top = 0
        end
        inherited btnHelp: TElPopupButton
          Left = 627
          Top = 0
        end
        inherited btnChoose: TElPopupButton
          Left = 687
          Top = 0
        end
        inherited btnCopy: TElPopupButton
          Top = 0
        end
        inherited btnFirst: TElPopupButton
          Top = 0
        end
        inherited btnLast: TElPopupButton
          Top = 0
        end
        inherited btnPrevious: TElPopupButton
          Top = 0
        end
        inherited btnNext: TElPopupButton
          Top = 0
        end
        inherited btnDesign: TElPopupButton
          Left = 472
          Top = 0
        end
        inherited btnPreview: TElPopupButton
          Left = 447
          Top = 0
        end
        inherited btnPrint: TElPopupButton
          Left = 422
          Top = 0
        end
        inherited btnInsertEx: TElPopupButton
          Top = 0
        end
        inherited btnSendMail: TElPopupButton
          Left = 397
          Top = 0
        end
        inherited btnGenerate: TElPopupButton
          Left = 552
          Top = 0
        end
        inherited btnRelation: TElPopupButton
          Left = 527
          Top = 0
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 502
          Top = 0
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxlctrlInsertCopy: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlSave: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlCancel: TdxLayoutItem
              Visible = False
            end
            inherited dxLayoutControl1Group3: TdxLayoutGroup
              Visible = True
            end
          end
        end
      end
      inherited ActionList1: TActionList
        Left = 32
      end
      inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
        Left = 112
      end
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlctrlGrid: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = dxdbgMain
        ControlOptions.ShowBorder = False
      end
      object dxlctrlTree: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Visible = False
        Control = dxdbtlMain
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'frameToolbar1'
        ShowCaption = False
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
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
        Caption = 'Danh s'#225'ch d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsList: TDataSource
    Left = 48
    Top = 56
  end
  object memData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 96
    Top = 56
  end
  object qryReportDef: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'REPORT_ID'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    DeleteSQL.Strings = (
      '')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select A.MOD_ID'
      '     , A.P_KEYFIELD'
      '     , A.SQL_SELECT'
      '     , A.SQL_SUB1'
      '     , A.SQL_SUB2'
      '     , A.SQL_SUB3'
      '     , A.KEYFIELD'
      '     , B.COLOR_FIELD'
      '     , B.MARK_FIELD'
      'from SYS_REPORTS A'
      'LEFT JOIN SYS_MODULES B on B.MOD_ID = A.MOD_ID'
      'WHERE A.MOD_ID=:REPORT_ID')
    FieldOptions = []
    Left = 219
    Top = 54
    object qryReportDefMOD_ID: TSmallintField
      FieldName = 'MOD_ID'
      Required = True
    end
    object qryReportDefP_KEYFIELD: TWideStringField
      FieldName = 'P_KEYFIELD'
      Size = 30
    end
    object qryReportDefSQL_SELECT: TBlobField
      FieldName = 'SQL_SELECT'
      Size = 8
    end
    object qryReportDefSQL_SUB1: TBlobField
      FieldName = 'SQL_SUB1'
      Size = 8
    end
    object qryReportDefSQL_SUB2: TBlobField
      FieldName = 'SQL_SUB2'
      Size = 8
    end
    object qryReportDefSQL_SUB3: TBlobField
      FieldName = 'SQL_SUB3'
      Size = 8
    end
    object qryReportDefKEYFIELD: TWideStringField
      FieldName = 'KEYFIELD'
      Size = 30
    end
    object qryReportDefCOLOR_FIELD: TWideStringField
      FieldName = 'COLOR_FIELD'
      Size = 30
    end
    object qryReportDefMARK_FIELD: TWideStringField
      FieldName = 'MARK_FIELD'
      Size = 30
    end
  end
  object dsReportDef: TDataSource
    DataSet = qryReportDef
    Left = 235
    Top = 54
  end
  object qryTmp: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    RecordCountAccurate = True
    FieldOptions = []
    Left = 221
    Top = 24
  end
  object qryReportCaption: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'MOD_ID'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'MOD_ID'
      'OBJ_ID'
      'REL_CLASS')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryReportCaptionBeforeOpen
    SQL.Strings = (
      'SELECT A.MOD_ID'
      '     , A.OBJ_ID'
      '     , A.REL_CLASS'
      '     , A.COLUMN_WIDTH'
      '     , A.COLUMN_GROUP'
      '     , A.COLUMN_ALIGN'
      '     , A.COLUMN_FILTER'
      '     , A.COLUMN_FOOTER'
      '     , A.COLUMN_INDEX'
      '     , A.COLUMN_READONLY'
      '     , A.COLUMN_SORTED'
      '     , A.VISIBLE'
      '     , A.COLUMN_CLASS'
      '     , A.DISPLAY_FIELD'
      '     , A.COLUMN_IMAGE'
      '     , B.REF_MOD_ID LOOKUP_ID'
      '     , B.OBJ_DES COLUMN_CAPTION'
      'FROM SYS_REPORT_COLUMNS A'
      
        'LEFT JOIN SYS_MODULE_OBJ B on B.MOD_ID= A.MOD_ID and B.OBJ_ID= A' +
        '.OBJ_ID and B.REL_CLASS= A.REL_CLASS'
      'WHERE A.MOD_ID = :MOD_ID'
      'and A.REL_CLASS = 4'
      'ORDER BY A.COLUMN_INDEX')
    FieldOptions = []
    Left = 276
    Top = 54
    object qryReportCaptionMOD_ID: TSmallintField
      FieldName = 'MOD_ID'
      Required = True
    end
    object qryReportCaptionOBJ_ID: TWideStringField
      FieldName = 'OBJ_ID'
      Required = True
      Size = 63
    end
    object qryReportCaptionREL_CLASS: TSmallintField
      FieldName = 'REL_CLASS'
      Required = True
    end
    object qryReportCaptionCOLUMN_WIDTH: TSmallintField
      FieldName = 'COLUMN_WIDTH'
    end
    object qryReportCaptionCOLUMN_GROUP: TSmallintField
      FieldName = 'COLUMN_GROUP'
    end
    object qryReportCaptionCOLUMN_ALIGN: TSmallintField
      FieldName = 'COLUMN_ALIGN'
    end
    object qryReportCaptionCOLUMN_FILTER: TSmallintField
      FieldName = 'COLUMN_FILTER'
    end
    object qryReportCaptionCOLUMN_FOOTER: TSmallintField
      FieldName = 'COLUMN_FOOTER'
    end
    object qryReportCaptionCOLUMN_INDEX: TSmallintField
      FieldName = 'COLUMN_INDEX'
    end
    object qryReportCaptionCOLUMN_READONLY: TSmallintField
      FieldName = 'COLUMN_READONLY'
    end
    object qryReportCaptionCOLUMN_SORTED: TSmallintField
      FieldName = 'COLUMN_SORTED'
    end
    object qryReportCaptionVISIBLE: TSmallintField
      FieldName = 'VISIBLE'
    end
    object qryReportCaptionCOLUMN_CLASS: TSmallintField
      FieldName = 'COLUMN_CLASS'
    end
    object qryReportCaptionDISPLAY_FIELD: TWideStringField
      FieldName = 'DISPLAY_FIELD'
      Size = 30
    end
    object qryReportCaptionCOLUMN_IMAGE: TBlobField
      FieldName = 'COLUMN_IMAGE'
      Size = 8
    end
    object qryReportCaptionLOOKUP_ID: TSmallintField
      FieldName = 'LOOKUP_ID'
    end
    object qryReportCaptionCOLUMN_CAPTION: TWideStringField
      FieldName = 'COLUMN_CAPTION'
      Size = 255
    end
  end
  object dsReportCaption: TDataSource
    DataSet = qryReportCaption
    Left = 292
    Top = 54
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = ANSI_CHARSET
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
    Left = 144
    Top = 56
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = frameToolbar1.acDSInsert
      Caption = '&Th'#234'm'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Tag = 4020126
      Action = frameToolbar1.acDSDelete
      Caption = 'X'#243'a'
      Category = 0
      Hint = 'X'#243'a'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = frameToolbar1.acDSPost
      Caption = 'L'#432'u'
      Category = 0
      Hint = 'L'#432'u'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Tag = 4010004
      Action = frameToolbar1.acDSCancel
      Caption = 'Kh'#244'ng l'#432'u'
      Category = 0
      Hint = 'Kh'#244'ng l'#432'u'
      Visible = ivAlways
    end
    object piInsertChild: TdxBarButton
      Action = frameToolbar1.acDSInsertChild
      Caption = 'Th'#234'm c'#7845'p con'
      Category = 0
      Hint = 'Th'#234'm c'#7845'p con'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Action = acSelectAll
      Caption = 'Ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Action = acDeseclectAll
      Caption = 'B'#7887' ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'B'#7887' ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Action = acRevertSelect
      Caption = 'Ch'#7885'n ng'#432#7907'c l'#7841'i'
      Category = 0
      Hint = 'Ch'#7885'n ng'#432#7907'c l'#7841'i'
      Visible = ivAlways
    end
  end
  object pmMultiSelect: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton5
        Visible = True
      end
      item
        Item = dxBarButton6
        Visible = True
      end
      item
        Item = dxBarButton7
        Visible = True
      end>
    UseOwnFont = False
    Left = 440
    Top = 56
  end
  object dxpmMain: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = piInsertChild
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton3
        Visible = True
      end
      item
        Item = dxBarButton4
        Visible = True
      end>
    UseOwnFont = False
    Left = 176
    Top = 56
  end
  object ActionList1: TActionList
    Left = 440
    Top = 88
    object acSelectAll: TAction
      Caption = 'acSelectAll'
    end
    object acDeseclectAll: TAction
      Caption = 'acDeseclectAll'
    end
    object acRevertSelect: TAction
      Caption = 'acRevertSelect'
    end
  end
end
