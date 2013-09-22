inherited frmAlertConfig: TfrmAlertConfig
  Left = 284
  Width = 645
  Height = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 408
    Width = 637
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 637
    Height = 408
    LookAndFeel = dmMain.StyleWeb
    object Splitter1: TSplitter [0]
      Left = 2
      Top = 231
      Width = 287
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      Color = 15466238
      ParentColor = False
      ResizeStyle = rsLine
    end
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 381
      Color = 15466238
      TabOrder = 2
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 563
        end
        inherited btnHelp: TElPopupButton
          Left = 492
        end
        inherited btnChoose: TElPopupButton
          Left = 562
          Width = 1
        end
        inherited btnFirst: TElPopupButton
          Width = 1
        end
        inherited btnLast: TElPopupButton
          Left = 358
          Width = 1
        end
        inherited btnPrevious: TElPopupButton
          Left = 356
          Width = 1
        end
        inherited btnNext: TElPopupButton
          Left = 357
          Width = 1
        end
        inherited btnDesign: TElPopupButton
          Left = 399
          Width = 1
        end
        inherited btnPreview: TElPopupButton
          Left = 398
          Width = 1
        end
        inherited btnPrint: TElPopupButton
          Left = 397
          Width = 1
        end
        inherited btnSendMail: TElPopupButton
          Left = 396
          Width = 1
        end
        inherited btnGenerate: TElPopupButton
          Left = 407
          Hint = 'Ph'#225't sinh d'#7919' li'#7879'u c'#7897't th'#244'ng tin c'#7843'nh b'#225'o'
          ImageIndex = 23
          UseImageList = True
          Images = dmMain.imgAction
          Action = acPhatsinh
        end
        inherited btnRelation: TElPopupButton
          Left = 406
          Width = 1
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 405
          Width = 1
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
      inherited ActionList1: TActionList
        Left = 345
      end
      inherited ElPopupMenu2: TElPopupMenu
        Left = 329
      end
    end
    object gridAlertList: TdxDBGrid [2]
      Left = 2
      Top = 2
      Width = 327
      Height = 234
      Bands = <
        item
          Caption = 'Danh s'#225'ch c'#7843'nh b'#225'o'
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ALERT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsAlert
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridAlertListALERT_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALERT_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object gridAlertListALERT_TITLE: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873' c'#7843'nh b'#225'o'
        HeaderAlignment = taCenter
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALERT_TITLE'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ c+HqM-nh b+AOE-o'
      end
      object gridAlertListALERT_LEVEL: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = #272#7897' '#432'u ti'#234'n'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALERT_LEVEL'
        Descriptions.WideStrings = (
          'Th'#7845'p'
          'Trung b'#236'nh'
          'Cao')
        ImageIndexes.WideStrings = (
          '1'
          '2'
          '3')
        ShowDescription = True
        Values.WideStrings = (
          '1'
          '2'
          '3')
        Caption_UTF7 = '+ARAe2Q +AbA-u ti+AOo-n'
      end
    end
    object ElPageControl1: TElPageControl [3]
      Left = 329
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
      ShowBorder = False
      Style = etsAngledTabs
      TabIndex = 1
      TabPosition = etpTop
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabNoidung
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 6
      object tabCapquyen: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = 0
        TabVisible = True
        Caption = 'Quy '#273#7883'nh xem c'#7843'nh b'#225'o'
        Visible = False
        object gridAlertUser: TdxDBGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 169
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'USER_ACC'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsAlertUser
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridAlertUserUSER_ACC: TdxDBGridColumn
            Caption = 'T'#224'i kho'#7843'n'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USER_ACC'
            Caption_UTF7 = 'T+AOA-i kho+HqM-n'
          end
          object gridAlertUserDISPLAYNAME: TdxDBGridColumn
            Caption = 'T'#234'n ng'#432#7901'i d'#249'ng'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DISPLAYNAME'
            Caption_UTF7 = 'T+AOo-n ng+AbAe3Q-i d+APk-ng'
          end
          object gridAlertUserCAN_REVIEW: TdxDBGridCheckColumn
            Alignment = taCenter
            Caption = 'Cho ph'#233'p'
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAN_REVIEW'
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption_UTF7 = 'Cho ph+AOk-p'
          end
        end
      end
      object tabNoidung: TElTabSheet
        PageControl = ElPageControl1
        ImageIndex = 1
        TabVisible = True
        Caption = 'N'#7897'i dung c'#7843'nh b'#225'o'
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 169
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBMemo1: TdxDBMemo
            Left = 14
            Top = 28
            Width = 321
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            DataField = 'SQL_CHECK'
            DataSource = dsAlert
            StyleController = dmMain.StyleController
            ScrollBars = ssBoth
            Height = 135
          end
          object dxDBMemo2: TdxDBMemo
            Left = 14
            Top = 257
            Width = 185
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            DataField = 'REPORT_TEXT'
            DataSource = dsAlert
            StyleController = dmMain.StyleController
            Height = 89
          end
          object dxLayoutGroup1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutGroup2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'C'#226'u truy v'#7845'n ki'#7875'm tra '#273'i'#7873'u ki'#7879'n c'#7843'nh b'#225'o'
              object dxLayoutControl1Item1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'dxDBMemo1'
                ShowCaption = False
                Control = dxDBMemo1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group1: TdxLayoutGroup
              Caption = 'C'#226'u th'#244'ng b'#225'o'
              object dxLayoutControl1Item2: TdxLayoutItem
                ShowCaption = False
                Control = dxDBMemo2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object gridColumn: TdxDBGrid [4]
      Left = 2
      Top = 234
      Width = 287
      Height = 147
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'COLUMN_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 1
      DataSource = dsColumns
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridColumnCOLUMN_NO: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'M'#227' c'#7897't'
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUMN_NO'
        Caption_UTF7 = 'M+AOM c+Htk-t'
      end
      object gridColumnCOLUMN_CAPTION: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873' c'#7897't'
        HeaderAlignment = taCenter
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUMN_CAPTION'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ c+Htk-t'
      end
      object gridColumnCOLUMN_WIDTH: TdxDBGridSpinColumn
        Alignment = taCenter
        Caption = 'K'#237'ch th'#432#7899'c'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUMN_WIDTH'
        Caption_UTF7 = 'K+AO0-ch th+AbAe2w-c'
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
        object dxlcMainGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxlcMainItem2: TdxLayoutItem
            AutoAligns = []
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridAlertList
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem5: TdxLayoutItem
            Control = Splitter1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridColumn
            ControlOptions.ShowBorder = False
          end
        end
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'ElPageControl1'
          ShowCaption = False
          Control = ElPageControl1
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
        Caption = 'C'#7845'u h'#236'nh c'#7843'nh b'#225'o ng'#432#7901'i d'#249'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 24
    Top = 32
  end
  object dsAlert: TDataSource
    DataSet = qryAlert
    Left = 88
    Top = 168
  end
  object qryAlert: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_ALERT_OBJ'
      'WHERE'
      '   ALERT_NO = :OLD_ALERT_NO')
    EditSQL.Strings = (
      'UPDATE HR_ALERT_OBJ SET'
      '   ALERT_NO = :ALERT_NO, /*PK*/'
      '   SQL_CHECK = :SQL_CHECK,'
      '   REPORT_TEXT = :REPORT_TEXT,'
      '   ALERT_LEVEL = :ALERT_LEVEL,'
      '   ALERT_TITLE = :ALERT_TITLE'
      'WHERE'
      '   ALERT_NO = :OLD_ALERT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_ALERT_OBJ('
      '   ALERT_NO, /*PK*/'
      '   SQL_CHECK,'
      '   REPORT_TEXT,'
      '   ALERT_LEVEL,'
      '   ALERT_TITLE)'
      'VALUES ('
      '   :ALERT_NO,'
      '   :SQL_CHECK,'
      '   :REPORT_TEXT,'
      '   :ALERT_LEVEL,'
      '   :ALERT_TITLE)')
    KeyLinks.Strings = (
      'ALERT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT ALERT_NO'
      '     , SQL_CHECK'
      '     , REPORT_TEXT'
      '     , ALERT_LEVEL'
      '     , ALERT_TITLE'
      'FROM HR_ALERT_OBJ')
    FieldOptions = []
    Left = 88
    Top = 136
    object qryAlertALERT_NO: TWideStringField
      FieldName = 'ALERT_NO'
      Required = True
      Size = 30
    end
    object qryAlertSQL_CHECK: TWideStringField
      FieldName = 'SQL_CHECK'
      Size = 3072
    end
    object qryAlertALERT_LEVEL: TIntegerField
      FieldName = 'ALERT_LEVEL'
    end
    object qryAlertALERT_TITLE: TWideStringField
      FieldName = 'ALERT_TITLE'
      Required = True
      Size = 126
    end
    object qryAlertREPORT_TEXT: TWideStringField
      FieldName = 'REPORT_TEXT'
      Size = 3072
    end
  end
  object qryColumns: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ALERT_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_ALERT_OBJ_CAPTION'
      'WHERE'
      '   ALERT_NO = :OLD_ALERT_NO AND'
      '   COLUMN_NO = :OLD_COLUMN_NO')
    EditSQL.Strings = (
      'UPDATE HR_ALERT_OBJ_CAPTION SET'
      '   ALERT_NO = :ALERT_NO, /*PK*/'
      '   COLUMN_NO = :COLUMN_NO, /*PK*/'
      '   COLUMN_CAPTION = :COLUMN_CAPTION,'
      '   COLUMN_TYPE = :COLUMN_TYPE,'
      '   COLUMN_WIDTH = :COLUMN_WIDTH'
      'WHERE'
      '   ALERT_NO = :OLD_ALERT_NO AND'
      '   COLUMN_NO = :OLD_COLUMN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_ALERT_OBJ_CAPTION('
      '   ALERT_NO, /*PK*/'
      '   COLUMN_NO, /*PK*/'
      '   COLUMN_CAPTION,'
      '   COLUMN_TYPE,'
      '   COLUMN_WIDTH)'
      'VALUES ('
      '   :ALERT_NO,'
      '   :COLUMN_NO,'
      '   :COLUMN_CAPTION,'
      '   :COLUMN_TYPE,'
      '   :COLUMN_WIDTH)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsAlert
    SQL.Strings = (
      'SELECT ALERT_NO'
      '     , COLUMN_NO'
      '     , COLUMN_CAPTION'
      '     , COLUMN_TYPE'
      '     , COLUMN_WIDTH'
      'FROM HR_ALERT_OBJ_CAPTION'
      'where ALERT_NO=:ALERT_NO')
    FieldOptions = []
    Left = 88
    Top = 240
    object qryColumnsALERT_NO: TWideStringField
      FieldName = 'ALERT_NO'
      Required = True
      Size = 30
    end
    object qryColumnsCOLUMN_NO: TWideStringField
      FieldName = 'COLUMN_NO'
      Required = True
      Size = 30
    end
    object qryColumnsCOLUMN_CAPTION: TWideStringField
      FieldName = 'COLUMN_CAPTION'
      Required = True
      Size = 255
    end
    object qryColumnsCOLUMN_TYPE: TWideStringField
      FieldName = 'COLUMN_TYPE'
      Size = 30
    end
    object qryColumnsCOLUMN_WIDTH: TIntegerField
      FieldName = 'COLUMN_WIDTH'
    end
  end
  object dsColumns: TDataSource
    DataSet = qryColumns
    Left = 88
    Top = 272
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 160
    Top = 192
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
    OnError = qryTestError
    FieldOptions = []
    Left = 200
    Top = 312
  end
  object qryAlertUser: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ALERT_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_ALERT_USER SET'
      '   ALERT_NO = :ALERT_NO, /*PK*/'
      '   SYS_ID = :SYS_ID, /*PK*/'
      '   USER_ACC = :USER_ACC, /*PK*/'
      '   CAN_REVIEW = :CAN_REVIEW'
      'WHERE'
      '   ALERT_NO = :OLD_ALERT_NO AND'
      '   SYS_ID = :OLD_SYS_ID AND'
      '   USER_ACC = :OLD_USER_ACC')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_ALERT_USER.ALERT_NO'
      'HR_ALERT_USER.USER_ACC'
      'HR_ALERT_USER.SYS_ID')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsAlert
    SQL.Strings = (
      'SELECT ALERT_NO'
      '     , USER_ACC'
      '     , DISPLAYNAME'
      '     , CAN_REVIEW'
      '     , SYS_ID'
      'FROM HR_ALERT_USER'
      'JOIN SYS_USERACCOUNT on'
      '  USER_ACC=USERACCID and'
      '  SYS_ID=SUBSYSTEMID'
      'where ALERT_NO=:ALERT_NO')
    FieldOptions = []
    Left = 416
    Top = 168
    object qryAlertUserALERT_NO: TWideStringField
      FieldName = 'ALERT_NO'
      Required = True
      Size = 30
    end
    object qryAlertUserUSER_ACC: TWideStringField
      FieldName = 'USER_ACC'
      Required = True
      Size = 30
    end
    object qryAlertUserDISPLAYNAME: TWideStringField
      FieldName = 'DISPLAYNAME'
      Size = 126
    end
    object qryAlertUserCAN_REVIEW: TSmallintField
      FieldName = 'CAN_REVIEW'
      Required = True
    end
    object qryAlertUserSYS_ID: TIntegerField
      FieldName = 'SYS_ID'
      Required = True
    end
  end
  object dsAlertUser: TDataSource
    DataSet = qryAlertUser
    Left = 416
    Top = 200
  end
  object ImageList1: TImageList
    Left = 128
    Top = 96
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0B9B0FFC9ACA2FFC8ACA1FFC8ACA1FFCAAEA4FFFEFDFCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B05C2FFFE79B5DFFFF9D40FFFF881DFFFD7C0CFFE77F24FFC87C47FFB25B
      31FF00000000000000000000000000000000AABCD5FF0056B0FF005CB4FF005B
      B4FF005AB4FF005AB4FF0059B4FF0058B4FF0057B4FF0058B4FF0057B4FF0056
      B4FF0055B4FF0055B4FF1F60B4FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDE8
      E7FFEC9649FFFF9E40FFFF922DFFFF8519FFFF7904FFEC6D00FFD16000FFAC4C
      10FF000000000000000000000000000000008EB3DBFF00EDFFFF00EAFFFF00E5
      FFFF00DFFFFF00D9FFFF00D5FFFF00C7FAFF00C9FFFF00C4FFFF00BEFFFF00B9
      FFFF00B4FFFF00AEFFFF0097F5FF236AB9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F9FFEAEA
      EEFFBA5A1BFFFFA349FFFF9735FFFF8A21FFFF7E0DFFF57200FFDC6600FFA038
      04FF00000000000000000000000000000000AAD3EBFF00EFFFFF00EAFFFF00E5
      FFFF00DFFFFF00DAFFFF00B6EBFF0051ADFF004CA9FF00C6FFFF00BFFFFF00BA
      FFFF00B5FFFF00AFFFFF00ABFFFF085AB2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363C5FF515AC9FF526AE5FF4561
      ECFF7E3737FFFFA952FFFF9C3DFFCD6111FFBB4B02FFFB7400FFE36800FF7276
      41FF548754FF3D6C3DFF6C8F6CFFFAFAFAFF1258B2FF1AF4FFFF00ECFFFF00E7
      FFFF00E1FFFF00DCFFFF00B6EAFF0052ADFF004EABFF00C8FFFF00C1FFFF00BC
      FFFF00B7FFFF00B1FFFF008BE4FFBECEE0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000325DEBFF1D57FFFF154CFFFF0D42
      FFFF0036FFFFB85614FFB65212FFC7E0EFFFD1E7F2FFA04011FFA03500FF098B
      0CFF018101FF008000FF108B10FF154B15FFE9ECEFFF99BBDEFF00EDFFFF00E9
      FFFF00E3FFFF00DEFFFF00D9FFFF00C7F6FF00CEFEFF00C9FFFF00C3FFFF00BE
      FFFF00B9FFFF00B1FDFF115FB5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001129BEFF2763FFFF1F58FFFF164D
      FFFF0D41FFFF1848A3FF3889BCFF68AEE2FF67ACE1FF1674ACFF208B33FF1691
      18FF0B890CFF008000FF008200FF3B6B3EFF000000003D72B3FF49F5FFFF00EB
      FFFF00E6FFFF00E0FFFF00BFEEFF0052ADFF004CA9FF00CCFFFF00C5FFFF00C0
      FFFF00BBFFFF0077CCFFE8E9EAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A2AABFF3170FFFF2863FFFF1A4E
      F2FF0F42E4FF308CCEFF2D94E4FF2E94E4FF2E94E4FF3196E5FF0A69AAFF209B
      22FF159216FF0A880BFF007C01FFC5C9C5FF00000000000000005789C7FF00EC
      FFFF00E8FFFF00E2FFFF00B0E5FF0053AEFF004FABFF00CEFFFF00C8FFFF00C2
      FFFF00B2F9FF4986CBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F4FF1D3FCFFF1F48DDFFC0BD
      E5FF3C86AEFF3EA4F5FF3DA3F4FF3DA3F4FF3DA3F4FF3DA3F4FF3FA4F7FF779F
      A1FF396239FF138C13FF005810FF000000000000000000000000799FCDFF7DEC
      F9FF00EAFFFF00E4FFFF00B1E5FF0053AEFF004FABFF00D0FFFF00CAFFFF00C5
      FFFF0066BDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A60B8FF1772A4FF4591
      C2FF005FABFF0068B3FF288CDAFF48AEFEFF49AFFFFF49AFFFFF4BB2FFFF1B52
      7CFF1F4269FF054E23FFD8DBD8FF00000000000000000000000000000000115C
      B2FF05ECFFFF00E6FFFF00B3E5FF0053AEFF004FABFF00D2FFFF00CCFFFF00AF
      F0FF9AB4D1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBE4E9FF2985C5FF2F94E2FF2A91
      E1FF0463ADFF0597FFFF02A2E4FF066FB7FF3399E4FF47ADF7FF288BD1FF1D64
      A1FF386B9FFF3F6894FF9EA6AFFF00000000000000000000000000000000C8D3
      E1FFA4D6EBFF00E9FFFF00B4E5FF0053AEFF004FABFF00D4FFFF00CEFFFF005A
      B5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002678A8FF3AA0F1FF3AA0F0FF3AA0
      F0FF2C91E0FF0188DDFF02B9FFFF0DDBF2FF17F3FAFF1CB5E1FF1380C4FF2A6A
      AAFF2A6BABFF296BABFF17436FFF000000000000000000000000000000000000
      00002165BBFF2BF0FFFF00E2FDFF0050ABFF005FB5FF00D5FFFF0099DDFFD3D7
      DBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000366A0FF47ADFEFF47ADFEFF47AD
      FEFF47ADFEFF1D78BDFF0163ACFF009BD4FF0077C4FF065DA4FF2C74BDFF2C75
      BEFF2C75BEFF2C75BEFF2462A0FFEEEFEFFF0000000000000000000000000000
      0000F8F8FAFF88ACD7FF00E6FFFF00E4FFFF00DEFFFF00D3FDFF1F68BCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000196998FF4FB6FFFF4BB1FDFF3EA4
      F0FF054E7CFF015286FF006097FFA6B7C2FF183759FF2C639DFF2E78C2FF2D7F
      CFFF2D7FD0FF2E7CCBFF1E558CFF000000000000000000000000000000000000
      0000000000005080BBFF59EFFEFF00E4FFFF00DFFFFF007CC8FFF3F3F4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577F97FF055182FF095685FF1875
      B1FF0F659FFF02649CFF004A77FFFDFDFDFF7E91A4FF2A649EFF316DA9FF3478
      BEFF336FABFF2D6CAAFF365475FF000000000000000000000000000000000000
      000000000000000000003473BDFF4CF0FFFF1DD3F5FF689AD4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000577E96FF0D6095FF0F6F
      A9FF1473AFFF034A76FFCED8DEFF00000000000000005E748DFF24507FFF3268
      A0FF285B8EFF375676FF00000000000000000000000000000000000000000000
      00000000000000000000F9FAFBFF89AED9FFA9C5E4FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F81FFFFF00000000F00F000000000000
      E00F000000000000C00F00000000000000000000000000000000000100000000
      00008001000000000000C003000000000001C007000000008001E00700000000
      0001E00F000000000001F00F000000000000F01F000000000001F81F00000000
      0001FC3F000000008183FC7F0000000000000000000000000000000000000000
      000000000000}
  end
end
