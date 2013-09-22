object frmGetSearchText: TfrmGetSearchText
  Left = 492
  Top = 319
  BorderStyle = bsDialog
  Caption = 'T'#236'm ki?m'
  ClientHeight = 118
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TntLabel1: TElLabel
    Left = 16
    Top = 65
    Width = 91
    Height = 13
    Caption = 'Chu'#7895'i mu'#7889'n t'#236'm:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object TntLabel2: TElLabel
    Left = 16
    Top = 19
    Width = 147
    Height = 13
    Caption = 'T'#236'm ki'#7871'm d'#7919' li'#7879'u tr'#234'n c'#7897't :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object dxEdit1: TdxEdit
    Left = 16
    Top = 80
    Width = 257
    TabOrder = 0
    OnKeyDown = TntEdit1KeyDown
    StyleController = dxEditStyleController1
  end
  object dxPickEdit1: TdxPickEdit
    Left = 16
    Top = 35
    Width = 257
    TabOrder = 1
    StyleController = dxEditStyleController1
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderStyle = xbsFlat
    Left = 136
  end
  object ElFormCaption1: TElFormCaption
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
        Caption = 'T'#236'm ki'#7871'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    UseXPThemes = False
    Left = 168
  end
end
