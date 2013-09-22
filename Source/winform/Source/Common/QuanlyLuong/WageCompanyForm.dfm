inherited frmWageCompany: TfrmWageCompany
  Left = 292
  Top = 193
  Width = 787
  Height = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 461
    Width = 779
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 779
    Height = 461
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 434
      Color = 15466238
      TabOrder = 2
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 2
      Top = 2
      Width = 775
      Height = 215
      KeyField = 'WAGE_SCALE'
      BorderStyle = bsSingle
      OnEnter = dxdbgMainEnter
      Filter.Criteria = {00000000}
      object dxdbgMainWAGE_SCALE: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_SCALE'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxdbgMainWAGE_SCALE_NAME: TdxDBGridColumn
        Caption = 'Ng'#7841'ch c'#244'ng vi'#7879'c/ch'#7913'c danh/ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 284
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_SCALE_NAME'
        Caption_UTF7 = 'Ng+HqE-ch c+APQ-ng vi+Hsc-c/ch+Huk-c danh/ch+Huk-c v+HuU'
      end
      object dxdbgMainNOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 376
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object gridDetail: TdxDBGrid [2]
      Left = 2
      Top = 226
      Width = 775
      Height = 199
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WAGE_LEVEL'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 1
      OnDblClick = dxdbgMainDblClick
      OnEnter = gridDetailEnter
      OnKeyDown = dxdbgMainKeyDown
      DataSource = dsDetail
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridDetailWAGE_LEVEL: TdxDBGridSpinColumn
        Alignment = taCenter
        Caption = 'B'#7853'c'
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_LEVEL'
        Caption_UTF7 = 'B+Hq0-c'
      end
      object gridDetailWAGE_COEFF: TdxDBGridCalcColumn
        Alignment = taCenter
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_COEFF'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object gridDetailPROMOTION: TdxDBGridCalcColumn
        Alignment = taCenter
        Caption = 'Th'#7901'i h'#7841'n thay '#273#7893'i (n'#259'm)'
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOTION'
        Caption_UTF7 = 'Th+Ht0-i h+HqE-n thay +AREe1Q-i (n+AQM-m)'
      end
      object gridDetailNOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 375
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      inherited dxlcMainItem2: TdxLayoutItem
        ControlOptions.ShowBorder = False
      end
      object dxlcMainItem3: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = gridDetail
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
        Caption = 'B'#7843'ng h'#7879' s'#7889' l'#432#417'ng ch'#7913'c danh c'#244'ng vi'#7879'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 72
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_COMPANY_WAGE_SCALE'
      'WHERE'
      '   WAGE_SCALE = :OLD_WAGE_SCALE')
    EditSQL.Strings = (
      'UPDATE HR_COMPANY_WAGE_SCALE SET'
      '   WAGE_SCALE = :WAGE_SCALE, /*PK*/'
      '   WAGE_SCALE_NAME = :WAGE_SCALE_NAME,'
      '   NOTE = :NOTE'
      'WHERE'
      '   WAGE_SCALE = :OLD_WAGE_SCALE')
    InsertSQL.Strings = (
      'INSERT INTO HR_COMPANY_WAGE_SCALE('
      '   WAGE_SCALE, /*PK*/'
      '   WAGE_SCALE_NAME,'
      '   NOTE)'
      'VALUES ('
      '   :WAGE_SCALE,'
      '   :WAGE_SCALE_NAME,'
      '   :NOTE)')
    KeyLinks.Strings = (
      'HR_COMPANY_WAGE_SCALE.WAGE_SCALE')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT WAGE_SCALE'
      '     , WAGE_SCALE_NAME'
      '     , NOTE'
      'FROM HR_COMPANY_WAGE_SCALE')
    object qryListWAGE_SCALE: TWideStringField
      Tag = 2
      FieldName = 'WAGE_SCALE'
      Required = True
      Size = 30
    end
    object qryListWAGE_SCALE_NAME: TWideStringField
      FieldName = 'WAGE_SCALE_NAME'
      Required = True
      Size = 63
    end
    object qryListNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 750
    end
  end
  inherited bmMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
    inherited miInsert: TdxBarButton
      Action = frameToolbar1.acDSInsert
    end
    inherited miDelete: TdxBarButton
      Action = frameToolbar1.acDSDelete
    end
    inherited miSave: TdxBarButton
      Action = frameToolbar1.acDSPost
    end
    inherited miCancel: TdxBarButton
      Action = frameToolbar1.acDSCancel
    end
  end
  inherited pmMain: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = frmListBase.miInsert
        Visible = True
      end
      item
        Item = frmListBase.miDelete
        Visible = True
      end
      item
        BeginGroup = True
        Item = frmListBase.miSave
        Visible = True
      end
      item
        Item = frmListBase.miCancel
        Visible = True
      end>
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 56
    Top = 264
  end
  object qryDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'WAGE_SCALE'
        ParamType = ptInput
        Value = Null
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_COMPANY_WAGE_STANDARD'
      'WHERE'
      '   WAGE_LEVEL = :OLD_WAGE_LEVEL AND'
      '   WAGE_SCALE = :OLD_WAGE_SCALE')
    EditSQL.Strings = (
      'UPDATE HR_COMPANY_WAGE_STANDARD SET'
      '   WAGE_LEVEL = :WAGE_LEVEL, /*PK*/'
      '   WAGE_SCALE = :WAGE_SCALE, /*PK*/'
      '   WAGE_COEFF = :WAGE_COEFF,'
      '   PROMOTION = :PROMOTION,'
      '   NOTE = :NOTE'
      'WHERE'
      '   WAGE_LEVEL = :OLD_WAGE_LEVEL AND'
      '   WAGE_SCALE = :OLD_WAGE_SCALE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_COMPANY_WAGE_STANDARD('
      '   WAGE_LEVEL, /*PK*/'
      '   WAGE_SCALE, /*PK*/'
      '   WAGE_COEFF,'
      '   PROMOTION,'
      '   NOTE)'
      'VALUES ('
      '   :WAGE_LEVEL,'
      '   :WAGE_SCALE,'
      '   :WAGE_COEFF,'
      '   :PROMOTION,'
      '   :NOTE)')
    KeyLinks.Strings = (
      'WAGE_SCALE'
      'WAGE_LEVEL')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDetailNewRecord
    DataSource = dsList
    SQL.Strings = (
      'SELECT WAGE_SCALE'
      '     , WAGE_LEVEL'
      '     , WAGE_COEFF'
      '     , PROMOTION'
      '     , NOTE'
      'FROM HR_COMPANY_WAGE_STANDARD'
      'WHERE WAGE_SCALE = :WAGE_SCALE')
    FieldOptions = []
    Left = 88
    Top = 264
    object qryDetailWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
      Required = True
    end
    object qryDetailWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
      Required = True
    end
    object qryDetailPROMOTION: TIntegerField
      FieldName = 'PROMOTION'
    end
    object qryDetailNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryDetailWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 30
    end
  end
end
