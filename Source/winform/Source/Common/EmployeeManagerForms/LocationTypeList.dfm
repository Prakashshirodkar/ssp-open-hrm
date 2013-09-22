inherited frmLocationTypeList: TfrmLocationTypeList
  Width = 575
  Height = 397
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 344
    Width = 567
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 567
    Height = 344
    LookAndFeel = dmMain.StyleShadow
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 316
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'LOCATION_TYPE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainLOCATION_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i '
      end
      object dxdbgMainLOCATION_TYPE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i '
      end
      object dxdbgMainLOCATION_TYPE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 256
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_TYPE_NOTE'
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
        Caption = 'Danh m'#7909'c ph'#226'n lo'#7841'i '#273#7883'a danh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 40
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_LOCATION_TYPE'
      'WHERE'
      '   LOCATION_TYPE_NO = :OLD_LOCATION_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_LOCATION_TYPE SET'
      '   LOCATION_TYPE_NO = :LOCATION_TYPE_NO, /*PK*/'
      '   LOCATION_TYPE_NAME = :LOCATION_TYPE_NAME,'
      '   LOCATION_TYPE_NOTE = :LOCATION_TYPE_NOTE'
      'WHERE'
      '   LOCATION_TYPE_NO = :OLD_LOCATION_TYPE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_LOCATION_TYPE('
      '   LOCATION_TYPE_NO, /*PK*/'
      '   LOCATION_TYPE_NAME,'
      '   LOCATION_TYPE_NOTE)'
      'VALUES ('
      '   :LOCATION_TYPE_NO,'
      '   :LOCATION_TYPE_NAME,'
      '   :LOCATION_TYPE_NOTE)')
    SQL.Strings = (
      'SELECT LOCATION_TYPE_NO'
      '     , LOCATION_TYPE_NAME'
      '     , LOCATION_TYPE_NOTE'
      'FROM HR_LOCATION_TYPE')
    object qryListLOCATION_TYPE_NO: TWideStringField
      FieldName = 'LOCATION_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryListLOCATION_TYPE_NAME: TWideStringField
      FieldName = 'LOCATION_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryListLOCATION_TYPE_NOTE: TWideStringField
      FieldName = 'LOCATION_TYPE_NOTE'
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
