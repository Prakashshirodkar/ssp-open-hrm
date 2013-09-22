inherited frmEstimageStageDetail: TfrmEstimageStageDetail
  Tag = -1
  Left = 332
  Top = 278
  Width = 510
  Height = 354
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 301
    Width = 502
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 502
    Height = 301
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleMacDinh
    object dxDBEdit1: TdxDBEdit
      Left = 125
      Top = 29
      Width = 293
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      DataField = 'STAGE_NO'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
    end
    object dxDBEdit2: TdxDBEdit
      Left = 125
      Top = 55
      Width = 293
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'STAGE_NAME'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
    end
    object dxStageType: TdxDBImageEdit
      Left = 125
      Top = 113
      Width = 240
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      DataField = 'STAGE_TYPE'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
      OnChange = dxStageTypeChange
      PopupBorder = pbSingle
    end
    object dxDBSpinEdit1: TdxDBSpinEdit
      Left = 125
      Top = 165
      Width = 90
      Enabled = False
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      DataField = 'FROM_MONTH'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
    end
    object dxDBSpinEdit2: TdxDBSpinEdit
      Left = 276
      Top = 165
      Width = 90
      Enabled = False
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      DataField = 'FROM_YEAR'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
    end
    object dxDBSpinEdit3: TdxDBSpinEdit
      Left = 276
      Top = 191
      Width = 90
      Enabled = False
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      DataField = 'TO_YEAR'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
    end
    object dxDBSpinEdit4: TdxDBSpinEdit
      Left = 125
      Top = 191
      Width = 90
      Enabled = False
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      DataField = 'TO_MONTH'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 125
      Top = 139
      Width = 90
      Enabled = False
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      DataField = 'FROM_DATE'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    object dxDBDateEdit2: TdxDBDateEdit
      Left = 276
      Top = 139
      Width = 90
      Enabled = False
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      DataField = 'TO_DATE'
      DataSource = frmEstimateManager.dsEstimateStage
      StyleController = dmMain.StyleController
      PopupBorder = pbSingle
    end
    inline frameToolbar1: TframeToolbar
      Left = 3
      Top = 252
      Width = 807
      Height = 46
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 12
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item10: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Th'#244'ng tin '#273#7907't '#273#225'nh gi'#225
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'M'#227' s'#7889' '#273#7907't '#273#225'nh gi'#225' '
          Control = dxDBEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Ti'#234'u '#273#7873' '#273#7907't '#273#225'nh gi'#225' '
          Control = dxDBEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        Caption = 'Th'#244'ng tin th'#7901'i gian'
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ch'#7885'n th'#7901'i gian '
          Control = dxStageType
          ControlOptions.ShowBorder = False
        end
        object groupNgay: TdxLayoutGroup
          Enabled = False
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'T'#7915' ng'#224'y '
            Control = dxDBDateEdit1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = #273#7871'n ng'#224'y '
            Control = dxDBDateEdit2
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object groupTuthangNam: TdxLayoutGroup
            Enabled = False
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item6: TdxLayoutItem
              Caption = 'T'#7915' th'#225'ng '
              Control = dxDBSpinEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              Caption = 'n'#259'm '
              Control = dxDBSpinEdit2
              ControlOptions.ShowBorder = False
            end
          end
          object groupDenThangNam: TdxLayoutGroup
            Enabled = False
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item9: TdxLayoutItem
              Caption = #273#7871'n th'#225'ng '
              Control = dxDBSpinEdit4
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item8: TdxLayoutItem
              Caption = 'n'#259'm '
              Control = dxDBSpinEdit3
              ControlOptions.ShowBorder = False
            end
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
        Caption = 'Thi'#7871't l'#7853'p '#273#7907't '#273#225'nh gi'#225' thi '#273'ua'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 376
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 376
    Top = 152
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ImageIndex = 47
      DataSource = frmEstimateManager.dsEstimateStage
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ImageIndex = 14
      DataSource = frmEstimateManager.dsEstimateStage
    end
    object acClose: TAction
      Category = 'Dataset'
      Caption = 'acClose'
      ImageIndex = 15
    end
  end
end
