inherited frmCurrencyList: TfrmCurrencyList
  Left = 207
  Top = 186
  Width = 642
  Height = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 426
    Width = 634
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 634
    Height = 426
    inherited frameToolbar1: TframeToolbar
      Top = 391
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnCancel: TElPopupButton
          Left = 275
          Width = 80
          Height = 25
        end
        inherited btnClose: TElPopupButton
          Left = 962
        end
        inherited btnHelp: TElPopupButton
          Left = 832
        end
        inherited btnChoose: TElPopupButton
          Left = 902
        end
        inherited btnFirst: TElPopupButton
          Left = 360
        end
        inherited btnLast: TElPopupButton
          Left = 429
        end
        inherited btnPrevious: TElPopupButton
          Left = 383
        end
        inherited btnNext: TElPopupButton
          Left = 406
        end
        inherited btnDesign: TElPopupButton
          Left = 622
        end
        inherited btnPreview: TElPopupButton
          Left = 552
        end
        inherited btnPrint: TElPopupButton
          Left = 482
        end
        inherited btnSendMail: TElPopupButton
          Left = 457
        end
        inherited btnGenerate: TElPopupButton
          Left = 747
        end
        inherited btnRelation: TElPopupButton
          Left = 722
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 697
        end
      end
      inherited ElPopupMenu2: TElPopupMenu
        Left = 328
      end
    end
    object Panel1: TPanel [1]
      Left = 10
      Top = 10
      Width = 185
      Height = 41
      BevelOuter = bvNone
      TabOrder = 4
      object dxgridCurrency: TdxDBGrid
        Left = 0
        Top = 0
        Width = 185
        Height = 217
        Bands = <
          item
            Caption = 'Danh m'#7909'c c'#225'c lo'#7841'i ti'#7873'n t'#7879
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CURRENCY_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsCurrencyList
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object dxgridCurrencyCURRENCY_NO: TdxDBGridColumn
          Caption = 'M'#227' ti'#7873'n t'#7879' '
          HeaderAlignment = taCenter
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CURRENCY_NO'
          Caption_UTF7 = 'M+AOM ti+HsE-n t+Hsc '
        end
        object dxgridCurrencyCURRENCY_NAME: TdxDBGridColumn
          Caption = 'T'#234'n ti'#7873'n t'#7879' '
          HeaderAlignment = taCenter
          Width = 251
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CURRENCY_NAME'
          Caption_UTF7 = 'T+AOo-n ti+HsE-n t+Hsc '
        end
        object dxgridCurrencyCURRENCY_NOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 243
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CURRENCY_NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 0
        Top = 217
        Width = 185
        Height = 5
        Cursor = crVSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = dxgridCurrency
        ControlBottomRight = dxgridExchange
        AutoHide = False
        Align = alTop
        BevelOuter = bvNone
        UseXPThemes = False
      end
      object dxgridExchange: TdxDBGrid
        Left = 0
        Top = 222
        Width = 185
        Height = 153
        Bands = <
          item
            Caption = 'T'#7881' gi'#225' chuy'#7875'n '#273#7893'i ti'#7873'n t'#7879
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'FROM_CURRENCY_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'Tahoma'
        BandFont.Style = [fsBold]
        DataSource = dsCurrencyExchange
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        ShowBands = True
        object dxgridExchangeFROM_CURRENCY_NAME: TdxDBGridPopupColumn
          Caption = 'Chuy'#7875'n t'#7915' ti'#7873'n t'#7879' '
          HeaderAlignment = taCenter
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FROM_CURRENCY_NAME'
          OnCloseUp = dxgridExchangeFROM_CURRENCY_NAMECloseUp
          OnInitPopup = dxgridExchangeFROM_CURRENCY_NAMEInitPopup
          Caption_UTF7 = 'Chuy+HsM-n t+Hus ti+HsE-n t+Hsc '
        end
        object dxgridExchangeTO_CURRENCY_NAME: TdxDBGridPopupColumn
          Caption = 'Chuy'#7875'n sang ti'#7873'n t'#7879' '
          HeaderAlignment = taCenter
          Width = 168
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TO_CURRENCY_NAME'
          OnCloseUp = dxgridExchangeTO_CURRENCY_NAMECloseUp
          OnInitPopup = dxgridExchangeTO_CURRENCY_NAMEInitPopup
          Caption_UTF7 = 'Chuy+HsM-n sang ti+HsE-n t+Hsc '
        end
        object dxgridExchangeEXCHANGE_RATE: TdxDBGridCalcColumn
          Caption = 'T'#7881' gi'#225' chuy'#7875'n '#273#7893'i '
          HeaderAlignment = taCenter
          Width = 145
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EXCHANGE_RATE'
          Caption_UTF7 = 'T+Hsk gi+AOE chuy+HsM-n +AREe1Q-i '
        end
        object dxgridExchangeEXCHANGE_NOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EXCHANGE_NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = Panel1
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
        Caption = 'Danh m'#7909'c ti'#7873'n t'#7879
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 592
    Top = 8
  end
  object dsCurrencyList: TDataSource
    DataSet = qryCurrencyList
    Left = 80
    Top = 104
  end
  object dsCurrencyExchange: TDataSource
    DataSet = qryCurrencyExchange
    Left = 80
    Top = 144
  end
  object qryCurrencyList: TIBOQuery
    Params = <>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CURRENCY'
      'WHERE'
      '   CURRENCY_NO = :OLD_CURRENCY_NO')
    EditSQL.Strings = (
      'UPDATE HR_CURRENCY SET'
      '   CURRENCY_NO = :CURRENCY_NO, /*PK*/'
      '   CURRENCY_NAME = :CURRENCY_NAME,'
      '   CURRENCY_NOTE = :CURRENCY_NOTE'
      'WHERE'
      '   CURRENCY_NO = :OLD_CURRENCY_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CURRENCY('
      '   CURRENCY_NO, /*PK*/'
      '   CURRENCY_NAME,'
      '   CURRENCY_NOTE)'
      'VALUES ('
      '   :CURRENCY_NO,'
      '   :CURRENCY_NAME,'
      '   :CURRENCY_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CURRENCY_NO'
      '     , CURRENCY_NAME'
      '     , CURRENCY_NOTE'
      'FROM HR_CURRENCY')
    FieldOptions = []
    Left = 112
    Top = 104
    object qryCurrencyListCURRENCY_NO: TWideStringField
      FieldName = 'CURRENCY_NO'
      Required = True
      Size = 30
    end
    object qryCurrencyListCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Required = True
      Size = 63
    end
    object qryCurrencyListCURRENCY_NOTE: TWideStringField
      FieldName = 'CURRENCY_NOTE'
      Size = 3072
    end
  end
  object qryCurrencyExchange: TIBOQuery
    Params = <>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CURRENCY_EXCHANGE'
      'WHERE'
      '   FROM_CURRENCY_NO = :OLD_FROM_CURRENCY_NO AND'
      '   TO_CURRENCY_NO = :OLD_TO_CURRENCY_NO')
    EditSQL.Strings = (
      'UPDATE HR_CURRENCY_EXCHANGE SET'
      '   FROM_CURRENCY_NO = :FROM_CURRENCY_NO, /*PK*/'
      '   TO_CURRENCY_NO = :TO_CURRENCY_NO, /*PK*/'
      '   EXCHANGE_RATE = :EXCHANGE_RATE,'
      '   IS_HIDE = :IS_HIDE,'
      '   EXCHANGE_NOTE = :EXCHANGE_NOTE'
      'WHERE'
      '   FROM_CURRENCY_NO = :OLD_FROM_CURRENCY_NO AND'
      '   TO_CURRENCY_NO = :OLD_TO_CURRENCY_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CURRENCY_EXCHANGE('
      '   FROM_CURRENCY_NO, /*PK*/'
      '   TO_CURRENCY_NO, /*PK*/'
      '   EXCHANGE_RATE,'
      '   IS_HIDE,'
      '   EXCHANGE_NOTE)'
      'VALUES ('
      '   :FROM_CURRENCY_NO,'
      '   :TO_CURRENCY_NO,'
      '   :EXCHANGE_RATE,'
      '   :IS_HIDE,'
      '   :EXCHANGE_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryCurrencyExchangeNewRecord
    SQL.Strings = (
      'SELECT FROM_CURRENCY_NO '
      '     , A.CURRENCY_NAME FROM_CURRENCY_NAME'
      '     , TO_CURRENCY_NO'
      '     , B.CURRENCY_NAME TO_CURRENCY_NAME'
      '     , EXCHANGE_RATE'
      '     , IS_HIDE'
      '     , EXCHANGE_NOTE'
      'FROM HR_CURRENCY_EXCHANGE'
      'JOIN HR_CURRENCY A on FROM_CURRENCY_NO=A.CURRENCY_NO'
      'JOIN HR_CURRENCY B on TO_CURRENCY_NO=B.CURRENCY_NO'
      'where is_Hide=0 ')
    FieldOptions = []
    Left = 112
    Top = 144
    object qryCurrencyExchangeFROM_CURRENCY_NO: TWideStringField
      FieldName = 'FROM_CURRENCY_NO'
      Required = True
      Size = 30
    end
    object qryCurrencyExchangeFROM_CURRENCY_NAME: TWideStringField
      FieldName = 'FROM_CURRENCY_NAME'
      Required = True
      Size = 63
    end
    object qryCurrencyExchangeTO_CURRENCY_NO: TWideStringField
      FieldName = 'TO_CURRENCY_NO'
      Required = True
      Size = 30
    end
    object qryCurrencyExchangeTO_CURRENCY_NAME: TWideStringField
      FieldName = 'TO_CURRENCY_NAME'
      Required = True
      Size = 63
    end
    object qryCurrencyExchangeEXCHANGE_RATE: TIBOFloatField
      FieldName = 'EXCHANGE_RATE'
      Required = True
    end
    object qryCurrencyExchangeIS_HIDE: TIntegerField
      FieldName = 'IS_HIDE'
      Required = True
    end
    object qryCurrencyExchangeEXCHANGE_NOTE: TWideStringField
      FieldName = 'EXCHANGE_NOTE'
      Size = 3072
    end
  end
end
