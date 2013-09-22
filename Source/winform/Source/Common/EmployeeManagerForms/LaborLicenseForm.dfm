inherited frmLaborlicense: TfrmLaborlicense
  Left = 286
  Top = 158
  Width = 746
  Height = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 489
    Width = 738
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 738
    Height = 489
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 462
      Color = 15466238
      TabOrder = 8
    end
    object dxDBGrid1: TdxDBGrid [1]
      Left = 3
      Top = 217
      Width = 632
      Height = 167
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LL_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 7
      DataSource = dsLaborLicense
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid1LABOR_LICENSE_ID: TdxDBGridColumn
        Caption = 'S'#7889' gi'#7845'y ph'#233'p'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LABOR_LICENSE_ID'
        Caption_UTF7 = 'S+HtE gi+HqU-y ph+AOk-p'
      end
      object dxDBGrid1FIELD: TdxDBGridColumn
        Caption = 'L'#297'nh v'#7921'c'
        HeaderAlignment = taCenter
        Width = 261
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FIELD'
        Caption_UTF7 = 'L+ASk-nh v+HvE-c'
      end
      object dxDBGrid1START_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
        HeaderAlignment = taCenter
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'START_DATE'
        Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
      end
      object dxDBGrid1NUMBER_OF_EFFECT_YEAR: TdxDBGridSpinColumn
        Caption = 'S'#7889' n'#259'm hi'#7879'u l'#7921'c'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMBER_OF_EFFECT_YEAR'
        Caption_UTF7 = 'S+HtE n+AQM-m hi+Hsc-u l+HvE-c'
      end
      object dxDBGrid1END_DATE: TdxDBGridDateColumn
        Caption = 'Ng'#224'y h'#7871't h'#7841'n'
        HeaderAlignment = taCenter
        Width = 132
        BandIndex = 0
        RowIndex = 0
        FieldName = 'END_DATE'
        Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n'
      end
    end
    object dxDBEdit1: TdxDBEdit [2]
      Left = 81
      Top = 28
      Width = 150
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      DataField = 'LABOR_LICENSE_ID'
      DataSource = dsLaborLicense
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit [3]
      Left = 81
      Top = 51
      Width = 609
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'FIELD'
      DataSource = dsLaborLicense
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit1: TdxDBDateEdit [4]
      Left = 81
      Top = 74
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      DataField = 'START_DATE'
      DataSource = dsLaborLicense
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit2: TdxDBDateEdit [5]
      Left = 385
      Top = 74
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      DataField = 'END_DATE'
      DataSource = dsLaborLicense
      StyleController = dmMain.StyleController
    end
    object dxDBSpinEdit1: TdxDBSpinEdit [6]
      Left = 238
      Top = 74
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      DataField = 'NUMBER_OF_EFFECT_YEAR'
      DataSource = dsLaborLicense
      StyleController = dmMain.StyleController
    end
    object dxDBButtonEdit1: TdxDBButtonEdit [7]
      Left = 81
      Top = 97
      Width = 609
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      DataField = 'FILE_NAME'
      DataSource = dsLaborLicense
      StyleController = dmMain.StyleController
      Buttons = <
        item
          Default = True
        end
        item
          Default = False
          Kind = bkDown
        end>
      OnButtonClick = dxDBButtonEdit1ButtonClick
      ExistButtons = True
    end
    object dxDBMemo1: TdxDBMemo [8]
      Left = 81
      Top = 120
      Width = 185
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      DataField = 'NOTE'
      DataSource = dsLaborLicense
      StyleController = dmMain.StyleController
      Height = 89
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'New Group'
        ShowCaption = False
        ShowBorder = False
        object dxlcMainGroup2: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          Caption = '+ Th'#244'ng tin chi ti'#7871't gi'#7845'y ph'#233'p'
          object dxlcMainItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'S'#7889' gi'#7845'y ph'#233'p'
            Control = dxDBEdit1
            ControlOptions.ShowBorder = False
          end
          object dxlcMainItem4: TdxLayoutItem
            Caption = 'L'#297'nh v'#7921'c'
            Control = dxDBEdit2
            ControlOptions.ShowBorder = False
          end
          object dxlcMainGroup4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxlcMainGroup6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcMainItem5: TdxLayoutItem
                Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
                Control = dxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem7: TdxLayoutItem
                Caption = 'S'#7889' n'#259'm hi'#7879'u l'#7921'c'
                Control = dxDBSpinEdit1
                ControlOptions.ShowBorder = False
              end
              object dxlcMainItem6: TdxLayoutItem
                Caption = 'Ng'#224'y h'#7871't h'#7841'n'
                Control = dxDBDateEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object dxlcMainItem8: TdxLayoutItem
              Caption = 'File '#273#237'nh k'#232'm'
              Control = dxDBButtonEdit1
              ControlOptions.ShowBorder = False
            end
            object dxlcMainItem9: TdxLayoutItem
              Caption = 'Ghi ch'#250' th'#234'm'
              Control = dxDBMemo1
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxlcMainGroup3: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          object dxlcMainItem2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = dxDBGrid1
          end
        end
      end
    end
  end
  object qryLaborLicense: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_LABOR_LICENSE'
      'WHERE'
      '   LL_ID = :OLD_LL_ID')
    EditSQL.Strings = (
      'UPDATE HR_LABOR_LICENSE SET'
      '   LL_ID = :LL_ID, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO,'
      '   LABOR_LICENSE_ID = :LABOR_LICENSE_ID,'
      '   FIELD = :FIELD,'
      '   START_DATE = :START_DATE,'
      '   END_DATE = :END_DATE,'
      '   NUMBER_OF_EFFECT_YEAR = :NUMBER_OF_EFFECT_YEAR,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   NOTE = :NOTE'
      'WHERE'
      '   LL_ID = :OLD_LL_ID')
    GeneratorLinks.Strings = (
      'LL_ID = GEN_LABOR_LICENSE_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_LABOR_LICENSE('
      '   LL_ID, /*PK*/'
      '   EMPLOYEE_NO,'
      '   LABOR_LICENSE_ID,'
      '   FIELD,'
      '   START_DATE,'
      '   END_DATE,'
      '   NUMBER_OF_EFFECT_YEAR,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   NOTE)'
      'VALUES ('
      '   :LL_ID,'
      '   :EMPLOYEE_NO,'
      '   :LABOR_LICENSE_ID,'
      '   :FIELD,'
      '   :START_DATE,'
      '   :END_DATE,'
      '   :NUMBER_OF_EFFECT_YEAR,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :NOTE)')
    KeyLinks.Strings = (
      'HR_LABOR_LICENSE.LL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryLaborLicenseNewRecord
    DataSource = EmpInfoDM.dsEmpList
    SQL.Strings = (
      'SELECT '
      '       '
      '      LL_ID'
      '     , EMPLOYEE_NO'
      '     , LABOR_LICENSE_ID'
      '     , FIELD'
      '     , START_DATE'
      '     , END_DATE'
      '     , NUMBER_OF_EFFECT_YEAR'
      '     , FILE_NAME'
      '     , FILE_CONTENT'
      '     , NOTE'
      'FROM HR_LABOR_LICENSE'
      'where HR_LABOR_LICENSE.EMPLOYEE_NO = :EMPLOYEE_NO')
    FieldOptions = []
    Left = 24
    Top = 232
    object qryLaborLicenseLL_ID: TIntegerField
      FieldName = 'LL_ID'
      Required = True
    end
    object qryLaborLicenseEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryLaborLicenseLABOR_LICENSE_ID: TWideStringField
      FieldName = 'LABOR_LICENSE_ID'
      Required = True
      Size = 30
    end
    object qryLaborLicenseFIELD: TWideStringField
      FieldName = 'FIELD'
      Size = 63
    end
    object qryLaborLicenseSTART_DATE: TDateField
      FieldName = 'START_DATE'
      Required = True
      OnChange = qryLaborLicenseSTART_DATEChange
    end
    object qryLaborLicenseEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object qryLaborLicenseNUMBER_OF_EFFECT_YEAR: TIntegerField
      FieldName = 'NUMBER_OF_EFFECT_YEAR'
      OnChange = qryLaborLicenseNUMBER_OF_EFFECT_YEARChange
    end
    object qryLaborLicenseFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 63
    end
    object qryLaborLicenseFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryLaborLicenseNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsLaborLicense: TDataSource
    DataSet = qryLaborLicense
    Left = 24
    Top = 264
  end
end
