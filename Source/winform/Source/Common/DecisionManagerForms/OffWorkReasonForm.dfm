inherited frmOffWorkReason: TfrmOffWorkReason
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'REASON_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainREASON_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REASON_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxdbgMainREASON_NAME: TdxDBGridColumn
        Caption = 'Nguy'#234'n nh'#226'n ngh'#7881' vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REASON_NAME'
        Caption_UTF7 = 'Nguy+AOo-n nh+AOI-n ngh+Hsk vi+Hsc-c'
      end
      object dxdbgMainNOTES: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 243
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTES'
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
        Caption = 'Danh m'#7909'c nguy'#234'n nh'#226'n ngh'#7881' vi'#7879'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_OFF_WORK_REASON'
      'WHERE'
      '   REASON_NO = :OLD_REASON_NO')
    EditSQL.Strings = (
      'UPDATE HR_OFF_WORK_REASON SET'
      '   REASON_NO = :REASON_NO, /*PK*/'
      '   REASON_NAME = :REASON_NAME,'
      '   NOTES = :NOTES'
      'WHERE'
      '   REASON_NO = :OLD_REASON_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_OFF_WORK_REASON('
      '   REASON_NO, /*PK*/'
      '   REASON_NAME,'
      '   NOTES)'
      'VALUES ('
      '   :REASON_NO,'
      '   :REASON_NAME,'
      '   :NOTES)')
    SQL.Strings = (
      'SELECT REASON_NO'
      '     , REASON_NAME'
      '     , NOTES'
      'FROM HR_OFF_WORK_REASON')
    object qryListREASON_NO: TWideStringField
      FieldName = 'REASON_NO'
      Required = True
      Size = 30
    end
    object qryListREASON_NAME: TWideStringField
      FieldName = 'REASON_NAME'
      Required = True
      Size = 126
    end
    object qryListNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 126
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
