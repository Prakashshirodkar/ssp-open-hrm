inherited frmLanguage: TfrmLanguage
  Left = 230
  Top = 222
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    object Panel1: TPanel [1]
      Left = 10
      Top = 10
      Width = 185
      Height = 41
      Caption = 'Panel1'
      TabOrder = 4
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = Panel1
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
        Caption = 'Danh m'#7909'c tr'#236'nh '#273#7897' ngo'#7841'i ng'#7919
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
end
