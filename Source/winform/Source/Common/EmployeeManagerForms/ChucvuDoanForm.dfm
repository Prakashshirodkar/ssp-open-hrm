inherited frmChucvuDoan: TfrmChucvuDoan
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'MA_CHUCVU'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_CHUCVU: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_CHUCVU'
        Caption_UTF7 = 'M+AOM ch+Huk-c v+HuU'
      end
      object dxdbgMainTEN_CHUCVU: TdxDBGridColumn
        Caption = 'T'#234'n ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 238
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_CHUCVU'
        Caption_UTF7 = 'T+AOo-n ch+Huk-c v+HuU'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 224
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHI_CHU'
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
        Caption = 'Danh m'#7909'c ch'#7913'c v'#7909' '#272'o'#224'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 48
    Top = 96
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_CHUCVU_DOAN'
      'WHERE'
      '   MA_CHUCVU = :OLD_MA_CHUCVU')
    EditSQL.Strings = (
      'UPDATE HR_CHUCVU_DOAN SET'
      '   MA_CHUCVU = :MA_CHUCVU, /*PK*/'
      '   TEN_CHUCVU = :TEN_CHUCVU,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   MA_CHUCVU = :OLD_MA_CHUCVU')
    InsertSQL.Strings = (
      'INSERT INTO HR_CHUCVU_DOAN('
      '   MA_CHUCVU, /*PK*/'
      '   TEN_CHUCVU,'
      '   GHI_CHU)'
      'VALUES ('
      '   :MA_CHUCVU,'
      '   :TEN_CHUCVU,'
      '   :GHI_CHU)')
    SQL.Strings = (
      'SELECT MA_CHUCVU'
      '     , TEN_CHUCVU'
      '     , GHI_CHU'
      'FROM HR_CHUCVU_DOAN')
    object qryListMA_CHUCVU: TWideStringField
      FieldName = 'MA_CHUCVU'
      Required = True
      Size = 30
    end
    object qryListTEN_CHUCVU: TWideStringField
      FieldName = 'TEN_CHUCVU'
      Required = True
      Size = 126
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
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
