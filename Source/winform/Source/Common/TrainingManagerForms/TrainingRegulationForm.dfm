inherited frmTrainingRegulation: TfrmTrainingRegulation
  Left = 185
  Top = 221
  Width = 838
  Height = 518
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object dxlcMsg: TdxLayoutControl [0]
    Left = 440
    Top = 120
    Width = 385
    Height = 281
    TabOrder = 2
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object insClassDetail: TdxDBInspector
      Left = 14
      Top = 28
      Width = 349
      Height = 138
      Color = clWindow
      DataSource = dsClassDetail
      DefaultFields = False
      TabOrder = 3
      DividerPos = 161
      Flat = True
      GridColor = clBtnFace
      Images = ImageList2
      PaintStyle = ipsNET
      OnDrawValue = insClassDetailDrawValue
      Data = {
        1901000008000000080000000000000013000000696E73436C61737344657461
        696C526F773133080000000000000013000000696E73436C6173734465746169
        6C526F77313408000000000000001C000000696E73436C61737344657461696C
        494E534944455F4F555453494445080000000000000017000000696E73436C61
        737344657461696C545950455F4E414D45080000000000000015000000696E73
        436C61737344657461696C54454143484552080000000000000019000000696E
        73436C61737344657461696C434C4153535F504C414345080000000000000013
        000000696E73436C61737344657461696C526F77313508000000000000001700
        0000696E73436C61737344657461696C46494C455F4E414D4500000000}
      object insClassDetailCOURSE_CODE: TdxInspectorDBRow
        Alignment = taCenter
        Caption = 'M'#227' s'#7889
        ReadOnly = True
        Visible = False
        FieldName = 'COURSE_CODE'
      end
      object insClassDetailCOURSE_NAME: TdxInspectorDBRow
        Caption = 'T'#234'n ch'#432#417'ng tr'#236'nh'
        ReadOnly = True
        Visible = False
        FieldName = 'COURSE_NAME'
      end
      object insClassDetailCLASS_CODE: TdxInspectorDBRow
        Alignment = taCenter
        Caption = 'M'#227' s'#7889
        ReadOnly = True
        Visible = False
        FieldName = 'CLASS_CODE'
      end
      object insClassDetailCLASS_NAME: TdxInspectorDBRow
        Caption = 'T'#234'n l'#7899'p '#273#224'o t'#7841'o'
        ReadOnly = True
        Visible = False
        FieldName = 'CLASS_NAME'
      end
      object insClassDetailTEACHER: TdxInspectorDBRow
        Caption = 'Gi'#225'o vi'#234'n '#273#7913'ng l'#7899'p'
        ReadOnly = True
        FieldName = 'TEACHER'
      end
      object insClassDetailCLASS_PLACE: TdxInspectorDBRow
        Caption = #272#7883'a '#273'i'#7875'm'
        ReadOnly = True
        FieldName = 'CLASS_PLACE'
      end
      object insClassDetailTYPE_NAME: TdxInspectorDBRow
        Caption = 'Ph'#226'n lo'#7841'i'
        ReadOnly = True
        FieldName = 'TYPE_NAME'
      end
      object insClassDetailRow13: TdxInspectorComplexRow
        Items = <
          item
            Fixed = True
            Row = insClassDetailCOURSE_CODE
          end
          item
            Row = insClassDetailCOURSE_NAME
          end>
      end
      object insClassDetailRow14: TdxInspectorComplexRow
        Items = <
          item
            Fixed = True
            Row = insClassDetailCLASS_CODE
          end
          item
            Row = insClassDetailCLASS_NAME
          end>
      end
      object insClassDetailRow15: TdxInspectorComplexRow
        Items = <
          item
            Row = insClassDetailTIME_PERIOD
          end
          item
            Row = insClassDetailTIME_UNIT
          end>
      end
      object insClassDetailFILE_NAME: TdxInspectorDBButtonRow
        Caption = 'T'#224'i li'#7879'u '#273#237'nh k'#232'm'
        ReadOnly = True
        Buttons = <
          item
            Default = True
            Visible = False
          end
          item
            Default = False
            Kind = bkDown
          end>
        OnButtonClick = insClassDetailFILE_NAMEButtonClick
        FieldName = 'FILE_NAME'
      end
      object insClassDetailINSIDE_OUTSIDE: TdxInspectorDBImageRow
        Caption = 'N'#7897'i b'#7897'/B'#234'n ngo'#224'i'
        ReadOnly = True
        Descriptions.WideStrings = (
          '  N'#7897'i b'#7897
          '  B'#234'n ngo'#224'i')
        ImageIndexes.WideStrings = (
          '0'
          '1')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1')
        FieldName = 'INSIDE_OUTSIDE'
      end
      object insClassDetailTIME_UNIT: TdxInspectorDBImageRow
        Caption = ' '
        Visible = False
        OnDrawCaption = insClassDetailTIME_UNITDrawCaption
        OnDrawValue = insClassDetailTIME_UNITDrawValue
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
        FieldName = 'TIME_UNIT'
      end
      object insClassDetailTIME_PERIOD: TdxInspectorDBSpinRow
        Alignment = taCenter
        Caption = 'Th'#7901'i h'#7841'n '#272'T'
        Visible = False
        OnDrawCaption = insClassDetailTIME_PERIODDrawCaption
        OnDrawValue = insClassDetailTIME_PERIODDrawValue
        FieldName = 'TIME_PERIOD'
      end
    end
    object dxDBMemo1: TdxDBMemo
      Left = 14
      Top = 199
      Width = 357
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      DataField = 'COURSE_CONTENT'
      DataSource = dsClassDetail
      ReadOnly = True
      StyleController = dmMain.StyleController
      ScrollBars = ssBoth
      Height = 73
      StoredValues = 64
    end
    object dxlcMsgGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcMsgGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        Caption = '* Th'#244'ng tin l'#7899'p '#273#224'o t'#7841'o'
        object dxlcMsgItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBInspector1'
          ShowCaption = False
          Control = insClassDetail
          ControlOptions.ShowBorder = False
        end
      end
      object dxlcMsgGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '* T'#243'm t'#7855't n'#7897'i dung ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
        object dxlcMsgItem2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'dxDBMemo1'
          ShowCaption = False
          Control = dxDBMemo1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object pageMain: TElPageControl [1]
    Left = 0
    Top = 0
    Width = 830
    Height = 465
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Images = ImageList1
    Multiline = False
    OnChange = pageMainChange
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsAngledTabs
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabPosition
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
    object tabPosition: TElTabSheet
      PageControl = pageMain
      ImageIndex = 10
      TabVisible = True
      Caption = 'Quy ch'#7871' '#273#224'o t'#7841'o theo v'#7883' tr'#237' c'#244'ng t'#225'c'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 830
        Height = 441
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object treeData: TdxDBTreeList
          Left = 14
          Top = 53
          Width = 250
          Height = 129
          Bands = <
            item
              Caption = 'Ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
              Fixed = bfLeft
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'POSITION_NO'
          ParentField = 'P_POSITION_NO'
          TabOrder = 4
          DataSource = dsData
          Images = dmMain.imglDeptTree
          LookAndFeel = lfFlat
          ShowBands = True
          ShowGrid = True
          TreeLineColor = clGrayText
          object treeDataDEPT_NAME: TdxDBTreeListColumn
            Caption = #272#417'n v'#7883' '
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 411
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss '
          end
          object treeDataTITLE_NAME: TdxDBTreeListColumn
            Caption = 'Ch'#7913'c danh'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 266
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c danh'
          end
          object treeDataPOSITION_NAME: TdxDBTreeListColumn
            Caption = 'V'#7883' tr'#237' c'#244'ng t'#225'c'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 251
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'POSITION_NAME'
            Caption_UTF7 = 'V+Hss tr+AO0 c+APQ-ng t+AOE-c'
          end
          object treeDataCHECK_ALL: TdxDBTreeListCheckColumn
            Alignment = taCenter
            Caption = 'All'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 30
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'CHECK_ALL'
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnToggleClick = treeDataCHECK_ALLToggleClick
          end
        end
        object ElPopupButton1: TElPopupButton
          Left = 732
          Top = 28
          Width = 84
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
          Caption = '&C'#7853'p nh'#7853't'
          TabOrder = 3
          Color = 15466238
          ParentColor = False
          Action = acSaveData
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxDept: TdxPopupEdit
          Left = 134
          Top = 29
          Width = 200
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnCloseUp = dxDeptCloseUp
          OnInitPopup = dxDeptInitPopup
        end
        object dxViewAll: TdxCheckEdit
          Left = 379
          Top = 29
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          StyleController = dmMain.StyleController
        end
        object ElPopupButton2: TElPopupButton
          Left = 402
          Top = 28
          Width = 84
          Height = 25
          Cursor = crDefault
          ImageIndex = 38
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Xem Q&C'
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          Action = acReloadData
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
            Caption = '* B'#7843'ng m'#244' t'#7843' quy ch'#7871' ch'#432#417'ng tr'#236'nh '#273#224'o t'#7841'o'
            object dxLayoutControl1Group2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item3: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'Ch'#7885'n '#273#417'n v'#7883' - ph'#242'ng ban'
                Control = dxDept
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'C'#7845'p d'#432#7899'i'
                Control = dxViewAll
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton2
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
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBTreeList1'
              ShowCaption = False
              Control = treeData
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabOrder: TElTabSheet
      PageControl = pageMain
      ImageIndex = 1
      TabVisible = True
      Caption = 'Quy tr'#236'nh th'#7913' t'#7921' '#273#224'o t'#7841'o'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 830
        Height = 441
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object treeOrder: TdxDBTreeList
          Left = 14
          Top = 53
          Width = 250
          Height = 129
          Bands = <
            item
              Fixed = bfLeft
            end
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 2
          KeyField = 'POSITION_NO'
          ParentField = 'P_POSITION_NO'
          TabOrder = 8
          DataSource = dsOrder
          Images = dmMain.imglDeptTree
          LookAndFeel = lfFlat
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
          ShowBands = True
          ShowGrid = True
          TreeLineColor = clGrayText
          object dxDBTreeListColumn1: TdxDBTreeListColumn
            Caption = #272#417'n v'#7883' '
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 411
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'DEPT_NAME'
            Caption_UTF7 = '+ARABoQ-n v+Hss '
          end
          object dxDBTreeListColumn2: TdxDBTreeListColumn
            Caption = 'Ch'#7913'c danh'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 266
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'TITLE_NAME'
            Caption_UTF7 = 'Ch+Huk-c danh'
          end
          object dxDBTreeListColumn3: TdxDBTreeListColumn
            Caption = 'V'#7883' tr'#237' c'#244'ng t'#225'c'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 251
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'POSITION_NAME'
            Caption_UTF7 = 'V+Hss tr+AO0 c+APQ-ng t+AOE-c'
          end
        end
        object dxDept_1: TdxPopupEdit
          Left = 134
          Top = 29
          Width = 200
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnCloseUp = dxDept_1CloseUp
          OnInitPopup = dxDept_1InitPopup
        end
        object dxViewAll_1: TdxCheckEdit
          Left = 379
          Top = 29
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          StyleController = dmMain.StyleController
        end
        object ElPopupButton4: TElPopupButton
          Left = 402
          Top = 28
          Width = 84
          Height = 25
          Cursor = crDefault
          ImageIndex = 38
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'Xem Q&T'
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          Action = acReloadOrder
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton5: TElPopupButton
          Left = 572
          Top = 28
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'Chuy'#7875'n l'#234'n th'#7913' t'#7921' '#273#7847'u ti'#234'n'
          ImageIndex = 72
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 3
          Color = 15466238
          ParentColor = False
          Action = acMoveFirst
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton6: TElPopupButton
          Left = 597
          Top = 28
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'Chuy'#7875'n th'#7913' t'#7921' sang b'#234'n tr'#225'i'
          ImageIndex = 70
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 4
          Color = 15466238
          ParentColor = False
          Action = acMovePrev
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 622
          Top = 28
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'Chuy'#7875'n th'#7913' t'#7921' sang b'#234'n ph'#7843'i'
          ImageIndex = 73
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 5
          Color = 15466238
          ParentColor = False
          Action = acMoveNext
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton7: TElPopupButton
          Left = 647
          Top = 28
          Width = 25
          Height = 25
          Cursor = crDefault
          Hint = 'Chuy'#7875'n th'#7913' t'#7921' '#273#7871'n v'#7883' tr'#237' cu'#7889'i c'#249'ng'
          ImageIndex = 74
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          TabOrder = 6
          Color = 15466238
          ParentColor = False
          Action = acMoveLast
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object chkViewDetail: TdxCheckEdit
          Left = 793
          Top = 29
          Width = 23
          Color = 15466238
          ParentColor = False
          Style.BorderColor = 5146545
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          StyleController = dmMain.StyleController
          OnChange = chkViewDetailChange
        end
        object dxLayoutGroup1: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup2: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = '* B'#7843'ng m'#244' t'#7843' quy tr'#236'nh th'#7913' t'#7921' '#273#224'o t'#7841'o'
            object dxLayoutGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'Ch'#7885'n '#273#417'n v'#7883' - ph'#242'ng ban'
                Control = dxDept_1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem2: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'C'#7845'p d'#432#7899'i'
                Control = dxViewAll_1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem3: TdxLayoutItem
                Caption = 'ElPopupButton2'
                ShowCaption = False
                Control = ElPopupButton4
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                Caption = #272'i'#7873'u ch'#7881'nh th'#7913' t'#7921
                Control = ElPopupButton5
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton6
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item3: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                ShowCaption = False
                Control = ElPopupButton7
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item5: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                AlignVert = avCenter
                Caption = 'Xem chi ti'#7871't l'#7899'p h'#7885'c'
                Control = chkViewDetail
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutItem5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxDBTreeList1'
              ShowCaption = False
              Control = treeOrder
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  inherited sbMain: TElStatusBar
    Top = 465
    Width = 830
  end
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Quy ch'#7871' '#273#224'o t'#7841'o nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 576
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
  object dsData: TDataSource
    DataSet = memData
    Left = 64
    Top = 168
  end
  object memData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 64
    Top = 136
    object memDataPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object memDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memDataP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object memDataPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      Size = 256
    end
    object memDataCHECK_ALL: TIntegerField
      FieldName = 'CHECK_ALL'
    end
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 216
    Top = 160
    object acCreateMemData: TAction
      Caption = 'acCreateMemData'
      OnExecute = acCreateMemDataExecute
    end
    object acSaveData: TAction
      Caption = 'acSaveData'
      ImageIndex = 62
      OnExecute = acSaveDataExecute
      OnUpdate = acSaveDataUpdate
    end
    object acReloadData: TAction
      Caption = 'acReloadData'
      ImageIndex = 38
      OnExecute = acReloadDataExecute
    end
    object acCreateMemOrder: TAction
      Caption = 'acCreateMemOrder'
      OnExecute = acCreateMemOrderExecute
    end
    object acReloadOrder: TAction
      Caption = 'acReloadOrder'
      ImageIndex = 38
      OnExecute = acReloadOrderExecute
    end
    object acMoveFirst: TAction
      Caption = 'acMoveFirst'
      ImageIndex = 72
      OnExecute = acMoveFirstExecute
    end
    object acMovePrev: TAction
      Caption = 'acMovePrev'
      ImageIndex = 70
      OnExecute = acMovePrevExecute
      OnUpdate = acMovePrevUpdate
    end
    object acMoveNext: TAction
      Caption = 'acMoveNext'
      ImageIndex = 73
      OnExecute = acMoveNextExecute
      OnUpdate = acMoveNextUpdate
    end
    object acMoveLast: TAction
      Caption = 'acMoveLast'
      ImageIndex = 74
      OnExecute = acMoveLastExecute
    end
  end
  object qryClass: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_TR_CLASS.COURSE_CODE'
      '     , COURSE_NAME'
      '     , CLASS_CODE'
      '     , CLASS_NAME'
      '     , HR_TR_CLASS.INSIDE_OUTSIDE'
      'FROM HR_TR_CLASS'
      'left JOIN HR_TR_COURSE on'
      '  HR_TR_CLASS.COURSE_CODE=HR_TR_COURSE.COURSE_CODE'
      'order by HR_TR_CLASS.COURSE_CODE,CLASS_CODE')
    FieldOptions = []
    Left = 128
    Top = 136
    object qryClassCOURSE_CODE: TWideStringField
      FieldName = 'COURSE_CODE'
      Required = True
      Size = 30
    end
    object qryClassCOURSE_NAME: TWideStringField
      FieldName = 'COURSE_NAME'
      Size = 126
    end
    object qryClassCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Required = True
      Size = 30
    end
    object qryClassCLASS_NAME: TWideStringField
      FieldName = 'CLASS_NAME'
      Required = True
      Size = 126
    end
    object qryClassINSIDE_OUTSIDE: TSmallintField
      FieldName = 'INSIDE_OUTSIDE'
    end
  end
  object qryData: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL=-1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL=0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL=1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LEFT_INDEX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RIGHT_INDEX'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_POSITION.POSITION_NO'
      '     , P_POSITION_NO'
      '     , DEPT_NAME'
      '     , TITLE_NAME'
      '     , CLASS_CODE'
      'FROM HR_POSITION'
      'left JOIN HR_DEPARTMENT on '
      '  HR_POSITION.DEPT_NO = HR_DEPARTMENT.DEPT_NO'
      'left JOIN HR_TITLE on '
      '  HR_POSITION.TITLE_NO = HR_TITLE.TITLE_NO'
      'left JOIN HR_TR_POSITION_REG on '
      '  HR_POSITION.POSITION_NO = HR_TR_POSITION_REG.POSITION_NO'
      'where '
      '  (:VIEW_ALL=-1) or'
      ' ((:VIEW_ALL=0) and (HR_POSITION.DEPT_NO=:DEPT_NO)) or'
      
        ' ((:VIEW_ALL=1) and (DEPT_LEFT_INDEX>=:LEFT_INDEX) and (DEPT_RIG' +
        'HT_INDEX<=:RIGHT_INDEX)) ')
    FieldOptions = []
    Left = 128
    Top = 168
    object qryDataPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryDataP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object qryDataDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryDataTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryDataCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 128
    Top = 216
  end
  object memOrder: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 72
    Top = 240
    object memOrderPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object memOrderDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 127
    end
    object memOrderTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 127
    end
    object memOrderP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object memOrderPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      Size = 256
    end
  end
  object dsOrder: TDataSource
    DataSet = memOrder
    Left = 72
    Top = 272
  end
  object qryOrder: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL=-1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL=0'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL=1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'LEFT_INDEX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RIGHT_INDEX'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_POSITION.POSITION_NO'
      '     , P_POSITION_NO'
      '     , DEPT_NAME'
      '     , TITLE_NAME'
      '     , CLASS_CODE'
      '     , HR_TR_POSITION_REG.TRAIN_ORDER'
      '     , TIME_PERIOD'
      '     , TIME_UNIT'
      '     , DAY_COUNT'
      'FROM HR_POSITION'
      'left JOIN HR_DEPARTMENT on '
      '  HR_POSITION.DEPT_NO = HR_DEPARTMENT.DEPT_NO'
      'left JOIN HR_TITLE on '
      '  HR_POSITION.TITLE_NO = HR_TITLE.TITLE_NO'
      'left JOIN HR_TR_POSITION_REG on '
      '  HR_POSITION.POSITION_NO = HR_TR_POSITION_REG.POSITION_NO'
      'where '
      ' (:VIEW_ALL=-1) or'
      ' ((:VIEW_ALL=0) and (HR_POSITION.DEPT_NO=:DEPT_NO)) or'
      
        ' ((:VIEW_ALL=1) and (DEPT_LEFT_INDEX>=:LEFT_INDEX) and (DEPT_RIG' +
        'HT_INDEX<=:RIGHT_INDEX))')
    FieldOptions = []
    Left = 128
    Top = 248
    object qryOrderPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryOrderP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object qryOrderDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryOrderTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryOrderCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Size = 30
    end
    object qryOrderTRAIN_ORDER: TIntegerField
      FieldName = 'TRAIN_ORDER'
    end
    object qryOrderTIME_PERIOD: TIntegerField
      FieldName = 'TIME_PERIOD'
    end
    object qryOrderTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
    end
    object qryOrderDAY_COUNT: TIntegerField
      FieldName = 'DAY_COUNT'
    end
  end
  object qryClassDetail: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'POSITION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    EditSQL.Strings = (
      'UPDATE HR_TR_POSITION_REG SET'
      '   TIME_PERIOD = :TIME_PERIOD,'
      '   TIME_UNIT = :TIME_UNIT'
      'WHERE'
      '  CLASS_CODE=:OLD_CLASS_CODE and'
      '  POSITION_NO=:OLD_POSITION_NO '
      '')
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'CLASS_CODE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT HR_TR_CLASS.COURSE_CODE'
      '     , COURSE_NAME'
      '     , HR_TR_CLASS.CLASS_CODE'
      '     , CLASS_NAME'
      '     , COURSE_CONTENT'
      '     , TEACHER'
      '     , CLASS_PLACE'
      '     , HR_TR_POSITION_REG.TIME_PERIOD'
      '     , HR_TR_POSITION_REG.TIME_UNIT'
      '     , HR_TR_CLASS.FILE_NAME'
      '     , HR_TR_CLASS.FILE_CONTENT'
      '     , TYPE_NAME'
      '     , HR_TR_CLASS.INSIDE_OUTSIDE'
      '     , POSITION_NO'
      'FROM HR_TR_CLASS'
      'left JOIN HR_TRAINING_TYPE on'
      '  CLASS_TYPE=TYPE_NO'
      'LEFT JOIN HR_TR_COURSE on '
      '  HR_TR_COURSE.COURSE_CODE=HR_TR_CLASS.COURSE_CODE'
      
        'LEFT JOIN HR_TR_POSITION_REG on HR_TR_CLASS.CLASS_CODE=HR_TR_POS' +
        'ITION_REG.CLASS_CODE'
      'where HR_TR_CLASS.CLASS_CODE=:CLASS_CODE and'
      '      POSITION_NO=:POSITION_NO')
    FieldOptions = []
    Left = 178
    Top = 274
    object qryClassDetailCOURSE_CODE: TWideStringField
      FieldName = 'COURSE_CODE'
      Required = True
      Size = 30
    end
    object qryClassDetailCOURSE_NAME: TWideStringField
      FieldName = 'COURSE_NAME'
      Size = 126
    end
    object qryClassDetailCLASS_CODE: TWideStringField
      FieldName = 'CLASS_CODE'
      Required = True
      Size = 30
    end
    object qryClassDetailCLASS_NAME: TWideStringField
      FieldName = 'CLASS_NAME'
      Required = True
      Size = 126
    end
    object qryClassDetailTEACHER: TWideStringField
      FieldName = 'TEACHER'
      Size = 126
    end
    object qryClassDetailCLASS_PLACE: TWideStringField
      FieldName = 'CLASS_PLACE'
      Size = 3072
    end
    object qryClassDetailTIME_PERIOD: TIntegerField
      FieldName = 'TIME_PERIOD'
      OnChange = qryClassDetailTIME_PERIODChange
    end
    object qryClassDetailTIME_UNIT: TIntegerField
      FieldName = 'TIME_UNIT'
      OnChange = qryClassDetailTIME_UNITChange
    end
    object qryClassDetailFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 126
    end
    object qryClassDetailFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryClassDetailTYPE_NAME: TWideStringField
      FieldName = 'TYPE_NAME'
      Size = 126
    end
    object qryClassDetailINSIDE_OUTSIDE: TSmallintField
      FieldName = 'INSIDE_OUTSIDE'
    end
    object qryClassDetailCOURSE_CONTENT: TWideStringField
      FieldName = 'COURSE_CONTENT'
      Size = 3072
    end
    object qryClassDetailPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
  end
  object qryUpdateOrder: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TRAIN_ORDER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POSITION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASS_CODE'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update HR_TR_POSITION_REG'
      'set TRAIN_ORDER=:TRAIN_ORDER'
      'where POSITION_NO=:POSITION_NO and'
      '      CLASS_CODE=:CLASS_CODE')
    FieldOptions = []
    Left = 176
    Top = 240
  end
  object dsClassDetail: TDataSource
    DataSet = qryClassDetail
    Left = 176
    Top = 304
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
  object qryUpdateTime: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'TIME_PERIOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIME_UNIT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POSITION_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASS_CODE'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update HR_TR_POSITION_REG'
      'set TIME_PERIOD=:TIME_PERIOD,'
      '    TIME_UNIT=:TIME_UNIT'
      'where POSITION_NO=:POSITION_NO and'
      '      CLASS_CODE=:CLASS_CODE')
    FieldOptions = []
    Left = 176
    Top = 344
  end
end
