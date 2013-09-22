inherited frmGenerateVacation: TfrmGenerateVacation
  Left = 483
  Top = 319
  BorderStyle = bsToolWindow
  ClientHeight = 178
  ClientWidth = 294
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 173
    Width = 294
    Height = 5
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 294
    Height = 173
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    DesignSize = (
      294
      173)
    object pePhongBan: TdxPopupEdit
      Left = 105
      Top = 28
      Width = 184
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnCloseUp = pePhongBanCloseUp
      OnInitPopup = pePhongBanInitPopup
    end
    object elpbBoQua: TElPopupButton
      Left = 148
      Top = 146
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
      Color = 15466238
      ParentColor = False
      Action = acBoQua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object elpbPhatSinh: TElPopupButton
      Left = 70
      Top = 146
      Width = 78
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
      Caption = 'Ph'#225't sinh'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acDongY
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ceDonViCapDuoi: TdxCheckEdit
      Left = 105
      Top = 51
      Width = 22
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Anchors = []
      Alignment = taRightJustify
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object dateDenNgay: TdxDateEdit
      Left = 105
      Top = 107
      Width = 209
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'L'#7921'a ch'#7885'n d'#7919' li'#7879'u c'#7847'n ph'#225't sinh'
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'Ph'#242'ng ban'
          Control = pePhongBan
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'C'#7843' '#273#417'n v'#7883' c'#7845'p d'#432#7899'i'
          Control = ceDonViCapDuoi
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n k'#7923' ph'#225't sinh'
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = #272#7871'n ng'#224'y'
          Control = dateDenNgay
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = elpbPhatSinh
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = elpbBoQua
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
        Caption = 'Ph'#225't sinh d'#7919' li'#7879'u ph'#233'p th'#226'm ni'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 0
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 32
    Top = 152
    object acDongY: TAction
      Caption = 'acDongY'
      ImageIndex = 9
      OnExecute = acDongYExecute
    end
    object acBoQua: TAction
      Caption = 'acBoQua'
      ImageIndex = 15
      OnExecute = acBoQuaExecute
    end
  end
  object qryGenerateData: TIBOQuery
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
        Name = 'INCLUDE_CHILD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_DATE'
        ParamType = ptUnknown
      end>
    DatabaseName = 'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure hr_sp_init_vacation(:USER_NAME,:DEPT_NO,:INCLU' +
        'DE_CHILD,:TO_DATE)')
    FieldOptions = []
    Top = 152
  end
end
