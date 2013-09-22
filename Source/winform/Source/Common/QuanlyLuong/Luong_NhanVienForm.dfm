inherited frmLuong_NhanVien: TfrmLuong_NhanVien
  Left = 282
  Top = 172
  Width = 855
  Height = 515
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 462
    Width = 847
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 847
    Height = 462
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxChonDonvi: TdxPopupEdit
      Left = 108
      Top = 28
      Width = 213
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      PopupControl = tlDeptList
      PopupFormBorderStyle = pbsSysPanel
      OnCloseUp = dxChonDonviCloseUp
      OnInitPopup = dxChonDonviInitPopup
    end
    object dxCapduoi: TdxCheckEdit
      Left = 426
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
    end
    object dximOption: TdxImageEdit
      Left = 495
      Top = 28
      Width = 145
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object tlData: TdxDBGrid
      Left = 2
      Top = 60
      Width = 250
      Height = 129
      Bands = <
        item
          Fixed = bfLeft
        end
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'MA_NHANVIEN'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 5
      DataSource = dsData
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OnCustomDrawCell = tlDataCustomDrawCell
      object tlDataMA_NHANVIEN: TdxDBGridColumn
        Tag = 1
        Caption = 'M'#227' NV'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_NHANVIEN'
        Caption_UTF7 = 'M+AOM NV'
      end
      object tlDataHOTEN_NHANVIEN: TdxDBGridColumn
        Tag = 1
        Caption = 'H'#7885' v'#224' t'#234'n'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HOTEN_NHANVIEN'
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object tlDataSTATE: TdxDBGridColumn
        Tag = 1
        DisableCaption = True
        DisableEditor = True
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATE'
      end
      object tlDataDEPT_NAME: TdxDBGridColumn
        Tag = 1
        Caption = #272#417'n v'#7883' - ph'#242'ng ban'
        Color = clInfoBk
        DisableEditor = True
        Sorted = csUp
        Visible = False
        Width = 281
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        GroupIndex = 0
        Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
      end
      object tlDataDISMISS_DATE: TdxDBGridDateColumn
        Tag = 1
        DisableCaption = True
        DisableEditor = True
        Visible = False
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISMISS_DATE'
      end
      object tlDataTITLE_NAME: TdxDBGridColumn
        Tag = 1
        Caption = 'Ch'#7913'c v'#7909
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 164
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
    end
    inline frameToolbar1: TframeToolbar
      Left = 2
      Top = 425
      Width = 843
      Height = 35
      Color = 15466238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 843
        Height = 35
        inherited btnDelete: TElPopupButton
          Top = 0
        end
        inherited btnInsert: TElPopupButton
          Top = 0
        end
        inherited btnSave: TElPopupButton
          Top = 0
        end
        inherited btnCancel: TElPopupButton
          Top = 0
        end
        inherited btnClose: TElPopupButton
          Left = 977
          Top = 0
        end
        inherited btnHelp: TElPopupButton
          Left = 847
          Top = 0
        end
        inherited btnChoose: TElPopupButton
          Left = 917
          Top = 0
        end
        inherited btnCopy: TElPopupButton
          Top = 0
        end
        inherited btnFirst: TElPopupButton
          Top = 0
        end
        inherited btnLast: TElPopupButton
          Top = 0
        end
        inherited btnPrevious: TElPopupButton
          Top = 0
        end
        inherited btnNext: TElPopupButton
          Top = 0
        end
        inherited btnDesign: TElPopupButton
          Left = 637
          Top = 0
        end
        inherited btnPreview: TElPopupButton
          Left = 557
          Top = 0
          Width = 80
          ImageIndex = 57
          Caption = 'C'#7853'p nh'#7853't'
          Action = acCapnhatDulieu
        end
        inherited btnPrint: TElPopupButton
          Top = 0
          Width = 80
          ImageIndex = 62
          Caption = 'Ph'#225't sinh'
          Action = acPhatsinhDulieu
        end
        inherited btnInsertEx: TElPopupButton
          Top = 0
        end
        inherited btnSendMail: TElPopupButton
          Top = 0
        end
        inherited btnGenerate: TElPopupButton
          Left = 762
          Top = 0
        end
        inherited btnRelation: TElPopupButton
          Left = 737
          Top = 0
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 712
          Top = 0
        end
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
            inherited dxLayoutControl1Group3: TdxLayoutGroup
              Visible = True
              inherited dxLayoutControl1Item8: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item7: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 743
      Top = 28
      Width = 90
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
      Action = acXemdulieu
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxChucVuHienTai: TdxCheckEdit
      Left = 720
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n danh s'#225'ch'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = #272#417'n v'#7883' - ph'#242'ng ban'
          Control = dxChonDonvi
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Xem c'#7845'p d'#432#7899'i'
          Control = dxCapduoi
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'T'#249'y ch'#7885'n'
          Control = dximOption
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'Ch'#7913'c v'#7909' hi'#7879'n t'#7841'i'
          Control = dxChucVuHienTai
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = tlData
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        Caption = 'New Item'
        ShowCaption = False
        Control = frameToolbar1
        ControlOptions.ShowBorder = False
      end
    end
  end
  object tlDeptList: TdxDBTreeList [2]
    Left = 184
    Top = 128
    Width = 313
    Height = 249
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'DEPT_NO'
    ParentField = 'P_DEPT_NO'
    TabOrder = 2
    Visible = False
    OnDblClick = tlDeptListDblClick
    DataSource = dsDeptList
    Images = dmMain.imglDeptTree
    LookAndFeel = lfFlat
    OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
    OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
    TreeLineColor = clGrayText
    object tlDeptListDEPT_NAME: TdxDBTreeListColumn
      Caption = #272#417'n v'#7883' - ph'#242'ng ban'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DEPT_NAME'
      Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
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
        Caption = 'Ti'#7879'n '#237'ch nh'#7853'p li'#7879'u theo nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList: TActionList
    Images = dmMain.imgAction
    Left = 24
    Top = 104
    object acPhatsinhDulieu: TAction
      Caption = 'acPhatsinhDulieu'
      ImageIndex = 62
      OnExecute = acPhatsinhDulieuExecute
    end
    object acXemdulieu: TAction
      Caption = 'acXemdulieu'
      ImageIndex = 6
      OnExecute = acXemdulieuExecute
    end
    object acInitQuery: TAction
      Caption = 'acInitQuery'
      OnExecute = acInitQueryExecute
    end
    object acCapnhatDulieu: TAction
      Caption = 'acCapnhatDulieu'
      ImageIndex = 57
      OnExecute = acCapnhatDulieuExecute
      OnUpdate = acCapnhatDulieuUpdate
    end
  end
  object qryData: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'FROM_DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'XEM_TUY_CHON'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CHUCVU_HIENTAI'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_NHANVIEN'
      '     , FULL_NAME HOTEN_NHANVIEN'
      '     , STATE'
      '     , DEPT_NAME'
      '     , DISMISS_DATE'
      '     , TITLE_NAME'
      'FROM WE_LUONG_THOIGIAN'
      
        'JOIN HR_GET_NHANVIEN(:FROM_DEPT_NO,:VIEW_ALL,:XEM_TUY_CHON,:USER' +
        '_NAME,:CHUCVU_HIENTAI)'
      'ON EMPLOYEE_NO=MA_NHANVIEN')
    FieldOptions = []
    Left = 24
    Top = 136
    object qryDataMA_NHANVIEN: TWideStringField
      FieldName = 'MA_NHANVIEN'
      Required = True
      Size = 30
    end
    object qryDataHOTEN_NHANVIEN: TWideStringField
      FieldName = 'HOTEN_NHANVIEN'
      ReadOnly = True
      Size = 129
    end
    object qryDataSTATE: TWideStringField
      FieldName = 'STATE'
      Size = 30
    end
    object qryDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDataDISMISS_DATE: TDateField
      FieldName = 'DISMISS_DATE'
    end
    object qryDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
  end
  object qryCongthuc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PA_MA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CT_HINHTHUC'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PA_MA'
      '     , CT_MA'
      '     , CT_KYHIEU'
      '     , CT_TIEUDE'
      '     , CT_KIEUDULIEU'
      '     , CT_HINHTHUC_NHAPLIEU'
      '     , CT_THUTU_HIENTHI'
      'FROM HR_LUONG_CONGTHUC'
      'where PA_MA=:PA_MA and'
      '      CT_HINHTHUC_NHAPLIEU=:CT_HINHTHUC'
      'order by CT_THUTU_HIENTHI')
    FieldOptions = []
    Left = 64
    Top = 136
    object qryCongthucPA_MA: TIntegerField
      FieldName = 'PA_MA'
      Required = True
    end
    object qryCongthucCT_MA: TIntegerField
      FieldName = 'CT_MA'
      Required = True
    end
    object qryCongthucCT_KYHIEU: TWideStringField
      FieldName = 'CT_KYHIEU'
      Required = True
      Size = 63
    end
    object qryCongthucCT_TIEUDE: TWideStringField
      FieldName = 'CT_TIEUDE'
      Required = True
      Size = 126
    end
    object qryCongthucCT_KIEUDULIEU: TWideStringField
      FieldName = 'CT_KIEUDULIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_HINHTHUC_NHAPLIEU: TWideStringField
      FieldName = 'CT_HINHTHUC_NHAPLIEU'
      Required = True
      Size = 30
    end
    object qryCongthucCT_THUTU_HIENTHI: TIntegerField
      FieldName = 'CT_THUTU_HIENTHI'
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 96
    Top = 136
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 24
    Top = 168
  end
  object qryDeptList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '  dept_no,'
      '  dept_name,'
      '  p_dept_no,'
      '  left_index,'
      '  right_index'
      'from HR_MASK_DEPT_LIST(:USER_NAME,null,0)      ')
    FieldOptions = []
    Left = 129
    Top = 137
    object qryDeptListDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryDeptListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDeptListP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDeptListLEFT_INDEX: TIntegerField
      FieldName = 'LEFT_INDEX'
    end
    object qryDeptListRIGHT_INDEX: TIntegerField
      FieldName = 'RIGHT_INDEX'
    end
  end
  object dsDeptList: TDataSource
    DataSet = qryDeptList
    Left = 129
    Top = 169
  end
end
