inherited frmDisciplineForm: TfrmDisciplineForm
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
      KeyField = 'DISC_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainDISC_NO: TdxDBGridColumn
        Caption = 'M'#227' h'#236'nh th'#7913'c '
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_NO'
        Caption_UTF7 = 'M+AOM h+AOw-nh th+Huk-c '
      end
      object dxdbgMainDISC_NAME: TdxDBGridColumn
        Caption = 'H'#236'nh th'#7913'c k'#7927' lu'#7853't '
        HeaderAlignment = taCenter
        Width = 221
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_NAME'
        Caption_UTF7 = 'H+AOw-nh th+Huk-c k+Hvc lu+Hq0-t '
      end
      object dxdbgMainDISC_LEVEL: TdxDBGridSpinColumn
        Caption = 'M'#7913'c '#273#7897' '
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_LEVEL'
        Caption_UTF7 = 'M+Huk-c +AREe2Q '
      end
      object dxdbgMainDISC_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 164
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISC_NOTE'
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
        Caption = 'Danh m'#7909'c h'#236'nh th'#7913'c k'#7927' lu'#7853't'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 72
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_DISCIPLINE_FORM'
      'WHERE'
      '   DISC_NO = :OLD_DISC_NO')
    EditSQL.Strings = (
      'UPDATE HR_DISCIPLINE_FORM SET'
      '   DISC_NO = :DISC_NO, /*PK*/'
      '   DISC_NAME = :DISC_NAME,'
      '   DISC_LEVEL = :DISC_LEVEL,'
      '   DISC_NOTE = :DISC_NOTE'
      'WHERE'
      '   DISC_NO = :OLD_DISC_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_DISCIPLINE_FORM('
      '   DISC_NO, /*PK*/'
      '   DISC_NAME,'
      '   DISC_LEVEL,'
      '   DISC_NOTE)'
      'VALUES ('
      '   :DISC_NO,'
      '   :DISC_NAME,'
      '   :DISC_LEVEL,'
      '   :DISC_NOTE)')
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT DISC_NO'
      '     , DISC_NAME'
      '     , DISC_LEVEL'
      '     , DISC_NOTE'
      'FROM HR_DISCIPLINE_FORM')
    object qryListDISC_NO: TWideStringField
      FieldName = 'DISC_NO'
      Required = True
      Size = 30
    end
    object qryListDISC_NAME: TWideStringField
      FieldName = 'DISC_NAME'
      Required = True
      Size = 126
    end
    object qryListDISC_LEVEL: TIntegerField
      FieldName = 'DISC_LEVEL'
      Required = True
    end
    object qryListDISC_NOTE: TWideStringField
      FieldName = 'DISC_NOTE'
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
