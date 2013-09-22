object frameDateTime: TframeDateTime
  Left = 0
  Top = 0
  Width = 476
  Height = 29
  TabOrder = 0
  OnConstrainedResize = FrameConstrainedResize
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 476
    Height = 29
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxSelectPeriod: TdxImageEdit
      Left = 73
      Top = 3
      Width = 129
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxSelectPeriodChange
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object dxToDate: TdxDateEdit
      Left = 373
      Top = 3
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dxFromDate: TdxDateEdit
      Left = 244
      Top = 3
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxGroupSelectPeriod: TdxLayoutGroup
        AutoAligns = []
        AlignVert = avCenter
        Caption = '* Ch'#7885'n th'#7901'i gian '#273#7875' xem'
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ch'#7885'n th'#7901'i gian'
          Control = dxSelectPeriod
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'T'#7915' ng'#224'y'
          Control = dxFromDate
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = #272#7871'n ng'#224'y'
          Control = dxToDate
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
