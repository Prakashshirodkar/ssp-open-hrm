inherited frmRecruitmentConfig: TfrmRecruitmentConfig
  Left = 287
  Top = 213
  Width = 594
  Height = 426
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 373
    Width = 586
  end
  object mainPage: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 586
    Height = 373
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsAngledTabs
    TabIndex = 2
    TabPosition = etpRight
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabChiPhi
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
    TabOrder = 1
    object tabKiemtra: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'Ti'#234'u ch'#237' ki'#7875'm tra'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 563
        Height = 373
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        inline frameKiemtra: TframeToolbar
          Left = 2
          Top = 325
          Width = 792
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
        end
        object gridKiemtra: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ITEM_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsKiemtra
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGridColumn1: TdxDBGridColumn
            Caption = 'K'#253' hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NO'
            Caption_UTF7 = 'K+AP0 hi+Hsc-u'
          end
          object dxDBGridColumn2: TdxDBGridColumn
            Caption = 'T'#234'n ti'#234'u ch'#237
            HeaderAlignment = taCenter
            Width = 199
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NAME'
            Caption_UTF7 = 'T+AOo-n ti+AOo-u ch+AO0'
          end
          object gridKiemtraITEM_RATE: TdxDBGridCalcColumn
            Caption = 'H'#7879' s'#7889
            HeaderAlignment = taCenter
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_RATE'
            Caption_UTF7 = 'H+Hsc s+HtE'
          end
          object dxDBGridColumn3: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 158
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NOTES'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridKiemtra
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = frameKiemtra
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object tabPhongvan: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'Ti'#234'u ch'#237' ph'#7887'ng v'#7845'n'
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 563
        Height = 373
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        inline framePhongvan: TframeToolbar
          Left = 2
          Top = 325
          Width = 792
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
        end
        object gridPhongvan: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ITEM_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsPhongvan
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridPhongvanITEM_NO: TdxDBGridColumn
            Caption = 'K'#253' hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NO'
            Caption_UTF7 = 'K+AP0 hi+Hsc-u'
          end
          object gridPhongvanITEM_NAME: TdxDBGridColumn
            Caption = 'T'#234'n ti'#234'u ch'#237
            HeaderAlignment = taCenter
            Width = 199
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NAME'
            Caption_UTF7 = 'T+AOo-n ti+AOo-u ch+AO0'
          end
          object gridPhongvanITEM_RATE: TdxDBGridCalcColumn
            Caption = 'H'#7879' s'#7889
            HeaderAlignment = taCenter
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_RATE'
            Caption_UTF7 = 'H+Hsc s+HtE'
          end
          object gridPhongvanITEM_NOTES: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 158
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NOTES'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridPhongvan
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = framePhongvan
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object tabChiPhi: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'Chi ph'#237' tuy'#7875'n d'#7909'ng'
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 563
        Height = 373
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        inline frameChiPhi: TframeToolbar
          Left = 2
          Top = 325
          Width = 792
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
        end
        object gridChiPhi: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ITEM_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsChiPhi
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridChiPhiITEM_NO: TdxDBGridColumn
            Caption = 'K'#253' hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NO'
            Caption_UTF7 = 'K+AP0 hi+Hsc-u'
          end
          object gridChiPhiITEM_NAME: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c chi ph'#237
            HeaderAlignment = taCenter
            Width = 216
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NAME'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c chi ph+AO0'
          end
          object gridChiPhiITEM_NOTES: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 256
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM_NOTES'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem3: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridChiPhi
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = frameChiPhi
            ControlOptions.AutoColor = True
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
        Caption = 'C'#7845'u h'#236'nh tuy'#7875'n d'#7909'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 440
    Top = 32
  end
  object dsPhongvan: TDataSource
    DataSet = qryPhongvan
    Left = 72
    Top = 152
  end
  object qryPhongvan: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\SEI\Databases\DB_REPARE\HRM_DB.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUIMENT_ITEM'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE')
    EditSQL.Strings = (
      'UPDATE HR_RECRUIMENT_ITEM SET'
      '   ITEM_NO = :ITEM_NO, /*PK*/'
      '   ITEM_TYPE = :ITEM_TYPE, /*PK*/'
      '   ITEM_NAME = :ITEM_NAME,'
      '   ITEM_NOTES = :ITEM_NOTES,'
      '   ITEM_RATE = :ITEM_RATE'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUIMENT_ITEM('
      '   ITEM_NO, /*PK*/'
      '   ITEM_TYPE, /*PK*/'
      '   ITEM_NAME,'
      '   ITEM_NOTES,'
      '   ITEM_RATE)'
      'VALUES ('
      '   :ITEM_NO,'
      '   :ITEM_TYPE,'
      '   :ITEM_NAME,'
      '   :ITEM_NOTES,'
      '   :ITEM_RATE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryPhongvanNewRecord
    SQL.Strings = (
      'SELECT ITEM_NO'
      '     , ITEM_NAME'
      '     , ITEM_TYPE'
      '     , ITEM_NOTES'
      '     , ITEM_RATE'
      'FROM HR_RECRUIMENT_ITEM'
      'where ITEM_TYPE='#39'PHONG_VAN'#39)
    FieldOptions = []
    Left = 72
    Top = 120
    object qryPhongvanITEM_NO: TWideStringField
      Tag = 1
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryPhongvanITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 3072
    end
    object qryPhongvanITEM_TYPE: TWideStringField
      FieldName = 'ITEM_TYPE'
      Required = True
      Size = 30
    end
    object qryPhongvanITEM_NOTES: TWideStringField
      FieldName = 'ITEM_NOTES'
      Size = 3072
    end
    object qryPhongvanITEM_RATE: TIBOFloatField
      FieldName = 'ITEM_RATE'
    end
  end
  object qryKiemtra: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\SEI\Databases\DB_REPARE\HRM_DB.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUIMENT_ITEM'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE')
    EditSQL.Strings = (
      'UPDATE HR_RECRUIMENT_ITEM SET'
      '   ITEM_NO = :ITEM_NO, /*PK*/'
      '   ITEM_TYPE = :ITEM_TYPE, /*PK*/'
      '   ITEM_NAME = :ITEM_NAME,'
      '   ITEM_NOTES = :ITEM_NOTES,'
      '   ITEM_RATE = :ITEM_RATE'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUIMENT_ITEM('
      '   ITEM_NO, /*PK*/'
      '   ITEM_TYPE, /*PK*/'
      '   ITEM_NAME,'
      '   ITEM_NOTES,'
      '   ITEM_RATE)'
      'VALUES ('
      '   :ITEM_NO,'
      '   :ITEM_TYPE,'
      '   :ITEM_NAME,'
      '   :ITEM_NOTES,'
      '   :ITEM_RATE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryKiemtraNewRecord
    SQL.Strings = (
      'SELECT ITEM_NO'
      '     , ITEM_NAME'
      '     , ITEM_TYPE'
      '     , ITEM_NOTES'
      '     , ITEM_RATE'
      'FROM HR_RECRUIMENT_ITEM'
      'where ITEM_TYPE='#39'KIEM_TRA'#39)
    FieldOptions = []
    Left = 112
    Top = 120
    object qryKiemtraITEM_NO: TWideStringField
      Tag = 1
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryKiemtraITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 3072
    end
    object qryKiemtraITEM_TYPE: TWideStringField
      FieldName = 'ITEM_TYPE'
      Required = True
      Size = 30
    end
    object qryKiemtraITEM_NOTES: TWideStringField
      FieldName = 'ITEM_NOTES'
      Size = 3072
    end
    object qryKiemtraITEM_RATE: TIBOFloatField
      FieldName = 'ITEM_RATE'
    end
  end
  object dsKiemtra: TDataSource
    DataSet = qryKiemtra
    Left = 112
    Top = 152
  end
  object qryChiPhi: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\SEI\Databases\DB_REPARE\HRM_DB.gdb'
    DeleteSQL.Strings = (
      'DELETE FROM HR_RECRUIMENT_ITEM'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE')
    EditSQL.Strings = (
      'UPDATE HR_RECRUIMENT_ITEM SET'
      '   ITEM_NO = :ITEM_NO, /*PK*/'
      '   ITEM_TYPE = :ITEM_TYPE, /*PK*/'
      '   ITEM_NAME = :ITEM_NAME,'
      '   ITEM_NOTES = :ITEM_NOTES,'
      '   ITEM_RATE = :ITEM_RATE'
      'WHERE'
      '   ITEM_NO = :OLD_ITEM_NO AND'
      '   ITEM_TYPE = :OLD_ITEM_TYPE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_RECRUIMENT_ITEM('
      '   ITEM_NO, /*PK*/'
      '   ITEM_TYPE, /*PK*/'
      '   ITEM_NAME,'
      '   ITEM_NOTES,'
      '   ITEM_RATE)'
      'VALUES ('
      '   :ITEM_NO,'
      '   :ITEM_TYPE,'
      '   :ITEM_NAME,'
      '   :ITEM_NOTES,'
      '   :ITEM_RATE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChiPhiNewRecord
    SQL.Strings = (
      'SELECT ITEM_NO'
      '     , ITEM_NAME'
      '     , ITEM_TYPE'
      '     , ITEM_NOTES'
      '     , ITEM_RATE'
      'FROM HR_RECRUIMENT_ITEM'
      'where ITEM_TYPE='#39'TUYEN_DUNG'#39)
    FieldOptions = []
    Left = 144
    Top = 120
    object qryChiPhiITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Required = True
      Size = 30
    end
    object qryChiPhiITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 3072
    end
    object qryChiPhiITEM_TYPE: TWideStringField
      FieldName = 'ITEM_TYPE'
      Required = True
      Size = 30
    end
    object qryChiPhiITEM_NOTES: TWideStringField
      FieldName = 'ITEM_NOTES'
      Size = 3072
    end
    object qryChiPhiITEM_RATE: TIBOFloatField
      FieldName = 'ITEM_RATE'
    end
  end
  object dsChiPhi: TDataSource
    DataSet = qryChiPhi
    Left = 144
    Top = 152
  end
end
