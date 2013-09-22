inherited frmEstimateGroup: TfrmEstimateGroup
  Left = 274
  Top = 254
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 317
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'GROUP_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainGROUP_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u nh'#243'm'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u nh+APM-m'
      end
      object dxdbgMainGROUP_NAME: TdxDBGridColumn
        Caption = 'T'#234'n nh'#243'm ti'#234'u ch'#237
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NAME'
        Caption_UTF7 = 'T+AOo-n nh+APM-m ti+AOo-u ch+AO0'
      end
      object dxdbgMainGROUP_INDEX: TdxDBGridSpinColumn
        Alignment = taCenter
        Caption = 'Th'#7913' t'#7921
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_INDEX'
        MinValue = 1.000000000000000000
        MaxValue = 1000.000000000000000000
        Caption_UTF7 = 'Th+Huk t+HvE'
      end
      object dxdbgMainGROUP_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GROUP_NOTE'
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
        Caption = 'Danh m'#7909'c nh'#243'm ti'#234'u ch'#237' '#273#225'nh gi'#225
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 104
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_ESTIMATE_GROUP'
      'WHERE'
      '   GROUP_NO = :OLD_GROUP_NO')
    EditSQL.Strings = (
      'UPDATE HR_ESTIMATE_GROUP SET'
      '   GROUP_NO = :GROUP_NO, /*PK*/'
      '   GROUP_NAME = :GROUP_NAME,'
      '   GROUP_INDEX = :GROUP_INDEX,'
      '   GROUP_NOTE = :GROUP_NOTE'
      'WHERE'
      '   GROUP_NO = :OLD_GROUP_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_ESTIMATE_GROUP('
      '   GROUP_NO, /*PK*/'
      '   GROUP_NAME,'
      '   GROUP_INDEX,'
      '   GROUP_NOTE)'
      'VALUES ('
      '   :GROUP_NO,'
      '   :GROUP_NAME,'
      '   :GROUP_INDEX,'
      '   :GROUP_NOTE)')
    KeyLinks.Strings = (
      'GROUP_NO')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT GROUP_NO'
      '     , GROUP_NAME'
      '     , GROUP_INDEX'
      '     , GROUP_NOTE'
      'FROM HR_ESTIMATE_GROUP')
    object qryListGROUP_NO: TWideStringField
      Tag = 1
      FieldName = 'GROUP_NO'
      Required = True
      Size = 30
    end
    object qryListGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 126
    end
    object qryListGROUP_INDEX: TIntegerField
      FieldName = 'GROUP_INDEX'
      Required = True
    end
    object qryListGROUP_NOTE: TWideStringField
      FieldName = 'GROUP_NOTE'
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
