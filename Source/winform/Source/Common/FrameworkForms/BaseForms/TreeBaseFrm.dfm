inherited frmTreeBase: TfrmTreeBase
  Left = 202
  Top = 239
  Width = 558
  Height = 378
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 325
    Width = 550
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 550
    Height = 325
    inherited frameToolbar1: TframeToolbar
      Top = 290
      Width = 544
      TabOrder = 1
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 544
        inherited btnDelete: TElPopupButton
          Left = 125
        end
        inherited btnInsert: TElPopupButton
          Left = 0
        end
        inherited btnSave: TElPopupButton
          Left = 200
        end
        inherited btnCancel: TElPopupButton
          Left = 275
        end
        inherited btnClose: TElPopupButton
          Left = 957
        end
        inherited btnHelp: TElPopupButton
          Left = 827
        end
        inherited btnChoose: TElPopupButton
          Left = 897
        end
        inherited btnCopy: TElPopupButton
          Left = 100
        end
        inherited btnFirst: TElPopupButton
          Left = 355
        end
        inherited btnLast: TElPopupButton
          Left = 424
        end
        inherited btnPrevious: TElPopupButton
          Left = 378
        end
        inherited btnNext: TElPopupButton
          Left = 401
        end
        inherited btnDesign: TElPopupButton
          Left = 617
        end
        inherited btnPreview: TElPopupButton
          Left = 547
        end
        inherited btnPrint: TElPopupButton
          Left = 477
        end
        inherited btnInsertEx: TElPopupButton
          Left = 75
        end
        inherited btnSendMail: TElPopupButton
          Left = 452
        end
        inherited btnGenerate: TElPopupButton
          Left = 742
        end
        inherited btnRelation: TElPopupButton
          Left = 717
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 692
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxlctrlInsertChild: TdxLayoutItem
              Visible = True
            end
          end
        end
      end
    end
    object dxdbtlMain: TdxDBTreeList [1]
      Left = 12
      Top = 12
      Width = 250
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      BorderStyle = bsNone
      TabOrder = 0
      OnDblClick = dxdbtlMainDblClick
      OnKeyDown = dxdbtlMainKeyDown
      OnMouseUp = dxdbtlMainMouseUp
      DataSource = dsList
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanDelete, etoCanInsert, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoInvertSelect, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxLayoutControl1Item2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxdbtlMain
      end
    end
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 40
    Top = 80
  end
  object qryList: TIBOQuery
    Params = <>
    DatabaseName = 'F:\Projects\SSP-HRM 2.0\Databases\SSP_HRM_DB.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryListNewRecord
    FieldOptions = []
    Left = 72
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
      Caption = 'Th'#234'm ngang c'#7845'p'
      Category = 0
      Visible = ivAlways
    end
    object miInsertChild: TdxBarButton
      Action = frameToolbar1.acDSInsertChild
      Caption = 'Th'#234'm c'#7845'p con'
      Category = 0
      Hint = 'Th'#234'm c'#7845'p con'
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
        Item = miInsertChild
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
