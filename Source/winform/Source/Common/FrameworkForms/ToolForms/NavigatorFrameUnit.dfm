object NavigatorFrame: TNavigatorFrame
  Left = 0
  Top = 0
  Width = 593
  Height = 25
  AutoScroll = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  TabStop = True
  OnResize = FrameResize
  object dxLayoutControl1: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 593
    Height = 25
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dxLayoutStandardLookAndFeel1
    object btnInsert: TElPopupButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      Hint = 'Th'#195#170'm m'#225#187#8250'i d'#225#187#175' li'#225#187#8225'u'
      BackgroundDrawBorder = True
      DrawDefaultFrame = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&Th'#234'm'
      TabOrder = 0
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDelete: TElPopupButton
      Left = 75
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      BackgroundDrawBorder = True
      DrawDefaultFrame = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 1
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPost: TElPopupButton
      Left = 150
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      BackgroundDrawBorder = True
      DrawDefaultFrame = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 2
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnCancel: TElPopupButton
      Left = 225
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      BackgroundDrawBorder = True
      DrawDefaultFrame = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 3
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnHelp: TElPopupButton
      Left = 368
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      Icon.Data = {
        0000010001001010000001000800680500001600000028000000100000002000
        0000010008000000000040010000000000000000000000010000000000000000
        0000FFFFFF00F2E8D600F7F1E300F9F3E500FAF4E600F9F2E300FAF4E800F4EC
        DA00F5EEE100F8F4EB00FDF8EC00FFFCF200F3EAD900F6EEDD00FFF9EC00FEEB
        D200FCE0C000FADBB900FBDEBC00FDE6C800FFF2DD00FFFBF000FEFAEF008585
        8500F9E4CE00ECB69000E39E7400DC996000DEA86E00DA9A5C00E09C6E00E9AE
        8600F5CFAE00FEF9ED0045454500FBEEE000DD906700D4784C00E1B48500FCF9
        F100F2E5CB00D5865200D9855A00E9B39100E3A78800CE6A3E00CB703400F5EA
        D700CD7B3D00DAA76F00E5C19700CD683B00D2754900F3D6C100CF6F4400CA61
        3400CA6D3100E1BB8800D0854900CA603300CA752F00E4C09600CC643700E1A1
        8200CD723E00D7996300D8896500EEDEBC00D7876300D1744B00CA643200E7D7
        A000DEB57B00E1A48700B8B8B800E5AE9300CA683100F8E9DA00FCF2E600D47D
        5700CA71300078787800ABABAB00F4ECDB00EECBB600DE9B7B00F9F3E400C4BE
        B20080808000000080000080000000808000800000008000800080800000C0C0
        C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000090909001212
        12001F1F1F002C2C2C0039393900525252005F5F5F006C6C6C00929292009F9F
        9F00C5C5C500D2D2D200DEDEDE00EBEBEB00F8F8F800F0FBFF00A4A0A000C0DC
        C000F0CAA60000003E0000005D0000007C0000009B000000BA000000D9000000
        F0002424FF004848FF006C6CFF009090FF00B4B4FF0000143E00001E5D000028
        7C0000329B00003CBA000046D9000055F000246DFF004885FF006C9DFF0090B5
        FF00B4CDFF00002A3E00003F5D0000547C0000699B00007EBA000093D90000AA
        F00024B6FF0048C2FF006CCEFF0090DAFF00B4E6FF00003E3E00005D5D00007C
        7C00009B9B0000BABA0000D9D90000F0F00024FFFF0048FFFF006CFFFF0090FF
        FF00B4FFFF00003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0
        AA0024FFB60048FFC2006CFFCE0090FFDA00B4FFE600003E1400005D1E00007C
        2800009B320000BA3C0000D9460000F0550024FF6D0048FF85006CFF9D0090FF
        B500B4FFCD00003E0000005D0000007C0000009B000000BA000000D9000000F0
        000024FF240048FF48006CFF6C0090FF9000B4FFB400143E00001E5D0000287C
        0000329B00003CBA000046D9000055F000006DFF240085FF48009DFF6C00B5FF
        9000CDFFB4002A3E00003F5D0000547C0000699B00007EBA000093D90000AAF0
        0000B6FF2400C2FF4800CEFF6C00DAFF9000E6FFB4003E3E00005D5D00007C7C
        00009B9B0000BABA0000D9D90000F0F00000FFFF2400FFFF4800FFFF6C00FFFF
        9000FFFFB4003E2A00005D3F00007C5400009B690000BA7E0000D9930000F0AA
        0000FFB62400FFC24800FFCE6C00FFDA9000FFE6B4003E1400005D1E00000000
        00000023232323236E00000000000000005853220C0C0C536F6E520000000000
        54220C555645454A24536F52000000542205454739423B47474A0C5252000005
        055047472F01334747474A0C526F540C4C47474739423B47474747246F520A0C
        46474747474849474747474A4B6E050C4747474747440C42474747450C23050C
        4747474747413001424747250C23050C3747393A3B473D013347474A0C6E030C
        2D2E2F0C30313201332E4636586E0022242526270C0101292A2B2C0C6E000054
        0C192C1B1C1D1E1F202122226E000000540C221014131319150C225200000000
        0054220C0C0C0C0C0C05520000000000000030030505050A6F6F00000000F81F
        0000E0070000C003000080010000800000000000000000000000000000000000
        000000000000000000008001000080010000C0030000E0070000F00F0000}
      ThinFrame = True
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 4
      Align = alRight
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnClose: TElPopupButton
      Left = 443
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      BackgroundDrawBorder = True
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 5
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnNoSelect: TElPopupButton
      Left = 518
      Top = 0
      Width = 75
      Height = 25
      Cursor = crDefault
      BackgroundDrawBorder = True
      DrawDefaultFrame = True
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 6
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'btnInsert'
          ShowCaption = False
          Control = btnInsert
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'btnDelete'
          ShowCaption = False
          Control = btnDelete
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'btnPost'
          ShowCaption = False
          Control = btnPost
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'btnCancel'
          ShowCaption = False
          Control = btnCancel
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'btnHelp'
          ShowCaption = False
          Control = btnHelp
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'btnClose'
          ShowCaption = False
          Control = btnClose
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'btnNoSelect'
          ShowCaption = False
          Control = btnNoSelect
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 320
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
end
