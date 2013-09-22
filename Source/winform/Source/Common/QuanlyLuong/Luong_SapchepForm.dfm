inherited frmLuong_Saochep: TfrmLuong_Saochep
  Left = 427
  Top = 238
  BorderStyle = bsToolWindow
  ClientHeight = 229
  ClientWidth = 417
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 210
    Width = 417
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 417
    Height = 210
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxTuthang: TdxSpinEdit
      Left = 213
      Top = 84
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object dxTunam: TdxSpinEdit
      Left = 315
      Top = 84
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 2000.000000000000000000
      Value = 2000.000000000000000000
      StoredValues = 49
    end
    object dxDenthang: TdxSpinEdit
      Left = 213
      Top = 140
      Width = 80
      Color = clSilver
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      Alignment = taCenter
      ReadOnly = True
      StyleController = dmMain.StyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 113
    end
    object dxDennam: TdxSpinEdit
      Left = 315
      Top = 140
      Width = 80
      Color = clSilver
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      Alignment = taCenter
      ReadOnly = True
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 2000.000000000000000000
      Value = 2000.000000000000000000
      StoredValues = 113
    end
    object dxDonvi: TdxPopupEdit
      Left = 101
      Top = 28
      Width = 319
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnCloseUp = dxDonviCloseUp
      OnInitPopup = dxDonviInitPopup
    end
    object ElPopupButton1: TElPopupButton
      Left = 123
      Top = 183
      Width = 85
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
      Caption = 'Th'#7921'c hi'#7879'n'
      TabOrder = 7
      Color = 15466238
      ParentColor = False
      Action = acThuchien
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 208
      Top = 183
      Width = 85
      Height = 25
      Cursor = crDefault
      ImageIndex = 67
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'ng'
      TabOrder = 8
      Color = 15466238
      ParentColor = False
      Action = acDong
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDenDot: TdxSpinEdit
      Left = 101
      Top = 140
      Width = 80
      Color = clSilver
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      Alignment = taCenter
      ReadOnly = True
      StyleController = dmMain.StyleController
      MaxValue = 10.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 113
    end
    object dxTuDot: TdxSpinEdit
      Left = 101
      Top = 84
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 10.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group3: TdxLayoutGroup
        Caption = 'Ch'#7885'n '#273#417'n v'#7883' t'#237'nh l'#432#417'ng'
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = #272#417'n v'#7883' ph'#242'ng ban'
          Control = dxDonvi
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'T'#7915' b'#7843'ng l'#432#417'ng'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item9: TdxLayoutItem
          Caption = #272#7907't'
          Control = dxTuDot
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Th'#225'ng'
          CaptionOptions.AlignHorz = taCenter
          Control = dxTuthang
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'n'#259'm'
          Control = dxTunam
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = #272#7871'n b'#7843'ng l'#432#417'ng'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = #272#7907't'
          Control = dxDenDot
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Th'#225'ng'
          CaptionOptions.AlignHorz = taCenter
          Control = dxDenthang
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'n'#259'm'
          Control = dxDennam
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
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
        Caption = 'Sao ch'#233'p d'#7919' li'#7879'u b'#7843'ng l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 416
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 48
    Top = 144
    object acThuchien: TAction
      Caption = 'acThuchien'
      ImageIndex = 9
      OnExecute = acThuchienExecute
      OnUpdate = acThuchienUpdate
    end
    object acDong: TAction
      Caption = 'acDong'
      ImageIndex = 67
      OnExecute = acDongExecute
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    RecordCountAccurate = True
    FieldOptions = []
    Left = 320
    Top = 104
  end
end
