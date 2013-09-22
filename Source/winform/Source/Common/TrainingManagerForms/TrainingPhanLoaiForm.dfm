inherited frmTrainingPhanLoai: TfrmTrainingPhanLoai
  Left = 398
  Top = 277
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'PHAN_NHOM_ID'
      Filter.Criteria = {00000000}
      object dxdbgMainPHAN_NHOM_TEN: TdxDBGridColumn
        Caption = 'Ph'#226'n lo'#7841'i '#273#224'o t'#7841'o'
        HeaderAlignment = taCenter
        Width = 316
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PHAN_NHOM_TEN'
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i +AREA4A-o t+HqE-o'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 252
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHI_CHU'
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
        Caption = 'Danh m'#7909'c ph'#226'n lo'#7841'i '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_PHANNHOM'
      'WHERE'
      '   PHAN_NHOM_ID = :OLD_PHAN_NHOM_ID')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_PHANNHOM SET'
      '   PHAN_NHOM_ID = :PHAN_NHOM_ID, /*PK*/'
      '   PHAN_NHOM_TEN = :PHAN_NHOM_TEN,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   PHAN_NHOM_ID = :OLD_PHAN_NHOM_ID')
    GeneratorLinks.Strings = (
      'PHAN_NHOM_ID = GEN_HR_TRAINING_PHANNHOM_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_PHANNHOM('
      '   PHAN_NHOM_ID, /*PK*/'
      '   PHAN_NHOM_TEN,'
      '   GHI_CHU)'
      'VALUES ('
      '   :PHAN_NHOM_ID,'
      '   :PHAN_NHOM_TEN,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'PHAN_NHOM_ID')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT PHAN_NHOM_ID'
      '     , PHAN_NHOM_TEN'
      '     , GHI_CHU'
      'FROM HR_TRAINING_PHANNHOM')
    object qryListPHAN_NHOM_TEN: TWideStringField
      FieldName = 'PHAN_NHOM_TEN'
      Required = True
      Size = 126
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 750
    end
    object qryListPHAN_NHOM_ID: TIntegerField
      FieldName = 'PHAN_NHOM_ID'
      Required = True
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
