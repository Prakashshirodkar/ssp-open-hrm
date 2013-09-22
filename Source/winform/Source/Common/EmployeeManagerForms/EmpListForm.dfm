inherited frmEmpList: TfrmEmpList
  Left = 224
  Top = 304
  Width = 583
  Height = 413
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 360
    Width = 575
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 575
    Height = 360
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 407
      Top = 325
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 9
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n'
      TabOrder = 8
      Color = 15466238
      ParentColor = False
      Action = acChon
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 485
      Top = 325
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 15
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridEmpSelect: TdxDBGrid
      Left = 3
      Top = 62
      Width = 653
      Height = 193
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RecID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 3
      DataSource = dsList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridEmpSelectRecId: TdxDBGridColumn
        Visible = False
        Width = 248
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RecId'
      end
      object gridEmpSelectEMPLOYEE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridEmpSelectFULL_NAME: TdxDBGridMaskColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object gridEmpSelectDEPT_NAME: TdxDBGridColumn
        Caption = #272#417'n v'#7883' - Ph'#242'ng ban'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARABoQ-n v+Hss - Ph+API-ng ban'
      end
      object gridEmpSelectTITLE_NAME: TdxDBGridColumn
        Caption = 'Ch'#7913'c danh'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 162
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c danh'
      end
      object gridEmpSelectSELECTED: TdxDBGridCheckColumn
        Caption = 'Ch'#7885'n'
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SELECTED'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Ch+Hs0-n'
      end
    end
    object imOption: TdxImageEdit
      Left = 425
      Top = 29
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      OnChange = imOptionChange
      PopupBorder = pbSingle
    end
    object dxSelectFromDept: TdxPopupEdit
      Left = 136
      Top = 29
      Width = 150
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      Text = '<t'#7845't c'#7843'>'
      OnChange = dxSelectFromDeptChange
      OnCloseUp = dxSelectFromDeptCloseUp
      OnInitPopup = dxSelectFromDeptInitPopup
      Text_UTF7 = '<t+HqU-t c+HqM>'
    end
    object chkViewAll: TdxCheckEdit
      Left = 336
      Top = 29
      Width = 39
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = chkViewAllChange
      State = cbsChecked
      StoredValues = 1
    end
    object dxSelectWageStandard: TdxPopupEdit
      Left = 136
      Top = 299
      Width = 150
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      OnChange = dxSelectWageStandardChange
      OnCloseUp = dxSelectWageStandardCloseUp
      OnInitPopup = dxSelectWageStandardInitPopup
    end
    object dxWageCoeff: TdxCalcEdit
      Left = 236
      Top = 325
      Width = 86
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 6
      StyleController = dmMain.StyleController
      OnChange = dxWageCoeffChange
      PopupBorder = pbSingle
    end
    object dxWageLevel: TdxSpinEdit
      Left = 136
      Top = 325
      Width = 66
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      Alignment = taCenter
      ReadOnly = False
      StyleController = dmMain.StyleController
      OnChange = dxWageLevelChange
      MaxValue = 100.000000000000000000
      StoredValues = 113
    end
    object chkCheckAll: TdxCheckEdit
      Left = 537
      Top = 299
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnChange = chkCheckAllChange
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n d'#7919' li'#7879'u'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'Theo '#273#417'n v'#7883' - ph'#242'ng ban'
          Control = dxSelectFromDept
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'C'#7845'p d'#432#7899'i'
          Control = chkViewAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'Ph'#226'n lo'#7841'i'
          Visible = False
          Control = imOption
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridEmpSelect
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group6: TdxLayoutGroup
        Caption = 'D'#7919' li'#7879'u m'#7863'c '#273#7883'nh'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group7: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'Ng'#7841'ch l'#432#417'ng m'#7863'c '#273#7883'nh'
            Control = dxSelectWageStandard
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item8: TdxLayoutItem
              Caption = 'B'#7853'c'
              Control = dxWageLevel
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              Caption = 'H'#7879' s'#7889
              Control = dxWageCoeff
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item10: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'Ch'#7885'n t'#7845't c'#7843
            Control = chkCheckAll
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avBottom
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton2
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
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
        Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 88
    Top = 232
  end
  object dsList: TDataSource
    DataSet = memList
    Left = 40
    Top = 152
  end
  object qryList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FROM_DEPT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IS_DISMISSED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IS_DISMISSED=2'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '  hr_get_emp_list.emp_no,'
      '  hr_get_emp_list.full_name,'
      '  hr_get_emp_list.dept_name,'
      '  hr_get_emp_list.title_name'
      'from hr_get_emp_list(:USER_NAME,:FROM_DEPT,:VIEW_ALL)'
      ' where (IS_MAIN_POSITION=1) and'
      '     ((IS_DISMISSED=:IS_DISMISSED)or(:IS_DISMISSED=2))')
    FieldOptions = []
    Left = 72
    Top = 120
    object qryListEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
  end
  object memList: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeInsert = memListBeforeInsert
    Left = 72
    Top = 152
    object memListEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 127
    end
    object memListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memListSELECTED: TIntegerField
      FieldName = 'SELECTED'
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 144
    Top = 128
    object acChon: TAction
      Caption = 'acChon'
      ImageIndex = 9
      OnExecute = acChonExecute
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acBoquaExecute
    end
    object acRefreshData: TAction
      Caption = 'acRefreshData'
      OnExecute = acRefreshDataExecute
    end
  end
end
