inherited frmTrainingForm: TfrmTrainingForm
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
      KeyField = 'FORM_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainFORM_NO: TdxDBGridColumn
        Caption = 'M'#227' h'#236'nh th'#7913'c '
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORM_NO'
        Caption_UTF7 = 'M+AOM h+AOw-nh th+Huk-c '
      end
      object dxdbgMainFORM_NAME: TdxDBGridColumn
        Caption = 'H'#236'nh th'#7913'c '#273#224'o t'#7841'o '
        HeaderAlignment = taCenter
        Width = 209
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORM_NAME'
        Caption_UTF7 = 'H+AOw-nh th+Huk-c +AREA4A-o t+HqE-o '
      end
      object dxdbgMainNOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 266
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
        Caption = 'Danh m'#7909'c h'#236'nh th'#7913'c '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 80
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_FORM'
      'WHERE'
      '   FORM_NO = :OLD_FORM_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_FORM SET'
      '   FORM_NO = :FORM_NO, /*PK*/'
      '   FORM_NAME = :FORM_NAME,'
      '   NOTE = :NOTE'
      'WHERE'
      '   FORM_NO = :OLD_FORM_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_FORM('
      '   FORM_NO, /*PK*/'
      '   FORM_NAME,'
      '   NOTE)'
      'VALUES ('
      '   :FORM_NO,'
      '   :FORM_NAME,'
      '   :NOTE)')
    SQL.Strings = (
      'SELECT FORM_NO'
      '     , FORM_NAME'
      '     , NOTE'
      'FROM HR_TRAINING_FORM')
    object qryListFORM_NO: TWideStringField
      FieldName = 'FORM_NO'
      Required = True
      Size = 30
    end
    object qryListFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
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
