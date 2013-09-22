inherited frmBHXH_TTSuckhoe: TfrmBHXH_TTSuckhoe
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'MA_TINHTRANG'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_TINHTRANG: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_TINHTRANG'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxdbgMainTEN_TINHTRANG: TdxDBGridColumn
        Caption = 'T'#236'nh tr'#7841'ng s'#7913'c kh'#7887'e'
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TINHTRANG'
        Caption_UTF7 = 'T+AOw-nh tr+HqE-ng s+Huk-c kh+Hs8-e'
      end
      object dxdbgMainMUC_DO: TdxDBGridSpinColumn
        Alignment = taCenter
        Caption = 'M'#7913'c '#273#7897
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MUC_DO'
        Caption_UTF7 = 'M+Huk-c +AREe2Q'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 246
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
        Caption = 'Danh m'#7909'c t'#236'nh tr'#7841'ng s'#7913'c kh'#7887'e'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BHXH_TT_SUCKHOE'
      'WHERE'
      '   MA_TINHTRANG = :OLD_MA_TINHTRANG')
    EditSQL.Strings = (
      'UPDATE HR_BHXH_TT_SUCKHOE SET'
      '   MA_TINHTRANG = :MA_TINHTRANG, /*PK*/'
      '   TEN_TINHTRANG = :TEN_TINHTRANG,'
      '   MUC_DO = :MUC_DO,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   MA_TINHTRANG = :OLD_MA_TINHTRANG')
    InsertSQL.Strings = (
      'INSERT INTO HR_BHXH_TT_SUCKHOE('
      '   MA_TINHTRANG, /*PK*/'
      '   TEN_TINHTRANG,'
      '   MUC_DO,'
      '   GHI_CHU)'
      'VALUES ('
      '   :MA_TINHTRANG,'
      '   :TEN_TINHTRANG,'
      '   :MUC_DO,'
      '   :GHI_CHU)')
    SQL.Strings = (
      'SELECT MA_TINHTRANG'
      '     , TEN_TINHTRANG'
      '     , MUC_DO'
      '     , GHI_CHU'
      'FROM HR_BHXH_TT_SUCKHOE')
    object qryListMA_TINHTRANG: TWideStringField
      FieldName = 'MA_TINHTRANG'
      Required = True
      Size = 30
    end
    object qryListTEN_TINHTRANG: TWideStringField
      FieldName = 'TEN_TINHTRANG'
      Required = True
      Size = 126
    end
    object qryListMUC_DO: TIntegerField
      FieldName = 'MUC_DO'
      Required = True
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
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
