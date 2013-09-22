inherited frmTrainingConfig: TfrmTrainingConfig
  Left = 225
  Width = 561
  Height = 393
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 340
    Width = 553
  end
  object mainPage: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 553
    Height = 340
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = False
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsAngledTabs
    TabIndex = 1
    TabPosition = etpRight
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabPersonFee
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    ParentColor = False
    TabOrder = 1
    object tabClassFee: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'Kho'#7843'n chi ph'#237' l'#7899'p '#273#224'o t'#7841'o'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 530
        Height = 340
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        inline frameClassFee: TframeToolbar
          Left = 2
          Top = 292
          Width = 792
          Height = 46
          Color = 15466238
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          inherited dxLayoutControl1: TdxLayoutControl
            Width = 792
          end
        end
        object gridClassFee: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'FEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsClassFee
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object dxDBGridColumn1: TdxDBGridColumn
            Caption = 'K'#253' hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEE_NO'
            Caption_UTF7 = 'K+AP0 hi+Hsc-u'
          end
          object dxDBGridColumn2: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c chi ph'#237
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEE_NAME'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c chi ph+AO0'
          end
          object gridClassFeeDEFAUL_VALUE: TdxDBGridCalcColumn
            Caption = 'M'#7913'c ph'#237' m'#7863'c '#273#7883'nh'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEFAUL_VALUE'
            Caption_UTF7 = 'M+Huk-c ph+AO0 m+Hrc-c +AREeyw-nh'
          end
          object gridClassFeeCURRENCY_NAME: TdxDBGridPopupColumn
            Caption = #272#417'n v'#7883
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CURRENCY_NAME'
            OnCloseUp = gridClassFeeCURRENCY_NAMECloseUp
            OnInitPopup = gridClassFeeCURRENCY_NAMEInitPopup
            Caption_UTF7 = '+ARABoQ-n v+Hss'
          end
          object dxDBGridColumn3: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEE_NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridClassFee
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = frameClassFee
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object tabPersonFee: TElTabSheet
      PageControl = mainPage
      ImageIndex = -1
      TabVisible = True
      Caption = 'Kho'#7843'n chi ph'#237' h'#7885'c vi'#234'n'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 530
        Height = 340
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        inline framePersonFee: TframeToolbar
          Left = 2
          Top = 292
          Width = 792
          Height = 46
          Color = 15466238
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          inherited dxLayoutControl1: TdxLayoutControl
            Width = 792
          end
        end
        object gridPersonFee: TdxDBGrid
          Left = 2
          Top = 2
          Width = 250
          Height = 129
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'FEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          TabOrder = 0
          DataSource = dsPersonFee
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object gridPersonFeeFEE_NO: TdxDBGridColumn
            Caption = 'K'#253' hi'#7879'u'
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEE_NO'
            Caption_UTF7 = 'K+AP0 hi+Hsc-u'
          end
          object gridPersonFeeFEE_NAME: TdxDBGridColumn
            Caption = 'T'#234'n kho'#7843'n m'#7909'c chi ph'#237
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEE_NAME'
            Caption_UTF7 = 'T+AOo-n kho+HqM-n m+HuU-c chi ph+AO0'
          end
          object gridPersonFeeDEFAUL_VALUE: TdxDBGridCalcColumn
            Caption = 'M'#7913'c ph'#237' m'#7863'c '#273#7883'nh'
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEFAUL_VALUE'
            Caption_UTF7 = 'M+Huk-c ph+AO0 m+Hrc-c +AREeyw-nh'
          end
          object gridPersonFeeCURRENCY_NAME: TdxDBGridPopupColumn
            Caption = #272#417'n v'#7883
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CURRENCY_NAME'
            OnCloseUp = gridPersonFeeCURRENCY_NAMECloseUp
            OnInitPopup = gridPersonFeeCURRENCY_NAMEInitPopup
            Caption_UTF7 = '+ARABoQ-n v+Hss'
          end
          object gridPersonFeeFEE_NOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEE_NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = gridPersonFee
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avBottom
            Control = framePersonFee
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
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
        Caption = 'C'#7845'u h'#236'nh qu'#7843'n l'#253' '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 440
    Top = 32
  end
  object dsClassFee: TDataSource
    DataSet = qryClassFee
    Left = 72
    Top = 152
  end
  object qryClassFee: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_FEE'
      'WHERE'
      '   FEE_NO = :OLD_FEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_FEE SET'
      '   FEE_NO = :FEE_NO, /*PK*/'
      '   FEE_NAME = :FEE_NAME,'
      '   FEE_TYPE = :FEE_TYPE,'
      '   FEE_NOTE = :FEE_NOTE,'
      '   DEFAUL_VALUE = :DEFAUL_VALUE,'
      '   DEFAUL_UNIT = :DEFAUL_UNIT'
      'WHERE'
      '   FEE_NO = :OLD_FEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_FEE('
      '   FEE_NO, /*PK*/'
      '   FEE_NAME,'
      '   FEE_TYPE,'
      '   FEE_NOTE,'
      '   DEFAUL_VALUE,'
      '   DEFAUL_UNIT)'
      'VALUES ('
      '   :FEE_NO,'
      '   :FEE_NAME,'
      '   :FEE_TYPE,'
      '   :FEE_NOTE,'
      '   :DEFAUL_VALUE,'
      '   :DEFAUL_UNIT)')
    KeyLinks.Strings = (
      'HR_TRAINING_FEE.FEE_NO')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryClassFeeNewRecord
    SQL.Strings = (
      'SELECT FEE_NO'
      '     , FEE_NAME'
      '     , FEE_TYPE'
      '     , FEE_NOTE'
      '     , DEFAUL_VALUE'
      '     , DEFAUL_UNIT'
      '     , CURRENCY_NAME'
      'FROM HR_TRAINING_FEE'
      'LEFT JOIN HR_CURRENCY on DEFAUL_UNIT=CURRENCY_NO'
      'where FEE_TYPE='#39'CLASS'#39)
    FieldOptions = []
    Left = 72
    Top = 120
    object qryClassFeeFEE_NO: TWideStringField
      FieldName = 'FEE_NO'
      Required = True
      Size = 30
    end
    object qryClassFeeFEE_NAME: TWideStringField
      FieldName = 'FEE_NAME'
      Required = True
      Size = 126
    end
    object qryClassFeeFEE_TYPE: TWideStringField
      FieldName = 'FEE_TYPE'
      Required = True
      Size = 30
    end
    object qryClassFeeFEE_NOTE: TWideStringField
      FieldName = 'FEE_NOTE'
      Size = 3072
    end
    object qryClassFeeDEFAUL_VALUE: TIBOFloatField
      FieldName = 'DEFAUL_VALUE'
    end
    object qryClassFeeDEFAUL_UNIT: TWideStringField
      FieldName = 'DEFAUL_UNIT'
      Size = 30
    end
    object qryClassFeeCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
  end
  object qryPersonFee: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINING_FEE'
      'WHERE'
      '   FEE_NO = :OLD_FEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINING_FEE SET'
      '   FEE_NO = :FEE_NO, /*PK*/'
      '   FEE_NAME = :FEE_NAME,'
      '   FEE_TYPE = :FEE_TYPE,'
      '   FEE_NOTE = :FEE_NOTE,'
      '   DEFAUL_VALUE = :DEFAUL_VALUE,'
      '   DEFAUL_UNIT = :DEFAUL_UNIT'
      'WHERE'
      '   FEE_NO = :OLD_FEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINING_FEE('
      '   FEE_NO, /*PK*/'
      '   FEE_NAME,'
      '   FEE_TYPE,'
      '   FEE_NOTE,'
      '   DEFAUL_VALUE,'
      '   DEFAUL_UNIT)'
      'VALUES ('
      '   :FEE_NO,'
      '   :FEE_NAME,'
      '   :FEE_TYPE,'
      '   :FEE_NOTE,'
      '   :DEFAUL_VALUE,'
      '   :DEFAUL_UNIT)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryPersonFeeNewRecord
    SQL.Strings = (
      'SELECT FEE_NO'
      '     , FEE_NAME'
      '     , FEE_TYPE'
      '     , FEE_NOTE'
      '     , DEFAUL_VALUE'
      '     , DEFAUL_UNIT'
      '     , CURRENCY_NAME'
      'FROM HR_TRAINING_FEE'
      'LEFT JOIN HR_CURRENCY on DEFAUL_UNIT=CURRENCY_NO'
      'where FEE_TYPE='#39'PERSON'#39)
    FieldOptions = []
    Left = 112
    Top = 120
    object qryPersonFeeFEE_NO: TWideStringField
      FieldName = 'FEE_NO'
      Required = True
      Size = 30
    end
    object qryPersonFeeFEE_NAME: TWideStringField
      FieldName = 'FEE_NAME'
      Required = True
      Size = 126
    end
    object qryPersonFeeFEE_TYPE: TWideStringField
      FieldName = 'FEE_TYPE'
      Required = True
      Size = 30
    end
    object qryPersonFeeFEE_NOTE: TWideStringField
      FieldName = 'FEE_NOTE'
      Size = 3072
    end
    object qryPersonFeeDEFAUL_VALUE: TIBOFloatField
      FieldName = 'DEFAUL_VALUE'
    end
    object qryPersonFeeDEFAUL_UNIT: TWideStringField
      FieldName = 'DEFAUL_UNIT'
      Size = 30
    end
    object qryPersonFeeCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
  end
  object dsPersonFee: TDataSource
    DataSet = qryPersonFee
    Left = 112
    Top = 152
  end
end
