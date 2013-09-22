inherited frmLuong_Hamso: TfrmLuong_Hamso
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 320
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'HAMSO_ID'
      Filter.Criteria = {00000000}
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
      object dxdbgMainHAMSO_ID: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_ID'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxdbgMainHAMSO_TIEUDE: TdxDBGridColumn
        Caption = 'T'#234'n h'#224'm s'#7889
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_TIEUDE'
        Caption_UTF7 = 'T+AOo-n h+AOA-m s+HtE'
      end
      object dxdbgMainHAMSO_KYHIEU: TdxDBGridColumn
        Caption = 'Nh'#7853'p nhanh'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_KYHIEU'
        Caption_UTF7 = 'Nh+Hq0-p nhanh'
      end
      object dxdbgMainHAMSO_HUONGDAN: TdxDBGridMemoColumn
        Caption = 'H'#432#7899'ng d'#7851'n s'#7917' d'#7909'ng'
        HeaderAlignment = taCenter
        Width = 203
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 1
        FieldName = 'HAMSO_HUONGDAN'
        Caption_UTF7 = 'H+AbAe2w-ng d+Hqs-n s+Hu0 d+HuU-ng'
      end
      object dxdbgMainHAMSO_LOAI: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Ph'#226'n nh'#243'm'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HAMSO_LOAI'
        Descriptions.WideStrings = (
          'To'#225'n h'#7885'c'
          'H'#7879' th'#7889'ng')
        ShowDescription = True
        Values.WideStrings = (
          'MATH'
          'SYSTEM')
        Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
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
        Caption = 'Danh m'#7909'c h'#224'm s'#7889' t'#237'nh l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 48
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_LUONG_HAMSO'
      'WHERE'
      '   HAMSO_ID = :OLD_HAMSO_ID')
    EditSQL.Strings = (
      'UPDATE HR_LUONG_HAMSO SET'
      '   HAMSO_ID = :HAMSO_ID, /*PK*/'
      '   HAMSO_TIEUDE = :HAMSO_TIEUDE,'
      '   HAMSO_KYHIEU = :HAMSO_KYHIEU,'
      '   HAMSO_HUONGDAN = :HAMSO_HUONGDAN,'
      '   HAMSO_LOAI = :HAMSO_LOAI'
      'WHERE'
      '   HAMSO_ID = :OLD_HAMSO_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_LUONG_HAMSO('
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
    AfterPost = qryListAfterPost
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT HAMSO_ID'
      '     , HAMSO_TIEUDE'
      '     , HAMSO_KYHIEU'
      '     , HAMSO_HUONGDAN'
      '     , HAMSO_LOAI'
      'FROM HR_LUONG_HAMSO')
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
