inherited frmSSP_Excel_InsertPage: TfrmSSP_Excel_InsertPage
  Left = 358
  Top = 298
  Width = 390
  Height = 250
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 202
    Width = 382
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 382
    Height = 202
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxTAB_ID: TdxDBEdit
      Left = 99
      Top = 28
      Width = 102
      Enabled = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      DataField = 'TAB_ID'
      DataSource = frmSSP_Excel.dsTabList
      ReadOnly = False
      StyleController = dmMain.StyleController
      StoredValues = 64
    end
    object dxDBEdit2: TdxDBEdit
      Left = 99
      Top = 51
      Width = 302
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'TAB_TITLE'
      DataSource = frmSSP_Excel.dsTabList
      StyleController = dmMain.StyleController
    end
    object dxDBMemo1: TdxDBMemo
      Left = 99
      Top = 74
      Width = 185
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      DataField = 'TAB_NOTE'
      DataSource = frmSSP_Excel.dsTabList
      StyleController = dmMain.StyleController
      Height = 89
    end
    object chkEdit: TdxCheckEdit
      Left = 282
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = chkEditChange
    end
    object ElPopupButton1: TElPopupButton
      Left = 116
      Top = 175
      Width = 75
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
      Caption = #272#7891'&ng '#253
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      Action = Post
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 191
      Top = 175
      Width = 75
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
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      Action = Cancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDefaultColCount: TdxSpinEdit
      Left = 99
      Top = 145
      Width = 60
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object dxDefaultRowCount: TdxSpinEdit
      Left = 235
      Top = 145
      Width = 60
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      Alignment = taCenter
      StyleController = dmMain.StyleController
      StoredValues = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Th'#244'ng tin b'#7843'ng t'#237'nh'
        object dxLayoutControl1Group4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'M'#227' s'#7889' b'#7843'ng t'#237'nh'
            Control = dxTAB_ID
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'Ch'#7881'nh s'#7917'a m'#227' s'#7889
            Control = chkEdit
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Ti'#234'u '#273#7873' b'#7843'ng t'#237'nh'
          Control = dxDBEdit2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'Th'#244'ng tin th'#234'm'
          CaptionOptions.AlignVert = tavTop
          Control = dxDBMemo1
          ControlOptions.ShowBorder = False
        end
      end
      object dxDefaultParamGroup: TdxLayoutGroup
        Caption = 'Th'#244'ng s'#7889' m'#7863'c '#273#7883'nh'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'S'#7889' c'#7897't d'#7919' li'#7879'u'
          Control = dxDefaultColCount
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'S'#7889' h'#224'ng d'#7919' li'#7879'u'
          Control = dxDefaultRowCount
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
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
        Caption = 'T'#7841'o m'#7899'i b'#7843'ng t'#237'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = False
        Caption = 'Ch'#7881'nh s'#7917'a ti'#234'u '#273#7873' b'#7843'ng t'#237'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 65535
    Top = 65535
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 48
    Top = 112
    object Cancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      OnExecute = CancelExecute
      DataSource = frmSSP_Excel.dsTabList
    end
    object Post: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 44
      OnExecute = PostExecute
      DataSource = frmSSP_Excel.dsTabList
    end
  end
end
