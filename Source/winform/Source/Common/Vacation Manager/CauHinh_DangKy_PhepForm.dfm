inherited frmCauHinh_DangKy_Phep: TfrmCauHinh_DangKy_Phep
  Left = 149
  Top = 97
  Width = 836
  Height = 573
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 520
    Width = 828
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 828
    Height = 520
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 473
      Width = 648
      Height = 45
      Color = 15466238
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 648
        Height = 45
        inherited btnDelete: TElPopupButton
          Left = 129
          Top = 10
        end
        inherited btnInsert: TElPopupButton
          Top = 10
          Width = 81
        end
        inherited btnSave: TElPopupButton
          Left = 204
          Top = 10
        end
        inherited btnCancel: TElPopupButton
          Left = 279
          Top = 10
        end
        inherited btnClose: TElPopupButton
          Left = 754
          Top = 10
        end
        inherited btnHelp: TElPopupButton
          Left = 681
          Top = 10
        end
        inherited btnChoose: TElPopupButton
          Left = 751
          Top = 10
          Width = 3
        end
        inherited btnCopy: TElPopupButton
          Left = 106
          Top = 10
          Width = 23
          ImageIndex = 20
          UseImageList = True
          Images = dmMain.imgAction
          ShowText = True
          Caption = '&Th'#244'ng s'#7889' m'#7899'i'
        end
        inherited btnFirst: TElPopupButton
          Left = 359
          Top = 10
        end
        inherited btnLast: TElPopupButton
          Left = 428
          Top = 10
        end
        inherited btnPrevious: TElPopupButton
          Left = 382
          Top = 10
        end
        inherited btnNext: TElPopupButton
          Left = 405
          Top = 10
        end
        inherited btnDesign: TElPopupButton
          Left = 615
          Top = 10
          Width = 3
        end
        inherited btnPreview: TElPopupButton
          Left = 612
          Top = 10
          Width = 3
        end
        inherited btnPrint: TElPopupButton
          Left = 609
          Top = 10
          Width = 3
        end
        inherited btnInsertEx: TElPopupButton
          Left = 81
          Top = 10
        end
        inherited btnSendMail: TElPopupButton
          Left = 584
          Top = 10
        end
        inherited btnGenerate: TElPopupButton
          Left = 673
          Top = 10
          Width = 3
        end
        inherited btnRelation: TElPopupButton
          Left = 648
          Top = 10
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 623
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
            inherited dxlctrlDelete: TdxLayoutItem
              Visible = False
            end
            inherited dxLayoutControl1Group2: TdxLayoutGroup
              inherited dxLayoutControl1Item2: TdxLayoutItem
                Visible = False
              end
              inherited dxLayoutControl1Item4: TdxLayoutItem
                Visible = False
              end
              inherited dxLayoutControl1Item5: TdxLayoutItem
                Visible = False
              end
              inherited dxLayoutControl1Item3: TdxLayoutItem
                Visible = False
              end
            end
          end
        end
      end
      inherited ActionList1: TActionList
        Images = dmMain.imgAction
        Left = 289
        inherited acDSInsertCopy: TDataSetInsert
          ImageIndex = 20
        end
      end
      inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
        Left = 313
      end
      inherited ElPopupMenu1: TElPopupMenu
        Left = 256
      end
      inherited ElPopupMenu2: TElPopupMenu
        Left = 257
      end
    end
    object pageMain: TElPageControl [1]
      Left = 2
      Top = 2
      Width = 572
      Height = 329
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
      Multiline = False
      OnChange = pageMainChange
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
      ActivePage = pagePhanQuyen
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 4
      object pagePhanQuyen: TElTabSheet
        PageControl = pageMain
        ImageIndex = 0
        TabVisible = True
        Caption = 'Ph'#226'n quy'#7873'n duy'#7879't ph'#233'p'
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 572
          Height = 305
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridDanhSachNhanVien: TdxDBGrid
            Left = 26
            Top = 133
            Width = 463
            Height = 298
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 3
            DataSource = dsDanhSachNhanVien
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridDanhSachNhanVienEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227
              HeaderAlignment = taCenter
              Width = 51
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM'
            end
            object gridDanhSachNhanVienFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' t'#234'n'
              HeaderAlignment = taCenter
              Width = 141
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 t+AOo-n'
            end
            object gridDanhSachNhanVienGENDER: TdxDBGridColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GENDER'
            end
            object gridDanhSachNhanVienBIRTH_DATE: TdxDBGridDateColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BIRTH_DATE'
            end
            object gridDanhSachNhanVienID_CARD_NO: TdxDBGridColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 189
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ID_CARD_NO'
            end
            object gridDanhSachNhanVienRESIDENT_ADDR: TdxDBGridColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 1575
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RESIDENT_ADDR'
            end
            object gridDanhSachNhanVienEMAIL: TdxDBGridColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 392
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMAIL'
            end
            object gridDanhSachNhanVienRECEIVE_MAIL: TdxDBGridColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RECEIVE_MAIL'
            end
            object gridDanhSachNhanVienTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              HeaderAlignment = taCenter
              Width = 117
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridDanhSachNhanVienDEPT_NAME: TdxDBGridColumn
              Caption = #272#417'n v'#7883
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 123
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
              GroupIndex = 0
              Caption_UTF7 = '+ARABoQ-n v+Hss'
            end
          end
          object gridPhanQuyen: TdxDBGrid
            Left = 562
            Top = 133
            Width = 412
            Height = 262
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 8
            DataSource = dsCauHinh
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridPhanQuyenID: TdxDBGridColumn
              Visible = False
              Width = 78
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ID'
            end
            object gridPhanQuyenMANV_DANGKY: TdxDBGridColumn
              Caption = 'M'#227' NV'
              HeaderAlignment = taCenter
              Width = 56
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MANV_DANGKY_PHEP'
              Caption_UTF7 = 'M+AOM NV'
            end
            object gridPhanQuyenTEN_NHANVIEN: TdxDBGridColumn
              Caption = 'Nh'#226'n vi'#234'n'
              HeaderAlignment = taCenter
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TEN_NHANVIEN'
              Caption_UTF7 = 'Nh+AOI-n vi+AOo-n'
            end
            object gridPhanQuyenDON_VI: TdxDBGridColumn
              Caption = #272#417'n v'#7883
              HeaderAlignment = taCenter
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DON_VI'
              Caption_UTF7 = '+ARABoQ-n v+Hss'
            end
            object gridPhanQuyenCHUC_VU: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              HeaderAlignment = taCenter
              Width = 71
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CHUC_VU'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridPhanQuyenMANV_DUYETCAP1: TdxDBGridColumn
              Visible = False
              Width = 223
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MANV_DUYET_CAP1'
            end
            object gridPhanQuyenSO_NGAY: TdxDBGridColumn
              Caption = 'S'#7889' ng'#224'y'
              HeaderAlignment = taCenter
              Width = 51
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SO_NGAY'
              Caption_UTF7 = 'S+HtE ng+AOA-y'
            end
            object gridPhanQuyenTENNV_DUYETCAP1: TdxDBGridColumn
              Caption = 'Nh'#226'n vi'#234'n duy'#7879't c'#7845'p 1'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 923
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TENNV_DUYETCAP1'
              GroupIndex = 1
              Caption_UTF7 = 'Nh+AOI-n vi+AOo-n duy+Hsc-t c+HqU-p 1'
            end
            object gridPhanQuyenMANV_DUYETCAP2: TdxDBGridColumn
              Visible = False
              Width = 223
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MANV_DUYET_CAP2'
            end
            object gridPhanQuyenTENNV_DUYETCAP2: TdxDBGridColumn
              Caption = 'Nh'#226'n vi'#234'n duy'#7879't c'#7845'p 2'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 923
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TENNV_DUYETCAP2'
              GroupIndex = 0
              Caption_UTF7 = 'Nh+AOI-n vi+AOo-n duy+Hsc-t c+HqU-p 2'
            end
          end
          object ElPopupButton1: TElPopupButton
            Left = 513
            Top = 214
            Width = 24
            Height = 25
            Cursor = crDefault
            ImageIndex = 74
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            TabOrder = 4
            Color = 15466238
            ParentColor = False
            Action = AcAddall
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton2: TElPopupButton
            Left = 513
            Top = 239
            Width = 25
            Height = 25
            Cursor = crDefault
            ImageIndex = 73
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
            Action = AcAdd
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton3: TElPopupButton
            Left = 513
            Top = 264
            Width = 25
            Height = 25
            Cursor = crDefault
            ImageIndex = 72
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            TabOrder = 6
            Color = 15466238
            ParentColor = False
            Action = AcRemoveAll
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton4: TElPopupButton
            Left = 513
            Top = 289
            Width = 25
            Height = 25
            Cursor = crDefault
            ImageIndex = 70
            UseImageList = True
            Images = dmMain.imgAction
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            UseXPThemes = True
            TabOrder = 7
            Color = 15466238
            ParentColor = False
            Action = AcRemove
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxPopupEdit1: TdxPopupEdit
            Left = 82
            Top = 28
            Width = 207
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxPopupEdit1Change
            OnCloseUp = dxPopupEdit1CloseUp
            OnInitPopup = dxPopupEdit1InitPopup
          end
          object dxPopupEdit2: TdxPopupEdit
            Left = 82
            Top = 51
            Width = 207
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 2
            StyleController = dmMain.StyleController
            OnChange = dxPopupEdit2Change
            OnCloseUp = dxPopupEdit2CloseUp
            OnInitPopup = dxPopupEdit2InitPopup
          end
          object dxSoNgay: TdxSpinEdit
            Left = 440
            Top = 28
            Width = 121
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            Alignment = taCenter
            StyleController = dmMain.StyleController
            MaxValue = 50.000000000000000000
            StoredValues = 49
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group4: TdxLayoutGroup
              Caption = 'C'#7845'p qu'#7843'n l'#253
              object dxLayoutControl2Group1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl2Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Qu'#7843'n l'#253' c'#7845'p 1'
                  Control = dxPopupEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item3: TdxLayoutItem
                  Caption = 'S'#7889' ng'#224'y duy'#7879't t'#7889'i '#273'a c'#7911'a c'#7845'p 1'
                  Control = dxSoNgay
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl2Item7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Qu'#7843'n l'#253' c'#7845'p 2'
                Control = dxPopupEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group3: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Ph'#226'n quy'#7873'n duy'#7879't ph'#233'p'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Group6: TdxLayoutGroup
                Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
                object dxLayoutControl2Item1: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = gridDanhSachNhanVien
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl2Group5: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'New Group'
                ShowCaption = False
                object dxLayoutControl2Group2: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'New Group'
                  ShowCaption = False
                  ShowBorder = False
                  object dxLayoutControl2Item4: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = ElPopupButton1
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item6: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = ElPopupButton2
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item8: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = ElPopupButton3
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item9: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = ElPopupButton4
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl2Group7: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n '#273#227' ph'#226'n quy'#7873'n duy'#7879't ph'#233'p'
                object dxLayoutControl2Item2: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = gridPhanQuyen
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
      object pageMail_sever: TElTabSheet
        PageControl = pageMain
        ImageIndex = 2
        TabVisible = True
        Caption = 'C'#7845'u h'#236'nh mail server'
        Visible = False
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 572
          Height = 305
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridEmployeeList: TdxDBGrid
            Left = 15
            Top = 89
            Width = 250
            Height = 129
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            TabOrder = 4
            DataSource = dsReciveMail
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridEmployeeListEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 78
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM'
            end
            object gridEmployeeListFULL_NAME: TdxDBGridColumn
              Caption = 'H'#7885' t'#234'n'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 188
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              Caption_UTF7 = 'H+Hs0 t+AOo-n'
            end
            object gridEmployeeListGENDER: TdxDBGridColumn
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 116
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GENDER'
            end
            object gridEmployeeListBIRTH_DATE: TdxDBGridDateColumn
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 122
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BIRTH_DATE'
            end
            object gridEmployeeListID_CARD_NO: TdxDBGridColumn
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 332
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ID_CARD_NO'
            end
            object gridEmployeeListRESIDENT_ADDR: TdxDBGridColumn
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 2770
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RESIDENT_ADDR'
            end
            object gridEmployeeListTITLE_NAME: TdxDBGridColumn
              Caption = 'Ch'#7913'c v'#7909
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 158
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TITLE_NAME'
              Caption_UTF7 = 'Ch+Huk-c v+HuU'
            end
            object gridEmployeeListDEPT_NAME: TdxDBGridColumn
              Caption = 'Ph'#242'ng ban'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 145
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DEPT_NAME'
              Caption_UTF7 = 'Ph+API-ng ban'
            end
            object gridEmployeeListEMAIL: TdxDBGridColumn
              Caption = 'Email'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 117
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMAIL'
            end
            object gridEmployeeListRECEIVE_MAIL: TdxDBGridCheckColumn
              Caption = 'Nh'#7853'n email'
              HeaderAlignment = taCenter
              MinWidth = 20
              Width = 108
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RECEIVE_MAIL'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = 'Nh+Hq0-n email'
            end
          end
          object dxMailServer: TdxDBEdit
            Left = 68
            Top = 9
            Width = 310
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            DataField = 'MAIL_SERVER'
            DataSource = dsMail_Server
            StyleController = dmMain.StyleController
          end
          object dxUserName: TdxDBEdit
            Left = 68
            Top = 32
            Width = 310
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            DataField = 'USERNAME'
            DataSource = dsMail_Server
            StyleController = dmMain.StyleController
          end
          object dxAccount: TdxDBEdit
            Left = 439
            Top = 9
            Width = 310
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            DataField = 'ACCOUNT_NAME'
            DataSource = dsMail_Server
            StyleController = dmMain.StyleController
          end
          object dxPass: TdxDBEdit
            Left = 439
            Top = 32
            Width = 310
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            DataField = 'PASS'
            DataSource = dsMail_Server
            PasswordChar = '*'
            StyleController = dmMain.StyleController
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group5: TdxLayoutGroup
              ShowCaption = False
              object dxLayoutControl1Group2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Mail server'
                  Control = dxMailServer
                  ControlOptions.MinWidth = 40
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'T'#234'n account'
                  Control = dxAccount
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'User name'
                  Control = dxUserName
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Password'
                  Control = dxPass
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl1Group1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Danh s'#225'ch c'#225' nh'#226'n li'#234'n quan '#273#432#7907'c nh'#7853'n mail'
              object dxLayoutControl1Item1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'New Item'
                ShowCaption = False
                Control = gridEmployeeList
              end
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem21: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        ShowCaption = False
        Control = pageMain
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
        Caption = 'C'#7845'u h'#236'nh '#273#259'ng k'#253' ph'#233'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 528
  end
  object ImageList1: TImageList
    Left = 562
    Top = 2
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B630039000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001073B5006B182900390000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073C6F70039AD
      F7000000000000000000000000000000000029B5DE001073B5006B1829003900
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242002139
      4A0029B5FF0021BDFF00215273003973A50052A5DE004A8CB500426373004A5A
      6B005A6B7B005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000637B8400000000002173A50073C6F70039AD
      F7002173A5000000000000000000000000000000000029B5DE001073B5006B18
      29003900000000000000A5ADAD0084848400BDC6C60000000000000000000000
      000000000000000000000000000000000000000000008C949400213952002994
      D60029739C0021B5F7002984A500295A6B00294A630052ADD60063C6EF006BC6
      E7005294A5004252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000637B840000000000E7F7FF00ADDEFF0073C6F70039AD
      F700109CF7002173A500184A6B0000000000000000000000000029B5DE001073
      B500390000009C8C6300F7E7BD00FFF7D600AD9C7B0010100800000000000000
      00000000000000000000000000000000000073737B0029292900216B9C0029B5
      FF00FFFFFF00ADBDC600C6D6DE00BDC6D600638C9C00185263006BC6EF006BCE
      F70073D6F7007BDEFF004A5A6300949C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073C6FF005ABDFF0042B5
      FF0031A5FF0031A5FF0000000000FFFFFF00E7F7FF008CC6E70000000000184A
      6B00299CEF00109CF7001818180000000000000000000000000000000000A5BD
      D600CEBD7B00EFD6AD00F7E7CE00FFFFFF00FFFFFF00F7E7CE00393929000000
      0000CED6D600D6C6C6000000000000000000000000009CA5A50029ADFF0029B5
      FF00396B8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF005AD6E7004A7B940073CE
      F70063B5CE004A7B8C00526B6B0073737B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CCEFF007BC6FF0063BD
      FF004AB5FF004AB5FF000000000000000000000000000000000000000000184A
      6B001884CE00109CF700181818000000000000000000B5C6DE00849CE7005A5A
      6300DEBD84009CB56300A5BD7B00ADC69400ADCE9C00ADCE9C0029211800D6BD
      BD00E77B7B00E77B7B00E77B7B00000000006B6B7300297BB50029B5FF0039B5
      F700C6C6CE00FFFFFF00FFFFFF005A8CAD00FFFFFF00ADF7FF0008CEDE0008A5
      AD0063636B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADDEFF0094D6FF007BCE
      FF006BBDFF006BBDFF0039ADFF0029A5FF001094E70042A5E700000000002173
      A500109CF7002173A500184A6B000000000000000000B5C6DE0084A5E7007373
      7300DEBD7B00A5B56B009CB57300A5C68C00A5C68C00A5C68C0073634A00E78C
      8C00E77B7B00DEADAD00E77B7B00DE9C9C004A525A00315A7300219CD60021BD
      FF00C6EFF700FFFFFF003194B500FFFFFF00FFFFFF006BE7F70084B5BD0000EF
      FF0008949C007B7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6E7FF00ADDEFF009CD6
      FF0084CEFF0084CEFF005ABDFF00397BAD00000000000000000073C6F70039AD
      F700109CF70018181800000000000000000000000000B5C6DE0084A5E7005A63
      7300DEBD7B00CEBD7B009CB56B00ADBD8400EFDEBD00EFDEBD0039392900E78C
      8C00DEA5A50000000000E77B7B00E77B7B00000000000000000073737B004252
      63004A94AD00A5E7F7005A7B9400FFFFFF00FFFFFF0021CEE700FFFFFF0039DE
      EF0000F7FF00186B730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEF7FF00CEEFFF00B5E7
      FF00A5D6FF00A5D6FF003184BD0000000000E7F7FF00ADDEFF005AB5E700184A
      6B001818180000000000000000000000000000000000B5C6DE0084A5E700BDC6
      CE00FFEFD600DEBD7B0094AD52009CAD5A00C6BD8400EFD69400949C9C000000
      00000000000000000000E77B7B00E77B7B000000000000000000000000000000
      0000848C8C0029525A00A5BDC600FFFFFF005ADEEF00FFFFFF00FFFFFF0042DE
      EF0000F7FF0000E7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00E7F7FF00D6EF
      FF00BDE7FF00BDE7FF0000000000FFFFFF00E7F7FF00ADDEFF003184BD000000
      00000000000000000000000000000000000000000000B5C6DE0084A5E700C6CE
      D600949C9C00E7DECE00EFD69400ADAD63008C9452008C9C8C00000000000000
      0000D6CECE00E7949400E77B7B00DE9C9C000000000000000000000000000000
      00000000000000000000636B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF0000F7
      FF0008B5BD00395A630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00EFF7
      FF00D6EFFF00D6EFFF0000000000E7F7FF00E7F7FF00ADDEFF002173A5000000
      0000109CF700109CF7000000000000000000B5C6DE00BDC6DE0084A5E700C6CE
      D6000000000000000000B5B5B500ADBDAD0094B58C0094B58C00000000000000
      0000D6D6D600E77B7B00E7848400000000000000000000000000000000000000
      000000000000000000009CA5A500395A630073F7FF0073F7FF0018E7EF001873
      7B007B7B84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7FFFF003184BD0000000000ADDEFF00ADDEFF0073C6F70039AD
      F700109CF7003184BD00181818000000000084A5E70094ADE70084A5E700C6CE
      D6000000000000000000CED6CE000000000094B58C008CB58400000000000000
      000000000000DEADAD00E77B7B00D6C6C6000000000000000000000000000000
      000000000000000000000000000073737B00089CAD0000F7FF00214A52008C94
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094D6FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7F7FF0094D6FF00000000002173A50073C6F70039AD
      F7002173A50018181800000000000000000084A5E70084A5E70084A5E700C6CE
      D600000000008CB584008CB58400000000009CBD94008CB5840000000000E794
      9400DEADAD0000000000E77B7B00DEADAD000000000000000000000000000000
      00000000000000000000000000000000000029636B0000F7FF008C9494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094D6FF00A5DE
      FF0094D6FF0094D6FF00184A6B0000000000000000000000000073C6F70039AD
      F7000000000000000000000000000000000000000000849CE70084A5E700C6CE
      D60000000000A5BD9C0094B5840094B58C0094B584008CB5840000000000E77B
      7B00E77B7B00E7949400E77B7B00D6BDBD000000000000000000000000000000
      0000000000000000000000000000000000008C94940063636B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDCEDE0084A5E700C6CE
      D60000000000CED6D6008CB5840094B584008CB58400C6CEC60000000000D6B5
      B500E77B7B00E77B7B00E77B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF3FFFFFFF0000FF871FFFF0010000
      FF870FFFC0030000FE03847F800300000001C03F000000000001E01380000000
      0001800100070000000180000003000000038004C00300000007801CF0030000
      00018030FC03000000010C31FC07000000010D38FE0F000000030924FF1F0000
      80078820FF3F0000C1878821FFFF000000000000000000000000000000000000
      000000000000}
  end
  object qryDanhSachNhanVien: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      '  select'
      '    a.employee_no,'
      
        '    a.last_name||'#39' '#39'||a.middle_name||'#39' '#39'||a.first_name full_name' +
        ','
      '    a.gender,'
      '    a.birth_date,'
      '    a.id_card_no,'
      '    a.resident_addr,'
      '    a.email,'
      '    a.receive_mail,'
      '    hr_title.title_name,'
      '    hr_department.dept_name'
      '  from hr_employee a'
      
        '  left join hr_assignment on hr_assignment.employee_no=a.employe' +
        'e_no'
      
        '           and hr_assignment.is_main_position=1 and hr_assignmen' +
        't.dismiss_date is null'
      
        '  left join hr_position on hr_position.position_no = hr_assignme' +
        'nt.position_no'
      
        '  left join hr_department on hr_department.dept_no=hr_position.d' +
        'ept_no'
      '  left join hr_title on hr_title.title_no=hr_position.title_no'
      '  where a.employee_no not in (select manv_dangky_phep '
      '                              from hr_thongtin_dangky_phepnam)')
    FieldOptions = []
    Left = 32
    Top = 184
    object qryDanhSachNhanVienEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryDanhSachNhanVienFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 129
    end
    object qryDanhSachNhanVienGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryDanhSachNhanVienBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryDanhSachNhanVienID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object qryDanhSachNhanVienRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryDanhSachNhanVienEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object qryDanhSachNhanVienRECEIVE_MAIL: TSmallintField
      FieldName = 'RECEIVE_MAIL'
    end
    object qryDanhSachNhanVienTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryDanhSachNhanVienDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
  end
  object qryMail_Server: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE SYS_MAIL_SERVER SET'
      '   ID = :ID, /*PK*/'
      '   MAIL_SERVER = :MAIL_SERVER,'
      '   USERNAME = :USERNAME,'
      '   ACCOUNT_NAME = :ACCOUNT_NAME,'
      '   PASS = :PASS'
      'WHERE'
      '   ID = :OLD_ID')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      ' select id, mail_server, username, account_name, pass'
      ' from sys_mail_server')
    FieldOptions = []
    Left = 104
    Top = 184
    object qryMail_ServerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryMail_ServerMAIL_SERVER: TWideStringField
      FieldName = 'MAIL_SERVER'
      Size = 126
    end
    object qryMail_ServerUSERNAME: TWideStringField
      FieldName = 'USERNAME'
      Size = 126
    end
    object qryMail_ServerACCOUNT_NAME: TWideStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 126
    end
    object qryMail_ServerPASS: TWideStringField
      FieldName = 'PASS'
      Size = 126
    end
  end
  object dsDanhSachNhanVien: TDataSource
    DataSet = qryDanhSachNhanVien
    Left = 64
    Top = 185
  end
  object dsMail_Server: TDataSource
    DataSet = qryMail_Server
    Left = 136
    Top = 184
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 256
    Top = 240
    object AcAddall: TAction
      Caption = 'AcAddall'
      ImageIndex = 74
      OnExecute = AcAddallExecute
      OnUpdate = AcAddallUpdate
    end
    object AcAdd: TAction
      Caption = 'AcAdd'
      ImageIndex = 73
      OnExecute = AcAddExecute
      OnUpdate = AcAddUpdate
    end
    object AcRemove: TAction
      Caption = 'AcRemove'
      ImageIndex = 70
      OnExecute = AcRemoveExecute
      OnUpdate = AcRemoveUpdate
    end
    object AcRemoveAll: TAction
      Caption = 'AcRemoveAll'
      ImageIndex = 72
      OnExecute = AcRemoveAllExecute
      OnUpdate = AcRemoveAllUpdate
    end
  end
  object qryCauHinh: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_THONGTIN_DANGKY_PHEPNAM'
      'WHERE'
      '   ID = :OLD_ID')
    EditSQL.Strings = (
      'UPDATE HR_THONGTIN_DANGKY_PHEPNAM SET'
      '   ID = :ID, /*PK*/'
      '   MANV_DANGKY_PHEP = :MANV_DANGKY_PHEP,'
      '   MANV_DUYET_CAP1 = :MANV_DUYET_CAP1,'
      '   MANV_DUYET_CAP2 = :MANV_DUYET_CAP2,'
      '   SO_NGAY = :SO_NGAY'
      'WHERE'
      '   ID = :OLD_ID')
    GeneratorLinks.Strings = (
      'ID = gen_hr_thongtin_dangky_phepnam')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_THONGTIN_DANGKY_PHEPNAM('
      '   ID, /*PK*/'
      '   MANV_DANGKY_PHEP,'
      '   MANV_DUYET_CAP1,'
      '   MANV_DUYET_CAP2,'
      '   SO_NGAY)'
      'VALUES ('
      '   :ID,'
      '   :MANV_DANGKY_PHEP,'
      '   :MANV_DUYET_CAP1,'
      '   :MANV_DUYET_CAP2,'
      '   :SO_NGAY)')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryCauHinhBeforeDelete
    SQL.Strings = (
      
        'select id, so_ngay, manv_dangky_phep, ten_nhanvien, don_vi, chuc' +
        '_vu, manv_duyet_cap1, tennv_duyetcap1, manv_duyet_cap2, tennv_du' +
        'yetcap2'
      'from hr_dang_ky_phep')
    FieldOptions = []
    Left = 376
    Top = 176
    object qryCauHinhID: TIntegerField
      FieldName = 'ID'
    end
    object qryCauHinhSO_NGAY: TIntegerField
      FieldName = 'SO_NGAY'
    end
    object qryCauHinhMANV_DANGKY_PHEP: TWideStringField
      FieldName = 'MANV_DANGKY_PHEP'
      Size = 30
    end
    object qryCauHinhTEN_NHANVIEN: TWideStringField
      FieldName = 'TEN_NHANVIEN'
      Size = 126
    end
    object qryCauHinhDON_VI: TWideStringField
      FieldName = 'DON_VI'
      Size = 126
    end
    object qryCauHinhCHUC_VU: TWideStringField
      FieldName = 'CHUC_VU'
      Size = 126
    end
    object qryCauHinhMANV_DUYET_CAP1: TWideStringField
      FieldName = 'MANV_DUYET_CAP1'
      Size = 30
    end
    object qryCauHinhTENNV_DUYETCAP1: TWideStringField
      FieldName = 'TENNV_DUYETCAP1'
      Size = 126
    end
    object qryCauHinhMANV_DUYET_CAP2: TWideStringField
      FieldName = 'MANV_DUYET_CAP2'
      Size = 30
    end
    object qryCauHinhTENNV_DUYETCAP2: TWideStringField
      FieldName = 'TENNV_DUYETCAP2'
      Size = 126
    end
  end
  object dsCauHinh: TDataSource
    DataSet = qryCauHinh
    Left = 376
    Top = 144
  end
  object qryEXE: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    GeneratorLinks.Strings = (
      'ID = gen_hr_thongtin_dangky_phepnam')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryCauHinhBeforeDelete
    SQL.Strings = (
      'DELETE FROM HR_THONGTIN_DANGKY_PHEPNAM'
      'WHERE'
      '   ID = :OLD_ID'
      '')
    FieldOptions = []
    Left = 432
    Top = 192
  end
  object dsReciveMail: TDataSource
    DataSet = QryReciveMail
    Left = 120
    Top = 241
  end
  object QryReciveMail: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_EMPLOYEE SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/ '
      '   RECEIVE_MAIL = :RECEIVE_MAIL'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      '  select'
      '    a.employee_no,'
      
        '    a.last_name||'#39' '#39'||a.middle_name||'#39' '#39'||a.first_name full_name' +
        ','
      '    a.gender,'
      '    a.birth_date,'
      '    a.id_card_no,'
      '    a.resident_addr,'
      '    a.email,'
      '    a.receive_mail,'
      '    hr_title.title_name,'
      '    hr_department.dept_name'
      '  from hr_employee a'
      
        '  left join hr_assignment on hr_assignment.employee_no=a.employe' +
        'e_no'
      
        '           and hr_assignment.is_main_position=1 and hr_assignmen' +
        't.dismiss_date is null'
      
        '  left join hr_position on hr_position.position_no = hr_assignme' +
        'nt.position_no'
      
        '  left join hr_department on hr_department.dept_no=hr_position.d' +
        'ept_no'
      '  left join hr_title on hr_title.title_no=hr_position.title_no')
    FieldOptions = []
    Left = 88
    Top = 240
    object QryReciveMailEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object QryReciveMailFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 129
    end
    object QryReciveMailGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object QryReciveMailBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object QryReciveMailID_CARD_NO: TWideStringField
      FieldName = 'ID_CARD_NO'
      Size = 30
    end
    object QryReciveMailRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object QryReciveMailEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object QryReciveMailRECEIVE_MAIL: TSmallintField
      FieldName = 'RECEIVE_MAIL'
    end
    object QryReciveMailTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object QryReciveMailDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
  end
end
