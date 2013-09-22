inherited frmToolForWorkDay: TfrmToolForWorkDay
  Left = 209
  Top = 189
  Width = 823
  Height = 520
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 195
    Top = 0
    Height = 467
  end
  inherited sbMain: TElStatusBar
    Top = 467
    Width = 815
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 195
    Height = 467
    Align = alLeft
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object tlOrgMap: TdxDBTreeList
      Left = 10
      Top = 10
      Width = 235
      Height = 383
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DEPT_NO'
      ParentField = 'P_DEPT_NO'
      Align = alLeft
      TabOrder = 0
      DataSource = dsOrgMap
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      OnChangeNode = tlOrgMapChangeNode
      object tlOrgMapDEPT_NAME: TdxDBTreeListColumn
        Caption = 'T'#234'n '#273#417'n v'#7883' - ph'#242'ng ban'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss - ph+API-ng ban'
      end
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Control = tlOrgMap
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutControl2: TdxLayoutControl [3]
    Left = 198
    Top = 0
    Width = 617
    Height = 467
    Align = alClient
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    object dxInMonth: TdxImageEdit
      Left = 57
      Top = 29
      Width = 80
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      StyleController = dmMain.StyleController
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
    end
    object dxInYear: TdxSpinEdit
      Left = 162
      Top = 29
      Width = 60
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton1: TElPopupButton
      Left = 222
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng k'#7871' tr'#432#7899'c'
      ImageIndex = 0
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acThangKetruoc
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 307
      Top = 28
      Width = 25
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng th'#225'ng ti'#7871'p theo'
      ImageIndex = 3
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      TabOrder = 4
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acThangtiepTheo
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPanel1: TElPanel
      Left = 10
      Top = 71
      Width = 480
      Height = 371
      Align = alNone
      BevelOuter = bvNone
      TransparentXPThemes = False
      UseXPThemes = False
      MouseCapture = False
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object Splitter2: TSplitter
        Left = 169
        Top = 0
        Height = 371
      end
      object gridDayList: TdxDBGrid
        Left = 0
        Top = 0
        Width = 169
        Height = 371
        Bands = <
          item
            Caption = 'Th'#225'ng '
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'WORK_DATE'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsDayList
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        OnChangeNode = gridDayListChangeNode
        object gridDayListWEEY_DAY_NAME: TdxDBGridColumn
          Alignment = taLeftJustify
          Caption = 'Th'#7913
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridDayListWEEY_DAY_NAMECustomDrawCell
          FieldName = 'WEEY_DAY_NAME'
          Caption_UTF7 = 'Th+Huk'
        end
        object gridDayListWORK_DATE: TdxDBGridDateColumn
          Alignment = taCenter
          Caption = 'Ng'#224'y'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridDayListWORK_DATECustomDrawCell
          FieldName = 'WORK_DATE'
          Caption_UTF7 = 'Ng+AOA-y'
        end
        object gridDayListWEEK_DAY: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WEEK_DAY'
        end
      end
      object gridEmpWorkDay: TdxDBGrid
        Left = 172
        Top = 0
        Width = 308
        Height = 371
        Bands = <
          item
            Caption = 'B'#7843'ng ch'#7845'm c'#244'ng ng'#224'y ( d'#7841'ng thu g'#7885'n )'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'EMPLOYEE_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = gridEmpWorkDayClick
        OnMouseUp = gridEmpWorkDayMouseUp
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsEmpWorkDay
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object gridEmpWorkDayEMPLOYEE_NO: TdxDBGridColumn
          Caption = 'M'#227' NV'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_NO'
          Caption_UTF7 = 'M+AOM NV'
        end
        object gridEmpWorkDayFULL_NAME: TdxDBGridColumn
          Caption = 'H'#7885' v'#224' t'#234'n'
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FULL_NAME'
          Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
        end
        object gridEmpWorkDayTITLE_NAME: TdxDBGridColumn
          Caption = 'Ch'#7913'c v'#7909
          Color = clInfoBk
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 179
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TITLE_NAME'
          Caption_UTF7 = 'Ch+Huk-c v+HuU'
        end
        object gridEmpWorkDayWDT_NAME: TdxDBGridPopupColumn
          Caption = 'Lo'#7841'i ng'#224'y c'#244'ng'
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 91
          BandIndex = 0
          RowIndex = 0
          OnCustomDrawCell = gridEmpWorkDayWDT_NAMECustomDrawCell
          FieldName = 'WDT_NAME'
          OnCloseUp = gridEmpWorkDayWDT_NAMECloseUp
          OnInitPopup = gridEmpWorkDayWDT_NAMEInitPopup
          Caption_UTF7 = 'Lo+HqE-i ng+AOA-y c+APQ-ng'
        end
        object gridEmpWorkDayWDT_COLOR: TdxDBGridMaskColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WDT_COLOR'
        end
        object gridEmpWorkDayWDT_NO: TdxDBGridColumn
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WDT_NO'
        end
      end
    end
    object dxppSelectWDT: TdxPopupEdit
      Left = 408
      Top = 29
      Width = 68
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnChange = dxppSelectWDTChange
      OnCloseUp = dxppSelectWDTCloseUp
      OnInitPopup = dxppSelectWDTInitPopup
    end
    object ElPopupButton2: TElPopupButton
      Left = 510
      Top = 28
      Width = 85
      Height = 25
      Cursor = crDefault
      Hint = 
        'C'#7853'p nh'#7853't nhanh d'#7919' li'#7879'u cho nhi'#7873'u nh'#226'n vi'#234'n tr'#234'n nhi'#7873'u ng'#224'y ch'#7845'm ' +
        'c'#244'ng'
      ImageIndex = 29
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Nh'#7853'p nhanh'
      TabOrder = 6
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acTaodulieu
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 247
      Top = 28
      Width = 60
      Height = 25
      Cursor = crDefault
      Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
      ImageIndex = 10
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem'
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      Action = acLoadData
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 527
      Top = 432
      Width = 80
      Height = 25
      Cursor = crDefault
      ImageIndex = 15
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 10
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 361
      Top = 432
      Width = 80
      Height = 25
      Cursor = crDefault
      ImageIndex = 44
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 8
      Color = clBtnFace
      ParentColor = False
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 441
      Top = 432
      Width = 80
      Height = 25
      Cursor = crDefault
      ImageIndex = 47
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 9
      Color = clBtnFace
      ParentColor = False
      Action = DataSetCancel1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 10
      Top = 432
      Width = 143
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
      Caption = 'Xo'#225' lo'#7841'i ng'#224'y c'#244'ng'
      TabOrder = 11
      Action = acXoaLNC
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl2Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n th'#7901'i gian'
        LayoutDirection = ldHorizontal
        UseIndent = False
        object dxlcMonth: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Th'#225'ng'
          Control = dxInMonth
          ControlOptions.ShowBorder = False
        end
        object dxlcYear: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'n'#259'm'
          Control = dxInYear
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avCenter
          Caption = 'Ch'#7885'n lo'#7841'i ng'#224'y'
          Control = dxppSelectWDT
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl2Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPanel1'
        ShowCaption = False
        Control = ElPanel1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl2Group4: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl2Group3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          object dxLayoutControl2Item8: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Control = ElPopupButton6
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl2Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Control = ElPopupButton7
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item10: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton8
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
        Caption = 'C'#244'ng c'#7909' ch'#7845'm c'#244'ng nhanh - Ch'#7845'm c'#244'ng ng'#224'y'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object memDayList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 239
    Top = 143
    object memDayListWEEK_DAY: TIntegerField
      FieldName = 'WEEK_DAY'
    end
    object memDayListWEEY_DAY_NAME: TWideStringField
      FieldName = 'WEEY_DAY_NAME'
      Size = 30
    end
    object memDayListWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
  end
  object dsDayList: TDataSource
    DataSet = memDayList
    Left = 239
    Top = 175
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 463
    Top = 199
    object acThangKetruoc: TAction
      Caption = 'acThangKetruoc'
      ImageIndex = 0
      OnExecute = acThangKetruocExecute
    end
    object acThangtiepTheo: TAction
      Caption = 'acThangtiepTheo'
      ImageIndex = 3
      OnExecute = acThangtiepTheoExecute
    end
    object acTaodulieu: TAction
      Caption = 'acTaodulieu'
      ImageIndex = 29
      OnExecute = acTaodulieuExecute
      OnUpdate = acTaodulieuUpdate
    end
    object acTaoDSNgay: TAction
      Caption = 'acTaoDSNgay'
      OnExecute = acTaoDSNgayExecute
    end
    object acXemdulieu: TAction
      Caption = 'acXemdulieu'
      OnExecute = acXemdulieuExecute
    end
    object acLoadData: TAction
      Caption = 'acLoadData'
      ImageIndex = 10
      OnExecute = acLoadDataExecute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      DataSource = dsEmpWorkDay
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 44
      DataSource = dsEmpWorkDay
    end
    object acTaochamcong: TAction
      Caption = 'acTaochamcong'
      ImageIndex = 58
      OnUpdate = acTaochamcongUpdate
    end
    object acXoaLNC: TAction
      Caption = 'acXoaLNC'
      ImageIndex = 15
      OnExecute = acXoaLNCExecute
    end
  end
  object qryEmpWorkDay: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    EditSQL.Strings = (
      'UPDATE HR_WORKING_DAY SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   WORK_DATE = :WORK_DATE, /*PK*/'
      '   WDT_NO = :WDT_NO'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryEmpWorkDayBeforePost
    DataSource = dsOrgMap
    SQL.Strings = (
      'SELECT'
      '    HR_WORKING_DAY.EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    WORK_DATE,'
      '    HR_WORKING_DAY.WDT_NO,'
      '    WDT_NAME,'
      '    WDT_COLOR'
      'FROM hr_get_emp_list(:USER_NAME,:DEPT_NO,0)'
      'JOIN HR_WORKING_DAY '
      '   on hr_get_emp_list.EMP_NO=HR_WORKING_DAY.EMPLOYEE_NO'
      'LEFT JOIN HR_WORK_DATE_TYPE '
      '  on HR_WORKING_DAY.WDT_NO=HR_WORK_DATE_TYPE.WDT_NO'
      'where IS_MAIN_POSITION=1 and IS_DISMISSED=0 and'
      '    WORK_DATE=:WORK_DATE')
    FieldOptions = []
    Left = 304
    Top = 144
    object qryEmpWorkDayEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpWorkDayFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 10449
    end
    object qryEmpWorkDayTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 3402
    end
    object qryEmpWorkDayWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryEmpWorkDayWDT_NO: TWideStringField
      FieldName = 'WDT_NO'
      Size = 30
    end
    object qryEmpWorkDayWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      Size = 126
    end
    object qryEmpWorkDayWDT_COLOR: TIntegerField
      FieldName = 'WDT_COLOR'
    end
  end
  object dsEmpWorkDay: TDataSource
    DataSet = qryEmpWorkDay
    Left = 304
    Top = 176
  end
  object qryCheckEmpDeptNo: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsOrgMap
    SQL.Strings = (
      'SELECT EMP_NO EMPLOYEE_NO'
      'FROM hr_get_emp_list(:USER_NAME,:DEPT_NO,0)'
      'where IS_MAIN_POSITION=1')
    FieldOptions = []
    Left = 304
    Top = 208
  end
  object qryUpdateEmpWorkDay: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'WDT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'UPDATE HR_WORKING_DAY SET WDT_NO = :WDT_NO'
      'WHERE EMPLOYEE_NO = :EMPLOYEE_NO AND WORK_DATE = :WORK_DATE')
    FieldOptions = []
    Left = 352
    Top = 144
  end
  object qryInitWorkDay: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'EXECUTE PROCEDURE HR_SP_INIT_WORK_DAY ('
      '    :USER_NAME,'
      '    :DEPT_NO,'
      '    :IN_MONTH,'
      '    :IN_YEAR)')
    FieldOptions = []
    Left = 384
    Top = 144
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
    Left = 616
    Top = 192
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Caption = 'Cho'#803'n t'#226#769't ca'#777
      Category = 0
      Hint = 'Cho'#803'n t'#226#769't ca'#777
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Kh'#244'ng cho'#803'n t'#226#769't ca'#777
      Category = 0
      Hint = 'Kh'#244'ng cho'#803'n t'#226#769't ca'#777
      Visible = ivAlways
      OnClick = dxBarButton2Click
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
    Left = 576
    Top = 192
  end
  object qryOrgMap: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'DEPT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      '    DEPT_NO ,'
      '    DEPT_NAME ,'
      '    P_DEPT_NO '
      'FROM HR_MASK_ORG_MAP(:USER_NAME)'
      '    ')
    FieldOptions = []
    Left = 24
    Top = 56
    object qryOrgMapDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryOrgMapDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryOrgMapP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
  end
  object dsOrgMap: TDataSource
    DataSet = qryOrgMap
    Left = 24
    Top = 88
  end
end
