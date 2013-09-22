inherited frmXDTochucPhapLy: TfrmXDTochucPhapLy
  Left = 277
  Top = 191
  Width = 826
  Height = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 468
    Width = 818
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 818
    Height = 468
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 441
      Width = 738
      Color = 15466238
      TabOrder = 2
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 738
      end
    end
    object gridUserList: TdxDBGrid [1]
      Left = 2
      Top = 2
      Width = 223
      Height = 439
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'USERACCID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsUserList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridUserListUSERACCID: TdxDBGridColumn
        Caption = 'T'#234'n '#273#259'ng nh'#7853'p'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USERACCID'
        Caption_UTF7 = 'T+AOo-n +AREBAw-ng nh+Hq0-p'
      end
      object gridUserListDISPLAYNAME: TdxDBGridColumn
        Caption = 'T'#234'n ng'#432#7901'i d'#249'ng'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISPLAYNAME'
        Caption_UTF7 = 'T+AOo-n ng+AbAe3Q-i d+APk-ng'
      end
    end
    object treeDeptList: TdxDBTreeList [2]
      Left = 225
      Top = 2
      Width = 424
      Height = 413
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DEPT_NO'
      ParentField = 'P_DEPT_NO'
      TabOrder = 1
      DataSource = dsDeptList
      LookAndFeel = lfFlat
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object treeDeptListDEPT_NO: TdxDBTreeListMaskColumn
        Caption = 'M'#227' '#272'V'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NO'
        Caption_UTF7 = 'M+AOM +ARA-V'
      end
      object treeDeptListDEPT_NAME: TdxDBTreeListMaskColumn
        Caption = 'T'#7893' ch'#7913'c - ph'#242'ng ban'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 134
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        Caption_UTF7 = 'T+HtU ch+Huk-c - ph+API-ng ban'
      end
      object treeDeptListDEPT_ADDRESS: TdxDBTreeListMaskColumn
        Caption = #272#7883'a ch'#7881
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_ADDRESS'
        Caption_UTF7 = '+ARAeyw-a ch+Hsk'
      end
      object treeDeptListDEPT_PHONE: TdxDBTreeListMaskColumn
        Caption = #272'i'#7879'n tho'#7841'i'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_PHONE'
        Caption_UTF7 = '+ARA-i+Hsc-n tho+HqE-i'
      end
      object treeDeptListDEPT_EMAIL: TdxDBTreeListMaskColumn
        Caption = 'Email'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_EMAIL'
      end
      object treeDeptListTOCHUC_PHAPLY: TdxDBTreeListCheckColumn
        Caption = 'C'#243' ph'#225'p l'#253
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOCHUC_PHAPLY'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'C+APM ph+AOE-p l+AP0'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = []
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridUserList
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'dxDBTreeList1'
          ShowCaption = False
          Control = treeDeptList
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
        Caption = 'X'#225'c '#273#7883'nh t'#7893' ch'#7913'c ph'#225'p l'#253
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryUserList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'USERACCID'
      'SUBSYSTEMID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT USERACCID'
      '     , DISPLAYNAME'
      '     , USERACCPASS'
      '     , LASTACCESS'
      '     , SUBSYSTEMID'
      'FROM SYS_USERACCOUNT'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 17
    Top = 64
    object qryUserListUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryUserListDISPLAYNAME: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 126
    end
    object qryUserListUSERACCPASS: TWideStringField
      FieldName = 'USERACCPASS'
      Size = 63
    end
    object qryUserListLASTACCESS: TDateTimeField
      FieldName = 'LASTACCESS'
    end
    object qryUserListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
  end
  object dsUserList: TDataSource
    DataSet = qryUserList
    Left = 17
    Top = 95
  end
  object qryDeptList: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'useraccid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'subsystemid'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    EditSQL.Strings = (
      'UPDATE HR_DEPT_USER SET'
      '   TOCHUC_PHAPLY = :TOCHUC_PHAPLY'
      'WHERE'
      '   DEPT_NO = :OLD_DEPT_NO AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID AND'
      '   USERACCID = :OLD_USERACCID')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryDeptListAfterPost
    DataSource = dsUserList
    SQL.Strings = (
      'select hr_dept_user.dept_no,'
      '    hr_mask_dept_list.dept_name,'
      '    hr_mask_dept_list.p_dept_no,'
      '    hr_dept_user.tochuc_phaply,'
      '    hr_dept_user.useraccid ,'
      '    hr_dept_user.subsystemid'
      '     , hr_mask_dept_list.DEPT_ADDRESS'
      '     , hr_mask_dept_list.DEPT_PHONE'
      '     , hr_mask_dept_list.DEPT_EMAIL'
      'from hr_dept_user '
      'join hr_mask_dept_list(:useraccid,null,null)'
      'on hr_dept_user.dept_no = hr_mask_dept_list.dept_no'
      'where hr_dept_user.useraccid = :useraccid'
      'and hr_dept_user.subsystemid = :subsystemid')
    FieldOptions = []
    Left = 49
    Top = 64
    object qryDeptListDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 30
    end
    object qryDeptListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDeptListP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDeptListTOCHUC_PHAPLY: TSmallintField
      FieldName = 'TOCHUC_PHAPLY'
    end
    object qryDeptListUSERACCID: TWideStringField
      FieldName = 'USERACCID'
      Required = True
      Size = 30
    end
    object qryDeptListSUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryDeptListDEPT_ADDRESS: TWideStringField
      FieldName = 'DEPT_ADDRESS'
      Size = 126
    end
    object qryDeptListDEPT_PHONE: TWideStringField
      FieldName = 'DEPT_PHONE'
      Size = 30
    end
    object qryDeptListDEPT_EMAIL: TWideStringField
      FieldName = 'DEPT_EMAIL'
      Size = 63
    end
  end
  object dsDeptList: TDataSource
    DataSet = qryDeptList
    Left = 49
    Top = 95
  end
  object qryPhatSinh: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'execute procedure  hr_phatsinh_dept_user(:SUBSYSTEMID)')
    FieldOptions = []
    Left = 17
    Top = 128
  end
end
