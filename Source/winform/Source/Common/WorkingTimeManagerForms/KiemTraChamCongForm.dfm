inherited frmKiemTraChamCong: TfrmKiemTraChamCong
  Left = 149
  Top = 124
  Width = 809
  Height = 524
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 471
    Width = 801
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 801
    Height = 471
    LookAndFeel = dmMain.StyleWeb
    object ElPanel1: TElPanel [0]
      Left = 2
      Top = 2
      Width = 797
      Height = 442
      Align = alNone
      Color = 15466238
      MouseCapture = False
      TabOrder = 0
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object Splitter2: TSplitter
        Left = 170
        Top = 1
        Height = 440
        Color = 15466238
        ParentColor = False
      end
      object gridDayList: TdxDBGrid
        Left = 1
        Top = 1
        Width = 169
        Height = 440
        Bands = <
          item
            Caption = 'Th'#225'ng '
            Width = 140
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
        OnEnter = gridDayListEnter
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
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
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
          Width = 54
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
          Width = 113
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
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'WEEK_DAY'
        end
      end
      object Panel1: TPanel
        Left = 173
        Top = 1
        Width = 623
        Height = 440
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 1
          Top = 194
          Width = 621
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = 15466238
          ParentColor = False
        end
        object gridWorkTime: TdxDBGrid
          Left = 1
          Top = 197
          Width = 621
          Height = 242
          Bands = <
            item
              Caption = 'D'#7919' li'#7879'u ch'#7845'm c'#244'ng gi'#7901' c'#7911'a nh'#226'n vi'#234'n'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'START_TIME'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
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
          DataSource = dsWorkTime
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
          object gridWorkTimeSTART_TIME: TdxDBGridTimeColumn
            Caption = 'Gi'#7901' v'#224'o '
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'START_TIME'
            Caption_UTF7 = 'Gi+Ht0 v+AOA-o '
          end
          object gridWorkTimeEND_TIME: TdxDBGridTimeColumn
            Caption = 'gi'#7901' ra'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'END_TIME'
            Caption_UTF7 = 'gi+Ht0 ra'
          end
          object gridWorkTimeEND_DATE: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'ng'#224'y ra'
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'END_DATE'
            Descriptions.WideStrings = (
              'c'#249'ng ng'#224'y'
              'h'#244'm sau')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            Caption_UTF7 = 'ng+AOA-y ra'
          end
        end
        object pageDSNV: TElPageControl
          Left = 1
          Top = 1
          Width = 621
          Height = 193
          BorderWidth = 0
          DrawFocus = False
          Flat = False
          HotTrack = True
          Multiline = False
          OnChange = pageDSNVChange
          RaggedRight = False
          ScrollOpposite = False
          Style = etsAngledTabs
          TabIndex = 0
          TabPosition = etpTop
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ActivePage = tabThieuGiovao
          FlatTabBorderColor = clBtnShadow
          DraggablePages = False
          ActiveTabFont.Charset = DEFAULT_CHARSET
          ActiveTabFont.Color = clWindowText
          ActiveTabFont.Height = -11
          ActiveTabFont.Name = 'MS Sans Serif'
          ActiveTabFont.Style = []
          TabCursor = crDefault
          Align = alTop
          ParentColor = False
          TabOrder = 1
          object tabThieuGiovao: TElTabSheet
            PageControl = pageDSNV
            ImageIndex = -1
            TabVisible = True
            Caption = 'Thi'#7871'u gi'#7901' v'#224'o'
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 617
              Height = 170
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object gridThieuGioVao: TdxDBGrid
                Left = 10
                Top = 10
                Width = 472
                Height = 150
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n ch'#7845'm c'#244'ng thi'#7871'u'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'EMPLOYEE_NO'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alTop
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
                DataSource = dsThieuGioVao
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
                OnChangeNode = gridThieuGioVaoChangeNode
                object gridThieuGioVaoEMPLOYEE_NO: TdxDBGridColumn
                  Caption = 'M'#227' NV'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 85
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'EMPLOYEE_NO'
                  Caption_UTF7 = 'M+AOM NV'
                end
                object gridThieuGioVaoFULL_NAME: TdxDBGridColumn
                  Caption = 'H'#7885' v'#224' t'#234'n'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Sorted = csUp
                  Width = 113
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FULL_NAME'
                  Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
                end
                object gridThieuGioVaoDEPT_NAME: TdxDBGridColumn
                  Caption = #272#417'n v'#7883
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 154
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEPT_NAME'
                  Caption_UTF7 = '+ARABoQ-n v+Hss'
                end
                object gridThieuGioVaoTITLE_NAME: TdxDBGridColumn
                  Caption = 'Ch'#7913'c v'#7909
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 135
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NAME'
                  Caption_UTF7 = 'Ch+Huk-c v+HuU'
                end
                object gridThieuGioVaoSOLAN_QUETTHE: TdxDBGridColumn
                  Caption = 'S'#7889' c'#7863'p qu'#7865't th'#7867
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 108
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SOLAN_QUETTHE'
                  Caption_UTF7 = 'S+HtE c+Hrc-p qu+Hrk-t th+Hrs'
                end
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item1: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = gridThieuGioVao
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object tabThieuGioRa: TElTabSheet
            PageControl = pageDSNV
            ImageIndex = -1
            TabVisible = True
            Caption = 'Thi'#7871'u gi'#7901' ra'
            Visible = False
            object dxLayoutControl2: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 617
              Height = 170
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              object gridThieuGioRa: TdxDBGrid
                Left = 10
                Top = 10
                Width = 448
                Height = 150
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n ch'#7845'm c'#244'ng thi'#7871'u'
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'EMPLOYEE_NO'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alTop
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
                DataSource = dsThieuGioRa
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
                OnChangeNode = gridThieuGioRaChangeNode
                object gridThieuGioraEMPLOYEE_NO: TdxDBGridColumn
                  Caption = 'M'#227' NV'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 83
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'EMPLOYEE_NO'
                  Caption_UTF7 = 'M+AOM NV'
                end
                object gridThieuGioraFULL_NAME: TdxDBGridColumn
                  Caption = 'H'#7885' v'#224' t'#234'n'
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Sorted = csUp
                  Width = 130
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FULL_NAME'
                  Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
                end
                object gridThieuGioraDEPT_NAME: TdxDBGridColumn
                  Caption = #272#417'n v'#7883
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 172
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DEPT_NAME'
                  Caption_UTF7 = '+ARABoQ-n v+Hss'
                end
                object gridThieuGioraTITLE_NAME: TdxDBGridColumn
                  Caption = 'Ch'#7913'c v'#7909
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 102
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NAME'
                  Caption_UTF7 = 'Ch+Huk-c v+HuU'
                end
                object gridThieuGioRaSOLAN_QUETTHE: TdxDBGridColumn
                  Caption = 'S'#7889' c'#7863'p qu'#7865't th'#7867
                  Color = clInfoBk
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 108
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SOLAN_QUETTHE'
                  Caption_UTF7 = 'S+HtE c+Hrc-p qu+Hrk-t th+Hrs'
                end
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Item1: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Control = gridThieuGioRa
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 444
      Width = 797
      Color = 15466238
      TabOrder = 1
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 797
        inherited btnClose: TElPopupButton
          Left = 972
        end
        inherited btnHelp: TElPopupButton
          Left = 842
        end
        inherited btnChoose: TElPopupButton
          Left = 912
        end
        inherited btnGenerate: TElPopupButton
          Width = 95
          ImageIndex = 9
          UseImageList = True
          Images = dmMain.imgAction
          Caption = 'Nh'#7853'p nhanh'
          Action = acMultiUpdate
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPanel1'
        ShowCaption = False
        Control = ElPanel1
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
        Caption = 'Ki'#7875'm tra ch'#7845'm c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object memDayList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 31
    Top = 111
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
    Left = 31
    Top = 143
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 31
    Top = 175
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
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 44
    end
    object acMultiDelete: TAction
      Category = 'Dataset'
      Caption = 'acMultiDelete'
      ImageIndex = 40
    end
    object acMultiUpdate: TAction
      Category = 'Dataset'
      Caption = 'acMultiUpdate'
      ImageIndex = 9
      OnExecute = acMultiUpdateExecute
    end
  end
  object qryKiemTraCC: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'NGAY_BD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NGAY_KT'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\1 projects on 192.168.9.233\2009\SSP-HRM 3.0\S' +
      'SP-HRM\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_working_time.work_date '
      'from hr_working_time '
      'where hr_working_time.start_time = hr_working_time.end_time '
      'and hr_working_time.work_date between :NGAY_BD and :NGAY_KT'
      'group by hr_working_time.work_date')
    FieldOptions = []
    Left = 64
    Top = 112
    object qryKiemTraCCWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      ReadOnly = True
      Required = True
    end
  end
  object qryThieuGioVao: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'work_date'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\1 projects on 192.168.9.233\2009\SSP-HRM 3.0\S' +
      'SP-HRM\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDayList
    SQL.Strings = (
      'select'
      '   hr_assignment.employee_no,'
      
        '   hr_employee.last_name||'#39' '#39'||hr_employee.middle_name||'#39' '#39'||hr_' +
        'employee.first_name FULL_NAME,'
      '   hr_department.dept_name,'
      '   hr_title.title_name,'
      '   (select count(hr_working_time.employee_no)'
      '        from hr_working_time'
      
        '        where hr_working_time.employee_no = hr_assignment.employ' +
        'ee_no'
      
        '        and  hr_working_time.work_date = :work_date) Solan_quett' +
        'he,'
      '   hr_working_time.dept_no,'
      '   hr_working_time.title_no'
      '  from hr_assignment'
      
        '  join hr_working_time on hr_assignment.employee_no=hr_working_t' +
        'ime.employee_no '
      '  left join hr_employee'
      '     on hr_assignment.employee_no=hr_employee.employee_no'
      
        '  left join hr_position on hr_assignment.position_no=hr_position' +
        '.position_no'
      '  left join hr_title on hr_position.title_no=hr_title.title_no'
      
        '  left join hr_department on hr_position.dept_no=hr_department.d' +
        'ept_no'
      
        '  left join hr_off_work on hr_assignment.employee_no = hr_off_wo' +
        'rk.employee_no '
      '  and hr_assignment.dismiss_date = hr_off_work.off_date '
      '  where'
      '     (hr_assignment.is_main_position=1) and'
      '     ((hr_off_work.off_date is null) or'
      '      (hr_off_work.off_date >= :work_date)) and'
      '      hr_assignment.assigned_date <= :work_date and'
      '     (hr_working_time.work_date = :work_date) and'
      '     (hr_working_time.start_time = hr_working_time.end_time) and'
      '     (hr_working_time.start_time >= '#39'12:30:00'#39')'
      '  group by hr_assignment.employee_no,'
      
        '   hr_employee.last_name,hr_employee.middle_name,hr_employee.fir' +
        'st_name,'
      '   hr_department.dept_name,'
      '   hr_title.title_name,'
      '   hr_working_time.dept_no,'
      '   hr_working_time.title_no')
    FieldOptions = []
    Left = 184
    Top = 56
    object qryThieuGioVaoEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryThieuGioVaoFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryThieuGioVaoDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryThieuGioVaoTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryThieuGioVaoSOLAN_QUETTHE: TIntegerField
      FieldName = 'SOLAN_QUETTHE'
      ReadOnly = True
    end
    object qryThieuGioVaoDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryThieuGioVaoTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
  end
  object dsThieuGioVao: TDataSource
    DataSet = qryThieuGioVao
    Left = 183
    Top = 87
  end
  object qryWorkTime: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'employee_no'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'work_date'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'dept_no'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'title_no'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\1 projects on 192.168.9.233\2009\SSP-HRM 3.0\S' +
      'SP-HRM\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORKING_TIME'
      'WHERE'
      '   WT_ID = :OLD_WT_ID')
    EditSQL.Strings = (
      'UPDATE HR_WORKING_TIME SET'
      '   '
      '   EMPLOYEE_NO = :EMPLOYEE_NO,'
      '   WORK_DATE = :WORK_DATE,'
      '   START_TIME = :START_TIME,'
      '   END_TIME = :END_TIME,'
      '   END_DATE = :END_DATE,'
      '   DEPT_NO = :DEPT_NO,'
      '   TITLE_NO = :TITLE_NO'
      'WHERE'
      '   WT_ID = :OLD_WT_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORKING_TIME('
      '  '
      '   EMPLOYEE_NO,'
      '   WORK_DATE,'
      '   START_TIME,'
      '   END_TIME,'
      '   END_DATE,'
      '   DEPT_NO,'
      '   TITLE_NO)'
      'VALUES ('
      '  '
      '   :EMPLOYEE_NO,'
      '   :WORK_DATE,'
      '   :START_TIME,'
      '   :END_TIME,'
      '   :END_DATE,'
      '   :DEPT_NO,'
      '   :TITLE_NO)')
    KeyLinks.Strings = (
      'hr_working_time.employee_no'
      'hr_working_time.work_date'
      'hr_working_time.start_time')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryWorkTimeAfterPost
    OnNewRecord = qryWorkTimeNewRecord
    DataSource = dsDayList
    SQL.Strings = (
      'select hr_working_time.wt_id,'
      '       hr_working_time.employee_no,'
      '       hr_working_time.work_date ,'
      '       hr_working_time.start_time ,'
      '       hr_working_time.end_time,'
      '       hr_working_time.end_date,'
      '       hr_working_time.dept_no,'
      '       hr_working_time.title_no  '
      'from hr_working_time'
      'where hr_working_time.employee_no = :employee_no'
      'and hr_working_time.work_date = :work_date'
      'and hr_working_time.dept_no = :dept_no'
      'and hr_working_time.title_no = :title_no'
      'order by end_date, start_time')
    FieldOptions = []
    Left = 192
    Top = 200
    object qryWorkTimeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryWorkTimeWORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Required = True
    end
    object qryWorkTimeSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qryWorkTimeEND_TIME: TTimeField
      FieldName = 'END_TIME'
    end
    object qryWorkTimeEND_DATE: TIntegerField
      FieldName = 'END_DATE'
    end
    object qryWorkTimeWT_ID: TIntegerField
      FieldName = 'WT_ID'
      Required = True
    end
    object qryWorkTimeDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryWorkTimeTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
  end
  object dsWorkTime: TDataSource
    DataSet = qryWorkTime
    Left = 191
    Top = 231
  end
  object qryThieuGioRa: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'work_date'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\1 projects on 192.168.9.233\2009\SSP-HRM 3.0\S' +
      'SP-HRM\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDayList
    SQL.Strings = (
      'select'
      '   hr_assignment.employee_no,'
      
        '   hr_employee.last_name||'#39' '#39'||hr_employee.middle_name||'#39' '#39'||hr_' +
        'employee.first_name FULL_NAME,'
      '   hr_department.dept_name,'
      '   hr_title.title_name,'
      '   (select count(hr_working_time.employee_no)'
      '        from hr_working_time'
      
        '        where hr_working_time.employee_no = hr_assignment.employ' +
        'ee_no'
      
        '        and  hr_working_time.work_date = :work_date) Solan_quett' +
        'he,'
      '    hr_working_time.dept_no,'
      '   hr_working_time.title_no'
      '  from hr_assignment'
      
        '  join hr_working_time on hr_assignment.employee_no=hr_working_t' +
        'ime.employee_no '
      '  left join hr_employee'
      '     on hr_assignment.employee_no=hr_employee.employee_no'
      
        '  left join hr_position on hr_assignment.position_no=hr_position' +
        '.position_no'
      '  left join hr_title on hr_position.title_no=hr_title.title_no'
      
        '  left join hr_department on hr_position.dept_no=hr_department.d' +
        'ept_no'
      
        '  left join hr_off_work on hr_assignment.employee_no = hr_off_wo' +
        'rk.employee_no '
      '  and hr_assignment.dismiss_date = hr_off_work.off_date '
      '  where'
      '     (hr_assignment.is_main_position=1) and'
      '     ((hr_off_work.off_date is null) or'
      '      (hr_off_work.off_date >= :work_date)) and'
      '      hr_assignment.assigned_date <= :work_date and'
      '     (hr_working_time.work_date = :work_date) and'
      '     (hr_working_time.start_time = hr_working_time.end_time) and'
      '     (hr_working_time.start_time < '#39'12:30:00'#39')'
      '  group by hr_assignment.employee_no,'
      
        '   hr_employee.last_name,hr_employee.middle_name,hr_employee.fir' +
        'st_name,'
      '   hr_department.dept_name,'
      '   hr_title.title_name,'
      '   hr_working_time.dept_no,'
      '   hr_working_time.title_no')
    FieldOptions = []
    Left = 216
    Top = 56
    object qryThieuGioRaEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryThieuGioRaFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryThieuGioRaDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryThieuGioRaTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryThieuGioRaSOLAN_QUETTHE: TIntegerField
      FieldName = 'SOLAN_QUETTHE'
      ReadOnly = True
    end
    object qryThieuGioRaDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryThieuGioRaTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
  end
  object dsThieuGioRa: TDataSource
    DataSet = qryThieuGioRa
    Left = 215
    Top = 87
  end
end
