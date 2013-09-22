inherited frmBAOHIEM_CauHinhDuLieu: TfrmBAOHIEM_CauHinhDuLieu
  Left = 167
  Top = 116
  Width = 917
  Height = 607
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 554
    Width = 909
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 909
    Height = 554
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 527
      Color = 15466238
      TabOrder = 1
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnGenerate: TElPopupButton
          ImageIndex = 23
          UseImageList = True
          Images = dmMain.imgAction
          Action = acPhatsinh
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
    object gridData: TdxDBGrid [1]
      Left = 2
      Top = 2
      Width = 399
      Height = 525
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BH_CONFIG_DATA_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsData
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
      object gridDataDATA_TITLE: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA_TITLE'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ'
      end
      object gridDataTEN_PHANNHOM: TdxDBGridMRUColumn
        Caption = 'Ph'#226'n nh'#243'm'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEN_PHANNHOM'
        ImmediateDropDown = True
        Caption_UTF7 = 'Ph+AOI-n nh+APM-m'
      end
      object gridDataDATA_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object pageConfig: TElPageControl [2]
      Left = 401
      Top = 2
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
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
      ActivePage = tabCauHinh
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 5
      object tabCauHinh: TElTabSheet
        PageControl = pageConfig
        ImageIndex = 1
        TabVisible = True
        Caption = 'C'#7845'u h'#236'nh truy xu'#7845't d'#7919' li'#7879'u'
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 167
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBMemo1: TdxDBMemo
            Left = 14
            Top = 28
            Width = 254
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            DataField = 'DATA_SQL'
            DataSource = dsData
            StyleController = dmMain.StyleController
            ScrollBars = ssBoth
            Height = 196
          end
          object gridColumn: TdxDBGrid
            Left = 14
            Top = 257
            Width = 254
            Height = 457
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'COLUMN_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 1
            DataSource = dsCaption
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridColumnCOLUMN_STT: TdxDBGridSpinColumn
              Caption = 'Th'#7913' t'#7921
              HeaderAlignment = taCenter
              Width = 38
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLUMN_STT'
              Caption_UTF7 = 'Th+Huk t+HvE'
            end
            object gridColumnCOLUMN_NO: TdxDBGridColumn
              Alignment = taCenter
              Caption = 'M'#227' c'#7897't'
              HeaderAlignment = taCenter
              Width = 86
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLUMN_NO'
              Caption_UTF7 = 'M+AOM c+Htk-t'
            end
            object gridColumnCOLUMN_CAPTION: TdxDBGridColumn
              Caption = 'Ti'#234'u '#273#7873' c'#7897't'
              HeaderAlignment = taCenter
              Width = 130
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLUMN_CAPTION'
              Caption_UTF7 = 'Ti+AOo-u +AREewQ c+Htk-t'
            end
            object gridColumnCOLUMN_WIDTH: TdxDBGridSpinColumn
              Alignment = taCenter
              Caption = 'K'#237'ch th'#432#7899'c'
              HeaderAlignment = taCenter
              Width = 70
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLUMN_WIDTH'
              Caption_UTF7 = 'K+AO0-ch th+AbAe2w-c'
            end
            object gridColumnCOLUMN_TYPE: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Ki'#7875'u d'#7919' li'#7879'u'
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLUMN_TYPE'
              Descriptions.WideStrings = (
                'Ng'#224'y'
                'S'#7889
                'Text'
                'Ghi ch'#250)
              ShowDescription = True
              Values.WideStrings = (
                'DATE'
                'NUMBER'
                'TEXT'
                'NOTATION')
              Caption_UTF7 = 'Ki+HsM-u d+Hu8 li+Hsc-u'
            end
            object gridColumnCOLUMN_GET_DATA: TdxDBGridCheckColumn
              Caption = 'L'#7845'y d'#7919' li'#7879'u'
              HeaderAlignment = taCenter
              MinWidth = 20
              Width = 42
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLUMN_GET_DATA'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = 'L+HqU-y d+Hu8 li+Hsc-u'
            end
            object gridColumnCOLUMN_GROUP: TdxDBGridCheckColumn
              Alignment = taCenter
              Caption = 'Gom nh'#243'm'
              HeaderAlignment = taCenter
              Width = 42
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COLUMN_GROUP'
              ValueChecked = '1'
              ValueUnchecked = '0'
              Caption_UTF7 = 'Gom nh+APM-m'
            end
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group1: TdxLayoutGroup
              Caption = 'C'#226'u l'#7879'nh SQL'
              object dxLayoutControl1Item1: TdxLayoutItem
                Caption = 'New Item'
                ShowCaption = False
                Control = dxDBMemo1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'C'#7845'u h'#236'nh ti'#234'u '#273#7873' c'#225'c c'#7897't'
              object dxLayoutControl1Item2: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'New Item'
                ShowCaption = False
                Control = gridColumn
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object tabQuiDinh: TElTabSheet
        PageControl = pageConfig
        ImageIndex = 0
        TabVisible = True
        Caption = 'Quy '#273#7883'nh truy xu'#7845't d'#7919' li'#7879'u'
        Visible = False
        object gridQuiDinh: TdxDBGrid
          Left = 0
          Top = 0
          Width = 285
          Height = 167
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'BH_MAU_ID'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsQuyDinh
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
          object gridQuiDinhMAU_TEN: TdxDBGridColumn
            Caption = 'M'#7851'u b'#7843'o hi'#7875'm'
            HeaderAlignment = taCenter
            Width = 418
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MAU_TEN'
            Caption_UTF7 = 'M+Hqs-u b+HqM-o hi+HsM-m'
          end
          object gridQuiDinhIN_VIEW: TdxDBGridCheckColumn
            Caption = 'Truy xu'#7845't'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IN_VIEW'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Truy xu+HqU-t'
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup2: TdxLayoutGroup [0]
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
          Control = gridData
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem5: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'ElPageControl1'
          ShowCaption = False
          Control = pageConfig
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
        Caption = 'C'#7845'u h'#236'nh d'#7919' li'#7879'u truy xu'#7845't t'#237'nh b'#7843'o hi'#7875'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object qryData: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_CONFIG_DATA'
      'WHERE'
      '   BH_CONFIG_DATA_ID = :OLD_BH_CONFIG_DATA_ID')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_CONFIG_DATA SET'
      '   BH_CONFIG_DATA_ID = :BH_CONFIG_DATA_ID, /*PK*/'
      '   DATA_TITLE = :DATA_TITLE,'
      '   DATA_SQL = :DATA_SQL,'
      '   DATA_NOTE = :DATA_NOTE,'
      '   MA_PHANNHOM = :MA_PHANNHOM'
      'WHERE'
      '   BH_CONFIG_DATA_ID = :OLD_BH_CONFIG_DATA_ID')
    GeneratorLinks.Strings = (
      'BH_CONFIG_DATA_ID = GEN_HR_BAOHIEM_CONFIG_DATA_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_CONFIG_DATA('
      '   BH_CONFIG_DATA_ID, /*PK*/'
      '   DATA_TITLE,'
      '   DATA_SQL,'
      '   DATA_NOTE,'
      '   MA_PHANNHOM)'
      'VALUES ('
      '   :BH_CONFIG_DATA_ID,'
      '   :DATA_TITLE,'
      '   :DATA_SQL,'
      '   :DATA_NOTE,'
      '   :MA_PHANNHOM)')
    KeyLinks.Strings = (
      'BH_CONFIG_DATA_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT BH_CONFIG_DATA_ID'
      '     , DATA_TITLE'
      '     , DATA_SQL'
      '     , DATA_NOTE'
      '     , HR_BAOHIEM_CONFIG_DATA.MA_PHANNHOM'
      '     , TEN_PHANNHOM'
      'FROM HR_BAOHIEM_CONFIG_DATA'
      
        'JOIN HR_BAOHIEM_PHANNHOM ON HR_BAOHIEM_CONFIG_DATA.MA_PHANNHOM=H' +
        'R_BAOHIEM_PHANNHOM.MA_PHANNHOM')
    FieldOptions = []
    Left = 56
    Top = 112
    object qryDataDATA_TITLE: TWideStringField
      FieldName = 'DATA_TITLE'
      Required = True
      Size = 126
    end
    object qryDataDATA_SQL: TWideStringField
      FieldName = 'DATA_SQL'
      Size = 3072
    end
    object qryDataDATA_NOTE: TWideStringField
      FieldName = 'DATA_NOTE'
      Size = 255
    end
    object qryDataTEN_PHANNHOM: TWideStringField
      FieldName = 'TEN_PHANNHOM'
      Required = True
      Size = 63
    end
    object qryDataBH_CONFIG_DATA_ID: TIntegerField
      FieldName = 'BH_CONFIG_DATA_ID'
    end
    object qryDataMA_PHANNHOM: TWideStringField
      FieldName = 'MA_PHANNHOM'
      Size = 30
    end
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 56
    Top = 144
  end
  object qryCaption: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'BH_CONFIG_DATA_ID'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_BAOHIEM_CONFIG_CAPTION'
      'WHERE'
      '   BH_CONFIG_DATA_ID = :OLD_BH_CONFIG_DATA_ID AND'
      '   COLUMN_NO = :OLD_COLUMN_NO')
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_CONFIG_CAPTION SET'
      '   BH_CONFIG_DATA_ID = :BH_CONFIG_DATA_ID, /*PK*/'
      '   COLUMN_NO = :COLUMN_NO, /*PK*/'
      '   COLUMN_CAPTION = :COLUMN_CAPTION,'
      '   COLUMN_TYPE = :COLUMN_TYPE,'
      '   COLUMN_WIDTH = :COLUMN_WIDTH,'
      '   COLUMN_GET_DATA = :COLUMN_GET_DATA,'
      '   COLUMN_STT = :COLUMN_STT,'
      '   COLUMN_GROUP = :COLUMN_GROUP'
      'WHERE'
      '   BH_CONFIG_DATA_ID = :OLD_BH_CONFIG_DATA_ID AND'
      '   COLUMN_NO = :OLD_COLUMN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_BAOHIEM_CONFIG_CAPTION('
      '   BH_CONFIG_DATA_ID, /*PK*/'
      '   COLUMN_NO, /*PK*/'
      '   COLUMN_CAPTION,'
      '   COLUMN_TYPE,'
      '   COLUMN_WIDTH,'
      '   COLUMN_GET_DATA,'
      '   COLUMN_STT,'
      '   COLUMN_GROUP)'
      'VALUES ('
      '   :BH_CONFIG_DATA_ID,'
      '   :COLUMN_NO,'
      '   :COLUMN_CAPTION,'
      '   :COLUMN_TYPE,'
      '   :COLUMN_WIDTH,'
      '   :COLUMN_GET_DATA,'
      '   :COLUMN_STT,'
      '   :COLUMN_GROUP)')
    KeyLinks.Strings = (
      'BH_CONFIG_DATA_ID'
      'COLUMN_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsData
    SQL.Strings = (
      'SELECT BH_CONFIG_DATA_ID'
      '     , COLUMN_NO'
      '     , COLUMN_CAPTION'
      '     , COLUMN_TYPE'
      '     , COLUMN_WIDTH'
      '     , COLUMN_GET_DATA'
      '     , COLUMN_STT'
      '     , COLUMN_GROUP'
      'FROM HR_BAOHIEM_CONFIG_CAPTION'
      'WHERE BH_CONFIG_DATA_ID = :BH_CONFIG_DATA_ID'
      'ORDER BY COLUMN_STT')
    FieldOptions = []
    Left = 24
    Top = 112
    object qryCaptionCOLUMN_NO: TWideStringField
      FieldName = 'COLUMN_NO'
      Required = True
      Size = 30
    end
    object qryCaptionCOLUMN_CAPTION: TWideStringField
      FieldName = 'COLUMN_CAPTION'
      Required = True
      Size = 255
    end
    object qryCaptionCOLUMN_TYPE: TWideStringField
      FieldName = 'COLUMN_TYPE'
      Required = True
      Size = 30
    end
    object qryCaptionCOLUMN_WIDTH: TIntegerField
      FieldName = 'COLUMN_WIDTH'
    end
    object qryCaptionCOLUMN_STT: TSmallintField
      FieldName = 'COLUMN_STT'
    end
    object qryCaptionCOLUMN_GET_DATA: TSmallintField
      FieldName = 'COLUMN_GET_DATA'
    end
    object qryCaptionBH_CONFIG_DATA_ID: TIntegerField
      FieldName = 'BH_CONFIG_DATA_ID'
      Required = True
    end
    object qryCaptionCOLUMN_GROUP: TSmallintField
      FieldName = 'COLUMN_GROUP'
    end
  end
  object dsCaption: TDataSource
    DataSet = qryCaption
    Left = 24
    Top = 144
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 88
    Top = 112
    object acPhatsinh: TAction
      Caption = 'acPhatsinh'
      ImageIndex = 23
      OnExecute = acPhatsinhExecute
      OnUpdate = acPhatsinhUpdate
    end
  end
  object qryTest: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 88
    Top = 144
  end
  object ImageList1: TImageList
    Left = 120
    Top = 112
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000FDFAF8FFFDF9
      F7FFFDFBFAFF00000000000000000000000000000000FDFDFEFFFEFEFEFF0000
      0000000000000000000000000000FBFBFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F6F4FFE3BFABFFE3B9
      9FFFE8D4C8FF0000000000000000FEFEFEFF00000000F1F0F6FF958ED3FF656F
      EDFF5E68F9FF4B53F9FF2B31DDFFC5C6E0FF0000000000000000000000000000
      00000000000000000000FEFEFEFFFDFDFDFFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD8754FFFF6607FFFF8030FFFF8F
      49FFFF9857FFFF944DFFCDAE9BFFE3CDC4FF9A9DC9FF7080FFFFE2D0FEFF8997
      FDFF7B88FDFF6570FCFF4850FDFF3033B7FF000000000000000000000000FAFA
      FAFFEEEEEEFFE3E3E3FFDCDCDCFFD9D9D9FFDBDBDBFFE0E0E0FFE9E9E9FFF5F5
      F5FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0B67DFFFE6F1AFFFE8C45FFFF9E
      61FFFEA973FFFEAA73FFCEBEB4FFFFA45DFF5E6DE6FF8191F7FFFEFBFEFF98AA
      FEFF8E9DFDFF7581FCFF555FFEFF7A7BBDFFFEFEFEFF2F2F2FFF939393FFCBCB
      CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFF2F2F2FFF8A8A8AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E59A62FFFD7A2AFFFF9857FFFEAB
      76FFFDBA8DFFF8D4BBFFC7BCB4FFFFAB74FF87729EFF91A0FEFFF2EDE9FFCCD1
      F5FF96A6FDFF7A87FCFF5761F8FF00000000FCFCFCFF363636FF8F8F8FFFDDDD
      DDFFDFDFDFFFDEDEDEFFDDDDDDFFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FF373737FFA6A6A6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D99B7AFFFFA25EFFFF9E60FFFEB1
      7FFFFEBE93FFFFFFFDFFBEB3ACFFFFB37FFFDB9D76FF8A8FCCFF496D9AFF3864
      91FF8392EEFF727DF7FFCBCCE1FFFCFCFDFFFEFEFEFF414141FF626262FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FF3B3B3BFFD6D6D6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBA468FFFE9656FFFEB0
      7EFFAB9A95FF3D689AFFB89F90FFE19567FFFAFBFBFF4E748AFF345976FF355F
      79FF37626DFFFCFDFDFFFDFDFDFF00000000F9F9F9FF4A4A4AFF404040FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFD9D9D9FF3C3C3CFFF1F1F1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA378FFA46A
      45FF3A648EFF355B7CFF947E73FF0000000092B3C0FF6083A7FF5B81A6FF5477
      9AFF376574FF487C8BFF0000000000000000F8F8F8FF636363FF494949FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFA8A8A8FF3E3E3EFFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFEFFD1D9
      E1FF355A79FF3F6382FF446685FFAABAC9FF000000007BA1CDFF7EA4CFFF6E94
      BCFF51749AFF538995FF0000000000000000FBFBFBFF909090FF4A4A4AFFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FF757575FF474747FFF4F4F4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F1
      F2FF53789AFF5B80A5FF6489AFFF5E85ACFF00000000ABCAEAFF9DBFE7FF80A6
      D3FF417485FF639AA6FF000000000000000000000000D9D9D9FF4C4C4CFF4D4D
      4DFF4F4F4FFF505050FF505050FF4F4F4FFF4E4E4EFF4C4C4CFF494949FF4545
      45FF404040FF4B4B4BFFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003951
      66FF6186ABFF759BC5FF7EA5D1FF7BA2CDFF0000000091B6DEFF97BBE2FF5686
      9AFF4F8495FF76A5B1FF000000000000000000000000FDFDFDFF4E4E4EFF4E4E
      4EFF949494FF7A7A7AFFD7D7D7FFCECECEFFC5C5C5FFBDBDBDFFB6B6B6FF4545
      45FF424242FF7E7E7EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFAFF2C2E
      30FF627F9FFF82A9D7FFABCAEBFFADCBE9FFC4CDCDFF476F7EFF5F96A7FF74AE
      C3FF84C2D7FFF8FBFCFF000000000000000000000000000000005D5D5DFF5151
      51FF929292FF505050FFDCDCDCFFD9D9D9FFD1D1D1FFC8C8C8FFB4B4B4FF4747
      47FF464646FFB6B6B6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFCFF3233
      34FF5B728AFFAACAEDFFB1D1F0FFACCDF0FF00000000E7EEF0FFC7DBE1FFD9E8
      EDFF00000000FEFEFFFF00000000000000000000000000000000595959FF6060
      60FFADADADFFB0B0B0FFBEBEBEFFC6C6C6FFC7C7C7FFC0C0C0FF9A9A9AFF5555
      55FFE5E5E5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5AFF636262FF656260FF6E6B69FF828281FF00000000FEFEFEFFFDFDFEFFFDFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E5FF757575FF808080FFC8C8C8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF0000000000000000FDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C79EFFFF000000008680FC7F00000000
      0000E00700000000000000010000000000010001000000000000000100000000
      8001000100000000C103000100000000C083000100000000E083800100000000
      E083800300000000C003C00300000000C08BC00700000000E08FFFFF00000000
      E1FFFFFF00000000EDFFFFFF00000000}
  end
  object qryQuyDinh: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'BH_CONFIG_DATA_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_BAOHIEM_CONFIG_APPLY SET'
      '   BH_CONFIG_DATA_ID = :BH_CONFIG_DATA_ID, /*PK*/'
      '   BH_MAU_ID = :BH_MAU_ID, /*PK*/'
      '   IN_VIEW = :IN_VIEW'
      'WHERE'
      '   BH_CONFIG_DATA_ID = :OLD_BH_CONFIG_DATA_ID AND'
      '   BH_MAU_ID = :OLD_BH_MAU_ID')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsData
    SQL.Strings = (
      'select hr_baohiem_config_apply.bh_config_data_id,'
      '    hr_baohiem_config_apply.bh_mau_id,'
      '    hr_baohiem_mau.mau_ten,'
      '    hr_baohiem_config_apply.in_view '
      'from hr_baohiem_config_apply '
      
        'join hr_baohiem_mau on hr_baohiem_config_apply.bh_mau_id = hr_ba' +
        'ohiem_mau.key_id '
      
        'where hr_baohiem_config_apply.bh_config_data_id= :BH_CONFIG_DATA' +
        '_ID')
    FieldOptions = []
    Left = 24
    Top = 176
    object qryQuyDinhBH_CONFIG_DATA_ID: TIntegerField
      FieldName = 'BH_CONFIG_DATA_ID'
      Required = True
    end
    object qryQuyDinhBH_MAU_ID: TIntegerField
      FieldName = 'BH_MAU_ID'
      Required = True
    end
    object qryQuyDinhMAU_TEN: TWideStringField
      FieldName = 'MAU_TEN'
      Required = True
      Size = 126
    end
    object qryQuyDinhIN_VIEW: TSmallintField
      FieldName = 'IN_VIEW'
    end
  end
  object dsQuyDinh: TDataSource
    DataSet = qryQuyDinh
    Left = 24
    Top = 208
  end
end
