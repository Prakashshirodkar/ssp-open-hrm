inherited frmBAOHIEM_YeuToChanThuong: TfrmBAOHIEM_YeuToChanThuong
  Left = 362
  Top = 227
  Width = 604
  Height = 398
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 345
    Width = 596
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 596
    Height = 345
    inherited frameToolbar1: TframeToolbar
      Top = 310
    end
    inherited dxdbtlMain: TdxDBTreeList
      KeyField = 'ID_YEUTO_CHANTHUONG'
      ParentField = 'P_ID_YEUTO_CHANTHUONG'
      DragMode = dmAutomatic
      LookAndFeel = lfFlat
      object dxdbtlMainMA_YEUTO_CHANTHUONG: TdxDBTreeListColumn
        Caption = 'M'#227' y'#7871'u t'#7889
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_YEUTO_CHANTHUONG'
        Caption_UTF7 = 'M+AOM y+Hr8-u t+HtE'
      end
      object dxdbtlMainTEN_YEUTO_CHANTHUONG: TdxDBTreeListColumn
        Caption = 'Y'#7871'u t'#7889' g'#226'y ch'#7845'n th'#432#417'ng'
        HeaderAlignment = taCenter
        Width = 205
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_YEUTO_CHANTHUONG'
        Caption_UTF7 = 'Y+Hr8-u t+HtE g+AOI-y ch+HqU-n th+AbABoQ-ng'
      end
      object dxdbtlMainCAP_DO: TdxDBTreeListSpinColumn
        Alignment = taCenter
        Caption = 'C'#7845'p '#273#7897
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAP_DO'
        Caption_UTF7 = 'C+HqU-p +AREe2Q'
      end
      object dxdbtlMainGHI_CHU: TdxDBTreeListColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 228
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
        Caption = 'Danh m'#7909'c y'#7871'u t'#7889' g'#226'y ch'#7845'n th'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_TNLD_YEUTO'
      'WHERE'
      '   ID_YEUTO_CHANTHUONG = :OLD_ID_YEUTO_CHANTHUONG')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_TNLD_YEUTO SET'
      '   ID_YEUTO_CHANTHUONG = :ID_YEUTO_CHANTHUONG, /*PK*/'
      '   MA_YEUTO_CHANTHUONG = :MA_YEUTO_CHANTHUONG,'
      '   TEN_YEUTO_CHANTHUONG = :TEN_YEUTO_CHANTHUONG,'
      '   GHI_CHU = :GHI_CHU,'
      '   CAP_DO = :CAP_DO,'
      '   P_ID_YEUTO_CHANTHUONG = :P_ID_YEUTO_CHANTHUONG'
      'WHERE'
      '   ID_YEUTO_CHANTHUONG = :OLD_ID_YEUTO_CHANTHUONG')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_TNLD_YEUTO('
      '   ID_YEUTO_CHANTHUONG, /*PK*/'
      '   MA_YEUTO_CHANTHUONG,'
      '   TEN_YEUTO_CHANTHUONG,'
      '   GHI_CHU,'
      '   CAP_DO,'
      '   P_ID_YEUTO_CHANTHUONG)'
      'VALUES ('
      '   :ID_YEUTO_CHANTHUONG,'
      '   :MA_YEUTO_CHANTHUONG,'
      '   :TEN_YEUTO_CHANTHUONG,'
      '   :GHI_CHU,'
      '   :CAP_DO,'
      '   :P_ID_YEUTO_CHANTHUONG)')
    KeyLinks.Strings = (
      'ID_YEUTO_CHANTHUONG')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT ID_YEUTO_CHANTHUONG'
      '     , MA_YEUTO_CHANTHUONG'
      '     , TEN_YEUTO_CHANTHUONG'
      '     , GHI_CHU'
      '     , CAP_DO'
      '     , P_ID_YEUTO_CHANTHUONG'
      'FROM HR_BAOHIEM_TNLD_YEUTO')
    object qryListMA_YEUTO_CHANTHUONG: TWideStringField
      FieldName = 'MA_YEUTO_CHANTHUONG'
      Required = True
      Size = 30
    end
    object qryListTEN_YEUTO_CHANTHUONG: TWideStringField
      FieldName = 'TEN_YEUTO_CHANTHUONG'
      Required = True
      Size = 63
    end
    object qryListCAP_DO: TSmallintField
      FieldName = 'CAP_DO'
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryListP_ID_YEUTO_CHANTHUONG: TIntegerField
      FieldName = 'P_ID_YEUTO_CHANTHUONG'
    end
    object qryListID_YEUTO_CHANTHUONG: TIntegerField
      FieldName = 'ID_YEUTO_CHANTHUONG'
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
