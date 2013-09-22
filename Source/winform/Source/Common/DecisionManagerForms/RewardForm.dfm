inherited frmRewardForm: TfrmRewardForm
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleMacDinh
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 319
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      KeyField = 'REWARD_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainREWARD_NO: TdxDBGridColumn
        Caption = 'M'#227' h'#236'nh th'#7913'c '
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_NO'
        Caption_UTF7 = 'M+AOM h+AOw-nh th+Huk-c '
      end
      object dxdbgMainREWARD_NAME: TdxDBGridColumn
        Caption = 'H'#236'nh th'#7913'c khen th'#432#7903'ng '
        HeaderAlignment = taCenter
        Width = 215
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_NAME'
        Caption_UTF7 = 'H+AOw-nh th+Huk-c khen th+AbAe3w-ng '
      end
      object dxdbgMainREWARD_LEVEL: TdxDBGridSpinColumn
        Caption = 'M'#7913'c '#273#7897' '
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_LEVEL'
        Caption_UTF7 = 'M+Huk-c +AREe2Q '
      end
      object dxdbgMainREWARD_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REWARD_NOTE'
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
        Caption = 'Danh m'#7909'c h'#236'nh th'#7913'c khen th'#432#7903'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 88
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_REWARD_FORM'
      'WHERE'
      '   REWARD_NO = :OLD_REWARD_NO')
    EditSQL.Strings = (
      'UPDATE HR_REWARD_FORM SET'
      '   REWARD_NO = :REWARD_NO, /*PK*/'
      '   REWARD_NAME = :REWARD_NAME,'
      '   REWARD_LEVEL = :REWARD_LEVEL,'
      '   REWARD_NOTE = :REWARD_NOTE'
      'WHERE'
      '   REWARD_NO = :OLD_REWARD_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_REWARD_FORM('
      '   REWARD_NO, /*PK*/'
      '   REWARD_NAME,'
      '   REWARD_LEVEL,'
      '   REWARD_NOTE)'
      'VALUES ('
      '   :REWARD_NO,'
      '   :REWARD_NAME,'
      '   :REWARD_LEVEL,'
      '   :REWARD_NOTE)')
    OnNewRecord = qryListNewRecord
    SQL.Strings = (
      'SELECT REWARD_NO'
      '     , REWARD_NAME'
      '     , REWARD_LEVEL'
      '     , REWARD_NOTE'
      'FROM HR_REWARD_FORM')
    object qryListREWARD_NO: TWideStringField
      FieldName = 'REWARD_NO'
      Required = True
      Size = 30
    end
    object qryListREWARD_NAME: TWideStringField
      FieldName = 'REWARD_NAME'
      Required = True
      Size = 126
    end
    object qryListREWARD_LEVEL: TIntegerField
      FieldName = 'REWARD_LEVEL'
      Required = True
    end
    object qryListREWARD_NOTE: TWideStringField
      FieldName = 'REWARD_NOTE'
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
