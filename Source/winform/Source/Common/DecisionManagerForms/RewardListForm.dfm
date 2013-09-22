inherited frmRewardList: TfrmRewardList
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
      KeyField = 'REWARD_LIST_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainREWARD_LIST_NO: TdxDBGridColumn
        Caption = 'M'#227' danh hi'#7879'u '
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_LIST_NO'
        Caption_UTF7 = 'M+AOM danh hi+Hsc-u '
      end
      object dxdbgMainREWARD_LIST_NAME: TdxDBGridColumn
        Caption = 'Danh hi'#7879'u khen th'#432#7903'ng '
        HeaderAlignment = taCenter
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_LIST_NAME'
        Caption_UTF7 = 'Danh hi+Hsc-u khen th+AbAe3w-ng '
      end
      object dxdbgMainREWARD_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 249
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_NOTE'
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
        Caption = 'Danh m'#7909'c danh hi'#7879'u khen th'#432#7903'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 48
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_REWARD_LIST'
      'WHERE'
      '   REWARD_LIST_NO = :OLD_REWARD_LIST_NO')
    EditSQL.Strings = (
      'UPDATE HR_REWARD_LIST SET'
      '   REWARD_LIST_NO = :REWARD_LIST_NO, /*PK*/'
      '   REWARD_LIST_NAME = :REWARD_LIST_NAME,'
      '   REWARD_NOTE = :REWARD_NOTE'
      'WHERE'
      '   REWARD_LIST_NO = :OLD_REWARD_LIST_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_REWARD_LIST('
      '   REWARD_LIST_NO, /*PK*/'
      '   REWARD_LIST_NAME,'
      '   REWARD_NOTE)'
      'VALUES ('
      '   :REWARD_LIST_NO,'
      '   :REWARD_LIST_NAME,'
      '   :REWARD_NOTE)')
    SQL.Strings = (
      'SELECT REWARD_LIST_NO'
      '     , REWARD_LIST_NAME'
      '     , REWARD_NOTE'
      'FROM HR_REWARD_LIST')
    object qryListREWARD_LIST_NO: TWideStringField
      FieldName = 'REWARD_LIST_NO'
      Required = True
      Size = 30
    end
    object qryListREWARD_LIST_NAME: TWideStringField
      FieldName = 'REWARD_LIST_NAME'
      Required = True
      Size = 126
    end
    object qryListREWARD_NOTE: TWideStringField
      FieldName = 'REWARD_NOTE'
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
