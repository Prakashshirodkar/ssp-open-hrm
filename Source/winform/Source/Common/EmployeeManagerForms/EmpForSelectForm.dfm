inherited frmEmpForSelect: TfrmEmpForSelect
  Left = 297
  Top = 202
  Width = 730
  Height = 477
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 424
    Width = 722
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 722
    Height = 424
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object ElPopupButton1: TElPopupButton
      Left = 556
      Top = 389
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
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      Action = acChon
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 637
      Top = 389
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
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridEmpSelect: TdxDBGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RecID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      OnMouseUp = gridEmpSelectMouseUp
      DataSource = dsList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridEmpSelectRecId: TdxDBGridColumn
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RecId'
      end
      object gridEmpSelectEMPLOYEE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 87
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
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object gridEmpSelectGENDER: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = 'Gi'#7899'i t'#237'nh'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GENDER'
        Descriptions.WideStrings = (
          'N'#7919
          'Nam')
        Images = EmpInfoDM.imglGender
        ImageIndexes.WideStrings = (
          '0'
          '1')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
      end
      object gridEmpSelectBIRTH_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y sinh'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BIRTH_DATE'
        Caption_UTF7 = 'Ng+AOA-y sinh'
      end
      object gridEmpSelectEDU_LEVEL_NAME: TdxDBGridMaskColumn
        Caption = 'Tr'#236'nh '#273#7897' h'#7885'c v'#7845'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDU_LEVEL_NAME'
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q h+Hs0-c v+HqU-n'
      end
      object gridEmpSelectCAREER_NAME: TdxDBGridMaskColumn
        Caption = 'Ngh'#7873' nghi'#7879'p'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAREER_NAME'
        Caption_UTF7 = 'Ngh+HsE nghi+Hsc-p'
      end
      object gridEmpSelectDEPT_NAME: TdxDBGridColumn
        Caption = #272#417'n v'#7883
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 186
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object gridEmpSelectTITLE_NAME: TdxDBGridColumn
        Caption = 'Ch'#7913'c v'#7909
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object gridEmpSelectSELECTED: TdxDBGridCheckColumn
        Caption = 'Ch'#7885'n'
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SELECTED'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'Ch+Hs0-n'
      end
    end
    object dximOption: TdxImageEdit
      Left = 59
      Top = 389
      Width = 126
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dximOptionChange
      DropDownRows = 33554439
      PopupBorder = pbSingle
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item3: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridEmpSelect
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'T'#249'y ch'#7885'n'
          Control = dximOption
          ControlOptions.ShowBorder = False
        end
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
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Ch'#7885'n nh'#226'n vi'#234'n t'#7915' danh s'#225'ch'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 72
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
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT '
      '   HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      ' , FULL_NAME'
      ' , GENDER'
      ' , BIRTH_DATE'
      ' , EDU_LEVEL_NAME'
      ' , CAREER_NAME'
      ' , HR_MASK_EMPLOYEE.TITLE_NAME'
      ' , HR_MASK_EMPLOYEE.DEPT_NAME'
      ' , STATE'
      'FROM HR_MASK_EMPLOYEE(:USER_NAME)'
      'left JOIN HR_EMP_PRIVATE_INFO '
      
        '  on HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR_EMP_PRIVATE_INFO.EMPLOYEE_N' +
        'O'
      'LEFT JOIN HR_EDU_LEVEL on TRINH_DO=EDU_LEVEL_NO'
      'LEFT JOIN HR_CAREER on NGHE_NGHIEP=CAREER_NO'
      'where (IS_CADIDATE is null) or (IS_CADIDATE=0)')
    FieldOptions = []
    Left = 72
    Top = 120
    object qryListEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 96
    end
    object qryListGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryListBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryListEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Size = 126
    end
    object qryListCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 126
    end
    object qryListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryListSTATE: TWideStringField
      FieldName = 'STATE'
      Size = 15
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
    object memListGENDER: TIntegerField
      FieldName = 'GENDER'
    end
    object memListBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object memListEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Size = 127
    end
    object memListCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 127
    end
    object memListSELECTED: TIntegerField
      FieldName = 'SELECTED'
    end
    object memListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
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
    object acChonTatca: TAction
      Caption = 'acChonTatca'
      OnExecute = acChonTatcaExecute
      OnUpdate = acChonTatcaUpdate
    end
    object acKhongchontatca: TAction
      Caption = 'acKhongchontatca'
      OnExecute = acKhongchontatcaExecute
    end
    object acGetEmployees: TAction
      Caption = 'acGetEmployees'
      OnExecute = acGetEmployeesExecute
    end
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
    Left = 120
    Top = 104
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acChonTatca
      Caption = 'Ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = acKhongchontatca
      Caption = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Category = 0
      Hint = 'Kh'#244'ng ch'#7885'n t'#7845't c'#7843
      Visible = ivAlways
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end>
    UseOwnFont = False
    Left = 104
    Top = 56
  end
end
