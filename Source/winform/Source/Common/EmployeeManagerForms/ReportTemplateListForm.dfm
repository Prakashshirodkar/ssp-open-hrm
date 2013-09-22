inherited frmReportTemplateList: TfrmReportTemplateList
  Left = 345
  Top = 281
  Width = 561
  Height = 397
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 344
    Width = 553
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 553
    Height = 344
    inherited frameToolbar1: TframeToolbar
      Top = 309
    end
    inherited dxdbgMain: TdxDBGrid
      KeyField = 'TEMPLATE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainTEMPLATE_NO: TdxDBGridColumn
        Caption = 'M'#227' s'#7889' m'#7851'u '
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NO'
        Caption_UTF7 = 'M+AOM s+HtE m+Hqs-u '
      end
      object dxdbgMainTEMPLATE_NAME: TdxDBGridColumn
        Caption = 'T'#234'n m'#7851'u '
        HeaderAlignment = taCenter
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NAME'
        Caption_UTF7 = 'T+AOo-n m+Hqs-u '
      end
      object dxdbgMainTEMPLATE_FILE: TdxDBGridButtonColumn
        Caption = 'T'#234'n t'#7853'p tin m'#7851'u '
        HeaderAlignment = taCenter
        Width = 156
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_FILE'
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxdbgMainTEMPLATE_FILEButtonClick
        Caption_UTF7 = 'T+AOo-n t+Hq0-p tin m+Hqs-u '
      end
      object dxdbgMainTEMPLATE_TYPE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'D'#224'nh cho '
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_TYPE'
        Descriptions.WideStrings = (
          'Quy'#7871't '#273#7883'nh'
          'H'#7907'p '#273#7891'ng'
          'B'#7843'ng l'#432#417'ng'
          'S'#417' y'#7871'u l'#237' l'#7883'ch'
          'Th'#7917' vi'#7879'c'
          'Ph'#7887'ng v'#7845'n'
          'C'#244'ng c'#7909
          'B'#7843'o hi'#7875'm'
          #7912'ng vi'#234'n'
          'Theo d'#245'i n'#226'ng l'#432#417'ng')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
        Caption_UTF7 = 'D+AOA-nh cho '
      end
      object dxdbgMainTEMPLATE_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPLATE_NOTE'
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
        Caption = 'Danh m'#7909'c m'#7851'u in v'#259'n b'#7843'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 40
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_REPORT_TEMPLATE'
      'WHERE'
      '   TEMPLATE_NO = :OLD_TEMPLATE_NO')
    EditSQL.Strings = (
      'UPDATE HR_REPORT_TEMPLATE SET'
      '   TEMPLATE_NO = :TEMPLATE_NO, /*PK*/'
      '   TEMPLATE_NAME = :TEMPLATE_NAME,'
      '   TEMPLATE_FILE = :TEMPLATE_FILE,'
      '   TEMPLATE_NOTE = :TEMPLATE_NOTE,'
      '   TEMPLATE_TYPE = :TEMPLATE_TYPE'
      'WHERE'
      '   TEMPLATE_NO = :OLD_TEMPLATE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_REPORT_TEMPLATE('
      '   TEMPLATE_NO, /*PK*/'
      '   TEMPLATE_NAME,'
      '   TEMPLATE_FILE,'
      '   TEMPLATE_NOTE,'
      '   TEMPLATE_TYPE)'
      'VALUES ('
      '   :TEMPLATE_NO,'
      '   :TEMPLATE_NAME,'
      '   :TEMPLATE_FILE,'
      '   :TEMPLATE_NOTE,'
      '   :TEMPLATE_TYPE)')
    KeyLinks.Strings = (
      'HR_REPORT_TEMPLATE.TEMPLATE_NO')
    SQL.Strings = (
      'SELECT TEMPLATE_NO'
      '     , TEMPLATE_NAME'
      '     , TEMPLATE_FILE'
      '     , TEMPLATE_NOTE'
      '     , TEMPLATE_TYPE'
      'FROM HR_REPORT_TEMPLATE')
    object qryListTEMPLATE_NO: TWideStringField
      FieldName = 'TEMPLATE_NO'
      Required = True
      Size = 30
    end
    object qryListTEMPLATE_NAME: TWideStringField
      FieldName = 'TEMPLATE_NAME'
      Required = True
      Size = 126
    end
    object qryListTEMPLATE_FILE: TWideStringField
      FieldName = 'TEMPLATE_FILE'
      Required = True
      Size = 126
    end
    object qryListTEMPLATE_NOTE: TWideStringField
      FieldName = 'TEMPLATE_NOTE'
      Size = 3072
    end
    object qryListTEMPLATE_TYPE: TSmallintField
      FieldName = 'TEMPLATE_TYPE'
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
  object OpenDialog1: TOpenDialog
    Filter = 'Report template (*.rtm)|*.rtm'
    Left = 72
    Top = 40
  end
end
