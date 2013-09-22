inherited frmUIConfig: TfrmUIConfig
  Left = 310
  Top = 165
  Width = 661
  Height = 474
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object ElLabel1: TElLabel [0]
    Left = 224
    Top = 8
    Width = 39
    Height = 13
    Caption = 'ElLabel1'
  end
  inherited sbMain: TElStatusBar
    Top = 428
    Width = 653
  end
  object dxMainSidebar: TdxSideBar [2]
    Left = 0
    Top = 0
    Width = 153
    Height = 428
    BkGround.BeginColor = clGrayText
    BkGround.EndColor = clGrayText
    BkGround.FillStyle = bfsNone
    Color = clMoneyGreen
    CanSelected = True
    GroupFont.Charset = ANSI_CHARSET
    GroupFont.Color = clBlue
    GroupFont.Height = -12
    GroupFont.Name = 'Tahoma'
    GroupFont.Style = []
    Groups = <
      item
        Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883
        Index = 0
        IconType = dxsgLargeIcon
        Items = <
          item
            Caption = 'Giao di'#7879'n'
            CustomData = 'LOOK_AND_FEEL'
            Index = 0
            IsDefault = True
            LargeImage = 0
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'L'#432#7899'i d'#7919' li'#7879'u'
            CustomData = 'DATA_GRID'
            Index = 1
            IsDefault = True
            LargeImage = 1
            SmallImage = -1
            Tag = 0
          end
          item
            Caption = 'Th'#224'nh ph'#7847'n '#273'i'#7873'u khi'#7875'n'
            CustomData = 'UI_CONTROL'
            Index = 2
            IsDefault = True
            LargeImage = 21
            SmallImage = -1
            Tag = 0
          end>
      end>
    ActiveGroupIndex = 0
    GroupHeightOffSet = 0
    ItemFont.Charset = ANSI_CHARSET
    ItemFont.Color = 26112
    ItemFont.Height = -12
    ItemFont.Name = 'Tahoma'
    ItemFont.Style = []
    LargeImages = ImageList1
    ScrollDelay = 300
    SpaceHeight = 7
    TransparentImages = True
    ShowGroups = True
    StoreInRegistry = False
    OnItemClick = dxMainSidebarItemClick
  end
  object pageMain: TElPageControl [3]
    Left = 153
    Top = 0
    Width = 500
    Height = 428
    BorderWidth = 0
    DrawFocus = False
    Flat = True
    HotTrack = True
    Multiline = True
    OnChanging = pageMainChanging
    RaggedRight = False
    ScrollOpposite = False
    ShowBorder = False
    Style = etsFlatButtons
    TabIndex = 0
    TabPosition = etpTop
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clBlue
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    ActivePage = tabLookAndFeel
    FlatTabBorderColor = clBtnShadow
    DraggablePages = False
    ActiveTabFont.Charset = DEFAULT_CHARSET
    ActiveTabFont.Color = clWindowText
    ActiveTabFont.Height = -11
    ActiveTabFont.Name = 'MS Sans Serif'
    ActiveTabFont.Style = []
    TabCursor = crDefault
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object tabLookAndFeel: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'LOOK_AND_FEEL'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 500
        Height = 407
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dxLookAndFeel
        object dxinsLookAndFeel: TdxDBInspector
          Left = 10
          Top = 39
          Width = 501
          Height = 196
          Color = clBtnHighlight
          DataSource = dsLookAndFeel
          DefaultFields = False
          TabOrder = 1
          DividerPos = 314
          Flat = True
          GridColor = clBtnFace
          PaintStyle = ipsNET
          Data = {
            2B090000030000000800000006000000150000006478696E734C6F6F6B416E64
            4665656C526F7731320800000002000000150000006478696E734C6F6F6B416E
            644665656C526F77313308000000000000001D0000006478696E734C6F6F6B41
            6E644665656C4752505F4341505F434F4C4F5208000000000000002200000064
            78696E734C6F6F6B416E644665656C4752505F4341505F544558545F434F4C4F
            520800000002000000150000006478696E734C6F6F6B416E644665656C526F77
            31350800000000000000210000006478696E734C6F6F6B416E644665656C4752
            505F4341505F464F4E545F53495A450800000002000000150000006478696E73
            4C6F6F6B416E644665656C526F7731380800000000000000270000006478696E
            734C6F6F6B416E644665656C4752505F4341505F464F4E545F5354594C455F42
            4F4C440800000000000000290000006478696E734C6F6F6B416E644665656C47
            52505F4341505F464F4E545F5354594C455F4954414C49430800000002000000
            150000006478696E734C6F6F6B416E644665656C526F77313608000000000000
            001F0000006478696E734C6F6F6B416E644665656C4752505F4652414D455F43
            4F4C4F5208000000000000001F0000006478696E734C6F6F6B416E644665656C
            4752505F4652414D455F57494454480800000000000000190000006478696E73
            4C6F6F6B416E644665656C4752505F434F4C4F5208000000000000001E000000
            6478696E734C6F6F6B416E644665656C4752505F4F46465345545F4341500800
            0000000000001F0000006478696E734C6F6F6B416E644665656C4752505F4F46
            465345545F4954454D0800000002000000150000006478696E734C6F6F6B416E
            644665656C526F7731340800000003000000150000006478696E734C6F6F6B41
            6E644665656C526F7733310800000000000000220000006478696E734C6F6F6B
            416E644665656C4954454D5F4341505F464F4E545F53495A4508000000020000
            00150000006478696E734C6F6F6B416E644665656C526F773332080000000000
            0000280000006478696E734C6F6F6B416E644665656C4954454D5F4341505F46
            4F4E545F5354594C455F424F4C4408000000000000002A0000006478696E734C
            6F6F6B416E644665656C4954454D5F4341505F464F4E545F5354594C455F4954
            414C49430800000000000000230000006478696E734C6F6F6B416E644665656C
            4954454D5F4341505F544558545F434F4C4F5208000000050000001500000064
            78696E734C6F6F6B416E644665656C526F77333308000000000000001C000000
            6478696E734C6F6F6B416E644665656C424F524445525F434F4C4F5208000000
            000000001C0000006478696E734C6F6F6B416E644665656C424F524445525F53
            54594C4508000000000000001C0000006478696E734C6F6F6B416E644665656C
            425554544F4E5F5354594C450800000000000000230000006478696E734C6F6F
            6B416E644665656C425554544F4E5F5452414E53504152454E43450800000006
            000000150000006478696E734C6F6F6B416E644665656C526F77343808000000
            00000000190000006478696E734C6F6F6B416E644665656C454447455F4C4546
            540800000000000000180000006478696E734C6F6F6B416E644665656C454744
            455F544F5008000000000000001A0000006478696E734C6F6F6B416E64466565
            6C454447455F524947485408000000000000001B0000006478696E734C6F6F6B
            416E644665656C454447455F424F54544F4D0800000000000000160000006478
            696E734C6F6F6B416E644665656C534841444F57080000000000000019000000
            6478696E734C6F6F6B416E644665656C484F545F545241435408000000040000
            00150000006478696E734C6F6F6B416E644665656C526F773334080000000200
            0000150000006478696E734C6F6F6B416E644665656C526F7733350800000000
            000000210000006478696E734C6F6F6B416E644665656C4F46535F434F4E5452
            4F4C5F4F46535F480800000000000000210000006478696E734C6F6F6B416E64
            4665656C4F46535F434F4E54524F4C5F4F46535F560800000001000000150000
            006478696E734C6F6F6B416E644665656C526F77333608000000000000001C00
            00006478696E734C6F6F6B416E644665656C4F46535F4954454D5F4F46530800
            000002000000150000006478696E734C6F6F6B416E644665656C526F77333708
            00000000000000230000006478696E734C6F6F6B416E644665656C4F46535F49
            54454D5F415245415F4F46535F480800000000000000230000006478696E734C
            6F6F6B416E644665656C4F46535F4954454D5F415245415F4F46535F56080000
            0002000000150000006478696E734C6F6F6B416E644665656C526F7733380800
            000000000000230000006478696E734C6F6F6B416E644665656C4F46535F524F
            4F545F415245415F4F46535F480800000000000000230000006478696E734C6F
            6F6B416E644665656C4F46535F524F4F545F415245415F4F46535F560F000000
            080000001C06F008150000006478696E734C6F6F6B416E644665656C526F7731
            320800000010B2F208150000006478696E734C6F6F6B416E644665656C526F77
            3133080000003CAEF108150000006478696E734C6F6F6B416E644665656C526F
            7731350800000018E2F108150000006478696E734C6F6F6B416E644665656C52
            6F77313808000000E82EF708150000006478696E734C6F6F6B416E644665656C
            526F773136080000001C09F408150000006478696E734C6F6F6B416E64466565
            6C526F77313408000000906BCB08150000006478696E734C6F6F6B416E644665
            656C526F773331080000006497EE08150000006478696E734C6F6F6B416E6446
            65656C526F7733320800000014A3EE08150000006478696E734C6F6F6B416E64
            4665656C526F7733330800000044BBEE08150000006478696E734C6F6F6B416E
            644665656C526F773438080000007092F608150000006478696E734C6F6F6B41
            6E644665656C526F77333408000000F03FF608150000006478696E734C6F6F6B
            416E644665656C526F773335080000001C06F008150000006478696E734C6F6F
            6B416E644665656C526F7733360800000010B2F208150000006478696E734C6F
            6F6B416E644665656C526F773337080000003CAEF108150000006478696E734C
            6F6F6B416E644665656C526F773338}
          object dxinsLookAndFeelRow12: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n c'#7911'a nh'#243'm'
            IsCategory = True
          end
          object dxinsLookAndFeelRow13: TdxInspectorDBRow
            Caption = 'Ti'#234'u '#273#7873' nh'#243'm'
            IsCategory = True
          end
          object dxinsLookAndFeelRow14: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n c'#7911'a th'#224'nh ph'#7847'n'
            IsCategory = True
          end
          object dxinsLookAndFeelRow15: TdxInspectorDBRow
            Caption = 'Font ch'#7919
            IsCategory = True
          end
          object dxinsLookAndFeelGRP_CAP_TEXT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            OnDrawValue = LOOK_AND_FEEL_SelectCOLOR_DrawValue
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = LOOK_AND_FEEL_SelectCOLOR_ButtonClick
            FieldName = 'GRP_CAP_TEXT_COLOR'
          end
          object dxinsLookAndFeelRow16: TdxInspectorDBRow
            Caption = #272#432#7901'ng vi'#7873'n nh'#243'm'
            IsCategory = True
          end
          object dxinsLookAndFeelRow18: TdxInspectorDBRow
            Caption = 'Ki'#7875'u ch'#7919
            IsCategory = True
          end
          object dxinsLookAndFeelGRP_CAP_FONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'GRP_CAP_FONT_SIZE'
          end
          object dxinsLookAndFeelGRP_CAP_FONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'GRP_CAP_FONT_STYLE_BOLD'
          end
          object dxinsLookAndFeelGRP_CAP_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'GRP_CAP_FONT_STYLE_ITALIC'
          end
          object dxinsLookAndFeelGRP_FRAME_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u '#273#432#7901'ng vi'#7873'n'
            OnDrawValue = LOOK_AND_FEEL_SelectCOLOR_DrawValue
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = LOOK_AND_FEEL_SelectCOLOR_ButtonClick
            FieldName = 'GRP_FRAME_COLOR'
          end
          object dxinsLookAndFeelGRP_FRAME_WIDTH: TdxInspectorDBSpinRow
            Caption = #272#7897' r'#7897'ng '#273#432#7901'ng vi'#7873'n'
            FieldName = 'GRP_FRAME_WIDTH'
          end
          object dxinsLookAndFeelGRP_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u n'#7873'n'
            OnDrawValue = LOOK_AND_FEEL_SelectCOLOR_DrawValue
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = LOOK_AND_FEEL_SelectCOLOR_ButtonClick
            FieldName = 'GRP_COLOR'
          end
          object dxinsLookAndFeelRow31: TdxInspectorDBRow
            Caption = 'Font ti'#234'u '#273#7873
            IsCategory = True
          end
          object dxinsLookAndFeelITEM_CAP_FONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'ITEM_CAP_FONT_SIZE'
          end
          object dxinsLookAndFeelRow32: TdxInspectorDBRow
            Caption = 'Ki'#7875'u ch'#7919
            IsCategory = True
          end
          object dxinsLookAndFeelITEM_CAP_FONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'ITEM_CAP_FONT_STYLE_BOLD'
          end
          object dxinsLookAndFeelITEM_CAP_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'ITEM_CAP_FONT_STYLE_ITALIC'
          end
          object dxinsLookAndFeelITEM_CAP_TEXT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            OnDrawValue = LOOK_AND_FEEL_SelectCOLOR_DrawValue
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = LOOK_AND_FEEL_SelectCOLOR_ButtonClick
            FieldName = 'ITEM_CAP_TEXT_COLOR'
          end
          object dxinsLookAndFeelRow33: TdxInspectorDBRow
            Caption = 'Control giao di'#7879'n'
            IsCategory = True
          end
          object dxinsLookAndFeelRow34: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n kho'#7843'ng c'#225'ch'
            IsCategory = True
          end
          object dxinsLookAndFeelOFS_CONTROL_OFS_H: TdxInspectorDBSpinRow
            Caption = 'Chi'#7873'u ngang'
            FieldName = 'OFS_CONTROL_OFS_H'
          end
          object dxinsLookAndFeelRow35: TdxInspectorDBRow
            Caption = 'Gi'#7919'a c'#225'c control'
            IsCategory = True
          end
          object dxinsLookAndFeelOFS_CONTROL_OFS_V: TdxInspectorDBSpinRow
            Caption = 'Chi'#7873'u d'#7885'c'
            FieldName = 'OFS_CONTROL_OFS_V'
          end
          object dxinsLookAndFeelRow36: TdxInspectorDBRow
            Caption = 'Gi'#7919'a c'#225'c th'#224'nh ph'#7847'n'
            IsCategory = True
          end
          object dxinsLookAndFeelOFS_ITEM_OFS: TdxInspectorDBSpinRow
            Caption = 'Kho'#7843'ng c'#225'ch'
            FieldName = 'OFS_ITEM_OFS'
          end
          object dxinsLookAndFeelOFS_ITEM_AREA_OFS_H: TdxInspectorDBSpinRow
            Caption = 'Chi'#7873'u ngang'
            FieldName = 'OFS_ITEM_AREA_OFS_H'
          end
          object dxinsLookAndFeelRow37: TdxInspectorDBRow
            Caption = 'Gi'#7919'a c'#225'c mi'#7873'n'
            IsCategory = True
          end
          object dxinsLookAndFeelOFS_ITEM_AREA_OFS_V: TdxInspectorDBSpinRow
            Caption = 'Chi'#7873'u d'#7885'c'
            FieldName = 'OFS_ITEM_AREA_OFS_V'
          end
          object dxinsLookAndFeelRow38: TdxInspectorDBRow
            Caption = 'Ph'#7847'n d'#432#7899'i'
            IsCategory = True
          end
          object dxinsLookAndFeelOFS_ROOT_AREA_OFS_H: TdxInspectorDBSpinRow
            Caption = 'Chi'#7873'u ngang'
            FieldName = 'OFS_ROOT_AREA_OFS_H'
          end
          object dxinsLookAndFeelGRP_CAP_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u n'#7873'n nh'#243'm'
            OnDrawValue = LOOK_AND_FEEL_SelectCOLOR_DrawValue
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = LOOK_AND_FEEL_SelectCOLOR_ButtonClick
            FieldName = 'GRP_CAP_COLOR'
          end
          object dxinsLookAndFeelGRP_OFFSET_CAP: TdxInspectorDBCheckRow
            Caption = 'Offset ti'#234'u '#273#7873
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'GRP_OFFSET_CAP'
          end
          object dxinsLookAndFeelGRP_OFFSET_ITEM: TdxInspectorDBCheckRow
            Caption = 'Offset th'#224'nh ph'#7847'n '
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'GRP_OFFSET_ITEM'
          end
          object dxinsLookAndFeelBORDER_STYLE: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u '#273#432#7901'ng bi'#234'n'
            Descriptions.WideStrings = (
              #272#7875' tr'#7889'ng'
              #272#432#7901'ng '#273#417'n'
              #272#432#7901'ng '#273#7853'm'
              'Ph'#7859'ng'
              '3D')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            FieldName = 'BORDER_STYLE'
          end
          object dxinsLookAndFeelBORDER_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u '#273#432#7901'ng bi'#234'n'
            OnDrawValue = LOOK_AND_FEEL_SelectCOLOR_DrawValue
            Buttons = <
              item
                Default = True
              end>
            OnButtonClick = LOOK_AND_FEEL_SelectCOLOR_ButtonClick
            FieldName = 'BORDER_COLOR'
          end
          object dxinsLookAndFeelBUTTON_STYLE: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u n'#250't'
            Descriptions.WideStrings = (
              'Chu'#7849'n'
              '3D'
              'Ph'#7859'ng'
              #272#417'n gi'#7843'n'
              'Si'#234'u ph'#7859'ng')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            FieldName = 'BUTTON_STYLE'
          end
          object dxinsLookAndFeelBUTTON_TRANSPARENCE: TdxInspectorDBImageRow
            Caption = 'B'#7873' m'#7863't'
            Descriptions.WideStrings = (
              #272#7875' tr'#7889'ng'
              'Kh'#244'ng ch'#7885'n'
              'Lu'#244'n c'#243
              #7848'n khi kh'#244'ng ch'#7885'n')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3')
            FieldName = 'BUTTON_TRANSPARENCE'
          end
          object dxinsLookAndFeelRow48: TdxInspectorDBRow
            Caption = 'Hi'#7875'n th'#7883' '#273#432#7901'ng bi'#234'n'
            IsCategory = True
          end
          object dxinsLookAndFeelEGDE_TOP: TdxInspectorDBCheckRow
            Caption = 'Ph'#237'a tr'#234'n'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'EDGE_TOP'
          end
          object dxinsLookAndFeelEDGE_LEFT: TdxInspectorDBCheckRow
            Caption = 'Ph'#237'a tr'#225'i'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'EDGE_LEFT'
          end
          object dxinsLookAndFeelEDGE_RIGHT: TdxInspectorDBCheckRow
            Caption = 'Ph'#237'a ph'#7843'i'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'EDGE_RIGHT'
          end
          object dxinsLookAndFeelEDGE_BOTTOM: TdxInspectorDBCheckRow
            Caption = 'Ph'#237'a d'#432#7899'i'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'EDGE_BOTTOM'
          end
          object dxinsLookAndFeelSHADOW: TdxInspectorDBCheckRow
            Caption = 'C'#243' b'#243'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHADOW'
          end
          object dxinsLookAndFeelHOT_TRACT: TdxInspectorDBCheckRow
            Caption = 'Hot track'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'HOT_TRACT'
          end
          object dxinsLookAndFeelOFS_ROOT_AREA_OFS_V: TdxInspectorDBSpinRow
            Caption = 'Chi'#7873'u d'#7885'c'
            FieldName = 'OFS_ROOT_AREA_OFS_V'
          end
        end
        object ElPopupButton2: TElPopupButton
          Left = 410
          Top = 372
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 15
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 4
          Color = clWindow
          ParentColor = False
          Action = acDong_LAF
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton3: TElPopupButton
          Left = 238
          Top = 372
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 9
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&'#193'p d'#7909'ng'
          TabOrder = 2
          Color = clWindow
          ParentColor = False
          Action = acApdung_LAF
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton1: TElPopupButton
          Left = 324
          Top = 372
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 37
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&L'#432'u m'#7899'i'
          TabOrder = 3
          Color = clWindow
          ParentColor = False
          Action = acLuumoi_LAF
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object dxlcSelectLAF: TdxDBPopupEdit
          Left = 81
          Top = 10
          Width = 165
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          TabOrder = 0
          DataField = 'LF_TITLE'
          DataSource = dsLAFList
          StyleController = dmMain.StyleController
          OnCloseUp = dxlcSelectLAFCloseUp
          OnInitPopup = dxlcSelectLAFInitPopup
        end
        object panelPreviewLAF: TPanel
          Left = 10
          Top = 166
          Width = 490
          Height = 200
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 8
          object dxlcTest: TdxLayoutControl
            Tag = -1
            Left = 0
            Top = 0
            Width = 490
            Height = 200
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dxLookAndFeel
            object dxEdit1: TdxEdit
              Left = 90
              Top = 60
              Width = 116
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              StyleController = dxStyleController
            end
            object dxCheckEdit1: TdxCheckEdit
              Left = 90
              Top = 146
              Width = 23
              ParentColor = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 2
              Alignment = taCenter
              StyleController = dxStyleController
              StoredValues = 1
            end
            object dxMemo1: TdxMemo
              Left = 234
              Top = 60
              Width = 174
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 4
              StyleController = dxStyleController
              Height = 117
            end
            object dxCheckEdit4: TdxCheckEdit
              Left = 177
              Top = 146
              Width = 23
              ParentColor = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 3
              Alignment = taCenter
              StyleController = dxStyleController
              StoredValues = 1
            end
            object dxPickEdit1: TdxPickEdit
              Left = 90
              Top = 87
              Width = 116
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsHotFlat
              TabOrder = 1
              StyleController = dxStyleController
              PopupBorder = pbSingle
            end
            object dxLayoutGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlcTestGroup6: TdxLayoutGroup
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                Caption = 'M'#192'N H'#204'NH XEM TR'#431#7898'C'
                CaptionOptions.AlignHorz = taCenter
                LayoutDirection = ldHorizontal
                object dxlcTestGroup1: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutGroup6: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Nh'#243'm 1'
                    object dxLayoutItem6: TdxLayoutItem
                      Caption = 'D'#7919' li'#7879'u 1'
                      Control = dxEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object dxlcTestItem8: TdxLayoutItem
                      Caption = 'D'#7919' li'#7879'u 2'
                      Control = dxPickEdit1
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxlcTestGroup2: TdxLayoutGroup
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Caption = 'Nh'#243'm 2'
                    LayoutDirection = ldHorizontal
                    object dxlcTestItem3: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'L'#7921'a ch'#7885'n 1'
                      Control = dxCheckEdit1
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxlcTestItem7: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'L'#7921'a ch'#7885'n 2'
                      Control = dxCheckEdit4
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxlcTestGroup3: TdxLayoutGroup
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Caption = 'Nh'#243'm 3'
                  object dxlcTestItem5: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    Caption = 'dxMemo1'
                    ShowCaption = False
                    Control = dxMemo1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'M'#7851'u giao di'#7879'n'
              Control = dxlcSelectLAF
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'dxDBInspector1'
              ShowCaption = False
              Control = dxinsLookAndFeel
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Caption = 'Panel4'
              ShowCaption = False
              Control = panelPreviewLAF
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item5: TdxLayoutItem
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              Caption = 'ElPopupButton1'
              ShowCaption = False
              Control = ElPopupButton1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
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
    object tabDataGrid: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'DATA_GRID'
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 500
        Height = 407
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dxLookAndFeel
        object dxinspGridOption: TdxDBInspector
          Left = 10
          Top = 10
          Width = 501
          Height = 196
          Color = clBtnHighlight
          DataSource = dsDataGrid
          DefaultFields = False
          TabOrder = 0
          DividerPos = 311
          Flat = True
          GridColor = clBtnFace
          PaintStyle = ipsNET
          Data = {
            D20A0000040000000800000004000000150000006478696E7370477269644F70
            74696F6E526F77343708000000020000002B0000006478696E7370477269644F
            7074696F6E4F5054494F4E5F4245484156494F525F4155544F5F534541524348
            0800000000000000260000006478696E7370477269644F7074696F6E4155544F
            5F5345415243485F544558545F434F4C4F520800000000000000210000006478
            696E7370477269644F7074696F6E4155544F5F5345415243485F434F4C4F5208
            000000000000002D0000006478696E7370477269644F7074696F6E4F5054494F
            4E5F4245484156494F525F454E5445525F5448524F5547480800000000000000
            300000006478696E7370477269644F7074696F6E4F5054494F4E5F4245484156
            494F525F494D4D4544494154455F454449544F5208000000000000002B000000
            6478696E7370477269644F7074696F6E4F5054494F4E5F4245484156494F525F
            5441425F5448524F5547480800000004000000150000006478696E7370477269
            644F7074696F6E526F7734380800000000000000290000006478696E73704772
            69644F7074696F6E4F5054494F4E5F44425F4C4F41445F414C4C5F5245434F52
            440800000000000000270000006478696E7370477269644F7074696F6E4F5054
            494F4E5F44425F534D4152545F52454652455348080000000000000026000000
            6478696E7370477269644F7074696F6E4F5054494F4E5F44425F504152544941
            4C5F4C4F41440800000000000000150000006478696E7370477269644F707469
            6F6E526F7735380800000004000000150000006478696E7370477269644F7074
            696F6E526F7734390800000000000000340000006478696E7370477269644F70
            74696F6E4F5054494F4E5F564945575F4155544F5F4845414445525F50414E45
            4C5F4845494748540800000000000000260000006478696E7370477269644F70
            74696F6E4F5054494F4E5F564945575F4155544F5F5749445448080000000000
            00002B0000006478696E7370477269644F7074696F6E4F5054494F4E5F564945
            575F524F575F4155544F5F484549474854080000000100000025000000647869
            6E7370477269644F7074696F6E4F5054494F4E5F564945575F494E4449434154
            4F520800000000000000240000006478696E7370477269644F7074696F6E4752
            49445F494E44494341544F525F57494454480800000009000000150000006478
            696E7370477269644F7074696F6E526F77353008000000060000001900000064
            78696E7370477269644F7074696F6E53484F575F475249440800000000000000
            1F0000006478696E7370477269644F7074696F6E475249445F4C494E455F434F
            4C4F520800000000000000150000006478696E7370477269644F7074696F6E43
            4F4C4F5208000000000000001D0000006478696E7370477269644F7074696F6E
            4C4F4F4B5F414E445F4645454C08000000000000001C0000006478696E737047
            7269644F7074696F6E424F524445525F5354594C450800000000000000150000
            006478696E7370477269644F7074696F6E526F77353508000000000000001500
            00006478696E7370477269644F7074696F6E526F77353608000000020000001B
            0000006478696E7370477269644F7074696F6E53484F575F4845414445520800
            0000000000001C0000006478696E7370477269644F7074696F6E484541444552
            5F434F4C4F520800000004000000150000006478696E7370477269644F707469
            6F6E526F7735310800000000000000210000006478696E7370477269644F7074
            696F6E4845414445525F464F4E545F434F4C4F52080000000000000020000000
            6478696E7370477269644F7074696F6E4845414445525F464F4E545F53495A45
            0800000000000000260000006478696E7370477269644F7074696F6E48454144
            45525F464F4E545F5354594C455F424F4C440800000000000000280000006478
            696E7370477269644F7074696F6E4845414445525F464F4E545F5354594C455F
            4954414C49430800000000000000210000006478696E7370477269644F707469
            6F6E53484F575F4E45575F4954454D5F524F5708000000000000001F00000064
            78696E7370477269644F7074696F6E53484F575F524F575F464F4F5445520800
            000000000000230000006478696E7370477269644F7074696F6E53484F575F53
            554D4D4152595F464F4F5445520800000004000000190000006478696E737047
            7269644F7074696F6E53484F575F42414E440800000000000000250000006478
            696E7370477269644F7074696F6E46495845445F42414E445F4C494E455F434F
            4C4F520800000000000000250000006478696E7370477269644F7074696F6E46
            495845445F42414E445F4C494E455F574944544808000000000000001A000000
            6478696E7370477269644F7074696F6E42414E445F434F4C4F52080000000400
            0000150000006478696E7370477269644F7074696F6E526F7735340800000000
            0000001F0000006478696E7370477269644F7074696F6E42414E445F464F4E54
            5F434F4C4F5208000000000000001E0000006478696E7370477269644F707469
            6F6E42414E445F464F4E545F53495A450800000000000000240000006478696E
            7370477269644F7074696F6E42414E445F464F4E545F5354594C455F424F4C44
            0800000000000000260000006478696E7370477269644F7074696F6E42414E44
            5F464F4E545F5354594C455F4954414C49430800000003000000200000006478
            696E7370477269644F7074696F6E53484F575F47524F55505F50414E454C0800
            000000000000210000006478696E7370477269644F7074696F6E47524F55505F
            50414E454C5F434F4C4F520800000000000000200000006478696E7370477269
            644F7074696F6E47524F55505F4E4F44455F434F4C4F52080000000000000015
            0000006478696E7370477269644F7074696F6E526F7735370800000004000000
            150000006478696E7370477269644F7074696F6E526F77353308000000000000
            001A0000006478696E7370477269644F7074696F6E464F4E545F434F4C4F5208
            00000000000000190000006478696E7370477269644F7074696F6E464F4E545F
            53495A4508000000000000001F0000006478696E7370477269644F7074696F6E
            464F4E545F5354594C455F424F4C440800000000000000210000006478696E73
            70477269644F7074696F6E464F4E545F5354594C455F4954414C494308000000
            000000001B0000006478696E7370477269644F7074696F6E4152524F575F434F
            4C4F520A000000080000006497EE08150000006478696E7370477269644F7074
            696F6E526F7734370800000014A3EE08150000006478696E7370477269644F70
            74696F6E526F7734380800000044BBEE08150000006478696E7370477269644F
            7074696F6E526F773439080000007092F608250000006478696E737047726964
            4F7074696F6E4F5054494F4E5F564945575F494E44494341544F5208000000F0
            3FF608150000006478696E7370477269644F7074696F6E526F77353008000000
            1C06F008190000006478696E7370477269644F7074696F6E53484F575F475249
            440800000010B2F2081B0000006478696E7370477269644F7074696F6E53484F
            575F484541444552080000003CAEF108150000006478696E7370477269644F70
            74696F6E526F7735310800000018E2F108150000006478696E7370477269644F
            7074696F6E526F77353408000000E82EF708200000006478696E737047726964
            4F7074696F6E53484F575F47524F55505F50414E454C}
          object dxinspGridOptionRow47: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n thao t'#225'c'
            IsCategory = True
          end
          object dxinspGridOptionRow48: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n d'#7919' li'#7879'u tr'#234'n l'#432#7899'i'
            IsCategory = True
          end
          object dxinspGridOptionRow49: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n xem tr'#234'n l'#432#7899'i'
            IsCategory = True
          end
          object dxinspGridOptionRow50: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n l'#432#7899'i'
            IsCategory = True
          end
          object dxinspGridOptionSHOW_GRID: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' l'#432#7899'i'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHOW_GRID'
          end
          object dxinspGridOptionSHOW_HEADER: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' header'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHOW_HEADER'
          end
          object dxinspGridOptionSHOW_NEW_ITEM_ROW: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' d'#242'ng d'#7919' li'#7879'u m'#7899'i'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHOW_NEW_ITEM_ROW'
          end
          object dxinspGridOptionSHOW_ROW_FOOTER: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' Footer h'#224'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHOW_ROW_FOOTER'
          end
          object dxinspGridOptionSHOW_SUMMARY_FOOTER: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' Summary'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHOW_SUMMARY_FOOTER'
          end
          object dxinspGridOptionOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT: TdxInspectorDBCheckRow
            Caption = 'Chi'#7873'u cao header t'#7921' '#273#7897'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT'
          end
          object dxinspGridOptionOPTION_VIEW_AUTO_WIDTH: TdxInspectorDBCheckRow
            Caption = 'Chi'#7873'u r'#7897'ng l'#432#7899'i t'#7921' '#273#7897'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_VIEW_AUTO_WIDTH'
          end
          object dxinspGridOptionOPTION_VIEW_INDICATOR: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' Indicator'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_VIEW_INDICATOR'
          end
          object dxinspGridOptionOPTION_VIEW_ROW_AUTO_HEIGHT: TdxInspectorDBCheckRow
            Caption = 'Chi'#7873'u cao h'#224'ng t'#7921' '#273#7897'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_VIEW_ROW_AUTO_HEIGHT'
          end
          object dxinspGridOptionOPTION_DB_LOAD_ALL_RECORD: TdxInspectorDBCheckRow
            Caption = 'N'#7841'p to'#224'n b'#7897' d'#7919' li'#7879'u'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_DB_LOAD_ALL_RECORD'
          end
          object dxinspGridOptionOPTION_DB_SMART_REFRESH: TdxInspectorDBCheckRow
            Caption = 'L'#224'm m'#7899'i d'#7919' li'#7879'u th'#244'ng minh'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_DB_SMART_REFRESH'
          end
          object dxinspGridOptionOPTION_DB_PARTIAL_LOAD: TdxInspectorDBCheckRow
            Caption = 'N'#7841'p t'#7915'ng ph'#7847'n d'#7919' li'#7879'u'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_DB_PARTIAL_LOAD'
          end
          object dxinspGridOptionOPTION_BEHAVIOR_AUTO_SEARCH: TdxInspectorDBCheckRow
            Caption = 'T'#236'm ki'#7871'm tr'#234'n l'#432#7899'i'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_BEHAVIOR_AUTO_SEARCH'
          end
          object dxinspGridOptionOPTION_BEHAVIOR_ENTER_THROUGH: TdxInspectorDBCheckRow
            Caption = 'Chuy'#7875'n c'#7897't khi nh'#7845'n Enter'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_BEHAVIOR_ENTER_THROUGH'
          end
          object dxinspGridOptionOPTION_BEHAVIOR_IMMEDIATE_EDITOR: TdxInspectorDBCheckRow
            Caption = 'Ch'#7871' '#273#7897' nh'#7853'p t'#7913'c th'#7901'i'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_BEHAVIOR_IMMEDIATE_EDITOR'
          end
          object dxinspGridOptionOPTION_BEHAVIOR_TAB_THROUGH: TdxInspectorDBCheckRow
            Caption = 'Chuy'#7875'n c'#7897't khi nh'#7845'n Tab'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'OPTION_BEHAVIOR_TAB_THROUGH'
          end
          object dxinspGridOptionLOOK_AND_FEEL: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u hi'#7875'n th'#7883' l'#432#7899'i'
            Descriptions.WideStrings = (
              'Ki'#7875'u chu'#7849'n'
              'Ki'#7875'u ph'#7859'ng'
              'Ki'#7875'u si'#234'u ph'#7859'ng')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2')
            FieldName = 'LOOK_AND_FEEL'
          end
          object dxinspGridOptionHEADER_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u header'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'HEADER_COLOR'
          end
          object dxinspGridOptionRow51: TdxInspectorDBRow
            Caption = 'Ki'#7875'u ch'#7919
            IsCategory = True
          end
          object dxinspGridOptionHEADER_FONT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'HEADER_FONT_COLOR'
          end
          object dxinspGridOptionGROUP_PANEL_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u Group'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'GROUP_PANEL_COLOR'
          end
          object dxinspGridOptionRow53: TdxInspectorDBRow
            Caption = 'Ki'#7875'u ch'#7919
            IsCategory = True
          end
          object dxinspGridOptionRow54: TdxInspectorDBRow
            Caption = 'Ki'#7875'u ch'#7919
            IsCategory = True
          end
          object dxinspGridOptionFIXED_BAND_LINE_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u '#273#432#7901'ng gi'#7899'i h'#7841'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'FIXED_BAND_LINE_COLOR'
          end
          object dxinspGridOptionFIXED_BAND_LINE_WIDTH: TdxInspectorDBSpinRow
            Caption = #272#7897' r'#7897'ng '#273#432#7901'ng gi'#7899'i h'#7841'n'
            FieldName = 'FIXED_BAND_LINE_WIDTH'
          end
          object dxinspGridOptionBAND_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u c'#7911'a band'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'BAND_COLOR'
          end
          object dxinspGridOptionBAND_FONT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'BAND_FONT_COLOR'
          end
          object dxinspGridOptionBAND_FONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'BAND_FONT_SIZE'
          end
          object dxinspGridOptionBAND_FONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'BAND_FONT_STYLE_BOLD'
          end
          object dxinspGridOptionBAND_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'BAND_FONT_STYLE_ITALIC'
          end
          object dxinspGridOptionGROUP_NODE_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u Node'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'GROUP_NODE_COLOR'
          end
          object dxinspGridOptionAUTO_SEARCH_TEXT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919' t'#236'm ki'#7871'm'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'AUTO_SEARCH_TEXT_COLOR'
          end
          object dxinspGridOptionAUTO_SEARCH_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u '#244' t'#236'm ki'#7871'm'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'AUTO_SEARCH_COLOR'
          end
          object dxinspGridOptionGRID_INDICATOR_WIDTH: TdxInspectorDBSpinRow
            Caption = #272#7897' r'#7897'ng'
            FieldName = 'GRID_INDICATOR_WIDTH'
          end
          object dxinspGridOptionARROW_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u m'#361'i t'#234'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'ARROW_COLOR'
          end
          object dxinspGridOptionCOLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u n'#7873'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'COLOR'
          end
          object dxinspGridOptionGRID_LINE_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u '#273#432#7901'ng l'#432#7899'i'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'GRID_LINE_COLOR'
          end
          object dxinspGridOptionBORDER_STYLE: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u '#273#432#7901'ng bi'#234'n'
            Descriptions.WideStrings = (
              #272#7875' tr'#7889'ng'
              #272#432#7901'ng '#273#417'n')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            FieldName = 'BORDER_STYLE'
          end
          object dxinspGridOptionHEADER_FONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'HEADER_FONT_SIZE'
          end
          object dxinspGridOptionHEADER_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'HEADER_FONT_STYLE_ITALIC'
          end
          object dxinspGridOptionHEADER_FONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'HEADER_FONT_STYLE_BOLD'
          end
          object dxinspGridOptionFONT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'FONT_COLOR'
          end
          object dxinspGridOptionFONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'FONT_SIZE'
          end
          object dxinspGridOptionFONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'FONT_STYLE_BOLD'
          end
          object dxinspGridOptionFONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'FONT_STYLE_ITALIC'
          end
          object dxinspGridOptionSHOW_BAND: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' Band'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHOW_BAND'
          end
          object dxinspGridOptionSHOW_GROUP_PANEL: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' Group'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SHOW_GROUP_PANEL'
          end
          object dxinspGridOptionRow55: TdxInspectorDBButtonRow
            Caption = 'M'#224'u '#244' khi ch'#7885'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'HIGH_LIGHT_COLOR'
          end
          object dxinspGridOptionRow56: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919' khi ch'#7885'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'HIGH_LIGHT_TEXT_COLOR'
          end
          object dxinspGridOptionRow57: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'GROUP_PANEL_FONT_COLOR'
          end
          object dxinspGridOptionRow58: TdxInspectorDBCheckRow
            Caption = 'L'#432'u c'#7845'u h'#236'nh'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'STORE_INI_FILE'
          end
        end
        object ElPopupButton4: TElPopupButton
          Left = 410
          Top = 372
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 15
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 2
          Color = clWindow
          ParentColor = False
          Action = acDong_LAF
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton5: TElPopupButton
          Left = 324
          Top = 372
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 9
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&'#193'p d'#7909'ng'
          TabOrder = 1
          Color = clWindow
          ParentColor = False
          Action = acApdung_DG
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object Panel2: TPanel
          Left = 21
          Top = 201
          Width = 458
          Height = 158
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = 'Panel1'
          Color = clWindow
          TabOrder = 6
          object ElPageControl1: TElPageControl
            Left = 2
            Top = 2
            Width = 454
            Height = 154
            BorderWidth = 1
            DrawFocus = False
            Flat = True
            HotTrack = True
            Images = dmMain.imgAction
            Multiline = True
            RaggedRight = False
            ScrollOpposite = False
            ShowTabs = False
            Style = etsFlatButtons
            TabIndex = 0
            TabPosition = etpTop
            HotTrackFont.Charset = ANSI_CHARSET
            HotTrackFont.Color = clBlack
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = [fsBold]
            ActivePage = ElTabSheet2
            FlatTabBorderColor = clBtnShadow
            DraggablePages = False
            ActiveTabFont.Charset = DEFAULT_CHARSET
            ActiveTabFont.Color = clBlack
            ActiveTabFont.Height = -11
            ActiveTabFont.Name = 'MS Sans Serif'
            ActiveTabFont.Style = []
            TabCursor = crDefault
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object ElTabSheet2: TElTabSheet
              PageControl = ElPageControl1
              ImageIndex = -1
              TabVisible = True
              Caption = 'M'#192'N H'#204'NH XEM TR'#431#7898'C'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              object gridTest: TdxDBGrid
                Left = 0
                Top = 0
                Width = 454
                Height = 154
                Bands = <
                  item
                    Caption = 'Kh'#243'a'
                  end
                  item
                    Caption = 'D'#7919' li'#7879'u'
                  end>
                DefaultLayout = False
                HeaderPanelRowCount = 1
                KeyField = 'RecID'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 0
                DataSource = dsTestData
                Filter.Criteria = {00000000}
                OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                object gridTestID_DATA: TdxDBGridColumn
                  Caption = 'ID'
                  DisableEditor = True
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'ID_DATA'
                end
                object gridTestDATA: TdxDBGridColumn
                  Caption = 'D'#7919' li'#7879'u th'#7917
                  BandIndex = 1
                  RowIndex = 0
                  FieldName = 'DATA'
                  Caption_UTF7 = 'D+Hu8 li+Hsc-u th+Hu0'
                end
              end
            end
          end
        end
        object dxLayoutGroup8: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup9: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutItem10: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'dxDBInspector1'
              ShowCaption = False
              Control = dxinspGridOption
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Group1: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avBottom
              Caption = 'M'#192'N H'#204'NH XEM TR'#431#7898'C'
              CaptionOptions.AlignHorz = taCenter
              object dxLayoutItem11: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avBottom
                Caption = 'M'#192'N H'#204'NH XEM TR'#431#7898'C'
                CaptionOptions.AlignHorz = taCenter
                CaptionOptions.Layout = clTop
                ShowCaption = False
                Control = Panel2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutGroup11: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutItem12: TdxLayoutItem
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton5
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem14: TdxLayoutItem
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object tabUIControl: TElTabSheet
      PageControl = pageMain
      ImageIndex = -1
      TabVisible = True
      Caption = 'UI_CONTROL'
      Visible = False
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 500
        Height = 407
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = dmMain.StyleWeb
        object dxinsUIControl: TdxDBInspector
          Left = 2
          Top = 2
          Width = 302
          Height = 380
          Color = clBtnHighlight
          DataSource = dsUIControl
          DefaultFields = False
          TabOrder = 0
          DividerPos = 187
          Flat = True
          GridColor = clBtnFace
          PaintStyle = ipsNET
          Data = {
            4C0B0000050000000800000004000000130000006478696E735549436F6E7472
            6F6C526F7733320800000000000000270000006478696E735549436F6E74726F
            6C53504C49545445525F53484F575F534E41505F425554544F4E080000000000
            0000230000006478696E735549436F6E74726F6C53504C49545445525F444546
            41554C545F53495A450800000000000000220000006478696E735549436F6E74
            726F6C53504C49545445525F424556454C5F494E4E4552080000000000000023
            0000006478696E735549436F6E74726F6C53504C49545445525F5553455F5850
            5F5448454D450800000006000000130000006478696E735549436F6E74726F6C
            526F7733330800000000000000130000006478696E735549436F6E74726F6C52
            6F77353508000000000000001F0000006478696E735549436F6E74726F6C4255
            54544F4E5F424556454C5F4B494E4408000000000000001F0000006478696E73
            5549436F6E74726F6C425554544F4E5F5448494E5F4652414D45080000000000
            0000130000006478696E735549436F6E74726F6C526F77353608000000000000
            00190000006478696E735549436F6E74726F6C425554544F4E5F464C41540800
            000004000000130000006478696E735549436F6E74726F6C526F773438080000
            00000000001F0000006478696E735549436F6E74726F6C425554544F4E5F4D4F
            4E45595F464C41540800000000000000270000006478696E735549436F6E7472
            6F6C425554544F4E5F4D4F4E45595F4143544956455F434F4C4F520800000000
            000000290000006478696E735549436F6E74726F6C425554544F4E5F4D4F4E45
            595F494E4143544956455F434F4C4F520800000000000000250000006478696E
            735549436F6E74726F6C425554544F4E5F4D4F4E45595F444F574E5F434F4C4F
            520800000009000000130000006478696E735549436F6E74726F6C526F773334
            0800000006000000130000006478696E735549436F6E74726F6C526F77353008
            000000000000001D0000006478696E735549436F6E74726F6C504147455F464F
            4E545F434F4C4F5208000000000000001C0000006478696E735549436F6E7472
            6F6C504147455F464F4E545F53495A450800000000000000220000006478696E
            735549436F6E74726F6C504147455F464F4E545F5354594C455F424F4C440800
            000000000000240000006478696E735549436F6E74726F6C504147455F464F4E
            545F5354594C455F4954414C494308000000000000001C0000006478696E7355
            49436F6E74726F6C504147455F484F545F545241434B08000000000000001300
            00006478696E735549436F6E74726F6C526F7735370800000005000000130000
            006478696E735549436F6E74726F6C526F773531080000000000000025000000
            6478696E735549436F6E74726F6C504147455F494E4143544956455F5441425F
            434F4C4F520800000000000000230000006478696E735549436F6E74726F6C50
            4147455F4143544956455F5441425F434F4C4F52080000000000000028000000
            6478696E735549436F6E74726F6C504147455F464C41545F5441425F424F5244
            45525F434F4C4F5208000000000000001F0000006478696E735549436F6E7472
            6F6C504147455F5441425F424B5F434F4C4F5208000000000000001F00000064
            78696E735549436F6E74726F6C504147455F5441425F504F534954494F4E0800
            000000000000180000006478696E735549436F6E74726F6C504147455F434F4C
            4F520800000000000000170000006478696E735549436F6E74726F6C50414745
            5F464C415408000000000000001D0000006478696E735549436F6E74726F6C50
            4147455F4D554C54495F4C494E4508000000000000001E0000006478696E7355
            49436F6E74726F6C504147455F53484F575F424F524445520800000000000000
            180000006478696E735549436F6E74726F6C504147455F5354594C4508000000
            000000001F0000006478696E735549436F6E74726F6C504147455F5553455F58
            505F5448454D450800000000000000280000006478696E735549436F6E74726F
            6C504147455F564552544943414C5F534944455F43415054494F4E0800000007
            000000130000006478696E735549436F6E74726F6C526F773335080000000000
            0000210000006478696E735549436F6E74726F6C534944454241525F5041494E
            545F5354594C450800000000000000220000006478696E735549436F6E74726F
            6C534944454241525F424F524445525F5354594C450800000000000000220000
            006478696E735549436F6E74726F6C534944454241525F43414E5F53454C4543
            5445440800000000000000200000006478696E735549436F6E74726F6C534944
            454241525F53484F575F47524F55500800000004000000130000006478696E73
            5549436F6E74726F6C526F7735330800000000000000260000006478696E7355
            49436F6E74726F6C534944454241525F47524F55505F464F4E545F434F4C4F52
            0800000000000000250000006478696E735549436F6E74726F6C534944454241
            525F47524F55505F464F4E545F53495A4508000000000000002B000000647869
            6E735549436F6E74726F6C534944454241525F47524F55505F464F4E545F5354
            594C455F424F4C4408000000000000002D0000006478696E735549436F6E7472
            6F6C534944454241525F47524F55505F464F4E545F5354594C455F4954414C49
            430800000004000000130000006478696E735549436F6E74726F6C526F773534
            0800000000000000250000006478696E735549436F6E74726F6C534944454241
            525F4954454D5F464F4E545F434F4C4F52080000000000000024000000647869
            6E735549436F6E74726F6C534944454241525F4954454D5F464F4E545F53495A
            4508000000000000002A0000006478696E735549436F6E74726F6C5349444542
            41525F4954454D5F464F4E545F5354594C455F424F4C4408000000000000002C
            0000006478696E735549436F6E74726F6C534944454241525F4954454D5F464F
            4E545F5354594C455F4954414C49430800000004000000130000006478696E73
            5549436F6E74726F6C526F7735320800000000000000280000006478696E7355
            49436F6E74726F6C534944454241525F424B47524F554E5F46494C4C5F535459
            4C450800000000000000130000006478696E735549436F6E74726F6C526F7735
            3808000000000000002A0000006478696E735549436F6E74726F6C5349444542
            41525F424B47524F554E445F424547494E5F434F4C4F52080000000000000028
            0000006478696E735549436F6E74726F6C534944454241525F424B47524F554E
            445F454E445F434F4C4F520800000002000000130000006478696E735549436F
            6E74726F6C526F7735390800000000000000220000006478696E735549436F6E
            74726F6C52455155495245445F4649454C445F434F4C4F520800000000000000
            130000006478696E735549436F6E74726F6C526F7736300B0000000800000044
            BBEE08130000006478696E735549436F6E74726F6C526F773332080000007092
            F608130000006478696E735549436F6E74726F6C526F77333308000000F03FF6
            08130000006478696E735549436F6E74726F6C526F773438080000001C06F008
            130000006478696E735549436F6E74726F6C526F7733340800000010B2F20813
            0000006478696E735549436F6E74726F6C526F773530080000003CAEF1081300
            00006478696E735549436F6E74726F6C526F7735310800000018E2F108130000
            006478696E735549436F6E74726F6C526F77333508000000E82EF70813000000
            6478696E735549436F6E74726F6C526F773533080000001C09F4081300000064
            78696E735549436F6E74726F6C526F77353408000000906BCB08130000006478
            696E735549436F6E74726F6C526F773532080000006497EE0813000000647869
            6E735549436F6E74726F6C526F773539}
          object dxinsUIControlRow32: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n Splitter'
            IsCategory = True
          end
          object dxinsUIControlRow33: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n n'#250't nh'#7845'n'
            IsCategory = True
          end
          object dxinsUIControlRow34: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n tr'#234'n PageControl'
            IsCategory = True
          end
          object dxinsUIControlRow35: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n tr'#234'n SideBar'
            IsCategory = True
          end
          object dxinsUIControlSPLITTER_SHOW_SNAP_BUTTON: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' Snap button'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SPLITTER_SHOW_SNAP_BUTTON'
          end
          object dxinsUIControlSPLITTER_DEFAULT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c m'#7863'c '#273#7883'nh'
            FieldName = 'SPLITTER_DEFAULT_SIZE'
          end
          object dxinsUIControlSPLITTER_BEVEL_INNER: TdxInspectorDBImageRow
            Caption = 'D'#7841'ng hi'#7875'n th'#7883
            Descriptions.WideStrings = (
              #272#7875' tr'#7889'ng'
              'Hi'#7875'n th'#7883' ch'#236'm'
              'Hi'#7875'n th'#7883' n'#7893'i'
              'Kho'#7843'ng c'#225'ch')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3')
            FieldName = 'SPLITTER_BEVEL_INNER'
          end
          object dxinsUIControlSPLITTER_USE_XP_THEME: TdxInspectorDBCheckRow
            Caption = 'Chu'#7849'n XP'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SPLITTER_USE_XP_THEME'
          end
          object dxinsUIControlBUTTON_BEVEL_KIND: TdxInspectorDBImageRow
            Caption = 'D'#7841'ng hi'#7875'n th'#7883
            Descriptions.WideStrings = (
              #272#7875' tr'#7889'ng'
              'Ti'#234'u '#273#7873
              'Nh'#7865' nh'#224'ng'
              'Ph'#7859'ng')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3')
            FieldName = 'BUTTON_BEVEL_KIND'
          end
          object dxinsUIControlBUTTON_THIN_FRAME: TdxInspectorDBCheckRow
            Caption = 'D'#7841'ng khung m'#7887'ng'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'BUTTON_THIN_FRAME'
          end
          object dxinsUIControlRow48: TdxInspectorDBRow
            Caption = 'Ki'#7875'u hi'#7875'n th'#7883' Money'
            IsCategory = True
          end
          object dxinsUIControlBUTTON_FLAT: TdxInspectorDBCheckRow
            Caption = 'Ph'#7859'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'BUTTON_FLAT'
          end
          object dxinsUIControlBUTTON_MONEY_FLAT: TdxInspectorDBCheckRow
            Caption = 'Ph'#7859'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'BUTTON_MONEY_FLAT'
          end
          object dxinsUIControlBUTTON_MONEY_ACTIVE_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u khi ch'#7885'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'BUTTON_MONEY_ACTIVE_COLOR'
          end
          object dxinsUIControlBUTTON_MONEY_INACTIVE_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u khi kh'#244'ng ch'#7885'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'BUTTON_MONEY_INACTIVE_COLOR'
          end
          object dxinsUIControlBUTTON_MONEY_DOWN_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u khi nh'#7845'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'BUTTON_MONEY_DOWN_COLOR'
          end
          object dxinsUIControlPAGE_ACTIVE_TAB_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u tab khi ch'#7885'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'PAGE_ACTIVE_TAB_COLOR'
          end
          object dxinsUIControlPAGE_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u page'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'PAGE_COLOR'
          end
          object dxinsUIControlPAGE_FLAT: TdxInspectorDBCheckRow
            Caption = 'Ph'#7859'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_FLAT'
          end
          object dxinsUIControlPAGE_FLAT_TAB_BORDER_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u '#273#432#7901'ng bi'#234'n tab'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'PAGE_FLAT_TAB_BORDER_COLOR'
          end
          object dxinsUIControlRow50: TdxInspectorDBRow
            Caption = 'Ki'#7875'u ch'#7919
            IsCategory = True
          end
          object dxinsUIControlPAGE_FONT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'PAGE_FONT_COLOR'
          end
          object dxinsUIControlPAGE_FONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'PAGE_FONT_SIZE'
          end
          object dxinsUIControlPAGE_FONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_FONT_STYLE_BOLD'
          end
          object dxinsUIControlPAGE_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_FONT_STYLE_ITALIC'
          end
          object dxinsUIControlPAGE_HOT_TRACK: TdxInspectorDBCheckRow
            Caption = 'Hot track'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_HOT_TRACK'
          end
          object dxinsUIControlRow51: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n tr'#234'n tab'
            IsCategory = True
          end
          object dxinsUIControlPAGE_INACTIVE_TAB_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u tab'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'PAGE_INACTIVE_TAB_COLOR'
          end
          object dxinsUIControlPAGE_MULTI_LINE: TdxInspectorDBCheckRow
            Caption = 'Nhi'#7873'u d'#242'ng tab'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_MULTI_LINE'
          end
          object dxinsUIControlPAGE_SHOW_BORDER: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' '#273#432#7901'ng bi'#234'n'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_SHOW_BORDER'
          end
          object dxinsUIControlPAGE_TAB_BK_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u n'#7873'n tab'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'PAGE_TAB_BK_COLOR'
          end
          object dxinsUIControlPAGE_TAB_POSITION: TdxInspectorDBImageRow
            Caption = 'V'#7883' tr'#237' tab'
            Descriptions.WideStrings = (
              'Ph'#237'a tr'#234'n'
              'Ph'#237'a d'#432#7899'i'
              'B'#234'n ph'#7843'i'
              'B'#234'n tr'#225'i')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3')
            FieldName = 'PAGE_TAB_POSITION'
          end
          object dxinsUIControlPAGE_STYLE: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u hi'#7875'n th'#7883
            Descriptions.WideStrings = (
              'D'#7841'ng tab'
              'D'#7841'ng n'#250't'
              'D'#7841'ng n'#250't ph'#7859'ng'
              'D'#7841'ng m'#7841'ng l'#432#7899'i'
              'D'#7841'ng tab ph'#7859'ng'
              'D'#7841'ng tab c'#243' g'#243'c')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
            FieldName = 'PAGE_STYLE'
          end
          object dxinsUIControlPAGE_USE_XP_THEME: TdxInspectorDBCheckRow
            Caption = 'Chu'#7849'n XP'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_USE_XP_THEME'
          end
          object dxinsUIControlPAGE_VERTICAL_SIDE_CAPTION: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' text chi'#7873'u d'#7885'c'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'PAGE_VERTICAL_SIDE_CAPTION'
          end
          object dxinsUIControlSIDEBAR_BKGROUND_BEGIN_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u b'#7855't '#273#7847'u'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'SIDEBAR_BKGROUND_BEGIN_COLOR'
          end
          object dxinsUIControlRow52: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n n'#7873'n'
            IsCategory = True
          end
          object dxinsUIControlSIDEBAR_BKGROUND_END_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u k'#7871't th'#250'c'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'SIDEBAR_BKGROUND_END_COLOR'
          end
          object dxinsUIControlSIDEBAR_BKGROUN_FILL_STYLE: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u t'#244
            Descriptions.WideStrings = (
              #272#7875' tr'#7889'ng'
              'H'#224'ng ngang'
              'H'#224'ng d'#7885'c')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2')
            FieldName = 'SIDEBAR_BKGROUN_FILL_STYLE'
          end
          object dxinsUIControlSIDEBAR_BORDER_STYLE: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u '#273#432#7901'ng bi'#234'n'
            Descriptions.WideStrings = (
              #272#7875' tr'#7889'ng'
              #272#432#7901'ng '#273#417'n')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1')
            FieldName = 'SIDEBAR_BORDER_STYLE'
          end
          object dxinsUIControlSIDEBAR_CAN_SELECTED: TdxInspectorDBCheckRow
            Caption = 'Cho ph'#233'p nh'#7845'n'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SIDEBAR_CAN_SELECTED'
          end
          object dxinsUIControlRow53: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n ki'#7875'u ch'#7919' nh'#243'm'
            IsCategory = True
          end
          object dxinsUIControlSIDEBAR_GROUP_FONT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'SIDEBAR_GROUP_FONT_COLOR'
          end
          object dxinsUIControlSIDEBAR_GROUP_FONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'SIDEBAR_GROUP_FONT_SIZE'
          end
          object dxinsUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SIDEBAR_GROUP_FONT_STYLE_BOLD'
          end
          object dxinsUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SIDEBAR_GROUP_FONT_STYLE_ITALIC'
          end
          object dxinsUIControlRow54: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n ki'#7875'u ch'#7919
            IsCategory = True
          end
          object dxinsUIControlSIDEBAR_PAINT_STYLE: TdxInspectorDBImageRow
            Caption = 'Ki'#7875'u v'#7869
            Descriptions.WideStrings = (
              'Chu'#7849'n'
              'Ph'#7859'ng'
              'Ki'#7875'u XP'
              'Ki'#7875'u Win2K')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3')
            FieldName = 'SIDEBAR_PAINT_STYLE'
          end
          object dxinsUIControlSIDEBAR_SHOW_GROUP: TdxInspectorDBCheckRow
            Caption = 'Hi'#7875'n th'#7883' nh'#243'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SIDEBAR_SHOW_GROUP'
          end
          object dxinsUIControlSIDEBAR_ITEM_FONT_COLOR: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'SIDEBAR_ITEM_FONT_COLOR'
          end
          object dxinsUIControlSIDEBAR_ITEM_FONT_SIZE: TdxInspectorDBSpinRow
            Caption = 'K'#237'ch th'#432#7899'c'
            FieldName = 'SIDEBAR_ITEM_FONT_SIZE'
          end
          object dxinsUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD: TdxInspectorDBCheckRow
            Caption = 'In '#273#7853'm'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SIDEBAR_ITEM_FONT_STYLE_BOLD'
          end
          object dxinsUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC: TdxInspectorDBCheckRow
            Caption = 'In nghi'#234'ng'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'SIDEBAR_ITEM_FONT_STYLE_ITALIC'
          end
          object dxinsUIControlRow55: TdxInspectorDBCheckRow
            Caption = 'Chu'#7849'n XP'
            ValueChecked = '1'
            ValueUnchecked = '0'
            FieldName = 'BUTTON_USE_XP_THEME'
          end
          object dxinsUIControlRow56: TdxInspectorDBButtonRow
            Caption = 'M'#224'u n'#7873'n'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'BUTTON_COLOR'
          end
          object dxinsUIControlRow57: TdxInspectorDBButtonRow
            Caption = 'M'#224'u ch'#7919' HotTrack'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'PAGE_HOT_TRACK_FONT_COLOR'
          end
          object dxinsUIControlRow58: TdxInspectorDBButtonRow
            Caption = 'M'#224'u'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'SIDEBAR_COLOR'
          end
          object dxinsUIControlRow59: TdxInspectorDBRow
            Caption = 'T'#249'y ch'#7885'n m'#224'u bi'#7875'u th'#7883
            IsCategory = True
          end
          object dxinsUIControlREQUIRED_FIELD_COLOR: TdxInspectorDBButtonRow
            Caption = 'Th'#244'ng tin b'#7855't bu'#7897'c'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'REQUIRED_FIELD_COLOR'
          end
          object dxinsUIControlRow60: TdxInspectorDBButtonRow
            Caption = 'Th'#244'ng tin ch'#7881' xem'
            Buttons = <
              item
                Default = True
              end>
            FieldName = 'READ_ONLY_COLOR'
          end
        end
        object ElPopupButton6: TElPopupButton
          Left = 418
          Top = 380
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 15
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = #272#243'&ng'
          TabOrder = 2
          Color = 15466238
          ParentColor = False
          Action = acDong_LAF
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object ElPopupButton7: TElPopupButton
          Left = 338
          Top = 380
          Width = 80
          Height = 25
          Cursor = crDefault
          ImageIndex = 9
          UseImageList = True
          Images = dmMain.imgAction
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = '&'#193'p d'#7909'ng'
          TabOrder = 1
          Color = 15466238
          ParentColor = False
          Action = acApdung_UIControl
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object Panel3: TPanel
          Left = 304
          Top = 2
          Width = 220
          Height = 349
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = 'Panel1'
          Color = 15466238
          TabOrder = 6
          object ElPageControl2: TElPageControl
            Left = 2
            Top = 2
            Width = 216
            Height = 345
            BorderWidth = 1
            DrawFocus = False
            Flat = True
            HotTrack = True
            Images = dmMain.imgAction
            Multiline = True
            RaggedRight = False
            ScrollOpposite = False
            ShowTabs = False
            Style = etsFlatButtons
            TabIndex = 0
            TabPosition = etpTop
            HotTrackFont.Charset = ANSI_CHARSET
            HotTrackFont.Color = clBlack
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = [fsBold]
            ActivePage = ElTabSheet3
            FlatTabBorderColor = clBtnShadow
            DraggablePages = False
            ActiveTabFont.Charset = DEFAULT_CHARSET
            ActiveTabFont.Color = clBlack
            ActiveTabFont.Height = -11
            ActiveTabFont.Name = 'MS Sans Serif'
            ActiveTabFont.Style = []
            TabCursor = crDefault
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object ElTabSheet3: TElTabSheet
              PageControl = ElPageControl2
              ImageIndex = -1
              TabVisible = True
              Caption = 'M'#192'N H'#204'NH XEM TR'#431#7898'C'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              object pageTest: TElPageControl
                Left = 0
                Top = 0
                Width = 216
                Height = 345
                BorderWidth = 0
                DrawFocus = False
                Flat = False
                HotTrack = True
                Multiline = False
                RaggedRight = False
                ScrollOpposite = False
                ShowBorder = False
                Style = etsTabs
                TabIndex = 0
                TabPosition = etpTop
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clBlue
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
                ActivePage = ElTabSheet4
                FlatTabBorderColor = clBtnShadow
                DraggablePages = False
                ActiveTabFont.Charset = DEFAULT_CHARSET
                ActiveTabFont.Color = clWindowText
                ActiveTabFont.Height = -11
                ActiveTabFont.Name = 'MS Sans Serif'
                ActiveTabFont.Style = []
                TabCursor = crDefault
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                object ElTabSheet4: TElTabSheet
                  PageControl = pageTest
                  ImageIndex = -1
                  TabVisible = True
                  Caption = 'Tab d'#7919' li'#7879'u 1'
                  object splitTest: TElSplitter
                    Left = 105
                    Top = 0
                    Width = 9
                    Height = 324
                    Cursor = crHSplit
                    SnapTopLeft = True
                    SnapBottomRight = True
                    ControlTopLeft = sidebarTest
                    ControlBottomRight = panelTest
                    AutoHide = False
                    Align = alLeft
                    BevelInner = bvLowered
                    BevelOuter = bvNone
                    UseXPThemes = False
                  end
                  object sidebarTest: TdxSideBar
                    Left = 0
                    Top = 0
                    Width = 105
                    Height = 324
                    BkGround.BeginColor = clGrayText
                    BkGround.EndColor = clGrayText
                    BkGround.FillStyle = bfsNone
                    CanSelected = False
                    GroupFont.Charset = ANSI_CHARSET
                    GroupFont.Color = clWindowText
                    GroupFont.Height = -11
                    GroupFont.Name = 'Tahoma'
                    GroupFont.Style = []
                    Groups = <
                      item
                        Caption = 'Nh'#243'm 1'
                        Index = 0
                        IconType = dxsgLargeIcon
                        Items = <
                          item
                            Caption = 'Ch'#7913'c n'#259'ng 1'
                            Index = 0
                            IsDefault = True
                            LargeImage = 5
                            SmallImage = -1
                            Tag = 0
                          end
                          item
                            Caption = 'Ch'#7913'c n'#259'ng 2'
                            Index = 1
                            IsDefault = True
                            LargeImage = 6
                            SmallImage = -1
                            Tag = 0
                          end
                          item
                            Caption = 'Ch'#7913'c n'#259'ng 3'
                            Index = 2
                            IsDefault = True
                            LargeImage = 4
                            SmallImage = -1
                            Tag = 0
                          end
                          item
                            Caption = 'Ch'#7913'c n'#259'ng 4'
                            Index = 3
                            IsDefault = True
                            LargeImage = 2
                            SmallImage = -1
                            Tag = 0
                          end>
                      end
                      item
                        Caption = 'Nh'#243'm 2'
                        Index = 1
                        IconType = dxsgLargeIcon
                        Items = <
                          item
                            Caption = 'Ch'#7913'c n'#259'ng 5'
                            Index = 0
                            IsDefault = True
                            LargeImage = 10
                            SmallImage = -1
                            Tag = 0
                          end
                          item
                            Caption = 'Ch'#7913'c n'#259'ng 6'
                            Index = 1
                            IsDefault = True
                            LargeImage = 12
                            SmallImage = -1
                            Tag = 0
                          end
                          item
                            Caption = 'Ch'#7913'c n'#259'ng 7'
                            Index = 2
                            IsDefault = True
                            LargeImage = 14
                            SmallImage = -1
                            Tag = 0
                          end>
                      end>
                    ActiveGroupIndex = 0
                    GroupHeightOffSet = 0
                    ItemFont.Charset = ANSI_CHARSET
                    ItemFont.Color = clWindow
                    ItemFont.Height = -11
                    ItemFont.Name = 'Tahoma'
                    ItemFont.Style = []
                    LargeImages = ImageList1
                    ScrollDelay = 300
                    SpaceHeight = 7
                    TransparentImages = False
                    ShowGroups = True
                    StoreInRegistry = False
                  end
                  object panelTest: TPanel
                    Left = 114
                    Top = 0
                    Width = 102
                    Height = 324
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 2
                    object buttonTest: TElPopupButton
                      Left = 207
                      Top = 18
                      Width = 81
                      Height = 33
                      Cursor = crDefault
                      DrawDefaultFrame = False
                      LinkColor = clBlue
                      LinkStyle = [fsUnderline]
                      NumGlyphs = 1
                      UseXPThemes = True
                      Caption = 'N'#250't nh'#7845'n 3'
                      TabOrder = 0
                      Color = clWindow
                      ParentColor = False
                      DockOrientation = doNoOrient
                      DoubleBuffered = False
                    end
                    object buttonTest_3: TElPopupButton
                      Left = 10
                      Top = 102
                      Width = 81
                      Height = 33
                      Cursor = crDefault
                      DrawDefaultFrame = False
                      LinkColor = clBlue
                      LinkStyle = [fsUnderline]
                      NumGlyphs = 1
                      UseXPThemes = True
                      Caption = 'N'#250't nh'#7845'n 2'
                      TabOrder = 1
                      Color = clWindow
                      ParentColor = False
                      DockOrientation = doNoOrient
                      DoubleBuffered = False
                    end
                    object buttonTest_4: TElPopupButton
                      Left = 10
                      Top = 168
                      Width = 81
                      Height = 33
                      Cursor = crDefault
                      DrawDefaultFrame = False
                      LinkColor = clBlue
                      LinkStyle = [fsUnderline]
                      NumGlyphs = 1
                      UseXPThemes = True
                      Caption = 'N'#250't nh'#7845'n 3'
                      TabOrder = 2
                      Color = clWindow
                      ParentColor = False
                      DockOrientation = doNoOrient
                      DoubleBuffered = False
                    end
                    object buttonTest_1: TElPopupButton
                      Left = 10
                      Top = 233
                      Width = 81
                      Height = 33
                      Cursor = crDefault
                      DrawDefaultFrame = False
                      LinkColor = clBlue
                      LinkStyle = [fsUnderline]
                      NumGlyphs = 1
                      UseXPThemes = True
                      Caption = 'N'#250't nh'#7845'n 4'
                      TabOrder = 3
                      Color = clWindow
                      ParentColor = False
                      DockOrientation = doNoOrient
                      DoubleBuffered = False
                    end
                    object buttonTest_2: TElPopupButton
                      Left = 9
                      Top = 36
                      Width = 81
                      Height = 33
                      Cursor = crDefault
                      DrawDefaultFrame = False
                      LinkColor = clBlue
                      LinkStyle = [fsUnderline]
                      NumGlyphs = 1
                      UseXPThemes = True
                      Caption = 'N'#250't nh'#7845'n 1'
                      TabOrder = 4
                      Color = clWindow
                      ParentColor = False
                      DockOrientation = doNoOrient
                      DoubleBuffered = False
                    end
                  end
                end
                object ElTabSheet5: TElTabSheet
                  PageControl = pageTest
                  ImageIndex = -1
                  TabVisible = True
                  Caption = 'Tab d'#7919' li'#7879'u 2'
                  Visible = False
                end
              end
            end
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup3: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutItem2: TdxLayoutItem
              AutoAligns = []
              AlignVert = avClient
              Caption = 'dxDBInspector1'
              ShowCaption = False
              Control = dxinsUIControl
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem3: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Caption = 'Panel1'
              ShowCaption = False
              Control = Panel3
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup4: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutItem4: TdxLayoutItem
              Caption = 'ElPopupButton3'
              ShowCaption = False
              Control = ElPopupButton7
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem5: TdxLayoutItem
              Caption = 'ElPopupButton2'
              ShowCaption = False
              Control = ElPopupButton6
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  object dxlcLAFList: TdxLayoutControl [4]
    Left = 0
    Top = 160
    Width = 137
    Height = 153
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    object dxDBGrid1: TdxDBGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LF_ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      OnDblClick = dxDBGrid1DblClick
      DataSource = dsLAFList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      OnChangeNode = dxDBGrid1ChangeNode
      object dxDBGrid1LF_ID: TdxDBGridColumn
        Caption = 'K'#253' hi'#7879'u'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LF_ID'
        Caption_UTF7 = 'K+AP0 hi+Hsc-u'
      end
      object dxDBGrid1LF_TITLE: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873
        HeaderAlignment = taCenter
        Width = 224
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LF_TITLE'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ'
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
        Control = dxDBGrid1
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
        Caption = 'C'#7845'u h'#236'nh h'#7879' th'#7889'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 60
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 8
    Top = 32
    Bitmap = {
      494C010122002700040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004001000001002000000000000080
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7FFF959594FF9A9A9AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFFF6F6F6FFF1F1F1FFEEEEEEFFEEEEEEFFF1F1F1FFF6F6F6FFFAFA
      FAFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C55
      84FF1F4780FF40424AFF8C8C8CFF49352CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFCFFF5F5F5FFECEC
      ECFFE1E1E1FFD5D5D5FFCACACAFFC4C4C4FFC4C4C4FFCACACAFFD5D5D5FFE1E1
      E1FFECECECFFF5F5F5FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B4A
      71FF2597FFFF176FD9FF133B72FF2C3039FF332C28FF896E62FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFF4F4F4FFE5E5E5FFD4D4D4FFC9C0
      A7FFC8B173FFCEAA47FFD3A72EFFD2A62EFFCAA643FFBEA768FFB5AC93FFB7B7
      B7FFC4C4C4FFD4D4D4FFE5E5E5FFF4F4F4FFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E2923FF6B1F1CFF3D1F2FFF1B44
      89FF2390FFFF2590FFFF228CFFFF156EDEFF163471FF3F1B26FF76221EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFAFAFAFFEBEBEBFFD4D1C8FFCCB474FFD4A933FFDDA6
      13FFE2A403FFE3A400FFE2A300FFE2A300FFE3A400FFE2A403FFDCA612FFD0A5
      2EFFBDA565FFAFACA4FFBCBCBCFFD3D3D3FFEBEBEBFFFAFAFAFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B85715FFA24A11FF8C3E0EFF7C35
      0CFF74320DFF70300DFF712E09FF6F2907FF41282EFF1A5EB0FF1F8AF9FF1F8E
      FFFF208AFFFF228BFFFF238EFFFF2092FFFF5CB4FFFF447AC4FF73250AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFF7F7F7FFE3E3E3FFD3BA77FFDEA814FFE4A500FFE1A200FFDF9F
      00FFDE9E00FFDD9D00FFDD9D00FFDD9D00FFDD9D00FFDE9E00FFDF9F00FFE1A2
      00FFE4A500FFDCA612FFBCA361FFAEAEAEFFC6C6C6FFE3E3E3FFF7F7F7FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D0D1FF969293FF7A7778FF828081FF979696FFA6A6
      A6FFAFAFAFFFB8B7B4FF9FA0A6FF2A67B1FF1B87F5FF2594FFFF3296FFFF51A7
      FFFF70B7FFFF43A0FFFF2494FFFF80C8FFFF74A4DCFF888999FF000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFF7F7F7FFE0DCCFFFD9AF3DFFE5A600FFE1A200FFDE9F00FFDE9E00FFDE9F
      00FFDE9F00FFDF9F00FFDF9F00FFDF9F00FFDE9F00FFDE9F00FFDE9E00FFDE9E
      00FFDE9E00FFE0A200FFE4A600FFCEA433FFABA79BFFC0C0C0FFE0E0E0FFF7F7
      F7FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB9B9FF888888FFBEBEBEFFDFDFDFFFE7E7E7FFE7E7E7FFE8E8
      E8FFECEBEAFFE6E4E4FF518BD2FF198CFBFF2D95FFFF51A7FFFF60ACF9FF5597
      E3FF77B0ECFF89CBFFFF9DD7FFFF729FD6FFA19EAAFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FAFFE3DBC8FFDEAB21FFE5A600FFDD9C00FFDA9900FFDA9900FFDA9A00FFDA9A
      00FFDA9A00FFDA9A00FFDA9A00FFDA9900FFDB9A00FFDEA000FFDFA100FFDD9F
      00FFDEA000FFDEA000FFDFA100FFE3A500FFD8A41AFFACA491FFBFBFBFFFE3E3
      E3FFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9D8D8FFABABABFFF6F6F6FFF4F4F4FFEFEFEFFFEDEDEDFFEDEDEDFFEAEA
      EAFFF2EEE8FF84A4CFFF1380EEFF389EFFFF62B4FFFF4F9BEBFF6995D0FFA7B6
      D3FF6D9CD6FFC3E9FFFF608EC5FFAAA6B0FF000000000000000000000000EBDF
      DFFFD6C9CAFFA03000FFBF8F7BFFAB322BFF0000000000000000FCFCFCFFEAE6
      DBFFE1AD20FFE3A300FFCB8F00FFCA9C2BFFCDA646FFCDA443FFCDA443FFCDA4
      43FFCDA443FFCDA443FFCDA443FFCDA545FFCDA33EFFC99308FFD99900FFE0A2
      00FFDEA000FFE0A200FFE0A200FFE0A100FFE3A500FFD9A519FFABA79CFFC6C6
      C6FFEBEBEBFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BCBCBCFFFCFCFCFFFCFCFCFFF7F7F7FFF5F5F5FFF0F0F0FFE5E5E5FFE0DF
      DDFFCBCDD2FF297AD4FF2B9BFFFF6ABBFFFF4B9BEBFF698CBCFFE8E6E2FFFFFF
      FBFF719ED6FF629CE0FF787F8EFF00000000000000000000000000000000A09D
      A6FF515C72FF3E2125FF544951FF962C26FF0000000000000000F4F4F4FFDFB4
      41FFE5A600FFC88F04FFDDCB9CFFF7F7F5FFF3F0E7FFF4F0E7FFF4F0E7FFF4F0
      E7FFF4F0E7FFF4F0E7FFF4F0E7FFF3F0E6FFF5F3EEFFEFE9D9FFCA9D2CFFD89A
      00FFE0A300FFE0A300FFE0A300FFE0A300FFE0A300FFE4A600FFCEA330FFAEAE
      AEFFD3D3D3FFF4F4F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FFD1D1D1FFFFFFFFFFFFFFFFFFFDFDFDFFE6E6E6FFE3E3E3FFFFFB
      F5FFA2B8DBFF1581EDFF54B4FFFF60AEF4FF487BBEFFD4D1CEFFF5F4F2FFFFFF
      FFFFB9CFEDFFABB9D0FFB5AEADFF000000000000000000000000000000007086
      A5FF2393FFFF1C7EFFFF125AC2FF842621FF00000000FCFCFCFFE5CD8DFFE6A8
      00FFD59600FFD0B366FFFCFCFBFFD3A73AFFD59A10FFD69E12FFD69E12FFD69E
      12FFD69E12FFD79E12FFD8A011FFD89F0FFFD19917FFEADAB0FFECE4D0FFCE94
      03FFE6A700FFE4A600FFE4A600FFE4A600FFE3A500FFE2A400FFE5A700FFBAA3
      63FFBCBCBCFFE5E5E5FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF868686FFDDDDDDFFE1E1E1FFDADADAFFEDEDECFFF5F0
      EBFF6B97D3FF198FF8FF73C8FFFF5797DAFFBFC8D8FFDFDCD9FFE9E9E9FFEBEB
      EBFFB6B4B1FFB9B4B3FF00000000000000000000000000000000000000008A95
      A7FF299EFFFF2187FFFF1464D2FF7F2523FF00000000F5F2EBFFE3AC17FFE6A8
      00FFCF9300FFDFD0A6FFE7D6A3FFD59300FFE5A600FFE3A500FFE3A500FFE3A5
      00FFE5A600FFDD9D00FFD39400FFD19400FFCB8B00FFC0952AFFF6F7F4FFBE8E
      0EFFCF9300FFCF9500FFCF9500FFD19500FFD89A00FFE3A600FFE4A600FFDDA5
      11FFAEACA5FFD4D4D4FFF6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEFFFACACACFF9797
      97FF979797FF535353FF999999FF7C7C7CFF9F9F9FFFD0D0D0FFCACAC9FFC7C3
      C1FF4783CBFF259DFFFF81CFFFFF6897CAFFBAB8B9FFBEBDBDFF8E8E8EFF7574
      74FF8C8888FF999494FF939090FF928E8EFF928D8DFFB6B0B0FF000000007B8B
      A2FF289BFFFF2085FFFF165FCCFF892822FFFEFEFEFFE9D293FFE4A702FFE5A8
      0AFFCF9400FFDECFA5FFE7D4A0FFD99B00FFE3A70AFFE2A60BFFE2A60BFFE4A8
      0CFFD59900FFD0AB48FFE8DBBCFFECE3D0FFE9E0CBFFD9D4C6FFF6F6F7FFD9D5
      C5FFEAE2CCFFEAE2CDFFEBE2CEFFEAE1CAFFD5B86EFFCD9504FFE2A70FFFE5A7
      03FFBCA566FFC4C4C4FFECECECFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D37E2DFF9E9E9EFFDADADAFFE0E0
      E0FFDDDDDDFFDBDBDBFFD9D9D9FFD1D1D1FFD8D8D8FFD9D9D9FFD9D9D8FFD4D1
      D0FF4685D3FF24A4FFFF90D8FFFF82A6CFFFCAC9CAFFCECDCDFFC4C4C4FFBEBE
      BEFFC1C1C1FFC4C4C4FFCBC7C3FFC3C2C1FFC3C3C4FF939290FFA09898FF4A77
      A9FF2799FFFF1F83FFFF2159AEFF982C26FFFBFBFBFFE4B742FFE4A80EFFE6AA
      1DFFCF9508FFDECEA8FFE8D6A7FFDA9D06FFE4A91BFFE3A81BFFE5AA1BFFDFA2
      0DFFD0A94CFFFBFDFFFFE8D5A5FFE1C275FFE1C175FFD2BD8BFFF6F5F5FFD2BB
      7EFFE3C478FFE2C57DFFE0C279FFE0C78BFFFAFAFAFFD7BF83FFD49A0FFFE6AA
      10FFD0A52EFFB7B7B7FFE1E1E1FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A46A31FFF5F5F5FFFFFFFFFFFCFE
      FEFFFAFDFFFFF7F9FCFFF5F7F9FFF1F4F6FFEDEFF1FFE9EBEDFFE8EAEBFFE6E5
      E5FF568CD2FF4AA6F3FF95CFF7FF6E9BD0FFCCCFD6FFD7D9DAFFD4D6D8FFD2D5
      D7FFD2D4D4FFD2CECCFF8199BCFFB5BCC7FFC9C8C7FFE0DBD6FF707A8CFF1B7E
      D4FF258FFFFF2A89FFFF41537CFFAB322BFFF3EBD4FFE3AC18FFE4AA1EFFE6AC
      25FFCD9612FFDECEABFFE9D6AAFFDC9F10FFE5AB23FFE6AB24FFDFA216FFC188
      04FFE0D3B6FFE2D5B8FFBB8100FFCD930AFFC88B00FFBE9535FFF5F5F1FFBD8C
      1BFFCD9003FFD29200FFDFA00DFFD79600FFDBBC76FFF3F1EDFFCC9821FFE7AA
      1DFFDDA512FFB5AC96FFD5D5D5FFF6F6F6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D6F42FFFFFFFFFFFCFDFEFFF3EC
      E6FFF1E1D5FFF1E2D7FFF1E3D8FFF1E3D8FFF1E3D8FFF0E3D8FFF0E3D8FFF3E6
      D9FFBDBEC9FF9FA7BEFF9DA8BFFFA2ABC0FFE4D8CFFFE8DACFFFE4D8CDFFE7D7
      C9FFE6D0C1FF749FCAFF1F8FD8FFAEB7C5FFE1D6CCFFADB0BAFF4192D9FF2094
      FFFF3C92FFFF3A86EDFF7D6565FF00000000ECD597FFE4A70BFFE4AB29FFE7AD
      2AFFCF9618FFDECEACFFEBD7ACFFDDA016FFE7AE2AFFD79E1AFFD6B260FFDBD5
      C2FFEAECEFFFE8E6E1FFE8E2D4FFF0EBDEFFEDE8DAFFDAD8D3FFF6F7F7FFE0DD
      D5FFF0EADCFFDFC999FFD19C27FFE2A41AFFD7B15CFFF4F2EEFFCD9B2BFFE6AC
      28FFE2A609FFBDA669FFC9C9C9FFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B6F42FFFFFFFFFFFFFFFFFFD1A2
      83FFC46423FFCC7537FFD07A3BFFD58242FFDA8C4DFFDE9251FFE19655FFE39A
      59FFEBA25EFFEEA25BFFEC9F58FFEA9D58FFDF9252FFD98949FFDA8541FFD377
      38FF677587FF2BB4F6FF2FB8F6FF7F7F91FF94ABC4FF3693DCFF1C97FDFF3790
      FFFF69ADFFFF3D456EFFBD9280FF00000000E8C25FFFE5A80CFFE5AD32FFE8AF
      30FFCF981EFFDDCFADFFEBD8AEFFDFA31DFFE1A724FFCFA954FFFDFFFFFFD1BF
      93FFE2DAC8FFE2D5BAFFD4B163FFDEBD72FFD9B76AFFCBB582FFF6F6F5FFCEB1
      72FFDABB75FFF7F4EEFFE1D0AAFFD09513FFDAB565FFF4F1ECFFCE9C2EFFE7AE
      30FFE5A80CFFCAA541FFC4C4C4FFEEEEEEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7043FFFFFFFFFFFFFFFFFFCD9C
      7CFFBC5613FFC86E30FFD88E55FFDA9258FFD48141FFD98C4DFFE19E61FFDF96
      57FFDF9454FFE4A368FFE3A065FFD88948FFD68443FFE3975AFFD48148FF5B70
      87FF2DBCF7FF39C8FFFF35B9FDFF2B9DE4FF25A3F6FF219DFFFF409CFFFF81BD
      FFFF5082CDFF802705FF0000000000000000E7B942FFE5AA11FFE6AE37FFE9B0
      35FFD09922FFDECFAFFFECD9B0FFE2A622FFD89E21FFE1D1ADFFF0E3C9FFBD83
      03FFE6D8BBFFE4CC9AFFDA9B11FFE5A826FFE0A21BFFCEA449FFF6F5F3FFD4A1
      32FFDD9C0FFFD5B265FFF7F8F8FFCB992CFFD9B364FFF4F2ECFFCF9E32FFE8B0
      36FFE5AA12FFD2A52EFFC4C4C4FFEEEEEEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7042FFFFFFFFFFFFFFFFFFCC9A
      7BFFB8500EFFC97135FFE3AB79FFEFC798FFE8B07AFFEAB57EFFEBB986FFEFC0
      8CFFE3A168FFE8B17EFFF2CC9DFFE7AD76FFE8A86EFFE6C39EFF629CC2FF2EC3
      FAFF3ED3FFFF3AC2FFFF36BAFFFF34B6FFFF40AEFFFF6AB9FFFF92CAFFFF5A8B
      D1FFA3A0AAFF000000000000000000000000E8BB43FFE5AA13FFE6B03EFFE9B2
      3BFFD19C29FFDFD1B3FFE7D5ADFFE1A628FFD9A12AFFE5D7B9FFEEDBB4FFCB91
      16FFE9DDC3FFE9D3A3FFE2A626FFECB339FFE4AA2FFFC8A252FFF6F6F4FFDAAB
      46FFE7AD2EFFD5AE59FFF5F4F1FFCD9D37FFD8B466FFF4F2EDFFD0A038FFE7B1
      3DFFE6AA14FFD2A52EFFC9C9C9FFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B6F42FFFFFFFFFFFFFFFFFFCA97
      77FFB44806FFC36B2FFFDF9F6BFFE1A16AFFDD9C62FFE3A874FFCA6E2CFFDF9F
      68FFDE9C65FFE1A36EFFE3A770FFDC9559FFE9AA73FF677993FF1AA5E8FF41DC
      FFFF41D4FFFF33C3FFFF57C5FFFF84D0FFFF87C7FAFF7EB3ECFF5679A9FFBFBB
      C0FF00000000000000000000000000000000EBC562FFE5AA11FFE7B142FFE9B3
      3FFFDAA22CFFE4D2ABFFE8E0CFFFB5841CFFB17F14FFBFB49AFFC8B895FFA470
      00FFC4BBA6FFC2AF85FFBB850BFFC3911DFFB07E0CFFBFA469FFFBF9F5FFE0AD
      3AFFE7AD2DFFD6B05FFFF5F4F2FFCE9F3AFFD8B469FFF4F2EDFFD2A13CFFE8B1
      41FFE6AA10FFCFA845FFD5D5D5FFF6F6F6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B7041FFFFFFFFFFFFFFFFFFC591
      73FFAE3E00FFC7733CFFEBC7A6FFDBA175FFC9753BFFD58E5CFFDC9C6DFFDA95
      64FFD58C58FFEBC5A5FFDEA57AFFCA773AFFDC9E6FFFD1AD96FF8793A6FF4792
      C5FF4BC1F5FF5FDAFFFF8AE1FFFF76B0E4FF7496C4FFAAB8D1FF949295FFF1EB
      EBFF00000000000000000000000000000000F3DB9EFFE5A910FFE8B243FFE8B2
      43FFE6AE3AFFDFB45CFFFBFBFAFFDBD0BBFFC0AB7DFFC9C5BAFFCDC7B9FFBEA8
      79FFCBC8C1FFCBC3B3FFC7B281FFC8B485FFCAB890FFF4F5F4FFF1D8A1FFE4A9
      2CFFE6AC30FFD5AF5DFFF6F4F2FFD0A13EFFD8B66CFFF4F2EDFFD4A441FFEAB3
      42FFE3A80FFFC7B073FFE1E1E1FFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B7042FFFFFFFFFFFFFFFFFFC18C
      6DFFAA3A00FFB24C0FFFC26D36FFC77741FFD08550FFF0C9A3FFEBBE99FFEFC5
      A0FFD08148FFCD7D44FFD28A55FFC56F32FFBF6223FFD38651FFD68044FFA849
      16FF6F4B48FF5781ABFF8CD0F8FF76B1E5FFB3BCCCFFEBE6E1FF989595FFECE7
      E7FF00000000000000000000000000000000FAF2DBFFE5AD1CFFE8B23DFFE8B4
      4AFFEAB549FFE6AE3CFFE9BE67FFFCEBC7FFF9EDD4FFFCF8F1FFFEFAF2FFF6E9
      CEFFFDFAF4FFFDF7ECFFFFF0D4FFFFF3D9FFFFF3D6FFF6D696FFE9B03CFFECB4
      43FFE9B03CFFD7B264FFF8F7F3FFD4A443FFD8B56EFFF4F2EEFFD6A749FFEAB3
      3DFFDDA513FFC8BFA8FFECECECFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B7041FFFFFFFFFFFFFFFFFFBD88
      69FFA63400FFAC4105FFAE4406FFB54D0EFFE4B17EFFEBBA88FFE6B07DFFE7B0
      7CFFE3A770FFE5AD79FFCA702FFFC46724FFD08145FFE8B583FFC26525FFB74D
      0CFFB43E00FF9B3101FF6D423CFF40669CFF9CB0CDFFE9E6E3FF959494FFEDE8
      E8FF0000000000000000000000000000000000000000E9BC47FFE7AF2BFFEAB6
      55FFEAB54DFFEAB64DFFE9B245FFEAB241FFD29C30FFE0D1B5FFEDDBB8FFCC92
      20FFEADEC6FFDCCAA6FFCB9325FFE1AB40FFDFA93EFFDFA83CFFE0AD49FFE1AE
      4BFFDFAA42FFCDAA65FFEDEDECFFBE933EFFC6A96DFFF9F6F3FFDCAD53FFE9B0
      2AFFD4A632FFD4D4D4FFF6F6F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A7040FFFFFFFFFFFFFFFFFFBC86
      68FFA43000FFAE460AFFBF6121FFC76B2BFFE7B179FFE7B079FFE5AA75FFE5AA
      74FFE7B079FFFADEABFFE4AA73FFE2A56FFFF6D3A1FFF4CF9BFFD78F57FFD993
      5CFFCF814AFFB75214FFAA3100FFB56843FFD7DBDFFFE4E4E4FF959494FFEDE9
      E9FF0000000000000000000000000000000000000000F2DB9DFFE6AA0FFFEAB8
      56FFEAB753FFEBB856FFEBB95BFFEDBB5BFFD5A549FFE1D4BDFFEEDEC0FFDCA5
      3CFFEAD2A4FFF2F4F4FFB79B63FFB4924EFFB69552FFB69452FFB69452FFB694
      52FFB6924DFFA89063FFBFBFC0FFA28754FFE2DBCCFFF6E9D1FFE6B14CFFE6AA
      0FFFCBB375FFE5E5E5FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B7041FFFFFFFFFFFFFFFFFFB983
      65FFAC3E00FFC46829FFCB7333FFCC7433FFD88E50FFF0C38CFFE8B076FFEAB3
      7BFFF4CB92FFF5CD93FFF6D19AFFF7D29BFFF5CE95FFF5CC93FFF4CB92FFECB7
      7EFFE6AB72FFDD9B62FFB04708FFC07144FFE4E4E4FFE4E5E6FF949393FFEEEA
      EAFF0000000000000000000000000000000000000000FDFBF4FFE5AE1AFFE9B2
      38FFECBA5EFFEDBC63FFEDBE6AFFF0C06AFFD7AA56FFE1D6C1FFEDDEC2FFE8B6
      59FFEBBC65FFF8E8CBFFFEFDF9FFF6F3ECFFF7F3EDFFF7F3EDFFF7F3EDFFF7F4
      EDFFF7F4EDFFF4F1ECFFF4F4F4FFF7F6F4FFFCF2E1FFEABE6EFFE9B133FFDDA6
      12FFD3D1C9FFF4F4F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A7040FFFFFFFFFFFFFFFFFFBA85
      67FFBF5A17FFCB7333FFCE7838FFD27F3EFFD58140FFE09B5BFFF2C58FFFF6D3
      A5FFF4D0A3FFF4D0A4FFF4D0A4FFF4D0A4FFF4D0A4FFF4D0A3FFF2C99AFFE4A9
      72FFDC985CFFDD995BFFC16321FFC4794DFFE4E4E4FFE6E7E7FF959494FFEFEB
      EBFF000000000000000000000000000000000000000000000000F3DB9BFFE6A9
      0AFFEBB957FFEEC376FFEFC57BFFF1C67AFFDFB568FFE7DCC7FFE6DCCAFFCEA4
      5AFFE5BA6FFFE0B467FFE5C083FFE7C78FFFE7C68DFFE7C68DFFE7C68DFFE8C8
      8EFFDABA81FFCEBA99FFFCFCFCFFE9CA94FFEFC379FFECB955FFE6A90AFFD1B9
      7AFFEBEBEBFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000996F3FFFFFFFFFFFFEFFFFFFBF8F
      70FFC76622FFCE7737FFD27F3EFFD78645FFDB8D4BFFDC8F4CFFE19E62FFEBBE
      92FFF3D5B5FFF5DABDFFF7DDC2FFF7DDC0FFF5DBBDFFF4D6B6FFF4D5B4FFF2D1
      AFFFDA9A63FFCE7D3DFFC36523FFCE875AFFE6E5E6FFE9EAEAFF937C73FFF299
      77FF00000000000000000000000000000000000000000000000000000000EBBF
      4CFFE7AB18FFF0C57CFFF2CE94FFF2CB8AFFEEC582FFE7D0AAFFF8F8F9FFC3B1
      91FFBCA278FFBFA57CFFBEA377FFBEA275FFBEA275FFBEA276FFBEA276FFBDA1
      74FFB59C70FFDFD8CCFFF9F0E1FFECC485FFF2CA8BFFE7AC1BFFD8AD3BFFE3E3
      E3FFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000986E3EFFFFFFFFFFFDFFFFFFBE8E
      6EFFCA6B27FFD17C3CFFD68443FFDB8D4BFFDF9452FFE39B59FFE59E5BFFE7A1
      5DFFE8A96CFFEBB682FFECBB8CFFEBB887FFE8B07DFFE19F63FFDD985CFFDC98
      5EFFD38242FFCD7635FFC76A27FFCF8A5DFFF3F3F3FFF6F7F8FF936554FFF545
      03FF00000000000000000000000000000000000000000000000000000000FCF8
      EDFFE7B127FFE9B029FFF5D6A8FFF5D7ABFFF6D5A1FFEFCD9AFFF5E6CFFFFEFD
      FBFFF8F5F2FFF8F6F2FFF8F6F2FFF8F6F2FFF8F6F2FFF8F6F2FFF8F6F2FFF8F5
      F1FFFBFAF7FFFEF6EBFFF2D7ADFFF7DAB3FFEAB639FFDDA71FFFE0DCD1FFF7F7
      F7FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000976D3DFFFEFEFEFFFDFFFFFFB47C
      5EFFC56019FFD5803CFFDA8743FFDF8F4BFFE49953FFE9A05BFFEEA862FFF2AE
      67FFF4B169FFF4B067FFF0A960FFEDA45BFFEAA058FFE69A54FFE0924CFFDB88
      43FFD7813DFFD27936FFC5641EFFC7794DFFFAFAFBFFFEFFFFFF936554FFF545
      03FF000000000000000000000000000000000000000000000000000000000000
      0000FBF3DFFFE6B12AFFEAB636FFF9E1BEFFFAE6CDFFF9E0BAFFF6DCB2FFF8E0
      BEFFF9E4C6FFF9E4C4FFF9E4C3FFF9E4C4FFF9E4C4FFF9E4C4FFF9E4C4FFF9E5
      C5FFF8E4C2FFF8E2C3FFFAE6CCFFEEC053FFDDA821FFE3DCC8FFF7F7F7FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000986E3EFFFFFFFFFFFEFFFFFFB08B
      77FFAF683CFFC78D5FFFCB9364FFCF996AFFD3A070FFD7A676FFDBAB7BFFDEB1
      80FFE0B583FFE0B584FFDEB281FFDBAC7CFFD8A877FFD4A272FFD09C6BFFCD95
      66FFC98E60FFC58A5BFFB16E41FFBD896DFFFCFDFDFFFFFFFFFF926554FFF243
      03FF000000000000000000000000000000000000000000000000000000000000
      000000000000FCF8EBFFEABC50FFE9B227FFF6DDA6FFFEF5F0FFFDF5EEFFFCEF
      E0FFFBEDD9FFFBECD8FFFBECD7FFFBEDD8FFFBEDD8FFFCEDD9FFFCEEDDFFFDF3
      E9FFFEF6F3FFF9E7C3FFECBD47FFDDB044FFEAE5D9FFFAFAFAFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000835D3AFFF8F8F8FFFFFFFFFFF6F7
      F8FFF2F4F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F4F4FFF3F3F3FFF3F3
      F3FFF2F3F3FFF2F2F3FFF0F2F2FFF5F7F8FFFFFFFFFFFFFFFFFF825A49FFB939
      03FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2D798FFE6AD1CFFEDC04DFFF7E0A9FFFCF5
      E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8ECFFF8E7
      BEFFEFCA6BFFE3AF29FFE3C78AFFF4F4F4FFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626862FFAFABA7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCCCBFF9B652FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDF9F2FFF1D69CFFE8B848FFE7B6
      34FFEABD42FFEFC863FFF0CD73FFF1CE75FFEFC968FFEAC04DFFE6B63DFFE3B5
      43FFE7CB92FFF4EFE9FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008A8A8AFF888888FF9393
      93FF919191FF909090FF909090FF909090FF909090FF909090FF909090FF9090
      90FF909090FF909090FF909090FF909090FF909090FF909090FF909090FF9090
      90FF909090FF8E8E8EFF918F8FFF959191FF918989FF8E7575FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9ED
      D8FFF1D59DFFE8BE64FFE5B144FFE4B142FFE5BB61FFEACD97FFF2E5D1FFFAFA
      FAFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C7C7FFC2C2C2FFB9B9B9FFB2B2B2FFADADADFFADAAAAFFADA8A8FFAFAC
      ACFFB0B0B0FFB5B5B5FFB2A5A5FFBD8382FFAC7676FF9B8989FF949494FF9D9D
      9DFFB4B4B3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFFF4F4F4FFDCDCDCFFB8B8B8FFA3A3A3FF9E9E9EFF9E9E9EFF9F9F9FFFABAB
      ABFFC6C6C6FFD9CDCDFFD5ACACFFFFF5F3FFFEE8E5FFD39F9EFFB88181FFC5B2
      B2FFCCCCCCFF8A8A8AFFB9B9B9FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989898FFF6F6F6FFEEEE
      EEFFE2E2E2FFCACACAFFA9A9A9FF969696FF919191FF919191FF929292FF9D9D
      9DFFB6B6B6FFC7BCBCFFC39E9EFFEAE1DFFFE9D5D2FFC29291FFA97676FFB5A3
      A3FFBBBBBBFF7F7F7FFFAAAAAAFF4A362DFF78462EFF8C5438FF865231FF7951
      23FF344610FF016A0FFF6A7B6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFEFEF
      EFFFCEC3B8FFD49B6BFFDF6C2DFFD95114FFD95114FFDC5819FFDB8C54FFB194
      77FF8A8A8AFFA37C7CFFEAE4E4FFFBFAF7FFFFFAF7FFFFF5F2FFFDE0DCFFD199
      97FFAB7474FF766363FF919191FF888888FF5C4F48FF00000000000000000000
      000000000000000000000000000000000000E1E1E1FF909090FFDBDBDBFFBEBE
      BEFF9C948BFF9E7350FFA65022FFA23C0FFFA23C0FFFA44213FFA3683FFF846E
      59FF676767FF795C5CFFAEAAAAFFBBBAB8FFBEBAB8FFBEB7B4FFBDA7A4FF9C72
      71FF7F5656FF584A4AFF6C6C6CFF656565FF453B36FF97796CFFB39080FFAD88
      7AFFB97D64FF764E25FF354035FFDEDEDEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDDFF888888FFCBCBCBFFB0B0
      B0FF908981FF926A4AFF9A4A1FFF96380EFF96380EFF983D12FF97603AFF7A66
      52FF5F5F5FFF705555FFA19D9DFFADACAAFFB0ACAAFFB0A9A7FFAF9B98FF906A
      69FF765050FF514444FF646464FF5D5D5DFF403732FF8C7064FFA68576FFA07E
      71FFAB745DFF6D4822FF323C32FFDADADAFF0000000000000000F6F6F6FFDFC5
      A8FFF8CA94FFF2C19AFFECAD8CFFF5D4BEFFF5D4BEFFF9DDC3FFFFF0CFFFFDDE
      B3FFD09C68FFB39C95FFD1D1D1FFEDECE9FFFDF8F5FFFFF5F2FFFFF2EDFFFFEE
      E8FFFDD9D3FFD09490FFA16363FF866868FF616161FF3F3B3AFF67564EFF0000
      000000000000000000000000000000000000956E5CFF7E7E7EFFA8A8A8FF7D6E
      5EFF7B6449FF725B48FF6F5142FF736459FF736459FF75685CFF787161FF7768
      54FF624931FF544946FF626262FF706F6EFF777573FF787372FF787270FF7870
      6DFF776663FF624644FF4C2F2FFF3F3131FF2E2E2EFF1E1C1BFF302825FF3334
      35FF55504DFF9F6952FF2A160BFF606060FF00000000C3463CFFC0433AFFBF3F
      37FFBC3A33FFBB372FFFBA362FFFBA362FFFBA362FFFBA362FFFBA362FFFBA36
      2FFFBA362FFFBA362FFFBA362FFFBA362FFFBA362FFFBA362FFFBA362FFFBA36
      2FFFBA362FFFBA362FFFBA362FFFBA362FFFBA362FFFBA362FFFBA362FFFBA36
      2FFFBA362FFFBA362FFFBA362FFF000000008D6857FFA23A32FF94342DFF9431
      2AFF912D27FF902A24FF902A24FF902A24FF902A24FF902A24FF902A24FF902A
      24FF902A24FF902A24FF902A24FF902A24FF902A24FF902A24FF902A24FF902A
      24FF902A24FF902A24FF902A24FF902A24FF902A24FF902A24FF902A24FF902A
      24FF902A24FF902A24FF9B2D27FF5B5B5BFF00000000989898FFEDD9C2FFF5B9
      84FFFDE3BBFFFFF2D2FFFFF7E4FFFFFCF4FFFFFCF5FFFFF7E5FFFFF2D4FFFDE5
      BDFFFAD1A3FFECB077FFBEBEBEFFDAD9D7FFF5F0EDFFFFF5F2FFFFF2EDFFFFEE
      E8FFFFE9E3FFFFE6DEFFFDD1CAFFCF8D8AFFB26F6EFFB19393FF949494FF4B4C
      4CFF736A68FF000000000000000000000000A86140FF93724AFFE18E14FFE790
      0FFFE38F10FFE28E10FFE28F11FFE28F12FFE28F12FFE28F11FFE28E10FFE28E
      10FFE28D0FFFE18C0EFFDF8C10FFE18E12FFE28E13FFE28F13FFE28E13FFE28E
      13FFE28E13FFE28E13FFE28D12FFE08B0FFFDF890EFFDF8B10FFE08D11FFCD7D
      06FF653F1AFF74574BFF613A26FF2A282FFFC65043FFD77B70FFFCD6CEFFFCD4
      CCFFFCD3CAFFFBD1C6FFFBCEC4FFFBCEC3FFFBCDC0FFFBCCBFFFFBCBBCFFFBCA
      BBFFFBCAB9FFFBC9B8FFFBC8B6FFFBC6B4FFFBC5B3FFFBC5B1FFFBC4B0FFFBC3
      AEFFFBC2ADFFFBC0AAFFFBC0A8FFFBBFA6FFFBBDA5FFFBBCA2FFFBBCA2FFFBBC
      A2FFFBBCA2FFFBBCA2FFCF6256FFBA362FFFD27727FFCF7325FFCD6F23FFCB6C
      21FFC8681FFFC5641CFFC2611AFFC05D18FFBD5916FFBB5514FFB85113FFB64E
      11FFB44A0EFFB1460CFFAF430AFFAC3F08FFAA3B06FFA73704FFA53402FFA331
      00FFA33100FFA33100FFA33100FFA33100FFA33100FFA33100FFA33100FFA331
      00FFA33100FFA33100FFA04C42FFAC322BFF000000009C9894FFEA945CFFE17A
      4BFFFDE1B9FFFFF1D0FFFFF6E0FFFFFAEDFFFFFAEEFFFFF6E1FFFFF1D1FFFDE3
      BBFFFAD0A1FFF7BB85FFD9AE85FFC9C0BEFFEADEDBFFFBE5E1FFDAAAA8FFBC79
      79FFDAA7A3FFF4CDC7FFFAD2CAFFFFD5CCFFFFD2C8FFD99792FFB16C6AFFB495
      95FF6E594EFFC1907BFF824B33FF00000000BD6C2CFFE9A640FFF8CE91FFF9D0
      95FFF9D195FFF9D297FFFAD399FFFAD59BFFFBD59EFFFBD6A0FFFBD7A1FFFCD8
      A3FFFCD9A6FFFCDBA9FFFCDCADFFFDDDB0FFFDDFB3FFFEE0B6FFFEE2B9FFFEE3
      BCFFFFE5BFFFFFE6C1FFFFE7C4FFFFE9C7FFFFEAC9FFFFEBCBFFFFEDD0FFFFEC
      CBFFE6AB53FF7C4A1FFF4B2B1DFF20202CFFC95446FFFDDCD3FFFFFFFFFFFFFF
      FFFFFFFFFCFFFFF7EDFFFFF7ECFFFFF7EAFFFFF7EAFFFFF7E9FFFFF7E9FFFFF7
      E8FFFFF7E7FFFFF7E7FFFFF7E6FFFFF7E5FFFFF7E5FFFFF7E4FFFFF7E3FFFFF6
      E3FFFFF6E1FFFFF6E0FFFFF6E0FFFFF6DFFFFFF6DEFFFFF4DDFFFFF3DBFFFFF3
      DBFFFFE9C9FFFFE9C9FFFBBCA2FFBA362FFFD37828FFF5F2F2FFF3F0F0FFF2EE
      EEFFF0ECECFFEFEAEBFFEDE8E9FFECE6E7FFEBE4E5FFE9E2E3FFE8E0E1FFE6DE
      DFFFE5DCDDFFE3DADBFFE2D8DAFFE0D6D8FFDFD4D6FFDDD3D4FFDCD1D2FFDACF
      D0FFDACECFFFD9CDCFFFD9CDCEFFD9CDCEFFD9CCCEFFD9CCCDFFD9CCCDFFD8CB
      CDFFD4C7C8FFA33100FFC2917DFFAC322BFF00000000C3A382FFCF3C08FFEA96
      66FFFCDBB0FFFEEBC6FFFFF3D5FFFFF5DDFFFFF5DEFFEFB38DFFF3C097FFFAD4
      ABFFE4804FFFDC6631FFE68445FFC4B9B2FFE0D6D4FFD1A3A2FFD7AAA9FFF9DD
      D9FFD49E9CFFB77473FFD19895FFE8BAB2FFEBBCB3FFFDCABFFFFFCABFFFD793
      8CFF9F5757FFA66A5DFF633B2CFF1A1B24FFEC8C0BFFF5C47CFFE6D4B8FFE4CE
      ADFFE5D0B0FFE6D1B2FFE6D2B4FFE6D4B7FFE7D5B9FFE7D5BBFFE7D6BDFFE8D7
      BFFFE8D8C2FFE9D9C4FFE9DBC7FFE9DCCBFFEADECFFFEADFD1FFEAE1D5FFEBE3
      D7FFEBE4DBFFECE5DEFFECE7E1FFECE8E4FFECEAE6FFEDEBE9FFEDEBEAFFF0F5
      FCFFFDE4C0FFCE7907FF331F17FF14151CFFCA584BFFFFDED5FFFFFFFFFFFFFF
      FFFFEAC3B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFE9C9FFFBBCA2FFBA362FFFD47A29FFFFFFFFFFFFFFFFFFFEFD
      FDFFFDFCFCFFFCFBFBFFFCFAFAFFFBF8F8FFFAF7F7FFF9F6F6FFF9F5F5FFF8F3
      F3FFF7F2F2FFF6F1F1FFF6F0F0FFF5EEEEFFF4EDEDFFF3ECECFFF2EAEAFFF2E9
      E9FFF1E8E8FFF0E7E7FFEFE6E6FFEFE4E4FFEEE3E3FFEDE2E2FFECE0E0FFECDF
      DFFFD8CBCDFFA33100FFC2917DFFAC322BFF00000000DD8E5AFFD2440CFFE06D
      33FFF1AE7BFFFCDEB4FFFEE9C3FFFFEFCBFFFCE1BAFFE16C2AFFDA5A1CFFEC9F
      6CFFF2AD7DFFCC3400FFD8541BFFD5B190FFD7D1CEFFC28E8DFFFEEFEEFFFFF5
      F1FFFFEAE4FFFED2CAFFD3948FFFB56E6EFFE8B7AEFFE4B1A7FFF2BCB1FFFFD1
      C5FFFFC9BEFFD6908AFF8E4D49FF151620FFE58B0EFFE3B777FFB9BDC3FFCCCC
      CCFFCBCACAFFD6D0CAFFDCD2C9FFD5CFCAFFCBCBCBFFCACACBFFCBCBCBFFCBCC
      CCFFCBCCCCFFCDCCCCFFCDCCCCFFCDCCCCFFCDCCCDFFCDCDCDFFCDCDCDFFCDCD
      CDFFCECDCDFFCECDCDFFCECECEFFCECECEFFCDCDCEFFCECECEFFD0CFD0FFBCC0
      C7FFE9D0ABFFCE820EFF472725FF101118FFCC5D4EFFFFDFD7FFFFFFFFFFFFFF
      FFFFE6B7ABFF07B03AFF00AA26FF00A624FF00A421FF00A01FFF009D1DFF0098
      18FF009415FF008E12FF008A0EFF00850BFF008006FF007A03FF007400FF006F
      00FF006900FF006400FF005D00FF005700FF005300FF005200FF005200FF428C
      41FFFFFFFFFFFFE9C9FFFBBCA2FFBA362FFFD57B2AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFDFDFFFDFCFCFFFCFBFBFFFCFAFAFFFBF8F8FFFAF7F7FFF9F6F6FFF9F5
      F5FFF8F3F3FFF7F2F2FFF6F1F1FFF6EFEFFFF5EEEEFFF4EDEDFFF3ECECFFF2EA
      EAFFF2E9E9FFF1E8E8FFF0E7E7FFEFE5E5FFEFE4E4FFEEE3E3FFEDE2E2FFECE0
      E0FFD9CCCDFFA33100FFC2917DFFAC322BFF00000000E8894DFFDF6726FFE77F
      38FFF0984DFFFDDEB2FFFEEBC6FFFFEDC8FFFFDCABFFFFA851FFF69746FFDD7E
      3DFFED9964FFD34812FFE47537FFC7855EFFAE7F7EFFBB817FFFFAE8E7FFFFF5
      F2FFFFEBE5FFFFE0D7FFFFD5CAFFB87170FFE8B7AEFFE4B1A7FFE0A99FFFFFD1
      C5FFFFD1C5FFF0B2A8FF855A57FF00000000E48A0EFFDFB677FFD2D6DEFFFEFD
      FDFFFFFBF8FFBEDBFCFF97CAFFFFC6E1FDFFFFFDF9FFFAFAFAFFF9FBFBFFFFFE
      FBFFFFFFFBFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFDFFFFFFFDFFFFFFFDFFFFFF
      FEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8DD
      E4FFE5CBA4FFCF8410FF432D2CFF0B0F1DFFCE6252FFFFE1DBFFFFFFFFFFFFFF
      FFFFE6B4A8FF00B32DFF00B22BFF00AF29FF00AD27FF00A725FF00A421FF009F
      1EFF009B1BFF009616FF009213FF008B0FFF00850BFF008006FF007A03FF0073
      00FF006E00FF006800FF006200FF005C00FF005600FF005200FF005200FF2F81
      2FFFFFFFFFFFFFE9C9FFFBBCA2FFBA362FFFD67D2BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFDFDFFFDFCFCFFFCFBFBFFFCFAFAFFFBF8F8FFFAF7F7FFF9F6
      F6FF0660D5FF0660D5FF0660D5FF0660D5FF0660D5FF0660D5FFF4EDEDFFF3EC
      ECFFF2EAEAFFF2E9E9FFF1E8E8FFF0E7E7FFEFE5E5FFEFE4E4FFEEE3E3FFEDE2
      E2FFD9CCCDFFA33100FFC2917DFFAC322BFF00000000E88A4CFFE9833BFFF5A3
      4BFFFECB76FFFFEDC4FFFFF1D1FFFFF2D2FFFFD8A3FFFFB05EFFFFAA54FFFFA8
      51FFF9A256FFD64D15FFD03F09FFE8985AFFD4B9B0FFF3D0C8FFEDBDB8FFD9A8
      A6FFF0C8C4FFFFE0D7FFFFD5CBFFB46E6EFFE7B7AEFFEDBAAEFFF1B7ADFFE7AC
      A4FFD4AEABFFCDC3C3FF0000000000000000E48B0EFFE0B87BFFD0D4DAFFFEFB
      F7FF89C2F9FF19A1FFFF1F9AFFFF278EFFFF9CC9F9FFFEFBF4FFF8F8F5FFE1EA
      F7FF7DBDFCFF69B6FDFF6CB8FDFF6CB8FDFF6CB8FDFF6CB8FDFF6CB8FDFF6CB8
      FDFF6CB8FDFF6DB9FDFF6DB9FDFF69B7FDFF8CC4FDFFF2F5FAFFFFFFFFFFD6DA
      E2FFE5CBA3FFCC8512FF656565FF0F1520FFCF6754FFFFE4DDFFFFFFFFFFFFFF
      FFFFE5B1A5FF00C337FF00BA32FF00B72FFF00B32DFF00B02AFF00AB27FF00A6
      24FF00A120FF009D1DFF009717FF009213FF008B0FFF00850BFF008006FF007A
      01FF007200FF006D00FF006700FF005F00FF005900FF005400FF005200FF2F81
      2FFFFFFFFFFFFFEACAFFFBBCA2FFBA362FFFD77E2BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFCFFFCFBFBFFFCFAFAFFFBF8F8FFFAF7
      F7FF0E78DEFF9FE8FCFF73DAFCFF56D1FBFF26AEF6FF0660D5FFF5EEEEFFF4ED
      EDFFF3ECECFFF2EAEAFFF2E9E9FFF1E8E8FFF0E7E7FFEFE5E5FFEFE4E4FFEEE3
      E3FFD9CCCEFFA33100FFC2917DFFAC322BFF00000000EE9B59FFF29A4AFFFFCF
      7AFFFFEDC4FFFFF3D6FFFFE8C0FFFFCD88FFFFCC88FFFFC177FFFFB666FFFFAB
      55FFFFA851FFE97C37FFCF3A05FFE19963FFC69C99FFA2AD87FFEBD2C4FFFFE6
      DEFFEBBFBBFFD7A19EFFEAB2AAFFBC7A79FFCEA398FFCC9F93FFD7AF9FFF0000
      000000000000000000000000000000000000E48A0DFFE1B97DFFD6D7DAFFE3E9
      F9FF24B1FFFF17CCFFFF28B8FFFF2BA2FFFF3E9EFFFFEAF0F6FFFFFAF5FF64B8
      FDFF0AB2FFFF17BBFFFF17BAFFFF17BAFFFF17BAFFFF17BAFFFF17BAFFFF17BA
      FFFF17BAFFFF17BAFFFF17BAFFFF17BBFFFF08ACFFFF89C5FDFFFFFFFFFFD6DA
      E2FFE5CAA1FFCD8612FF656666FF121F32FFD26A57FFFFE5DFFFFFFFFFFFFFFF
      FFFFE4ADA1FF00E146FF00C338FF00BF36FF00BB33FF00B72FFF00B22BFF00AE
      28FF00A825FF00A221FF009D1DFF009717FF009213FF008B0EFF00840AFF007F
      05FF007700FF007100FF006A00FF006500FF005D00FF005700FF005300FF2F81
      2EFFFFFFFFFFFFECCCFFFBBCA4FFBA362FFFD8802CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF1484E1FFCBF3FEFF9FE8FCFF73DAFCFF56D1FBFF0660D5FFF5EFEFFFF5EE
      EEFFF4EDEDFFF3ECECFFF2EAEAFFF2E9E9FFF1E8E8FFF0E6E6FFEFE5E5FFEFE4
      E4FFD9CDCEFFA33100FFC2917FFFAC322BFF00000000F5BB7DFFF7B679FFFFF2
      D1FFFFF3D7FFFFF5DDFFFFE0A7FFFFDFA4FFFFDB9DFFFFD18EFFFFC47BFFFFB4
      64FFFFA952FFFA9D4AFFD14009FFDF9D6FFF459248FF00AA1AFF00A91EFF59AE
      5AFFD9D2BBFFFFE7E1FFF4D0CAFFD4A09BFFB17058FFA9683FFFA46132FFAB5E
      2AFFBD6730FF000000000000000000000000E48A0CFFE1BA7FFFD6D7DAFFE1E6
      F9FF1CBBFFFF0AE8FFFF1CCDFFFF1EBCFFFF38A4FFFFE9EEF6FFFFFAF5FF5BB6
      FDFF01C7FFFF0DD4FFFF0DD2FFFF0DD2FFFF0DD2FFFF0DD2FFFF0DD2FFFF0DD2
      FFFF0DD2FFFF0DD2FFFF0DD2FFFF0CD4FFFF00BEFFFF82C2FEFFFFFFFFFFD6DA
      E2FFE5C8A0FFCD8611FF666868FF102C53FFD46F5BFFFFE7E1FFFFFFFFFFFFFF
      FFFFE4AB9FFF00F153FF00E049FF00C83BFF00C339FF00BD36FF00B932FF00B4
      2EFF00AF29FF00A826FF00A221FF009D1DFF009717FF008F13FF008A0EFF0083
      09FF007C04FF007400FF006F00FF006800FF006000FF005B00FF005500FF2E80
      2DFFFFFFFFFFFFEDCEFFFBBDA5FFBA362FFFD9812DFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFEFEFFFEFDFDFFFDFCFCFFFCFBFBFFFCF9
      F9FF1484E1FFFEFEFFFFCBF3FEFF9FE8FCFF73DAFCFF0660D5FFF6F1F1FFF5EF
      EFFFF5EEEEFFF4EDEDFFF3ECECFFF2EAEAFFF2E9E9FFF1E8E8FFF0E6E6FFEFE5
      E5FFD9CDCEFFA33100FFC2927FFFAC322BFF00000000D5B38DFFFDB566FFFFED
      CBFFFFF5DDFFFFF7E3FFFFF4D7FFFFF2C3FFFFEBB6FFFFE0A7FFFFCF8BFFFFBE
      71FFFFAD58FFFFA851FFE16421FFD09F8AFF00AE2BFF00B522FF00B11CFF00AC
      18FF00A612FF4AAD51FFB5CBA4FFFFEBE6FFFEE3DEFFD4A19FFFB57668FFA05D
      38FF924313FFB9AFA8FFC4C6C8FF00000000E3890CFFE1BA81FFD1D4DBFFFDFA
      F7FF7ABFFBFF00CAFFFF02D5FFFF0FAFFFFF8EC4FBFFFFFAF5FFFBFAF6FFD8E6
      F8FF66BCFDFF52BCFDFF55BCFDFF56BDFEFF56BDFEFF56BDFEFF56BDFEFF56BD
      FEFF56BDFEFF56BDFEFF56BDFEFF52BCFEFF75C1FEFFEDF3FCFFFFFFFFFFD7DB
      E2FFE5C89DFFCB830FFF626364FF0E2E59FFD5735EFFFFE8E4FFFFFFFFFFFFFF
      FFFFE3A89CFF00FA5CFF00F758FF00DD49FF00CB3FFF00C63BFF00C037FF00BB
      33FF00B62EFF00AF29FF00A825FF00A220FF009C1CFF009516FF008E10FF0088
      0CFF008107FF007A01FF007200FF006B00FF006500FF005E00FF005700FF2E80
      2DFFFFFFFFFFFFEDCFFFFBBFA6FFBA362FFFDA822EFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFEFEFFFEFDFDFFFDFCFCFFFCFB
      FBFF1484E1FFFEFEFFFFFEFEFFFFCBF3FEFF9FE8FCFF0660D5FFF7F2F2FFF6F1
      F1FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFF2EAEAFFF2E9E9FFF1E8E8FFF0E6
      E6FFD9CDCFFFA33100FFC29480FFAC322BFF000000008F8F8AFFF9B371FFFFD3
      97FFFFF0D2FFFFF8E8FFFFFAEFFFFFFCE8FFFFF9CEFFFFE9B5FFFFD696FFFFC3
      7AFFFFB15EFFFBA04CFFE78E50FFB4A591FF00C02EFF00BE28FF00BA23FF00B4
      1EFF00AD19FF00A713FF00A00FFF2CA73AFF97C78FFFFFEEEBFFFFEFEBFFDDB2
      B1FFAD665BFFAF9590FFA7A9AAFF103466FFDE860AFFE2BC83FFD0D4DBFFFAFA
      F8FFF6F2F3FFA8CDF9FF7BC1FBFFB1D3F9FFFCF8F5FFF8F7F6FFF5F5F6FFFEFA
      F6FFFFFBF7FFFDF6F7FFFEF6F7FFFEF7F8FFFEF7F8FFFFF8F8FFFFF8F9FFFFF8
      F9FFFFF8F9FFFFF9FAFFFFF9FAFFFFFAFBFFFFFFFCFFFFFFFCFFFFFFFFFFD7DB
      E2FFE5C79BFFCA820CFF545555FF0C284EFFD77762FFFFE9E5FFFFFFFFFFFFFF
      FFFFE1A597FF00FF66FF00FF62FF00FB5DFF00E650FF00CD40FF00C83CFF00C2
      38FF00BB33FF00B62EFF00AF29FF00A725FF00A01FFF009A1BFF009314FF008B
      0FFF00840AFF007D05FF007600FF006F00FF006800FF006000FF005B00FF2E81
      2DFFFFFFFFFFFFEFD2FFFBBFA7FFBA362FFFDA842FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFDFDFFFDFC
      FCFF1484E1FF1484E1FF1484E1FF1484E1FF0E78DEFF0660D5FFF8F3F3FFF7F2
      F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFF2EAEAFFF2E9E9FFF1E8
      E8FFDACED0FFA33100FFC29481FFAC322BFF0000000000000000F6EAD6FFFECE
      90FFFFE2A8FFFFF5CBFFFFFDEBFFFFFEF3FFFFFCD3FFFFEBB6FFFFD899FFFFC5
      7DFFFFB260FFF89643FFE4BAA1FF89AD7EFF00CC39FF00C730FF00C129FF00BB
      24FF00B51EFF00AE19FF00A713FF00A00FFF009809FF0E9A1FFF84BF82FFF1EE
      E4FFFFFDFBFFE7C6C5FFB18788FF0E2F5DFFD8860DFFE2BD85FFD1D5DBFFF7F7
      F8FFF8F6F4FFFFFFF4FFFFFFF4FFFFFFF4FFF9F8F6FFF5F6F6FFF6F6F6FFF7F7
      F7FFF8F8F7FFFBF9F7FFFCFAF8FFFCFAF8FFFCFAF8FFFDFBF9FFFDFBF9FFFDFB
      F9FFFEFCFAFFFEFCFAFFFFFDFBFFFFFEFCFFFDFCFCFFFDFDFDFFFFFFFFFFD7DB
      E2FFE4C699FFCE8510FF594444FF0B2447FFDB7C66FFFFEAE5FFFFFFFFFFFFFF
      FFFFE0A294FF00FF6EFF00FF6AFF00FF66FF00FD60FF00EF55FF00D243FF00C8
      3CFF00C238FF00BA33FF00B32DFF00AE28FF00A522FF009E1EFF009717FF008F
      12FF00880DFF008107FF007A01FF007200FF006B00FF006500FF005D00FF2E82
      2EFFFFFFFFFFFFEFD4FFFBC0AAFFBA362FFFDB8530FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFD
      FDFFFDFCFCFFFCFBFBFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8F4F4FFF8F3
      F3FFF7F2F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFF2EAEAFFF2E9
      E9FFDCD1D2FFA33100FFC29483FFAC322BFF0000000000000000FFFFFDFFFADE
      B8FFFFE6B3FFFFEFBCFFFFFAD3FFFFFADEFFFFF5C6FFFFE6AFFFFFD594FFFFC6
      80FFFBAD62FFDC9F7EFFF4D1C7FF5AB56CFF00D744FF00CF37FF00C830FF00C2
      2AFF00BC24FF00B51EFF00AD19FF00A613FF009E0FFF009609FF008D03FF008C
      0DFF76BA76FFF4F5EDFFE7C7C6FF0D2E5CFFD9860DFFE3BE87FFD0D5DBFFFBFB
      F9FFF3F4F6FF9BC8FAFF72B6FCFFA5CFFAFFF9F8F6FFF8F7F6FFF7F7F7FFFFFB
      F7FFFFFAF7FFF9F6F8FFF9F7F8FFF9F7F8FFFAF8F9FFFAF8F9FFFAF8F9FFFBF9
      FAFFFBF9FAFFFCFAFBFFFDFBFCFFFDFBFCFFFFFFFCFFFFFFFDFFFFFFFFFFD7DB
      E2FFE4C597FFCF8813FF746463FF0A2346FFDC8169FFFFECE6FFFFFFFFFFFFFF
      FFFFE09F92FF00FF77FF00FF72FF00FF6EFF00FF68FF00FF62FF00F85BFF00E4
      4DFF00D241FF00C037FF00B930FF00B12BFF00AA26FF00A220FF009B1CFF0094
      15FF008C0FFF00840AFF007D04FF007400FF006E00FF006700FF005F00FF2E83
      2EFFFFFFFFFFFFF1D6FFFBC2ABFFBA362FFFDC8730FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
      FEFFFEFDFDFFFDFCFCFFFCFBFBFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8F4
      F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFF2EA
      EAFFDED3D4FFA33100FFC29684FFAC322BFF000000000000000000000000FEFD
      FAFFFCF0D5FFECCFA1FFFBDAABFFFFDCA1FFFFE8C1FFFCD096FFFABA79FFE8B1
      76FFCEA591FFEBBCB7FFF8C6BFFF24D061FF00E04DFF00D942FF00D037FF00C9
      30FF00C229FF00BC23FF00B31EFF00AB19FF00A313FF009A0EFF009307FF008A
      01FF008200FF56AC59FFF2DBDBFF0D2E5CFFDE8609FFE3BF8AFFD2D6DBFFFDFD
      FAFF72BBFCFF13A3FFFF239EFFFF1F8CFFFF87C0FBFFFFFCF6FFFCFBF6FFD1E3
      F9FF5CB1FDFF4EAEFEFF51AEFEFF51AFFEFF51AFFEFF51AFFEFF51AFFEFF51AF
      FEFF51AFFEFF51AFFFFF51AFFFFF4DAEFFFF6BB7FFFFE7F2FDFFFFFFFFFFD7DB
      E3FFE4C495FFC48307FF796E6EFF0A2346FFDE856BFFFFEDE7FFFFFFFFFFFFFF
      FFFFE09E8EFF00FF81FF00FF7BFF00FF74FF00FF6FFF00FF69FF00FF60FF00F7
      59FF00EF52FF00E74BFF00D63FFF00C936FF00BD2DFF00B326FF00A51EFF0098
      17FF008E12FF00880CFF008006FF007800FF007000FF006900FF006200FF2E83
      2EFFFFFFFFFFFFF2D7FFFBC2ADFFBA362FFFDD8831FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFFFEFDFDFFFDFCFCFFFCFAFAFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5
      F5FFF8F4F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EB
      EBFFDFD5D6FFA33100FFC29686FFAC322BFF0000000000000000000000000000
      000000000000CBC9C2FFE9DCC2FFEDC4A1FFD7AC87FFDAB591FFD5C2ABFFBABA
      BAFFD0A9A9FFFECFC6FFE8B6B1FF00EE59FF00E955FF00E44FFF00D93EFF00D1
      36FF00C92FFF00C128FF00BA23FF00B11DFF00A918FF00A011FF00970BFF008F
      05FF008500FF67B76CFFE3BFBFFF0D3161FFE3890AFFE4C08BFFD8D9DCFFE1E9
      FCFF1FB3FFFF18CEFFFF27B8FFFF2CA5FFFF3A9DFFFFEAF0F8FFFFFCF6FF58B3
      FDFF0CB7FFFF1BBEFFFF1BBDFFFF1BBDFFFF1BBDFFFF1BBDFFFF1BBDFFFF1BBD
      FFFF1BBDFFFF1BBDFFFF1BBDFFFF1BBEFFFF08AFFFFF7DC1FFFFFFFFFFFFD7DB
      E2FFE4C293FFC58309FF726060FF0A254AFFDF8A6FFFFFEEE7FFFFFFFFFFFFFF
      FFFFDF9A8AFF15FF8CFF07FF85FF00FF7DFF00FF74FF00FF6FFF00FF67FF00FC
      5FFF00F457FF00EC4FFF00E446FF00DB3DFF00D236FF00C92BFF00BF24FF00B6
      1BFF00A712FF00950CFF008507FF007B03FF007200FF006B00FF006400FF2D84
      2EFFFFFFFFFFFFF3DBFFFBC3AFFFBA362FFFDE8A32FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0660D5FF0660D5FF0660D5FF0660D5FF0660D5FF0660D5FFFBF8F8FFFAF7
      F7FFF9F5F5FFF8F4F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5EFEFFFF4EEEEFFF4ED
      EDFFE1D7D8FFA33100FFC29787FFAC322BFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2CA
      CAFFDAB0AEFFFFD7CDFFB4BD9EFF00F562FF00F15CFF00EB58FF00E44FFF00D9
      3DFF00D034FF00C82DFF00BF27FF00B622FF00AD1BFF00A415FF009C0FFF0093
      08FF008A01FF7AC27FFFDDC4C4FF0D3162FFE48909FFE4C08DFFD7D8DCFFE8EB
      FBFF22B8FFFF07E6FFFF1AD1FFFF1ABCFFFF3EA5FFFFF0F2F7FFFFFDF7FF6BBA
      FDFF05B9FFFF0EC7FFFF0FC6FFFF0FC6FFFF0FC6FFFF0FC6FFFF0FC6FFFF0FC6
      FFFF0FC6FFFF0FC5FFFF0FC5FFFF0DC7FFFF05B2FFFF92C9FFFFFFFFFFFFD7DB
      E2FFE3C291FFC7840AFF6F6262FF0A254BFFE18E72FFFFEFE8FFFFFFFFFFFFFF
      FFFFDE9688FF2DFF9AFF2AFF98FF006200FF00FF7CFF00FF73FF00FF6DFF00FF
      65FF00F95CFF00F153FF00E74BFF00DE41FF00D539FF00CC2FFF00C326FF00B9
      1EFF00B014FF00A60BFF009D01FF008A00FF007600FF006D00FF006600FF2D84
      2EFFFFFFFFFFFFF4DDFFFBC4B0FFBA362FFFDF8B33FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E78DEFF9FE8FCFF73DAFCFF56D1FBFF26AEF6FF0660D5FFFBF9F9FFFBF8
      F8FFFAF7F7FFF9F5F5FFF8F4F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5EFEFFFF4EE
      EEFFE3D9DAFFA33100FFC29788FFAC322BFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8C7
      C7FFE7BFBCFFFFD7CDFF7AC189FF00FD6AFF00F964FF00F35FFF00ED58FF00E5
      50FF00DA41FF00CC31FF00C42CFF00BB25FF00B21FFF00A919FF00A012FF0096
      0BFF008E05FFAEDCB1FFCBA7A7FF0D3366FFE58A0AFFE4C290FFD1D6DDFFFFFE
      FAFF94C9FBFF0BBFFFFF03C9FFFF1BACFFFFA6CFFAFFFFFDF7FFFBFAF8FFE9EF
      F8FF89C6FCFF73C0FDFF76C1FDFF76C2FDFF76C2FDFF76C2FDFF77C2FEFF77C2
      FEFF77C2FEFF77C3FEFF77C3FEFF74C1FFFF9ACDFFFFF8FAFEFFFFFFFFFFD8DC
      E2FFE3C18EFFCA860DFF665454FF0A274EFFE49376FFFFF1E9FFFFFFFFFFFFFF
      FFFFDE9483FF45FFA6FF6AFFB9FFFFFFFFFF006200FF00FF7AFF00FF71FF00FF
      69FF00FD5FFF00F456FF00EA4EFF00E144FF00D73BFF00CE32FF00C529FF00BB
      20FF00B216FF00A80DFF009F04FF009600FF008A00FF007200FF006700FF2D85
      2EFFFFFFFFFFFFF6DEFFFBC5B1FFBA362FFFE08D34FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF1484E1FFCBF3FEFF9FE8FCFF73DAFCFF56D1FBFF0660D5FFFCFAFAFFFBF9
      F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8F4F4FFF7F3F3FFF7F1F1FFF6F0F0FFF5EF
      EFFFE4DCDDFFA33100FFC29889FFAC322BFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9BF
      BFFFF4C9C4FFFFD0C6FF43DD81FF00FF71FF00FF6CFF00FA65FF00F35FFF00EB
      58FF00E450FF00DC47FF00CF38FF00BF28FF00B623FF00AD1CFF00A315FF0099
      0FFF009007FFC1E5C1FFC9AEAFFF0D3468FFE58A0BFFE4C394FFD5D9E0FFFFFF
      FFFFFFFEFBFFCEE0FEFFA7D1FFFFD5E6FEFFFFFFFDFFFEFEFEFFFDFDFEFFFFFF
      FEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDF
      E7FFE2BF8CFFCC860FFF655758FF0A2850FFE5977AFFFFF2EAFFFFFFFFFFFFFF
      FFFFDD9281FF5CFFB2FF78FFC0FFFFFFFFFFFFFFFFFF006200FF00FF74FF00FF
      6BFF00FF64FF00F859FF00EE50FF00E546FF00DB3DFF00D136FF00C82BFF00BD
      22FF00B418FF00AA0FFF00A006FF009700FF008D00FF008300FF006D00FF2D85
      2EFFFFFFFFFFFFF7E0FFFBC5B2FFBA362FFFE18E35FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1484E1FFFEFEFFFFCBF3FEFF9FE8FCFF73DAFCFF0660D5FFFDFBFBFFFCFA
      FAFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8F4F4FFF7F3F3FFF7F1F1FFF6F0
      F0FFE6DEDFFFA33100FFC2988AFFAC322BFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBB8
      B8FFFFD3CAFFF1BFB8FF2AF384FF00FF79FF00FF73FF00FF6CFF00F964FF00F1
      5DFF00E955FF00E14DFF00D945FF00CD3AFF00BC27FF00B01EFF00A718FF009D
      11FF00930AFFFFFFFFFFA88686FF063C84FFE58A0BFFE6C699FFBDC3CAFFD8D9
      DBFFD6D7D8FFE0DCD8FFE6DED8FFDFDBD8FFD7D8D9FFD7D8D9FFD7D8D9FFD8D8
      DAFFD7D8DAFFD7D8DAFFD8D9DBFFD8D9DBFFD9DADCFFDADBDDFFDADBDDFFDADB
      DDFFDADCDDFFDADBDEFFDADBDEFFDBDCDFFFDBDCDEFFDBDCDFFFDDDFE1FFC1C7
      D0FFE3C08DFFD08812FF544343FF052E65FFE79C7DFFFFF3EAFFFFFFFFFFFFFF
      FFFFDB8E7CFF6FFFBBFF85FFC8FFFFFFFFFFFFFFFFFFFFFFFFFF21FF8CFF00FF
      6FFF00FF66FF00F95CFF00EF53FF00E649FF00DD40FF00D337FF00C92DFF00BF
      24FF00B61BFF00AD10FF00A107FF009800FF008E00FF008400FF007D00FF2D88
      2BFFFFFFFFFFFFF8E3FFFBC6B4FFBA362FFFE28F35FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1484E1FFFEFEFFFFFEFEFFFFCBF3FEFF9FE8FCFF0660D5FFFEFDFDFFFDFB
      FBFFFCFAFAFFFBF9F9FFFBF8F8FFFAF6F6FFF9F5F5FFF8F4F4FFF7F3F3FFF7F1
      F1FFE7E0E1FFA33100FFC2998BFFAC322BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D3D3FFE0BF
      BFFFFFD6CBFFE6B3AEFF1FFF8EFF0BFF83FF00FF79FF00FF71FF00FE6AFF00F5
      62FF00EE5AFF00E551FF00DC48FF00D340FF00C937FF00B524FF00A91AFF00A0
      13FF009D1BFFFEF1F1FF846C6CFF064AA3FFE5880BFFF7D7A7FFE1DCD5FFDED6
      CCFFDFD7CCFFDED6CBFFDED5C9FFDED4C7FFDED3C6FFDED3C4FFDED2C2FFDED1
      C0FFDED0BEFFDDD0BDFFDDCFBCFFDDCFBBFFDCCEBAFFDCCEBAFFDCCEB9FFDCCD
      B8FFDCCDB6FFDBCCB5FFDBCBB4FFDACBB3FFDACAB3FFDBC8ACFFDBC9AEFFDED2
      C1FFF5CE94FFD08412FF423636FF05397DFFE99F81FFFFF4ECFFFFFFFFFFFFFF
      FFFFDA8C79FF7FFFC4FF8DFFCCFFFFFFFFFFFFFFFFFFFFFFFFFF03FF83FF00FF
      70FF00FF67FF00FB5DFF00F154FF00E74BFF00DE41FF00D438FF00CA2EFF00C0
      25FF00B71BFF00AD10FF00A207FF009A00FF008E00FF008500FF007F00FF2B97
      25FFFFFFFFFFFFF9E5FFFBC8B6FFBA362FFFE39136FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1484E1FF1484E1FF1484E1FF1484E1FF0E78DEFF0660D5FFFEFEFEFFFEFD
      FDFFFDFBFBFFFCFAFAFFFBF9F9FFFBF8F8FFFAF6F6FFF9F5F5FFF8F4F4FFF7F3
      F3FFE9E2E3FFA33100FFC29B8DFFAC322BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7C9C9FFEDC8
      C5FFFFD6CBFFB6BFA4FF3AFF9CFF21FF8EFF08FF82FF00FF76FF00FF6EFF00FA
      65FF00F15DFF00E855FF00DF4CFF00D643FF00CD3AFF00C430FF00AD1DFF00A1
      14FF34B44CFFF5E0DFFF8B7A7AFF064CA8FFE58910FFFEDEAFFFFFFCF6FFFFED
      D3FFFFEACCFFFFE9CBFFFFE8C9FFFFE7C7FFFFE6C5FFFFE5C3FFFFE5C1FFFFE4
      BEFFFFE3BCFFFFE2B9FFFFE1B7FFFFDFB4FFFFDFB3FFFFDEB1FFFEDEB1FFFEDD
      B0FFFEDDAEFFFEDCADFFFDDBABFFFDDAA9FFFDDAA7FFFCD9A6FFFDD69FFFFCE3
      BEFFFAD195FFCF8110FF453D3DFF053A80FFEAA484FFFFF4EDFFFFFFFFFFFFFF
      FFFFDA8977FF85FFC8FF93FFCEFFFFFFFFFFFFFFFFFF1CFF8FFF00FF7BFF00FF
      71FF00FF68FF00FB5EFF00F255FF00E84BFF00DE41FF00D438FF00CB2EFF00C0
      25FF00B71CFF00AE12FF00A209FF009A00FF008F00FF008500FF007F00FF2B98
      22FFFFFFFFFFFFFAE6FFFBC8B7FFBA362FFFE49237FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFEFDFDFFFDFBFBFFFCFAFAFFFBF9F9FFFBF8F8FFFAF6F6FFF9F5F5FFF8F4
      F4FFEBE4E5FFA33100FFC29B8DFFAC322BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0CACAFFF4CA
      C5FFFFD6CBFF99D0A6FF52FFA9FF34FF99FF17FF8AFF00FF7BFF00FF71FF00FD
      69FF00F460FF00EB57FF00E14EFF00D945FF00D03CFF00C633FF00B827FF00A2
      15FF46BD5DFFEDD0D0FF827A7AFF00000000E58B12FFFDE2BCFFFDCD84FFF8A5
      19FFF6A81CFFF6A81EFFF6A81FFFF6A821FFF7A822FFF7A824FFF7A924FFF7A9
      25FFF7A927FFF7A928FFF7A928FFF7A929FFF7A92AFFF7A92AFFF7AA2BFFF8AA
      2CFFF7AA2DFFF8AA2EFFF8AB2EFFF8AB2FFFF8AB2FFFF8AB30FFF8AA31FFFBB3
      46FFF9CA83FFD9860DFF413D3DFF053C84FFEDA888FFFFF6EEFFFFFFFFFFFFFF
      FFFFD88673FF84FFC6FF86FFC8FFFFFFFFFF34FF9DFF0BFF86FF00FF7BFF00FF
      71FF00FF68FF00FB5EFF00F255FF00E84BFF00DE41FF00D438FF00CB2EFF00C0
      25FF00B71CFF00AE12FF00A209FF009A00FF008F00FF008500FF007F00FF2B97
      21FFFFFFFFFFFFFBE8FFFBC9B8FFBA362FFFE59338FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFDFDFFFDFBFBFFFCFAFAFFFBF9F9FFFAF7F7FFFAF6F6FFF9F5
      F5FFECE6E7FFA33100FFC29B8EFFAC322BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1C5C5FFFFD3
      CBFFF9C6BEFFA7D1ADFF66FFB3FF44FFA1FF23FF8FFF05FF80FF00FF74FF00FF
      6BFF00F762FF00ED59FF00E450FF00DA46FF00D13DFF00C734FF00BE2CFF00A8
      1AFF7BD18AFFE4C1C0FF7D7D7DFF00000000E68E17FFFFDBABFFF7A614FFE4A8
      00FFE5AA04FFE5AA05FFE5AB06FFE5AB08FFE6AC0AFFE6AC0DFFE6AE0FFFE6AE
      11FFE6AF14FFE6AF16FFE6AF19FFE7B01CFFE7B01FFFE7B121FFE8B125FFE8B2
      28FFE8B22BFFE9B32EFFE9B331FFE9B434FFE9B437FFE9B53AFFE8B741FFF2A7
      1CFFFCB957FFCD861EFF3F3F3FFF053C84FFEEAE8BFFFFF7EEFFFFFFFFFFFFFF
      FFFFD78370FFA4E1A7FF5CFFB1FF3DFFA1FF21FF94FF07FF85FF00FF7AFF00FF
      70FF00FF67FF00FA5DFF00F154FF00E74BFF00DE41FF00D338FF00CA2EFF00C0
      24FF00B61BFF00AD10FF00A207FF009800FF008E00FF008500FF007F00FF72AF
      5DFFFFFFFFFFFFFBEAFFFBCABAFFBA362FFFE59438FFFFE1BEFFFFE0BCFFFFDE
      BAFFFFDBB8FFFFD9B6FFFFD6B3FFFFD4B0FFFFD1AEFFFFCEABFFFFCBA8FFFFC8
      A5FFFFC4A2FFFFC19FFFFFBE9CFFFFBB99FFFFB895FFFFB592FFFFB28FFFFFAF
      8CFFFFAB88FFFFA784FFFEA481FFFEA17EFFFDA07DFFFDA07DFFFD9F7CFFFC9F
      7CFFE38B75FFA33100FFC29C90FFAC322BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6C8C8FFFFE1
      D9FFFFD2C8FFC5B5A8FF8AF0B4FF4DFFA6FF29FF93FF09FF82FF00FF76FF00FF
      6CFF00F863FF00EE5AFF00E550FF00DB47FF00D23EFF00C836FF00BF2CFF00AE
      1EFF9EDEA9FFD8B0AFFF838383FF00000000E28D19FFFFDBA7FFF3A210FFE0A0
      00FFE2A100FFE3A100FFE3A200FFE3A200FFE4A300FFE4A300FFE4A400FFE4A4
      00FFE4A500FFE4A500FFE4A500FFE5A600FFE5A600FFE5A700FFE5A700FFE5A8
      00FFE5A800FFE6A900FFE6A900FFE6A900FFE6A901FFE6AA03FFE4AC04FFEDA3
      01FFFDB754FFCD8723FF444444FF053D86FFF1B28DFFFFF8EFFFFFFFFFFFFFFF
      FFFFFBC8BBFFD78371FFD88674FFDA8A77FFDB8D7AFFDB917FFFDD9382FFDE96
      86FFDF988AFFE09D8DFFE09F92FFE0A294FFE1A697FFE3A99DFFE4AB9FFFE5AF
      A4FFE5B2A7FFE6B6AAFFE7B9AEFFE8BBB2FFE9BFB6FFE9C2B9FFEAC5BCFFEDCB
      C2FFFFEEE3FFFFFCECFFFBCABBFFBA362FFFE59438FFFFC883FFFFC37FFFFFBF
      7AFFFFBA76FFFFB570FFFFB06BFFFFAA66FFFFA560FFFF9F5AFFFF9954FFFF93
      4EFFFF8D48FFFF8742FFFF813BFFFF7A35FFFF742FFFFF6E28FFFF6722FFFF61
      1BFFFF5A15FFFF540FFFFF4E09FFFF4803FFFF4803FFFF4803FFFF4803FFFF48
      03FFD92F03FFA33100FFC29C90FFAC322BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5CAC9FFF9D5
      D1FFFFD6CCFFFFD6CCFFF8CBC5FFF0C6C1FFBBD5B6FF81DEA3FF3DF28EFF0DFA
      78FF00F863FF00EE5AFF00E550FF00DB47FF00D23EFF00C836FF00BF2CFF00B2
      21FFC1EAC6FFD6B7B7FF858585FF00000000DC8B18FFFFE4BBFFF7A621FFDE8D
      00FFDE9200FFDF9200FFDF9300FFDF9300FFE09400FFE09400FFE09500FFE095
      00FFE09600FFE09600FFE09600FFE19700FFE19700FFE19800FFE19900FFE19A
      00FFE19A00FFE29B00FFE29B00FFE29C00FFE29C00FFE39C00FFE19D00FFF09A
      00FFFEC16CFFD28A1FFF4F4F4FFF05418EFFF3B692FFFFF9F1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFAFFFFFFF8FFFFFFF6FFFFFF
      F3FFFFFFF1FFFFFDEEFFFBCBBCFFBA362FFFE59438FFFFCE89FFFFC984FFFFC4
      7FFFFFBE7AFFFFB975FFFFB46FFFFFAE69FFFFA863FFFFA25DFFFF9C57FFFF96
      51FFFF904BFFFF8A44FFFF833EFFFF7D38FFFF7631FFFF702BFFFF6A24FFFF63
      1DFFFF5D17FFFF5611FFFF4F0BFFFF4904FFFF4803FFFF4803FFFF4803FFFF48
      03FFD92F03FFA33100FFC8A296FFAE332CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0D1C2FFE4C5
      C1FFE7C8C7FFEFCAC7FFF4CDC9FFFED6CFFFFFDFD6FFFFE4DCFFFFE0DAFFFADD
      D9FFD6E0CCFFA2E4B4FF60E490FF30DF70FF00D13DFF00C834FF00BE2CFF00B5
      23FFE5F9E6FFC69F9FFF8A8A8AFF00000000DF8B1DFFFEE7C4FFFFEBCEFFFBB6
      53FFF9B54CFFFAB54CFFFAB64BFFFAB64BFFFAB54BFFF9B54AFFF9B549FFF9B5
      49FFF9B548FFF9B548FFF9B447FFF9B447FFF9B446FFF9B445FFF9B345FFF9B3
      44FFF9B344FFF9B343FFF9B343FFF9B242FFF9B242FFF9B241FFF9B041FFFBCB
      83FFFAD39AFFD68316FF626262FF03479EFFF4BA95FFFACDB2FFFFF9F1FFFFF8
      EFFFFFF7EEFFFFF6EEFFFFF4EDFFFFF4ECFFFFF3EAFFFFF2EAFFFFF1E9FFFFEF
      E8FFFFEEE7FFFFEDE7FFFFECE6FFFFEAE5FFFFE8E3FFFFE7E0FFFFE5DEFFFFE3
      DCFFFFE0D7FFFFDFD5FFFFDDD3FFFFDBD1FFFDD7CEFFFDD6CBFFFDD4C9FFFCD2
      C6FFFCCFC4FFFBCEC2FFD1685FFFBA362FFFE59438FFF5BA6DFFFFCE89FFFFC9
      84FFFFC37FFFFFBD79FFFFB773FFFFB16DFFFFAB67FFFFA560FFFF9F5AFFFF99
      54FFFF924DFFFF8C47FFFF8540FFFF7F3AFFFF7933FFFF722DFFFF6B26FFFF65
      1FFFFF5E19FFFF5813FFFF510CFFFF4A05FFFF4803FFFF4803FFFF4803FFFD46
      03FFC43002FFA33100FFB75B53FFB4342EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5D8C7FFD2A48BFFD0AFA4FFD9BBB6FFD7B1ADFFE1BDBCFFEBC7C5FFF3D1
      CCFFFCDCD7FFFFEFE8FFFFF0EBFFFFF1EEFFFFF4F2FFBEEEC8FF79E096FFC1F3
      CFFFFFFAF9FFC9ACACFF8F8F8FFF00000000976039FFEBAE53FFFFE2B7FFFFE7
      C3FFFFE5BFFFFFE5BEFFFFE4BCFFFFE4BBFFFFE3BBFFFFE3BAFFFFE2B8FFFFE1
      B6FFFEE0B5FFFEDFB4FFFEDFB3FFFEDEB1FFFEDDB0FFFEDDAEFFFEDCADFFFDDB
      ABFFFDDBA9FFFDDAA9FFFCDAA8FFFCD9A6FFFCD8A5FFFCD7A3FFFCD7A4FFFBD5
      9FFFEBAA4BFFA87E62FF797979FF0E53AAFF00000000F4BA95FFF3B692FFF1B2
      8DFFEEAE8BFFEDA888FFEAA484FFE99F81FFE79C7DFFE5977AFFE49376FFE18E
      72FFDF8A6FFFDE856BFFDC8169FFDB7C66FFD77762FFD5735EFFD46F5BFFD26A
      57FFCF6754FFCE6252FFCC5D4EFFCA584BFFC95446FFC65043FFC54C40FFC346
      3CFFC0433AFFBF3F37FFBC3A33FF00000000B37237FFE59438FFEBA34DFFE99F
      4AFFE89A47FFE69644FFE49241FFE28E3EFFE0893AFFDE8537FFDD8134FFDB7C
      31FFD9782DFFD7732AFFD56F27FFD36A24FFD26620FFD0621DFFCE5D1AFFCC59
      17FFCA5413FFC85011FFC74B0EFFC4470AFFC24308FFC04006FFBE3E05FFBA39
      03FFA43201FFAA361FFFB53831FF0E52A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF6F6FFF3E7E7FFECD8
      D8FFE1C3C3FFD7B0B0FFDEB6B5FFEAC7C6FFF3D6D4FFFDE8E5FFFFFBF9FFFFFD
      FBFFEDD0CFFFD0BBBBFF989898FF0000000070766FFFA28C7CFFF2B062FFEFAA
      4EFFEBA64CFFEAA64BFFEAA64BFFEAA64BFFEAA64BFFEAA64BFFEAA64BFFEAA6
      4BFFEAA64BFFEAA64BFFEAA64BFFEAA64BFFEAA64BFFE9A348FFE69F44FFE49B
      40FFE19439FFDE8F34FFE09135FFE4963AFFE69A3EFFE99F43FFEAA447FFE8A6
      57FFCDA592FFBAA7A7FF909090FF799CCBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE8C6EFFECA756FFE8A1
      46FFE49D45FFE39C43FFE39B43FFE29A42FFE19941FFE19841FFE09740FFDF96
      40FFDF953FFFDE953FFFDD943EFFDD933DFFDC923DFFDB8F3BFFD88B37FFD587
      34FFD3812EFFD07C2AFFD07C2AFFD37F2DFFD4812FFFD68433FFD68635FFD387
      41FFC18C74FFB8A5A5FF8F8F8FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A49C9CFFAF9E9EFFB99E9EFFC29E9EFFCD9D9DFFD7AC
      ABFFC09595FF9C9999FF000000000000000000000000999999FF969696FF9494
      94FF929292FF919191FF919191FF919191FF919191FF919191FF919191FF9191
      91FF919191FF919191FF919191FF919191FF919191FF919191FF919191FF9191
      91FF919191FF919191FF9A9393FFA59595FFAE9595FFB79595FFC19494FFCCA3
      A2FFB88F8FFF989595FF999999FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A2A2FF9C7676FFA15454FF8455
      55FF4C4848FF424242FF232223FF1A1416FF1D1818FF171216FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAEAFFD4D4
      D4FFC9C9C9FFBEBEBFFFADADAEFF9C9C9DFF929293FF8D6D6EFF925051FF7951
      52FF494647FF404041FF262527FF1E191CFF211D1EFF1C171CFF1C1718FF1616
      0FFF141912FF161D18FF141D16FF1A231BFF232C24FF2A322BFF3F4940FF4F5C
      50FF576457FF000000000000000000000000000000009A9A9AFFD4D4D4FFC8C8
      C8FFC8C8C8FFC7C7C7FFC5C5C5FFC4C4C4FFC3C3C3FFC3C0C0FFC3BEBEFFC1BE
      BEFFBDBDBDFFBCBCBCFFBABABAFFB9B9B9FFBAB9B9FFB9B9B9FFB9B9B9FFB9B9
      B8FFBEBEBDFF9C9C9CFF232724FF171F18FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000665648FF98524FFFB26D6BFFA75C
      5CFF9A5251FF704948FF624C4EFF9F7272FF614545FF413C3FFF515153FF5757
      57FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCFFF6A4837FF9354
      36FF995C3CFF995B3DFF995B3DFF985A3CFF9A593AFF9F593AFFA25C3DFFA15A
      3CFF9F593BFF9B583AFF99583AFFA05C3EFF995739FF965639FF98593BFF9859
      3BFF995A3CFF97583AFF965739FF945638FF945639FF995B3DFF925935FF8357
      26FF374A11FF016E10FF6B7C6BFF00000000000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA2A2A2FFC3C3C3FF513B31FF834C32FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DD763AFFC75F3CFFA15454FFEEBFB8FFF9CF
      C7FFCB8C89FFA15454FFA55C59FFC0A1A1FFCDB4B4FFB18382FF7C5A5AFF635D
      5DFF434F68FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E5FFBF6237FFECAA91FFF1BE
      A9FFEFC1ACFFF0C2AEFFF0C3AFFFF0C3AFFFF0C3AEFFF0C4AEFFF0C4AEFFF0C4
      AEFFF0C4AEFFF0C4AEFFF0C4AEFFF0C4AEFFF0C4AEFFF0C4AEFFF0C4AEFFF0C4
      AEFFF0C4AEFFF0C4AEFFF0C3AEFFF0C3AFFFF0C3ADFFEFC1ACFFF0C1ACFFE4B4
      A1FFE89D7EFF885A2BFF394539FF00000000000000009A9A9AFFFFFFFFFFFCFC
      FCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFDFDFDFFF0F0F0FFE5E5
      E5FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4E4FFE5E5E5FFE4E4E4FFECEC
      ECFFFFFFFFFFA2A2A2FFECECECFFC9C9C9FF716159FFD3AA98FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDEFFD1D1
      D1FFCECECEFF7D7D7DFFB5B5B5FFA2A2A2FF63554EFFCAA391FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6D4B7FFB27470FFB87674FFFFDAD2FFEEC4
      BEFFE6B9B4FFD59C98FFB87472FFA15454FFAB6F6DFFC7B0B0FF998487FF1D48
      83FF009ED9FF00EAF9FF00FBFEFF000000000000000000000000000000000000
      000000000000000000000000000000000000A07663FFEAAA92FFA38D85FF8A86
      84FFDEB7A5FFF1C6B0FFF1C7B1FFF2C8B1FFF1C6B0FFF1C7B0FFF1C7B0FFF1C7
      B0FFF1C7B0FFF1C7B0FFF1C7B0FFF1C7B0FFF1C7B0FFF1C7B0FFF1C7B0FFF1C7
      B0FFF1C7B0FFF1C7B0FFF1C7B0FFF1C6B0FFF1C7B1FFF3C7B1FFD1AE9EFF7578
      7AFF978E8AFFE99A78FF331B0DFF666666FF000000009A9A9AFFFFFFFFFFFCFC
      FCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFFFFFFFFE7E7E7FF868686FF7373
      73FF727272FF707070FF6E6D6EFF6D6C6CFF686868FF656565FF636363FF6161
      61FFCDCDCDFFA2A2A2FFE6E6E6FFF2F2F2FFCDCDCDFF72625BFFB89A8BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5FFF454545FF515151FF6E6E
      6EFF8E8E8EFF929292FF969696FF8D8D8DFF797979FF4D4846FF6F5D54FF6769
      6BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7D4C2FFA15454FFDCA9A5FFF7D5CFFFF6D0
      CAFFFFE0D9FFD6A6A3FFFFD5CCFFE2ABA5FFAD6463FFA15454FF61536FFF09AF
      C8FF00D6D9FF01AFCDFF2DA6CEFF46B0D7FF25ACD6FF00000000000000000000
      000000000000000000000000000000000000C2704AFFECB49FFF9C9896FF9599
      9BFFC4A695FFEABFA6FFB4927FFFC5A28DFFF0C6ADFFF3C8AEFFF3C8AEFFF3C8
      AEFFF3C8AEFFF3C8AEFFF1C6ADFFEFC5ABFFEFC4ACFFF1C7ACFFF3C7AEFFF3C8
      AEFFF3C8AEFFF3C8AEFFF3C8AEFFF0C5ABFFBE9C87FFBA9784FFCAA895FFA1A5
      A6FF958A86FFEDB19AFF8E5438FF302E36FF000000009A9A9AFFFFFFFFFFFBFB
      FBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFFFFFFFFC7C7C7FF737373FF7777
      77FF767575FF817D7FFF979897FF9EA1A0FF918F90FF777476FF656565FF5555
      55FF989898FFA2A2A2FFEAEAEAFFEEEEEEFFF9F9F9FFD2D2D2FF665A53FF8E92
      92FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDEFFA0A0A0FF5D5D5DFF6060
      60FF5F5F5FFF686567FF7C7D7CFF767878FF7A7A7AFFCECECEFFE9E9E9FFEDED
      EDFFEDEDEDFFECECECFFECECECFFEEEEEEFFF0F0F0FFE4E4E4FFB9B9B9FF5B5C
      5CFF7C7370FF0000000000000000000000000000000000000000000000000000
      00000000000000000000FDEECBFFBE8A82FFAD6565FFFFDFD8FFF6DBD7FFFFF0
      ECFFFFE1DAFFE6B2ACFFF1C4BDFFE2B4B0FFDBA8A4FFCC8C88FFA75C5BFF965A
      5BFF5D6F86FF9FAAC0FFD9D3D9FFEBE5E8FFEBE6EEFF9DB8DCFF000000000000
      000000000000000000000000000000000000C9774FFFE9B29AFFDDAF99FFC6A5
      94FFF9C8ABFFBAA699FF8D8B89FF7E675BFFEEC2A6FFF4C7ABFFF4C7ABFFF4C7
      ABFFF4C7ABFFF4C7ABFFE5BA9FFFA68772FF9D7F6DFFD5AE96FFF4C7AAFFF4C7
      ABFFF4C7ABFFF4C7ABFFF5C7ABFFD3B4A1FF918C8AFF75665EFFDDB198FFE5B6
      9EFFECB89FFFEAAF95FF8C5137FF272837FF000000009A9A9AFFFFFFFFFFFAFA
      FAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFFFFFFFFBBBBBBFF757575FF7B7B
      7BFF807F7FFF94BDA9FFA7EBCAFFAAEECDFFA0D9BCFF99A29EFF787677FF5E5E
      5EFF8A8A8AFFA2A2A2FFEFEFEFFFF4F4F4FFF4F4F4FFFFFFFFFFD7D7D7FF6F5F
      56FFD1A38DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5C5C5FF939393FF868686FF7C7C7CFF7D7D
      7DFF7E7D7DFF808482FF808985FF959997FFFAFAFAFFFBFBFBFFF3F3F3FFEAEA
      EAFFE2E2E2FFDDDDDDFFDADADAFFDADADAFFDEDEDEFFF0F0F0FFFFFFFFFFECEC
      ECFF8A6F62FF0000000000000000000000000000000000000000000000000000
      00000000000000000000F3DDBBFFA15454FFD19A97FFFFE0DAFFF6D6D1FFF7F1
      F1FFFFFBFBFFDFB4B1FFF1CDC8FFFCD8D1FFFADBD5FFD19793FFF9C9BFFFC482
      7EFFA15454FFA66363FFC3AFAFFFD7D7D7FFE8E8E8FFF1ECF2FF000000000000
      000000000000000000000000000000000000C8754FFFE8AF93FFEDB79BFFF3BF
      A1FFD3AA90FFB4B1B0FFE9EAEBFF5A4F48FFEFC1A2FFF5C5A6FFF5C5A6FFF5C5
      A6FFF5C5A6FFFAC8A7FFB6A497FF8C8886FF6F655EFFB8947BFFF5C6A6FFF5C5
      A6FFF5C5A6FFF5C5A6FFF9C7A6FF96918EFFE6E7E7FF6A6967FFDBAE91FFF0BD
      A0FFECB599FFE9AB8FFF7C4A37FF1E1F2AFF000000009A9A9AFFFFFFFFFFFAFA
      FAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFFFFFFFFB2B2B2FF777777FF7E77
      7AFF6C9882FF51E299FF51E198FF4ADD94FF48E396FF64C293FF8B888AFF6463
      64FF7C7C7CFFA2A2A2FFF4F4F4FFF9F9F9FFFAFAFAFFFCFCFCFFFFFFFFFFDADA
      DAFF756056FFD29A81FF00000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9FFDBDBDBFFCCCCCCFFC8C8C8FFC8C8
      C8FFC8C8C8FFC8C8C8FFC8C8C8FFC7C7C7FFEEEEEEFFFFFFFFFFF3F3F3FFE4E4
      E4FFEEEEEEFFF5F5F5FFF2F2F2FFE2E2E2FFD2D2D2FFFBFBFBFFFFFFFFFFCDCD
      CDFF65534BFF0000000000000000000000000000000000000000000000000000
      000000000000FBD5A8FFCB9985FFA75D5DFFF9DBD5FFFBDDD7FFE6BDB8FFEDC8
      C2FFF1CBC5FFFFDBD3FFF1DCDAFFFFEDE9FFFFD9D0FFD29894FFEEC1BAFFDEB1
      ADFFCC908CFFB87270FFA15454FFAC7E80FF7FA3C2FF2594C9FF01B5E1FF00D2
      F1FF00D4F2FF00D8F3FF0070BEFF131422FFC8744DFFE7A98CFFECB394FFF2BA
      99FFC8A086FF87898AFFB6B6B7FF4A413CFFF0BD9BFFF4C19FFFF4C19FFFF4C1
      9FFFF6C29FFFC7A086FFCBC7C4FFE2E3E3FF878482FFA7856DFFF5C2A0FFF4C1
      9FFFF4C19FFFF4C19FFFFAC4A1FF686B6DFFB4B4B4FF4C4D4FFFDDAC8CFFF0B8
      98FFEBB192FFE8A688FF774F3EFF171824FF000000009A9A9AFFFFFFFFFFF9F9
      F9FFF8F8F8FFF8F8F8FFF8F8F8FFF9F9F9FFFDFDFDFFACACACFF7D7D7DFF7B72
      77FF64A183FF74ECB0FF76E5ACFF5CDF9DFF21D97CFF28BE73FF868987FF6D6A
      6CFF727272FFA2A2A2FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD9D9D9FF735A4FFF6B4738FF000000000000000000000000000000000000
      0000000000000000000000000000AAAAAAFFEAEAEAFFE1E1E1FFE0E0E0FFDFDF
      DFFFDFDFDFFFDCDCDCFFD8D8D8FFD5D5D5FFC2C2C2FFC3C3C3FFCBCBCBFFDBDB
      DBFFDBDBDBFFD9D9D9FFD8D8D8FFD9D9D9FFD0D0D0FFBDBDBDFF969696FFA5A5
      A5FFACACACFF5A463EFF614033FF000000000000000000000000000000000000
      000000000000E79058FFAB6663FFC78D8BFFFDE2DDFFE9C2BEFFFBDED8FFD2A1
      9FFFF4CFC8FFFFDCD5FFF1D7D5FFFCF9F9FFF2E1DFFFE3B3AEFFF3D0CBFFFFDE
      D6FFE6BDB8FFEFBAB1FFAD6362FF885C65FF0093C1FF00ABD2FF03B8D9FF00B5
      D9FF00B4D9FF00BDDAFF0083C6FF0D132CFFC67249FFE6A384FFEBAE8CFFF1B5
      93FFC89D81FF757779FF9A9B9BFF483E38FFEFB895FFF3BC98FFF3BB98FFF3BB
      98FFF7BE99FF987D6BFFA1A2A3FFC7C7C7FF68696BFF9B7A62FFF4BE99FFF3BC
      98FFF3BB98FFF3BB98FFF9BF9AFF5F6264FF989899FF434446FFDCA887FFEFB3
      90FFEAAB8AFFE7A180FF77513FFF12172DFF000000009A9A9AFFFFFFFFFFF8F8
      F8FFF7F7F7FFF7F7F7FFF7F7F7FFF8F8F8FFF9F9F9FFA8A8A8FF808080FF7E7C
      7DFF657A70FFB5E6CEFFEAFFF7FFEDFFF8FFCFFBE5FF7AAA93FF7D7C7DFF6E6E
      6EFF6D6D6DFFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2
      A2FFA2A2A2FFA2A2A2FF50392EFF000000000000000000000000000000000000
      0000000000000000000000000000CBCBCBFFDCDCDCFFF6F6F6FFEDEDEDFFEEEE
      EEFFE8E8E8FFDEDEDEFFDEDEDEFFDDDDDDFFD9DADAFFCBCBCBFFCCCCCDFFD1D1
      D1FFCDCDCDFFCACBCBFFC8C8C8FFC4C5C5FFC4C4C4FFA4A4A5FF8F8F90FF9494
      94FF999999FF969696FF4E4744FF0F1426FF0000000000000000000000000000
      0000E8803AFFD07E4EFFAB6565FFF4D7D2FFF5DBD7FFFFECE7FFFFDFD8FFEBBB
      B4FFE1B4B0FFDCB1AEFFD9A9A5FFEEC5BFFFF8D0C9FFF6D0C9FFFFF4F1FFFFE7
      E2FFEBB9B2FFDFA6A0FFA15454FF3C5192FF004FB7FF004EB7FF004EB6FF004D
      B6FF004DB5FF005EB9FF006FBDFF091631FFC77047FFE49D7BFFEAA884FFF0B0
      89FFC69779FF949698FFCACBCBFF564A43FFF1B68EFFF2B890FFF1B88FFFF1B8
      8FFFF5BA91FF9B7E6AFF808283FF9A9A9AFF535556FF9D785FFFF4B891FFF2B8
      90FFF1B88FFFF1B88FFFF7BB90FF727577FFC8C8C8FF595B5BFFE1A781FFEDAD
      88FFE8A582FFE59A78FF774C3CFF0E1A32FF000000009A9A9AFFFFFFFFFFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF6F6F6FFA5A5A5FF848484FF8787
      87FF747173FF6E7F77FFA3BDB0FFB0C9BCFF91A299FF7E7D7DFF787878FF7272
      72FF6C6C6CFFE0E0E0FFEDEDEDFFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8
      E8FFEBEBEBFFEEEEEEFF553D34FF000000000000000000000000000000000000
      000000000000000000000000000000000000ABABABFFF2F2F2FFFFFFFFFFFDFD
      FDFFE7E7E7FFF4F4F4FFFDFEFEFFF9FBFDFFF6F8F9FFF3F5F7FFF0F2F3FFEBED
      EEFFE8EAECFFE5E7E9FFE2E4E6FFDFE1E2FFDBDDDFFFDBDDDFFFDCDEDFFFD9DB
      DDFFD6D8D9FFD3D4D4FFC9C9C9FF131B2AFF0000000000000000000000000000
      0000F19943FFBA7C6DFFC28A89FFFFEAE5FFF8E0DCFFFAF5F5FFFFF9F8FFE1BB
      B9FFECC9C3FFFFDCD5FFF5D3CDFFDBA7A3FFFFDAD2FFFBD6CEFFEFE0E0FFFBF6
      F6FFDBB2AFFFCB8B86FF975F5FFF00A6DCFF00A6DCFF00A6DCFF00A5DBFF00A5
      DBFF00A5DBFF0079C8FF004DB5FF082556FFC66C44FFE29772FFE8A17BFFEFAA
      81FFC79675FF606366FF757779FF6E6056FFF7B58AFFF2B389FFF2B389FFF2B3
      89FFF6B58AFF9A7B66FF868788FFA2A2A2FF565859FF9B745AFFF3B38AFFF2B3
      89FFF2B389FFF2B389FFF9B78BFF505559FF767879FF4D5254FFF4B085FFEBA7
      80FFE79F79FFE3936FFF78473AFF0D2753FF000000009A9A9AFFFFFFFFFFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF4F4F4FFA3A3A3FF878787FF8989
      89FF888788FF7C797AFF6A6E6BFF6B726DFF767475FF7B797AFF787878FF7575
      75FF6E6E6EFFDFDFDFFFFBFBFBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFFAFAFAFFFFFFFFFF553A33FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000909090FFC0C0C0FFF6F6
      F6FFE4E4E4FFFAFBFCFFEFE3DBFFECCEB8FFEFD3BEFFF0D7C1FFF2D9C4FFF3DC
      C5FFF4DDC8FFF3DCC7FFF2DBC4FFF1D8C3FFEFD5BFFFECD2BCFFEACEB8FFE7C9
      B3FFE7CAB6FFD9D5D3FFCACBCCFF182842FF0000000000000000000000000000
      0000D1A16AFFB57777FFE7C5C3FFFFEBE6FFFFE9E5FFF4DBD8FFF1D9D7FFEAC9
      C5FFF8EAE8FFFFEBE7FFFAD0C8FFD9A7A3FFE0B7B4FFDCB3B1FFD6A4A0FFF1C8
      C0FFF9CDC3FFA75C5BFF6C8A8AFF23D6D6FF23D6D6FF23D6D6FF23D6D6FF23D6
      D6FF09E1E2FF00FFFFFF0084CDFF0649A5FFC46C41FFE18F69FFE79B73FFEBA4
      79FFF0AA7DFFF8B080FFF8AF80FFF8B082FFF1AD81FFF1AC81FFF1AC81FFF1AC
      81FFF4AF82FF997761FF9EA0A1FFC3C3C3FF6A6C6EFFA2775AFFF2AE81FFF1AC
      81FFF1AC81FFF1AC81FFF1AC80FFF9B182FFF8B081FFF9B080FFEEA87CFFEAA2
      78FFE59971FFE28D66FF76503DFF0B4799FF000000009A9A9AFFFFFFFFFFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6F6FFF2F2F2FFA1A1A1FF8A8A8AFF8B8B
      8BFF888888FF8A8785FF969494FF9B9A9BFF959190FF848281FF797A7AFF7878
      78FF707070FFD9D9D9FFFAFAFAFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF8F8F8FFFFFFFFFF543F34FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000858585FF7373
      73FFBDBDBDFFFFFFFFFFD9B69EFFC3682AFFCC793CFFD38346FFD88B4EFFDC92
      54FFDE9658FFDF985AFFDF975BFFDC9256FFD78B4FFFD28247FFCD793EFFC46B
      30FFC26931FFD9CEC7FFCCCFD0FF15396CFF000000000000000000000000C997
      68FFAF8269FFC18B8BFFFFEEEAFFEFD4D1FFDFB7B5FFCF9E9CFFFADFDAFFFFE6
      E0FFEEDAD9FFF2E6E6FFEACECCFFEDCDC9FFFFDFD8FFFFDCD4FFD6A39FFFFFD8
      D0FFDCA59FFFA15454FF51CDCFFF46DFE0FF46DFE0FF46DFE0FF46DFE0FF46DF
      E0FF12DCDEFF00FDFFFF00D2EDFF004DB5FFC36A3FFFDF8960FFE5966AFFEB9E
      70FFEDA374FFCCA083FFC4A188FFCCA183FFEEA877FFF1A978FFF0A978FFF0A9
      78FFF3AB79FF96755EFF7F8386FF999C9DFF61676AFFBE8A66FFF1AA79FFF0A9
      78FFF0A978FFF1A978FFEEA877FFCCA183FFC4A188FFCB9F82FFEBA273FFEA9C
      6FFFE49368FFE0875DFF775C42FF064BA8FF000000009A9A9AFFFFFFFFFFF4F4
      F4FFF3F3F3FFF3F3F3FFF4F4F4FFF6F6F6FFF3F3F3FFA4A4A4FF8D8D8DFF8D8D
      8DFF858382FF93ADB9FFA7DAF2FFACE1FAFFA0C8DBFF9A9EA0FF848382FF7979
      79FF727272FFD5D5D5FFF9F9F9FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF7F7F7FFFFFFFFFF554637FF00000000000000008F8F8FFFBEBEBEFFA8A8
      A8FFB2B2B2FFCECECEFFECECECFF000000000000000000000000000000007979
      79FFC0C0C0FFFFFFFFFFD6AF96FFB75210FFC06120FFC76B2AFFCC7332FFD079
      37FFD17B38FFD9945CFFDEA273FFDD9D6EFFDA9A6BFFD69364FFD38F61FFC572
      3DFFB75418FFD9CEC5FFCFD1D3FF123C75FF000000000000000000000000AF86
      3DFFBF8A8AFFE2C1BFFFFAE9E6FFF7D9D4FFFFDCD4FFFAD7D0FFDBAEABFFF4D7
      D3FFEDCBC7FFEDCBC7FFFFE2DBFFF6DEDBFFFFF7F5FFFFE9E4FFD8A29DFFFFD9
      D1FFAD6463FF857E7FFF46DBE0FF46DBE0FF46DBE0FF46DBE0FF46DBE0FF46DB
      E0FF12D7DEFF00F7FFFF00F7FFFF004EB6FFC3673CFFDD8358FFE59060FFD396
      72FFA3A1A0FFA6A8AAFFB4B4B7FFA6A8A9FFA2A19FFFD79F7AFFF1A470FFEFA3
      72FFEFA472FFDB9A6DFFC68B64FFC68B64FFC68C66FFE69F6FFFEFA472FFEFA3
      72FFF1A471FFD79F7AFFA2A19FFFA6A8AAFFB4B4B7FFA6A8A9FFA3A1A0FFD295
      71FFE58D5EFFDE8055FF776144FF064BA9FF000000009A9A9AFFFFFFFFFFF4F4
      F4FFF7F7F7FFF9F9F9FFFBFBFBFFFDFDFDFFF9F9F9FFA3A3A3FF919191FF8B86
      84FF708F9DFF5BCDFFFF5DD0FFFF59CDFFFF5AD2FFFF70B2D2FF928F8DFF7D7C
      7CFF737373FFCFCFCFFFF9F9F9FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF6F6F6FFFFFFFFFF554838FF00000000A55834FF6C6C6CFF949494FF9797
      97FF8F8F8FFF7F7F7FFF7E7E7EFFACACACFFE6E6E6FF0000000000000000807B
      79FF9A9FA1FFFFFFFFFFD4AA92FFB34D0EFFBF6429FFC46C31FFC87237FFCB77
      3AFFCD783BFFD69262FFDDA47BFFD99C71FFD69468FFD39064FFD18D62FFC26F
      3DFFB24D13FFDBCEC7FFD1D3D5FF123C75FF00000000000000009F7729FFDBB8
      96FFC79696FFFBECE9FFF8E8E5FFFDF5F4FFFFF1EEFFF1C4BDFFDBB1AFFFEBC2
      BDFFF6D8D3FFD19F9DFFFFE3DDFFF8DAD5FFEEDCDBFFE9D4D3FFF2CCC5FFE8B9
      B3FFA15454FF4FA8AFFF34C4CEFF34C4CEFF34C4CEFF34C4CEFF34C4CEFF34C4
      CEFF0DCED9FF00F0FFFF00F0FFFF004EB6FFC2653AFFDD7D50FFD58A61FFA0A5
      A6FFCAC7C6FFF8F8F7FFF9F9F9FFF8F8F7FFCAC6C6FF9FA3A5FFDF9B6FFFEEA0
      6AFFEDA06AFFEEA06BFFEFA06BFFEFA06BFFEFA06BFFEEA06BFFEDA06AFFEEA0
      6AFFDF9B6EFF9FA3A5FFCAC8C6FFF8F8F7FFF9F9F9FFF8F8F7FFCAC7C6FFA0A3
      A6FFD3865EFFDF7D51FF776044FF064BA9FF000000009A9A9AFFFFFFFFFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FF9F9F9FFF959595FF857E
      7BFF6499AEFF68D6FFFF69D0FFFF52C8FFFF23BCFFFF31ABE0FF8C8E8FFF8281
      80FF777777FFD0D0D0FFF8F8F8FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF6F6F6FFFFFFFFFF554838FF00000000885A45FFEFEFEFFFEBEBEBFFCFCF
      CFFFB8B8B8FFB8B8B8FFB4B4B4FF909090FF787878FF747474FF929292FF0000
      0000647F89FFFFFFFFFFCEA188FFB5571FFFD9A382FFDBA787FFDDAA8AFFE0AE
      8DFFE1B08EFFE7BFA4FFECCDB7FFDEAD8BFFD18B5DFFCE875CFFCB8359FFBB65
      33FFAD470DFFDED1CAFFD2D5D6FF113B74FF0000000000000000F2CD7EFFCCA0
      9EFFE0C0BFFFFFF4F2FFFFF2F0FFEDDBDBFFF2E7E6FFEED7D5FFF3DEDCFFFFE7
      E1FFFFD8D0FFD69F9BFFAE9CC4FF4941B4FF7F70B1FFFFE0D9FFFFDED7FFBE7E
      7CFF966465FF46D3E0FF46D3E0FF46D3E0FF46D3E0FF46D3E0FF46D3E0FF46D3
      E0FF12CDDEFF00EAFFFF00EAFFFF004EB7FFC26439FFDC7746FFB09789FFBEBC
      BCFFFAFBF9FFF6F6F6FFF6F6F6FFF6F6F6FFFAFAF9FFBEBDBCFFB39E8FFFF09B
      62FFEE9C65FFEE9C65FFEE9C65FFEE9C65FFEE9C65FFEE9C65FFEE9C65FFF09B
      62FFB39E8FFFBEBDBCFFFAFAF9FFF6F6F6FFF6F6F6FFF6F6F6FFFAFAF9FFBFBE
      BEFFB6A195FFE2855BFF776046FF064BA9FF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFA0A0A0FF979797FF8B88
      86FF667B86FFB3E4F6FFDAFAFFFFD9F7FFFFBDF2FFFF72A5BEFF878686FF8382
      82FF797979FFCECECEFFF6F6F6FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF5F5F5FFFFFFFFFF9A9A9AFF000000008E5A43FFFFFFFFFFFFFFFFFFFFFF
      FFFFEDEDEDFFC4C4C4FFB1B1B1FFB8B8B8FFB5B5B5FF797979FF595959FF7471
      6FFF6A7175FFFFFFFFFFCA9D83FFB05019FFD9A687FFE1B294FFE4B798FFE6BA
      9BFFE7BB9BFFECCAAFFFF0D6C1FFE4B796FFD8986AFFD6966BFFD08D63FFBA64
      32FFAC450BFFE0D4CDFFD3D7D7FF103A73FF00000000CD9A3BFFE5C8A9FFCDA3
      A3FFEEE7E1FFACD3A6FFB6D6AEFFF5EEE6FFFFF0EDFFFFEFEBFFF1DFDEFFFFFC
      FCFFFFF3F1FFBD95A3FF1919E3FF0C0CFDFF1111DAFFCFB6CBFFF3CEC8FFA154
      54FF5F97A2FF46CFE0FF46CFE0FF46CFE0FF46CFE0FF46CFE0FF46CFE0FF46CF
      E0FF12C7DEFF00E3FFFF00E3FFFF004FB7FFC16135FFDB703EFFA6A8A9FFDBDD
      DEFFF7F9FAFFFAFAFAFFF8F8F8FFF6F6F6FFF7F9FAFFDBDDDEFFA5A7A8FFF097
      5BFFEC985EFFEC985EFFEC985EFFEC985EFFEC985EFFEC985EFFEC985EFFF097
      5BFFA5A7A8FFDBDDDEFFF7F9FAFFF6F6F6FFF9F9F9FFF7F7F7FFF7F8F9FFE1E2
      E2FFB3B5B7FFE28559FF765F46FF064CA9FF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFA2A2A2FF989898FF9999
      99FF787776FF76868DFFB6CBD5FFC2D7E0FF9EACB3FF838484FF898887FF8485
      85FF7C7C7CFFD4D4D4FFF5F5F5FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF3F3F3FFFFFFFFFF9A9A9AFF00000000A95630FFD3D3D3FFFFFFFFFFFEFE
      FEFFFFFFFFFFE6E6E6FFC1C1C1FFB7B7B7FFB7B7B7FFC1C1C1FF959595FF7272
      72FFBCBCBCFFFEFFFFFFC79A81FFB75B23FFE4B696FFE7BC9CFFE9BE9EFFEAC1
      A0FFEBC1A1FFEECCAFFFF1D5BEFFE7B792FFDB9864FFD99665FFD69363FFC775
      3FFFB14C12FFE1D4CDFFD6D9DAFF103A73FF00000000FBCD7CFFD7B3AEFFDFC2
      C2FF9CCD98FF23BF23FF2BD02BFF3FBC3FFF83C27DFFE5E6D5FFFDEBE8FFF1DC
      DAFFF0D8D6FFBAA8C9FF8F8FFFFF5555FDFF0707DAFFBEA9C8FFD19A97FF9B5B
      5DFF3AB1C5FF46CBE0FF46CBE0FF46CBE0FF46CBE0FF46CBE0FF46CBE0FF46CB
      E0FF12C1DEFF00DCFFFF00DCFFFF004FB8FFC16132FFDA6C37FFABAFB0FFD5BF
      B5FFF4CEBDFF8A8B8CFFBABABAFFF8F9FAFFEAC4B3FFD5BFB5FFAAADAFFFF092
      55FFED9359FFED9359FFED9359FFED9359FFED9359FFED9359FFED9359FFF092
      55FFAAADAFFFD5BFB5FFEAC4B3FFF8FAFBFFA8A8A8FFD6D8D8FFF1D2C5FFDDCC
      C4FFBBBEC0FFE3885DFF785E47FF064CAAFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFA7A7A7FF9A9A9AFF9B9B
      9BFF999898FF848281FF707678FF73797CFF7D7E7EFF8C8B8AFF8A8A8AFF8787
      87FF7F7F7FFFD9D9D9FFF7F7F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF3F3F3FFFFFFFFFF9A9A9AFF0000000000000000858585FFFFFFFFFFFBFB
      FBFFFCFCFCFFC5C5C5FFDADADAFFEDEDEDFFC1C1C1FFC2C2C2FFCACACAFFBEBE
      BEFFBFBFBFFFFEFFFFFFCAA086FFC9763DFFE8BC9CFFEAC1A1FFECC4A3FFEEC8
      A7FFEFCBA8FFF0CBA9FFF1CFAFFFE6AC7AFFD88643FFD48141FFCF7938FFC86E
      2DFFC06428FFE4D7D0FFD6D8DAFF103A74FF00000000EFC899FFD8B6B6FFF4E9
      E8FF32A031FF2DCC2DFF0DCA0DFF0ECD0EFF24D024FF29B529FF71BC6AFFC1D5
      B2FFFFECE8FFDFCEDCFF9391D4FFC3C3F8FF5F5BBFFFFFE4DEFFA75D5CFF8282
      8BFF33B3CDFF44C4DEFF44C4DEFF44C4DEFF44C4DEFF44C4DEFF44C4DEFF44C4
      DEFF11BBDDFF00D6FFFF00D6FFFF0050B8FFC56330FFD86933FFB89C8EFFCDCE
      CDFF78797AFFB5B6B6FFFBFDFEFFF5F5F5FFF9FAFAFFC8C7C7FFBBA394FFEE90
      52FFEC9255FFEE9254FFEF9253FFEF9253FFEF9253FFEE9254FFEC9255FFEE90
      52FFBBA393FFC8C8C7FFF8F9FAFFF4F5F5FFFDFFFFFF848484FFDEDFE0FFD6D7
      D6FFC8B3A8FFE38D64FF785E47FF064DAAFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFAFAFAFFF9C9C9CFF9D9D
      9DFF9B9B9AFF969591FF999794FF9C9B99FF9B9995FF919190FF8C8C8CFF8A8A
      8AFF818181FFDEDEDEFFF7F7F7FFF3F3F3FFF0F0F0FFEFEFEFFFEFEFEFFFEFEF
      EFFFF2F2F2FFFFFFFFFF9A9A9AFF00000000000000008D8D8DFFC2C2C2FFFFFF
      FFFFEFEFEFFFB3B3B3FFECECECFFFFFFFFFFEDEDEDFFCBCBCBFFCECECEFFD1D1
      D1FFC9C9C9FFFBFFFFFFCDA58BFFCF8047FFEBC3A4FFEEC9A9FFF0CDADFFF3D1
      B0FFF4D3B2FFF5D4B3FFF6D7B8FFEBB584FFDF904CFFDA8A49FFD3813FFFCC73
      32FFC87034FFEEE2DBFFDEE0E2FF0F3A73FF00000000E5C3B0FFDFC4C4FFBEDE
      BDFF46AD46FF94E794FF66DC66FF35D135FF11CB11FF0ACC0AFF21D421FF1FB7
      1FFF47A541FFAEC89EFFDFCDDCFFBEAECFFFFFE7E2FFDCAEABFFA15454FF6DD0
      EAFF4CC9E6FF65E2FFFF65E2FFFF65E2FFFF65E2FFFF65E2FFFF65E2FFFF65E2
      FFFF19BEE6FF00CFFFFF00CFFFFF0050B9FFCB6630FFD76934FFD37B4CFFBABE
      C0FFD5D3D1FFFAFDFEFFE29C81FFF7FAFBFFD3D0CEFFB9BEC0FFDE905CFFED91
      52FFEB8F52FFBC8764FFA08777FF9D897CFF9F8777FFBC8764FFEB8F52FFED91
      52FFDE905CFFB8BDBFFFD6D4D2FFF9FBFCFFE9B8A4FFFCFFFFFFCDCBCAFFCED1
      D3FFDD9F7DFFE3946FFF775D48FF064DABFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFAEAEAEFF9F9F9FFF9F9F
      9FFF8F8D8AFF9196ADFFA4B1E6FFA9B7EEFF9EA8CEFF9C9D9EFF929291FF8B8B
      8CFF848484FFE5E5E5FFF7F7F7FFF3F3F3FFF2F2F2FFEFEFEFFFEEEEEEFFEEEE
      EEFFF1F1F1FFFFFFFFFF9A9A9AFF000000000000000000000000C4C4C4FFE9E9
      E9FFD7D7D7FFBBBBBBFFF1F1F1FFC7C7C7FFDEDEDEFFEBEBEBFFD0D0D0FFD7D7
      D7FFCFCFCFFFF9FFFFFFC2977DFFC76F30FFE4AA7AFFE7B182FFEDB989FFF1C1
      90FFF6C896FFF7CA98FFF6CA9AFFEEB277FFE3974FFFDD8E48FFD5813CFFCD73
      2FFFBE6022FFF4E7E0FFE9EBEDFF0F3A73FF00000000E2C9C9FFE9D6D6FFDBE5
      D7FF3D993DFFABD7ABFFC8F2C8FF9CE99CFF6DDE6DFF2DCD2DFF00C200FF08CB
      08FF1CD21CFF20B720FF2F9A2CFFBECCABFFFFE9E4FFB26F6FFF9A797FFF68DF
      FFFF4CC4E6FF65DEFFFF65DEFFFF65DEFFFF65DEFFFF65DEFFFF65DEFFFF65DE
      FFFF19B9E6FF00C8FFFF00C8FFFF0050B9FFCB6731FFD76935FFDF763EFFD389
      5DFFBFBCBAFFC6C7C9FFD0D7D9FFC6C9CBFFBEBCBBFFD99566FFEF9051FFDC8C
      57FF908B87FF909395FF9B9C9DFFA9ABABFF9B9C9DFF909395FF918B87FFDB8C
      56FFEE8E4EFFDBA078FFD3D3D2FFD9DBDBFFE1E4E6FFD7DBDCFFD5D3D2FFE1AF
      93FFE8A27CFFE59B79FF775C49FF064DABFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFB4B4B4FFA3A3A3FF9998
      93FF717999FF5A7BFBFF5C7DFFFF5A7CFFFF5D7EFFFF7284CCFF9A9994FF8E8E
      8EFF878787FFEBEBEBFFF6F6F6FFF4F4F4FFF3F3F3FFF1F1F1FFEEEEEEFFEDED
      EDFFF0F0F0FFFFFFFFFF9A9A9AFF00000000000000000000000000000000B0B0
      B0FFB5B5B5FFD4D4D4FFE8E8E8FF979797FFD4D4D4FFEEEEEEFFE4E4E4FFD6D6
      D6FFCFCFCFFFFCFEFEFFD5C3BAFFC9A085FFD8B395FFDAB899FFDDBD9FFFE1C2
      A4FFE4C8A8FFE5CBAAFFE4C9A8FFE2C4A6FFDEBFA1FFDAB99CFFD7B497FFD3AC
      8FFFC8A189FFFAF4F2FFEEEFF0FF0F3A74FF00000000EEC7AEFFE1C6C2FFDCBF
      BFFFE7D3D3FF97BA8FFF5DA55DFFAFD8AFFFCFF4CFFFA4EAA4FF37CD37FF00BC
      00FF00C000FF05C905FF17D117FF068306FFE9C5C2FFA25555FF88ABB6FF6CCE
      E6FF38ADD2FF4CC0E6FF4CC0E6FF4CC0E6FF4CC0E6FF4CC0E6FF4CC0E6FF4CC0
      E6FF13ADDFFF00C1FFFF00C1FFFF0051BAFFCB662FFFD66732FFDE7A43FFE78D
      56FFE9945DFFD29F7DFFCD9E7FFFD0966EFFEA8C4EFFED8F51FFE68E52FF9390
      8FFF9B9B9BFFDAD6D4FFF9F9F8FFF8F8F8FFF9F9F8FFDAD6D4FF9B9B9BFF9591
      8EFFECA97BFFF4BB95FFF1B993FFE1BFA7FFDFC4B0FFE0BEA7FFEFB58FFFEEB0
      8DFFE8AA88FFE7A383FF785C49FF064EACFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9FFAFAFAFFF9996
      8DFF5C6DADFF5176FFFF5476FFFF3B62FFFF1040FFFF274CE0FF919193FF9191
      8FFF8F8F8FFFEEEEEEFFF6F6F6FFF4F4F4FFF3F3F3FFF2F2F2FFEFEFEFFFECEC
      ECFFEFEFEFFFFFFFFFFF9A9A9AFF00000000000000000000000000000000E4E4
      E4FF959595FFEFEFEFFFAEAEAEFFADADADFFE5E5E5FFE0E0E0FFE3E3E3FFE2E2
      E2FFBEBEBEFFE5E5E5FFF8FBFCFFF8FDFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
      FFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF
      FFFFFFFFFFFFFFFFFFFFBDBDBDFF06418FFF0000000000000000FDBF84FFEFC1
      9DFFDEBDB6FFD7B5B5FFDFC1C1FF93B287FF5EA45CFF93C793FFD6F6D6FF77DD
      77FF15C215FF00BC00FF00BB00FF1F801CFFC99492FFA56C6EFFA5F1FFFFA5F1
      FFFF58C1E6FF65D6FFFF65D6FFFF65D6FFFF65D6FFFF65D6FFFF65D6FFFF65D6
      FFFF19AEE6FF00BAFFFF00BAFFFF0051BAFFCB6E3BFFE49D7BFFECB596FFF0B9
      99FFF2BE9CFFF4C09CFFF4C19DFFF3B991FFF0AE81FFF1A26DFFB6927AFF9A9C
      9EFFE2E0DEFFF7F7F7FFF4F4F5FFF4F4F4FFF4F4F4FFF7F7F7FFE5E3E2FFC3C6
      C7FFD4BFB0FFF5C09CFFF4C09CFFF4BF9BFFF4BF9BFFF3BE9AFFF1BC9AFFEFB7
      96FFEBB091FFE9AA8DFF785C4BFF064EACFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFB9B9B9FFABAA
      A5FF636C8CFFABBCFBFFC9D5FFFFC3D0FFFFA3B8FFFF5E71C2FF959595FF9C9C
      9BFF999999FFF1F1F1FFF7F7F7FFF4F4F4FFF4F4F4FFF2F2F2FFF2F2F2FFEEEE
      EEFFEFEFEFFFFFFFFFFF9A9A9AFF00000000000000000000000000000000ADAD
      ADFF8D8D8DFF929292FFA5A5A5FFE4E4E4FFDEDEDEFFD8D8D8FFD9D9D9FFDCDC
      DCFFD7D7D7FFC3C3C3FFD4D4D4FFCCCCCCFF838795FF6D7599FF939393FF9494
      94FF919191FFB8B8B8FFBABABAFFB9B9B9FFB9B9B9FFB8B8B8FFB8B8B8FFB6B6
      B6FFB8B8B8FFBABABAFF7F7F7FFF000000000000000000000000000000000000
      000000000000EFCDB5FFDCB9B2FFD2ABABFFD4AEAEFFABB497FF5EA45CFF86BE
      86FFCCEECCFF85E185FF159D15FF99B78AFFAC6666FFAEB2B9FFB1F3FFFFB1F3
      FFFF93D8E6FF74D9FFFF65D2FFFF65D2FFFF65D2FFFF65D2FFFF65D2FFFF65D2
      FFFF19A9E6FF00B3FFFF00B3FFFF0051BBFFCC7E55FFEAB399FFEEB99CFFF1BE
      A0FFF3C2A3FFF4C5A5FFF5C4A5FFF5C5A5FFF5C5A6FFF7C5A5FFCECCCBFFD8D6
      D6FFFAFBFBFFF6F6F6FFF6F6F6FFF7F7F7FFF8F8F8FFF9F9F9FFFCFCFDFFDAD9
      D8FFCDCAC9FFF6C4A3FFF5C4A4FFF5C4A4FFF5C5A4FFF4C4A5FFF3C1A1FFF0BD
      9FFFEDB79AFFEBB398FF795C4DFF064EACFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8FFC1C1C1FFCFCF
      CEFF888888FF787E96FFC0C8E3FFCDD4EEFFA5AABDFF8B8C8EFFBDBCBBFFC1C1
      C1FFB6B6B6FFF2F2F2FFF7F7F7FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2F2FFF0F0
      F0FFEEEEEEFFFFFFFFFF9A9A9AFF000000000000000000000000FEFEFEFF9393
      93FF929292FF727272FFA6A6A6FFF3F3F3FFE4E4E4FFD9D9D9FFD1D1D1FFD1D1
      D1FFD6D6D6FFDDDDDDFFECECECFFF9F9F9FF707276FF87888AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A1A7BAFF8E95B5FFCDA1A1FFCCA0A0FFC1B4
      A5FF6BA564FF3AA13AFF1C811BFFC9A9A0FFAF6C6CFFBDECF5FFBEF5FFFFBEF5
      FFFFA5DBE6FFB9F3FFFF8DE0FFFF65CEFFFF65CEFFFF65CEFFFF65CEFFFF65CE
      FFFF19A3E6FF1CB9FFFF13B5FFFF0052BBFFCC815CFFEBBAA2FFEFBFA3FFF2C4
      A9FFF4C8ABFFF5CAADFFF6CBAEFFF6CBAEFFF6CBAEFFF7CAABFFD2D4D6FFE7E7
      E7FFFBFDFDFFFAFAFAFFFAFAFAFFF7F7F7FFFAFAFAFFFAFAFAFFFBFDFDFFE7E7
      E7FFD2D4D6FFF7CAABFFF6CBAEFFF6CBAEFFF6CBAEFFF5CAADFFF4C7ABFFF0C3
      A8FFEEBDA3FFEEBAA3FF7C5C4DFF064FACFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDFFCACACAFFE0E0
      E0FFDBDBDAFFA7A7A6FF84868DFF868890FF9D9C9FFFCECDCCFFDADADAFFCECE
      CEFFBFBFBFFFF7F7F7FFF7F7F7FFF5F5F5FFF5F5F5FFF4F4F4FFF3F3F3FFF2F2
      F2FFEFEFEFFFFFFFFFFF9A9A9AFF000000000000000000000000DBDBDBFF8585
      85FF6B6B6BFF969696FFF0F0F0FFB3B3B3FFECECECFFE4E4E4FFDCDCDCFFD0D0
      D0FFC8C8C8FFCCCCCCFFDADADAFFFFFFFFFFB9B9B9FF9A9A99FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007C9CC5FF006DD5FF83D6F4FFBFBDC2FFC59D
      9EFFC29090FFD8B1B0FFF7E5E3FFBF8888FFAB9497FF99C5CEFF99C5CEFF99C5
      CEFF8CB8C0FF99C5CEFF99C5CEFF93C2CEFF81BACEFF68B0CEFF68B0CEFF81BA
      CEFF87C9D9FFA8F2FFFF29B9FFFF0052BBFFD18864FFEDC0ABFFEFC5ADFFF3C9
      B1FFF5CDB3FFF6CFB5FFF7D0B6FFF7D0B6FFF7D0B6FFF8CFB4FFD9DBDBFFE9EA
      EBFFEEC2B0FFFBFDFEFFF4F4F4FFC0C0C0FFFDFDFDFFFBFDFEFFEEC2B0FFE8EB
      EBFFD9DBDBFFF8CFB4FFF7D0B6FFF7D0B6FFF7CEB4FFF6CFB5FFF5CCB3FFF3C8
      B0FFF0C3ACFFF0C1ACFF7F5E4EFF064FACFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFADADADFFB2B2
      B2FFB5B5B5FFB9B9B9FFB3B3B2FFB0B0AFFFB4B3B3FFB2B2B2FFAEAEAEFFA5A5
      A5FFD1D1D1FFFCFCFCFFF7F7F7FFF5F5F5FFF5F5F5FFF4F4F4FFF3F3F3FFF2F2
      F2FFF1F1F1FFFFFFFFFF9A9A9AFF0000000000000000878787FF868686FF7777
      77FF6A6A6AFFEDEDEDFFECECECFFBFBFBFFF989898FFDADADAFFBDBDBDFFB0B0
      B0FFA4A4A4FF9A9A9AFFBEBEBEFFEEEEEEFFE6E6E6FF747474FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007C9ECAFF006ED5FF8CE1FFFFBCF5FFFFBDEF
      F9FFB7B3B6FFC09798FFBD8686FFB97F7FFFB7C8CDFFB7DAE0FFB7DAE0FFB7DA
      E0FFA5C8CEFFB7DAE0FFB7DAE0FFB7DAE0FFB7DAE0FFB7DAE0FFB7DAE0FFB7DA
      E0FFA8D5DEFFBCF5FFFF2EB9FFFF0052BCFFD28967FFEEC6B3FFF2CAB5FFF4CE
      B8FFF6D1BBFFF7D3BCFFF7D4BDFFF7D4BDFFF7D4BDFFF7D3BBFFE2DCD6FFE4E4
      E4FFFBFCFDFFFEFEFEFFC2C2C2FFF8FAFAFFFBFBFBFFFBFBFBFFFBFCFDFFE4E4
      E4FFE2DCD6FFF7D3BBFFF7D4BDFFF7D4BDFFF7D4BCFFF6D3BCFFF5D1BAFFF2CD
      B7FFF1C8B4FFF2C8B4FF805F4FFF064FADFF000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F7F8FFEAED
      F0FFEAEEF0FFEAEEF0FFEAEEF0FFEAEEF0FFE8EDEFFFE7ECEEFFE5EAEDFFEAEF
      F2FFFBFEFFFFFAFEFFFFF8FEFFFFF8FDFFFFF7FCFFFFF7FBFFFFF5FBFFFFF5FA
      FEFFF6FBFFFFFFFFFFFF9A9A9AFF00000000B8785AFF757575FFDADADAFFCACA
      CAFF727272FF7C7C7CFF7C7C7CFF818181FF919191FF979797FFADADADFFC2C2
      C2FFC5C5C5FFD2D2D2FFD8D8D8FFE0E0E0FFEDEDEDFF919394FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007CA3D3FF006ED6FF73D4FFFFD0F8FFFFD0F8
      FFFFB4D1D6FFC3DBE0FFC2BCBFFFC1B4B7FFC3DBE0FFC3DBE0FFC3DBE0FFC3DB
      E0FFB1CACEFFC3DBE0FFC3DBE0FFC3DBE0FFC3DBE0FFC3DBE0FFC3DBE0FFC3DB
      E0FFB7D8DEFFD0F8FFFF26B5FFFF0053BCFFD28B69FFEFCBBAFFF2CEBAFFF5D0
      BDFFF6D4BFFFF5D6C2FFF7D7C2FFF7D7C2FFF7D7C2FFF7D6C1FFEFD8C9FFE7E8
      EAFFEDECEBFFEFEFEFFFD5D6D7FFF5DCD1FFFBFCFDFFFCFCFCFFEDEBEAFFE7E8
      EAFFEFD8C9FFF7D6C1FFF7D7C2FFF7D7C2FFF7D7C2FFF6D6C1FFF5D4C0FFF5D1
      BCFFF1CBB9FFF3CCBCFF805F50FF0650AEFF000000009A9A9AFFFFFFFFFFFDE7
      DCFFFCE6DBFFFBE7DCFFFAE6DBFFFAE2D5FFF9E2D4FFF9E1D3FFFAE4D7FFFAE0
      CFFFF8DFCEFFF8DECDFFF7DDCCFFF6DBC9FFF4D9C7FFF3D8C3FFF2D6C2FFF1D4
      BFFFEDD0BAFFEBCDB7FFEACBB5FFE9CAB3FFE8C8B0FFE7C5ADFFE5C4ACFFE4C2
      A9FFE5C2A8FFFFFFFFFF9A9A9AFF000000008A7063FFD7D7D7FFD4D4D4FFE4E4
      E4FF999594FFB0A5A0FFCABCB4FFE2CDC2FFF1DBCEFF00000000CBBDB4FFC9C6
      C4FFE9E9E9FFDADADAFFD2D2D2FFE4E4E4FFDCDCDCFFA49487FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007D96BAFF0069D2FF37BBFFFFE3FBFFFFE3FB
      FFFFC1D4D7FFC2D3D6FFC2D3D6FFC2D3D6FFC2D3D6FFC2D3D6FFC2D3D6FFC2D3
      D6FFB4C3C7FFC4D3D6FFC4D3D6FFC4D3D6FFC4D3D6FFC4D3D6FFC4D3D6FFC4D3
      D6FFC3D8DBFFB6EBFFFF0097F3FF0053BDFFD38966FFF1D0C2FFE2D3CBFFD6D4
      D2FFF0D5C6FFF6D8C5FFF7D9C7FFF7D9C7FFF7D9C7FFF7D9C7FFF7D8C5FFEBDF
      D8FFECEEEFFFEEEDECFFF5F6F6FFF5EEECFFF4F4F4FFEEEDECFFECEEEFFFEBDF
      D7FFF7D8C5FFF7D9C7FFF7D9C7FFF7D9C7FFF5D9C7FFF6D8C5FFF0D4C6FFD7D4
      D2FFE1D3CBFFF5D2C5FF6E564DFF0351B4FF000000009A9A9AFFFFFFFFFFFACB
      B2FFF9D1BBFFF8D2BCFFF9D9C8FFF2BA99FFF1BC9DFFEFB999FFF5D4BEFFECB4
      92FFF1C7ABFFE19360FFDF8F5BFFDE8C56FFDC8850FFDA8549FFD88144FFD67D
      40FFD47939FFD27534FFD0712FFFCE6E29FFCC6A24FFCA671EFFC86318FFC45E
      12FFC45B0CFFFFFFFFFF9A9A9AFF000000009A877EFFE9E9E9FFDBDBDBFFB5B3
      B2FFBDA090FF000000000000000000000000000000000000000000000000D5A5
      88FFB9AAA0FFDAD9D8FFE9E9E9FFFEFEFEFFB3AEABFFBB723FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000828D7AFF005CC8FF0098F5FF59C7FFFFE4F8
      FFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FD
      FFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FD
      FFFFC4EDFFFF2CB6FFFF0073D7FF0F58B4FF9F6E55FFF3D1C3FFE0DDDDFFE7E9
      EAFFEBD7CDFFF5D9CAFFF6DACBFFF6DACBFFF6DACCFFF6DACCFFF6DACCFFF6D9
      CAFFEFDFD5FFEDEBEBFFEFF0F1FFF0F2F2FFEFF0F1FFEDEBEBFFEFDFD5FFF6D9
      CAFFF6DACCFFF6DACCFFF6DACCFFF6DACBFFF6DACBFFF5D9CAFFEAD7CDFFE3E6
      E7FFE4E4E3FFF1BAA3FF27476BFF00000000000000009A9A9AFFFFFFFFFFFCDF
      D0FFFBE5DAFFF8D0B9FFFAE5D9FFF5CCB4FFF8DBCAFFF3CAAFFFF7DFD0FFF3CF
      B7FFF6DAC8FFE5A175FFDF8D56FFDE8B54FFDC864EFFDA8249FFD87F43FFD67C
      3DFFD47837FFD27432FFD0702DFFCE6D27FFCB6921FFC8661BFFC76115FFC35C
      0FFFC3590AFFFFFFFFFF9A9A9AFF00000000835F4DFFB1B1B1FFB6B6B6FFBAA6
      9CFF000000000000000000000000000000000000000000000000000000000000
      000000000000CC9978FFC19F88FFCDB6A6FFAA734EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002777CCFF0061CCFF008AEAFF0093
      F1FF0093F1FF0093F1FF0093F1FF0093F1FF0093F1FF0093F1FF0093F0FF0093
      F0FF0093F0FF0092F0FF0092F0FF0092F0FF0092F0FF0092F0FF0092F0FF0092
      EFFF0092EFFF0073D7FF0054BEFF7A9ECDFF717770FFE68E65FFF1D4C9FFEDDD
      D8FFF6DCD1FFF6DDD3FFF6DED3FFF6DED3FFF6DED3FFF6DED3FFF6DED3FFF6DE
      D3FFF6DED2FFF6DED2FFF3E0D6FFF3E1D9FFF3E0D6FFF6DED2FFF6DED2FFF6DE
      D3FFF6DED3FFF6DED3FFF6DED3FFF6DED3FFF6DDD3FFF5DDD3FFF6DBD1FFEDDD
      D7FFEFC8B9FF8D6356FF0050B6FF00000000000000009A9A9AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9A9A9AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B9FE3FF0D6BCCFF005CC9FF005B
      C8FF005BC8FF005BC7FF005AC7FF005AC5FF005AC5FF0059C4FF0059C4FF0059
      C3FF0058C3FF0058C3FF0057C2FF0057C2FF0057C1FF0056C1FF0056C0FF0056
      C0FF0055C0FF0959BBFF6C96CBFFF9F9F9FF000000007B8B7BFF8C6852FFBD7E
      5FFFCC8969FFC6876AFFBE846FFFBF8673FFC28C77FFB68473FFB48173FFB481
      72FFB48172FFB48172FFB48072FFB48072FFB48072FFB48172FFB48172FFB481
      72FFB48172FFB48172FFB48171FFB48171FFB48171FFB47F70FFB67F6FFF8B65
      63FF334571FF0958B8FF0000000000000000000000009A9A9AFF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFECECECFFE5E5
      E5FFE1E1E1FFD5D5D5FFC1C1C1FFADADADFFA3A3A3FFA1A1A1FF9B9B9BFF6D6D
      6DFF575757FF4D4D4DFF2A292AFF1E181AFF1F1919FF171216FF171211FF1010
      07FF0E140BFF101911FF0E180FFF151F15FF202A20FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000272627FF1B1517FF1E1818FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E7FF737678FF686B
      6CFF686B6CFF686B6CFF686B6CFF686B6CFF686B6CFF686B6CFF585B5CFF8080
      80FF909090FF858585FF5E6566FF595152FF3C375DFF0E0B83FF261F54FF4744
      42FFA4A8A4FF9B9E9BFF9A9D9AFFA4A8A4FFB4B8B4FFC1C1C1FF216725FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6E6FFF545555FF585959FF5A5A
      5AFF595A5AFF595A5AFF585959FF575858FF575758FF55555AFF565658FF5757
      57FF5A5B5BFF5A5B5AFF5A5B5AFF5B5B5BFF5D5D5DFF898989FF216625FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000676A6BFF5B5C5AFF685849FF6A4C35FF6C5037FF654B
      35FF50473FFF4C4C4BFF775C5EFFB78383FF6A4B4BFF443E42FF525254FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004E4F4EFF414141FF3B3B3DFF3D3D3EFF646464FF1D5B21FF0000
      00000000000000000000000000000000000000000000871B0BFF85180AFF8215
      08FF801307FF7E1006FF7B0D05FF790A04FF770703FF740402FF720100FF7100
      00FF710000FF710000FF710000FF710000FF6C0108FF2A1E9DFF080681FF1221
      59FF0F61C1FF3F77BAFF6C87A7FF9C9C9CFFA8A8A8FFC5C5C5FF517B55FF66CB
      70FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009EA0A0FFB8B9B9FF9EA1A1FFA2A3
      A3FFA4A4A4FFA4A4A4FFA1A3A3FFA4A5A5FFA2A3A3FFA1A3A3FFA0A3A3FFA4A4
      A4FFA4A4A4FFA3A4A4FFA1A3A3FFA3A5A5FF9F9F9FFF5C5D5DFF507954FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E1207FF9B542FFFDE763AFFE86A30FFEE7844FFED723DFFF185
      50FFF4B37DFFE0AB79FFF2BFA1FFFFF3F2FFF4D6D6FFCA9594FF856161FF7770
      70FF9A9A9AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006660
      60FF445069FF194E8BFF056CB5FF007FC4FF0176BEFF065195FF13365AFF3971
      46FF77C683FF00000000000000000000000000000000891E0CFFCB5912FFE06C
      13FFE06C13FFDF6B13FFDF6A13FFDE6913FFDE6913FFDD6812FFDC6712FFDC67
      12FFDC6712FFDC6712FF8B1905FF710000FF3A0D27FF0C0B70FF00008BFF0202
      67FF06428EFF005FCCFF0075D0FF0851AFFF28456EFF3F3F41FF0F2713FF023E
      0AFF21522CFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADABA9FFF5F4F4FFD0D0D0FFD0D2
      D2FFD1D1D1FFD1D1D1FFD0D2D2FFD0CFCFFFD0D1D1FFD0D1D1FFD0D2D2FFD0D1
      D1FFD0D1D1FFD0D1D1FFD0D2D2FFD5D7D7FFC0C1C1FF555657FF102714FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B15C17FFF0BB7DFFFFF5CAFFF9D7B9FFFBE6D2FFFEF7EAFFFEF5E7FFFFF7
      E3FFFFFADFFFFFF0C9FFFFD298FFFFCC9AFFFFF1E6FFFFF3F3FFF7D4D0FFCE97
      94FF916969FF908989FFC1C3C3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F4DAFFF7E8C3FF00000000000000000000000000000000B59C9FFF2051
      92FF00A8E7FF00F0FFFF00FCFFFF00FAFFFF00FFFFFF00FBFFFF00C5F2FF0065
      B2FF0A2739FF17351EFF0000000000000000000000008B210DFFE26B0CFFFF84
      0BFFFF840BFFFF840BFFFF840BFFFF840BFFFF840BFFFF840BFFFF840BFFFF84
      0BFFFF840CFFA63106FF710000FF672F34FF2A2A87FF000090FF2F2FB7FF0000
      8BFF2D2D81FF316EB2FF007CD7FF00CBEDFF0069C5FF285EA6FF80858AFFA0A0
      A0FFBFBFBFFFD4D4D4FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACA9A6FFF2F2F2FFD1D1D1FFCFD1
      D1FFCED0D0FFCED0D0FFCDD0D0FFD1D0D0FFD0D0D0FFD0D0D0FFD0D1D1FFD0D1
      D1FFCED0D0FFCED0D0FFCDD0D0FFD7D7D7FFC2C3C3FF545658FF7E8388FF0000
      000000000000000000000000000000000000000000000000000000000000C96F
      13FFFAC687FFFFEBC1FFFFF2D0FFFFFAE3FFFFFDF0FFFFFFFBFFFFFFF8FFFFFA
      E9FFFFF4D9FFFFEDCAFFFCE0B6FFFAC58CFFFCBC7EFFFFE7DBFFFFF3F1FFFFEE
      E8FFF9D1CBFFD19794FF926968FF918788FFB1B2B2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F2FFA99F
      83FF8F7E53FF8B7849FF8E7A5BFFC1986CFF00000000C7B4B0FF1767B5FF00DC
      FDFF00F9FDFF01C1E2FF2FAED8FF47B3DAFF25ADD7FF00CDE7FF00FFFFFF00F6
      FFFF0087D5FF3F4F70FFBABABAFF00000000000000008D230EFFE26904FFFF83
      01FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFFF83
      01FFA73101FF710000FF894343FF2D2D8FFF000096FF4141D7FF6D6DFFFF4141
      D4FF00008BFF36368AFF3A77BBFF007DD7FF00E4F8FF008ED6FF1E5EB3FF9BA0
      A5FFC3C3C3FFE9E9E9FFFCFCFCFF000000000000000000000000000000000000
      000000000000000000000000000000000000AAA8A5FFFFFFFFFFF3F2F2FFF4F5
      F5FFF3F3F3FFF3F3F3FFF3F5F5FFF4F3F3FFF4F4F4FFF0F1F1FFF3F1F1FFF4F4
      F4FFF3F4F4FFF3F4F4FFF3F3F3FFF8F8F8FFD1D1D1FF535658FF1E5DB0FF0000
      0000000000000000000000000000000000000000000000000000CA5F05FFE48C
      49FFF29F70FFFEE7BDFFFFF0CDFFFFF5DCFFFFF9EAFFFFFDF5FFFFFBF2FFFFFA
      E8FFFFF7DCFFFFEDC8FFFCDDB1FFF9CF9FFFF8BC81FFFFC791FFF2D6D3FFF3D4
      CFFFFFE7E0FFFFE5DEFFFBCDC5FFD59793FF946767FF443A3BFF1B549FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F5ECFFCBB0
      66FFF8DB8FFFFDEDBBFFE5C97EFF9E7C32FF8E6A43FF365C92FF00D3FDFF00E9
      F9FF33A5D7FFBFCDE7FFF9F2F9FFFFF9FCFFF4EEF7FF9EB9DEFF13B3DEFF00F8
      FFFF00F2FFFF0074C7FF7E818FFF252637FF000000008F260FFFE36A04FFFF83
      01FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFAA36
      02FF750602FF8A4543FF4343A5FF00009CFF3232D9FF5454FFFF5454FFFF5454
      FFFF3232D4FF00008BFF353589FF3A77BCFF007AD7FF00DFFCFF0088D6FF2661
      AFFFA8A8A8FFD0D0D0FFEDEDEDFF000000000000000000000000000000000000
      000000000000000000000000000000000000ACAAA7FFD0CFCFFFAFADADFFB0AB
      ABFFB0ABABFFB0ACACFFB0ABABFFB1AEAEFFB1B0B1FF5770A6FF918E98FFBDBE
      BEFFBDBEBEFFBDBEBEFFBDBEBEFFBCBDBDFFA7A8A8FF575D5EFF0186D2FF0000
      0000000000000000000000000000000000000000000000000000BA702CFFE660
      27FFF2B184FFFEE3B7FFFFECC7FFFFF4D5FFFFF7E0FFFFF8E7FFFFF9E7FFFDED
      D4FFFCE6C4FFFFF1CBFFF4BC91FFF3B382FFF2AC79FFEF904EFFDFA78EFFCC9D
      9FFFCF9D9AFFE3BBB5FFF4CFC8FFFBD4CAFFFBC7BEFFD89791FF765964FF2D40
      6AFF959595FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBEB
      D2FFC3A45BFFFFFDE0FFFFFDE6FFFFF8BFFF8D8C76FF0092DEFF00EEFFFF27AB
      DFFFE8E9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F2F8FF488DC9FF00D1
      F3FF00F3FFFF00CEFBFF21518EFF1B1C29FF00000000912810FFE36B04FFFF83
      01FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFC54F03FF7A0B
      04FF894441FF4040A6FF0000A1FF2222DBFF3B3BFFFF3B3BFFFF3B3BFFFF3B3B
      FFFF3B3BFFFF2222D4FF00008BFF3A3A8EFF3D7ABFFF0086DDFF00D6FFFF006B
      CAFF5679A7FFB2B2B2FFDCDCDCFF1D1F2DFF0000000000000000000000000000
      00000000000000000000FB8101FFF37C01FFA49F9CFFBCB8B8FF969494FF9A98
      98FF9A9898FF9A9898FF9E9D9DFF99999CFF4C68A0FF5875AFFF848C9EFFA6A9
      A9FFA6A9A9FFA6A9A9FFA6A9A9FFA9ABABFFA3A3A3FF575B5DFF01D2FAFF0000
      00000000000000000000000000000000000000000000872711FFDD8145FFCF2F
      00FFE88957FFFCD6A9FFFEE5BBFFFFEECAFFFFF3D3FFFFF4D8FFFFFCE0FFEA9C
      6FFFD8561FFFF2B68AFFF9CD9FFFED9A69FFCF3C0CFFD03A03FFFBBB88FFFFEC
      E8FFE6B9B5FFC9908DFFC99390FFDEB0A9FFE8BCB3FFFBCDC1FFFDC5BCFFDA96
      91FF895A5FFF7A6D6DFFD3D3D3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE4916FFF3DCA2FFFFFBE6FFFFF8D7FF629BD5FF00BFF7FF00C8F4FF9CCB
      EBFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F8FF94BFE3FF28A1DAFF01BFEDFF00DD
      FEFF00DFFFFF00E3FFFF0074C5FF131423FF00000000932B11FFE46D05FFFF83
      01FFFF8301FFFF8301FFFF8301FFFF8301FFFF8301FFD05904FF7E1106FF8540
      3AFF3939A2FF0000A7FF1313DDFF1F1FFFFF1616FFFF1313FFFF1313FFFF1D1D
      FFFF2121FFFF2121FFFF1313D5FF00008BFF2F2F83FF2E6BB0FF0088E1FF00AF
      F4FF0958BBFF8D9298FFC7C7C7FF1C1C2AFF000000000000000000000000FD82
      01FFF87F01FFF17A01FFEA7601FFE97601FF9F9996FFD7D2D2FFBFBABAFFC1BD
      BDFFC1BCBCFFC5C2C2FFB7B5BAFF587CBDFF98A2BCFF7582A1FF9CB1CDFFD1D3
      D3FFD1D3D3FFD1D3D3FFD1D3D3FFD6D9D9FFC1C3C3FF555859FF0186DDFF0000
      0000000000000000000000000000000000000000000082371EFFE87136FFD74C
      11FFE06524FFEC935AFFFBD6ABFFFEE3B9FFFFEAC3FFFFEFCAFFFEE9C1FFEE8D
      48FFE0631EFFDD6930FFF5BE8DFFF0A472FFCE3A07FFD34610FFF39755FFFFEC
      E0FFFFE6E1FFFFD6CDFFD89C96FFCC9691FFE0B3ABFFDDABA3FFF9CBBFFFFFDE
      D1FFFFCEC2FFA76E6DFFB6B6B6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D2AEFFBB6F
      38FF8E4011FFDEC27FFFFFFFF0FFF9ECD5FF2A88D5FF00D2FFFF08BAF0FFD6E8
      F7FFFFFFFFFFEFF3FAFF92C7E9FF27A5E0FF00B4EDFF00CCFAFF03D8FFFF00D5
      FFFF00D3FFFF00DDFFFF0095E1FF0E1530FF00000000952D12FFE46E05FFFF83
      01FFFF8301FFFF8301FFFF8301FFFF8301FFD15B04FF821508FF842B22FF352E
      9CFF0000ACFF0404DFFF1A1AFFFF2A2AFFFF2A2AFFFF2A2AFFFF2A2AFFFF2A2A
      FFFF2222FFFF0909FFFF0909FFFF0404D5FF00008BFF222276FF2C6AAEFF0082
      E1FF007BDAFF5176A4FFB6B6B6FF181826FF00000000932C12FFDA6805FFED78
      01FFE97601FFE97601FFEA7601FFEA7601FF9E9896FFD8D3D3FFBFBBBBFFC0BD
      BDFFC9C6C6FFB2B0B6FF4875C7FFC1DDFBFFECF9FFFF90B1D9FF9EB4CFFFD0D2
      D2FFD0D2D2FFD1D2D2FFDBDCDCFFE1E2E2FFCBCACAFF555658FF000000000000
      0000000000000000000000000000000000000000000088482BFFF17936FFE26F
      2BFFE9813AFFF09241FFFBCE92FFFEEDCAFFFFEEC9FFFFF0CDFFFFE6BAFFFFAA
      54FFFEA44CFFF38D3DFFEF995AFFF0A36DFFE06B34FFE87F41FFF4964DFFF9D3
      BDFFFEE4DFFFFFDED4FFE3ACA6FFD5A19CFFECBEB4FFEDB8AEFFFBC5BBFFC9A1
      A2FF4D678BFF49648AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000F2E2C0FFB9AB8FFF938256FF9B8245FFBB9E
      5DFFD7BF83FFF5E9CAFFFFFDECFFF3EBDBFF1A88DBFF12D6FFFF1AC5F4FFABD7
      F2FFA0D3F1FF34B1E7FF15C4F2FF15D8FFFF06D9FFFF008ED7FF1383CAFF07CE
      FFFF00CAFFFF00D1FFFF009EEEFF0B1A3AFF00000000973013FFE56E05FFFF83
      01FFFF8301FFFF8301FFFF8301FFD35D05FF871B0BFF883024FF3630A0FF0000
      B2FF0000DEFF2020FDFF4F4FFFFF4F4FFFFF4F4FFFFF4F4FFFFF4F4FFFFF4F4F
      FFFF4F4FFFFF2424FDFF0000FAFF0000FAFF0000D1FF00008BFF1B1B6FFF1969
      C3FF0069D4FF2468B7FFB4B4B4FF171827FF605B5AFF8D2B11FFD26304FFE976
      01FFEA7601FFEA7601FFEA7601FFC25405FF9B9796FFEBE6E6FFE5E1E1FFEBE8
      E8FFB9B7C5FF5989D8FFD0E6FEFFE6F7FFFFE7F7FFFFA3D0F4FFBCD7F1FFFAF8
      F8FFF9F8F8FFF6F5F5FF959595FF969696FF888888FF4F4F51FF30305DFF305B
      8CFF225B96FF365B86FF848484FF1D1D2BFF0000000083482BFFF78941FFEA85
      3CFFF49B44FFFEC46BFFFFEAB9FFFFF3D4FFFFF3D4FFFFF4D8FFFFE1B2FFFFAF
      5BFFFFAA53FFFFAA51FFFFA852FFF59E5CFFE36F36FFDA551CFFEB7B34FFE8AE
      95FFDDB1B1FFF3C5BCFFDAA19BFFB38783FFAA8884FF755D5AFF3C314DFF2C53
      80FF000000000000000000000000000000000000000000000000000000000000
      000000000000FBC26AFFB5A580FF96814AFFCCAF66FFF8E8BAFFFFFFF3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEF5FFF6F2EFFF1F86DDFF27D2FEFF45DFFDFF2CB7
      EEFF31CAF5FF3BDEFDFF3AD4F7FF4AE5FFFF43E6FFFF20B1E9FF0657ADFF18AC
      EBFF00C0FFFF00C7FFFF0092E8FF0F1A35FF00000000993313FFE56F05FFFF83
      01FFFF8301FFFF8301FFDC6505FF8B210DFF8D3627FF3833A5FF0000B7FF0000
      DCFF2E2EF8FF7373FFFF7373FFFF7373FFFF7373FFFF7373FFFF7373FFFF7373
      FFFF7373FFFF7373FFFF5252FCFF0808F4FF0000F4FF0000CDFF00008BFF2B31
      8DFF196AC3FF0060CDFFB9B9B9FF1A1A29FF595454FF8E2E11FFD36405FFEA76
      01FFEA7601FFEA7601FFCA5B05FF811E0CFFA19B9BFFB4B0B0FF939191FF8F8E
      93FF3A76CBFFADDFFEFFBEEEFFFFD0EEFFFFEAF6FFFF9DCFF6FF7C9DB7FFA2A4
      A4FFA3A5A5FF979999FF6E6F6FFF666868FF696A6AFF717272FF727373FF7273
      73FF727373FF727373FF737474FF4F5052FF00000000844B30FFFE994EFFF39A
      49FFFECA75FFFFEEC0FFFFF5DAFFFFF5D9FFFFE7BEFFFFD79BFFFFCE8DFFFFBD
      71FFFFB565FFFFAB55FFFFAA53FFFEAE5DFFEA8648FFD74D15FFE0621FFFF7D0
      B1FFFED7DCFFEBBCBCFFCD9492FF5C4848FF5D5E5EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2B468FF98824DFFD0B05DFFFFF4C9FFFFFFFAFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFEF8FFFFFBF2FFFFFBECFFFFFAE5FF438ED7FF20BAF9FF70EDFFFF67E9
      FFFF6BEDFFFF65E4FDFF108AD5FF49C2EDFF70EEFFFF6BEBFFFF2991D0FF3DA4
      DFFF20CAFFFF06BDFFFF0077D5FF383A44FF000000009B3514FFE67006FFFF83
      02FFFF8302FFEB7204FF962C0EFF913B2AFF5A52A5FF0000BDFF0000DEFF3B3B
      F7FF9797FFFF9797FFFF9797FFFF9797FFFF9797FFFF9797FFFF9797FFFF9797
      FFFF9797FFFF9797FFFF9797FFFF8E8EFEFF4F4FF9FF0A0AF3FF0000CCFF0000
      8BFF2A308CFF4577AEFFB1B1B1FF181928FF5A5656FF903012FFD36505FFEA76
      02FFEA7602FFD86704FF8B280DFF873526FF9D9A9BFFCCC7C7FFB9B9B9FF6B7C
      A4FF79C3FEFF9AE0FFFF84E0FFFF88E4FFFFC0F6FFFF8BCCF7FF80A6C3FFB4B4
      B4FFB8B8B8FF8D8F8FFFEAEAEAFFBDBEBEFFBFC0C0FFBFBEBEFFBFBFBFFFBFC1
      C1FFBEC1C1FFC6C6C6FFB4B3B3FF555656FF0000000085492DFFFFA154FFF7BA
      80FFFFF8D7FFFFF5D9FFFFF5DCFFFFF1D2FFFFDA9BFFFFD692FFFFD38FFFFFCD
      87FFFFC277FFFFB565FFFFB05DFFFFAE58FFFBA554FFD5400BFFD7671FFF3CAD
      3CFF71B975FFDBD8C3FFFFE3E5FFEFC4C7FFA78484FF827373FFA09F9FFFBEBF
      BFFF00000000000000000000000000000000000000000000000000000000CB98
      69FFA58940FFF9DF95FFFFFFE8FFFFFDF2FFFFFBEFFFFFFAEDFFF6E7D8FFF1DC
      C9FFFFF7E6FFFFF8E3FFFFF7DCFFFFF4CBFF90AFCAFF018BECFF80EDFFFF91F0
      FFFF8BEEFFFF91F1FFFF2FAAE5FF1694DCFF8DEDFEFF8DF0FFFF8AECFEFF94E9
      FBFF94F4FFFF43C7FFFF1A58A5FF4F5050FF000000009D3815FFE6730CFFFF89
      0EFFEB780EFF9A3111FF913019FF6F69B2FF0000C2FF0000E0FF0000F2FF5858
      F9FF5858F9FF5858F9FF5858F9FF5858F9FF5858F9FF5858F9FF5858F9FF5858
      F9FF5858F9FF5858F9FF5858F9FF5858F9FF5858F9FF5858F9FF0B0BF3FF0000
      CCFF00008BFF37378CFFACACACFF171727FF5B5757FF923313FFD3680BFFEA7C
      0DFFD86C0DFF8E2C0FFF862B16FF6960A3FFA1A0A5FFEBEBEBFFC6C6C8FF508D
      E1FF8FD4FFFF87DBFFFF7BE1FFFF82E4FFFF9BFAFFFF6BD5FAFF96BDD8FFD1CF
      CFFFD7D5D5FF999999FFEEEEEEFFD3D4D4FFCFD2D2FFD1D3D3FFD1D3D3FFD0D2
      D2FFD0D2D2FFD8D9D9FFC2C2C2FF525353FF0000000083351AFFF5AF6DFFFCBF
      84FFFFF8DCFFFFF5DBFFFFF7E1FFFFF4DBFFFFEAB7FFFFE8AEFFFFE2A7FFFFDA
      9AFFFFCE88FFFFBF73FFFFB15FFFFFA850FFFFA750FFE95E1FFFBD842DFF06B1
      27FF00A417FF0CA125FF5DB263FFC8D8BAFFFFF0F0FFFAD9DDFFBE9596FF8B77
      77FFA1A1A1FFD5D6D6FF00000000000000000000000000000000CD915BFFB188
      32FFFFEDA9FFFFFAE4FFFFF8E3FFFFF5DCFFFFF4D7FFFFF5D9FFE9C8ABFFDFB2
      94FFF6E3C9FFFFFAE1FFFBE9CAFFE8BB93FFDFC2A2FF1D7ED8FF3AB9FDFFB5F9
      FFFFB1F4FFFFB0F5FFFF97E7FCFF42B0E9FFACEDFDFFADF4FFFFADF4FFFFB8F9
      FFFF95EDFFFF1385E7FF707B8FFF00000000000000009F3A16FFE77713FFEC7F
      1AFF9E3713FF94341AFFA59199FF0000C9FF0000C5FF0000C3FF0000C0FF0000
      BDFF0000BAFF0000B8FF0000B5FF0000B2FF0000AFFF0000ACFF0000AAFF0000
      A7FF0000A4FF0000A1FF00009FFF00009CFF000099FF000096FF000094FF0000
      91FF00008EFF00008BFF8E8EA7FF181927FF5B5757FF933414FFD46B11FFD872
      17FF933211FF8D3018FFA18C94FF00000000A6A7ACFFF1F0F0FF8AA4D1FF62AB
      EEFF8AD6FFFF75DBFFFF75DEFFFF80EBFFFF8DF9FFFF56C4F1FFC8D0D5FFD3D1
      D1FFDAD8D8FF999999FFEFEFEFFFDCDADAFFD5D6D7FFD9D9D9FFDCDADAFFD8D8
      D8FFD6D6D7FFE0DFDFFFC4C4C4FF525353FF00000000923414FFD09C68FFFFBD
      6FFFFFECC8FFFFF8E4FFFFF7E5FFFFF9EAFFFFFAEAFFFFF7D0FFFFF2C3FFFFE9
      B9FFFFE2B1FFFFCD8CFFFFB767FFFFAA55FFFEA54FFFF8742EFF78A738FF00B7
      2CFF00AE28FF00A71FFF009E13FF039818FF43A84EFFAED1A8FFFCF4F1FFFFE8
      ECFFCCA2A2FF907F7FFFBBBBBBFF0000000000000000883013FFA07829FFFFE8
      A0FFFFF6D7FFFFF2D2FFFFEFC5FFFFF1C7FFFFF3CDFFFFF6D5FFEDCEACFFDDAF
      8DFFE4BC9BFFEBCCA8FFE4BA95FFE4B88FFFFBDBA6FFADAEABFF0271DCFF53C3
      FEFFCDFCFFFFDCFDFFFFD6FCFFFFD6FAFFFFD3F9FFFFD7FBFFFFDDFFFFFFA8EE
      FFFF2197F4FF2F4E83FFB7B7B7FF0000000000000000A13D17FFE77C1BFFBB55
      1BFF9A3413FF997970FFB1B1B1FF798BC5FF5970BEFF5068B4FF4E65B1FF4E65
      B1FF4F65B0FF4E64AFFF485EA7FF344B96FF2F458CFF41579EFF5166ACFF5065
      ABFF5065A9FF4F63A8FF4F63A6FF4A5EA1FF435798FF4C60A0FF4F63A2FF4F62
      A1FF4F62A0FF55689CFF8C9097FF111220FF575454FF953715FFD67119FFB350
      1AFF973313FF000000000000000000000000A7A9AAFFF9F9FAFF4880D3FF81CC
      FFFF74D1FFFF69DCFFFF6FDEFFFF7DF5FFFF6AE5FCFF81CAF3FFF1F1F1FFF1EF
      EFFFF3F2F2FFA1A2A2FFF4F3F2FFF6F2EFFFF6F2F0FFF6F2F0FFF6F2EFFFF6F2
      F0FFF6F2F0FFF8F4F1FFD2D0CFFF4F5152FF0000000000000000B06E32FFFFC5
      87FFFFD28EFFFFEECBFFFFF9EBFFFFFAEFFFFFFBF4FFFFFEEEFFFFFBD0FFFFEC
      B9FFFFDEA2FFFFD191FFFFBC6FFFFFAE58FFFF9D49FFE38C39FF1CC03CFF00BB
      31FF00B42CFF00AD27FF00A623FF009F1BFF00940FFF008D0CFF299934FFACD2
      AAFFFFFFFFFFDFBFBEFF9D9695FF0000000000000000773D0BFFFBD47EFFFFEF
      C8FFFFEDC1FFFFEAB2FFFDE5B0FFF0D0A1FFF7DFB4FFF4DAB1FFE4B993FFEDCC
      A5FFF1D6B0FFF0D4ABFFE8C097FFEFCC9EFFEBC292FFEBB176FF979596FF0F75
      DBFF26A0F7FF8EDCFFFFD0F6FFFFE2FDFFFFDEFCFFFFB8EDFFFF63C4FDFF087D
      E5FF597EB2FFD3B5B4FF000000000000000000000000A34018FFE88023FFED8C
      35FFA23D17FF954328FF7C828FFF0063D2FF0062D0FF0061CFFF0060CEFF005F
      CDFF005ECCFF005DCBFF005CC9FF005BC8FF005AC7FF005AC5FF0059C3FF0057
      C2FF0057C1FF0056C0FF0055BFFF0054BDFF0053BCFF0052BBFF0051BAFF0050
      B9FF004FB7FF004EB6FF133B87FF181818FF645D5DFF9E3D17FFE77F23FF0000
      000000000000000000000000000000000000AAAEB1FF7791BEFF52A0EDFF77C8
      FFFF63D5FFFF62D9FFFF69E6FFFF76F9FFFF3BBCEEFF8E969BFF949696FF9396
      96FF949797FF848C8EFFF2D0C4FFE56E47FFE77854FFE77854FFE77854FFE778
      54FFE77854FFEA7851FFC67C62FF525A5DFF0000000000000000E07B22FFDFB9
      8FFFFFDB9BFFFFE0A2FFFFF4CEFFFFFCEAFFFFFDF7FFFFFFF5FFFFFCD2FFFFED
      B7FFFFDDA0FFFFCD87FFFFBD70FFFFAC58FFFF8F40FF7DB243FF00CA3DFF00C0
      36FF00B930FF00B32BFF00AB27FF00A422FF009D1DFF009415FF008908FF0081
      05FF8AC48DFFF8E6E8FF8F5A49FF0000000057504FFFCE9B3BFFFFE6B2FFFFE6
      B6FFFFE3A6FFFFE9AAFFF4D39BFFDEA978FFE1B081FFE2B487FFF2D4A6FFF0D0
      A4FFE8BF94FFF4D7A9FFFFF1C1FFF9DDABFFE2B17EFFE0AA74FFF7C380FFCDB6
      95FF5689BBFF0E78D8FF0C85E7FF1790EBFF138CE9FF0C7BDDFF3378BCFF3858
      42FF81B784FF00000000000000000000000000000000A54219FFE8852BFFFFA7
      4BFFED9241FFA23D18FF863422FF1B3F8CFF0063D2FF00ACEEFF22DDFFFF26DE
      FFFF26DEFFFF26DEFFFF26DEFFFF26DEFFFF26DEFFFF26DEFFFF26DEFFFF23DD
      FFFF0ADAFFFF00D9FFFF00D9FFFF00D9FFFF00D9FFFF00D9FFFF00D9FFFF00D9
      FFFF00D9FFFF0071CAFF264D83FF232323FF5D5A80FF00000000000000000000
      000000000000000000000000000000000000A5A8ADFF4E83D1FF6ABCFDFF64C9
      FFFF57D6FFFF5BD8FFFF65F3FFFF56E4FCFF68B2DBFFC4C2C2FFC3C2C2FFC2C2
      C2FFC7C7C7FF92979AFFF8DED1FFFFA47BFFFFAB84FFFFAB84FFFFAB84FFFFAB
      84FFFFAB84FFFFAD84FFD99E84FF505659FF000000000000000000000000E397
      48FFE7CFA5FFFFEDB6FFFFF0B8FFFFFDD3FFFFFFEDFFFFFFF0FFFFF9CEFFFFEB
      B3FFFFDD9EFFFFCE87FFFFBD76FFFFA154FF9AB44DFF06D950FF00CF42FF00C7
      3BFF00C035FF00B830FF00B12BFF00A926FF00A120FF009A1AFF009115FF0083
      04FF41A143FFE7D2D0FFAA7A68FF000000005E4F42FFFFD07EFFFFDEACFFFFDB
      9FFFFFDE9EFFFFE3A4FFFDE3A6FFEFC98FFFE0AC79FFF0CC99FFFEE9B5FFE2B2
      82FFDEAB7BFFE9BE8DFFFFEEB8FFF2CF99FFDFAB75FFE2AD76FFF0C48CFFEDB1
      73FFFFD591FFE6C598FFB3A89CFFA19E9CFFA89C97FFCFA788FFFDBB77FF9B7C
      18FF398C3AFF00000000000000000000000000000000A7451AFFE98933FFFFAE
      5AFFFFAE5AFFE79149FF9B3614FF7F2E24FF517097FF0063D2FF0CABEEFF42E1
      FFFF47E3FFFF47E3FFFF47E3FFFF47E3FFFF47E3FFFF47E3FFFF47E3FFFF47E3
      FFFF47E3FFFF2ADDFFFF05D4FFFF00D3FFFF00D3FFFF00D3FFFF00D3FFFF00D3
      FFFF00D3FFFF0058BDFF3F5778FF2E2E2EFF0000000000000000000000000000
      000000000000000000000000000000000000758AAFFF4192E9FF66C1FFFF53CE
      FFFF50D4FFFF54E1FFFF5CF6FFFF3EC3F3FFB3C8D5FFCFCFCFFFD0CFCFFFD0CE
      CEFFD6D4D4FF969A9DFFF7E3D4FFFFB886FFFFBD8DFFFFBD8DFFFFBD8DFFFFBD
      8DFFFFBD8DFFFFC08EFFD7AA8AFF505558FF0000000000000000000000000000
      0000E49D53FFD8B688FFFFEFBDFFFFF5D2FFFFF3D3FFFFF6DBFFFFFEEBFFFFEC
      C0FFFED293FFFFC080FFEBB269FF61D05EFF00E860FF00E25BFF00D84FFF00CD
      40FF00C539FF00BE35FF00B62FFF00AE2AFF00A624FF009D1FFF009518FF0087
      07FF5CB666FFDEC0C0FFB69075FF0000000094733BFFFFD392FFFFD499FFFFD6
      95FFFFDA9BFFFFDE9FFFFFE3A5FFFFE4A6FFE5B57DFFF9DCA1FFFFEDB3FFEBC3
      8FFFDFAB79FFE3B27FFFFBE2AAFFE9BD89FFDFAA77FFE6B380FFF7D19CFFF7CE
      99FFFFDBA5FFFFD9A0FFFFD595FFFFCC84FFFFC379FFFFBD77FFFFBA78FFB188
      2CFF4D9956FF00000000000000000000000000000000A9471BFFE98D3AFFFFB6
      69FFFFB669FFFFB669FFDA874AFF9B3514FF923F25FF607FA6FF0063D2FF11AA
      EEFF58E4FFFF5FE6FFFF5FE6FFFF5FE6FFFF5FE6FFFF5FE6FFFF5FE6FFFF5FE6
      FFFF5FE6FFFF5FE6FFFF59E5FFFF31DBFFFF0DD1FFFF00CEFFFF00CEFFFF00CE
      FFFF00B6F2FF0051BAFF54606BFF333333FF0000000000000000000000000000
      0000000000000000000000000000000000003A6EBEFF58B1FDFF56BFFFFF44D1
      FFFF49D3FFFF4BECFFFF45E8FDFF66BDEBFFDCE0E2FFDBDEE0FFDADDDEFFD9DB
      DDFFE0E2E4FF999EA1FFF8E4D7FFFFC193FFFFC59AFFFFC59AFFFFC59AFFFFC5
      9AFFFFC59AFFFFC99CFFDAB093FF505457FF0000000000000000000000000000
      000000000000F9B267FFB47C4CFFC29067FFF1C898FFFCC284FFF9C793FFF7BF
      88FFFDB97FFFF7B188FF4DD874FF00F76AFF00ED66FF00E862FF00E25CFF00D9
      51FF00CE41FF00C338FF00BA32FF00B22DFF00AA27FF00A121FF00991CFF008A
      06FF7DC986FFD9B1B3FFC39D83FF00000000CF9E42FFFFCD90FFFFCD8EFFFFD2
      92FFFFD697FFFFDA9AFFFFDE9FFFF9D396FFE3AF79FFFBDEA6FFFFECB4FFF4D3
      9EFFE0AD7BFFE0AE7DFFEEC594FFE3B281FFDFA879FFEEC292FFFFE5B4FFFFE0
      B0FFFFDCACFFFFD9AAFFFFD7A9FFFFD3A4FFFFC48BFFFFB675FFFFB775FFAB84
      27FF6CAE74FF00000000000000000000000000000000AB4A1CFFEA9142FFFFBC
      77FFFFBC77FFFFBC77FFFFBC77FFDA8B53FF9A3513FF98442BFF6180A7FF0063
      D2FF14A8EEFF6EE7FFFF76EAFFFF76EAFFFF76EAFFFF76EAFFFF76EAFFFF76EA
      FFFF76EAFFFF76EAFFFF76EAFFFF76EAFFFF76EAFFFF53E0FFFF36D8FFFF17D0
      FFFF008EDEFF1B5DB3FF676867FF343434FF0000000000000000000000000000
      0000000000000000000000000000A2776DFF3287E6FF55B4FFFF41C7FFFF3DCF
      FFFF3FDBFFFF42F6FFFF31C4F4FFD5D4D7FFF3DDD3FFF3DDD3FFF3DDD2FFF2DC
      D2FFF5DDD2FFA29E9CFFEDE6E2FFE1C8B6FFE3CBBBFFE3CBBBFFE3CBBBFFE3CB
      BBFFE3CBBBFFE3D0BFFFC4B5AAFF525455FF0000000000000000000000000000
      0000000000000000000000000000A0766CFF357FCFFF4F93C7FF4499B8FFC6B1
      A6FFFFDED4FFDEBEB5FF15EE78FF00FB70FF00F46DFF00EF68FF00E862FF00E2
      5CFF00DA53FF00CF48FF00C139FF00B630FF00AE2BFF00A524FF009C1DFF008F
      0EFF9DD6A1FFBD9E9FFFB9ABA1FF00000000D7A349FFFFC98DFFFFC989FFFFCD
      8DFFFFD191FFFFD594FFF1BF86FFE1A875FFDFA777FFF5D19FFFFFEAB7FFFCE0
      AEFFE3B082FFE0AC7EFFE1AD80FFE1AC7FFFE0AA7DFFE7B68AFFF9D8ABFFFFE2
      B6FFFFDEB3FFFFDBB1FFFFD9AFFFFFD8AFFFFFD5ACFFFFBB80FFFFB46CFF7C73
      17FF95CB99FF00000000000000000000000000000000AD4C1DFFEA954AFFFFC3
      86FFFFC386FFFFC386FFFFC386FFFFC386FFDA8F5CFF9A3413FF98452CFF4867
      8EFF0063D2FF18A7EEFF83EBFFFF8DEEFFFF8DEEFFFF8DEEFFFF8DEEFFFF8DEE
      FFFF8DEEFFFF8DEEFFFF8DEEFFFF8DEEFFFF8DEEFFFF8DEEFFFF8DEEFFFF57D7
      FBFF005BC1FF6987AFFF777777FF292929FF0000000000000000000000000000
      00000000000000000000000000005B77AFFF46A6FDFF43B5FFFF34CBFFFF36CC
      FFFF33EBFFFF30E9FDFF618FB1FFEC734DFFEC734DFFEC734DFFEC734DFFEC73
      4DFFEF724AFFA47F73FFD6DDE0FF8E9092FF94989AFF94999AFF94999AFF9499
      9AFF94999AFF96999AFF8E9192FF575757FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000032ADD7FFDBC5
      C8FFFFD8D3FFB8C0A5FF0BFA7BFF00FF78FF00FA73FF00F46EFF00ED67FF00E6
      60FF00DF58FF00D852FF00CF49FF00C03AFF00B12DFF00A827FF009E1FFF0097
      1AFFBCE0BBFF987F84FF8C8F90FF00000000D5A143FFFFC287FFFFC484FFFFC8
      88FFFFCC8BFFFFD89FFFEFBF90FFE3AB7EFFE5B083FFE7B588FFFEE2B5FFFFE9
      BDFFEABE93FFDFAA80FFE2AE84FFE5B289FFE0A980FFE0A880FFE2AC85FFF2C7
      A0FFFFDFB9FFFFE0BBFFFFDCB7FFFFDBB7FFFFDCBBFFFFC494FFFFAE59FF3969
      0DFF0000000000000000000000000000000000000000AF4F1EFFEB9A51FFFFCB
      94FFFFCB94FFFFCB94FFFFCB94FFFFCB94FFFFCB94FFDA8649FF9A3413FF903C
      24FF224168FF0063D2FF1DA5EEFF98EDFFFFA3F1FFFFA3F1FFFFA3F1FFFFA3F1
      FFFFA3F1FFFFA3F1FFFFA3F1FFFFA3F1FFFFA3F1FFFFA3F1FFFF98EDFFFF1389
      DCFF125CB9FFB4B8BFFF8E8E8EFF000000000000000000000000000000000000
      00000000000000000000C3AA9CFF2A7CDFFF42AAFFFF2FBFFFFF2BC9FFFF2AD6
      FFFF28F4FFFF1CC6F4FFD4B19DFFFFB78CFFFFB78CFFFFB78CFFFFB78CFFFFB7
      8CFFFFBB8DFFA89284FFEBEEF0FFD4D2D2FFCDCFCFFFCFD0D0FFCDCFCFFFCFD0
      D0FFCFD1D1FFD7D6D6FFBEBFBFFF525353FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000004298B8FFFADC
      D9FFFFCFCCFF94C89CFF18FF87FF0CFF7FFF02FF79FF00FA73FF00F26CFF00EB
      64FF00E35CFF00DB55FF00D34DFF00CB45FF00BC37FF00AB29FF00A01FFF089D
      24FFDBEBD6FF9B8789FF0000000000000000B38B3FFFFFBF7DFFFFBF80FFFFC2
      82FFFFCF98FFFFDBAFFFFFDCB0FFFEDCB2FFFDDFB5FFE9B990FFE8B78FFFF9DB
      B4FFF3CEA6FFE0AA83FFE1AD86FFF4D0ABFFEEC5A1FFE1AA86FFE0A884FFE0A8
      84FFE8B694FFF8D4B3FFFFE0C2FFFFDFC0FFFFE0C5FFFFC596FFD8942FFF0C7F
      1CFF0000000000000000000000000000000000000000B1521FFFEB9E58FFFFD2
      A2FFFFD2A2FFFFD2A2FFFFD2A2FFFFD2A2FFFFD2A2FFFFD2A2FFDA7626FF9A34
      13FF944028FF5C7AA2FF0063D2FF21A4EEFFADF0FFFFB9F4FFFFB9F4FFFFB9F4
      FFFFB9F4FFFFB9F4FFFFB9F4FFFFB9F4FFFFB9F4FFFFB9F4FFFF43B6F0FF0057
      C1FF597395FFAFAFAFFFADADADFF000000000000000000000000000000000000
      000000000000000000006481B7FF3296F8FF34ADFFFF21C6FFFF24C8FFFF1CE4
      FFFF19E9FDFF5EABCDFFFFBB8CFFFFBB8CFFFFBB8CFFFFBB8CFFFFBB8CFFFFBB
      8CFFFFC08DFFA79384FFECEFF1FFD0D1D1FFCFD0D0FFD2D3D3FFD2D2D2FFD2D2
      D2FFD2D2D2FFD8D8D8FFC1C0C0FF525353FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E9DB1FFFFE1
      DCFFFEC3C0FF7FD59DFF2DFF95FF1EFF88FF0CFF7FFF01FE77FF00F670FF00EE
      68FF00E660FF00DE58FF00D54FFF00CD47FF00C43FFF00B532FF00A11FFF15A5
      32FFF2EDE4FF998B8CFF0000000000000000877751FFFFBA69FFFFBB7DFFFFC1
      85FFFFD8AEFFFFDCB5FFFFDFB7FFFFE1BBFFFFE6C1FFF2CBA6FFDEA681FFE1AB
      87FFF0C8A5FFE4B290FFDFA986FFEEC7A4FFFFEBCEFFF5D3B4FFE4B292FFDFA8
      88FFE1AB8CFFF1CBAEFFFFE4CCFFFFE4CDFFFFE2CDFFFFB86CFF4C720FFF0000
      00000000000000000000000000000000000000000000B35420FFECA25FFFFFD9
      B0FFFFD9B0FFFFD9B0FFFFD9B0FFFFD9B0FFFFD9B0FFFFD9B0FFFFCF9AFFDA6C
      13FF993313FF944832FF5F84ADFF0063D2FF25A2EEFFC1F3FFFFD0F8FFFFD0F8
      FFFFD0F8FFFFD0F8FFFFD0F8FFFFD0F8FFFFD0F8FFFF4BBBF4FF005EC8FF0E64
      C4FF325B82FF535352FF00000000000000000000000000000000000000000000
      000000000000D6C0B1FF1B72DCFF32A0FFFF1FB7FFFF19C4FFFF17CEFFFF0DF0
      FFFF16C9F4FFC5C1B9FFFFCFA9FFFFCFA9FFFFCFA9FFFFCFA9FFFFCFA9FFFFCF
      A9FFFFD6ACFFA9998DFFF9FCFEFFF2F0F0FFF1EFEFFFF0EFEFFFF2F0F0FFF0EF
      EFFFEFEEEEFFF6F4F4FFCFD0D0FF525252FF0000000000000000000000000000
      0000000000000000000000000000000000000000000018BCF5FFB1B7BEFFFFE0
      D9FFEBBDB6FF78E7A7FF46FFA0FF2EFF90FF18FF86FF05FF7CFF00FA72FF00F1
      6BFF00E963FF00E05AFF00D852FF00CF49FF00C541FF00BD39FF00A621FF34B3
      4DFFEEDEDAFFAEA3A4FF0000000000000000818281FFD79632FFFFBA79FFFFC2
      8AFFFFDCB9FFFFDEBBFFFFE0BEFFFFE2C1FFFFE5C5FFEBBE9EFFDEA886FFF2CE
      AFFFFCE4C8FFE9BEA0FFDFAB8BFFE4B597FFFEE6CEFFFFEDD6FFFBE0CAFFEFC9
      B0FFF9DDC7FFFFEBD7FFFFE9D6FFFFEEE1FFFFD2A3FFA3871EFF00941DFF0000
      00000000000000000000000000000000000000000000B55721FFECA667FFFFE0
      BEFFFFE0BEFFFFE0BEFFFFE0BEFFFFE0BEFFFFE0BEFFFFE0BEFFFFE0BEFFFFC3
      83FFDA6708FF993313FF935340FF5E83ACFF0063D2FF29A0EEFFD5F6FFFFE4FB
      FFFFE4FBFFFFE4FBFFFFE4FBFFFFA8E7FFFF2998E7FF0060CBFF0769C6FF2782
      E6FF2792FBFF0000000000000000000000000000000000000000000000000000
      0000000000006484BFFF2B94FBFF26A1FFFF0FC1FFFF12C1FFFF06E1FFFF03EB
      FEFF39A7DDFFC6B9AFFFC6B9AFFFC6B9AFFFC6B9AFFFC6B9AFFFC6B9AFFFC6B9
      AFFFC6BEB3FF8F8C89FFB8B9BAFFBFC0C0FFC0C1C1FFC5C6C6FFC3C4C4FFC3C4
      C4FFC3C4C4FFC3C3C3FFAEAFAFFF4E4F4FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000019A2D3FFE5D2D1FFFFDA
      D1FFE1B6B0FF7EEBB0FF53FFA9FF36FF97FF1FFF8AFF0AFF7EFF00FC75FF00F3
      6DFF00EA64FF00E25CFF00D953FF00D14AFF00C742FF00BF3AFF00AC24FF55C4
      6DFFE9CFCFFF969191FF000000000000000000000000935113FFF6AD54FFFFBB
      81FFFFDBBBFFFFE2C7FFFFE2C7FFFFE5CAFFFFE7CDFFFADEC3FFF4D4B9FFFFEA
      D3FFFFEFDAFFF2D1B7FFDFAC90FFE3B59BFFFAE1CEFFFFEFDDFFFFEEDEFFFFF0
      E0FFFFF0E0FFFFEFE1FFFFF4EDFFFFDDBAFFC0952CFF099A2DFF000000000000
      00000000000000000000000000000000000000000000B75922FFEDAA6DFFFFE6
      CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6
      CCFFFFAF59FFD96708FF993213FF935340FF5F84ADFF0063D2FF2C9FEEFFB7E8
      FFFFB7E8FFFF88D8FFFF3BABF2FF0071D8FF005DCAFF0082D3FF01B4F2FF179F
      F7FF000000000000000000000000000000000000000000000000000000000000
      0000D5CAC8FF2A78D9FF2F9CFFFF12B1FFFF05BFFFFF08C9FFFF01F0FFFF00C7
      F6FF79A1B8FFA0A3A4FFA0A5A6FFA0A4A5FFA0A2A4FFA0A6A7FFA0A3A5FFA0A3
      A5FFA1A4A5FFA4A6A7FF9C9E9EFF9E9E9EFF929494FF545859FF18A3D3FF2895
      DBFF3386DEFF3E94E1FF44657EFF3C3C3CFF0000000000000000000000000000
      000000000000000000000000000000000000000000002AA1C4FFFEE8E7FFFFDA
      CFFFF4C2BCFFBDC1AEFF8AE3ADFF57F19DFF2CFA8DFF0CFF7EFF00FF71FF00F6
      69FF00EC62FF00E35BFF00DA53FF00D14BFF00C843FF00BF3AFF00AF23FF75D4
      8AFFE0BEC7FF367AB8FF000000000000000000000000B65922FFD19531FFF7AA
      57FFFFC89BFFFFE8D3FFFFE8D4FFFFE8D3FFFFEAD5FFFFECD9FFFFF0DDFFFFEE
      DCFFFFEFDEFFFCE7D7FFF4D9C7FFFBEADAFFFFF0E4FFFFF2E6FFFFF2E7FFFFF4
      E9FFFFF8F1FFFFF8F5FFFFDAADFFB0912AFF0BA033FF00000000000000000000
      00000000000000000000000000000000000000000000B95C23FFED943DFFFFB8
      6AFFFFB86AFFFFB86AFFFFB86AFFFFB86AFFFFB86AFFFFB86AFFFFB86AFFFFB8
      6AFFFFB86AFFFF8500FFC7570BFF983213FF985745FF698EB8FF0063D2FF0084
      E8FF0080E4FF0069D4FF005FCDFF077AC8FF17CDE9FF0BC9F9FF00B8FEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000767C99FF1F89F5FF1FA1FFFF03BAFFFF01BDFFFF01DDFFFF01EBFEFF36B2
      E8FFCBCFD2FFD1D1D1FFD1D2D2FFD1D0D0FFD1D1D1FFD1D2D2FFD1D3D3FFD1D3
      D3FFD1D1D1FFD1D1D1FFD2D4D4FFD7D9D9FFC4C4C4FF525859FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000ABFDBFFDCD5D6FFFFE4
      DFFFFFDAD1FFFFD3CEFFFCCFCBFFEECEC7FFD8D1C1FFA8DCB3FF75E4A1FF47E9
      8BFF1AE872FF03E25EFF00D94EFF00D041FF00C73DFF00BE37FF00B022FF92DE
      A0FFCCADBCFF71BADFFF00000000000000000000000000000000EA933CFFD699
      33FFE79E46FFFFC89AFFFFEADAFFFFF2E6FFFFF0E2FFFFF1E3FFFFF1E5FFFFF2
      E6FFFFF3E8FFFFF5EBFFFFF8F0FFFFF7F0FFFFF7F1FFFFF9F4FFFFFDFCFFFFFE
      FFFFFFEEDCFFF9BF74FF738D20FF03B538FF0000000000000000000000000000
      00000000000000000000000000000000000000000000BB5E24FFB85C22FFC461
      1BFFC76218FFC55F17FFC35D16FFC15B15FFBF5914FFBE5614FFBC5413FFBA52
      13FFB95012FFB74D11FFB54B10FF9A3413FF983113FF8D5A51FF5D83B3FF146A
      CDFF2972C8FF4A76B2FF91A6B7FF55ECFAFF1CEDFEFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE5D
      2CFF3370C7FF5FB4FFFF34B9FFFF01BCFFFF00C5FFFF01EDFFFF01D0F8FF8CBB
      D9FFCECFCFFFCFCFCFFFCFD0D0FFCFD1D1FFCFD1D1FFCECFCFFFCFD1D1FFCFD1
      D1FFCED1D1FFCFD1D1FFCFD1D1FFD4D6D6FFC0C1C1FF555B5BFF0ACEFAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014AAC7FF979E
      A9FFC3AFAFFFDEC2C0FFF1CFCCFFFFDAD6FFFFDBD9FFFFDCDCFFFFDEE0FFFDE0
      DEFFEFE3DAFFC8E4C9FF95E2ACFF66DC8EFF35D169FF0AC042FF0FBC3FFFCEF0
      D2FFA1878BFF64A3C2FF00000000000000000000000000000000000000000000
      00005A7385FFBE9745FFF1AE65FFFFD5B2FFFFEEE3FFFFF7F2FFFFFCF9FFFFFE
      FDFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F4FFFFE5C8FFF7C0
      7AFFC69642FF9CA27CFF93DFAAFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCAE90FFD6A78AFFAF81
      64FFB37F64FFC59177FFC49077FFC38E76FFA66F58FFB5836DFFB76D4CFFA35A
      3BFFAD6348FFB16649FFAF6448FFAE6248FFAD6148FFCCA59AFFF4F4F4FFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008B73
      75FF4A82D5FFE8F9FFFFD6F4FFFF96DFFFFF20DDFFFF00EFFFFF31B6F1FFF7F7
      F7FFF6F6F6FFFAF8F8FFF7F6F6FFF7F6F6FFFAF8F8FFF6F6F6FFF8F7F7FFF8F7
      F7FFF6F6F6FFFAF7F7FFFAF7F7FFF9F9F9FFD5D8D8FF555555FF3EE2FAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F3FFE4E1E1FFC6C2C2FFBDB4B5FFBFB0B0FFC8B1B1FFD9B8B7FFECC7
      C5FFFED9D7FFFFE0E1FFFFE9EEFFFFEFF2FFFDF4F1FFE4F4E4FFDFF7E5FFFFFE
      FEFF80767CFF8E9AA3FF00000000000000000000000000000000000000000000
      000000000000E2F0F2FFC7C59DFFBFA657FFD5A24AFFF0B672FFF9CB9DFFFDD6
      B2FFFEDBBEFFFDDBBCFFFFD9B1FFF8CA97FFEBB46CFFD49A44FFB88A47FFBC99
      83FFF3D0CEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008EA7DCFF5B8BD5FFBFD7F5FFF5FAFFFFD7FFFFFF29D0F7FF6DA1C1FFA8A9
      A9FFAAABABFFA9ABABFFAAABABFFAAABABFFA9ABABFFAAABABFFAAABABFFAAAB
      ABFFAAABABFFA9ABABFFA9ABABFFA9ABABFFA0A2A2FF4A959EFF6FD5FDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A9A9FF9F9F9FFF918E
      8FFF8B8383FF998988FFB39897FFD3AEAEFFE9C4C3FFFBD8DAFFFBE2E3FFEDCA
      C9FF7E757AFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2EFE1FF56B8AAFF939368FFB794
      48FFBE923CFFBD9440FFA0854EFFAA9465FF9F9680FFA1A09DFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737F96FF406AB2FF487BCAFF61A4E5FF3498DBFF8E969EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDDDDCFFD0CFCFFFB5AFAFFF706B6CFFAF9CA2FF6775
      7BFF929292FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F2E2FFF211B1DFF231D1DFF211A1AFF1D1615FF1010
      07FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000221C1CFF191318FF181211FF1010
      07FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B6FFA08D8DFFD1C3C3FFD0C2C2FFA89191FF6F6B
      69FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBDFF869092FF7F7475FF544D82FF110EA5FF2C2460FF504D
      4BFFC0C4C0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBDBDFFBDACACFFF4EFEFFFF6F3F3FFD4C3C3FF7568
      68FFE2E2E2FF0000000000000000000000000000000000000000000000000000
      00000000000000000000526452FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E7FF71AFB9FF40ABBCFF22539FFF301EBAFF3929D4FF0F0BA9FF1E1A
      58FFA1A1A1FFE9E9E9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0E1DDFFD4D5D1FF0000000000000000000000000000
      00000000000000000000B1ADADFFD4C3C3FFEFEBEBFFF0EBEBFFDED2D2FF7E6B
      6BFFCDCDCDFF000000000000000000000000000000000000000000000000009B
      10FF4BBF5EFF3A9449FF3B3833FF8C8C8CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1E3E3FF5BC8D2FF333874FF2211ACFF4A3DB6FF6959D4FF2B1FBAFF0E0B
      AEFF31306EFFAAAAAAFFE8E8E8FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000999797FFF8F8F8FFE2E3
      DFFFE2E3DFFFE2E3DFFFDADBD7FFCECFCBFFB5B5B2FF929290FF676866FFC7C7
      C7FFDBDDDDFF59C3CCFF323671FF1B0D88FF30287AFF443A8EFF1C147EFF0907
      76FF201F4CFF6F6F73FF98989CFF98989CFF98989CFF8D8D91FF1A4B23FF0066
      0EFF317D42FF266034FF282624FF7E7E7EFFC2C2C2FF676666FFA3A3A3FF9697
      94FF969794FF969794FF91918FFF898A87FF797977FF626260FF454645FF8484
      84FF919393FF3C8288FF23254CFF13095FFF231D58FF2E285EFF140F55FF0807
      4FFF171634FF4B4B4DFF666668FF666668FF666668FF5E5E61FF133319FF0245
      0BFF22542DFF1B4024FF1B1A18FF696969FF0000000000000000000000000000
      000000000000CFCFCCFF665D5CFF484343FF727272FFB0B0B0FF000000000000
      00000000000000000000A6A0A0FFE3D6D6FFF5F3F3FFF3F1F1FFEAE3E3FF9A85
      85FFB1B0B0FF0000000000000000000000000000000000000000324133FF4159
      38FF3F5D3CFF9A9D92FFE9DBDBFF595353FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000939393FF919C
      9DFFBAC0C2FF58AFC9FF3971B3FF4572C3FF274DB0FF5F51CBFF5C51DFFF1611
      B3FF1612C4FF383877FFAEAEAEFFECECECFF0000000000000000000000000000
      000000000000000000000000000000000000666867FF686868FF898989FF8181
      80FF818180FF787877FF545151FF4A4848FF585858FF6E6E6EFF646464FF6367
      67FF717374FF516F76FF3D5374FF0723D0FF001BF0FF001AF0FF0018EFFF0018
      EFFF0018EFFF0018EEFF0119EFFF0119EFFF0119EFFF0119EFFF0017EEFF0017
      EEFF0018EEFF001AF0FF051EE0FF373443FF5B5C5BFFC8C8C8FFC3C3C3FFC4C4
      C4FFC7C7C7FFC8C8C8FFC9C9C9FFCCCCCCFFCDCDCDFFCFCFCFFFD1D1D1FFD4D4
      D4FFD6D6D6FFD6D6D6FFD8D8D8FF868894FF9FA0A7FFC4C4C4FFC1C1C2FFC3C3
      C4FFC6C6C7FFC8C8C9FFCACACBFFCCCCCDFFCECECFFFD0D0D1FFD2D2D3FFD4D4
      D5FFD6D6D7FFD8D8D8FFD1D1D1FF2F2D36FF0000000000000000000000000000
      00007B7C7AFF635B5AFFDED0D0FFBAA7A7FF625353FF545252FF727272FF0000
      0000E9E9E9FFC5C5C5FF9C8F8FFFCBB9B9FFD0C1C2FFCDBDBEFFCBBABBFFA68D
      8DFF6C6666FFB5B5B5FFE1E1E1FF00000000D7D7D7FF7B7575FF937D7EFFD0BE
      BEFFB19B9BFFD3C3C3FF897874FF373937FF0000000000000000000000000000
      00000000000000000000000000000000000000000000525050FF3E7C86FF3FAA
      BBFF2553A2FF3836B9FF6DB7F7FF66B7EBFF616CD5FF6D5DE1FF7266EAFF332D
      C2FF2D1EBCFF1D16CDFF333372FFABABABFFD5D5D5FF00000000000000000000
      000000000000000000000000000000000000908479FFE9E9E9FFE5E5E5FFE7E7
      E7FFEAEAEAFFEDEDEDFFF0F0F0FFF3F3F3FFF6F6F6FFF9F9F9FFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFD6DBFFFF0929FFFF6C7CEFFF98A3ECFF94A0F0FF97A3
      F2FF99A4F3FF9AA6F6FF9DA8F8FF9FAAFAFFA0ACFCFFA3AEFEFFA5B0FFFFA7B3
      FFFFA9B5FFFF9FACFFFF0A2AFFFF1E213FFF746E69FFE4E4E4FFE1E1E1FFE5E5
      E5FFE8E8E8FFEBEBEBFFEFEFEFFFF2F2F2FFF5F5F5FFF8F8F8FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFACADB5FFB9B9BAFFDEDEDEFFE3E3E3FFE6E6
      E6FFE9E9E9FFEDEDEDFFF0F0F0FFF3F3F3FFF7F7F7FFFAFAFAFFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF252637FF000000000000000000000000E3E3
      E3FF9A9292FFECE4E4FFFFFFFFFFF9F7F7FFD9CBCBFF927A7AFF584E4EFF6A68
      68FF756D6DFFA28F91FFD9BFC4FFD9C7C9FFD5C7C7FFD3C3C3FFD5C4C4FFD6BE
      C2FFBFA3A8FF7D6B6DFF554F4FFF696868FF867C7CFFBFACACFFDFD5D5FFEAE4
      E4FFE6DFDFFFAA9292FF31180FFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000887474FF3BA6B0FF2026
      62FF2212ACFF4738B5FF695DDCFF7163EAFF715EE0FF7060E0FF7264E4FF5C51
      DDFF3223A2FF7148BAFF1712CDFF191958FF605959FFBEABABFF000000000000
      0000000000000000000000000000000000008A7B73FFDBDBDBFFDADADAFFDFDF
      DFFFE2E2E2FFE6E6E6FFE9E9E9FFECECECFFF0F0F0FFF3F3F3FFF6F6F6FFFAFA
      FAFFFDFDFDFFFFFFFFFFD4DAFFFF0928FEFFA5ACDAFFEAE7D3FFE8E6DBFFEBE9
      DEFFEFEDE2FFF2F1E5FFF5F4E8FFF9F7ECFFFDFBF0FFFFFEF3FFFFFFF7FFFFFF
      FAFFFFFFFDFFFCFDFFFF102FFFFF151933FF6F6864FFD5D5D5FFD8D8D8FFDFDF
      DFFFE2E2E2FFE5E5E5FFE8E8E8FFECECECFFEFEFEFFFF1F1F1FFF5F5F5FFF8F8
      F8FFFAFAFAFFFEFEFEFFFFFFFFFFA5A7B1FFAEAEAEFFD2D2D2FFDBDBDBFFE0E0
      E0FFE3E3E3FFE7E7E7FFEAEAEAFFEDEDEDFFEFEFEFFFF3F3F3FFF5F5F5FFF9F9
      F9FFFCFCFCFFFFFFFFFFF9F9F9FF1F2130FF000000000000000000000000CBCB
      CBFFB6ADADFFF2EBEBFFFDFDFDFFFAF9F9FFFDFDFDFFEBE4E4FFAB9393FFB7A0
      A3FFEDDCDFFFC5DACCFF7ACBA2FF45CC8EFF29CD84FF23CD82FF35CB88FF5AC8
      94FF95CAACFFD6D3CEFFD2B8BDFFA38B8CFFC2AFAFFFE9E3E3FFEAE5E5FFE8E1
      E1FFE5DCDCFFA38C8BFF2E1306FF000000000000000000000000000000000000
      0000000000000000000000000000EEEDEDFFBBC6C7FFB4B5B7FF4B9EB8FF3971
      B4FF4572C4FF274CAFFF5B49C1FF7267EEFF6F64E9FF6F5FDFFF6F5EDDFF7364
      E4FF332CC4FF7C5C9CFF9562BCFF130DCCFF2D2967FFA7A3A3FFE8E3E3FF0000
      000000000000000000000000000000000000867870FFD8D8D8FFE6E6E6FFEBEB
      EBFFEDEDEDFFEFEFEFFFF1F1F1FFF3F3F3FFF5F5F5FFF6F6F6FFF8F8F8FFFAFA
      FAFFFCFCFCFFFFFFFEFFD1D7FFFF0928FEFF97A0D5FFE9E8E0FFEAEAEAFFECEC
      ECFFEEEEEEFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7F7FFF9F9F9FFFAFAFAFFFCFC
      FCFFFFFFFDFFEFF1FFFF102EFFFF121530FF6B6461FFD3D3D3FFF9F9F9FFFDFD
      FDFFFDFDFDFFFCFCFCFFFAFAFAFFF9F9F9FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5
      F5FFF4F4F4FFF4F4F4FFFDFDFDFFA4A6B0FFA3A4A4FFDEDEDEFFFCFCFCFFFAFA
      FAFFFAFAFAFFFAFAFAFFFCFCFCFFFDFDFDFFFBFBFBFFFCFCFCFFF8F8F8FFF5F5
      F5FFF4F4F4FFF7F7F7FFF7F7F7FF1D1F2EFF0000000000000000000000000000
      0000A5A4A4FFCABBBBFFF4F0F0FFFDFDFDFFF9F8F8FFD7CBCCFFE5D0D5FFCEDD
      D1FF4CC58AFF10D67CFF17EC8FFF31F8A5FF2EFFACFF23FFAAFF0DF997FF00F0
      86FF00E279FF18CA78FF7FC29EFFD9CCCCFFBDA6A8FFCCBEBEFFEEE9E9FFEAE4
      E4FFC9B6B6FF615755FF2B1910FF000000000000000000000000000000000000
      00000000000000000000EFEBEBFF76B4BEFF4DB8C9FF23509FFF3937BBFF6DB5
      F5FF66BAEFFF6173E1FF6D5CE1FF7060E1FF6F64E8FF6F63E6FF6F5EDDFF7360
      DDFF6052DCFF2A28B5FFDAB2B7FF915FBBFF120CCCFF2E2B6BFFAAA6A6FFE8E2
      E2FF000000000000000000000000000000007F756FFFDDDDDDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFFFBFBFBFFF9F9F9FFF1F1F1FFF0F0F0FFEFEFEFFFECEC
      ECFFEBEBEBFFEFEFEAFFCED3FCFF0827FDFF949CD2FFFFFFF9FFFCFCFCFFFAFA
      FAFFFAFAFAFFF1F1F1FFE8E8E8FFF5F5F5FFF0F0F0FFE6E6E6FFF1F1F1FFEBEB
      EBFFECEBE9FFE6E8F7FF102FFFFF11122DFF66615EFFCDCDCDFFFCFCFCFFEFEF
      EFFFE4E4E4FFE6E6E6FFE9E9E9FFEAEAEAFFE9E9E9FFE7E7E7FFE4E4E4FFE1E1
      E1FFDEDEDEFFDCDCDCFFF7F7F7FFA4A6B0FF9C9C9DFFDCDCDCFFFEFEFEFFF5F5
      F5FFF4F4F4FFECECECFFCFCFCFFFC4C4C4FFCECECEFFBDBDBDFFD0D0D0FFE4E4
      E4FFDDDDDDFFE2E2E2FFF3F3F3FF1D1D2CFF0000000000000000000000000000
      000000000000A09C9CFFDDD1D1FFF9F7F7FFD7CCCCFFE6D3D8FFA1D0B3FF1AC8
      71FF62F2AFFFC8FFE6FFF7FFFCFFF7FAF9FFF4F9F7FFEFFFF9FFBFFDE3FF77F6
      BBFF42EF9AFF14EA80FF00D867FF3CB877FFC8C9C2FFBFA7AAFFCEC0C0FFDDD2
      D2FF9B8888FF8E8C8CFF00000000000000000000000000000000000000000000
      00000000000000000000CEC4C4FF5AC6D0FF3D407CFF2213ADFF473AB7FF695A
      D8FF715FE5FF7167F1FF6F68F0FF6F62E3FF6F5FDEFF6F63E6FF6F62E5FF6F5E
      DCFF7461DEFF372DC7FF6963B8FFFFDDC3FF8B58B9FF120CCCFF2F2C6BFF9E96
      96FF998686FF00000000000000000000000084807EFFD8D8D8FFF4F4F4FF9595
      95FFA2A2A2FF919191FFB7B7B7FFB4B4B4FFECECECFFE3E3E3FFE0E0E0FFDEDE
      DEFFD9D9D9FFE0DFD7FFCBD0F8FF0827FDFF8F96CCFFFFFEF6FFF6F6F6FFF3F3
      F3FFE2E2E2FFBDBDBDFFB4B4B4FF858585FF7F7F7FFFB1B1B1FFBFBFBFFFDDDD
      DDFFDBDAD6FFDEE0EFFF112FFFFF0D0D28FF676564FFC8C8C8FFF8F8F8FF7D7D
      7DFF797979FF686868FF7E7E7EFF9D9D9DFFDCDCDCFFE4E4E4FFE1E1E1FFDEDE
      DEFFD9D9D9FFD4D4D4FFF2F2F2FFA3A5AFFF959596FFD8D8D8FFFBFBFBFFF1F1
      F1FFF6F6F6FFB8B8B8FFCACACAFF949494FF767676FF959595FFB3B3B3FFC0C0
      C0FFDBDBDBFFDBDBDBFFF1F1F1FF1A1A29FF0000000000000000000000000000
      000000000000BCBCBCFFB5ADADFFD0C1C1FFE7D5DAFFA0D0B1FF13C769FFB0FB
      D6FFFFFFFFFFFFFFFFFFFAF6F8FFC7C3C4FFD6D3D4FFFFFFFFFFFFFFFFFFEAFD
      F5FF87F2BCFF5FE99EFF35E17FFF00D75DFF29B368FFCCCAC4FFBAA1A4FFB39E
      9EFF888585FF0000000000000000000000000000000000000000000000000000
      0000AAAAAAFF8B9697FF8B8B8DFF51A6C0FF3972B5FF4572C3FF274DB2FF5B52
      D2FF7266EAFF6F62E3FF6F68EFFF6F66EDFF6F61E3FF6F5EDDFF6F63E5FF6F61
      E2FF715FDBFF6755DAFF221BACFFD9C0C0FFFFDFC2FF8A56B8FF120DCBFF2924
      63FF615F5FFFB6B6B6FF00000000000000007F7C7AFFD4D4D4FFE6E6E6FF5F5F
      5FFF656565FF4B4B4BFF5C5C5CFF797979FFF2F2F2FFE1E1E1FFDFDFDFFFDBDB
      DBFFD4D4D4FFD8D7D1FFC8CEF6FF0827FDFF8890C5FFFDFCF3FFF1F1F1FFF0F0
      F0FFD9D9D9FFB5B5B5FF9B9B9BFFBCBCBCFFA6A6A6FF909090FFA9A9A9FFD9D9
      D9FFD5D4D0FFD9DCEBFF112FFFFF0B0D29FF636160FFBEBEBEFFF8F8F8FF9C9C
      9CFF808080FF676767FF727272FF7F7F7FFFDDDDDDFFE4E4E4FFE0E0E0FFDCDC
      DCFFD6D6D6FFCFCFCFFFEDEDEDFFA2A4AEFF8E8E8FFFD3D3D3FFF9F9F9FFEDED
      EDFFEFEFEFFFCDCDCDFF939393FFA9A9A9FFEDEDEDFF8B8B8BFF767676FFD1D1
      D1FFD6D6D6FFD5D5D5FFEEEEEEFF191A2AFF0000000000000000000000000000
      00000000000000000000B6B4B4FFD7C3C7FFCDDED1FF0EBA59FFA4F2C7FFFFFF
      FFFFFFFFFFFFEDECECFF9D9D9DFF898989FF999999FFF2F1F1FFFEFCFCFFFFFB
      FFFFDDF6E9FF44E28BFF4CDF89FF33D670FF00CC4EFF45B071FFDECDD0FF8974
      74FF9C9C9CFF000000000000000000000000000000000000000000000000C1C1
      C1FF5997A1FF41ACBDFF204E9DFF3937BAFF6DB8F9FF66B9EFFF616DD9FF6D64
      EEFF706BF4FF6F63E5FF6F62E3FF6F67EDFF6F66EBFF6F60E1FF6F5EDDFF6F61
      E3FF7464E3FF5B4BD8FF271FAAFFE3BCACFFFFE8C4FFFED7BFFF8857BBFF1511
      CDFF2A295EFF9F9F9FFF00000000000000007A7776FFCACACAFFF8F8F8FFD5D5
      D5FFB5B5B5FFB3B3B3FFC0C0C0FFACACACFFECECECFFE3E3E3FFDFDFDFFFDBDB
      DBFFD6D6D6FFD8D7D0FFC4CBF4FF0826FDFF828ABFFFFBF9F1FFEDEDEDFFE9E9
      E9FFEDEDEDFFAFAFAFFF9C9C9CFFF5F5F5FFD1D1D1FF434343FFC5C5C5FFDDDD
      DDFFD6D5D1FFD5D8E7FF112FFFFF10102DFF5F5E5EFFB7B7B7FFF5F5F5FFEEEE
      EEFFE2E2E2FFD6D6D6FFE8E8E8FFD0D0D0FFE5E5E5FFE5E5E5FFE0E0E0FFDCDC
      DCFFD8D8D8FFD3D3D3FFEAEAEAFFA2A4AEFF89898AFFCDCDCDFFF6F6F6FFE8E8
      E8FFE7E7E7FFF0F0F0FF9B9B9BFFD4D4D4FFF6F6F6FF929292FF747474FFE2E2
      E2FFD7D7D7FFD6D6D6FFEBEBEBFF1C1C2CFF0000000000000000000000000000
      00000000000000000000A09B9BFFF8ECEEFF41B971FF40D57AFFFFF7FBFFFFFD
      FFFFE5E4E4FF8A8989FF747474FF7D7D7DFF7A7A7AFFC9C8C8FFFCFAFAFFF6F2
      F3FFFFF5FCFF75E2A2FF07CE53FF32D26BFF1BCB53FF00B942FF96BFA2FFCBB0
      B5FF747171FF000000000000000000000000000000000000000000000000BEC0
      C0FF4DBAC4FF373D79FF2213ADFF4739B5FF695FE0FF7168F6FF7164ECFF6F62
      E4FF6F69F1FF6F69F2FF6F63E5FF6F61E2FF6F66EBFF7267E9FF7364E1FF7866
      DFFF6558DFFF2822B4FFA58AA9FFFFDAB0FFFFD1AAFFFFEDCCFFF9C1B5FF3922
      DDFF11108CFF9E9E9EFF00000000000000007A7A7AFFC5C5C5FFF4F4F4FFEAEA
      EAFFF0F0F0FFF2F2F2FFEFEFEFFFEBEBEBFFE6E6E6FFE2E2E2FFDFDFDFFFDBDB
      DBFFD8D8D8FFDAD9D2FFC2C9F1FF0826FDFF7E86BBFFF9F7EEFFE8E8E8FFE8E8
      E8FFEDEDEDFFE3E3E3FFAEAEAEFFE9E9E9FFC0C0C0FF7C7C7CFFDCDCDCFFDADA
      DAFFD9D8D4FFD4D5E5FF112FFFFF0C0E2AFF5F5F5FFFB5B5B5FFF1F1F1FFE8E8
      E8FFEDEDEDFFF1F1F1FFEDEDEDFFEDEDEDFFE7E7E7FFE3E3E3FFE0E0E0FFDCDC
      DCFFDADADAFFD7D7D7FFE8E8E8FFA1A3ADFF888889FFCBCBCBFFF3F3F3FFE7E7
      E7FFEDEDEDFFF0F0F0FFD7D7D7FFB9B9B9FFDEDEDEFF8D8D8DFFBFBFBFFFE1E1
      E1FFDADADAFFD8D8D8FFE8E8E8FF1A1B2BFF0000000000000000000000000000
      000000000000ADADADFFC3B5B8FFC5DFCDFF00B13BFF92DEA6FFFFFAFFFFD9D7
      D7FF727272FF5E5E5EFF6B6B6BFF6D6D6DFF686868FF939191FFF3EFEFFFF1ED
      EDFFF9EDF2FFC0E6CEFF03C94AFF03C343FF1BC24AFF02C03AFF2BA757FF9686
      87FF989494FF00000000000000000000000000000000D1D1D1FF9CA7A8FF9FA5
      A7FF4DA4BEFF3972B5FF4573C5FF274CAFFF5B49C2FF726AF3FF6F6CF6FF6F65
      EAFF6F61E3FF6F68F0FF6F68F1FF7264E6FF796AE4FF7A71EBFF7E74EBFF6B5D
      DFFF2921B1FFA28DB1FFFFE5BEFFFFD3ADFFFFDCB8FFFFE5C8FFA672B6FF1811
      C3FF4E4B70FFC0C0C0FF00000000000000007C7C7CFFC5C5C5FFF1F1F1FFEAEA
      EAFFEFEFEFFFEEEEEEFFECECECFFECECE9FFEAE9E6FFE7E6E3FFE4E3E0FFE2E1
      DEFFE2E2DEFFE2E0D6FFC3C9EEFF0826FCFF7E86BBFFF6F5ECFFE9E9E9FFEFEF
      EFFFEEEEEEFFF0F0F0FFCDCDCDFFC2C2C2FF9D9D9DFFC8C8C8FFE3E3E3FFDEDE
      DEFFDFDFDBFFD2D5E4FF102FFFFF0C0D2AFF606060FFB5B5B5FFF0F0F0FFEAEA
      EAFFF0F0F0FFEEEEEEFFECECECFFEAEAEAFFE6E6E6FFE4E4E4FFE1E1E1FFDFDF
      DFFFDFDFDFFFDDDDDDFFE7E7E7FF9FA1ABFF89898AFFCBCBCBFFF1F1F1FFECEC
      ECFFEFEFEFFFEDEDEDFFEEEEEEFFC1C1C1FFAAAAAAFFA2A2A2FFE6E6E6FFE0E0
      E0FFE0E0E0FFDCDCDCFFE6E6E6FF1A1A2BFF00000000DADADAFFBCBCBCFF9B9B
      9BFF716D6DFF6F6767FFEEDDE3FF76C490FF00B32BFFB2DEB6FFD1C4CBFF5554
      54FF494949FF585858FF5D5D5DFF606060FF5E5E5EFF646464FFD6D1D1FFEFEA
      EAFFEFE6E9FFDCE3DCFF0EC44BFF00BC35FF04B833FF05B82EFF01AB38FF727B
      74FF00000000000000000000000000000000A0A1A1FF68A6B0FF40ABBCFF1D4B
      9AFF3737BAFF6DB6F5FF66B7ECFF6175E6FF6D61E9FF7061E2FF6F69F0FF6F6C
      F6FF6E64EAFF6E60E3FF726BECFF716BE4FF796BDCFF8476E3FF7368E6FF302A
      BBFFA48EB1FFFFE3B8FFFFDBBAFFFFE1C2FFFFE6CAFFA770B4FF150DC1FF383C
      61FFC6C6C6FF0000000000000000000000007B7B7BFFC5C5C5FFF3F3F3FFF1F1
      F1FFF0F0F0FFEEEEEFFFF0EFECFFE7E7EBFFDCDEE9FFDBDCE7FFDADBE6FFDADB
      E6FFDBDDE7FFD8D9DDFFB4BBEEFF0625FCFF7E86BBFFF6F4ECFFF0F0F0FFF2F2
      F2FFEFEFEFFFF0F0F0FFD9D9D9FFA2A2A2FFA5A5A5FFE5E5E5FFE6E6E6FFE5E5
      E5FFE6E5E2FFD6D8E2FF112FFFFF0D0E2CFF606060FFB5B5B5FFF0F0F0FFF0F0
      F0FFF2F2F2FFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE7E7E7FFE6E6E6FFE6E6
      E6FFE6E6E6FFE3E3E3FFE7E7E7FF9C9EA8FF878788FFCBCBCBFFF5F5F5FFF1F1
      F1FFF0F0F0FFEFEFEFFFEFEFEFFFBEBEBEFF9A9A9AFFC3C3C3FFECECECFFE6E6
      E6FFE7E7E7FFDFDFDFFFE7E7E7FF1B1C2CFF888787FF827C7CFF847777FF9E8C
      8CFFB8A6A6FFCAB7B8FFEEE5E7FF3FB363FF00AE1EFFA6D5ABFFB5A7AEFF6867
      67FF636363FF606060FF666666FF6B6B6BFF6B6B6BFF646464FFADAAAAFFF1EB
      EBFFEBE0E4FFD0DBCFFF0BBE40FF00B72DFF00B229FF01AC1EFF02B832FF4D70
      58FF000000000000000000000000000000007C7E7FFF43AEB9FF292966FF2313
      ADFF473BB8FF695EE0FF715EE3FF7166EFFF6F6DF7FF6F67EDFF6E5FE2FF6D67
      F0FF7470F6FF847BEFFF6C65D1FF4A46B6FF6164D5FF615CD6FF251CA9FF8371
      99FFFEE0BDFFFFDCBAFFFFE0C0FFFFE9CFFFA771B4FF150CC1FF015A41FF0000
      0000000000000000000000000000000000006E6F6FFFC7C7C7FFF8F8F8FFF6F6
      F6FFF5F5F5FFF9F8F3FFD8DCF3FF344DFBFF122DFEFF1230FEFF1330FEFF1330
      FEFF1230FEFF122FFCFF0D2AFEFF0018FEFF7780BDFFF9F7EEFFF6F6F6FFF5F5
      F5FFF3F3F3FFF4F4F2FFF5F3E8FFD1CFC1FFE2E0D3FFFCFBEEFFFCFAEDFFFCFA
      EDFFFFFCE8FFAEB4E5FF0825FFFF11122AFF5C5D5DFFB8B8B8FFF4F4F4FFF8F8
      F8FFF7F7F7FFF6F6F6FFF4F4F4FFF3F3F3FFF1F1F1FFF0F0F0FFF1F1F1FFF1F1
      F1FFF2F2F2FFEFEFEFFFDDDDDDFFA1A2A8FF909191FFC8C8C8FFF9F9F9FFF7F7
      F7FFF5F5F5FFF4F4F4FFF4F4F4FFE3E3E3FFCDCDCDFFEBEBEBFFF3F3F3FFF2F2
      F2FFF4F4F4FFEAEAEAFFD4D4D4FF141526FF7E7A7AFFEDE0E0FFF7F1F1FFFBF9
      F9FFFFFFFFFFEBE3E4FFE5E1E0FF23A949FF00A60CFF75C27EFFF7E4EDFFEEE8
      E9FFD5D1D1FFB0ADADFF929292FF848484FF828282FF808080FF999797FFEBE7
      E7FFF3E2E9FFA0CFA9FF02B731FF00B227FF00AC1FFF00A616FF01B526FF4073
      4FFFCACACAFF0000000000000000000000007A7676FF5CB1CDFF3872B4FF4572
      C4FF264CB1FF5A51D2FF716AF4FF6D5EE1FF6C64EDFF6E6BF5FF766EEEFF8578
      E6FF918CF4FF9793F9FF827CE2FF626AD3FF6271EEFF2127BBFF4472C5FF76A4
      B5FF7C8A94FFBAA693FFFEE1C7FFA974B7FF150DC1FF005134FF000000000000
      0000000000000000000000000000000000006E6A6AFFB1BBBEFFEDEDEDFFEBEB
      EBFFEBEBEBFFF5F3E9FFA6B0F3FF001EFFFF6D7DEBFF8491EBFF8390EEFF8592
      EFFF8694F1FF8997F4FF8B98F5FF95A1F5FFADAFC0FFE6E6E3FFE9E9E9FFE9E9
      E9FFE9E9E7FFE1E2E9FF9DA9F7FF94A1FDFF95A2FBFF93A0F8FF93A0F8FF95A1
      F9FF929FF6FF223EFEFF1C2BC2FF1E1E1EFF696565FF909394FFE4E4E4FFE1E1
      E1FFE1E1E1FFDFDFDFFFDFDFE0FFDEDEE0FFDFDFDFFFDFDFDFFFDEDEDEFFDEDE
      DEFFDFDFDFFFDBDBDBFFBCBCBCFFE5E5E5FFDADADAFFC8C8C8FFE4E4E4FFE4E4
      E4FFE3E3E3FFE1E1E1FFDFDFDFFFDFDFE0FFE3E3E4FFDDDDDEFFDBDBDCFFDBDB
      DCFFDDDDDEFFCECED1FF3B4287FF1E1E1EFF7F7C7CFFFFFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9E1E2FFE3E0DEFF1CA63FFF00A207FF21AA30FFD6D5CFFFF7EE
      F2FFF7F3F3FFF8F4F4FFF0ECECFFDBD8D8FFC2C0C0FFB0B0B0FFA9A9A9FFE4DF
      E1FFF0E3E8FF5BC271FF13B837FF19B436FF05A91CFF00A00EFF01AE1DFF3C75
      4BFFCBCBCBFF0000000000000000000000005D5A81FF242DBAFF69B0F0FF69BD
      F1FF6275E5FF6E65EFFF726EF5FF7B75F2FF867AE6FF928BF2FF9B99F9FF9E99
      F4FF9D94EBFF9D98F4FFA19EF9FF747EF0FF282ABBFF5A87D6FF84DCFFFF44AA
      FFFF208CF5FF4D7BA6FF754D79FF1810B6FF035338FF00000000000000000000
      00000000000000000000000000000000000000000000333BB3FF75A4CEFF73AB
      CDFF6F7BC5FF7771CAFF585CBEFF0625FAFFC3C7D6FFEBE8D6FFEAE9DCFFEEEC
      DFFFF1F0E3FFF5F3E6FFF8F6E9FFFDFBEFFFEFEEECFFDADADBFFDADADAFFDDDD
      DDFFE1E1DDFFB8BEE4FF0020FEFF0213EDFF001EE8FF0026E4FF0028E3FF0721
      E9FF1529FAFF3243DDFF737478FF0000000000000000323AAFFF7A9FC0FF76A1
      BCFF737DB5FF7975B9FF5C5FABFF3342ACFFBEBEBEFFC3C3C3FFC8C8C8FFCACA
      CAFFCCCCCCFFCDCDCDFFDEDEDEFFEFEFEFFFF3F3F3FFE8E8E8FFDEDEDEFFE1E1
      E1FFE4E4E4FFE6E6E6FFD0D0D0FF1A2392FF142BC7FF1C39CBFF1A39C8FF1F33
      CDFF2A3ADAFF3C4AC3FF0000000000000000807C7CFFFBF5F5FFFFFFFFFFFFFF
      FFFFFFFFFFFFEBE4E6FFE8E3E3FF28A443FF009C03FF05A111FF7EC382FFF0E4
      E9FFFCF7FAFFFAF8F8FFF9F7F7FFFCFAFAFFFCF9F9FFF5F4F4FFE9E6E8FFECE0
      E7FF9FD0A5FF33BD4EFF36BC4CFF3ABA4BFF26AF33FF009A04FF01AB17FF4974
      54FF00000000000000000000000000000000555288FF241EBBFF8073EAFF9F93
      EFFFA19BFAFF9F9CF8FFA19EF8FFA6A4F9FFA9A5F7FFA99FEEFFA8A2F4FFA8A5
      FAFFA7A2F4FFAFA6F0FF9690F0FF282BBBFF5382D6FF86DDFFFF25C4FFFF129E
      FBFF288CFAFF2590FBFF1347A8FF144038FF26AE33FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007774C8FF0726FCFFB3B7D4FFE3E3DEFFE6E6E6FFE9E9
      E9FFEBEBEBFFEEEEEEFFF0F0F0FFF2F2F2FFF6F6F6FFFAFAFAFFFDFDFDFFFFFF
      FFFFFFFFFFFFD6DCFFFF0625FDFF0C263DFF24A636FF009310FF01A320FF466F
      5AFFC7C7D3FFD0D0D1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000182CBBFFCDCDCDFFDDDDDDFFE8E8E8FFEBEB
      EBFFEDEDEDFFF0F0F0FFF1F1F1FFF1F1F1FFF4F4F4FFF7F7F7FFFBFBFBFFFEFE
      FEFFFFFFFFFFFFFFFFFFE6E6E6FF0C1E2EFF0000000000000000000000000000
      0000000000000000000000000000000000008E8C8CFFDBCFCFFFCEC1C1FFD4C9
      C9FFDED6D6FFDFD4D5FFF2E8ECFF4DAE60FF009800FF2EAA2FFF52BE59FF8DC9
      8FFFDFE1DAFFFBF2F8FFFFFAFEFFFFFCFFFFFFFCFFFFFFF8FDFFEFECEAFFA3D2
      A7FF51C363FF50C260FF53C05FFF54BE5CFF50BA54FF0C9D0CFF00A114FF7286
      76FF0000000000000000000000000000000086848CFF3831AAFF625EDDFF9E96
      EFFFB2ACF2FFB3B1FAFFB2B0F9FFB2AFF8FFB2AFF9FFB2AEF8FFB2AAF0FFB2AE
      F6FFBAB8FDFF9E9AF1FF3B2EB1FF7486CDFF7AD8FFFF2ED1FFFF00B9FFFF01BE
      FFFF18A1FAFF298DF9FF2793FDFF216575FF3A863DFF0C9C0CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007D7CC2FF0625FCFFB3B8D4FFFFFFFAFFFBFBFBFFFCFC
      FCFFFBFBFBFFF6F6F6FFF4F4F4FFF3F3F3FFF1F1F1FFF0F0F0FFEEEEEEFFEDED
      EDFFF0EFEBFFCDD3FBFF0827FFFF143F5CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B2FB9FFC5C5C5FFF6F6F6FFFDFDFDFFFCFC
      FCFFFCFCFCFFF9F9F9FFF6F6F6FFF6F6F6FFF4F4F4FFF3F3F3FFF2F2F2FFF1F1
      F1FFEFEFEFFFF6F6F6FFE3E3E3FF153245FF0000000000000000000000000000
      00000000000000000000000000000000000000000000FCFBFBFFEDEBEBFFDFDA
      DAFFBCB3B3FFAB9E9EFFEEDFE5FF89C294FF009402FF4AB549FF73C774FF67C4
      6BFF7BC97EFFA7D1A6FFC2D9BFFFCEDCCBFFC7DAC3FFAFD5AFFF84CD8BFF67CA
      72FF6CCA75FF6EC975FF6EC772FF6FC571FF6EC36DFF1AA81CFF038C13FF9BA4
      9BFF0000000000000000000000000000000000000000ABA8DAFF3530BBFF9B98
      F0FFA7A1EFFFBCB7F5FFBDBBFBFFBDBAFAFFBDBBF9FFBDBBFAFFBDBAF9FFC5BE
      F5FFA8A4F2FF3735BEFFA197CAFFFEE6CFFF4ED8F7FF13EEFFFF0BCEFFFF00B9
      FFFF01BEFFFF18A1FAFF298DFAFF2895FFFF26657EFF137814FF038B13FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008584C4FF0624FBFFAFB3CFFFFFFEF8FFF5F5F5FFE6E6
      E6FFDDDDDDFFEBEBEBFFEAEAEAFFE7E7E7FFE4E4E4FFE0E0E0FFDFDFDFFFDBDB
      DBFFDFDED7FFC7CDF5FF0827FFFF185BB3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A2DB7FFBDBDBDFFF3F3F3FFF9F9F9FFEFEF
      EFFFE7E7E7FFEAEAEAFFEBEBEBFFE8E8E8FFE6E6E6FFE2E2E2FFE0E0E0FFDDDD
      DDFFD8D8D8FFE6E6E6FFE0E0E0FF18447FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B4ABAEFFE0EAE0FF079117FF4BBA4FFF92D291FF88CF
      88FF85CF86FF81CF83FF85D088FF88D08BFF86D08AFF81D086FF84D188FF88D1
      8BFF89D08AFF89D089FF89CF88FF8AD08AFF86CE84FF13AC1FFF027708FF43B5
      43FF0000000000000000000000000000000000000000FBFBFDFF4B48B6FF817D
      E3FFB5B3F4FFB3AEF1FFC8C2F7FFC9C7FBFFC9C7FBFFC9C7FAFFD2D0FEFFB1AE
      F5FF3930B2FF9E96CBFFFFFFFFFFFFF4E8FF6FEAEEFF11F5FFFF1CEEFFFF0BCD
      FFFF00BAFFFF01BEFFFF18A1FAFF298DFAFF2894FFFF13606DFF015506FF42B4
      42FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C89C1FF0524FAFFA8ACC8FFFDFCF6FFF7F7F7FF7979
      79FF6F6F6FFFEAEAEAFFE6E6E6FFE3E3E3FFE2E2E2FFE0E0E0FFDDDDDDFFD6D6
      D6FFD8D7D0FFC2C9F1FF0827FFFF1956B0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000192DB7FFB5B5B5FFF1F1F1FFFBFBFBFFB3B3
      B3FF636363FFD8D8D8FFEAEAEAFFE4E4E4FFE3E3E3FFE1E1E1FFDEDEDEFFDADA
      DAFFD3D3D3FFE0E0E0FFDEDEDEFF19417DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000939292FFFDF3F9FF6EB376FF18A125FFA7DDA6FFA7DB
      A7FFA4DAA4FFA4DAA4FFA3DAA3FFA3DAA3FFA3DAA3FFA4DAA4FFA4DAA4FFA4DA
      A4FFA4DAA4FFA4DAA4FFA4DAA4FFB0DEAFFF75CE77FF018E0DFF58A758FF0000
      0000000000000000000000000000000000000000000000000000BEBDE3FF3633
      BAFFC1C1F6FFBFBDF4FFC2BDF4FFD3CFF8FFD4D2FBFFDCDBFEFFBBB9F6FF3A38
      BDFF9D99D2FFFFF1D2FFFFF4EAFFFFFFFEFFF3EBE0FF44CEECFF15F4FFFF1CEE
      FFFF0BCEFFFF00B9FFFF01BEFFFF18A1FAFF2A8DFAFF2895FFFF215E7AFF528A
      52FFD2D2D2FF0000000000000000000000000000000000000000000000000000
      000000000000000000008886BFFF0423F9FFA2A6C1FFF9F9F3FFF2F2F2FF9898
      98FF747474FFEAEAEAFFE9E9E9FFE8E8E8FFE6E6E6FFE2E2E2FFDEDEDEFFDADA
      DAFFDAD9D2FFBFC5EDFF0827FFFF0F62B0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000182CB5FFAEAEAEFFEEEEEEFFF7F7F7FFBDBD
      BDFF464646FFD2D2D2FFEBEBEBFFE7E7E7FFE6E6E6FFE4E4E4FFE1E1E1FFDCDC
      DCFFD5D5D5FFDEDEDEFFDBDBDBFF12497DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000959494FFC5B5B7FFEFF1EEFF2A9735FF57BD5EFFCDEC
      CCFFC4E7C4FFBFE6BFFFBFE6BFFFBFE6BFFFBFE6BFFFBFE6BFFFBFE6BFFFBFE6
      BFFFBFE6BFFFC0E6C0FFCCEACCFFADE2AEFF1FA829FF5F7F5FFF000000000000
      0000000000000000000000000000000000000000000000000000000000005A58
      BDFF7F7CDDFFE3E2FCFFCBCAF6FFD1CEF6FFE7E4FDFFC4C3F7FF3C3ABCFF9D9B
      D7FFFFFFFFFFFFFCF6FFFFEDD9FFFFF4E0FFAC77BBFF2023BBFF2ABED7FF1CF6
      FFFF1CEEFFFF0BCDFFFF00BAFFFF01BEFFFF18A1FAFF2A8DFAFF2894FFFF3C69
      94FFA3A3A3FFBBBBBBFF00000000000000000000000000000000000000000000
      000000000000000000008E8FC1FF0423F9FF9EA2BDFFF7F6F1FFE8E8E8FFE2E2
      E2FFE5E5E5FFEBEBEBFFEAEAEAFFE8E8E8FFE5E5E5FFE1E1E1FFDEDEDEFFDADA
      DAFFDDDCD5FFBDC2EBFF0827FFFF0174B3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000192DB6FFA9A9A9FFEBEBEBFFEDEDEDFFDFDF
      DFFFDADADAFFE8E8E8FFEBEBEBFFE8E8E8FFE6E6E6FFE4E4E4FFE0E0E0FFDCDC
      DCFFD8D8D8FFDFDFDFFFD8D8D8FF09557FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A6E4EFF796057FFD9CCCCFFEFE4E8FFD5E1D5FF1E9028FF5BBC
      61FFD6F1D7FFEBF7EBFFE2F3E2FFDFF2DFFFDEF2DEFFDEF2DEFFDEF2DEFFDFF2
      DFFFE7F5E7FFE9F7E9FFAFE4AFFF28A92FFF3C6D3CFF949394FF000000000000
      000000000000000000000000000000000000000000000000000000000000A39E
      B9FF2924AAFFCCC8F0FFE3E1F5FFE4E2FBFFC5C1F4FF4942B9FF9E9FD9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF7E4FFA87DBCFF150EC2FF6F7990FFC6DFCEFF50F1
      F6FF1CF0FFFF1CEEFFFF0BCEFFFF00BAFFFF01BEFFFF18A1FAFF298DFAFF2894
      FFFF36638EFF545453FF848484FF000000000000000000000000000000000000
      000000000000000000009F9FC0FF0423F9FF9EA2BDFFF4F3EEFFE8E8E8FFF1F1
      F1FFF0F0F0FFECECECFFE9E9E9FFE7E7E7FFE4E4E4FFE1E1E1FFDFDFDFFFDEDE
      DEFFE1E0D9FFBBC1EAFF0827FFFF0072B3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000192DB6FFA9A9A9FFEAEAEAFFEAEAEAFFEDED
      EDFFF2F2F2FFEDEDEDFFEBEBEBFFE7E7E7FFE5E5E5FFE3E3E3FFDFDFDFFFDDDD
      DDFFDBDBDBFFE0E0E0FFD6D6D6FF08547FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000905933FFCDBDBDFFFFFFFFFFEFEBEBFFEFE1E7FFD9E4DAFF3D99
      42FF279B29FF88D187FFD6F2D6FFF0FAF0FFF8FDF7FFF8FDF8FFF5FCF5FFEAF8
      EAFFB8E6B8FF62C364FF119117FF789778FFDEDEDEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000057306CFF7572D7FFFDFCFCFFD7D6FAFF2C2BB7FF422FA7FFFFE7D9FFFFFF
      FFFFFFFFFFFFFFF7E5FFA87EBFFF150EC2FF787BA0FFF7FCF7FF00000000DBF6
      EBFF45ECECFF1CEEFFFF1CEEFFFF0BCDFFFF00B9FFFF01BEFFFF18A1FAFF2A8D
      FAFF2894FFFF35608DFF555555FF404040FF0000000000000000000000000000
      00000000000000000000B0B0C4FF0424F9FFA1A5BBFFF4F3EEFFEFEFEFFFF1F1
      F1FFEEEEEEFFECECECFFEAEAEAFFE7E7E7FFE5E5E5FFE4E4E4FFE4E4E4FFE5E5
      E5FFE6E5DEFFBFC4E8FF0928FEFF077CB2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000192DB5FFA9A9A9FFE9E9E9FFEDEDEDFFF1F1
      F1FFEEEEEEFFEDEDEDFFEAEAEAFFE7E7E7FFE6E6E6FFE3E3E3FFE2E2E2FFE1E1
      E1FFE2E2E2FFE2E2E2FFD4D4D4FF0C597CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5672DFFA89089FFFAF6F6FFFFFFFFFFFFFFFFFFF0EDECFFEDE1E5FFF7F3
      F5FF94C196FF278D28FF0D8E0FFF2DA52FFF47B248FF48B449FF3DB13FFF1B9B
      1EFF0E8813FF528C52FFBABFBAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F5A3AFF2C28A9FFB2B0EFFF4C49BFFF9595D4FF514EBAFF7053B4FFFCE4
      D7FFFFFAE2FFA881C1FF150EC2FF165140FF0000000000000000000000000000
      00000E8E23FF29D2D0FF1CEEFFFF1CEEFFFF0BCEFFFF00BAFFFF01BEFFFF17A1
      FAFF248DFCFF339EFFFF396181FF3C3C3CFF0000000000000000000000000000
      000000000000000000008382C1FF021EFCFF8D95CAFFFFFFEEFFFFFDF2FFFEFC
      F1FFFCFAEFFFFAF8EDFFF8F6EBFFF7F5EAFFF7F5EAFFF7F5EAFFF7F5EAFFF8F6
      EBFFFAF7E2FF9FA9EAFF0421FFFF13A3C1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000182AB8FFABABABFFE8E8E8FFF2F2F2FFF2F2
      F2FFF0F0F0FFEEEEEEFFECECECFFEAEAEAFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE9E9E9FFE5E5E5FFD5D5D5FF14788CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000966646FFF1E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCFFC2B0B0FFAE9F
      A0FFF0E4EAFFADA4A8FFB3BDB3FF8EB88EFF71A971FF6AA16AFF7BA47BFF9DBB
      9DFFD4D8D4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000817BC3FF2623AEFFA4A3DAFF00000000ECEBF5FF3A33A6FF674C
      B8FF8866C9FF1A13C2FF565C7FFF000000000000000000000000000000000000
      000000000000E2F0F2FF54EDFBFF1CEEFFFF1CEEFFFF0BCEFFFF00B9FFFF01BF
      FFFF3EB0F9FF80D3FDFF5E93B2FF4A4A4AFF0000000000000000000000000000
      000000000000000000002421A6FF283AE9FF223EFAFF99A5F5FFA2ADF6FFA1AC
      F7FFA0ABF6FF9FAAF5FF9EA9F5FF9EA9F5FF9EA9F5FF9EA9F5FF9EA9F5FFA1AB
      F5FF97A3F1FF1F3CFEFF1448D3FF1AE1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002635CCFF8B8EA2FFEFEFEFFFF8F8F8FFF8F8
      F8FFF7F7F7FFF5F5F5FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF5F5F5FFEDEDEDFF79839EFF18CEDDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000896C5CFFEBE3E3FFFFFFFFFFFFFFFFFFF2EBEBFFB39E9BFF6D5A4EFFA3A2
      A2FFDDDADAFFD6D2D3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4DCE0FFE2E1F3FF000000000000000000000000655452FF3533
      A3FF1D1BB7FF706D95FF00000000000000000000000000000000000000000000
      00000000000000000000EBF9FBFF56F0FEFF1CEEFFFF1BEEFFFF09D2FFFF2DAD
      E0FF385660FF6CAFD1FF7C7B80FF000000000000000000000000000000000000
      0000000000000000000000000000E4E6FAFF3F51FAFF0B20F9FF061EF5FF031C
      FAFF021BFBFF071FF9FF0E27FEFF0E27FEFF0F28FFFF0F28FFFF0F28FFFF0F28
      FFFF0F28FFFF384AE6FFCEDAE0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B59DDFFA4A7BFFFAFB1BDFFADAF
      BCFFAAACB9FFA9ABB8FFAAABB8FFABACB9FFABACB9FFABACB9FFACADBAFFACAD
      BAFFB0B1BEFF8E91A8FFAEB8BDFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AFB0
      B1FFBCB2B2FFE3D9D9FFE4DBDBFFE3D9D9FFA89B9BFFCAC9CAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ACAC
      B0FFE2E1EEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFDFFFF54EDFBFF17F0FFFF3EE6FFFF537F
      97FF4D7F97FF929EA8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFB9B2
      B2FFFFF9F9FFB1ABABFFC5C0C0FFC6C1C1FFFBFBFBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2F1F3FF3AD1E2FF70D7FFFF78BD
      E4FF9AA4ADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009293
      92FF928F8EFF8C8E8FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000627577FF47A2C2FF408A
      99FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFAFAFAFFECECECFFD6D6D6FFC0C0C0FFB5B5B5FFB3B3B3FFAEAEAEFF9D9D
      9DFF8D8D8DFF7B7B7BFF434243FF2E292CFF2C2727FF2C2526FF27211FFF3A25
      1BFF302724FF35383AFF313232FF474747FF696969FF7E7E7EFFA4A4A4FFB7B7
      B7FFC9C9C9FFE5E5E5FFF9F9F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000231E1CFF1D1E
      0DFF151E10FF18271AFF162517FF202E20FF2F3D2FFF394739FF4A584AFF5361
      53FF5A685AFF657465FFB5B6B5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ACACACFF7979
      79FF606060FF555555FF2F2E2FFF201C1FFF1F1B1BFF1F1A1AFF181513FF1415
      09FF0F150BFF111B12FF0F1A10FF162016FF202A20FF283128FF404C40FF0000
      0000000000000000000000000000000000000000000000000000EDEDEDFFDBDB
      DBFFC4C4C4FF7691B2FF375B98FF254C95FF244B94FF244A93FF124FA9FF0054
      BEFF0054BEFF0053BDFF0053BCFF0052BCFF0052BBFF0052BBFF0051BAFF0050
      B9FF0050B9FF0050B8FF004FB8FF074AACFF38275BFF2A3071FF004DB5FF204F
      90FF888D92FFB7B7B7FFE1E1E1FFFBFBFBFF000000000000000094989AFF9498
      9AFF94989AFF94989AFF94989AFF94989AFF94989AFF94989AFF94989AFF9498
      9AFF94989AFF94989AFF94989AFF94989AFF94989AFF94989AFF94989AFF9498
      9AFF94989AFF94989AFF94989AFF94989AFF94989AFF94989AFF94989AFF9498
      9AFF94989AFF94989AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000069726DFF048A
      04FF119911FF129712FF109710FF109610FF119812FF129B16FF129F1AFF12A3
      1EFF0FA71FFF02A317FF6E806EFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E8183FFB6B6
      B6FFCDCDCDFFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5C5FFC2C6
      C2FFC2C6C2FFC2C6C2FFC3C7C3FFC3C7C3FFC7CBC7FFC9C9C9FF216825FF0000
      00000000000000000000000000000000000000000000DCDCDCFFB5B5B5FF8C7F
      7AFF8C4D37FF92391FFF943A16FF81481BFF7E4415FF7B3F11FF90270FFF732D
      2FFF34417BFF0076CFFF0075CEFF0075CEFF0074CDFF0074CDFF0074CDFF0074
      CCFF0073CCFF0073CBFF0765BAFF5C0F22FF66102FFF6A0C1FFF630A16FF1C3A
      88FF0C4A9FFF757980FFADADADFFE2E2E2FF000000009D9B9BFFFFFFFFFFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0FFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBFBFBFFF000000008B908BFF53B1
      53FF82D282FF67C367FF6EC86EFF6FC86FFF69C76CFF68CB6FFF67CE71FF68CF
      72FF85DD92FF3AC451FF566856FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B9B9BFFE3E3
      E3FFECECECFFEFEFEFFFEEEEEEFFEDEDEDFFEDEDEDFFECECECFFECECECFFECEC
      ECFFEBEBEBFFEBEBEBFFE6E6E6FFE4E4E4FFE4E4E4FFEEEEEEFF58855CFF0000
      000000000000000000000000000000000000DCDCDCFF8B8B8BFF6C3A25FFA340
      18FF9D5517FF946D13FF67882BFF3E933AFF3A8A29FF368017FF39740CFF4F35
      5DFF80261CFF714439FF19B7D1FF00DBFFFF00DBFFFF00DBFFFF00DBFFFF00DB
      FFFF00DBFFFF08CDEFFF5F2C30FF5D185FFF3B40EFFF3B61FFFF57337FFF6E07
      10FF55132DFF302742FF6A6A6AFFB3B3B3FF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000DEDFDBFFBABAB7FF969694FF818280FF797A
      78FF767675FF767675FF767675FF757574FF797978FF888886FF697667FF5EB3
      5EFF36AF36FF0D9B0DFF7ACA7BFF7ACC7DFF32B33BFF00A008FF00A913FF00AA
      11FF50CD65FF49CA60FF354635FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6B69FFCDCD
      CDFFF2F2F2FFFFFFFFFFFDFDFDFFFAFAFAFFF8F8F8FFF5F5F5FFF4F4F4FFF2F2
      F2FFF0F0F0FFEEEEEEFFEAEAEAFFE8E8E8FFE8E8E8FFD7D7D7FF27732FFF0000
      000000000000000000000000000000000000898D8AFF844520FFA84E1BFFA279
      1DFFB49838FFD2AA2FFF94AC10FF29A41AFF3DA834FF42A83BFF50A355FF597F
      CDFF334B9AFF602D42FF822B1BFF19B5D1FF00D8FFFF00D8FFFF00D8FFFF00D8
      FFFF16B1D0FF721613FF631F60FF3F44FFFF3C47FFFF395CFFFF3C64FFFF4364
      EFFF5A387FFF710000FF4B0C0CFF7E7E7EFF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FFB0A8A7FFC5BFBEFFAEA09FFF938F8DFFE6E7E3FFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF00000000000000000000000000000000000000000000
      000000000000E2E3DFFF9C9D9AFF7B7B7AFF919191FFB1B1B1FFC1C1C1FFCFCF
      CFFFD5D5D5FFD8D8D8FFD7D7D7FFD2D2D2FFC9C9C9FFC0BBC0FF6B8C6BFF5AB1
      5AFF32B332FF0E730EFF4A594BFF81A483FF49B553FF184F1BFF43764AFF08AD
      21FF45CE5FFF48CC62FF261706FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9AFFC4C4
      C4FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFBFB
      FBFFF8F8F8FFF5F5F5FFF2F2F2FFEFEFEFFFECECECFFD0D0D0FF425945FF0000
      000000000000000000000000000000000000875427FFAD501DFFB78E32FFDFB2
      48FFFCB80DFFFFBB00FFE1BF00FF0DC500FF0DC300FF0EC100FF24A17FFF488A
      FDFF6697F8FF4A67BCFF612E44FF704239FF00D6FFFF00D6FFFF00D6FFFF17B1
      D1FF761C15FF692562FF474CFFFF454AFFFF404BFFFF3757FFFF3A5FFFFF3E67
      FFFF416FFFFF4964DFFF710000FF3E403EFF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE0E1DDFFE3E4E1FFE8E9
      E5FFE8E9E5FFE7E8E4FFC2B4B4FFFCF8F8FFECE0E0FF857A79FFDCDDD9FFE8E9
      E5FFE8E9E5FFE8E9E5FFDCDDD9FFDBDCD8FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF00000000000000000000000000000000000000000000
      0000DDDEDAFF858684FFB6B6B6FFE4E4E4FFEAEAEAFFEBEBEBFFEAEAEAFFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFEAEAEAFFF6F1F6FF9DBF9DFF5BB2
      5BFF32B433FF166D18FF544554FFA1A8A2FF4CB659FF404641FF7E777DFF54C8
      6BFF75DE8BFF45CF63FF391200FF00000000845226FF706F6FFF979797FF8C8D
      8BFF868785FF565756FF707070FF898989FF8E8E8EFF919191FF808080FFB8B8
      B8FFEDEDEDFFF9F9F9FFF0F0F0FFE7E7E7FFE1E1E1FFDDDDDDFFDBDBDBFFDADA
      DAFFDDDDDDFFE2E2E2FFEAEAEAFFF0F0F0FFF1F1F1FFCBCBCBFF5A575AFF0000
      000000000000000000000000000000000000AE5C2EFFBD8234FFE8B551FFFDAF
      07FFFFB300FFFFB800FFFFBD00FF22E800FF04ED00FF08E210FF2E78EFFF2E6B
      FFFF2B64FFFF547CF9FF516BCCFF80261EFF2B9BB2FF00D3FFFF2999B1FF7A21
      17FF5C3186FF4F54FFFF4D52FFFF4B50FFFF444EFFFF3553FFFF385AFFFF3C62
      FFFF3F6AFFFF4271FFFF710000FF262B26FF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFABA9A6FF8F8483FFA09F9CFFD8D9
      D5FFE8E9E5FFD1D2CEFFC2B4B3FFE7E0E0FFE1D7D7FF8E7D7CFFC5C5C2FFE8E9
      E5FFE8E9E5FFAEACA9FF968584FF908D8AFFD5D6D2FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF00000000000000000000000000000000000000000000
      00009D9E9BFFE3E3E3FFF9F9F9FFF1F1F1FFEFEFEFFFEEEEEEFFEBEBEBFFE8E8
      E8FFE3E3E3FFDFDFDFFFDFDFDFFFE1E1E1FFE4E4E4FFF4F0F4FFA0C2A0FF5BB2
      5CFF2EB534FF29842EFF867484FFBBBFBBFF50BC60FF676F68FF9F9A9EFF62D1
      7AFF46D567FF17C542FF391200FF00000000884E2DFFDBDBDBFFF0F0F0FFE7E7
      E7FFE1E1E1FFDADADAFFD7D7D7FFD5D5D5FFCDCDCDFFBEBEBEFFA8A8A8FFABAB
      ABFFBEBEBEFFBEBEBEFFB9B9B9FFB8B8B8FFB6B6B6FFB4B4B4FFB1B1B1FFADAD
      ADFFAAAAAAFFA5A5A5FFA1A1A1FFA3A3A3FFAEAEAEFFA7A7A7FF5F5E5FFF4089
      50FF3EBC5BFF17C442FF0000000000000000B35520FFE1AA51FFFDA807FFFFAB
      00FFFFB000FFFFB500FFFFBA00FF6FE200FF00FE00FF14AE7FFF275BFFFF2454
      FFFF214DFFFF1E46FFFF506BF9FF724063FF467985FF338EA3FF871B0BFFD17E
      0DFF3A46E3FF555AFFFF5358FFFF5156FFFF4852FFFF334EFFFF3656FFFF3A5E
      FFFF3D66FFFF416DFFFF710000FF202320FF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFBAB9B7FFE5DDDDFFF1E9E9FFA99696FF8781
      7FFFA09E9BFFA39795FFC9B4B2FFD1BFBDFFCEBAB8FFB19896FF857A79FF9E9C
      99FF9F9897FFC3B1B1FFEBE1E1FFB5A5A5FF9D9C99FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF00000000000000000000000000000000000000000000
      0000A5A5A4FFFFFFFFFFFAFAFAFFF9F9F9FFF6F6F6FFF0F0F0FFE3E3E3FFDCDC
      DCFFDFDFDFFFE2E2E2FFDBDBDBFFD2D2D2FFCBCBCBFFD8D3D8FF8DAF8DFF5CB4
      5EFF2BB537FF35A73FFFA2BEA6FF9BD0A3FF51C765FF89BA92FFA4CFADFF2BC8
      4FFF13CB41FF0CC83CFF391300FF00000000895234FFE1E1E1FFCECECEFFCECE
      CEFFEBEBEBFFF3F3F3FFEBEBEBFFD4D4D4FFC3C3C3FFC8C8C8FFD2D2D2FFD5D5
      D4FFD5D5D5FFD4D4D4FFD3D3D3FFD2D2D2FFD0D0D0FFCECECEFFCCCCCCFFCACA
      CAFFC7C7C7FFC2C2C2FFBEBEBEFFB8B8B8FFAAAAAAFFA0A0A0FF959595FF7579
      76FF376142FF0B7D28FF361200FF00000000B55721FFF1AB3BFFFFA400FFFFA8
      00FFFFAD00FFFFB200FFFFB700FFAED100FF02F310FF1D55EFFF1D44FFFF1A3D
      FFFF1736FFFF142FFFFF162DFEFF794B82FF73453BFF932B0EFFD38213FFFFBD
      15FF3F4CE5FF5C61FFFF5A5FFFFF585DFFFF4C55FFFF3149FFFF3451FFFF3859
      FFFF3B61FFFF3F69FFFF710000FF20201BFF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFDBD4D2FFEDE8E8FFFFFFFFFFF2EDEDFFB9A4
      A4FFDFCCC9FFEBE4E9FFC6D8E7FFADCFE6FFB3D2E7FFCED8E6FFEBDADBFFBBA3
      A0FFB9A5A5FFEBE6E6FFEEE9E9FFC0ACACFFACABA8FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF00000000000000000000000000000000000000000000
      0000BDBEBBFFDBDBDAFFFFFFFFFFFFFFFFFFFDFDFDFFE2E2E2FFE4E4E4FFF3F3
      F3FFF6F6F6FFF9F9F9FFF7F7F7FFF4F4F4FFE3E3E3FFD9D4D9FF9ABC9AFF5DB7
      62FF2DB93EFF14B32AFF65D275FF48C85CFF57D06FFF5BD774FF60DA7CFF1ECB
      4AFF29D458FF13CD46FF391300FF00000000875F48FFB4B4B4FFACACACFFA3A3
      A3FFB8B8B8FFE6E6E6FFC4C4C4FFCACACAFFE5E5DFFFE7E7E3FFE6E6E0FFE2E2
      DDFFD9D9D9FFDEDADEFFDCD8DCFFD3D3D3FFD2D2D2FFCFCFCFFFCDCDCDFFCCCC
      CCFFC9C9C9FFC7C7C7FFC4C4C4FFC2C2C2FFC0C0C0FFC1C1C1FFBDBDBDFFB2B2
      B2FF9C9C9CFF6E736FFF2B1910FF1F1F1AFFB75A22FFF9A21AFFFFA100FFFFA5
      00FFFFAA00FFFFAF00FFFFB400FFFFB900FF09B35FFF1634FFFF132DFFFF1126
      FFFF0E1FFFFF0B18FFFF0812FFFF613184FF973111FFEAA31DFFFFBF1EFFFFBF
      1CFF4351E7FF6267FFFF6065FFFF5E63FFFF5159FFFF2F44FFFF324CFFFF3654
      FFFF395CFFFF3D64FFFF710000FF1E1B16FF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE7E8E4FFD9CECDFFF0ECECFFD7CCCCFFF6E7
      E5FFB6D4EAFF65CBEAFF7EDEF6FFA6E6FAFF85E4F9FF52DAF5FF63CBECFFD2DC
      E9FFD1BBB9FFC1B1B1FFDED2D2FF948B89FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF00000000000000000000000000000000000000000000
      000000000000C4C4C1FFA7A7A6FFD7D7D7FFDBDBDBFFDADADAFFECECECFFE9E9
      E9FFE9E9E9FFE8E8E8FFE8E8E8FFE9E9E9FFECECECFFF1E6F0FF8DAD8DFF5BB8
      61FFB39F57FFAE9143FF7CD689FF60D377FF5FD678FF5FD77AFF61DB80FF22D3
      53FF2EE063FF13D44BFF391300FF00000000A5958BFFC9C9C9FFC2C2C2FFBBBB
      BBFFAEAEAEFFC3C3C3FFD0D0CFFFECECE9FF9898DEFFC2C2DEFF9F9FDDFFB9B9
      DCFFE7E3E2FF9AC79BFFADCCADFFDCD8DCFFD3D3D3FFD1D1D1FFCDCDCDFFD0D0
      D0FFCDCDCDFFC8C8C8FFCBCBCBFFC8C8C8FFC4C4C4FFC7C7C7FFC5C5C5FFBEBE
      BEFFBBBBBBFFA2A2A2FF6C6968FF171511FFB95D23FFF99F1AFFFF9E00FFFFA2
      00FFFFA700FFFFAC00FFFFB100FFFFB600FFFFBA00FFFFBF00FFFFC400FFFFCA
      00FFFFCE00FFFFD300FFFFD800FFE0B635FFE9A321FFFFC228FFFFC126FFFFC1
      23FF4756EAFF686DFFFF666BFFFF6469FFFF555CFFFF2D40FFFF3048FFFF3450
      FFFF3758FFFF3A5FFFFF710000FF131613FF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFDAD9D5FFC4B6B6FFF8E9E7FF93CF
      E8FF11D6F3FF5DF6FEFFB7E2E2FFDDE7E6FFB4ECEDFF69F3F7FF12F0FFFF18C8
      F1FFC7D9EAFFCEB9B6FFA89090FF8D8685FFAEADABFFCFD0CDFFDFE0DCFFE5E6
      E2FFE8E9E5FFE8E9E5FF000000000000000000000000838181FFA0A0A0FF8B8B
      89FF8B8C8AFF929290FF8B8C8AFF747573FFA1A1A1FFD0D0D0FFC9C9C9FFC7C7
      C7FFC4C4C4FFC2C2C2FFC0C0C0FFBFBFBFFFBBBBBBFF82A786FF3E8746FF5EBD
      6BFFEF9362FFFB9065FF8CDD99FF67D880FF64DA80FF66DB83FF8FECA8FF52B6
      6FFF57996BFF4BBD6DFF391401FF00000000A5978FFFCDCDCDFFC5C5C5FFC0C0
      C0FFB2B2B2FFBEBEBEFFE8E8E8FFF4F4EAFF7676DDFF7373E0FF8282DBFF6262
      DFFFEEE7E7FF87BE86FF61BA61FFDCD8DCFFD8D8D8FFC9C9C9FFD3D3D3FFD8D8
      D8FFC8C8C8FFC2C2C2FFDADADAFFCBCBCBFFC3C3C3FFC8C8C8FFDEDEDEFFC0C0
      C0FFBBBBBBFFB9B9B9FF8A8A8AFF141614FFAD5E2CFFDF8727FFFF9A00FFFF9F
      00FFFFA400FFFFA900FFFFAE00FFFFB200FFFFB700FFFFBC00FFFFC100FFFFC7
      00FFFFCB00FFFFD000FFFDD507FFDBA33BFFFFC431FFFFC42FFFFFC32DFFFFC3
      2BFF4C5BECFF6E73FFFF6D72FFFF6B70FFFF4754FFFF3042FFFF2F43FFFF324B
      FFFF3553FFFF385BFFFF720100FF201F1DFF000000009D9B9BFFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFD2D2CFFFE4D7D4FFC5DBEDFF03C8
      F2FF06F6FFFF53EBF5FFD2C7C7FFDFD4D4FFD3CBCBFFA2C0C2FF14E8F5FF00E5
      FFFF29BCF2FFCBC7CFFFB7A2A1FFBCA9A9FFA59393FF8B7E7DFF979391FFE1E2
      DEFFE8E9E5FFE8E9E5FF0000000000000000884C27FFA4A4A4FFE1E1E1FFDEDE
      DEFFDCDCDCFFDBDBDBFFD8D8D8FFD1D1D0FFD8D8D8FFD9D9D9FFD8D8D8FFD6D6
      D6FFD4D4D4FFD2D2D2FFD1D1D1FFD2D1D2FFC0C2B8FF46AA84FF5CDAE7FF88E1
      CCFF4EC252FF5DCD6CFF8BE29DFF6FDC87FF6BDD88FF45D86DFF72EC96FF79AA
      89FFA07F96FF8DB999FF391602FF000000009B928DFFD1D1D1FFCACACAFFC5C5
      C5FFB4B4B4FFC1C1C1FFE8E8E8FFF1F1EEFFD9D9E5FF9494DDFFD2D2DFFF8E8E
      DAFFDBDBE1FFD9DBD8FF94BB94FFD1D7D1FFDBDADBFFD1D1D1FFC8C8C8FFCECE
      CEFFD3D3D3FFC9C9C9FFC4C4C4FFCCCCCCFFC8C8C8FFCCCCCCFFC8C8C8FFBBBB
      BBFFBEBEBEFFBCBCBCFF8A8A8AFF1C1B1AFF815C4AFFC1692DFFF69915FFFF9C
      00FFFFA100FFFFA600FFFFAB00FFFFAF00FFFFB400FFFFB900FFFFBE00FFFFC3
      00FFFFC800FFFFCD00FFEECB3BFFBD900FFFFFC838FFFFC736FFFFC534FFFFC5
      32FF5060EEFF757AFFFF6F75FFFF4F5CFFFF3B4CFFFF3B4CFFFF3A4BFFFF364B
      FFFF344EFFFF3656FFFF740402FF181B18FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE5E6E2FFD2D2CFFFA49E9CFFFFFAF9FF4FBBE8FF00D6
      FFFF00EBFFFF26E9F5FFDBD8D8FFF7F1F1FFF7EBEAFFC2CCCDFF02DEF0FF00DF
      FFFF00BFF7FF99A5B5FFD3C0BEFFC7B9B9FFC5B5B5FFBCA6A6FFA19C9AFFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000958B86FFFFFFFFFFFDFDFDFFFBFC
      FDFFF8F9FBFFF5F7F8FFF2F4F5FFF1F2F3FFEBEDEEFFE8EAEBFFE5E7E8FFE3E5
      E6FFE1E2E3FFDEE0E1FFDCDDDEFFDCDDDFFFC8CBC2FF68C29AFFA0FFFFFF4DD8
      8DFF2BC245FF5AD074FF8DDC9FFF78DD91FF98EAAEFF70E390FF6AE791FF89DA
      A1FFBBD7C1FF86DCA2FF3A1501FF000000009D9C9BFFD7D7D7FFCFCFCFFFCCCC
      CCFFB7B7B7FFC0C0C0FFEAEAEAFFF0F0F0FFEEEEECFFE6E6E6FFE8E8E7FFE2E2
      E2FFE2E2E3FFE3E2E3FFDCDCDCFFDCDCDCFFDCDCDCFFD2D2D2FFD4D4D4FFD6D6
      D6FFCBCBCBFFC8C8C8FFD7D7D7FFCBCBCBFFCACACAFFC7C7C7FFD8D8D8FFC3C3
      C3FFC1C1C1FFBFBFBFFF8A8A8AFF151815FF00000000CF9066FFC56C2AFFF296
      17FFFF9E00FFFFA300FFFFA700FFFFAC00FFFFB100FFFFB600FFFFBB00FFFFBF
      00FFFFC400FFF5C520FFAAA825FF7FB81FFFFFC940FFFFC93EFFFFC83BFFFFC8
      39FF5364EFFF787DFFFF4D5BFFFF4253FFFF4253FFFF4253FFFF4253FFFF4253
      FFFF4153FFFF3B54FFFF760703FF1A1B1AFF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFB9B6B4FF918987FFA19090FFCFBFBEFFE9ECF0FF12B3F3FF00CD
      FFFF00DDFFFF0AE0F5FFDADBDBFFFAF5F4FFF8F0EFFFC2D1D3FF00D3F1FF00D1
      FFFF56B2D1FFDBC8C6FFD6CBCBFFD0C4C4FFCABABAFF928181FFB4B4B1FFE5E6
      E2FFE8E9E5FFE8E9E5FF0000000000000000C4C5C7FFFFFFFFFFF9F9F9FFF6F2
      EFFFF6F0ECFFF4EFEBFFF4EFEBFFF2EDE9FFF1EDE9FFF0ECE8FFEFEBE6FFEEEA
      E5FFECE8E4FFEBE7E3FFEAE5E1FFEAE5E2FFD8D6C8FF5FBC99FF7EEFFFFF7BE3
      BEFF84DE90FF7C9D83FF948C92FF91D0A2FF75E896FF7AE89DFF88EDA7FF9DEB
      C7FF86E6C0FF5CEA8DFF3B1702FF00000000A4A4A5FFDBDBDBFFD3D3D3FFD0D0
      D0FFB9B9B9FFBDBDBDFFECECECFFF2F2F2FFEFEFEFFFEEEEEDFFEAEAEAFFE9E9
      E8FFE6E6E6FFE4E4E4FFE3E2E3FFE0E0E0FFDFDFDFFFD0D0D0FFCDCDCDFFD5D5
      D5FFD4D4D4FFCACACAFFD0D0D0FFCDCDCDFFCCCCCCFFCACACAFFD1D1D1FFBFBF
      BFFFC3C3C3FFC2C2C2FF8B8A8AFF151615FF0000000000000000AE774BFFBD63
      28FFD6822BFFF19B17FFFFA400FFFFA900FFFFAE00FFFFB300FFFFB800FFE99F
      07FFEFB004FFA6B525FF62D938FF87BE27FFFFCB47FFFFCB45FFFFCA43FFFFCA
      40FF5364EFFF5563FFFF4A5BFFFF4A5BFFFF4A5BFFFF4A5BFFFF4A5BFFFF4A5B
      FFFF4D56EFFF711A33FF6F120FFF1E1E1EFF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFD5C9C8FFFDF9F9FFFFFEFEFFF1E7E5FFCADEEAFF04ABF7FF00BE
      FFFF0FD1FFFF47DBF5FFE0DFDFFFFDFAF9FFFBF5F5FFCED6D8FF36D2F6FF2FBE
      EBFFCCC6C9FFE7DDDCFFDCD3D3FFD5CBCBFFC3B4B4FFCEBFBFFF958F8DFFE5E6
      E2FFE8E9E5FFE8E9E5FF0000000000000000C5C6C8FFFFFFFFFFEFEFEEFFC884
      56FFCA7133FFD07D41FFD48448FFD88C4FFFDC9255FFE0985BFFE29D5EFFE5A1
      62FFE5A264FFE5A264FFE6A062FFE69E60FFD39048FF51A783FF60E1FFFFA6EA
      E3FFC2F2C8FFACBEB1FFB8B3B6FFB6E1C2FF94EEAFFF97EEB2FF6BEF90FF93CC
      E2FF8BB0FEFF5DED8FFF381D08FF00000000A4A5A5FFE0E0E0FFD9D9D9FFD5D5
      D5FFBBBBBBFFBEBEBEFFEEEEEEFFF5F5F5FFF1F1F1FFEFEFEFFFECECECFFEBEB
      EBFFE8E8E8FFE6E6E6FFE5E5E5FFE2E2E2FFE0E0E0FFDBDBDBFFCECECEFFD3D3
      D3FFD3D3D3FFCECECEFFD1D1D1FFD0D0D0FFCFCFCFFFCDCDCDFFCDCDCDFFC4C4
      C4FFC7C7C7FFC5C5C5FF8B8B8AFF181818FF0000000000000000000000004A82
      65FF7F5E58FFB85A22FFBB632AFFC76918FFC46817FFC26716FFAB4B1CFFA947
      1BFF7FBB3DFF6FE246FF6ADE41FF7DB41EFFFFCD4EFFFFCD4CFFFFCC4AFFFFCB
      48FF968693FF4D5DE7FF5162FFFF5162FFFF5162FFFF5162FFFF5162FFFF545D
      F0FF762035FF651B27FF5B4C4CFF212121FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFDBD2D1FFFEFEFEFFFFFFFFFFF4EBEAFFD0E1EBFF00A2F8FF0AB3
      FFFF69D9FFFF81DBF6FFE4E1E2FFFFFEFEFFFEFAF9FFD4DADEFF71CCECFFB9C7
      D1FFF2E6E4FFE8E1E2FFE5DEDEFFD1C4C4FFE3DBDBFFF9F2F2FF9A9493FFE6E7
      E3FFE8E9E5FFE8E9E5FF0000000000000000C2C3C5FFFFFFFFFFF0EFEEFFC075
      44FFC15F1CFFC86C2BFFCC7332FFD07B39FFD4813FFFD78644FFDA8B48FFDC8E
      4BFFDC904DFFDC904DFFDC8E4BFFDC8B49FFC97D32FF5BAD80FF8FF5FFFF9CEB
      CBFF89E39BFF94E4AAFF9CE6B1FF84E8A3FF6CE895FFA9F3C2FF87F5A6FF97CE
      E4FF92B1FFFF5FF093FF2E3A26FF00000000A4A4A4FFE5E5E5FFDDDDDDFFDADA
      DAFFBEBEBEFFB9B9B9FFEFEFEFFFF7F7F7FFF4F4F4FFF1F1F1FFEFEFEFFFEDED
      EDFFEBEBEBFFE9E9E9FFE7E7E7FFE4E4E4FFE5E5E5FFD0D0D0FFCDCDCDFFD7D7
      D7FFD3D3D3FFCACACAFFD5D5D5FFCCCCCCFFD0D0D0FFCBCBCBFFD9D9D9FFC0C0
      C0FFC8C8C8FFC9C9C9FF8A8A89FF1B1B1BFF0000000000000000000000000086
      E3FF005FCDFF42D4FFFF92C8C8FF92C7C8FF91C5C7FF91C4C7FF8AD8E3FFA172
      54FF88C146FF78E750FF62D53AFF85B928FFFFCF56FFFFCF53FFFFCE51FFFFCE
      4FFFFFC245FFF2B951FF7F79ABFF4C5FF7FF5767FFFF5767FFFF5D5DE0FF7B26
      36FF51324FFF084FB1FF5F5656FF282828FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFDAD6D3FFD2C8C7FFCDC2C1FFDACECDFFF1F3F3FF169EF2FF3CB5
      FFFFA6E3FFFF9EDBF6FFE7E4E5FFFFFFFFFFFFFEFDFFD8DCE1FFA6BECCFFF2E9
      E7FFF3EFEFFFF0EBEBFFE1D9D9FFC9B8B8FFCFC3C3FFBBAEADFFC0BCB9FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000C4C4C4FFFFFFFFFFF1EFEFFFBE73
      43FFBE5B1BFFC46829FFC96F2FFFCD7535FFD07B3AFFD27F3EFFD58342FFD786
      44FFD78846FFD78846FFD68644FFD78343FFC4762DFF55AA80FF92F2FFFFA5ED
      D3FF96E9A9FF95ECAFFFA4F1BBFFA2F1BCFF63E890FFA4F3C0FF8BF7ACFF9CD2
      E5FF99B8FEFF61F297FF303F2BFF00000000A4A4A4FFEAEAEAFFE2E2E2FFE0E0
      E0FFC0C0C0FFBDBDBDFFEFEFEFFFFAFAFAFFF6F6F6FFF4F4F4FFF2F2F2FFEFEF
      EFFFEDEDEDFFECECECFFE9E9E9FFE7E7E7FFE5E5E5FFE1E1E1FFD0D0D0FFD2D2
      D2FFDBDBDBFFD4D4D4FFCDCDCDFFD4D4D4FFD5D5D5FFCECECEFFC8C8C8FFC9C9
      C9FFCCCCCCFFCBCBCBFF858685FF202020FF000000000000000000000000009D
      EEFF0060CDFF49D4FFFF93EEFFFF93EEFFFF93EEFFFF93EEFFFF93EEFFFFA675
      55FF8DC44CFF75E24FFF71DF4BFF94C738FFFFD15DFFFFD15BFFFFD058FFFFCF
      56FFFFC144FFFFBF44FFFFC24BFFE5B563FF6A6EC4FF5854CBFF85221AFF5355
      65FF0086DFFF0054BDFF6D6363FF323232FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE7E8E4FFDAD3D0FFFFFDF9FF86C2EAFF4CB4
      FFFFCEECFFFFC0E1F6FFEAE6E7FFFFFFFFFFFFFFFFFFE3DEDEFFE2DCDDFFFCFA
      FAFFF6F3F3FFF5F2F2FFBCACACFFA3A09DFFDAD9D6FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000C5C4C3FFFFFFFFFFF1EFEFFFBC6E
      3FFFBA5514FFBF6122FFC36728FFC86D2DFFCA7232FFCD7636FFCF7A39FFD17C
      3CFFD17D3DFFD17D3DFFD07C3CFFD27A39FFBE6E25FF55A97FFF9DF4FFFFACEF
      D6FFA5EDB7FF8BEDA4FF82EF9EFFC0F8D1FFBCF6D2FFBFF8D5FF96F7BAFFACF1
      D4FF9FEED5FF63F39CFF374632FF00000000A3A3A3FFEFEFEFFFE6E6E6FFE5E5
      E5FFC3C3C3FFBABABAFFE6E6E6FFFEFEFEFFF9F9F9FFF6F6F6FFF4F4F4FFF2F2
      F2FFF0F0F0FFEEEEEEFFEBEBEBFFEAEAEAFFE9E9E9FFD6D6D6FFD1D1D1FFD6D6
      D6FFD2D2D2FFCACACAFFD8D8D8FFCFCFCFFFD4D4D4FFCBCBCBFFDCDCDCFFC5C5
      C5FFCDCDCDFFCFCFCFFF868786FF2A2A2AFF0000000000000000000000000579
      D9FF0060CEFF50D4FFFFA0F0FFFFA0F0FFFFA0F0FFFFA0F0FFFFA0F0FFFFAB77
      56FF9F7E30FF87E35CFF85EE61FFA3D349FFFFD364FFFFD362FFFFD260FFFFD1
      5DFFFFC042FFFFBD40FFFFC047FFFFC34EFFFFC755FFB86D3BFF5F4F57FF00B6
      FFFF0085DFFF0054BEFF8C8C8CFF3E3E3EFF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE4E4E1FFDBD4D2FFF4F5F5FF59B2
      EFFFBCE5FFFFF5F5F7FFECE8E8FFFFFFFFFFFFFFFFFFFCFBFBFFFEFDFCFFFBFA
      FAFFFCFCFCFFDFD5D5FF918685FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000C4C3C2FFFFFFFFFFF0EFEFFFB869
      39FFB64E0EFFBB5A1BFFBE5F20FFC16525FFC4692AFFC86D2EFFC97030FFCA72
      32FFCA7332FFCA7332FFCA7232FFCB7030FFB9651CFF51A67FFF9DF2FFFFBEF4
      E5FFAFF3BFFFB7DEE8FFAFCFF3FFB4E9DDFFB8FACFFFB6F9D1FFBAFAD5FFA6FC
      C9FFABFFCEFF67F6A2FF465B46FF00000000A3A3A3FFF4F4F4FFEBEBEBFFE9E9
      E9FFC5C5C5FFBCBCBCFFE6E6E6FFFFFFFFFFFBFBFBFFF8F8F8FFF7F7F7FFF4F4
      F4FFF2F2F2FFF0F0F0FFEEEEEEFFECECECFFEBEBEBFFDFDFDFFFD2D2D2FFD9D9
      D9FFE1E1E1FFD7D7D7FFD1D1D1FFD6D6D6FFD9D9D9FFD5D5D5FFD0D0D0FFC8C8
      C8FFD1D1D1FFD2D2D2FF848584FF343434FF000000000000000000000000326F
      A8FF0061CFFF56D3FFFFADF3FFFFADF3FFFFADF3FFFFADF3FFFFADF3FFFFAEDE
      E3FFAF7856FFAB5722FF9FA147FFB2D252FFFFD56BFFFFD569FFFFD467FFFFD3
      65FFFFBF41FFFFBB3CFFFFBE43FFFFC14AFFFFC451FFC77632FF5D7385FF58D4
      FFFF0084E0FF0055BEFF797979FF404040FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFBEBDBAFFC9BABBFFFDF9F8FFC8E1
      EFFF4BB0EEFFA1D3F7FFF0EAE9FFFFFFFFFFFFFFFFFFFBF9F9FFFDFCFBFFFDFD
      FDFFFFFFFFFFE7DEDEFF8F8B89FFE0E1DDFFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000C1C1BFFFFFFFFFFFEFEEEDFFB362
      32FFB14607FFB65213FFB95719FFBB5C1DFFBE5F20FFC06323FFC26527FFC368
      28FFC36929FFC36929FFC36829FFC46527FFB05A13FF58B07EFFADFFFFFFC0FE
      EBFFAFF9C9FFA0E9DAFF9FDFE5FFA4F2D7FFA5FBC5FFA4FAC7FFA4FBC9FFAAFF
      D1FFC3FFE4FF5AFFA1FF3E543EFF00000000A2A2A1FFF9F9F9FFF0F0F0FFEEEE
      EEFFC8C8C8FFB8B8B8FFD9D9D9FFFFFFFFFFFFFFFFFFFEFFFFFFFBFFFFFFF8FD
      FFFFF6FAFDFFF4F8FBFFF2F6F9FFEFF4F7FFEDF1F4FFECF0F3FFEBEEF2FFE7EB
      EFFFE4E8ECFFE3E7EAFFE1E5E8FFDDE1E4FFDADADAFFDBDADBFFDFDADFFFDAD7
      DAFFD3D3D3FFD5D5D5FF818381FF373737FF0000000000000000000000000B6C
      CFFF0061CFFF5DD3FFFFBBF5FFFFBBF5FFFFBBF5FFFFBBF5FFFFBBF5FFFFBBF5
      FFFFBBF5FFFFB8CBC7FFAF6B47FFAE581FFFF4C467FFFFD670FFFFD66EFFFFD5
      6CFFFFBE40FFFFBA38FFFFBD3FFFFFBF46FFFFC24DFFC87630FFA58D86FFBBF5
      FFFF0083E0FF0055BFFF848484FF414141FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE1E2DEFFB2A7A6FFFAF8F8FFEFECECFFFFF9
      F7FFE0EFF7FF7ABAE2FFE5E6EAFFFFFFFFFFFFFFFFFFE7E2E3FFE1DCDDFFFFFF
      FFFFFEFEFEFFFFFFFFFFC4BBBBFFA6A6A3FFE3E4E1FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000BDBCBCFFFFFFFFFFEDECEBFFAE5B
      2CFFAC3E01FFB1490DFFB24D10FFB65214FFBB5B1DFFC06324FFC36828FFC56B
      2BFFC76C2DFFC76D2DFFC76C2DFFC76A2BFFBD5F1AFF6C7C32FF6E975CFF518A
      37FF3C801AFF3C831CFF3B851BFF3B841FFF4AAB57FF4CBD6FFF4BBC6DFF2D93
      4DFF358F52FF328C4AFF565B56FF3E3E3EFFA1A1A1FFFEFEFEFFF4F4F4FFF3F3
      F3FFCACACAFFBBBBBBFFD7D7D7FFFFFFFFFFF7EDE4FFEED4BBFFEFD5BDFFEED4
      BDFFEDD3BCFFECD2BBFFEAD1BAFFE9D0B8FFE8CFB7FFE7CDB6FFE6CDB5FFE5CC
      B4FFE4CAB3FFE3CAB2FFE2C7AFFFE1CDBAFFDFDDDEFFD4D6D4FFAAC4AAFFC7CF
      C7FFD8D6D8FFD9D9D9FF7D7E7DFF363636FF0000000000000000000000000072
      EFFF0062D0FF63D3FFFFC9F7FFFFC9F7FFFFC9F7FFFFC9F7FFFFC9F7FFFFC9F7
      FFFFC9F7FFFFC9F7FFFFC9F7FFFFB16B46FFEAB462FFFFD978FFFFD875FFFFD7
      73FFFFBD3FFFFFB834FFFFBB3BFFFFBE42FFFFC148FFC9772FFFAC8F87FFC9F7
      FFFF0082E0FF0056C0FF8F8F8FFF3F3F3FFF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFD5D0CEFFE9E3E3FFFFFFFFFFFFFFFFFFCCBE
      BDFFD8CECDFFFBF1EEFFEFEBEBFFFFFFFFFFFFFFFFFFEEEAEAFFD4CAC9FFEFEB
      EBFFFFFFFFFFFFFFFFFFFFFFFFFFA79F9EFFBABAB7FFE7E8E4FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000B7B9BAFFFFFFFFFFECEBEAFFAB59
      2AFFA73700FFAB4004FFB55113FFC06324FFC86E2DFFCB7232FFCC7535FFCE77
      37FFCE7837FFCE7737FFCE7736FFCC7637FFC99977FFC89E81FFBC9373FFBA8D
      70FFB48167FFAE7960FFAB765CFFAA745BFFBFAAA2FFBFBCBFFFBEB8B9FF847F
      81FF7C7877FF7A7575FF656464FF2E2E2EFF9FA0A0FFFFFFFFFFF9F9F9FFF9F9
      F9FFCDCDCDFFB8B8B8FFC9C9C9FFFFFFFFFFE1B99DFFC56B27FFCA7333FFCA73
      33FFCB7333FFCB7433FFCB7433FFCB7434FFCB7434FFCB7434FFCB7434FFCC74
      34FFCC7534FFCC7534FFCB722FFFD38A55FFE3DCDFFF5BBC5DFF09C709FF45B9
      45FFDBD7DBFFE5E4E5FF848484FF292929FF000000000000000000000000007D
      EFFF0062D0FF41C4FFFFD6F9FFFFD6F9FFFFD6F9FFFFD6F9FFFFD6F9FFFFD6F9
      FFFFD6F9FFFFD6F9FFFFD6F9FFFFB77855FFEBB668FFFFDA7FFFFFDA7DFFFFD9
      7BFFFFBD3EFFFFB630FFFFB937FFFFBC3DFFFFBF44FFCA772DFFB49287FFC8F4
      FFFF0081E1FF0056C0FF919191FF363636FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE2E0DDFFE2DCDBFFF8F4F4FFC4B9B8FFB4B2
      AFFFE2E3DFFFE0DCD9FFF0ECECFFFFFFFFFFFFFFFFFFD8D4D4FFB6B4B2FFD9D2
      D0FFFBFAFAFFFFFFFFFFFFFFFFFFFCF9F9FF948F8DFFCDCECAFFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000B4B6B9FFFFFFFFFFEBEAE9FFAA57
      27FFA83A01FFBA5A1BFFC86D2EFFCC7333FFCD7737FFD07B3AFFD17E3DFFD381
      40FFD48241FFD48241FFD4803EFFCF8042FFD0CECBFFDFE9F2FFDBE2E9FFD7DE
      E5FFD5DDE4FFD1D9E0FFCDD6DCFFD1DAE1FFD4D7D9FFD4D3D3FFD6D5D6FFE7E7
      E7FFEEEDEEFFF7F6F7FFF4F4F4FF353535FF9E9F9FFFFFFFFFFFFEFEFEFFFEFE
      FEFFD1D1D1FFBFBFBFFFB4B4B4FFFFFFFFFFE2C7B7FFD6A283FFDCAC90FFDDAD
      91FFDDAD91FFDDAD91FFDDAD91FFDDAD91FFDDAD92FFDDAE92FFDDAE92FFDEAE
      92FFDEAE92FFDEAE92FFDEAD91FFDEAF95FFDEDADAFF7DC47EFF78DD78FF73C1
      73FFD4D4D4FFE5E4E5FF949494FF333333FF00000000000000000000000000A2
      EFFF0063D1FF0EAFFFFFE2FBFFFFE2FBFFFFE2FBFFFFE2FBFFFFE2FBFFFFE2FB
      FFFFE2FBFFFFE2FBFFFFE2FBFFFFBC7A56FFEBB96EFFFFDC86FFFFDC84FFFFDB
      82FFFFBC3CFFFFB42CFFFFB732FFFFBA39FFFFBD40FFCB782CFFBB9488FF8CDC
      FFFF0080E1FF0057C1FF929292FF2D2E30FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE2E0DDFFCDC6C4FFD4D4D1FFE8E9
      E5FFE8E9E5FFE8E8E4FFF1EDEDFFFFFFFFFFFFFFFFFFD2CFCFFFCDCECAFFE6E6
      E3FFE2DAD9FFFFFFFFFFFFFFFFFFFFFFFFFFEEE7E7FF93908EFFD9DAD7FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000B3B6B9FFFFFFFFFFEAE8E7FFAA57
      28FFBB5715FFC97031FFCC7434FFD07A39FFD27F3EFFD58443FFD88746FFD88A
      49FFDA8C4AFFDA8C4AFFDA8B49FFD78949FFCE986CFFCB9A74FFC9956DFFC390
      68FFC08A63FFBC845EFFB77F58FFAB6C46FFC1AB9EFFC7CBCCFFC1C1C1FF8787
      86FFA6A7A5FFB2B2B2FFF5F5F5FF323333FF9A9A9BFFFFFFFFFFFFFFFFFFFFFF
      FFFFD5D5D5FFDFDFDFFFBCBCBCFFE5E6E6FFFBF7F5FFF3ECE8FFEAE4E1FFE1DB
      D8FFE1DBD8FFE1DBD8FFE0D9D6FFDFD8D5FFDED7D4FFDDD6D3FFDBD5D2FFDAD4
      D1FFDAD3D0FFD9D2CFFFD8D1CEFFD6D0CDFFD6D5D5FFCDCDCDFFBAC8BAFFD8DA
      D8FFE5E4E5FFBCBCBCFFAEAEAEFF0000000000000000000000000000000000A9
      F1FF0063D2FF009BF6FF84D7FFFFEEFDFFFFEEFDFFFFEEFDFFFFEEFDFFFFEEFD
      FFFFEEFDFFFFEEFDFFFFEEFDFFFFC17D57FFECBB73FFFFDE8EFFFFDE8BFFFFDD
      89FFFFB933FFFFB328FFFFB52EFFFFB835FFFFBB3CFFCD782AFFB39188FF1CB2
      FFFF0075DAFF1657A8FF818181FF3B3B3BFF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E8E5FFF1EEEEFFFFFFFFFFFFFFFFFFD5D3D2FFC1C2BEFFE8E9
      E5FFE3E1DEFFE8E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFD5CDCDFFA09F9CFFE3E4
      E1FFE8E9E5FFE8E9E5FF0000000000000000B2B3B5FFFFFFFFFFE7E5E4FFB366
      36FFC86A28FFCC7535FFD07B3BFFD48240FFD88746FFDA8C4BFFDD904FFFDF94
      52FFE09553FFE09653FFE09553FFDE9250FFDD8C47FFDA8641FFD7813CFFD37B
      37FFD07530FFCC6D2AFFC76622FFBC5411FFDDB6A0FFE6ECF0FFE1E1E1FF8787
      86FF00000000B6B6B4FF858585FF353535FF909192FFC5C5C5FFD7D7D7FFC8C4
      C1FF86634AFF9F7251FF9D7252FFA49991FFFFFFFFFFFFFFFFFFCDCECEFF9D9E
      9FFFAAABACFFA8A9AAFFA8AAAAFFA9AAABFFA9AAABFFA9ABABFFAAABACFFAAAB
      ACFFAAACACFFABACADFFABACADFFACADAEFFA3A3A3FF989798FFB9B7B9FFD6D5
      D6FFBEBEBEFF757574FF00000000000000000000000000000000000000000000
      0000006AD3FF0078E0FF00A6FFFF7AD2FFFFB9E8FFFFB9E8FFFFB9E8FFFFB9E8
      FFFFB9E8FFFFB9E8FFFFB9E8FFFFB57A58FFECBD79FFFFE095FFFFDE8DFFFFC9
      51FFFFBD30FFFFBC31FFFFB931FFFFB731FFFFBA38FFCE7929FF4C6D89FF0098
      F4FF005DC8FF526C87FF787878FF424242FF000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE7E8E4FFF2EFEFFFFFFFFFFFFFFFFFFFD9D8D7FFBCBDBAFFE8E9
      E5FFE8E9E5FFDEDAD7FFF4F2F2FFFFFFFFFFFFFFFFFFEAE4E4FFAAA5A3FFE5E6
      E2FFE8E9E5FFE8E9E5FF0000000000000000B3B3B2FFFFFFFFFFE5E3E2FFB971
      40FFCC712EFFD07A3AFFD48141FFD88847FFDC8F4DFFDF9452FFE29957FFE49D
      5AFFE69F5CFFE6A05DFFE69F5CFFE49C59FFE19755FFDE9250FFDA8C4AFFD686
      44FFD27F3DFFCE7737FFC96F2EFFC26423FFDFBCA7FFE7ECEFFFDFDFDFFF8485
      83FF0000000000000000000000000000000000000000F3F3F3FFD3D2D1FFAC6B
      3EFFCA702EFF0000000000000000977E69FFF8F8F8FFF2F2F2FFD5D5D5FFCDCD
      CDFFE8E8E8FFE5E5E5FFE6E6E6FFE8E8E8FFE9E9E9FFEAEAEAFFEBEBEBFFECEC
      ECFFEEEEEEFFEFEFEFFFF0F0F0FFF3F3F3FFE2E2E2FFC7C7C7FFB9B9B9FFB6B6
      B6FF989898FFB8B9B6FF00000000000000000000000000000000000000000000
      00000098E7FF0064D2FF0074DDFF0085E8FF0084E8FF0084E8FF0084E7FF0084
      E7FF0083E7FF0083E6FF0083E6FF886352FFEDBF7FFFFFE198FFFFCF61FFFFCA
      52FFFFCA52FFFFCA52FFFFCA52FFFFC54CFFFFBD3FFFCF7927FF4E5B7BFF005E
      C9FF0B5AB8FFCE984DFF7B7B7BFF00000000000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E8E4FFE2DEDCFFE2DFDEFFE5E1E0FFE2DCDBFFD0D0CDFFE8E9
      E5FFE8E9E5FFE8E9E5FFDCD6D4FFC7C4C2FFBFBDBBFFDDDCD9FFE4E5E1FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000B3B2AFFFFFFFFFFFE3E1E1FFB870
      3FFFCF7633FFD27F3EFFD78645FFDC8E4DFFE09553FFE49C59FFE7A15FFFEAA6
      63FFECA966FFECA966FFECA865FFE9A461FFE69F5DFFE29957FFDE9251FFDA8B
      49FFD58342FFD07C3BFFCB7332FFC36625FFE3C0ABFFFAFEFEFFE9E9E9FF8686
      84FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7834AFFBF8A5BFFBD8755FF97826EFFC8C8
      C8FFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8E8FFE9E9E9FFEAEA
      EAFFEBEBEBFFEDEDEDFFEEEEEEFFF1F1F1FFE0E0E0FFBEBEBEFF818181FF6F6F
      6EFFC8C9C6FFE5E6E2FF00000000000000000000000000000000000000000000
      0000000000000096E5FF0064D2FF0063D2FF0063D1FF0062D0FF0062D0FF0061
      CFFF0061CFFF0060CEFF0060CDFF8A5C4DFFEDC07FFFFFD97DFFFFD673FFFFD6
      73FFFFD673FFFFD673FFFFD673FFFFD673FFF9CC6CFFB25623FF454C78FF185C
      ACFFB07E3FFFB28D5FFF939393FF00000000000000009A9898FFFFFFFFFFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9E5FFE8E9
      E5FFE8E9E5FFE8E9E5FF0000000000000000B4B0A9FFFFFFFFFFE1DFDFFFAC59
      26FFCE6F29FFD6813DFFDB8844FFE0914CFFE59954FFEAA15BFFEEA862FFF2AE
      68FFF4B36CFFF4B36CFFF4B16AFFF1AC66FFECA660FFE89E59FFE39651FFDE8D
      49FFD98541FFD47D39FFCF7431FFBB5311FFE0B8A3FFFFFFFFFFECECECFF8585
      83FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B7C5EFFC2C2
      C2FFE8E8E8FFEBEBEBFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0
      F0FFF1F1F1FFF1F1F1FFF2F2F2FFF6F6F6FFE4E4E4FFBABABAFF858585FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000D8FCFF00BAF2FF00ABECFF00A1E8FF00A1E8FF00AB
      EBFF00B8EEFF00A0EAFF0F6CA6FF84644FFFCF8543FFF6D184FFFFE394FFFFE3
      94FFFFE394FFFFE394FFFFE394FFFAD88CFFB55F2EFFA5542DFFAD9C84FFDABC
      8CFFD8C19FFF000000000000000000000000000000009A9898FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000000000000000B7B2AAFFFFFFFFFFE3E2E2FFA16E
      51FFB6794FFFCA8F60FFCC9464FFD09A6AFFD39F70FFD7A575FFDBAB7BFFDEB0
      7FFFE0B483FFE0B584FFDFB382FFDCAE7EFFD9A979FFD5A373FFD29D6EFFCE97
      68FFCB9162FFC78B5CFFBF8356FFA76640FFDFC9BBFFFFFFFFFFEDEDEDFF8E8E
      8EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000937C65FFAAAA
      AAFFEEEEEEFFF1F1F1FFF3F3F3FFF6F6F6FFF8F8F8FFF9F9F9FFFAFAFAFFFBFB
      FBFFFCFCFCFFFCFCFCFFFBFBFBFFFDFDFDFFE9E9E9FF9A9A9AFF8A8A8AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000076D273FF9D8E46FFB85B22FFD6985EFFFAE4
      A9FFFFEEB3FFFFEEB3FFF0CF95FFB45C2CFF966349FFE1DEDEFFFAFAFAFF0000
      00000000000000000000000000000000000000000000000000009A9898FF9A98
      98FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A98
      98FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A98
      98FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A9898FF9A98
      98FF94989AFF000000000000000000000000A9A6A0FFFFFFFFFFFCFCFCFFF2F6
      F7FFF2F4F6FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3
      F4FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3F4FFF2F3F3FFF2F2F3FFF2F2
      F3FFF2F2F2FFF2F2F2FFF0F1F2FFEFF3F6FFF9FAFBFFFFFFFFFFEEEEEEFF6564
      64FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B1FFF9F9F9FFF7F7F7FFF8F8F8FFF9F9F9FFFBFBFBFFFCFCFCFFFDFDFDFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FF8E8E8EFFE7E7E7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1BCB1FFBD774DFFBA61
      2AFFDAA26CFFF0D29CFFB35827FFB87B5FFFD3DADDFFB4B3B5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000788078FFEFEFEFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABACFF8580
      81FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B9B9
      B9FFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FF929292FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D87
      7AFFAF5D2EFFB2531FFF9F6F56FF959595FF9B9B9BFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E8E6FF829483FF909892FFA0A1
      A0FF9E9F9EFF969899FF8B959FFF89949FFF98999AFF9F9F9FFF95979AFF9395
      99FF9C9D9EFF9E9F9EFF9F9F9FFF9F9F9FFF9F9F9EFF9F9E9EFFA0A0A0FF9F9B
      98FFA39187FFA48F84FF9F948FFF9E9E9EFF9F9F9FFF898989FF459EAEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C7D
      7FFFEEEEEEFFE7E7E7FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3
      E3FFE3E2E1FFE3E1E1FFE1E1E0FFE4E4E4FFDCDCDCFF696969FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000036373CFF3D3A3AFF474749FF484E51FF494F
      52FF4B5155FF4D5255FF464747FF656565FF9E9E9EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000605E60FF433C40FF413939FF443C3DFF393E40FF4147
      49FF4A4F53FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000423B3FFF3F3737FF433C3DFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E3536FF372F2CFF5235
      26FF453733FF4B5053FF0000000000000000959595FFB4B4B4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000838484FF60676CFF446376FF3D80A3FF419BC9FF49ADDBFF4BB3
      E1FF4BB4E2FF48ACDAFF3B90B6FF275D6EFF253132FF4E4E4EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007C6E70FFBBAAAAFFC9BBBBFF9B8383FF476F86FF3F96
      BDFF48ACD8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A6C6EFFA89999FFA79B9BFF907A7AFF476F85FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000092562BFFF4A607FFFFC8
      04FFDB820EFF466477FF0000000000000000703B16FF994E14FF4E413DFF8B8B
      8BFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8D8
      D8FF898F92FF43708EFF368DC7FF3DA3E3FF3FABE7FF43AFE7FF46B2E8FF48B5
      E9FF48B5E9FF47B4E9FF45B3EAFF43B0ECFF3B9AD3FF1C4855FF313531FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B4C55FF353745FF7B7B7CFFB4B4B4FFD5D5D5FF0000
      00000000000043708DFF85808AFFE7E1E1FFE6E0E0FFBBA9A9FF576879FF3A92
      BBFF44AADBFF0000000000000000000000003A98D1FF1B4552FF2E322EFF4545
      45FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000888E91FF406C87FF66736DFF58D76EFF729476FF827575FF4E5D6DFF388D
      B4FF44A9DAFF47B3E8FF43AFE4FF41AAE5FF3996CFFF000000002E322EFF4343
      43FF6D6D6DFFBEBEBEFFDCDCDCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000996325FFFFEE01FFFFED
      00FFFFDA02FFCD7214FF377EA4FF476F8DFFF5A706FFFFE102FFE99407FF4E2F
      23FF6C6C6CFF0000000000000000000000000000000000000000000000000000
      00001D1E1EFF0E0F1DFF00000000000000000000000000000000C6C6C6FF5870
      82FF2976B5FF2C8BD6FF2F8FD5FF3395D6FF389CD9FF3CA1DCFF3EA5DEFF3FA7
      DFFF3FA6DFFF3EA6DFFF3DA3DDFF3A9EDBFF369BDCFF3498DDFF1B5265FF0A2B
      08FF000000000000000000000000000000000000000000000000000000000000
      0000000000000E0F1DFF676C7FFFC0C0C0FFC3C3C3FFCFCFCFFFBABABAFF566E
      7FFF2975B4FF2B87CFFFA69090FFE9E3E3FFE7E2E2FFD6CBCBFF6C626AFF3080
      ABFF3995C8FF3DA3DBFF3DA2DBFF389AD5FF328ECAFF2C80BAFF164252FF0925
      07FF141614FF565656FF00000000000000000000000000000000000000000000
      00000000000000000000727078FFAF9E85FFA6947BFFA39E96FFB2B2B2FF566E
      7FFF2770ACFF20659AFF318E3DFF3ABC50FF43C55AFF5B785CFF3F393EFF2562
      83FF3790C1FF3B9FD5FF3389B9FF2B78A5FF2C7EB3FF2B7EB7FF153F4EFF071D
      05FF0F100FFF444444FF9E9E9EFFDDDDDDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002569A2FF1D5A89FF000000000000000042C158FF8F611DFFFFD201FFFFAD
      00FFFFA400FFF88F03FFC27117FFD48910FFFFE201FFFFE600FFFFCD00FFE17F
      06FF25120AFF000000000000000000000000000000000000000000000000C8C8
      C8FF494C59FF2D3752FFA3A3A3FFC9C9C9FFBFBFBFFF787878FF334757FF1E6C
      B6FF2079CCFF257DC9FF2A85CDFF2E8BD1FF3293D4FF3597D7FF3398D8FF369F
      DDFF37A1DFFF349BDAFF3497D7FF3495D5FF308FD2FF2C89D2FF2A87D3FF144E
      45FF106909FF0000000000000000000000000000000000000000000000000000
      0000494C59FF2B344EFF948585FF8E7575FF857A7AFF5A5A5AFF2A3A47FF1B60
      A1FF1D6EBAFF4379ABFFBCABABFFEBE6E6FFE9E4E4FFE4DDDDFF8A6E6EFF2774
      A1FF2C82B4FF2E89C0FF308AC4FF3381B6FF5B6C84FF977E7EFF525E76FF0F3A
      34FF0E5908FF214321FF00000000000000000000000000000000000000000000
      0000000000002A334DFFD2AA70FFFCB564FFE08A14FFB47F32FF1E2932FF1A5B
      98FF48717FFF608440FF667932FF578E3EFF51C254FF79B24DFF4F4526FF0F2E
      40FF256F99FF59879CFF6A7571FF314856FF404B5CFF8F7878FF866F60FF594B
      2BFF58501AFF2F391BFF2C2C2CFFAFAFAFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001959
      95FF7A5333FFAC6114FF515724FF4C7935FF726A25FFE8A208FFFFC300FFFF8E
      00FFFF9100FFFF9600FFFFD600FFFFEC00FFFFE800FFFFC100FFFF9300FFFF99
      02FF96440CFF2D361AFF0000000000000000000000000000000000000000616B
      8BFF98A0B3FFE6E8E8FFBFC1C2FF7A7A7AFF292929FF353535FF302F2EFF153E
      67FF1B71C4FF2075C4FF2079C8FF2281CDFF2887CFFF2C8CD2FF5DB6EAFF9FD7
      EDFFA5D3E3FF79C2E7FF3797D8FF2B89CFFF2B86CEFF2780CBFF237CCCFF206E
      B7FF0E5512FF15A105FF00000000000000000000000000000000000000000000
      0000979FB2FFBCB0B0FFE6DEDEFFF0EBEBFFAA9696FF675252FF322C2CFF102F
      4EFF385D89FF6D6F81FF988181FF9F8787FFA08A8AFF957B7BFF876C6CFF786E
      73FF768790FF5C93AFFF497BA1FF8A7D83FFB4A2A2FFDCD3D3FFC5B7B7FF5456
      6AFF0B450FFF149805FF00000000000000000000000000000000000000000000
      000000000000DFB477FFFFF4D0FFFFECCFFFF8A042FFE58202FFA6762FFF1724
      30FFB0A14AFFFFA54BFFC99241FF4D7F30FF73B647FFFFA54BFFC8923FFF1927
      1AFF4E595FFFB0946EFFFFA54BFF90663FFF665B5BFFCBC2C2FFF6A455FFFFA5
      4BFF8E672BFF276F0AFF0F670BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4752EFF4E2C
      1BFFFAAF08FFFFD602FFD6800FFFBF6E0FFFFFC004FFFFE300FFFFBF00FFFF91
      00FFFF9300FFFF9300FFFFAF00FFFFBE00FFFFBA00FFFF9900FFFF9600FFF17A
      05FFBC4E0EFF2D4B07FF0000000000000000000000000000000000000000184D
      C2FFCFD2D8FFF8EDE6FFE5DDD8FF3C3D3DFF0B0B0BFF0F0F0FFF0D0A07FF081B
      2EFF176CBEFF1F73C5FF4691D0FF78B3DCFF4597D8FF439CDCFF8BA5B0FFB5AD
      A9FFE3DBD7FFDDDDDCFF7ABBE4FF2783CDFF247CC8FF1F76C4FF1C71C1FF1D75
      CBFF15516FFF0F8B00FF00000000000000000000000000000000000000000000
      0000C9C8CCFFC9BABAFFF8F6F6FFF7F6F6FFF6F5F5FFCFC2C2FF8C7272FF8B77
      79FFC4B6B6FFE0D8D8FFF0EBEBFFEDE9E9FFECE8E8FFEBE6E6FFE9E4E4FFD0C4
      C4FFA79292FF866F6FFFA38D8DFFD3C9C9FFE1D8D8FFDED6D6FFD7CCCCFF7A64
      68FF12465FFF0F8700FF00000000000000000000000000000000000000000000
      000000000000DEB072FFFFEAC9FFFDE7C6FFFFDFB6FFF8A448FFDD7F02FFAB85
      33FF72A343FFFFA54BFFB39041FF247633FF44DD60FFFFA54BFFFFA54BFF1C60
      27FF3F533BFF90684AFFFFA54BFFC6894DFF635F5FFFC0B9B9FFECAD71FFFFA5
      4BFF594932FF095400FF129207FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AF5A07FFF895
      0DFFFFD200FFFFBE00FFFFBD01FFFFCD01FFFFD000FFFFC400FFFFA500FFFF92
      00FFFF9400FFFF9300FFFF9100FFFF9000FFFF9000FFFF9300FFFF9400FFF79E
      03FFFFBC03FFCD7207FF1D6105FF000000000000000000000000000000002354
      B4FFECF0F3FFFDD4BAFF744A2FFF000000FF000000FF000000FF000000FF2A30
      36FF5283B3FF3984C9FFD3E3EBFFA59E97FF435E71FF4688B8FF171616FF2220
      1FFFD7D7D7FFF9F4F0FFB3D2E6FF408ED1FF3E87CBFF307CC5FF1A6CBEFF1E76
      C7FF2B82C5FF0B5E12FF139D08FF000000000000000000000000000000000000
      000000000000D4B9AEFFDBD1D1FFF8F7F7FFF7F6F6FFC8BABAFFBDADADFFEDE8
      E8FFEEEBEBFF8FB2D6FF5BA1D3FF60AFDCFF75C4E4FF4FA6DAFF5FA3D6FFA2BE
      DBFFE8E2E2FFD3C9C9FF977F7FFFB5A2A2FFE2DBDBFFE1D8D8FFA69090FF4560
      84FF2878B6FF0B5D12FF00000000000000000000000000000000000000000000
      000000000000E2B273FFFFE6C2FFFCDFB8FFFCDFB9FFFFDFB8FFF79F3FFFE585
      05FFAB8A38FFFFA54BFFE29D46FF0D602BFF20CA5BFFC9AE4FFFFFA54BFF4668
      2EFF2D843CFF6E7F5CFFFFA54BFFFFA54BFF575454FFA19B9BFFC59269FFFFA5
      4BFF937049FF063109FF118F07FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C97C30FFF18F
      0BFFFFB900FFFF9800FFFF9600FFFFAA00FFFFAD00FFFF9A00FFFF9400FFFF95
      00FFFF9600FFFF9A00FFFF9A01FFFF9800FFFF9500FFFF9600FFFF9500FFFFAA
      00FFFFC100FFFFB701FFAB5D09FF2D322DFF0000000000000000000000003E56
      82FFFBFBFAFFEFE4DDFF2C2C2BFF1D1D1DFF303030FF333433FF222527FF886C
      56FFF3C7A4FF70859DFFEBF5FDFFCDC5BEFF6D7D8BFF3F7EB6FF67696BFF7774
      72FFEBEAE9FFFFFFFFFFA6C9E7FF5696D3FF649CD4FF659DD5FF5290CFFF2E84
      CCFF2D92DCFF124C54FF108B07FF000000000000000000000000000000000000
      000000000000EBE0D9FFA99A9AFFEBE6E6FFCBBEBEFFD0C3C3FFF7F5F5FFABBE
      D5FF1F9AD7FF49DEF6FF8BF7FEFFBEFBFEFFBEFBFEFF8DF7FEFF57F3FEFF1ED1
      F2FF2DA6DCFFC5D1E0FFE2DBDBFF977F7FFFB5A2A2FFC5B7B7FF80747CFF256A
      A3FF2984C6FF114850FF108807FF323932FF0000000000000000000000000000
      000000000000EBC185FFFFE3BAFFFCDAB0FFFCDAADFFFCDBADFFFFD2A0FFF9A1
      44FFDD8204FFFFA54BFFFFA54BFF19632DFF2DBA54FFB6BA54FFFFA54BFFAA8C
      3FFF07652EFF2FB14EFFFFA54BFFFFA54BFF7D5B3DFF696262FF9A755CFFFFA5
      4BFFC98B4CFF071F23FF0E7706FF323932FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDD09FFFC469
      1DFFFF9903FFFF9D00FFFF9B00FFFF9A00FFFF9A00FFFF9900FFFFA204FFFFB3
      20FFF6B037FFD8AC40FFEDAA43FFF3AE3EFFFFB32BFFFF9F07FFFF9B00FFFF9B
      00FFFFA400FFFFA800FFE17606FF2E2D26FF00000000000000009EA4AFFFA1A1
      A1FFFFF9F4FFD29E7FFF595553FF727373FF727272FF737576FF575651FFDCC5
      95FFFFE09CFFBEA988FF6797CBFFA4C4EBFF7FAEE0FF6DA4DCFF80A5CFFFDEE3
      EAFFF7FBFEFFCBDCF1FF6AA0D8FF84B1DEFF89B4DFFF8DB8E3FF92BCE4FF80B4
      E0FF358DD6FF195D9BFF0E450CFF000000000000000000000000000000000000
      00000000000000000000726B6AFFBAA9A9FFCCBEBEFFF8F7F7FF7CB2D7FF03BD
      ECFF27F1FEFF5FEDF7FF96D5DAFFCBECEDFFCCF3F6FF98F8FEFF5FF5FEFF2BF1
      FEFF05ECFEFF07B1E8FFB5CADEFFE2DCDCFF987F7FFF988080FF7A7A88FF5E85
      A5FF2A6FA8FF154D81FF0C3C0AFF2B312BFF0000000000000000000000000000
      000000000000E4AF6DFFFFDDB0FFFCD6A7FFFCD5A5FFFCD4A2FFFCD3A0FFFFD2
      9EFFF49B39FFEF9634FFFFA54BFF62622BFF289743FF71CD5DFFFFA54BFFE29B
      46FF547937FF018D42FFB7A049FFFFA54BFFCE8741FF5A473DFF4E4E56FFFFA5
      4BFFFFA54BFF081E33FF0A3008FF2A302AFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B986
      5FFFF98909FFFFA500FFFFA100FFFFA100FFFFA100FFFFB61EFFE7AB46FFB582
      40FF4F6C32FF01863FFFB19B47FFF19C48FFAA763CFFFAC14EFFFFA60DFFFFA0
      00FFFFA200FFFFA600FFDF6D08FF2B2620FF0000000000000000E8E8E8FFC2C4
      C6FFFDEDE1FFD68858FF877F79FFB9BABBFFB1B2B2FF7A7A7AFFA98A72FFFECD
      9CFFFDD899FFBEB087FF76A2CEFF9CC2EBFFA8CBEDFFB5D2EDFF8FB8E4FF82AE
      E0FF83ADDDFF7CA9DBFFA3C4E6FFB5D2EDFFA8CEF1FF77A6D2FF7AABD9FFB1D4
      F3FF91BCE5FF1F70BCFF49565AFF000000000000000000000000000000000000
      00000000000000000000837C76FFB4A5A6FFF5F2F2FFA8BED2FF00B4F0FF01E9
      FEFF1FF0FEFF5CD7E0FFC2B2B2FFBFAFAFFFAEA0A1FF9FA6A7FF789DA0FF2BCE
      DAFF03EBFEFF00DBFEFF079FE4FFC5D2E0FFC5B7B7FF987F7FFF9E8787FF9079
      7AFF79737EFF37567CFF3B4245FF1C201CFF0000000000000000000000000000
      000000000000E5AA65FFFFD9A8FFFCD29FFFFCD19FFFFDCF9AFFFDCC95FFFECD
      95FFFCC388FFF29C44FFFFA54BFFAE7732FF196525FF71B749FFFFA54BFFE29D
      46FFA89343FF54B455FFAA9C49FFFFA54BFFB77F3FFFD38B46FF826960FFFFA5
      4BFFFFA54BFF4B433EFF303638FF1B1F1BFF0000000000000000000000000000
      000000000000000000000000000000000000D3AA7FFFB27747FFB4703DFFD369
      1AFFFF8D02FFFFA100FFFFA900FFFFAA00FFFFBE2FFF939846FFEC9846FF0000
      000000000000000000000000000000000000AA773AFFF3D95EFFFFC547FFFFA8
      00FFFEA101FFC0600EFF3B2C26FF000000000000000000000000CBCBCBFFDFE0
      E1FFFEF6F3FFFDF2EAFFAFAFAFFF959A9DFF919496FFB28D76FFF9B48AFFF4B6
      93FFFCC09BFF9F9A9FFFA2C8EAFF8CABCBFF7998B6FF97BBDDFFB9D7F2FFC1DD
      F6FFC1DEF7FFCAE3FAFFBBD6F7FF96B7E1FF747F97FFA76746FFA56948FF7380
      94FFBCD6EEFF74ABE3FF3D556DFF282B27FF0000000000000000C9C9C9FFDBDC
      DDFFF3EBE9FFEEE4DCFF9F9797FFE0D8D8FFF2EEEEFF1599DCFF00D3FEFF00E4
      FEFF0EEDFEFF46D6E1FFDAD0D0FFE9E4E4FFE6E0E0FFE2DBDBFFCCBFBFFF27BB
      C5FF00E6FEFF00D6FEFF00C4FEFF3F9AD6FFA08B8BFFBBA9A9FFB5A2A2FFAE9A
      9AFFA89292FF988080FF846767FF2E2C29FF0000000000000000000000000000
      0000EFE7E5FFE7C28CFFFFD29DFFFDCE97FFFDCD96FFFDCB94FFFDC98FFFFDC7
      8CFFFBC080FFF7A95AFFFFA54BFFDF8C33FF79692AFF8D9D44FFFFA54BFFFFA5
      4BFF00BB59FFAAB554FFFFA54BFFFFA54BFFA19D44FF667252FFE39A54FFFFA5
      4BFFFFA54BFF987561FF7D6262FF2E2C29FF0000000000000000000000000000
      000000000000000000000000000000000000B47B53FFBF7145FF89706BFFA26E
      4CFFFF8800FFFFAB00FFFCAE00FFF0AD32FF846A2FFF00000000000000000000
      0000000000000000000000000000000000008B8739FFFFEE59FFFFD960FFFFB3
      0DFFFD9902FF854427FF7C6161FF000000000000000000000000B3B3B3FFF5F9
      FBFFE9B993FFEB9E68FFF6BB9AFFE0BCACFFEFD0C8FFFFE3D6FFFFD3BBFFFABD
      9CFFF7B38CFF727E92FF778499FFB78970FFD79973FFAD8675FF928689FF9193
      9EFF8991A1FF8B8C94FF8F9D6EFFAA9E39FFDD8718FFF06E11FFED5801FFCD61
      23FF8AA0B6FF96C0EAFF345B82FF262B26FF00000000FEFEFEFFACACACFFDBDF
      E0FFC49B7BFFBD7F54FFB49B95FFF7F5F5FF86B2D3FF00B1F9FF00CBFEFF00DB
      FEFF00E8FEFF2BD5E1FFDDD5D5FFEEE9E9FFEBE6E6FFE7E2E2FFD1C5C5FF1BB7
      C8FF00DDFEFF00CEFEFF00BDFEFF468AABFFBCABABFFC2B2B2FFBDADADFFB7A5
      A5FFB19E9EFFA18B8BFF555664FF222622FF000000000000000000000000D8DC
      DCFF9C8D65FFBEBE65FFFFCE94FFFDC98FFFFDC990FFFDC88EFFFDC68AFFFDC4
      88FFFDBD7BFFFB8E56FFF28B4EFFD18435FFA36105FFB78B39FF73A444FF5AC5
      55FF1FE16DFF04E674FF3DD36DFF69BF55FF45D45CFF4AD961FF60785EFF9B7F
      6BFFB49480FF9C8787FF555664FF000000000000000000000000000000000000
      000000000000000000000000000000000000607189FF00B4FAFF00D1FFFF059A
      E9FFB3843AFFFFBE00FFB0943EFF117CD5FF3C434FFF9A7532FF000000000000
      00000000000000000000000000000000000083AF46FFFFF55BFFFFDC5FFFFFB9
      17FFFFA800FFE86708FF503B39FF000000000000000000000000ABABABFFFEFF
      FEFFB2C98AFF9AA950FF9C9A3BFFA89437FFB4953FFFC39A56FFD1966DFFE098
      5FFFE8986DFFCF8666FFF39664FFFD9C66FFF09562FFF19660FFE98D56FFDD83
      4EFFD77E4BFFE68249FFF88F3EFFFFA02EFFFAAD1DFFF4AA10FFEE9604FFF8B3
      61FFF7F6F7FF6B8198FF26527DFF282928FF00000000FBFBFBFF9B9393FFA99A
      9AFF827067FF8B6F6FFFBDADADFFFDFCFCFF439DD2FF00B1FEFF00BFFEFF00CF
      FEFF00DCFEFF1CD0E2FFE1D8D8FFF2EEEEFFF0ECECFFECE7E7FFD6CBCBFF1AB0
      C8FF00D1FEFF00C3FEFF19A7DCFFB2A0A0FFD0C3C3FFCABCBCFFC4B6B6FFBEAF
      AFFFB6A3A3FF7E6B6EFF1C3C5CFF222322FF0000000000000000999191FF9689
      89FF33B242FFB7C86DFFFFC789FFFDC587FFFDC587FFFDC485FFFDC282FFFDC1
      7FFFFDBE7BFFFDBD78FFF37448FFC48245FF925C21FFB56A08FF948435FF119E
      46FF05E372FF07E577FF11DA6EFF44D75BFF50E168FF50DC66FF51CA63FF6179
      5FFF8A7B7BFF756366FF1C3C5CFF000000000000000000000000000000000000
      000000000000000000000000000000000000586F87FF00E4FFFF00E3FFFF00D0
      FFFF277DBDFFBB8D2EFF2B87BAFF00E1FFFF00CFFFFF215686FF7E702EFF0000
      000000000000000000000000000045AD48FFF7DD53FFFCDF53FFFDD25CFFFFBB
      0EFFFFBF00FFFFA405FF4E332DFF0000000000000000FAFAFAFFB4B4B6FFF6FC
      F0FFD1E6C2FFA8D391FF79BA58FF6DB64CFF63B03BFF59A423FF457685FF4175
      65FF5C7B11FF977929FFC27940FFDD7E49FFE57E46FFE27C43FFE47C43FFDE78
      3EFFD57038FFCC6A35FFC8642FFFC85A25FFD0571CFFDE641BFFE97312FFFBD5
      A8FFEFF4F7FFA3A5A5FF969DA4FF2B2B2BFF00000000E0DBDBFFC2B2B2FFDBD1
      D1FFF0ECECFFFCFBFBFFD0C4C4FFFDFDFDFF1C90D7FF00A7FEFF00B5FEFF00C1
      FEFF08D0FEFF40CBE3FFE3DCDCFFF6F3F3FFF3F0F0FFF1EDEDFFDAD0D0FF39AE
      C9FF0BC9FEFF04B4F6FF989196FFDBD1D1FFD6CCCCFFD1C5C5FFCCBEBEFFC8B8
      B8FF9E8686FFA28C8CFF867274FF232323FF00000000DCD8D8FF9AA091FF57D9
      6CFF4DF96DFFC4D97FFFFFC281FFFDC07FFFFDC07FFFFDC07EFFFDBE7BFFFDBD
      78FFFEBA74FFFEB870FFFC5924FFFFA54BFFD88A46FFDC8C33FFDB830BFF9D8D
      39FF08AB59FF0AD873FF3DD258FF53E56CFF54E26CFF54DE6AFF55DA69FF55D7
      68FF52644CFF726363FF7D6A6CFF232323FF00000000000000000000000055D4
      69FF2FA260FF9DAF6AFF00000000E6AF75FF3B6E9DFF00C7FFFF0099FFFF0097
      FFFF0091F8FF02A5EAFF00D0FBFF00E9FFFF00C0FFFF00A1FFFF404F63FF9788
      37FF000000000000000039AD49FFCBBA48FFF8CD4DFFF2C751FFFDCA4AFFFFC1
      00FFFFB803FFCF6F13FF6D5A5BFF0000000000000000E6E6E6FFCDCDCEFFF3F9
      EEFFD2E5C1FFA2CA82FF9EC97DFFB0DA98FF7EBC58FF64B031FF53A554FF49AF
      E8FF28A262FF247F00FF2F6500FF515609FF9C6C35FFCA844DFFBD7F3AFFC472
      29FFD5671EFFDA6117FFD95B13FFD45412FFCD500FFFBF4402FFBF4D12FFFFF2
      EBFFBEC0C1FFC4C5C6FF000000000000000000000000D6D1D1FFE9E4E4FFFEFE
      FEFFFEFEFEFFFEFEFEFFD5CACAFFFDFDFDFF1C90DAFF009BFEFF00A8FEFF18BE
      FEFF51D7FEFF66CAE4FFE6E0E0FFF8F7F7FFF7F5F5FFF5F1F1FFDDD5D5FF5CAF
      CAFF51D2FEFF799DAEFFDBD2D2FFE1D8D8FFDCD3D3FFD8CECEFFD3C8C8FFAE9A
      9AFFCCBEBEFFE6E0E0FFA29393FF262626FF4B566AFFCCC7C7FF5FE376FF52FF
      73FF52FF73FFC5DB84FFFFBE75FFFDBC77FFFDBC77FFFDBB75FFFDBA73FFFEB8
      71FFFDB66DFFFDB264FFFD904CFFFA7A3DFFF79A4FFFFCAA57FFF39730FFE588
      0CFF8D833CFF2A9744FF51DC68FF57E56FFF58E36FFF58E06EFF59DC6DFF4FCD
      60FF5BC869FF769078FF807474FF252525FF0000000000000000000000002C9C
      6EFF00A1F8FF1C7AB0FF7C6B66FF2B74ADFF00C5FAFF00C3FFFF0090FFFF0091
      FFFF009EFFFF00DEFFFF00E2FFFF00C3FFFF0093FFFF008EFFFF1750AFFFBC6F
      0DFF857A38FF407432FFCEAB42FFF2B845FFE7AE42FFF5C059FFFFCC1FFFD580
      0BFF6E7133FF67715AFF000000000000000000000000CACACAFFEAEAEAFFFCFD
      FBFFEBF4E6FFE6F1DFFFD9EACDFF96C776FF71B348FF8FCC6EFF66B432FF5ABD
      61FF96B8B0FF70954DFF318702FF276E00FF336012FF788F61FF8CB278FF729F
      4BFF608824FF617F0FFF6E7405FF856406FF995607FFAB4903FFD38349FFFFFF
      FFFFA19F9EFF00000000000000000000000000000000C5C1C1FFDED7D7FFF9F8
      F8FFFEFEFEFFFEFEFEFFD5CBCBFFFEFEFEFF248FD5FF008FFEFF08A0FEFF6DD2
      FEFF6DD6FEFF7ECAE4FFE8E2E2FFFBF9F9FFF9F8F8FFF7F6F6FFE1D8D8FF6FB0
      CAFF7BBBD8FFCABCBCFFE9E4E4FFE6E0E0FFE2DBDBFFDED6D6FFC9BABAFFBAA8
      A8FFECE7E7FFE9E3E3FFAA9A9AFF2E2E2EFF0000000087D092FF47F266FF50FD
      71FF52FF73FFC5DD87FFFFB96CFFFEB86FFFFEB86EFFFEB76DFFFEB66CFFFEB5
      69FFFDB466FFFDAC5AFFFBBA78FFFEAB56FFFEA853FFFEA84FFFFFA850FFF79B
      36FFDF870DFFA28A39FF44AF56FF59E170FF5DE372FF5CE172FF58D66AFF55CF
      65FF67E17AFF68DF7BFF877A7AFF2C2C2CFF00000000000000002FA95EFF0098
      F0FF00D9FFFF00C5FEFF00ACFAFF00D0FFFF00D8FFFF00B2FFFF0092FFFF0094
      FFFF0094FFFF0097FFFF009BFFFF0095FFFF0094FFFF008CF4FF0089E9FF3D60
      87FFBC7E2CFFEEA63BFFE5A03CFFDD983AFFECAE53FFFFD037FFEC9506FF5382
      3DFF0000000000000000000000000000000000000000B4B4B4FFFDFDFDFFFFFF
      FDFFFFFFFCFFFFFFFFFFD7E9CFFF89BC67FFA5D08DFF99CD7FFF79BE59FF74C5
      46FF97CB74FFBBB1B4FF77905CFF3E8C0DFF3F870DFF325D01FF4D6825FF759B
      59FF6DB151FF409922FF217F05FF1C6200FF224B00FF243400FFA5A98AFFFFFE
      FEFFAAA8A7FF00000000000000000000000000000000B4B4B4FFD7CDCDFFC3B5
      B5FFB09E9EFFBAA9A9FFCEC1C1FFFEFEFEFF62ADD6FF0083FEFF39AEFEFF8CD6
      FEFF8CDAFEFF95CBE6FFE9E4E4FFFDFCFCFFFBFBFBFFF9F8F8FFE3DCDCFF87A9
      BCFFB4A9ABFFF1EDEDFFEEE9E9FFEBE6E6FFE7E1E1FFDED7D7FFA58F8FFFC8B8
      B8FFB5A2A2FFA58E8EFFA79898FF373737FF00000000B3B3B3FF81DB8DFF3FE7
      5BFF39E054FFC0D984FFFFB262FFFEB366FFFEB366FFFEB265FFFEB264FFFEB0
      62FFFBAF60FFE6AB5EFFFDB670FFFFB770FFFFA54AFFFFA449FFFFA64CFFFFA8
      50FFF29630FFE4880EFF91823DFF48A554FF5DDD72FF5EDF73FF4EC75EFF5BD2
      6BFF57CA66FF619962FF9B8D8DFF373737FF0000000000000000478F81FF00B5
      FFFF00B4FFFF009AFFFF00B2FFFF00BBFFFF00A7FFFF0096FFFF0094FFFF0093
      FFFF0091FFFF0090FFFF0091FFFF0094FFFF0093FFFF00A6FFFF00CBFFFF00A7
      FFFF617291FFDB822CFFD98838FFECAC52FFFFD437FFFFD901FFD97E0DFF4D9B
      4FFF0000000000000000000000000000000000000000AEAEAEFFFFFFFFFFFFF6
      D3FFFFF4C2FFFFF5C9FFF8F3CAFFF1EEBFFFFFF8D1FFF7F5CBFFE7F3C4FFCFEB
      ACFFAEE08CFFB0C39BFFBDAEBCFF788F5FFF41860EFF2E6800FF2F7100FF3263
      04FF5A9132FF629D30FF5C8F1EFF43710EFF345904FF2D4F04FFB9BDB2FFB7AE
      AAFFB2B0AEFFCACBCCFFC9C9C9FF454545FF0000000000000000000000000000
      000000000000EDE0BCFFD4CABAFFFDFDFDFFBFCCD6FF1294FEFF47ABFEFFABDD
      FEFFABE0FEFFADD0E7FFEBE6E6FFFEFDFDFFFDFDFDFFFCFBFBFFE6E0E0FFA99A
      9BFFF2EEEEFFF5F2F2FFF2EEEEFFF0EBEBFFECE7E7FFAF9D9DFF918480FFA699
      96FFAAA5A3FFC7C8C9FFC8C8C8FF000000000000000000000000FEFEFEFFAEF4
      9EFF52FB5FFFC6E089FFFFAE58FFFEAF5EFFFEAF5EFFFEAE5DFFFEAD5CFFFFAC
      5AFFFBAB59FFECB464FFA09451FFF3AE5AFFFFB369FFFFA447FFFFA54AFFFFA6
      4CFFFFA850FFF59A34FFDF870DFFA28C3CFF4BAD5BFF51C861FF4BC15AFF52C6
      62FF6D9F72FFB8B9BAFFC7C7C7FF000000000000000000000000D1D4DAFF0784
      E3FF00A0FFFF0099FFFF0099FFFF009BFFFF0097FFFF009CFFFF00A8FFFF01AC
      FEFF0CB4F4FF10BAF2FF04AEFCFF009DFFFF0098FFFF009BFFFF00A7FFFF00A9
      FFFF1C71D0FFDC934BFFFBC547FFFFD223FFFFC203FFFFD001FFCB7B13FF499B
      4CFF00000000000000000000000000000000766E62FFB8B8BAFFFFFFFEFFFFE8
      89FFFFE77DFFFFE77FFFFFE780FFFFE882FFFFE780FFFFE781FFFFE886FFFFE8
      89FFFFE88AFFF3E089FFD2C199FFB7ADB5FF919A7CFF838A44FF818639FF7D75
      2FFF815E23FF995122FFA44B1AFF9A410CFF8E3001FF9D592FFFEBE9E9FF836A
      5AFFB4B2B1FFA7A8A8FFADADADFF474747FF0000000000000000000000000000
      00000000000000000000F0D986FFE8E3E3FFF8F6F6FF78AED5FF2196FEFFCEE9
      FEFFCEE9FEFFC8D8E7FFECE7E7FFFEFEFEFFFEFEFEFFFDFDFDFFEDE8E8FFE1DA
      DAFFF9F8F8FFF7F6F6FFF6F3F3FFF3F0F0FFCCBFBFFF8E7472FFC1BFBFFF7E66
      56FF00000000000000000000000000000000000000000000000000000000FEE7
      88FF99EB5DFFCAE488FFFFA74EFFFEAA58FFFEAA56FFFEAA57FFFEA954FFFFA8
      51FFF9A851FFF9BC69FF2F8B40FFB8C05DFFFFBF74FFFDB166FFFFA548FFFFA5
      4AFFFFA64CFFFFA950FFF0952EFFE48A0EFF8C7F3CFF398B3EFF58CB6BFF4E85
      46FFA7A5A4FFA5A6A6FF00000000000000000000000000000000000000004476
      9FFF009EFFFF00A2FFFF00A1FFFF009FFFFF00B0FFFF18AEDFFF699C92FFB6D0
      4DFFE5D722FFDAAD24FFB9CE43FF36D0C9FF00AAFFFF009FFFFF00A2FFFF009E
      FFFF1371D7FFE9CF29FFFFC906FFC36D09FF885822FF97631BFF4E9E52FF0000
      0000000000000000000000000000000000006A6358FFD7D8DEFFFFFDD9FFFFDA
      3CFFFFDA3BFFFFDA3DFFFFDA3DFFFFDA3DFFFFDA3DFFFFDA3CFFFFDA3CFFFFDA
      3CFFFFDA3CFFFFDC3BFFFAD639FFCBB680FFAAD3E6FF7CC1D2FFD6A286FFDA94
      70FFC7825DFFB76B44FFA64D27FFA03E11FF972B00FFCF9579FFFFFFFFFF8B52
      31FFE3E0DEFFCBCCCDFFBCBCBCFF484848FF0000000000000000000000000000
      00000000000000000000F9D53CFFC0AF9EFFFEFEFEFFDCDBDDFF3D9FE6FF82C8
      FEFFF0F8FEFFE2E3E8FFEDE8E8FFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFC
      FCFFFCFBFBFFFBF9F9FFF8F7F7FFECE7E7FFA08D8DFF937166FFDDDDDDFF874F
      2FFF000000000000000000000000000000000000000000000000000000000000
      0000FED93BFFE6E086FFFFA244FFFEA64DFFFEA64DFFFEA64CFFFEA64CFFFFA5
      4BFFF7A44AFFFFC46DFF349746FF59EC74FFBCB558FFE0A04AFFFFB36AFFFFA5
      49FFFFA54AFFFFA64CFFFFA950FFF69A34FFE0870FFF9C8437FF69916FFF7B48
      2BFFE2DFDDFF0000000000000000000000005C5851FF69809FFF607F9CFF0F73
      D4FF0097FFFF00A8FFFF00A7FFFF00BAFFFF4C989AFFE39748FFD4833AFFE077
      10FFC16F1EFFBA763BFFFB7A01FF6FD891FF00D4FFFF00ABFFFF009EFFFF217C
      C0FFBBC036FFFFE100FFBD641CFFDE8A2FFF000000009A8236FF000000000000
      0000000000000000000000000000000000005E5950FFF2F6FBFFFFE6A5FFFFBA
      21FFFFBF2DFFFFC130FFFFC232FFFFC232FFFFC233FFFFC233FFFFC233FFFFC2
      33FFFFC233FFFFC233FFFFC730FFF0BB30FF9ECDB4FF91F3FFFF6BCBB4FFE8BA
      45FFFCBC3FFFEEB148FFCC864DFFAB5727FF963307FFECD1C2FFD8D2D0FFA354
      27FF000000000000000000000000000000000000000000000000000000000000
      000000000000FDBF30FFD4A440FFA38D8DFFDCD3D3FFFEFEFEFFCED0D5FF158E
      E4FF5AB5FEFFDAE1E9FFEDE9E9FFFEFEFEFFFEFEFEFFFEFEFEFFF9F8F8FFF9F7
      F7FFFDFDFDFFFCFCFCFFFBF9F9FFF9F7F7FFB5A3A3FFA9958BFFAEAAA8FF964D
      24FFE2DFDDFF0000000000000000000000000000000000000000000000000000
      000000000000FED888FFFFA140FFFFA54AFFFFA54AFFFFA54BFFFFA54BFFFFA6
      4CFFF59F43FFFFC66FFF369648FF5CEE77FF6DF07CFFBAB960FFEFA74DFFFDB2
      65FFFFA447FFFFA54AFFFFA64CFFFFA950FFF0932BFFE48A0FFF917344FF703A
      1BFFDBD8D6FF000000000000000000000000394758FF007DFFFF007FFFFF007B
      FFFF0099FFFF00AFFFFF00BDFFFF56938CFFF7A048FF0000000000000000F29D
      47FF00000000E0AA5EFFE77B0FFF41E3BFFF00E4FFFF00BBFFFF0097FFFF5F73
      7FFFFFB900FFE48710FFBC7332FF000000000000000000000000000000000000
      0000000000000000000000000000000000005F5D5AFFFFFFFFFFFFEDD4FFFFC9
      8EFFFFB672FFFFA85EFFFFA254FFFF9E4FFFFF9F50FFFF9F4FFFFF9F52FFFFA0
      54FFFFA156FFFF9F55FFFFB16AFFFFE09EFFE5DA9BFF99E7F5FF93F5FFFF5FC3
      C0FFE7A459FFFFA651FFFFA959FFF39B58FFDA8C60FFFFFDFCFF9B7D6BFFB55C
      2BFF000000000000000000000000000000000000000000000000000000000000
      000000000000F6A25BFFA08179FFE6E0E0FFF2EEEEFFE4DEDEFFFEFEFEFFEBE6
      E6FF54A8DAFF2990DCFFEEE9E9FFFEFEFEFFFEFEFEFFFEFEFEFFECE7E7FFBFB0
      B0FFFEFEFEFFFDFDFDFFFCFCFCFFFBFBFBFFF5F2F2FFB1A3A3FF755E52FF964C
      24FFD8D6D4FFDDDEDFFF00000000000000000000000000000000000000000000
      000000000000FCD199FFFFA141FFFFA64CFFFFA64CFFFFA64CFFFFA64CFFFFA7
      4EFFF49B3BFFFFC56FFF389549FF5EED78FF62F17DFF63EB7BFFBFB156FFF1AF
      67FFFFB267FFFFA549FFFFA54AFFFFA64CFFFFA950FFF49933FFE0890FFFA772
      30FFA7A5A4FFDADBDCFF0000000000000000304561FF007BFFFF0082FFFF008A
      FFFF00B0FFFF00BCFFFF25A7C4FFE39646FF0000000000000000000000000000
      000000000000FDC36EFF647E4CFF07ECFFFF00E3FFFF00BFFFFF00AFFFFF077B
      F2FF7A5C5BFFE79442FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000666562FFEBEBEBFFF3F6F9FFFDFF
      FFFFFFFEFFFFFFF4EFFFFFE0D2FFFFCBB2FFFFBA99FFFFC5A1FFFFB488FFFFAD
      76FFFFA66CFFFF9B60FFFF965FFFFFAE84FFFFDBB8FFD8E4D9FF8FE3F3FF8CF7
      FFFF58C0D1FFE6956BFFFF9662FFFF945DFFFFC3A1FFFFFFFFFF8E5732FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CEBEBBFFCEBFBFFFFEFEFEFFFEFEFEFFF2EEEEFFD7CECEFFF9F8
      F8FFFEFEFEFFE2DBDBFFEEEBEBFFFEFEFEFFFEFEFEFFFEFEFEFFECE7E7FFBFB5
      B5FFD3C9C9FFFEFEFEFFFDFDFDFFFDFCFCFFFCFBFBFFEBE6E6FF92776DFF8E4D
      26FFC6C3C1FFD7D8D9FFCBCBCBFF000000000000000000000000000000000000
      0000FEFDFEFFECD4B5FFFE9B37FFFBA144FFFBA144FFFBA144FFFBA144FFFCA2
      46FFEF922BFFFCC16CFF379047FF5DE476FF64EE7DFF67EE7EFF70E378FFC3B9
      66FFF0A94FFFFFB162FFFFA54AFFFFA64BFFFFA74DFFFFA951FFF0942BFFE38A
      0FFF95784BFFA2A3A4FFC5C5C5FF00000000324766FF009BFFFF00C0FFFF00BC
      FFFF00BCFFFF00C8FFFF847C54FF000000000000000000000000000000000000
      000000000000E7B264FF0DA8B1FF00DCFFFF00D2FBFF00C2FFFF00C8FFFF0097
      F8FF99744DFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F4FFF2F2F2FFCEC9
      C7FFC2987CFFD8BEACFFE8E2DCFFF7FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
      F9FFFFF8EDFFFFEFD9FFFFDCB3FFFFC591FFFFCB90FFFFDC9CFFCBE2D6FF84E7
      F9FF82FAFFFF60BECAFFEC9564FFFF915BFFFFDECBFFE5E6E5FFA55721FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDACABFFF9F8F8FFFEFEFEFFFEFEFEFFE1DADAFF9E8787FFC6BB
      B9FFD8CFCEFFE1DADAFFF0ECECFFFEFEFEFFFEFEFEFFFEFEFEFFEDE8E8FFBFB5
      B5FFB3A9A9FFE7E1E1FFFEFEFEFFFEFEFEFFFDFDFDFFFCFCFCFFDCD2D2FF986E
      59FFB2AEADFFC7C9CAFFC4C4C4FF000000000000000000000000000000000000
      0000CCA284FFE7D0B0FFF29127FFF19734FFF19734FFF19734FFF19734FFF298
      35FFEB9026FFF6AF51FF6E8858FF58A059FF5FDD76FF68EC7FFF65E47BFF56CD
      68FFC3B063FFFFA54BFFFEA245FFFDA347FFFDA347FFFEA449FFFFA74DFFF195
      2CFFF59B2CFFB88F57FFA0A0A0FF00000000444F5EFF00A5FFFF00C3FFFF00C2
      FEFF00C3FFFF00C2FCFFAB742DFF000000000000000000000000000000000000
      0000CB7F25FF3B98A1FF00C7FEFF00BCF1FF00CBFDFF00B7FEFF018AE9FF1A71
      8DFFBBA95FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE7E42FFCD8C58FFD0A079FFD8B89DFFE2D2C4FFF0EB
      E7FFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFC1EB
      F6FF78E5F6FF73F8FFFF6EC0B7FFF4B164FFFFFCF6FFAF9D8EFFC26827FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5875FFFE4DDDDFFF9F8F8FFCCBEBEFFA68D87FFCABAAFFFEBE6
      E2FFFBFDFEFFDED8D8FFF0ECECFFFEFEFEFFFEFEFEFFFEFEFEFFEDE9E9FF9DAA
      AFFF6ACAD9FFA8BBBDFFF5F3F3FFFEFEFEFFFEFEFEFFFDFDFDFFFDFCFCFFC8B8
      B8FFABA4A4FFBDBEBFFFBBBBBBFF434343FF0000000000000000000000000000
      0000CB905EFFF3B569FFE98B1FFFE88F27FFE88F27FFE88F27FFE88F27FFE88F
      28FFE98F27FFEF9125FFF7A43FFFE7BA6EFF469F56FF69E77FFF66E17BFF48B5
      5DFFC7B270FFEEA34BFFF39835FFF29836FFF29836FFF29836FFF39937FFF49A
      39FFFB9B38FFFFB654FF878787FF00000000605C55FF5688BCFF0B6ED8FF00A0
      F9FF00CDFFFF00CBFFFF3C7B80FFAA6E26FFD18123FFD28223FFB97726FF796D
      47FF1995C2FF00AEF7FF00A3E9FF00BBF6FF00C7FFFF1177B1FF53B86BFF47B3
      5CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E19958FFE1A3
      66FFDFAD7CFFDFBB97FFE4CDB6FFEBE1D6FFF5F3F2FFFEFEFFFFFFFFFFFFFFFF
      FFFFC4EDF8FF72E6F6FF63F4FFFF82DEE5FFFDFEFFFF9B6D4BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C98F67FFC1AEAAFFC2906DFFD88F4FFFDF9857FF0000
      000000000000D6B79DFFF1EDEDFFFEFEFEFFFEFEFEFFFEFEFEFFEEE9E9FFBFBB
      BBFFAED2DCFF74DDECFFB7BCBDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFDFD
      FDFFB7A7A7FFB6B5B6FFABABABFF474747FF0000000000000000000000000000
      0000FFE29CFFDE7D04FFDE8514FFDE8617FFDE8617FFDE8617FFDE8617FFDE86
      17FFDF8717FFDE8411FFE28108FFFFCC75FF489E57FF6CE580FF7CDA7DFFCCAB
      5CFFF3921EFFE98E21FFE78E23FFE78F24FFE78F24FFE78F24FFE78F24FFE78F
      24FFEC8F20FFFEB550FF808080FF0000000000000000B2BAC5FF0263EFFF0082
      FFFF00CEFFFF00D1FFFF00B4F9FF0487D7FF1D7AACFF1B7CB1FF058AD8FF0096
      EEFF008FE8FF008DE3FF00B0F3FF00D8FFFF00A1F3FF3C8B69FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2B46FFFECB477FFE3B889FFE2C2A0FFE5D1
      BDFFF3E7DEFFC8E6EFFF6DE8FAFF5FF7FFFF87D4E4FF9C5A2AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4B07CFFF1EEEEFFFEFEFEFFFEFEFEFFFEFEFEFFEEEBEBFFB0A1
      96FFD7CDC5FFC4E1EAFF7ADAE9FFD6CCCCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFF8F7F7FFB1A1A1FF9C9C9CFF505050FF0000000000000000000000000000
      0000FFE097FFD57300FFD97A00FFD97A00FFD97A00FFD97B00FFDA7B00FFDA7B
      00FFD87C00FFE38101FFFBC77BFFAFBB72FF65D978FF6FE782FF9BD681FFE798
      30FFE28208FFE1840DFFE1840DFFE1850EFFE1850EFFE2850FFFE2850EFFE385
      0EFFEC9424FFB89262FF949494FF0000000000000000B7BDC6FF016DF2FF00A4
      FFFF00DBFFFF00DBFFFF00CFFEFF00A0EEFF0080E4FF007BE2FF007AE0FF007C
      DFFF0092E7FF00BFF9FF00D3FFFF00DBFFFF00A8FAFF3A8A72FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEB196FFCFB49CFFB7AFA1FF54C9D6FF57EFF9FF4C6464FFA6826AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1B9A3FFF2EEEEFFFEFEFEFFFEFEFEFFFEFEFEFFF0ECECFFA792
      81FFB79D85FFCBB099FF0000000080B9C0FFE8E2E2FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFE9E3E3FFA79B9BFF5C5C5CFF0000000000000000000000000000
      0000E4D7BBFFE7CBAEFFE9CEB0FFE7CFAEFFE7CDACFFE7CCABFFE6CAA7FFE6CA
      A5FFE5C8A3FFDCCF9DFF56C068FF69E17DFF6FE683FF70E784FFACCB9AFFD1B0
      81FFD4B182FFD6B586FFD0B385FFC1B48AFFDBBC90FFE0C295FFE0C191FFE0C1
      90FFD9C2A0FFDCD7D7FFA69A9AFF0000000000000000D9DADDFF168EE3FF00E4
      FFFF00CBFEFF00C4FAFF00E0FFFF00D9FFFF00C8FBFF00BBF6FF00BBF6FF00C8
      FAFF00DAFFFF00B9F9FF15729DFF137DB3FF2F8480FF6DE180FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBEFF5FF5FDEF1FF56ECF8FF738B90FFF2F5
      F5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDECEEFFF3F0F0FFFEFEFEFFFEFEFEFFFEFEFEFFF0ECECFFC7C6
      C7FFE3E6E8FFF5FAFBFF0000000000000000A0BDC3FFF6F3F3FFFEFEFEFFFEFE
      FEFFEBE6E6FFDCD2D2FFB7A6A6FF928E8EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECEBEDFFA1E4ABFF6FE883FF70E784FF8FD29BFFDEDADAFFC5C4
      C5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0B2C6FF148A
      DEFF7092B6FF3377C4FF00BDFFFF00EAFFFF00E2FFFF00CEFEFF00D3FDFF00F3
      FFFF00C3FBFF6480A8FF9FE1A9FF6DE380FF6EE382FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9F2F5FF6BC6D3FF4CD5E2FF8E98
      9BFFFBFBFBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5F3F3FFE3DEDEFFDFD8D8FFE6E0E0FFE4DEDEFFDDD5D5FFE1DE
      DEFFF5F5F5FFFDFDFDFF0000000000000000E5EDF0FFB7B6B8FFB5C2C5FFA09A
      9BFFD9D2D2FFE3E0E0FF8C8C8CFFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2DDDDFFA5D5A9FFA4D5A9FFD9D4D4FFDCD4D4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFAFFF0F1
      F2FF00000000618CC4FF00C5FFFF00DDFFFF2F86C7FF8EA0BAFF2683D6FF00B5
      FCFF3185C8FFD1D1D4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000969798FF51C3D7FF499E
      ABFF989898FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A09F9FFF9697
      99FF969798FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D9995FF9B9794FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000707B81FF3E6F9AFF356B9DFF7D8184FF000000006C7682FF636F
      80FF8E9294FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F6FF929295FF575961FF757070FFA49C9CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000888888FF676767FF787878FFA1A1A1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F8FFE0E0
      E0FFC9C9C9FFAFAFAFFF626264FF393A40FF4D4949FF6C6767FF7A7A7AFF7D7D
      7DFF828282FF818181FF676767FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9B9B9FF4A5B6BFF0F578DFF4188BBFF1B456AFF3D373EFF494141FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCDCDCFFD0D0D0FFDBDBDBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686FF4E624DFF2B8A22FF275C23FF444D44FF5D5D5DFF5F5F5FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBCBCBFFB3B3B3FF878787FF757575FF7979
      79FF878787FF969797FFA2A2A3FFA4A5A5FFA4A4A4FFA1A1A1FF939393FF7B7B
      7BFF656565FF404640FF1F511AFF1E471BFF404840FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000929292FF5C5E
      62FF154063FF1773B3FF2D99E3FF85D0FFFF81C1EFFF2C6A9BFF13263DFF4444
      44FF707070FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5C66FF272E57FF4C4C4FFF7C7C7CFF000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      42FF385236FF2E9A1EFF3DA226FF27940FFF1A850BFF1F581BFF454B45FF4848
      48FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4D56FF373948FF828283FFBABABAFFD7D7D7FFE2E2
      E2FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3
      E3FFE2E2E2FFD4D4D4FFB4B4B4FF6B7769FF254920FF174114FF444A44FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000232323FF101E2EFF0A51
      87FF248BD1FF2C9BE5FF2C98DFFF75C1F8FF8FD5FFFF84D0FFFF4D98CFFF0D3E
      65FF0D3459FF202E39FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000969696FF3F4040FF2224
      23FF1D1E1EFF1D1D1DFF1C1D1CFF1B1B1BFF1A1A1AFF181818FF0B151FFF0937
      5AFF1A5D8BFF1F6898FF1F6694FF4F80A4FF608DA9FF588AA9FF34668AFF0B2B
      44FF0B243CFF172027FF222222FF232323FF232323FF242424FF252525FF2929
      29FF242424FF606060FFABABABFF000000000000000000000000000000000000
      00001D1E1EFF101222FF1740B9FF1D53F6FF0422B1FF070E40FF060C13FF0831
      50FF000000000000000000000000000000000000000000000000316082FF0D3D
      20FF31A520FF1B9204FF2D9B19FF1F9108FF198F00FF1D9807FF138007FF0D3B
      0BFF151715FF575757FF00000000000000000000000000000000000000000000
      0000000000000E0F1DFF6E7488FFE2E2E2FFEFEFEFFFEFEFEFFFECECECFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEFEFEFFFEEEEEEFFD6D6D6FF5C6D59FF0E5F05FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009F6717FF65430FFF17394CFF1871B0FF2A96
      DDFF2C9AE3FF2996DEFF2B97DEFF6EBFF8FF80CBFFFF78CAFFFF79CEFFFF61B7
      F2FF246BA1FF0D2E4BFF623F09FF9C630DFF0000000000000000000000000000
      0000000000000000000000000000000000008E928FFF554C2EFFB3AFA7FFD0D0
      D0FFCECECEFFCCCBCBFFCCCBCBFFCBCACAFFC9C9C9FFC9C9C9FFC8C8C9FFC7C8
      C8FFC6C7C7FFC4C5C5FFC3C4C4FFC3C4C4FFC3C3C3FFC1C2C2FFC0C1C1FFC0C1
      C1FFBFBFC0FFBEBEBEFFBEBEBEFFBEBDBDFFBDBCBCFFBCBBBBFFBCBBBBFFBCBC
      BCFFB8B7B7FF797979FF4B4B4BFFBBBBBBFF000000000000000000000000CBCB
      CBFF646980FF1446CFFF1358FFFF1955FFFF073DFFFF0C3DF6FF0B26A4FF3337
      5BFF7F7F7FFFB5B6B6FF000000000000000000000000B1B2B2FF4B7B47FF2FAD
      1DFF1B9C06FF139400FF2EA51BFF1D9B08FF159600FF169700FF199C01FF1A9E
      06FF137B0AFF224622FF313131FFB1B1B1FF0000000000000000000000000000
      0000000000003E538DFFF7F7F7FFF7F7F7FFF2F2F2FFF2F2F2FFF1F1F1FFEDED
      EDFFEAEAEAFFE3E3E3FFDCDCDCFFDBDBDBFFD8D8D8FFD7D7D7FFDBDBDBFFDFDF
      DFFFE7E7E7FFF1F1F1FFF2F2F2FFF2F2F2FFFAFAFAFFECECECFF2B6121FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6B687FF5E5F58FF0C4E7FFF2281C4FF2A8ED2FF2582
      BFFF2990D6FF2997E0FF2B97DEFF66BCF8FF77C9FFFF6ABCF7FF61B4EFFF67C3
      FFFF61C2FFFF3A93D4FF134772FF5C5D59FFC9BBA3FF00000000000000000000
      0000000000000000000000000000000000007E5E2FFFEAEAEAFFFFFFFFFFFCFC
      FCFFFAFAFAFFF8F8F8FFF6F6F6FFF4F4F4FFF2F2F2FFF0F0F0FFEEEEEEFFECEC
      ECFFEAEAEAFFE8E8E8FFE6E6E6FFE4E4E4FFE2E2E2FFDFDFDFFFDDDDDDFFDBDB
      DBFFD9D9D9FFD7D7D7FFD5D5D5FFD3D3D3FFD1D1D1FFCFCFCFFFCDCDCDFFCACA
      CAFFCACACAFFE0E0E0FF8D8D8DFF7C7C7CFF0000000000000000F4F4F4FF6974
      97FF1952E2FF1258FFFF1357FFFF205EFFFF0C44FFFF0E49FFFF104BFFFF1041
      EDFF102592FF494963FFA1A1A1FFDBDBDBFFC5C5C5FF4E8844FF2AB317FF16A4
      03FF14A100FF13A100FF2DAE1CFF1CA609FF13A200FF14A200FF14A200FF15A3
      00FF17A802FF15A405FF106D0CFF595B59FF0000000000000000000000000000
      0000000000004E6AACFFFFFFFFFFFDFDFDFFFBFBFBFFF9F9F9FFF6F6F6FFECEC
      ECFFDDDDDDFFDFDFDFFFE5E5E5FFE6E6E6FFE4E4E4FFDCDCDCFFCECECEFFC9C9
      C9FFCCCCCCFFDEDEDEFFFCFCFCFFFBFBFBFFFFFFFFFFFFFFFFFF317328FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9C5A7FF908575FF234663FF16639EFF2A85C9FF2A83C3FF2477B1FF2478
      B3FF2680BEFF2993DAFF2B97DFFF5FBAF8FF6DC4FFFF5CAFE9FF51A3DBFF52AD
      ECFF55BAFFFF54BEFFFF42ACF4FF196BA7FF25405AFF888584FFE1DAD5FF0000
      000000000000000000000000000000000000B5A185FFFFFFFFFFF9F9F9FFF8F8
      F9FFF8FCFFFFF5FAFDFFF3F7FBFFF1F5F8FFEFF3F6FFEDF1F5FFEBEFF2FFE9ED
      F0FFE7EBEEFFE5E8ECFFE3E6EAFFE1E4E8FFDFE2E6FFDDE0E4FFDADEE1FFD9DD
      E0FFD7DBDFFFD5DADDFFD4D8DBFFD2D6D9FFD0D4D8FFCED3D6FFCDD2D5FFC9CC
      CEFFC3C3C3FFC4C4C4FFCDCDCDFF535353FF00000000ECECECFF596A98FF1B5D
      EEFF1660FFFF135AFFFF1861FFFF2567FFFF124FFFFF1352FFFF1352FFFF1454
      FFFF1555FFFF1343E1FF172481FF4C585DFF3F9331FF26BB13FF13AD02FF12AC
      00FF13AC00FF10AB00FF2BB71DFF19AF09FF12AC00FF13AC00FF12AC00FF12AC
      00FF13AC00FF13B200FF139C08FF363D36FF0000000000000000000000000000
      0000000000001953DAFFBDC5D5FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FFDBDB
      DBFFEBEBEBFFF5F5F5FFF9F9F9FFF9F9F9FFFAFAFAFFF8F8F8FFF2F2F2FFDADA
      DAFFD3D3D3FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFF8DA78AFF109700FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000064727DFF0A4778FF206FADFF2B7FC0FF2777B4FF246EA6FF2681BFFF288C
      D0FF2479B4FF2683C3FF2B94DBFF59B7F8FF61BCFCFF51A6E2FF4798D3FF336C
      A0FF3E93D3FF44B2FDFF42B6FFFF3CB5FFFF248ED8FF0B4877FF384A5AFF5A88
      AFFF00000000000000000000000000000000B9AD9AFFFFFFFFFFFCFCFCFFF2EF
      ECFFE8CAB5FFEACBB5FFEBCEB7FFEBD0B9FFECD1BAFFEDD3BCFFEED4BEFFEED6
      BFFFEFD7BFFFEFD7C0FFEED7BFFFEED6BFFFECD5BEFFECD3BCFFEAD2BAFFE8CF
      B8FFE7CCB5FFE5CAB3FFE3C7B0FFE1C3AEFFDFC0AAFFDDBDA8FFD9B6A0FFE3D1
      C4FFCED0D1FFC4C4C4FFCCCCCCFF4D4D4DFFA89D8CFF5068A4FF1E66F9FF1B68
      FFFF1964FFFF1863FFFF1E69FFFF2B6FFFFF175AFFFF185BFFFF185BFFFF195B
      FFFF195CFFFF1A60FFFF1856FFFF1E5485FF3CC529FF0CB700FF10B600FF10B6
      00FF10B600FF0CB500FF2EC224FF20BB13FF18B809FF1BB90CFF1BB90DFF16B8
      07FF0FB500FF10BB00FF139E08FF333933FF0000000000000000000000000000
      000000000000000000002162E3FF6880B3FFBABEC8FFEBEBEBFFD0D0D0FFE6E6
      E6FFEBEBEBFFE8E8E8FFE8E8E8FFE8E8E8FFE7E7E7FFE7E7E7FFE8E8E8FFEBEB
      EBFFD5D5D5FFE6E6E6FFF3F3F3FFA1B39FFF3E8537FF19A80BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003C5F7AFF236DAAFF2B76B4FF266CA5FF23689FFF2783C3FF2A98E0FF2A99
      E2FF288DD1FF2478B2FF2988CBFF52B4F9FF54B1F2FF459DDAFF2F679DFF2349
      7DFF28598FFF3086C5FF34A7F6FF31AEFFFF2EB0FFFF23A3F7FF0B62A2FF084C
      87FF00000000000000000000000000000000B7AA95FFFFFFFFFFFFFFFFFFE2D6
      CFFFBD6224FFC46725FFCA702EFFCE7735FFD37D3BFFD68441FFDA8946FFDD8E
      4BFFDF924FFFE09451FFE19652FFE29652FFE09551FFDF924EFFDC8E4BFFDA89
      47FFD68441FFD37D3CFFCF7635FFCB702FFFC56928FFC16121FFB84F0CFFD79E
      7AFFD4D9DCFFC5C7C8FFCDCDCDFF4C4C4CFF666C7DFF2877FFFF2070FFFF1E6D
      FFFF1F6DFFFF1E6CFFFF2472FFFF3179FFFF2065FFFF2368FFFF2368FFFF2067
      FFFF1D65FFFF1F66FFFF1E61FFFF245D8EFF3CC52BFF09C100FF0FC000FF0FC0
      00FF0FC000FF08BF00FF3BD135FF34CE2AFF30CB24FF31CB26FF34CB28FF36CC
      2AFF22C715FF0DC500FF13A508FF323932FF000000002877FEFF1A5BCFFF1549
      A9FF1548A7FF1447A7FF194EAFFF2152ADFF193E91FF4E5B77FFC7C7C7FFD0D0
      D0FFCBCBCBFFC9C9C9FFC7C7C7FFC3C3C3FFC2C2C2FFC1C1C1FFBEBEBEFFBDBD
      BDFFBDBDBDFF818781FF396538FF237B1DFF228E19FF228B1BFF24871CFF2588
      1EFF188410FF0A9500FF129E08FF000000000000000000000000000000000000
      000042627BFF256AA5FF25639AFF24659BFF2887CAFF2A99E2FF2A97DFFF2A96
      DEFF2A98E1FF288BCFFF277CB8FF4AADF2FF47A4E5FF3072ABFF25578CFF275D
      94FF265C94FF265E96FF2879BAFF249AEBFF21A6FFFF1EADFFFF1082D3FF0447
      83FF00000000000000000000000000000000B5A893FFFFFFFFFFFFFFFFFFE2D7
      D0FFBB5F23FFC26322FFC76C2CFFCB7231FFCF7837FFD27D3CFFD48241FFD786
      45FFD98947FFDB8C4AFFD98946FFD78541FFDA8A49FFD98A48FFD78544FFD481
      40FFD17C3BFFCE7736FFCA7130FFC56A2AFFC16323FFBD5C1DFFB44A09FFD49B
      79FFD6DBDEFFC9CACAFFCDCDCDFF484848FF5F6981FF3489FFFF2276FFFF2477
      FFFF2477FFFF2376FFFF287AFFFF4289FFFF3A7DFFFF3C7FFFFF3E80FFFF3F80
      FFFF3278FFFF236FFFFF226AFFFF266190FF3CCC2CFF06CD00FF0CCC00FF0CCC
      00FF09CC00FF19CE10FF3FC036FF31C326FF37D42EFF46DB3DFF4DDA44FF4ED9
      45FF4EDA45FF1CD512FF0FAC05FF303730FF000000003164AAFFA0A6B1FFD2D2
      D2FFCCCCCDFFCBCBCCFFCACACBFFC8C8C9FFBFC0C4FFC3C4C8FFD5D5D5FFD3D3
      D3FFD2D2D2FFD1D1D1FFCFCFCFFFCECECEFFCDCDCDFFCCCCCCFFCBCBCBFFCACA
      CAFFCACACAFFBDBFBDFFACB3ACFFB5B8B5FFB9BAB9FFB8B9B8FFB7B8B7FFB6B7
      B6FFBBBBBBFF889887FF156510FF2E352EFF0000000000000000000000000000
      00003D607DFF225A8FFF25639AFF2882C3FF2A8FD6FF2A92D9FF2A96DDFF2A96
      DEFF2A96DEFF2A97E1FF298DD2FF3B9ADDFF317DB9FF266199FF27659EFF2768
      A2FF2869A4FF276AA5FF2869A4FF2476B7FF188EE0FF13A3FFFF097BCCFF2F5A
      81FF00000000000000000000000000000000B3A691FFFFFFFFFFFFFFFFFFE4D8
      D1FFB85B1FFFBF5E1EFFC36728FFC76C2DFFCB7232FFCE7737FFD07B3BFFD27D
      3CFFD48140FFD4813FFFDF9A60FFE7B483FFD6884AFFD38140FFD17D3CFFCF79
      38FFCD7636FFCA7131FFC76B2CFFC26626FFBE5F20FFBA581AFFB24605FFD399
      77FFD7DDE0FFCCCBCBFFCECECEFF424242FF5F6B81FF398FFFFF2A7EFFFF2B7F
      FFFF2B7FFFFF2A7FFFFF3285FFFF4890FFFF4D8FFFFF5B99FFFF5B98FFFF5B99
      FFFF5D9AFFFF3C85FFFF2773FFFF296694FF3CD22EFF04D800FF0AD600FF06D7
      00FF1ED818FF2CBB20FF13A303FF13A701FF1DB40EFF2ECB23FF49E043FF61E6
      5CFF6EE768FF4BE744FF10B408FF2C332CFF515B6DFFC4C9D0FFFFFFFFFFFEFE
      FEFFFCFDFDFFFAFAFBFFF7F7F9FFF4F6F6FFF3F4F4FFEFF0F1FFEAEBECFFE8E9
      E9FFE7E7E8FFE5E5E6FFE3E2E4FFE0E1E2FFDDDFE0FFDCDDDEFFDADBDBFFD8D9
      D8FFD5D6D6FFD4D5D6FFD4D5D6FFD3D4D4FFD1D2D2FFCFCFD0FFCCCCCEFFC9CA
      CBFFC8C8C8FFDBDBDBFF9AA59AFF212621FF000000000000000000000000AEAE
      B0FF15456CFF236198FF297BBAFF2982C3FF2985C8FF2A8ACFFF2A8FD5FF2A94
      DBFF2A96DEFF2794DEFF2697E1FF3293D3FF276BA7FF266BA8FF2871ADFF2872
      B0FF2874B1FF2875B4FF2877B5FF2977B5FF267BBCFF138DE2FF016DBAFF565E
      67FFE6C99EFF000000000000000000000000B2A590FFFFFFFFFFFFFFFFFFE3D8
      D1FFB4561AFFBB5919FFBF6021FFC26627FFC56B2BFFC96F30FFCB7231FFCF7C
      3EFFCC7737FFCA6D2AFFEDBF92FFFFFFE1FFD89158FFC96D2CFFCE793AFFCB78
      3AFFC76D2DFFC56A2BFFC26526FFBE5F1FFFBA591BFFB65315FFAE4100FFD197
      74FFD8DFE1FFCDCECEFFCECECEFF434141FF5F6A81FF3E98FFFF3089FFFF3189
      FFFF3089FFFF378EFFFF2677FFFF0B5AFFFF1765FFFF3E86FFFF68A6FFFF79B0
      FFFF7BB0FFFF6CA8FFFF3280FFFF2B6A97FF3CD830FF00E200FF04E100FF21DF
      1EFF27C11DFF0DAF00FF0DB300FF0EB400FF0CB300FF0DB500FF15C109FF30D8
      28FF5EEB59FF77F674FF23BD1CFF2C322BFF555C69FFFFFFFFFFFCFDFDFFF8F6
      F4FFF8F7F6FFF6F6F6FFF3F3F4FFF2F2F1FFF0F0F0FFEFEEEFFFECEDEDFFEBEB
      EBFFEAEAE9FFE8E8E8FFE6E6E6FFE3E3E3FFE2E2E2FFE1E1E1FFDFDFDFFFDCDC
      DCFFDBDBDBFFD9D9D9FFD7D8D7FFD6D6D5FFD3D3D4FFD2D2D2FFD1D0D0FFCFCF
      CFFFC8C8C8FFC3C3C3FFCCCCCCFF292D28FF0000000000000000787E85FF1743
      68FF195991FF2970ADFF2874B2FF2878B6FF297DBDFF2982C4FF2987CBFF2A8C
      D1FF278CD5FF309DE1FF90DBF7FFB9FBFFFF67D3EAFF2A85C0FF2975B8FF297C
      BDFF297EBFFF2980C2FF2982C3FF2983C7FF2A85C7FF298ACFFF1473B5FF123A
      5DFF7B6D59FFBA770CFF0000000000000000AFA28DFFFFFFFFFFFFFFFFFFE3D7
      CFFFB15015FFB75213FFBB591BFFBE5F20FFC16424FFC26626FFCB7536FFF0C3
      8CFFE6B57FFFDFA26CFFF9DFB2FFFEEFC2FFEDC391FFD9955CFFEDBB82FFE8B1
      76FFC26A2BFFBF6021FFBD5E1FFFBA581AFFB65315FFB34D10FFAA3A00FFCF93
      71FFDBE1E4FFD0D0D1FFCECECEFF454545FF5D6982FF43A0FFFF3692FFFF3693
      FFFF3F98FFFF2B7FFFFF0F62FFFF0C5FFFFF085BFFFF0759FFFF1B6BFFFF4E94
      FFFF82BAFFFF99C8FFFF4F9DFFFF236F9DFF37E333FF00EF00FF24E623FF2ACB
      22FF1DC20FFF2AC91DFF30CC25FF32CD27FF32CD27FF32CE27FF2CCC20FF24CB
      18FF24D31BFF41ED3CFF2CCA25FF2E362EFF545B69FFFFFFFFFFFFFFFFFFEFEC
      E9FFDCA987FFDFAA85FFE2B08BFFE4B48FFFE6B792FFE8BA95FFEABE98FFEBC1
      9CFFEEC39EFFEEC59FFFEFC5A0FFEFC5A0FFEEC49FFFEDC39DFFECC19BFFEABE
      98FFE8BA95FFE5B691FFE3B28DFFE0AE89FFDDAA86FFDCA682FFD79F7AFFDDAE
      91FFD9D7D6FFC4C5C5FFCBCBCBFF2B302BFFDD8B06FF6C6453FF0A406DFF1F59
      90FF2A649DFF2767A0FF276BA6FF2871ADFF2876B3FF287BBAFF297EC0FF297E
      C2FF2DA1DBFF81D3E4FFD7DDDAFFCAE0E1FF8BEDEEFF3AE0F2FF1E9FD7FF2B84
      C9FF2989CEFF298BD1FF2A8DD2FF2A8ED5FF2A90D7FF2B92D9FF2C95DCFF1E7F
      C1FF08416DFF4A3614FF1E1E1EFF00000000ACA08CFFFFFFFFFFFFFFFFFFE2D5
      CEFFAD4910FFB24B0DFFB65314FFB95819FFBC5C1DFFBD5E1FFFC26728FFE8B3
      7AFFFDE0ACFFF3CE9BFFE4B17EFFDFA370FFE6B37FFFF6D09AFFF3C78DFFE3A4
      6AFFC46F33FFB9591BFFB95618FFB65214FFB24C10FFAF4609FFA63400FFCE91
      70FFDDE3E7FFD3D2D2FFCECECEFF424242FF5C6983FF48A8FFFF3C9BFFFF439F
      FFFF2D85FFFF176EFFFF196FFFFF186EFFFF166BFFFF1467FFFF0E61FFFF0A5D
      FFFF2072FFFF5DA9FFFF8594D0FF86504EFF4EBC27FF29F534FF52E454FF52DB
      4AFF5DE057FF60E15AFF60E15AFF5FE259FF5FE259FF60E259FF60E45AFF61E4
      5BFF58E452FF2CE224FF34A12BFF393B39FF535B6AFFFFFFFFFFFFFFFFFFE5DF
      DBFFBB5D1EFFC15F1BFFC76925FFCB702CFFCF7632FFD37C38FFD7823DFFDA88
      42FFDD8C46FFDE8F49FFDF914BFFDF914BFFDE8F49FFDD8D47FFDB8843FFD784
      3EFFD47E39FFD07832FFCC702CFFC76925FFC2621FFFBE5B18FFB64E0AFFC26B
      34FFDAD7D5FFC8C9CAFFCCCCCCFF313231FF6B531EFF0E4375FF235084FF2856
      8BFF275A90FF275F95FF27649DFF2869A4FF286EAAFF2871AEFF2A75B3FF16A7
      D8FF1CF2FDFF97E1E3FFF2DBDBFFE3DBDCFFD7CAC9FF48D5DBFF01EAFFFF15B0
      EAFF2292DDFF2793DCFF2A96DDFF2A96DEFF2A96DEFF2A96DEFF2A97DFFF2D9C
      E5FF258ED4FF0D578DFF0F2234FF464646FF9B978FFFFFFFFFFFFFFFFFFFDFD3
      CBFFA84209FFAE4406FFB24C0FFFB55013FFB75416FFB85618FFB65012FFD78F
      53FFE8B37AFFC46C2EFFE9B67CFFF9DCA9FFDCA371FFC86F30FFE1A068FFF7D6
      A5FFF4CD96FFD48A4BFFB14C0FFFB14A0DFFAE4509FFAB4004FFA33100FFCE91
      70FFDFE5E8FFD4D5D5FFCECECEFF373737FF526584FF4DB1FFFF4CABFFFF489A
      FFFF4490FFFF5097FFFF5599FFFF5798FFFF5697FFFF5595FFFF5191FFFF488B
      FFFF2F81FFFF495AC0FFD87540FFFF9E25FFE4730CFFAE7F33FF80C362FF73F4
      7AFF75F276FF75ED72FF75ED71FF75ED71FF75ED71FF75EE71FF7AEF76FF73F2
      70FF3DEE37FF37A52DFFAAADAAFF000000004C5769FFFFFFFFFFFFFFFFFFE7E1
      DEFFBB6226FFC16322FFC76B2BFFCB7132FFCD7737FFD17C3CFFD48241FFD786
      45FFD88947FFDA8C4AFFDB8D4BFFDA8D4BFFDA8B4AFFD98A48FFD78645FFD482
      41FFD27D3CFFCE7837FFCA7232FFC56B2BFFC26526FFBE5F20FFB75213FFC26F
      3BFFDBD8D6FFCACCCDFFCCCCCCFF303030FF464C3CFF1A4578FF29487AFF264D
      7FFF265287FF26578CFF275C93FF27619AFF21609BFF256BA7FF11A6DFFF00E2
      FFFF00F3FFFF78E1E7FFFEEBEAFFF4EEEDFFEFE0DFFF40CEDAFF00E3FFFF00CC
      FFFF5AAAD4FF409BDBFF2194DFFF2A96DEFF2A96DEFF2A96DEFF2A96DEFF2A96
      DEFF2D9BE4FF2A97E0FF084D82FF414142FF939492FFFFFFFFFFFFFFFFFFDDD0
      CAFFA43E05FFAA3D01FFAD4407FFAF470AFFB0490CFFB75617FFC77232FFE5A8
      6AFFCF7F41FFC76C2DFFEDBA7FFFFBD9A3FFE0A974FFC56928FFF0C591FFFCE3
      B0FFF4CA91FFD18449FFB14B0FFFAC4105FFA93D02FFA83D01FFA33100FFCE91
      70FFE1E6EAFFD7D8D8FFCDCDCDFF343435FF4F6386FF67C1FFFF80BFFFFF7DB7
      FFFF80B8FFFF7DB6FFFF7BB3FFFF79B2FFFF78B0FFFF76ADFFFF75ADFFFF70AF
      FFFF9084B5FFE77C2CFFFFAC0FFFFFB31DFFFFA900FFFF9503FFE37213FFAE8A
      44FF8FD97FFF8CFF96FF8EFB8FFF8EF68CFF8EF78CFF94F792FF87FB86FF3DF5
      38FF43A638FFBCBEBDFF00000000000000004B566AFFFFFFFFFFFFFFFFFFE8E2
      DEFFB85C22FFBE5D1CFFC26626FFC76C2CFFC97030FFCD7535FFCF7A39FFD27E
      3DFFD3803FFFD48341FFD58343FFD58343FFD48341FFD48140FFD27E3DFFD07A
      3AFFCD7636FFCA7030FFC56B2BFFC26526FFBE6020FFBA591BFFB44D0EFFC06B
      38FFDCD9D8FFCDCECFFFCDCDCDFF2E2E2EFFC57E07FF29526FFF194272FF2846
      77FF264A7CFF264F83FF245388FF194F88FF5B7EA8FF6CAFD8FF00BEFFFF00D1
      FFFF00E0FFFF74DEE9FFFFF1EFFFF7F3F3FFF2E7E6FF4AC8DCFF00D2FFFF3CB8
      E2FFE1CDC9FFC2C8D2FF52A3DAFF2094DFFF2895DEFF2A96DEFF2A96DEFF2B97
      DFFF2C9AE4FF156CABFF1D2F42FF575757FFA49A88FFFFFFFFFFFFFFFFFFDBCF
      C8FFA43E04FFA83B00FFA83B00FFAD4307FFB85517FFCD7936FFE8A45DFFE7A6
      63FFCA7637FFCF7A3AFFE7AC6EFFF5CA8EFFDEA268FFE1A368FFF8D69EFFF3C8
      8DFFE5A86CFFEDC495FFC36C2FFFB85617FFAC4307FFA73C00FFA33100FFCE91
      70FFE2E8EBFFDADAD9FFCDCDCDFF414141FF838284FF4991FFFF66ABFFFF99CE
      FFFF9FCEFFFF97C8FFFF94C4FFFF93C3FFFF92C1FFFF90C2FFFF8CC3FFFFA88D
      A5FFEE8723FFFFB102FFFFAF09FFFFB51FFFFFAB00FFFFAF00FFFFB000FFFC93
      01FFDC7119FFB4985DFFA6E9A0FFA8FFB2FFB0FEB0FF99FF9AFF3DFA37FF478C
      23FFD0D6D9FF000000000000000000000000686768FFFFFFFFFFFFFFFFFFE8E1
      DDFFB5571DFFB95617FFBE5F20FFC16425FFC46929FFC86D2EFFCA7132FFCC75
      35FFCE7838FFCF7A39FFCF7A3AFFCF7A3AFFCF7A39FFCE7838FFCD7635FFCB72
      32FFC86E2EFFC56A2AFFC16425FFBD5E20FFBA591BFFB75315FFB14708FFBE66
      34FFDEDBD9FFCFD1D1FFCCCCCCFF353535FF00000000CAB088FF275A84FF1943
      74FF274473FF234576FF234B7FFF748FAFFFF2E7E4FF89CFF2FF00AAFEFF08C2
      FFFF3EDCFFFFA0DEEBFFFFF6F4FFFBF8F8FFF4EDEBFF7CCBE1FF45CBF4FFBFCA
      D2FFEEE2E0FFE8DBD7FFD5CECFFF71A9D3FF2A9AE3FF2896E0FF2A97DFFF2C9B
      E4FF1874B4FF3A4239FF3E3737FF00000000A79A85FFFFFFFFFFFFFFFFFFDACD
      C5FFA43D04FFA73A00FFB0490DFFC16526FFCA7132FFCC7635FFD17F3DFFDC93
      4FFFD08140FFD3803EFFE6AD77FFF4CA99FFE9B783FFF1CA9BFFF4CD9AFFE2A2
      65FFDA9152FFDF9C60FFC86F30FFC56A2AFFBF6122FFB0490DFFA33000FFCE91
      70FFE3EAECFFDBDBDCFFCDCDCDFF484848FF00000000F7F8FFFF97B5F1FF4285
      EEFF7FBDFFFFB2DCFFFFB5DBFFFFADD5FFFFABD5FFFFA8D4FFFFBE9595FFF492
      17FFFFB700FFFFB400FFFFB50AFFFFBB20FFFFB200FFFFB300FFFFB300FFFFB7
      00FFFFB500FFF88F01FFD86F22FFC3B081FFA4FFA8FF3DFA36FF466500FFC48A
      6BFF000000000000000000000000000000007B7468FFFFFFFFFFFFFFFFFFE6E0
      DCFFB15117FFB54F12FFBA581AFFBC5D1FFFBF6122FFC26526FFC5692AFFC76D
      2CFFC86F2FFFC97030FFC97131FFC97131FFC97030FFC86F2FFFC76C2DFFC46A
      2AFFC26627FFBF6223FFBC5D1EFFB95719FFB65215FFB34D11FFAD4102FFBA62
      2FFFDFDCDAFFD2D3D4FFCCCCCCFF393939FF0000000000000000C0C6CEFF3459
      7AFF153F70FF27406FFF9198ADFFFDF4F0FFFFF3EBFF95D0EFFF009AFCFF4EC9
      FFFF89E2FFFFB4DEECFFFFF9F7FFFEFCFCFFF6F2F1FF94C7DDFFB7D1DDFFF7EB
      E9FFECE7E7FFE9E3E4FFDFCFCCFFF1DED8FFA0BDD5FF3092D5FF299AE4FF1C7A
      BAFF3C5262FFBE7601FF0000000000000000A69984FFFFFFFFFFFFFFFFFFD8CC
      C4FFA23B02FFB24C0EFFC56B2BFFCB7232FFCD7636FFD07B3AFFD17C3AFFD88D
      4FFFDA985FFFD18240FFE5AE7BFFF2CAA1FFF4CEA5FFF5D2ACFFEFC499FFD082
      42FFD07B39FFCD7433FFCC7333FFC86E2EFFC4692AFFC06123FFA93B00FFCD90
      6EFFE6EBEFFFDEDEDFFFCDCDCDFF5B5B5BFF000000000000000000000000C8C1
      C5FF514778FF4886E9FF9ED0FFFFCDEBFFFFCAE3FEFFD39D82FFF89C0DFFFFC0
      00FFFFBB00FFFFBB00FFFFBD0AFFFFC220FFFFBA00FFFFBB00FFFFBB00FFFFBB
      00FFFFBB00FFFFC100FFFFB500FFC37212FF30E520FF5B6B0FFFA63A00FF0000
      0000000000000000000000000000000000007B7367FFFEFEFEFFFFFFFFFFE4DD
      D9FFAC4A11FFB1490BFFB55113FFB85617FFBA591AFFBC5D1EFFBF6021FFC063
      23FFC16626FFC36728FFC36828FFC36828FFC36728FFC26626FFC06425FFBF61
      21FFBC5D1EFFBA591AFFB75516FFB45013FFB24C0FFFAF460AFFA83A00FFB85F
      2CFFE0DDDBFFD4D5D6FFCCCCCCFF454545FF0000000000000000BDC1C7FF3654
      70FF166EADFF236BA6FF385579FF54607CFFCBC7CCFFDCECF5FF189EF8FF84CF
      FFFFB1E7FFFFC9E1EEFFFFFBF9FFFFFFFFFFF6F5F5FFBBC1CAFFF0ECECFFF7F4
      F4FFF4F0F0FFE6DDDCFF948F99FF6A758CFF45526FFF1F5C92FF1F84C9FF053D
      69FF957F60FF000000000000000000000000A39681FFFFFFFFFFFFFFFFFFD5C9
      C1FFA8450BFFC36726FFCA7232FFCD7636FFD17B3BFFD48241FFD2803DFFE7B3
      86FFF0C7A2FFD08646FFE2AC7DFFF5D2B0FFE3AD7BFFEFC9A3FFF5D4B4FFDC9F
      6AFFCF7B38FFD3803FFFCF7A39FFCC7434FFC86E2DFFC46829FFB64E0CFFCF92
      71FFE7EDF0FFE0E1E0FFCDCDCDFF626262FF0000000000000000000000000000
      000000000000AB613CFF5767ADFF5AA3F9FFBAACAEFFFBA10DFFFFC800FFFFC2
      00FFFFC200FFFFC200FFFFC40AFFFFC81FFFFFC000FFFFC101FFFFC101FFFFC1
      00FFFFC100FFFFC200FFFFC903FFBF670AFF725618FFC36829FF000000000000
      000000000000000000000000000000000000797165FFFDFDFDFFFFFFFFFFE2DB
      D7FFA8430BFFAD4204FFB0490CFFB24C0FFFB44F12FFB85617FFBD5E1FFFC165
      26FFC46929FFC76C2DFFC76D2DFFC86D2DFFC86D2DFFC76C2CFFC46A2AFFC266
      26FFBE6020FFB95819FFB34E11FFAF470AFFAC4307FFAA4004FFA63700FFB85F
      2CFFE2DFDEFFD7D8D9FFCCCCCCFF484848FF00000000D3B489FF3A536AFF1368
      A5FF2C9BE4FF2B9BE4FF1471B4FF002A65FF526A8AFFFFFDF9FF8BC2EAFF75C4
      FEFFE6F6FFFFE0E8EEFFFEFBFAFFFFFFFFFFFBF9FAFFF0EAEAFFFEFCFCFFF9F8
      F8FFF8F3F2FFB1A4A7FF0F325FFF00245BFF054C89FF2389CFFF2993DAFF0D58
      90FF2E3D47FF9A6001FF0000000000000000A1947FFFFFFFFFFFFFFFFFFFD4C7
      BFFFB3561BFFCA6F2EFFCC7535FFD07B3BFFD48141FFD88846FFD78846FFE1A5
      71FFDF9E66FFD88B45FFE6B68CFFF8DEC8FFD99B63FFDC9D63FFF7DDC5FFF6DA
      BFFFD59057FFD17D3AFFD3803FFFCE7938FFCA7231FFC76B2CFFBC5815FFD49A
      78FFE8EDF0FFE2E2E2FFCCCCCCFF626262FF0000000000000000000000000000
      0000000000000000000000000000AA6D51FF7F5754FFFFBF13FFFFCD00FFFFCA
      00FFFFCA00FFFFCA00FFFFCB0AFFFFD125FFFFCD0AFFFFCD11FFFFCE13FFFFCD
      13FFFFCB09FFFFCA00FFFFD203FFC15C0DFFA45D28FF00000000000000000000
      000000000000000000000000000000000000776F63FFFCFCFCFFFFFFFFFFE0D9
      D6FFA54109FFA83B00FFAA4003FFB34C0FFFBC5C1DFFC46829FFC96F2FFFCB73
      32FFCC7535FFCD7736FFCE7737FFCE7737FFCD7737FFCD7636FFCC7534FFCB72
      32FFC96F2FFFC56B2BFFBF6223FFB65114FFAC4106FFA73B00FFA53700FFB85F
      2CFFE4E1DFFFDADBDCFFCCCCCCFF484848FFDE8D08FF505556FF11619BFF2B99
      E1FF2B98E0FF2A96DEFF2D9CE6FF1C86CEFF305C88FFE2D6D4FFF4F6F5FF5FB5
      ECFF9CD9FFFFEFEFF1FFFCFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFE
      FEFFF2EAE7FF57637AFF002F69FF186EADFF2B99E2FF2C99E2FF2B98E1FF2A96
      DEFF0F5D97FF252E2DFF303030FF000000009C907CFFFFFFFFFFFFFFFFFFD3C7
      BFFFB95F23FFCC7231FFCF7939FFD3803FFFD78746FFDB8D4CFFDF9351FFDE93
      4FFFE29954FFE49A55FFECC4A1FFFDF5EDFFDFA876FFDB8E45FFE6B58AFFFEF6
      EFFFF8E5D6FFD28C53FFD37F3CFFD17D3DFFCD7636FFC96F2FFFBF5C19FFD79F
      7DFFECF1F5FFE6E6E7FFCCCCCCFF616161FF0000000000000000000000000000
      000000000000000000000000000000000000AC632CFFFFC717FFFFD400FFFFD1
      00FFFFD100FFFFD100FFFFD311FFFFD24BFFFFD730FFFFDC2DFFFFDA2CFFFFDA
      2FFFFFDA31FFFFD412FFFFD801FFC3610DFF9E5B2AFF00000000000000000000
      000000000000000000000000000000000000746D61FFFCFCFCFFFFFFFFFFDED7
      D4FFA44008FFA73A00FFB65315FFC46A2AFFCA7030FFCC7434FFCE7737FFD07B
      3AFFD17E3DFFD27F3EFFD3803FFFD3803FFFD3803FFFD27F3EFFD17D3CFFD07A
      39FFCD7737FFCB7333FFC96F2FFFC56A2BFFBF6122FFB14C0FFFA53600FFB85F
      2CFFE5E2E0FFDCDEDFFFCCCCCCFF464646FF7C5718FF0F5C95FF2A97DFFF2B98
      E1FF2A96DEFF2A96DEFF2996DFFF2995DDFF9FAFC0FFF2EAE7FFF6F2F0FFE9F2
      F5FF66B9ECFF9AC9E8FFFFFFFCFFFFFFFFFFFAF9FAFFE5E0E0FFFFFFFFFFFEFE
      FEFFFFFFFDFFA9B1BEFF217EC0FF299CE6FF2B97DFFF2A96DEFF2A96DEFF2B99
      E1FF2A96DEFF0F5D98FF0B243AFF777777FF8B867DFFFFFFFFFFFFFFFFFFD1C3
      BCFFB85E21FFCE7634FFD07D3CFFD68443FFDA8B4AFFDE9250FFE29856FFE59E
      5CFFE9A361FFE7A059FFE8BB94FFF7E7D9FFDFA672FFE7A15BFFE09854FFEAC3
      A2FFEBC9AAFFD9965DFFD3823EFFD48141FFCF7939FFCB7231FFC05F1BFFD79E
      7CFFFAFEFFFFF8F8F8FFD1D1D1FF505050FF0000000000000000000000000000
      000000000000000000000000000000000000AC652CFFFFCD18FFFFDB00FFFFD8
      00FFFFD900FFFFDA10FFFFBF22FFFFA50AFFFFAF14FFFFCC36FFFFE14BFFFFE7
      4DFFFFE44DFFFFE343FFFFE10AFFC3650CFFA05D2CFF00000000000000000000
      000000000000000000000000000000000000696661FFFBFBFBFFFFFFFFFFDCD6
      D2FFA43F07FFB85515FFC86E2EFFCB7232FFCD7636FFD07B3AFFD37F3EFFD583
      42FFD68544FFD88746FFD88948FFD88948FFD88948FFD78847FFD68644FFD582
      41FFD27F3EFFD07A3AFFCD7535FFC97030FFC76C2DFFC26728FFB04809FFB65D
      2BFFE6E3E1FFDFE0E1FFCCCCCCFF3C3C3CFF6D5628FF1671B0FF2D9CE5FF2B99
      E1FF2A96DEFF2A96DEFF2494DFFF6DA1C9FFF6ECE8FFFFFFFFFFF6EFECFFE0D4
      D3FFFEF6F2FFF0EFEFFFFDFCFCFFFFFFFFFFFBFAFAFFDDD2D1FFF6EEECFFFFFF
      FFFFFFFFFFFFFFFFFCFF92B8D6FF2190DBFF2996DFFF2A96DEFF2A96DEFF2A96
      DEFF2C9AE2FF2C9AE3FF0C5791FF595D62FF87847DFFFFFFFFFFFFFFFFFFCEBF
      B8FFAE4D12FFD07835FFD37F3EFFD88745FFDC8E4CFFE19653FFE59D5AFFEAA3
      61FFEDAA66FFF0AE6AFFE9A561FFE9A460FFEAA763FFEFAD6AFFEBA762FFE298
      52FFDF914AFFDD8F4AFFDB8C4AFFD68342FFD17C3AFFCD7635FFBD5813FFD194
      72FFFDFFFFFFFCFCFCFFD2D2D2FF3E4043FF0000000000000000000000000000
      000000000000000000000000000000000000AD672DFFFFD318FFFFE200FFFFE0
      00FFFFE015FFFFC323FFFFAB04FFFFAC00FFFFAB00FFFFAB01FFFFB91AFFFFD7
      4AFFFFEC69FFFFF171FFFFED31FFC46908FFA1602DFF00000000000000000000
      000000000000000000000000000000000000666460FFF9F9F9FFFFFFFFFFD9D2
      CEFFAE4F14FFC76B2BFFCB7333FFCE7838FFD17D3CFFD48141FFD78746FFDA8B
      4AFFDC8E4CFFDD914FFFDE9250FFDE9250FFDE9250FFDD914FFFDB8E4CFFD98A
      49FFD78645FFD48140FFD17C3BFFCD7636FFCA7131FFC76C2DFFBE5E1EFFBD66
      33FFE6E3E1FFE1E2E3FFCCCCCCFF313234FFDE8807FF77868BFF105E94FF2891
      D7FF2D9BE4FF2A96DEFF2494DFFF7AAACFFFFFF8F3FFFEF4F0FFACB2BFFF437C
      ADFF4B779FFFB7BBC5FFFEFEFEFFFFFFFFFFFEFEFDFF7E889BFF637C99FFF9F8
      F8FFFFFFFFFFFFFFFFFFF8F4F2FF6AA6D1FF1F92DEFF2A96DEFF2A96DEFF2C9A
      E2FF2B98E0FF1874B3FF113855FF838383FF968976FFFFFFFFFFFFFFFFFFC9BC
      B5FF983600FFBB6224FFCE7D3CFFD18342FFD68A49FFDA9250FFDF9957FFE4A1
      5EFFE8A765FFEBAE6BFFEFB370FFEFB470FFEEB26EFFEAAB69FFE6A562FFE29E
      5CFFDD9754FFD88F4EFFD48746FFCF7F3FFFCB7838FFC46F31FFA43D03FFCA8F
      6FFFFFFFFFFFFFFFFFFFD2D2D2FF555555FF0000000000000000000000000000
      000000000000000000000000000000000000A9662BFFFFD618FFFFE600FFFFE2
      1CFFFFC720FFFFB302FFFFB500FFFFB600FFFFB600FFFFB600FFFFB300FFFFB3
      00FFFFC31DFFFFE163FFFFF662FFC76F0DFF9C5C2BFF00000000000000000000
      0000000000000000000000000000000000006D665BFFF8F8F8FFFFFFFFFFD8D1
      CEFFB85F24FFCB712FFFCE7837FFD27E3EFFD58342FFD88947FFDC8E4CFFDE93
      51FFE09654FFE29A57FFE39B59FFE39B59FFE39B58FFE29957FFE19654FFDE92
      50FFDB8D4CFFD88847FFD48241FFD17B3BFFCD7636FFC97031FFC36625FFC575
      41FFE7E3E1FFE1E3E4FFCACACAFF3E3E3EFF0000000000000000AB8027FF2255
      6DFF2082C7FF2D9BE5FF2997E0FF2691D9FF83ADCFFF81A4C2FF2B81C1FF2380
      C5FF0F69AFFF7DA0BFFFFFFFFFFFFFFFFFFFFFFDFCFF507AA2FF0E62A5FF94B2
      CDFFFFFFFDFFFFFFFFFFFFFFFFFFE6E7E9FF489AD3FF2295E0FF2D9CE5FF238A
      D0FF165986FF6A5021FF383838FF00000000988C7AFFFFFFFFFFFFFFFFFFE2E1
      E0FFC0B4AEFFC9BAB1FFD2C0B1FFD3C1B2FFD5C3B4FFD6C5B6FFD7C7B7FFD8C9
      B9FFD9CABAFFDACCBCFFDBCEBDFFDBCEBEFFDACDBDFFD9CCBCFFD8CABAFFD7C8
      B8FFD6C5B6FFD5C3B4FFD4C2B3FFD2BFB0FFD1BDAFFFCDBBAFFFBFB2ACFFDFD7
      D4FFFEFEFEFFFFFFFFFFD4D4D4FF5F5F5FFF0000000000000000000000000000
      000000000000000000000000000000000000AA8769FFFFD919FFFFE31CFFFFCA
      1DFFFFC007FFFFC717FFFFC921FFFFCA26FFFFCA27FFFFCA27FFFFCA26FFFFC9
      1FFFFFC311FFFFC40AFFFFD72FFFC66B2BFFB6A598FF00000000000000000000
      0000000000000000000000000000000000006F685DFFF6F6F6FFFFFFFFFFD7D0
      CDFFBB652AFFCE7534FFD17C3CFFD58342FFD88948FFDC8F4DFFE09452FFE39A
      58FFE59E5CFFE8A25FFFE9A461FFE9A461FFE9A361FFE7A25FFFE69E5BFFE299
      57FFDF9452FFDC8E4DFFD88746FFD38140FFD07B3AFFCC7434FFC76A28FFC979
      45FFEFEBEAFFEFF0F1FFCECECEFF444444FF000000000000000000000000C490
      08FF445645FF176EABFF2B97DFFF2A93DBFF248AD0FF2384CBFF2682C5FF297E
      BEFF1A72B5FF8BB0D0FFFFFFFFFFFFFFFFFFFFFEFCFF6694BCFF1C6EB0FF2A77
      B3FFC3D0DCFFFFFFFFFFFFFFFFFFFFFFFFFFCEDAE4FF3897D8FF1671B2FF3A4E
      46FFC69145FF000000000000000000000000927850FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFFFFFFFFBEBEBEFF6D6D6DFF0000000000000000000000000000
      000000000000000000000000000000000000C4AC96FFFFD93FFFFFDE39FFFFD7
      3EFFFFDB53FFFFDD58FFFFDD5AFFFFDD5AFFFFDD59FFFFDD59FFFFDD5AFFFFDD
      5AFFFFE15CFFFFDE4CFFE38027FFC9B9B6FF0000000000000000000000000000
      0000000000000000000000000000000000006A5B44FFF6F6F6FFFFFFFFFFD3CC
      C8FFB65C21FFD17A38FFD3803FFFD88746FFDB8E4CFFDF9452FFE39A58FFE7A1
      5DFFEAA663FFEDAA67FFEFAD69FFEFAE6AFFEEAD69FFEDAA67FFEAA662FFE6A0
      5EFFE39A58FFDF9351FFDB8C4AFFD68544FFD27F3EFFCE7837FFC86D2BFFC472
      3EFFF6F2F0FFFDFEFFFFD2D2D2FF4C4C4CFF0000000000000000000000000000
      0000DB9000FF746129FF125889FF2687CBFF2B8ED4FF2985C8FF2981C1FF297C
      BBFF196EB1FF91B2D0FFFFFFFFFFFFFFFFFFFFFFFFFF6892B9FF1E6BAAFF2172
      B2FF4485B9FFE7E8ECFFFFFFFFFFFFFFFFFFF4F2F3FF75899AFF745C18FFE895
      00FF00000000000000000000000000000000C47C0EFFB5B3B0FFFAFAFAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5E5E5FF545454FF8D8D8DFF0000000000000000000000000000
      000000000000000000000000000000000000EAE1DAFFFFAE53FFFAC755FFFFED
      7EFFFFED78FFFFE872FFFFE771FFFFE771FFFFE771FFFFE771FFFFE771FFFFEE
      78FFFFE667FFD8823BFFD1C7C6FF000000000000000000000000000000000000
      000000000000000000000000000000000000875D1EFFF4F4F4FFFFFFFFFFD0C9
      C5FFA43E08FFCA6D29FFD57F3AFFD98641FFDD8D47FFE2944EFFE69C56FFEBA3
      5DFFEFAA63FFF3B069FFF5B46DFFF6B56DFFF5B36CFFF2B068FFEFA962FFEAA2
      5CFFE69B54FFE1934EFFDC8C46FFD7833FFFD37D38FFD07733FFBE5C19FFB65B
      2BFFF8F5F3FFFFFFFFFFD2D2D2FF5F5F5FFF0000000000000000000000000000
      00000000000000000000B8904BFF2C546BFF1E73B1FF2C87CAFF2A7FC0FF2879
      B8FF2171B1FF5D90BCFF99B0C4FFB3ADA3FFC0C4C8FF5785B0FF216AA7FF2873
      AFFF1F73B4FF689BC5FF9BBBD6FF5A85A8FF555F5CFFC48F39FF000000000000
      00000000000000000000000000000000000000000000DAC8ACFFA19C94FFA09C
      96FFA19D97FFA19D97FF9D9A96FF959798FF94999CFF959A9EFF94999DFF9398
      9CFF93989BFF96999CFF9A9B9DFF9C9B9BFF9C9D9DFF96999BFF93979BFF9398
      9BFF93989CFF979A9DFF9A9C9EFF95989AFF9B9C9BFFA19D98FFA49F99FFA4A1
      9DFFA4A09BFF926D3AFF696161FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094999DFFAA886AFFE298
      44FFFDD877FFFFF797FFFFF591FFFFF08CFFFFF08CFFFFF08DFFFFF895FFFFE9
      75FFC37330FF838183FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F681BFFF5F5F5FFFFFFFFFFDBD8
      D7FFAD866FFFBD977CFFCAA689FFCBA88BFFCDAB8EFFD0AF91FFD2B294FFD4B5
      97FFD6B89AFFD7BB9DFFD8BD9FFFD8BE9FFFD8BD9FFFD7BB9DFFD4B89AFFD3B5
      97FFD1B294FFCFAE91FFCDAB8DFFCAA78AFFC9A486FFC7A184FFB68E74FFBF9B
      88FFFAF9F8FFFFFFFFFFD3D3D3FF6D6D6DFF0000000000000000000000000000
      0000000000000000000000000000E6D1B0FF587387FF145E97FF287CBCFF2A7A
      B9FF2C76B3FF135B96FF364E66FFE9CCA2FFAC9C82FF104978FF2265A0FF2A71
      ADFF2A77B6FF1D6EAFFF0C4D81FF817A6EFFF4D1A0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F78
      B2FF6B6B69FFDC9C50FFFDE798FFFFFEB3FFFFF9ADFFFFFEB1FFFFE780FF9C64
      38FF2769A1FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000816A44FFEAEAEAFFFFFFFFFFFFFF
      FFFFFDFFFFFFFCFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFEFFFFF9FEFFFFF9FD
      FFFFF9FDFFFFF9FCFFFFF8FCFFFFF8FCFFFFF8FCFFFFF9FDFFFFF9FDFFFFF9FD
      FFFFF9FDFFFFF9FEFFFFF9FEFFFFF9FEFFFFF9FEFFFFF9FEFFFFFAFFFFFFFCFF
      FFFFFEFEFEFFFFFFFFFFC8C8C8FF989696FF0000000000000000000000000000
      00000000000000000000000000000000000000000000766128FF144F79FF2470
      ACFF1D649EFF1E4154FFBD802AFF0000000000000000996F37FF104670FF2164
      9EFF175E98FF324546FFA36908FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002D434DFFCC751CFFEEAB61FFFFEFB6FFFFE187FF7F532DFF1F5D
      92FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008D9F8EFF848D7CFFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F1F1FF8E8E8EFFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000608F77FF1C54
      75FF154D71FF78947DFF00000000000000000000000000000000859291FF3162
      85FF6B7A86FFCFD2CFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9AE92FFD6934FFFBB7D43FF7F8C8BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CB08FFF68876EFF979B
      98FF949A96FF959A96FF969B97FF979B98FF989B99FF999C99FF989A99FF9497
      99FF939799FF989A98FF9A9B9AFF9B9B9AFF9E9A96FF9C9895FF989999FF9497
      99FF979899FF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF9E9E9EFF9B9B9BFFE2E2E2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E0FFB9B9
      B9FF9D9D9DFF8F8F8FFF8C8C8CFF939393FFA3A3A3FFC3C3C3FFEAEAEAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEECECFFC4BDBDFFB2ABABFFACA4A4FFB1B1B1FFA5A5
      A5FF9A9A9AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A3A3
      A3FF979797FF8B8B8BFF898989FF919191FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E9FF8B8B8BFF808080FF9A9A
      9AFFAEAEAEFFB7B7B7FFB8B8B8FFB2B2B2FF9F9F9FFF838383FF6E6E6EFFA2A2
      A2FFF4F4F4FF00000000000000000000000000000000FCFCFCFFF6F6F6FFF0F0
      F0FFECECECFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFD6D6D6FF808080FF757575FF8D8D
      8DFFA0A0A0FFA8A8A8FFA9A9A9FFA3A3A3FF929292FF787878FF656565FF9696
      96FFE6E6E6FFF6F6F6FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD9D9DFFBBAAAAFFC9BBBBFF9B8383FF5D5353FF7676
      76FF999999FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFAFFF0F0F0FFE8E8
      E8FFE1E1E1FFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFFDEDEDEFFDEDEDEFFA49595FFB1A1A1FFBFB1B1FF937C7CFF584E4EFF6C6C
      6CFF888888FF929292FF969696FF969696FF898989FF727272FF606060FF8F8F
      8FFFDEDEDEFFF0F0F0FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000919191FFD7D7D7FFF1F1F1FFF2F2
      F2FFF0F0F0FFEBEBEBFFEAEAEAFFEDEDEDFFF1F1F1FFF2F2F2FFE7E7E7FF8E8E
      8EFFACACACFF000000000000000000000000FAFAFAFFEEEEEEFFDDDDDDFFCBCB
      CBFFC1C1C1FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
      BEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFF6C6C6CFFA0A0A0FFB4B4B4FFB4B4
      B4FFB3B3B3FFAFAFAFFFAEAEAEFFB1B1B1FFB4B4B4FFB4B4B4FFACACACFF6B6B
      6BFF898989FFDDDDDDFFEEEEEEFFFAFAFAFF0000000000000000000000000000
      00000000000000000000BCBCBCFFB7B7B7FFB4B4B4FFB8B8B8FFBDBDBDFF0000
      000000000000BDBDBDFF9D8989FFE7E1E1FFE6E0E0FFBBA9A9FF796868FF9191
      91FFA8A8A8FF000000000000000000000000B2B2B2FFADADADFFA2A2A2FF6767
      67FF888888FF000000000000000000000000F5F5F5FFE0E0E0FFC4C4C4FFAAAA
      AAFF9C9C9CFF989898FF969696FF929292FF8F8F8FFF929292FF969696FF9797
      97FF979797FF969696FF7D6D6DFFB8B3B3FFB7B2B2FF968787FF605252FF6D6D
      6DFF767676FF757575FF7A7A7AFF858585FF8D8D8DFF8A8A8AFF828282FF5353
      53FF727272FFC4C4C4FFE0E0E0FFF5F5F5FF00000000E1E1E1FFA7ABA8FF949B
      96FF999F9BFFA4A5A4FFA8A9A8FFAEAEAEFFB2B2B2FFB8B8B8FFBCBCBCFFC2C2
      C2FFC6C6C6FFCDCDCDFFD2D2D2FFC7C7C7FFC6BEC3FFFFFFFFFFFCFCFCFFEEEE
      EEFFE2E2E2FFE6E6E6FFE4E4E4FFD7D7D7FFD3D3D3FFECECECFFFFFFFFFFFBFB
      FBFFA4A4A4FF000000000000000000000000EEEEEEFFB8B8B8FF727573FF5357
      54FF4C4F4DFF4D4E4DFF4F504FFF525252FF545454FF575757FF585858FF5B5B
      5BFF5D5D5DFF606060FF636363FF5E5E5EFF5D595CFF787878FF777777FF7070
      70FF6A6A6AFF6C6C6CFF6B6B6BFF656565FF636363FF6F6F6FFF787878FF7C7C
      7CFF5C5C5CFFAEAEAEFFD2D2D2FFEFEFEFFF0000000000000000000000000000
      0000000000004C4D4CFF4A4B4AFF464646FF454545FF4B4B4BFF525252FF5959
      59FF5C5C5CFF5D5D5DFFA69090FFE9E3E3FFE7E2E2FFD6CBCBFF745C5CFF5656
      56FF5F5F5FFF6A6A6AFF6A6A6AFF626262FF5B5B5BFF5E5E5EFF616161FF6A6A
      6AFF565656FFACACACFF0000000000000000DEDEDEFF989898FF515352FF3336
      34FF2B2D2CFF2A2B2AFF292A29FF272727FF262626FF2A2A2AFF2E2E2EFF3232
      32FF333333FF343434FF5C5050FF827E7EFF817E7EFF777171FF3F3232FF2637
      44FF2279C2FF283946FF313131FF323232FF323232FF343434FF363636FF3C3C
      3CFF353535FF7A7A7AFFAFAFAFFFDFDFDFFFC2C8C3FF31864EFF059E3DFF03B2
      45FF04B045FF04AD46FF04AA45FF09A849FF0CA447FF119F48FF149B48FF1996
      48FF1C9247FF208D49FF208A46FF248743FF4BA06AFFD0DFD5FFF2F1F1FFE1E1
      E2FFEDEDEDFFEFEFEFFFF0F0F0FFEDEDEDFFD9D9D9FFEDEDEDFFE6E6E6FF9E9E
      9EFFE4E4E4FFF8F8F8FF0000000000000000A8ADA9FF616926FFCA8806FFDB8F
      0CFFD88D0BFFD88C0BFFD88C0BFFD88C0BFFD88B0BFFD98B0BFFD98B0BFFD98B
      0CFFD98B0CFFD98B0CFFD98A0CFFD98A0DFFDB8B0EFFE08E12FFE18E13FFE18E
      13FFE18E13FFE18E13FFE18E13FFE18E13FFE18E13FFE18E13FFE39014FFD282
      0BFF815D38FF7A7A7AFFAFAFAFFFDEDEDEFF0000000000000000000000000000
      0000D78C0BFFCE850AFFA57D54FF8F736DFF91632AFFA36908FFB17109FFC07B
      0BFFC57E0BFFB9822FFFBCABABFFEBE6E6FFE9E4E4FFE4DDDDFF8A6E6EFFA468
      0EFFB6730FFFC77D11FFCE8211FFC07B17FF996C41FF977E7EFF8C613AFF9D61
      08FF6E4F30FF757575FF0000000000000000919592FF685515FFB57104FFB372
      0BFFAC6C0AFFAA6C09FFA46B14FFA26917FFA1670EFFA46809FFA66909FFA86A
      0BFFAA6B0BFFA86B10FFA97122FFAF792AFFAF792AFFAE7829FF9F691AFF447A
      9BFF0E93FCFF487996FFA4690CFFA76A0EFFA46914FFA36C1EFFA36914FF9D61
      06FF55330FFF3B3B3BFF787878FFC0C0C0FF8FAB98FF00B73EFF00B842FF00CE
      4EFF00D14FFF00D24FFF00D550FF00D650FF00D54FFF00D44CFF00D34AFF00D2
      49FF00CC47FF00BC45FF2CB760FF3EBA6CFF35AF60FF509D6BFF9AA59EFFCDCB
      CDFFCBCBCBFFC8C8C8FFC4C4C4FFC4C4C4FFC2C2C2FFA2A2A2FF7B7B7BFF7C7C
      7CFF818181FF7C7C7CFF9D9D9DFFF5F5F5FF9D8954FFE0A83BFFF8CF91FFF9D0
      95FFF9D195FFF9D297FFFAD399FFFBD59BFFFBD59EFFFBD6A0FFFBD7A1FFFCD8
      A4FFFDD9A6FFFDDBA9FFFDDCADFFFDDDB0FFFEDFB3FFFEE0B6FFFEE2B9FFFEE3
      BCFFFFE5BFFFFFE6C1FFFFE7C4FFFFE9C7FFFFEACAFFFFEBCCFFFFEDD0FFFFEC
      CBFFE6AC54FF6B451FFF5B5B5BFFC6C6C6FF0000000000000000000000000000
      0000F7CF94FFC3A894FFE6DEDEFFF0EBEBFFAA9696FF8A6F65FFA98F6FFFBFA3
      7CFFB09479FFA1877BFF988181FF9F8787FFA08A8AFF957B7BFF876C6CFF8D71
      68FFA7917CFFC1AE92FFBEAA96FF9E8683FFB4A2A2FFDCD3D3FFC5B7B7FF9078
      6FFFBC8C45FF65411DFF0000000000000000AB772BFFF8AF40FFF8D095FFF9D2
      99FFF9D399FFF9D49BFFFAD59EFFFBD7A0FFFBD7A2FFFBD8A4FFFBD9A6FFFCDA
      A8FFFDDBABFFFDDDAEFFFDDEB2FFFDDFB5FFFEE1B8FFFFE5BBFFF3DFBFFF329A
      EFFF1292FCFF379CEEFFF7E6C9FFFFEECDFFFFEDCFFFFFEED2FFFFF0D6FFFFEF
      D1FFF8BA5EFF6F3C07FF343434FF9F9F9FFF94AD9CFF41B76CFF83C59DFF9DDF
      B7FF97DFB3FF8EDEAEFF8ADFACFF82DEA7FF7CDDA4FF76DC9EFF6FDC9BFF63D4
      90FF4AAD6EFF6DA582FFEEE7ECFFF9F3FAFFF2F0F7FFE9ECEFFFE4E9EBFFE4E7
      EAFFDFE2E5FFDCDFE2FFD8DCDEFFD5D8DBFFD2D5D8FFCCCFD2FFC9CDD0FFCDD1
      D4FFCCD0D2FFD0D0D0FF8E8E8EFFC2C2C2FFE59316FFF5C47DFFE5D3B8FFE3CD
      ADFFE4CFB0FFE4D0B2FFE5D2B5FFE9D6BAFFE6D4B8FFE6D4BBFFE6D5BDFFE7D7
      BFFFEBDBC5FFE8D9C4FFE8DAC7FFE8DBCBFFE9DDCEFFECE2D5FFEAE1D5FFEAE2
      D7FFEAE3DAFFEBE4DDFFEEE9E4FFECE9E5FFECE9E6FFECEAE8FFECEBEAFFEFF5
      FCFFFDE4C0FFD1810FFF4A4A4AFF969696FF0000000000000000000000000000
      0000DAC5ACFFC9BABAFFF8F6F6FFF7F6F6FFF6F5F5FFCFC2C2FF8C7272FF9E88
      85FFC4B6B6FFE0D8D8FFF0EBEBFFEDE9E9FFECE8E8FFEBE6E6FFE9E4E4FFD0C4
      C4FFA79292FF88706FFFA38D8DFFD3C9C9FFE1D8D8FFDED6D6FFD7CCCCFF846A
      6AFFD9C4A5FFCA7D0FFF0000000000000000F09003FFF4C47DFFE3D1B6FFE1CC
      ACFFE2CDAEFFE2CEB0FFE3D0B4FFE7D5B9FFE4D2B7FFE4D2BAFFE4D3BBFFE7D6
      BDFFF6DDBFFFF8DFC2FFF1DDC5FFE9DBC9FFE7DBCCFFF1E3D0FFBCD0DEFF1593
      FBFF25A6FDFF1692FAFFC1D7E9FFEEEAE0FFE9E6E3FFEDE9E5FFF4EDE7FFFBF7
      F6FFFFE8BCFFD07C01FF262626FF747474FF99AD9EFFBDC8BFFFDDD1D9FFF5EB
      F1FFF6ECF2FFF8ECF3FFF9EDF4FFFAEDF5FFFCEEF6FFFDEFF7FFFEF1F9FFE9DF
      E5FFB9B1B6FFCEC9CCFFFFFFFFFFEEDDD1FFEDD2BFFFEDD5C3FFEDD7C3FFECD7
      C4FFEBD8C4FFEAD7C3FFE8D4C1FFE5D1BDFFE2CDB9FFDFC8B5FFDCC3B1FFD7BC
      AAFFD4BBAAFFD3D1D0FFBABBBBFFAFAFAFFFDC961EFFE2B777FFBABDC4FFCECF
      D0FFCDCDCEFFCFCFD0FFC6C6C7FFB7B7B8FFCECECFFFCDCDCDFFCECECEFFCBCB
      CCFFB6B5B6FFCCCDCDFFCCCDCDFFCDCDCEFFCECECFFFB6B6B7FFC9C9CAFFCDCD
      CEFFCDCDCDFFCFCFD0FFB7B7B8FFC5C5C6FFCDCDCEFFCDCDCDFFD0D0D0FFBBC0
      C7FFEAD1ACFFCE8713FF5D5E5EFF868686FF0000000000000000000000000000
      000000000000C0B7B8FFDBD1D1FFF8F7F7FFF7F6F6FFC8BABAFFBDADADFFEDE8
      E8FFEEEBEBFF8FB2D6FF5BA1D3FF60AFDCFF75C4E4FF4FA6DAFF5FA3D6FFA2BE
      DBFFE8E2E2FFD3C9C9FF977F7FFFB5A2A2FFE2DBDBFFE1D8D8FFA69090FF8C81
      84FFD9C19FFFCC8613FF0000000000000000E89206FFE2B777FFBABEC6FFD0D1
      D2FFCECFD0FFD1D1D2FFC7C7C9FFB7B7B9FFCFD0D1FFCECFD0FFD1D1D0FFC3CA
      D0FF699FCEFF6BA3D1FF9CB8D0FFCACDD0FFDFD7D1FFD2BFB1FF7AAEDBFF0F96
      FCFF25BCFFFF1296FEFF699ECDFFE3D0C2FFE0D7CFFFCFCFCFFFA3BBD0FF6DA5
      D5FFA1B9C0FFC28012FF2F2F2FFF666666FF99AD9EFFB6C3B9FFCFCED0FFEAEA
      EAFFEBEBEBFFEBEBEBFFECECECFFECECECFFEDEDEDFFEDEDEDFFF1F1F1FFDCDC
      DCFFB1B0B0FFC9C9CAFFFFFFFFFFC8895EFFC56623FFCF7938FFD68443FFDC8D
      4BFFE09351FFE19654FFE19553FFDE914FFFD98947FFD37F3EFFCD7334FFC364
      24FFC2662BFFDCD6D2FFB8BABBFFB0B0B0FFDB961FFFDFB577FFD3D8DFFFFFFF
      FFFFFCFDFDFFFFFFFFFFECEDEDFFC9CACBFFFFFFFFFFFCFCFCFFFEFFFFFFF9F9
      FAFFC7C7C8FFFBFCFCFFFBFCFCFFFDFDFEFFFFFFFFFFC7C8C8FFF4F4F5FFFCFC
      FCFFFDFDFDFFFFFFFFFFC9C9CAFFEAEBEBFFFDFEFDFFFCFCFCFFFFFFFFFFD7DB
      E2FFE6CCA5FFCE8612FF5C5D5EFF878787FF0000000000000000000000000000
      000000000000FAF9F9FFC1B2B2FFEBE6E6FFCBBEBEFFD0C3C3FFF7F5F5FFABBE
      D5FF1F9AD7FF49DEF6FF8BF7FEFFBEFBFEFFBEFBFEFF8DF7FEFF57F3FEFF1ED1
      F2FF2DA6DCFFC5D1E0FFE2DBDBFF977F7FFFB5A2A2FFC5B7B7FF988383FFACAF
      B5FFCFB895FFC48011FF5A5B5CFF868686FFE89106FFDFB577FFD3D8DFFFFFFF
      FFFFFCFDFDFFFFFFFFFFEDEDEDFFC9CACBFFFFFFFFFFFCFCFCFFFFFFFEFFC8E6
      FFFF038DFFFF1191FEFF1C97FEFF38A2FDFF6FBBFEFF90B7DBFF4DA2F5FF13A5
      FAFF1ED1FFFF18A2FCFF3D96E8FFB2D3F1FF7CC2FDFF3FA6FCFF1F97FDFF1192
      FFFF118CF1FF817954FF2D2E2EFF666666FF98AD9DFFB1C0B5FFCECCCDFFEBEB
      EBFFECECECFFECECECFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFF1F1F1FFDDDD
      DDFFB1B1B1FFC9C9CAFFFFFFFFFFC38258FFBD5B18FFC76D2CFFCD7634FFD17D
      3CFFD48241FFD58442FFD58342FFD37F3EFFCF7838FFC9702FFFC26526FFB957
      17FFB95A1FFFDDD6D3FFBABBBCFFB0B0B0FFDB961EFFE0B77BFFD2D6DCFFFBFB
      FCFFF8F8F8FFFDFDFDFFEAEAEAFFC8C8C9FFFBFBFBFFF7F7F7FFFAFAFAFFF6F6
      F6FFC6C6C7FFF7F7F7FFF7F7F7FFF9F9F9FFFBFBFBFFC6C6C7FFF0F1F1FFF8F8
      F8FFF8F8F8FFFEFEFEFFC9C9C9FFE8E8E8FFF9F9F8FFF8F8F8FFFFFFFFFFD5D9
      E0FFE7CCA4FFCE8612FF5D5E5EFF878787FF0000000000000000000000000000
      00000000000000000000DDD9D9FFBAA9A9FFCCBEBEFFF8F7F7FF7CB2D7FF03BD
      ECFF27F1FEFF5FEDF7FF96D5DAFFCBECEDFFCCF3F6FF98F8FEFF5FF5FEFF2BF1
      FEFF05ECFEFF07B1E8FFB5CADEFFE2DCDCFF987F7FFF988080FFA09292FF9DA0
      A5FFB5A081FFAB6F0FFF515252FF7D7D7DFFE89206FFE0B77BFFD2D6DCFFFBFB
      FCFFF8F8F8FFFDFDFDFFEAEAEAFFC8C8C9FFFBFBFBFFF7F7F7FFFBFAFAFFF9F9
      F7FF56A4E4FF0A8BFAFF259BFCFF20A6FDFF109BFAFF1094FBFF169BF9FF16D2
      FEFF17DBFFFF1DC0FDFF1A96F9FF1090F9FF1094F9FF219CFCFF2795FCFF098E
      FFFF74A9C7FFC3800CFF292929FF606060FF98AD9CFFAEBCB1FFCBCACAFFEBEB
      EBFFEFEDEEFFF3EEF1FFF3EFF1FFF0EEEFFFF0EFF0FFF5F0F3FFF6F3F5FFE2DF
      E0FFB5B3B4FFCAC9CAFFFFFFFFFFBF7C52FFB75010FFBF6222FFC4692AFFC970
      30FFCB7333FFCB7535FFCC7434FFCA7131FFC56B2CFFC16425FFBB5C1DFFB34E
      0FFFB45219FFDFD8D5FFBBBDBEFFB0B0B0FFDB961EFFE1B87CFFD5D9DFFFFFFF
      FFFFFDFDFDFFFFFFFFFFEEEEEEFFCBCBCBFFFFFFFFFFFDFDFDFFFFFFFFFFFCFC
      FCFFC8C8C9FFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFCDC9C6FFFCF7F2FFFFFF
      F9FFFFFFFAFFFFFFFFFFD0CCC8FFECECECFFFEFEFEFFFDFDFDFFFFFFFFFFD8DC
      E3FFE6CBA2FFCE8612FF5E5F5FFF878787FF0000000000000000000000000000
      00000000000000000000E7E7E7FFB6A7A7FFF5F2F2FFA8BED2FF00B4F0FF01E9
      FEFF1FF0FEFF5CD7E0FFC2B2B2FFBFAFAFFFAEA0A1FF9FA6A7FF789DA0FF2BCE
      DAFF03EBFEFF00DBFEFF079FE4FFC5D2E0FFC5B7B7FF987F7FFF9E8787FF9179
      7AFF8F776CFF8F6127FF4A4848FF717171FFE89206FFE1B87CFFD5D9DFFFFFFF
      FFFFFEFEFEFFFFFFFFFFEEEEEFFFCBCBCBFFFFFFFFFFFEFEFEFFFFFFFFFFFFFE
      FCFFCFCAC7FF85C8FEFF1291FCFF1FA8FDFF20CCFFFF19D0FFFF12DDFFFF0CEB
      FFFF10E1FFFF16D9FFFF1BCBFFFF20C1FFFF29BDFFFF23A2FDFF1494FFFF67AE
      EDFFF3D2A4FFC87F03FF252424FF565656FF98AC9CFFABB9AEFFC9C7C9FFEFED
      EEFFDAE7DFFFC0E2CEFFC7E4D3FFEAECEBFFEAECEAFFC7E3D2FFDAEBE1FFCAD7
      D0FF9DABA3FFBEC5C1FFFFFFFFFFB87249FFAF4404FFB65214FFBB5A1CFFC062
      23FFC36828FFC46A2AFFC46A2AFFC26627FFBE6021FFB95618FFB34D10FFAC42
      05FFAF4B13FFE2DBD8FFBCBFC0FFB0B0B0FFDB961EFFE1BA80FFC6CAD1FFE6E6
      E6FFE3E3E4FFE7E7E7FFD9D9DAFFBEBEBFFFE1E1E1FFDFDFDFFFE1E1E2FFDEDE
      DEFFBDBDBDFFDFDFDFFFDEDEDFFFE1E1E1FFE3E1E1FFACBBCCFFC8DAF2FFCDE0
      F7FFCEE3F8FFCFE7FBFFA9BFD2FFD5D7D9FFE4E4E3FFE4E4E4FFE7E7E7FFC8CD
      D3FFE6CAA1FFCE8612FF5E6060FF878787FF0000000000000000C4C8CFFFE1E1
      E1FFD9D9DAFFD9D9D9FFB7AFAFFFE0D8D8FFF2EEEEFF1599DCFF00D3FEFF00E4
      FEFF0EEDFEFF46D6E1FFDAD0D0FFE9E4E4FFE6E0E0FFE2DBDBFFCCBFBFFF27BB
      C5FF00E6FEFF00D6FEFF00C4FEFF3F9AD6FFA08B8BFFBBA9A9FFB5A2A2FFAE9A
      9AFFA89292FF988080FF846767FF757171FFE89206FFE1BA80FFC5C9D0FFE4E4
      E5FFE2E2E2FFE5E5E5FFD8D8D8FFBEBEBEFFDFDFE0FFDDDDDEFFDFDFE0FFDCDC
      DCFFC0BEBDFFEBE5DDFF8BB7DCFF1D8BEFFF19AFFDFF13E0FFFF0CEAFFFF06F4
      FFFF09EFFFFF0FE4FFFF14DCFFFF1AD3FFFF1CAAFCFF178BF1FF8DBDE5FFD7D1
      D0FFE9CBA0FFC9800CFF423434FF595656FF97AC9BFFA7B6AAFFC7C4C7FFF6F0
      F3FFACDBBCFF6FD194FF59D188FF6CD192FF6FCF91FF4DCC7DFF57CA81FF4CBF
      78FF6D9D7FFFAEC2B7FFFFFFFFFFB26B42FFA83800FFB65314FFC26626FFC96F
      2FFFCB7433FFCC7636FFCC7636FFCB7334FFC86F2FFFC26526FFB75415FFA83C
      01FFAD4810FFE5DEDBFFBEC0C1FFB0B0B0FFDB961EFFE2BC83FFB9BEC5FFCFCF
      D0FFCECECFFFD0D0D1FFC7C7C8FFB8B8B9FFD1D1D2FFD0D0D1FFD1D1D2FFCFCF
      D0FFB7B7B8FFCFCFD0FFD0D0D1FFD1D1D1FFD9D4CFFF58AAF4FF1BA4FEFF2A9E
      FDFF2E95FDFF318AFCFF3992FBFFBBC7D0FFD1CFCDFFCECECFFFD2D2D2FFBBC0
      C7FFE6CAA0FFCE8712FF5F6061FF878787FF00000000E1BB82FFB2B7BDFFB9B9
      BAFFADADAEFFA7A7A8FFAB9D9DFFF7F5F5FF86B2D3FF00B1F9FF00CBFEFF00DB
      FEFF00E8FEFF2BD5E1FFDDD5D5FFEEE9E9FFEBE6E6FFE7E2E2FFD1C5C5FF1BB7
      C8FF00DDFEFF00CEFEFF00BDFEFF468AABFFBCABABFFC2B2B2FFBDADADFFB7A5
      A5FFB19E9EFFA18B8BFF655858FF787878FFE89206FFE2BC83FFBABFC6FFD0D1
      D2FFCFCFD0FFD2D2D2FFC8C8C9FFB9B9BAFFD3D3D3FFD1D1D2FFD3D3D3FFD1D1
      D1FFB7B7B9FFD4D2D1FFF3E0D0FF6FAEE8FF0F92FAFF0EE4FFFF07F3FFFF00FD
      FFFF04F7FFFF0AECFFFF11E1FFFF18CFFEFF0F8FF9FF80B7E6FFF2E0D1FFBDC1
      C7FFE6CAA0FFC9810DFF332C2CFF5C5C5CFF97AB9BFFA4B2A6FFC4C2C4FFF2EF
      F2FFCFE1D3FF89CD9AFF58C578FF40C26BFF44C36CFF9FDAB1FFAEDBBBFF3AB8
      64FF8AA390FFB3C0B7FFFFFFFFFFB06A41FFB65010FFCA7131FFCF7939FFD280
      3FFFD58443FFD68544FFD68645FFD58342FFD17E3DFFCE7737FFC96F30FFBB5A
      1AFFB14D14FFE6E0DCFFC0C2C3FFB0B0B0FFDB961EFFE2BC83FFD3D7DEFFFEFF
      FFFFFCFCFCFFFFFFFFFFEDEDEDFFC9C9CAFFFFFFFFFFFDFDFDFFFFFFFFFFFBFB
      FBFFC7C7C8FFFBFCFBFFFDFDFDFFFFFEFEFFFFFFFFFF62BCFEFF10C5FFFF25BB
      FFFF2FA9FFFF3697FFFF3D95FCFFE1ECF5FFFFFEFBFFFCFCFCFFFFFFFFFFD7DB
      E1FFE6C99CFFCE8712FF606162FF878787FF00000000DEB981FFB4AEB2FFA99A
      9AFF8D7777FF8B6F6FFFBDADADFFFDFCFCFF439DD2FF00B1FEFF00BFFEFF00CF
      FEFF00DCFEFF1CD0E2FFE1D8D8FFF2EEEEFFF0ECECFFECE7E7FFD6CBCBFF1AB0
      C8FF00D1FEFF00C3FEFF19A7DCFFB2A0A0FFD0C3C3FFCABCBCFFC4B6B6FFBEAF
      AFFFB6A3A3FF8B6C5CFF474848FF727272FFE89206FFE2BC83FFD3D7DEFFFEFF
      FFFFFCFCFCFFFFFFFFFFEDEDEDFFC9C9CAFFFFFFFFFFFDFDFDFFFFFFFFFFFBFB
      FBFFCDC9C8FFFFFFFCFF90CBFDFF1A90F9FF18B5FBFF11E4FFFF0BEBFFFF06F4
      FFFF08EFFFFF10E1FFFF17D7FFFF1DCCFFFF1BA2FAFF2998F8FFBBE3FFFFE8E2
      E0FFE8C99BFFC87E08FF242424FF575757FF97AB9AFFA0AEA2FFC1C0C1FFF7F1
      F6FFAAD8B2FF73C885FF98D2A5FFC3DECAFFA0D3A9FFC3DDC9FFD0E1D3FF89BE
      93FF699972FFB1C3B6FFFFFFFFFFB9794FFFC96C28FFD07C3BFFD68443FFDA8C
      4BFFDE9250FFDF9553FFDF9553FFDD9150FFD98B49FFD58241FFCF7939FFC86D
      2CFFBF642AFFE8E2DEFFC0C2C3FFB0B0B0FFDB961EFFE2BD85FFD1D6DCFFFBFB
      FCFFF8F8F8FFFDFDFDFFEAEAEAFFC9C9C9FFFCFCFCFFF8F8F8FFFCFCFCFFF8F8
      F8FFC6C6C6FFF8F8F8FFF8F8F8FFFAFAFAFFFFFFFCFF60BDFDFF06D6FFFF1BCD
      FFFF25BDFFFF2AADFFFF399DFBFFDEE8F2FFFDFAF7FFF8F8F8FFFFFFFFFFD5D9
      E0FFE6C79BFFCE8612FF606162FF878787FF00000000CFAF86FFC2B2B2FFDBD1
      D1FFF0ECECFFFCFBFBFFD0C4C4FFFDFDFDFF1C90D7FF00A7FEFF00B5FEFF00C1
      FEFF08D0FEFF40CBE3FFE3DCDCFFF6F3F3FFF3F0F0FFF1EDEDFFDAD0D0FF39AE
      C9FF0BC9FEFF04B4F6FF989196FFDBD1D1FFD6CCCCFFD1C5C5FFCCBEBEFFC8B8
      B8FF9E8686FFA28C8CFF7C6768FF6E6E6EFFE89206FFE2BD85FFD1D6DCFFFBFB
      FCFFF8F8F8FFFDFDFDFFEAEAEAFFC9C9C9FFFCFCFCFFF8F8F8FFFCFCFCFFFDFA
      F7FFC8C6C5FF6BB8F9FF0B8CF8FF20B0FDFF1ECEFFFF18CDFFFF14DAFFFF0DE9
      FFFF0EE4FFFF16D9FFFF1CCAFFFF23BEFFFF2CB7FFFF209AFBFF1391FBFF70B0
      E8FFF4CE9BFFC9810AFF3E3434FF545454FF97AA9AFF9CAA9EFFBEBDBEFFF4F1
      F4FFC9DFCCFFA1D2A6FF99CC9DFFC1D9C2FFCCE6D3FFB2E5C1FFB6E8C4FFC1D5
      C7FF91A492FFB6C0B8FFFFFFFFFFBE8156FFCF7531FFD58443FFDC8F4DFFE399
      56FFE7A05DFFE9A461FFE9A460FFE69F5CFFE19754FFDB8D4BFFD48240FFCD74
      32FFC76F34FFF3EDE9FFC8CACBFFAFAFAFFFDB961EFFE2BE87FFD6DAE1FFFFFF
      FFFFFFFFFFFFFFFFFFFFF0F0F0FFCBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FC2FEFF00F0FFFF0EE5
      FFFF18D4FFFF1DC4FFFF33A6FBFFE5ECF8FFFFFFFDFFFEFEFEFFFFFFFFFFD9DD
      E3FFE5C698FFCF8711FF646566FF868686FF00000000D3B38BFFE9E4E4FFFEFE
      FEFFFEFEFEFFFEFEFEFFD5CACAFFFDFDFDFF1C90DAFF009BFEFF00A8FEFF18BE
      FEFF51D7FEFF66CAE4FFE6E0E0FFF8F7F7FFF7F5F5FFF5F1F1FFDDD5D5FF5CAF
      CAFF51D2FEFF799DAEFFDBD2D2FFE1D8D8FFDCD3D3FFD8CECEFFD3C8C8FFAE9A
      9AFFCCBEBEFFE6E0E0FF8F8080FF6E6E6EFFE89206FFE2BE87FFD6DAE1FFFFFF
      FFFFFFFFFFFFFFFFFFFFF0F0F0FFCBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFF9FE
      FFFF499FE8FF0B8CF9FF25A0FCFF1DA6FFFF129AFDFF1494FCFF1A9BFAFF16D1
      FEFF14DFFFFF1CC1FDFF1997FAFF1394FDFF189AFEFF299BFFFF2891FBFF088D
      FFFF7FAABEFFCB8815FF484040FF545454FF97AA99FF99A79BFFBDBBBDFFEFEF
      EFFFF0EFF0FFE9ECE9FFF1EFF0FFBAE4C2FF6BE388FF8CD7A1FF8CDDA3FF70D4
      89FFB0B1B0FFC2C3C3FFFDFEFFFFAD6C43FFCA702BFFD38442FFDB904CFFE39C
      58FFE9A661FFEDAD68FFECAC67FFE8A45FFFE19956FFD98D4AFFD2813EFFC972
      2FFFB95F24FFFCF5F1FFD1D3D4FFAEAEAEFFDB971DFFE3C08CFFBFC3CBFFDADA
      DAFFD8D8D9FFDADADBFFCECECFFFBEBEBFFFE0E0E0FFDEDEDFFFE0E0E0FFDCDC
      DDFFBCBCBDFFDDDDDDFFDEDEDEFFDFDFDFFFE4E0DEFF53B4F9FF00D7FFFF06D2
      FFFF0DC6FEFF0FBCFEFF2AA3FEFFC9D0DDFFE1DEDBFFDDDDDEFFE0E0E0FFC4C8
      D0FFE5C597FFD08812FF696A6AFF858585FF00000000D7B992FFDED7D7FFF9F8
      F8FFFEFEFEFFFEFEFEFFD5CBCBFFFEFEFEFF248FD5FF008FFEFF08A0FEFF6DD2
      FEFF6DD6FEFF7ECAE4FFE8E2E2FFFBF9F9FFF9F8F8FFF7F6F6FFE1D8D8FF6FB0
      CAFF7BBBD8FFCABCBCFFE9E4E4FFE6E0E0FFE2DBDBFFDED6D6FFC9BABAFFBAA8
      A8FFECE7E7FFE9E3E3FF968686FF747474FFE89306FFE3C08CFFBEC3CAFFD8D8
      D9FFD7D7D7FFD9D9D9FFCDCDCEFFBDBDBEFFDEDEDEFFDDDDDDFFE4E0DDFFA3C7
      E5FF008BFEFF0E8CF7FF168EF2FF3090E4FF66A4DCFF8EACC8FF3792ECFF15AD
      FDFF1AD8FFFF16A0FDFF4695E0FF88AFD1FF4D9BDFFF238FE9FF138CF4FF0C8E
      FDFF168EEEFF928053FF4B4343FF595959FF96AA98FF98A69AFFBDBBBDFFEFEF
      EFFFF1F1F1FFF3F2F3FFF8EFF6FF77E28EFF67DB80FF69DA81FF97DDA6FF53CB
      6EFF77A682FFA6BEACFFFFFFFFFFD3BEB3FFDEC0ABFFE5CAB4FFE7CFB8FFEAD3
      BCFFECD7C0FFEEDAC2FFEDDAC2FFECD7BFFFE9D3BCFFE6CEB7FFE3C9B2FFDFC2
      ACFFD7BAAAFFFFFFFEFFD5D5D6FFB5B5B5FFDB971DFFE4C18DFFBDC2C9FFD6D7
      D7FFD5D5D6FFD7D7D8FFCFCFCFFFB8B8B9FFD1D1D1FFD0D0D1FFD2D2D2FFCFCF
      D0FFB7B7B8FFD0D0D0FFD0D0D1FFD1D1D1FFD5D3D1FF9BB3CEFFA8C6EFFFAECC
      F2FFAFCDF3FFB1D1F6FF94B4D6FFC4C8CBFFD1D1D0FFD0D0D1FFD5D5D5FFBDC1
      C8FFE6C596FFD08913FF6B6B6BFF8A8A8AFF00000000E1C08FFFBBB3B6FFB9AB
      ABFFB09E9EFFBAA9A9FFCEC1C1FFFEFEFEFF62ADD6FF0083FEFF39AEFEFF8CD6
      FEFF8CDAFEFF95CBE6FFE9E4E4FFFDFCFCFFFBFBFBFFF9F8F8FFE3DCDCFF87A9
      BCFFB4A9ABFFF1EDEDFFEEE9E9FFEBE6E6FFE7E1E1FFDED7D7FFA58F8FFFC8B8
      B8FFB5A2A2FFA58E8EFF807171FF858585FFE89306FFE4C18DFFBEC2C9FFD7D8
      D9FFD6D6D7FFD9D9D9FFD0D0D0FFB8B8B9FFD2D2D2FFD1D2D2FFD6D3D2FFCAD0
      D5FF82B0D6FF9BC9F0FFBDD2E3FFDAD8D6FFE5DCD4FFD1C0B3FF6FADE6FF0E9B
      FCFF20C4FFFF1294FDFF7EA6CAFFE6D4C5FFE2DAD3FFD3D6D9FFB8D4EBFF7CB8
      EBFF97AFB3FFBF7F18FF403939FF666666FF96A998FF99A79AFFBEBCBEFFF0F0
      F0FFF1F1F1FFF2F1F2FFF7EFF5FF6FDB83FF6AD67EFF75D085FF6DD581FF7DC8
      8BFF45AD5BFF62A771FFE7E0E6FFFFFAFFFFFCF9FFFFFBF8FFFFFBF7FFFFFAF7
      FFFFF7F7FDFFF8F7FDFFF4F4FAFFF7F8FDFFFDFFFFFFF9FDFFFFF8FCFFFFF8FC
      FFFFF9FDFFFFF1F1F1FFA3A3A3FFE9E9E9FFDB951DFFE4C08DFFD3D8DFFFFFFF
      FFFFFCFCFCFFFFFFFFFFF1F1F1FFC9C9CAFFFDFEFEFFFCFCFCFFFFFFFFFFFAFA
      FAFFC7C7C8FFFBFCFCFFFCFCFCFFFEFEFEFFFFFFFFFFCEC9C4FFFCF5EFFFFFFE
      F7FFFFFEF8FFFFFFFDFFD2CBC5FFEBEBEBFFFDFEFEFFFDFDFDFFFFFFFFFFD7DC
      E2FFE5C392FFCF8712FF525252FFB2B2B2FF0000000000000000000000000000
      000000000000EDE8E8FFD2C9C9FFFDFDFDFFBFCCD6FF1294FEFF47ABFEFFABDD
      FEFFABE0FEFFADD0E7FFEBE6E6FFFEFDFDFFFDFDFDFFFCFBFBFFE6E0E0FFA99A
      9BFFF2EEEEFFF5F2F2FFF2EEEEFFF0EBEBFFECE7E7FFAF9D9DFFA69797FFB8B2
      B6FFD3B48DFFCC8512FF525252FF00000000E89206FFE4C08DFFD3D8DFFFFFFF
      FFFFFCFCFCFFFFFFFFFFF1F1F1FFC9C9CAFFFDFEFEFFFCFCFCFFFEFFFFFFFBFA
      F9FFD2C9C2FFFFFEF7FFFFFDF9FFFFFEFDFFFFFFFFFFD6CFC9FFB0D3F2FF1192
      F9FF20ACFDFF1F96FBFFA7B9C9FFF3F0ECFFFDFEFEFFFFFDFCFFFFFFFFFFE3DE
      DCFFF3C78CFFCC7F01FF292929FF888888FF96A998FF9EA99FFFC1BDC1FFF0F0
      F0FFF1F1F1FFF2F1F2FFFDF5FCFFA6DCAFFF35CD50FF83D190FF84CE8FFF62D0
      75FF29CC47FF28BB44FF45AF59FF52B264FF50B262FF50B262FF51B363FF58B0
      69FF67A975FF6BA87AFFA9BFB0FF86998BFFA0A1A0FFC0BFBFFFC0C0C0FFBFBF
      BFFFC5C5C5FFC7C7C7FFE5E5E5FF00000000DB961EFFE4C290FFD2D6DDFFFCFC
      FCFFF8F8F8FFFDFDFDFFEEEEEEFFC7C7C8FFFAFAFAFFF8F8F8FFFBFBFBFFF6F6
      F6FFC5C6C7FFF8F8F8FFF8F8F8FFFAFAF9FFFCFCFCFFC6C7C7FFF0F1F1FFF8F8
      F8FFF9F9F9FFFFFFFFFFC9C9C9FFE8E8E8FFF9F9F9FFF8F8F8FFFFFFFFFFD5D9
      E0FFE4C28FFFCC840FFF737373FFC3C3C3FF0000000000000000000000000000
      00000000000000000000E2DEDEFFE8E3E3FFF8F6F6FF78AED5FF2196FEFFCEE9
      FEFFCEE9FEFFC8D8E7FFECE7E7FFFEFEFEFFFEFEFEFFFDFDFDFFEDE8E8FFE1DA
      DAFFF9F8F8FFF7F6F6FFF6F3F3FFF3F0F0FFCCBFBFFF937C7CFFD1D0D0FFCDD0
      D7FF00000000000000000000000000000000E89307FFE4C290FFD2D6DDFFFCFC
      FCFFF8F8F8FFFDFDFDFFEEEEEEFFC7C7C8FFFAFAFAFFF8F8F8FFFBFBFBFFF6F6
      F6FFC5C6C7FFF8F8F8FFF8F8F8FFFAFAF9FFFCFCFCFFCCC9C7FFDDE8F1FF2498
      F8FF1294F9FF3DA4FBFFC8C8C9FFEAE9E8FFF9F9F9FFF8F8F8FFFFFFFFFFD5D9
      E0FFE4C28FFFCC7F02FF3A3A3AFF959595FF96AA98FF6A996BFF9CB29CFFF5F2
      F5FFF2F2F2FFF2F2F2FFF5F4F5FFF2F0F2FF5DC56DFF1CC236FF33C84BFF3ECF
      56FF49D15FFF4DD463FF49D561FF47D45FFF44D45DFF3ED357FF32CB4BFF41BB
      56FF3FC15FFF27BB48FFB2E9BDFF8CAC91FFEDEDEDFF00000000000000000000
      000000000000000000000000000000000000DB971FFFE4C394FFD6DAE1FFFFFF
      FFFFFFFFFFFFFFFFFFFFF4F4F4FFCACACBFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFC8C8C9FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFC9C9CAFFF7F7F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFD9DD
      E4FFE4C08DFFD08812FF808080FFC3C3C3FF0000000000000000000000000000
      00000000000000000000EEEEEEFFBAADADFFFEFEFEFFDCDBDDFF3D9FE6FF82C8
      FEFFF0F8FEFFE2E3E8FFEDE8E8FFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFC
      FCFFFCFBFBFFFBF9F9FFF8F7F7FFECE7E7FFA08D8DFFA59898FFDDDDDDFFD2D6
      DDFF00000000000000000000000000000000E89308FFE4C394FFD6DAE1FFFFFF
      FFFFFFFFFFFFFFFFFFFFF4F4F4FFCACACBFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFC8C8C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9CAFFFFFDF7FF61B7
      FEFF0083FCFF8ACDFFFFDCD3CCFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFD9DD
      E4FFE4C08DFFCD8001FF404040FF959595FF95A997FF328733FF82A981FFF9F3
      F9FFF2F2F2FFF2F2F2FFF2F2F2FFF9F6F9FFE3EAE3FF74C57EFF6DCD7AFF83D8
      8EFF85D890FF84D790FF84D790FF84D790FF84D790FF85D890FF83D78FFF6BC9
      77FF42B959FF2AAB3FFFCBECD0FF89AA90FFE0E0E0FF00000000000000000000
      000000000000000000000000000000000000DB961FFFE6C698FFBEC3CBFFDADB
      DDFFD9DADBFFDCDCDEFFD1D2D4FFB8B9BBFFDADADCFFD9DADBFFDBDCDDFFD7D8
      DAFFB6B8BAFFD8D9DBFFD9DADBFFDADBDDFFDBDCDEFFB7B8BBFFD4D5D7FFD9DA
      DCFFDADBDDFFDCDDE0FFB9BABDFFCECFD2FFD9DBDCFFDADBDDFFDCDEE1FFC1C6
      CFFFE5C18DFFD08812FF808080FFC3C3C3FF0000000000000000000000000000
      000000000000DADADCFFB4AFB0FFA38D8DFFDCD3D3FFFEFEFEFFCED0D5FF158E
      E4FF5AB5FEFFDAE1E9FFEDE9E9FFFEFEFEFFFEFEFEFFFEFEFEFFF9F8F8FFF9F7
      F7FFFDFDFDFFFCFCFCFFFBF9F9FFF9F7F7FFB5A3A3FF9E9B9DFFB2B3B6FFB2B6
      BFFFE2BF8BFF000000000000000000000000E89308FFE6C699FFBEC3CBFFDADA
      DCFFD8D9DAFFDBDBDDFFD1D1D3FFB8B9BAFFD9DADBFFD8D9DAFFDADBDCFFD6D7
      D9FFB6B7BAFFD7D8DAFFD8D9DBFFDADADCFFDADBDDFFB7B8BBFFD9D7D6FFBBCC
      DAFF69A6DBFFD1D8DFFFBDBCBDFFCDCFD1FFD9DADBFFD9DADCFFDBDDE0FFC0C6
      CEFFE5C18DFFCD8001FF404040FF959595FF96AA98FF438D45FF91AE92FFF7F3
      F7FFF2F2F2FFF3F3F3FFF3F3F3FFF4F4F4FFFBF7FBFFF5F4F5FFB5D8B8FF8FCD
      95FF99D69FFF9DD8A3FF9BD7A2FF9BD7A2FF9FD8A5FF94D29BFF8BCD92FF98D6
      9FFF6CB770FF93C996FFFEFFFFFF82A689FFE0E0E0FF00000000000000000000
      000000000000000000000000000000000000DB941DFFF7D7A7FFE1DCD5FFDED6
      CCFFDED6CCFFDED5CAFFDED5C9FFE0D6CAFFDED3C6FFDDD3C4FFDDD2C1FFDDD1
      C0FFE0D3C1FFDDD0BDFFDDCFBCFFDCCEBBFFDCCEBAFFDED1BDFFDCCEBAFFDCCD
      B8FFDCCDB6FFDCCCB5FFDDCEB8FFDBCCB4FFDBCAB3FFDBC8ACFFDBC9AEFFDED2
      C1FFF5CE94FFD08513FF7F7F7FFFC3C3C3FF0000000000000000000000000000
      000000000000D6CDC3FF9D8785FFE6E0E0FFF2EEEEFFE4DEDEFFFEFEFEFFEBE6
      E6FF54A8DAFF2990DCFFEEE9E9FFFEFEFEFFFEFEFEFFFEFEFEFFECE7E7FFBFB0
      B0FFFEFEFEFFFDFDFDFFFCFCFCFFFBFBFBFFF5F2F2FFAC9C98FFA19380FFB9AF
      A0FFE7C28BFFCE8413FF0000000000000000E88F06FFF8D7A7FFE2DDD5FFDFD7
      CCFFDFD7CCFFDED6CAFFDFD5CAFFE1D7CBFFDED4C6FFDED3C4FFDED2C2FFDED2
      C0FFE0D4C2FFDED0BEFFDED0BCFFDDCFBBFFDDCFBAFFDFD1BEFFDCCEBAFFE3D1
      B8FFEFD6B7FFE0CEB5FFDDCEB8FFDCCCB4FFDBCBB3FFDBC9ACFFDCCAAEFFDFD3
      C1FFF5CE94FFCC7C01FF3F3F3FFF959595FF95A997FF388A39FF85AB85FFF9F4
      F9FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF5F5F5FFF8F7F8FFFDF9FDFFECF1
      ECFFC8E0CAFFBADCBDFFBADCBDFFBADCBDFFC1DEC3FFDAEADBFFCFE5D1FFCFE5
      D1FFF4F8F5FFFFFFFFFFFFFFFFFF86A88CFFE0E0E0FF00000000000000000000
      000000000000000000000000000000000000DB911DFFFEDEAFFFFFFCF6FFFFED
      D3FFFFEACCFFFFE9CBFFFFE9C9FFFFE8C7FFFFE6C5FFFFE5C3FFFFE5C1FFFFE4
      BEFFFFE3BCFFFFE2B9FFFFE1B7FFFFDFB4FFFFDFB3FFFFDEB2FFFEDEB1FFFEDD
      B0FFFEDDAEFFFEDCADFFFEDBABFFFDDAA9FFFDDAA7FFFCD9A6FFFDD69FFFFCE3
      BEFFFAD195FFD08312FF7F7F7FFFC2C2C2FF0000000000000000000000000000
      000000000000CEB9AAFFCEBFBFFFFEFEFEFFFEFEFEFFF2EEEEFFD7CECEFFF9F8
      F8FFFEFEFEFFE2DBDBFFEEEBEBFFFEFEFEFFFEFEFEFFFEFEFEFFECE7E7FFBFB5
      B5FFD3C9C9FFFEFEFEFFFDFDFDFFFDFCFCFFFCFBFBFFEBE6E6FFAF998AFFBEAB
      8FFFD7B380FFC77D11FF7F7F7FFF00000000E88D06FFFEDEAFFFFFFCF6FFFFEC
      D2FFFFE9CAFFFFE9CAFFFFE8C8FFFFE7C6FFFFE5C3FFFFE5C2FFFFE4C0FFFFE3
      BDFFFFE3BAFFFFE1B7FFFFE0B5FFFFDFB3FFFFDEB1FFFFDEB0FFFEDDAFFFFEDD
      AEFFFEDCADFFFEDCACFFFEDBAAFFFDDAA8FFFDD9A6FFFCD9A5FFFDD69EFFFCE2
      BDFFFAD195FFCC7A01FF3F3F3FFF949494FF95A997FF4E9050FFA5B5A5FFF5F3
      F5FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF6F6F6FFF7F7F7FFFBF9
      FAFFFFFCFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFFFFFFFF8EAC92FFE0E0E0FF00000000000000000000
      000000000000000000000000000000000000DB921DFFFDE2BCFFFDCD84FFF8A5
      19FFF6A81CFFF6A81EFFF6A81FFFF6A821FFF7A822FFF7A824FFF7A924FFF7A9
      25FFF7A927FFF7A928FFF7A928FFF7A929FFF7A92AFFF7A92AFFF7AA2BFFF8AA
      2CFFF7AA2DFFF8AA2EFFF8AB2EFFF8AB2FFFF8AB2FFFF8AB30FFF8AA31FFFBB3
      46FFF9CA83FFDA8910FF7F7F7FFFC3C3C3FF0000000000000000000000000000
      000000000000BEABA3FFF9F8F8FFFEFEFEFFFEFEFEFFE1DADAFF9E8787FFC39E
      71FFD8CAC2FFE1DADAFFF0ECECFFFEFEFEFFFEFEFEFFFEFEFEFFEDE8E8FFBFB5
      B5FFB9A59EFFE7E1E1FFFEFEFEFFFEFEFEFFFDFDFDFFFCFCFCFFDCD2D2FFAD87
      5BFFBF9B65FFC1790EFF7C7C7CFF00000000E88E06FFFDE2BCFFFDCC82FFF7A4
      18FFF6A71BFFF6A81DFFF6A81FFFF6A820FFF6A822FFF6A823FFF6A924FFF7A9
      25FFF7A926FFF7A927FFF7A928FFF7A929FFF7A929FFF7A92AFFF7A92BFFF7AA
      2CFFF7AA2DFFF8AA2DFFF8AB2EFFF8AB2FFFF8AB2FFFF8AB30FFF8AA30FFFBB3
      46FFF9CA83FFD78204FF3E3E3EFF959595FF94A995FF58935AFFB7BAB6FFF3F2
      F3FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8
      F8FFF9F9F9FFFAFAFAFFFBFBFBFFFBFBFBFFFCFCFCFFFDFDFDFFFDFDFDFFFEFE
      FEFFFEFEFEFFFEFEFEFFFFFFFFFF8DAC92FFE0E0E0FF00000000000000000000
      000000000000000000000000000000000000DA9421FFFFDBABFFF7A614FFE4A8
      00FFE5AA04FFE5AA05FFE5AB06FFE5AB08FFE6AC0AFFE6AC0DFFE6AE0FFFE6AE
      11FFE6AF14FFE6AF16FFE6AF19FFE7B01CFFE7B01FFFE7B121FFE8B125FFE8B2
      28FFE8B22BFFE9B32EFFE9B331FFE9B434FFE9B437FFE9B53AFFE8B741FFF2A7
      1CFFFCB957FFCF8A22FF808080FFC3C3C3FF0000000000000000000000000000
      000000000000D3A842FFE4DDDDFFF9F8F8FFCCBEBEFFA98A68FFCE9D1BFFE1AB
      11FFE5AE14FFD0AC58FFF0ECECFFFEFEFEFFFEFEFEFFFEFEFEFFEDE9E9FFAF8F
      4EFFCD9D26FFC5AB8AFFF5F3F3FFFEFEFEFFFEFEFEFFFDFDFDFFFDFCFCFFC8B8
      B8FFB2874EFFA46D1BFF747474FFC0C0C0FFE8900AFFFFDBAAFFF7A614FFE4A8
      00FFE5AA04FFE5AA05FFE5AB06FFE5AB08FFE6AC0AFFE6AC0DFFE6AE0FFFE6AE
      11FFE6AF14FFE6AF16FFE6AF19FFE7B01BFFE7B01EFFE7B121FFE8B124FFE8B2
      28FFE8B22BFFE9B32EFFE9B331FFE9B434FFE9B437FFE9B53AFFE8B741FFF2A8
      1CFFFCB957FFC98012FF3A3A3AFF939393FF96AA98FF488F4AFF9BB29AFFF7F4
      F7FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F7FFF8F8F8FFF8F8
      F8FFF9F9F9FFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFDFDFDFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8BAB90FFDBDBDBFF00000000000000000000
      000000000000000000000000000000000000DB9625FFFFDBA7FFF3A210FFE0A0
      00FFE2A100FFE3A100FFE3A200FFE3A200FFE4A300FFE4A300FFE4A400FFE4A4
      00FFE4A500FFE4A500FFE4A500FFE5A600FFE5A600FFE5A700FFE5A700FFE5A8
      00FFE5A800FFE6A900FFE6A900FFE6A900FFE6A901FFE6AA03FFE4AC04FFEDA3
      01FFFDB754FFD08D29FF858585FFC6C6C6FF0000000000000000000000000000
      00000000000000000000D3A440FFC1B0A6FFC79B44FFDD9E00FFE2A300FF0000
      000000000000D9A72EFFF1EDEDFFFEFEFEFFFEFEFEFFFEFEFEFFEEE9E9FFB08A
      2BFFCB9500FFDEA50AFFC7B39EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFDFD
      FDFFB7A5A1FF976925FF6C6C6CFFB8B8B8FFE9920EFFFFDBA7FFF3A210FFE0A0
      00FFE2A100FFE3A100FFE3A200FFE3A200FFE4A300FFE4A300FFE4A400FFE4A4
      00FFE4A500FFE4A500FFE4A500FFE5A600FFE5A600FFE5A700FFE5A700FFE5A8
      00FFE5A800FFE6A900FFE6A900FFE6A900FFE6A901FFE6AA03FFE4AC04FFEDA3
      01FFFDB754FFC88118FF383838FF8F8F8FFF95A997FF368937FF84AB84FFFAF4
      FAFFF3F3F3FFF3F3F3FFF5F4F4FFF6F5F6FFF7F6F7FFF8F6F7FFFAF8F9FFFBF9
      FBFFFCFAFBFFFDFBFCFFFFFCFDFFFFFCFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8DB090FFD7D7D7FF00000000000000000000
      000000000000000000000000000000000000DE9722FFFFE4BBFFF7A621FFDE8D
      00FFDE9200FFDF9200FFDF9300FFDF9300FFE09400FFE09400FFE09500FFE095
      00FFE09600FFE09600FFE09600FFE19700FFE19700FFE19800FFE19900FFE19A
      00FFE19A00FFE29B00FFE29B00FFE29C00FFE29C00FFE39C00FFE19D00FFF09A
      00FFFEC16CFFD69025FF979797FFD0D0D0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D69D2FFFF1EEEEFFFEFEFEFFFEFEFEFFFEFEFEFFEEEBEBFFAE82
      2BFFC78800FFDE9800FFD99C1FFFD6CCCCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFF8F7F7FFAC9284FF707070FFB0B0B0FFEC930BFFFFE4BBFFF7A621FFDE8D
      00FFDE9200FFDF9200FFDF9300FFDF9300FFE09400FFE09400FFE09500FFE095
      00FFE09600FFE09600FFE09600FFE19700FFE19700FFE19800FFE19800FFE19A
      00FFE19A00FFE29B00FFE29B00FFE29C00FFE29C00FFE39C00FFE19D00FFF09A
      00FFFDC16CFFCF861AFF424242FF909090FF95A997FF87A28AFFC1BCBEFFFFF5
      FEFFFFF6FFFFFFF5FDFFFFF6FCFFFFF7FBFFFDF7FBFFFAF7F9FFF9F8F9FFF8F9
      F8FFF5F8F6FFF3F9F5FFF1F9F4FFEFF9F3FFEDF9F2FFE5F8ECFFDCF6E5FFD3F3
      DEFFCAF0D6FFBFEDCFFFB7ECC8FF63A26EFFD7D7D7FF00000000000000000000
      000000000000000000000000000000000000DD9323FFFEE7C4FFFFEBCEFFFBB6
      53FFF9B54CFFFAB54CFFFAB64BFFFAB64BFFFAB54BFFF9B54AFFF9B549FFF9B5
      49FFF9B548FFF9B548FFF9B447FFF9B447FFF9B446FFF9B445FFF9B345FFF9B3
      44FFF9B344FFF9B343FFF9B343FFF9B242FFF9B242FFF9B241FFF9B041FFFBCB
      83FFFAD39AFFDE9023FFB6B6B6FFE0E0E0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EAB565FFF2EEEEFFFEFEFEFFFEFEFEFFFEFEFEFFF0ECECFFBD91
      52FFDD9F3CFFF4AF42FF00000000DCAC6EFFE8E2E2FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFE9E3E3FF9D9191FFBDBDBDFFEE8E08FFFEE7C4FFFFECCEFFFBB6
      54FFF9B54DFFFAB64DFFFAB64CFFFAB64CFFFAB54BFFF9B54BFFF9B54AFFF9B5
      49FFF9B549FFF9B548FFF9B548FFF9B447FFF9B447FFF9B446FFF9B445FFF9B3
      45FFF9B344FFF9B344FFF9B344FFF9B243FFF9B242FFF9B242FFF9B041FFFBCB
      83FFFAD399FFDB8C1FFF706767FFA6A6A6FF92A893FF219349FF5FAE7FFF86E1
      A9FF7AE1A3FF72E09FFF69E09AFF60E095FF58DF90FF4FDD89FF45DB82FF3DD8
      7BFF33D573FF2AD26BFF21CF63FF18CB5AFF0FC852FF0DC44EFF0AC24BFF07C0
      47FF04BD43FF01B93FFF00BE3EFF0F892BFFD7D7D7FF00000000000000000000
      000000000000000000000000000000000000A2976DFFD6AA44FFFFE2B7FFFFE7
      C3FFFFE5BFFFFFE5BEFFFFE4BCFFFFE4BBFFFFE3BBFFFFE3BAFFFFE2B8FFFFE1
      B6FFFEE0B5FFFEDFB4FFFEDFB3FFFEDEB1FFFEDDB0FFFEDDAEFFFEDCADFFFDDB
      ABFFFDDBA9FFFDDAA9FFFCDAA8FFFCD9A6FFFCD8A5FFFCD7A3FFFCD7A4FFFBD5
      9FFFEBAB4CFFC7AD91FFD8D8D8FFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0D6B6FFF3F0F0FFFEFEFEFFFEFEFEFFFEFEFEFFF0ECECFFCAB1
      94FFE6C79AFFF9D7A6FF0000000000000000D1BBABFFF6F3F3FFFEFEFEFFFEFE
      FEFFEBE6E6FFDCD2D2FFB8A7A7FFDBD8D8FFAE8B51FFF1AD43FFFFE2B7FFFFE7
      C3FFFFE5BFFFFFE5BEFFFFE4BCFFFFE4BBFFFFE3BBFFFFE3BAFFFFE2B8FFFFE1
      B6FFFEE0B5FFFEDFB4FFFEDFB3FFFEDEB1FFFEDDB0FFFEDDAEFFFEDCADFFFDDB
      ABFFFDDBA9FFFDDAA9FFFCDAA8FFFCD9A6FFFCD8A5FFFCD7A3FFFCD7A4FFFBD5
      9FFFE9A849FFB39378FF9C8D8DFFCFCCCCFF9AAE9BFF008929FF009C36FF00CB
      48FF00CB47FF00CD48FF00CD4AFF00CD4BFF00D04BFF00CA49FF00C748FF00C4
      46FF00C144FF00BC40FF00B83DFF00B339FF02AD36FF05AA36FF08A634FF0BA3
      34FF0E9E33FF139E35FF1CA33CFF439751FFEDEDEDFF00000000000000000000
      00000000000000000000000000000000000098AC99FF267E21FF908A15FFA19A
      16FF9F9715FF9F9715FF9F9716FF9F9716FF9F9816FF9F9615FF9F9615FF9F95
      15FF9F9414FF9F9213FF9F9112FF9F9011FFA08E10FFA08D10FFA18C0FFFA28B
      0FFFA3890FFFA58910FFA78B12FFB38718FFE5A146FFEAA64BFFEAA549FFE8A7
      58FFDAC6B4FFE4E4E4FFF2F2F2FFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A79B34FFCBC3A3FFD4CBBCFFE6E0E0FFE4DEDEFFDDD5D5FFA18E
      38FF9D840EFFA48810FF0000000000000000E2A14CFFC6B2A7FFD1BAA9FFC5A0
      80FFC5B2A7FFD8D5D5FFEFEFEFFFFBFBFBFF96AA97FF45751BFFC78308FFD28B
      07FFCE8706FFCE8706FFCE8706FFCE8706FFCE8806FFCE8706FFCE8706FFCE87
      06FFCE8706FFD0890FFFDB9430FFDD9737FFE39D42FFE29C41FFE09A3FFFCE85
      10FFCD8204FFCF8305FFD08405FFD48307FFE18A16FFD98F31FFDD9130FFD486
      2CFFB19076FFC1BEBEFFE3E3E3FFF8F8F8FFEDEFEDFF9DC9A1FF2C9341FF0F98
      31FF259E42FF36A350FF49A85DFF5EB16FFF71AA7DFF81BB8BFF8BC293FF94C4
      9AFF9DC7A2FFA7CDAAFFB2C8B4FFBAD4BCFFC4DCC5FFCDE1CEFFD7E6D7FFE1EB
      E1FFEBEEEBFFF1F5F1FFF3F7F3FFF9FAF9FF0000000000000000000000000000
      000000000000000000000000000000000000000000009CC7A0FF2B903FFF0E92
      2FFF23963FFF33994BFF459E58FF58A768FF6AA076FF79B083FF83B78AFF8BB8
      91FF94BB98FF9DC1A0FFA8BCA9FFAFC8B1FFB8CFB9FFC1D4C2FFCAD8CAFFD4DD
      D4FFDDE0DDFFE3E7E3FFE5E8E5FFEAEBEAFFF0F0F0FFF0F0F0FFF0F0F0FFF2F2
      F2FFF5F5F5FFF9F9F9FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C8D1C6FFD1D8
      D0FFDBDEDBFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009BC59FFF2A8D3EFF0D8C
      2DFF218E3CFF309047FF419553FF539D62FF64976FFF72A67BFF7BAC82FF83AD
      88FF8BB08FFF94B697FF9EB19FFFA5BCA7FFADC3AEFFB6C8B7FFBCC5BAFFC5CB
      C4FFCED1CEFFD6D9D6FFD8DAD8FFDCDDDCFFE2E2E2FFE2E2E2FFE2E2E2FFE6E6
      E6FFEBEBEBFFF3F3F3FFFBFBFBFF00000000424D3E000000000000003E000000
      2800000080000000400100000100010000000000001400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE3FFFFE007FF0000000000000000
      FFFFE0FFFF8001FF0000000000000000FFFFE03FFE00007F0000000000000000
      FFFF001FF800001F0000000000000000FF00001FF000000F0000000000000000
      FC00003FE00000070000000000000000F800007FE00000070000000000000000
      F00000E0C00000030000000000000000F00001E0C00000030000000000000000
      F00001E0800000010000000000000000F80003E0800000010000000000000000
      8000002000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000000000000000000000
      0000000100000000000000000000000000000003000000000000000000000000
      000000070000000000000000000000000000000F000000000000000000000000
      0000000F0000000000000000000000000000000F000000000000000000000000
      0000000F8000000100000000000000000000000F800000010000000000000000
      0000000F8000000300000000000000000000000FC00000030000000000000000
      0000000FE000000700000000000000000000000FE00000070000000000000000
      0000000FF000000F00000000000000000000000FF800001F0000000000000000
      0000000FFE00007F00000000000000000000001FFF0001FF0000000000000000
      8000003FFFE007FF0000000000000000F00007FFFFFFFFFFFFFFFFFFFFFFFFFF
      E00001FF80000001FFFFFFFFFFFFFFFFC000007F00000000FFFFFFFF00000000
      C000001F00000000800000010000000080000007000000000000000000000000
      8000000100000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000001000000000000000000000000
      800000030000000000000000000000008000001F000000000000000000000000
      8000000700000000000000000000000080000001000000000000000000000000
      80000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000E0000000000000000000000000000000
      F8000000000000000000000000000000FFE00000000000000000000000000000
      FFE00000000000000000000000000000FFE00000000000000000000000000000
      FFE00000000000000000000000000000FFC00000000000000000000000000000
      FFC00000000000000000000000000000FFC00001000000000000000000000000
      FFC00001000000000000000000000000FFC00001000000000000000000000000
      FFC00001000000000000000000000000FFC00001000000000000000000000000
      FFF00001000000008000000100000000FFFF800100000000FFFFFFFF80000001
      FFFFFC0380000001FFFFFFFFFFFFFFFFFF003FFFC0000007800000FFFFFFFFFF
      FF000FFF800000018000007FFFFFFFFFFE0007FF000000018000003FFFFFC03F
      FE0001FF000000008000001FFFFF000FFE00007F000000008000000FFF000007
      FC00003F0000000080000007FE000007FC00003F0000000080000003FE000007
      F80000000000000080000001FE000001F80000000000000080000001FE000000
      F00000000000000080000001FF000000F00000000000000080000001FF800000
      F00000000000000080000001FFC00000E0000000000000008000000181E00000
      E0000000000000008000000100600000C0000000000000008000000100100000
      C000000000000000800000010000000080000000000000008000000100000000
      8000000000000000800000018000000080000000000000008000000180000000
      800000000000000080000001C0000000800000000000000080000001E0000000
      800000000000000080000001E0000000C00000000000000080000001E0000001
      F80000000000000080000001C0003FFFFE0000000000000080000001C0003FFF
      FE000000000000008000000180003FFFFE000000000000008000000100003FFF
      FE000000000000008000000100403FFFFE000000000000008000000107E03FFF
      FE00000000000001800000010FF87FFFFF0000000000000180000001FFFFFFFF
      FF0000008000000380000001FFFFFFFF8000007FFFFFFFFFFFFC7FFFFFFFFFFF
      8000001FFF00001FFC001FFFFFFFF81F8000000FFF00001FF80007FFFFFFE007
      80000007FF00001FF00001FFFFF3C00380000003FF00001FE000007FFFC08001
      80000001FF00001FC000001FFFC0000080000001FF00001FC0000007FFE00000
      80000000FC00001F80000001FFF0000080000000E000001F80000001FFC00000
      800000008000003F80000003FE00000080000000000000008000000FF8000000
      80000000000000008000007FF000000080000000000000008000000FE0000000
      800000000000000080000003C000000180000000010000008000000180000001
      8000000007000000C000000180000003800000001F000000C000000100000007
      800000007F000000E00000010000000780000000FF000000F000000100000007
      80000000FF000000F80000010000000780000000FE000000FE00000100000007
      80000000FE000000FFC000010000000F80000001FC000000FFC000030000000F
      80000001FC000000FFC000030000001F80000003F8000000FF8000030000001F
      80000007F8000000FF8000038000003F8000000FF0000000FF8000038000007F
      8000001FF000003FFF800003C00000FF8000007FE000001FFFC00003F00001FF
      80000FFFE000001FFFF00003F80007FFFFFFFFFFF000001FFFFF8007FF003FFF
      FFFFFFFFF81FFFFFFFFFFC07FFFFFFFFFFFC0FFFFFFF0FFFFFFFFFFFFFFFFFFF
      FFFC0FFFFFF807FFFFFFFFFFFFFFFFFFFFFC07FDFFF003FFFFFFFFFFFFFFFFFF
      FCFC07E0FFF001FF8000000000000000F83C07C0FFC000FF0000000000000000
      F0100100FF80007F0000000000000000E0000001FF80003F0000000000000000
      E0000001FE00001F0000000000000000F0000001FC00000F0000000000000000
      F8000003FC0000070000000000000000F8000007F00000030000000000000000
      FC000007E00000030000000000000000FC000007E00000030000000000000000
      F80000078000000300000000000000008000000F000000070000000000000000
      0000000F0000001F0000000000000000000000070000003F0000000000000000
      000000070000007F80000001800000030000000F0000007FFC000003FE0000FF
      0000000F0000003FFC0000FFFE0000FF8000000F8000001FFC0000FFFE0000FF
      FC00000F8000000FFC0000FFFE0000FFFC00001FC0000007FC0000FFFE0000FF
      FC00003FE0000003FC0000FFFE0000FFF800003FE0000001FC0000FFFE0000FF
      F800007FF0002000FC0000FFFE0000FFF00001FFF000F000FC0000FFFE0000FF
      F00007FFF881F800FC0000FFFE0000FFF003FFFFF9C3FC01FE0001FFFF0001FF
      E03FFFFFFFE7FE03FFFFFFFFFFFFFFFFC07FFFFFFFFFFF07FFFFFFFFFFFFFFFF
      E3FFFFFFFFFFFF8FFFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFC001FFC0001F
      C0000000C0000003FFFFC001FFC0001F8000000080000003FFE04001FFC0001F
      0000000080000003FE000001FFC0001F0000000080000003F8000001FFC0001F
      0000000080000003F00000010000001F0000000080000003F000000100000003
      0000000080000003F0000001000000010000000080000003F000000100000000
      0000000080000003F80000010000000000000000800000038000000100000000
      0000000080000003000000010000000000000000800000030000000100000000
      80000000800000030000000100000000C0000000800000030000000100000000
      E0000000800000030000000100000000E0000000800000030000000100000000
      E0000000800000030000000100000000E0000000800000030000000100000000
      E0000000800000030000000100000000E0000000800000030000000000000000
      E0000000800000030000000000000000E0000000800000030000000000000000
      E0000000800000030000000000000001E0000000800000030000000800000003
      F0000000800000030000000F86000003F0000001800000030000000FFE000003
      F8000001800000030000000FFFC0001FFC000007800000030000000FFFC0001F
      FFFE001FC00000070000000FFFE0001FFFFF803FFFFFFFFF0000000FFFE0003F
      FFFFE07FFFFFFFFF0000001FFFE0003FFFFE007FFFFC07FFFFFE3FFFFFFF833F
      FFF8003FFFFC07FFFFFC1FFFFFFF830FFFE0001FFC180707FFF00041FFFF8007
      F3C0000FF8000003FC000000FFF30007E0000007F0000003F8000000FFE00003
      E0000003F0000003F8000001FFC00003E0000003F0000003F8000001FFC00001
      E0000001F8000003F8000001FFC00000E0000001F8000000F8000000FFC00000
      C0000001FC000000F8000000FFE00000C0000001FC000000F8000000FF001F01
      C0000000C0000000F0000000FF007F01C000000080000000E0000001FF003F01
      C000000080000000C0000001FF001E01800000008000000080000000E2000C01
      800000038000000000000000E0000003800000078000000080000000C000000F
      800000078000000080000000C000000F80000000F8000001C0000001C000000F
      00000000FC00000FE0000003E000001F00000000FC00000FF0000007000000BF
      0000000FF8000007F8000007006801FF0000000FF8000003F800000300F803FF
      0000001FF8000001F000000101F807FF8000001FF8000001F000000101F007FF
      FC00001FF8000000F000000100000FFFFFC0003FFC180000F000000180003FFF
      FFFE003FFFF80000F000000180003FFFFFFFF01FFFF80200F000000180003FFF
      FFFFFE0FFFF80300FFF80FFFC0007FFFFFFFFF07FFF80300FFFC1FFFC803FFFF
      FFFFFF87FFFFC7FFFFFF3FFFF847FFFFFFF83FFFFFFFFFFFFFFFF87FFFC001FF
      FFF01FFFFFFFFFFFFC7FF01FFE00007FFFC007FFFFFFFFFFFC3FE00FFC00001F
      FF8003FF80000001F00FC003F800001FFE0000FF00000000E0038000F800001F
      FC00007F00000000C0000000F800001FF000001F0000000080000000F800001F
      F000000F0000000000000000FC00003FF000000F000000000000000080000001
      F000000F000000000000000080000000F000000F000000000000000000000000
      E0000007000000000000000000000000C0000003000000000000000000000000
      0000000100000000000000000000000000000000000000000000000100000000
      0000000000000000000000030000000000000000000000000000000700000000
      80000001000000008000000F00000000C000000300000000E000001F00000000
      C000000700000000F800003F000000008000000300000000FE00007F00000000
      0000000100000000FF00007F000000000000000000000000FF00007F00000000
      0000000000000000FF00007F000000000000000000000000FF00007F00000000
      C000000100000000FF00007F00000000E000000700000000FF0000FF00000000
      F000000F00000000FF0001FF00000000FC00003F80000001FF8003FF00000000
      FE00007FFFFFFFFFFFE007FF00000000FF8181FFFFFFFFFFFFF80FFF00000000
      FFC3C3FFFFFFFFFFFFFE1FFF80000001FFFFC01FFFFFFFFFFFFC07FFFFFFE0FF
      FFFF000780000001FFFC07FF80000001FFFF000700000000FC18070700000000
      8000000700000000F8000003000000000000000300000000F000000300000000
      0000000000000000F0000003000000000000000000000000F000000300000000
      0000000000000000F8000003000000000000000000000000F800000000000000
      0000000000000000FC000000000000000000000000000000FC00000000000000
      0000000000000000C00000000000000000000000000000008000000000000000
      0000000000000000800000000000000000000000000000008000000000000000
      0000000000000000800000000000000000000000000000008000000000000000
      000000000000000080000000000000000000000000000000F800000100000000
      0000000100000000FC00000F000000000000007F00000000FC00000F00000000
      0000007F00000000F8000007000000000000007F00000000F800000300000000
      0000007F00000000F8000001000000000000007F00000000F800000100000000
      0000007F00000000F8000000000000000000007F00000000FC18000000000000
      0000007F00000000FFF80000000000000000007F00000000FFF8020000000000
      0000007F00000000FFF80300000000000000007F00000000FFF8030000000000
      000000FF80000001FFFFC7FF8000000100000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 8
    Top = 88
    object acLoadLookAndFeel: TAction
      Category = 'LookAndFeel'
      Caption = 'acLoadLookAndFeel'
      OnExecute = acLoadLookAndFeelExecute
    end
    object acApdung_LAF: TAction
      Category = 'LookAndFeel'
      Caption = 'acApdung'
      ImageIndex = 9
      OnExecute = acApdung_LAFExecute
      OnUpdate = acApdung_LAFUpdate
    end
    object acDong_LAF: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acDong_LAFExecute
    end
    object acLuumoi_LAF: TAction
      Category = 'LookAndFeel'
      Caption = 'acThemmoi'
      ImageIndex = 37
      OnExecute = acLuumoi_LAFExecute
    end
    object acLoadUIControl: TAction
      Category = 'UIControl'
      Caption = 'acLoadUIControl'
      OnExecute = acLoadUIControlExecute
    end
    object acLoadDataGrid: TAction
      Category = 'DataGrid'
      Caption = 'acLoadDataGrid'
      OnExecute = acLoadDataGridExecute
    end
    object acApdung_DG: TAction
      Category = 'DataGrid'
      Caption = 'acDG_Apdung'
      ImageIndex = 9
      OnExecute = acApdung_DGExecute
      OnUpdate = acApdung_DGUpdate
    end
    object acLuumoi_DG: TAction
      Category = 'DataGrid'
      Caption = 'acDG_Luumoi'
      ImageIndex = 37
      OnExecute = acLuumoi_DGExecute
    end
    object acApdung_UIControl: TAction
      Category = 'UIControl'
      Caption = 'acApdung_UIControl'
      ImageIndex = 9
      OnExecute = acApdung_UIControlExecute
      OnUpdate = acApdung_UIControlUpdate
    end
    object acLuumoi_UIControl: TAction
      Category = 'UIControl'
      Caption = 'acLuumoi_UIControl'
      OnExecute = acLuumoi_UIControlExecute
    end
  end
  object lafList: TdxLayoutLookAndFeelList
    Tag = -1
    Left = 129
    Top = 32
    object dxLookAndFeel: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
    end
  end
  object dsLookAndFeel: TDataSource
    DataSet = memLookAndFeel
    Left = 129
    Top = 64
  end
  object memLookAndFeel: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 129
    Top = 73
    object memLookAndFeelGRP_CAP_COLOR: TIntegerField
      FieldName = 'GRP_CAP_COLOR'
      OnChange = memLookAndFeelGRP_CAP_COLORChange
    end
    object memLookAndFeelGRP_CAP_FONT_SIZE: TIntegerField
      FieldName = 'GRP_CAP_FONT_SIZE'
      OnChange = memLookAndFeelGRP_CAP_FONT_SIZEChange
    end
    object memLookAndFeelGRP_CAP_FONT_STYLE_BOLD: TIntegerField
      FieldName = 'GRP_CAP_FONT_STYLE_BOLD'
      OnChange = memLookAndFeelGRP_CAP_FONT_STYLE_BOLDChange
    end
    object memLookAndFeelGRP_CAP_FONT_STYLE_ITALIC: TIntegerField
      FieldName = 'GRP_CAP_FONT_STYLE_ITALIC'
      OnChange = memLookAndFeelGRP_CAP_FONT_STYLE_ITALICChange
    end
    object memLookAndFeelGRP_CAP_TEXT_COLOR: TIntegerField
      FieldName = 'GRP_CAP_TEXT_COLOR'
      OnChange = memLookAndFeelGRP_CAP_TEXT_COLORChange
    end
    object memLookAndFeelGRP_COLOR: TIntegerField
      FieldName = 'GRP_COLOR'
      OnChange = memLookAndFeelGRP_COLORChange
    end
    object memLookAndFeelGRP_FRAME_COLOR: TIntegerField
      FieldName = 'GRP_FRAME_COLOR'
      OnChange = memLookAndFeelGRP_FRAME_COLORChange
    end
    object memLookAndFeelGRP_FRAME_WIDTH: TIntegerField
      FieldName = 'GRP_FRAME_WIDTH'
      OnChange = memLookAndFeelGRP_FRAME_WIDTHChange
    end
    object memLookAndFeelGRP_OFFSET_CAP: TIntegerField
      FieldName = 'GRP_OFFSET_CAP'
      OnChange = memLookAndFeelGRP_OFFSET_CAPChange
    end
    object memLookAndFeelGRP_OFFSET_ITEM: TIntegerField
      FieldName = 'GRP_OFFSET_ITEM'
      OnChange = memLookAndFeelGRP_OFFSET_ITEMChange
    end
    object memLookAndFeelITEM_CAP_FONT_SIZE: TIntegerField
      FieldName = 'ITEM_CAP_FONT_SIZE'
      OnChange = memLookAndFeelITEM_CAP_FONT_SIZEChange
    end
    object memLookAndFeelITEM_CAP_FONT_STYLE_BOLD: TIntegerField
      FieldName = 'ITEM_CAP_FONT_STYLE_BOLD'
      OnChange = memLookAndFeelITEM_CAP_FONT_STYLE_BOLDChange
    end
    object memLookAndFeelITEM_CAP_FONT_STYLE_ITALIC: TIntegerField
      FieldName = 'ITEM_CAP_FONT_STYLE_ITALIC'
      OnChange = memLookAndFeelITEM_CAP_FONT_STYLE_ITALICChange
    end
    object memLookAndFeelITEM_CAP_TEXT_COLOR: TIntegerField
      FieldName = 'ITEM_CAP_TEXT_COLOR'
      OnChange = memLookAndFeelITEM_CAP_TEXT_COLORChange
    end
    object memLookAndFeelOFS_CONTROL_OFS_H: TIntegerField
      FieldName = 'OFS_CONTROL_OFS_H'
      OnChange = memLookAndFeelOFS_CONTROL_OFS_HChange
    end
    object memLookAndFeelOFS_CONTROL_OFS_V: TIntegerField
      FieldName = 'OFS_CONTROL_OFS_V'
      OnChange = memLookAndFeelOFS_CONTROL_OFS_VChange
    end
    object memLookAndFeelOFS_ITEM_OFS: TIntegerField
      FieldName = 'OFS_ITEM_OFS'
      OnChange = memLookAndFeelOFS_ITEM_OFSChange
    end
    object memLookAndFeelOFS_ITEM_AREA_OFS_H: TIntegerField
      FieldName = 'OFS_ITEM_AREA_OFS_H'
    end
    object memLookAndFeelOFS_ITEM_AREA_OFS_V: TIntegerField
      FieldName = 'OFS_ITEM_AREA_OFS_V'
      OnChange = memLookAndFeelOFS_ITEM_AREA_OFS_VChange
    end
    object memLookAndFeelOFS_ROOT_AREA_OFS_H: TIntegerField
      FieldName = 'OFS_ROOT_AREA_OFS_H'
      OnChange = memLookAndFeelOFS_ROOT_AREA_OFS_HChange
    end
    object memLookAndFeelOFS_ROOT_AREA_OFS_V: TIntegerField
      FieldName = 'OFS_ROOT_AREA_OFS_V'
      OnChange = memLookAndFeelOFS_ROOT_AREA_OFS_VChange
    end
    object memLookAndFeelEDGE_TOP: TIntegerField
      FieldName = 'EDGE_TOP'
      OnChange = memLookAndFeelEDGE_TOPChange
    end
    object memLookAndFeelEDGE_LEFT: TIntegerField
      FieldName = 'EDGE_LEFT'
      OnChange = memLookAndFeelEDGE_LEFTChange
    end
    object memLookAndFeelEDGE_RIGHT: TIntegerField
      FieldName = 'EDGE_RIGHT'
      OnChange = memLookAndFeelEDGE_RIGHTChange
    end
    object memLookAndFeelEDGE_BOTTOM: TIntegerField
      FieldName = 'EDGE_BOTTOM'
      OnChange = memLookAndFeelEDGE_BOTTOMChange
    end
    object memLookAndFeelBORDER_COLOR: TIntegerField
      FieldName = 'BORDER_COLOR'
      OnChange = memLookAndFeelBORDER_COLORChange
    end
    object memLookAndFeelBORDER_STYLE: TWideStringField
      FieldName = 'BORDER_STYLE'
      OnChange = memLookAndFeelBORDER_STYLEChange
    end
    object memLookAndFeelBUTTON_STYLE: TWideStringField
      FieldName = 'BUTTON_STYLE'
      OnChange = memLookAndFeelBUTTON_STYLEChange
    end
    object memLookAndFeelBUTTON_TRANSPARENCE: TWideStringField
      FieldName = 'BUTTON_TRANSPARENCE'
      OnChange = memLookAndFeelBUTTON_TRANSPARENCEChange
    end
    object memLookAndFeelHOT_TRACT: TIntegerField
      FieldName = 'HOT_TRACT'
      OnChange = memLookAndFeelHOT_TRACTChange
    end
    object memLookAndFeelSHADOW: TIntegerField
      FieldName = 'SHADOW'
      OnChange = memLookAndFeelSHADOWChange
    end
  end
  object dsLAFList: TDataSource
    DataSet = qryLAFList
    Left = 100
    Top = 64
  end
  object qryLAFList: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP-HRM2.1\DatHoa\Databases\Ssp_hrm_db_dathoa.gdb'
    EditSQL.Strings = (
      'UPDATE CFG_LOOKANDFEEL SET'
      '   LF_ID = :LF_ID, /*PK*/'
      '   LF_TITLE = :LF_TITLE,'
      '   LF_TYPE = :LF_TYPE,'
      '   LF_SYSTEM = :LF_SYSTEM'
      'WHERE'
      '   LF_ID = :OLD_LF_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO CFG_LOOKANDFEEL('
      '   LF_ID, /*PK*/'
      '   LF_TITLE,'
      '   LF_TYPE,'
      '   LF_SYSTEM)'
      'VALUES ('
      '   :LF_ID,'
      '   :LF_TITLE,'
      '   :LF_TYPE,'
      '   :LF_SYSTEM)')
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT LF_ID'
      '     , LF_TITLE'
      '     , LF_TYPE'
      '     , LF_SYSTEM'
      'FROM CFG_LOOKANDFEEL')
    FieldOptions = []
    Left = 100
    Top = 32
    object qryLAFListLF_ID: TWideStringField
      FieldName = 'LF_ID'
      Required = True
      Size = 30
    end
    object qryLAFListLF_TITLE: TWideStringField
      FieldName = 'LF_TITLE'
      Required = True
      Size = 126
    end
    object qryLAFListLF_TYPE: TWideStringField
      FieldName = 'LF_TYPE'
      Size = 30
    end
    object qryLAFListLF_SYSTEM: TSmallintField
      FieldName = 'LF_SYSTEM'
    end
  end
  object qryLookAndFeel: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'LF_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP-HRM2.1\DatHoa\Databases\Ssp_hrm_db_dathoa.gdb'
    EditSQL.Strings = (
      'UPDATE CFG_LF_DETAIL SET'
      '   LF_ID = :LF_ID, /*PK*/'
      '   PROP_ID = :PROP_ID, /*PK*/'
      '   PROP_VAL = :PROP_VAL'
      'WHERE'
      '   LF_ID = :OLD_LF_ID AND'
      '   PROP_ID = :OLD_PROP_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO CFG_LF_DETAIL('
      '   LF_ID, /*PK*/'
      '   PROP_ID, /*PK*/'
      '   PROP_VAL)'
      'VALUES ('
      '   :LF_ID,'
      '   :PROP_ID,'
      '   :PROP_VAL)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryLookAndFeelNewRecord
    DataSource = dsLAFList
    SQL.Strings = (
      'SELECT LF_ID'
      '     , PROP_ID'
      '     , PROP_VAL'
      'FROM CFG_LF_DETAIL'
      'where LF_ID=:LF_ID')
    FieldOptions = []
    Left = 100
    Top = 64
    object qryLookAndFeelLF_ID: TWideStringField
      FieldName = 'LF_ID'
      Required = True
      Size = 30
    end
    object qryLookAndFeelPROP_ID: TWideStringField
      FieldName = 'PROP_ID'
      Required = True
      Size = 30
    end
    object qryLookAndFeelPROP_VAL: TWideStringField
      FieldName = 'PROP_VAL'
      Size = 30
    end
  end
  object dlgColor: TColorDialog
    Left = 8
    Top = 115
  end
  object dxStyleController: TdxCheckEditStyleController
    Tag = -1
    BorderColor = clGray
    BorderStyle = xbs3D
    ButtonStyle = btsHotFlat
    ButtonTransparence = ebtAlways
    Left = 128
    Top = 8
  end
  object qryDataGrid: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP-HRM2.1\DatHoa\Databases\Ssp_hrm_db_dathoa.gdb'
    EditSQL.Strings = (
      'UPDATE CFG_INTERFACE SET'
      '   CONTROL_TYPE = :CONTROL_TYPE, /*PK*/'
      '   PROP_ID = :PROP_ID, /*PK*/'
      '   PROP_VAL = :PROP_VAL'
      'WHERE'
      '   CONTROL_TYPE = :OLD_CONTROL_TYPE AND'
      '   PROP_ID = :OLD_PROP_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO CFG_INTERFACE('
      '   CONTROL_TYPE, /*PK*/'
      '   PROP_ID, /*PK*/'
      '   PROP_VAL)'
      'VALUES ('
      '   :CONTROL_TYPE,'
      '   :PROP_ID,'
      '   :PROP_VAL)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDataGridNewRecord
    SQL.Strings = (
      'SELECT CONTROL_TYPE'
      '     , PROP_ID'
      '     , PROP_VAL'
      'FROM CFG_INTERFACE'
      'WHERE CONTROL_TYPE='#39'DATA_GRID'#39)
    FieldOptions = []
    Left = 100
    Top = 104
    object qryDataGridCONTROL_TYPE: TWideStringField
      FieldName = 'CONTROL_TYPE'
      Required = True
      Size = 30
    end
    object qryDataGridPROP_ID: TWideStringField
      FieldName = 'PROP_ID'
      Required = True
      Size = 30
    end
    object qryDataGridPROP_VAL: TWideStringField
      FieldName = 'PROP_VAL'
      Size = 30
    end
  end
  object memDataGrid: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 128
    Top = 104
    object memDataGridARROW_COLOR: TIntegerField
      FieldName = 'ARROW_COLOR'
      OnChange = memDataGridARROW_COLORChange
    end
    object memDataGridAUTO_SEARCH_COLOR: TIntegerField
      FieldName = 'AUTO_SEARCH_COLOR'
      OnChange = memDataGridAUTO_SEARCH_COLORChange
    end
    object memDataGridAUTO_SEARCH_TEXT_COLOR: TIntegerField
      FieldName = 'AUTO_SEARCH_TEXT_COLOR'
      OnChange = memDataGridAUTO_SEARCH_TEXT_COLORChange
    end
    object memDataGridBAND_COLOR: TIntegerField
      FieldName = 'BAND_COLOR'
      OnChange = memDataGridBAND_COLORChange
    end
    object memDataGridBAND_FONT_COLOR: TIntegerField
      FieldName = 'BAND_FONT_COLOR'
      OnChange = memDataGridBAND_FONT_COLORChange
    end
    object memDataGridBAND_FONT_SIZE: TIntegerField
      FieldName = 'BAND_FONT_SIZE'
      OnChange = memDataGridBAND_FONT_SIZEChange
    end
    object memDataGridBAND_FONT_STYLE_BOLD: TIntegerField
      FieldName = 'BAND_FONT_STYLE_BOLD'
      OnChange = memDataGridBAND_FONT_STYLE_BOLDChange
    end
    object memDataGridBAND_FONT_STYLE_ITALIC: TIntegerField
      FieldName = 'BAND_FONT_STYLE_ITALIC'
      OnChange = memDataGridBAND_FONT_STYLE_ITALICChange
    end
    object memDataGridBORDER_STYLE: TWideStringField
      FieldName = 'BORDER_STYLE'
      OnChange = memDataGridBORDER_STYLEChange
    end
    object memDataGridCOLOR: TIntegerField
      FieldName = 'COLOR'
      OnChange = memDataGridCOLORChange
    end
    object memDataGridFIXED_BAND_LINE_COLOR: TIntegerField
      FieldName = 'FIXED_BAND_LINE_COLOR'
      OnChange = memDataGridFIXED_BAND_LINE_COLORChange
    end
    object memDataGridFIXED_BAND_LINE_WIDTH: TIntegerField
      FieldName = 'FIXED_BAND_LINE_WIDTH'
      OnChange = memDataGridFIXED_BAND_LINE_WIDTHChange
    end
    object memDataGridFONT_COLOR: TIntegerField
      FieldName = 'FONT_COLOR'
      OnChange = memDataGridFONT_COLORChange
    end
    object memDataGridFONT_SIZE: TIntegerField
      FieldName = 'FONT_SIZE'
      OnChange = memDataGridFONT_SIZEChange
    end
    object memDataGridFONT_STYLE_BOLD: TIntegerField
      FieldName = 'FONT_STYLE_BOLD'
      OnChange = memDataGridFONT_STYLE_BOLDChange
    end
    object memDataGridFONT_STYLE_ITALIC: TIntegerField
      FieldName = 'FONT_STYLE_ITALIC'
      OnChange = memDataGridFONT_STYLE_ITALICChange
    end
    object memDataGridGRID_LINE_COLOR: TIntegerField
      FieldName = 'GRID_LINE_COLOR'
      OnChange = memDataGridGRID_LINE_COLORChange
    end
    object memDataGridGRID_INDICATOR_WIDTH: TIntegerField
      FieldName = 'GRID_INDICATOR_WIDTH'
      OnChange = memDataGridGRID_INDICATOR_WIDTHChange
    end
    object memDataGridGROUP_NODE_COLOR: TIntegerField
      FieldName = 'GROUP_NODE_COLOR'
      OnChange = memDataGridGROUP_NODE_COLORChange
    end
    object memDataGridGROUP_PANEL_COLOR: TIntegerField
      FieldName = 'GROUP_PANEL_COLOR'
      OnChange = memDataGridGROUP_PANEL_COLORChange
    end
    object memDataGridHEADER_COLOR: TIntegerField
      FieldName = 'HEADER_COLOR'
      OnChange = memDataGridHEADER_COLORChange
    end
    object memDataGridHEADER_FONT_COLOR: TIntegerField
      FieldName = 'HEADER_FONT_COLOR'
      OnChange = memDataGridHEADER_FONT_COLORChange
    end
    object memDataGridHEADER_FONT_SIZE: TIntegerField
      FieldName = 'HEADER_FONT_SIZE'
      OnChange = memDataGridHEADER_FONT_SIZEChange
    end
    object memDataGridHEADER_FONT_STYLE_BOLD: TIntegerField
      FieldName = 'HEADER_FONT_STYLE_BOLD'
      OnChange = memDataGridHEADER_FONT_STYLE_BOLDChange
    end
    object memDataGridHEADER_FONT_STYLE_ITALIC: TIntegerField
      FieldName = 'HEADER_FONT_STYLE_ITALIC'
      OnChange = memDataGridHEADER_FONT_STYLE_ITALICChange
    end
    object memDataGridLOOK_AND_FEEL: TWideStringField
      FieldName = 'LOOK_AND_FEEL'
      OnChange = memDataGridLOOK_AND_FEELChange
    end
    object memDataGridOPTION_BEHAVIOR_AUTO_SEARCH: TIntegerField
      FieldName = 'OPTION_BEHAVIOR_AUTO_SEARCH'
      OnChange = memDataGridOPTION_BEHAVIOR_AUTO_SEARCHChange
    end
    object memDataGridOPTION_BEHAVIOR_ENTER_THROUGH: TIntegerField
      FieldName = 'OPTION_BEHAVIOR_ENTER_THROUGH'
      OnChange = memDataGridOPTION_BEHAVIOR_ENTER_THROUGHChange
    end
    object memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITOR: TIntegerField
      FieldName = 'OPTION_BEHAVIOR_IMMEDIATE_EDITOR'
      OnChange = memDataGridOPTION_BEHAVIOR_IMMEDIATE_EDITORChange
    end
    object memDataGridOPTION_BEHAVIOR_TAB_THROUGH: TIntegerField
      FieldName = 'OPTION_BEHAVIOR_TAB_THROUGH'
      OnChange = memDataGridOPTION_BEHAVIOR_TAB_THROUGHChange
    end
    object memDataGridOPTION_DB_LOAD_ALL_RECORD: TIntegerField
      FieldName = 'OPTION_DB_LOAD_ALL_RECORD'
      OnChange = memDataGridOPTION_DB_LOAD_ALL_RECORDChange
    end
    object memDataGridOPTION_DB_PARTIAL_LOAD: TIntegerField
      FieldName = 'OPTION_DB_PARTIAL_LOAD'
      OnChange = memDataGridOPTION_DB_PARTIAL_LOADChange
    end
    object memDataGridOPTION_DB_SMART_REFRESH: TIntegerField
      FieldName = 'OPTION_DB_SMART_REFRESH'
      OnChange = memDataGridOPTION_DB_SMART_REFRESHChange
    end
    object memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT: TIntegerField
      FieldName = 'OPTION_VIEW_AUTO_HEADER_PANEL_HEIGHT'
      OnChange = memDataGridOPTION_VIEW_AUTO_HEADER_PANEL_HEIGHTChange
    end
    object memDataGridOPTION_VIEW_AUTO_WIDTH: TIntegerField
      FieldName = 'OPTION_VIEW_AUTO_WIDTH'
      OnChange = memDataGridOPTION_VIEW_AUTO_WIDTHChange
    end
    object memDataGridOPTION_VIEW_INDICATOR: TIntegerField
      FieldName = 'OPTION_VIEW_INDICATOR'
      OnChange = memDataGridOPTION_VIEW_INDICATORChange
    end
    object memDataGridOPTION_VIEW_ROW_AUTO_HEIGHT: TIntegerField
      FieldName = 'OPTION_VIEW_ROW_AUTO_HEIGHT'
      OnChange = memDataGridOPTION_VIEW_ROW_AUTO_HEIGHTChange
    end
    object memDataGridSHOW_GRID: TIntegerField
      FieldName = 'SHOW_GRID'
      OnChange = memDataGridSHOW_GRIDChange
    end
    object memDataGridSHOW_HEADER: TIntegerField
      FieldName = 'SHOW_HEADER'
      OnChange = memDataGridSHOW_HEADERChange
    end
    object memDataGridSHOW_NEW_ITEM_ROW: TIntegerField
      FieldName = 'SHOW_NEW_ITEM_ROW'
      OnChange = memDataGridSHOW_NEW_ITEM_ROWChange
    end
    object memDataGridSHOW_ROW_FOOTER: TIntegerField
      FieldName = 'SHOW_ROW_FOOTER'
      OnChange = memDataGridSHOW_ROW_FOOTERChange
    end
    object memDataGridSHOW_SUMMARY_FOOTER: TIntegerField
      FieldName = 'SHOW_SUMMARY_FOOTER'
      OnChange = memDataGridSHOW_SUMMARY_FOOTERChange
    end
    object memDataGridSHOW_BAND: TIntegerField
      FieldName = 'SHOW_BAND'
      OnChange = memDataGridSHOW_BANDChange
    end
    object memDataGridSHOW_GROUP_PANEL: TIntegerField
      FieldName = 'SHOW_GROUP_PANEL'
      OnChange = memDataGridSHOW_GROUP_PANELChange
    end
    object memDataGridSTORE_INI_FILE: TIntegerField
      FieldName = 'STORE_INI_FILE'
      OnChange = memDataGridSTORE_INI_FILEChange
    end
    object memDataGridHIGH_LIGHT_COLOR: TIntegerField
      FieldName = 'HIGH_LIGHT_COLOR'
      OnChange = memDataGridHIGH_LIGHT_COLORChange
    end
    object memDataGridHIGH_LIGHT_TEXT_COLOR: TIntegerField
      FieldName = 'HIGH_LIGHT_TEXT_COLOR'
      OnChange = memDataGridHIGH_LIGHT_TEXT_COLORChange
    end
    object memDataGridGROUP_PANEL_FONT_COLOR: TIntegerField
      FieldName = 'GROUP_PANEL_FONT_COLOR'
      OnChange = memDataGridGROUP_PANEL_FONT_COLORChange
    end
  end
  object dsDataGrid: TDataSource
    DataSet = memDataGrid
    Left = 128
    Top = 132
  end
  object dsTestData: TDataSource
    DataSet = memTestData
    Left = 502
    Top = 133
  end
  object memTestData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 494
    Top = 93
    object memTestDataID_DATA: TIntegerField
      FieldName = 'ID_DATA'
    end
    object memTestDataP_ID_DATA: TIntegerField
      FieldName = 'P_ID_DATA'
    end
    object memTestDataDATA: TWideStringField
      FieldName = 'DATA'
    end
  end
  object qryUIControl: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP-HRM2.1\DatHoa\Databases\Ssp_hrm_db_dathoa.gdb'
    EditSQL.Strings = (
      'UPDATE CFG_INTERFACE SET'
      '   CONTROL_TYPE = :CONTROL_TYPE, /*PK*/'
      '   PROP_ID = :PROP_ID, /*PK*/'
      '   PROP_VAL = :PROP_VAL'
      'WHERE'
      '   CONTROL_TYPE = :OLD_CONTROL_TYPE AND'
      '   PROP_ID = :OLD_PROP_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO CFG_INTERFACE('
      '   CONTROL_TYPE, /*PK*/'
      '   PROP_ID, /*PK*/'
      '   PROP_VAL)'
      'VALUES ('
      '   :CONTROL_TYPE,'
      '   :PROP_ID,'
      '   :PROP_VAL)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryUIControlNewRecord
    SQL.Strings = (
      'SELECT CONTROL_TYPE'
      '     , PROP_ID'
      '     , PROP_VAL'
      'FROM CFG_INTERFACE'
      'WHERE CONTROL_TYPE='#39'UI_CONTROL'#39)
    FieldOptions = []
    Left = 100
    Top = 168
    object qryUIControlCONTROL_TYPE: TWideStringField
      FieldName = 'CONTROL_TYPE'
      Required = True
      Size = 30
    end
    object qryUIControlPROP_ID: TWideStringField
      FieldName = 'PROP_ID'
      Required = True
      Size = 30
    end
    object qryUIControlPROP_VAL: TWideStringField
      FieldName = 'PROP_VAL'
      Size = 30
    end
  end
  object memUIControl: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 128
    Top = 168
    object memUIControlSPLITTER_SHOW_SNAP_BUTTON: TIntegerField
      FieldName = 'SPLITTER_SHOW_SNAP_BUTTON'
      OnChange = memUIControlSPLITTER_SHOW_SNAP_BUTTONChange
    end
    object memUIControlSPLITTER_DEFAULT_SIZE: TIntegerField
      FieldName = 'SPLITTER_DEFAULT_SIZE'
      OnChange = memUIControlSPLITTER_DEFAULT_SIZEChange
    end
    object memUIControlSPLITTER_BEVEL_INNER: TWideStringField
      FieldName = 'SPLITTER_BEVEL_INNER'
      OnChange = memUIControlSPLITTER_BEVEL_INNERChange
    end
    object memUIControlSPLITTER_USE_XP_THEME: TIntegerField
      FieldName = 'SPLITTER_USE_XP_THEME'
      OnChange = memUIControlSPLITTER_USE_XP_THEMEChange
    end
    object memUIControlBUTTON_BEVEL_KIND: TWideStringField
      FieldName = 'BUTTON_BEVEL_KIND'
      OnChange = memUIControlBUTTON_BEVEL_KINDChange
    end
    object memUIControlBUTTON_THIN_FRAME: TIntegerField
      FieldName = 'BUTTON_THIN_FRAME'
      OnChange = memUIControlBUTTON_THIN_FRAMEChange
    end
    object memUIControlBUTTON_MONEY_FLAT: TIntegerField
      FieldName = 'BUTTON_MONEY_FLAT'
      OnChange = memUIControlBUTTON_MONEY_FLATChange
    end
    object memUIControlBUTTON_MONEY_ACTIVE_COLOR: TIntegerField
      FieldName = 'BUTTON_MONEY_ACTIVE_COLOR'
      OnChange = memUIControlBUTTON_MONEY_ACTIVE_COLORChange
    end
    object memUIControlBUTTON_MONEY_INACTIVE_COLOR: TIntegerField
      FieldName = 'BUTTON_MONEY_INACTIVE_COLOR'
      OnChange = memUIControlBUTTON_MONEY_INACTIVE_COLORChange
    end
    object memUIControlBUTTON_MONEY_DOWN_COLOR: TIntegerField
      FieldName = 'BUTTON_MONEY_DOWN_COLOR'
      OnChange = memUIControlBUTTON_MONEY_DOWN_COLORChange
    end
    object memUIControlBUTTON_FLAT: TIntegerField
      FieldName = 'BUTTON_FLAT'
      OnChange = memUIControlBUTTON_FLATChange
    end
    object memUIControlBUTTON_USE_XP_THEME: TIntegerField
      FieldName = 'BUTTON_USE_XP_THEME'
      OnChange = memUIControlBUTTON_USE_XP_THEMEChange
    end
    object memUIControlBUTTON_COLOR: TIntegerField
      FieldName = 'BUTTON_COLOR'
      OnChange = memUIControlBUTTON_COLORChange
    end
    object memUIControlPAGE_ACTIVE_TAB_COLOR: TIntegerField
      FieldName = 'PAGE_ACTIVE_TAB_COLOR'
      OnChange = memUIControlPAGE_ACTIVE_TAB_COLORChange
    end
    object memUIControlPAGE_COLOR: TIntegerField
      FieldName = 'PAGE_COLOR'
      OnChange = memUIControlPAGE_COLORChange
    end
    object memUIControlPAGE_FLAT: TIntegerField
      FieldName = 'PAGE_FLAT'
      OnChange = memUIControlPAGE_FLATChange
    end
    object memUIControlPAGE_FLAT_TAB_BORDER_COLOR: TIntegerField
      FieldName = 'PAGE_FLAT_TAB_BORDER_COLOR'
      OnChange = memUIControlPAGE_FLAT_TAB_BORDER_COLORChange
    end
    object memUIControlPAGE_FONT_COLOR: TIntegerField
      FieldName = 'PAGE_FONT_COLOR'
      OnChange = memUIControlPAGE_FONT_COLORChange
    end
    object memUIControlPAGE_HOT_TRACK_FONT_COLOR: TIntegerField
      FieldName = 'PAGE_HOT_TRACK_FONT_COLOR'
      OnChange = memUIControlPAGE_HOT_TRACK_FONT_COLORChange
    end
    object memUIControlPAGE_FONT_SIZE: TIntegerField
      FieldName = 'PAGE_FONT_SIZE'
      OnChange = memUIControlPAGE_FONT_SIZEChange
    end
    object memUIControlPAGE_FONT_STYLE_BOLD: TIntegerField
      FieldName = 'PAGE_FONT_STYLE_BOLD'
      OnChange = memUIControlPAGE_FONT_STYLE_BOLDChange
    end
    object memUIControlPAGE_FONT_STYLE_ITALIC: TIntegerField
      FieldName = 'PAGE_FONT_STYLE_ITALIC'
      OnChange = memUIControlPAGE_FONT_STYLE_ITALICChange
    end
    object memUIControlPAGE_HOT_TRACK: TIntegerField
      FieldName = 'PAGE_HOT_TRACK'
      OnChange = memUIControlPAGE_HOT_TRACKChange
    end
    object memUIControlPAGE_INACTIVE_TAB_COLOR: TIntegerField
      FieldName = 'PAGE_INACTIVE_TAB_COLOR'
      OnChange = memUIControlPAGE_INACTIVE_TAB_COLORChange
    end
    object memUIControlPAGE_MULTI_LINE: TIntegerField
      FieldName = 'PAGE_MULTI_LINE'
      OnChange = memUIControlPAGE_MULTI_LINEChange
    end
    object memUIControlPAGE_SHOW_BORDER: TIntegerField
      FieldName = 'PAGE_SHOW_BORDER'
      OnChange = memUIControlPAGE_SHOW_BORDERChange
    end
    object memUIControlPAGE_TAB_BK_COLOR: TIntegerField
      FieldName = 'PAGE_TAB_BK_COLOR'
      OnChange = memUIControlPAGE_TAB_BK_COLORChange
    end
    object memUIControlPAGE_TAB_POSITION: TWideStringField
      FieldName = 'PAGE_TAB_POSITION'
      OnChange = memUIControlPAGE_TAB_POSITIONChange
    end
    object memUIControlPAGE_STYLE: TWideStringField
      FieldName = 'PAGE_STYLE'
      OnChange = memUIControlPAGE_STYLEChange
    end
    object memUIControlPAGE_USE_XP_THEME: TIntegerField
      FieldName = 'PAGE_USE_XP_THEME'
      OnChange = memUIControlPAGE_USE_XP_THEMEChange
    end
    object memUIControlPAGE_VERTICAL_SIDE_CAPTION: TIntegerField
      FieldName = 'PAGE_VERTICAL_SIDE_CAPTION'
      OnChange = memUIControlPAGE_VERTICAL_SIDE_CAPTIONChange
    end
    object memUIControlSIDEBAR_BKGROUND_BEGIN_COLOR: TIntegerField
      FieldName = 'SIDEBAR_BKGROUND_BEGIN_COLOR'
      OnChange = memUIControlSIDEBAR_BKGROUND_BEGIN_COLORChange
    end
    object memUIControlSIDEBAR_BKGROUND_END_COLOR: TIntegerField
      FieldName = 'SIDEBAR_BKGROUND_END_COLOR'
      OnChange = memUIControlSIDEBAR_BKGROUND_END_COLORChange
    end
    object memUIControlSIDEBAR_BKGROUND_FILL_STYLE: TWideStringField
      FieldName = 'SIDEBAR_BKGROUND_FILL_STYLE'
      OnChange = memUIControlSIDEBAR_BKGROUND_FILL_STYLEChange
    end
    object memUIControlSIDEBAR_BORDER_STYLE: TWideStringField
      FieldName = 'SIDEBAR_BORDER_STYLE'
      OnChange = memUIControlSIDEBAR_BORDER_STYLEChange
    end
    object memUIControlSIDEBAR_CAN_SELECTED: TIntegerField
      FieldName = 'SIDEBAR_CAN_SELECTED'
      OnChange = memUIControlSIDEBAR_CAN_SELECTEDChange
    end
    object memUIControlSIDEBAR_GROUP_FONT_COLOR: TIntegerField
      FieldName = 'SIDEBAR_GROUP_FONT_COLOR'
      OnChange = memUIControlSIDEBAR_GROUP_FONT_COLORChange
    end
    object memUIControlSIDEBAR_GROUP_FONT_SIZE: TIntegerField
      FieldName = 'SIDEBAR_GROUP_FONT_SIZE'
      OnChange = memUIControlSIDEBAR_GROUP_FONT_SIZEChange
    end
    object memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLD: TIntegerField
      FieldName = 'SIDEBAR_GROUP_FONT_STYLE_BOLD'
      OnChange = memUIControlSIDEBAR_GROUP_FONT_STYLE_BOLDChange
    end
    object memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALIC: TIntegerField
      FieldName = 'SIDEBAR_GROUP_FONT_STYLE_ITALIC'
      OnChange = memUIControlSIDEBAR_GROUP_FONT_STYLE_ITALICChange
    end
    object memUIControlSIDEBAR_ITEM_FONT_COLOR: TIntegerField
      FieldName = 'SIDEBAR_ITEM_FONT_COLOR'
      OnChange = memUIControlSIDEBAR_ITEM_FONT_COLORChange
    end
    object memUIControlSIDEBAR_ITEM_FONT_SIZE: TIntegerField
      FieldName = 'SIDEBAR_ITEM_FONT_SIZE'
      OnChange = memUIControlSIDEBAR_ITEM_FONT_SIZEChange
    end
    object memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLD: TIntegerField
      FieldName = 'SIDEBAR_ITEM_FONT_STYLE_BOLD'
      OnChange = memUIControlSIDEBAR_ITEM_FONT_STYLE_BOLDChange
    end
    object memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALIC: TIntegerField
      FieldName = 'SIDEBAR_ITEM_FONT_STYLE_ITALIC'
      OnChange = memUIControlSIDEBAR_ITEM_FONT_STYLE_ITALICChange
    end
    object memUIControlSIDEBAR_PAINT_STYLE: TWideStringField
      FieldName = 'SIDEBAR_PAINT_STYLE'
      OnChange = memUIControlSIDEBAR_PAINT_STYLEChange
    end
    object memUIControlSIDEBAR_SHOW_GROUP: TIntegerField
      FieldName = 'SIDEBAR_SHOW_GROUP'
      OnChange = memUIControlSIDEBAR_SHOW_GROUPChange
    end
    object memUIControlSIDEBAR_COLOR: TIntegerField
      FieldName = 'SIDEBAR_COLOR'
      OnChange = memUIControlSIDEBAR_COLORChange
    end
    object memUIControlREQUIRED_FIELD_COLOR: TIntegerField
      FieldName = 'REQUIRED_FIELD_COLOR'
    end
    object memUIControlREAD_ONLY_COLOR: TIntegerField
      FieldName = 'READ_ONLY_COLOR'
    end
  end
  object dsUIControl: TDataSource
    DataSet = memUIControl
    Left = 128
    Top = 196
  end
  object qryUpdateData: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'LF_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP-HRM2.1\DatHoa\Databases\Ssp_hrm_db_dathoa.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'update CFG_LOOKANDFEEL'
      'set LF_SYSTEM=1'
      'where LF_ID=:LF_ID')
    FieldOptions = []
    Left = 96
    Top = 240
  end
end
