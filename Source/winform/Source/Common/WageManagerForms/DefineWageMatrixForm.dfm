inherited frmDefineWageMatrix: TfrmDefineWageMatrix
  Left = 219
  Top = 231
  Width = 786
  Height = 501
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 448
    Width = 778
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 778
    Height = 448
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object gridMatrix: TdxDBGrid
      Left = 14
      Top = 28
      Width = 750
      Height = 379
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'RecID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsMatrix
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnSizing]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OnChangeColumn = gridMatrixChangeColumn
      object gridMatrixWAGE_GRADE: TdxDBGridColumn
        Caption = 'Ng'#7841'ch l'#432#417'ng/ V'#7883' tr'#237' c'#244'ng t'#225'c'
        Color = 16767152
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WAGE_GRADE'
        Caption_UTF7 = 'Ng+HqE-ch l+AbABoQ-ng/ V+Hss tr+AO0 c+APQ-ng t+AOE-c'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 564
      Top = 414
      Width = 100
      Height = 25
      Cursor = crDefault
      Hint = 'Di chuy'#7875'n d'#242'ng d'#7919' li'#7879'u l'#234'n ph'#237'a tr'#234'n'
      ImageIndex = 48
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Chuy'#7875'n l'#234'n'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acMoveUp
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 664
      Top = 414
      Width = 100
      Height = 25
      Cursor = crDefault
      Hint = 'Di chuy'#7875'n d'#242'ng d'#7919' li'#7879'u hi'#7879'n t'#7841'i xu'#7889'ng d'#432#7899'i'
      ImageIndex = 50
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Chuy'#7875'n xu'#7889'ng'
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acMoveDown
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 14
      Top = 414
      Width = 90
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm m'#7899'i m'#7897't c'#7897't d'#7919' li'#7879'u'
      ImageIndex = 46
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm b'#7853'c'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acAddColumn
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 194
      Top = 414
      Width = 90
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#234'm m'#7899'i m'#7897't d'#242'ng d'#7919' li'#7879'u'
      ImageIndex = 3
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#234'm ng'#7841'ch'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acInsertRow
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 284
      Top = 414
      Width = 90
      Height = 25
      Cursor = crDefault
      Hint = 'X'#243'a d'#242'ng d'#7919' li'#7879'u hi'#7879'n t'#7841'i'
      ImageIndex = 15
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X'#243'a ng'#7841'ch'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Action = acRemoveRow
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton6: TElPopupButton
      Left = 104
      Top = 414
      Width = 90
      Height = 25
      Cursor = crDefault
      ImageIndex = 4
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X'#243'a b'#7853'c'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acRemoveColumn
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'B'#7842'NG QUY '#272#7882'NH H'#7878' S'#7888' B'#7852'C L'#431#416'NG DOANH NGHI'#7878'P'
        CaptionOptions.AlignHorz = taCenter
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBGrid1'
          ShowCaption = False
          Control = gridMatrix
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avBottom
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'ElPopupButton6'
            ShowCaption = False
            Control = ElPopupButton6
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'ElPopupButton4'
            ShowCaption = False
            Control = ElPopupButton4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'ElPopupButton5'
            ShowCaption = False
            Control = ElPopupButton5
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
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
        Caption = #272#7883'nh ngh'#297'a b'#7843'ng h'#7879' s'#7889' b'#7853'c l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 176
    Top = 96
  end
  object dsMatrix: TDataSource
    DataSet = memMatrix
    Left = 16
    Top = 128
  end
  object memMatrix: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeDelete = memMatrixBeforeDelete
    Left = 16
    Top = 96
    object memMatrixWAGE_GRADE: TWideStringField
      FieldName = 'WAGE_GRADE'
      Size = 127
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 144
    Top = 96
    object acAddColumn: TAction
      ImageIndex = 46
      OnExecute = acAddColumnExecute
    end
    object acRemoveRow: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acRemoveRow'
      ImageIndex = 15
      DataSource = dsMatrix
    end
    object acInsertRow: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acInsertRow'
      ImageIndex = 3
      OnExecute = acInsertRowExecute
      DataSource = dsMatrix
    end
    object acMoveUp: TAction
      ImageIndex = 48
    end
    object acMoveDown: TAction
      ImageIndex = 50
    end
    object acRemoveColumn: TAction
      Caption = 'acRemoveColumn'
      ImageIndex = 4
      OnExecute = acRemoveColumnExecute
      OnUpdate = acRemoveColumnUpdate
    end
    object acLoadMatrix: TAction
      Caption = 'acLoadMatrix'
      OnExecute = acLoadMatrixExecute
    end
  end
  object ImageList1: TImageList
    Left = 144
    Top = 128
  end
  object qryGrade: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_GRADE'
      'WHERE'
      '   GRADE_NO = :OLD_GRADE_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_GRADE SET'
      '   GRADE_NO = :GRADE_NO, /*PK*/'
      '   GRADE_NAME = :GRADE_NAME,'
      '   GRADE_NOTE = :GRADE_NOTE'
      'WHERE'
      '   GRADE_NO = :OLD_GRADE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_GRADE('
      '   GRADE_NO, /*PK*/'
      '   GRADE_NAME,'
      '   GRADE_NOTE)'
      'VALUES ('
      '   :GRADE_NO,'
      '   :GRADE_NAME,'
      '   :GRADE_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT GRADE_NO'
      '     , GRADE_NAME'
      '     , GRADE_NOTE'
      'FROM HR_WAGE_GRADE')
    FieldOptions = []
    Left = 104
    Top = 112
    object qryGradeGRADE_NO: TIntegerField
      FieldName = 'GRADE_NO'
      Required = True
    end
    object qryGradeGRADE_NAME: TWideStringField
      FieldName = 'GRADE_NAME'
      Required = True
      Size = 63
    end
    object qryGradeGRADE_NOTE: TWideStringField
      FieldName = 'GRADE_NOTE'
      Size = 3072
    end
  end
  object qryMatrix: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_MATRIX'
      'WHERE'
      '   GRADE_NO = :OLD_GRADE_NO AND'
      '   SCALE_NO = :OLD_SCALE_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_MATRIX SET'
      '   GRADE_NO = :GRADE_NO, /*PK*/'
      '   SCALE_NO = :SCALE_NO, /*PK*/'
      '   GRADE_VALUE = :GRADE_VALUE'
      'WHERE'
      '   GRADE_NO = :OLD_GRADE_NO AND'
      '   SCALE_NO = :OLD_SCALE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_MATRIX('
      '   GRADE_NO, /*PK*/'
      '   SCALE_NO, /*PK*/'
      '   GRADE_VALUE)'
      'VALUES ('
      '   :GRADE_NO,'
      '   :SCALE_NO,'
      '   :GRADE_VALUE)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT SCALE_NO'
      '     , GRADE_NO'
      '     , GRADE_VALUE'
      'FROM HR_WAGE_MATRIX')
    FieldOptions = []
    Left = 104
    Top = 144
    object IntegerField1: TIntegerField
      FieldName = 'GRADE_NO'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'GRADE_NAME'
      Required = True
      Size = 63
    end
    object WideStringField2: TWideStringField
      FieldName = 'GRADE_NOTE'
      Size = 3072
    end
  end
end
