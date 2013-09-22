inherited frmWorkType: TfrmWorkType
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
      KeyField = 'WORK_TYPE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainWORK_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i '
      end
      object dxdbgMainWORK_TYPE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i '
      end
      object dxdbgMainWORK_TYPE_NOTES: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 296
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NOTES'
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
        Caption = 'Danh m'#7909'c lo'#7841'i c'#244'ng vi'#7879'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 48
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORK_TYPE'
      'WHERE'
      '   WORK_TYPE_NO = :OLD_WORK_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_WORK_TYPE SET'
      '   WORK_TYPE_NO = :WORK_TYPE_NO, /*PK*/'
      '   WORK_TYPE_NAME = :WORK_TYPE_NAME,'
      '   WORK_TYPE_NOTES = :WORK_TYPE_NOTES'
      'WHERE'
      '   WORK_TYPE_NO = :OLD_WORK_TYPE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_WORK_TYPE('
      '   WORK_TYPE_NO, /*PK*/'
      '   WORK_TYPE_NAME,'
      '   WORK_TYPE_NOTES)'
      'VALUES ('
      '   :WORK_TYPE_NO,'
      '   :WORK_TYPE_NAME,'
      '   :WORK_TYPE_NOTES)')
    SQL.Strings = (
      'SELECT WORK_TYPE_NO'
      '     , WORK_TYPE_NAME'
      '     , WORK_TYPE_NOTES'
      'FROM HR_WORK_TYPE')
    object qryListWORK_TYPE_NO: TWideStringField
      FieldName = 'WORK_TYPE_NO'
      Required = True
      Size = 15
    end
    object qryListWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Required = True
      Size = 127
    end
    object qryListWORK_TYPE_NOTES: TWideStringField
      FieldName = 'WORK_TYPE_NOTES'
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
