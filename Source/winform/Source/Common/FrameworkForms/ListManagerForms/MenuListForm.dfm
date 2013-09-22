inherited frmMenuItem: TfrmMenuItem
  Width = 649
  Height = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 388
    Width = 641
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 641
    Height = 388
    inherited frameToolbar1: TframeToolbar
      Top = 353
    end
    inherited dxdbtlMain: TdxDBTreeList
      KeyField = 'MENU_ID'
      ParentField = 'P_MENU_ID'
      LookAndFeel = lfFlat
      object dxdbtlMainMENU_GROUP_ID: TdxDBTreeListMaskColumn
        Caption = 'Ph'#226'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MENU_GROUP_ID'
        Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
      end
      object dxdbtlMainMENU_ICON_INDEX: TdxDBTreeListImageColumn
        Alignment = taRightJustify
        Caption = 'Icon'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MENU_ICON_INDEX'
        Images = dmMain.imgMenuList
        ImageIndexes.WideStrings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
      end
      object dxdbtlMainMENU_ID: TdxDBTreeListMaskColumn
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MENU_ID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxdbtlMainMENU_TITLE: TdxDBTreeListMaskColumn
        Caption = 'Ti'#7873'u '#273#7873
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MENU_TITLE'
        Caption_UTF7 = 'Ti+HsE-u +AREewQ'
      end
      object dxdbtlMainMENU_TITLE_ENG: TdxDBTreeListMaskColumn
        Caption = 'Ti'#234'u '#273#7873' ti'#7871'ng Anh'
        HeaderAlignment = taCenter
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MENU_TITLE_ENG'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ ti+Hr8-ng Anh'
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
        Caption = 'Danh m'#7909'c Menu Item'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 80
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_MENU_LIST'
      'WHERE'
      '   MENU_ID = :OLD_MENU_ID')
    EditSQL.Strings = (
      'UPDATE HR_MENU_LIST SET'
      '   MENU_ID = :MENU_ID, /*PK*/'
      '   MENU_GROUP_ID = :MENU_GROUP_ID,'
      '   MENU_TITLE = :MENU_TITLE,'
      '   MENU_ICON_INDEX = :MENU_ICON_INDEX,'
      '   P_MENU_ID = :P_MENU_ID,'
      '   MENU_TITLE_ENG = :MENU_TITLE_ENG'
      'WHERE'
      '   MENU_ID = :OLD_MENU_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_MENU_LIST('
      '   MENU_ID, /*PK*/'
      '   MENU_GROUP_ID,'
      '   MENU_TITLE,'
      '   MENU_ICON_INDEX,'
      '   P_MENU_ID,'
      '   MENU_TITLE_ENG)'
      'VALUES ('
      '   :MENU_ID,'
      '   :MENU_GROUP_ID,'
      '   :MENU_TITLE,'
      '   :MENU_ICON_INDEX,'
      '   :P_MENU_ID,'
      '   :MENU_TITLE_ENG)')
    SQL.Strings = (
      'SELECT MENU_GROUP_ID'
      '     , MENU_ID'
      '     , MENU_TITLE'
      '     , MENU_ICON_INDEX'
      '     , P_MENU_ID'
      '     , MENU_TITLE_ENG'
      'FROM HR_MENU_LIST')
    object qryListMENU_GROUP_ID: TWideStringField
      FieldName = 'MENU_GROUP_ID'
      Required = True
      Size = 30
    end
    object qryListMENU_ID: TWideStringField
      FieldName = 'MENU_ID'
      Required = True
      Size = 30
    end
    object qryListMENU_TITLE: TWideStringField
      FieldName = 'MENU_TITLE'
      Required = True
      Size = 126
    end
    object qryListMENU_ICON_INDEX: TIntegerField
      FieldName = 'MENU_ICON_INDEX'
    end
    object qryListP_MENU_ID: TWideStringField
      FieldName = 'P_MENU_ID'
      Size = 30
    end
    object qryListMENU_TITLE_ENG: TWideStringField
      FieldName = 'MENU_TITLE_ENG'
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
    inherited miInsertChild: TdxBarButton
      Action = frameToolbar1.acDSInsertChild
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
        Item = frmTreeBase.miInsert
        Visible = True
      end
      item
        Item = frmTreeBase.miInsertChild
        Visible = True
      end
      item
        Item = frmTreeBase.miDelete
        Visible = True
      end
      item
        BeginGroup = True
        Item = frmTreeBase.miSave
        Visible = True
      end
      item
        Item = frmTreeBase.miCancel
        Visible = True
      end>
  end
end
