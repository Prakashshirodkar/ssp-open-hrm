inherited frmEduFieldList: TfrmEduFieldList
  Left = 200
  Top = 201
  Width = 631
  Height = 445
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 392
    Width = 623
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 623
    Height = 392
    inherited frameToolbar1: TframeToolbar
      Top = 357
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
    end
    object Panel1: TPanel [1]
      Left = 10
      Top = 10
      Width = 185
      Height = 41
      BevelOuter = bvNone
      TabOrder = 4
      object dxgridEduField: TdxDBGrid
        Left = 0
        Top = 0
        Width = 185
        Height = 185
        Bands = <
          item
            Caption = 'Danh m'#7909'c l'#297'nh v'#7921'c - chuy'#234'n m'#244'n'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'EDU_FIELD_NO'
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
        DataSource = dsEduField
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
        object dxgridEduFieldEDU_FIELD_NO: TdxDBGridColumn
          Caption = 'M'#227' s'#7889' l'#297'nh v'#7921'c '
          HeaderAlignment = taCenter
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EDU_FIELD_NO'
          Caption_UTF7 = 'M+AOM s+HtE l+ASk-nh v+HvE-c '
        end
        object dxgridEduFieldEDU_FIELD_NAME: TdxDBGridColumn
          Caption = 'T'#234'n l'#297'nh v'#7921'c '
          HeaderAlignment = taCenter
          Width = 253
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EDU_FIELD_NAME'
          Caption_UTF7 = 'T+AOo-n l+ASk-nh v+HvE-c '
        end
        object dxgridEduFieldEDU_FIELD_NOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 231
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EDU_FIELD_NOTE'
          Caption_UTF7 = 'Ghi ch+APo'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 0
        Top = 185
        Width = 185
        Height = 5
        Cursor = crVSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = dxgridEduField
        ControlBottomRight = dxgridFieldLevel
        AutoHide = False
        Align = alTop
      end
      object dxgridFieldLevel: TdxDBGrid
        Left = 0
        Top = 190
        Width = 185
        Height = 151
        Bands = <
          item
            Caption = 'Tr'#236'nh '#273#7897' - c'#7845'p '#273#7897' t'#432#417'ng '#7913'ng v'#7899'i t'#7915'ng l'#297'nh v'#7921'c - chuy'#234'n m'#244'n'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'FIELD_LEVEL_NO'
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
        DataSource = dsFieldLevel
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
        object dxgridFieldLevelFIELD_LEVEL_NO: TdxDBGridColumn
          Caption = 'M'#227' tr'#236'nh '#273#7897' '
          HeaderAlignment = taCenter
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIELD_LEVEL_NO'
          Caption_UTF7 = 'M+AOM tr+AOw-nh +AREe2Q '
        end
        object dxgridFieldLevelFIELD_LEVEL_NAME: TdxDBGridColumn
          Caption = 'T'#234'n tr'#236'nh '#273#7897' - b'#7857'ng c'#7845'p '
          HeaderAlignment = taCenter
          Width = 246
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIELD_LEVEL_NAME'
          Caption_UTF7 = 'T+AOo-n tr+AOw-nh +AREe2Q - b+HrE-ng c+HqU-p '
        end
        object dxgridFieldLevelFIELD_LEVEL_GRADE: TdxDBGridSpinColumn
          Alignment = taCenter
          Caption = 'C'#7845'p '#273#7897' '
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIELD_LEVEL_GRADE'
          Caption_UTF7 = 'C+HqU-p +AREe2Q '
        end
        object dxgridFieldLevelFIELD_LEVEL_NOTE: TdxDBGridColumn
          Caption = 'Ghi ch'#250
          HeaderAlignment = taCenter
          Width = 189
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FIELD_LEVEL_NOTE'
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
        Caption = 'Danh m'#7909'c l'#297'nh v'#7921'c chuy'#234'n m'#244'n '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 592
    Top = 8
  end
  object dsEduField: TDataSource
    DataSet = qryEduField
    Left = 80
    Top = 104
  end
  object dsFieldLevel: TDataSource
    DataSet = qryFieldLevel
    Left = 80
    Top = 144
  end
  object qryEduField: TIBOQuery
    Params = <>
    DatabaseName = 'H:\Projects\SSP-HRM SHIRASAKI\Database\SSP_HRM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_EDU_FIELD'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO')
    EditSQL.Strings = (
      'UPDATE HR_EDU_FIELD SET'
      '   EDU_FIELD_NO = :EDU_FIELD_NO, /*PK*/'
      '   EDU_FIELD_NAME = :EDU_FIELD_NAME,'
      '   EDU_FIELD_NOTE = :EDU_FIELD_NOTE'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_EDU_FIELD('
      '   EDU_FIELD_NO, /*PK*/'
      '   EDU_FIELD_NAME,'
      '   EDU_FIELD_NOTE)'
      'VALUES ('
      '   :EDU_FIELD_NO,'
      '   :EDU_FIELD_NAME,'
      '   :EDU_FIELD_NOTE)')
    KeyLinks.Strings = (
      'EDU_FIELD_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT EDU_FIELD_NO'
      '     , EDU_FIELD_NAME'
      '     , EDU_FIELD_NOTE'
      'FROM HR_EDU_FIELD'
      '')
    FieldOptions = []
    Left = 112
    Top = 104
    object qryEduFieldEDU_FIELD_NO: TWideStringField
      FieldName = 'EDU_FIELD_NO'
      Required = True
      Size = 30
    end
    object qryEduFieldEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      Required = True
      Size = 30
    end
    object qryEduFieldEDU_FIELD_NOTE: TWideStringField
      FieldName = 'EDU_FIELD_NOTE'
      Size = 3072
    end
  end
  object qryFieldLevel: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EDU_FIELD_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'H:\Projects\SSP-HRM SHIRASAKI\Database\SSP_HRM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_FIELD_LEVEL'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO AND'
      '   FIELD_LEVEL_NO = :OLD_FIELD_LEVEL_NO')
    EditSQL.Strings = (
      'UPDATE HR_FIELD_LEVEL SET'
      '   EDU_FIELD_NO = :EDU_FIELD_NO, /*PK*/'
      '   FIELD_LEVEL_NO = :FIELD_LEVEL_NO, /*PK*/'
      '   FIELD_LEVEL_NAME = :FIELD_LEVEL_NAME,'
      '   FIELD_LEVEL_GRADE = :FIELD_LEVEL_GRADE,'
      '   FIELD_LEVEL_NOTE = :FIELD_LEVEL_NOTE'
      'WHERE'
      '   EDU_FIELD_NO = :OLD_EDU_FIELD_NO AND'
      '   FIELD_LEVEL_NO = :OLD_FIELD_LEVEL_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_FIELD_LEVEL('
      '   EDU_FIELD_NO, /*PK*/'
      '   FIELD_LEVEL_NO, /*PK*/'
      '   FIELD_LEVEL_NAME,'
      '   FIELD_LEVEL_GRADE,'
      '   FIELD_LEVEL_NOTE)'
      'VALUES ('
      '   :EDU_FIELD_NO,'
      '   :FIELD_LEVEL_NO,'
      '   :FIELD_LEVEL_NAME,'
      '   :FIELD_LEVEL_GRADE,'
      '   :FIELD_LEVEL_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryFieldLevelNewRecord
    DataSource = dsEduField
    SQL.Strings = (
      'SELECT EDU_FIELD_NO'
      '     , FIELD_LEVEL_NO'
      '     , FIELD_LEVEL_NAME'
      '     , FIELD_LEVEL_GRADE'
      '     , FIELD_LEVEL_NOTE'
      'FROM HR_FIELD_LEVEL'
      'where EDU_FIELD_NO=:EDU_FIELD_NO')
    FieldOptions = []
    Left = 112
    Top = 144
    object qryFieldLevelEDU_FIELD_NO: TWideStringField
      FieldName = 'EDU_FIELD_NO'
      Required = True
      Size = 30
    end
    object qryFieldLevelFIELD_LEVEL_NO: TWideStringField
      FieldName = 'FIELD_LEVEL_NO'
      Required = True
      Size = 30
    end
    object qryFieldLevelFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      Required = True
      Size = 126
    end
    object qryFieldLevelFIELD_LEVEL_GRADE: TIntegerField
      FieldName = 'FIELD_LEVEL_GRADE'
      Required = True
    end
    object qryFieldLevelFIELD_LEVEL_NOTE: TWideStringField
      FieldName = 'FIELD_LEVEL_NOTE'
      Size = 3072
    end
  end
end
