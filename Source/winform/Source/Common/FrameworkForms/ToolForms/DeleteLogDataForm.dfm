inherited frmDeleteLogData: TfrmDeleteLogData
  Left = 383
  Top = 347
  Width = 311
  Height = 162
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 109
    Width = 303
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 303
    Height = 109
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxAtDate: TdxDateEdit
      Left = 56
      Top = 28
      Width = 113
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object ElPopupButton1: TElPopupButton
      Left = 151
      Top = 75
      Width = 90
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
      Caption = '&B'#7887' qua'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      Action = acBoqua
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 61
      Top = 75
      Width = 90
      Height = 25
      Cursor = crDefault
      ImageIndex = 44
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#7891'&ng '#253' x'#243'a'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      Action = acDongy
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = '* Ch'#7885'n th'#7901'i '#273'i'#7875'm x'#243'a'
        object dxLayoutControl1Group2: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'T'#7915' ng'#224'y'
            Control = dxAtDate
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avCenter
            Caption = '  tr'#7903' v'#7873' tr'#432#7899'c'
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
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
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
        Caption = 'T'#249'y ch'#7885'n x'#243'a nh'#7853't k'#253
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 248
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 24
    Top = 40
    object acDongy: TAction
      Caption = 'acDongy'
      ImageIndex = 44
      OnExecute = acDongyExecute
    end
    object acBoqua: TAction
      Caption = 'acBoqua'
      ImageIndex = 47
      OnExecute = acBoquaExecute
    end
  end
  object qryDelete: TIBOQuery
    Params = <
      item
        DataType = ftDateTime
        Name = 'AT_DATE'
        ParamType = ptInput
      end>
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\September 2007\SHIRASAKI\Database\SSP_H' +
      'RM_DB_SHIRASAKI.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'delete from SYS_LOG_DATA '
      'where TIME_ID<=:AT_DATE')
    FieldOptions = []
    Left = 16
    Top = 72
  end
end
