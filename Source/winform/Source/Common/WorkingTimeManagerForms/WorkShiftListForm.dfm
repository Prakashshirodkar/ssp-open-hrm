inherited frmWorkShiftList: TfrmWorkShiftList
  Left = 127
  Top = 100
  Width = 826
  Height = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 527
    Width = 818
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 818
    Height = 527
    LookAndFeel = dmMain.StyleWeb
    object ElLabel1: TElLabel [0]
      Left = 14
      Top = 28
      Width = 356
      Height = 13
      Caption = 
        '* B'#7841'n c'#243' th'#7875' '#273#7883'nh ngh'#297'a danh s'#225'ch c'#225'c ca l'#224'm vi'#7879'c hi'#7879'n c'#243' c'#7911'a m'#236 +
        'nh t'#7841'i '#273#226'y'
      Color = 15466238
      ParentColor = False
    end
    object ElLabel2: TElLabel [1]
      Left = 14
      Top = 41
      Width = 475
      Height = 13
      Caption = 
        '* V'#7899'i m'#7895'i ca l'#224'm vi'#7879'c, vui l'#242'ng '#273#7883'nh ngh'#297'a chi ti'#7871't c'#225'c th'#244'ng ti' +
        'n gi'#7901' v'#224'o ra v'#224' lo'#7841'i gi'#7901' c'#244'ng t'#432#417'ng '#7913'ng'
      Color = 15466238
      ParentColor = False
      WordWrap = True
    end
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 500
      Color = 15466238
      TabOrder = 3
    end
    object gridWorkShift: TdxDBGrid [3]
      Left = 2
      Top = 61
      Width = 271
      Height = 268
      Bands = <
        item
          Caption = 'Danh m'#7909'c ca l'#224'm vi'#7879'c'
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SHIFT_NO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsWorkShift
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridWorkShiftSHIFT_NO: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHIFT_NO'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object gridWorkShiftSHIFT_NAME: TdxDBGridColumn
        Caption = 'Ca l'#224'm vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHIFT_NAME'
        Caption_UTF7 = 'Ca l+AOA-m vi+Hsc-c'
      end
      object gridWorkShiftSHIFT_NOTE: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 54193
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SHIFT_NOTE'
      end
      object gridWorkShiftCOLOR: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 188
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLOR'
      end
      object gridWorkShiftCOLOR_SELECT: TdxDBGridButtonColumn
        Caption = 'M'#224'u'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = gridWorkShiftCOLOR_SELECTCustomDrawCell
        Buttons = <
          item
            Default = True
          end>
        OnButtonClick = gridWorkShiftCOLOR_SELECTButtonClick
        Caption_UTF7 = 'M+AOA-u'
      end
    end
    object dxDBGrid1: TdxDBGrid [4]
      Left = 10000
      Top = 10000
      Width = 527
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 2
      Visible = False
      Filter.Criteria = {00000000}
    end
    object gridDetail: TdxDBGrid [5]
      Left = 273
      Top = 61
      Width = 250
      Height = 129
      Bands = <
        item
          Caption = #272#259'ng k'#253' chi ti'#7871't th'#7901'i gian'
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'START_TIME'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 1
      DataSource = dsDetail
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object gridDetailSTART_TIME: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' b'#7855't '#273#7847'u'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'START_TIME'
        Caption_UTF7 = 'Gi+Ht0 b+Hq8-t +AREepw-u'
      end
      object gridDetailSTART_DATE: TdxDBGridImageColumn
        Alignment = taRightJustify
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'START_DATE'
        ImageIndexes.WideStrings = (
          'c'#249'ng ng'#224'y'
          'h'#244'm sau')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
      end
      object gridDetailEND_TIME: TdxDBGridTimeColumn
        Caption = 'Gi'#7901' k'#7871't th'#250'c'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'END_TIME'
        Caption_UTF7 = 'Gi+Ht0 k+Hr8-t th+APo-c'
      end
      object gridDetailEND_DATE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'L'#250'c'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'END_DATE'
        Descriptions.WideStrings = (
          'c'#249'ng ng'#224'y'
          'h'#244'm sau')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        Caption_UTF7 = 'L+APo-c'
      end
      object gridDetailWHT_NAME: TdxDBGridPopupColumn
        Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
        HeaderAlignment = taCenter
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WHT_NAME'
        OnCloseUp = gridDetailWHT_NAMECloseUp
        OnInitPopup = gridDetailWHT_NAMEInitPopup
        Caption_UTF7 = 'Lo+HqE-i gi+Ht0 c+APQ-ng'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        Caption = 'Thi'#7871't l'#7853'p quy '#273#7883'nh chu'#7849'n cho ca l'#224'm vi'#7879'c'
        object dxlcMainItem3: TdxLayoutItem
          ShowCaption = False
          Control = ElLabel1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem4: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          ShowCaption = False
          Control = ElLabel2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcMainGroup2: TdxLayoutGroup [1]
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
          Control = gridWorkShift
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem6: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'dxDBGrid2'
          ShowCaption = False
          Control = gridDetail
          ControlOptions.ShowBorder = False
        end
      end
    end
    object dxlcMainItem5: TdxLayoutItem
      Caption = 'dxDBGrid1'
      Control = dxDBGrid1
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
        Caption = #272#7883'nh ngh'#297'a ca l'#224'm vi'#7879'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 88
    Top = 88
  end
  object dsWorkShift: TDataSource
    DataSet = qryWorkShift
    Left = 72
    Top = 160
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 168
    Top = 104
  end
  object qryWorkShift: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1/3052:D:\PHUC\1 PROJECTS\2009\SSP-HRM 3.0\SSP-HRM\SSP_H' +
      'RM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORK_SHIFT'
      'WHERE'
      '   SHIFT_NO = :OLD_SHIFT_NO')
    EditSQL.Strings = (
      'UPDATE HR_WORK_SHIFT SET'
      '   SHIFT_NO = :SHIFT_NO, /*PK*/'
      '   SHIFT_NAME = :SHIFT_NAME,'
      '   SHIFT_NOTE = :SHIFT_NOTE,'
      '   COLOR = :COLOR'
      'WHERE'
      '   SHIFT_NO = :OLD_SHIFT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORK_SHIFT('
      '   SHIFT_NO, /*PK*/'
      '   SHIFT_NAME,'
      '   SHIFT_NOTE,'
      '   COLOR)'
      'VALUES ('
      '   :SHIFT_NO,'
      '   :SHIFT_NAME,'
      '   :SHIFT_NOTE,'
      '   :COLOR)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SHIFT_NO'
      '     , SHIFT_NAME'
      '     , SHIFT_NOTE'
      '     , COLOR'
      'FROM HR_WORK_SHIFT')
    FieldOptions = []
    Left = 64
    Top = 136
    object qryWorkShiftSHIFT_NO: TWideStringField
      FieldName = 'SHIFT_NO'
      Required = True
      Size = 30
    end
    object qryWorkShiftSHIFT_NAME: TWideStringField
      FieldName = 'SHIFT_NAME'
      Required = True
      Size = 126
    end
    object qryWorkShiftSHIFT_NOTE: TWideStringField
      FieldName = 'SHIFT_NOTE'
      Size = 3072
    end
    object qryWorkShiftCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object ColorDialog1: TColorDialog
    Left = 200
    Top = 88
  end
  object qryDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'SHIFT_NO'
        ParamType = ptInput
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\PHUC\1 PROJECTS\2009\SSP-HRM 3.0\SSP-HRM\SSP_H' +
      'RM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WORK_SHIFT_DETAIL'
      'WHERE'
      '   SHIFT_NO = :OLD_SHIFT_NO AND'
      '   START_TIME = :OLD_START_TIME')
    EditSQL.Strings = (
      'UPDATE HR_WORK_SHIFT_DETAIL SET'
      '   SHIFT_NO = :SHIFT_NO, /*PK*/'
      '   START_TIME = :START_TIME, /*PK*/'
      '   START_DATE = :START_DATE,'
      '   END_TIME = :END_TIME,'
      '   END_DATE = :END_DATE,'
      '   WHT_NO = :WHT_NO'
      'WHERE'
      '   SHIFT_NO = :OLD_SHIFT_NO AND'
      '   START_TIME = :OLD_START_TIME')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WORK_SHIFT_DETAIL('
      '   SHIFT_NO, /*PK*/'
      '   START_TIME, /*PK*/'
      '   START_DATE,'
      '   END_TIME,'
      '   END_DATE,'
      '   WHT_NO)'
      'VALUES ('
      '   :SHIFT_NO,'
      '   :START_TIME,'
      '   :START_DATE,'
      '   :END_TIME,'
      '   :END_DATE,'
      '   :WHT_NO)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDetailNewRecord
    DataSource = dsWorkShift
    SQL.Strings = (
      'SELECT SHIFT_NO'
      '     , START_TIME'
      '     , START_DATE'
      '     , END_TIME'
      '     , END_DATE'
      '     , HR_WORK_SHIFT_DETAIL.WHT_NO'
      '     , WHT_NAME'
      'FROM HR_WORK_SHIFT_DETAIL'
      'left join HR_WORK_HOUR_TYPE on '
      ' HR_WORK_SHIFT_DETAIL.WHT_NO=HR_WORK_HOUR_TYPE.WHT_NO'
      'where SHIFT_NO=:SHIFT_NO ')
    FieldOptions = []
    Left = 168
    Top = 136
    object qryDetailSHIFT_NO: TWideStringField
      FieldName = 'SHIFT_NO'
      Required = True
      Size = 30
    end
    object qryDetailSTART_TIME: TTimeField
      FieldName = 'START_TIME'
      Required = True
    end
    object qryDetailEND_TIME: TTimeField
      FieldName = 'END_TIME'
      Required = True
    end
    object qryDetailWHT_NO: TWideStringField
      FieldName = 'WHT_NO'
      Required = True
      Size = 30
    end
    object qryDetailWHT_NAME: TWideStringField
      FieldName = 'WHT_NAME'
      Required = True
      Size = 126
    end
    object qryDetailEND_DATE: TIntegerField
      FieldName = 'END_DATE'
      Required = True
    end
    object qryDetailSTART_DATE: TIntegerField
      FieldName = 'START_DATE'
    end
  end
end
