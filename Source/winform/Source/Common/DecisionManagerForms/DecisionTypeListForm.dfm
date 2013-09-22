inherited frmDecisionType: TfrmDecisionType
  Width = 613
  Height = 412
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 359
    Width = 605
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 605
    Height = 359
    LookAndFeel = dmMain.StyleMacDinh
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 331
      Color = clCream
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnDelete: TElPopupButton
          Left = 125
        end
        inherited btnInsert: TElPopupButton
          Left = 0
        end
        inherited btnSave: TElPopupButton
          Left = 200
        end
        inherited btnCancel: TElPopupButton
          Left = 275
        end
        inherited btnClose: TElPopupButton
          Left = 947
        end
        inherited btnHelp: TElPopupButton
          Left = 827
        end
        inherited btnChoose: TElPopupButton
          Left = 887
        end
        inherited btnCopy: TElPopupButton
          Left = 100
        end
        inherited btnFirst: TElPopupButton
          Left = 355
        end
        inherited btnLast: TElPopupButton
          Left = 424
        end
        inherited btnPrevious: TElPopupButton
          Left = 378
        end
        inherited btnNext: TElPopupButton
          Left = 401
        end
        inherited btnDesign: TElPopupButton
          Left = 617
        end
        inherited btnPreview: TElPopupButton
          Left = 547
        end
        inherited btnPrint: TElPopupButton
          Left = 477
        end
        inherited btnInsertEx: TElPopupButton
          Left = 75
        end
        inherited btnSendMail: TElPopupButton
          Left = 452
        end
        inherited btnGenerate: TElPopupButton
          Left = 742
        end
        inherited btnRelation: TElPopupButton
          Left = 717
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 692
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxlctrlInsert: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlInsertCopy: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlDelete: TdxLayoutItem
              Visible = False
            end
          end
        end
      end
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 4
      Top = 4
      Bands = <
        item
          Caption = 'Th'#244'ng tin chung'
          Width = 241
        end
        item
          Caption = 'Ng'#244'n ng'#7919
          Width = 179
        end
        item
          Caption = 'B'#225'o c'#225'o m'#7863'c '#273#7883'nh'
          Width = 177
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 2
      KeyField = 'DCS_TYPE_NO'
      ParentFont = False
      BandFont.Style = [fsBold]
      Filter.Criteria = {00000000}
      ShowBands = True
      object dxdbgMainSTT: TdxDBGridMaskColumn
        Alignment = taCenter
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STT'
      end
      object dxdbgMainDCS_TYPE_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i quy'#7871't '#273#7883'nh'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 174
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DCS_TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i quy+Hr8-t +AREeyw-nh'
      end
      object dxdbgMainDCS_TYPE_NAME_VN: TdxDBGridColumn
        Caption = 'T'#234'n ti'#7871'ng Vi'#7879't'
        HeaderAlignment = taCenter
        Width = 179
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DCS_TYPE_NAME_VN'
        Caption_UTF7 = 'T+AOo-n ti+Hr8-ng Vi+Hsc-t'
      end
      object dxdbgMainDCS_TYPE_NAME_ENG: TdxDBGridColumn
        Caption = 'T'#234'n ti'#7871'ng Anh'
        HeaderAlignment = taCenter
        Width = 179
        BandIndex = 1
        RowIndex = 1
        FieldName = 'DCS_TYPE_NAME_ENG'
        Caption_UTF7 = 'T+AOo-n ti+Hr8-ng Anh'
        StoredRowIndex = 1
      end
      object dxdbgMainREPORT_TEMPLATE_DEFAULT: TdxDBGridButtonColumn
        Caption = 'M'#7851'u b'#225'o c'#225'o m'#7863'c '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 177
        BandIndex = 2
        RowIndex = 0
        FieldName = 'REPORT_TEMPLATE_DEFAULT'
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = dxdbgMainREPORT_TEMPLATE_DEFAULTButtonClick
        Caption_UTF7 = 'M+Hqs-u b+AOE-o c+AOE-o m+Hrc-c +AREeyw-nh'
      end
      object dxdbgMainTEMPLATE_NAME: TdxDBGridPopupColumn
        Caption = 'M'#7851'u v'#259'n b'#7843'n m'#7863'c '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 177
        BandIndex = 2
        RowIndex = 1
        FieldName = 'TEMPLATE_NAME'
        OnCloseUp = dxdbgMainTEMPLATE_NAMECloseUp
        OnInitPopup = dxdbgMainTEMPLATE_NAMEInitPopup
        Caption_UTF7 = 'M+Hqs-u v+AQM-n b+HqM-n m+Hrc-c +AREeyw-nh'
        StoredRowIndex = 1
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
        Caption = 'Danh m'#7909'c lo'#7841'i quy'#7871't '#273#7883'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 40
  end
  inherited qryList: TIBOQuery
    EditSQL.Strings = (
      'UPDATE HR_DECISION_TYPE SET'
      '   DCS_TYPE_NO = :DCS_TYPE_NO, /*PK*/'
      '   DCS_TYPE_NAME = :DCS_TYPE_NAME,'
      '   DCS_TYPE_NAME_ENG = :DCS_TYPE_NAME_ENG,'
      '   REPORT_TEMPLATE_DEFAULT = :REPORT_TEMPLATE_DEFAULT,'
      '   DOC_TEMPLATE_DEFAULT = :DOC_TEMPLATE_DEFAULT,'
      '   DCS_TYPE_NAME_VN = :DCS_TYPE_NAME_VN,'
      '   STT = :STT'
      'WHERE'
      '   DCS_TYPE_NO = :OLD_DCS_TYPE_NO')
    KeyLinks.Strings = (
      'HR_DECISION_TYPE.DCS_TYPE_NO')
    SQL.Strings = (
      'SELECT DCS_TYPE_NO'
      '     , DCS_TYPE_NAME'
      '     , DCS_TYPE_NAME_ENG'
      '     , REPORT_TEMPLATE_DEFAULT'
      '     , DOC_TEMPLATE_DEFAULT'
      '     , TEMPLATE_NAME'
      '     , DCS_TYPE_NAME_VN'
      '     , STT'
      'FROM HR_DECISION_TYPE'
      'left join HR_DOC_TEMPLATE on DOC_TEMPLATE_DEFAULT=TEMPLATE_NO')
    object qryListDCS_TYPE_NO: TWideStringField
      FieldName = 'DCS_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryListDCS_TYPE_NAME: TWideStringField
      FieldName = 'DCS_TYPE_NAME'
      Required = True
      Size = 126
    end
    object qryListDCS_TYPE_NAME_ENG: TWideStringField
      FieldName = 'DCS_TYPE_NAME_ENG'
      Size = 126
    end
    object qryListREPORT_TEMPLATE_DEFAULT: TWideStringField
      FieldName = 'REPORT_TEMPLATE_DEFAULT'
      Size = 63
    end
    object qryListDOC_TEMPLATE_DEFAULT: TWideStringField
      FieldName = 'DOC_TEMPLATE_DEFAULT'
      Size = 30
    end
    object qryListDCS_TYPE_NAME_VN: TWideStringField
      FieldName = 'DCS_TYPE_NAME_VN'
      Size = 126
    end
    object qryListSTT: TIntegerField
      FieldName = 'STT'
    end
    object qryListTEMPLATE_NAME: TWideStringField
      FieldName = 'TEMPLATE_NAME'
      OnChange = qryListTEMPLATE_NAMEChange
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
  object dlgReportFile: TOpenDialog
    Filter = 'Report template file (*.rtm)|*.rtm'
    Left = 488
    Top = 104
  end
end
