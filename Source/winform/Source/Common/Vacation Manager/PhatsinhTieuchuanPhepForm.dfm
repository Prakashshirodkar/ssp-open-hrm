inherited frmPhatsinhTieuchuanPhep: TfrmPhatsinhTieuchuanPhep
  Left = 523
  Top = 332
  BorderStyle = bsToolWindow
  ClientHeight = 171
  ClientWidth = 373
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 152
    Width = 373
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 373
    Height = 152
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxSelectDept: TdxPopupEdit
      Left = 119
      Top = 28
      Width = 219
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxSelectDeptChange
      OnCloseUp = dxSelectDeptCloseUp
      OnInitPopup = dxSelectDeptInitPopup
    end
    object chkCreateChild: TdxCheckEdit
      Left = 336
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      StyleController = dmMain.StyleController
    end
    object dxInYear: TdxSpinEdit
      Left = 119
      Top = 51
      Width = 75
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object ElPopupButton1: TElPopupButton
      Left = 106
      Top = 125
      Width = 80
      Height = 25
      Cursor = crDefault
      ImageIndex = 62
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ph'#225't sinh'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acPhatsinh
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 186
      Top = 125
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
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxCheckketchuyen: TdxCheckEdit
      Left = 119
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      StyleController = dmMain.StyleController
    end
    object dxCheckApDungMoi: TdxCheckEdit
      Left = 336
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      StyleController = dmMain.StyleController
      State = cbsChecked
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'T'#249'y ch'#7885'n ph'#225't sinh'
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = '+ '#272#417'n v'#7883' - ph'#242'ng ban'
          Control = dxSelectDept
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = '+ Ph'#225't sinh theo n'#259'm'
              Control = dxInYear
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = '+ Ph'#225't sinh cho c'#7845'p d'#432#7899'i'
              Control = chkCreateChild
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = '+ K'#7871't chuy'#7875'n ph'#233'p'
              Control = dxCheckketchuyen
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = '+ Ph'#225't sinh cho nh'#226'n vi'#234'n m'#7899'i'
              Control = dxCheckApDungMoi
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
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
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
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
        Caption = 'Ph'#225't sinh ti'#234'u chu'#7849'n ph'#233'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 168
    Top = 65528
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 208
    object acPhatsinh: TAction
      Caption = 'acPhatsinh'
      ImageIndex = 62
      OnExecute = acPhatsinhExecute
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
        Name = 'AT_YEAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KET_CHUYEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APDUNG_MOI'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        '/*execute procedure hr_phep_phatsinh(:USER_NAME,:DEPT_NO,:VIEW_A' +
        'LL,:AT_YEAR) ;*/'
      
        'execute procedure hr_phep_phatsinh_2(:USER_NAME,:DEPT_NO,:VIEW_A' +
        'LL,:AT_YEAR,:KET_CHUYEN,:APDUNG_MOI) ;')
    FieldOptions = []
    Left = 48
    Top = 88
  end
end
