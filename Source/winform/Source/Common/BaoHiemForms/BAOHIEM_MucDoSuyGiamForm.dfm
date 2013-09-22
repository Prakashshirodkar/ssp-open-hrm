inherited frmBAOHIEM_MucDoSuyGiam: TfrmBAOHIEM_MucDoSuyGiam
  Left = 415
  Top = 242
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited frameToolbar1: TframeToolbar
      Top = 312
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'ID_MUCDO_SUYGIAM'
      Filter.Criteria = {00000000}
      object dxdbgMainMA_MUCDO_SUYGIAM: TdxDBGridColumn
        Caption = 'M'#227' m'#7913'c '#273#7897
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_MUCDO_SUYGIAM'
        Caption_UTF7 = 'M+AOM m+Huk-c +AREe2Q'
      end
      object dxdbgMainTEN_MUCDO_SUYGIAM: TdxDBGridColumn
        Caption = 'M'#7913'c '#273#7897' suy gi'#7843'm kh'#7843' n'#259'ng L'#272
        HeaderAlignment = taCenter
        Width = 177
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_MUCDO_SUYGIAM'
        Caption_UTF7 = 'M+Huk-c +AREe2Q suy gi+HqM-m kh+HqM n+AQM-ng L+ARA'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 304
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
        Caption = 'Danh m'#7909'c m'#7913'c '#273#7897' suy gi'#7843'm kh'#7843' n'#259'ng L'#272
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TNLD_MUCDOSUYGIAM'
      'WHERE'
      '   ID_MUCDO_SUYGIAM = :OLD_ID_MUCDO_SUYGIAM')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TNLD_MUCDOSUYGIAM SET'
      '   ID_MUCDO_SUYGIAM = :ID_MUCDO_SUYGIAM, /*PK*/'
      '   MA_MUCDO_SUYGIAM = :MA_MUCDO_SUYGIAM,'
      '   TEN_MUCDO_SUYGIAM = :TEN_MUCDO_SUYGIAM,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   ID_MUCDO_SUYGIAM = :OLD_ID_MUCDO_SUYGIAM')
    GeneratorLinks.Strings = (
      'ID_MUCDO_SUYGIAM = GEN_HR_BH_TNLD_MUCDOSUYGIAM_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TNLD_MUCDOSUYGIAM('
      '   ID_MUCDO_SUYGIAM, /*PK*/'
      '   MA_MUCDO_SUYGIAM,'
      '   TEN_MUCDO_SUYGIAM,'
      '   GHI_CHU)'
      'VALUES ('
      '   :ID_MUCDO_SUYGIAM,'
      '   :MA_MUCDO_SUYGIAM,'
      '   :TEN_MUCDO_SUYGIAM,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'ID_MUCDO_SUYGIAM')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT ID_MUCDO_SUYGIAM'
      '     , MA_MUCDO_SUYGIAM'
      '     , TEN_MUCDO_SUYGIAM'
      '     , GHI_CHU'
      'FROM HR_BAOHIEM_TNLD_MUCDOSUYGIAM')
    object qryListMA_MUCDO_SUYGIAM: TWideStringField
      FieldName = 'MA_MUCDO_SUYGIAM'
      Required = True
      Size = 30
    end
    object qryListTEN_MUCDO_SUYGIAM: TWideStringField
      FieldName = 'TEN_MUCDO_SUYGIAM'
      Required = True
      Size = 63
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryListID_MUCDO_SUYGIAM: TIntegerField
      FieldName = 'ID_MUCDO_SUYGIAM'
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
