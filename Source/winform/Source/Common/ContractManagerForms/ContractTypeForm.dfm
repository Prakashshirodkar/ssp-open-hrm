inherited frmContractType: TfrmContractType
  Left = 274
  Top = 175
  Width = 672
  Height = 440
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 387
    Width = 664
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 664
    Height = 387
    LookAndFeel = dmMain.StyleMacDinh
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 359
      Color = clCream
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      Bands = <
        item
          Width = 254
        end>
      DefaultLayout = False
      KeyField = 'CONTRACT_TYPE_NO'
      Filter.Criteria = {00000000}
      object dxdbgMainCONTRACT_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' lo'#7841'i'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTRACT_TYPE_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i'
      end
      object dxdbgMainCONTRACT_TYPE_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i h'#7907'p '#273#7891'ng'
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTRACT_TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i h+HuM-p +AREe0w-ng'
      end
      object dxdbgMainTIME_LIMIT: TdxDBGridSpinColumn
        Alignment = taLeftJustify
        Caption = 'Th'#7901'i h'#7841'n'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIME_LIMIT'
        Caption_UTF7 = 'Th+Ht0-i h+HqE-n'
      end
      object dxdbgMainTIME_UNIT: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = #272#417'n v'#7883''
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIME_UNIT'
        Descriptions.WideStrings = (
          'ng'#224'y'
          'tu'#7847'n'
          'th'#225'ng'
          'n'#259'm')
        ShowDescription = True
        Values.WideStrings = (
          '1'
          '7'
          '30'
          '365')
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object dxdbgMainDOC_DEFAULT_NAME: TdxDBGridPopupColumn
        Caption = 'M'#7851'u so'#7841'n m'#7863'c '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_DEFAULT_NAME'
        OnCloseUp = dxdbgMainDOC_DEFAULT_NAMECloseUp
        OnInitPopup = dxdbgMainDOC_DEFAULT_NAMEInitPopup
        Caption_UTF7 = 'M+Hqs-u so+HqE-n m+Hrc-c +AREeyw-nh'
      end
      object dxdbgMainREPORT_DEFAULT: TdxDBGridButtonColumn
        Caption = 'M'#7851'u in m'#7863'c '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_DEFAULT'
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxdbgMainREPORT_DEFAULTButtonClick
        Caption_UTF7 = 'M+Hqs-u in m+Hrc-c +AREeyw-nh'
      end
      object dxdbgMainNOTES: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Visible = False
        Width = 7875
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTES'
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
        Caption = 'Danh m'#7909'c lo'#7841'i h'#7907'p '#273#7891'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 136
  end
  inherited qryList: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONTRACT_TYPE'
      'WHERE'
      '   CONTRACT_TYPE_NO = :OLD_CONTRACT_TYPE_NO')
    EditSQL.Strings = (
      'UPDATE HR_CONTRACT_TYPE SET'
      '   CONTRACT_TYPE_NO = :CONTRACT_TYPE_NO, /*PK*/'
      '   CONTRACT_TYPE_NAME = :CONTRACT_TYPE_NAME,'
      '   TIME_LIMIT = :TIME_LIMIT,'
      '   TIME_UNIT = :TIME_UNIT,'
      '   REPORT_DEFAULT = :REPORT_DEFAULT,'
      '   DOC_DEFAULT = :DOC_DEFAULT,'
      '   NOTES = :NOTES'
      'WHERE'
      '   CONTRACT_TYPE_NO = :OLD_CONTRACT_TYPE_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_CONTRACT_TYPE('
      '   CONTRACT_TYPE_NO, /*PK*/'
      '   CONTRACT_TYPE_NAME,'
      '   TIME_LIMIT,'
      '   TIME_UNIT,'
      '   REPORT_DEFAULT,'
      '   DOC_DEFAULT,'
      '   NOTES)'
      'VALUES ('
      '   :CONTRACT_TYPE_NO,'
      '   :CONTRACT_TYPE_NAME,'
      '   :TIME_LIMIT,'
      '   :TIME_UNIT,'
      '   :REPORT_DEFAULT,'
      '   :DOC_DEFAULT,'
      '   :NOTES)')
    KeyLinks.Strings = (
      'CONTRACT_TYPE_NO')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT CONTRACT_TYPE_NO'
      '     , CONTRACT_TYPE_NAME'
      '     , TIME_LIMIT'
      '     , TIME_UNIT'
      '     , REPORT_DEFAULT'
      '     , DOC_DEFAULT'
      '     , TEMPLATE_NAME DOC_DEFAULT_NAME  '
      '     , NOTES'
      'FROM HR_CONTRACT_TYPE'
      'LEFT JOIN HR_DOC_TEMPLATE on DOC_DEFAULT=TEMPLATE_NO')
    object qryListCONTRACT_TYPE_NO: TWideStringField
      FieldName = 'CONTRACT_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryListCONTRACT_TYPE_NAME: TWideStringField
      FieldName = 'CONTRACT_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryListTIME_LIMIT: TIntegerField
      FieldName = 'TIME_LIMIT'
      Required = True
    end
    object qryListTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
      Required = True
    end
    object qryListREPORT_DEFAULT: TWideStringField
      FieldName = 'REPORT_DEFAULT'
      Size = 30
    end
    object qryListDOC_DEFAULT: TWideStringField
      FieldName = 'DOC_DEFAULT'
      Size = 30
    end
    object qryListDOC_DEFAULT_NAME: TWideStringField
      FieldName = 'DOC_DEFAULT_NAME'
      Size = 126
    end
    object qryListNOTES: TWideStringField
      FieldName = 'NOTES'
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
  object OpenDialog1: TOpenDialog
    Filter = 'Report template (*.rtm)| *.rtm'
    Left = 216
    Top = 64
  end
end
