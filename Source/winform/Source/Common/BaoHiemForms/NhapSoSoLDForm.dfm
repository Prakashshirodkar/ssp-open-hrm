inherited frmNhapSoSoLD: TfrmNhapSoSoLD
  Left = 317
  Top = 145
  Width = 781
  Height = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 520
    Width = 773
  end
  inherited dxlcMain: TdxLayoutControl
    Top = 478
    Width = 773
    Height = 42
    Align = alBottom
    inherited frameToolbar1: TframeToolbar
      Top = 10
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
  end
  object ElPanel1: TElPanel [2]
    Left = 0
    Top = 0
    Width = 201
    Height = 478
    Align = alLeft
    BevelOuter = bvNone
    MouseCapture = False
    TabOrder = 2
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 201
      Height = 478
      Align = alClient
      TabOrder = 0
      AutoContentSizes = [acsWidth, acsHeight]
      LookAndFeel = dmMain.StyleWeb
      object dxNhanVien: TdxImageEdit
        Left = 52
        Top = 453
        Width = 149
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsHotFlat
        TabOrder = 2
        Alignment = taLeftJustify
        StyleController = dmMain.StyleController
        OnCloseUp = dxNhanVienCloseUp
        DropDownRows = 16777223
        StoredValues = 1
      end
      object treeDepartment: TdxDBTreeList
        Left = 2
        Top = 25
        Width = 201
        Height = 223
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'DEPT_NO'
        ParentField = 'P_DEPT_NO'
        TabOrder = 1
        DataSource = dsDepartment
        Images = dmMain.imglDeptTree
        LookAndFeel = lfFlat
        OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
        TreeLineColor = clGrayText
        OnChangeNode = treeDepartmentChangeNode
        OnCustomDrawCell = treeDepartmentCustomDrawCell
        object treeDepartmentDEPT_NO: TdxDBTreeListMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEPT_NO'
        end
        object treeDepartmentP_DEPT_NO: TdxDBTreeListMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'P_DEPT_NO'
        end
        object treeDepartmentDEPT_NAME: TdxDBTreeListMaskColumn
          Caption = 'T'#234'n '#273#417'n v'#7883' - ph'#242'ng ban'
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEPT_NAME'
          Caption_UTF7 = 'T+AOo-n +AREBoQ-n v+Hss - ph+API-ng ban'
        end
        object treeDepartmentENDED_DATE: TdxDBTreeListDateColumn
          Caption = 'Ng'#224'y KT'
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ENDED_DATE'
          Caption_UTF7 = 'Ng+AOA-y KT'
        end
      end
      object chkViewInvalidDept: TdxCheckEdit
        Left = 2
        Top = 2
        Width = 221
        Color = 15466238
        ParentColor = False
        Style.BorderColor = 5146545
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        Caption = 'Hi'#7875'n th'#7883' ph'#242'ng ban h'#7871't hi'#7879'u l'#7921'c'
        StyleController = dmMain.StyleController
        OnChange = chkViewInvalidDeptChange
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = chkViewInvalidDept
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'New Item'
          ShowCaption = False
          Control = treeDepartment
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'Nh'#226'n vi'#234'n'
          Control = dxNhanVien
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ElSplitter1: TElSplitter [3]
    Left = 201
    Top = 0
    Width = 8
    Height = 478
    Cursor = crHSplit
    SnapTopLeft = True
    SnapBottomRight = False
    ControlTopLeft = ElPanel1
    ControlBottomRight = ElPanel2
    AutoHide = False
    ShowSnapButton = True
    Align = alLeft
    BevelOuter = bvLowered
    UseXPThemes = False
  end
  object ElPanel2: TElPanel [4]
    Left = 209
    Top = 0
    Width = 564
    Height = 478
    Align = alClient
    BevelOuter = bvNone
    MouseCapture = False
    TabOrder = 4
    DockOrientation = doNoOrient
    DoubleBuffered = False
    object gridSoSoLD: TdxDBGrid
      Left = 0
      Top = 0
      Width = 564
      Height = 478
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'EMPLOYEE_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = dsSoSoLD
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridSoSoLDEMPLOYEE_NO: TdxDBGridMaskColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridSoSoLDFULL_NAME: TdxDBGridMaskColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object gridSoSoLDSO_SO_LD: TdxDBGridColumn
        Caption = 'S'#7889' s'#7893' lao '#273#7897'ng'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SO_LD'
        Caption_UTF7 = 'S+HtE s+HtU lao +AREe2Q-ng'
      end
      object gridSoSoLDNGAYCAP_SO_LD: TdxDBGridDateColumn
        Caption = 'Ng'#224'y c'#7845'p'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAYCAP_SO_LD'
        Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
      end
      object gridSoSoLDNOICAP_SO_LD: TdxDBGridColumn
        Caption = 'N'#417'i c'#7845'p'
        HeaderAlignment = taCenter
        Width = 189
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOICAP_SO_LD'
        Caption_UTF7 = 'N+AaE-i c+HqU-p'
      end
      object gridSoSoLDOFF_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y ngh'#7881' vi'#7879'c'
        Color = clInfoBk
        DisableEditor = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OFF_DATE'
        Caption_UTF7 = 'Ng+AOA-y ngh+Hsk vi+Hsc-c'
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
        Caption = 'Qu'#7843'n l'#253' s'#7889' s'#7893' lao '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 56
  end
  object dsDepartment: TDataSource
    DataSet = qryDepartment
    Left = 88
    Top = 56
  end
  object qryDepartment: TIBOQuery
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
      'SELECT DEPT_NO'
      '     , P_DEPT_NO'
      '     , DEPT_NAME'
      '     , ENDED_DATE'
      'FROM HR_MASK_ORG_MAP(:USER_NAME)'
      'WHERE ENDED_DATE IS NULL'
      'ORDER BY CASE WHEN P_DEPT_NO IS NULL THEN 0 ELSE P_DEPT_NO END')
    FieldOptions = []
    Left = 56
    Top = 56
    object qryDepartmentDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDepartmentP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDepartmentDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDepartmentENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
  end
  object qrySoSoLD: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'XEM_NV_NGHIVIEC'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'dept_no'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EMPLOYEE'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_EMPLOYEE SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   SO_LD = :SO_LD,'
      '   NGAYCAP_SO_LD = :NGAYCAP_SO_LD,'
      '   NOICAP_SO_LD = :NOICAP_SO_LD'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EMPLOYEE('
      '   EMPLOYEE_NO, /*PK*/'
      '   SO_LD,'
      '   NGAYCAP_SO_LD,'
      '   NOICAP_SO_LD)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :SO_LD,'
      '   :NGAYCAP_SO_LD,'
      '   :NOICAP_SO_LD)')
    KeyLinks.Strings = (
      'hr_employee.employee_no')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDepartment
    SQL.Strings = (
      'SELECT distinct hr_employee.employee_no'
      
        ', hr_employee.last_name||'#39' '#39'||hr_employee.middle_name||'#39' '#39'||hr_e' +
        'mployee.first_name full_name'
      ', hr_employee.so_ld'
      ', hr_employee.ngaycap_so_ld'
      ', hr_employee.noicap_so_ld'
      ', hr_off_work.off_date '
      'FROM hr_employee'
      
        'left join hr_assignment on hr_assignment.employee_no = hr_employ' +
        'ee.employee_no'
      
        'left join hr_position on hr_assignment.position_no=hr_position.p' +
        'osition_no'
      
        'left join hr_off_work on hr_assignment.employee_no = hr_off_work' +
        '.employee_no '
      'and hr_assignment.dismiss_date = hr_off_work.off_date '
      'where hr_assignment.is_main_position =1'
      
        'and (((:XEM_NV_NGHIVIEC = 0) and (hr_off_work.off_date  is null)' +
        ')'
      
        'or ((:XEM_NV_NGHIVIEC = 1) and (hr_off_work.off_date  is not nul' +
        'l))'
      'or (:XEM_NV_NGHIVIEC = 2))'
      'and hr_position.dept_no = :dept_no')
    FieldOptions = []
    Left = 56
    Top = 88
    object qrySoSoLDEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qrySoSoLDFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qrySoSoLDSO_LD: TWideStringField
      FieldName = 'SO_LD'
      Size = 30
    end
    object qrySoSoLDNGAYCAP_SO_LD: TDateField
      FieldName = 'NGAYCAP_SO_LD'
    end
    object qrySoSoLDNOICAP_SO_LD: TWideStringField
      FieldName = 'NOICAP_SO_LD'
      Size = 255
    end
    object qrySoSoLDOFF_DATE: TDateField
      FieldName = 'OFF_DATE'
    end
  end
  object dsSoSoLD: TDataSource
    DataSet = qrySoSoLD
    Left = 88
    Top = 88
  end
end
