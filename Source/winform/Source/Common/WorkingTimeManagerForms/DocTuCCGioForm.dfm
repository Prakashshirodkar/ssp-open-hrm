inherited frmDocTuCCGio: TfrmDocTuCCGio
  Left = 412
  Top = 311
  Width = 390
  Height = 190
  BorderIcons = [biSystemMenu]
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 137
    Width = 382
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 382
    Height = 137
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxSelectDept: TdxPopupEdit
      Left = 119
      Top = 28
      Width = 302
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dxSelectDeptChange
      OnCloseUp = dxSelectDeptCloseUp
      OnInitPopup = dxSelectDeptInitPopup
    end
    object dxViewall: TdxCheckEdit
      Left = 119
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      NullStyle = nsUnchecked
      State = cbsChecked
    end
    object dxTuNgay: TdxDateEdit
      Left = 119
      Top = 74
      Width = 90
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object dxDenNgay: TdxDateEdit
      Left = 269
      Top = 74
      Width = 100
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object ElPopupButton1: TElPopupButton
      Left = 102
      Top = 104
      Width = 89
      Height = 25
      Cursor = crDefault
      ImageIndex = 58
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7885'c d'#7919' li'#7879'u'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = acOk
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 191
      Top = 104
      Width = 89
      Height = 25
      Cursor = crDefault
      ImageIndex = 47
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'B'#7887' qua'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n '#273#7885'c d'#7919' li'#7879'u'
        object dxLayoutItem1: TdxLayoutItem
          Caption = '+ '#272#417'n v'#7883' - ph'#242'ng ban'
          Control = dxSelectDept
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = '+ C'#7845'p d'#432#7899'i'
          Control = dxViewall
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = '+ T'#7915' ng'#224'y'
            Control = dxTuNgay
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = '+ '#272#7871'n ng'#224'y'
            Control = dxDenNgay
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'New Item'
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
        Caption = #272#7885'c t'#7915' ch'#7845'm c'#244'ng gi'#7901
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 184
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 16
    Top = 104
    object acOk: TAction
      Caption = 'acOk'
      ImageIndex = 58
      OnExecute = acOkExecute
    end
    object acCancel: TAction
      Caption = 'acCancel'
      ImageIndex = 47
      OnExecute = acCancelExecute
    end
  end
  object qryCCTongGio_Active: TIBOQuery
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
        Name = 'TU_NGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEN_NGAY'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      '127.0.0.1/3052:D:\PHUC\1 PROJECTS\VMAX\SSP-HRM\Database\SSP_HRM_' +
      'DB_VMAX.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      
        'execute procedure hr_insert_cc_tonggio(:USER_NAME, :DEPT_NO, :VI' +
        'EW_ALL, :TU_NGAY,:DEN_NGAY)')
    FieldOptions = []
    Left = 16
    Top = 64
  end
end
