inherited frmCareerList: TfrmCareerList
  Left = 232
  Top = 299
  Width = 574
  Height = 399
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 346
    Width = 566
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 566
    Height = 346
    LookAndFeel = dmMain.StyleShadow
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 318
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'CAREER_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainCAREER_NO: TdxDBGridColumn
        Caption = 'M'#227' ng'#224'nh ngh'#7873' '
        HeaderAlignment = taCenter
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_NO'
        Caption_UTF7 = 'M+AOM ng+AOA-nh ngh+HsE '
      end
      object dxdbgMainCAREER_NAME: TdxDBGridColumn
        Caption = 'T'#234'n ng'#224'nh ngh'#7873' '
        HeaderAlignment = taCenter
        Width = 176
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_NAME'
        Caption_UTF7 = 'T+AOo-n ng+AOA-nh ngh+HsE '
      end
      object dxdbgMainCAREER_TYPE_NAME: TdxDBGridPopupColumn
        Caption = 'Ph'#226'n lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_TYPE_NAME'
        OnCloseUp = dxdbgMainCAREER_TYPE_NAMECloseUp
        OnInitPopup = dxdbgMainCAREER_TYPE_NAMEInitPopup
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
      end
      object dxdbgMainCARRER_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARRER_NOTE'
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
        Caption = 'Danh m'#7909'c ng'#224'nh - ngh'#7873
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 40
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_CAREER'
      'WHERE'
      '   CAREER_NO = :OLD_CAREER_NO')
    EditSQL.Strings = (
      'UPDATE HR_CAREER SET'
      '   CAREER_NO = :CAREER_NO, /*PK*/'
      '   CAREER_NAME = :CAREER_NAME,'
      '   CARRER_NOTE = :CARRER_NOTE,'
      '   CAREER_TYPE = :CAREER_TYPE'
      'WHERE'
      '   CAREER_NO = :OLD_CAREER_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_CAREER('
      '   CAREER_NO, /*PK*/'
      '   CAREER_NAME,'
      '   CARRER_NOTE,'
      '   CAREER_TYPE)'
      'VALUES ('
      '   :CAREER_NO,'
      '   :CAREER_NAME,'
      '   :CARRER_NOTE,'
      '   :CAREER_TYPE)')
    SQL.Strings = (
      'SELECT CAREER_NO'
      '     , CAREER_NAME'
      '     , CARRER_NOTE'
      '     , CAREER_TYPE'
      '     , CAREER_TYPE_NAME'
      'FROM HR_CAREER'
      'LEFT JOIN HR_CAREER_TYPE ON CAREER_TYPE=CAREER_TYPE_NO')
    object qryListCAREER_NO: TWideStringField
      FieldName = 'CAREER_NO'
      Required = True
      Size = 30
    end
    object qryListCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Required = True
      Size = 126
    end
    object qryListCARRER_NOTE: TWideStringField
      FieldName = 'CARRER_NOTE'
      Size = 3072
    end
    object qryListCAREER_TYPE: TWideStringField
      FieldName = 'CAREER_TYPE'
      Size = 30
    end
    object qryListCAREER_TYPE_NAME: TWideStringField
      FieldName = 'CAREER_TYPE_NAME'
      Size = 126
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
