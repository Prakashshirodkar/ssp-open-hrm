inherited frmFormalParam: TfrmFormalParam
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      Left = 10
      Top = 10
      KeyField = 'PARAM_NO'
      BorderStyle = bsSingle
      Filter.Criteria = {00000000}
      object dxdbgMainPARAM_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u '
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u '
      end
      object dxdbgMainPARAM_NAME: TdxDBGridColumn
        Caption = 'T'#234'n tham s'#7889' '
        HeaderAlignment = taCenter
        Width = 193
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARAM_NAME'
        Caption_UTF7 = 'T+AOo-n tham s+HtE '
      end
      object dxdbgMainFOLLOW_DECISION: TdxDBGridCheckColumn
        Caption = 'Theo quy'#7871't '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FOLLOW_DECISION'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Theo quy+Hr8-t +AREeyw-nh'
      end
      object dxdbgMainFOLLOW_CONTRACT: TdxDBGridCheckColumn
        Caption = 'Theo h'#7907'p '#273#7891'ng'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FOLLOW_CONTRACT'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Theo h+HuM-p +AREe0w-ng'
      end
      object dxdbgMainNOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      inherited dxlcMainItem2: TdxLayoutItem
        ControlOptions.ShowBorder = False
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
        Caption = 'Tham s'#7889' '#273'i k'#232'm quy'#7871't '#273#7883'nh / h'#7907'p '#273#7891'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 56
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_FORMAL_PARAM'
      'WHERE'
      '   PARAM_NO = :OLD_PARAM_NO')
    EditSQL.Strings = (
      'UPDATE HR_FORMAL_PARAM SET'
      '   PARAM_NO = :PARAM_NO, /*PK*/'
      '   PARAM_NAME = :PARAM_NAME,'
      '   FOLLOW_DECISION = :FOLLOW_DECISION,'
      '   FOLLOW_CONTRACT = :FOLLOW_CONTRACT,'
      '   NOTE = :NOTE'
      'WHERE'
      '   PARAM_NO = :OLD_PARAM_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_FORMAL_PARAM('
      '   PARAM_NO, /*PK*/'
      '   PARAM_NAME,'
      '   FOLLOW_DECISION,'
      '   FOLLOW_CONTRACT,'
      '   NOTE)'
      'VALUES ('
      '   :PARAM_NO,'
      '   :PARAM_NAME,'
      '   :FOLLOW_DECISION,'
      '   :FOLLOW_CONTRACT,'
      '   :NOTE)')
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , PARAM_NAME'
      '     , FOLLOW_DECISION'
      '     , FOLLOW_CONTRACT'
      '     , NOTE'
      'FROM HR_FORMAL_PARAM')
    object qryListPARAM_NO: TWideStringField
      Tag = 1
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryListPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 126
    end
    object qryListFOLLOW_DECISION: TSmallintField
      FieldName = 'FOLLOW_DECISION'
      Required = True
    end
    object qryListFOLLOW_CONTRACT: TSmallintField
      FieldName = 'FOLLOW_CONTRACT'
    end
    object qryListNOTE: TWideStringField
      FieldName = 'NOTE'
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
