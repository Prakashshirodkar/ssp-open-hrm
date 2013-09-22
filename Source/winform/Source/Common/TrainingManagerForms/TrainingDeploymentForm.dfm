inherited frmTrainingDeployment: TfrmTrainingDeployment
  Left = 251
  Top = 186
  Width = 836
  Height = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 491
    Width = 828
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 828
    Height = 491
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 464
      Color = 15466238
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 923
        end
        inherited btnHelp: TElPopupButton
          Left = 793
        end
        inherited btnChoose: TElPopupButton
          Left = 863
        end
        inherited btnDesign: TElPopupButton
          Left = 481
          Width = 2
        end
        inherited btnPreview: TElPopupButton
          Left = 479
          Width = 2
        end
        inherited btnPrint: TElPopupButton
          Width = 2
        end
        inherited btnGenerate: TElPopupButton
          Left = 693
          Width = 95
          ImageIndex = 58
          UseImageList = True
          Images = dmMain.imgAction
          Caption = '&Ph'#225't sinh CP'
          Action = acPhatsinh
        end
        inherited btnRelation: TElPopupButton
          Left = 598
          Width = 95
          ImageIndex = 19
          UseImageList = True
          Images = dmMain.imgAction
          ShowText = True
          Caption = 'C'#7853'p nh'#7853't CP'
          Action = acCapnhatChiphi
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 488
          Width = 110
          ImageIndex = 54
          ShowText = True
          Caption = 'Ch'#7885'n nhanh NV'
          Action = acChonNhanhNV
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
              inherited dxlctrlViewLog: TdxLayoutItem
                Visible = True
              end
              inherited dxLayoutControl1Item9: TdxLayoutItem
                Visible = True
              end
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    object panelTop: TPanel [1]
      Left = 2
      Top = 2
      Width = 736
      Height = 174
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 4
      object gridTrainingPlan: TdxDBGrid
        Left = 0
        Top = 0
        Width = 281
        Height = 174
        Bands = <
          item
            Caption = 'K'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PLAN_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        DataSource = dsTrainingPlan
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        object gridTrainingPlanPLAN_NO: TdxDBGridColumn
          Caption = 'M'#227' k'#7871' ho'#7841'ch'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NO'
          Caption_UTF7 = 'M+AOM k+Hr8 ho+HqE-ch'
        end
        object gridTrainingPlanPLAN_NAME: TdxDBGridColumn
          Caption = 'K'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 138
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLAN_NAME'
          Caption_UTF7 = 'K+Hr8 ho+HqE-ch +AREA4A-o t+HqE-o'
        end
        object gridTrainingPlanCREATE_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y l'#7853'p'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CREATE_DATE'
          Caption_UTF7 = 'Ng+AOA-y l+Hq0-p'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 281
        Top = 0
        Width = 8
        Height = 174
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = False
        ControlTopLeft = gridTrainingPlan
        AutoHide = False
        ShowSnapButton = True
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object dxDBGrid1: TdxDBGrid
        Left = 289
        Top = 0
        Width = 447
        Height = 174
        Bands = <
          item
            Caption = 'Danh s'#225'ch l'#7899'p '#273#224'o t'#7841'o'
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CLASS_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 2
        DataSource = dsClass
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        ShowBands = True
        object dxDBGrid1CLASS_NO: TdxDBGridColumn
          Caption = 'M'#227' l'#7899'p'
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLASS_NO'
          Caption_UTF7 = 'M+AOM l+Hts-p'
        end
        object dxDBGrid1EDU_FIELD_NAME: TdxDBGridColumn
          Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
          HeaderAlignment = taCenter
          Width = 185
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLASS_CONTENT'
          Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
        end
        object dxDBGrid1START_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y b'#7855't '#273#7847'u'
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'START_DATE'
          Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u'
        end
        object dxDBGrid1END_DATE: TdxDBGridDateColumn
          Caption = 'Ng'#224'y k'#7871't th'#250'c'
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'END_DATE'
          Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
        end
        object dxDBGrid1STUDENT_COUNT: TdxDBGridColumn
          Caption = 'S'#7889' l'#432#7907'ng'
          HeaderAlignment = taCenter
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STUDENT_COUNT'
          Caption_UTF7 = 'S+HtE l+AbAe4w-ng'
        end
      end
    end
    object pageMain: TElPageControl [2]
      Left = 2
      Top = 176
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
      Multiline = False
      OnChanging = pageMainChanging
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
      ActivePage = tabChiphi
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 5
      object tabChiphi: TElTabSheet
        PageControl = pageMain
        ImageIndex = 0
        TabVisible = True
        Caption = 'Tri'#7875'n khai && d'#7921' tr'#249' kinh ph'#237
        object gridStudent: TdxDBGrid
          Left = 0
          Top = 0
          Width = 569
          Height = 167
          Bands = <
            item
              Caption = 'Danh s'#225'ch h'#7885'c vi'#234'n tham gia'
            end>
          DefaultLayout = True
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alLeft
          TabOrder = 0
          OnDragOver = gridStudentDragOver
          DataSource = dsStudent
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          ShowBands = True
          object gridStudentEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n '
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n '
          end
          object gridStudentFULL_NAME: TdxDBGridPopupColumn
            Caption = 'H'#7885' v'#224' t'#234'n '
            HeaderAlignment = taCenter
            Width = 158
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            OnCloseUp = gridStudentFULL_NAMECloseUp
            OnInitPopup = gridStudentFULL_NAMEInitPopup
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n '
          end
          object gridStudentGENDER: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Gi'#7899'i t'#237'nh'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GENDER'
            Descriptions.WideStrings = (
              'N'#7919
              'Nam')
            Images = EmpInfoDM.imglGender
            ImageIndexes.WideStrings = (
              '0'
              '1')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
          end
          object gridStudentALLOWANCE: TdxDBGridCalcColumn
            Caption = 'T'#7893'ng chi ph'#237
            HeaderAlignment = taCenter
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWANCE'
            Caption_UTF7 = 'T+HtU-ng chi ph+AO0'
          end
          object gridStudentCURRENCY_NAME: TdxDBGridPopupColumn
            Caption = #272#417'n v'#7883' ti'#7873'n t'#7879
            HeaderAlignment = taCenter
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CURRENCY_NAME'
            OnCloseUp = gridStudentCURRENCY_NAMECloseUp
            OnInitPopup = gridStudentCURRENCY_NAMEInitPopup
            Caption_UTF7 = '+ARABoQ-n v+Hss ti+HsE-n t+Hsc'
          end
          object gridStudentRESULT_RESULT: TdxDBGridPopupColumn
            Alignment = taLeftJustify
            Caption = 'K'#7871't qu'#7843' '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            MinWidth = 16
            Visible = False
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RESULT_NAME'
            OnCloseUp = gridStudentRESULT_RESULTCloseUp
            OnInitPopup = gridStudentRESULT_RESULTInitPopup
            Caption_UTF7 = 'K+Hr8-t qu+HqM +AREA4A-o t+HqE-o'
          end
          object gridStudentFROM_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y b'#7855't '#273#7847'u kh'#243'a h'#7885'c'
            HeaderAlignment = taCenter
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FROM_DATE'
            Caption_UTF7 = 'Ng+AOA-y b+Hq8-t +AREepw-u kh+APM-a h+Hs0-c'
          end
          object gridStudentTO_DATE: TdxDBGridDateColumn
            Caption = 'Ng'#224'y k'#7871't th'#250'c kh'#243'a h'#7885'c'
            HeaderAlignment = taCenter
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TO_DATE'
            Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c kh+APM-a h+Hs0-c'
          end
          object gridStudentNGAY_HETHAN_CAMKET_LV: TdxDBGridDateColumn
            Caption = 'Ng'#224'y h'#7871't h'#7841'n cam k'#7871't LV sau '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NGAY_HETHAN_CAMKET_LV'
            Caption_UTF7 = 'Ng+AOA-y h+Hr8-t h+HqE-n cam k+Hr8-t LV sau +AREA4A-o t+HqE-o'
          end
          object gridStudentNOTE: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 150
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
        object ElSplitter2: TElSplitter
          Left = 569
          Top = 0
          Width = 8
          Height = 167
          Cursor = crHSplit
          SnapTopLeft = False
          SnapBottomRight = True
          ControlTopLeft = gridStudent
          ControlBottomRight = gridFee
          AutoHide = False
          ShowSnapButton = True
          Align = alLeft
          BevelOuter = bvLowered
          UseXPThemes = False
        end
        object gridFee: TdxDBGrid
          Left = 577
          Top = 0
          Width = 243
          Height = 167
          Bands = <
            item
              Caption = 'Chi ph'#237' chi ti'#7871't'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'FEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 2
          DataSource = dsStudenFee
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object gridFeeFEE_NAME: TdxDBGridColumn
            Caption = 'Kho'#7843'n m'#7909'c chi ph'#237
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FEE_NAME'
            Caption_UTF7 = 'Kho+HqM-n m+HuU-c chi ph+AO0'
          end
          object gridFeeTOTAL_VALUE: TdxDBGridCalcColumn
            Caption = 'Gi'#225' tr'#7883
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOTAL_VALUE'
            Caption_UTF7 = 'Gi+AOE tr+Hss'
          end
        end
      end
      object tabKetqua: TElTabSheet
        PageControl = pageMain
        ImageIndex = 1
        TabVisible = True
        Caption = 'K'#7871't qu'#7843' hu'#7845'n luy'#7879'n '#273#224'o t'#7841'o'
        Visible = False
        object gridResult: TdxDBGrid
          Left = 0
          Top = 0
          Width = 285
          Height = 167
          Bands = <
            item
              Caption = 'Danh s'#225'ch h'#7885'c vi'#234'n tham gia'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsResult
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowBands = True
          object dxDBGridColumn1: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n '
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n '
          end
          object dxDBGridPopupColumn1: TdxDBGridPopupColumn
            Caption = 'H'#7885' v'#224' t'#234'n '
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 157
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            OnCloseUp = gridStudentFULL_NAMECloseUp
            OnInitPopup = gridStudentFULL_NAMEInitPopup
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n '
          end
          object dxDBGridImageColumn1: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Gi'#7899'i t'#237'nh'
            Color = clInfoBk
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GENDER'
            Descriptions.WideStrings = (
              'N'#7919
              'Nam')
            Images = EmpInfoDM.imglGender
            ImageIndexes.WideStrings = (
              '0'
              '1')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
          end
          object dxDBGridCalcColumn1: TdxDBGridCalcColumn
            Caption = 'T'#7893'ng chi ph'#237
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 98
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALLOWANCE'
            Caption_UTF7 = 'T+HtU-ng chi ph+AO0'
          end
          object dxDBGridPopupColumn2: TdxDBGridPopupColumn
            Caption = #272#417'n v'#7883' ti'#7873'n t'#7879
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CURRENCY_NAME'
            OnCloseUp = gridStudentCURRENCY_NAMECloseUp
            OnInitPopup = gridStudentCURRENCY_NAMEInitPopup
            Caption_UTF7 = '+ARABoQ-n v+Hss ti+HsE-n t+Hsc'
          end
          object dxDBGridPopupColumn3: TdxDBGridPopupColumn
            Alignment = taLeftJustify
            Caption = 'K'#7871't qu'#7843' '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RESULT_NAME'
            OnCloseUp = gridStudentRESULT_RESULTCloseUp
            OnInitPopup = gridStudentRESULT_RESULTInitPopup
            Caption_UTF7 = 'K+Hr8-t qu+HqM +AREA4A-o t+HqE-o'
          end
          object dxDBGridColumn2: TdxDBGridColumn
            Caption = 'Ghi ch'#250
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        Caption = 'Panel1'
        ShowCaption = False
        Control = panelTop
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxlcMainItem3: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        ShowCaption = False
        Control = pageMain
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
        Caption = 'Tri'#7875'n khai k'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 75
    Top = 56
  end
  object qryTrainingPlan: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , PLAN_NAME'
      '     , CREATE_DATE'
      'FROM HR_TRAINING_PLAN '
      '')
    FieldOptions = []
    Left = 75
    Top = 91
    object qryTrainingPlanPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryTrainingPlanPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingPlanCREATE_DATE: TDateField
      FieldName = 'CREATE_DATE'
      Required = True
    end
  end
  object dsTrainingPlan: TDataSource
    DataSet = qryTrainingPlan
    Left = 75
    Top = 123
  end
  object qryClass: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'HR_TRAINING_CLASS.PLAN_NO'
      'HR_TRAINING_CLASS.CLASS_NO')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsTrainingPlan
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , CLASS_NO'
      '     , CLASS_CONTENT'
      '     , STUDENT_COUNT'
      '     , START_DATE'
      '     , END_DATE'
      '     , TG_CAMKET_LAMVIEC'
      '     , DV_CAMKET_LAMVIEC'
      'FROM HR_TRAINING_CLASS'
      
        '/*Left JOIN HR_EDU_FIELD on EDU_FIELD=HR_EDU_FIELD.EDU_FIELD_NO ' +
        '*/'
      'where PLAN_NO=:PLAN_NO')
    FieldOptions = []
    Left = 115
    Top = 91
    object qryClassPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryClassCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryClassSTUDENT_COUNT: TIntegerField
      FieldName = 'STUDENT_COUNT'
      Required = True
    end
    object qryClassSTART_DATE: TDateField
      FieldName = 'START_DATE'
      LookupResultField = 'END_DATE'
    end
    object qryClassEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object qryClassCLASS_CONTENT: TWideStringField
      FieldName = 'CLASS_CONTENT'
      Size = 3072
    end
    object qryClassTG_CAMKET_LAMVIEC: TIBOFloatField
      FieldName = 'TG_CAMKET_LAMVIEC'
    end
    object qryClassDV_CAMKET_LAMVIEC: TSmallintField
      FieldName = 'DV_CAMKET_LAMVIEC'
    end
  end
  object dsClass: TDataSource
    DataSet = qryClass
    Left = 115
    Top = 123
  end
  object qryStudent: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CLASS_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TRAINEE'
      'WHERE'
      '   CLASS_NO = :OLD_CLASS_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    EditSQL.Strings = (
      'UPDATE HR_TRAINEE SET'
      '   CLASS_NO = :CLASS_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   ALLOWANCE = :ALLOWANCE,'
      '   CURRENCY = :CURRENCY,'
      '   EDU_RESULT = :EDU_RESULT,'
      '   NOTE = :NOTE,'
      '   FROM_DATE = :FROM_DATE,'
      '   TO_DATE = :TO_DATE,'
      '   NGAY_HETHAN_CAMKET_LV = :NGAY_HETHAN_CAMKET_LV'
      'WHERE'
      '   CLASS_NO = :OLD_CLASS_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TRAINEE('
      '   CLASS_NO, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   PLAN_NO, /*PK*/'
      '   ALLOWANCE,'
      '   CURRENCY,'
      '   EDU_RESULT,'
      '   NOTE,'
      '   FROM_DATE,'
      '   TO_DATE,'
      '   NGAY_HETHAN_CAMKET_LV)'
      'VALUES ('
      '   :CLASS_NO,'
      '   :EMPLOYEE_NO,'
      '   :PLAN_NO,'
      '   :ALLOWANCE,'
      '   :CURRENCY,'
      '   :EDU_RESULT,'
      '   :NOTE,'
      '   :FROM_DATE,'
      '   :TO_DATE,'
      '   :NGAY_HETHAN_CAMKET_LV)')
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryStudentAfterPost
    OnNewRecord = qryStudentNewRecord
    DataSource = dsClass
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , CLASS_NO'
      '     , HR_TRAINEE.EMPLOYEE_NO'
      '     , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'||FIRST_NAME FULL_NAME'
      '     , GENDER'
      '     , ALLOWANCE'
      '     , CURRENCY'
      '     , CURRENCY_NAME'
      '     , EDU_RESULT'
      '     , RESULT_NAME'
      '     , NOTE'
      '     , FROM_DATE'
      '     , TO_DATE'
      '     , NGAY_HETHAN_CAMKET_LV'
      'FROM HR_TRAINEE'
      'JOIN HR_EMPLOYEE on '
      '  HR_TRAINEE.EMPLOYEE_NO=HR_EMPLOYEE.EMPLOYEE_NO'
      'LEFT JOIN HR_CURRENCY on'
      '  HR_TRAINEE.CURRENCY=HR_CURRENCY.CURRENCY_NO'
      'LEFT JOIN HR_TRAINING_RESULT ON RESULT_NO=EDU_RESULT'
      'where PLAN_NO=:PLAN_NO and'
      '      CLASS_NO=:CLASS_NO')
    FieldOptions = []
    Left = 163
    Top = 91
    object qryStudentPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryStudentCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryStudentEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryStudentFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryStudentGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryStudentALLOWANCE: TIBOFloatField
      FieldName = 'ALLOWANCE'
    end
    object qryStudentCURRENCY: TWideStringField
      FieldName = 'CURRENCY'
      Size = 30
    end
    object qryStudentCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
    object qryStudentEDU_RESULT: TWideStringField
      FieldName = 'EDU_RESULT'
      Size = 30
    end
    object qryStudentNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
    object qryStudentRESULT_NAME: TWideStringField
      FieldName = 'RESULT_NAME'
      Size = 126
    end
    object qryStudentFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
      Required = True
    end
    object qryStudentTO_DATE: TDateField
      FieldName = 'TO_DATE'
      OnChange = qryStudentTO_DATEChange
    end
    object qryStudentNGAY_HETHAN_CAMKET_LV: TDateField
      FieldName = 'NGAY_HETHAN_CAMKET_LV'
    end
  end
  object dsStudent: TDataSource
    DataSet = qryStudent
    Left = 163
    Top = 123
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 80
    Top = 264
    object acPhatsinh: TAction
      Caption = 'acPhatsinh'
      ImageIndex = 58
      OnExecute = acPhatsinhExecute
      OnUpdate = acPhatsinhUpdate
    end
    object acCapnhatChiphi: TAction
      Caption = 'acCapnhatChiphi'
      ImageIndex = 19
      OnExecute = acCapnhatChiphiExecute
      OnUpdate = acCapnhatChiphiUpdate
    end
    object acChonNhanhNV: TAction
      Caption = 'acChonNhanhNV'
      ImageIndex = 54
      OnExecute = acChonNhanhNVExecute
      OnUpdate = acChonNhanhNVUpdate
    end
    object acGetSelectedEmployee: TAction
      Caption = 'acGetSelectedEmployee'
      OnExecute = acGetSelectedEmployeeExecute
    end
  end
  object qryStudentFee: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'PLAN_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CLASS_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_TRAINEE_FEE SET'
      '   CLASS_NO = :CLASS_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   FEE_NO = :FEE_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   TOTAL_VALUE = :TOTAL_VALUE'
      'WHERE'
      '   CLASS_NO = :OLD_CLASS_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   FEE_NO = :OLD_FEE_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryStudentFeeNewRecord
    DataSource = dsStudent
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , CLASS_NO'
      '     , EMPLOYEE_NO'
      '     , HR_TRAINEE_FEE.FEE_NO'
      '     , FEE_NAME'
      '     , TOTAL_VALUE'
      'FROM HR_TRAINEE_FEE'
      
        'JOIN HR_TRAINING_FEE on HR_TRAINEE_FEE.FEE_NO=HR_TRAINING_FEE.FE' +
        'E_NO'
      'where PLAN_NO=:PLAN_NO and'
      '      CLASS_NO=:CLASS_NO and'
      '      EMPLOYEE_NO=:EMPLOYEE_NO')
    FieldOptions = []
    Left = 147
    Top = 240
    object qryStudentFeePLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryStudentFeeCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryStudentFeeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryStudentFeeFEE_NO: TWideStringField
      FieldName = 'FEE_NO'
      Required = True
      Size = 30
    end
    object qryStudentFeeTOTAL_VALUE: TIBOFloatField
      FieldName = 'TOTAL_VALUE'
    end
    object qryStudentFeeFEE_NAME: TWideStringField
      FieldName = 'FEE_NAME'
      Required = True
      Size = 126
    end
  end
  object dsStudenFee: TDataSource
    DataSet = qryStudentFee
    Left = 147
    Top = 267
  end
  object ImageList1: TImageList
    Left = 186
    Top = 200
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      000000000000000000000000000000000000000000003366CC003366CC003366
      CC003366CC003399CC006666CC003399CC003399CC003399CC006699CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008A7A5800F6DCA400F5D89A00F4D186008A7A
      5800EAA81D00E8A30E0000000000000000000000000033CCCC0033CCFF0033CC
      FF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF000099CC003366CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000053B6F60053B6F600000000008A7A5800FAEAC800F9E5BC00F6DCA4008A7A
      5800ECB23600E8A4110000000000000000000000000066CCFF0033CCFF0033CC
      FF0033CCFF003399CC0033CCCC0033CCFF000099CC0066CCFF003366CC0033FF
      3300CCFFCC008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6C00000000006C6C
      6C0053B6F60053B6F6001A1A1A005F5B54008A7A58008A7A58008A7A58008A7A
      58008A7A58008A7A580000000000000000000000000066CCFF0066CCFF0066CC
      FF000099CC0066CCFF00336699000099CC0066CCCC0066CCFF003366CC0033FF
      3300CCFFCC003399330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6C0000000000B1CCDC008CCE
      FB0053B6F6001B9EF7000E86D800031D2E005F5B5400FDF5E500FAEAC8008A7A
      5800EEBB4E00EAA81D0000000000000000000000000099CCFF0099CCFF003399
      CC0066CCFF0066CCFF006699CC006699CC0033666600666699003399CC0033CC
      3300CCFFCC0033CC330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00CDEAFC006C6C
      6C00000000006C6C6C001199F7000F8FE80011191F0000000000000000000000
      0000000000000000000000000000000000000000000099CCFF003399CC0066CC
      FF0066CCFF0066CCFF0066CCCC0099CCCC0066CCFF000066CC00336666003399
      3300C0DCC00033CC330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001199F7001199F7000000000000000000000000000000
      0000000000000000000000000000000000000000000066CCCC0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF003366990066CCFF00CCFFFF000099CC003366
      66009999990033CC330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6C000000
      0000000000006C6C6C001199F7001199F7000000000000000000000000000000
      00000000000000000000000000000000000000000000CCFFFF00F0FBFF00CCFF
      FF00CCFFFF00F0FBFF00CCFFFF00CCFFFF0099CCCC0033CCFF00CCFFFF003399
      FF00424242003399330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000232424006C6C6C008CCE
      FB0053B6F6001B9EF7001199F700000000006C6C6C0000000000000000000000
      0000000000000000000000000000000000000000000099996600DDDDDD00CC99
      6600CC9966009966660099336600FF669900FF9999008686860033CCFF00CCCC
      CC00CCFFFF004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6C006C6C6C00CDEAFC008CCE
      FB000000000000000000063D63000000000000000000000000008CCEFB003FAD
      F9001199F7001199F70000000000000000000000000000000000999966006666
      6600777777004D4D4D00A4A0A000CC99CC00CC999900F0CAA600999999006666
      66008686860099CCFF0000333300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFEFF00CDEAFC006992
      AB00000000000000000000000000000000000000000000000000A8DAFC006FC2
      FA004CB3F9004CB3F90000000000000000000000000000000000000000000000
      00000000000000000000A4A0A000A4A0A00086868600A4A0A0003399330033FF
      330099CCCC00C6D6EF006699FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBEBF00CDEAFC008CCE
      FB0053B6F6001B9EF7001199F7000A609A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC993300CCCC
      660066663300000000000000000000000000000000000000000033663300EAEA
      EA0033CC330033669900D6E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A0070828D0085C2
      E80053B6F60053B6F6000A5C940002131F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCC9900F0CA
      A600CC9933000000000099666600FF999900CC66660000000000000000003366
      3300339933000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002324
      240053B6F60053B6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666006666
      3300000000000000000055555500E3E3E300FF99990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000555555009966660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F001801F00000000
      E001801F00000000E00180030000000080018003000000000001800300000000
      0001800300000000087F800300000000C07F8003000000008001800300000000
      0181C001000000000001FC01000000000001C7C10000000080FFC46700000000
      C1FFCC7F00000000E1FFFE7F0000000000000000000000000000000000000000
      000000000000}
  end
  object qryResult: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PLAN_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASS_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    EditSQL.Strings = (
      'UPDATE HR_TRAINEE SET'
      '   CLASS_NO = :CLASS_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   PLAN_NO = :PLAN_NO, /*PK*/'
      '   ALLOWANCE = :ALLOWANCE,'
      '   CURRENCY = :CURRENCY,'
      '   EDU_RESULT = :EDU_RESULT,'
      '   NOTE = :NOTE'
      'WHERE'
      '   CLASS_NO = :OLD_CLASS_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   PLAN_NO = :OLD_PLAN_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsClass
    SQL.Strings = (
      'SELECT PLAN_NO'
      '     , CLASS_NO'
      '     , HR_TRAINEE.EMPLOYEE_NO'
      '     , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'||FIRST_NAME FULL_NAME'
      '     , GENDER'
      '     , ALLOWANCE'
      '     , CURRENCY'
      '     , CURRENCY_NAME'
      '     , EDU_RESULT'
      '     , RESULT_NAME'
      '     , NOTE'
      'FROM HR_TRAINEE'
      'JOIN HR_EMPLOYEE on '
      '  HR_TRAINEE.EMPLOYEE_NO=HR_EMPLOYEE.EMPLOYEE_NO'
      'LEFT JOIN HR_CURRENCY on'
      '  CURRENCY=HR_CURRENCY.CURRENCY_NO'
      'LEFT JOIN HR_TRAINING_RESULT ON RESULT_NO=EDU_RESULT'
      'where PLAN_NO=:PLAN_NO and'
      '      CLASS_NO=:CLASS_NO')
    FieldOptions = []
    Left = 203
    Top = 91
    object qryResultPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryResultCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryResultEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryResultFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryResultGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryResultALLOWANCE: TIBOFloatField
      FieldName = 'ALLOWANCE'
    end
    object qryResultCURRENCY: TWideStringField
      FieldName = 'CURRENCY'
      Size = 30
    end
    object qryResultCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 63
    end
    object qryResultEDU_RESULT: TWideStringField
      FieldName = 'EDU_RESULT'
      Size = 30
    end
    object qryResultRESULT_NAME: TWideStringField
      FieldName = 'RESULT_NAME'
      Size = 126
    end
    object qryResultNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsResult: TDataSource
    DataSet = qryResult
    Left = 203
    Top = 123
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 219
    Top = 248
  end
end
