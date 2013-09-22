inherited frmLuong_Tuychon: TfrmLuong_Tuychon
  Left = 512
  Top = 208
  Width = 257
  Height = 373
  BorderStyle = bsSizeToolWin
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 320
    Width = 249
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 249
    Height = 320
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object treeColumnView: TdxDBTreeList
      Left = 2
      Top = 2
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CT_ID'
      ParentField = 'CT_SESSION'
      TabOrder = 0
      DataSource = dsColumnView
      LookAndFeel = lfFlat
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object treeColumnViewCT_TIEUDE: TdxDBTreeListColumn
        Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883' c'#7897't l'#432#417'ng'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 216
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CT_TIEUDE'
        Caption_UTF7 = 'T+APk-y ch+Hs0-n hi+HsM-n th+Hss c+Htk-t l+AbABoQ-ng'
      end
      object treeColumnViewCT_VISIBLE: TdxDBTreeListCheckColumn
        Alignment = taCenter
        Caption = '[X]'
        HeaderAlignment = taCenter
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CT_VISIBLE'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = treeColumnView
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
        Caption = 'T'#249'y ch'#7885'n xem b'#7843'ng l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 304
    Top = 120
  end
  object dsColumnView: TDataSource
    DataSet = memColumnView
    Left = 32
    Top = 144
  end
  object memColumnView: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 32
    Top = 104
    object memColumnViewCT_KYHIEU: TWideStringField
      FieldName = 'CT_KYHIEU'
      Size = 60
    end
    object memColumnViewCT_TIEUDE: TWideStringField
      FieldName = 'CT_TIEUDE'
      Size = 128
    end
    object memColumnViewCT_SESSION: TIntegerField
      FieldName = 'CT_SESSION'
    end
    object memColumnViewCT_ID: TIntegerField
      FieldName = 'CT_ID'
    end
    object memColumnViewCT_VISIBLE: TBooleanField
      FieldName = 'CT_VISIBLE'
      OnChange = memColumnViewCT_VISIBLEChange
    end
  end
end
