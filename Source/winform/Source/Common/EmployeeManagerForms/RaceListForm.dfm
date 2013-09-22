inherited frmRaceList: TfrmRaceList
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleShadow
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 319
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'RACE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainRACE_NO: TdxDBGridColumn
        Caption = 'M'#227' d'#226'n t'#7897'c '
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RACE_NO'
        Caption_UTF7 = 'M+AOM d+AOI-n t+Htk-c '
      end
      object dxdbgMainRACE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n d'#226'n t'#7897'c '
        HeaderAlignment = taCenter
        Width = 214
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RACE_NAME'
        Caption_UTF7 = 'T+AOo-n d+AOI-n t+Htk-c '
      end
      object dxdbgMainRACE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 252
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RACE_NOTE'
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
        Caption = 'Danh m'#7909'c d'#226'n t'#7897'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 120
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_RACE'
      'WHERE'
      '   RACE_NO = :OLD_RACE_NO')
    EditSQL.Strings = (
      'UPDATE HR_RACE SET'
      '   RACE_NO = :RACE_NO, /*PK*/'
      '   RACE_NAME = :RACE_NAME,'
      '   RACE_NOTE = :RACE_NOTE'
      'WHERE'
      '   RACE_NO = :OLD_RACE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_RACE('
      '   RACE_NO, /*PK*/'
      '   RACE_NAME,'
      '   RACE_NOTE)'
      'VALUES ('
      '   :RACE_NO,'
      '   :RACE_NAME,'
      '   :RACE_NOTE)')
    SQL.Strings = (
      'SELECT RACE_NO'
      '     , RACE_NAME'
      '     , RACE_NOTE'
      'FROM HR_RACE')
    object qryListRACE_NO: TWideStringField
      FieldName = 'RACE_NO'
      Required = True
      Size = 30
    end
    object qryListRACE_NAME: TWideStringField
      FieldName = 'RACE_NAME'
      Required = True
      Size = 30
    end
    object qryListRACE_NOTE: TWideStringField
      FieldName = 'RACE_NOTE'
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
