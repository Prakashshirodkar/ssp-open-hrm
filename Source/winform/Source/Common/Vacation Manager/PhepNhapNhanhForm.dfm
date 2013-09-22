inherited frmPhepNhapNhanh: TfrmPhepNhapNhanh
  Left = 133
  Top = 107
  Width = 818
  Height = 573
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 520
    Width = 810
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 810
    Height = 520
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxDBTreeOrgList: TdxDBTreeList
      Left = 3
      Top = 3
      Width = 193
      Height = 360
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DEPT_NO'
      ParentField = 'P_DEPT_NO'
      BorderStyle = bsNone
      TabOrder = 0
      DataSource = frmTheodoiPhep.dsOrgMap
      Images = dmMain.imglDeptTree
      LookAndFeel = lfFlat
      OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxDBTreeOrgListDEPT_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#234'n '#273#417'n v'#7883' - Ph'#242'ng ban'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss - Ph+API-ng ban'
      end
    end
    object dxDBGrid1: TdxDBGrid
      Left = 212
      Top = 87
      Width = 577
      Height = 396
      Bands = <
        item
          Caption = 'Ph'#233'p theo nh'#226'n vi'#234'n'
        end>
      DefaultLayout = True
      HeaderMinRowCount = 2
      HeaderPanelRowCount = 1
      KeyField = 'EMPLOYEE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsPhepNhanVien
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
      object dxDBGrid1EMPLOYEE_NO: TdxDBGridColumn
        Caption = 'M'#227' NV'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM NV'
      end
      object dxDBGrid1FULL_NAME: TdxDBGridColumn
        Caption = 'H'#7885' t'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 142
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 t+AOo-n'
      end
      object dxDBGrid1TITLE_NAME: TdxDBGridColumn
        Caption = 'Ch'#7913'c v'#7909
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object dxDBGrid1SOPHEP_TRONGKY: TdxDBGridCalcColumn
        Caption = 'Ti'#234'u chu'#7849'n ph'#233'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHEP_TRONGKY'
        Caption_UTF7 = 'Ti+AOo-u chu+Hqk-n ph+AOk-p'
      end
      object dxDBGrid1SOPHEP_KETCHUYEN: TdxDBGridCalcColumn
        Caption = 'Ph'#233'p k'#7871't chuy'#7875'n'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHEP_KETCHUYEN'
        Caption_UTF7 = 'Ph+AOk-p k+Hr8-t chuy+HsM-n'
      end
      object dxDBGrid1SOPHEP_DANGHI: TdxDBGridCalcColumn
        Caption = #272#227' ngh'#7881
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOPHEP_DANGHI'
        Caption_UTF7 = '+ARAA4w ngh+Hsk'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 733
      Top = 493
      Width = 75
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
      Caption = #272#243'ng'
      TabOrder = 11
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxInYear: TdxSpinEdit
      Left = 320
      Top = 29
      Width = 60
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 2999.000000000000000000
      MinValue = 1900.000000000000000000
      Value = 2000.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton2: TElPopupButton
      Left = 461
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
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acNext
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 405
      Top = 28
      Width = 56
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
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acXem
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 380
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acBack
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDaNghi: TdxCalcEdit
      Left = 654
      Top = 29
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      Alignment = taCenter
      StyleController = dmMain.StyleController
      Text = '0'
      OnChange = dxKetChuyenChange
      StoredValues = 1
    end
    object ElPopupButton5: TElPopupButton
      Left = 724
      Top = 28
      Width = 72
      Height = 25
      Cursor = crDefault
      ImageIndex = 54
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'C'#7853'p nh'#7853't'
      TabOrder = 12
      Color = 15466238
      ParentColor = False
      Action = acCapnhat
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxKetChuyen: TdxCalcEdit
      Left = 545
      Top = 29
      Width = 70
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 6
      Alignment = taCenter
      StyleController = dmMain.StyleController
      Text = '0'
      OnChange = dxKetChuyenChange
      StoredValues = 1
    end
    object ElSplitter1: TElSplitter
      Left = 197
      Top = 2
      Width = 2
      Height = 514
      Cursor = crHSplit
      SnapTopLeft = False
      SnapBottomRight = False
      ControlTopLeft = dxDBTreeOrgList
      AutoHide = False
      Align = alLeft
      Color = 15466238
      UseXPThemes = False
    end
    object dxInMonth: TdxSpinEdit
      Left = 243
      Top = 29
      Width = 54
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton6: TElPopupButton
      Left = 581
      Top = 493
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
    object ElPopupButton7: TElPopupButton
      Left = 656
      Top = 493
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'New Group'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBTreeList1'
          ShowCaption = False
          Control = dxDBTreeOrgList
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'ElSplitter1'
          ShowCaption = False
          Control = ElSplitter1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'New Group'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Group4: TdxLayoutGroup
          Caption = '* Th'#7901'i gian'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item15: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avCenter
            Caption = 'Th'#225'ng'
            Control = dxInMonth
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avCenter
            Caption = 'N'#259'm'
            Control = dxInYear
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'ElPopupButton4'
            ShowCaption = False
            Control = ElPopupButton4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxlayoutKetchuyen: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avCenter
            Caption = 'K'#7871't chuy'#7875'n'
            Control = dxKetChuyen
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avCenter
            Caption = #272#227' ngh'#7881
            Control = dxDaNghi
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton5'
            ShowCaption = False
            Control = ElPopupButton5
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = '* Ph'#233'p nh'#226'n vi'#234'n'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Group3: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'New Group'
            ShowCaption = False
            ShowBorder = False
            object dxLayoutControl1Item2: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'dxDBGrid1'
              ShowCaption = False
              Control = dxDBGrid1
            end
          end
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton6'
            ShowCaption = False
            Control = ElPopupButton6
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton7'
            ShowCaption = False
            Control = ElPopupButton7
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group8: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'New Group'
            ShowCaption = False
            LayoutDirection = ldHorizontal
            ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
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
        Caption = 'C'#244'ng c'#7909' nh'#7853'p nhanh ph'#233'p th'#226'm ni'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 8
    Top = 32
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
    object acBack: TAction
      Caption = 'acBack'
      ImageIndex = 0
      OnExecute = acBackExecute
    end
    object acCapnhat: TAction
      Caption = 'acCapnhat'
      Enabled = False
      ImageIndex = 54
      OnExecute = acCapnhatExecute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 15
      DataSource = dsPhepNhanVien
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 9
      DataSource = dsPhepNhanVien
    end
  end
  object qryPhepNhanVien: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'nam_apdung'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'thang_apdung'
        ParamType = ptInput
      end>
    DatabaseName = 
      'D:\1 PROJECTS\CONG THANH\SSP-HRM 2.0.1_CT\Databases\HRM_DB_CT.GD' +
      'B'
    EditSQL.Strings = (
      'UPDATE HR_PHEP_PHANBO_NAM SET'
      '   MASO = :MASO, /*PK*/'
      '   THANG_APDUNG = :THANG_APDUNG, /*PK*/'
      '   SOPHEP_TRONGKY = :SOPHEP_TRONGKY,'
      '   SOPHEP_KETCHUYEN = :SOPHEP_KETCHUYEN,'
      '   SOPHEP_DANGHI = :SOPHEP_DANGHI,'
      '   NAM_APDUNG = :NAM_APDUNG'
      'WHERE'
      '   MASO = :OLD_MASO AND'
      '   THANG_APDUNG = :OLD_THANG_APDUNG')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryPhepNhanVienAfterPost
    DataSource = frmTheodoiPhep.dsOrgMap
    SQL.Strings = (
      'SELECT'
      '    hr_get_emp_list.emp_no EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    TITLE_NAME,'
      '    hr_phep_phanbo_nam.sophep_trongky,'
      '    hr_phep_phanbo_nam.sophep_ketchuyen,'
      '    hr_phep_phanbo_nam.sophep_danghi'
      '     , THANG_APDUNG'
      '     , MASO'
      '     , NAM_APDUNG'
      'FROM hr_get_emp_list(:USER_NAME,:DEPT_NO,0)'
      
        'join hr_phep_phanbo_nam on hr_phep_phanbo_nam.maso=hr_get_emp_li' +
        'st.emp_no||:nam_apdung'
      'where IS_MAIN_POSITION=1 and IS_DISMISSED=0'
      '  and hr_phep_phanbo_nam.thang_apdung= :thang_apdung')
    FieldOptions = []
    Left = 360
    Top = 136
    object qryPhepNhanVienEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryPhepNhanVienFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryPhepNhanVienTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryPhepNhanVienSOPHEP_TRONGKY: TIBOFloatField
      FieldName = 'SOPHEP_TRONGKY'
      Required = True
    end
    object qryPhepNhanVienSOPHEP_KETCHUYEN: TIBOFloatField
      FieldName = 'SOPHEP_KETCHUYEN'
      Required = True
    end
    object qryPhepNhanVienSOPHEP_DANGHI: TIBOFloatField
      FieldName = 'SOPHEP_DANGHI'
      Required = True
    end
    object qryPhepNhanVienTHANG_APDUNG: TIntegerField
      FieldName = 'THANG_APDUNG'
      Required = True
    end
    object qryPhepNhanVienMASO: TWideStringField
      FieldName = 'MASO'
      Required = True
      Size = 63
    end
    object qryPhepNhanVienNAM_APDUNG: TIntegerField
      FieldName = 'NAM_APDUNG'
      Required = True
    end
  end
  object dsPhepNhanVien: TDataSource
    DataSet = qryPhepNhanVien
    Left = 360
    Top = 168
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\1 PROJECTS\CONG THANH\SSP-HRM 2.0.1_CT\Databases\HRM_DB_CT.GD' +
      'B'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 270
    Top = 190
  end
  object qryExecute2: TIBOQuery
    Params = <>
    DatabaseName = 
      'D:\1 PROJECTS\CONG THANH\SSP-HRM 2.0.1_CT\Databases\HRM_DB_CT.GD' +
      'B'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 270
    Top = 238
  end
end
