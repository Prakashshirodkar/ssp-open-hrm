inherited frmRelationship: TfrmRelationship
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleMacDinh
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 319
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'RELATIONSHIP_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainRELATIONSHIP_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u '
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELATIONSHIP_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u '
      end
      object dxdbgMainRELATIONSHIP_NAME: TdxDBGridColumn
        Caption = 'T'#234'n m'#7889'i quan h'#7879' '
        HeaderAlignment = taCenter
        Width = 340
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELATIONSHIP_NAME'
        Caption_UTF7 = 'T+AOo-n m+HtE-i quan h+Hsc '
      end
      object dxdbgMainRELATIONSHIP_TYPE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Ph'#226'n lo'#7841'i '
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELATIONSHIP_TYPE'
        Descriptions.WideStrings = (
          'Quan h'#7879' gia '#273#236'nh'
          'Quan h'#7879' x'#227' h'#7897'i')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i '
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
        Caption = 'C'#225'c m'#7889'i quan h'#7879' gia '#273#236'nh - x'#227' h'#7897'i'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 32
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_RELATIONSHIP'
      'WHERE'
      '   RELATIONSHIP_NO = :OLD_RELATIONSHIP_NO')
    EditSQL.Strings = (
      'UPDATE HR_RELATIONSHIP SET'
      '   RELATIONSHIP_NO = :RELATIONSHIP_NO, /*PK*/'
      '   RELATIONSHIP_NAME = :RELATIONSHIP_NAME,'
      '   RELATIONSHIP_TYPE = :RELATIONSHIP_TYPE'
      'WHERE'
      '   RELATIONSHIP_NO = :OLD_RELATIONSHIP_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_RELATIONSHIP('
      '   RELATIONSHIP_NO, /*PK*/'
      '   RELATIONSHIP_NAME,'
      '   RELATIONSHIP_TYPE)'
      'VALUES ('
      '   :RELATIONSHIP_NO,'
      '   :RELATIONSHIP_NAME,'
      '   :RELATIONSHIP_TYPE)')
    SQL.Strings = (
      'SELECT RELATIONSHIP_NO'
      '     , RELATIONSHIP_NAME'
      '     , RELATIONSHIP_TYPE'
      'FROM HR_RELATIONSHIP')
    object qryListRELATIONSHIP_NO: TWideStringField
      FieldName = 'RELATIONSHIP_NO'
      Required = True
      Size = 30
    end
    object qryListRELATIONSHIP_NAME: TWideStringField
      FieldName = 'RELATIONSHIP_NAME'
      Required = True
      Size = 126
    end
    object qryListRELATIONSHIP_TYPE: TSmallintField
      FieldName = 'RELATIONSHIP_TYPE'
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
