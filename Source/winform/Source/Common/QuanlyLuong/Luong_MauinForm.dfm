inherited frmLuong_Mauin: TfrmLuong_Mauin
  Left = 388
  Top = 227
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 322
      Color = 15466238
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 3
      Top = 3
      KeyField = 'KEY_ID'
      Filter.Criteria = {00000000}
      object dxdbgMainTIEUDE_MAUIN: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873' m'#7851'u in'
        HeaderAlignment = taCenter
        Width = 379
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEUDE_MAUIN'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ m+Hqs-u in'
      end
      object dxdbgMainFILE_NAME: TdxDBGridButtonColumn
        Caption = 'T'#7853'p tin *.rtm '#273#237'nh k'#232'm'
        HeaderAlignment = taCenter
        Width = 207
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FILE_NAME'
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxdbgMainFILE_NAMEButtonClick
        Caption_UTF7 = 'T+Hq0-p tin *.rtm +AREA7Q-nh k+AOg-m'
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
        Caption = 'Danh m'#7909'c m'#7851'u in b'#7843'ng l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_LUONG_MAUIN'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    EditSQL.Strings = (
      'UPDATE HR_LUONG_MAUIN SET'
      '   KEY_ID = :KEY_ID, /*PK*/'
      '   TIEUDE_MAUIN = :TIEUDE_MAUIN,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    GeneratorLinks.Strings = (
      'KEY_ID = GEN_HR_LUONG_MAUIN_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_LUONG_MAUIN('
      '   KEY_ID, /*PK*/'
      '   TIEUDE_MAUIN,'
      '   FILE_NAME,'
      '   FILE_CONTENT)'
      'VALUES ('
      '   :KEY_ID,'
      '   :TIEUDE_MAUIN,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT)')
    SQL.Strings = (
      'SELECT KEY_ID'
      '     , TIEUDE_MAUIN'
      '     , FILE_NAME'
      '     , FILE_CONTENT'
      'FROM HR_LUONG_MAUIN')
    object qryListKEY_ID: TIntegerField
      FieldName = 'KEY_ID'
      Required = True
    end
    object qryListTIEUDE_MAUIN: TWideStringField
      FieldName = 'TIEUDE_MAUIN'
      Required = True
      Size = 126
    end
    object qryListFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Required = True
      Size = 63
    end
    object qryListFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
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
