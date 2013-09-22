inherited frmNghiViecTool: TfrmNghiViecTool
  Left = 280
  Top = 134
  Width = 793
  Height = 566
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 513
    Width = 785
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 785
    Height = 513
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object panelMain: TPanel
      Left = 2
      Top = 2
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 5
      object pageOrigin: TElPageControl
        Left = 0
        Top = 0
        Width = 417
        Height = 41
        BorderWidth = 0
        DrawFocus = False
        Flat = True
        HotTrack = True
        Multiline = False
        RaggedRight = False
        ScrollOpposite = False
        ShowBorder = False
        Style = etsAngledTabs
        TabIndex = 0
        TabPosition = etpTop
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clBlue
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        ActivePage = tabDSBonhiem
        FlatTabBorderColor = clBtnShadow
        DraggablePages = False
        ActiveTabFont.Charset = DEFAULT_CHARSET
        ActiveTabFont.Color = clWindowText
        ActiveTabFont.Height = -11
        ActiveTabFont.Name = 'MS Sans Serif'
        ActiveTabFont.Style = []
        TabCursor = crDefault
        Align = alLeft
        ParentColor = False
        TabOrder = 0
        object tabDSBonhiem: TElTabSheet
          PageControl = pageOrigin
          ImageIndex = -1
          TabVisible = True
          Caption = 'Danh s'#225'ch v'#7883' tr'#237' '#273'ang c'#244'ng t'#225'c'
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 417
            Height = 145
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object dxLayoutControl2: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 417
              Height = 145
              Align = alClient
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = dmMain.StyleWeb
              object dxSelectDept: TdxPopupEdit
                Left = 108
                Top = 28
                Width = 192
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 0
                OnClick = dxSelectDeptClick
                StyleController = dmMain.StyleController
                OnCloseUp = dxSelectDeptCloseUp
                OnInitPopup = dxSelectDeptInitPopup
              end
              object dxViewChild: TdxCheckEdit
                Left = 380
                Top = 28
                Width = 23
                Color = 15466238
                ParentColor = False
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 1
                Alignment = taRightJustify
                StyleController = dmMain.StyleController
                StoredValues = 1
              end
              object dxDenNgay: TdxDateEdit
                Left = 108
                Top = 51
                Width = 192
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 2
                StyleController = dmMain.StyleController
                Date = -700000.000000000000000000
              end
              object btnXemThongTin: TElPopupButton
                Left = 308
                Top = 51
                Width = 95
                Height = 25
                Cursor = crDefault
                Hint = 'Xem th'#244'ng tin v'#7883' tr'#237' c'#244'ng t'#225'c'
                ImageIndex = 6
                UseImageList = True
                Images = dmMain.imgAction
                DrawDefaultFrame = False
                LinkColor = clBlue
                LinkStyle = [fsUnderline]
                NumGlyphs = 1
                UseXPThemes = True
                Caption = 'L'#7845'y DS'
                TabOrder = 3
                Color = 15466238
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                Action = acLoadDSViTri
                DockOrientation = doNoOrient
                DoubleBuffered = False
              end
              object dxNgayQD: TdxDateEdit
                Left = 288
                Top = 109
                Width = 192
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsHotFlat
                TabOrder = 5
                StyleController = dmMain.StyleController
                Date = -700000.000000000000000000
              end
              object dxSoQD: TdxEdit
                Left = 108
                Top = 109
                Width = 121
                Style.BorderColor = 5146545
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                TabOrder = 4
                StyleController = dmMain.StyleController
              end
              object dxLayoutGroup1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Group3: TdxLayoutGroup
                  Caption = 'Th'#244'ng tin c'#7847'n xem danh s'#225'ch'
                  object dxLayoutGroup2: TdxLayoutGroup
                    Caption = 'New Group'
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutItem1: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = #272#417'n v'#7883' - ph'#242'ng ban'
                      Control = dxSelectDept
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl2Item2: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      Caption = 'Xem c'#7845'p d'#432#7899'i'
                      Control = dxViewChild
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl2Group2: TdxLayoutGroup
                    Caption = 'New Group'
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl2Item3: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = #272#7871'n ng'#224'y'
                      Control = dxDenNgay
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl2Item4: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = btnXemThongTin
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutControl2Group4: TdxLayoutGroup
                  Caption = 'Th'#244'ng s'#7889' quy'#7871't '#273#7883'nh '#7843'o'
                  LayoutDirection = ldHorizontal
                  object dxLayoutControl2Item6: TdxLayoutItem
                    Caption = 'S'#7889' quy'#7871't '#273#7883'nh'
                    Control = dxSoQD
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ng'#224'y ra Q'#272
                    Control = dxNgayQD
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object tlToChuc_NhanVien: TdxDBTreeList
            Left = 0
            Top = 145
            Width = 417
            Height = 318
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ITEM_NO'
            ParentField = 'P_ITEM_NO'
            Align = alClient
            DragMode = dmAutomatic
            TabOrder = 1
            OnDragDrop = tlToChuc_NhanVienDragDrop
            OnDragOver = tlToChuc_NhanVienDragOver
            DataSource = dsToChuc_NhanVien
            ImageIndexFieldName = 'ICON_INDEX'
            Images = imglDeptTree
            LookAndFeel = lfFlat
            OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete]
            OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
            TreeLineColor = clGrayText
            OnBeginDragNode = tlToChuc_NhanVienBeginDragNode
            OnCustomDrawCell = tlToChuc_NhanVienCustomDrawCell
            object tlToChuc_NhanVienITEM_NO: TdxDBTreeListColumn
              Caption = 'M'#227
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ITEM_NO'
              Caption_UTF7 = 'M+AOM'
            end
            object tlToChuc_NhanVienITEM_NAME: TdxDBTreeListMRUColumn
              Caption = #272#417'n v'#7883' / Nh'#226'n vi'#234'n'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 213
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ITEM_NAME'
              ImmediateDropDown = True
              Caption_UTF7 = '+ARABoQ-n v+Hss / Nh+AOI-n vi+AOo-n'
            end
            object tlToChuc_NhanVienPOSITION_NO: TdxDBTreeListColumn
              Caption = 'M'#227' v'#7883' tr'#237
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'POSITION_NO'
              Caption_UTF7 = 'M+AOM v+Hss tr+AO0'
            end
            object tlToChuc_NhanVienDEPT_NO: TdxDBTreeListColumn
              Caption = 'M'#227' '#273#417'n v'#7883
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NO'
              Caption_UTF7 = 'M+AOM +AREBoQ-n v+Hss'
            end
            object tlToChuc_NhanVienTITLE_NO: TdxDBTreeListColumn
              Caption = 'M'#227' ch'#7913'c v'#7909
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 92
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NO'
              Caption_UTF7 = 'M+AOM ch+Huk-c v+HuU'
            end
            object tlToChuc_NhanVienTITLE_NAME: TdxDBTreeListMRUColumn
              Caption = 'Ch'#7913'c v'#7909' t'#7841'i th'#7901'i '#273'i'#7875'm'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 123
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              ImmediateDropDown = True
              Caption_UTF7 = 'Ch+Huk-c v+HuU t+HqE-i th+Ht0-i +ARE-i+HsM-m'
            end
            object tlToChuc_NhanVienASSIGNED_DATE: TdxDBTreeListDateColumn
              Caption = 'Ng'#224'y B'#272
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ASSIGNED_DATE'
              Caption_UTF7 = 'Ng+AOA-y B+ARA'
            end
            object tlToChuc_NhanVienPHAN_LOAI: TdxDBTreeListColumn
              Caption = 'Ph'#226'n lo'#7841'i'
              Color = clInfoBk
              DisableEditor = True
              Visible = False
              Width = 99
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PHAN_LOAI'
              Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
            end
            object tlToChuc_NhanVienP_ITEM_NO: TdxDBTreeListColumn
              Color = clInfoBk
              DisableEditor = True
              Visible = False
              Width = 92
              BandIndex = 0
              RowIndex = 0
              FieldName = 'P_ITEM_NO'
            end
            object tlToChuc_NhanVienEMPLOYEE_NO: TdxDBTreeListColumn
              Caption = 'M'#227' NV'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM NV'
            end
          end
        end
      end
      object ElPanel1: TElPanel
        Left = 417
        Top = 0
        Width = 364
        Height = 41
        Align = alClient
        MouseCapture = False
        TabOrder = 1
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object dxLayoutControl3: TdxLayoutControl
          Left = 1
          Top = 1
          Width = 362
          Height = 165
          Align = alTop
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object viewMessage: TElMemoCombo
            Left = 3
            Top = 3
            Width = 496
            Height = 70
            Cursor = crIBeam
            VertScrollBarStyles.ShowTrackHint = False
            VertScrollBarStyles.Width = 17
            VertScrollBarStyles.ButtonSize = 17
            VertScrollBarStyles.UseXPThemes = False
            HorzScrollBarStyles.ShowTrackHint = False
            HorzScrollBarStyles.Width = 17
            HorzScrollBarStyles.ButtonSize = 17
            HorzScrollBarStyles.UseXPThemes = False
            UseCustomScrollBars = True
            NotifyUserChangeOnly = True
            DropHeight = 80
            DropWidth = 200
            Dropped = False
            MemoAlignment = taLeftJustify
            MemoColor = clWindow
            MemoFont.Charset = DEFAULT_CHARSET
            MemoFont.Color = clWindowText
            MemoFont.Height = -11
            MemoFont.Name = 'Tahoma'
            MemoFont.Style = []
            MemoMaxLength = 0
            MemoScrollBars = ssVertical
            MemoWordWrap = True
            MemoActiveBorderType = fbtSunken
            MemoFlatScrollBars = False
            RightMargin = 1
            RTLContent = False
            BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
            Transparent = False
            WantTabs = True
            HideSelection = False
            ScrollBars = ssVertical
            Multiline = True
            ActiveBorderType = fbtLineBorder
            BorderStyle = bsNone
            ButtonColor = clBtnFace
            ButtonWidth = 15
            Ctl3D = True
            DragMode = dmAutomatic
            ParentColor = False
            ParentCtl3D = False
            ReadOnly = True
            DockOrientation = doVertical
            DoubleBuffered = False
          end
          object dxLayoutGroup3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutItem2: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'New Item'
              ShowCaption = False
              Control = viewMessage
            end
          end
        end
        object gridThoiViec: TdxDBGrid
          Left = 1
          Top = 166
          Width = 362
          Height = 317
          Bands = <
            item
              Caption = 'Danh s'#225'ch v'#7883' tr'#237' th'#244'i vi'#7879'c'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ASS_KEY_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          DragMode = dmAutomatic
          TabOrder = 1
          OnDragDrop = gridThoiViecDragDrop
          OnDragOver = gridThoiViecDragOver
          DataSource = dsViTriThoiViec
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          OnBeginDragNode = gridThoiViecBeginDragNode
          object gridThoiViecASS_KEY_ID: TdxDBGridColumn
            Caption = 'ID'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 216
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ASS_KEY_ID'
          end
          object gridThoiViecEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' NV'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            Width = 624
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM NV'
          end
          object gridThoiViecFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' t'#234'n NV'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            Width = 2453
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            GroupIndex = 0
            Caption_UTF7 = 'H+Hs0 t+AOo-n NV'
          end
          object gridThoiViecDEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss'
          end
          object gridThoiViecTITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c v'#7909
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c v+HuU'
          end
          object gridThoiViecASSIGNED_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y B'#272
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ASSIGNED_DATE'
            Caption_UTF7 = 'Ng+AOA-y B+ARA'
          end
          object gridThoiViecDISMISS_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y KT'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISMISS_DATE'
            Caption_UTF7 = 'Ng+AOA-y KT'
          end
        end
      end
    end
    object ElPopupButton5: TElPopupButton
      Left = 633
      Top = 486
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
      Caption = #272#7891'&ng '#253
      TabOrder = 0
      Color = 15466238
      ParentColor = False
      Action = acChapnhan
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton8: TElPopupButton
      Left = 708
      Top = 486
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
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup4: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutItem3: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = panelMain
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton8'
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
        Caption = 'Ti'#7879'n '#237'ch th'#244'i vi'#7879'c cho CNV'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object memToChuc_NhanVien: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memToChuc_NhanVienBeforeDelete
    Left = 50
    Top = 195
    object memToChuc_NhanVienITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 120
    end
    object memToChuc_NhanVienASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
      Required = True
    end
    object memToChuc_NhanVienITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Size = 30
    end
    object memToChuc_NhanVienITEM_DISPLAY_INDEX: TSmallintField
      FieldName = 'ITEM_DISPLAY_INDEX'
    end
    object memToChuc_NhanVienPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object memToChuc_NhanVienDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object memToChuc_NhanVienDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 125
    end
    object memToChuc_NhanVienTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
    object memToChuc_NhanVienTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 120
    end
    object memToChuc_NhanVienP_ITEM_NO: TWideStringField
      FieldName = 'P_ITEM_NO'
      Size = 30
    end
    object memToChuc_NhanVienPHAN_LOAI: TWideStringField
      FieldName = 'PHAN_LOAI'
      Size = 30
    end
    object memToChuc_NhanVienICON_INDEX: TSmallintField
      FieldName = 'ICON_INDEX'
    end
    object memToChuc_NhanVienEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
  end
  object qryTochuc_Nhanvien: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'user_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'den_ngay'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_CHILD'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select item_no,'
      '    item_name ,'
      '    item_display_index,'
      '    position_no,'
      '    dept_no,'
      '    dept_name,'
      '    title_no,'
      '    title_name ,'
      '    assigned_date,'
      '    p_item_no,'
      '    phan_loai,'
      '    icon_index,'
      '    employee_no'
      
        'from hr_ds_phongban_nhanvien(:user_name,:den_ngay,:IN_DEPT_NO,:V' +
        'IEW_CHILD)'
      'where dismiss_date is null'
      'order by phan_loai desc,item_display_index,item_name')
    FieldOptions = []
    Left = 81
    Top = 195
    object qryTochuc_NhanvienITEM_NO: TWideStringField
      FieldName = 'ITEM_NO'
      Size = 30
    end
    object qryTochuc_NhanvienITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 150
    end
    object qryTochuc_NhanvienITEM_DISPLAY_INDEX: TIntegerField
      FieldName = 'ITEM_DISPLAY_INDEX'
    end
    object qryTochuc_NhanvienPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryTochuc_NhanvienDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryTochuc_NhanvienDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 150
    end
    object qryTochuc_NhanvienTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
    object qryTochuc_NhanvienTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 150
    end
    object qryTochuc_NhanvienASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object qryTochuc_NhanvienP_ITEM_NO: TWideStringField
      FieldName = 'P_ITEM_NO'
      Size = 30
    end
    object qryTochuc_NhanvienPHAN_LOAI: TWideStringField
      FieldName = 'PHAN_LOAI'
      Size = 30
    end
    object qryTochuc_NhanvienICON_INDEX: TSmallintField
      FieldName = 'ICON_INDEX'
    end
    object qryTochuc_NhanvienEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
  end
  object dsToChuc_NhanVien: TDataSource
    DataSet = memToChuc_NhanVien
    Left = 50
    Top = 227
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 81
    Top = 227
    object acLoadDSViTri: TAction
      Caption = 'acLoadDSViTri'
      ImageIndex = 6
      OnExecute = acLoadDSViTriExecute
    end
    object acInitFinalList: TAction
      Caption = 'acInitFinalList'
    end
    object acChapnhan: TAction
      Caption = 'acChapnhan'
      ImageIndex = 9
      OnExecute = acChapnhanExecute
      OnUpdate = acChapnhanUpdate
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acBoquaExecute
    end
    object acDMViTri: TAction
      Caption = 'acDMViTri'
      ImageIndex = 21
    end
  end
  object imglDeptTree: TImageList
    BlendColor = clBtnFace
    BkColor = 14215660
    DrawingStyle = dsTransparent
    Left = 80
    Top = 262
    Bitmap = {
      494C010105000900040010001000ECE9D800FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00969696FF2B2B2BFF040201FF0F0F0FFF5B5B5BFFE5E5E5FFD8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC004949
      49FF65420DFF9F6714FF9D6413FF9A6113FF975D13FF945A12FF8C5410FF140C
      02FFE3E3E3FFD8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00130E04FFA871
      17FFA56D16FF955B12FF925711FF925711FF925711FF925711FF945912FF9157
      11FF70420DFF9B9B9BFFD8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00110E09FFAD7819FFA56E
      16FF995F13FF995F13FF955C15FFF0E9E2FF9C682EFF995F13FF995F13FF995F
      12FF915711FF77450EFFD2D2D2FFD8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B9B9BFFB37E1AFFAE7919FF9F67
      14FF9F6714FF9F6714FFCDAF83FFFFFFFFFFEBDFCEFF9F6714FF9F6714FF9F67
      14FF9F6614FF915711FF251504FFD8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000211805FFB6811BFFA66F16FFA66F
      16FFA66F16FFA66F16FFA66F16FFAC7E41FFA66F16FFA66F16FFA66F16FFA66F
      16FFA66F16FF975D12FF915711FFC2C2C2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A6415FFB8851CFFAC7618FFAC76
      18FFAC7618FFAC7618FFBA8E46FFFFFFFFFFD4BA90FFAC7618FFAC7618FFAC76
      18FFAC7618FFA66F16FF945A12FF3C3C3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7861CFFBB881DFFB27D1AFFB27D
      1AFFB27D1AFFB27D1AFFC9A35DFFFFFFFFFFFFFFFFFFEFE6DBFFB17C1AFFB27D
      1AFFB27D1AFFB17B19FF975D13FF040302FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BA881DFFBE8B1EFFB8841CFFB884
      1CFFB8841CFFB8841CFFB8841CFFDBC18BFFFEFEFEFFFFFFFFFFE2CEACFFB884
      1CFFB8841CFFB27D1AFF9A6113FF030200FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D6D15FFC18F1EFFBD8B1DFFBD8B
      1DFFBD8B1DFFFFFFFFFFD8BE8DFFBD8B1DFFD9BE88FFFFFFFFFFFBF8F2FFBD8B
      1DFFBD8B1DFFA66E16FF9D6413FF191919FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000462805FFC3921FFFC18F1FFFC391
      1FFFC3911FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C991FFC391
      1FFFC2901FFFA26A15FF9C6313FF777777FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000262626FFBB871BFFC3921FFFC593
      1FFFC99721FFD6B159FFFFFFFFFFFFFFFFFFFFFFFFFFEEDEB9FFC99721FFC997
      20FFA87117FFA56E16FF663708FFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF5A3406FFC6931FFFC392
      1FFFC2901FFFCD9C21FFCD9C22FFCD9C22FFCD9C22FFCD9C22FFC28F1EFFAD78
      19FFAA7418FF94590EFF313131FFD8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00A5A5A5FF814E08FFBE8A
      1BFFC3921FFFC18F1EFFBE8B1EFFBB881DFFB8851CFFB6811BFFB37E1AFFB07B
      19FF995E0CFF110A02FFD8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00B1B1B1FF5234
      04FFA86E08FFBD8816FFC18F1EFFBE8B1EFFBB881DFFB8841AFFAE760DFF9C62
      08FF131110FFD8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC004B4B4BFF402B02FF9A6C04FFC58E04FFB88404FF734F03FF0E0A04FFBEBE
      BEFFD8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FBFBFB00F5F5F500F0F0
      F000EAEAEA00E5E5E500E0E0E000DCDCDC00DEDEDE00E2E2E200E7E7E700EDED
      ED00F3F3F300F8F8F800FDFDFD00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FEFEFE00D8E9EC00FEFEFE00F4F4
      F400E2E2E200DADADA00C9C9C900C1C1C100C1C1C100C6C6C600D5D5D500DDDD
      DD00F0F0F000FCFCFC00D8E9EC00D8E9EC00D8E9EC00FBFBFB00F5F5F500F0F0
      F000EAEAEA00E5E5E500E0E0E000DCDCDC00DEDEDE00E2E2E200E7E7E700EDED
      ED00F3F3F300F8F8F800FDFDFD00D8E9EC00D8E9EC00D8E9EC00D8E9EC008CB1
      7E006C9651005D924C005D924C005D924C006C9651008CB17E00A7BB9D00BDB9
      B000C7CCBB00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B2AE
      C4006B68B7005A58B9005A58B9005A58B9006B68B7008790B400A8A7A400C2BF
      BE00C2BFBE00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00F2F2F200DBDB
      DB00CDCDCD00D7D7D700DBDBDB00DEDEDE00DEDEDE00DBDBDB00E0E0E000C7C7
      C700D6D6D600ECECEC00FEFEFE00D8E9EC00D8E9EC00D8E9EC00D8E9EC00A0D1
      AE0007962B0003B22800069A2A00D8E9EC001D933D0001C0270003B22900069D
      2A00B0D9BD00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC008CB17E005D92
      4C006C9651006C9651006C96510079A35A006C9651006C9651006C9651008CB1
      7E00BDB9B000C7CCBB00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D2D1D300625F
      CE005654DD005B59E300605FEB00605FEB00625FCE00625FCE00625FCE008082
      C400B4B1B000C2BFBE00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00CDCDCD00C4C4C400C5C5C500D1D1D100D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC001591
      370002C42A0002C22A0006932900D8E9EC0061AE760003BE290002BF290002C2
      290068B17E00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006C9651006C96
      51006C9651007DB16D007DB16D008CB17E00ACD29D006C96510079A35A006C96
      51006C965100C7CCBB00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C2BFBE005654
      DD00605FEB007170EA008181F4007170EA00D2B5EF009E90DE00605FEB005654
      DD005A58B900C2BFBE00D8E9EC00D8E9EC00D8E9EC00F3F3F300B0B0B000B4B4
      B400B4B4B400B5B5B5008C8C8C0063636300585858006C6C6C00B5B5B500B5B5
      B500B4B4B400B1B1B100EEEEEE00D8E9EC00D8E9EC00D8E9EC00D8E9EC001392
      360007C7330007C933009AC9A800D8E9EC00D8E9EC0059A9710007C4310007C3
      300069B27F00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C7CCBB006C96
      510079A35A007DB16D007DB16D00E3F8C600E3F8C6007DB16D007DB16D0079A3
      5A005D924C00D1D2D000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC007B76
      D400605FEB008181F4008181F4009E90DE00FBEBF700D2B5EF007170EA007170
      EA005A58B900D2D1D300D8E9EC00D8E9EC00D8E9EC00BEBEBE00E4E4E400E9E9
      E900EBEBEB00EEEEEE00E7E7E700E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300C6C6C600D8E9EC00D8E9EC00D8E9EC00D8E9EC001394
      36000DCE3B000DCD3C000BAC33007EBC900085C096000A982F000CC438000CC4
      380069B27F00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00A7BB
      9D006C96510079A35A00ACD29D00E3F8C600E3F8C6008CB17E008CB17E0079A3
      5A00A7BB9D00E2E1DF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D2D1
      D3005654DD007170EA007B76D400D2B5EF00FFCCFF00D2B5EF008181F4007170
      EA00B2AEC400E7E3DD00D8E9EC00D8E9EC00D8E9EC00C1C1C100ECEDED00F0F0
      F100F1F2F200F2F3F300F3F5F500EDEEEE00EBECEC00EBECEC00ECECED00ECEC
      ED00ECECED00ECEDED00C8C8C800D8E9EC0081BE92000E9A340099C9A60010B3
      3C0013D0450012CE430012CD420013CD420012CB410011C7400010C43E0011C4
      3D00339950003E9D5800128E3500EEF6F000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00A7BB9D007DB16D006DB0BC006DB0BC008BBECE007DB16D007DB16D00A7BB
      9D00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D2D1D3006B68B7008082C4008082C4008082C4009E90DE007B76D400B2AE
      C400D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C3C4C400AE6E4800C56A
      2600D17B3A00DD8D5000E99E6500F6AC7A00FCB78600F3AA7600E79A6100DC89
      4C00D0783600AA673F00CBCCCC00D8E9EC001FAC460016D74C0024DB57001BD8
      500017D24B0016CF490016CD480015CB480015C9460014C7450014C5440013C2
      420015C3430014C242001DC348003AA15600D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00C6D7E10061A5CD0061A5CD0061A5CD00599FCB00659EAE00C7CCBB00E2E1
      DF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D2D1
      D3007674740062605E005D6B87005D7ABA005D7ABA005D7ABA00C2BFBE00D2D1
      D300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C5C5C500B0734C00C56C
      2900D07C3C00DC8C5100E79A6300EEA77200F1AB7800EDA46F00E4985F00DA89
      4D00CF793900AB6B4300CDCECE00D8E9EC002D984B006BEB910040AE5F0069CF
      860017DA51001AD14F0019CE4D0019CC4C0018C94B0018C74A0017C5480019C4
      49004AAD650069C983006FD78C0066B27C00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0069ACD20077BDE5006FB5DB006FB5DB006FB5DB0069ACD200ADC3CF00E2E1
      DF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00E7E3DD006260
      5E0062605E005D6B87006E93D9006E93D9006E93D9006E93D9008790B400D2D1
      D300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C8C8C800AF724B00C269
      2600CB763400D6844500DE905500E4986000E79B6400E4975F00DD8E5200D582
      4200CA743100AA684000D0D1D100D8E9EC00D8E9EC00E4F1E700D8E9EC00429E
      5A001AE1590022E25F0021E15E001FD557001CCB51001BC64D001AC34B0025C7
      540071B58300D8E9EC00E5F1E800D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6D7
      E10077BDE5007EC5F0007EC5F00077BDE50077BDE50077BDE50082B3CD00E2E1
      DF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC008D8D8E006260
      5E0062605E006D8CBA006E93D9006E93D9006E93D9006E93D9006E93D900D2D1
      D300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00CACBCB00AC6E4600BD64
      2000C9753400D07C3D00D5824300DA894C00DB8C4F00DA884C00D5824200CC77
      3500C46A2700A7643900D2D2D200D8E9EC00D8E9EC00D8E9EC00D8E9EC00439F
      5B0020E7610028E7670028E7670028E7670028E8680028E9690028E9680034EF
      73006CB27F00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00ABD0
      E4008BD3FD008BD3FD008BD3FD007EC5F0008BD3FD007EC5F00082B3CD00E2E1
      DF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0062605E006260
      5E0062605E006D8CBA0079B1F50079B1F50079B1F50079B1F5006E93D900D2D1
      D300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00CCCCCC00AB6D4600B65B
      1600C06A2800CA783900D1844800D5894F00D3854800CF7B3C00C9732F00C368
      2400B95D1700A25D3100D3D4D400D8E9EC00D8E9EC00D8E9EC00D8E9EC00449F
      5C0039F17B003FF17F0037EF79002CED71002AED70003FF17E003EF17E004FF8
      8B006AB17E00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099C2
      D8008BD3FD008BD3FD008BD3FD008BD3FD008BD3FD008BD3FD008BBECE00E2E1
      DF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC008D8D8E006260
      5E00767474006979900079B1F50079B1F50079B1F50079B1F50079B1F500D2D1
      D300D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00CECECE00AC6E4600B358
      1300B75F1A00BF6B2900C8763600CB7D4000CE834700CF854A00CE864C00CB85
      4B00C9834900B07A5B00D5D6D600D8E9EC00D8E9EC00D8E9EC00D8E9EC00C9E2
      CF00459F5D0047A160005BAB710048F588009CD8AE0047A05F0046A05E00429E
      5C00EFF6F100D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC007588
      8A005492B30073AAC90073AAC9005492B30044829D005492B30075888A00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC006260
      5E0062605E0062605E0062605E005D6B87005F82C4005F82C4005D6B8700D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D2D2D200AE6E4500B759
      1100B95D1600BC611B00BF692400C4702D00C6763400C8793800C87A3900C87C
      3E00CA824400B17A5900D9D9D900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC003C9B55004CFA9000A6E0B900CAE3D000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C6D7
      E1005492B3008BBECE00ABD0E4008BBECE0082B3CD005492B300D1D2D000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C2BF
      BE008D8D8E008D8D8E00A8A7A400A8A7A4008D8D8E00767474008D8D8E00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D4D4D400E1D7D700D6CA
      CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9CA00D6C9
      CA00D6C9CA00DDD2D200D9D9D900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0098E3B40034FD860031FD84008CD3A300D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0099C2D80082B3CD00ABD0E400ABD0E40082B3CD00ADC3CF00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00B4B1B000A8A7A400C2BFBE00C2BFBE00A8A7A4008D8D8E00D2D1D300D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00F8F8F800D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D2D2D200F5F5F500D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC005BAB710085CF9F0085D4A1003D9D5700D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00ADC3CF0073AAC90073AAC900ADC3CF00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00C2BFBE008D8D8E008D8D8E008D8D8E00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81F000000000000E007000000000000
      C003000000000000800100000000000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000000008003000000000000
      C007000000000000F00F000000000000FFFF8001FFFFFFFF40038001E007E007
      C001E107C003C003FC3FE107C003C0038001E187C003E0038001E007E003E003
      80010000F00FF00F80010000F00FE00F80010000F00FC00F8001A005E00FC00F
      8001E007E00FC00F8001E007E00FC00F8001E007E01FE01F8001FC3FE01FE01F
      8001FC3FF03FF01F8001FC3FF87FF87F00000000000000000000000000000000
      000000000000}
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 50
    Top = 262
  end
  object qryLogData: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CONNECTIONID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HOST_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIME_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOG_DATA'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'INSERT INTO SYS_LOG_DATA ( "CONNECTION_ID", HOST_NAME, TIME_ID, ' +
        'USER_ID, SYSTEM_ID, FEATURE_ID, LOG_DATA, ACTION_TYPE)'
      
        'VALUES ( :CONNECTIONID, :HOST_NAME, :TIME_ID, :USER_ID, 1, null,' +
        ' :LOG_DATA, '#39'INSERT'#39')')
    FieldOptions = []
    Left = 50
    Top = 297
  end
  object qryKTSoQD: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DECISION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT DECISION_NO'
      'FROM HR_DECISION'
      'WHERE DECISION_NO = :DECISION_NO'
      'and QD_THAT = 1')
    FieldOptions = []
    Left = 82
    Top = 297
    object qryKTSoQDDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
  end
  object memViTriThoiViec: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memViTriThoiViecBeforeDelete
    Left = 480
    Top = 256
    object memViTriThoiViecASS_KEY_ID: TIntegerField
      FieldName = 'ASS_KEY_ID'
    end
    object memViTriThoiViecEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object memViTriThoiViecFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 120
    end
    object memViTriThoiViecDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 120
    end
    object memViTriThoiViecTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 120
    end
    object memViTriThoiViecASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object memViTriThoiViecDISMISS_DATE: TDateField
      FieldName = 'DISMISS_DATE'
    end
  end
  object dsViTriThoiViec: TDataSource
    DataSet = memViTriThoiViec
    Left = 480
    Top = 224
  end
  object qryViTriCongTac: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'DEN_NGAY'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'employee_no'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_assignment.ass_key_id,'
      '    hr_assignment.employee_no,'
      
        '    hr_assignment.employee_no || '#39' - '#39' || hr_employee.last_name ' +
        '|| '#39' '#39' || hr_employee.middle_name || '#39' '#39' || hr_employee.first_na' +
        'me FULL_NAME,'
      '    hr_assignment.dept_no,'
      '    hr_department.dept_name,'
      '    hr_assignment.title_no ,'
      '    hr_title.title_name,'
      '    hr_assignment.assigned_date '
      'from hr_assignment '
      
        'join hr_employee on hr_assignment.employee_no = hr_employee.empl' +
        'oyee_no '
      
        'join hr_department on hr_assignment.dept_no = hr_department.dept' +
        '_no'
      'join hr_title on hr_assignment.title_no = hr_title.title_no '
      'where hr_assignment.dismiss_date is null'
      'and hr_assignment.assigned_date <= :DEN_NGAY'
      'and hr_assignment.employee_no = :employee_no')
    FieldOptions = []
    Left = 513
    Top = 227
    object qryViTriCongTacASS_KEY_ID: TIntegerField
      FieldName = 'ASS_KEY_ID'
      Required = True
    end
    object qryViTriCongTacEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryViTriCongTacFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 168
    end
    object qryViTriCongTacDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryViTriCongTacDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryViTriCongTacTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
    object qryViTriCongTacTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryViTriCongTacASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
      Required = True
    end
  end
  object qryKT_OFFWORK: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OFF_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT  EMPLOYEE_NO FROM HR_OFF_WORK '
      'WHERE EMPLOYEE_NO= :EMPLOYEE_NO AND OFF_DATE = :OFF_DATE')
    FieldOptions = []
    Left = 50
    Top = 329
    object qryKT_OFFWORKEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
  end
end
