inherited frmBoiHoanDaoTao: TfrmBoiHoanDaoTao
  Left = 257
  Top = 159
  Width = 909
  Height = 605
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 552
    Width = 901
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 901
    Height = 552
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    inline frameDateTime1: TframeDateTime
      Left = 14
      Top = 53
      Width = 972
      Height = 27
      Color = 15466238
      ParentColor = False
      TabOrder = 3
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 972
        Height = 27
        inherited dxSelectPeriod: TdxImageEdit
          Top = 2
        end
        inherited dxToDate: TdxDateEdit
          Top = 2
        end
        inherited dxFromDate: TdxDateEdit
          Top = 2
        end
      end
    end
    object dxSelectDept: TdxPopupEdit
      Left = 108
      Top = 28
      Width = 229
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxSelectDeptChange
      OnCloseUp = dxSelectDeptCloseUp
      OnInitPopup = dxSelectDeptInitPopup
    end
    object dxViewChild: TdxCheckEdit
      Left = 337
      Top = 28
      Width = 129
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taRightJustify
      Caption = 'Xem c'#7845'p d'#432#7899'i'
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object ElPopupButton1: TElPopupButton
      Left = 466
      Top = 28
      Width = 101
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
      Caption = '&Xem danh s'#225'ch'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acXemDS
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object Panel1: TPanel
      Left = 2
      Top = 87
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = 15466238
      TabOrder = 4
      object gridDSNghiViec: TdxDBGrid
        Left = 0
        Top = 0
        Width = 185
        Height = 209
        Bands = <
          item
            Caption = 'DANH S'#193'CH NH'#194'N VI'#202'N NGH'#7880' VI'#7878'C'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'EMPLOYEE_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alTop
        TabOrder = 0
        DataSource = dsDSNghiViec
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        ShowBands = True
        object gridDSNghiViecEMPLOYEE_NO: TdxDBGridColumn
          Caption = 'M'#227' NV'
          HeaderAlignment = taCenter
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPLOYEE_NO'
          Caption_UTF7 = 'M+AOM NV'
        end
        object gridDSNghiViecFULL_NAME: TdxDBGridColumn
          Caption = 'H'#7885' t'#234'n'
          HeaderAlignment = taCenter
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FULL_NAME'
          Caption_UTF7 = 'H+Hs0 t+AOo-n'
        end
        object gridDSNghiViecTITLE_NAME: TdxDBGridColumn
          Caption = 'Ch'#7913'c v'#7909
          HeaderAlignment = taCenter
          Width = 147
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TITLE_NAME'
          Caption_UTF7 = 'Ch+Huk-c v+HuU'
        end
        object gridDSNghiViecDECISION_NO: TdxDBGridColumn
          Caption = 'S'#7889' Q'#272
          HeaderAlignment = taCenter
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DECISION_NO'
          Caption_UTF7 = 'S+HtE Q+ARA'
        end
        object gridDSNghiViecOFF_DATE: TdxDBGridDateColumn
          Alignment = taCenter
          Caption = 'Ng'#224'y ngh'#7881' vi'#7879'c'
          HeaderAlignment = taCenter
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OFF_DATE'
          Caption_UTF7 = 'Ng+AOA-y ngh+Hsk vi+Hsc-c'
        end
        object gridDSNghiViecREASON_NAME: TdxDBGridColumn
          Caption = 'L'#253' do ngh'#7881' vi'#7879'c'
          HeaderAlignment = taCenter
          Width = 157
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REASON_NAME'
          Caption_UTF7 = 'L+AP0 do ngh+Hsk vi+Hsc-c'
        end
        object gridDSNghiViecDEPT_NAME: TdxDBGridColumn
          Caption = #272#417'n v'#7883' - ph'#242'ng ban'
          HeaderAlignment = taCenter
          Sorted = csUp
          Visible = False
          Width = 4298
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEPT_NAME'
          GroupIndex = 0
          Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
        end
        object gridDSNghiViecPHI_BOIHOAN: TdxDBGridCalcColumn
          Caption = 'Chi ph'#237' b'#7891'i ho'#224'n'
          HeaderAlignment = taCenter
          Width = 138
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PHI_BOIHOAN'
          Caption_UTF7 = 'Chi ph+AO0 b+HtM-i ho+AOA-n'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 0
        Top = 209
        Width = 185
        Height = 10
        Cursor = crVSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridDSNghiViec
        ControlBottomRight = gridChiTiet
        AutoHide = False
        ShowSnapButton = True
        Align = alTop
        BevelInner = bvLowered
        UseXPThemes = False
      end
      object gridChiTiet: TdxDBGrid
        Left = 0
        Top = 219
        Width = 185
        Height = 244
        Bands = <
          item
            Caption = 'CHI TI'#7870'T C'#193'C KH'#211'A '#272#192'O T'#7840'O'
          end>
        DefaultLayout = True
        HeaderMinRowCount = 2
        HeaderPanelRowCount = 1
        KeyField = 'CLASS_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        DataSource = dsChiTiet
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        ShowBands = True
        object gridChiTietPHAN_NHOM: TdxDBGridColumn
          Caption = 'Ph'#226'n nh'#243'm'
          HeaderAlignment = taCenter
          Sorted = csUp
          Visible = False
          Width = 2909
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PHAN_NHOM'
          GroupIndex = 0
          Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
        end
        object gridChiTietPLAN_NAME: TdxDBGridColumn
          Caption = 'K'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
          HeaderAlignment = taCenter
          Sorted = csUp
          Visible = False
          Width = 2909
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NAME'
          GroupIndex = 1
          Caption_UTF7 = 'K+Hr8 ho+HqE-ch +AREA4A-o t+HqE-o'
        end
        object gridChiTietCLASS_NO: TdxDBGridColumn
          Caption = 'M'#227' l'#7899'p'
          HeaderAlignment = taCenter
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLASS_NO'
          Caption_UTF7 = 'M+AOM l+Hts-p'
        end
        object gridChiTietCLASS_CONTENT: TdxDBGridColumn
          Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
          HeaderAlignment = taCenter
          Width = 170
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLASS_CONTENT'
          Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
        end
        object gridChiTietFROM_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y B'#272
          HeaderAlignment = taCenter
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FROM_DATE'
          Caption_UTF7 = 'Ng+AOA-y B+ARA'
        end
        object gridChiTietTO_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y KT'
          HeaderAlignment = taCenter
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TO_DATE'
          Caption_UTF7 = 'Ng+AOA-y KT'
        end
        object gridChiTietALLOWANCE: TdxDBGridColumn
          Caption = 'Chi ph'#237' '#272'T'
          HeaderAlignment = taCenter
          Width = 87
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ALLOWANCE'
          Caption_UTF7 = 'Chi ph+AO0 +ARA-T'
        end
        object gridChiTietTG_CAMKET_LAMVIEC: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'TG cam k'#7871't l'#224'm vi'#7879'c sau '#272'T'
          HeaderAlignment = taCenter
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TG_CAMKET_LAMVIEC'
          Caption_UTF7 = 'TG cam k+Hr8-t l+AOA-m vi+Hsc-c sau +ARA-T'
        end
        object gridChiTietDV_CAMKET_LAMVIEC: TdxDBGridImageColumn
          Alignment = taRightJustify
          Caption = #272'VT'
          HeaderAlignment = taCenter
          MinWidth = 16
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DV_CAMKET_LAMVIEC'
          Descriptions.WideStrings = (
            'Ng'#224'y'
            'Tu'#7847'n'
            'Th'#225'ng'
            'N'#259'm')
          ShowDescription = True
          Values.WideStrings = (
            '1'
            '7'
            '30'
            '365')
          Caption_UTF7 = '+ARA-VT'
        end
        object gridChiTietTG_LAMVIEC_SAUDAOTAO: TdxDBGridCalcColumn
          Alignment = taCenter
          Caption = 'TG l'#224'm vi'#7879'c sau khi k'#7871't th'#250'c '#272'T'
          HeaderAlignment = taCenter
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TG_LAMVIEC_SAUDAOTAO'
          Caption_UTF7 = 'TG l+AOA-m vi+Hsc-c sau khi k+Hr8-t th+APo-c +ARA-T'
        end
        object gridChiTietDV_TG_LAMVIEC_SAUDAOTAO: TdxDBGridImageColumn
          Alignment = taRightJustify
          Caption = #272'VT'
          HeaderAlignment = taCenter
          MinWidth = 16
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DV_TG_LAMVIEC_SAUDAOTAO'
          Descriptions.WideStrings = (
            'Ng'#224'y'
            'Tu'#7847'n'
            'Th'#225'ng'
            'N'#259'm')
          ShowDescription = True
          Values.WideStrings = (
            '1'
            '7'
            '30'
            '365')
          Caption_UTF7 = '+ARA-VT'
        end
        object gridChiTietPHI_BOIHOAN: TdxDBGridCalcColumn
          Caption = 'Chi ph'#237' b'#7891'i ho'#224'n'
          HeaderAlignment = taCenter
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PHI_BOIHOAN'
          Caption_UTF7 = 'Chi ph+AO0 b+HtM-i ho+AOA-n'
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n danh s'#225'ch'
        object dxLayoutControl1Group1: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            Control = dxSelectDept
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            ShowCaption = False
            Control = dxViewChild
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Control = frameDateTime1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'New Item'
        ShowCaption = False
        Control = Panel1
        ControlOptions.AutoColor = True
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
        Caption = 'B'#7891'i ho'#224'n chi ph'#237' '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 672
    Top = 16
  end
  object qryDSNghiViec: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'XEM_THEO_DONVI'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'XEM_CAPDUOI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'XEM_TUNGAY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'XEM_DENNGAY'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select employee_no,'
      '    full_name,'
      '    decision_no,'
      '    off_date,'
      '    reason_name,'
      '    dept_name,'
      '    title_name,'
      '    sum(phi_boihoan) PHI_BOIHOAN'
      
        'from hr_boihoan_chi_phi_daotao(:XEM_THEO_DONVI,:XEM_CAPDUOI,:XEM' +
        '_TUNGAY,:XEM_DENNGAY)'
      'group by employee_no,'
      '    full_name,'
      '    decision_no,'
      '    off_date,'
      '    reason_name,'
      '    dept_name,'
      '    title_name')
    FieldOptions = []
    Left = 40
    Top = 161
    object qryDSNghiViecEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDSNghiViecFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 126
    end
    object qryDSNghiViecDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Size = 30
    end
    object qryDSNghiViecOFF_DATE: TDateField
      FieldName = 'OFF_DATE'
    end
    object qryDSNghiViecREASON_NAME: TWideStringField
      FieldName = 'REASON_NAME'
      Size = 126
    end
    object qryDSNghiViecDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDSNghiViecTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryDSNghiViecPHI_BOIHOAN: TIBOFloatField
      FieldName = 'PHI_BOIHOAN'
      ReadOnly = True
    end
  end
  object dsDSNghiViec: TDataSource
    DataSet = qryDSNghiViec
    Left = 40
    Top = 192
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 72
    Top = 160
    object acXemDS: TAction
      Caption = 'acXemDS'
      ImageIndex = 6
      OnExecute = acXemDSExecute
    end
  end
  object qryChiTiet: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'XEM_THEO_DONVI'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'XEM_CAPDUOI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'XEM_TUNGAY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'XEM_DENNGAY'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSNghiViec
    SQL.Strings = (
      'select plan_name,'
      '    class_no,'
      '    class_content,'
      '    from_date,'
      '    to_date,'
      '    allowance,'
      '    tg_camket_lamviec,'
      '    dv_camket_lamviec,'
      '    tg_lamviec_saudaotao,'
      '    dv_tg_lamviec_saudaotao,'
      '    vipham_camket_daotao,'
      '    phi_boihoan,'
      '    phan_nhom'
      
        'from hr_boihoan_chi_phi_daotao(:XEM_THEO_DONVI,:XEM_CAPDUOI,:XEM' +
        '_TUNGAY,:XEM_DENNGAY)'
      'WHERE employee_no = :EMPLOYEE_NO'
      'ORDER BY FROM_DATE')
    FieldOptions = []
    Left = 32
    Top = 393
    object qryChiTietPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Size = 126
    end
    object qryChiTietCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Size = 30
    end
    object qryChiTietCLASS_CONTENT: TWideStringField
      FieldName = 'CLASS_CONTENT'
      Size = 300
    end
    object qryChiTietFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
    end
    object qryChiTietTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
    object qryChiTietALLOWANCE: TIBOFloatField
      FieldName = 'ALLOWANCE'
    end
    object qryChiTietTG_CAMKET_LAMVIEC: TIBOFloatField
      FieldName = 'TG_CAMKET_LAMVIEC'
    end
    object qryChiTietDV_CAMKET_LAMVIEC: TIntegerField
      FieldName = 'DV_CAMKET_LAMVIEC'
    end
    object qryChiTietTG_LAMVIEC_SAUDAOTAO: TIBOFloatField
      FieldName = 'TG_LAMVIEC_SAUDAOTAO'
    end
    object qryChiTietDV_TG_LAMVIEC_SAUDAOTAO: TIntegerField
      FieldName = 'DV_TG_LAMVIEC_SAUDAOTAO'
    end
    object qryChiTietVIPHAM_CAMKET_DAOTAO: TSmallintField
      FieldName = 'VIPHAM_CAMKET_DAOTAO'
    end
    object qryChiTietPHI_BOIHOAN: TIBOFloatField
      FieldName = 'PHI_BOIHOAN'
    end
    object qryChiTietPHAN_NHOM: TWideStringField
      FieldName = 'PHAN_NHOM'
      Size = 126
    end
  end
  object dsChiTiet: TDataSource
    DataSet = qryChiTiet
    Left = 32
    Top = 424
  end
end
