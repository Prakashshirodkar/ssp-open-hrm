object Lookup: TLookup
  Tag = -1
  Left = 414
  Top = 256
  BorderStyle = bsDialog
  ClientHeight = 104
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 264
    Height = 104
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object edtKeyword: TdxEdit
      Left = 80
      Top = 39
      Width = 184
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      StyleController = dmMain.StyleController
    end
    object dxPickEdit1: TdxPickEdit
      Left = 80
      Top = 10
      Width = 184
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      StyleController = dmMain.StyleController
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
      DropDownListStyle = True
    end
    object ElPopupButton1: TElPopupButton
      Left = 104
      Top = 69
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Default = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&T'#236'm'
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 179
      Top = 69
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      Cancel = True
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&B'#7887' qua'
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton2Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'T'#236'm tr'#234'n c'#7897't'
        Control = dxPickEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'Gi'#225' tr'#7883' c'#7847'n t'#236'm'
        Control = edtKeyword
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Caption = 'T'#236'm ki'#7871'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 152
    Top = 65512
  end
end
