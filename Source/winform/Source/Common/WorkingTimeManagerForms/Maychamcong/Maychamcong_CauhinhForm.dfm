inherited frmMaychamcong_Cauhinh: TfrmMaychamcong_Cauhinh
  Left = 295
  Top = 273
  Width = 553
  Height = 389
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 336
    Width = 545
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 545
    Height = 336
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
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
        Caption = 'C'#7845'u h'#236'nh m'#225'y ch'#7845'm c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 440
    Top = 65512
  end
  object qryMaychamcong: TIBOQuery
    Params = <>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORK_TIME_STYLE'
      'WHERE'
      '   MACHINE_MODEL = :OLD_MACHINE_MODEL')
    EditSQL.Strings = (
      'UPDATE HR_WORK_TIME_STYLE SET'
      '   MACHINE_MODEL = :MACHINE_MODEL, /*PK*/'
      '   MACHINE_NAME = :MACHINE_NAME,'
      '   VALUE_ROW_AREA_BEGIN = :VALUE_ROW_AREA_BEGIN,'
      '   VALUE_ROW_AREA_END = :VALUE_ROW_AREA_END,'
      '   FILE_STYLE = :FILE_STYLE,'
      '   FILE_INFOR = :FILE_INFOR,'
      '   IS_DEFAULT = :IS_DEFAULT'
      'WHERE'
      '   MACHINE_MODEL = :OLD_MACHINE_MODEL')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORK_TIME_STYLE('
      '   MACHINE_MODEL, /*PK*/'
      '   MACHINE_NAME,'
      '   VALUE_ROW_AREA_BEGIN,'
      '   VALUE_ROW_AREA_END,'
      '   FILE_STYLE,'
      '   FILE_INFOR,'
      '   IS_DEFAULT)'
      'VALUES ('
      '   :MACHINE_MODEL,'
      '   :MACHINE_NAME,'
      '   :VALUE_ROW_AREA_BEGIN,'
      '   :VALUE_ROW_AREA_END,'
      '   :FILE_STYLE,'
      '   :FILE_INFOR,'
      '   :IS_DEFAULT)')
    KeyLinks.Strings = (
      'hr_work_time_style.machine_model')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      '      hr_work_time_style.machine_model,'
      '      hr_work_time_style.machine_name,'
      '      hr_work_time_style.value_row_area_begin,'
      '      hr_work_time_style.value_row_area_end,  '
      '      hr_work_time_style.file_style,'
      '      hr_work_time_style.file_infor,'
      '      is_default'
      'from'
      '      hr_work_time_style')
    FieldOptions = []
    Left = 128
    Top = 80
    object qryMaychamcongMACHINE_MODEL: TWideStringField
      FieldName = 'MACHINE_MODEL'
      Required = True
      Size = 30
    end
    object qryMaychamcongMACHINE_NAME: TWideStringField
      FieldName = 'MACHINE_NAME'
      Required = True
      Size = 126
    end
    object qryMaychamcongVALUE_ROW_AREA_BEGIN: TIntegerField
      FieldName = 'VALUE_ROW_AREA_BEGIN'
      Required = True
    end
    object qryMaychamcongVALUE_ROW_AREA_END: TIntegerField
      FieldName = 'VALUE_ROW_AREA_END'
      Required = True
    end
    object qryMaychamcongFILE_STYLE: TSmallintField
      FieldName = 'FILE_STYLE'
    end
    object qryMaychamcongFILE_INFOR: TWideStringField
      FieldName = 'FILE_INFOR'
      Size = 255
    end
  end
  object dsMaychamcong: TDataSource
    DataSet = qryMaychamcong
    Left = 128
    Top = 112
  end
end
