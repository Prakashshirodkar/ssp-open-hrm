inherited frmTitleList: TfrmTitleList
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'TITLE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainTITLE_NO: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c danh '
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NO'
        Caption_UTF7 = 'M+AOM ch+Huk-c danh '
      end
      object dxdbgMainTITLE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n ch'#7913'c danh '
        HeaderAlignment = taCenter
        Width = 252
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'T+AOo-n ch+Huk-c danh '
      end
      object dxdbgMainTITLE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 197
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NOTE'
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
        Caption = 'Danh m'#7909'c ch'#7913'c danh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 40
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TITLE'
      'WHERE'
      '   TITLE_NO = :OLD_TITLE_NO')
    EditSQL.Strings = (
      'UPDATE HR_TITLE SET'
      '   TITLE_NO = :TITLE_NO, /*PK*/'
      '   TITLE_NAME = :TITLE_NAME,'
      '   TITLE_NOTE = :TITLE_NOTE'
      'WHERE'
      '   TITLE_NO = :OLD_TITLE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_TITLE('
      '   TITLE_NO, /*PK*/'
      '   TITLE_NAME,'
      '   TITLE_NOTE)'
      'VALUES ('
      '   :TITLE_NO,'
      '   :TITLE_NAME,'
      '   :TITLE_NOTE)')
    SQL.Strings = (
      'SELECT TITLE_NO'
      '     , TITLE_NAME'
      '     , TITLE_NOTE'
      'FROM HR_TITLE')
    object qryListTITLE_NO: TWideStringField
      Tag = 1
      FieldName = 'TITLE_NO'
      Required = True
      Size = 15
    end
    object qryListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryListTITLE_NOTE: TWideStringField
      FieldName = 'TITLE_NOTE'
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
