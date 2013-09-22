inherited frmTheodoinangluong: TfrmTheodoinangluong
  Left = 194
  Top = 149
  Width = 957
  Height = 611
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 558
    Width = 949
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 949
    Height = 558
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 531
      Width = 945
      Color = 15466238
      TabOrder = 5
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 945
        inherited btnClose: TElPopupButton
          OnClick = frameToolbar1btnCloseClick
          Action = nil
        end
        inherited btnDesign: TElPopupButton
          ImageIndex = 59
          Action = frameToolbar1.acDesign
        end
        inherited btnPreview: TElPopupButton
          ImageIndex = 61
          Action = frameToolbar1.acPreview
        end
        inherited btnPrint: TElPopupButton
          ImageIndex = 60
          UseImageList = True
          UseArrow = True
          UseIcon = True
          ThinFrame = True
          Action = frameToolbar1.acPrint
        end
      end
    end
    object dxSelectFile: TdxPopupEdit [1]
      Left = 483
      Top = 506
      Width = 234
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dxSelectFileChange
      OnCloseUp = dxSelectFileCloseUp
      OnInitPopup = dxSelectFileInitPopup
    end
    object ElPopupButton2: TElPopupButton [2]
      Left = 717
      Top = 506
      Width = 82
      Height = 25
      Cursor = crDefault
      ImageIndex = 61
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem m'#7851'u in'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acPreview
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    inline frameDateTime1: TframeDateTime [3]
      Left = 14
      Top = 28
      Width = 462
      Height = 27
      Color = 15466238
      ParentColor = False
      TabOrder = 9
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 458
        Height = 27
        Align = alLeft
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
    object ElPopupButton1: TElPopupButton
      Left = 476
      Top = 28
      Width = 112
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
      TabOrder = 0
      Color = 15466238
      ParentColor = False
      Action = acXemDS
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 799
      Top = 506
      Width = 74
      Height = 25
      Cursor = crDefault
      ImageIndex = 59
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Thi'#234#769't k'#234#769
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acDesign
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 873
      Top = 506
      Width = 74
      Height = 25
      Cursor = crDefault
      ImageIndex = 60
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acPrint
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object panelMain: TPanel
      Left = 16
      Top = 88
      Width = 945
      Height = 315
      BevelOuter = bvNone
      Caption = 'panelMain'
      Color = 15466238
      TabOrder = 10
      object PanelLeft: TPanel
        Left = 0
        Top = 0
        Width = 201
        Height = 315
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'PanelLeft'
        TabOrder = 0
        object gridTest: TdxDBGrid
          Left = 0
          Top = 0
          Width = 201
          Height = 315
          Bands = <
            item
              Alignment = taRightJustify
              Caption = 'Danh s'#225'ch'
              Width = 110
            end
            item
              Alignment = taLeftJustify
              Caption = 'c'#225'c '#273#7907't thi'
              Width = 146
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 2
          KeyField = 'KEY_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsDSDotthi
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          MaxRowLineCount = 2
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoExtMultiSelect, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object gridTestMA_DOT: TdxDBGridColumn
            Caption = 'M'#227' '#273#7907't'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MA_DOT'
            Caption_UTF7 = 'M+AOM +AREe4w-t'
          end
          object gridTestNGAY_THI: TdxDBGridDateColumn
            Caption = 'Ng'#224'y thi'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 110
            BandIndex = 0
            RowIndex = 1
            FieldName = 'NGAY_THI'
            Caption_UTF7 = 'Ng+AOA-y thi'
            StoredRowIndex = 1
          end
          object gridTestSL_COMAT: TdxDBGridColumn
            Caption = 'C'#243' m'#7863't'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 73
            BandIndex = 1
            RowIndex = 0
            FieldName = 'SL_COMAT'
            Caption_UTF7 = 'C+APM m+Hrc-t'
          end
          object gridTestSL_VANG: TdxDBGridColumn
            Caption = 'V'#7855'ng m'#7863't'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 73
            BandIndex = 1
            RowIndex = 0
            FieldName = 'SL_VANG'
            Caption_UTF7 = 'V+Hq8-ng m+Hrc-t'
          end
          object gridTestGHI_CHU: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 146
            BandIndex = 1
            RowIndex = 1
            FieldName = 'GHI_CHU'
            Caption_UTF7 = 'Ghi ch+APo'
            StoredRowIndex = 1
          end
        end
      end
      object ElSplitter1: TElSplitter
        Left = 201
        Top = 0
        Width = 8
        Height = 315
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = False
        ControlTopLeft = PanelLeft
        ControlBottomRight = PanelRight
        AutoHide = False
        ShowSnapButton = True
        Align = alLeft
        BevelOuter = bvLowered
        Color = 15466238
        ParentShowHint = False
        ShowHint = False
        UseXPThemes = False
        InvertSnapButtons = True
      end
      object PanelRight: TPanel
        Left = 209
        Top = 0
        Width = 736
        Height = 315
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PanelRight'
        TabOrder = 2
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 736
          Height = 315
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBEdit1: TdxDBEdit
            Left = 56
            Top = 28
            Width = 127
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            DataField = 'MA_DOT'
            DataSource = dsDSDotthi
            StyleController = dmMain.StyleController
          end
          object dxDBEdit3: TdxDBEdit
            Left = 248
            Top = 28
            Width = 232
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            DataField = 'TEN_DOT'
            DataSource = dsDSDotthi
            StyleController = dmMain.StyleController
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 56
            Top = 51
            Width = 127
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 2
            DataField = 'NGAY_THI'
            DataSource = dsDSDotthi
            StyleController = dmMain.StyleController
          end
          object dxDBSpinEdit1: TdxDBSpinEdit
            Left = 248
            Top = 51
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            Alignment = taCenter
            DataField = 'SL_COMAT'
            DataSource = dsDSDotthi
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object dxDBSpinEdit2: TdxDBSpinEdit
            Left = 426
            Top = 51
            Width = 100
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            Alignment = taCenter
            DataField = 'SL_VANG'
            DataSource = dsDSDotthi
            StyleController = dmMain.StyleController
            StoredValues = 1
          end
          object dxDBEdit2: TdxDBEdit
            Left = 56
            Top = 74
            Width = 841
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            DataField = 'GHI_CHU'
            DataSource = dsDSDotthi
            StyleController = dmMain.StyleController
          end
          object pageMain: TElPageControl
            Left = 14
            Top = 130
            Width = 289
            Height = 193
            BorderWidth = 0
            DrawFocus = False
            Flat = True
            HotTrack = True
            Multiline = False
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
            ActivePage = tabLCBNN
            FlatTabBorderColor = clBtnShadow
            DraggablePages = False
            ActiveTabFont.Charset = DEFAULT_CHARSET
            ActiveTabFont.Color = clWindowText
            ActiveTabFont.Height = -11
            ActiveTabFont.Name = 'MS Sans Serif'
            ActiveTabFont.Style = []
            TabCursor = crDefault
            ParentColor = False
            TabOrder = 9
            object tabLCBNN: TElTabSheet
              PageControl = pageMain
              ImageIndex = -1
              TabVisible = True
              Caption = 'L'#432#417'ng CBNN'
              object gridEmployee: TdxDBGrid
                Left = 0
                Top = 0
                Width = 285
                Height = 170
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch CB-CNV tham gia thi n'#226'ng b'#7853'c'
                    DisableCustomizing = True
                    DisableDragging = True
                    Fixed = bfLeft
                    OnlyOwnColumns = True
                    Sizing = False
                    Width = 222
                  end
                  item
                    Caption = 'M'#7913'c l'#432#417'ng '#273'ang h'#432#7903'ng'
                    Width = 129
                  end
                  item
                    Caption = 'M'#7913'c l'#432#417'ng '#273'i'#7873'u ch'#7881'nh'
                    Width = 149
                  end
                  item
                    Caption = 'Th'#244'ng tin kha'#769'c'
                    Width = 189
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'NANGLUONG_CBNN_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 0
                DataSource = dsDSThamgia
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                ShowBands = True
                object gridEmployeeMA_NHANVIEN: TdxDBGridColumn
                  Caption = 'MSNV'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 57
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'MA_NHANVIEN'
                end
                object gridEmployeeFULLNAME: TdxDBGridPopupColumn
                  Caption = 'H'#7885' v'#224' t'#234'n'
                  HeaderAlignment = taCenter
                  Width = 156
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FULL_NAME'
                  OnCloseUp = gridEmployeeFULLNAMECloseUp
                  OnInitPopup = gridEmployeeFULLNAMEInitPopup
                  Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
                end
                object gridEmployeeTITLE_NAME: TdxDBGridColumn
                  Caption = 'Ch'#7913'c v'#7909
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 91
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NAME'
                  Caption_UTF7 = 'Ch+Huk-c v+HuU'
                end
                object gridEmployeeNGACH_BAC_HT: TdxDBGridColumn
                  Caption = 'B'#7843'ng l'#432#417'ng'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 77
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'NGACH_LUONG_HT'
                  Caption_UTF7 = 'B+HqM-ng l+AbABoQ-ng'
                end
                object gridEmployeeBAC_LUONG_HT: TdxDBGridColumn
                  Alignment = taCenter
                  Caption = 'B'#7853'c l'#432#417'ng'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 74
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'BAC_LUONG_HT'
                  Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
                end
                object gridEmployeeHESO_LUONG_HT: TdxDBGridCalcColumn
                  Alignment = taCenter
                  Caption = 'H'#7879' s'#7889
                  HeaderAlignment = taCenter
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'HESO_LUONG_HT'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object gridEmployeeNGAY_NHAN_BAC_HT: TdxDBGridDateColumn
                  Caption = 'Ng'#224'y nh'#7853'n'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 74
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'NGAY_NHAN_BAC_HT'
                  Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n'
                end
                object gridEmployeeNGACH_LUONG_DENGHI: TdxDBGridPopupColumn
                  Caption = 'B'#7843'ng l'#432#417'ng'
                  HeaderAlignment = taCenter
                  Width = 76
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'NGACH_LUONG_DENGHI'
                  OnCloseUp = gridEmployeeNGACH_LUONG_DENGHICloseUp
                  OnInitPopup = gridEmployeeNGACH_LUONG_DENGHIInitPopup
                  Caption_UTF7 = 'B+HqM-ng l+AbABoQ-ng'
                end
                object gridEmployeeBAC_LUONG_DENGHI: TdxDBGridCalcColumn
                  Alignment = taCenter
                  Caption = 'B'#7853'c l'#432#417'ng'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 70
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'BAC_LUONG_DENGHI'
                  Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
                end
                object gridEmployeeHESO_LUONG_DENGHI: TdxDBGridCalcColumn
                  Alignment = taCenter
                  Caption = 'H'#7879' s'#7889
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 73
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'HESO_LUONG_DENGHI'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object gridEmployeeNGAY_DENGHI_NANGBAC: TdxDBGridDateColumn
                  Caption = 'Ng'#224'y nh'#7853'n'
                  HeaderAlignment = taCenter
                  Width = 66
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'NGAY_DENGHI_NANGBAC'
                  Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n'
                end
                object gridEmployeeVANG: TdxDBGridCheckColumn
                  Caption = 'V'#259#769'ng'
                  HeaderAlignment = taCenter
                  MinWidth = 20
                  Width = 53
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'VANG'
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                  Caption_UTF7 = 'V+AQMDAQ-ng'
                end
                object gridEmployeeLY_THUYET: TdxDBGridCalcColumn
                  Caption = 'Ly'#769' thuy'#234#769't'
                  HeaderAlignment = taCenter
                  Width = 81
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'LY_THUYET'
                  Caption_UTF7 = 'Ly+AwE thuy+AOoDAQ-t'
                end
                object gridEmployeeTHUC_HANH: TdxDBGridCalcColumn
                  Caption = 'Th'#432#803'c ha'#768'nh'
                  HeaderAlignment = taCenter
                  Width = 84
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'THUC_HANH'
                  Caption_UTF7 = 'Th+AbADIw-c ha+AwA-nh'
                end
                object gridEmployeeMON_KHAC: TdxDBGridCalcColumn
                  Caption = 'M'#244'n kha'#769'c'
                  HeaderAlignment = taCenter
                  Width = 74
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'MON_KHAC'
                  Caption_UTF7 = 'M+APQ-n kha+AwE-c'
                end
                object gridEmployeeDIEM_TB: TdxDBGridCalcColumn
                  Caption = #272'i'#234#777'm TB'
                  HeaderAlignment = taCenter
                  Width = 67
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'DIEM_TB'
                  Caption_UTF7 = '+ARA-i+AOoDCQ-m TB'
                end
                object gridEmployeeXEP_LOAI: TdxDBGridColumn
                  Caption = 'X'#234#769'p loa'#803'i'
                  HeaderAlignment = taCenter
                  Width = 80
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'XEP_LOAI'
                  Caption_UTF7 = 'X+AOoDAQ-p loa+AyM-i'
                end
                object gridEmployeeY_KIEN: TdxDBGridColumn
                  Caption = 'Y'#769' ki'#234#769'n'
                  HeaderAlignment = taCenter
                  Width = 150
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'Y_KIEN'
                  Caption_UTF7 = 'Y+AwE ki+AOoDAQ-n'
                end
                object gridEmployeeGHI_CHU: TdxDBGridColumn
                  Caption = 'Ghi chu'#769
                  HeaderAlignment = taCenter
                  Width = 150
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'GHI_CHU'
                  Caption_UTF7 = 'Ghi chu+AwE'
                end
              end
            end
            object tabLCDCV: TElTabSheet
              PageControl = pageMain
              ImageIndex = -1
              TabVisible = True
              Caption = 'L'#432#417'ng CDCV'
              Visible = False
              object gridLuongCongTy: TdxDBGrid
                Left = 0
                Top = 0
                Width = 285
                Height = 170
                Bands = <
                  item
                    Caption = 'Danh s'#225'ch CB-CNV tham gia thi n'#226'ng b'#7853'c'
                    DisableCustomizing = True
                    DisableDragging = True
                    Fixed = bfLeft
                    OnlyOwnColumns = True
                    Sizing = False
                    Width = 222
                  end
                  item
                    Caption = 'M'#7913'c l'#432#417'ng '#273'ang h'#432#7903'ng'
                    Width = 129
                  end
                  item
                    Caption = 'M'#7913'c l'#432#417'ng '#273'i'#7873'u ch'#7881'nh'
                    Width = 149
                  end
                  item
                    Caption = 'Th'#244'ng tin kha'#769'c'
                    Width = 189
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'NANGLUONG_CONGTY_ID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 0
                DataSource = dsLuongCDCV
                Filter.Criteria = {00000000}
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoDragCollapse, edgoDragExpand, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                ShowBands = True
                object gridLuongCongTyMA_NHANVIEN: TdxDBGridColumn
                  Caption = 'MSNV'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 57
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'MA_NHANVIEN'
                end
                object gridLuongCongTyFULL_NAME: TdxDBGridPopupColumn
                  Caption = 'H'#7885' v'#224' t'#234'n'
                  HeaderAlignment = taCenter
                  Width = 156
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FULL_NAME'
                  OnCloseUp = gridLuongCongTyFULL_NAMECloseUp
                  OnInitPopup = gridLuongCongTyFULL_NAMEInitPopup
                  Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
                end
                object gridLuongCongTyTITLE_NAME: TdxDBGridColumn
                  Caption = 'Ch'#7913'c v'#7909
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 91
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TITLE_NAME'
                  Caption_UTF7 = 'Ch+Huk-c v+HuU'
                end
                object gridLuongCongTyNGACH_LUONG_HT: TdxDBGridColumn
                  Caption = 'B'#7843'ng l'#432#417'ng'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 77
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'NGACH_LUONG_HT'
                  Caption_UTF7 = 'B+HqM-ng l+AbABoQ-ng'
                end
                object gridLuongCongTyBAC_LUONG_HT: TdxDBGridColumn
                  Alignment = taCenter
                  Caption = 'B'#7853'c l'#432#417'ng'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 74
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'BAC_LUONG_HT'
                  Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
                end
                object gridLuongCongTyHESO_LUONG_HT: TdxDBGridCalcColumn
                  Alignment = taCenter
                  Caption = 'H'#7879' s'#7889
                  HeaderAlignment = taCenter
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'HESO_LUONG_HT'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object gridLuongCongTyNGAY_NHAN_BAC_HT: TdxDBGridDateColumn
                  Caption = 'Ng'#224'y nh'#7853'n'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 74
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'NGAY_NHAN_BAC_HT'
                  Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n'
                end
                object gridLuongCongTyNGACH_LUONG_DENGHI: TdxDBGridPopupColumn
                  Caption = 'B'#7843'ng l'#432#417'ng'
                  HeaderAlignment = taCenter
                  Width = 76
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'NGACH_LUONG_DENGHI'
                  OnCloseUp = gridLuongCongTyNGACH_LUONG_DENGHICloseUp
                  OnInitPopup = gridLuongCongTyNGACH_LUONG_DENGHIInitPopup
                  Caption_UTF7 = 'B+HqM-ng l+AbABoQ-ng'
                end
                object gridLuongCongTyBAC_LUONG_DENGHI: TdxDBGridCalcColumn
                  Alignment = taCenter
                  Caption = 'B'#7853'c l'#432#417'ng'
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 70
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'BAC_LUONG_DENGHI'
                  Caption_UTF7 = 'B+Hq0-c l+AbABoQ-ng'
                end
                object gridLuongCongTyHESO_LUONG_DENGHI: TdxDBGridCalcColumn
                  Alignment = taCenter
                  Caption = 'H'#7879' s'#7889
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 73
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'HESO_LUONG_DENGHI'
                  Caption_UTF7 = 'H+Hsc s+HtE'
                end
                object gridLuongCongTyNGAY_DENGHI_NANGBAC: TdxDBGridDateColumn
                  Caption = 'Ng'#224'y nh'#7853'n'
                  HeaderAlignment = taCenter
                  Width = 66
                  BandIndex = 2
                  RowIndex = 0
                  FieldName = 'NGAY_DENGHI_NANGBAC'
                  Caption_UTF7 = 'Ng+AOA-y nh+Hq0-n'
                end
                object gridLuongCongTyVANG: TdxDBGridCheckColumn
                  Caption = 'V'#259#769'ng'
                  HeaderAlignment = taCenter
                  MinWidth = 20
                  Width = 53
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'VANG'
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                  Caption_UTF7 = 'V+AQMDAQ-ng'
                end
                object gridLuongCongTyLY_THUYET: TdxDBGridCalcColumn
                  Caption = 'Ly'#769' thuy'#234#769't'
                  HeaderAlignment = taCenter
                  Width = 81
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'LY_THUYET'
                  Caption_UTF7 = 'Ly+AwE thuy+AOoDAQ-t'
                end
                object gridLuongCongTyTHUC_HANH: TdxDBGridCalcColumn
                  Caption = 'Th'#432#803'c ha'#768'nh'
                  HeaderAlignment = taCenter
                  Width = 84
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'THUC_HANH'
                  Caption_UTF7 = 'Th+AbADIw-c ha+AwA-nh'
                end
                object gridLuongCongTyMON_KHAC: TdxDBGridCalcColumn
                  Caption = 'M'#244'n kha'#769'c'
                  HeaderAlignment = taCenter
                  Width = 74
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'MON_KHAC'
                  Caption_UTF7 = 'M+APQ-n kha+AwE-c'
                end
                object gridLuongCongTyDIEM_TB: TdxDBGridCalcColumn
                  Caption = #272'i'#234#777'm TB'
                  HeaderAlignment = taCenter
                  Width = 67
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'DIEM_TB'
                  Caption_UTF7 = '+ARA-i+AOoDCQ-m TB'
                end
                object gridLuongCongTyXEP_LOAI: TdxDBGridColumn
                  Caption = 'X'#234#769'p loa'#803'i'
                  HeaderAlignment = taCenter
                  Width = 80
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'XEP_LOAI'
                  Caption_UTF7 = 'X+AOoDAQ-p loa+AyM-i'
                end
                object gridLuongCongTyY_KIEN: TdxDBGridColumn
                  Caption = 'Y'#769' ki'#234#769'n'
                  HeaderAlignment = taCenter
                  Width = 150
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'Y_KIEN'
                  Caption_UTF7 = 'Y+AwE ki+AOoDAQ-n'
                end
                object gridLuongCongTyGHI_CHU: TdxDBGridColumn
                  Caption = 'Ghi chu'#769
                  HeaderAlignment = taCenter
                  Width = 150
                  BandIndex = 3
                  RowIndex = 0
                  FieldName = 'GHI_CHU'
                  Caption_UTF7 = 'Ghi chu+AwE'
                end
              end
            end
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group1: TdxLayoutGroup
              Caption = 'Th'#244'ng tin '#273#7907't thi n'#226'ng b'#7853'c l'#432#417'ng'
              object dxLayoutControl1Group2: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'M'#227' '#273#7907't'
                  Control = dxDBEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'T'#234'n '#273#7907't'
                  Control = dxDBEdit3
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group3: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ng'#224'y thi'
                  Control = dxDBDateEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  Caption = 'S'#7889' NV c'#243' m'#7863't'
                  Control = dxDBSpinEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  Caption = 'S'#7889' NV v'#7855'ng m'#7863't'
                  Control = dxDBSpinEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Item6: TdxLayoutItem
                Caption = 'Ghi ch'#250
                Control = dxDBEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group4: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Danh s'#225'ch CB-CNV tham gia thi - '#273#7873' ngh'#7883' n'#226'ng b'#7853'c l'#432#417'ng'
              object dxLayoutControl1Item7: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'New Item'
                ShowCaption = False
                Control = pageMain
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        Caption = 'T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
        LayoutDirection = ldHorizontal
        object dxlcMainItem11: TdxLayoutItem
          AutoAligns = [aaVertical]
          Control = frameDateTime1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcMainGroup2: TdxLayoutGroup [1]
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'Danh s'#225'ch c'#225'c '#273#7907't thi n'#226'ng b'#7853'c l'#432#417'ng'
        LayoutDirection = ldHorizontal
        object dxlcMainGroup10: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
        end
        object dxlcMainGroup12: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainItem18: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'New Item'
            ShowCaption = False
            Control = panelMain
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlcMainGroup3: TdxLayoutGroup [2]
        Caption = 'In b'#225'o bi'#7875'u'
        LookAndFeel = dmMain.StyleWeb
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'Ch'#7885'n m'#7851'u in'
          Control = dxSelectFile
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem9: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avClient
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem12: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avClient
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
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
        Caption = 'Theo d'#245'i n'#226'ng b'#7853'c l'#432#417'ng Nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 40
    Top = 192
  end
  object qryDSDotthi: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TU_NGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEN_NGAY'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_DOTTHI_NANGBACLUONG'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    EditSQL.Strings = (
      'UPDATE HR_DOTTHI_NANGBACLUONG SET'
      '   KEY_ID = :KEY_ID, /*PK*/'
      '   MA_DOT = :MA_DOT,'
      '   TEN_DOT = :TEN_DOT,'
      '   NGAY_THI = :NGAY_THI,'
      '   SL_COMAT = :SL_COMAT,'
      '   GHI_CHU = :GHI_CHU,'
      '   SL_VANG = :SL_VANG'
      'WHERE'
      '   KEY_ID = :OLD_KEY_ID')
    GeneratorLinks.Strings = (
      'KEY_ID = gen_hr_dotthi_nangbacluong_id')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_DOTTHI_NANGBACLUONG('
      '   KEY_ID, /*PK*/'
      '   MA_DOT,'
      '   TEN_DOT,'
      '   NGAY_THI,'
      '   SL_COMAT,'
      '   GHI_CHU,'
      '   SL_VANG)'
      'VALUES ('
      '   :KEY_ID,'
      '   :MA_DOT,'
      '   :TEN_DOT,'
      '   :NGAY_THI,'
      '   :SL_COMAT,'
      '   :GHI_CHU,'
      '   :SL_VANG)')
    KeyLinks.Strings = (
      'HR_DOTTHI_NANGBACLUONG.KEY_ID')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT KEY_ID'
      '     , MA_DOT'
      '     , TEN_DOT'
      '     , NGAY_THI'
      '     , SL_COMAT'
      '     , GHI_CHU'
      '     , SL_VANG'
      'FROM HR_DOTTHI_NANGBACLUONG'
      
        'WHERE HR_DOTTHI_NANGBACLUONG.NGAY_THI BETWEEN :TU_NGAY AND :DEN_' +
        'NGAY ')
    FieldOptions = []
    Left = 72
    Top = 160
    object qryDSDotthiKEY_ID: TIntegerField
      FieldName = 'KEY_ID'
      Required = True
    end
    object qryDSDotthiMA_DOT: TWideStringField
      FieldName = 'MA_DOT'
      Required = True
      Size = 30
    end
    object qryDSDotthiTEN_DOT: TWideStringField
      FieldName = 'TEN_DOT'
      Required = True
      Size = 300
    end
    object qryDSDotthiNGAY_THI: TDateField
      FieldName = 'NGAY_THI'
      Required = True
    end
    object qryDSDotthiSL_COMAT: TIntegerField
      FieldName = 'SL_COMAT'
    end
    object qryDSDotthiGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryDSDotthiSL_VANG: TIntegerField
      FieldName = 'SL_VANG'
    end
  end
  object dsDSDotthi: TDataSource
    DataSet = qryDSDotthi
    Left = 40
    Top = 160
  end
  object qryDSThamgia: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KEY_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_NANGLUONG_CBNN'
      'WHERE'
      '   NANGLUONG_CBNN_ID = :OLD_NANGLUONG_CBNN_ID')
    EditSQL.Strings = (
      'UPDATE HR_NANGLUONG_CBNN SET'
      '   NANGLUONG_CBNN_ID = :NANGLUONG_CBNN_ID, /*PK*/'
      '   DOTTHI_ID = :DOTTHI_ID,'
      '   MA_NHANVIEN = :MA_NHANVIEN,'
      '   NGACH_LUONG_HT = :NGACH_LUONG_HT,'
      '   BAC_LUONG_HT = :BAC_LUONG_HT,'
      '   HESO_LUONG_HT = :HESO_LUONG_HT,'
      '   NGAY_NHAN_BAC_HT = :NGAY_NHAN_BAC_HT,'
      '   NGACH_LUONG_DENGHI = :NGACH_LUONG_DENGHI,'
      '   BAC_LUONG_DENGHI = :BAC_LUONG_DENGHI,'
      '   HESO_LUONG_DENGHI = :HESO_LUONG_DENGHI,'
      '   NGAY_DENGHI_NANGBAC = :NGAY_DENGHI_NANGBAC,'
      '   VANG = :VANG,'
      '   LY_THUYET = :LY_THUYET,'
      '   THUC_HANH = :THUC_HANH,'
      '   MON_KHAC = :MON_KHAC,'
      '   DIEM_TB = :DIEM_TB,'
      '   XEP_LOAI = :XEP_LOAI,'
      '   Y_KIEN = :Y_KIEN,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   NANGLUONG_CBNN_ID = :OLD_NANGLUONG_CBNN_ID')
    GeneratorLinks.Strings = (
      'NANGLUONG_CBNN_ID = GEN_HR_NANGLUONG_CBNN_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_NANGLUONG_CBNN('
      '   NANGLUONG_CBNN_ID, /*PK*/'
      '   DOTTHI_ID,'
      '   MA_NHANVIEN,'
      '   NGACH_LUONG_HT,'
      '   BAC_LUONG_HT,'
      '   HESO_LUONG_HT,'
      '   NGAY_NHAN_BAC_HT,'
      '   NGACH_LUONG_DENGHI,'
      '   BAC_LUONG_DENGHI,'
      '   HESO_LUONG_DENGHI,'
      '   NGAY_DENGHI_NANGBAC,'
      '   VANG,'
      '   LY_THUYET,'
      '   THUC_HANH,'
      '   MON_KHAC,'
      '   DIEM_TB,'
      '   XEP_LOAI,'
      '   Y_KIEN,'
      '   GHI_CHU)'
      'VALUES ('
      '   :NANGLUONG_CBNN_ID,'
      '   :DOTTHI_ID,'
      '   :MA_NHANVIEN,'
      '   :NGACH_LUONG_HT,'
      '   :BAC_LUONG_HT,'
      '   :HESO_LUONG_HT,'
      '   :NGAY_NHAN_BAC_HT,'
      '   :NGACH_LUONG_DENGHI,'
      '   :BAC_LUONG_DENGHI,'
      '   :HESO_LUONG_DENGHI,'
      '   :NGAY_DENGHI_NANGBAC,'
      '   :VANG,'
      '   :LY_THUYET,'
      '   :THUC_HANH,'
      '   :MON_KHAC,'
      '   :DIEM_TB,'
      '   :XEP_LOAI,'
      '   :Y_KIEN,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'NANGLUONG_CBNN_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDSDotthi
    SQL.Strings = (
      'SELECT NANGLUONG_CBNN_ID,'
      '    DOTTHI_ID,'
      '    HR_DOTTHI_NANGBACLUONG.MA_DOT,'
      '    HR_DOTTHI_NANGBACLUONG.TEN_DOT,'
      '    HR_DOTTHI_NANGBACLUONG.NGAY_THI,'
      '    HR_DOTTHI_NANGBACLUONG.SL_COMAT,'
      '    HR_DOTTHI_NANGBACLUONG.SL_VANG,'
      '    HR_DOTTHI_NANGBACLUONG.GHI_CHU GHICHU_DOTTHI,'
      '    MA_NHANVIEN,'
      '    HR_MASK_EMPLOYEE.FULL_NAME,'
      
        '    CASE WHEN HR_MASK_EMPLOYEE.GENDER = 1 THEN '#39'Nam'#39' ELSE '#39'N'#225#187#175#39 +
        ' END GIOI_TINH,'
      '    HR_MASK_EMPLOYEE.BIRTH_DATE,'
      '    HR_MASK_EMPLOYEE.TITLE_NAME,'
      '    HR_MASK_EMPLOYEE.DEPT_NAME,'
      
        '    HR_MASK_EMPLOYEE.TITLE_NAME || '#39' - '#39' || HR_MASK_EMPLOYEE.DEP' +
        'T_NAME POSITION_NAME,'
      '    NGACH_LUONG_HT,'
      '    BAC_LUONG_HT,'
      '    HESO_LUONG_HT,'
      '    NGAY_NHAN_BAC_HT,'
      '    NGACH_LUONG_DENGHI,'
      '    BAC_LUONG_DENGHI,'
      '    HESO_LUONG_DENGHI,'
      '    NGAY_DENGHI_NANGBAC,'
      '    VANG,'
      '    LY_THUYET,'
      '    THUC_HANH,'
      '    MON_KHAC,'
      '    DIEM_TB,'
      '    XEP_LOAI,'
      '    Y_KIEN,'
      '    HR_NANGLUONG_CBNN.GHI_CHU'
      'FROM HR_NANGLUONG_CBNN'
      
        'JOIN HR_MASK_EMPLOYEE(:USER_NAME) ON HR_NANGLUONG_CBNN.MA_NHANVI' +
        'EN = HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      
        'JOIN HR_DOTTHI_NANGBACLUONG ON HR_DOTTHI_NANGBACLUONG.KEY_ID = H' +
        'R_NANGLUONG_CBNN.DOTTHI_ID'
      'WHERE DOTTHI_ID = :KEY_ID'
      '')
    FieldOptions = []
    Left = 72
    Top = 224
    object qryDSThamgiaMA_NHANVIEN: TWideStringField
      FieldName = 'MA_NHANVIEN'
      OnChange = qryDSThamgiaMA_NHANVIENChange
      Size = 30
    end
    object qryDSThamgiaFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 96
    end
    object qryDSThamgiaGIOI_TINH: TWideStringField
      FieldName = 'GIOI_TINH'
      ReadOnly = True
      Size = 9
    end
    object qryDSThamgiaBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryDSThamgiaTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryDSThamgiaDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDSThamgiaPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 261
    end
    object qryDSThamgiaNGACH_LUONG_HT: TWideStringField
      FieldName = 'NGACH_LUONG_HT'
      Size = 30
    end
    object qryDSThamgiaBAC_LUONG_HT: TIntegerField
      FieldName = 'BAC_LUONG_HT'
    end
    object qryDSThamgiaHESO_LUONG_HT: TIBOFloatField
      FieldName = 'HESO_LUONG_HT'
    end
    object qryDSThamgiaNGAY_NHAN_BAC_HT: TDateField
      FieldName = 'NGAY_NHAN_BAC_HT'
    end
    object qryDSThamgiaNGACH_LUONG_DENGHI: TWideStringField
      FieldName = 'NGACH_LUONG_DENGHI'
      Required = True
      Size = 30
    end
    object qryDSThamgiaBAC_LUONG_DENGHI: TIntegerField
      FieldName = 'BAC_LUONG_DENGHI'
      Required = True
    end
    object qryDSThamgiaHESO_LUONG_DENGHI: TIBOFloatField
      FieldName = 'HESO_LUONG_DENGHI'
      Required = True
    end
    object qryDSThamgiaNGAY_DENGHI_NANGBAC: TDateField
      FieldName = 'NGAY_DENGHI_NANGBAC'
      Required = True
    end
    object qryDSThamgiaVANG: TSmallintField
      FieldName = 'VANG'
    end
    object qryDSThamgiaLY_THUYET: TIBOFloatField
      FieldName = 'LY_THUYET'
    end
    object qryDSThamgiaTHUC_HANH: TIBOFloatField
      FieldName = 'THUC_HANH'
    end
    object qryDSThamgiaMON_KHAC: TIBOFloatField
      FieldName = 'MON_KHAC'
    end
    object qryDSThamgiaDIEM_TB: TIBOFloatField
      FieldName = 'DIEM_TB'
    end
    object qryDSThamgiaXEP_LOAI: TWideStringField
      FieldName = 'XEP_LOAI'
      Size = 255
    end
    object qryDSThamgiaY_KIEN: TWideStringField
      FieldName = 'Y_KIEN'
      Size = 255
    end
    object qryDSThamgiaGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryDSThamgiaGHICHU_DOTTHI: TWideStringField
      FieldName = 'GHICHU_DOTTHI'
      Size = 255
    end
    object qryDSThamgiaSL_VANG: TIntegerField
      FieldName = 'SL_VANG'
    end
    object qryDSThamgiaSL_COMAT: TIntegerField
      FieldName = 'SL_COMAT'
    end
    object qryDSThamgiaNGAY_THI: TDateField
      FieldName = 'NGAY_THI'
    end
    object qryDSThamgiaTEN_DOT: TWideStringField
      FieldName = 'TEN_DOT'
      Size = 300
    end
    object qryDSThamgiaMA_DOT: TWideStringField
      FieldName = 'MA_DOT'
      Size = 30
    end
    object qryDSThamgiaDOTTHI_ID: TIntegerField
      FieldName = 'DOTTHI_ID'
      Required = True
    end
    object qryDSThamgiaNANGLUONG_CBNN_ID: TIntegerField
      FieldName = 'NANGLUONG_CBNN_ID'
      Required = True
    end
  end
  object dsDSThamgia: TDataSource
    DataSet = qryDSThamgia
    Left = 40
    Top = 224
  end
  object rpTheodoinangluong: TppReport
    AutoStop = False
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    PreviewFormSettings.WindowState = wsMaximized
    Left = 104
    Top = 160
    Version = '7.0'
    mmColumnWidth = 0
  end
  object dsnTheodoinangluong: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpTheodoinangluong
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 104
    Top = 191
  end
  object ppChiTietDotNangLCB: TppDBPipeline
    DataSource = dsDSThamgia
    UserName = 'ChiTietDotNangLCB'
    Left = 40
    Top = 259
    object ppKetquaThuviecppField1: TppField
      FieldAlias = 'EMPLOYEE_NO'
      FieldName = 'EMPLOYEE_NO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppKetquaThuviecppField2: TppField
      FieldAlias = 'FULL_NAME'
      FieldName = 'FULL_NAME'
      FieldLength = 129
      DisplayWidth = 129
      Position = 1
    end
    object ppKetquaThuviecppField3: TppField
      FieldAlias = 'CASE'
      FieldName = 'CASE'
      FieldLength = 9
      DisplayWidth = 9
      Position = 2
    end
    object ppKetquaThuviecppField4: TppField
      FieldAlias = 'BIRTH_DATE'
      FieldName = 'BIRTH_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppKetquaThuviecppField5: TppField
      FieldAlias = 'TEN_DONVI'
      FieldName = 'TEN_DONVI'
      FieldLength = 126
      DisplayWidth = 126
      Position = 4
    end
    object ppKetquaThuviecppField6: TppField
      FieldAlias = 'TITLE_NAME'
      FieldName = 'TITLE_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 5
    end
    object ppKetquaThuviecppField7: TppField
      FieldAlias = 'ASSIGNED_DATE'
      FieldName = 'ASSIGNED_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppKetquaThuviecppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'LUONG_CHINH'
      FieldName = 'LUONG_CHINH'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppKetquaThuviecppField9: TppField
      FieldAlias = 'BAC_LUONG_HT'
      FieldName = 'BAC_LUONG_HT'
      FieldLength = 69
      DisplayWidth = 69
      Position = 8
    end
    object ppKetquaThuviecppField10: TppField
      FieldAlias = 'NGACH_LUONG_HT'
      FieldName = 'NGACH_LUONG_HT'
      FieldLength = 63
      DisplayWidth = 63
      Position = 9
    end
    object ppKetquaThuviecppField11: TppField
      FieldAlias = 'NGAY_NHAN_BAC_HT'
      FieldName = 'NGAY_NHAN_BAC_HT'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppKetquaThuviecppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'KEY_ID'
      FieldName = 'KEY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppKetquaThuviecppField13: TppField
      FieldAlias = 'NGACH_LUONG'
      FieldName = 'NGACH_LUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object ppKetquaThuviecppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'BAC_LUONG'
      FieldName = 'BAC_LUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppKetquaThuviecppField15: TppField
      FieldAlias = 'NGAY_NHAN_BAC'
      FieldName = 'NGAY_NHAN_BAC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 14
    end
    object ppKetquaThuviecppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VANG'
      FieldName = 'VANG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppKetquaThuviecppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'LY_THUYET'
      FieldName = 'LY_THUYET'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppKetquaThuviecppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'THUC_HANH'
      FieldName = 'THUC_HANH'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppKetquaThuviecppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'MON_KHAC'
      FieldName = 'MON_KHAC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppKetquaThuviecppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIEM_TB'
      FieldName = 'DIEM_TB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppKetquaThuviecppField21: TppField
      FieldAlias = 'XEP_LOAI'
      FieldName = 'XEP_LOAI'
      FieldLength = 300
      DisplayWidth = 300
      Position = 20
    end
    object ppKetquaThuviecppField22: TppField
      FieldAlias = 'Y_KIEN'
      FieldName = 'Y_KIEN'
      FieldLength = 255
      DisplayWidth = 255
      Position = 21
    end
    object ppKetquaThuviecppField23: TppField
      FieldAlias = 'GHI_CHU'
      FieldName = 'GHI_CHU'
      FieldLength = 255
      DisplayWidth = 255
      Position = 22
    end
    object ppKetquaThuviecppField24: TppField
      FieldAlias = 'MA_DOT'
      FieldName = 'MA_DOT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object ppKetquaThuviecppField25: TppField
      FieldAlias = 'TEN_DOT'
      FieldName = 'TEN_DOT'
      FieldLength = 300
      DisplayWidth = 300
      Position = 24
    end
    object ppKetquaThuviecppField26: TppField
      FieldAlias = 'NGAY_THI'
      FieldName = 'NGAY_THI'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 25
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 72
    Top = 192
    object acXemDS: TAction
      Caption = 'acXemDS'
      ImageIndex = 6
      OnExecute = acXemDSExecute
    end
    object acDesign: TAction
      Caption = 'acDesign'
      ImageIndex = 59
      OnExecute = acDesignExecute
    end
    object acPreview: TAction
      Caption = 'acPreview'
      ImageIndex = 61
      OnExecute = acPreviewExecute
    end
    object acPrint: TAction
      Caption = 'acPrint'
      ImageIndex = 60
      OnExecute = acPrintExecute
    end
  end
  object qryLuongHienTai: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MA_NHANVIEN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'XEM_DENNGAY'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT FIRST 1'
      '    HR_WAGE_STANDARD_DETAIL.WAGE_SCALE,'
      '    HR_WAGE_STANDARD_DETAIL.WAGE_LEVEL,'
      '    HR_WAGE_STANDARD_DETAIL.WAGE_COEFF,'
      '    HR_WAGE_STANDARD_DETAIL.APPLY_DATE '
      'FROM HR_WAGE_STANDARD_DETAIL'
      'WHERE HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO = :MA_NHANVIEN'
      'AND HR_WAGE_STANDARD_DETAIL.APPLY_DATE < :XEM_DENNGAY'
      'ORDER BY HR_WAGE_STANDARD_DETAIL.APPLY_DATE DESC')
    FieldOptions = []
    Left = 72
    Top = 259
    object qryLuongHienTaiWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 30
    end
    object qryLuongHienTaiWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object qryLuongHienTaiWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
      Required = True
    end
    object qryLuongHienTaiAPPLY_DATE: TDateField
      FieldName = 'APPLY_DATE'
    end
  end
  object qryDanhSachDotNangLCB: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TU_NGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEN_NGAY'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT NANGLUONG_CBNN_ID,'
      '    DOTTHI_ID,'
      '    HR_DOTTHI_NANGBACLUONG.MA_DOT,'
      '    HR_DOTTHI_NANGBACLUONG.TEN_DOT,'
      '    HR_DOTTHI_NANGBACLUONG.NGAY_THI,'
      '    HR_DOTTHI_NANGBACLUONG.SL_COMAT,'
      '    HR_DOTTHI_NANGBACLUONG.SL_VANG,'
      '    HR_DOTTHI_NANGBACLUONG.GHI_CHU GHICHU_DOTTHI,'
      '    MA_NHANVIEN,'
      '    HR_MASK_EMPLOYEE.FULL_NAME,'
      
        '    CASE WHEN HR_MASK_EMPLOYEE.GENDER = 1 THEN '#39'Nam'#39' ELSE '#39'N'#225#187#175#39 +
        ' END GIOI_TINH,'
      '    HR_MASK_EMPLOYEE.BIRTH_DATE,'
      '    HR_MASK_EMPLOYEE.TITLE_NAME,'
      '    HR_MASK_EMPLOYEE.DEPT_NAME,'
      
        '    HR_MASK_EMPLOYEE.TITLE_NAME || '#39' - '#39' || HR_MASK_EMPLOYEE.DEP' +
        'T_NAME POSITION_NAME,'
      '    NGACH_LUONG_HT,'
      '    BAC_LUONG_HT,'
      '    HESO_LUONG_HT,'
      '    NGAY_NHAN_BAC_HT,'
      '    NGACH_LUONG_DENGHI,'
      '    BAC_LUONG_DENGHI,'
      '    HESO_LUONG_DENGHI,'
      '    NGAY_DENGHI_NANGBAC,'
      '    VANG,'
      '    LY_THUYET,'
      '    THUC_HANH,'
      '    MON_KHAC,'
      '    DIEM_TB,'
      '    XEP_LOAI,'
      '    Y_KIEN,'
      '    HR_NANGLUONG_CBNN.GHI_CHU'
      'FROM HR_NANGLUONG_CBNN'
      
        'JOIN HR_MASK_EMPLOYEE(:USER_NAME) ON HR_NANGLUONG_CBNN.MA_NHANVI' +
        'EN = HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      
        'JOIN HR_DOTTHI_NANGBACLUONG ON HR_DOTTHI_NANGBACLUONG.KEY_ID = H' +
        'R_NANGLUONG_CBNN.DOTTHI_ID'
      
        'WHERE HR_DOTTHI_NANGBACLUONG.NGAY_THI BETWEEN :TU_NGAY AND :DEN_' +
        'NGAY')
    FieldOptions = []
    Left = 104
    Top = 224
    object WideStringField1: TWideStringField
      FieldName = 'MA_NHANVIEN'
      OnChange = qryDSThamgiaMA_NHANVIENChange
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 96
    end
    object WideStringField3: TWideStringField
      FieldName = 'GIOI_TINH'
      ReadOnly = True
      Size = 9
    end
    object DateField1: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object WideStringField4: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object WideStringField5: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object WideStringField6: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 261
    end
    object WideStringField7: TWideStringField
      FieldName = 'NGACH_LUONG_HT'
      Size = 30
    end
    object IntegerField1: TIntegerField
      FieldName = 'BAC_LUONG_HT'
    end
    object IBOFloatField1: TIBOFloatField
      FieldName = 'HESO_LUONG_HT'
    end
    object DateField2: TDateField
      FieldName = 'NGAY_NHAN_BAC_HT'
    end
    object WideStringField8: TWideStringField
      FieldName = 'NGACH_LUONG_DENGHI'
      Required = True
      Size = 30
    end
    object IntegerField2: TIntegerField
      FieldName = 'BAC_LUONG_DENGHI'
      Required = True
    end
    object IBOFloatField2: TIBOFloatField
      FieldName = 'HESO_LUONG_DENGHI'
      Required = True
    end
    object DateField3: TDateField
      FieldName = 'NGAY_DENGHI_NANGBAC'
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'VANG'
    end
    object IBOFloatField3: TIBOFloatField
      FieldName = 'LY_THUYET'
    end
    object IBOFloatField4: TIBOFloatField
      FieldName = 'THUC_HANH'
    end
    object IBOFloatField5: TIBOFloatField
      FieldName = 'MON_KHAC'
    end
    object IBOFloatField6: TIBOFloatField
      FieldName = 'DIEM_TB'
    end
    object WideStringField9: TWideStringField
      FieldName = 'XEP_LOAI'
      Size = 255
    end
    object WideStringField10: TWideStringField
      FieldName = 'Y_KIEN'
      Size = 255
    end
    object WideStringField11: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object WideStringField12: TWideStringField
      FieldName = 'GHICHU_DOTTHI'
      Size = 255
    end
    object IntegerField3: TIntegerField
      FieldName = 'SL_VANG'
    end
    object IntegerField4: TIntegerField
      FieldName = 'SL_COMAT'
    end
    object DateField4: TDateField
      FieldName = 'NGAY_THI'
    end
    object WideStringField13: TWideStringField
      FieldName = 'TEN_DOT'
      Size = 300
    end
    object WideStringField14: TWideStringField
      FieldName = 'MA_DOT'
      Size = 30
    end
    object IntegerField5: TIntegerField
      FieldName = 'DOTTHI_ID'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'NANGLUONG_CBNN_ID'
      Required = True
    end
  end
  object ppDanhSachDotNangLCB: TppDBPipeline
    DataSource = dsDanhSachDotNangLCB
    UserName = 'DanhSachDotNangLCB'
    Left = 136
    Top = 224
    object ppField1: TppField
      FieldAlias = 'EMPLOYEE_NO'
      FieldName = 'EMPLOYEE_NO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'FULL_NAME'
      FieldName = 'FULL_NAME'
      FieldLength = 129
      DisplayWidth = 129
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'CASE'
      FieldName = 'CASE'
      FieldLength = 9
      DisplayWidth = 9
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'BIRTH_DATE'
      FieldName = 'BIRTH_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'TEN_DONVI'
      FieldName = 'TEN_DONVI'
      FieldLength = 126
      DisplayWidth = 126
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'TITLE_NAME'
      FieldName = 'TITLE_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'ASSIGNED_DATE'
      FieldName = 'ASSIGNED_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'LUONG_CHINH'
      FieldName = 'LUONG_CHINH'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'BAC_LUONG_HT'
      FieldName = 'BAC_LUONG_HT'
      FieldLength = 69
      DisplayWidth = 69
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'NGACH_LUONG_HT'
      FieldName = 'NGACH_LUONG_HT'
      FieldLength = 63
      DisplayWidth = 63
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'NGAY_NHAN_BAC_HT'
      FieldName = 'NGAY_NHAN_BAC_HT'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'KEY_ID'
      FieldName = 'KEY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'NGACH_LUONG'
      FieldName = 'NGACH_LUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'BAC_LUONG'
      FieldName = 'BAC_LUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'NGAY_NHAN_BAC'
      FieldName = 'NGAY_NHAN_BAC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 14
    end
    object ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VANG'
      FieldName = 'VANG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'LY_THUYET'
      FieldName = 'LY_THUYET'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'THUC_HANH'
      FieldName = 'THUC_HANH'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'MON_KHAC'
      FieldName = 'MON_KHAC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIEM_TB'
      FieldName = 'DIEM_TB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'XEP_LOAI'
      FieldName = 'XEP_LOAI'
      FieldLength = 300
      DisplayWidth = 300
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'Y_KIEN'
      FieldName = 'Y_KIEN'
      FieldLength = 255
      DisplayWidth = 255
      Position = 21
    end
    object ppField23: TppField
      FieldAlias = 'GHI_CHU'
      FieldName = 'GHI_CHU'
      FieldLength = 255
      DisplayWidth = 255
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'MA_DOT'
      FieldName = 'MA_DOT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object ppField25: TppField
      FieldAlias = 'TEN_DOT'
      FieldName = 'TEN_DOT'
      FieldLength = 300
      DisplayWidth = 300
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'NGAY_THI'
      FieldName = 'NGAY_THI'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 25
    end
  end
  object dsDanhSachDotNangLCB: TDataSource
    DataSet = qryDanhSachDotNangLCB
    Left = 104
    Top = 259
  end
  object dsLuongCDCV: TDataSource
    DataSet = qryLuongCDCV
    Left = 40
    Top = 292
  end
  object qryLuongCDCV: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'KEY_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_NANGLUONG_CONGTY'
      'WHERE'
      '   NANGLUONG_CONGTY_ID = :OLD_NANGLUONG_CONGTY_ID')
    EditSQL.Strings = (
      'UPDATE HR_NANGLUONG_CONGTY SET'
      '   NANGLUONG_CONGTY_ID = :NANGLUONG_CONGTY_ID, /*PK*/'
      '   DOTTHI_ID = :DOTTHI_ID,'
      '   MA_NHANVIEN = :MA_NHANVIEN,'
      '   NGACH_LUONG_HT = :NGACH_LUONG_HT,'
      '   BAC_LUONG_HT = :BAC_LUONG_HT,'
      '   HESO_LUONG_HT = :HESO_LUONG_HT,'
      '   NGAY_NHAN_BAC_HT = :NGAY_NHAN_BAC_HT,'
      '   NGACH_LUONG_DENGHI = :NGACH_LUONG_DENGHI,'
      '   BAC_LUONG_DENGHI = :BAC_LUONG_DENGHI,'
      '   HESO_LUONG_DENGHI = :HESO_LUONG_DENGHI,'
      '   NGAY_DENGHI_NANGBAC = :NGAY_DENGHI_NANGBAC,'
      '   VANG = :VANG,'
      '   LY_THUYET = :LY_THUYET,'
      '   THUC_HANH = :THUC_HANH,'
      '   MON_KHAC = :MON_KHAC,'
      '   DIEM_TB = :DIEM_TB,'
      '   XEP_LOAI = :XEP_LOAI,'
      '   Y_KIEN = :Y_KIEN,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   NANGLUONG_CONGTY_ID = :OLD_NANGLUONG_CONGTY_ID')
    GeneratorLinks.Strings = (
      'NANGLUONG_CONGTY_ID = GEN_HR_NANGLUONG_CONGTY_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_NANGLUONG_CONGTY('
      '   NANGLUONG_CONGTY_ID, /*PK*/'
      '   DOTTHI_ID,'
      '   MA_NHANVIEN,'
      '   NGACH_LUONG_HT,'
      '   BAC_LUONG_HT,'
      '   HESO_LUONG_HT,'
      '   NGAY_NHAN_BAC_HT,'
      '   NGACH_LUONG_DENGHI,'
      '   BAC_LUONG_DENGHI,'
      '   HESO_LUONG_DENGHI,'
      '   NGAY_DENGHI_NANGBAC,'
      '   VANG,'
      '   LY_THUYET,'
      '   THUC_HANH,'
      '   MON_KHAC,'
      '   DIEM_TB,'
      '   XEP_LOAI,'
      '   Y_KIEN,'
      '   GHI_CHU)'
      'VALUES ('
      '   :NANGLUONG_CONGTY_ID,'
      '   :DOTTHI_ID,'
      '   :MA_NHANVIEN,'
      '   :NGACH_LUONG_HT,'
      '   :BAC_LUONG_HT,'
      '   :HESO_LUONG_HT,'
      '   :NGAY_NHAN_BAC_HT,'
      '   :NGACH_LUONG_DENGHI,'
      '   :BAC_LUONG_DENGHI,'
      '   :HESO_LUONG_DENGHI,'
      '   :NGAY_DENGHI_NANGBAC,'
      '   :VANG,'
      '   :LY_THUYET,'
      '   :THUC_HANH,'
      '   :MON_KHAC,'
      '   :DIEM_TB,'
      '   :XEP_LOAI,'
      '   :Y_KIEN,'
      '   :GHI_CHU)')
    KeyLinks.Strings = (
      'NANGLUONG_CONGTY_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryLuongCDCVNewRecord
    DataSource = dsDSDotthi
    SQL.Strings = (
      'SELECT NANGLUONG_CONGTY_ID,'
      '    DOTTHI_ID,'
      '    HR_DOTTHI_NANGBACLUONG.MA_DOT,'
      '    HR_DOTTHI_NANGBACLUONG.TEN_DOT,'
      '    HR_DOTTHI_NANGBACLUONG.NGAY_THI,'
      '    HR_DOTTHI_NANGBACLUONG.SL_COMAT,'
      '    HR_DOTTHI_NANGBACLUONG.SL_VANG,'
      '    HR_DOTTHI_NANGBACLUONG.GHI_CHU GHICHU_DOTTHI,'
      '    MA_NHANVIEN,'
      '    HR_MASK_EMPLOYEE.FULL_NAME,'
      
        '    CASE WHEN HR_MASK_EMPLOYEE.GENDER = 1 THEN '#39'Nam'#39' ELSE '#39'N'#225#187#175#39 +
        ' END GIOI_TINH,'
      '    HR_MASK_EMPLOYEE.BIRTH_DATE,'
      '    HR_MASK_EMPLOYEE.TITLE_NAME,'
      '    HR_MASK_EMPLOYEE.DEPT_NAME,'
      
        '    HR_MASK_EMPLOYEE.TITLE_NAME || '#39' - '#39' || HR_MASK_EMPLOYEE.DEP' +
        'T_NAME POSITION_NAME,'
      '    NGACH_LUONG_HT,'
      '    BAC_LUONG_HT,'
      '    HESO_LUONG_HT,'
      '    NGAY_NHAN_BAC_HT,'
      '    NGACH_LUONG_DENGHI,'
      '    BAC_LUONG_DENGHI,'
      '    HESO_LUONG_DENGHI,'
      '    NGAY_DENGHI_NANGBAC,'
      '    VANG,'
      '    LY_THUYET,'
      '    THUC_HANH,'
      '    MON_KHAC,'
      '    DIEM_TB,'
      '    XEP_LOAI,'
      '    Y_KIEN,'
      '    HR_NANGLUONG_CONGTY.GHI_CHU'
      'FROM HR_NANGLUONG_CONGTY'
      
        'JOIN HR_MASK_EMPLOYEE(:USER_NAME) ON HR_NANGLUONG_CONGTY.MA_NHAN' +
        'VIEN = HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      
        'JOIN HR_DOTTHI_NANGBACLUONG ON HR_DOTTHI_NANGBACLUONG.KEY_ID = H' +
        'R_NANGLUONG_CONGTY.DOTTHI_ID'
      'WHERE DOTTHI_ID = :KEY_ID'
      '')
    FieldOptions = []
    Left = 72
    Top = 292
    object qryLuongCDCVMA_NHANVIEN: TWideStringField
      FieldName = 'MA_NHANVIEN'
      OnChange = qryLuongCDCVMA_NHANVIENChange
      Size = 30
    end
    object qryLuongCDCVFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 96
    end
    object qryLuongCDCVGIOI_TINH: TWideStringField
      FieldName = 'GIOI_TINH'
      ReadOnly = True
      Size = 9
    end
    object qryLuongCDCVBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryLuongCDCVTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryLuongCDCVDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryLuongCDCVPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 261
    end
    object qryLuongCDCVNGACH_LUONG_HT: TWideStringField
      FieldName = 'NGACH_LUONG_HT'
      Size = 30
    end
    object qryLuongCDCVBAC_LUONG_HT: TIntegerField
      FieldName = 'BAC_LUONG_HT'
    end
    object qryLuongCDCVHESO_LUONG_HT: TIBOFloatField
      FieldName = 'HESO_LUONG_HT'
    end
    object qryLuongCDCVNGAY_NHAN_BAC_HT: TDateField
      FieldName = 'NGAY_NHAN_BAC_HT'
    end
    object qryLuongCDCVNGACH_LUONG_DENGHI: TWideStringField
      FieldName = 'NGACH_LUONG_DENGHI'
      Required = True
      Size = 30
    end
    object qryLuongCDCVBAC_LUONG_DENGHI: TIntegerField
      FieldName = 'BAC_LUONG_DENGHI'
      Required = True
    end
    object qryLuongCDCVHESO_LUONG_DENGHI: TIBOFloatField
      FieldName = 'HESO_LUONG_DENGHI'
      Required = True
    end
    object qryLuongCDCVNGAY_DENGHI_NANGBAC: TDateField
      FieldName = 'NGAY_DENGHI_NANGBAC'
      Required = True
    end
    object qryLuongCDCVVANG: TSmallintField
      FieldName = 'VANG'
    end
    object qryLuongCDCVLY_THUYET: TIBOFloatField
      FieldName = 'LY_THUYET'
    end
    object qryLuongCDCVTHUC_HANH: TIBOFloatField
      FieldName = 'THUC_HANH'
    end
    object qryLuongCDCVMON_KHAC: TIBOFloatField
      FieldName = 'MON_KHAC'
    end
    object qryLuongCDCVDIEM_TB: TIBOFloatField
      FieldName = 'DIEM_TB'
    end
    object qryLuongCDCVXEP_LOAI: TWideStringField
      FieldName = 'XEP_LOAI'
      Size = 255
    end
    object qryLuongCDCVY_KIEN: TWideStringField
      FieldName = 'Y_KIEN'
      Size = 255
    end
    object qryLuongCDCVGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 255
    end
    object qryLuongCDCVGHICHU_DOTTHI: TWideStringField
      FieldName = 'GHICHU_DOTTHI'
      Size = 255
    end
    object qryLuongCDCVSL_VANG: TIntegerField
      FieldName = 'SL_VANG'
    end
    object qryLuongCDCVSL_COMAT: TIntegerField
      FieldName = 'SL_COMAT'
    end
    object qryLuongCDCVNGAY_THI: TDateField
      FieldName = 'NGAY_THI'
    end
    object qryLuongCDCVTEN_DOT: TWideStringField
      FieldName = 'TEN_DOT'
      Size = 300
    end
    object qryLuongCDCVMA_DOT: TWideStringField
      FieldName = 'MA_DOT'
      Size = 30
    end
    object qryLuongCDCVDOTTHI_ID: TIntegerField
      FieldName = 'DOTTHI_ID'
      Required = True
    end
    object qryLuongCDCVNANGLUONG_CONGTY_ID: TIntegerField
      FieldName = 'NANGLUONG_CONGTY_ID'
      Required = True
    end
  end
  object ppChiTietDotNangLCDCV: TppDBPipeline
    DataSource = dsLuongCDCV
    UserName = 'ChiTietDotNangLCDCV'
    Left = 40
    Top = 327
    object ppField27: TppField
      FieldAlias = 'EMPLOYEE_NO'
      FieldName = 'EMPLOYEE_NO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField28: TppField
      FieldAlias = 'FULL_NAME'
      FieldName = 'FULL_NAME'
      FieldLength = 129
      DisplayWidth = 129
      Position = 1
    end
    object ppField29: TppField
      FieldAlias = 'CASE'
      FieldName = 'CASE'
      FieldLength = 9
      DisplayWidth = 9
      Position = 2
    end
    object ppField30: TppField
      FieldAlias = 'BIRTH_DATE'
      FieldName = 'BIRTH_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppField31: TppField
      FieldAlias = 'TEN_DONVI'
      FieldName = 'TEN_DONVI'
      FieldLength = 126
      DisplayWidth = 126
      Position = 4
    end
    object ppField32: TppField
      FieldAlias = 'TITLE_NAME'
      FieldName = 'TITLE_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 5
    end
    object ppField33: TppField
      FieldAlias = 'ASSIGNED_DATE'
      FieldName = 'ASSIGNED_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'LUONG_CHINH'
      FieldName = 'LUONG_CHINH'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField35: TppField
      FieldAlias = 'BAC_LUONG_HT'
      FieldName = 'BAC_LUONG_HT'
      FieldLength = 69
      DisplayWidth = 69
      Position = 8
    end
    object ppField36: TppField
      FieldAlias = 'NGACH_LUONG_HT'
      FieldName = 'NGACH_LUONG_HT'
      FieldLength = 63
      DisplayWidth = 63
      Position = 9
    end
    object ppField37: TppField
      FieldAlias = 'NGAY_NHAN_BAC_HT'
      FieldName = 'NGAY_NHAN_BAC_HT'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'KEY_ID'
      FieldName = 'KEY_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField39: TppField
      FieldAlias = 'NGACH_LUONG'
      FieldName = 'NGACH_LUONG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'BAC_LUONG'
      FieldName = 'BAC_LUONG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppField41: TppField
      FieldAlias = 'NGAY_NHAN_BAC'
      FieldName = 'NGAY_NHAN_BAC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 14
    end
    object ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'VANG'
      FieldName = 'VANG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'LY_THUYET'
      FieldName = 'LY_THUYET'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'THUC_HANH'
      FieldName = 'THUC_HANH'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'MON_KHAC'
      FieldName = 'MON_KHAC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIEM_TB'
      FieldName = 'DIEM_TB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppField47: TppField
      FieldAlias = 'XEP_LOAI'
      FieldName = 'XEP_LOAI'
      FieldLength = 300
      DisplayWidth = 300
      Position = 20
    end
    object ppField48: TppField
      FieldAlias = 'Y_KIEN'
      FieldName = 'Y_KIEN'
      FieldLength = 255
      DisplayWidth = 255
      Position = 21
    end
    object ppField49: TppField
      FieldAlias = 'GHI_CHU'
      FieldName = 'GHI_CHU'
      FieldLength = 255
      DisplayWidth = 255
      Position = 22
    end
    object ppField50: TppField
      FieldAlias = 'MA_DOT'
      FieldName = 'MA_DOT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object ppField51: TppField
      FieldAlias = 'TEN_DOT'
      FieldName = 'TEN_DOT'
      FieldLength = 300
      DisplayWidth = 300
      Position = 24
    end
    object ppField52: TppField
      FieldAlias = 'NGAY_THI'
      FieldName = 'NGAY_THI'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 25
    end
  end
  object qryLCDCVHienHanh: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'MA_NHANVIEN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'XEM_DENNGAY'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT FIRST 1'
      '    HR_COMP_WAGE_STANDARD_DETAIL.WAGE_SCALE,'
      '    HR_COMP_WAGE_STANDARD_DETAIL.WAGE_LEVEL,'
      '    HR_COMP_WAGE_STANDARD_DETAIL.WAGE_COEFF,'
      '    HR_COMP_WAGE_STANDARD_DETAIL.APPLY_DATE'
      'FROM HR_COMP_WAGE_STANDARD_DETAIL'
      'WHERE HR_COMP_WAGE_STANDARD_DETAIL.EMPLOYEE_NO = :MA_NHANVIEN'
      'AND HR_COMP_WAGE_STANDARD_DETAIL.APPLY_DATE < :XEM_DENNGAY'
      'ORDER BY HR_COMP_WAGE_STANDARD_DETAIL.APPLY_DATE DESC')
    FieldOptions = []
    Left = 72
    Top = 327
    object qryLCDCVHienHanhWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 30
    end
    object qryLCDCVHienHanhWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object qryLCDCVHienHanhWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
      Required = True
    end
    object qryLCDCVHienHanhAPPLY_DATE: TDateField
      FieldName = 'APPLY_DATE'
    end
  end
end
