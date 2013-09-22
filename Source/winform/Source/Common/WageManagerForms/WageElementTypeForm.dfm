inherited frmWageElementType: TfrmWageElementType
  Left = 291
  Top = 248
  Width = 627
  Height = 424
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 371
    Width = 619
  end
  inline frameToolbar1: TframeToolbar [1]
    Left = 0
    Top = 325
    Width = 619
    Height = 46
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    inherited dxLayoutControl1: TdxLayoutControl
      Width = 619
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
        end
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 619
    Height = 325
    Align = alClient
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    object gridWageElementType: TdxDBGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ELEMENT_TYPE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWageElementType
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridWageElementTypeELEMENT_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        Color = clInfoBk
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ELEMENT_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object gridWageElementTypeELEMENT_TYPE_NAME: TdxDBGridColumn
        Caption = 'Ph'#226'n lo'#7841'i y'#7871'u t'#7889' l'#432#417'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ELEMENT_TYPE_NAME'
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i y+Hr8-u t+HtE l+AbABoQ-ng'
      end
      object gridWageElementTypeELEMENT_TYPE_NOTE: TdxDBGridColumn
        Caption = 'Di'#7877'n gi'#7843'i'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 210
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ELEMENT_TYPE_NOTE'
        Caption_UTF7 = 'Di+HsU-n gi+HqM-i'
      end
      object gridWageElementTypeCOLOR: TdxDBGridColumn
        Caption = 'M'#224'u '#273#7841'i di'#7879'n'
        Color = clInfoBk
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLOR'
        Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
      end
      object gridWageElementTypeCHANGE_COLOR: TdxDBGridButtonColumn
        Caption = 'M'#224'u '#273#7841'i di'#7879'n'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = gridWageElementTypeCHANGE_COLORCustomDrawCell
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = gridWageElementTypeCHANGE_COLORButtonClick
        Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridWageElementType
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
        Caption = 'Ph'#226'n lo'#7841'i y'#7871'u t'#7889' l'#432#417'ng c'#417' b'#7843'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 504
    Top = 80
  end
  object ColorDialog1: TColorDialog
    Left = 200
    Top = 88
  end
  object qryWageElementType: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    EditSQL.Strings = (
      'UPDATE HR_WAGE_ELEMENT_TYPE SET'
      '   ELEMENT_TYPE_NOTE = :ELEMENT_TYPE_NOTE,'
      '   COLOR = :COLOR'
      'WHERE'
      '   ELEMENT_TYPE_NO = :OLD_ELEMENT_TYPE_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'ELEMENT_TYPE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ELEMENT_TYPE_NO'
      '     , ELEMENT_TYPE_NAME'
      '     , ELEMENT_TYPE_NOTE'
      '     , ORDER_INDEX'
      '     , COLOR'
      'FROM HR_WAGE_ELEMENT_TYPE'
      'order by ORDER_INDEX')
    FieldOptions = []
    Left = 42
    Top = 104
    object qryWageElementTypeELEMENT_TYPE_NO: TWideStringField
      FieldName = 'ELEMENT_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryWageElementTypeELEMENT_TYPE_NAME: TWideStringField
      FieldName = 'ELEMENT_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryWageElementTypeELEMENT_TYPE_NOTE: TWideStringField
      FieldName = 'ELEMENT_TYPE_NOTE'
      Size = 3072
    end
    object qryWageElementTypeORDER_INDEX: TSmallintField
      FieldName = 'ORDER_INDEX'
    end
    object qryWageElementTypeCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object dsWageElementType: TDataSource
    DataSet = qryWageElementType
    Left = 42
    Top = 136
  end
end
