inherited frmBAOHIEM_HamSo: TfrmBAOHIEM_HamSo
  Left = 399
  Top = 244
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 312
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'HAMSO_ID'
      Filter.Criteria = {00000000}
      object dxdbgMainHAMSO_ID: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_ID'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxdbgMainHAMSO_TIEUDE: TdxDBGridColumn
        Caption = 'T'#234'n h'#224'm s'#7889
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_TIEUDE'
        Caption_UTF7 = 'T+AOo-n h+AOA-m s+HtE'
      end
      object dxdbgMainHAMSO_KYHIEU: TdxDBGridColumn
        Caption = 'Nh'#7853'p nhanh'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_KYHIEU'
        Caption_UTF7 = 'Nh+Hq0-p nhanh'
      end
      object dxdbgMainHAMSO_HUONGDAN: TdxDBGridColumn
        Caption = 'H'#432#7899'ng d'#7851'n s'#7917' d'#7909'ng'
        HeaderAlignment = taCenter
        Width = 164
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_HUONGDAN'
        Caption_UTF7 = 'H+AbAe2w-ng d+Hqs-n s+Hu0 d+HuU-ng'
      end
      object dxdbgMainHAMSO_LOAI: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Ph'#226'n lo'#7841'i'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_LOAI'
        ImageIndexes.WideStrings = (
          'To'#225'n h'#7885'c'
          'H'#7879' th'#7889'ng')
        Values.WideStrings = (
          'MATH'
          'SYSTEM')
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
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
        Caption = 'Danh m'#7909'c h'#224'm s'#7889' t'#237'nh b'#7843'o hi'#7875'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 48
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_HAMSO'
      'WHERE'
      '   HAMSO_ID = :OLD_HAMSO_ID')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_HAMSO SET'
      '   HAMSO_ID = :HAMSO_ID, /*PK*/'
      '   HAMSO_TIEUDE = :HAMSO_TIEUDE,'
      '   HAMSO_KYHIEU = :HAMSO_KYHIEU,'
      '   HAMSO_HUONGDAN = :HAMSO_HUONGDAN,'
      '   HAMSO_LOAI = :HAMSO_LOAI'
      'WHERE'
      '   HAMSO_ID = :OLD_HAMSO_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_HAMSO('
      '   HAMSO_ID, /*PK*/'
      '   HAMSO_TIEUDE,'
      '   HAMSO_KYHIEU,'
      '   HAMSO_HUONGDAN,'
      '   HAMSO_LOAI)'
      'VALUES ('
      '   :HAMSO_ID,'
      '   :HAMSO_TIEUDE,'
      '   :HAMSO_KYHIEU,'
      '   :HAMSO_HUONGDAN,'
      '   :HAMSO_LOAI)')
    KeyLinks.Strings = (
      'HR_BAOHIEM_HAMSO.HAMSO_ID')
    SQL.Strings = (
      'SELECT HAMSO_ID'
      '     , HAMSO_TIEUDE'
      '     , HAMSO_KYHIEU'
      '     , HAMSO_HUONGDAN'
      '     , HAMSO_LOAI'
      'FROM HR_BAOHIEM_HAMSO')
    object qryListHAMSO_ID: TWideStringField
      FieldName = 'HAMSO_ID'
      Required = True
      Size = 30
    end
    object qryListHAMSO_TIEUDE: TWideStringField
      FieldName = 'HAMSO_TIEUDE'
      Required = True
      Size = 126
    end
    object qryListHAMSO_KYHIEU: TWideStringField
      FieldName = 'HAMSO_KYHIEU'
      Required = True
      Size = 30
    end
    object qryListHAMSO_HUONGDAN: TWideStringField
      FieldName = 'HAMSO_HUONGDAN'
      Size = 3072
    end
    object qryListHAMSO_LOAI: TWideStringField
      FieldName = 'HAMSO_LOAI'
      Required = True
      Size = 30
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
