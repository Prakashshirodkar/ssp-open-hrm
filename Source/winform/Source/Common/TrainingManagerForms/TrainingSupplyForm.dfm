inherited frmTrainingSupply: TfrmTrainingSupply
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
      KeyField = 'SUPPLY_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainSUPPLY_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' '
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPPLY_NO'
        Caption_UTF7 = 'M+AOM s+HtE '
      end
      object dxdbgMainSUPPLY_NAME: TdxDBGridColumn
        Caption = 'T'#234'n ngu'#7891'n cung c'#7845'p '
        HeaderAlignment = taCenter
        Width = 231
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPPLY_NAME'
        Caption_UTF7 = 'T+AOo-n ngu+HtM-n cung c+HqU-p '
      end
      object dxdbgMainSUPPLY_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 249
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPPLY_NOTE'
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
        Caption = 'Danh m'#7909'c ngu'#7891'n cung c'#7845'p '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 96
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_SUPPLY'
      'WHERE'
      '   SUPPLY_NO = :OLD_SUPPLY_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_SUPPLY SET'
      '   SUPPLY_NO = :SUPPLY_NO, /*PK*/'
      '   SUPPLY_NAME = :SUPPLY_NAME,'
      '   SUPPLY_NOTE = :SUPPLY_NOTE'
      'WHERE'
      '   SUPPLY_NO = :OLD_SUPPLY_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_SUPPLY('
      '   SUPPLY_NO, /*PK*/'
      '   SUPPLY_NAME,'
      '   SUPPLY_NOTE)'
      'VALUES ('
      '   :SUPPLY_NO,'
      '   :SUPPLY_NAME,'
      '   :SUPPLY_NOTE)')
    SQL.Strings = (
      'SELECT SUPPLY_NO'
      '     , SUPPLY_NAME'
      '     , SUPPLY_NOTE'
      'FROM HR_TRAINING_SUPPLY')
    object qryListSUPPLY_NO: TWideStringField
      FieldName = 'SUPPLY_NO'
      Required = True
      Size = 30
    end
    object qryListSUPPLY_NAME: TWideStringField
      FieldName = 'SUPPLY_NAME'
      Required = True
      Size = 126
    end
    object qryListSUPPLY_NOTE: TWideStringField
      FieldName = 'SUPPLY_NOTE'
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
