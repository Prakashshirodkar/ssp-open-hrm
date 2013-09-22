inherited frmBAOHIEM_TinhThanhPho: TfrmBAOHIEM_TinhThanhPho
  Left = 316
  Top = 216
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 312
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'MA_TINH_THANHPHO'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_TINH_THANHPHO: TdxDBGridColumn
        Caption = 'M'#227' t'#7881'nh/th'#224'nh ph'#7889
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_TINH_THANHPHO'
        Caption_UTF7 = 'M+AOM t+Hsk-nh/th+AOA-nh ph+HtE'
      end
      object dxdbgMainTEN_TINH_THANHPHO: TdxDBGridColumn
        Caption = 'T'#234'n t'#7881'nh/th'#224'nh ph'#7889
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TINH_THANHPHO'
        Caption_UTF7 = 'T+AOo-n t+Hsk-nh/th+AOA-nh ph+HtE'
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
        Caption = 'Danh m'#7909'c t'#7881'nh - th'#224'nh ph'#7889' khai b'#225'o n'#417'i kh'#225'm ch'#7919'a b'#7879'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TINH_THANHPHO'
      'WHERE'
      '   MA_TINH_THANHPHO = :OLD_MA_TINH_THANHPHO')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TINH_THANHPHO SET'
      '   MA_TINH_THANHPHO = :MA_TINH_THANHPHO, /*PK*/'
      '   TEN_TINH_THANHPHO = :TEN_TINH_THANHPHO'
      'WHERE'
      '   MA_TINH_THANHPHO = :OLD_MA_TINH_THANHPHO')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TINH_THANHPHO('
      '   MA_TINH_THANHPHO, /*PK*/'
      '   TEN_TINH_THANHPHO)'
      'VALUES ('
      '   :MA_TINH_THANHPHO,'
      '   :TEN_TINH_THANHPHO)')
    SQL.Strings = (
      'SELECT MA_TINH_THANHPHO'
      '     , TEN_TINH_THANHPHO'
      'FROM HR_BAOHIEM_TINH_THANHPHO')
    object qryListMA_TINH_THANHPHO: TWideStringField
      FieldName = 'MA_TINH_THANHPHO'
      Required = True
      Size = 30
    end
    object qryListTEN_TINH_THANHPHO: TWideStringField
      FieldName = 'TEN_TINH_THANHPHO'
      Required = True
      Size = 63
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
