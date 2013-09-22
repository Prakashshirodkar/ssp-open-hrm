inherited frmInitHolidayTimeTemplate: TfrmInitHolidayTimeTemplate
  Left = 345
  Top = 326
  BorderStyle = bsToolWindow
  ClientHeight = 205
  ClientWidth = 362
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 200
    Width = 362
    Height = 5
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 362
    Height = 200
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    object spInYear: TdxSpinEdit
      Left = 99
      Top = 29
      Width = 80
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      StyleController = dmMain.StyleController
    end
    object chkDeleteOldData: TdxCheckEdit
      Left = 253
      Top = 29
      Width = 80
      Color = clBtnFace
      ParentColor = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object ElPopupButton1: TElPopupButton
      Left = 185
      Top = 165
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
      TabOrder = 6
      Color = clBtnFace
      ParentColor = False
      Action = acOK
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 268
      Top = 165
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
      TabOrder = 7
      Color = clBtnFace
      ParentColor = False
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object tStartTime: TdxTimeEdit
      Left = 99
      Top = 55
      Width = 80
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      StyleController = dmMain.StyleController
      StoredValues = 4
    end
    object tEndTime: TdxTimeEdit
      Left = 99
      Top = 81
      Width = 80
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 3
      StyleController = dmMain.StyleController
      StoredValues = 4
    end
    object dtEndDate: TdxImageEdit
      Left = 253
      Top = 81
      Width = 80
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 4
      StyleController = dmMain.StyleController
      PopupBorder = pbFrame3D
    end
    object dxPopupEdit1: TdxPopupEdit
      Left = 99
      Top = 107
      Width = 230
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnCloseUp = dxPopupEdit1CloseUp
      OnInitPopup = dxPopupEdit1InitPopup
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n d'#7919' li'#7879'u ph'#225't sinh'
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'N'#259'm ph'#225't sinh'
            Control = spInYear
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'X'#243'a d'#7919' li'#7879'u c'#361
            Control = chkDeleteOldData
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Gi'#7901' v'#224'o m'#7863'c '#273#7883'nh'
            Control = tStartTime
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Gi'#7901' ra m'#7863'c '#273#7883'nh'
                Control = tEndTime
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item7: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Ng'#224'y ra'
                Control = dtEndDate
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Lo'#7841'i gi'#7901' c'#244'ng'
              Control = dxPopupEdit1
              ControlOptions.ShowBorder = False
            end
          end
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
    Top = 48
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 224
    Top = 56
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
  object qrySetHolidateTimeTemplate: TIBOQuery
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
      end
      item
        DataType = ftUnknown
        Name = 'START_TIME_DEFAULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'END_TIME_DEFAULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'END_DATE_DEFAULT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'WORK_HOUR_TYPE'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'execute procedure  HR_SET_HOLIDAY_TIME_TEMPLATE '
      '  (:CALENDAR_NO,'
      '   :IN_YEAR,'
      '   :DELETE_OLD_DATA,'
      '   :START_TIME_DEFAULT,'
      '   :END_TIME_DEFAULT,'
      '   :END_DATE_DEFAULT,'
      '   :WORK_HOUR_TYPE)')
    FieldOptions = []
    Left = 72
    Top = 152
  end
end
