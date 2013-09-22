inherited frmDanhSachQDAo: TfrmDanhSachQDAo
  Left = 361
  Top = 161
  Width = 831
  Height = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 524
    Width = 823
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 823
    Height = 524
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 497
      Color = 15466238
      TabOrder = 6
      inherited dxLayoutControl1: TdxLayoutControl
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
    object ppDecisionType: TdxPopupEdit [1]
      Left = 91
      Top = 28
      Width = 207
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnCloseUp = ppDecisionTypeCloseUp
      OnInitPopup = ppDecisionTypeInitPopup
    end
    object chkAll: TdxCheckEdit [2]
      Left = 330
      Top = 28
      Width = 23
      Color = clCream
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = chkAllChange
      State = cbsChecked
      StoredValues = 1
    end
    object dxFromDate: TdxDateEdit [3]
      Left = 395
      Top = 28
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dxTodate: TdxDateEdit [4]
      Left = 524
      Top = 28
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object ElPopupButton1: TElPopupButton [5]
      Left = 721
      Top = 28
      Width = 88
      Height = 25
      Cursor = crDefault
      ImageIndex = 10
      UseImageList = True
      Images = dmMain.imgAction
      HotImages = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&Xem DS'
      TabOrder = 4
      Color = clCream
      ParentColor = False
      Action = acLayDS
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridDS_QD_Ao: TdxDBGrid [6]
      Left = 2
      Top = 60
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DECISION_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 5
      OnMouseUp = gridDS_QD_AoMouseUp
      DataSource = dsDecisions
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridDS_QD_AoDECISION_NO: TdxDBGridColumn
        Caption = 'S'#7889' Q'#272
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DECISION_NO'
        Caption_UTF7 = 'S+HtE Q+ARA'
      end
      object gridDS_QD_AoDECISION_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y ra Q'#272
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DECISION_DATE'
        Caption_UTF7 = 'Ng+AOA-y ra Q+ARA'
      end
      object gridDS_QD_AoISSUE_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y hi'#7879'u l'#7921'c'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISSUE_DATE'
        Caption_UTF7 = 'Ng+AOA-y hi+Hsc-u l+HvE-c'
      end
      object gridDS_QD_AoDECISION_TITLE: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DECISION_TITLE'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ'
      end
      object gridDS_QD_AoDEPT_NAME: TdxDBGridColumn
        Caption = #272'V ra Q'#272
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARA-V ra Q+ARA'
      end
      object gridDS_QD_AoDCS_TYPE_NAME: TdxDBGridColumn
        Caption = 'Lo'#7841'i Q'#272
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DCS_TYPE_NAME'
        Caption_UTF7 = 'Lo+HqE-i Q+ARA'
      end
      object gridDS_QD_AoQD_THAT: TdxDBGridCheckColumn
        Caption = 'Q'#272' th'#7853't'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QD_THAT'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Q+ARA th+Hq0-t'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        Caption = 'Danh s'#225'ch Q'#272' '#7843'o'
        LayoutDirection = ldHorizontal
        object dxlcMainItem2: TdxLayoutItem
          Caption = 'Lo'#7841'i Quy'#7871't '#273#7883'nh'
          Control = ppDecisionType
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
          Caption = 'T'#7845't c'#7843
          Control = chkAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem4: TdxLayoutItem
          Caption = 'T'#7915' ng'#224'y'
          Control = dxFromDate
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem5: TdxLayoutItem
          Caption = #272#7871'n ng'#224'y'
          Control = dxTodate
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcMainItem7: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridDS_QD_Ao
        ControlOptions.ShowBorder = False
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
        Caption = 'Danh s'#225'ch Q'#272' '#7843'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 24
    Top = 88
    object acLayDS: TAction
      Caption = 'acLayDS'
      ImageIndex = 10
      OnExecute = acLayDSExecute
    end
    object acChuyenTatCa: TAction
      Caption = 'acChonTatCa'
      OnExecute = acChuyenTatCaExecute
    end
    object acBoChuyenTatCa: TAction
      Caption = 'acBoChuyenTatCa'
      OnExecute = acBoChuyenTatCaExecute
    end
  end
  object qryDecisions: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LANGUAGE_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_DECISION SET'
      '   QD_THAT = :QD_THAT'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_DECISION.DECISION_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_DECISION.DECISION_NO'
      '     , DECISION_DATE'
      '     , ISSUE_DATE'
      '     , DECISION_TITLE'
      '     , HR_DECISION.DEPT_NO'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_DECISION.decision_type_no'
      '     , hr_mask_decision_type.dcs_type_name'
      '     , QD_THAT'
      'FROM HR_DECISION'
      'JOIN HR_DEPARTMENT '
      '  ON HR_DECISION.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'JOIN hr_mask_decision_type(:USER_NAME,:LANGUAGE_ID)'
      
        '  ON HR_DECISION.DECISION_TYPE_NO=hr_mask_decision_type.DCS_TYPE' +
        '_NO')
    FieldOptions = []
    Left = 24
    Top = 120
    object qryDecisionsDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryDecisionsDECISION_DATE: TDateField
      FieldName = 'DECISION_DATE'
      Required = True
    end
    object qryDecisionsISSUE_DATE: TDateField
      FieldName = 'ISSUE_DATE'
    end
    object qryDecisionsDECISION_TITLE: TWideStringField
      FieldName = 'DECISION_TITLE'
      Required = True
      Size = 126
    end
    object qryDecisionsDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryDecisionsDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDecisionsDECISION_TYPE_NO: TWideStringField
      FieldName = 'DECISION_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryDecisionsDCS_TYPE_NAME: TWideStringField
      FieldName = 'DCS_TYPE_NAME'
      Size = 126
    end
    object qryDecisionsQD_THAT: TSmallintField
      FieldName = 'QD_THAT'
    end
  end
  object dsDecisions: TDataSource
    DataSet = qryDecisions
    Left = 26
    Top = 157
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 56
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
    object dxChonTatCa: TdxBarButton
      Action = acChuyenTatCa
      Caption = 'Chuy'#7875'n t'#7845't c'#7843' Q'#272' '#7843'o th'#224'nh th'#7853't'
      Category = 0
      Hint = 'Chuy'#7875'n t'#7845't c'#7843' Q'#272' '#7843'o th'#224'nh th'#7853't'
      Visible = ivAlways
    end
    object dxKhongChonTatCa: TdxBarButton
      Action = acBoChuyenTatCa
      Caption = 'B'#7887' chuy'#7875'n t'#7845't c'#7843' Q'#272' '#7843'o th'#224'nh th'#7853't'
      Category = 0
      Hint = 'B'#7887' chuy'#7875'n t'#7845't c'#7843' Q'#272' '#7843'o th'#224'nh th'#7853't'
      Visible = ivAlways
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxChonTatCa
        Visible = True
      end
      item
        Item = dxKhongChonTatCa
        Visible = True
      end>
    UseOwnFont = False
    Left = 56
    Top = 120
  end
end
