inherited frmNhapGio: TfrmNhapGio
  Left = 455
  Top = 278
  Width = 267
  Height = 140
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 87
    Width = 259
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 259
    Height = 87
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 40
      Top = 60
      Width = 89
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
      Caption = #272#7891'ng '#253
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 129
      Top = 60
      Width = 89
      Height = 25
      Cursor = crDefault
      ImageIndex = 47
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'B'#7887' qua'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxGiovao: TdxTimeEdit
      Left = 52
      Top = 28
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      StyleController = dmMain.StyleController
      TimeEditFormat = tfHourMin
      StoredValues = 4
    end
    object dxGioRa: TdxTimeEdit
      Left = 162
      Top = 28
      Width = 83
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      TimeEditFormat = tfHourMin
      StoredValues = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Nh'#7853'p gi'#7901
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Gi'#7901' v'#224'o'
          Control = dxGiovao
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Gi'#7901' ra'
          Control = dxGioRa
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'New Item'
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
        Caption = 'Nh'#7853'p nhanh gi'#7901' c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
end
