inherited frmWorkTimeCheck: TfrmWorkTimeCheck
  Left = 192
  Top = 181
  Width = 833
  Height = 575
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 522
    Width = 825
    UseXPThemes = True
    Visible = True
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 825
    Height = 522
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object deFromDate: TdxDateEdit
      Left = 101
      Top = 28
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object deToDate: TdxDateEdit
      Left = 101
      Top = 51
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object pbCheck: TElPopupButton
      Left = 700
      Top = 28
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 43
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Ki'#7875'm tra'
      TabOrder = 8
      Color = 15466238
      ParentColor = False
      Action = acCheck
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object gridErrorList: TdxDBGrid
      Left = 3
      Top = 111
      Width = 870
      Height = 293
      Bands = <
        item
          Caption = 'Th'#244'ng tin chi ti'#7871't ch'#7845'm c'#244'ng'
          DisableCustomizing = True
          DisableDragging = True
          Fixed = bfLeft
          Width = 399
        end
        item
          Caption = 'Th'#244'ng tin ch'#7845'm c'#244'ng '#273#432#7907'c c'#7853'p nh'#7853't'
          Width = 332
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KEY_FIELD'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 11
      DataSource = dsErrorList
      Filter.Criteria = {00000000}
      IniFileName = '.\GridColumnConfig.ini'
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridErrorListEMPLOYEE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        Sorted = csUp
        Visible = False
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        GroupIndex = 0
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridErrorListFULL_NAME: TdxDBGridMaskColumn
        Caption = 'H'#7885' t'#234'n'
        Color = clInfoBk
        DisableEditor = True
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 t+AOo-n'
      end
      object gridErrorListWTES_NAME: TdxDBGridMaskColumn
        Caption = 'Loa'#803'i d'#432#771' li'#234#803'u'
        Sorted = csUp
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WTES_NAME'
        GroupIndex = 1
        Caption_UTF7 = 'Loa+AyM-i d+AbADAw li+AOoDIw-u'
      end
      object gridErrorListWORK_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#7843'y l'#224'm vi'#7879'c'
        DisableEditor = True
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_DATE'
        Caption_UTF7 = 'Ng+HqM-y l+AOA-m vi+Hsc-c'
      end
      object gridErrorListSTART_TIME: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' v'#224'o'
        Color = clSkyBlue
        DisableEditor = True
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'START_TIME'
        Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
      end
      object gridErrorListSTART_TIME_CHANGE: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' v'#224'o'
        Width = 47
        BandIndex = 1
        RowIndex = 0
        FieldName = 'START_TIME_CHANGE'
        Caption_UTF7 = 'Gi+Ht0 v+AOA-o'
      end
      object gridErrorListEND_TIME: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' ra'
        Sorted = csUp
        Width = 43
        BandIndex = 1
        RowIndex = 0
        FieldName = 'END_TIME'
        Caption_UTF7 = 'Gi+Ht0 ra'
      end
      object gridErrorListEND_DATE: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = 'Ng'#224'y k'#7871't th'#250'c'
        MinWidth = 16
        Width = 58
        BandIndex = 1
        RowIndex = 0
        FieldName = 'END_DATE'
        Descriptions.WideStrings = (
          'C'#249'ng ng'#224'y'
          'Ng'#224'y h'#244'm sau')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
      end
      object gridErrorListWHT_NAME: TdxDBGridPopupColumn
        Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
        Width = 74
        BandIndex = 1
        RowIndex = 0
        OnCustomDrawCell = gridErrorListWHT_NAMECustomDrawCell
        FieldName = 'WHT_NAME'
        OnCloseUp = gridErrorListWHT_NAMECloseUp
        OnInitPopup = gridErrorListWHT_NAMEInitPopup
        Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng'
      end
      object gridErrorListMAIN_END_TIME: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' ra'
        Color = clSkyBlue
        DisableEditor = True
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAIN_END_TIME'
        Caption_UTF7 = 'Gi+Ht0 ra'
      end
      object gridErrorListMAIN_END_DATE: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = 'Ng'#224'y k'#7871't th'#250'c'
        DisableEditor = True
        MinWidth = 16
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAIN_END_DATE'
        Descriptions.WideStrings = (
          'C'#249'ng ng'#224'y'
          'Ng'#224'y h'#244'm sau')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
      end
      object gridErrorListMAIN_WHT_NAME: TdxDBGridPopupColumn
        Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
        Color = clWhite
        DisableEditor = True
        Width = 83
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = gridErrorListMAIN_WHT_NAMECustomDrawCell
        FieldName = 'MAIN_WHT_NAME'
        Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng'
      end
      object gridErrorListIF_FIX: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = 'Hi'#7879'n tr'#7841'ng'
        Color = clInfoBk
        DisableEditor = True
        MinWidth = 16
        Width = 43
        BandIndex = 1
        RowIndex = 0
        FieldName = 'IF_FIX'
        Descriptions.WideStrings = (
          'Ch'#432'a c'#7853'p nh'#7853't'
          #272#227' c'#7853'p nh'#7853't')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'Hi+Hsc-n tr+HqE-ng'
      end
      object gridErrorListMAIN_TOTAL_TIME: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng th'#7901'i gian'
        DisableEditor = True
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAIN_TOTAL_TIME'
        Caption_UTF7 = 'T+HtU-ng th+Ht0-i gian'
      end
      object gridErrorListTOTAL_TIME: TdxDBGridMaskColumn
        Caption = 'T'#7893'ng th'#7901'i gian'
        Color = clInfoBk
        DisableEditor = True
        Width = 66
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TOTAL_TIME'
        Caption_UTF7 = 'T+HtU-ng th+Ht0-i gian'
      end
      object gridErrorListMAIN_WHT_COLOR: TdxDBGridMaskColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MAIN_WHT_COLOR'
      end
      object gridErrorListWHT_COLOR: TdxDBGridMaskColumn
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WHT_COLOR'
      end
      object gridErrorListWTES_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' lo'#7841'i d'#7919' li'#7879'u'
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WTES_NO'
        Caption_UTF7 = 'M+AOM lo+HqE-i d+Hu8 li+Hsc-u'
      end
      object gridErrorListKEY_FIELD: TdxDBGridMaskColumn
        Caption = 'Kho'#225' t'#7841'm'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KEY_FIELD'
        Caption_UTF7 = 'Kho+AOE t+HqE-m'
      end
    end
    object ceAutoUpdate: TdxCheckEdit
      Left = 101
      Top = 74
      Width = 80
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object peMaPhongBan: TdxPopupEdit
      Left = 500
      Top = 28
      Width = 200
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 6
      StyleController = dmMain.StyleController
      OnCloseUp = peMaPhongBanCloseUp
      OnInitPopup = peMaPhongBanInitPopup
    end
    inline frameToolbar1: TframeToolbar
      Left = 2
      Top = 474
      Width = 792
      Height = 46
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 12
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnDelete: TElPopupButton
          Top = 10
        end
        inherited btnInsert: TElPopupButton
          Top = 10
        end
        inherited btnSave: TElPopupButton
          Top = 10
        end
        inherited btnCancel: TElPopupButton
          Top = 10
        end
        inherited btnClose: TElPopupButton
          Left = 751
          Top = 10
        end
        inherited btnHelp: TElPopupButton
          Left = 621
          Top = 10
        end
        inherited btnChoose: TElPopupButton
          Left = 691
          Top = 10
        end
        inherited btnCopy: TElPopupButton
          Top = 10
        end
        inherited btnFirst: TElPopupButton
          Top = 10
        end
        inherited btnLast: TElPopupButton
          Top = 10
        end
        inherited btnPrevious: TElPopupButton
          Top = 10
        end
        inherited btnNext: TElPopupButton
          Top = 10
        end
        inherited btnDesign: TElPopupButton
          Left = 557
          Top = 10
          Width = 2
        end
        inherited btnPreview: TElPopupButton
          Left = 555
          Top = 10
          Width = 2
        end
        inherited btnPrint: TElPopupButton
          Left = 553
          Top = 10
          Width = 2
        end
        inherited btnInsertEx: TElPopupButton
          Top = 10
        end
        inherited btnSendMail: TElPopupButton
          Left = 528
          Top = 10
        end
        inherited btnGenerate: TElPopupButton
          Left = 614
          Top = 10
          Width = 2
        end
        inherited btnRelation: TElPopupButton
          Left = 589
          Top = 10
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 564
          Top = 10
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxlctrlInsert: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlInsertCopy: TdxLayoutItem
              Visible = False
            end
          end
        end
      end
    end
    object pbCapNhat: TElPopupButton
      Left = 700
      Top = 53
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 37
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'C'#226#803'p nh'#226#803't'
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      Action = acCapNhat
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object peLoaiGioCong: TdxPopupEdit
      Left = 292
      Top = 28
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      OnChange = peLoaiGioCongChange
      OnCloseUp = peLoaiGioCongCloseUp
      OnInitPopup = peLoaiGioCongInitPopup
    end
    object imgeLoaiKiemTra: TdxImageEdit
      Left = 500
      Top = 51
      Width = 164
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnChange = imgeLoaiKiemTraChange
      PopupBorder = pbSingle
      Descriptions.WideStrings = (
        'L'#7883'ch l'#224'm vi'#7879'c chu'#7849'n'
        'Gi'#7901' l'#224'm vi'#7879'c chu'#7849'n'
        'Ph'#225't sinh theo chu'#7849'n')
      ImageIndexes.WideStrings = (
        '-1'
        '-1'
        '-1')
      Values.WideStrings = (
        '0'
        '1'
        '2')
    end
    object pbQuayLui: TElPopupButton
      Left = 700
      Top = 78
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 38
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Quay lui'
      TabOrder = 10
      Color = 15466238
      ParentColor = False
      Action = acInitWorkingTimeCheck
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object imgEditTuyChon: TdxImageEdit
      Left = 292
      Top = 51
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      OnChange = imgEditTuyChonChange
      PopupBorder = pbSingle
      Descriptions.WideStrings = (
        'Hi'#7875'n th'#7883' t'#7845't c'#7843
        'D'#7919' li'#7879'u chu'#7849'n'
        'D'#7919' li'#7879'u ph'#225't sinh')
      ImageIndexes.WideStrings = (
        '-1'
        '-1'
        '-1')
      Values.WideStrings = (
        '-1'
        '0'
        '1')
    end
    object peFilterNgayCong: TdxPopupEdit
      Left = 292
      Top = 74
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnChange = peFilterNgayCongChange
      OnCloseUp = peFilterNgayCongCloseUp
      OnInitPopup = peFilterNgayCongInitPopup
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item5: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Th'#244'ng tin tu'#7923' ch'#7885'n'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'T'#7915' ng'#224'y'
            Control = deFromDate
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = #272#7871'n ng'#224'y'
            Control = deToDate
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'T'#7921' '#273#7897'ng c'#7853'p nh'#7853't'
            Control = ceAutoUpdate
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item9: TdxLayoutItem
            Caption = 'Loa'#803'i gi'#417#768' c'#244'ng pha'#769't sinh'
            Control = peLoaiGioCong
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            Caption = 'Tu'#7923' ch'#7885'n hi'#7875'n th'#7883
            Control = imgEditTuyChon
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            Caption = 'Ch'#7885'n l'#7885'c d'#7919' li'#7879'u'
            Control = peFilterNgayCong
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'T'#234'n ph'#242'ng ban'
            Control = peMaPhongBan
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = 'Ch'#7885'n lo'#7841'i ki'#7875'm tra'
            Control = imgeLoaiKiemTra
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'New Item'
            ShowCaption = False
            Control = pbCheck
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'New Item'
            ShowCaption = False
            Control = pbCapNhat
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            ShowCaption = False
            Control = pbQuayLui
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = gridErrorList
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
        Caption = 'Ki'#7875'm tra d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 176
    Top = 176
    object acCheck: TAction
      Caption = 'acCheck'
      ImageIndex = 43
      OnExecute = acCheckExecute
    end
    object acCapNhat: TAction
      Caption = 'acC'
      ImageIndex = 37
      OnExecute = acCapNhatExecute
    end
    object acInitWorkingTimeCheck: TAction
      Caption = 'acInitWorkingTimeCheck'
      ImageIndex = 38
      OnExecute = acInitWorkingTimeCheckExecute
    end
  end
  object dsErrorList: TDataSource
    DataSet = qryErrorList
    Left = 64
    Top = 176
  end
  object qryErrorList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end>
    ColumnAttributes.Strings = (
      'KEY_FIELD=NOTREQUIRED')
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORKING_TIME_ERROR'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   START_TIME_CHANGE = :OLD_START_TIME_CHANGE AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    EditSQL.Strings = (
      'UPDATE HR_WORKING_TIME_ERROR SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   START_TIME_CHANGE = :START_TIME_CHANGE, /*PK*/'
      '   WORK_DATE = :WORK_DATE, /*PK*/'
      '   START_TIME = :START_TIME,'
      '   END_TIME = :END_TIME,'
      '   END_DATE = :END_DATE,'
      '   WHT_NO = :WHT_NO,'
      '   IF_FIX = :IF_FIX,'
      '   TOTAL_TIME = :TOTAL_TIME,'
      '   WTES_NO = :WTES_NO'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   START_TIME_CHANGE = :OLD_START_TIME_CHANGE AND'
      '   WORK_DATE = :OLD_WORK_DATE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORKING_TIME_ERROR('
      '   EMPLOYEE_NO, /*PK*/'
      '   START_TIME_CHANGE, /*PK*/'
      '   WORK_DATE, /*PK*/'
      '   START_TIME,'
      '   END_TIME,'
      '   END_DATE,'
      '   WHT_NO,'
      '   IF_FIX,'
      '   TOTAL_TIME,'
      '   WTES_NO)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :START_TIME_CHANGE,'
      '   :WORK_DATE,'
      '   :START_TIME,'
      '   :END_TIME,'
      '   :END_DATE,'
      '   :WHT_NO,'
      '   :IF_FIX,'
      '   :TOTAL_TIME,'
      '   :WTES_NO)')
    KeyLinks.Strings = (
      'key_field')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryErrorListBeforeDelete
    AfterDelete = qryErrorListAfterDelete
    AfterPost = qryErrorListAfterPost
    KeyRelation = 'key_field'
    SQL.Strings = (
      'select'
      
        '       hr_working_time_error.employee_no|| hr_working_time_error' +
        '.work_date||'
      '       hr_working_time_error.start_time_change key_field,'
      '       hr_working_time_error.employee_no,'
      '       hr_working_time_error.work_date,'
      '       hr_working_time_error.start_time,'
      '       hr_working_time_error.start_time_change,'
      '       hr_working_time_error.end_time,'
      '       hr_working_time_error.end_date,'
      '       hr_working_time_error.wht_no,'
      '       hr_working_time_error.if_fix,'
      '       hr_working_time_error.total_time,'
      '       hr_working_time_error.wtes_no,'
      '       hr_working_time_error_style.wtes_name,'
      '       b.wht_name as MAIN_WHT_NAME,'
      '       b.wht_color as MAIN_WHT_COLOR,'
      '       a.wht_name as WHT_NAME,'
      '       a.wht_color as WHT_COLOR,'
      
        '       hr_employee.last_name||'#39' '#39'||hr_employee.middle_name||'#39' '#39'|' +
        '|hr_employee.first_name FULL_NAME,'
      '       hr_working_time.end_time as MAIN_END_TIME,'
      '       hr_working_time.end_date as MAIN_END_DATE,'
      '       hr_working_time.wht_no as MAIN_WHT_NO,'
      '       hr_working_time.total_time as MAIN_TOTAL_TIME'
      'from   hr_working_time_error'
      
        '        left join hr_assignment on hr_working_time_error.employe' +
        'e_no = hr_assignment.employee_no'
      
        '        left join hr_position on hr_assignment.position_no=hr_po' +
        'sition.position_no'
      
        '        left join hr_employee on hr_assignment.employee_no = hr_' +
        'employee.employee_no'
      
        '        left join hr_working_time_error_style on hr_working_time' +
        '_error_style.wtes_no = hr_working_time_error.wtes_no'
      
        '        left join hr_work_hour_type a on hr_working_time_error.w' +
        'ht_no = a.wht_no'
      
        '        left join hr_working_time on (hr_working_time_error.empl' +
        'oyee_no = hr_working_time.employee_no'
      
        '                                      and hr_working_time_error.' +
        'work_date = hr_working_time.work_date'
      
        '                                      and hr_working_time_error.' +
        'start_time = hr_working_time.start_time)'
      
        '        left join hr_work_hour_type b on hr_working_time.wht_no ' +
        '= b.wht_no'
      'where hr_position.dept_no=:DEPT_NO and'
      
        '      hr_working_time_error.work_date between :FROM_DATE and :TO' +
        '_DATE'
      
        '      and hr_assignment.is_main_position = 1 and (hr_assignment.' +
        'dismiss_date is null)'
      ''
      ''
      '  ')
    FieldOptions = []
    Left = 32
    Top = 176
    object qryErrorListKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      ReadOnly = True
      Size = 53
    end
    object qryErrorListEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryErrorListWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryErrorListSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qryErrorListSTART_TIME_CHANGE: TTimeField
      FieldName = 'START_TIME_CHANGE'
      Required = True
    end
    object qryErrorListEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryErrorListEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qryErrorListWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Size = 30
    end
    object qryErrorListIF_FIX: TSmallintField
      FieldName = 'IF_FIX'
    end
    object qryErrorListTOTAL_TIME: TIBOFloatField
      FieldName = 'TOTAL_TIME'
    end
    object qryErrorListWTES_NO: TIntegerField
      FieldName = 'WTES_NO'
      Required = True
    end
    object qryErrorListWTES_NAME: TWideStringField
      FieldName = 'WTES_NAME'
      Size = 126
    end
    object qryErrorListMAIN_WHT_NAME: TWideStringField
      FieldName = 'MAIN_WHT_NAME'
      Size = 126
    end
    object qryErrorListMAIN_WHT_COLOR: TIntegerField
      FieldName = 'MAIN_WHT_COLOR'
    end
    object qryErrorListWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Size = 126
    end
    object qryErrorListWHT_COLOR: TIntegerField
      FieldName = 'WHT_COLOR'
    end
    object qryErrorListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 96
    end
    object qryErrorListMAIN_END_TIME: TTimeField
      FieldName = 'MAIN_END_TIME'
    end
    object qryErrorListMAIN_END_DATE: TIntegerField
      FieldName = 'MAIN_END_DATE'
    end
    object qryErrorListMAIN_WHT_NO: TWideStringField
      FieldName = 'MAIN_WHT_NO'
      Size = 30
    end
    object qryErrorListMAIN_TOTAL_TIME: TIBOFloatField
      FieldName = 'MAIN_TOTAL_TIME'
    end
  end
  object qryExecuteStore: TIBOQuery
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
        Name = 'WHT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AUTO_FIX'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    RecordCountAccurate = True
    AfterOpen = qryExecuteStoreAfterOpen
    SQL.Strings = (
      
        'execute procedure hr_sp_working_time_check(:USER_NAME,:DEPT_NO,:' +
        'WHT_NO,:FROM_DATE,:TO_DATE,0,:AUTO_FIX)')
    FieldOptions = []
    Left = 168
    Top = 152
  end
  object qryUpdateDatabase: TIBOQuery
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
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    RecordCountAccurate = True
    AfterOpen = qryUpdateDatabaseAfterOpen
    SQL.Strings = (
      
        'execute PROCEDURE HR_SP_UPDATE_WORKING_TIME (:USER_NAME,:DEPT_NO' +
        ',:FROM_DATE,:TO_DATE,:VIEW_ALL);')
    FieldOptions = []
    Left = 208
    Top = 144
  end
  object qrySynWorkingTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'employee_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'work_date'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'start_time'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WTES_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\November 2006\SSP-HRM VIETRANSTIMEX\Dat' +
      'abases\SSP_HRM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    RecordCountAccurate = True
    AfterOpen = qrySynWorkingTimeAfterOpen
    SQL.Strings = (
      'delete from hr_working_time'
      'where'
      '   hr_working_time.employee_no = :employee_no and'
      '   hr_working_time.work_date = :work_date and'
      '   hr_working_time.start_time = :start_time and'
      '   :WTES_NO = 0;')
    FieldOptions = []
    Left = 256
    Top = 144
  end
  object tranSynWorkingTime: TIBOTransaction
    IB_Connection = dmMain.connMain
    Isolation = tiConsistency
    Left = 216
    Top = 192
  end
end
