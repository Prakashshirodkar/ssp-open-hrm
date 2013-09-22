inherited frmBAOHIEM_BenhVien: TfrmBAOHIEM_BenhVien
  Left = 271
  Top = 187
  Width = 712
  Height = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 403
    Width = 704
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 704
    Height = 403
    inherited frameToolbar1: TframeToolbar
      Top = 368
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'ID_BAOHIEM_BENHVIEN'
      Filter.Criteria = {00000000}
      OnChangeNode = dxdbgMainChangeNode
      object dxdbgMainMA_BENHVIEN: TdxDBGridColumn
        Caption = 'M'#227' n'#417'i '#273#259'ng k'#253
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_BENHVIEN'
        Caption_UTF7 = 'M+AOM n+AaE-i +AREBAw-ng k+AP0'
      end
      object dxdbgMainTEN_BENHVIEN: TdxDBGridColumn
        Caption = 'N'#417'i '#273#259'ng k'#253' KCB'
        HeaderAlignment = taCenter
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_BENHVIEN'
        Caption_UTF7 = 'N+AaE-i +AREBAw-ng k+AP0 KCB'
      end
      object dxdbgMainTEN_TINH_THANHPHO: TdxDBGridPopupColumn
        Caption = 'Thu'#7897'c t'#7881'nh/th'#224'nh ph'#7889
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TINH_THANHPHO'
        OnCloseUp = dxdbgMainTEN_TINH_THANHPHOCloseUp
        OnInitPopup = dxdbgMainTEN_TINH_THANHPHOInitPopup
        Caption_UTF7 = 'Thu+Htk-c t+Hsk-nh/th+AOA-nh ph+HtE'
      end
      object dxdbgMainColumn4: TdxDBGridColumn
        Caption = 'Thu'#7897'c t'#7881'nh/th'#224'nh ph'#7889
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TINH_THANHPHO'
        GroupIndex = 0
        Caption_UTF7 = 'Thu+Htk-c t+Hsk-nh/th+AOA-nh ph+HtE'
      end
      object dxdbgMainDIACHI_BENHVIEN: TdxDBGridColumn
        Caption = #272#7883'a ch'#7881
        HeaderAlignment = taCenter
        Width = 168
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIACHI_BENHVIEN'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk'
      end
      object dxdbgMainGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 118
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
        Caption = 'Danh m'#7909'c n'#417'i '#273#259'ng k'#253' KCB'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 80
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_BENHVIEN'
      'WHERE'
      '   ID_BAOHIEM_BENHVIEN = :OLD_ID_BAOHIEM_BENHVIEN')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_BENHVIEN SET'
      '   ID_BAOHIEM_BENHVIEN = :ID_BAOHIEM_BENHVIEN, /*PK*/'
      '   MA_BENHVIEN = :MA_BENHVIEN,'
      '   TEN_BENHVIEN = :TEN_BENHVIEN,'
      '   MA_TINH_THANHPHO = :MA_TINH_THANHPHO,'
      '   DIACHI_BENHVIEN = :DIACHI_BENHVIEN,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   ID_BAOHIEM_BENHVIEN = :OLD_ID_BAOHIEM_BENHVIEN')
    GeneratorLinks.Strings = (
      'ID_BAOHIEM_BENHVIEN=GEN_HR_BAOHIEM_BENHVIEN_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_BENHVIEN('
      '   ID_BAOHIEM_BENHVIEN, /*PK*/'
      '   MA_BENHVIEN,'
      '   TEN_BENHVIEN,'
      '   MA_TINH_THANHPHO,'
      '   DIACHI_BENHVIEN,'
      '   GHI_CHU)'
      'VALUES ('
      '   :ID_BAOHIEM_BENHVIEN,'
      '   :MA_BENHVIEN,'
      '   :TEN_BENHVIEN,'
      '   :MA_TINH_THANHPHO,'
      '   :DIACHI_BENHVIEN,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'ID_BAOHIEM_BENHVIEN')
    KeyLinksAutoDefine = False
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT ID_BAOHIEM_BENHVIEN'
      '     , MA_BENHVIEN'
      '     , TEN_BENHVIEN'
      '     , HR_BAOHIEM_BENHVIEN.MA_TINH_THANHPHO'
      '     , TEN_TINH_THANHPHO'
      '     , DIACHI_BENHVIEN'
      '     , HR_BAOHIEM_BENHVIEN.GHI_CHU'
      'FROM HR_BAOHIEM_BENHVIEN'
      
        'JOIN HR_BAOHIEM_TINH_THANHPHO ON HR_BAOHIEM_BENHVIEN.MA_TINH_THA' +
        'NHPHO=HR_BAOHIEM_TINH_THANHPHO.MA_TINH_THANHPHO'
      'ORDER BY HR_BAOHIEM_BENHVIEN.MA_TINH_THANHPHO,MA_BENHVIEN')
    object qryListMA_BENHVIEN: TWideStringField
      FieldName = 'MA_BENHVIEN'
      Required = True
      Size = 30
    end
    object qryListTEN_BENHVIEN: TWideStringField
      FieldName = 'TEN_BENHVIEN'
      Required = True
      Size = 63
    end
    object qryListTEN_TINH_THANHPHO: TWideStringField
      FieldName = 'TEN_TINH_THANHPHO'
      Required = True
      Size = 63
    end
    object qryListDIACHI_BENHVIEN: TWideStringField
      FieldName = 'DIACHI_BENHVIEN'
      Size = 255
    end
    object qryListGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryListMA_TINH_THANHPHO: TWideStringField
      FieldName = 'MA_TINH_THANHPHO'
      Size = 30
    end
    object qryListID_BAOHIEM_BENHVIEN: TIntegerField
      FieldName = 'ID_BAOHIEM_BENHVIEN'
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
