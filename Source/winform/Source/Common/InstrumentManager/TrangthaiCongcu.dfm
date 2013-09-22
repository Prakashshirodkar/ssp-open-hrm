inherited frmCongcuTrangthai: TfrmCongcuTrangthai
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'MA_TRANGTHAI'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_TRANGTHAI: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_TRANGTHAI'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxdbgMainTEN_TRANGTHAI: TdxDBGridColumn
        Caption = 'T'#234'n tr'#7841'ng th'#225'i'
        HeaderAlignment = taCenter
        Width = 425
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TRANGTHAI'
        Caption_UTF7 = 'T+AOo-n tr+HqE-ng th+AOE-i'
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
        Caption = 'Danh m'#7909'c tr'#7841'ng th'#225'i'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONGCU_TRANGTHAI'
      'WHERE'
      '   MA_TRANGTHAI = :OLD_MA_TRANGTHAI')
    EditSQL.Strings = (
      'UPDATE HR_CONGCU_TRANGTHAI SET'
      '   MA_TRANGTHAI = :MA_TRANGTHAI, /*PK*/'
      '   TEN_TRANGTHAI = :TEN_TRANGTHAI'
      'WHERE'
      '   MA_TRANGTHAI = :OLD_MA_TRANGTHAI')
    InsertSQL.Strings = (
      'INSERT INTO HR_CONGCU_TRANGTHAI('
      '   MA_TRANGTHAI, /*PK*/'
      '   TEN_TRANGTHAI)'
      'VALUES ('
      '   :MA_TRANGTHAI,'
      '   :TEN_TRANGTHAI)')
    KeyLinks.Strings = (
      'HR_CONGCU_TRANGTHAI.MA_TRANGTHAI')
    SQL.Strings = (
      'SELECT MA_TRANGTHAI'
      '     , TEN_TRANGTHAI'
      'FROM HR_CONGCU_TRANGTHAI')
    object qryListMA_TRANGTHAI: TWideStringField
      FieldName = 'MA_TRANGTHAI'
      Required = True
      Size = 30
    end
    object qryListTEN_TRANGTHAI: TWideStringField
      FieldName = 'TEN_TRANGTHAI'
      Required = True
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
