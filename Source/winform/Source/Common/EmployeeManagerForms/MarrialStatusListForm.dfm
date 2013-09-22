inherited frmMarrialStatus: TfrmMarrialStatus
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'STATUS_ID'
      Filter.Criteria = {00000000}
      object dxdbgMainSTATUS_ID: TdxDBGridColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxdbgMainSTATUS_NAME: TdxDBGridColumn
        Caption = 'T'#236'nh tr'#7841'ng h'#244'n nh'#226'n'
        HeaderAlignment = taCenter
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS_NAME'
        Caption_UTF7 = 'T+AOw-nh tr+HqE-ng h+APQ-n nh+AOI-n'
      end
      object dxdbgMainNOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250' th'#234'm'
        HeaderAlignment = taCenter
        Width = 309
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTE'
        Caption_UTF7 = 'Ghi ch+APo th+AOo-m'
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
        Caption = 'Danh m'#7909'c t'#236'nh tr'#7841'ng h'#244'n nh'#226'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 56
    Top = 72
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_MARRIAL_STATUS'
      'WHERE'
      '   STATUS_ID = :OLD_STATUS_ID')
    EditSQL.Strings = (
      'UPDATE HR_MARRIAL_STATUS SET'
      '   STATUS_ID = :STATUS_ID, /*PK*/'
      '   STATUS_NAME = :STATUS_NAME,'
      '   NOTE = :NOTE'
      'WHERE'
      '   STATUS_ID = :OLD_STATUS_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_MARRIAL_STATUS('
      '   STATUS_ID, /*PK*/'
      '   STATUS_NAME,'
      '   NOTE)'
      'VALUES ('
      '   :STATUS_ID,'
      '   :STATUS_NAME,'
      '   :NOTE)')
    SQL.Strings = (
      'SELECT STATUS_ID'
      '     , STATUS_NAME'
      '     , NOTE'
      'FROM HR_MARRIAL_STATUS')
    object qryListSTATUS_ID: TWideStringField
      FieldName = 'STATUS_ID'
      Required = True
      Size = 30
    end
    object qryListSTATUS_NAME: TWideStringField
      FieldName = 'STATUS_NAME'
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
