inherited frmSelectEmployee: TfrmSelectEmployee
  Left = 287
  Top = 199
  Width = 829
  Height = 515
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 462
    Width = 821
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 821
    Height = 462
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElLabel1: TElLabel
      Left = 14
      Top = 428
      Width = 454
      Height = 14
      Caption = 
        'S'#7917' d'#7909'ng chu'#7897't tr'#225'i k'#233'o th'#7843' c'#225'c nh'#226'n vi'#234'n '#273#227' ch'#7885'n tr'#234'n l'#432#7899'i v'#224'o v' +
        #249'ng c'#7847'n thao t'#225'c'
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object gridData: TdxDBGrid
      Left = 14
      Top = 53
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EMP_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      DragMode = dmAutomatic
      TabOrder = 5
      OnEndDrag = gridDataEndDrag
      DataSource = dsNhanvien
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoCellMultiSelect, edgoDragExpand, edgoDragScroll, edgoEnterShowEditor, edgoExtMultiSelect, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      OnBeginDragNode = gridDataBeginDragNode
      object gridDataEMP_NO: TdxDBGridColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMP_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridDataFULL_NAME: TdxDBGridColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        HeaderAlignment = taCenter
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object gridDataDEPT_NO: TdxDBGridColumn
        Caption = 'M'#227' '#273#417'n v'#7883
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NO'
        Caption_UTF7 = 'M+AOM +AREBoQ-n v+Hss'
      end
      object gridDataDEPT_NAME: TdxDBGridColumn
        Caption = #272#417'n v'#7883' ph'#242'ng ban'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 208
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        GroupIndex = 0
        Caption_UTF7 = '+ARABoQ-n v+Hss ph+API-ng ban'
      end
      object gridDataTITLE_NO: TdxDBGridColumn
        Caption = 'M'#227' ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NO'
        Caption_UTF7 = 'M+AOM ch+Huk-c v+HuU'
      end
      object gridDataTITLE_NAME: TdxDBGridColumn
        Caption = 'Ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object gridDataPOSITION_NO: TdxDBGridColumn
        Caption = 'M'#227' v'#7883' tr'#237
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POSITION_NO'
        Caption_UTF7 = 'M+AOM v+Hss tr+AO0'
      end
      object gridDataASSIGNED_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y b'#7893' nhi'#7879'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ASSIGNED_DATE'
        Caption_UTF7 = 'Ng+AOA-y b+HtU nhi+Hsc-m'
      end
      object gridDataIS_MAIN_POSITION: TdxDBGridCheckColumn
        Caption = 'V'#7883' tr'#237' ch'#237'nh'
        HeaderAlignment = taCenter
        MinWidth = 20
        Visible = False
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IS_MAIN_POSITION'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'V+Hss tr+AO0 ch+AO0-nh'
      end
      object gridDataIS_DISMISSED: TdxDBGridCheckColumn
        Caption = #272#227' ngh'#7881
        HeaderAlignment = taCenter
        MinWidth = 20
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IS_DISMISSED'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = '+ARAA4w ngh+Hsk'
      end
      object gridDataWORK_TYPE_NO: TdxDBGridColumn
        Caption = 'M'#227' nh'#243'm'
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NO'
        Caption_UTF7 = 'M+AOM nh+APM-m'
      end
      object gridDataWORK_TYPE_NAME: TdxDBGridColumn
        Caption = 'Nh'#243'm c'#244'ng vi'#7879'c'
        HeaderAlignment = taCenter
        Visible = False
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NAME'
        Caption_UTF7 = 'Nh+APM-m c+APQ-ng vi+Hsc-c'
      end
      object gridDataEND_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y k'#7871't th'#250'c'
        HeaderAlignment = taCenter
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'END_DATE'
        Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
      end
      object gridDataDISMISS_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y ng'#432'ng c'#244'ng t'#225'c'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISMISS_DATE'
        Caption_UTF7 = 'Ng+AOA-y ng+AbA-ng c+APQ-ng t+AOE-c'
      end
      object gridDataCONTRACT_NO: TdxDBGridColumn
        Caption = 'S'#7889' h'#7907'p '#273#7891'ng'
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTRACT_NO'
        Caption_UTF7 = 'S+HtE h+HuM-p +AREe0w-ng'
      end
      object gridDataDECISION_NO: TdxDBGridColumn
        Caption = 'S'#7889' quy'#7871't '#273#7883'nh'
        HeaderAlignment = taCenter
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DECISION_NO'
        Caption_UTF7 = 'S+HtE quy+Hr8-t +AREeyw-nh'
      end
      object gridDataEMAIL: TdxDBGridColumn
        Caption = 'Email'
        HeaderAlignment = taCenter
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
    end
    object dxDept: TdxPopupEdit
      Left = 127
      Top = 29
      Width = 210
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxDeptChange
      OnCloseUp = dxDeptCloseUp
      OnInitPopup = dxDeptInitPopup
    end
    object ElPopupButton1: TElPopupButton
      Left = 719
      Top = 28
      Width = 88
      Height = 25
      Cursor = crDefault
      ImageIndex = 6
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xem d'#7919' li'#7879'u'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acXem
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxViewAll: TdxCheckEdit
      Left = 337
      Top = 29
      Width = 95
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Caption = 'Xem c'#7845'p d'#432#7899'i'
      StyleController = dmMain.StyleController
    end
    object ElPopupButton2: TElPopupButton
      Left = 732
      Top = 428
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 67
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'ng'
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acDong
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dximOption: TdxImageEdit
      Left = 477
      Top = 28
      Width = 126
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object dxCVHienTai: TdxCheckEdit
      Left = 611
      Top = 28
      Width = 108
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Caption = 'Ch'#7913'c v'#7909' hi'#7879'n t'#7841'i'
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
        object dxLayoutControl1Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = []
            AlignVert = avCenter
            Caption = 'Ch'#7885'n '#273#417'n v'#7883' ph'#242'ng ban'
            Control = dxDept
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avCenter
            Caption = 'dxCheckEdit1'
            ShowCaption = False
            Control = dxViewAll
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ph'#226'n lo'#7841'i'
            Control = dximOption
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'Xem ch'#7913'c v'#7909' hi'#7879'n t'#7841'i'
            ShowCaption = False
            Control = dxCVHienTai
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridData
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            ShowCaption = False
            Control = ElLabel1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
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
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Ch'#7885'n nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 600
    Top = 8
  end
  object dsNhanvien: TDataSource
    DataSet = qryData
    Left = 88
    Top = 200
  end
  object qryData: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '  hr_get_emp_list.emp_no,'
      '  hr_get_emp_list.full_name,'
      '  hr_get_emp_list.dept_no,'
      '  hr_get_emp_list.dept_name,'
      '  hr_get_emp_list.title_no,'
      '  hr_get_emp_list.title_name,'
      '  hr_get_emp_list.position_no,'
      '  hr_get_emp_list.assigned_date,'
      '  hr_get_emp_list.is_main_position,'
      '  hr_get_emp_list.is_dismissed,'
      '  hr_get_emp_list.work_type_no,'
      '  hr_get_emp_list.work_type_name,'
      '  hr_get_emp_list.end_date,'
      '  hr_get_emp_list.dismiss_date,'
      '  hr_get_emp_list.contract_no,'
      '  hr_get_emp_list.decision_no,'
      '  hr_get_emp_list.email,'
      '  hr_get_emp_list.maso_bhxh '
      'from hr_get_emp_list(:USER_NAME,:DEPT_NO,:VIEW_ALL)')
    FieldOptions = []
    Left = 88
    Top = 168
    object qryDataEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryDataDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDataTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryDataPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryDataASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object qryDataIS_MAIN_POSITION: TIntegerField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryDataIS_DISMISSED: TIntegerField
      FieldName = 'IS_DISMISSED'
    end
    object qryDataWORK_TYPE_NO: TWideStringField
      FieldName = 'WORK_TYPE_NO'
      Size = 30
    end
    object qryDataWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      Size = 126
    end
    object qryDataEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object qryDataDISMISS_DATE: TDateField
      FieldName = 'DISMISS_DATE'
    end
    object qryDataCONTRACT_NO: TWideStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object qryDataDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Size = 30
    end
    object qryDataEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object qryDataMASO_BHXH: TWideStringField
      FieldName = 'MASO_BHXH'
      Size = 30
    end
  end
  object memData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 56
    Top = 136
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 160
    Top = 168
    object acXem: TAction
      Caption = 'acXem'
      ImageIndex = 6
      OnExecute = acXemExecute
    end
    object acDong: TAction
      Caption = 'acDong'
      ImageIndex = 67
      OnExecute = acDongExecute
    end
  end
end
