inherited frmTrainingContent: TfrmTrainingContent
  Left = 242
  Top = 248
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 317
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'CONTENT_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainCONTENT_NO: TdxDBGridColumn
        Caption = 'M'#227' n'#7897'i dung'
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTENT_NO'
        Caption_UTF7 = 'M+AOM n+Htk-i dung'
      end
      object dxdbgMainCONTENT_NAME: TdxDBGridColumn
        Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
        HeaderAlignment = taCenter
        Width = 214
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTENT_NAME'
        Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
      end
      object dxdbgMainCONTENT_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 256
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTENT_NOTE'
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
        Caption = 'Danh m'#7909'c n'#7897'i dung '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 64
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_CONTENT'
      'WHERE'
      '   CONTENT_NO = :OLD_CONTENT_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_CONTENT SET'
      '   CONTENT_NO = :CONTENT_NO, /*PK*/'
      '   CONTENT_NAME = :CONTENT_NAME,'
      '   CONTENT_NOTE = :CONTENT_NOTE'
      'WHERE'
      '   CONTENT_NO = :OLD_CONTENT_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_CONTENT('
      '   CONTENT_NO, /*PK*/'
      '   CONTENT_NAME,'
      '   CONTENT_NOTE)'
      'VALUES ('
      '   :CONTENT_NO,'
      '   :CONTENT_NAME,'
      '   :CONTENT_NOTE)')
    SQL.Strings = (
      'SELECT CONTENT_NO'
      '     , CONTENT_NAME'
      '     , CONTENT_NOTE'
      'FROM HR_TRAINING_CONTENT')
    object qryListCONTENT_NO: TWideStringField
      FieldName = 'CONTENT_NO'
      Required = True
      Size = 30
    end
    object qryListCONTENT_NAME: TWideStringField
      FieldName = 'CONTENT_NAME'
      Required = True
      Size = 126
    end
    object qryListCONTENT_NOTE: TWideStringField
      FieldName = 'CONTENT_NOTE'
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
