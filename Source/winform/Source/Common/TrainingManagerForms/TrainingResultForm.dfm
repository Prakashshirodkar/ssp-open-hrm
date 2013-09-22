inherited frmTrainingResult: TfrmTrainingResult
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'RESULT_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainRESULT_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' '
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RESULT_NO'
        Caption_UTF7 = 'M+AOM s+HtE '
      end
      object dxdbgMainRESULT_NAME: TdxDBGridColumn
        Caption = 'K'#7871't qu'#7843' '
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RESULT_NAME'
        Caption_UTF7 = 'K+Hr8-t qu+HqM '
      end
      object dxdbgMainRESULT_GRADE: TdxDBGridSpinColumn
        Caption = 'M'#7913'c '#273#7897' '
        HeaderAlignment = taCenter
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RESULT_GRADE'
        Caption_UTF7 = 'M+Huk-c +AREe2Q '
      end
      object dxdbgMainNOTES: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 210
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTES'
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
        Caption = 'Danh m'#7909'c k'#7871't qu'#7843' '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 40
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_RESULT'
      'WHERE'
      '   RESULT_NO = :OLD_RESULT_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_RESULT SET'
      '   RESULT_NO = :RESULT_NO, /*PK*/'
      '   RESULT_NAME = :RESULT_NAME,'
      '   RESULT_GRADE = :RESULT_GRADE,'
      '   NOTES = :NOTES'
      'WHERE'
      '   RESULT_NO = :OLD_RESULT_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_RESULT('
      '   RESULT_NO, /*PK*/'
      '   RESULT_NAME,'
      '   RESULT_GRADE,'
      '   NOTES)'
      'VALUES ('
      '   :RESULT_NO,'
      '   :RESULT_NAME,'
      '   :RESULT_GRADE,'
      '   :NOTES)')
    SQL.Strings = (
      'SELECT RESULT_NO'
      '     , RESULT_NAME'
      '     , RESULT_GRADE'
      '     , NOTES'
      'FROM HR_TRAINING_RESULT')
    object qryListRESULT_NO: TWideStringField
      FieldName = 'RESULT_NO'
      Required = True
      Size = 30
    end
    object qryListRESULT_NAME: TWideStringField
      FieldName = 'RESULT_NAME'
      Required = True
      Size = 126
    end
    object qryListRESULT_GRADE: TIntegerField
      FieldName = 'RESULT_GRADE'
      Required = True
    end
    object qryListNOTES: TWideStringField
      FieldName = 'NOTES'
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
