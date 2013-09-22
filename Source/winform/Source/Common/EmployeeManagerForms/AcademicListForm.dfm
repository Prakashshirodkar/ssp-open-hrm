inherited frmAcademicList: TfrmAcademicList
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'ACADEMIC_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainACADEMIC_NO: TdxDBGridColumn
        Caption = 'M'#227' tr'#236'nh '#273#7897
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACADEMIC_NO'
        Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q'
      end
      object dxdbgMainACADEMIC_NAME: TdxDBGridColumn
        Caption = 'Tr'#236'nh '#273#7897' v'#259'n h'#243'a'
        HeaderAlignment = taCenter
        Width = 188
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACADEMIC_NAME'
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q v+AQM-n h+APM-a'
      end
      object dxdbgMainACADEMIC_LEVEL: TdxDBGridSpinColumn
        Alignment = taCenter
        Caption = 'Ph'#226'n c'#7845'p'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACADEMIC_LEVEL'
        MinValue = 1.000000000000000000
        MaxValue = 9999999999.000000000000000000
        Caption_UTF7 = 'Ph+AOI-n c+HqU-p'
      end
      object dxdbgMainACADEMIC_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 220
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACADEMIC_NOTE'
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
        Caption = 'Danh m'#7909'c tr'#236'nh '#273#7897' v'#259'n h'#243'a'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 56
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_ACADEMIC'
      'WHERE'
      '   ACADEMIC_NO = :OLD_ACADEMIC_NO')
    EditSQL.Strings = (
      'UPDATE HR_ACADEMIC SET'
      '   ACADEMIC_NO = :ACADEMIC_NO, /*PK*/'
      '   ACADEMIC_NAME = :ACADEMIC_NAME,'
      '   ACADEMIC_LEVEL = :ACADEMIC_LEVEL,'
      '   ACADEMIC_NOTE = :ACADEMIC_NOTE'
      'WHERE'
      '   ACADEMIC_NO = :OLD_ACADEMIC_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_ACADEMIC('
      '   ACADEMIC_NO, /*PK*/'
      '   ACADEMIC_NAME,'
      '   ACADEMIC_LEVEL,'
      '   ACADEMIC_NOTE)'
      'VALUES ('
      '   :ACADEMIC_NO,'
      '   :ACADEMIC_NAME,'
      '   :ACADEMIC_LEVEL,'
      '   :ACADEMIC_NOTE)')
    KeyLinks.Strings = (
      'ACADEMIC_NO')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT ACADEMIC_NO'
      '     , ACADEMIC_NAME'
      '     , ACADEMIC_LEVEL'
      '     , ACADEMIC_NOTE'
      'FROM HR_ACADEMIC')
    object qryListACADEMIC_NO: TWideStringField
      FieldName = 'ACADEMIC_NO'
      Required = True
      Size = 30
    end
    object qryListACADEMIC_NAME: TWideStringField
      FieldName = 'ACADEMIC_NAME'
      Required = True
      Size = 126
    end
    object qryListACADEMIC_LEVEL: TIntegerField
      FieldName = 'ACADEMIC_LEVEL'
      Required = True
    end
    object qryListACADEMIC_NOTE: TWideStringField
      FieldName = 'ACADEMIC_NOTE'
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
