inherited frmWageDataGenerate: TfrmWageDataGenerate
  Left = 366
  Top = 327
  BorderStyle = bsToolWindow
  ClientHeight = 124
  ClientWidth = 371
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 105
    Width = 371
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 371
    Height = 105
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object dxMonth: TdxSpinEdit
      Left = 57
      Top = 28
      Width = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object dxYear: TdxSpinEdit
      Left = 159
      Top = 28
      Width = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object dxPeriod: TdxSpinEdit
      Left = 252
      Top = 28
      Width = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 9.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton1: TElPopupButton
      Left = 107
      Top = 70
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
      Caption = '&Th'#7921'c thi'
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      Align = alBottom
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 188
      Top = 70
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
      TabOrder = 4
      Color = clBtnFace
      ParentColor = False
      Align = alBottom
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'L'#7845'y d'#7919' li'#7879'u t'#7915
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Th'#225'ng'
          Control = dxMonth
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'N'#259'm'
          Control = dxYear
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'K'#7923
          Control = dxPeriod
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
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
        Caption = 'Ph'#225't sinh d'#7919' li'#7879'u t'#237'nh l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Top = 65512
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 40
    Top = 56
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 9
      OnExecute = acDongyExecute
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acBoquaExecute
    end
  end
  object qryExecute: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_PERIOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_PERIOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_TYPE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP-HRM2.1\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'execute procedure HR_WAGE_DATA_COPY'
      '( :USER_NAME,'
      '  :FROM_MONTH ,'
      '  :FROM_YEAR ,'
      '  :FROM_PERIOD ,'
      '  :TO_MONTH ,'
      '  :TO_YEAR ,'
      '  :TO_PERIOD , '
      '  :DATA_TYPE '
      ')')
    FieldOptions = []
    Left = 16
    Top = 56
  end
end
