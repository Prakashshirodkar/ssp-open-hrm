inherited frmDMTinTuc: TfrmDMTinTuc
  Left = 87
  Top = 121
  Width = 951
  Height = 662
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 609
    Width = 943
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 943
    Height = 609
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 582
      Color = 15466238
      inherited dxLayoutControl1: TdxLayoutControl
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    object mainPanel: TPanel [1]
      Left = 2
      Top = 2
      Width = 833
      Height = 456
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 4
      object panel1: TPanel
        Left = 225
        Top = 0
        Width = 608
        Height = 456
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object ElSplitter1: TElSplitter
          Left = 0
          Top = 161
          Width = 608
          Height = 9
          Cursor = crVSplit
          SnapTopLeft = True
          SnapBottomRight = True
          ControlTopLeft = Panel2
          ControlBottomRight = panelEditor
          AutoHide = False
          ShowSnapButton = True
          Align = alTop
          BevelOuter = bvLowered
          UseXPThemes = False
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 608
          Height = 161
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 1
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 608
            Height = 161
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmMain.StyleWeb
            object dxDBEdit1: TdxDBEdit
              Left = 71
              Top = 28
              Width = 387
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              DataField = 'TIN_TIEUDE'
              DataSource = dsTinTuc
              StyleController = dmMain.StyleController
            end
            object dxDBEdit2: TdxDBEdit
              Left = 71
              Top = 51
              Width = 625
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 3
              DataField = 'TIN_NGUOIDANG'
              DataSource = dsTinTuc
              StyleController = dmMain.StyleController
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 439
              Top = 28
              Width = 125
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 1
              DataField = 'TIN_NGAYDANG'
              DataSource = dsTinTuc
              StyleController = dmMain.StyleController
            end
            object dxDBMemo1: TdxDBMemo
              Left = 71
              Top = 74
              Width = 185
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 4
              DataField = 'TIN_TOMTAT'
              DataSource = dsTinTuc
              StyleController = dmMain.StyleController
              Height = 89
            end
            object dxDBTimeEdit1: TdxDBTimeEdit
              Left = 608
              Top = 28
              Width = 92
              Style.BorderColor = 5146545
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 2
              DataField = 'TIN_GIODANG'
              DataSource = dsTinTuc
              StyleController = dmMain.StyleController
              StoredValues = 4
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Group1: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Th'#244'ng tin chi ti'#7871't'
                object dxLayoutControl1Group2: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item1: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ti'#234'u '#273#7873
                    Control = dxDBEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item3: TdxLayoutItem
                    Caption = 'Ng'#224'y '#273#259'ng'
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item5: TdxLayoutItem
                    Caption = 'Gi'#7901' '#273#259'ng'
                    Control = dxDBTimeEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  Caption = 'Ng'#432#7901'i '#273#259'ng'
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'T'#243'm t'#7855't'
                  CaptionOptions.AlignVert = tavTop
                  Control = dxDBMemo1
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object panelEditor: TPanel
          Left = 0
          Top = 170
          Width = 608
          Height = 286
          Align = alClient
          BevelOuter = bvNone
          Caption = 'panelEditor'
          TabOrder = 2
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 217
        Height = 456
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel4'
        TabOrder = 1
        object gridTinTuc: TdxDBGrid
          Left = 0
          Top = 87
          Width = 217
          Height = 369
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'TIN_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsTinTuc
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridTinTucTIN_TIEUDE: TdxDBGridColumn
            Caption = 'Ti'#234'u '#273#7873
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIN_TIEUDE'
            Caption_UTF7 = 'Ti+AOo-u +AREewQ'
          end
          object gridTinTucTIN_NGAYDANG: TdxDBGridDateColumn
            Caption = 'Ng'#224'y '#273#259'ng'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIN_NGAYDANG'
            Caption_UTF7 = 'Ng+AOA-y +AREBAw-ng'
          end
          object gridTinTucTIN_NGUOIDANG: TdxDBGridColumn
            Caption = 'Ng'#432#7901'i '#273#259'ng'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 2660
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIN_NGUOIDANG'
            Caption_UTF7 = 'Ng+AbAe3Q-i +AREBAw-ng'
          end
        end
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 217
          Height = 87
          Align = alTop
          TabOrder = 1
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxTuNgay: TdxDateEdit
            Left = 63
            Top = 28
            Width = 141
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxTuNgayChange
            Date = -700000.000000000000000000
          end
          object dxDenNgay: TdxDateEdit
            Left = 63
            Top = 51
            Width = 141
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 1
            StyleController = dmMain.StyleController
            OnChange = dxDenNgayChange
            Date = -700000.000000000000000000
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Th'#7901'i gian '#273#259'ng tin'
              object dxLayoutControl2Item1: TdxLayoutItem
                Caption = 'T'#7915' ng'#224'y'
                Control = dxTuNgay
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                Caption = #272#7871'n ng'#224'y'
                Control = dxDenNgay
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object ElSplitter2: TElSplitter
        Left = 217
        Top = 0
        Width = 8
        Height = 456
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = Panel4
        ControlBottomRight = panel1
        AutoHide = False
        ShowSnapButton = True
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Control = mainPanel
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
        Caption = 'Danh m'#7909'c tin t'#7913'c tr'#234'n web'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryTinTuc: TIBOQuery
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
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WEB_TINTUC'
      'WHERE'
      '   TIN_ID = :OLD_TIN_ID')
    EditSQL.Strings = (
      'UPDATE HR_WEB_TINTUC SET'
      '   TIN_TIEUDE = :TIN_TIEUDE,'
      '   TIN_NOIDUNG = :TIN_NOIDUNG,'
      '   TIN_TOMTAT = :TIN_TOMTAT,'
      '   TIN_NGAYDANG = :TIN_NGAYDANG,'
      '   TIN_NGUOIDANG = :TIN_NGUOIDANG,'
      '   TIN_MAHOA_HTML = :TIN_MAHOA_HTML,'
      '   TIN_GIODANG = :TIN_GIODANG'
      'WHERE'
      '   TIN_ID = :OLD_TIN_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WEB_TINTUC('
      '   TIN_TIEUDE,'
      '   TIN_NOIDUNG,'
      '   TIN_TOMTAT,'
      '   TIN_NGAYDANG,'
      '   TIN_NGUOIDANG,'
      '   TIN_MAHOA_HTML,'
      '   TIN_GIODANG)'
      'VALUES ('
      '   :TIN_TIEUDE,'
      '   :TIN_NOIDUNG,'
      '   :TIN_TOMTAT,'
      '   :TIN_NGAYDANG,'
      '   :TIN_NGUOIDANG,'
      '   :TIN_MAHOA_HTML,'
      '   :TIN_GIODANG)')
    KeyLinks.Strings = (
      'TIN_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryTinTucBeforePost
    AfterPost = qryTinTucAfterPost
    OnNewRecord = qryTinTucNewRecord
    SQL.Strings = (
      'SELECT TIN_ID'
      '     , TIN_TIEUDE'
      '     , TIN_NOIDUNG'
      '     , TIN_TOMTAT'
      '     , TIN_NGAYDANG'
      '     , TIN_NGUOIDANG'
      '     , TIN_MAHOA_HTML'
      '     , TIN_GIODANG'
      'FROM HR_WEB_TINTUC'
      'WHERE TIN_NGAYDANG BETWEEN :TU_NGAY AND :DEN_NGAY'
      'ORDER BY TIN_NGAYDANG DESC, TIN_GIODANG DESC')
    FieldOptions = []
    Left = 32
    Top = 120
    object qryTinTucTIN_TIEUDE: TWideStringField
      FieldName = 'TIN_TIEUDE'
      Required = True
      Size = 255
    end
    object qryTinTucTIN_NOIDUNG: TBlobField
      FieldName = 'TIN_NOIDUNG'
      Size = 8
    end
    object qryTinTucTIN_TOMTAT: TWideStringField
      FieldName = 'TIN_TOMTAT'
      Size = 3072
    end
    object qryTinTucTIN_NGAYDANG: TDateField
      FieldName = 'TIN_NGAYDANG'
      Required = True
    end
    object qryTinTucTIN_GIODANG: TTimeField
      FieldName = 'TIN_GIODANG'
      Required = True
    end
    object qryTinTucTIN_NGUOIDANG: TWideStringField
      FieldName = 'TIN_NGUOIDANG'
      Size = 126
    end
    object qryTinTucTIN_ID: TIntegerField
      FieldName = 'TIN_ID'
    end
    object qryTinTucTIN_MAHOA_HTML: TBlobField
      FieldName = 'TIN_MAHOA_HTML'
      Size = 8
    end
  end
  object dsTinTuc: TDataSource
    DataSet = qryTinTuc
    Left = 64
    Top = 120
  end
  object ActionList1: TActionList
    Left = 32
    Top = 152
    object acLayDanhSach: TAction
      Caption = 'acLayDanhSach'
      OnExecute = acLayDanhSachExecute
    end
  end
end
