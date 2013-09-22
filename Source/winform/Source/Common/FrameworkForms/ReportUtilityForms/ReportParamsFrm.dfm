object frmReportParams: TfrmReportParams
  Tag = -1
  Left = 383
  Top = 227
  Width = 553
  Height = 67
  HorzScrollBar.Smooth = True
  HorzScrollBar.Style = ssFlat
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 545
    Height = 33
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object dxLayoutGroup1: TdxLayoutGroup
      AutoAligns = []
      AlignHorz = ahClient
      AlignVert = avClient
      ShowCaption = False
      Hidden = True
      ShowBorder = False
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Tham s'#7889' b'#225'o c'#225'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 226
    Top = 5
  end
  object memComponents: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 240
    object memComponentsPARAM_NAME: TStringField
      FieldName = 'PARAM_NAME'
      Size = 31
    end
    object memComponentsCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 255
    end
    object memComponentsDATA_TYPE: TSmallintField
      FieldName = 'DATA_TYPE'
    end
    object memComponentsCOMP_LOOKUP: TStringField
      FieldName = 'COMP_LOOKUP'
      Size = 255
    end
    object memComponentsCOMP_CAPTION: TWideStringField
      FieldName = 'COMP_CAPTION'
      Size = 255
    end
    object memComponentsLAYOUT_NAME: TStringField
      FieldName = 'LAYOUT_NAME'
      Size = 255
    end
    object memComponentsACTIVED: TBooleanField
      FieldName = 'ACTIVED'
    end
    object memComponentsLOOKUP_ID: TIntegerField
      FieldName = 'LOOKUP_ID'
    end
    object memComponentsDISPLAY_FIELD: TStringField
      FieldName = 'DISPLAY_FIELD'
      Size = 31
    end
    object memComponentsLOOKUP_FIELD: TStringField
      FieldName = 'LOOKUP_FIELD'
      Size = 31
    end
    object memComponentsLAYOUT_GROUP_NAME: TWideStringField
      FieldName = 'LAYOUT_GROUP_NAME'
      Size = 30
    end
    object memComponentsREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object memComponentsWIDTH: TIntegerField
      FieldName = 'WIDTH'
    end
    object memComponentsPARAM_INDEX: TIntegerField
      FieldName = 'PARAM_INDEX'
    end
    object memComponentsDEF_VALUE: TWideStringField
      FieldName = 'DEF_VALUE'
      Size = 127
    end
    object memComponentsKEYFIELD: TStringField
      FieldName = 'KEYFIELD'
      Size = 30
    end
    object memComponentsP_KEYFIELD: TStringField
      FieldName = 'P_KEYFIELD'
      Size = 30
    end
    object memComponentsSQLSELECT: TStringField
      FieldName = 'SQLSELECT'
      Size = 1024
    end
  end
  object qryReportCaption: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORTID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT REPORTID'
      '     , SUBSYSTEMID'
      '     , COLUMN_ID'
      '     , COLUMN_CAPTION'
      '     , COLUMN_CAPTION_ENG'
      '     , COLUMN_WIDTH'
      '     , COLUMN_GROUP'
      '     , COLUMN_ALIGN'
      '     , COLUMN_FORMAT'
      '     , COLUMN_FILTER'
      '     , COLUMN_INDEX'
      '     , COLUMN_FOOTER'
      '     , INVISIBLE'
      '     , LOOKUP_ID'
      '     , COLUMN_CLASS'
      '     , DISPLAYFIELD'
      '     , REQUIRED'
      '     , GENERATOR_ID'
      '     , RES_ID'
      'FROM SYS_REPORT_CAPTION'
      'WHERE REPORTID = :REPORTID '
      '    and SUBSYSTEMID=:SUBSYSTEMID'
      'ORDER BY COLUMN_INDEX')
    FieldOptions = []
    Left = 140
    Top = 65534
    object qryReportCaptionREPORTID: TIntegerField
      FieldName = 'REPORTID'
      Required = True
    end
    object qryReportCaptionSUBSYSTEMID: TIntegerField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryReportCaptionCOLUMN_ID: TWideStringField
      FieldName = 'COLUMN_ID'
      Required = True
      Size = 30
    end
    object qryReportCaptionCOLUMN_CAPTION: TWideStringField
      FieldName = 'COLUMN_CAPTION'
      Size = 63
    end
    object qryReportCaptionCOLUMN_WIDTH: TIntegerField
      FieldName = 'COLUMN_WIDTH'
    end
    object qryReportCaptionCOLUMN_GROUP: TIntegerField
      FieldName = 'COLUMN_GROUP'
    end
    object qryReportCaptionCOLUMN_ALIGN: TIntegerField
      FieldName = 'COLUMN_ALIGN'
    end
    object qryReportCaptionCOLUMN_FORMAT: TWideStringField
      FieldName = 'COLUMN_FORMAT'
      Size = 30
    end
    object qryReportCaptionCOLUMN_FILTER: TIntegerField
      FieldName = 'COLUMN_FILTER'
    end
    object qryReportCaptionCOLUMN_INDEX: TIntegerField
      FieldName = 'COLUMN_INDEX'
    end
    object qryReportCaptionCOLUMN_FOOTER: TIntegerField
      FieldName = 'COLUMN_FOOTER'
    end
    object qryReportCaptionINVISIBLE: TIntegerField
      FieldName = 'INVISIBLE'
    end
    object qryReportCaptionLOOKUP_ID: TIntegerField
      FieldName = 'LOOKUP_ID'
    end
    object qryReportCaptionCOLUMN_CLASS: TIntegerField
      FieldName = 'COLUMN_CLASS'
    end
    object qryReportCaptionDISPLAYFIELD: TWideStringField
      FieldName = 'DISPLAYFIELD'
      Size = 30
    end
    object qryReportCaptionREQUIRED: TSmallintField
      FieldName = 'REQUIRED'
    end
    object qryReportCaptionGENERATOR_ID: TWideStringField
      FieldName = 'GENERATOR_ID'
      Size = 30
    end
    object qryReportCaptionRES_ID: TIntegerField
      FieldName = 'RES_ID'
    end
  end
  object dsReportCaption: TDataSource
    DataSet = qryReportCaption
    Left = 172
    Top = 65534
  end
end
