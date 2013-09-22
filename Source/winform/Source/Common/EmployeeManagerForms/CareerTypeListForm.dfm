inherited frmCareerTypeList: TfrmCareerTypeList
  Width = 495
  Height = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 315
    Width = 487
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 487
    Height = 315
    LookAndFeel = dmMain.StyleShadow
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 287
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'CAREER_TYPE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainCAREER_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i '
      end
      object dxdbgMainCAREER_TYPE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 217
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i '
      end
      object dxdbgMainCARRER_TYPE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 260
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARRER_TYPE_NOTE'
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
        Caption = 'Danh m'#7909'c ph'#226'n lo'#7841'i ng'#224'nh ngh'#7873
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 64
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_CAREER_TYPE'
      'WHERE'
      '   CAREER_TYPE_NO = :OLD_CAREER_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_CAREER_TYPE SET'
      '   CAREER_TYPE_NO = :CAREER_TYPE_NO, /*PK*/'
      '   CAREER_TYPE_NAME = :CAREER_TYPE_NAME,'
      '   CARRER_TYPE_NOTE = :CARRER_TYPE_NOTE'
      'WHERE'
      '   CAREER_TYPE_NO = :OLD_CAREER_TYPE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_CAREER_TYPE('
      '   CAREER_TYPE_NO, /*PK*/'
      '   CAREER_TYPE_NAME,'
      '   CARRER_TYPE_NOTE)'
      'VALUES ('
      '   :CAREER_TYPE_NO,'
      '   :CAREER_TYPE_NAME,'
      '   :CARRER_TYPE_NOTE)')
    SQL.Strings = (
      'SELECT CAREER_TYPE_NO'
      '     , CAREER_TYPE_NAME'
      '     , CARRER_TYPE_NOTE'
      'FROM HR_CAREER_TYPE')
    object qryListCAREER_TYPE_NO: TWideStringField
      FieldName = 'CAREER_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryListCAREER_TYPE_NAME: TWideStringField
      FieldName = 'CAREER_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryListCARRER_TYPE_NOTE: TWideStringField
      FieldName = 'CARRER_TYPE_NOTE'
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
