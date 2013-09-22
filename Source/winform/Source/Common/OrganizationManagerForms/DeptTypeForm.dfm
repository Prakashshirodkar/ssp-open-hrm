inherited frmDeptType: TfrmDeptType
  Left = 246
  Top = 288
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'DEPT_TYPE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainDEPT_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i '
      end
      object dxdbgMainDEPT_TYPE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 179
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_TYPE_NAME'
        Caption_UTF7 = 'T+AOo-n lo+HqE-i '
      end
      object dxdbgMainDEPT_TYPE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_TYPE_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object dxdbgMainGET_COLOR: TdxDBGridButtonColumn
        Alignment = taCenter
        Caption = 'M'#224'u '#273#7841'i di'#7879'n'
        HeaderAlignment = taCenter
        Width = 123
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = dxdbgMainGET_COLORCustomDrawCell
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxdbgMainGET_COLORButtonClick
        Caption_UTF7 = 'M+AOA-u +AREeoQ-i di+Hsc-n'
      end
      object dxdbgMainPRESENT_COLOR: TdxDBGridMaskColumn
        DisableCaption = True
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRESENT_COLOR'
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
        Caption = 'Lo'#7841'i t'#7893' ch'#7913'c - ph'#242'ng ban'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 160
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_DEPT_TYPE'
      'WHERE'
      '   DEPT_TYPE_NO = :OLD_DEPT_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_DEPT_TYPE SET'
      '   DEPT_TYPE_NO = :DEPT_TYPE_NO, /*PK*/'
      '   DEPT_TYPE_NAME = :DEPT_TYPE_NAME,'
      '   DEPT_TYPE_NOTE = :DEPT_TYPE_NOTE,'
      '   PRESENT_COLOR = :PRESENT_COLOR'
      'WHERE'
      '   DEPT_TYPE_NO = :OLD_DEPT_TYPE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_DEPT_TYPE('
      '   DEPT_TYPE_NO, /*PK*/'
      '   DEPT_TYPE_NAME,'
      '   DEPT_TYPE_NOTE,'
      '   PRESENT_COLOR)'
      'VALUES ('
      '   :DEPT_TYPE_NO,'
      '   :DEPT_TYPE_NAME,'
      '   :DEPT_TYPE_NOTE,'
      '   :PRESENT_COLOR)')
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT DEPT_TYPE_NO'
      '     , DEPT_TYPE_NAME'
      '     , DEPT_TYPE_NOTE'
      '     , PRESENT_COLOR'
      'FROM HR_DEPT_TYPE ')
    object qryListDEPT_TYPE_NO: TWideStringField
      FieldName = 'DEPT_TYPE_NO'
      Required = True
      Size = 15
    end
    object qryListDEPT_TYPE_NAME: TWideStringField
      FieldName = 'DEPT_TYPE_NAME'
      Required = True
      Size = 63
    end
    object qryListDEPT_TYPE_NOTE: TWideStringField
      FieldName = 'DEPT_TYPE_NOTE'
      Size = 3072
    end
    object qryListPRESENT_COLOR: TIntegerField
      FieldName = 'PRESENT_COLOR'
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
  object ColorDialog1: TColorDialog
    Left = 200
    Top = 88
  end
end
