inherited frmDescentList: TfrmDescentList
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
      KeyField = 'DESCENT_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainDESCENT_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' '
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCENT_NO'
        Caption_UTF7 = 'M+AOM s+HtE '
      end
      object dxdbgMainDESCENT_NAME: TdxDBGridColumn
        Caption = 'Th'#224'nh ph'#7847'n xu'#7845't th'#226'n '
        HeaderAlignment = taCenter
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCENT_NAME'
        Caption_UTF7 = 'Th+AOA-nh ph+Hqc-n xu+HqU-t th+AOI-n '
      end
      object dxdbgMainDESCENT_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 291
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCENT_NOTE'
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
        Caption = 'Danh m'#7909'c th'#224'nh ph'#7847'n xu'#7845't th'#226'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 40
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_DESCENT_LIST'
      'WHERE'
      '   DESCENT_NO = :OLD_DESCENT_NO')
    EditSQL.Strings = (
      'UPDATE HR_DESCENT_LIST SET'
      '   DESCENT_NO = :DESCENT_NO, /*PK*/'
      '   DESCENT_NAME = :DESCENT_NAME,'
      '   DESCENT_NOTE = :DESCENT_NOTE'
      'WHERE'
      '   DESCENT_NO = :OLD_DESCENT_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_DESCENT_LIST('
      '   DESCENT_NO, /*PK*/'
      '   DESCENT_NAME,'
      '   DESCENT_NOTE)'
      'VALUES ('
      '   :DESCENT_NO,'
      '   :DESCENT_NAME,'
      '   :DESCENT_NOTE)')
    SQL.Strings = (
      'SELECT DESCENT_NO'
      '     , DESCENT_NAME'
      '     , DESCENT_NOTE'
      'FROM HR_DESCENT_LIST')
    object qryListDESCENT_NO: TWideStringField
      FieldName = 'DESCENT_NO'
      Required = True
      Size = 30
    end
    object qryListDESCENT_NAME: TWideStringField
      FieldName = 'DESCENT_NAME'
      Required = True
      Size = 126
    end
    object qryListDESCENT_NOTE: TWideStringField
      FieldName = 'DESCENT_NOTE'
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
