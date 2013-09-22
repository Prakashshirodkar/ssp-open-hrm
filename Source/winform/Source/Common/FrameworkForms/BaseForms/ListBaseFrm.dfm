inherited frmListBase: TfrmListBase
  Left = 275
  Top = 256
  Width = 600
  Height = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 347
    Width = 592
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 592
    Height = 347
    inherited frameToolbar1: TframeToolbar
      Top = 312
      Width = 546
      TabOrder = 1
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 546
      end
    end
    object dxdbgMain: TdxDBGrid [1]
      Left = 12
      Top = 12
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = dxdbgMainDblClick
      OnKeyDown = dxdbgMainKeyDown
      DataSource = dsList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = dxdbgMain
      end
    end
  end
  object qryList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryListBeforeDelete
    AfterDelete = qryListAfterDelete
    FieldOptions = []
    Left = 72
    Top = 80
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 40
    Top = 80
  end
  object bmMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 112
    Top = 80
    DockControlHeights = (
      0
      0
      0
      0)
    object miInsert: TdxBarButton
      Action = frameToolbar1.acDSInsert
      Caption = 'Th'#234'm'
      Category = 0
      Visible = ivAlways
    end
    object miDelete: TdxBarButton
      Action = frameToolbar1.acDSDelete
      Caption = 'X'#243'a'
      Category = 0
      Hint = 'X'#243'a'
      Visible = ivAlways
    end
    object miSave: TdxBarButton
      Action = frameToolbar1.acDSPost
      Caption = 'L'#432'u'
      Category = 0
      Hint = 'L'#432'u'
      Visible = ivAlways
    end
    object miCancel: TdxBarButton
      Action = frameToolbar1.acDSCancel
      Caption = 'Kh'#244'ng l'#432'u'
      Category = 0
      Hint = 'Kh'#244'ng l'#432'u'
      Visible = ivAlways
    end
  end
  object pmMain: TdxBarPopupMenu
    BarManager = bmMain
    ItemLinks = <
      item
        Item = miInsert
        Visible = True
      end
      item
        Item = miDelete
        Visible = True
      end
      item
        BeginGroup = True
        Item = miSave
        Visible = True
      end
      item
        Item = miCancel
        Visible = True
      end>
    UseOwnFont = False
    Left = 152
    Top = 80
  end
end
