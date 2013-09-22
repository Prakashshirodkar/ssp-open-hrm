inherited frmDecisionLevel: TfrmDecisionLevel
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
      KeyField = 'LEVEL_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainLEVEL_NO: TdxDBGridColumn
        Caption = 'M'#227' c'#7845'p'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NO'
        Caption_UTF7 = 'M+AOM c+HqU-p'
      end
      object dxdbgMainLEVEL_NAME: TdxDBGridColumn
        Caption = 'C'#7845'p quy'#7871't '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 210
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NAME'
        Caption_UTF7 = 'C+HqU-p quy+Hr8-t +AREeyw-nh'
      end
      object dxdbgMainLEVEL_INDEX: TdxDBGridSpinColumn
        Caption = 'M'#7913'c '#273#7897''
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_INDEX'
        Caption_UTF7 = 'M+Huk-c +AREe2Q'
      end
      object dxdbgMainLEVEL_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 202
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEVEL_NOTE'
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
        Caption = 'Danh m'#7909'c c'#7845'p quy'#7871't '#273#7883'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 64
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_DECISION_LEVEL'
      'WHERE'
      '   LEVEL_NO = :OLD_LEVEL_NO')
    EditSQL.Strings = (
      'UPDATE HR_DECISION_LEVEL SET'
      '   LEVEL_NO = :LEVEL_NO, /*PK*/'
      '   LEVEL_NAME = :LEVEL_NAME,'
      '   LEVEL_INDEX = :LEVEL_INDEX,'
      '   LEVEL_NOTE = :LEVEL_NOTE'
      'WHERE'
      '   LEVEL_NO = :OLD_LEVEL_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_DECISION_LEVEL('
      '   LEVEL_NO, /*PK*/'
      '   LEVEL_NAME,'
      '   LEVEL_INDEX,'
      '   LEVEL_NOTE)'
      'VALUES ('
      '   :LEVEL_NO,'
      '   :LEVEL_NAME,'
      '   :LEVEL_INDEX,'
      '   :LEVEL_NOTE)')
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT LEVEL_NO'
      '     , LEVEL_NAME'
      '     , LEVEL_INDEX'
      '     , LEVEL_NOTE'
      'FROM HR_DECISION_LEVEL')
    object qryListLEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryListLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryListLEVEL_INDEX: TIntegerField
      FieldName = 'LEVEL_INDEX'
    end
    object qryListLEVEL_NOTE: TWideStringField
      FieldName = 'LEVEL_NOTE'
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
