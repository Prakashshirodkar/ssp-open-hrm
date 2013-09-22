inherited frmGenerateWorkDateTime: TfrmGenerateWorkDateTime
  Tag = -1
  Top = 221
  BorderStyle = bsToolWindow
  ClientHeight = 245
  ClientWidth = 418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 226
    Width = 418
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 418
    Height = 226
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object chkChamngay: TdxCheckEdit
      Left = 332
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = chkChamngayChange
      StoredValues = 1
    end
    object chkChamgio: TdxCheckEdit
      Left = 96
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = chkChamgioChange
      State = cbsChecked
      StoredValues = 1
    end
    object chkTheongay: TdxCheckEdit
      Left = 74
      Top = 107
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      StyleController = dmMain.StyleController
      OnChange = chkTheongayChange
      State = cbsChecked
    end
    object chkTheothang: TdxCheckEdit
      Left = 74
      Top = 130
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      StyleController = dmMain.StyleController
      OnChange = chkTheothangChange
    end
    object dateTungay: TdxDateEdit
      Left = 148
      Top = 107
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object dateDenngay: TdxDateEdit
      Left = 300
      Top = 107
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 8
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
      Date = -700000.000000000000000000
    end
    object imTuthang: TdxImageEdit
      Left = 148
      Top = 130
      Width = 100
      Enabled = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 11
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object spTunam: TdxSpinEdit
      Left = 300
      Top = 130
      Width = 100
      Enabled = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 13
      StyleController = dmMain.StyleController
    end
    object spDennam: TdxSpinEdit
      Left = 300
      Top = 153
      Width = 100
      Enabled = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 14
      StyleController = dmMain.StyleController
    end
    object imDenthang: TdxImageEdit
      Left = 148
      Top = 153
      Width = 100
      Enabled = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 12
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
      PopupBorder = pbSingle
    end
    object ElPopupButton1: TElPopupButton
      Left = 134
      Top = 199
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
      Caption = 'Ph'#225't sinh'
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 209
      Top = 199
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
      TabOrder = 10
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxppSelectDept: TdxPopupEdit
      Left = 96
      Top = 28
      Width = 312
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxppSelectDeptChange
      OnCloseUp = dxppSelectDeptCloseUp
      OnInitPopup = dxppSelectDeptInitPopup
    end
    object chkIncludeChild: TdxCheckEdit
      Left = 381
      Top = 28
      Width = 23
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
    object chkChamtonggio: TdxCheckEdit
      Left = 205
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      StyleController = dmMain.StyleController
      OnChange = chkChamtonggioChange
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'L'#7921'a ch'#7885'n d'#7919' li'#7879'u c'#7847'n ph'#225't sinh'
        object dxLayoutControl1Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item13: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ph'#242'ng ban'
            CaptionOptions.AlignHorz = taCenter
            Control = dxppSelectDept
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item14: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'C'#7845'p d'#432#7899'i'
            CaptionOptions.AlignHorz = taCenter
            Control = chkIncludeChild
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group11: TdxLayoutGroup
          ShowCaption = False
          Visible = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ch'#7845'm c'#244'ng ng'#224'y'
            CaptionOptions.AlignHorz = taCenter
            Control = chkChamgio
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item15: TdxLayoutItem
            Caption = 'Ch'#7845'm c'#244'ng th'#225'ng'
            CaptionOptions.AlignHorz = taCenter
            Control = chkChamtonggio
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Ch'#7845'm c'#244'ng ng'#224'y (c'#361')'
            CaptionOptions.AlignHorz = taCenter
            Visible = False
            Control = chkChamngay
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group10: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n k'#7923' ph'#225't sinh'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group12: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'Theo ng'#224'y'
            Control = chkTheongay
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'Theo th'#225'ng'
            Control = chkTheothang
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group13: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'T'#7915' ng'#224'y'
            Control = dateTungay
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'T'#7915' th'#225'ng'
            Control = imTuthang
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = #273#7871'n th'#225'ng'
            Control = imDenthang
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group14: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #273#7871'n ng'#224'y'
            Control = dateDenngay
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'n'#259'm'
            Control = spTunam
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'n'#259'm'
            Control = spDennam
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group9: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item11: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item12: TdxLayoutItem
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
        Caption = 'Ph'#225't sinh d'#7919' li'#7879'u ch'#7845'm c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 360
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 72
    Top = 200
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 9
      OnExecute = acDongyExecute
      OnUpdate = acDongyUpdate
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 15
      OnExecute = acBoquaExecute
    end
  end
  object spInitWorkDateTime: TIBOStoredProc
    Params = <
      item
        DataType = ftInteger
        Name = 'FOR_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FOR_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FOLLOW_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FOLLOW_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FROM_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FROM_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TO_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TO_YEAR'
        ParamType = ptInput
      end>
    StoredProcHasDML = True
    StoredProcName = 'HR_SP_INIT_WORK_DATE_TIME'
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    IB_Connection = dmMain.connMain
    Left = 24
    Top = 280
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
        Name = 'FOR_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FOR_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FOR_TOTAL_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FOLLOW_DATE'
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
      end
      item
        DataType = ftUnknown
        Name = 'FOLLOW_MONTH'
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
        Name = 'TO_MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TO_YEAR'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'D:\CONG VIEC\Ph'#242'ng KTCN\SSP-HRM Upgrade\07_Fixloi\SSP_HRM_DB_30.' +
      'GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'EXECUTE PROCEDURE HR_SP_INIT_WORK_DATE_TIME ('
      '    :USER_NAME,'
      '    :DEPT_NO,'
      '    :INCLUDE_CHILD,'
      '    :FOR_DATE,'
      '    :FOR_TIME,'
      '    :FOR_TOTAL_TIME,'
      '    :FOLLOW_DATE,'
      '    :FROM_DATE,'
      '    :TO_DATE,'
      '    :FOLLOW_MONTH,'
      '    :FROM_MONTH,'
      '    :FROM_YEAR,'
      '    :TO_MONTH,'
      '    :TO_YEAR)')
    FieldOptions = []
    Left = 64
    Top = 176
  end
end
