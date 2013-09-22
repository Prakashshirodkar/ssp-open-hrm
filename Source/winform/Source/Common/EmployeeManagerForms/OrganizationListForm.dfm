inherited frmOrganizationList: TfrmOrganizationList
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleShadow
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 319
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'ORG_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainORG_NO: TdxDBGridColumn
        Caption = 'M'#227' '#273'o'#224'n th'#7875' '
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORG_NO'
        Caption_UTF7 = 'M+AOM +ARE-o+AOA-n th+HsM '
      end
      object dxdbgMainORG_NAME: TdxDBGridColumn
        Caption = 'T'#234'n '#273'o'#224'n th'#7875' '
        HeaderAlignment = taCenter
        Width = 209
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORG_NAME'
        Caption_UTF7 = 'T+AOo-n +ARE-o+AOA-n th+HsM '
      end
      object dxdbgMainORG_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 240
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORG_NOTE'
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
        Caption = 'Danh m'#7909'c '#273'o'#224'n th'#7875' - t'#7893' ch'#7913'c x'#227' h'#7897'i'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 72
    Top = 104
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_ORGANIZATION'
      'WHERE'
      '   ORG_NO = :OLD_ORG_NO')
    EditSQL.Strings = (
      'UPDATE HR_ORGANIZATION SET'
      '   ORG_NO = :ORG_NO, /*PK*/'
      '   ORG_NAME = :ORG_NAME,'
      '   ORG_NOTE = :ORG_NOTE'
      'WHERE'
      '   ORG_NO = :OLD_ORG_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_ORGANIZATION('
      '   ORG_NO, /*PK*/'
      '   ORG_NAME,'
      '   ORG_NOTE)'
      'VALUES ('
      '   :ORG_NO,'
      '   :ORG_NAME,'
      '   :ORG_NOTE)')
    SQL.Strings = (
      'SELECT ORG_NO'
      '     , ORG_NAME'
      '     , ORG_NOTE'
      'FROM HR_ORGANIZATION')
    object qryListORG_NO: TWideStringField
      FieldName = 'ORG_NO'
      Required = True
      Size = 30
    end
    object qryListORG_NAME: TWideStringField
      FieldName = 'ORG_NAME'
      Required = True
      Size = 126
    end
    object qryListORG_NOTE: TWideStringField
      FieldName = 'ORG_NOTE'
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
