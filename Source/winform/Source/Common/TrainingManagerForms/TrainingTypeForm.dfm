inherited frmTrainingType: TfrmTrainingType
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
      KeyField = 'TYPE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainTYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i h'#236'nh '
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i h+AOw-nh '
      end
      object dxdbgMainTYPE_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i h'#236'nh '#273#224'o t'#7841'o '
        HeaderAlignment = taCenter
        Width = 234
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i h+AOw-nh +AREA4A-o t+HqE-o '
      end
      object dxdbgMainNOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 243
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTE'
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
        Caption = 'Danh m'#7909'c lo'#7841'i h'#236'nh '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 80
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_TYPE'
      'WHERE'
      '   TYPE_NO = :OLD_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_TYPE SET'
      '   TYPE_NO = :TYPE_NO, /*PK*/'
      '   TYPE_NAME = :TYPE_NAME,'
      '   NOTE = :NOTE'
      'WHERE'
      '   TYPE_NO = :OLD_TYPE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_TYPE('
      '   TYPE_NO, /*PK*/'
      '   TYPE_NAME,'
      '   NOTE)'
      'VALUES ('
      '   :TYPE_NO,'
      '   :TYPE_NAME,'
      '   :NOTE)')
    SQL.Strings = (
      'SELECT TYPE_NO'
      '     , TYPE_NAME'
      '     , NOTE '
      'FROM HR_TRAINING_TYPE')
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
