inherited frmNationList: TfrmNationList
  Left = 190
  Top = 237
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'NATION_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainNATION_NO: TdxDBGridColumn
        Caption = 'M'#227' qu'#7889'c gia '
        HeaderAlignment = taCenter
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NATION_NO'
        Caption_UTF7 = 'M+AOM qu+HtE-c gia '
      end
      object dxdbgMainNATION_NAME: TdxDBGridColumn
        Caption = 'T'#234'n qu'#7889'c gia '
        HeaderAlignment = taCenter
        Width = 222
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NATION_NAME'
        Caption_UTF7 = 'T+AOo-n qu+HtE-c gia '
      end
      object dxdbgMainNATION_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 254
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NATION_NOTE'
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
        Caption = 'Danh m'#7909'c qu'#7889'c gia'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 56
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_NATION'
      'WHERE'
      '   NATION_NO = :OLD_NATION_NO')
    EditSQL.Strings = (
      'UPDATE HR_NATION SET'
      '   NATION_NO = :NATION_NO, /*PK*/'
      '   NATION_NAME = :NATION_NAME,'
      '   NATION_NOTE = :NATION_NOTE'
      'WHERE'
      '   NATION_NO = :OLD_NATION_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_NATION('
      '   NATION_NO, /*PK*/'
      '   NATION_NAME,'
      '   NATION_NOTE)'
      'VALUES ('
      '   :NATION_NO,'
      '   :NATION_NAME,'
      '   :NATION_NOTE)')
    SQL.Strings = (
      'SELECT NATION_NO'
      '     , NATION_NAME'
      '     , NATION_NOTE'
      'FROM HR_NATION')
    object qryListNATION_NO: TWideStringField
      FieldName = 'NATION_NO'
      Required = True
      Size = 30
    end
    object qryListNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Required = True
      Size = 126
    end
    object qryListNATION_NOTE: TWideStringField
      FieldName = 'NATION_NOTE'
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
