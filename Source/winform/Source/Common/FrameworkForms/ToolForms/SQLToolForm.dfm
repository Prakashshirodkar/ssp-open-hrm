inherited frmSQLTool: TfrmSQLTool
  Left = 190
  Top = 183
  Width = 736
  Height = 491
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 438
    Width = 728
  end
  object pageSQL_List: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 249
    Height = 392
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = dmMain.imglDeptTree
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
    ActivePage = tabSQL_List
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alLeft
    ParentColor = False
    TabOrder = 1
    object tabSQL_List: TElTabSheet
      PageControl = pageSQL_List
      ImageIndex = 0
      TabVisible = True
      Caption = 'Danh m'#7909'c thao t'#225'c '#273'i'#7873'u ch'#7881'nh'
      object gridSQL: TdxDBGrid
        Left = 0
        Top = 0
        Width = 249
        Height = 368
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SQL_ID'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = dsSQL_List
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridSQLSQL_ID: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'STT'
          HeaderAlignment = taCenter
          Width = 44
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SQL_ID'
        end
        object gridSQLSQL_TITLE: TdxDBGridColumn
          Caption = 'Ti'#234'u '#273#7873
          HeaderAlignment = taCenter
          Width = 203
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SQL_TITLE'
          Caption_UTF7 = 'Ti+AOo-u +AREewQ'
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [2]
    Left = 249
    Top = 0
    Width = 9
    Height = 392
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = True
    ControlTopLeft = pageSQL_List
    AutoHide = False
    ShowSnapButton = True
    Align = alLeft
    BevelInner = bvLowered
    BevelOuter = bvNone
    UseXPThemes = False
  end
  object panelExecute: TPanel [3]
    Left = 258
    Top = 0
    Width = 470
    Height = 392
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object dxSQL: TdxDBMemo
      Left = 0
      Top = 0
      Width = 470
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DataField = 'SQL_STATEMENT'
      DataSource = dsSQL_List
      StyleController = dmMain.StyleController
      ScrollBars = ssBoth
      Height = 392
    end
  end
  inline frameToolbar1: TframeToolbar [4]
    Left = 0
    Top = 392
    Width = 728
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 728
      inherited btnClose: TElPopupButton
        Left = 772
      end
      inherited btnHelp: TElPopupButton
        Left = 642
      end
      inherited btnChoose: TElPopupButton
        Left = 712
      end
      inherited btnDesign: TElPopupButton
        Left = 481
        Width = 2
      end
      inherited btnPreview: TElPopupButton
        Left = 479
        Width = 2
        ImageIndex = 65
        Caption = 'T&h'#7921'c thi l'#7879'nh'
        Action = acExecute
      end
      inherited btnPrint: TElPopupButton
        Width = 2
      end
      inherited btnGenerate: TElPopupButton
        Left = 538
        Width = 99
        Hint = 'Th'#7921'c thi c'#226'u l'#7879'nh SQL'
        ImageIndex = 65
        UseImageList = True
        Images = dmMain.imgAction
        Caption = 'T&h'#7921'c thi l'#7879'nh'
        Action = acExecute
      end
      inherited btnRelation: TElPopupButton
        Left = 513
      end
      inherited ElPopupButton1: TElPopupButton
        Left = 488
      end
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited dxLayoutControl1Group1: TdxLayoutGroup
          inherited dxLayoutControl1Group3: TdxLayoutGroup
            inherited dxLayoutControl1Item7: TdxLayoutItem
              Visible = True
            end
          end
          inherited dxLayoutControl1Group4: TdxLayoutGroup
            Visible = True
            inherited dxlctrlGenerate: TdxLayoutItem
              Visible = True
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
        Caption = 'C'#244'ng c'#7909' ch'#7881'nh s'#7917'a d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 72
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 176
    Top = 32
    object acExecute: TAction
      Caption = 'acExecute'
      ImageIndex = 65
      OnExecute = acExecuteExecute
      OnUpdate = acExecuteUpdate
    end
  end
  object dsSQL_List: TDataSource
    DataSet = qrySQL_List
    Left = 96
    Top = 144
  end
  object qrySQL_List: TIBOQuery
    Params = <>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_SQL_TOOL'
      'WHERE'
      '   SQL_ID = :OLD_SQL_ID')
    EditSQL.Strings = (
      'UPDATE HR_SQL_TOOL SET'
      '   SQL_ID = :SQL_ID, /*PK*/'
      '   SQL_TITLE = :SQL_TITLE,'
      '   SQL_STATEMENT = :SQL_STATEMENT'
      'WHERE'
      '   SQL_ID = :OLD_SQL_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_SQL_TOOL('
      '   SQL_ID, /*PK*/'
      '   SQL_TITLE,'
      '   SQL_STATEMENT)'
      'VALUES ('
      '   :SQL_ID,'
      '   :SQL_TITLE,'
      '   :SQL_STATEMENT)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SQL_ID'
      '     , SQL_TITLE'
      '     , SQL_STATEMENT'
      'FROM HR_SQL_TOOL')
    FieldOptions = []
    Left = 96
    Top = 104
    object qrySQL_ListSQL_ID: TIntegerField
      FieldName = 'SQL_ID'
      Required = True
    end
    object qrySQL_ListSQL_TITLE: TWideStringField
      FieldName = 'SQL_TITLE'
      Required = True
      Size = 126
    end
    object qrySQL_ListSQL_STATEMENT: TWideStringField
      FieldName = 'SQL_STATEMENT'
      Size = 3072
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 144
    Top = 104
  end
end
