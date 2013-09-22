inherited frmEditImportRule: TfrmEditImportRule
  Left = 227
  Top = 224
  Width = 653
  Height = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 408
    Width = 645
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 645
    Height = 408
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 381
      Color = 15466238
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 750
        end
        inherited btnHelp: TElPopupButton
          Left = 620
        end
        inherited btnChoose: TElPopupButton
          Left = 690
        end
        inherited btnDesign: TElPopupButton
          Left = 479
          Width = 1
        end
        inherited btnPreview: TElPopupButton
          Left = 478
          Width = 1
        end
        inherited btnPrint: TElPopupButton
          Width = 1
        end
        inherited btnGenerate: TElPopupButton
          Left = 535
          ImageIndex = 62
          UseImageList = True
          Images = dmMain.imgAction
          Action = acPhatsinh
        end
        inherited btnRelation: TElPopupButton
          Left = 510
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 485
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
    end
    object Panel1: TPanel [1]
      Left = 2
      Top = 2
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = 15466238
      TabOrder = 4
      object gridParam: TdxDBGrid
        Left = 0
        Top = 201
        Width = 641
        Height = 178
        Bands = <
          item
            Caption = 'Quy '#273#7883'nh '#273#432'a d'#7919' li'#7879'u v'#224'o h'#7879' th'#7889'ng'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PARAM_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        DataSource = frmImportTool.dsParam
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        object gridParamPARAM_NO: TdxDBGridColumn
          Caption = 'M'#227
          HeaderAlignment = taCenter
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PARAM_NO'
          Caption_UTF7 = 'M+AOM'
        end
        object gridParamPARAM_NAME: TdxDBGridColumn
          Caption = 'Tr'#432#7901'ng d'#7919' li'#7879'u'
          HeaderAlignment = taCenter
          Width = 148
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PARAM_NAME'
          Caption_UTF7 = 'Tr+AbAe3Q-ng d+Hu8 li+Hsc-u'
        end
        object gridParamSOURCE_NAME: TdxDBGridPickColumn
          Caption = 'T'#234'n c'#7897't t'#432#417'ng '#7913'ng'
          HeaderAlignment = taCenter
          Width = 133
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOURCE_NAME'
          Caption_UTF7 = 'T+AOo-n c+Htk-t t+AbABoQ-ng +Huk-ng'
        end
        object gridParamSOURCE_COL: TdxDBGridPickColumn
          Caption = 'M'#227' c'#7897't'
          HeaderAlignment = taCenter
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SOURCE_COL'
          Caption_UTF7 = 'M+AOM c+Htk-t'
        end
        object gridParamFUNC_NAME: TdxDBGridImageColumn
          Alignment = taLeftJustify
          Caption = 'Ph'#432#417'ng th'#7913'c x'#7917' l'#237
          HeaderAlignment = taCenter
          MinWidth = 16
          Width = 198
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FUNC_NO'
          ShowDescription = True
          Caption_UTF7 = 'Ph+AbABoQ-ng th+Huk-c x+Hu0 l+AO0'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 0
        Top = 193
        Width = 185
        Height = 8
        Cursor = crVSplit
        SnapTopLeft = False
        SnapBottomRight = True
        ControlTopLeft = pageScript
        ControlBottomRight = gridParam
        AutoHide = False
        ShowSnapButton = True
        Align = alTop
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object pageScript: TElPageControl
        Left = 0
        Top = 0
        Width = 185
        Height = 193
        BorderWidth = 0
        DrawFocus = False
        Flat = True
        HotTrack = True
        Images = dmMain.imgAction
        Multiline = False
        RaggedRight = False
        ScrollOpposite = False
        ShowBorder = False
        Style = etsAngledTabs
        TabIndex = 0
        TabPosition = etpBottom
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clBlue
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
        ActivePage = tabScriptList
        FlatTabBorderColor = clBtnShadow
        DraggablePages = False
        ActiveTabFont.Charset = DEFAULT_CHARSET
        ActiveTabFont.Color = clWindowText
        ActiveTabFont.Height = -11
        ActiveTabFont.Name = 'MS Sans Serif'
        ActiveTabFont.Style = []
        TabCursor = crDefault
        Align = alTop
        ParentColor = False
        TabOrder = 2
        object tabScriptList: TElTabSheet
          PageControl = pageScript
          ImageIndex = 21
          TabVisible = True
          Caption = 'Danh s'#225'ch'
          object gridScript: TdxDBGrid
            Left = 0
            Top = 0
            Width = 185
            Height = 169
            Bands = <
              item
                Caption = 'Danh s'#225'ch l'#7879'nh th'#7921'c thi'
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'SCRIPT_ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            OnDblClick = gridScriptDblClick
            DataSource = frmImportTool.dsScript
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            ShowBands = True
            object gridScriptSCRIPT_ORDER: TdxDBGridSpinColumn
              Alignment = taCenter
              Caption = 'STT'
              HeaderAlignment = taCenter
              Width = 46
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SCRIPT_ORDER'
            end
            object gridScriptSCRIPT_NAME: TdxDBGridColumn
              Caption = 'L'#7879'nh th'#7921'c thi'
              HeaderAlignment = taCenter
              Width = 129
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SCRIPT_NAME'
              Caption_UTF7 = 'L+Hsc-nh th+HvE-c thi'
            end
            object gridScriptSCRIPT_TEXT: TdxDBGridMemoColumn
              Caption = 'C'#226'u l'#7879'nh th'#7921'c thi'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 433
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SCRIPT_TEXT'
              ScrollBars = ssBoth
              Caption_UTF7 = 'C+AOI-u l+Hsc-nh th+HvE-c thi'
            end
            object gridScriptIS_USED: TdxDBGridCheckColumn
              Alignment = taCenter
              Caption = '[  ]'
              HeaderAlignment = taCenter
              Width = 23
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IS_USED'
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
          end
        end
        object tabSQL: TElTabSheet
          PageControl = pageScript
          ImageIndex = 63
          TabVisible = True
          Caption = 'L'#7879'nh SQL'
          Visible = False
          object dxDBMemo1: TdxDBMemo
            Left = 0
            Top = 0
            Width = 185
            Align = alClient
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 0
            DataField = 'SCRIPT_TEXT'
            DataSource = frmImportTool.dsScript
            StyleController = dmMain.StyleController
            ScrollBars = ssBoth
            Height = 169
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem4: TdxLayoutItem [0]
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
        Caption = #272#7883'nh ngh'#297'a lu'#7853't chuy'#7875'n d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 144
    Top = 96
    object acPhatsinh: TAction
      Caption = 'acPhatsinh'
      ImageIndex = 62
      OnExecute = acPhatsinhExecute
      OnUpdate = acPhatsinhUpdate
    end
  end
  object qryTest: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\SSP-HRM 2.0.1 Project\Implementation\Databases\SSP_H' +
      'RM_DB_DEMO.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 72
    Top = 96
  end
end
