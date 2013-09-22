inherited frmTrainingSource: TfrmTrainingSource
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
      KeyField = 'SOURCE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainSOURCE_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' '
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOURCE_NO'
        Caption_UTF7 = 'M+AOM s+HtE '
      end
      object dxdbgMainSOURCE_NAME: TdxDBGridColumn
        Caption = 'Ngu'#7891'n kinh ph'#237' '#273#224'o t'#7841'o '
        HeaderAlignment = taCenter
        Width = 264
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOURCE_NAME'
        Caption_UTF7 = 'Ngu+HtM-n kinh ph+AO0 +AREA4A-o t+HqE-o '
      end
      object dxdbgMainNOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTE'
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
        Caption = 'Danh m'#7909'c ngu'#7891'n kinh ph'#237' '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 104
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_SOURCE'
      'WHERE'
      '   SOURCE_NO = :OLD_SOURCE_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_SOURCE SET'
      '   SOURCE_NO = :SOURCE_NO, /*PK*/'
      '   SOURCE_NAME = :SOURCE_NAME,'
      '   NOTE = :NOTE'
      'WHERE'
      '   SOURCE_NO = :OLD_SOURCE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_SOURCE('
      '   SOURCE_NO, /*PK*/'
      '   SOURCE_NAME,'
      '   NOTE)'
      'VALUES ('
      '   :SOURCE_NO,'
      '   :SOURCE_NAME,'
      '   :NOTE)')
    SQL.Strings = (
      'SELECT SOURCE_NO'
      '     , SOURCE_NAME'
      '     , NOTE'
      'FROM HR_TRAINING_SOURCE')
    object qryListSOURCE_NO: TWideStringField
      FieldName = 'SOURCE_NO'
      Required = True
      Size = 30
    end
    object qryListSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Required = True
      Size = 126
    end
    object qryListNOTE: TWideStringField
      FieldName = 'NOTE'
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
