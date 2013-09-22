inherited frmInitHolidayTemplate: TfrmInitHolidayTemplate
  Left = 345
  Top = 326
  BorderStyle = bsToolWindow
  ClientHeight = 155
  ClientWidth = 282
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 150
    Width = 282
    Height = 5
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 282
    Height = 150
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object spInYear: TdxSpinEdit
      Left = 84
      Top = 28
      Width = 80
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object chkDeleteOldData: TdxCheckEdit
      Left = 84
      Top = 51
      Width = 80
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object ElPopupButton1: TElPopupButton
      Left = 108
      Top = 107
      Width = 80
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
      Caption = '&Ch'#7885'n'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acOK
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 188
      Top = 107
      Width = 80
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
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'Ch'#7885'n n'#259'm c'#7847'n ph'#225't sinh'
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'N'#259'm ph'#225't sinh'
          Control = spInYear
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'X'#243'a d'#7919' li'#7879'u c'#361
          Control = chkDeleteOldData
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        LayoutDirection = ldHorizontal
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
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'T'#249'y ch'#7885'n t'#7841'o l'#7883'ch chu'#7849'n '
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 192
    Top = 32
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 192
    Top = 64
    object acOK: TAction
      Caption = 'acOK'
      ImageIndex = 9
      OnExecute = acOKExecute
    end
    object acCancel: TAction
      Caption = 'acCancel'
      ImageIndex = 15
      OnExecute = acCancelExecute
    end
  end
  object qrySetHolidateTemplate: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'CALENDAR_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DELETE_OLD_DATA'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'execute procedure HR_SET_HOLIDAY_TEMPLATE'
      '(:CALENDAR_NO,'
      ' :IN_YEAR,'
      ' :DELETE_OLD_DATA)')
    FieldOptions = []
    Left = 40
    Top = 32
  end
end
