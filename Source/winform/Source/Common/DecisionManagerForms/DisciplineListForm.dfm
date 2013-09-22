inherited frmDisciplineList: TfrmDisciplineList
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
      KeyField = 'DISC_LIST_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainDISC_LIST_NO: TdxDBGridColumn
        Caption = 'M'#227' vi ph'#7841'm '
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_LIST_NO'
        Caption_UTF7 = 'M+AOM vi ph+HqE-m '
      end
      object dxdbgMainDISC_LIST_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i vi ph'#7841'm k'#7927' lu'#7853't '
        HeaderAlignment = taCenter
        Width = 235
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_LIST_NAME'
        Caption_UTF7 = 'Lo+HqE-i vi ph+HqE-m k+Hvc lu+Hq0-t '
      end
      object dxdbgMainDISC_LIST_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 227
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_LIST_NOTE'
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
        Caption = 'Danh m'#7909'c vi ph'#7841'm k'#7927' lu'#7853't'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 112
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_DISCIPLINE_LIST'
      'WHERE'
      '   DISC_LIST_NO = :OLD_DISC_LIST_NO')
    EditSQL.Strings = (
      'UPDATE HR_DISCIPLINE_LIST SET'
      '   DISC_LIST_NO = :DISC_LIST_NO, /*PK*/'
      '   DISC_LIST_NAME = :DISC_LIST_NAME,'
      '   DISC_LIST_NOTE = :DISC_LIST_NOTE'
      'WHERE'
      '   DISC_LIST_NO = :OLD_DISC_LIST_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_DISCIPLINE_LIST('
      '   DISC_LIST_NO, /*PK*/'
      '   DISC_LIST_NAME,'
      '   DISC_LIST_NOTE)'
      'VALUES ('
      '   :DISC_LIST_NO,'
      '   :DISC_LIST_NAME,'
      '   :DISC_LIST_NOTE)')
    SQL.Strings = (
      'SELECT DISC_LIST_NO'
      '     , DISC_LIST_NAME'
      '     , DISC_LIST_NOTE'
      'FROM HR_DISCIPLINE_LIST')
    object qryListDISC_LIST_NO: TWideStringField
      FieldName = 'DISC_LIST_NO'
      Required = True
      Size = 30
    end
    object qryListDISC_LIST_NAME: TWideStringField
      FieldName = 'DISC_LIST_NAME'
      Required = True
      Size = 126
    end
    object qryListDISC_LIST_NOTE: TWideStringField
      FieldName = 'DISC_LIST_NOTE'
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
