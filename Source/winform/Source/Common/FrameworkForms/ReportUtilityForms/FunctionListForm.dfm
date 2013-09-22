inherited frmFunctionList: TfrmFunctionList
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleMacDinh
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 319
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'FUNCTION_ID'
      Filter.Criteria = {00000000}
      object dxdbgMainFUNCTION_ID: TdxDBGridSpinColumn
        Alignment = taCenter
        Caption = 'M'#227' s'#7889
        Color = clInfoBk
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCTION_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxdbgMainFUNCTION_NAME: TdxDBGridColumn
        Caption = 'T'#234'n h'#224'm'
        HeaderAlignment = taCenter
        Width = 189
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCTION_NAME'
        Caption_UTF7 = 'T+AOo-n h+AOA-m'
      end
      object dxdbgMainFUNCTION_PROTOTYPE: TdxDBGridColumn
        Caption = #272#7883'nh d'#7841'ng'
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCTION_PROTOTYPE'
        Caption_UTF7 = '+ARAeyw-nh d+HqE-ng'
      end
      object dxdbgMainFUNCTION_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 214
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCTION_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
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
        Caption = #272#7883'nh ngh'#297'a h'#224'm s'#7889' t'#237'nh to'#225'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 80
    Top = 88
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_ANALYSER_FUNCTION'
      'WHERE'
      '   FUNCTION_ID = :OLD_FUNCTION_ID')
    EditSQL.Strings = (
      'UPDATE HR_ANALYSER_FUNCTION SET'
      '   FUNCTION_ID = :FUNCTION_ID, /*PK*/'
      '   FUNCTION_NAME = :FUNCTION_NAME,'
      '   FUNCTION_PROTOTYPE = :FUNCTION_PROTOTYPE,'
      '   FUNCTION_NOTE = :FUNCTION_NOTE'
      'WHERE'
      '   FUNCTION_ID = :OLD_FUNCTION_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_ANALYSER_FUNCTION('
      '   FUNCTION_ID, /*PK*/'
      '   FUNCTION_NAME,'
      '   FUNCTION_PROTOTYPE,'
      '   FUNCTION_NOTE)'
      'VALUES ('
      '   :FUNCTION_ID,'
      '   :FUNCTION_NAME,'
      '   :FUNCTION_PROTOTYPE,'
      '   :FUNCTION_NOTE)')
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT FUNCTION_ID'
      '     , FUNCTION_NAME'
      '     , FUNCTION_PROTOTYPE'
      '     , FUNCTION_NOTE'
      'FROM HR_ANALYSER_FUNCTION ')
    Top = 88
    object qryListFUNCTION_ID: TIntegerField
      FieldName = 'FUNCTION_ID'
      Required = True
    end
    object qryListFUNCTION_NAME: TWideStringField
      FieldName = 'FUNCTION_NAME'
      Required = True
      Size = 126
    end
    object qryListFUNCTION_PROTOTYPE: TWideStringField
      FieldName = 'FUNCTION_PROTOTYPE'
      Required = True
      Size = 126
    end
    object qryListFUNCTION_NOTE: TWideStringField
      FieldName = 'FUNCTION_NOTE'
      Size = 3072
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
end
