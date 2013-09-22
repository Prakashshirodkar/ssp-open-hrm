inherited frmRealTimeBackup: TfrmRealTimeBackup
  Left = 246
  Top = 255
  Width = 549
  Height = 398
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 345
    Width = 541
    Panels = <
      item
        Alignment = taLeftJustify
        Width = 300
        Control = pgBar
        IsHTML = False
      end
      item
        Alignment = taLeftJustify
        Width = 500
        IsHTML = False
      end>
    Visible = True
    object pgBar: TdxfProgressBar
      Left = 2
      Top = 2
      Width = 296
      Height = 15
      BarBevelOuter = bvNone
      BeginColor = 10212766
      BevelOuter = bvNone
      EndColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Max = 100
      Min = 0
      Orientation = orHorizontal
      ParentFont = False
      Position = 0
      ShowText = True
      ShowTextStyle = stsPercent
      Step = 1
      Style = sExSolid
      TabOrder = 0
      TransparentGlyph = True
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 541
    Height = 345
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 464
      Top = 318
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 53
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Sao l'#432'u'
      TabOrder = 0
      Color = 15466238
      ParentColor = False
      Action = acBackup
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'ElPopupButton1'
        ShowCaption = False
        Control = ElPopupButton1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
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
        Caption = 'Sao l'#432'u/Ph'#7909'c h'#7891'i d'#7919' li'#7879'u'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 0
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 32
    object acBackup: TAction
      Caption = 'acBackup'
      ImageIndex = 53
      OnExecute = acBackupExecute
    end
  end
  object qryData: TIB_Cursor
    DatabaseName = 
      'E:\PROJECTs\HRM Projects\SSP-HRM 2.01\Databases\SSP_HRM_DB_DEMO.' +
      'GDB'
    IB_Connection = dmMain.connMain
    SQL.Strings = (
      'select * from hr_wage_book')
    ColorScheme = False
    MasterSearchFlags = [msfOpenMasterOnOpen, msfSearchAppliesToMasterOnly]
    Left = 104
    Top = 184
  end
end
