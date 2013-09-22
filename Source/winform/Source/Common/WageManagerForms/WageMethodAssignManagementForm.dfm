inherited frmWageMethodAssignManager: TfrmWageMethodAssignManager
  Left = 215
  Top = 209
  Width = 755
  Height = 516
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 463
    Width = 747
  end
  object pageMain: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 747
    Height = 463
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = False
    Images = imlDetail
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
    ActivePage = tabWageMethod
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
    object tabWageMethod: TElTabSheet
      PageControl = pageMain
      ImageIndex = 0
      TabVisible = True
      Caption = ' Nh'#7853't k'#253' thay '#273#7893'i ph'#432#417'ng '#225'n l'#432#417'ng'
      object panelMain: TElPanel
        Left = 0
        Top = 0
        Width = 743
        Height = 391
        Align = alClient
        BevelOuter = bvNone
        MouseCapture = False
        TabOrder = 0
        DockOrientation = doNoOrient
        DoubleBuffered = False
        object tlWageAssignDetail: TdxDBTreeList
          Left = 430
          Top = 0
          Width = 313
          Height = 391
          Bands = <
            item
              Caption = 'Chi ti'#7871't thay '#273#7893'i '
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'OBJECT_NO'
          ParentField = 'P_OBJECT_NO'
          Align = alClient
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
          DataSource = dsWageAssignDetail
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          ImageIndexFieldName = 'OBJECT_INDEX'
          Images = imlDetail
          LookAndFeel = lfFlat
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowBands = True
          TreeLineColor = clGrayText
          object tlWageAssignDetailOBJECT_NAME: TdxDBTreeListColumn
            Caption = 'Nh'#243'm l'#432#417'ng / nh'#226'n vi'#234'n'
            Width = 158
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_NAME'
            Caption_UTF7 = 'Nh+APM-m l+AbABoQ-ng / nh+AOI-n vi+AOo-n'
          end
          object tlWageAssignDetailOBJECT_DETAIL: TdxDBTreeListColumn
            Caption = 'Th'#244'ng tin th'#234'm'
            Color = 13031935
            HeaderAlignment = taCenter
            Width = 153
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_DETAIL'
            Caption_UTF7 = 'Th+APQ-ng tin th+AOo-m'
          end
          object tlWageAssignDetailOBJECT_INDEX: TdxDBTreeListColumn
            Visible = False
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBJECT_INDEX'
          end
        end
        object ElSplitter1: TElSplitter
          Left = 425
          Top = 0
          Width = 5
          Height = 391
          Cursor = crHSplit
          SnapTopLeft = True
          SnapBottomRight = True
          ControlTopLeft = gridChangeLog
          ControlBottomRight = tlWageAssignDetail
          AutoHide = False
          Align = alLeft
          BevelInner = bvLowered
          BevelOuter = bvNone
          UseXPThemes = False
        end
        object gridChangeLog: TdxDBGrid
          Left = 0
          Top = 0
          Width = 425
          Height = 391
          Bands = <
            item
              Caption = 'Th'#244'ng tin '#273#7907't thay '#273#7893'i'
            end
            item
              Caption = #193'p d'#7909'ng t'#7915' k'#7923' l'#432#417'ng'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'CHANGE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alLeft
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsWageAssignChange
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
          object gridChangeLogCHANGE_NO: TdxDBGridColumn
            Caption = 'M'#227' s'#7889' '
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CHANGE_NO'
            Caption_UTF7 = 'M+AOM s+HtE '
          end
          object gridChangeLogCHANGE_NAME: TdxDBGridColumn
            Caption = #272#7907't thay '#273#7893'i '
            HeaderAlignment = taCenter
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CHANGE_NAME'
            Caption_UTF7 = '+ARAe4w-t thay +AREe1Q-i '
          end
          object gridChangeLogCHANGE_MONTH: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'th'#225'ng '
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHANGE_MONTH'
            MinValue = 1.000000000000000000
            MaxValue = 12.000000000000000000
            Caption_UTF7 = 'th+AOE-ng '
          end
          object gridChangeLogCHANGE_YEAR: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'n'#259'm '
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHANGE_YEAR'
            MinValue = 1990.000000000000000000
            MaxValue = 3000.000000000000000000
            Caption_UTF7 = 'n+AQM-m '
          end
          object gridChangeLogCHANGE_PERIOD: TdxDBGridSpinColumn
            Alignment = taCenter
            Caption = 'k'#7923' '
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CHANGE_PERIOD'
            MinValue = 1.000000000000000000
            MaxValue = 9.000000000000000000
            Caption_UTF7 = 'k+HvM '
          end
          object gridChangeLogPERIOD_NAME: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'PERIOD_NAME'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
      end
      inline frameToolbar1: TframeToolbar
        Left = 0
        Top = 391
        Width = 743
        Height = 46
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        inherited dxLayoutControl1: TdxLayoutControl
          Width = 743
          inherited btnDelete: TElPopupButton
            Left = -159
          end
          inherited btnInsert: TElPopupButton
            Left = -284
          end
          inherited btnSave: TElPopupButton
            Left = -84
          end
          inherited btnCancel: TElPopupButton
            Left = -9
          end
          inherited btnClose: TElPopupButton
            Left = 673
          end
          inherited btnHelp: TElPopupButton
            Left = 543
          end
          inherited btnChoose: TElPopupButton
            Left = 613
          end
          inherited btnCopy: TElPopupButton
            Left = -184
          end
          inherited btnFirst: TElPopupButton
            Left = 71
          end
          inherited btnLast: TElPopupButton
            Left = 140
          end
          inherited btnPrevious: TElPopupButton
            Left = 94
          end
          inherited btnNext: TElPopupButton
            Left = 117
          end
          inherited btnDesign: TElPopupButton
            Left = 333
          end
          inherited btnPreview: TElPopupButton
            Left = 263
          end
          inherited btnPrint: TElPopupButton
            Left = 193
          end
          inherited btnInsertEx: TElPopupButton
            Left = -209
          end
          inherited btnSendMail: TElPopupButton
            Left = 168
          end
          inherited btnGenerate: TElPopupButton
            Left = 458
            ImageIndex = 58
            UseImageList = True
            Images = dmMain.imgAction
            Caption = '&Ph'#225't sinh'
            Action = acPhatsinh
          end
          inherited btnRelation: TElPopupButton
            Left = 433
          end
          inherited ElPopupButton1: TElPopupButton
            Left = 408
          end
          inherited dxLayoutControl1Group_Root: TdxLayoutGroup
            inherited dxLayoutControl1Group1: TdxLayoutGroup
              inherited dxLayoutControl1Group4: TdxLayoutGroup
                Visible = True
                inherited dxlctrlGenerate: TdxLayoutItem
                  Visible = True
                end
              end
              inherited dxLayoutControl1Item14: TdxLayoutItem
                Visible = False
              end
            end
          end
        end
      end
    end
    object tabSummary: TElTabSheet
      PageControl = pageMain
      ImageIndex = 3
      TabVisible = True
      Caption = 'Th'#244'ng tin t'#7893'ng h'#7907'p'
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 743
        Height = 437
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object dxYear: TdxSpinEdit
          Left = 405
          Top = 28
          Width = 70
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          StyleController = dmMain.StyleController
          MaxValue = 3000.000000000000000000
          MinValue = 1990.000000000000000000
          Value = 1990.000000000000000000
          StoredValues = 48
        end
        object dxPeriod: TdxSpinEdit
          Left = 497
          Top = 28
          Width = 70
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          StyleController = dmMain.StyleController
          MaxValue = 9.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          StoredValues = 48
        end
        object ElPopupButton1: TElPopupButton
          Left = 573
          Top = 28
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'Xem d'#7919' li'#7879'u ch'#7881' '#273#7883'nh ph'#432#417'ng '#225'n l'#432#417'ng th'#225'ng k'#7871' tr'#432#7899'c'
          ImageIndex = 0
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 4
          Color = clBtnFace
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acBack
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 678
          Top = 28
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'Xem d'#7919' li'#7879'u ch'#7881' '#273#7883'nh ph'#432#417'ng '#225'n l'#432#417'ng th'#225'ng ti'#7871'p theo'
          ImageIndex = 3
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 6
          Color = clBtnFace
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Action = acNext
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton2: TElPopupButton
          Left = 598
          Top = 28
          Width = 80
          Height = 25
          Cursor = crDefault
          Hint = 'Xem d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
          ImageIndex = 10
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&Xem'
          TabOrder = 5
          Color = clBtnFace
          ParentColor = False
          Action = acXem
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDBGrid1: TdxDBGrid
          Left = 10
          Top = 71
          Width = 737
          Height = 327
          Bands = <
            item
              Caption = 'Th'#244'ng tin nh'#226'n vi'#234'n'
              Width = 381
            end
            item
              Caption = 'Ph'#432#417'ng '#225'n ch'#7881' '#273#7883'nh'
              Width = 231
            end
            item
              Caption = 'Th'#7901'i gian '#225'p d'#7909'ng t'#7915
              Width = 123
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = [fsBold]
          DataSource = dsReport
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
          object dxDBGrid1EMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object dxDBGrid1FULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' t'#234'n'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 t+AOo-n'
          end
          object dxDBGrid1DEPT_NAME: TdxDBGridColumn
            Caption = #272#417'n v'#7883' - ph'#242'ng ban'
            HeaderAlignment = taCenter
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban'
          end
          object dxDBGrid1TITLE_NAME: TdxDBGridColumn
            Caption = 'Ch'#7913'c danh'
            HeaderAlignment = taCenter
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c danh'
          end
          object dxDBGrid1WAGE_GROUP_NAME: TdxDBGridColumn
            Caption = 'Thu'#7897'c nh'#243'm l'#432#417'ng'
            Color = 12900351
            HeaderAlignment = taCenter
            Width = 116
            BandIndex = 1
            RowIndex = 0
            FieldName = 'WAGE_GROUP_NAME'
            Caption_UTF7 = 'Thu+Htk-c nh+APM-m l+AbABoQ-ng'
          end
          object dxDBGrid1APPLY_MONTH: TdxDBGridColumn
            Caption = 'Th'#225'ng'
            Color = 14019575
            HeaderAlignment = taCenter
            Width = 53
            BandIndex = 2
            RowIndex = 0
            FieldName = 'APPLY_MONTH'
            Caption_UTF7 = 'Th+AOE-ng'
          end
          object dxDBGrid1METHOD_NAME: TdxDBGridColumn
            Caption = 'Ph'#432#417'ng '#225'n '#225'p d'#7909'ng'
            Color = 12900351
            HeaderAlignment = taCenter
            Width = 116
            BandIndex = 1
            RowIndex = 0
            FieldName = 'METHOD_NAME'
            Caption_UTF7 = 'Ph+AbABoQ-ng +AOE-n +AOE-p d+HuU-ng'
          end
          object dxDBGrid1APPLY_YEAR: TdxDBGridColumn
            Caption = 'N'#259'm'
            Color = 14019575
            HeaderAlignment = taCenter
            Width = 36
            BandIndex = 2
            RowIndex = 0
            FieldName = 'APPLY_YEAR'
            Caption_UTF7 = 'N+AQM-m'
          end
          object dxDBGrid1APPLY_PERIOD: TdxDBGridColumn
            Caption = 'K'#7923
            Color = 14019575
            HeaderAlignment = taCenter
            Width = 35
            BandIndex = 2
            RowIndex = 0
            FieldName = 'APPLY_PERIOD'
            Caption_UTF7 = 'K+HvM'
          end
        end
        object dxMonth: TdxImageEdit
          Left = 262
          Top = 28
          Width = 112
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          StyleController = dmMain.StyleController
          PopupBorder = pbFrame3D
        end
        object imOption: TdxImageEdit
          Left = 71
          Top = 28
          Width = 94
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          StyleController = dmMain.StyleController
          PopupBorder = pbFrame3D
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883' th'#244'ng tin'
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Item1: TdxLayoutItem
              Caption = 'T'#249'y ch'#7885'n'
              Control = imOption
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item8: TdxLayoutItem
              Caption = #193'p d'#7909'ng t'#7841'i th'#225'ng'
              Control = dxMonth
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              Caption = 'n'#259'm'
              Control = dxYear
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Caption = 'k'#7923
              Control = dxPeriod
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Group2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxLayoutControl1Item4: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item6: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'dxDBGrid1'
            ShowCaption = False
            Control = dxDBGrid1
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
        Caption = 'Ch'#7881' '#273#7883'nh ph'#432#417'ng '#225'n l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 64
  end
  object qryWageAssignChange: TIBOQuery
    Params = <>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_ASSIGN_LOG'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_ASSIGN_LOG SET'
      '   CHANGE_NO = :CHANGE_NO, /*PK*/'
      '   CHANGE_NAME = :CHANGE_NAME,'
      '   CHANGE_MONTH = :CHANGE_MONTH,'
      '   CHANGE_YEAR = :CHANGE_YEAR,'
      '   CHANGE_PERIOD = :CHANGE_PERIOD'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_ASSIGN_LOG('
      '   CHANGE_NO, /*PK*/'
      '   CHANGE_NAME,'
      '   CHANGE_MONTH,'
      '   CHANGE_YEAR,'
      '   CHANGE_PERIOD)'
      'VALUES ('
      '   :CHANGE_NO,'
      '   :CHANGE_NAME,'
      '   :CHANGE_MONTH,'
      '   :CHANGE_YEAR,'
      '   :CHANGE_PERIOD)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT CHANGE_NO'
      '     , CHANGE_NAME'
      '     , CHANGE_MONTH'
      '     , CHANGE_YEAR'
      '     , CHANGE_PERIOD'
      
        '     , CHANGE_MONTH||'#39'/'#39'||CHANGE_YEAR||'#39' - '#39'||CHANGE_PERIOD PERI' +
        'OD_NAME'
      'FROM HR_WAGE_ASSIGN_LOG')
    FieldOptions = []
    Left = 64
    Top = 248
    object qryWageAssignChangeCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
    object qryWageAssignChangeCHANGE_NAME: TWideStringField
      FieldName = 'CHANGE_NAME'
      Required = True
      Size = 126
    end
    object qryWageAssignChangeCHANGE_MONTH: TIntegerField
      FieldName = 'CHANGE_MONTH'
      Required = True
      OnChange = qryWageAssignChangeCHANGE_MONTHChange
    end
    object qryWageAssignChangeCHANGE_YEAR: TIntegerField
      FieldName = 'CHANGE_YEAR'
      Required = True
      OnChange = qryWageAssignChangeCHANGE_YEARChange
    end
    object qryWageAssignChangeCHANGE_PERIOD: TSmallintField
      FieldName = 'CHANGE_PERIOD'
      Required = True
      OnChange = qryWageAssignChangeCHANGE_PERIODChange
    end
    object qryWageAssignChangePERIOD_NAME: TWideStringField
      FieldName = 'PERIOD_NAME'
      ReadOnly = True
      Required = True
      Size = 32
    end
  end
  object dsWageAssignChange: TDataSource
    DataSet = qryWageAssignChange
    Left = 63
    Top = 281
  end
  object qryWageAssignDetail: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageAssignChange
    SQL.Strings = (
      'SELECT'
      '  OBJECT_NO ,'
      '  P_OBJECT_NO ,'
      '  OBJECT_NAME ,'
      '  OBJECT_DETAIL,'
      '  OBJECT_INDEX'
      'FROM HR_GET_WAGE_ASSIGN_DETAIL(:USER_NAME,:CHANGE_NO)')
    FieldOptions = []
    Left = 184
    Top = 248
    object qryWageAssignDetailOBJECT_NO: TWideStringField
      FieldName = 'OBJECT_NO'
      Size = 30
    end
    object qryWageAssignDetailP_OBJECT_NO: TWideStringField
      FieldName = 'P_OBJECT_NO'
      Size = 30
    end
    object qryWageAssignDetailOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Size = 126
    end
    object qryWageAssignDetailOBJECT_DETAIL: TWideStringField
      FieldName = 'OBJECT_DETAIL'
      Size = 252
    end
    object qryWageAssignDetailOBJECT_INDEX: TIntegerField
      FieldName = 'OBJECT_INDEX'
    end
  end
  object dsWageAssignDetail: TDataSource
    DataSet = qryWageAssignDetail
    Left = 184
    Top = 280
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 31
    Top = 137
    object acPhatsinh: TAction
      Caption = 'acPhatsinh'
      ImageIndex = 58
      OnExecute = acPhatsinhExecute
      OnUpdate = acPhatsinhUpdate
    end
    object acXem: TAction
      Caption = 'acXem'
      ImageIndex = 10
      OnExecute = acXemExecute
    end
    object acBack: TAction
      Caption = 'acBack'
      ImageIndex = 0
      OnExecute = acBackExecute
    end
    object acNext: TAction
      Caption = 'acNext'
      ImageIndex = 3
      OnExecute = acNextExecute
    end
  end
  object imlDetail: TImageList
    Left = 16
    Top = 168
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078C77800EDF7ED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400084878000C70B80014181800141818002454
      7800585858000000000000000000000000000000000000000000000000000000
      0000000000000000000024A424000CA41700009800009AD59A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000343434000404
      04000404040004040400343434000000000000000000000000007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400149CF000149CF00040B0F00034A4F000149CF0001C30
      380068C0F0006498B80000000000000000000000000000000000000000000000
      0000F6FBF600039B070014AD28000FA81F00009900000099000055B955000000
      00000000000000000000000000000000000000000000479B3A0063B1630082C1
      8200A7D3A700BADDBA001E323E00DDB399001E323E0074B973005BAD5B000000
      0000000000000000000000000000000000000000000098909000F4F4E400ECDC
      D400E0CCC000D4AC9C00C08868006C4028004C4C5000000000007CC4F40038A8
      F000000000000000000000000000000000000000000000000000000000000000
      000000000000149CF000149CF00028282C00BCE0F8005CB8F000149CF000041C
      280070B8E00074C4F0005858580000000000000000000000000000000000A2D9
      A2000CA418001AB3340017B02D0013AC2500009900000099000000990000119D
      11000000000000000000000000000000000000000000489F41006EB66E0095CA
      9500BADDBA001E323E00F8DCC300F8DCC3001E323E0082C182005BAD5B000000
      000000000000000000000000000000000000D4C8C400FFFFFF00F8F4F400F4F4
      E400ECD4C400D8B8A000C4947800B0704400C8D0D000B0E0F8007CC4F40038A8
      F0001498F0001498F00000000000000000004CA44C004CA44C005CAC5C006CB4
      6C0004040400149CF0003088C800787C840098C0D800283438000878C800149C
      F000040404009CD4F80088A8B80000000000000000000000000089CD890018B1
      310021BA41001DB63A0019B2330015AE2B000098000000990000009700000097
      000003980300000000000000000000000000000000003B9128006EB66E0095CA
      95001E323E00ECBB9500FFE7C600FFE7C6001E323E0082C1820054A54C000000
      000000000000000000000000000000000000ECE4E400F8F4F400F8F4F400ECE4
      E400ECD4C400D8B8A000C4947800B8B8B800FFFFFF00B0E0F8004C4C50003434
      34001498F0001498F0000C70B800000000005CAC5C00040404005CAC5C000404
      04000404040034A4F0005CB8F00074C4F000344C5800405060000878C800149C
      F00004040400BCE0F8009CD4F8000000000000000000B6E0B60028C14F0028C1
      500025BE4A0020B942001EB73A0019B232000099000050AD5000CDCDCD00B0B8
      BE00009A00000098000000000000000000000000000000000000000000005F87
      5F001E323E001E323E001E323E00ECCEAA00A3B07E0000000000000000000000
      0000000000000000000000000000000000000000000010080000744C34008C78
      6800DCC4B400D0A89000C0886800000000000000000000000000000000000000
      000068A0C8001498F0001498F000000000005CAC5C0078B8780080C080008CC4
      8C00344C580040B0F0005CA8D000E8ECE800BCE0F8005CB8F000149CF0000868
      A800CCDCE800CCE8F80088A8B8000000000000000000A0D7A00032CB64002EC7
      590028C1520026BF4A0021BB430024B941000099000000980000A7C4A700D4D0
      D2005D977400009800000000000000000000000000009292920002111B000945
      6E0010527D00235B800070BAE7001E323E00305D240000000000000000000000
      0000000000000000000000000000000000000000000010080000E8AC2C00ECC4
      7800846C5C0080503400906040003434340000000000000000000000000030A0
      E0001498F0001498F00000000000000000006CB46C00040404006CB46C000404
      04009CCC9C005CB8F00028343800FFFFFF0088A8B800DCECF800141818001418
      1800ECF4F800E8ECE8005858580000000000000000008FD08F003AD36F0031CA
      63002FC85B0028C252003DC9620038D16C0032C85F000099000095BE9400D2CE
      CE00E0D5E10000990000000000000000000092929200031623000D68A5000C61
      9A00235B800077C6F60077C6F60077C6F6001E323E0000000000000000000000
      000000000000000000000000000000000000000000006C402800E8A00C00E8A4
      1C00E8A41C00E8AC2C00A89070006C40280000000000B0E0F8007CC4F40038A8
      F0000878C80050403800000000000000000080C080000404040080C080000404
      04009CCC9C00406C880068B8E000C8CCCC00BCE0F8005CB8F000149CF0001418
      1800FFFFFF00B4BCBC000000000000000000000000007FC87F0041DB770037D0
      6A002FCA610050D87A0040DB75003DD6700039D26C0033D16A0095BB9500E3D7
      DC005E947400009302000000000000000000454545000C619A000E6FB000235B
      800077C6F60077C6F60077C6F60077C6F60077C6F600454545005F5F5F000000
      0000000000000000000000000000000000000000000090705C00E8AC2C00E8B4
      3C00E4B44C00E4B44C00E4B44C0000000000FFFFFF00B0E0F80068A0C8000000
      00000000000000000000000000000000000080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00DCECDC0068B8E0007098B800BCE0F80058B0E00078889000F8F8
      F800E8ECE800000000000000000000000000000000005FBA5F004AE381003FD7
      71005FE98D004DE780004AE37D0047DE79002FD76700BFF1D000FFFFFF00EADF
      E40000880400009A00000000000000000000000000000E6FB0000E6FB000235B
      800077C6F60077C6F60077C6F60077C6F60077C6F6005288A900000000000000
      0000000000000000000000000000000000000000000098786800ECC05C00F0C4
      6C00F0C46C00F0CC8400F0C46C0000000000FFFFFF00B0E0F800000000000000
      00001498F0001498F00000000000000000008CC48C00040404008CC48C000404
      0400CCE4CC0004040400040404004C7088001418180014181800DCECF800DCEC
      F800000000000000000000000000000000000000000039AB39005BEB8E0061F7
      930059F28C0054ED870050EA840045E47A00FFFFFF00FFFFFF00FFFFFF008DC8
      AC0022C14900009600000000000000000000000000000E6FB0000E6FB000235B
      800077C6F60077C6F60077C6F60077C6F60077C6F6005995B900000000000000
      0000000000000000000000000000000000006C40280098786800F0C46C00F0D4
      9400F0DCA400F0DCA400F0DCA400D0B87800FFFFFF00B0E0F8007CC4F40038A8
      F0001498F0001498F00000000000000000008CC48C00ACD4AC00BCDCBC00DCEC
      DC00E8ECE800FFFFFF00FFFFFF00FFFFFF002C80B8005490B8007098B800CCE8
      F800000000000000000000000000000000000000000025A3250065FB950064FE
      970061FA940054F58A009BF6B800FFFFFF00FFFFFF00FAFCFC0034CB6E0042DD
      75003FD874001CB636000000000000000000000000000E6FB0001975B3002A5F
      810077C6F60077C6F60077C6F60077C6F60077C6F6005288A900000000000000
      00000000000000000000000000000000000010080000E0B87800F0D49400F0DC
      A400F8E0C000F8E8C400F8E0C000F8E0B400B89870007C8080007CC4F40038A8
      F000000000000000000000000000000000008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80000000000249CEC005CB8F00074C4F0009CD4
      F8009CD4F8003C444400000000000000000000000000000000004DB04D0051EC
      7B005BFF9500E0FEEA00FFFFFF00FFFFFF00B4E6CC0044E67B004CE57F004DE6
      840012A91F00CEEBCE000000000000000000000000000E6FB0001975B300357E
      AF003D657E0077C6F60077C6F60077C6F600235B80001E323E005F5F5F000000
      0000000000000000000000000000000000006C402800E0B87800F0DCA400F8E8
      C400F4F4E400F4F4E400F4F4E400F8ECD400CC9C84007C8080007CC4F40038A8
      F000000000000000000000000000000000008CC48C0004040400A0A8A800A0A8
      A800A0A8A800A0A8A800A0A8A80048485000149CF0001C70A8005CB8F00068C0
      F00068C0F000000000000000000000000000000000000000000000000000E3F3
      E300169D1700FFFFFF00FFFEFF006FED9D005BF68E0059F28C0046DE70002FA6
      2F00000000000000000000000000000000001E323E00083F63002079B400458D
      BD0071A5C800235B8000235B8000235B80004D6E840000000000787878000000
      000000000000000000000000000000000000ACA4A000B87C5C00D0A88000F8E0
      C000F8F4F400F8F4F400F8F4F400F4F4E400C494780000000000000000000000
      00000000000000000000000000000000000080C0800004040400040404000404
      040004040400040404000404040028282C0000000000000000001C78B8002870
      A000405060000000000000000000000000000000000000000000000000000000
      0000000000003BAA3B0043E26C006AFF9E0068FF9E0020B83100BCE3BC000000
      000000000000000000000000000000000000000000000000000014456600458D
      BD0071A5C800A0BFD400C3D2DC008DA1AE002029300078787800000000000000
      0000000000000000000000000000000000001008000084644C00F4F4E400B8B0
      A80084644C00A45C3400B0704400CC9C8400B87C5C0000000000000000000000
      00000000000000000000000000000000000080C080009CCC9C00ACD4AC00BCDC
      BC00CCE4CC00CCE4CC00CCE4CC00CCE4CC0094A4980000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF0DC0017AF23002CA62C0000000000000000000000
      00000000000000000000000000000000000000000000000000001E323E000D1A
      23000000000000000000454545005F5F5F007878780000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C402800100800006C402800B8A898008C7C740000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFE7FFFFFFFFFFC07FC3F001FC187
      F803F01F000F80070001E00F000F00030001C007000F000100018003801F0031
      00018003803F80C100018003003F800300038003001F801F00078003001F8001
      000F8003001F000300078003001F00070003C003001F00070003E00F001F0007
      0007F81F803F007F007FFC7FC07FF07F00000000000000000000000000000000
      000000000000}
  end
  object qryReport: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'STATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_PERIOD'
        ParamType = ptInput
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsWageAssignChange
    SQL.Strings = (
      'SELECT'
      '    EMPLOYEE_NO ,'
      '    FULL_NAME ,'
      '    TITLE_NAME ,'
      '    DEPT_NAME ,'
      '    WAGE_GROUP_NO ,'
      '    WAGE_GROUP_NAME ,'
      '    METHOD_NO ,'
      '    METHOD_NAME ,'
      '    APPLY_MONTH ,'
      '    APPLY_YEAR ,'
      '    APPLY_PERIOD'
      'FROM HR_WAGE_ASSIGN_REPORT ('
      '    :STATE ,'
      '    :AT_MONTH ,'
      '    :AT_YEAR ,'
      '    :AT_PERIOD ) ')
    FieldOptions = []
    Left = 112
    Top = 248
    object qryReportEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryReportFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryReportTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryReportDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryReportWAGE_GROUP_NAME: TWideStringField
      FieldName = 'WAGE_GROUP_NAME'
      Size = 126
    end
    object qryReportMETHOD_NO: TWideStringField
      FieldName = 'METHOD_NO'
      Size = 30
    end
    object qryReportMETHOD_NAME: TWideStringField
      FieldName = 'METHOD_NAME'
      Size = 126
    end
    object qryReportAPPLY_MONTH: TIntegerField
      FieldName = 'APPLY_MONTH'
    end
    object qryReportAPPLY_YEAR: TIntegerField
      FieldName = 'APPLY_YEAR'
    end
    object qryReportAPPLY_PERIOD: TIntegerField
      FieldName = 'APPLY_PERIOD'
    end
    object qryReportWAGE_GROUP_NO: TWideStringField
      FieldName = 'WAGE_GROUP_NO'
      Size = 30
    end
  end
  object dsReport: TDataSource
    DataSet = qryReport
    Left = 112
    Top = 280
  end
end
