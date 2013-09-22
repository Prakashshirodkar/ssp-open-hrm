inherited frmTrainingBudget: TfrmTrainingBudget
  Left = 220
  Top = 232
  Width = 719
  Height = 489
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 436
    Width = 711
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 711
    Height = 436
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    inline frameDateTime1: TframeDateTime
      Left = 14
      Top = 28
      Width = 463
      Height = 29
      Color = 15466238
      ParentColor = False
      TabOrder = 1
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 463
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 477
      Top = 28
      Width = 100
      Height = 25
      Cursor = crDefault
      ImageIndex = 62
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem d'#7919' li'#7879'u'
      TabOrder = 0
      Color = 15466238
      ParentColor = False
      Action = acXemdulieu
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pageData: TElPageControl
      Left = 14
      Top = 90
      Width = 289
      Height = 193
      BorderWidth = 0
      Color = 14869233
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
      Multiline = False
      OnChanging = pageDataChanging
      RaggedRight = False
      ScrollOpposite = False
      ShowBorder = False
      Style = etsAngledTabs
      TabIndex = 3
      TabPosition = etpBottom
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabNoidungDaotao
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      ParentShowHint = False
      TabOrder = 5
      ShowHint = True
      object tabData: TElTabSheet
        PageControl = pageData
        ImageIndex = 3
        TabVisible = True
        Caption = 'D'#7919' li'#7879'u t'#7893'ng h'#7907'p'
        Visible = False
        object Label1: TLabel
          Left = 176
          Top = 96
          Width = 31
          Height = 13
          Caption = 'Label1'
        end
        object gridData: TdxDBGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 165
          Bands = <
            item
              Caption = 'Danh s'#225'ch h'#7885'c vi'#234'n'
              Fixed = bfLeft
              Width = 256
            end
            item
              Caption = 'N'#7897'i dung / chi ph'#237' '#273#224'o t'#7841'o'
            end
            item
              Caption = 'K'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'EMPLOYEE_NO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = dsData
          Filter.Active = True
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          ShowBands = True
          object gridDataEMPLOYEE_NO: TdxDBGridColumn
            Caption = 'M'#227' nh'#226'n vi'#234'n'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMPLOYEE_NO'
            Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
          end
          object gridDataFULL_NAME: TdxDBGridColumn
            Caption = 'H'#7885' v'#224' t'#234'n'
            Color = clInfoBk
            HeaderAlignment = taCenter
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FULL_NAME'
            Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n'
          end
          object gridDataGENDER: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Gi'#7899'i t'#237'nh'
            Color = clInfoBk
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GENDER'
            Descriptions.WideStrings = (
              'N'#7919
              'Nam')
            Images = dmMain.imglGender
            ImageIndexes.WideStrings = (
              '0'
              '1')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            Caption_UTF7 = 'Gi+Hts-i t+AO0-nh'
          end
          object gridDataCLASS_CODE: TdxDBGridColumn
            Caption = 'K'#253' hi'#7879'u l'#7899'p'
            Color = clInactiveCaptionText
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CLASS_CODE'
            Caption_UTF7 = 'K+AP0 hi+Hsc-u l+Hts-p'
          end
          object gridDataCLASS_CONTENT: TdxDBGridColumn
            Caption = 'N'#7897'i dung '#273#224'o t'#7841'o'
            Color = clInactiveCaptionText
            HeaderAlignment = taCenter
            Width = 148
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CLASS_CONTENT'
            Caption_UTF7 = 'N+Htk-i dung +AREA4A-o t+HqE-o'
          end
          object gridDataALLOWANCE: TdxDBGridColumn
            Caption = 'Chi ph'#237' '#273#224'o t'#7841'o'
            Width = 108
            BandIndex = 1
            RowIndex = 0
            FieldName = 'ALLOWANCE'
            Caption_UTF7 = 'Chi ph+AO0 +AREA4A-o t+HqE-o'
          end
          object gridDataEDU_RESULT: TdxDBGridColumn
            Caption = 'K'#7871't qu'#7843
            Color = 14081788
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 1
            RowIndex = 0
            FieldName = 'EDU_RESULT'
            Caption_UTF7 = 'K+Hr8-t qu+HqM'
          end
          object gridDataEDU_FIELD_NAME: TdxDBGridColumn
            Caption = 'Chuy'#234'n m'#244'n '#273#224'o t'#7841'o'
            Color = 15531753
            HeaderAlignment = taCenter
            Width = 146
            BandIndex = 1
            RowIndex = 0
            FieldName = 'EDU_FIELD_NAME'
            Caption_UTF7 = 'Chuy+AOo-n m+APQ-n +AREA4A-o t+HqE-o'
          end
          object gridDataFIELD_LEVEL_NAME: TdxDBGridColumn
            Caption = 'Tr'#236'nh '#273#7897' '#273#224'o t'#7841'o t'#432#417'ng '#7913'ng '
            Color = 15531753
            HeaderAlignment = taCenter
            Width = 169
            BandIndex = 1
            RowIndex = 0
            FieldName = 'FIELD_LEVEL_NAME'
            Caption_UTF7 = 'Tr+AOw-nh +AREe2Q +AREA4A-o t+HqE-o t+AbABoQ-ng +Huk-ng '
          end
          object gridDataFROM_DATE: TdxDBGridDateColumn
            Caption = 'T'#7915' ng'#224'y'
            Color = 15531753
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'FROM_DATE'
            Caption_UTF7 = 'T+Hus ng+AOA-y'
          end
          object gridDataTO_DATE: TdxDBGridDateColumn
            Caption = #272#7871'n ng'#224'y'
            Color = 15531753
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TO_DATE'
            Caption_UTF7 = '+ARAevw-n ng+AOA-y'
          end
          object gridDataTEACHER: TdxDBGridColumn
            Caption = 'Gi'#225'o vi'#234'n'
            Color = 15531753
            HeaderAlignment = taCenter
            Width = 145
            BandIndex = 1
            RowIndex = 0
            FieldName = 'TEACHER'
            Caption_UTF7 = 'Gi+AOE-o vi+AOo-n'
          end
          object gridDataCOST: TdxDBGridColumn
            Caption = 'T'#7893'ng chi ph'#237' kh'#243'a h'#7885'c'
            Width = 135
            BandIndex = 1
            RowIndex = 0
            FieldName = 'COST'
            Caption_UTF7 = 'T+HtU-ng chi ph+AO0 kh+APM-a h+Hs0-c'
          end
          object gridDataIS_PLANNED: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = 'Ph'#226'n lo'#7841'i'
            Color = 15531753
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 120
            BandIndex = 1
            RowIndex = 0
            FieldName = 'IS_PLANNED'
            Descriptions.WideStrings = (
              #272#224'o t'#7841'o m'#7903' r'#7897'ng'
              #272#224'o t'#7841'o theo quy ch'#7871)
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
          end
          object gridDataPLAN_NO: TdxDBGridColumn
            Caption = 'M'#227' k'#7871' ho'#7841'ch'
            HeaderAlignment = taCenter
            Width = 95
            BandIndex = 2
            RowIndex = 0
            FieldName = 'PLAN_NO'
            Caption_UTF7 = 'M+AOM k+Hr8 ho+HqE-ch'
          end
          object gridDataPLAN_NAME: TdxDBGridColumn
            Caption = 'Theo k'#7871' ho'#7841'ch '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            Width = 169
            BandIndex = 2
            RowIndex = 0
            FieldName = 'PLAN_NAME'
            Caption_UTF7 = 'Theo k+Hr8 ho+HqE-ch +AREA4A-o t+HqE-o'
          end
          object gridDataSOURCE_NAME: TdxDBGridColumn
            Caption = 'Ngu'#7891'n kinh ph'#237' '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            Width = 143
            BandIndex = 2
            RowIndex = 0
            FieldName = 'SOURCE_NAME'
            Caption_UTF7 = 'Ngu+HtM-n kinh ph+AO0 +AREA4A-o t+HqE-o'
          end
          object gridDataFORM_NAME: TdxDBGridColumn
            Caption = 'H'#236'nh th'#7913'c '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            Width = 142
            BandIndex = 2
            RowIndex = 0
            FieldName = 'FORM_NAME'
            Caption_UTF7 = 'H+AOw-nh th+Huk-c +AREA4A-o t+HqE-o'
          end
          object gridDataTYPE_NAME: TdxDBGridColumn
            Caption = 'Lo'#7841'i h'#236'nh '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            Width = 143
            BandIndex = 2
            RowIndex = 0
            FieldName = 'TYPE_NAME'
            Caption_UTF7 = 'Lo+HqE-i h+AOw-nh +AREA4A-o t+HqE-o'
          end
          object gridDataSUPPLY_NAME: TdxDBGridColumn
            Caption = 'Ngu'#7891'n '#273#224'o t'#7841'o'
            HeaderAlignment = taCenter
            Width = 116
            BandIndex = 2
            RowIndex = 0
            FieldName = 'SUPPLY_NAME'
            Caption_UTF7 = 'Ngu+HtM-n +AREA4A-o t+HqE-o'
          end
        end
      end
      object tabSoluong: TElTabSheet
        PageControl = pageData
        ImageIndex = 8
        TabVisible = True
        Caption = 'Bi'#7875'u '#273#7891' chi ph'#237' '#273#224'o t'#7841'o h'#224'ng th'#225'ng'
        Visible = False
        object chartTrainCost: TDBChart
          Left = 0
          Top = 0
          Width = 257
          Height = 165
          BackWall.Color = 16773087
          BackWall.Transparent = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Title.Text.WideStrings = (
            'BI'#7874'U '#272#7890' TH'#7888'NG K'#202' CHI PH'#205' '#272#192'O T'#7840'O THEO T'#7914'NG TH'#193'NG')
          BottomAxis.LabelsFont.Charset = ANSI_CHARSET
          BottomAxis.LabelsFont.Name = 'Verdana'
          BottomAxis.Title.Caption = 'TH'#193'NG'
          BottomAxis.Title.Font.Color = clBlue
          BottomAxis.Title.Font.Style = [fsBold]
          LeftAxis.Title.Caption = 'T'#7893'ng chi ph'#237
          LeftAxis.Title.Font.Color = clBlue
          RightAxis.Title.Angle = 0
          Align = alClient
          Color = 14935280
          TabOrder = 0
          AutoSize = True
          object Series1: TBarSeries
            Depth = 4
            Marks.ArrowLength = 8
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Length = 8
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = memTrainCost
            SeriesColor = 6460927
            ShowInLegend = False
            XLabelsSource = 'MONTH_YEAR'
            AutoMarkPosition = False
            BarWidthPercent = 50
            Gradient.Direction = gdTopBottom
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.ValueSource = 'COST'
          end
        end
        object TeeCommander1: TTeeCommander
          Left = 257
          Top = 0
          Width = 32
          Height = 165
          Panel = chartTrainCost
          Vertical = True
          Align = alRight
          BevelInner = bvLowered
          ParentShowHint = False
          TabOrder = 1
        end
      end
      object tabKetqua: TElTabSheet
        PageControl = pageData
        ImageIndex = 4
        TabVisible = True
        Caption = 'Th'#7889'ng k'#234' hi'#7879'u qu'#7843' '#273#224'o t'#7841'o'
        Visible = False
        object chartTrainResult: TDBChart
          Left = 0
          Top = 0
          Width = 257
          Height = 165
          BackWall.Color = 16773087
          BackWall.Transparent = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Title.Text.WideStrings = (
            'BI'#7874'U '#272#7890' TH'#7888'NG HI'#7878'U QU'#7842' '#272#7846'U T'#431' '#272#192'O T'#7840'O')
          BottomAxis.LabelsAlign = alOpposite
          BottomAxis.LabelsFont.Charset = ANSI_CHARSET
          BottomAxis.LabelsFont.Name = 'Verdana'
          BottomAxis.Title.Font.Color = clBlue
          BottomAxis.Title.Font.Style = [fsBold]
          LeftAxis.Title.Caption = 'K'#7871't qu'#7843' '#273#224'o t'#7841'o'
          LeftAxis.Title.Font.Color = clBlue
          Legend.Font.Charset = ANSI_CHARSET
          Legend.Font.Name = 'Verdana'
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          Align = alClient
          Color = 14935280
          TabOrder = 0
          AutoSize = True
          object BarSeries1: THorizBarSeries
            ColorEachPoint = True
            Marks.Angle = 360
            Marks.ArrowLength = 8
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Length = 8
            Marks.Style = smsPercent
            Marks.Visible = True
            DataSource = memTrainResult
            SeriesColor = 4227327
            ShowInLegend = False
            XLabelsSource = 'RESULT_NAME'
            BarStyle = bsArrow
            Gradient.Direction = gdLeftRight
            XValues.Name = 'Bar'
            XValues.ValueSource = 'COST'
            YValues.Name = 'Y'
            YValues.Order = loAscending
          end
        end
        object TeeCommander2: TTeeCommander
          Left = 257
          Top = 0
          Width = 32
          Height = 165
          Panel = chartTrainResult
          Vertical = True
          Align = alRight
          BevelInner = bvLowered
          ParentShowHint = False
          TabOrder = 1
        end
      end
      object tabNoidungDaotao: TElTabSheet
        PageControl = pageData
        ImageIndex = 5
        TabVisible = True
        Caption = 'Th'#7889'ng k'#234' theo n'#7897'i dung '#273#224'o t'#7841'o'
        object TeeCommander3: TTeeCommander
          Left = 257
          Top = 0
          Width = 32
          Height = 165
          Panel = chartTrainClass
          Vertical = True
          Align = alRight
          BevelInner = bvLowered
          ParentShowHint = False
          TabOrder = 0
        end
        object chartTrainClass: TDBChart
          Left = 0
          Top = 0
          Width = 257
          Height = 165
          BackWall.Color = 16773087
          BackWall.Transparent = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Title.Text.WideStrings = (
            'BI'#7874'U '#272#7890' TH'#7888'NG K'#202' CHI PH'#205' '#272#7846'U T'#431' THEO N'#7896'I DUNG '#272#192'O T'#7840'O')
          BottomAxis.LabelsFont.Charset = ANSI_CHARSET
          BottomAxis.LabelsFont.Name = 'Verdana'
          Align = alClient
          Color = 14935280
          TabOrder = 1
          AutoSize = True
          object BarSeries2: TBarSeries
            ColorEachPoint = True
            Depth = 4
            Marks.ArrowLength = 8
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Length = 8
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = memTrainContent
            SeriesColor = 6460927
            ShowInLegend = False
            XLabelsSource = 'CONTENT'
            AutoMarkPosition = False
            BarWidthPercent = 50
            Gradient.Direction = gdTopBottom
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.ValueSource = 'COST'
          end
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Control = frameDateTime1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'D'#7918' LI'#7878'U T'#7892'NG H'#7906'P CHI PH'#205' - NG'#194'N S'#193'CH '#272#192'O T'#7840'O NH'#194'N VI'#202'N'
        CaptionOptions.AlignHorz = taCenter
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'ElPageControl1'
          ShowCaption = False
          Control = pageData
          ControlOptions.ShowBorder = False
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
        Caption = 'Th'#7889'ng k'#234' chi ph'#237' - ng'#226'n s'#225'ch '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 632
    Top = 8
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 576
    Top = 32
  end
  object qryData: TIBOQuery
    Params = <
      item
        DataType = ftDate
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_TRAINEE.PLAN_NO'
      '     , HR_TRAINEE.CLASS_NO'
      '     , HR_TRAINEE.EMPLOYEE_NO'
      '     , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'||FIRST_NAME FULL_NAME'
      '     , GENDER'
      '     , HR_TRAINEE.ALLOWANCE'
      '     , RESULT_NAME EDU_RESULT'
      '     , HR_TRAINEE.FROM_DATE'
      '     , HR_TRAINEE.TO_DATE'
      '     , HR_TRAINING_PLAN.PLAN_NAME'
      '     , SOURCE_NAME'
      '     , FORM_NAME'
      '     , TYPE_NAME'
      '     , SUPPLY_NAME'
      '     , HR_TRAINING_CLASS.CLASS_CODE'
      '     , EDU_FIELD_NAME'
      '     , FIELD_LEVEL_NAME'
      '     , COST'
      '     , CLASS_CONTENT'
      '     , IS_PLANNED'
      'FROM HR_TRAINEE'
      'LEFT JOIN HR_TRAINING_CLASS on '
      '  HR_TRAINEE.PLAN_NO=HR_TRAINING_CLASS.PLAN_NO and'
      '  HR_TRAINEE.CLASS_NO=HR_TRAINING_CLASS.CLASS_NO'
      'LEFT JOIN HR_TRAINING_PLAN on'
      '  HR_TRAINEE.PLAN_NO=HR_TRAINING_PLAN.PLAN_NO '
      'LEFT JOIN HR_TRAINING_TYPE on PLAN_TYPE=TYPE_NO'
      'LEFT JOIN HR_TRAINING_FORM on PLAN_FORM=FORM_NO'
      'LEFT JOIN HR_TRAINING_SOURCE on PLAN_SOURCE=SOURCE_NO'
      'LEFT JOIN HR_TRAINING_SUPPLY on PLAN_SUPPLY=SUPPLY_NO'
      'left JOIN HR_EDU_FIELD on EDU_FIELD=HR_EDU_FIELD.EDU_FIELD_NO'
      'left JOIN HR_FIELD_LEVEL on'
      '  EDU_FIELD=HR_FIELD_LEVEL.EDU_FIELD_NO and'
      '  LEVEL_RESULT=HR_FIELD_LEVEL.FIELD_LEVEL_NO'
      'LEFT JOIN HR_CURRENCY on HR_TRAINING_CLASS.CURRENCY=CURRENCY_NO'
      'left JOIN HR_EMPLOYEE on '
      '  HR_TRAINEE.EMPLOYEE_NO=HR_EMPLOYEE.EMPLOYEE_NO'
      'LEFT JOIN HR_TRAINING_RESULT on EDU_RESULT=RESULT_NO'
      'where FROM_DATE between :FROM_DATE and:TO_DATE '
      'order by FROM_DATE')
    FieldOptions = []
    Left = 576
    object qryDataPLAN_NO: TWideStringField
      FieldName = 'PLAN_NO'
      Required = True
      Size = 30
    end
    object qryDataCLASS_NO: TWideStringField
      FieldName = 'CLASS_NO'
      Required = True
      Size = 30
    end
    object qryDataEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryDataFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryDataGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryDataALLOWANCE: TIBOFloatField
      FieldName = 'ALLOWANCE'
    end
    object qryDataEDU_RESULT: TWideStringField
      FieldName = 'EDU_RESULT'
      Size = 126
    end
    object qryDataFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
    end
    object qryDataTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
    object qryDataPLAN_NAME: TWideStringField
      FieldName = 'PLAN_NAME'
      Size = 126
    end
    object qryDataSOURCE_NAME: TWideStringField
      FieldName = 'SOURCE_NAME'
      Size = 126
    end
    object qryDataFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Size = 126
    end
    object qryDataTYPE_NAME: TWideStringField
      FieldName = 'TYPE_NAME'
      Size = 126
    end
    object qryDataSUPPLY_NAME: TWideStringField
      FieldName = 'SUPPLY_NAME'
      Size = 126
    end
    object qryDataCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
    object qryDataEDU_FIELD_NAME: TWideStringField
      FieldName = 'EDU_FIELD_NAME'
      Size = 30
    end
    object qryDataFIELD_LEVEL_NAME: TWideStringField
      FieldName = 'FIELD_LEVEL_NAME'
      Size = 126
    end
    object qryDataCOST: TIBOFloatField
      FieldName = 'COST'
    end
    object qryDataCLASS_CONTENT: TWideStringField
      FieldName = 'CLASS_CONTENT'
      Size = 3072
    end
    object qryDataIS_PLANNED: TIntegerField
      FieldName = 'IS_PLANNED'
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 16
    Top = 8
    object acXemdulieu: TAction
      Caption = 'acXemdulieu'
      ImageIndex = 62
      OnExecute = acXemdulieuExecute
    end
    object acInitTrainCost: TAction
      Caption = 'acInitTrainCost'
      OnExecute = acInitTrainCostExecute
    end
    object acInitTrainResult: TAction
      Caption = 'acInitTrainResult'
      OnExecute = acInitTrainResultExecute
    end
    object acInitTrainContent: TAction
      Caption = 'acInitTrainContent'
      OnExecute = acInitTrainContentExecute
    end
  end
  object ImageList1: TImageList
    Height = 20
    Width = 20
    Left = 48
    Top = 8
    Bitmap = {
      494C010109000E00040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000005000000001002000000000000064
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
      00000000000000000000000000000000000000000000C1B5B3FFC6968AFFC899
      8EFFC89A90FFC89B91FFC89B93FFC89C95FFC89C96FFC89D96FFC89D96FFC89D
      96FFC89D96FFC89D96FFC89D96FFC89D96FFC79992FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD9F97FFFFCDB0FFFFF6E8FFFFF7
      ECFFEECEBEFFE5C2B4FFE7C6BAFFE8C9BEFFE8C9BFFFE9CABFFFEACBC0FFEACC
      C1FFEBCEC2FFECCFC3FFECD0C4FFEDD0C3FFEACDC0FFEECEBFFFEDCBBBFFE8E6
      E5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC998EFFFFCEB2FFFFF7EBFFFFF7
      ECFFCC9A8AFFE6C6B0FFE7C7B1FFE8C9B5FFE8CAB6FFE9CCB9FFEACDBAFFEACF
      BDFFEBD1C0FFECD2C2FFECD4C5FFEDD5C6FFEED8C9FFEFDBCEFFF0DCCFFFE7C2
      AEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9B8FFFFFD3BAFFFFF9F1FFEFD5
      CAFFFFEFD4FFFFEED5FFFFEED9FFFFF1DCFFFFF0DEFFFFF3E0FFFFF4E3FFFFF5
      E7FFFFF5EAFFFFF7EAFFFFF7EFFFFFF9F1FFFFF9F4FFFFFCF8FFFFFCF9FFE5C4
      B0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9C91FFFFD8C4FFF7E7DFFFD0A2
      92FFFFEFD6FFFFF0D9FFFFF1DDFFF2E2D2FFEAD9CAFFF1E2D4FFFFF5E7FFFFF6
      EAFFF4E9E0FFD4C0BAFFCFBBB6FFF8F2EBFFFFFCF8FFFFFCFCFFFFFFFFFFEDEC
      EBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9D92FFFFDBC8FFE9CEC5FFDFBA
      A5FFFFF0DAFFFFF1DAFFFFF2DFFF794849FF6A3538FF9F7A77FFFFFAEDFFF2E6
      DDFF683235FF6B3739FF6B3739FF744344FFFFFFFCFFFFFFFFFFF5E4DAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9E93FFFFE1D1FFD6AB9BFFF5E1
      CCFFFFF0DEFFFFF2DEFFFFF6E5FF6B373AFF6F3C3EFFDBC9C1FFFFFBEFFF713D
      40FF7B4B4CFFB89D9CFF6F3B3DFF6E3B3DFFFFFFFFFFF8F0EBFFEFCFBCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9D95FFFFE3D4FFCE9F8DFFFCED
      D9FFFFF2DEFFFFF3E1FFFFF7E8FF6C393BFF6F3B3DFFE9DBD3FFFFF9F0FFDCCB
      C7FFDACBC8FFD2C0BDFF6F3C3EFF6C3638FFFFFFFFFFF2E1D5FFF6E0D2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9F96FFFFEADEFFE4C6B2FFFFF3
      E1FFFFF2E3FFFFF3E5FFF4E7DBFF6E3B3DFF6D393BFFFFFDF5FFFFFAF3FFFFFF
      FDFFE4D9D7FF7B4B4CFF6C383AFFC7B3B4FFFFFFFFFFEFCBB4FFEFEDECFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBA098FFFFF1E7FFFAECDBFFFFF4
      E4FFFFF5E7FFFFF6E8FF6C383AFF6F3B3DFF693436FFFFFAF5FFFFFFFBFF6C38
      3AFF6E3B3DFF6E3A3CFF673133FFE0D5D5FFFFFFFFFFCDBBB0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBA198FFFEF1E9FFFFF7E7FFFFF5
      E6FFFFF6E9FFF0E4DAFF845657FF845758FF885D5EFFFFFAF7FFFFFDFAFF865C
      5EFF6D383AFF754446FFCEBCBDFFFFFFFFFFFFFFFFFFE0D6CFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBA19AFFFAEFE8FFFFF8EAFFFFF5
      EAFFFFF6EDFFFFF8EFFFFFFBF3FFFFFCF7FFFFFDF8FFFFFDFBFFFFFEFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EFEDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBA29BFFF6EAE4FFFFF8ECFFFFF7
      EAFFFFF7EFFFFFFDF5FFFFFEF8FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCA59DFFF6ECE8FFFFFAF0FFFFF7
      EEFFFFFFF8FF8F6666FF825657FFB49A9AFF8C6365FFBAA2A3FF815456FF8C62
      64FFDFD3D4FFAB8E8FFF9B7779FFCEBCBDFFFEFEFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1AAA1FFF6EEEBFFFFFCF6FFFFFB
      F4FFFFFFFFFF7F5252FFD1C1C0FFCCBABBFFE0D5D6FFF5F2F2FFDCD0D2FFECE6
      E6FFEDE7E7FFB29898FFD9CCCDFFFDFCFCFFFDFAF8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3A79BFFF7D2C3FFFFDFCEFFFFDE
      CEFFFFE4D6FFD7B7AEFFF7DED4FFF1DAD2FFFFF0E7FFFFF0E9FFFFF3EDFFFFF4
      EFFFFFF9F5FFE7D8D5FFFFFDFAFFFFFCFAFFFEFAF7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A5E5DFFAE5E59FFAD4F4CFFAD50
      4DFFAE5552FFAF5754FFAF5D59FFB1625FFFB26462FFB46B68FFB56F6CFFB976
      74FFBC7E7CFFBD8280FFC18B89FFC28F8DFFC69998FFC29A99FFD5D2D2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A05854FFE18073FFDF6158FFDF63
      5CFFE16D66FFE4746CFFE67E77FFE88881FFE98C86FFEB9690FFEC9B96FFEDA5
      A1FFEFAFABFFF0B4B0FFF2BEBAFFF3C3C0FFF5CDCBFFDEB8B6FFBEBABAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A05854FFDF7E72FFDD5F57FFDD61
      5AFFDF6B64FFE1716AFFE37B74FFE5857EFFE68982FFE8938CFFE99792FFEBA2
      9EFFEDACA8FFEEB1ADFFF0BBB7FFF1C0BDFFF3CAC8FFE4BEBDFFBDB8B8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A77675FFA05954FFA25C59FFA25E
      5BFFA3625FFFA46462FFA66967FFA9706DFFAA7270FFAD7878FFAF7C7CFFB283
      82FFB68A89FFB88E8DFFBC9594FFBE9999FFC2A1A1FFCCB1B1FFE6E5E5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E5FFDEDEDEFF00000000D2D1D0FFC1BAB8FF000000000000
      00000000000000000000000000000000000000000000CECED5FFB8C0C9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCCFF929694FF24D9
      8CFFBBBBBBFFDCDCDCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDFFF0000
      000000000000C8C8C8FF686A69FF7D9389FF8F8F8FFF939393FF939393FF9393
      93FF939393FF949494FF8A8A8AFF000000000000000000000000000000000000
      000000000000DEDEDEFF8C8E8EFFD0D0D0FFE0E0E0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000758EF6FF504038FF57392AFFE5B9A3FFFFEBE1FFC59881FFDFC0
      B2FF000000000000000000000000000000004745CBFFAEACFFFFC6C3FFFFA3A1
      FEFF8A96E7FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A6A6FF626E68FF11BB6FFF41EA
      9AFF44735DFF868686FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A6FF808281FF9D9D
      9DFFA5A5A5FF5D6863FF78998AFFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFD2D2D2FFC3C3C3FFFEFEFEFF0000000000000000000000000000
      000000000000929292FF36A6C5FF586364FF838383FF5C6661FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BABBDAFF472E27FF85523AFFFFD6C0FFFFE9DEFFFFD2B7FFAE7F
      6CFFB5A5A5FF0000000000000000815D6FFFB4B2FFFFC3C1FFFFC1BFFFFFBDB9
      FFFF8987FBFF868AEFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000C9C9C9FF7D8D8CFF00DA6DFF06DB71FFACF4
      CFFF00DA6DFF00D96CFFA6A7A6FFDADADAFF0000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B6FFFAFAFAFFD9EC
      DEFF7B9286FF038644FF97ACA2FFD5D5D5FFD9D9D9FFD3D3D3FFD5D5D5FFD6D6
      D6FF93CFE1FFD9D9D9FFD3D3D3FFFDFDFDFF0000000000000000000000000000
      0000E8E8E8FF838383FFFAFAFAFFD4D8D8FFCDCDCDFFCBCECCFFB3B5B4FF7E7E
      7EFF9F9F9FFFB1B1B1FFCDCDCDFFD3D3D3FF0000000000000000000000000000
      000000000000BBB2A9FFA28FECFF7C6065FFFECDB0FFFFE4D6FFFFC7A7FFFFC0
      9DFFFFBC98FFD99977FF8D6571FFA6A3FFFFB1ADFFFFB5B2FFFFB3B0FFFFADAA
      FFFFA39FFFFF9B98FFFF8985FFFF6462FDFF0000000000000000000000000000
      000000000000000000009F9F9FFF5FB0FBFF3FA4EBFFAAF1CAFFDFFEF2FFCFFF
      EDFF95F4C8FF1DD56CFF00CE57FF16B156FFBDBDBDFF00000000000000000000
      000000000000000000000000000000000000C0C0C0FF8F9491FFFAFAFAFFE9E9
      E9FFEAEAEAFFEFEFEFFFCCCCCCFFD9D9D9FFDDDDDDFFD6D6D6FFD9D9D9FFD9D9
      D9FFE0CCB9FFDDDDDDFFD8D8D8FFFDFDFDFF0000000000000000000000000000
      00007B8586FFC1E9ECFFFBFBFBFFFCFCFCFFF5F5F5FFE1E1E1FFCDCDCDFFDADA
      DAFFFDFDFDFFFDFDFDFFFCFCFCFFE3E3E3FF8E8883FFBBBBBBFF000000000000
      000000000000FDB38BFFFDB894FFD097E2FFA7806AFFE4C8B8FFB7876EFFA777
      5BFFD99773FFFFAB7FFFA86A5FFF9894FFFFA09DFFFFA6A3FFFFA5A2FFFF9F9C
      FFFF928EFFFF8A86FFFF8782FFFF6160FBFF0000000000000000000000000000
      000000000000CECECEFF6B8AA2FF4FA4FFFF3198EBFFBDFFE6FFC4FFE8FFB9FF
      E5FF96FFD8FF80F7C4FF00C94EFF00C84CFF6F8475FFEEEEEEFF000000000000
      000000000000000000000000000000000000959B97FFCBE3D4FFFBFBFBFFE6E6
      E6FFEEEEEEFFF9F9F9FFD0D0D0FFD4D4D4FFD8D8D8FFD3D3D3FFD5D5D5FFDCDC
      DCFFDFBB9BFFE1E1E1FFDADADAFFFDFDFDFF0000000000000000000000000000
      000054ABAEFFF1F6F6FFD9D9D9FFF1F1F1FFF8F8F8FFF1F1F1FFEFEFEFFFB6C0
      C4FFF7F7F7FFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFAAAAAAFF000000000000
      000000000000FFAE83FFFFB388FFF6AD9DFF845E57FF8C4B95FF301E1CFF3628
      1AFF553929FFEA996EFFA5675EFF8F8BFFFF9995FFFF9F9BFFFF9F9BFFFF9995
      FFFF8A86FFFF817DFFFF7E7AFFFF6160FAFF000000000000000000000000F6F6
      F6FF9DA0A2FF619ACFFF489FFFFF7AC4FFFF9CE8FFFF7CDFE1FF89FED3FF83FF
      D1FF6AFFC9FF57FFC2FF38FCB6FF40D97CFF00BB34FF548B61FFBEBEBEFF0000
      0000000000000000000000000000EAEAEAFFBCE4BEFFFBFBFBFFF2F2F2FFDFDF
      DFFFF3F3F3FFF8F8F8FFCFCFCFFFD4D4D4FFD8D8D8FFD2D2D2FFD6D6D6FFDDDD
      DDFF75C875FFE6E6E6FFDFDFDFFFFDFDFDFF0000000000000000F2F2F2FFABAE
      AEFFBCF0F0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF0F0F0FFE0E0E0FFE2F1
      F4FFD1D1D1FFC5C5C5FFFDFDFDFFFFFFFFFFFFFFFFFFDFDFDFFF000000000000
      000000000000F9A273FFFEA778FFFFA97CFFDE7DE8FF7D2DACFF0E0015FF0E0F
      00FF0F2800FF6A532EFF855350FF7F7AFFFFA29EFFFFBAB7FFFF9A96FFFF9793
      FFFF8782FFFF736FFFFF706BFFFF6F70F8FF0000000000000000CDCDCDFFB4B4
      B4FF488EDCFF4299FFFF4D9AFFFF7ECDFFFF89D7FFFF96E2FEFF6ED4DFFF64FF
      C7FF4DFFBFFF3CFFBAFF0CFEADFF0CFBA9FF07B830FF00B324FF3F8C4CFFEEEE
      EEFF0000000000000000CBCBCBFF868887FFCAE6CAFFFDFDFDFFEEEEEEFFEBEB
      EBFFEDEDEDFFFFFFFFFFD2D2D2FFE4E4E4FFE5E5E5FFDDDDDDFFE3E3E3FFDADA
      DAFFC5C5DEFFE5E5E5FFE1E1E1FFEDEDEDFF0000000000000000B6B6B6FF5195
      95FFCFF1F1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFBFB
      FBFFF4F4F4FFDBDBDBFFA9B4B9FFDDE2E4FFFDFDFDFFE2E2E2FF000000000000
      000000000000F39D6EFFF8A273FFFAB696FF9646D0FFD86BDCFF0F001DFF1710
      02FF172D02FF43411BFF4E3234FF7A76FEFFBEBBFFFFABA8FFFF9590FFFF8985
      FFFF8681FFFF7873FFFF6A65FFFFCFD1FBFF00000000EDEDEDFF5A7091FF0568
      F5FF086DFBFF468DFDFF3B94FFFF54A8FFFF5DB0FFFF6EBDFFFF6ABEF3FF2EFF
      B6FF1FFEB1FF16FDADFF06F7A0FF00F499FF01ED8EFF11B020FF00A809FF6B99
      6BFF00000000000000003C5360FFB4E8BDFFE5EFE5FFFFFFFFFFE8E8E8FFEFEF
      EFFFEDEDEDFFFFFFFFFFD3D3D3FFE9E9E9FFE9E9E9FFE4E4E4FFE9E9E9FFE0E0
      E0FFE1E1E6FFEAEAEAFFE6E6E6FF6B986BFF00000000ECECECFF60C1C3FFA8FF
      FFFFF7F9F9FFFFFFFFFFECECECFFD9D9D9FFDADADAFFECECECFFF7F7F7FFFFFF
      FFFFFFFFFFFFEFF8FAFFEDEDEDFFD5D5D5FF55ADC8FF909192FFC6C6C6FF0000
      000000000000E9966BFFFFD9C4FFEEC4B5FF391888FF0E005BFFB66398FF1604
      01FF1C1E02FF175800FF155D04FF62637CFFB3AFFCFFA9A6FFFF918DFFFF8581
      FFFF726CFFFF635EFFFF5B56FFFFFCFDFEFFEBEBEBFF365CA5FF0052E3FF1660
      E6FF0261F1FF0065F6FF3C88FEFF589CFFFF5EA1FFFF35E6A7FF59F9BAFF59F9
      BAFF59F7B7FF59F6B4FF5AF2AFFF5AF0ACFF5AECA5FF4CE596FF1DD66EFF6998
      69FF0000000033569BFFC3EFC4FFC3EFC3FFFEFEFEFFFFFFFFFFEDEDEDFFF4F4
      F4FFF1F1F1FFFFFFFFFFD5D5D5FFABBD97FFA5B98FFFA6BA90FFA8BC93FFAABD
      94FFACBE97FFD8DED2FFEDEDEDFF699769FF00000000244371FFA8FFFFFFA8FF
      FFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
      F0FFDFDFDFFFD9D9D9FFD4D4D4FFD2D2D2FFEBEBEBFFA5B1B6FF4D9CBAFF638F
      63FF00000000B69483FFFDD7C1FFF1C8BFFF170C5CFF1B0C5BFF11023DFF8C32
      41FF2B1102FF346500FF2F7D00FF23810BFF8093B3FFA8A5F9FF9692FFFF8B87
      FFFF7974FFFF5253BEFFF5F5FBFF00000000BDBEC0FF0043D2FF1B58DAFF2B67
      E2FF1B68ECFF4281F2FF4E8CF9FF4E91FDFF658ABDFF6AF5BAFF6AF6BBFF6AF5
      BAFF6AF4B8FF6AF3B6FF62EFAEFF6BEFAFFF6BEAA9FF6CE6A2FF67E39CFF78A7
      81FF00000000013391FFC3EFC3FFC3EFC3FFFFFFFFFFFFFFFFFFEEEEEEFFECEC
      ECFFECECECFFF8F8F8FFD4D4D4FFA2B68CFF9FB586FFA0B688FFA2B78AFFA2B8
      8BFFA4B98DFFCBD2C4FFEAEAEAFF78A680FF000000003F98AAFFA8FFFFFFA7FE
      FEFFFFFFFFFFD2D2D2FFE0E0E0FFF9F9F9FFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFF2F2F2FFD1D3CFFFDEDEDEFFA5BDC5FF668B
      6CFF00000000FCFCFCFFB49281FFEABAA0FF382866FF0E025EFF0E0042FFA84D
      63FF7F302AFF3E6300FF428F01FF207A10FF687095FF9A97DFFF9A97FFFF908C
      FFFF6A66FDFF817875FF00000000000000007981A1FF2346BEFF3460D4FF5C7E
      DEFF5E85E5FF5E88E9FF5484EAFFF4B460FFF6B963FFD8B145FF77DE96FF89F1
      BDFF78D975FFF6C74AFFFFCA4DFFC4CD4FFF8AEAB2FF77E3A1FF6FBB8EFF0000
      0000747C9BFFBDEDC1FFC3EFC3FFC0EBC0FFFFFFFFFFFBFBFBFFE4E4E4FFE2E2
      E2FFF5F5F5FFFFFFFFFFD6D6D6FFC0CCB2FFC3D0B4FFC3D0B4FFC3D0B4FFC3D1
      B4FFC3D1B5FFCFD5C9FFF1F1F1FFFDFDFDFF586078FFA8FFFFFFA8FFFFFFA5F4
      F4FFF0F0F0FFD0D0D0FFE2E2E2FFFBFBFBFFF8F8F8FFE9E9E9FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBC8ADFFB5BAB0FFB2C4CBFFFBFB
      FBFF00000000000000000000000000000000C7BDBDFF2D2765FF230F58FF1600
      28FF1D050BFF7E712CFF3D7205FF1E6D07FF0E820AFF097624FF5D5BA1FF6564
      D1FFE0DFD8FF0000000000000000000000007E83A0FF2C4CBEFF6780D7FF6682
      DBFF6586E1FF6689E4FFAF8879FFF1B26AFFF3B568FFF7BB63FFE5B24AFF83ED
      B6FFFDC24FFFFFC758FFFFC853FFFFC850FF77DD8AFF6DA182FFF7F7F7FF0000
      000063687DFFC3EFC3FFC3EFC3FFBDE7BDFFFFFFFFFFF4F4F4FFEAEAEAFFE9E9
      E9FFFEFEFEFFF5F5F5FFD3D3D3FFBDC5B5FFBBC3B1FFBBC3B1FFBBC3B1FFBBC3
      B1FFBBC4B2FFDBDDD8FFF3F3F3FFFDFDFDFF467F88FFA8FFFFFFA8FFFFFFB4F1
      F1FFF9F9F9FFF9F9F9FFD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9C2B0FF00000000000000000000
      00000000000000000000000000000000000000000000739F8CFF1F2162FF1600
      33FF18010EFF7D642EFFA1A84EFF237A00FF15501BFF0C6716FF093E39FF3561
      57FF00000000000000000000000000000000F9F9F9FF7480C7FF7B8BD1FF798B
      D4FF778CD9FF758DDCFFAD7665FFEBAB74FFEDAD71FFF0B26DFFF2B46BFFF5B9
      67FFF8BC64FFF9BE61FFFCC15CFFFDC159FFD8D5D0FF00000000000000000000
      0000F7F7F7FF79AD9DFFC3EFC3FFD1E8D1FFFFFFFFFFEFEFEFFFF4F4F4FFEBEB
      EBFFE5E5E5FFE6E6E6FFDFDFDFFFD2D2D2FFD2D2D2FFD2D2D2FFD1D1D1FFD1D1
      D1FFC3C3C2FFC6C6C6FFACACACFF000000000000000073A697FF7FEAE4FFCCF1
      F4FFFCFCFCFFF7F7F7FFDEDEDEFFCECECEFFEFEFEFFFE9E9E9FFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFF0000000000000000000000000000
      00000000000000000000000000000000000000000000229A45FF50BA83FF1D19
      51FF160020FF1D1900FF364F00FF95C652FF179200FF0C8E0EFF01BA5BFF05B9
      9CFF5B6160FF766F6AFF000000000000000000000000000000007780C1FF8C96
      CEFF8A96D3FF8997D5FF8897D8FF826C8FFFDF9968FFEAAB78FFEBAD75FFEEB0
      71FFF1B36DFFF2B46AFFEB942CFFCF852EFFDADADAFF00000000000000000000
      000000000000000000006870A9FF7BC381FF92E592FF74DD74FFC5EFC5FFF5F5
      F5FFF2F2F2FFEBEBEBFFEFEFEFFFF4F4F4FFEFEFEFFFF0F0F0FFFEFEFEFFB7A4
      8FFF000000000000000000000000000000000000000000000000515781FF9BE0
      FDFFD7F2FFFF7FD5FFFF55C3FFFF7FCDFFFFA7DBFFFFF6FAFFFFFFFFFFFFF3F3
      F3FFE2E2E2FFE5E5E5FFFFFFFFFFA9A49DFF0000000000000000000000000000
      000000000000000000000000000000000000000000001B9B30FF4CB47DFF7DE5
      B4FF406967FF3A4027FF1E2B00FF1D6600FF30A712FF3BE54AFF00C73DFF08B2
      7BFF00C2F8FF313338FF909090FF00000000000000000000000045B97CFF6179
      A9FF939BD1FF929BD3FF919CD5FF8B99D7FF536C87FFE8AA7CFFE9AB7AFFEBAD
      76FFEDAF72FFEEB06FFFE18430FFDF7B1EFF41804DFF51CF82FF000000000000
      00000000000000000000389162FF9BE49CFFE0F6E0FF9AE59AFF82DC82FF59CD
      59FF82D782FFCFEDCFFFEEF3EEFFEFEFEFFFEDEDEDFFF5F5F5FFFFFFFFFFA577
      4DFF000000000000000000000000000000000000000000000000306C5BFFAFE4
      FFFFE9F7FFFF8ED6FFFFC1E7FFFF92D2FFFF86CBFFFF72BEFFFF6AB8FFFFB6D9
      FFFFFAFCFFFFFFFFFFFFFFFFFFFF866E58FF0000000000000000000000000000
      000000000000000000000000000000000000000000001E962CFF97E2BCFF77F0
      B2FF71E6A9FF447552FF262B08FF206400FF299603FF1FC90DFF06BC33FF01B3
      69FF01C5F2FF0458DEFF343F70FFFDFDFDFF0000000000000000000000000000
      0000607E98FF9EA0CCFF8D91C7FF92F6CDFF00000000C2F0DDFFB4926DFFE6A8
      80FFE8A97CFFE9AA79FFEAAA75FFE9A56BFFD46618FFEEEEEEFF000000000000
      00000000000000000000219B4DFF64D464FFA2E3A2FF71D371FF8EDA8EFFA1DE
      A1FFB4E4B4FFC6E9C6FFB2E0B2FF5CBB5CFF5BB65BFF60B560FF93C992FFD093
      60FF000000000000000000000000000000000000000000000000218948FF4DA1
      69FF64B4D4FF56B8F8FF69BEFFFF69BAFFFF69B7FFFF8AC3FFFF68B0FFFF68AA
      FFFF67A4FFFF67A1FFFF4386F1FFC38A5AFF0000000000000000000000000000
      00000000000000000000000000000000000000000000C7D1C5FF6EDAA4FF79F2
      B4FF72EAACFF65D99DFF5ECF94FF4AA151FF359623FF33BB13FF08BC19FF08AD
      46FF02C8D8FF0085FFFF003EFEFFB5B5B5FF0000000000000000000000000000
      00005DE4A0FF3A867CFF80ADA6FF00000000000000000000000056F3B6FFE09D
      78FFE5A781FFE6A77EFFE7A779FFE7A777FFDB7A2FFFC7C7C7FF000000000000
      0000000000000000000022D26FFF2CBC6DFF4EAB69FF58AA65FF5DC95DFF6CC9
      6CFF6FC96FFF86CF86FFB4E0B4FF6ABE6AFF6AB96AFF6AB76AFF4F923FFFDFA1
      73FF000000000000000000000000000000000000000000000000000000000000
      00000000000054A260FF47966AFF63AED7FF5BACFBFF77B6FFFF76B3FFFF75AE
      FFFF75A9FFFF75A6FFFF386F99FFDB9E71FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000988D74FF69D9
      9EFF74ECAEFF67DC9FFF61D398FF55C388FF607B44FFA88443FF17B113FF2685
      2AFF01CBCBFF0097FEFF0051FEFFDADADEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C38565FFE2A489FFE2A384FFDF9772FFC3C2C0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008EC0ABFF739D8AFF649173FF6FB072FF7DBE7DFF85C185FF907857FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000659E
      69FF568484FF608CB2FF73634FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9A078FF4D9A6EFF60D095FF8C855BFF0000000000000000B87A53FFAB64
      38FFA06640FF89807DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F6FFDED9D7FF000000000000000000000000000000000000
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
      00000000000000000000DFDFDFFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFE6E6E6FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1CFCEFFB9B7B9FF00000000000000000000
      00000000000000000000D2D2D3FFA4A5DCFFE4E4E5FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFF000000000000
      000000000000FBFBFBFF7C6357FF593B2CFF563728FF563728FF563829FF5639
      2AFF573A2BFF573B2CFF573C2EFF583E30FF583F32FF594033FF5A4236FF5E4B
      41FF888787FFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000005B3C2CFFF7CEB8FFFFE1D1FFD1A690FF594E52FF0000
      000000000000573E38FF9A98FCFFCBCAFFFFB8B5FFFF99A9DDFFF4F6FAFF0000
      000000000000E1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FF000000000000000000000000000000000000
      0000000000000000000000000000EFEFEFFF949494FF727272FF727272FF7272
      72FF86909AFF8F9BA5FF727272FF727272FF727272FF727272FF8A8A8AFF0000
      000000000000FEFEFEFFC2754DFFC57951FFC67C54FFC77D56FFC8805AFFC984
      5EFFCA8561FFCC8966FFCD8C69FFCF8F6EFFD19474FFD19677FFD59D80FFDEB5
      9FFF868685FF00000000000000000000000000000000D4D4D4FFA26240FFA565
      44FFA66846FFA66848FFAF7659FFFFD3BBFFFFDECCFFFFCCAFFFF9C1A3FF9568
      53FFAC7A61FF6250C0FFBCB9FFFFC5C3FFFFB7B4FFFF9C99FEFF666CEBFFFBFB
      FDFFFDFDFDFFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA8A8A8FF000000000000000000000000000000000000
      0000000000000000000000000000C2C2C2FF020202FF040404FF0A0A0AFF2323
      23FF87C5F6FF97D2FFFF020202FF030303FF030303FF030303FF030303FF0000
      000000000000FEFEFEFFD19372FFFBF4F1FFFBF7F4FFFAF4F1FFF8EDE8FFF2E2
      D8FFF2E1D8FFF2E1D7FFF2E1D7FFE6D2C8FFEFDDD3FFD7BDB0FFE8C8B8FFECD4
      C8FF818080FF000000000000000000000000FAFAFAFFCDCBC5FFCECBC6FFCCC9
      C4FFC9BDB3FFD3926FFFFFBF9CFFFFC6A7FFFFD7C1FFFFBE9AFFFFBA93FFFFB3
      89FF998ADAFFA09CFFFFA9A6FFFFB6B2FFFFA5A2FFFF9693FFFF928DFFFF6663
      FFFFFCFCFCFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFFEFEFEFF00000000A4A2A2FF948D8CFF9690
      8FFF9B9696FF9E9999FFA09C9CFFA09C9CFF868282FF363636FF404040FF5555
      55FF9AD4FFFF9BD5FFFF3F525FFF393939FF393939FF373737FFC2C2C2FF0000
      000000000000FEFEFEFFD8A489FFF6EAE4FFFDFBFAFFFCF8F6FFF9EFEBFFF3E4
      DCFFF0DDD3FFEBD1C3FFE9CCBDFFD7A78EFFD2997AFFCB9274FFE4C0ADFFF5EB
      E5FF787878FF000000000000000000000000FAFAFAFFE1E0DAFFE7E1DBFFE8E2
      DBFFE4D1C4FFFEA97DFFFFB085FFFFBB96FFFBCDB3FFFFB288FFFFAC7FFFFCA4
      75FF8879DBFF8985FFFF9692FFFFACA8FFFF9691FFFF837FFFFF7D79FFFF6362
      FCFFFCFCFCFFF6F6F6FFD2D2D2FFD3D3D3FFD0D0D0FFCDCDCDFFCCCCCCFFD9D9
      D9FFDCDCDCFFDEDEDEFFE1E1E1FFD9D9D9FFE1E1E1FFDADADAFFE0E0E0FFDCDC
      DCFFD8D8D8FFF8F8F8FFF8F8F8FFFEFEFEFF00000000C6B0ADFFC7B2AEFFCFBB
      B9FFDFCECDFFE6D8D7FFF0E4E4FFF0E4E4FFEFE3E3FF9A908FFF6B6665FF6262
      62FF9CD7FFFF9DD7FFFF5E8197FF575757FF6A6A6AFFEEEEEEFF000000000000
      000000000000FEFEFEFFDDB29BFFF2E0D7FFFDFAF9FFFCF9F8FFFAF5F1FFF7EC
      E6FFF4E6DFFFEED8CCFFEBD1C4FFE6C5B4FFD09474FFCA825DFFE4C6B6FFF7F1
      EEFF707070FF000000000000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAE8DFFFFAA374FFFFA87AFFFFD3BCFFFEC09DFFFEB48BFFFEA97BFFF49D
      6EFF8071DBFF807BFFFFA8A5FFFFB0ADFFFF9E9BFFFF7E79FFFF7571FFFF6362
      FBFFFCFCFCFFF5F5F5FFDCDCDCFFE2E2E2FFE2E2E2FFDBDBDBFFDADADAFFD8D8
      D8FFDCDCDCFFD5D5D5FFD8D8D8FFE0E0E0FFDBDBDBFFD1D1D1FFDBDBDBFFDFDF
      DFFFDBDBDBFFF3F3F3FFF8F8F8FFFEFEFEFF00000000C7B1ADFFC2AAA6FFC9B3
      B0FFD6C4C2FFDDCDCBFFE8DCDBFFEDE3E2FFEDE4E3FF7293AAFF175A82FF135C
      87FF87C1F0FF8FC6F3FF4884ACFF145E89FF99A3A8FF00000000000000000000
      000000000000FEFEFEFFEFDAD0FFEAD0C3FFE9D1C4FFEAD2C6FFEBD5CAFFEDD9
      CFFFEEDCD2FFEFDFD6FFF1E1DAFFF2E5DEFFF3E6E0FFF3E7E0FFF5EAE4FFF5F0
      EEFF646464FF000000000000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7E6DDFFEB9568FFFED5BEFFFFC3A3FFFFB992FFFCA576FFF39D6EFFEA9F
      77FF7B6DDEFFBEBCFFFFB1ADFFFFA29FFFFF8480FFFF6E69FFFF6D68FFFF7071
      F9FFFCFCFCFFF8F8F8FFF5F5F5FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFFEFEFEFF00000000C8B3B0FFBEA6A1FFC5AE
      ABFFD1BEBBFFD8C6C4FFE3D5D4FFE8DDDCFFE9DEDDFF236389FF135C86FF2870
      9BFF9BD1FFFF94CEFFFF85BBE3FF1B6590FF1F729BFF00000000000000000000
      000000000000FFFEFEFFE9CDBFFFD5A084FFD49C7FFFD49C7FFFD9A88EFFE1BA
      A6FFE5C5B4FFEEDAD0FFF3E5DDFFFAF5F3FFFEFDFDFFFEFEFDFFFAF3F0FFF4EC
      E7FF5F5E5EFF000000000000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7E6DEFFEEAC8AFFFFD5BEFFFFC3A2FFFFB992FFFCA576FFF29C6DFFE08C
      60FFC8C3F7FFC9C8FFFFB1ADFFFFA29FFFFF8581FFFF6E69FFFF655FFFFFD1D2
      FCFFFCFCFCFFF3F3F3FFD0D0D0FFD1D1D1FFD2D2D2FFEAEAEAFFECECECFFEBEB
      EBFFE8E8E8FFEDEDEDFFE8E8E8FFE7E7E7FFEAEAEAFFEAEAEAFFE5E5E5FFEAEA
      EAFFF8F8F8FFF8F8F8FFF8F8F8FFFEFEFEFF00000000B7AFADFFB49B96FFBBA2
      9DFFC5AFABFFCCB7B4FFD7C7C4FFDED0CEFFE0D4D2FFBBBEC5FF23668EFFA9D6
      FAFF98D2FFFF9FD5FFFFA8D9FFFF6FB4DEFF0F7BADFF00000000000000000000
      00000000000000000000F8F0ECFFCB9274FFE0B8A3FFE3BDA9FFE8C9B9FFEFD8
      CDFFF2E0D7FFF8EEE9FFFBF4F1FFFEFDFCFFFFFEFEFFFEFCFBFFF8EEE9FFEFDC
      D1FF535251FFFEFEFEFF0000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F6F5FFDDAF97FFFFC7A8FFFFBD9AFFFFAB7FFFEE9C6EFF7CE9
      AFFF69D5B0FF5A8BD4FFB2AEFFFFAAA7FFFF908CFFFF5857D6FFE5E5F0FF0000
      0000FCFCFCFFF7F7F7FFE5E5E5FFDFDFDFFFE5E5E5FFDCDCDCFFDCDCDCFFE2E2
      E2FFDCDCDCFFD8D8D8FFE1E1E1FFDCDCDCFFD8D8D8FFDEDEDEFFD5D5D5FFD5D5
      D5FFD4D4D4FFE6E6E6FFF8F8F8FFFEFEFEFF0000000000000000C6C1C0FFB8AC
      A9FFB9A09BFFBFA8A3FFE6DDDBFFE4D9D7FFE2D7D5FFE3DAD8FF6B99B2FFACDC
      FFFFACDCFFFFBAE2FFFFD5EEFFFFBEDFF3FF2289B5FF00000000000000000000
      00000000000000000000FEFEFEFFEBD0C2FFDFBAA6FFE6C5B4FFEDD4C7FFF3E4
      DCFFF7ECE5FFFBF7F5FFFEFBFAFFFFFFFFFFFCF8F6FFFAF4F1FFF7EAE3FFE5C6
      B6FF4E4C4AFFFEFEFEFF0000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBE8FF9D8A6EFF79A877FF62D297FF70E0
      A6FF65D99CFF60D296FF58C78DFF4FAB9BFF726FF2FF837B75FFFCFCFCFF0000
      0000FCFCFCFFF7F7F7FFEFEFEFFFF1F1F1FFF0F0F0FFF3F3F3FFF2F2F2FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000DDDCDCFFBDB8B7FFE0EAF1FFE2EBF1FFE4EDF3FFC2BEBDFF879EA9FF53A4
      D2FF84C1E5FFC7E8FFFFE1F3FFFFA7D2E7FF5694AFFF00000000000000000000
      0000000000000000000000000000F7EEE9FFD8B19CFFE9CBBCFFEFDBCFFFF6EA
      E3FFF9F0ECFFFDFBF9FFFFFEFEFFFEFCFBFFFAF4F1FFF8EFEBFFF5E7E0FFE0BA
      A6FF4D4A48FFFDFDFDFF0000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA6C99CFF3E8D57FF59C78DFF5BCC91FF6EDB
      A2FF61D398FF5BCC91FF53C086FF51BD83FFC9C8C2FF837A74FFFCFCFCFF0000
      0000FCFCFCFFF6F6F6FFD2D2D2FFD4D4D4FFD2D2D2FFD0D0D0FFCDCDCDFFDCDC
      DCFFDFDFDFFFDFDFDFFFE3E3E3FFDCDCDCFFE3E3E3FFDCDCDCFFE2E2E2FFDDDD
      DDFFDBDBDBFFF8F8F8FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000FCFCFCFFA1A9AFFF9FD2FFFF9CD1FFFF98CCF5FFFDFDFDFFE9EAEBFF0F79
      AAFF0E7DAFFF5AACD3FF77BEDFFF0D86B9FFF1F1F2FF00000000000000000000
      0000000000000000000000000000FEFEFEFFCF9D83FFEFDAD0FFF5E9E3FF15A9
      45FF1BC65CFF20D86FFF1FD36BFF16AD48FFF4E9E1FFF3E4DBFFF3E2D9FFD6A1
      86FF595553FFFEFEFEFF0000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD8EDD7FF3A9702FF348741FF4EB980FF6ECD9BFF6ADF
      A2FF59C98EFF5CC38CFF57BA86FF47AF78FFE1E0D9FF837B75FFFCFCFCFF0000
      0000FCFCFCFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000DADBDCFFA4CDF0FF96CFFFFF96CFFFFF97D0FFFFE8E8E8FF000000000E7D
      AEFF0D81B3FF0D84B6FF0C87BBFF0C89BCFF0000000000000000000000000000
      000000000000000000000000000000000000DEB8A3FFEDD9CEFFF9F2EEFF17B9
      51FF1CDB6EFF22EF84FF20EA7EFF16BD53FFF1E2DAFFF0DDD4FFF1DED5FFD298
      79FF5E5B5AFFFEFEFEFF0000000000000000FAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFEFEFFDFF1E7FF44A53AFF6EA844FF338140FF70D09DFF83F1B9FF69DE
      A1FF58C68CFF50BB82FF4FB07CFF68BD90FFE1DFD8FF837B75FFFCFCFCFF0000
      0000FCFCFCFFE5E5E5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      000094A2ADFFABDAFFFFA9D9FFFFB5DFFFFFB9E1FFFF91A0ABFFF8F8F8FFDADE
      E0FF2695C2FF1A91C1FF8DB2C1FFF8F8F8FF0000000000000000000000000000
      000000000000000000000000000000000000F6ECE6FFE4C2B1FFFEFDFCFF17BD
      52FF1DDE6FFF22F185FF21ED80FF17C053FFF3E6DEFFEDD5C8FFEED7CAFFCE8F
      6EFF656464FFFEFEFEFF0000000000000000FAFAFAFFFFFFFFFFF9FCFFFFABE2
      FFFF10D397FF1BD043FF29940AFF618622FF30582EFF7CF5B8FF7AF3B5FF69DF
      A2FF59C98EFF52BE85FF43A06DFFACC8B8FFE1E0D9FF837B75FFFCFCFCFF0000
      0000FCFCFCFFF8F8F8FFE2E2E2FFE9E9E9FFE4E4E4FFE2E2E2FFE2E2E2FFE0E0
      E0FFE3E3E3FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000236F99FFBCE2FDFFC4E7FFFFCAE7FCFF8CB4CFFF276C94FF2A6B8FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFCFAFFF7EFEBFFFAF4F1FF16BA
      45FF1AD559FF1EE46AFF1DE065FF15BC46FFEBDBD2FFEBD9CFFFDEBCA9FFCD8E
      6DFFB2B1B1FF000000000000000000000000FAFAFAFFF8F9FEFF088AFFFF05CA
      F6FF0FCD4DFF0FD417FF459717FF263406FF8C807EFFE6E4ECFFDCE8E2FF62CC
      95FF62D498FF54B380FFFFFFFFFFFFFCFAFFF7F0ECFF837B75FFFCFCFCFF0000
      0000FCFCFCFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFFEFEFEFF0000000000000000000000000000
      0000116E9BFF9DCCE8FFCFEBFEFF3D7599FF155C85FF3B7DA2FF357EA5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACCFB1FF6CA973FF64AC6AFF12B7
      40FF15C94FFF18D25BFF17CE56FF10B13BFF4D7F32FF4B732DFF7F7F4BFFD09C
      7EFFF1F0F0FF000000000000000000000000FAFAFAFFA3AAFAFF01A8FFFF0BCE
      DFFF28D543FF18CC0DFF4B9419FF9E9A86FFE0DCDDFFFFFFFFFFFFFFFFFFD4E3
      DCFF5EB687FFCDDED4FFFFFFFFFFFCFBFAFFD2CFC8FF847B75FFFCFCFCFF0000
      0000FCFCFCFF52D784FF52DD8EFF52E093FF52E69DFF52E8A2FF52EEABFF52F4
      B4FF52F6B9FF52FBC1FF52FABFFF52F5B6FF52EFADFF52ECA9FF52E79FFF52E4
      9AFF52DE90FF52D183FF52C87CFF000000000000000000000000000000000000
      00000D80B2FF3597C4FF19628CFF136B96FF2478A3FF5A9FC1FF7BA1B2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFF349947FF40BC
      61FF5ECD7EFF2DC25CFF40C86BFF3CBC5EFF2A973FFFB3D4B8FF000000000000
      000000000000000000000000000000000000FAFAFAFFEBDED6FFD2D8D5FFD9DD
      D2FFA9D594FFEDE3D8FFF4E6DEFFF5E8E0FFF6E9E1FFF6E9E1FFF6E8E0FFF4E7
      DFFFF2E5DDFFF0E3DCFFEEE1D9FFEADCD4FFE6D9D0FF837B75FFFCFCFCFF0000
      0000FCFCFCFF70DF98FF00D05CFF70E6A6FF93F0C1FFF3FDF8FFDEFBEDFF93F8
      CFFFF4FEFAFFCCFDE9FFCFFDEBFF7BF7C5FF00EA88FF00E682FF00DE75FF00DA
      6DFF00CF5EFFFAFAFAFFCBCBCBFF000000000000000000000000000000000000
      0000428AABFF12709DFF136995FF1978A5FF358BB4FF4A9FC6FFE2E5E6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5F0E7FF1B9A
      37FF54BE6EFF83D69AFF82D598FF179C36FFDBEBDEFFFEFEFEFF000000000000
      000000000000000000000000000000000000FAFAFAFF8F5129FF7A6457FFA15F
      39FFB4784FFFB47D5EFFC28F6EFFD49974FFDB9970FFDC9C72FFD59870FFDB93
      67FFCB8357FFC37B4FFFB0683CFFA96135FF9C5428FF837B75FFFCFCFCFF0000
      0000FCFCFCFF2BD068FF22D570FF2EDA7CFF5EE7A2FF3BE695FFB5F7D9FF67F4
      B9FF4FF4B2FF3AF5ADFF57F6B8FF4EF3AFFF7BEFBCFF00E47FFF00DD72FF00D9
      6BFF17D26AFFCDCDCDFF00000000000000000000000000000000000000000000
      0000000000009CB1BCFF107CADFF3699C4FF74A3B6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFFC9E0CDFF17922EFF2F9641FFFCFDFCFF0000000000000000000000000000
      000000000000000000000000000000000000FAFAFAFFC35240FFA0816DFFA666
      39FFB37048FFAB7357FFB7876AFFC58D68FFE4A178FFF0A87CFFEDA579FFE199
      6DFFD0885CFFC77F53FFB97A54FFAC6438FFA4643DFF8A817CFFFCFCFCFF0000
      0000000000008FB99EFF8FBBA1FF8FBCA3FF8FBDA5FF8FBEA7FF8FC0A9FF8FC1
      ABFF8FC1ACFF8FC1ADFF8FC1ACFF8FC1ABFF8FC0AAFF8FBFA8FF8FBEA6FF8FBD
      A4FFD8DAD9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3EEEBFFF4EEEBFFF4EF
      EBFFF4EFECFFF4EFECFFF4EFECFFF4EFECFFF4EFECFFF3EEEBFFF4EFECFFF4EF
      ECFFF4EFECFFF4EFECFFF4EFECFFF4EFEBFFF3EEEBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000500000000100010000000000C00300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000700000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      0000000000000000000010000000000000000000000010000000000000000000
      0000100000000000000000000000300000000000000000000000300000000000
      0000000000003000000000000000000000007000000000000000000000007000
      0000000000000000000070000000000000000000000070000000000000000000
      0000100000000000000000000000100000000000000000000000100000000000
      00000000000010000000000000000000FFEFFFFFFFFFFFF93F9F0000FF83FFD8
      01F87FF80F070000FF03FF8000F83FF806030000FE00FF8000F000F800000000
      FC007F0000F0003800000000F8003F0000F0003800000000E0001E0000C00038
      00000000C0000C0000C000380000000080000C00008000180000000000000800
      0080000800010000000008000080000800030000000010000000000F00070000
      000010000000007F800F000000007000018000FF80030000C0007C000FC000FF
      80010000C0003C000FC000FF80000000F0803C000FC000FF80000000F1C03C00
      0FF800FFC0000000FFF07FF01FFFE1FFF0C30000FFF9FFFFFFFFFFFFFFFF0000
      FFFFFC0007FE7C7FFFFF0000FF80380003FC181800010000FE00180007800000
      00010000FE001800070000000000000080001800070000000000000080003800
      0700000000000000800078000700000000000000800078000700000000000000
      80007C000300001000000000C0007C000300001000000000F0007E0003000010
      00000000F0007E000300001000000000F020FF000300001000000000F000FF00
      0300001000000000F01FFF000700001000000000F01FFF000700001000010000
      F01FFF803F00001000010000F01FFFC03F00001000030000F87FFFE0FF000018
      00070000FFFFFFFBFF80007FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object dsTrainCost: TDataSource
    DataSet = memTrainCost
    Left = 614
    Top = 32
  end
  object memTrainCost: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 614
    object memTrainCostMONTH: TIntegerField
      FieldName = 'MONTH'
    end
    object memTrainCostYEAR: TIntegerField
      FieldName = 'YEAR'
    end
    object memTrainCostMONTH_YEAR: TWideStringField
      FieldName = 'MONTH_YEAR'
    end
    object memTrainCostCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object dsTrainResult: TDataSource
    DataSet = memTrainResult
    Left = 646
    Top = 32
  end
  object memTrainResult: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 646
    object memTrainResultRESULT_NAME: TWideStringField
      FieldName = 'RESULT_NAME'
      Size = 127
    end
    object memTrainResultCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object memTrainContent: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 670
    object memTrainContentCONTENT: TWideStringField
      FieldName = 'CONTENT'
      Size = 127
    end
    object memTrainContentCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object dsTrainContent: TDataSource
    DataSet = memTrainContent
    Left = 670
    Top = 32
  end
end
