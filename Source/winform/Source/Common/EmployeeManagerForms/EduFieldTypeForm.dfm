inherited frmEduFieldType: TfrmEduFieldType
  Left = 235
  Top = 239
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 320
      Color = 15466238
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 3
      Top = 3
      KeyField = 'TYPE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainTYPE_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYPE_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxdbgMainTYPE_NAME: TdxDBGridColumn
        Caption = 'Ph'#226'n lo'#7841'i l'#297'nh v'#7921'c chuy'#234'n m'#244'n'
        HeaderAlignment = taCenter
        Width = 199
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYPE_NAME'
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i l+ASk-nh v+HvE-c chuy+AOo-n m+APQ-n'
      end
      object dxdbgMainTYPE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 305
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYPE_NOTE'
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
        Caption = 'Danh m'#7909'c ph'#226'n lo'#7841'i l'#297'nh v'#7921'c chuy'#234'n m'#244'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 64
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_EDU_FIELD_TYPE'
      'WHERE'
      '   TYPE_NO = :OLD_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_EDU_FIELD_TYPE SET'
      '   TYPE_NO = :TYPE_NO, /*PK*/'
      '   TYPE_NAME = :TYPE_NAME,'
      '   TYPE_NOTE = :TYPE_NOTE'
      'WHERE'
      '   TYPE_NO = :OLD_TYPE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_EDU_FIELD_TYPE('
      '   TYPE_NO, /*PK*/'
      '   TYPE_NAME,'
      '   TYPE_NOTE)'
      'VALUES ('
      '   :TYPE_NO,'
      '   :TYPE_NAME,'
      '   :TYPE_NOTE)')
    KeyLinks.Strings = (
      'HR_EDU_FIELD_TYPE.TYPE_NO')
    SQL.Strings = (
      'SELECT TYPE_NO'
      '     , TYPE_NAME'
      '     , TYPE_NOTE'
      'FROM HR_EDU_FIELD_TYPE')
    object qryListTYPE_NO: TWideStringField
      FieldName = 'TYPE_NO'
      Required = True
      Size = 30
    end
    object qryListTYPE_NAME: TWideStringField
      FieldName = 'TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryListTYPE_NOTE: TWideStringField
      FieldName = 'TYPE_NOTE'
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
