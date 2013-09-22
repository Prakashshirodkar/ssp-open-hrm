inherited frmEduLevelList: TfrmEduLevelList
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
      KeyField = 'EDU_LEVEL_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainEDU_LEVEL_NO: TdxDBGridColumn
        Caption = 'M'#227' tr'#236'nh '#273#7897' '
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_NO'
        Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q '
      end
      object dxdbgMainEDU_LEVEL_NAME: TdxDBGridColumn
        Caption = 'T'#234'n tr'#236'nh '#273#7897' '
        HeaderAlignment = taCenter
        Width = 193
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_NAME'
        Caption_UTF7 = 'T+AOo-n tr+AOw-nh +AREe2Q '
      end
      object dxdbgMainEDU_LEVEL_GRADE: TdxDBGridSpinColumn
        Caption = 'M'#7913'c '#273#225'nh gi'#225' '
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_GRADE'
        Caption_UTF7 = 'M+Huk-c +AREA4Q-nh gi+AOE '
      end
      object dxdbgMainEDU_LEVEL_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 191
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_NOTE'
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
        Caption = 'Danh m'#7909'c tr'#236'nh '#273#7897' h'#7885'c v'#7845'n chung'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 32
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_EDU_LEVEL'
      'WHERE'
      '   EDU_LEVEL_NO = :OLD_EDU_LEVEL_NO')
    EditSQL.Strings = (
      'UPDATE HR_EDU_LEVEL SET'
      '   EDU_LEVEL_NO = :EDU_LEVEL_NO, /*PK*/'
      '   EDU_LEVEL_NAME = :EDU_LEVEL_NAME,'
      '   EDU_LEVEL_GRADE = :EDU_LEVEL_GRADE,'
      '   EDU_LEVEL_NOTE = :EDU_LEVEL_NOTE'
      'WHERE'
      '   EDU_LEVEL_NO = :OLD_EDU_LEVEL_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_EDU_LEVEL('
      '   EDU_LEVEL_NO, /*PK*/'
      '   EDU_LEVEL_NAME,'
      '   EDU_LEVEL_GRADE,'
      '   EDU_LEVEL_NOTE)'
      'VALUES ('
      '   :EDU_LEVEL_NO,'
      '   :EDU_LEVEL_NAME,'
      '   :EDU_LEVEL_GRADE,'
      '   :EDU_LEVEL_NOTE)')
    SQL.Strings = (
      'SELECT EDU_LEVEL_NO'
      '     , EDU_LEVEL_NAME'
      '     , EDU_LEVEL_GRADE'
      '     , EDU_LEVEL_NOTE'
      'FROM HR_EDU_LEVEL')
    object qryListEDU_LEVEL_NO: TWideStringField
      FieldName = 'EDU_LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryListEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryListEDU_LEVEL_GRADE: TIntegerField
      FieldName = 'EDU_LEVEL_GRADE'
      Required = True
    end
    object qryListEDU_LEVEL_NOTE: TWideStringField
      FieldName = 'EDU_LEVEL_NOTE'
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
