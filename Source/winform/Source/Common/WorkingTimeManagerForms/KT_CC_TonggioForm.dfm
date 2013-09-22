inherited frmKT_CC_Tonggio: TfrmKT_CC_Tonggio
  Left = 175
  Top = 126
  Width = 706
  Height = 485
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 413
    Width = 698
  end
  object ElStatusBar1: TElStatusBar [1]
    Left = 0
    Top = 432
    Width = 698
    Height = 19
    Panels = <
      item
        Alignment = taLeftJustify
        IsHTML = False
      end
      item
        Alignment = taLeftJustify
        Width = 500
        IsHTML = False
      end>
    SimplePanel = False
    SimpleTextIsHTML = False
    ResizablePanels = False
    Bevel = epbNone
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    Visible = False
    DockOrientation = doNoOrient
    DoubleBuffered = False
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 698
    Height = 413
    Align = alClient
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBTreeList1: TdxDBTreeList
      Left = 3
      Top = 3
      Width = 198
      Height = 456
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DEPT_NO'
      ParentField = 'P_DEPT_NO'
      BorderStyle = bsNone
      TabOrder = 0
      DataSource = frmWorkTimeManager.dsOrgMap
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnChangeNode = dxDBTreeList1ChangeNode
      object dxDBTreeList1DEPT_NO: TdxDBTreeListMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NO'
      end
      object dxDBTreeList1DEPT_NAME: TdxDBTreeListMaskColumn
        Caption = #272#417'n v'#7883' - ph'#242'ng ban'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
      end
      object dxDBTreeList1P_DEPT_NO: TdxDBTreeListMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'P_DEPT_NO'
      end
    end
    object ElSplitter1: TElSplitter
      Left = 202
      Top = 2
      Width = 4
      Height = 435
      Cursor = crHSplit
      SnapTopLeft = True
      SnapBottomRight = True
      ControlTopLeft = dxDBTreeList1
      AutoHide = False
      Align = alLeft
      Color = 15466238
      UseXPThemes = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 206
      Top = 386
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
      Caption = 'L'#432'u'
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 281
      Top = 386
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
      Caption = 'Kh'#244'ng l'#432'u'
      TabOrder = 10
      Color = 15466238
      ParentColor = False
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridCCThieu: TdxDBGrid
      Left = 427
      Top = 61
      Width = 238
      Height = 375
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'WORK_DATE'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 8
      DataSource = dsCCthieu
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridCCThieuEMPLOYEE_NO: TdxDBGridMaskColumn
        Alignment = taCenter
        Visible = False
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
      end
      object gridCCThieuTHU: TdxDBGridImageColumn
        Alignment = taCenter
        Caption = 'Th'#7913
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THU'
        Descriptions.WideStrings = (
          'Ch'#7911' nh'#7853't'
          'Th'#7913' 2'
          'Th'#7913' 3'
          'Th'#7913' 4'
          'Th'#7913' 5'
          'Th'#7913' 6'
          'Th'#7913' 7')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        Caption_UTF7 = 'Th+Huk'
      end
      object gridCCThieuWORK_DATE: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ng'#224'y l'#224'm vi'#7879'c'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_DATE'
        Caption_UTF7 = 'Ng+AOA-y l+AOA-m vi+Hsc-c'
      end
      object gridCCThieuCHAM_CONG: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'Ch'#7845'p nh'#7853'n ['#8730']'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHAM_CONG'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Ch+HqU-p nh+Hq0-n [+Iho]'
      end
    end
    object ElPopupButton3: TElPopupButton
      Left = 621
      Top = 386
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 67
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Tho'#225't'
      TabOrder = 11
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxInMonth: TdxSpinEdit
      Left = 250
      Top = 29
      Width = 75
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object dxInYear: TdxSpinEdit
      Left = 348
      Top = 29
      Width = 75
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object ElPopupButton4: TElPopupButton
      Left = 423
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      ImageIndex = 0
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acPri
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 523
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      ImageIndex = 3
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acNext
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 448
      Top = 28
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 10
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Xem'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acXem
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object griddsnv: TdxDBGrid
      Left = 207
      Top = 61
      Width = 194
      Height = 324
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EMP_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 7
      DataSource = dsDSNv
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object griddsnvEMP_NO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'M'#227' NV'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMP_NO'
        Caption_UTF7 = 'M+AOM NV'
      end
      object griddsnvFULL_NAME: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'H'#7885' t'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 211
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 t+AOo-n'
      end
    end
    object CheckAll: TdxCheckEdit
      Left = 179
      Top = 388
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = CheckAllChange
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          AutoAligns = []
          AlignVert = avClient
          Caption = 'dxDBTreeList1'
          ShowCaption = False
          Control = dxDBTreeList1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'Xem c'#7845'p con'
          Control = CheckAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        AutoAligns = []
        AlignVert = avClient
        Caption = 'ElSplitter1'
        ShowCaption = False
        Control = ElSplitter1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'New Group'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Group3: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxLayoutControl1Group4: TdxLayoutGroup
            Caption = '* T'#249'y ch'#7885'n hi'#7875'n th'#7883
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Caption = 'Th'#225'ng'
              Control = dxInMonth
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Caption = 'N'#259'm'
              Control = dxInYear
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              Caption = 'ElPopupButton4'
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item12: TdxLayoutItem
              Caption = 'ElPopupButton6'
              ShowCaption = False
              Control = ElPopupButton6
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item11: TdxLayoutItem
              Caption = 'ElPopupButton5'
              ShowCaption = False
              Control = ElPopupButton5
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'New Group'
            ShowCaption = False
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item5: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = griddsnv
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = gridCCThieu
            end
          end
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Caption = 'New Group'
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
        Caption = 'Ki'#7875'm tra ch'#7845'm c'#244'ng t'#7893'ng gi'#7901
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryCCthieu: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'THANG'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'NAM'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EMP_NO'
        ParamType = ptInput
        Value = Null
      end>
    DatabaseName = 'D:\1 PROJECTS\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CC_THIEU'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    EditSQL.Strings = (
      'UPDATE HR_CC_THIEU SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   WORK_DATE = :WORK_DATE, /*PK*/'
      '   CHAM_CONG = :CHAM_CONG'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CC_THIEU('
      '   EMPLOYEE_NO, /*PK*/'
      '   WORK_DATE, /*PK*/'
      '   CHAM_CONG)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :WORK_DATE,'
      '   :CHAM_CONG)')
    KeyLinks.Strings = (
      'hr_cc_thieu.EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryCCthieuBeforeOpen
    AfterPost = qryCCthieuAfterPost
    DataSource = dsDSNv
    SQL.Strings = (
      'SELECT hr_cc_thieu.EMPLOYEE_NO'
      '     , hr_cc_thieu.WORK_DATE'
      '     , hr_cc_thieu.CHAM_CONG'
      '     , extract(weekday from hr_cc_thieu.WORK_DATE) thu '
      'FROM HR_CC_THIEU'
      'where extract(month from hr_cc_thieu.WORK_DATE) = :THANG and'
      '      extract(year from hr_cc_thieu.WORK_DATE) = :NAM and'
      '      hr_cc_thieu.EMPLOYEE_NO = :EMP_NO'
      'order by hr_cc_thieu.WORK_DATE')
    FieldOptions = []
    Left = 520
    Top = 216
    object qryCCthieuEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryCCthieuWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryCCthieuCHAM_CONG: TSmallintField
      FieldName = 'CHAM_CONG'
    end
    object qryCCthieuTHU: TSmallintField
      FieldName = 'THU'
      ReadOnly = True
      Required = True
    end
  end
  object dsCCthieu: TDataSource
    DataSet = qryCCthieu
    Left = 520
    Top = 248
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 264
    Top = 200
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 9
      DataSource = dsCCthieu
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 15
      DataSource = dsCCthieu
    end
    object acPri: TAction
      Caption = 'acPri'
      ImageIndex = 0
      OnExecute = acPriExecute
    end
    object acXem: TAction
      Caption = 'acXem'
      ImageIndex = 10
      OnExecute = acXemExecute
    end
    object acNext: TAction
      Caption = 'acNext'
      ImageIndex = 3
      OnExecute = acNextExecute
    end
  end
  object qryExecute: TIBOQuery
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
        DataType = ftSmallint
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\1 PROJECTS\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = frmWorkTimeManager.dsOrgMap
    SQL.Strings = (
      
        'execute procedure hr_cc_kiemtra_thieu(:USER_NAME,:DEPT_NO,:VIEW_' +
        'ALL)')
    FieldOptions = []
    Left = 320
    Top = 256
  end
  object dsDSNv: TDataSource
    DataSet = qryDsNV
    Left = 240
    Top = 272
  end
  object qryDsNV: TIBOQuery
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
      end
      item
        DataType = ftUnknown
        Name = 'THANG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAM'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\1 PROJECTS\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryDsNVBeforeOpen
    DataSource = frmWorkTimeManager.dsOrgMap
    SQL.Strings = (
      'SELECT emp_no'
      '     , hr_get_emp_list.full_name'
      'from hr_get_emp_list(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      'where hr_get_emp_list.emp_no in'
      '('
      '  select hr_cc_thieu.employee_no'
      '  from hr_cc_thieu'
      '  where extract(month from hr_cc_thieu.WORK_DATE) = :THANG and'
      '      extract(year from hr_cc_thieu.WORK_DATE) = :NAM'
      ')')
    FieldOptions = []
    Left = 240
    Top = 240
    object qryDsNVEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Size = 30
    end
    object qryDsNVFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
  end
end
