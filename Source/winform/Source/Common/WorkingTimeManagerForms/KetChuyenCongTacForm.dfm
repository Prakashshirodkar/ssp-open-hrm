inherited frmKetChuyenCongTac: TfrmKetChuyenCongTac
  Left = 481
  Top = 336
  BorderStyle = bsDialog
  ClientHeight = 164
  ClientWidth = 326
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 145
    Width = 326
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 326
    Height = 145
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 174
      Top = 118
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 9
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'ng '#253
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 249
      Top = 118
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 15
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'B'#7887' qua'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxToDate: TdxDateEdit
      Left = 203
      Top = 84
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dxFromDate: TdxDateEdit
      Left = 56
      Top = 84
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dxViewAll: TdxCheckEdit
      Left = 289
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
    end
    object dxOrg: TdxPopupEdit
      Left = 56
      Top = 28
      Width = 192
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxOrgChange
      OnCloseUp = dxOrgCloseUp
      OnInitPopup = dxOrgInitPopup
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = '+ '#272#417'n v'#7883' c'#7847'n x'#7917' l'#253
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = #272#417'n v'#7883
          Control = dxOrg
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'C'#7845'p con'
          Control = dxViewAll
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        Caption = '+ M'#7889'c ng'#224'y x'#7917' l'#253
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'T'#7915' ng'#224'y'
          Control = dxFromDate
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = #273#7871'n ng'#224'y'
          Control = dxToDate
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'New Group'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
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
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'K'#7871't chuy'#7875'n c'#244'ng t'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Left = 24
    Top = 112
  end
  object qryExe: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEPT_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VIEW_ALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FROM_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\PHUC\1 PROJECTS\VMAX\SSP-HRM\Database\SSP_HRM_DB_VMAX.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryExeBeforeOpen
    SQL.Strings = (
      
        'execute procedure hr_vmax_ketchuyen_ct(:USER_NAME, :DEPT_NO, :VI' +
        'EW_ALL, :FROM_DATE, :TO_DATE)')
    FieldOptions = []
    Left = 32
    Top = 48
  end
end
