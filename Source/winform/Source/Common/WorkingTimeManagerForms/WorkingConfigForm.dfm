inherited frmWorkingConfig: TfrmWorkingConfig
  Left = 219
  Top = 249
  Width = 345
  Height = 183
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 130
    Width = 337
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 337
    Height = 130
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object ElPopupButton1: TElPopupButton
      Left = 238
      Top = 74
      Width = 85
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
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 238
      Top = 49
      Width = 85
      Height = 25
      Cursor = crDefault
      ImageIndex = 14
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Ch'#7845'p nh'#7853'n'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      Action = DataSetPost1
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 14
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      DataField = 'CHAMCONG_NGAY'
      DataSource = frmWorkTimeManager.dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsInactive
    end
    object dxDBCheckEdit2: TdxDBCheckEdit
      Left = 14
      Top = 51
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'CHAMCONG_GIO'
      DataSource = frmWorkTimeManager.dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsInactive
    end
    object dxDBCheckEdit3: TdxDBCheckEdit
      Left = 14
      Top = 74
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      DataField = 'CHAMCONG_THANG'
      DataSource = frmWorkTimeManager.dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsInactive
    end
    object dxDBCheckEdit4: TdxDBCheckEdit
      Left = 14
      Top = 97
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      DataField = 'CHAMCONG_TONGGIO'
      DataSource = frmWorkTimeManager.dsConfig
      StyleController = dmMain.StyleController
      ValueChecked = '1'
      ValueUnchecked = '0'
      NullStyle = nsInactive
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'B'#7841'n h'#227'y ch'#7885'n c'#225'c h'#236'nh th'#7913'c ch'#7845'm c'#244'ng '#273'ang s'#7917' d'#7909'ng'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = '+ Ch'#7845'm c'#244'ng ng'#224'y'
            CaptionOptions.Layout = clRight
            Control = dxDBCheckEdit1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = '+ Ch'#7845'm c'#244'ng gi'#7901
            CaptionOptions.Layout = clRight
            Control = dxDBCheckEdit2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = '+ Ch'#7845'm c'#244'ng th'#225'ng'
            CaptionOptions.Layout = clRight
            Control = dxDBCheckEdit3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = '+ Ch'#7845'm c'#244'ng t'#7893'ng gi'#7901
            CaptionOptions.Layout = clRight
            Control = dxDBCheckEdit4
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avCenter
          Caption = 'New Group'
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
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
        Caption = 'T'#249'y ch'#7885'n ch'#7845'm c'#244'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 296
    Top = 16
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 192
    Top = 48
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 14
      OnExecute = DataSetPost1Execute
      DataSource = frmWorkTimeManager.dsConfig
    end
    object acCancel: TAction
      Category = 'Dataset'
      Caption = 'acCancel'
      ImageIndex = 47
      OnExecute = acCancelExecute
    end
  end
end
