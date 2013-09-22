inherited frmCongcuCapphat: TfrmCongcuCapphat
  Left = 254
  Top = 135
  Width = 888
  Height = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 489
    Width = 880
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 880
    Height = 489
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 462
      Color = 15466238
      TabOrder = 9
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnDesign: TElPopupButton
          UseImageList = True
          Images = dmMain.imgAction
          Action = frameToolbar1.acPrint
        end
        inherited btnPreview: TElPopupButton
          UseImageList = True
          Images = dmMain.imgAction
          Action = frameToolbar1.acDesign
        end
        inherited btnPrint: TElPopupButton
          UseImageList = True
          Images = dmMain.imgAction
          Action = frameToolbar1.acPreview
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group3: TdxLayoutGroup
              Visible = True
              inherited dxLayoutControl1Item8: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item7: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item6: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
      inherited ActionList1: TActionList
        inherited acPrint: TAction
          OnExecute = frameToolbar1acPrintExecute
        end
        inherited acDesign: TAction
          OnExecute = frameToolbar1acDesignExecute
        end
        inherited acPreview: TAction
          OnExecute = frameToolbar1acPreviewExecute
        end
      end
    end
    object gridDotCapphat: TdxDBGrid [1]
      Left = 14
      Top = 28
      Width = 499
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_DOT'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsDotCapphat
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridDotCapphatMA_DOT: TdxDBGridColumn
        Caption = 'M'#227' '#273#7907't'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_DOT'
        Caption_UTF7 = 'M+AOM +AREe4w-t'
      end
      object gridDotCapphatTEN_DOT: TdxDBGridColumn
        Caption = #272#7907't c'#7845'p ph'#225't'
        HeaderAlignment = taCenter
        Width = 161
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_DOT'
        Caption_UTF7 = '+ARAe4w-t c+HqU-p ph+AOE-t'
      end
      object gridDotCapphatNGAY_CAP: TdxDBGridDateColumn
        Caption = 'Ng'#224'y c'#7845'p'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAY_CAP'
        Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
      end
      object gridDotCapphatNGAY_HETHAN: TdxDBGridDateColumn
        Caption = 'Ng'#224'y h'#7871't h'#7841'n'
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAY_HETHAN'
        Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n'
      end
      object gridDotCapphatGHI_CHU: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GHI_CHU'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object gridChitiet: TdxDBGrid [2]
      Left = 14
      Top = 211
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'MA_NHANVIEN'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 8
      DataSource = dsChitiet
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridChitietMA_NHANVIEN: TdxDBGridColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MA_NHANVIEN'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object gridChitietHO_TEN: TdxDBGridPopupColumn
        Caption = 'H'#7885' v'#224' t'#234'n'
        HeaderAlignment = taCenter
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HO_TEN'
        OnCloseUp = gridChitietHO_TENCloseUp
        OnInitPopup = gridChitietHO_TENInitPopup
        Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
      end
      object gridChitietCHUC_VU: TdxDBGridColumn
        Caption = 'Ch'#7913'c v'#7909
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHUC_VU'
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object gridChitietDON_VI: TdxDBGridColumn
        Caption = #272#417'n v'#7883
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DON_VI'
        Caption_UTF7 = '+ARABoQ-n v+Hss'
      end
      object gridChitietTEN_CONGCU: TdxDBGridPopupColumn
        Caption = 'C'#244'ng c'#7909' '#273#432#7907'c c'#7845'p ph'#225't'
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_CONGCU'
        OnCloseUp = gridChitietTEN_CONGCUCloseUp
        OnInitPopup = gridChitietTEN_CONGCUInitPopup
        Caption_UTF7 = 'C+APQ-ng c+HuU +AREBsB7j-c c+HqU-p ph+AOE-t'
      end
      object gridChitietNGAY_CAP: TdxDBGridDateColumn
        Caption = 'Ng'#224'y c'#7845'p'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAY_CAP'
        Caption_UTF7 = 'Ng+AOA-y c+HqU-p'
      end
      object gridChitietNGAY_HETHAN: TdxDBGridDateColumn
        Caption = 'Ng'#224'y h'#7871't h'#7841'n'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NGAY_HETHAN'
        Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n'
      end
      object gridChitietSO_LUONG: TdxDBGridSpinColumn
        Caption = 'S'#7889' l'#432#7907'ng'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SO_LUONG'
        MinValue = 1.000000000000000000
        MaxValue = 999999.000000000000000000
        Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
      end
      object gridChitietTEN_TRANGTHAI: TdxDBGridPopupColumn
        Caption = 'Tr'#7841'ng th'#225'i'
        HeaderAlignment = taCenter
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_TRANGTHAI'
        OnCloseUp = gridChitietTEN_TRANGTHAICloseUp
        OnInitPopup = gridChitietTEN_TRANGTHAIInitPopup
        Caption_UTF7 = 'Tr+HqE-ng th+AOE-i'
      end
    end
    object dxCongcu: TdxPopupEdit [3]
      Left = 614
      Top = 28
      Width = 228
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = dxCongcuChange
      OnCloseUp = dxCongcuCloseUp
      OnInitPopup = dxCongcuInitPopup
    end
    object dxTrangthai: TdxPopupEdit [4]
      Left = 614
      Top = 51
      Width = 228
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      OnChange = dxTrangthaiChange
      OnCloseUp = dxTrangthaiCloseUp
      OnInitPopup = dxTrangthaiInitPopup
    end
    object dxNgaycap: TdxDateEdit [5]
      Left = 614
      Top = 74
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      OnChange = dxNgaycapChange
      Date = -700000.000000000000000000
    end
    object dxNgayhethan: TdxDateEdit [6]
      Left = 761
      Top = 74
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      OnChange = dxNgayhethanChange
      Date = -700000.000000000000000000
    end
    object ElPopupButton1: TElPopupButton [7]
      Left = 776
      Top = 97
      Width = 90
      Height = 25
      Cursor = crDefault
      ImageIndex = 58
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'C'#7853'p &nh'#7853't'
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acCapnhatNhanh
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton [8]
      Left = 686
      Top = 97
      Width = 90
      Height = 25
      Cursor = crDefault
      ImageIndex = 8
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7885'n nhanh'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acChonhnhanhNV
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxSelectFile: TdxPopupEdit [9]
      Left = 614
      Top = 155
      Width = 227
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnChange = dxSelectFileChange
      OnCloseUp = dxSelectFileCloseUp
      OnInitPopup = dxSelectFileInitPopup
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup4: TdxLayoutGroup [0]
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainGroup1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          Caption = '* '#272#7906'T C'#7844'P PH'#193'T C'#212'NG C'#7908
          object dxlcMainItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridDotCapphat
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainGroup8: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainGroup3: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'T'#249'y ch'#7885'n nh'#7853'p nhanh d'#7919' li'#7879'u'
            object dxlcMainItem4: TdxLayoutItem
              Caption = 'Ch'#7885'n c'#244'ng c'#7909
              Control = dxCongcu
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem5: TdxLayoutItem
              Caption = 'Ch'#7885'n tr'#7841'ng th'#225'i'
              Control = dxTrangthai
              ControlOptions.ShowBorder = False
            end
            object dxlcMainGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ch'#7885'n ng'#224'y c'#7845'p'
                Control = dxNgaycap
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ng'#224'y h'#7871't h'#7841'n'
                Control = dxNgayhethan
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcMainGroup7: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem8: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avBottom
                Caption = 'ElPopupButton1'
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxlcMainGroup6: TdxLayoutGroup
            Caption = 'T'#249'y ch'#7885'n m'#7851'u b'#225'o c'#225'o'
            object dxlcMainItem10: TdxLayoutItem
              Caption = 'Ch'#7885'n m'#7851'u in'
              Control = dxSelectFile
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxlcMainGroup2: TdxLayoutGroup [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '* CHI TI'#7870'T C'#7844'P PH'#193'T CHO NH'#194'N VI'#202'N'
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridChitiet
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
        Caption = 'C'#7845'p ph'#225't c'#244'ng c'#7909' lao '#273#7897'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 432
    Top = 8
  end
  object dsDotCapphat: TDataSource
    DataSet = qryDotCapphat
    Left = 240
    Top = 112
  end
  object qryDotCapphat: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONGCU_DOTCAP'
      'WHERE'
      '   MA_DOT = :OLD_MA_DOT')
    EditSQL.Strings = (
      'UPDATE HR_CONGCU_DOTCAP SET'
      '   MA_DOT = :MA_DOT, /*PK*/'
      '   TEN_DOT = :TEN_DOT,'
      '   NGAY_CAP = :NGAY_CAP,'
      '   NGAY_HETHAN = :NGAY_HETHAN,'
      '   GHI_CHU = :GHI_CHU'
      'WHERE'
      '   MA_DOT = :OLD_MA_DOT')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CONGCU_DOTCAP('
      '   MA_DOT, /*PK*/'
      '   TEN_DOT,'
      '   NGAY_CAP,'
      '   NGAY_HETHAN,'
      '   GHI_CHU)'
      'VALUES ('
      '   :MA_DOT,'
      '   :TEN_DOT,'
      '   :NGAY_CAP,'
      '   :NGAY_HETHAN,'
      '   :GHI_CHU)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT MA_DOT'
      '     , TEN_DOT'
      '     , NGAY_CAP'
      '     , NGAY_HETHAN'
      '     , GHI_CHU'
      'FROM HR_CONGCU_DOTCAP')
    FieldOptions = []
    Left = 240
    Top = 80
    object qryDotCapphatMA_DOT: TWideStringField
      FieldName = 'MA_DOT'
      Required = True
      Size = 30
    end
    object qryDotCapphatTEN_DOT: TWideStringField
      FieldName = 'TEN_DOT'
      Required = True
      Size = 126
    end
    object qryDotCapphatNGAY_CAP: TDateField
      FieldName = 'NGAY_CAP'
      Required = True
    end
    object qryDotCapphatNGAY_HETHAN: TDateField
      FieldName = 'NGAY_HETHAN'
    end
    object qryDotCapphatGHI_CHU: TWideStringField
      FieldName = 'GHI_CHU'
      Size = 3072
    end
  end
  object dsChitiet: TDataSource
    DataSet = qryChitiet
    Left = 264
    Top = 256
  end
  object qryChitiet: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MA_DOT'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CONGCU_NHANVIEN'
      'WHERE'
      '   MA_CONGCU = :OLD_MA_CONGCU AND'
      '   MA_DOT = :OLD_MA_DOT AND'
      '   MA_LOAI = :OLD_MA_LOAI AND'
      '   MA_NHANVIEN = :OLD_MA_NHANVIEN')
    EditSQL.Strings = (
      'UPDATE HR_CONGCU_NHANVIEN SET'
      '   MA_CONGCU = :MA_CONGCU, /*PK*/'
      '   MA_DOT = :MA_DOT, /*PK*/'
      '   MA_LOAI = :MA_LOAI, /*PK*/'
      '   MA_NHANVIEN = :MA_NHANVIEN, /*PK*/'
      '   NGAY_CAP = :NGAY_CAP,'
      '   NGAY_HETHAN = :NGAY_HETHAN,'
      '   TRANG_THAI = :TRANG_THAI,'
      '   SO_LUONG = :SO_LUONG'
      'WHERE'
      '   MA_CONGCU = :OLD_MA_CONGCU AND'
      '   MA_DOT = :OLD_MA_DOT AND'
      '   MA_LOAI = :OLD_MA_LOAI AND'
      '   MA_NHANVIEN = :OLD_MA_NHANVIEN')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CONGCU_NHANVIEN('
      '   MA_CONGCU, /*PK*/'
      '   MA_DOT, /*PK*/'
      '   MA_LOAI, /*PK*/'
      '   MA_NHANVIEN, /*PK*/'
      '   NGAY_CAP,'
      '   NGAY_HETHAN,'
      '   TRANG_THAI,'
      '   SO_LUONG)'
      'VALUES ('
      '   :MA_CONGCU,'
      '   :MA_DOT,'
      '   :MA_LOAI,'
      '   :MA_NHANVIEN,'
      '   :NGAY_CAP,'
      '   :NGAY_HETHAN,'
      '   :TRANG_THAI,'
      '   :SO_LUONG)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietNewRecord
    DataSource = dsDotCapphat
    SQL.Strings = (
      'SELECT HR_CONGCU_NHANVIEN.MA_DOT'
      '     , HR_CONGCU_NHANVIEN.MA_NHANVIEN'
      '     , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'||FIRST_NAME HO_TEN'
      '     , TITLE_NAME CHUC_VU'
      '     , DEPT_NAME DON_VI '
      '     , HR_CONGCU_NHANVIEN.MA_CONGCU'
      '     , HR_CONGCU_NHANVIEN.MA_LOAI'
      '     , HR_CONGCU_DM.TEN_CONGCU'
      '     , HR_CONGCU_NHANVIEN.NGAY_CAP'
      '     , HR_CONGCU_NHANVIEN.NGAY_HETHAN'
      '     , HR_CONGCU_NHANVIEN.TRANG_THAI'
      '     , HR_CONGCU_TRANGTHAI.TEN_TRANGTHAI'
      '     , HR_CONGCU_NHANVIEN.SO_LUONG'
      'FROM HR_CONGCU_NHANVIEN'
      'left JOIN HR_CONGCU_DM on  '
      ' HR_CONGCU_NHANVIEN.MA_CONGCU=HR_CONGCU_DM.MA_CONGCU and'
      ' HR_CONGCU_NHANVIEN.MA_LOAI=HR_CONGCU_DM.MA_LOAI'
      'left JOIN HR_CONGCU_TRANGTHAI on'
      '  HR_CONGCU_NHANVIEN.TRANG_THAI=HR_CONGCU_TRANGTHAI.MA_TRANGTHAI'
      'left join hr_employee on MA_NHANVIEN=HR_EMPLOYEE.EMPLOYEE_NO'
      'left join hr_assignment on '
      '  MA_NHANVIEN=HR_ASSIGNMENT.EMPLOYEE_NO and'
      '  IS_MAIN_POSITION=1 and'
      '  (DISMISS_DATE is null)'
      
        'left join hr_position on hr_assignment.position_no=hr_position.p' +
        'osition_no'
      'left join hr_title on hr_position.title_no=hr_title.title_no'
      
        'left join hr_department on hr_position.dept_no=hr_department.dep' +
        't_no'
      'where HR_CONGCU_NHANVIEN.MA_DOT=:MA_DOT')
    FieldOptions = []
    Left = 264
    Top = 224
    object qryChitietMA_DOT: TWideStringField
      FieldName = 'MA_DOT'
      Required = True
      Size = 30
    end
    object qryChitietMA_NHANVIEN: TWideStringField
      FieldName = 'MA_NHANVIEN'
      Required = True
      Size = 30
    end
    object qryChitietHO_TEN: TWideStringField
      FieldName = 'HO_TEN'
      ReadOnly = True
      Size = 125
    end
    object qryChitietCHUC_VU: TWideStringField
      FieldName = 'CHUC_VU'
      Size = 126
    end
    object qryChitietDON_VI: TWideStringField
      FieldName = 'DON_VI'
      Size = 126
    end
    object qryChitietMA_CONGCU: TIntegerField
      FieldName = 'MA_CONGCU'
      Required = True
    end
    object qryChitietMA_LOAI: TWideStringField
      FieldName = 'MA_LOAI'
      Required = True
      Size = 30
    end
    object qryChitietTEN_CONGCU: TWideStringField
      FieldName = 'TEN_CONGCU'
      Required = True
      Size = 126
    end
    object qryChitietNGAY_CAP: TDateField
      FieldName = 'NGAY_CAP'
      Required = True
    end
    object qryChitietNGAY_HETHAN: TDateField
      FieldName = 'NGAY_HETHAN'
    end
    object qryChitietTRANG_THAI: TWideStringField
      FieldName = 'TRANG_THAI'
      Size = 30
    end
    object qryChitietTEN_TRANGTHAI: TWideStringField
      FieldName = 'TEN_TRANGTHAI'
      Size = 126
    end
    object qryChitietSO_LUONG: TIntegerField
      FieldName = 'SO_LUONG'
      Required = True
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 336
    Top = 120
    object acChonhnhanhNV: TAction
      Caption = 'acChonhnhanhNV'
      ImageIndex = 8
      OnExecute = acChonhnhanhNVExecute
      OnUpdate = acChonhnhanhNVUpdate
    end
    object acCapnhatNhanh: TAction
      Caption = 'acCapnhatNhanh'
      ImageIndex = 58
      OnExecute = acCapnhatNhanhExecute
      OnUpdate = acCapnhatNhanhUpdate
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    OnError = qryExecuteError
    FieldOptions = []
    Left = 376
    Top = 256
  end
  object rpBaoCao: TppReport
    AutoStop = False
    DataPipeline = ppChiTietCapPhat
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
    Left = 24
    Top = 248
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppChiTietCapPhat'
  end
  object dsnBaoCao: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpBaoCao
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 24
    Top = 280
  end
  object qryBCCapPhat: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ma_dot'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietNewRecord
    DataSource = dsDotCapphat
    SQL.Strings = (
      'SELECT TEN_DOT ,'
      '    NGAY_CAP,'
      '    MA_NV_NHAN ,'
      '    HOTEN_NV_NHAN,'
      '    CHUCVU_NV_NHAN,'
      '    DONVI_NV_NHAN,'
      '    VITRI_NV_NHAN,'
      '    MA_CONGCU ,'
      '    MA_LOAI_CONGCU ,'
      '    TEN_CONGCU,'
      '    SO_LUONG,'
      '    THUOC_TINH,'
      '    CT_THUOCTINH,'
      '    TRANG_THAI,'
      '    MA_CONGCU || '#39' '#39' || MA_LOAI_CONGCU KEY_FIELD'
      'FROM hr_bc_congcu_capphat(:ma_dot)'
      'order by MA_NV_NHAN,MA_CONGCU')
    FieldOptions = []
    Left = 56
    Top = 248
    object qryBCCapPhatTEN_DOT: TWideStringField
      FieldName = 'TEN_DOT'
      Size = 30
    end
    object qryBCCapPhatNGAY_CAP: TDateField
      FieldName = 'NGAY_CAP'
    end
    object qryBCCapPhatMA_NV_NHAN: TWideStringField
      FieldName = 'MA_NV_NHAN'
      Size = 30
    end
    object qryBCCapPhatHOTEN_NV_NHAN: TWideStringField
      FieldName = 'HOTEN_NV_NHAN'
      Size = 126
    end
    object qryBCCapPhatCHUCVU_NV_NHAN: TWideStringField
      FieldName = 'CHUCVU_NV_NHAN'
      Size = 126
    end
    object qryBCCapPhatDONVI_NV_NHAN: TWideStringField
      FieldName = 'DONVI_NV_NHAN'
      Size = 126
    end
    object qryBCCapPhatVITRI_NV_NHAN: TWideStringField
      FieldName = 'VITRI_NV_NHAN'
      Size = 126
    end
    object qryBCCapPhatMA_CONGCU: TWideStringField
      FieldName = 'MA_CONGCU'
      Size = 30
    end
    object qryBCCapPhatMA_LOAI_CONGCU: TWideStringField
      FieldName = 'MA_LOAI_CONGCU'
      Size = 30
    end
    object qryBCCapPhatTEN_CONGCU: TWideStringField
      FieldName = 'TEN_CONGCU'
      Size = 126
    end
    object qryBCCapPhatSO_LUONG: TIntegerField
      FieldName = 'SO_LUONG'
    end
    object qryBCCapPhatTHUOC_TINH: TWideStringField
      FieldName = 'THUOC_TINH'
      Size = 75
    end
    object qryBCCapPhatCT_THUOCTINH: TWideStringField
      FieldName = 'CT_THUOCTINH'
      Size = 75
    end
    object qryBCCapPhatTRANG_THAI: TWideStringField
      FieldName = 'TRANG_THAI'
      Size = 126
    end
    object qryBCCapPhatKEY_FIELD: TWideStringField
      FieldName = 'KEY_FIELD'
      ReadOnly = True
      Size = 63
    end
  end
  object ppChiTietCapPhat: TppDBPipeline
    DataSource = dsBCCapPhat
    UserName = 'ChiTietCapPhat'
    Left = 88
    Top = 248
  end
  object dsBCCapPhat: TDataSource
    DataSet = qryBCCapPhat
    Left = 56
    Top = 280
  end
end
