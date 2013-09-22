inherited frmCellDefinition: TfrmCellDefinition
  Left = 331
  Top = 218
  Width = 407
  Height = 309
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 256
    Width = 399
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 399
    Height = 256
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object dxCellType: TdxImageEdit
      Left = 3
      Top = 3
      Width = 102
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxCellTypeChange
      DropDownRows = 33554439
      PopupBorder = pbSingle
    end
    object pageMain: TElPageControl
      Left = 3
      Top = 29
      Width = 289
      Height = 193
      BorderWidth = 0
      DrawFocus = False
      Flat = True
      HotTrack = True
      Multiline = False
      RaggedRight = False
      ScrollOpposite = False
      ShowBorder = False
      Style = etsFlatButtons
      TabIndex = 0
      TabPosition = etpBottom
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clBlue
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      ActivePage = tabGiatri
      FlatTabBorderColor = clBtnShadow
      DraggablePages = False
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabCursor = crDefault
      ParentColor = False
      TabOrder = 7
      object tabGiatri: TElTabSheet
        PageControl = pageMain
        ImageIndex = -1
        TabVisible = True
        Caption = 'V'#259'n b'#7843'n'
        object dxCellText: TdxMemo
          Left = 0
          Top = 0
          Width = 289
          Align = alClient
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnChange = dxCellTextChange
          Height = 172
        end
      end
      object tabBieuthuc: TElTabSheet
        PageControl = pageMain
        ImageIndex = -1
        TabVisible = True
        Caption = 'Bi'#7875'u th'#7913'c'
        Visible = False
        object dxlcFunction: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 172
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          object CopyMemo: TdxMemo
            Left = 256
            Top = 224
            Width = 1
            Style.BorderStyle = xbsFlat
            TabOrder = 21
            Visible = False
            Height = 9
          end
          object ElPopupButton4: TElPopupButton
            Left = 3
            Top = 76
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '7'
            TabOrder = 1
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton5: TElPopupButton
            Left = 74
            Top = 76
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '8'
            TabOrder = 5
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton6: TElPopupButton
            Left = 145
            Top = 76
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '9'
            TabOrder = 9
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton7: TElPopupButton
            Left = 216
            Top = 76
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '/'
            TabOrder = 13
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton8: TElPopupButton
            Left = 3
            Top = 101
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '4'
            TabOrder = 2
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton9: TElPopupButton
            Left = 74
            Top = 101
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '5'
            TabOrder = 6
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton10: TElPopupButton
            Left = 145
            Top = 101
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '6'
            TabOrder = 10
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton11: TElPopupButton
            Left = 216
            Top = 101
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '*'
            TabOrder = 14
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton13: TElPopupButton
            Left = 74
            Top = 126
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '2'
            TabOrder = 7
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton14: TElPopupButton
            Left = 145
            Top = 126
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '3'
            TabOrder = 11
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton15: TElPopupButton
            Left = 3
            Top = 126
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '1'
            TabOrder = 3
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton16: TElPopupButton
            Left = 216
            Top = 126
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '-'
            TabOrder = 15
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton17: TElPopupButton
            Left = 3
            Top = 151
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '0'
            TabOrder = 4
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton18: TElPopupButton
            Left = 74
            Top = 151
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '.'
            TabOrder = 8
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton19: TElPopupButton
            Left = 287
            Top = 76
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '('
            TabOrder = 17
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton20: TElPopupButton
            Left = 145
            Top = 151
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '+'
            TabOrder = 12
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton22: TElPopupButton
            Left = 287
            Top = 101
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = ')'
            TabOrder = 18
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton23: TElPopupButton
            Left = 216
            Top = 151
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = 'C'
            TabOrder = 16
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton23Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton24: TElPopupButton
            Left = 287
            Top = 151
            Width = 80
            Height = 25
            Cursor = crDefault
            Hint = 'X'#243'a k'#253' t'#7921' k'#7871' tr'#432#7899'c'
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '<- Backspace'
            TabOrder = 20
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton24Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object ElPopupButton25: TElPopupButton
            Left = 287
            Top = 126
            Width = 80
            Height = 25
            Cursor = crDefault
            DrawDefaultFrame = False
            LinkColor = clBlue
            LinkStyle = [fsUnderline]
            NumGlyphs = 1
            ThinFrame = True
            UseXPThemes = True
            Caption = '^'
            TabOrder = 19
            Color = clBtnFace
            ParentColor = False
            OnClick = ElPopupButton4Click
            DockOrientation = doNoOrient
            DoubleBuffered = False
          end
          object dxCellFormular: TdxMemo
            Left = 3
            Top = 3
            Width = 185
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 0
            StyleController = dmMain.StyleController
            OnChange = dxCellFormularChange
            Height = 89
          end
          object dxLayoutGroup2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxlcFunctionItem1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'dxMemo1'
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Layout = clTop
              ShowCaption = False
              Control = dxCellFormular
              ControlOptions.ShowBorder = False
            end
            object dxlcFunctionGroup5: TdxLayoutGroup
              Caption = 'B'#224'n t'#237'nh'
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              object dxlcFunctionGroup4: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionItem8: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton4
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem12: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton8
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem19: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton15
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem29: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton17
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcFunctionGroup7: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionItem9: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton5
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem13: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton9
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem17: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton13
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem30: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton18
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcFunctionGroup8: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionItem10: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton6
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem14: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton10
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem18: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton14
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object dxlcFunctionItem34: TdxLayoutItem
                  CaptionOptions.AlignVert = tavTop
                  CaptionOptions.Layout = clTop
                  ShowCaption = False
                  Control = ElPopupButton20
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlcFunctionGroup14: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                UseIndent = False
                object dxlcFunctionGroup2: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  UseIndent = False
                  object dxlcFunctionItem11: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton7
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem15: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton11
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem20: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton16
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem38: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton23
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxlcFunctionGroup3: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  UseIndent = False
                  object dxlcFunctionItem33: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton19
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem37: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton22
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem40: TdxLayoutItem
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton25
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcFunctionItem39: TdxLayoutItem
                    Caption = 'ElPopupButton24'
                    CaptionOptions.AlignVert = tavTop
                    CaptionOptions.Layout = clTop
                    ShowCaption = False
                    Control = ElPopupButton24
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
        end
      end
      object tabSQL: TElTabSheet
        PageControl = pageMain
        ImageIndex = -1
        TabVisible = True
        Caption = 'C'#226'u SQL'
        Visible = False
        object dxCellSQL: TdxMemo
          Left = 0
          Top = 0
          Width = 289
          Align = alClient
          TabOrder = 0
          StyleController = dmMain.StyleController
          OnChange = dxCellSQLChange
          Height = 172
        end
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 123
      Top = 228
      Width = 75
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
      Caption = '&'#272#7891'ng '#253
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 201
      Top = 228
      Width = 75
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
      Caption = '&B'#7887' qua'
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 231
      Top = 3
      Width = 36
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnCloseUp = dxPopupEdit1CloseUp
      OnInitPopup = dxPopupEdit1InitPopup
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          ShowCaption = False
          Control = dxCellType
          ControlOptions.ShowBorder = False
        end
        object dxlcItemFunctionList: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Danh s'#225'ch h'#224'm s'#7889' h'#7895' tr'#7907
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPageControl1'
        ShowCaption = False
        Control = pageMain
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
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
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = #272#7883'nh ngh'#297'a th'#244'ng tin'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 72
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 75
    Top = 77
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 9
      OnExecute = acDongyExecute
      OnUpdate = acDongyUpdate
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acBoquaExecute
      OnUpdate = acBoquaUpdate
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\SSP-HRM 2.01\Databases\SSP_HRM_DB_DEMO.' +
      'GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 155
    Top = 61
  end
end
