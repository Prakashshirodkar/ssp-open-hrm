inherited frmBAOHIEM_PhanNhom: TfrmBAOHIEM_PhanNhom
  Left = 378
  Top = 235
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 312
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'MA_PHANNHOM'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_PHANNHOM: TdxDBGridColumn
        Caption = 'M'#227' ph'#226'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_PHANNHOM'
        Caption_UTF7 = 'M+AOM ph+AOI-n nh+APM-m'
      end
      object dxdbgMainTEN_PHANNHOM: TdxDBGridColumn
        Caption = 'Ph'#226'n nh'#243'm '#273#7889'i t'#432#7907'ng'
        HeaderAlignment = taCenter
        Width = 212
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_PHANNHOM'
        Caption_UTF7 = 'Ph+AOI-n nh+APM-m +AREe0Q-i t+AbAe4w-ng'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHI_CHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dxdbgMainSTT: TdxDBGridSpinColumn
        Caption = 'Th'#7913' t'#7921
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STT'
        Caption_UTF7 = 'Th+Huk t+HvE'
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
        Caption = 'Ph'#226'n nh'#243'm d'#7919' li'#7879'u b'#7843'o hi'#7875'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 112
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_PHANNHOM'
      'WHERE'
      '   MA_PHANNHOM = :OLD_MA_PHANNHOM')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_PHANNHOM SET'
      '   MA_PHANNHOM = :MA_PHANNHOM, /*PK*/'
      '   TEN_PHANNHOM = :TEN_PHANNHOM,'
      '   GHI_CHU = :GHI_CHU,'
      '   STT = :STT'
      'WHERE'
      '   MA_PHANNHOM = :OLD_MA_PHANNHOM')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_PHANNHOM('
      '   MA_PHANNHOM, /*PK*/'
      '   TEN_PHANNHOM,'
      '   GHI_CHU,'
      '   STT)'
      'VALUES ('
      '   :MA_PHANNHOM,'
      '   :TEN_PHANNHOM,'
      '   :GHI_CHU,'
      '   :STT)')
    SQL.Strings = (
      'SELECT MA_PHANNHOM'
      '     , TEN_PHANNHOM'
      '     , GHI_CHU'
      '     , STT'
      'FROM HR_BAOHIEM_PHANNHOM')
    object qryListMA_PHANNHOM: TWideStringField
      FieldName = 'MA_PHANNHOM'
      Required = True
      Size = 30
    end
    object qryListTEN_PHANNHOM: TWideStringField
      FieldName = 'TEN_PHANNHOM'
      Size = 63
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryListSTT: TSmallintField
      FieldName = 'STT'
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
