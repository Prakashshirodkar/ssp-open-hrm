inherited frmLuong_KhoaLuong: TfrmLuong_KhoaLuong
  Left = 304
  Top = 210
  Width = 644
  Height = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 360
    Width = 636
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 636
    Height = 360
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridWagePlanLock: TdxDBGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'L_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      DataSource = dsLuong_KhoaLuong
      Filter.Criteria = {00000000}
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
      object gridWagePlanLockL_ID: TdxDBGridColumn
        Caption = 'ID'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'L_ID'
      end
      object gridWagePlanLockTIEU_DE: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEU_DE'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ'
      end
      object gridWagePlanLockLOCK_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y kh'#243'a'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCK_DATE'
        Caption_UTF7 = 'Ng+AOA-y kh+APM-a'
      end
      object gridWagePlanLockUSER_NAME: TdxDBGridColumn
        Caption = 'Ng'#432#7901'i kh'#243'a'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USER_NAME'
        Caption_UTF7 = 'Ng+AbAe3Q-i kh+APM-a'
      end
      object gridWagePlanLockNGAY_TAO: TdxDBGridDateColumn
        Caption = 'Ng'#224'y t'#237'nh'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAY_TAO'
        Caption_UTF7 = 'Ng+AOA-y t+AO0-nh'
      end
      object gridWagePlanLockNGUOI_TAO: TdxDBGridColumn
        Caption = 'Ng'#432#7901'i t'#7841'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGUOI_TAO'
        Caption_UTF7 = 'Ng+AbAe3Q-i t+HqE-o'
      end
      object gridWagePlanLockTHANG: TdxDBGridColumn
        Caption = 'Th'#225'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THANG'
        Caption_UTF7 = 'Th+AOE-ng'
      end
      object gridWagePlanLockNAM: TdxDBGridColumn
        Caption = 'N'#259'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NAM'
        Caption_UTF7 = 'N+AQM-m'
      end
      object gridWagePlanLockTHANG_NAME: TdxDBGridColumn
        Caption = 'Th'#225'ng n'#259'm'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'THANG_NAME'
        Caption_UTF7 = 'Th+AOE-ng n+AQM-m'
      end
      object gridWagePlanLockPA_MA: TdxDBGridColumn
        Caption = 'PA l'#432#417'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PA_MA'
        Caption_UTF7 = 'PA l+AbABoQ-ng'
      end
      object gridWagePlanLockGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHI_CHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
      object gridWagePlanLockIS_LOCK: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'T'#236'nh tr'#7841'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IS_LOCK'
        DefaultImages = False
        Images = dmMain.imgAction
        ImageIndexes.WideStrings = (
          '37'
          '40')
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'T+AOw-nh tr+HqE-ng'
      end
    end
    object pbMoKhoa: TElPopupButton
      Left = 474
      Top = 333
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
      Caption = 'M'#7903' kho'#225
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 554
      Top = 333
      Width = 80
      Height = 25
      Cursor = crDefault
      ImageIndex = 9
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'ng'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pbKhoa: TElPopupButton
      Left = 399
      Top = 333
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 12
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Kho'#225
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridWagePlanLock
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'New Group'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcKhoa: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = pbKhoa
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcMoKhoa: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = pbMoKhoa
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Caption = 'New Group'
        ShowCaption = False
        ShowBorder = False
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
        Caption = 'Qu'#7843'n l'#253' kh'#243'a d'#7919' li'#7879'u b'#7843'ng l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 96
    Top = 72
    object acInsert: TAction
      Caption = 'acInsert'
      ImageIndex = 12
      OnExecute = acInsertExecute
    end
    object acDelete: TAction
      Caption = 'acDelete'
      ImageIndex = 47
      OnExecute = acDeleteExecute
    end
  end
  object qryLuong_KhoaLuong: TIBOQuery
    Params = <>
    DatabaseName = 'E:\CCHK\Database\HANGKHONG.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryLuong_KhoaLuongAfterScroll
    SQL.Strings = (
      ''
      'select'
      '    hr_get_khoa_bangluong.l_id,'
      '    hr_get_khoa_bangluong.tieu_de,'
      '    hr_get_khoa_bangluong.ngay_tao,'
      '    hr_get_khoa_bangluong.nguoi_tao,'
      '    hr_get_khoa_bangluong.lock_date,'
      '    hr_get_khoa_bangluong.user_name,'
      '    hr_get_khoa_bangluong.thang,'
      '    hr_get_khoa_bangluong.nam,'
      '    hr_get_khoa_bangluong.thang_name,'
      '    hr_get_khoa_bangluong.pa_ma,'
      '    hr_get_khoa_bangluong.ghi_chu,'
      '    hr_get_khoa_bangluong.is_lock'
      'from hr_get_khoa_bangluong'
      
        'order by hr_get_khoa_bangluong.ngay_tao ASC, hr_get_khoa_bangluo' +
        'ng.l_id asc')
    FieldOptions = []
    Left = 264
    Top = 152
    object qryLuong_KhoaLuongL_ID: TIntegerField
      FieldName = 'L_ID'
    end
    object qryLuong_KhoaLuongTIEU_DE: TWideStringField
      FieldName = 'TIEU_DE'
      Size = 240
    end
    object qryLuong_KhoaLuongNGAY_TAO: TDateField
      FieldName = 'NGAY_TAO'
    end
    object qryLuong_KhoaLuongNGUOI_TAO: TWideStringField
      FieldName = 'NGUOI_TAO'
      Size = 60
    end
    object qryLuong_KhoaLuongLOCK_DATE: TDateField
      FieldName = 'LOCK_DATE'
    end
    object qryLuong_KhoaLuongUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Size = 60
    end
    object qryLuong_KhoaLuongTHANG: TIntegerField
      FieldName = 'THANG'
    end
    object qryLuong_KhoaLuongNAM: TIntegerField
      FieldName = 'NAM'
    end
    object qryLuong_KhoaLuongTHANG_NAME: TIntegerField
      FieldName = 'THANG_NAME'
    end
    object qryLuong_KhoaLuongPA_MA: TIntegerField
      FieldName = 'PA_MA'
    end
    object qryLuong_KhoaLuongGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 300
    end
    object qryLuong_KhoaLuongIS_LOCK: TSmallintField
      FieldName = 'IS_LOCK'
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\CCHK\Database\HANGKHONG.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 256
    Top = 216
    object qryExecutePLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryExecuteUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 30
    end
    object qryExecuteLOCK_DATE: TDateField
      FieldName = 'LOCK_DATE'
      Required = True
    end
  end
  object dsLuong_KhoaLuong: TDataSource
    DataSet = qryLuong_KhoaLuong
    Left = 296
    Top = 152
  end
end
