object frmHintBox: TfrmHintBox
  Left = 368
  Top = 285
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderStyle = bsNone
  Caption = 'Hint'
  ClientHeight = 89
  ClientWidth = 147
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClick = FormDeactivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Image: TImage
    Left = 8
    Top = 26
    Width = 17
    Height = 17
    Picture.Data = {
      055449636F6E0000010001001010000001002000680400001600000028000000
      1000000020000000010020000000000040040000000000000000000000000000
      00000000000000000000000B00000017000000220000001D000000220B000043
      1B04015A1C05015A0E000048000000250000001A00000020000000170000000B
      000000000000000000000009000000110000000E2B0400667A230AD1B03B14F2
      C83E13FACA3B14FAB93615F48A220EDA390A027B010000110000000C00000009
      000000000000000000000000310100038E1B0593D3511BF8ED6425FFE8561DFF
      D65127FFD54B27FFE03D16FFE9411FFFE03C1CFD9F200AAD4908000F00000000
      000000000000000000000000AA1F059CE46621FFE87028FFE15D1BFFCA6640FF
      AF9A98FFB07F74FFC3583DFFD1310DFFD4361BFFE73D20FFC8270CB800000000
      0000000000000000A214025CD96720FDEB7928FFE26B24FFE25E16FFC67B5CFF
      BAC1C6FFC35D3DFFBB8D81FFCB5132FFD13614FFD2351BFFDD3D1EFFA71C0582
      0000000093030009B94312C8F2942FFFE77627FFE56C24FFE6651AFFD26736FF
      C3CDD2FFCA7F65FFCC5E38FFC0887CFFD23D15FFD03918FFDA3C1DFFC73113E0
      95110022990E0148D77524F0F69E31FFEB872AFFE77426FFE4641AFFDC5814FF
      CFB8B1FFCEBAB7FFD44812FFD15227FFD4481DFFD3411BFFD33C1BFFD43E1BFA
      A51C0472A4240775E5902DFAF7A132FFF0932EFFEA8022FFD28968FFD6652FFF
      D68D6CFFDCE6EDFFD1633AFFDB4A11FFD74C1DFFD5461CFFD4401BFFD4411BFF
      B52A0B9CA82B0B7DEA9D32FCF8A833FFF19B2FFFF08F25FFE1965AFFDAA898FF
      D46530FFEAEEEFFFD8947BFFD8480DFFD84F1DFFD5491CFFD4441BFFD3421BFF
      B42B0CA39E1A0563E49B32F7FDB336FFF4A031FFF19A30FFEE891FFFE29F70FF
      DCA08DFFEFDBD5FFE2A68DFFDB5110FFDB561EFFD74E1CFFD6491CFFD1441AFE
      AB24068D93010023CE7A29E3FFC43EFFF7A732FFF4A131FFF39B2DFFEE8B25FF
      E3955BFFDB9274FFDF722AFFE67222FFE16A25FFDE6021FFE15D22FFC94618F2
      9B13014B00000000A9310F9CF9CA44FFFDB434FFF7A732FFF4A232FFF39726FF
      E3924FFFE6CEC0FFE1A684FFE27222FFE47326FFE26B24FFE46925FFB02C0BBF
      950C0006000000009200001CC66F28E0FFD647FFFCB133FFF8A833FFF49922FF
      E4A677FFFDFFFFFFEFE2E6FFE0762BFFE97C26FFEA7A29FFC74915F198100038
      0000000000000000000000009707023ECB7A2CE6FFD347FFFFBF3AFFFCAC32FF
      F09A33FFE8AF82FFE7A169FFF08E29FFF08C2DFFCB5319F19B12025F00000000
      000000000000000000000000000000009401002DB5491ABBE19E35F4F5B73CFF
      FAB437FFF4A025FFEF9625FFDE7D26F8B73E10CC9A1201450000000000000000
      000000000000000000000000000000000000000000000000980C0248A62A0D96
      B74915B1B94915B3A92C0A9E9C150357970C0006000000000000000000000000
      000000008001000080010000C0030000C0030000800100000000000000000000
      000000000000000000000000000000008000000080010000C0030000E0070000
      F80F0000}
    Stretch = True
    Transparent = True
    OnClick = FormDeactivate
  end
  object lbTitle: TElLabel
    Left = 32
    Top = 28
    Width = 25
    Height = 13
    Caption = 'Title'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = FormDeactivate
  end
  object lbPromt: TElLabel
    Left = 32
    Top = 44
    Width = 28
    Height = 13
    Caption = 'Promt'
    OnClick = FormDeactivate
  end
  object ElTimerPool: TElTimerPool
    Items = <
      item
        Enabled = True
        Interval = 10
        OneTime = False
        OnTimer = ElTimerPoolItems0Timer
        Tag = 0
      end
      item
        Enabled = False
        Interval = 10000
        OneTime = True
        OnTimer = ElTimerPoolItems1Timer
        Tag = 0
      end>
    Precise = False
    Left = 88
    Top = 40
  end
  object imglMain: TImageList
    Left = 80
    Top = 8
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00F4F4F400F5F5F500FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF252500B9003D00DC490000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BABABC006F6F8900707089007070890070708900707089007F7F9100FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000CECECE0089766400B47E5100CC8D5B00C88B5A009D7654009D999600F1F1
      F10000000000000000000000000000000000AABCD5000056B000005CB400005B
      B400005AB400005AB4000059B4000058B4000057B4000058B4000057B4000056
      B4000055B4000055B4001F60B400F9F9F9000000000000000000000000000000
      0000B93D0000CECECE00C2C2C200B9003D000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BBBB
      BB003855EE003A62EA003F6AEF004471F3004675F5004472F300406CF1006061
      9400FCFCFC000000000000000000000000000000000000000000F7F7F7008A74
      6000EAA16700EEB18300FAC19700FFCAA300FFC9A200FAC29A00F2B58700C581
      4700C7C7C7000000000000000000000000008EB3DB0000EDFF0000EAFF0000E5
      FF0000DFFF0000D9FF0000D5FF0000C7FA0000C9FF0000C4FF0000BEFF0000B9
      FF0000B4FF0000AEFF000097F500236AB9000000000000000000000000000000
      000000000000B9003D00C0DCC000CECECE00B93D000000000000000000000000
      0000000000000000000000000000000000000000000000000000BBBBBB00334E
      EE003558E7003A60EB003F67F000426DF300436EF400426DF3003F67F0003C64
      F0005D5D9100FCFCFC00000000000000000000000000FCFCFC00996C4400E6A2
      6B00ECAC7800F2B58600F8BF9300FFC89F00FFC9A100FAC29700F5BA8C00EEB0
      7E00EEA26300C4C4C4000000000000000000AAD3EB0000EFFF0000EAFF0000E5
      FF0000DFFF0000DAFF0000B6EB000051AD00004CA90000C6FF0000BFFF0000BA
      FF0000B5FF0000AFFF0000ABFF00085AB2000000000000000000000000000000
      000000000000FF572500CECECE00FFFFFF00CECECE00B9003D00DC004900B93D
      00000000000000000000000000000000000000000000BDBDBD002B42E7002E4C
      E0003356E8002643D3003A60EB003C64EE003D65EF003B65F2002D4EDC00375A
      E8003458E9005C5C9000FDFDFD00000000000000000098897C00DD945600E19C
      6200E8A67000EEAF7D00F3BA8E00F3EBE500F3E8DF00F4B88900F0B38200EBAA
      7600E4A06800DC8C4600F5F5F500000000001258B2001AF4FF0000ECFF0000E7
      FF0000E1FF0000DCFF0000B6EA000052AD00004EAB0000C8FF0000C1FF0000BC
      FF0000B7FF0000B1FF00008BE400BECEE0000000000000000000FF252500B900
      3D00B93D00009E9E9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00B9003D00FF5725000000000000000000E6E6E6002335DF00263FD8002A46
      DE008A8CCB00FFFFFE00203DD100375BE900355CED00ACACD600F7F5F7001F3E
      D6002F4EE1002D4AE10073749A0000000000F8F8F800D9843700D68B4A00DD96
      5900E39F6600E8A77100EEB28300FFFFFF00FEFAF600EEAD7A00EAAA7500E5A3
      6B00E09A5F00DA91530099836E0000000000E9ECEF0099BBDE0000EDFF0000E9
      FF0000E3FF0000DEFF0000D9FF0000C7F60000CEFE0000C9FF0000C3FF0000BE
      FF0000B9FF0000B1FD00115FB5000000000000000000B9003D00B6B6B600C0DC
      C000FFFFFF00FFFFFF00CECECE009662000096620000FFFFFF00CECECE00FFFF
      FF00FFFFFF00FF6B6B00B9003D0000000000D3D3D5001F34D500233AD500253F
      D900FFFFFF00FFFFFF00FFFEFC001835CE00A09FD000FFFFFF00FFFFFF008D9E
      EF002B47DD002841D9003E45A80000000000B1AAA300CD7C3300D2854000D88E
      4E00DD965900E29D6300E7A97500FFFFFF00FDF9F500E6A26A00E4A06700E099
      5E00DA925300D5894700CE7A2F0000000000000000003D72B30049F5FF0000EB
      FF0000E6FF0000E0FF0000BFEE000052AD00004CA90000CCFF0000C5FF0000C0
      FF0000BBFF000077CC00E8E9EA0000000000DC490000B6B6B600C0DCC000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF8F6B00FF8F6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF8E8E00B93D0000D3D3D5001C2FD2002034D200233A
      D500253FD800FFFFFF00FFFFFF00FDFDFD00FFFFFF00FFFFFF008F9EED002743
      DB00273FD900233AD5003C41A60000000000A37A5500C6722800CC7D3500D285
      4100D78C4C00DB925500E09E6600FFFFFF00FDF8F400DF975A00DD955800D98F
      5000D4894600CF803B00D37D2F00FAFAFA0000000000000000005789C70000EC
      FF0000E8FF0000E2FF0000B0E5000053AE00004FAB0000CEFF0000C8FF0000C2
      FF0000B2F9004986CB00000000000000000096000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00B97A000096620000AAAAAA00FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE00FF572500D3D3D5001B2CCF001A2BCD001F33
      D1002238D4002139D600FFFFFF00FFFFFF00FFFFFF00838FE200243DD800243C
      D6002137D4001D31D1003A3EA40000000000A36F3F00C0691A00C6742800CC7B
      3300D0823D00D3884500D9945700FFFFFF00FCF7F200D78B4900D68A4800D285
      4100CE7E3800C8762C00CD762700F5F5F5000000000000000000799FCD007DEC
      F90000EAFF0000E4FF0000B1E5000053AE00004FAB0000D0FF0000CAFF0000C5
      FF000066BD00000000000000000000000000B9003D00D4FFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF8F6B0096620000B97A0000B6B6B600FFFF
      FF00FFFFFF00FFFFFF00C2C2C200B9003D00D3D3D4003C47D4003C49D2002F3F
      D1001F33D1009E9FD900FFFFFF00FFFFFF00FFFFFF00FFFEFD000D20C7002A3D
      D3003B4BD600414FD5003A3EA30000000000A8794E00CB834100C7793200C571
      2400C8752B00CC7C3300D2894700FFFFFF00FCF7F300CE7E3700CD7D3500CA78
      2F00CB7D3700CC844300CD792C00FDFDFD00000000000000000000000000115C
      B20005ECFF0000E6FF0000B3E5000053AE00004FAB0000D2FF0000CCFF0000AF
      F0009AB4D100000000000000000000000000FF572500CECECE00FFFFFF00FFFF
      FF00FFFFFF00F0CAA600FFAB8E00DADADA00FFAB8E0096620000B97A0000FFFF
      FF00FFFFFF00FFFFFF00C0DCC000B93D0000D2D2D3004B54D5004A53D3004B57
      D5009595DE00FFFFFF00FFFFFF00AEB5EE00FFFFFF00FFFFFF00FBFAFC003642
      D0004E5AD7004D58D5003A3DA20000000000B8ABA000CE8A4D00CE8B4E00CE8C
      4F00D08F5300D08D5000D18C4E00DDA77600DCA57300D28E5100D3925800D190
      5500CE8C4E00CE8B4E00CC73220000000000000000000000000000000000C8D3
      E100A4D6EB0000E9FF0000B4E5000053AE00004FAB0000D4FF0000CEFF00005A
      B50000000000000000000000000000000000FF8E8E00C2C2C200D4FFFF00FFFF
      FF00FFFFFF00B97A0000B97A0000FF734800FF8F6B0096620000B97A0000FFFF
      FF00FFFFFF00CECECE00B9003D00FF572500EDEDED005C61DB00575DD300585F
      D500FFFFFF00FFFFFF00B3B8ED005C67DA00616BDB00FFFFFF00FFFFFF00A0A6
      E8005B63D7006A72DA005555AA000000000000000000D17F3300D2965E00D396
      5E00D3965E00D2965E00D59C6800F7F2EF00F5ECE500D2955C00D2965E00D296
      5E00D3965E00D4996300AD845E00000000000000000000000000000000000000
      00002165BB002BF0FF0000E2FD000050AB00005FB50000D5FF000099DD00D3D7
      DB000000000000000000000000000000000000000000B9003D00C0DCC000F0FB
      FF00FFD4D400FFD4E300B97A00009662000096620000B97A0000F0CAA600FFFF
      FF00E6E6E600B93D0000DC0049000000000000000000BFBFCD00777BDE00686D
      D700646AD700BFC1EF006A70DA006C73DA006C73DA006F76DB00AAADEA00696F
      D900868BDF003536B700000000000000000000000000AF8A6800DCAE8200D79F
      6D00D7A16F00D7A16F00DAA87900FFFFFF00FDFAF800D69F6C00D7A16F00D7A1
      6F00D9A57500D27F320000000000000000000000000000000000000000000000
      0000F8F8FA0088ACD70000E6FF0000E4FF0000DEFF0000D3FD001F68BC000000
      0000000000000000000000000000000000000000000000000000B93D0000DC00
      4900C0DCC000DADADA00DADADA00F0CAA600F0CAA600D4F0FF00E6E6E600AAAA
      AA00FF572500B9003D0000000000000000000000000000000000BDBDCC008F91
      E4007C7FDB00787CDB007A7EDB007A7FDC007A7FDC007A7FDC00787CDB00A1A4
      E6003739B7000000000000000000000000000000000000000000C36F2100E8CA
      AE00DDB08600DBAA7D00DCAC7F00DDAF8500DDAF8400DBAB7E00DBAA7E00E4BF
      9D00D7995F00D4CECA0000000000000000000000000000000000000000000000
      0000000000005080BB0059EFFE0000E4FF0000DFFF00007CC800F3F3F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B93D0000DC004900B9003D00B93D0000DC004900B93D0000DC004900B93D
      000000000000000000000000000000000000000000000000000000000000BDBD
      CC00A1A2E800ACADE700ADAEE800ADAFE800ADAFE800ADAFE800BABBEB003839
      B70000000000000000000000000000000000000000000000000000000000B978
      3D00E3B99200F1DFCE00ECD3BC00EACEB400EBCFB600EFD9C500EFDAC700D481
      3400D8D4D0000000000000000000000000000000000000000000000000000000
      000000000000000000003473BD004CF0FF001DD3F500689AD400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBECD004B4BA7004B4BA7004B4BA7004B4CA7004B4BA7005454AB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E3E200B8753800D4843C00DF9D6000DB935100C7712200B99E86000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9FAFB0089AED900A9C5E40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFC3FFFFFF1FFF00FF00F0000F0FF
      E007C0070000F87FC00380030000F80F800180010000C0030001000100018001
      000100018001000000010000C003000000010000C007000000010000E0070000
      00010001E00F000000018001F00F800180038003F01FC003C007C003F81FF00F
      E00FE007FC3FFFFFF01FF01FFC7FFFFF00000000000000000000000000000000
      000000000000}
  end
end
