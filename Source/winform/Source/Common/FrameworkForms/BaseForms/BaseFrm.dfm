object frmBase: TfrmBase
  Left = 315
  Top = 291
  Width = 511
  Height = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object sbMain: TElStatusBar
    Left = 0
    Top = 261
    Width = 503
    Height = 19
    Panels = <
      item
        Alignment = taLeftJustify
        IsHTML = False
      end
      item
        Alignment = taLeftJustify
        Width = 500
        IsHTML = False
      end>
    SimplePanel = False
    SimpleTextIsHTML = False
    ResizablePanels = False
    Bevel = epbNone
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    Visible = False
    DockOrientation = doNoOrient
    DoubleBuffered = False
  end
  object fcMain: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 8
  end
end
