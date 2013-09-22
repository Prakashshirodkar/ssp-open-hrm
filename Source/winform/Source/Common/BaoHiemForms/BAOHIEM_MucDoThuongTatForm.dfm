inherited frmBAOHIEM_MucDoThuongTat: TfrmBAOHIEM_MucDoThuongTat
  Left = 393
  Top = 243
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 312
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'ID_TNLD_MUCDO'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_MUCDO: TdxDBGridColumn
        Caption = 'M'#227' m'#7913'c '#273#7897
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_MUCDO'
        Caption_UTF7 = 'M+AOM m+Huk-c +AREe2Q'
      end
      object dxdbgMainTEN_MUCDO: TdxDBGridColumn
        Caption = 'M'#7913'c '#273#7897' th'#432#417'ng t'#7853't'
        HeaderAlignment = taCenter
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_MUCDO'
        Caption_UTF7 = 'M+Huk-c +AREe2Q th+AbABoQ-ng t+Hq0-t'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 325
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
        Caption = 'Danh m'#7909'c m'#7913'c '#273#7897' th'#432#417'ng t'#7853't do TNL'#272
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TNLD_MUCDO'
      'WHERE'
      '   ID_TNLD_MUCDO = :OLD_ID_TNLD_MUCDO')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TNLD_MUCDO SET'
      '   ID_TNLD_MUCDO = :ID_TNLD_MUCDO, /*PK*/'
      '   MA_MUCDO = :MA_MUCDO,'
      '   TEN_MUCDO = :TEN_MUCDO,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   ID_TNLD_MUCDO = :OLD_ID_TNLD_MUCDO')
    GeneratorLinks.Strings = (
      'ID_TNLD_MUCDO = GEN_HR_BH_TNLD_MUCDO_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TNLD_MUCDO('
      '   ID_TNLD_MUCDO, /*PK*/'
      '   MA_MUCDO,'
      '   TEN_MUCDO,'
      '   GHI_CHU)'
      'VALUES ('
      '   :ID_TNLD_MUCDO,'
      '   :MA_MUCDO,'
      '   :TEN_MUCDO,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'ID_TNLD_MUCDO')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT ID_TNLD_MUCDO'
      '     , MA_MUCDO'
      '     , TEN_MUCDO'
      '     , GHI_CHU'
      'FROM HR_BAOHIEM_TNLD_MUCDO')
    object qryListMA_MUCDO: TWideStringField
      FieldName = 'MA_MUCDO'
      Required = True
      Size = 30
    end
    object qryListTEN_MUCDO: TWideStringField
      FieldName = 'TEN_MUCDO'
      Required = True
      Size = 63
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryListID_TNLD_MUCDO: TIntegerField
      FieldName = 'ID_TNLD_MUCDO'
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
