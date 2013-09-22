inherited frmTrainingCourse: TfrmTrainingCourse
  Left = 233
  Top = 237
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 415
      Color = 15466238
    end
    object pageMain: TElPageControl [1]
      Left = 2
      Top = 2
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Images = ImageList1
      Multiline = False
      OnChange = pageMainChange
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
      ActivePage = tabTrainingCourse
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object tabTrainingCourse: TElTabSheet
        PageControl = pageMain
        ImageIndex = 1
        TabVisible = True
        Caption = 'Danh m'#7909'c ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 167
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBEdit1: TdxDBEdit
            Left = 97
            Top = 28
            Width = 80
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            DataField = 'COURSE_CODE'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
          end
          object dxDBEdit2: TdxDBEdit
            Left = 381
            Top = 28
            Width = 404
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 7
            DataField = 'COURSE_NAME'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
          end
          object dxDBImageEdit1: TdxDBImageEdit
            Left = 97
            Top = 74
            Width = 184
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 4
            DataField = 'INSIDE_OUTSIDE'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
            DropDownRows = 16777223
            Descriptions.WideStrings = (
              'CT '#273#224'o t'#7841'o n'#7897'i b'#7897
              'CT '#273#224'o t'#7841'o b'#234'n ngo'#224'i')
            ImageIndexes.WideStrings = (
              '0'
              '1')
            Images = ImageList2
            Values.WideStrings = (
              '0'
              '1')
          end
          object dxDBMemo1: TdxDBMemo
            Left = 381
            Top = 51
            Width = 344
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 8
            DataField = 'COURSE_CONTENT'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
            ScrollBars = ssBoth
            Height = 89
          end
          object dxDBSpinEdit1: TdxDBSpinEdit
            Left = 97
            Top = 51
            Width = 80
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            DataField = 'TIME_PERIOD'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
            MaxValue = 99999999.000000000000000000
            StoredValues = 48
          end
          object dxDBImageEdit2: TdxDBImageEdit
            Left = 177
            Top = 51
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 3
            DataField = 'TIME_UNIT'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
            DropDownRows = 16777223
            Descriptions.WideStrings = (
              'ng'#224'y'
              'tu'#7847'n'
              'th'#225'ng'
              'n'#259'm')
            ImageIndexes.WideStrings = (
              '0'
              '1'
              '2'
              '3')
            Values.WideStrings = (
              '1'
              '7'
              '30'
              '365')
          end
          object gridTrainingCourse: TdxDBGrid
            Left = 14
            Top = 176
            Width = 250
            Height = 129
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'COURSE_CODE'
            SummaryGroups = <>
            SummarySeparator = ', '
            IsImportFromXLS = True
            TabOrder = 9
            DataSource = dsTrainingCourse
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            object gridTrainingCourseTRAIN_ORDER: TdxDBGridSpinColumn
              Alignment = taCenter
              Caption = 'STT'
              HeaderAlignment = taCenter
              Width = 36
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TRAIN_ORDER'
            end
            object gridTrainingCourseCOURSE_CODE: TdxDBGridColumn
              Caption = 'M'#227' s'#7889' CT'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COURSE_CODE'
              Caption_UTF7 = 'M+AOM s+HtE CT'
            end
            object gridTrainingCourseCOURSE_NAME: TdxDBGridColumn
              Caption = 'Ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
              HeaderAlignment = taCenter
              Width = 134
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COURSE_NAME'
              Caption_UTF7 = 'Ch+AbABoQ-ng tr+AOw-nh +AREA4A-o t+HqE-o'
            end
            object gridTrainingCourseINSIDE_OUTSIDE: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Lo'#7841'i h'#236'nh'
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 89
              BandIndex = 0
              RowIndex = 0
              FieldName = 'INSIDE_OUTSIDE'
              Descriptions.WideStrings = (
                '   N'#7897'i b'#7897
                '   B'#234'n ngo'#224'i')
              Images = ImageList2
              ImageIndexes.WideStrings = (
                '0'
                '1')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Lo+HqE-i h+AOw-nh'
            end
            object gridTrainingCourseTYPE_NAME: TdxDBGridPopupColumn
              Caption = 'Ph'#226'n lo'#7841'i ch'#432#417'ng tr'#236'nh'
              HeaderAlignment = taCenter
              Width = 131
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TYPE_NAME'
              OnCloseUp = gridTrainingCourseTYPE_NAMECloseUp
              OnInitPopup = gridTrainingCourseTYPE_NAMEInitPopup
              Caption_UTF7 = 'Ph+AOI-n lo+HqE-i ch+AbABoQ-ng tr+AOw-nh'
            end
            object gridTrainingCourseTIME_PERIOD: TdxDBGridSpinColumn
              Caption = 'Th'#7901'i h'#7841'n'
              HeaderAlignment = taCenter
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIME_PERIOD'
              MaxValue = 999999.000000000000000000
              Caption_UTF7 = 'Th+Ht0-i h+HqE-n'
            end
            object gridTrainingCourseTIME_UNIT: TdxDBGridImageColumn
              Alignment = taRightJustify
              Caption = #272#417'n v'#7883
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIME_UNIT'
              Descriptions.WideStrings = (
                'ng'#224'y'
                'tu'#7847'n'
                'th'#225'ng'
                'n'#259'm')
              ShowDescription = True
              Values.WideStrings = (
                '1'
                '7'
                '30'
                '365')
              Caption_UTF7 = '+ARABoQ-n v+Hss'
            end
            object gridTrainingCourseFILE_NAME: TdxDBGridButtonColumn
              Caption = 'T'#224'i li'#7879'u '#273#237'nh k'#232'm'
              HeaderAlignment = taCenter
              Width = 121
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FILE_NAME'
              Buttons = <
                item
                  Default = True
                end
                item
                  Default = False
                  Kind = bkDown
                end>
              OnButtonClick = gridTrainingCourseFILE_NAMEButtonClick
              Caption_UTF7 = 'T+AOA-i li+Hsc-u +AREA7Q-nh k+AOg-m'
            end
          end
          object dxDBButtonEdit2: TdxDBButtonEdit
            Left = 97
            Top = 120
            Width = 183
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 6
            DataField = 'FILE_NAME'
            DataSource = dsTrainingCourse
            ReadOnly = False
            StyleController = dmMain.StyleController
            Buttons = <
              item
                Default = True
              end
              item
                Default = False
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D7DCE5FF7487
                  A6FFFF00FF00FF00FF00FF00FF00FF00FF001BA1D0FF59CEF6FF0A9CCDFFFF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0027497AFF2649
                  7BFF2B4776FFFF00FF00FF00FF001BA1CFFF85E6FFFF53D9FFFF51B8DBFF12A9
                  DEFF41B2D8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00275D95FF3882
                  BDFF26659FFF2C4A79FF21A8D6FF93EEFFFF60DFFFFF60DFFFFF47B5D9FF2EC1
                  F3FF31C0F1FF0197CAFFFF00FF00FF00FF00FF00FF00FF00FF00C9D3DFFF296D
                  A8FF6DB1E0FF2575B4FF5F9DBEFF71EAFFFF6BE5FFFF6AE5FFFF41B2D8FF36C8
                  F8FF41CCFAFF45CFFFFF089FD2FFF5FBFDFFFF00FF00FF00FF00FF00FF00C9D7
                  E4FF2978B8FF76BEECFF2782C5FF59B4D4FF75EFFFFF74EEFFFF3AAFD7FF3AD3
                  FFFF4BD3FFFF4BD4FFFF50D6FFFF27B7E5FF1CA2CFFFFF00FF00FF00FF00FF00
                  FF003EB0D7FF237ABDFF38A2E7FF4A769FFFA58D8DFFBA8A8AFFAF7F80FFBD98
                  98FFA08C8DFF53DCFFFF56D9FFFF58DAFFFF4BD0F7FF25A6D2FFFF00FF00FF00
                  FF00D5EEF6FF43B2D9FF7493ACFFE0B2AFFFEDE4E6FFEDE2C2FFEFEDD0FFE5DD
                  DAFFF8DFE5FFA18B8BFF5EE0FFFF60DFFFFF65E2FFFF0298CCFFFF00FF00FF00
                  FF00FF00FF00FF00FF00A68D8DFFF8E7D1FFFFF0D4FFFFFFFDFFFFFFFFFFFFFF
                  FBFFFAF9F1FFEAD0D3FF6ADEF8FF6BE5FFFF51D3F3FF029BCDFFFF00FF00FF00
                  FF00FF00FF00F7F5F5FFF3EEEEFFFAD5ACFFFEF5E3FFFFFEF2FFFFFFF7FFFFFF
                  FDFFFFFFFCFFFFFFFEFF9A9497FF66D7F3FFA9F3FFFF039BCDFFFF00FF00FF00
                  FF00FF00FF00E7E1E1FFFAF4EFFFFDF0E2FFFDF3DBFFFEF9E4FFFFFFEEFFFFFF
                  F7FFFFFFF9FFF9F8DFFF9B9194FFA7F3FFFFACF5FFFF059CCEFFFF00FF00FF00
                  FF00FF00FF00F9F8F8FFFFFFFFFFF9D3ACFFFDF1E1FFFEF5DBFFFEF8DBFFFFFE
                  E1FFFFFFE6FFCDB8A3FFA28C8DFFB5F8FFFFB0F7FFFF079FCFFFFF00FF00FF00
                  FF00FF00FF00FF00FF00CEC2C2FFF1C3A4FFFBD9B3FFFDF2E0FFFCE8C3FFFFED
                  C5FFE3CA99FFFFFFFFFFA79090FF24A4D2FFECFFFFFF079ECFFFFF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00CFC3C3FFFFFFFFFFBB9072FFAA8269FFA985
                  72FFFFFFFFFFAB9494FFFF00FF00FF00FF003CADD5FFFF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00A69090FFA28A8AFFA38B8BFFA28B
                  8BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                Kind = bkGlyph
              end>
            OnButtonClick = dxDBButtonEdit2ButtonClick
            StoredValues = 64
            ExistButtons = True
          end
          object dxDBPopupEdit1: TdxDBPopupEdit
            Left = 97
            Top = 97
            Width = 167
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 5
            DataField = 'TYPE_NAME'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit1CloseUp
            OnInitPopup = dxDBPopupEdit1InitPopup
          end
          object dxDBSpinEdit2: TdxDBSpinEdit
            Left = 177
            Top = 28
            Width = 70
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            DataField = 'TRAIN_ORDER'
            DataSource = dsTrainingCourse
            StyleController = dmMain.StyleController
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group1: TdxLayoutGroup
              Caption = '* N'#7897'i dung ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
              LayoutDirection = ldHorizontal
              object dxLayoutControl1Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group2: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl1Group7: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Item1: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'M'#227' s'#7889'/Th'#7913' t'#7921' CT'
                      Control = dxDBEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item10: TdxLayoutItem
                      Control = dxDBSpinEdit2
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl1Group4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl1Item5: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Th'#7901'i l'#432#7907'ng CT'
                      Control = dxDBSpinEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item6: TdxLayoutItem
                      Control = dxDBImageEdit2
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl1Item3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Lo'#7841'i h'#236'nh '#272'T'
                    Control = dxDBImageEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item7: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Ph'#226'n lo'#7841'i CT'
                    Control = dxDBPopupEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Item9: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'T'#224'i li'#7879'u '#273'i k'#232'm'
                  Control = dxDBButtonEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group3: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Ch'#432#417'ng tr'#236'nh '#272'T'
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'T'#243'm t'#7855't n'#7897'i dung '#272'T'
                  CaptionOptions.AlignVert = tavTop
                  Control = dxDBMemo1
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl1Group5: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = '* Danh s'#225'ch ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
              object dxLayoutControl1Item8: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Control = gridTrainingCourse
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object tabTrainingClass: TElTabSheet
        PageControl = pageMain
        ImageIndex = 0
        TabVisible = True
        Caption = 'Chi ti'#7871't ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
        Visible = False
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 285
          Height = 167
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object gridTrainingClass: TdxDBGrid
            Left = 14
            Top = 28
            Width = 250
            Height = 129
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CLASS_CODE'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 0
            DataSource = dsTrainingClass
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            object gridTrainingClassTRAIN_ORDER: TdxDBGridSpinColumn
              Alignment = taCenter
              Caption = 'STT'
              HeaderAlignment = taCenter
              Width = 40
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TRAIN_ORDER'
            end
            object gridTrainingClassCOURSE_FULL_NAME: TdxDBGridColumn
              Caption = 'Thu'#7897'c ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 109
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COURSE_FULL_NAME'
              GroupIndex = 0
              Caption_UTF7 = 'Thu+Htk-c ch+AbABoQ-ng tr+AOw-nh +AREA4A-o t+HqE-o'
            end
            object gridTrainingClassCLASS_CODE: TdxDBGridColumn
              Caption = 'M'#227' l'#7899'p'
              HeaderAlignment = taCenter
              Width = 71
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLASS_CODE'
              Caption_UTF7 = 'M+AOM l+Hts-p'
            end
            object gridTrainingClassCLASS_NAME: TdxDBGridColumn
              Caption = 'T'#234'n l'#7899'p'
              HeaderAlignment = taCenter
              Width = 104
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLASS_NAME'
              Caption_UTF7 = 'T+AOo-n l+Hts-p'
            end
            object gridTrainingClassINSIDE_OUTSIDE: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Lo'#7841'i h'#236'nh'
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'INSIDE_OUTSIDE'
              Descriptions.WideStrings = (
                '   N'#7897'i b'#7897
                '   B'#234'n ngo'#224'i')
              Images = ImageList2
              ImageIndexes.WideStrings = (
                '0'
                '1')
              ShowDescription = True
              Values.WideStrings = (
                '0'
                '1')
              Caption_UTF7 = 'Lo+HqE-i h+AOw-nh'
            end
            object gridTrainingClassTYPE_NAME: TdxDBGridPopupColumn
              Caption = 'Ph'#226'n lo'#7841'i'
              HeaderAlignment = taCenter
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TYPE_NAME'
              OnCloseUp = gridTrainingClassTYPE_NAMECloseUp
              OnInitPopup = gridTrainingClassTYPE_NAMEInitPopup
              Caption_UTF7 = 'Ph+AOI-n lo+HqE-i'
            end
            object gridTrainingClassTEACHER: TdxDBGridColumn
              Caption = 'Gi'#7843'ng vi'#234'n/ B'#225'o c'#225'o vi'#234'n'
              HeaderAlignment = taCenter
              Width = 133
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TEACHER'
              Caption_UTF7 = 'Gi+HqM-ng vi+AOo-n/ B+AOE-o c+AOE-o vi+AOo-n'
            end
            object gridTrainingClassCLASS_PLACE: TdxDBGridColumn
              Caption = #272#7883'a '#273'i'#7875'm'
              HeaderAlignment = taCenter
              Width = 114
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CLASS_PLACE'
              Caption_UTF7 = '+ARAeyw-a +ARE-i+HsM-m'
            end
            object gridTrainingClassTIME_PERIOD: TdxDBGridSpinColumn
              Caption = 'Th'#7901'i h'#7841'n'
              HeaderAlignment = taCenter
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIME_PERIOD'
              MaxValue = 999999.000000000000000000
              Caption_UTF7 = 'Th+Ht0-i h+HqE-n'
            end
            object gridTrainingClassTIME_UNIT: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = #272#417'n v'#7883
              HeaderAlignment = taCenter
              MinWidth = 16
              Width = 50
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIME_UNIT'
              Descriptions.WideStrings = (
                'ng'#224'y'
                'tu'#7847'n'
                'th'#225'ng'
                'n'#259'm')
              ShowDescription = True
              Values.WideStrings = (
                '1'
                '7'
                '30'
                '365')
              Caption_UTF7 = '+ARABoQ-n v+Hss'
            end
            object gridTrainingClassFILE_NAME: TdxDBGridButtonColumn
              Caption = 'T'#224'i li'#7879'u '#273#237'nh k'#232'm'
              HeaderAlignment = taCenter
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FILE_NAME'
              Buttons = <
                item
                  Default = True
                end
                item
                  Default = False
                  Kind = bkDown
                end>
              OnButtonClick = gridTrainingClassFILE_NAMEButtonClick
              Caption_UTF7 = 'T+AOA-i li+Hsc-u +AREA7Q-nh k+AOg-m'
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = '* Danh m'#7909'c chi ti'#7871't c'#225'c l'#7899'p c'#7911'a ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Control = gridTrainingClass
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
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
    Font.Charset = ANSI_CHARSET
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #272#7883'nh ngh'#297'a ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 512
  end
  object ImageList1: TImageList
    Left = 544
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCCFF7D7A
      79FF6C5B50FF736153FF7F7A76FF0000000000000000CCCCCCFFB4B4B4FFCCCC
      CCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C6C4FFCACACAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A9A99FFE0A08FFFFED8
      C5FFFFF0E7FFEABBB1FFA38767FFEAC287FFA18F2CFFD58D74FFF0C7BFFF9B6E
      46FFCF9B56FF0000000000000000000000000000000000000000000000000000
      000000000000E3B5ABFF91785CFFCBA875FF887925FFAF7460FFC6A49DFF805B
      3AFFAB8047FFB4784BFFAB5D47FF000000000000000000000000000000000000
      0000000000000000000000000000B8986AFF20A55EFF55543FFFC1A099FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8C8AFFF9E1DBFFFFEDE0FFFFDA
      C4FFFFFAF2FFFFFFFCFFFFFCFBFF9A704FFFE99E8BFFFFFBF8FFFFFEFBFFFEFC
      FBFFD79A8EFFBCB8B7FF00000000000000000000000000000000000000000000
      0000000000009D9D9BFFD7D7D7FFDBDBDBFFD8D8D8FFD7D7D7FFB0B0B0FFA4A4
      A4FFC0C0C0FFE6E6E6FF292929FF000000000000000000000000000000000000
      00000000000000000000BABABAFF0DCC71FF2DE48CFF00DF76FF38835EFF9C9C
      9CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C38771FFFFFFFFFFFFFFFFFFFFEE
      E1FFFFFEFCFFFFFFFFFFFFFDF9FFF1C1B6FFFFECD9FFFFCBA6FFFFF5E6FFFFD1
      93FFFFDCADFFA59390FF00000000000000000000000000000000000000000000
      0000FEFDFBFF9F9F9FFFE7E6E4FFDFDFDCFFD8D7D4FFD8D8D3FF878787FF7B7B
      7BFF9D6F92FFD7D7D7FF525252FF000000000000000000000000000000000000
      000000000000828282FF49A6E0FF0DD76CFFEEFEF8FFA4F4CBFF00D463FF1398
      4FFF8E6484FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBCABAFFFFF5EEFFFFFFFFFFFDF1
      ECFFDAAA98FFFFFBF8FFFFEEE3FFFFE0D1FFFFBC8EFFFFC8A0FFFFE8D1FFFFD9
      A8FFFFD297FF685C5BFF0000000000000000000000000000000000000000B4AB
      A8FFDCB4BFFF8D8A89FFEAEAEAFFEAEAEAFFE9E9E9FFE5E5E5FFB5B5B5FF9191
      91FFBABABAFFDADADAFF666666FF000000000000000000000000000000000000
      0000A1848CFF66B8FEFF3198EBFFBDFFE6FFC3FFE8FFAAFFDFFF80F7C4FF00C9
      4EFF0AB549FFB7B7B7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDC9B7FFFFE6D5FFFFF4EAFFFEF3
      EDFFECC4B7FFFFFAF7FFFFEADEFFFFD7C4FFFFBA89FFFFC49AFFFFDCBCFFFFD5
      A1FFFFD8A8FF207598FF0000000000000000000000000000000000000000CBCA
      CAFFF0F0F0FFF1F1F1FF949494FFFCFCFCFFFDFDFDFFFAFAFAFFF4F4F4FFECEC
      ECFFE1E1E1FFDCDCDCFF4B473FFF000000000000000000000000FDF2E8FF8183
      85FF57ABFFFF4A9BFFFF9CE8FFFF7CDFE1FF89FFD3FF78FFCDFF57FFC2FF38FC
      B6FF03BD39FF02B932FF393630FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D49B60FFFFF4EAFFFFFFFEFFFFFF
      FFFFFFEFE4FFFFFEFEFFFFFFFEFFF3C4BBFFFFB785FFFFC79DFFFFD1AAFFFFD0
      A9FFFFD5B1FF206F97FF00000000000000000000000000000000D7D7D6FFF1F1
      F1FFF3F3F3FFF7F7F7FF919191FFFAFAFAFFFDFDFDFFF4F4F4FFF0F0F0FFEDED
      EDFFE2E2E2FF828282FF5EA0ACFF0000000000000000F9EEE4FF687689FF2382
      FFFF4C95FFFF5EB1FFFF74C4FFFF81CFFFFF5ECAD8FF3AFFB9FF1BFFB1FF00FC
      A6FF05F49BFF0DB428FF00AD15FFBBBCA7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFDCD2FFFFFFFFFFFFFD
      F8FFFFE1D2FFFFE8DBFFFFF8F8FFF7A77BFFFFC397FFFFDCBDFFF6C5A4FFE9A9
      89FFD99378FF386089FF0FD8F7FF0000000000000000FCD9D0FFEAC5D3FFF4F4
      F4FFF3F3F3FFDEDEDEFFE6E6E6FFDFDFDFFFFE6CC2FFFB9FD6FFF5D5E8FFEDED
      EDFFFFFFFFFF4A6077FF0000000000000000B8B192FF4C6294FF005FF0FF4285
      F6FF1276FEFF388FFFFF63ABFFFF5FB5E9FF44FDBAFF48FCB9FF48F9B4FF49F5
      AFFF34EF9FFF0CE685FF11AE19FF659664FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E49E80FFFEE4
      DBFFFFD7C9FFF7B2A0FFFBB488FFFFC395FFFFD1ABFFBE928CFF5CB8E5FFA8A0
      A6FF8CE4FFFF8EDFF9FF7F5759FFB3B3B3FF00000000A47F55FFEECADAFFF8F8
      F8FFE7E7E7FFFE6EC3FFFBA5D8FFF3DAE9FFE4CDD9FFFFB3DBFFF3B6D7FFFFFF
      FFFFFFFFFFFF88D5EEFF0000000000000000254DA8FF0045D5FF2B67E2FF1B68
      ECFF4E8AF6FF4F8FFCFF658ABDFF6AF5BAFF6AF6BBFF6AF5B9FF6AF3B6FF62EF
      AEFF6BEDACFF6BE9A5FF67E39CFF54845EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BB8A61FFFFCCA2FFFFCDA3FFC4A8A3FF2FBAFAFF3DC1FDFF4BC8
      FFFF87A0B2FFC7AEA6FFB5867CFFA7726AFFE3E3E3FFFFD5E8FFEAD7E0FFFCFC
      FCFFE7E7E7FFFFB9DDFFFFB2DBFFFE9FD3FFDDDCDCFFE3C4D5FFEDE0E7FFFFFF
      FFFFFFFFFFFF0000000000000000000000001438B6FF1544C7FF5C7EDEFF5E85
      E5FF5E8BEBFF9A878BFFF6B963FFD8B145FF88F1BEFF81F0B9FFF6C74AFFFFCA
      4DFF73E49BFF8AE8B0FF558F5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BB8F70FFFFCCA3FFA4B4BEFF70DEFFFF27B6F9FF35BDFBFF43C4
      FEFF48C5FFFF4FB7EDFF6F8768FF7A957AFFC1A1ADFFFFD5E8FFF3F0F1FFFFFF
      FFFFF6F6F6FFE4E1E3FFE4C2D4FFECCADCFFFFFFFFFFF4F4F4FFEDEDEDFFFFFF
      FFFFC9D8DFFF0000000000000000000000004C5EBAFF7385D1FF7086D7FF6D88
      DDFF9C6F6DFFECAB71FFF0B16CFFF3B668FFF0B252FFFBBD58FFFDC35CFFFFC5
      58FFFFC652FF3898AAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD9882FF74B7D7FF49CEFFFF5FD7FFFF1FB1F6FF2DB9F9FF66D2
      FEFF6CD5FFFF6CD5FFFF73C8ECFFC3C0C0FF93A9D4FFFED5E7FFFFACE3FFFFB4
      E3FFFF92D5FFFFD1ECFFF3F3F3FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF65A2BBFF00000000000000000000000092A8D3FF7680C4FF8390D1FF8091
      D6FF7E92DAFF976E76FFEAAB77FFEDAF72FFF0B26EFFF3B66AFFF5B966FFF8B9
      5DFF57899BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFAAAFFF4EC1FDFF37C7FFFF4DD0FFFF17ADF5FF92E6FFFF96E8
      FFFF96E8FFFF96E8FFFFA48580FF0000000000000000C78238FFFE74CFFFFFB2
      E2FFFFB0E0FFFFB7E1FFFFB0DCFFFF9AD1FFFF88C7FFFFB7DDFFFFF6FAFFFFFF
      FFFF90DFF5FF0000000000000000000000000000000000000000776CB1FF939B
      D1FF919CD4FF909CD7FF765E8FFFE8AA7CFFEAAC78FFECAE74FFEEB06FFFE184
      30FFC97C28FF82C9DDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000817E69FF72D1FFFF84DAFFFF96E4FFFF85D0EBFFC0FCFFFFC0FCFFFFC0FC
      FFFFBFF3F6FF9F9059FF00000000000000000000000000000000000000000000
      0000777360FFF2A8D1FFF979C1FFFF6EBEFFFF90CBFFFF88C7FFFF88C7FFFF7B
      C2FF000000000000000000000000000000000000000000000000000000007072
      72FFA2A5D0FF8E6B9CFF00000000F268B4FFE4A47DFFE7A97EFFE9AA79FFEAAA
      75FFDD7C2BFF9D5D23FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CA8F4EFFBBEAF2FFC6FDFFFF86858FFFA88683FFDEFFFFFFDAE9
      E6FF397EC2FF0000000000000000000000000000000000000000000000000000
      00000000000000000000AED8DFFFF8D0DFFFF8CFDFFF997A78FFB898B2FFD886
      B5FF000000000000000000000000000000000000000000000000000000000000
      0000D5B846FF000000000000000000000000F7CEDEFFD98F6DFFE4A584FFE4A4
      7FFFE5A278FFC7A02AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094DA9EFFE19B81FF579693FF00000000BA8F88FF95B6
      DDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B36E54FFD182
      60FFD9DB93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFFBFBFBFF00000000000000000000000000000000DEDEDEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFD7D7D7FFDCDCDCFF000000000000000000000000000000000000
      0000000000000000000000000000CECEC8FFCECDCBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000CECECEFF8784
      83FF7A675AFF7B6859FF7F7A76FFB7B7B2FF0000000000000000000000000000
      00000000000000000000000000000000000000000000D7D8D7FF00941FFF00AB
      36FF00BF49FF00CF59FF00D861FF00D55FFF00CA54FF00B842FF00A22DFF008B
      16FF007200FF467A4DFF00000000000000000000000000000000D18254FFE1A4
      5EFFEEBD64FFEFC768FFEFCD6BFFEFD16DFFEFD26DFFEFCF6CFFEFC969FFEFC1
      65FFE6AD60FFD58E59FFC26950FFFAFAFAFF0000000000000000000000000000
      00000000000000000000F1D35DFFF9D831FFF6E146FFF0D069FF000000000000
      00000000000000000000000000000000000000000000A6A6A5FFF0C385FFFADF
      A7FFFDEBBAFFFDEBBAFFFAE0A8FFF3C98CFFA4922DFF00000000000000000000
      00000000000000000000000000000000000000000000A2A4A2FF00B03CFF17BF
      56FF33CD70FF4FDA88FF6AE29FFF7FE8ADFF7EE5AAFF65DC96FF4AD17DFF2EC2
      63FF12B348FF007510FF0085FEFF000000000000000000000000DDB57CFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEEC9B6FFFEFEFEFF0000000000000000000000000000
      000000000000FEFDFDFFFFFB97FFFFE86DFFFFDC45FFFFFFDCFF000000000000
      000000000000000000000000000000000000918F8DFFD49557FFEFBD7DFFF5CD
      91FFF7D79DFFF8D79DFFF5CE91FFEFBE7DFFE6A662FF9B8E74FF000000000000
      0000000000000000000000000000000000000000000026BF06FF00CA2DFF00D3
      35FF00DC3EFF0CE55DFF31ED79FF48F38EFF50F494FF45F28BFF2AEC74FF04E3
      57FF00DA3BFF00B92DFF245EA0FF000000000000000000000000899D45FFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE9B080FF000000000000000000000000000000000000
      000000000000FEFCEEFFFFBC2DFFFFFEA0FFFFFA6BFFFEF7A9FFFEFDFCFF0000
      000000000000000000000000000000000000AC9478FFE8B78CFFEAAC69FFEEB9
      77FFF0BF80FFF0BF80FFEEB978FFEAAD69FFE49E64FFF0C498FF9D9EA1FFBCBC
      BCFFEDEDEDFF000000000000000000000000000000000000000000BD2AFF00CE
      31FF00D637FF00DD40FF24E86CFF56F18FFF64F399FF61F396FF55EF8CFF48EC
      7FFF49E77DFF18D449FFC3CAD0FF000000000000000000000000529224FFF7F7
      F7FFF3F3F3FFEFEFEFFFEBEBEBFFE7E7E7FFE3E3E3FFE0E0E0FFEDEDEDFF8888
      88FFFFFFFFFFFFFFFFFFC29561FF00000000C4CCC4FF1DDC00FF539124FF0000
      000000000000F1F1CAFFF1EBA1FFE7E6E2FFE4E3D9FFF9BE29FFEEEDE1FF8887
      86FFFFFCF9FFFFFEE9FFC69B5AFF00000000A18971FFF2BA7AFFE49A53FFE7A3
      5EFFE8A964FFE8A964FFE7A45EFFE49A52FFF1B57CFFE0BB8AFF74FBFDFF08F5
      FDFF00D4FBFF838B90FF0000000000000000F0F0F0FF3CB13FFF028F16FF00C8
      2CFF4AE379FF58EA88FF5CEE8DFF2AE367FF0BCF47FF0ACE44FF09CB40FF09C8
      3DFF0AC33AFF08BD34FF89AFD4FF000000000000000000000000267B16FFF4E9
      E8FFF4E9E8FFF5E9E9FFF7ECE9FFF9F1EAFFFBF4ECFFB9CDE0FF8AAFE3FFF7EE
      EEFFF7EEEEFFF8EEEEFF877B61FF00000000F3F3BAFFC8C81BFF7EB00DFFF6ED
      B4FFF6EDC2FFF8EEA8FFF8EFC1FFF8F0E9FFFBF3E3FFE8D64AFFACC7A0FFF9EF
      A5FFFAEF8CFFFEC128FFE8BA23FFEBEBD6FFEAEAB3FFF5D1A3FFE9AC77FFE5A0
      60FFE6A262FFE6A162FFE5A060FFE5A063FFF5C68EFF2EEAE8FF1BF7FDFF00ED
      FDFF00D4FDFF00B9FDFF7C6320FF00000000B1A9A2FFFFAB58FFE6A854FF76E6
      96FF7AEA9BFF7DEEA0FF81F0A4FF3BDC6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0984AFFF7F7
      F7FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8F8FF6ACAF2FF03B8F6FFE3EFF6FFF9F9
      F9FFF9F9F9FFF9F9F9FF7A8992FF00000000EAD145FFFFED7AFFFDD224FFF9F4
      B8FFFBE772FFFED721FFFBF884FFFAFAB5FFA7DD8FFFF4CF0BFFEBF0B2FFF9F8
      E5FFFBFBBFFFFFF89AFFFFF17DFFFEFEE3FF00000000C7AE63FFE4A470FFEBBA
      8EFFECBC90FFECBC90FFEBBA8EFFE6A168FF99C7BEFF00E0FDFF00E2FDFF00D7
      FDFF00C4FDFF00ADFCFF7EEAFDFFF8F8DEFFB3AAA4FFF7C391FFF7C391FF48D2
      64FF74E38EFF78E693FF7BE897FF46DD6CFF8AE4FDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000F4C18FFFF3F3
      F3FFF3F3F3FFF3F3F3FFF4F4F4FF69C8F1FF04BAF7FFA4E7FAFFF5F5F5FFF5F5
      F5FFF5F5F5FFF6F6F6FF7C93A9FF00000000C3BB9AFFFFFFA9FFF9D967FFF2F2
      F1FFF2F2F2FFF7F5A8FFFBF96BFFFEEF05FFCEEB56FFF1E626FFF6F6E8FF0000
      0000F6F6DDFFFEDC3CFFAFBC93FFFCFCF9FF0000000000000000DEC05BFFC578
      42FFF5E0BFFFF7E5C6FFDE985FFF2BA8DEFF00BAFDFF00C4FDFF00C5FDFF00BE
      FDFF00AFFDFF2E99EDFF0FDDFDFFFBFBF8FFEFEFEFFFFEBF88FFFEC18BFFFEC3
      8CFFFEC48FFF52523FFF72CDE4FFC6D3DDFFD5DDE6FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000E9DE
      DDFFE2D7E0FFEADEDDFF65C2EBFF04BCF8FF9DE1F0FFEEE5E0FFECE1DFFFEBE0
      DFFFECE0DFFFECE0E0FF7B8E96FF00000000EEEEEEFFFEC76FFFFED152FFEBE0
      CAFFE3D7D8FFF3EB87FFFEF52EFFFFFFFFFFFFF9BCFFFEEC0CFFF0E7B4FFEDE2
      CEFFF3E690FFF1E0AAFF7B8D95FF000000000000000000000000AE8E3BFFF4CC
      93FFF8D9A0FFF8DBA2FFF4CD93FF9DACA7FF0EAAFDFF0CB0FDFF08AEFDFF0EAD
      FDFF0EA3FDFF26D2F6FF467BB9FF0000000000000000E1A475FFEBBA94FFECBB
      96FFECBC99FF9F4005FF00DC66FF00DD67FF00C150FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECE9
      E5FFDDDDEEFF65C5EEFF04BFF9FF9EE3F6FFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
      EEFFEEEEEEFFEEEBE7FF5E796AFF0000000000000000E0A375FFEEC47AFFF9DB
      48FFEAEA95FFE3E73AFFFFF958FFFFFFFFFFFFFEF7FFFBF47CFFFDE120FFF8E8
      5CFFF3EEADFFEDE9E5FF00000000000000000000000000000000DA9454FFEBAF
      6CFFEEBB7AFFEFBC7BFFEBB26FFFE6A05AFF62BEFDFF5BBEFDFF5BBEFDFF5BBC
      FDFF4BACF7FF7DDDFBFF5E796AFF0000000000000000A06136FFE1BCA5FFE3BF
      A8FFE4C2ABFFAF5C1EFF0AD060FF09CF5FFF00BC48FFB8CBDEFF000000000000
      000000000000000000000000000000000000000000000000000000000000EBD7
      B7FF55B5EFFF04C1FBFF9EE1F4FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFEAEAEAFFE8CDB2FF00000000000000000000000000000000E0BBA4FFEFDF
      92FFE5D025FFCCDF36FFFCF232FFFFF7A3FFFFF448FFFAEE4BFFF8E44AFFFBCF
      25FFECECCFFF0000000000000000000000000000000000000000DA833DFFECBB
      89FFEFC598FFEFC598FFEDC091FFDE893EFF1384E5FF5DABEDFF65BEF0FF5EA3
      F0FF408DC5FF00000000000000000000000000000000000000000000000096AF
      96FF2CD860FF39E472FF40EA7BFF45EC7FFF23E361FF8DA097FF000000000000
      0000000000000000000000000000000000000000000000000000B2A89EFF4498
      AFFF04C3FCFF57BFA9FF7CC696FF8DAA97FF6EC38AFFB9BBBAFFC4C7CAFFC0C5
      CAFFA5ABB1FF90918EFF00000000000000000000000000000000B7AB94FFCEBC
      2EFF17C7E9FF5CC1A4FF95D07DFFE7E239FFBEDD43FFBCBEB1FFC3C6C8FFC7CA
      B4FFCFC25FFF93928AFF00000000000000000000000000000000927B62FFF2D3
      B7FFF3D6BAFFF3D6BAFFF3D4B8FFB97228FF14C9F7FF15F6FDFF31F8FDFF0BEB
      FDFF1482BFFF929189FF00000000000000000000000000000000000000000000
      000024A84BFF53E07BFF56E480FF58E584FF5BE384FF198437FF000000000000
      00000000000000000000000000000000000000000000CC8639FF33768BFF05C5
      FCFF67BCBDFF4FD676FF000000006CA57EFF0000000075957EFFD6E3F0FFD7E4
      F0FF9DA7B1FF00000000000000000000000000000000CB8539FF5E8B6EFF4DCC
      B4FF67BBBCFF0000000069E771FFE8D014FF8FEB5AFF7B9979FF00000000D7E2
      EBFFDBB141FFD0D0B1FF0000000000000000000000000000000000000000638C
      70FFF2D5BFFFF4DCC9FFA68F4FFF747A35FF00C4FDFF00DAFDFF00E0FDFF00D0
      FDFF00B5FDFFBCBCA0FF00000000000000000000000000000000000000000000
      00007D9890FF6DDD89FF6FE08CFF72E18FFF74E08FFF00880DFFDCE6F1FF0000
      000000000000000000000000000000000000C4874EFF707D7EFF05C7FEFF749D
      A3FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007C8873FFC6C43AFFC5C9
      48FF879F85FF7DE07AFFC3DC3AFF84E57DFFAEE253FF54AB09FFDFE5DBFFE6EE
      CDFFF7DE46FFFFFD90FFFFFEF9FF000000000000000000000000000000000000
      0000000000000000000000000000338286FF0EAEFDFF46D0FDFF46D3FDFF44CB
      FDFF009CFDFFDBDA7FFF00000000000000000000000000000000000000000000
      0000DDAD77FF86DD97FF88DF9AFF8AE09CFF8DE09EFF27A431FFDCE5EDFF0000
      0000000000000000000000000000000000006E5F5AFFDCDCDCFFA09784FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3B8FFFFE766FFFFE4
      5FFFEACA4BFFE2BA24FF95E189FF000000008DDF9DFF4EAF28FFF6BA3EFFF6EF
      5EFFFFEA72FFFFD93AFFFFFFEEFF000000000000000000000000000000000000
      00000000000000000000000000007CCA8FFF91D2FDFF91D7FDFF91D7FDFF91D5
      FDFF3CA0FDFFFED83AFF00000000000000000000000000000000000000000000
      00000000000055BE67FF95DC9FFF97DEA2FF9ADEA3FF78CC7FFFF9F9F9FF0000
      00000000000000000000000000000000000090B6FFFFB9BBC3FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBFBAFFFFFE8CFFFFFC
      84FFFFF8C9FF5BBD63FF00000000000000000000000000000000F9F5F1FFFFFF
      DAFFFFFFA6FFFFFBA1FFFEFEFBFF000000000000000000000000000000000000
      000000000000000000000000000000000000599996FFDBEDFDFFE6F3FDFFA8D0
      FDFFDBDD94FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FFB6B7B7FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF5F5F5FF000000000000000000000000000000000000
      000000000000B5B6B6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FF50CDEBFF879596FFA8A8A8FFDFDFDFFFF9F9F9FF000000000000
      000000000000000000000000000000000000CFCFCFFFCECECEFFCECECEFFCECE
      CEFFCDCDCDFFBBC9CCFFC1C2C2FFC2C2C2FFC1C1C1FFB4B4B4FFCDCDCDFFCECE
      CEFFD0D0D0FF000000000000000000000000CCCCCCFFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFB1BFC2FFB7B8B8FFA8A8A8FF25D6FFFF23CBFFFF20BFFFFF009D
      FFFF009EFFFF0087FFFF0086FFFF00000000000000000000000000000000C1C1
      C1FF8D8D8DFF83888AFF5F656AFF696969FF1A98B5FF1CA2CCFF1CAAE3FF0097
      F6FF009DFEFF000000000000000000000000000000000000000000000000E9E9
      E9FFFBFBFBFFFBFBFBFFECECECFFC7C7C7FFF1F1F1FFF7F7F7FFA8A8A8FF9292
      92FFCCCCCCFFF2F2F2FF0000000000000000EDEDEDFFDDDDDDFFDCDCDCFFDEDE
      DEFFDEDEDEFFDDDDDDFFDEDEDEFFE9E9E9FFD1D1D1FFC6C6C6FFD4D4D4FFEBEB
      EBFFEDEDEDFF000000000000000000000000A0AE9EFF27C406FF26BF06FF1CBD
      09FF13B808FF1BAC06FF1E9806FF1D9006FF54EEFFFF3DDDFFFF26CCFFFF0BBC
      FFFF00A8FFFF0082FFFF3589E8FF000000000000000000000000000000001BB9
      09FF237B1DFF7AA7D2FF8CADCDFFAEC1D4FFDADEE1FFD8E0E8FFB7CCE0FF6795
      B9FF25648DFF024D95FF2765ABFFF2F2F2FF00000000000000000000000065BB
      BFFFF3F3F3FFE1E1E1FFF8F8F8FFF1F1F1FFD3D3D3FFCED1D3FFFDFDFDFFFDFD
      FDFFFEFEFEFFFEFEFEFF0000000000000000F0F0F0FFD3D3D3FFCACACAFFF0F0
      F0FFF0F0F0FFE2E2E2FFEEEEEEFFC2C4C2FF5BC875FFBABBBAFFFCFCFCFFD4D4
      D4FFEEEEEEFF000000000000000000000000C5CDC5FF15DE00FF00E00CFF04D8
      01FF12CC00FF1FC000FF1EB200FF1CA100FF188F00FF5AB9C7FF0FAFFFFF0076
      F5FF0282EDFFA8B7C7FF000000000000000000000000000000000000000004C9
      01FF0D8801FF97B9DAFF91B8DEFF92B9DFFF92B9DFFF91B9DFFF90B8DEFF92B5
      D8FFCBDAE9FFF9F9F9FFD8E0E7FFD3D4D5FF0000000000000000BABDBDFFBCF0
      F0FFFDFDFDFFFDFDFDFFFDFDFDFFF0F0F0FFCEE4E7FFEBEBEBFFC5C5C5FFFDFD
      FDFFFFFFFFFFCECECEFF0000000000000000F4F4F4FFD6D6D6FFCDCDCDFFF4F4
      F4FFF4F4F4FFE3E3E3FFBEC3BEFF25C955FF27DD6AFF6CE89DFFB1B9B3FFC2C2
      C2FFCFCFCFFF0000000000000000000000000000000043C446FF06EA00FF12DF
      00FF1EB500FF1CA600FF188D00FF137500FF695101FF0AB2FCFF049DEFFF007D
      EAFF0070ECFF9098A0FF00000000000000000000000000000000000000001FA9
      13FF2E7B1FFF91ADC7FF99BDE0FF9ABEE0FF9ABEE1FF82AFD5FF76A1D5FFA2B7
      D0FF95BADFFF92B9DFFF8FB7DEFFE9E9E9FF00000000F7F7F7FF94FCFCFFE3F4
      F4FFD3D3D3FFE9E9E9FFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFF5F5F5FFA6C3
      CCFF5EC3DEFFA0A0A0FFFDFDFDFF00000000F7F7F7FFCECECEFFC6C6C6FFE8E8
      E8FFE6E6E6FFA3B1ACFF0CB132FF00C138FF00CE44FF0FD755FF13D757FF9CAB
      A1FFE6E6E6FF0000000000000000000000000000000000000000C5C5C5FF5CC6
      36FF1DAA00FF147800FFB9794AFFDA7055FFCD6141FF43D7FFFF16CCFFFF008F
      FFFF007DFEFF8D8E8FFF0000000000000000000000000000000000000000779E
      69FF5B825BFF96B8D9FF9FC0E0FFA8C4D9FF049AE4FF19C6F9FFDBE7F3FF9FC1
      E2FF9DC0E1FF9ABEE1FF97BBDFFFFEFEFEFF0000000078A6A6FFA8FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF4F4F4FFE6E6E6FFF0F0F0FFE2E2E2FFF4F4F4FFF1F1
      F1FFDFDFDFFF8AABB5FF8E9498FFFDFDFDFFFBFBFBFFDCDCDCFFD3D3D3FFFAFA
      FAFFB9CFB9FF009514FF32B74DFF50CB6FFF2EC65AFF50D678FF4CD575FF14C2
      45FFC5DBCAFF0000000000000000000000000000000000000000000000009BAD
      58FF1A9800FF199200FFE46E54FFD96346FFCE5838FF7AD6E6FF1DD1FFFF0099
      FFFF007DFEFF81A0AAFF00000000000000000000000000000000D2D2D2FF8F95
      7AFF789089FF99B7D4FF119EE4FF0AC1F9FF8BE5FEFFDBE7F3FFE7EFF7FFADCA
      E7FFA4C4E4FFA1C2E3FF8CA7C0FF00000000DDDDDDFFA8FFFFFFA7FEFEFFFFFF
      FFFFDBDBDBFFE5E5E5FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFF4F4F4FFF5F5F5FFA5BDC5FFD4D4D4FFFEFEFEFFDFDFDFFFD6D6D6FFFEFE
      FEFFF2F5F2FF65B86BFF78C883FF71C983FFEDEDEDFF70CE88FF78D58EFF78D2
      8CFF46BC5DFF97A498FF00000000000000000000000000000000CCCCCCFF21C0
      00FF21B40AFF178B00FFA6712DFFB73715FFB13C1DFF82A9A7FF15C9FFFF0086
      FEFF009EFFFF939F94FF000000000000000000000000DCDCDCFFBABABAFF3C78
      30FF1C99D0FF04BCF8FF7EE3FDFFDCEAF5FFE5EEF7FFE1EBF6FFBCD3EBFFDCE8
      F4FFE2EBF6FFA9C7E5FF82969EFF000000007CE4E4FFA8FFFFFFA5F4F4FFF0F0
      F0FFD9D9D9FFF4F4F4FFF8F8F8FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDDDDDDFF00000000B6C8CFFFFDFDFDFFFFFFFFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFDEDEDEFF95CB99FFEFEFEFFFE2E2E2FFEFEFEFFF77BC83FF9ED8
      A7FF9ED6A5FF6EBB73FF617D6EFF000000000000000000000000DFDFDFFF12DF
      00FF21C100FF1B9C00FF6A8E27FFA12600FF901600FFC5C4C3FF97F4FEFF69DD
      FFFF1EA4D7FF000000000000000000000000F9F9F9FFB2B2B2FF2D81A5FF00B7
      F7FF79E7FEFFAAD1ECFFD9E6F3FFE1EBF6FFD8E6F3FFBBD3EAFFEAF1F8FFE4ED
      F6FFBBD3EAFFB0CCE7FF5F7B6CFF0000000099C9C9FFA5FFFFFFC6F1F1FFDCDC
      DCFFE1E1E1FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB7B7B7FF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEFEFEFFFE3E3E3FFEFEFEFFFEFEFEFFFE3E3E3FFEFEFEFFFD6D6D6FF83B2
      86FFC6E3C7FFC6E2C6FF9ECE9EFF7B977BFF0000000000000000F2F2F2FF26C7
      13FF1CA700FF1A9B00FF467D08FFAE2D00FF9D2300FFECECECFFD5D5D5FF81B0
      84FF00000000000000000000000000000000717786FFBBBBBBFF6EE6FEFF5097
      6FFF9DB1C4FFDFEAF5FFC5D9EDFFE9F1F8FFE3EDF6FFC5D9EEFFEEF4FAFFF1F6
      FBFFE7EFF7FFB5CDE7FF0000000000000000000000000000000083D2EFFF9DE2
      FFFFC3EBFFFFFCFCFCFFFEFEFEFFDFDFDFFFD5D5D5FFE7E7E7FFFDFDFDFFFFFF
      FFFFF3F3F3FF000000000000000000000000EEDDCFFFEFDFD0FFF1E1D2FFF2E3
      D4FFF3E4D5FFF4E5D6FFF4E5D6FFF3E5D5FFF3E3D4FFF1E2D3FFF0E0D1FFEEDD
      CFFFAABA8BFFE8F3E8FF88C288FFFCFCFCFF00000000000000000000000055DD
      52FF4BE252FF52CF49FFD86845FFC46243FFB03204FFD2C5B8FF000000000000
      000000000000000000000000000000000000A5C9FFFFB5ADA5FFB3A99FFF97B0
      97FFABC0D5FFC5D9EDFFC7DAEEFFC8DBEEFFE5EEF7FFEFF4FAFFEBF2F9FFDEE9
      F5FFC1D6ECFFA4AFB0FF000000000000000000000000FDFDFDFFAFE4FFFFE9F7
      FFFFA1DCFFFF8ED3FFFF86CBFFFF72BEFFFF90C8FFFFDBEBFFFFFFFFFFFFFFFF
      FFFF00000000000000000000000000000000B96717FFCE8739FFE1A45AFFEFB5
      67FFFCCA81FFFFD797FFFFCD80FFFAC16DFFEDAC56FFE3A964FFCF8A3EFFBE71
      27FFA84F01FFD3D9D3FF00000000000000000000000000000000000000000000
      0000FBC980FFD0AC7AFFEF6D56FFC0441DFFAE2E00FFC18E54FF000000000000
      0000000000000000000000000000000000000000000000000000AC8C66FF9481
      67FFBED2E7FFCCDEEFFFCEDFF0FFD1E1F1FFEDF3F9FFD8E5F3FFD9E6F3FFDAE7
      F3FFD4E3F2FFCAD0CAFF00000000000000000000000000000000A8BAC4FF74B9
      E4FF59BAFFFF6ABCFFFF69B7FFFF8AC3FFFF68ADFFFF68A7FFFF67A1FFFF4989
      F7FF00000000000000000000000000000000C6884FFFEDD5BDFFF2DFC9FFF6E3
      CCFFF8E3C8FFF9DEB8FFF5C98EFFF0C489FFE9BA80FFEACAA5FFE1BB94FFD4A6
      7BFFA95206FF0000000000000000000000000000000000000000000000000000
      000000000000E7CEABFFFD8F7DFFD85E40FFB23505FFDFC09DFF000000000000
      000000000000000000000000000000000000000000000000000000000000C3BA
      ADFFD0DAE4FFD2E2F1FFD6E4F2FFDAE7F3FFDDE9F4FFDFEAF5FFE0EAF5FFE1EB
      F6FFE1EBF6FF0000000000000000000000000000000000000000000000000000
      00000000000000000000ECECECFF99ADC3FF72A6EDFF78ABFFFF82ADFFFF899B
      B8FF00000000000000000000000000000000C28651FFCC945FFFD5A06AFFDDAB
      74FFE3B27AFFE5B77EFFE1B27AFFCFA36FFFC19A71FFBC906AFFB3845EFFAC74
      45FFC0834DFF0000000000000000000000000000000000000000000000000000
      00000000000000000000F6D0C4FFFEBAACFFC26C4DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A86249FFAAA29BFFE5EEF7FFE7EF
      F8FFAA9D92FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFF000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C18FFFFFFF3F00008007F801FE1F0000
      0003F801FC0F00000003F001F80700000003E001F00300000003E001C0010000
      0003C001800000008001800300000000C000800300000000F800000700010000
      F800000700030000F800000700070000F8018007C0030000F003F00FE2030000
      F807FC0FF7030000FC4FFFFFFFC700008003C001FE7FC0FF8003C000FC3F807F
      8001C000F83F003F8001C001F81F0007C001C001180100030001C00100000001
      00FFC00100008000007FC0010010C000007FE0010001C001807FE0018003C001
      803FE003C007C007E03FC003C003C003F03F82878423E003F01F0FFF8001FE03
      F01F1FFF8101FE03F81F3FFF83C1FF07FFFFFFFFFFFFFFFFF1FFFFFFFE01FBFF
      F03F00070001E007E00300070001E000E00300070003E000C00300078003E000
      80010007C003E00080000007E003C00100000003C003800100040001C0070001
      00070000C00F0003C0070000E03F0003800F0003F03FC003C00F0007F83FE007
      FC0F0007FC7FFF07FFFFFFFFFFFFFFF700000000000000000000000000000000
      000000000000}
  end
  object dsTrainingCourse: TDataSource
    DataSet = qryTrainingCourse
    Left = 42
    Top = 298
  end
  object qryTrainingCourse: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TR_COURSE'
      'WHERE'
      '   COURSE_CODE = :OLD_COURSE_CODE')
    EditSQL.Strings = (
      'UPDATE HR_TR_COURSE SET'
      '   COURSE_CODE = :COURSE_CODE, /*PK*/'
      '   COURSE_NAME = :COURSE_NAME,'
      '   COURSE_CONTENT = :COURSE_CONTENT,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   TIME_PERIOD = :TIME_PERIOD,'
      '   TIME_UNIT = :TIME_UNIT,'
      '   DAY_COUNT = :DAY_COUNT,'
      '   INSIDE_OUTSIDE = :INSIDE_OUTSIDE,'
      '   COURSE_TYPE = :COURSE_TYPE,'
      '   TRAIN_ORDER = :TRAIN_ORDER'
      'WHERE'
      '   COURSE_CODE = :OLD_COURSE_CODE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TR_COURSE('
      '   COURSE_CODE, /*PK*/'
      '   COURSE_NAME,'
      '   COURSE_CONTENT,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   TIME_PERIOD,'
      '   TIME_UNIT,'
      '   DAY_COUNT,'
      '   INSIDE_OUTSIDE,'
      '   COURSE_TYPE,'
      '   TRAIN_ORDER)'
      'VALUES ('
      '   :COURSE_CODE,'
      '   :COURSE_NAME,'
      '   :COURSE_CONTENT,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :TIME_PERIOD,'
      '   :TIME_UNIT,'
      '   :DAY_COUNT,'
      '   :INSIDE_OUTSIDE,'
      '   :COURSE_TYPE,'
      '   :TRAIN_ORDER)')
    KeyLinks.Strings = (
      'COURSE_CODE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryTrainingCourseBeforePost
    OnNewRecord = qryTrainingCourseNewRecord
    SQL.Strings = (
      'SELECT COURSE_CODE'
      '     , COURSE_NAME'
      '     , COURSE_CONTENT'
      '     , FILE_NAME'
      '     , FILE_CONTENT'
      '     , TIME_PERIOD'
      '     , TIME_UNIT'
      '     , DAY_COUNT'
      '     , INSIDE_OUTSIDE'
      '     , COURSE_TYPE'
      '     , TYPE_NAME'
      '    , TRAIN_ORDER'
      'FROM HR_TR_COURSE'
      'LEFT JOIN HR_TRAINING_TYPE on COURSE_TYPE=TYPE_NO')
    FieldOptions = []
    Left = 42
    Top = 266
    object qryTrainingCourseCOURSE_CODE: TWideStringField
      Tag = 1
      FieldName = 'COURSE_CODE'
      Required = True
      Size = 30
    end
    object qryTrainingCourseCOURSE_NAME: TWideStringField
      FieldName = 'COURSE_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingCourseCOURSE_CONTENT: TWideStringField
      FieldName = 'COURSE_CONTENT'
      Size = 3072
    end
    object qryTrainingCourseFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 126
    end
    object qryTrainingCourseFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryTrainingCourseTIME_PERIOD: TIntegerField
      FieldName = 'TIME_PERIOD'
    end
    object qryTrainingCourseTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
    end
    object qryTrainingCourseDAY_COUNT: TIntegerField
      FieldName = 'DAY_COUNT'
    end
    object qryTrainingCourseINSIDE_OUTSIDE: TSmallintField
      FieldName = 'INSIDE_OUTSIDE'
    end
    object qryTrainingCourseCOURSE_TYPE: TWideStringField
      FieldName = 'COURSE_TYPE'
      Size = 30
    end
    object qryTrainingCourseTYPE_NAME: TWideStringField
      FieldName = 'TYPE_NAME'
      Size = 126
    end
    object qryTrainingCourseTRAIN_ORDER: TIntegerField
      FieldName = 'TRAIN_ORDER'
    end
  end
  object ImageList2: TImageList
    Left = 578
    Top = 2
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
      0000F6F6F6FFC2C2C2FF918B84FF51445DFF71676AFFA4A29FFFDDDDDDFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7FBFF3E3FB7FF9E9ED0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F5F8FF978D
      85FFD8813CFFE29956FFF1AC77FFFCBD97FFF7B587FFEBAA6CFFE1A962FFBA90
      5DFFC9C9CFFF0000000000000000000000000000000000000000F9F9FCFFFBFB
      FBFF0000000000000000EFEFF7FFCECEFFFF696BD9FF00000000000000000000
      0000F4F4FBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F4FF9B4423FFD881
      2FFFF7D699FFFEE4ABFFFEEDBCFFFEFBD7FFFEF3C6FFFEE6AEFFFEE4AAFFE9B2
      67FFDA8A41FF7A7488FF000000000000000000000000FDFDFDFF3537CEFF3E3F
      BBFFF1F1F8FF00000000EFEFF7FFCDCDFFFF9599E1FF00000000000000009F9F
      CFFF2729E3FFB4B4DCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFAC5128FFE39C4DFFFEC2
      6DFFFECC7BFFFEDB98FFFEE8B2FFFEF2C4FFFEEDBBFFFEE0A3FFFED287FFFEC3
      6CFFFDCD83FFD57429FFC7C5C5FF0000000000000000FCFCFCFF8888FFFF7272
      FFFF3233BAFFF1F1F7FFEFEFF7FF8A8AFFFF767BE1FF000000009F9FCFFF2424
      FEFF6868FFFF9597DAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAC7C7FFDD8335FFFEAA53FFFBB2
      5CFFF8EAE0FFF9EFE6FFFAF2E9FFFAF4EBFFFBF6EDFFFBF6EDFFFAF4ECFFF5E3
      CFFFFEB059FFFEB15FFFCE5613FFFEFEFEFF0000000000000000A2A3E2FF5151
      FFFF6B6BFDFF4444B7FFF4F4F9FF5151FFFF6368E2FFD8D8EDFF1E1EE3FF7E7E
      FFFF5052FEFFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AF562EFFFE9742FFFEA44EFFFEBF
      79FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEAA53FFFE9C47FFED9846FFE6E6E6FF000000000000000000000000A1A2
      E2FF4646FFFF5656FBFF00000000D6D6EDFFFEFEFEFFD8D8EDFF6264FFFF4E51
      FEFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE691EFFFE8F3CFFFE9C48FFFEB8
      72FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEA14CFFFE9540FFFE8834FFA49BA5FF9D9DCEFF8181BDFF8282BDFF8383
      BEFFB5B6E3FFEEEEF3FF00000000000000000000000000000000BABCEFFFA7A7
      D2FF8383BCFF8383BDFF8383BDFFDADAEEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F07023FFFE8834FFFE9440FFFEBA
      7DFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFE9F50FFFE8C38FFFE7F2DFF44387FFF4141E5FF5151E7FF5455E5FF5354
      E6FF7373C8FF0000000000000000000000000000000000000000FBFBFEFF3636
      DFFF4F50E5FF4E4FE5FF494AE5FF4F4FC3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F26719FFFEA76FFFF7D0B8FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFDA971FFFE9658FF635996FF6868FEFF6D6EFDFF7376FCFF797E
      FCFFA7AAE0FF0000000000000000000000000000000000000000000000007E7E
      FFFF7677FEFF5052FDFF1012FCFF7B7CDBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D76429FFFEAE7EFFFEBA8DFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEF2EBFFFEB080FFFE9B63FFEDEDEDFF000000000000000000000000FCFC
      FDFF8F8FBEFFADADD3FF00000000E0E0F0FFF6F6FCFFF0F0F9FF6C6CAFFFD3D3
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0C8C5FFFEAA7CFFFEBB93FFFEBE
      97FFFEE9DBFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEB
      DEFFFEBC94FFFEB890FFF86317FF000000000000000000000000FCFCFDFF6D6D
      B1FF5E62EAFF4A4FE6FFF2F2F8FF0608E2FF5B5CC6FFCACAE6FF8686F6FF0A0A
      C6FFCFCFE8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E15E1EFFFEC3A4FFFEC6
      A6FFFEC8A9FFFECEB0FFFEFEFEFFFEFEFEFFFEFEFEFFFEF4EDFFFEFEFEFFFEEC
      E2FFFEC4A5FFFE9F6FFFD7D1CFFF0000000000000000000000006969B4FF5C5E
      E8FF989AF8FF8F92E5FFF0F0F7FF7A7CFCFF7778DFFFF8F8FCFF8989FFFF8888
      FFFF0A0AC5FFDCDCEFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DF5117FFFECE
      B5FFFED2B9FFFED3BBFFFED4BBFFFEE9DDFFFEDAC6FFFED3BBFFFED2BAFFFED1
      B9FFFE9D6DFF735D84FF000000000000000000000000FAFAFCFF5D5DF1FFABAB
      FDFF9596E8FF00000000F0F0F7FF8989FDFF7B7BDFFF00000000EAEAF8FFA5A5
      FFFFA3A3FFFF8282CDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008A6D
      8AFFFB793BFFFED7C4FFFEDECEFFFEDECEFFFEDECEFFFEDECDFFFEB490FFE659
      18FFC4C4F5FF0000000000000000000000000000000000000000C5C5F5FFA3A3
      EAFF0000000000000000F0F0F8FF9898FDFF8282DFFF0000000000000000EAEA
      F4FFCCCCFFFFE3E3F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FFC2A89CFFA16A72FF8A6471FFCFC5C1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFEFFB5B5FEFFA5A5E2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F00FFC7F00000000
      C007CC7700000000800384630000000000018043000000000000C00300000000
      0000E20700000000000003C000000000000007C000000000000007E000000000
      0000E20F000000000001C007000000008001C00300000000C003844300000000
      E007CC6300000000F83FFC7F0000000000000000000000000000000000000000
      000000000000}
  end
  object qryTrainingClass: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_TR_CLASS'
      'WHERE'
      '   CLASS_CODE = :OLD_CLASS_CODE')
    EditSQL.Strings = (
      'UPDATE HR_TR_CLASS SET'
      '   CLASS_CODE = :CLASS_CODE, /*PK*/'
      '   COURSE_CODE = :COURSE_CODE,'
      '   CLASS_NAME = :CLASS_NAME,'
      '   INSIDE_OUTSIDE = :INSIDE_OUTSIDE,'
      '   CLASS_CONTENT = :CLASS_CONTENT,'
      '   TEACHER = :TEACHER,'
      '   TEACHER_NO = :TEACHER_NO,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   CLASS_PLACE = :CLASS_PLACE,'
      '   PREV_CLASS = :PREV_CLASS,'
      '   TIME_PERIOD = :TIME_PERIOD,'
      '   TIME_UNIT = :TIME_UNIT,'
      '   DAY_COUNT = :DAY_COUNT,'
      '   CLASS_TYPE = :CLASS_TYPE,'
      '   TRAIN_ORDER = :TRAIN_ORDER'
      'WHERE'
      '   CLASS_CODE = :OLD_CLASS_CODE')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_TR_CLASS('
      '   CLASS_CODE, /*PK*/'
      '   COURSE_CODE,'
      '   CLASS_NAME,'
      '   INSIDE_OUTSIDE,'
      '   CLASS_CONTENT,'
      '   TEACHER,'
      '   TEACHER_NO,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   CLASS_PLACE,'
      '   PREV_CLASS,'
      '   TIME_PERIOD,'
      '   TIME_UNIT,'
      '   DAY_COUNT,'
      '   CLASS_TYPE,'
      '   TRAIN_ORDER)'
      'VALUES ('
      '   :CLASS_CODE,'
      '   :COURSE_CODE,'
      '   :CLASS_NAME,'
      '   :INSIDE_OUTSIDE,'
      '   :CLASS_CONTENT,'
      '   :TEACHER,'
      '   :TEACHER_NO,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :CLASS_PLACE,'
      '   :PREV_CLASS,'
      '   :TIME_PERIOD,'
      '   :TIME_UNIT,'
      '   :DAY_COUNT,'
      '   :CLASS_TYPE,'
      '   :TRAIN_ORDER)')
    KeyLinks.Strings = (
      'CLASS_CODE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeInsert = qryTrainingClassBeforeInsert
    BeforePost = qryTrainingClassBeforePost
    OnNewRecord = qryTrainingClassNewRecord
    SQL.Strings = (
      'SELECT HR_TR_CLASS.COURSE_CODE'
      '     , HR_TR_COURSE.COURSE_CODE COURSE_CODE_ORG'
      '     , HR_TR_COURSE.COURSE_CODE||CLASS_CODE KEY_ID'
      '     , COURSE_NAME'
      
        '     , HR_TR_COURSE.COURSE_CODE||'#39' - '#39'||COURSE_NAME COURSE_FULL_' +
        'NAME'
      '     , CLASS_CODE'
      '     , CLASS_NAME'
      '     , HR_TR_CLASS.INSIDE_OUTSIDE'
      '     , CLASS_CONTENT'
      '     , TEACHER'
      '     , TEACHER_NO'
      '     , HR_TR_CLASS.FILE_NAME'
      '     , HR_TR_CLASS.FILE_CONTENT'
      '     , CLASS_PLACE'
      '     , PREV_CLASS'
      '     , HR_TR_CLASS.TIME_PERIOD'
      '     , HR_TR_CLASS.TIME_UNIT'
      '     , HR_TR_CLASS.DAY_COUNT'
      '     , CLASS_TYPE'
      '     , TYPE_NAME'
      '     , HR_TR_CLASS.TRAIN_ORDER'
      'FROM HR_TR_COURSE'
      'LEFT JOIN HR_TR_CLASS on '
      '  HR_TR_COURSE.COURSE_CODE=HR_TR_CLASS.COURSE_CODE'
      'left JOIN HR_TRAINING_TYPE on'
      '  CLASS_TYPE=TYPE_NO'
      'order by HR_TR_COURSE.TRAIN_ORDER,HR_TR_CLASS.TRAIN_ORDER')
    FieldOptions = []
    Left = 90
    Top = 266
    object qryTrainingClassCOURSE_CODE: TWideStringField
      FieldName = 'COURSE_CODE'
      Required = True
      Size = 30
    end
    object qryTrainingClassKEY_ID: TWideStringField
      FieldName = 'KEY_ID'
      ReadOnly = True
      Size = 60
    end
    object qryTrainingClassCOURSE_NAME: TWideStringField
      FieldName = 'COURSE_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingClassCOURSE_FULL_NAME: TWideStringField
      FieldName = 'COURSE_FULL_NAME'
      ReadOnly = True
      Required = True
      Size = 159
    end
    object qryTrainingClassCLASS_CODE: TWideStringField
      Tag = 1
      FieldName = 'CLASS_CODE'
      Required = True
      Size = 30
    end
    object qryTrainingClassCLASS_NAME: TWideStringField
      FieldName = 'CLASS_NAME'
      Required = True
      Size = 126
    end
    object qryTrainingClassINSIDE_OUTSIDE: TSmallintField
      FieldName = 'INSIDE_OUTSIDE'
    end
    object qryTrainingClassCLASS_CONTENT: TWideStringField
      FieldName = 'CLASS_CONTENT'
      Size = 3072
    end
    object qryTrainingClassTEACHER: TWideStringField
      FieldName = 'TEACHER'
      Size = 126
    end
    object qryTrainingClassTEACHER_NO: TWideStringField
      FieldName = 'TEACHER_NO'
      Size = 30
    end
    object qryTrainingClassFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 126
    end
    object qryTrainingClassFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryTrainingClassCLASS_PLACE: TWideStringField
      FieldName = 'CLASS_PLACE'
      Size = 3072
    end
    object qryTrainingClassPREV_CLASS: TWideStringField
      FieldName = 'PREV_CLASS'
      Size = 30
    end
    object qryTrainingClassTIME_PERIOD: TIntegerField
      FieldName = 'TIME_PERIOD'
    end
    object qryTrainingClassTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
    end
    object qryTrainingClassDAY_COUNT: TIntegerField
      FieldName = 'DAY_COUNT'
    end
    object qryTrainingClassCLASS_TYPE: TWideStringField
      FieldName = 'CLASS_TYPE'
      Size = 30
    end
    object qryTrainingClassTYPE_NAME: TWideStringField
      FieldName = 'TYPE_NAME'
      Size = 126
    end
    object qryTrainingClassCOURSE_CODE_ORG: TWideStringField
      FieldName = 'COURSE_CODE_ORG'
      Required = True
      Size = 30
    end
    object qryTrainingClassTRAIN_ORDER: TIntegerField
      FieldName = 'TRAIN_ORDER'
    end
  end
  object dsTrainingClass: TDataSource
    DataSet = qryTrainingClass
    Left = 90
    Top = 298
  end
end
