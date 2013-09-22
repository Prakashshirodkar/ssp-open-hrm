inherited frmReligionList: TfrmReligionList
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
      KeyField = 'RELIGION_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainRELIGION_NO: TdxDBGridColumn
        Caption = 'M'#227' t'#244'n gi'#225'o '
        HeaderAlignment = taCenter
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELIGION_NO'
        Caption_UTF7 = 'M+AOM t+APQ-n gi+AOE-o '
      end
      object dxdbgMainRELIGION_NAME: TdxDBGridColumn
        Caption = 'T'#234'n t'#244'n gi'#225'o '
        HeaderAlignment = taCenter
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELIGION_NAME'
        Caption_UTF7 = 'T+AOo-n t+APQ-n gi+AOE-o '
      end
      object dxdbgMainRELIGION_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 286
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RELIGION_NOTE'
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
        Caption = 'Danh m'#7909'c t'#244'n gi'#225'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 48
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_RELIGION'
      'WHERE'
      '   RELIGION_NO = :OLD_RELIGION_NO')
    EditSQL.Strings = (
      'UPDATE HR_RELIGION SET'
      '   RELIGION_NO = :RELIGION_NO, /*PK*/'
      '   RELIGION_NAME = :RELIGION_NAME,'
      '   RELIGION_NOTE = :RELIGION_NOTE'
      'WHERE'
      '   RELIGION_NO = :OLD_RELIGION_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_RELIGION('
      '   RELIGION_NO, /*PK*/'
      '   RELIGION_NAME,'
      '   RELIGION_NOTE)'
      'VALUES ('
      '   :RELIGION_NO,'
      '   :RELIGION_NAME,'
      '   :RELIGION_NOTE)')
    KeyLinks.Strings = (
      'HR_RELIGION.RELIGION_NO')
    SQL.Strings = (
      'SELECT RELIGION_NO'
      '     , RELIGION_NAME'
      '     , RELIGION_NOTE'
      'FROM HR_RELIGION')
    object qryListRELIGION_NO: TWideStringField
      FieldName = 'RELIGION_NO'
      Required = True
      Size = 30
    end
    object qryListRELIGION_NAME: TWideStringField
      FieldName = 'RELIGION_NAME'
      Required = True
      Size = 30
    end
    object qryListRELIGION_NOTE: TWideStringField
      FieldName = 'RELIGION_NOTE'
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
