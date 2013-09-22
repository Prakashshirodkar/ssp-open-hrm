inherited frmWarningWorkTime: TfrmWarningWorkTime
  Left = 261
  Top = 314
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 191
  ClientWidth = 315
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 172
    Width = 315
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 315
    Height = 172
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleMacDinh
    object ElLabel1: TElLabel
      Left = 114
      Top = 29
      Width = 55
      Height = 13
      Caption = 'Nh'#226'n vi'#234'n :'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object labelFULL_NAME: TElLabel
      Left = 172
      Top = 29
      Width = 28
      Height = 13
      Caption = 'A B C'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object labelTITLE_NAME: TElLabel
      Left = 175
      Top = 45
      Width = 14
      Height = 13
      Caption = 'TP'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object labelDEPT_NAME: TElLabel
      Left = 186
      Top = 61
      Width = 20
      Height = 13
      Caption = 'PLT'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ElLabel3: TElLabel
      Left = 87
      Top = 61
      Width = 96
      Height = 13
      Caption = #272#417'n v'#7883' - ph'#242'ng ban:'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object ElLabel4: TElLabel
      Left = 125
      Top = 45
      Width = 47
      Height = 13
      Caption = 'Ch'#7913'c v'#7909': '
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object labelFIELD_NAME: TElLabel
      Left = 14
      Top = 114
      Width = 267
      Height = 13
      Alignment = taCenter
      Caption = 'D'#7919' li'#7879'u ch'#7845'm c'#244'ng c'#7911'a nh'#226'n vi'#234'n n'#224'y thi'#7871'u m'#7909'c'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Bevel1: TBevel
      Left = 14
      Top = 93
      Width = 395
      Height = 2
      Shape = bsFrame
    end
    object ElLabel6: TElLabel
      Left = 0
      Top = 0
      Width = 3
      Height = 13
      Caption = ' '
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 14
      Top = 130
      Width = 393
      Height = 2
      Shape = bsFrame
    end
    object labelWORK_DATE: TElLabel
      Left = 173
      Top = 77
      Width = 54
      Height = 13
      Caption = '1/1/2005'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ElLabel10: TElLabel
      Left = 87
      Top = 77
      Width = 83
      Height = 13
      Caption = 'Ng'#224'y ch'#7845'm c'#244'ng:'
      Color = clCream
      ParentColor = False
    end
    object ElLabel2: TElLabel
      Left = 14
      Top = 98
      Width = 267
      Height = 13
      Alignment = taCenter
      Caption = 'D'#7919' li'#7879'u ch'#7845'm c'#244'ng c'#7911'a nh'#226'n vi'#234'n n'#224'y thi'#7871'u m'#7909'c'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object ElPopupButton1: TElPopupButton
      Left = 115
      Top = 144
      Width = 85
      Height = 25
      Cursor = crDefault
      ImageIndex = 44
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 0
      Color = clCream
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'D'#7919' li'#7879'u ch'#7845'm c'#244'ng ch'#432'a '#273#7847'y '#273#7911
        object dxLayoutControl1Group5: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group1: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahCenter
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = [aaVertical]
              ShowCaption = False
              Control = ElLabel1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              ShowCaption = False
              Control = labelFULL_NAME
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group9: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahCenter
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              ShowCaption = False
              Control = ElLabel4
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              ShowCaption = False
              Control = labelTITLE_NAME
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group6: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahCenter
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group11: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item6: TdxLayoutItem
                ShowCaption = False
                Control = ElLabel3
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                ShowCaption = False
                Control = labelDEPT_NAME
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group10: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahCenter
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item17: TdxLayoutItem
                ShowCaption = False
                Control = ElLabel10
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item16: TdxLayoutItem
                ShowCaption = False
                Control = labelWORK_DATE
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Control = Bevel1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'ElLabel2'
            ShowCaption = False
            Control = ElLabel2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            ShowCaption = False
            Control = labelFIELD_NAME
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item15: TdxLayoutItem
            Control = Bevel2
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Item13: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        Caption = 'ElPopupButton1'
        ShowCaption = False
        Control = ElPopupButton1
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
        Caption = 'C'#7843'nh b'#225'o '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 346
    Top = 3
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 40
    Top = 56
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 44
      OnExecute = acDongyExecute
    end
  end
end
