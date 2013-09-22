inherited frmInitHolidayOption: TfrmInitHolidayOption
  Tag = -1
  Left = 340
  Top = 356
  BorderStyle = bsToolWindow
  ClientHeight = 200
  ClientWidth = 310
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 181
    Width = 310
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 310
    Height = 181
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object dxspForYear: TdxSpinEdit
      Left = 85
      Top = 29
      Width = 80
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Alignment = taCenter
      StyleController = dmMain.StyleController
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object dxspFromYear: TdxSpinEdit
      Left = 206
      Top = 29
      Width = 80
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
    object chkDeleteOldData: TdxCheckEdit
      Left = 85
      Top = 87
      Width = 23
      Color = clBtnFace
      ParentColor = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object chkJustChooseFixedDate: TdxCheckEdit
      Left = 222
      Top = 87
      Width = 23
      Color = clBtnFace
      ParentColor = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object ElPopupButton1: TElPopupButton
      Left = 143
      Top = 145
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
      Caption = '&Ch'#7885'n'
      TabOrder = 4
      Color = clBtnFace
      ParentColor = False
      Action = acOK
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 221
      Top = 145
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
      TabOrder = 5
      Color = clBtnFace
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
        Caption = 'T'#249'y ch'#7885'n n'#259'm'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'T'#7841'o cho n'#259'm'
          Control = dxspForYear
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 't'#7915' n'#259'm'
          Control = dxspFromYear
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n '
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'X'#243'a d'#7919' li'#7879'u c'#361
          Control = chkDeleteOldData
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ch'#7881' l'#7845'y ng'#224'y l'#7877' c'#7889' '#273#7883'nh'
          Control = chkJustChooseFixedDate
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group5: TdxLayoutGroup
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
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
        Caption = 'T'#249'y ch'#7885'n t'#7841'o nhanh ng'#224'y l'#7877
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 400
    Top = 8
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 152
    Top = 104
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
  object qryInitHoliday: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FROM_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DELETE_OLD_DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHOOSE_FIXED_DATA'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    RecordCountAccurate = True
    OnError = qryInitHolidayError
    SQL.Strings = (
      'execute procedure HR_SP_INIT_HOLIDAY'
      '( :FROM_YEAR,'
      '  :TO_YEAR,'
      '  :DELETE_OLD_DATA,'
      '  :CHOOSE_FIXED_DATA)')
    FieldOptions = []
    Left = 96
    Top = 120
  end
end
