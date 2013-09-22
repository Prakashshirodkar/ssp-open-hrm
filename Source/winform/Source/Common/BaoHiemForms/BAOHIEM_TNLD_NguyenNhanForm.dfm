inherited frmBAOHIEM_TNLD_NguyenNhan: TfrmBAOHIEM_TNLD_NguyenNhan
  Left = 351
  Top = 205
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 312
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'ID_TNLD_NGUYENNHAN'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_NGUYENNHAN: TdxDBGridColumn
        Caption = 'M'#227' nguy'#234'n nh'#226'n'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_NGUYENNHAN'
        Caption_UTF7 = 'M+AOM nguy+AOo-n nh+AOI-n'
      end
      object dxdbgMainTEN_NGUYENNHAN: TdxDBGridColumn
        Caption = 'Nguy'#234'n nh'#226'n g'#226'y TNL'#272
        HeaderAlignment = taCenter
        Width = 262
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_NGUYENNHAN'
        Caption_UTF7 = 'Nguy+AOo-n nh+AOI-n g+AOI-y TNL+ARA'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 206
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
        Caption = 'Nguy'#234'n nh'#226'n g'#226'y tai n'#7841'n lao '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TNLD_NGUYENNHAN'
      'WHERE'
      '   ID_TNLD_NGUYENNHAN = :OLD_ID_TNLD_NGUYENNHAN')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TNLD_NGUYENNHAN SET'
      '   ID_TNLD_NGUYENNHAN = :ID_TNLD_NGUYENNHAN, /*PK*/'
      '   MA_NGUYENNHAN = :MA_NGUYENNHAN,'
      '   TEN_NGUYENNHAN = :TEN_NGUYENNHAN,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   ID_TNLD_NGUYENNHAN = :OLD_ID_TNLD_NGUYENNHAN')
    GeneratorLinks.Strings = (
      'ID_TNLD_NGUYENNHAN = GEN_HR_BH_TNLD_NGUYENNHAN_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TNLD_NGUYENNHAN('
      '   ID_TNLD_NGUYENNHAN, /*PK*/'
      '   MA_NGUYENNHAN,'
      '   TEN_NGUYENNHAN,'
      '   GHI_CHU)'
      'VALUES ('
      '   :ID_TNLD_NGUYENNHAN,'
      '   :MA_NGUYENNHAN,'
      '   :TEN_NGUYENNHAN,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'ID_TNLD_NGUYENNHAN')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT ID_TNLD_NGUYENNHAN'
      '     , MA_NGUYENNHAN'
      '     , TEN_NGUYENNHAN'
      '     , GHI_CHU'
      'FROM HR_BAOHIEM_TNLD_NGUYENNHAN')
    object qryListMA_NGUYENNHAN: TWideStringField
      FieldName = 'MA_NGUYENNHAN'
      Required = True
      Size = 30
    end
    object qryListTEN_NGUYENNHAN: TWideStringField
      FieldName = 'TEN_NGUYENNHAN'
      Required = True
      Size = 126
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryListID_TNLD_NGUYENNHAN: TIntegerField
      FieldName = 'ID_TNLD_NGUYENNHAN'
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
