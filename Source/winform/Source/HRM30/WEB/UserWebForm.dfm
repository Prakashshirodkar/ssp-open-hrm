inherited frmUserWeb: TfrmUserWeb
  Left = 302
  Top = 252
  Width = 609
  Height = 336
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 283
    Width = 601
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 601
    Height = 283
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxdbgMain: TdxDBGrid
      Left = 3
      Top = 3
      Width = 522
      Height = 283
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'UserName'
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
      TabOrder = 0
      DataSource = dsList
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxdbgMainUSERNAME: TdxDBGridColumn
        Caption = 'T'#234'n '#273#259'ng nh'#7853'p'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USERNAME'
        Caption_UTF7 = 'T+AOo-n +AREBAw-ng nh+Hq0-p'
      end
      object dxdbgMainHO_TEN: TdxDBGridColumn
        Caption = 'H'#7885' t'#234'n nh'#226'n vi'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HO_TEN'
        Caption_UTF7 = 'H+Hs0 t+AOo-n nh+AOI-n vi+AOo-n'
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 2
      Top = 256
      Width = 95
      Height = 25
      Cursor = crDefault
      UseImageList = True
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Reset Password'
      TabOrder = 1
      Color = 15466238
      ParentColor = False
      Action = acResetpass
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = dxdbgMain
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'New Group'
        LookAndFeel = dmMain.StyleWeb
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
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
        Caption = 'Qu'#7843'n l'#253' ng'#432#7901'i d'#249'ng web'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 40
    Top = 80
  end
  object qryList: TIBOQuery
    Params = <>
    DatabaseName = 'D:\HRM_Project\HRM3.0\Database\Ssp_hrm_db_30.gdb'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT login.username'
      '    , login.pass'
      '    ,login.check_'
      '    , hr_danhsach_nhanvien.ho_ten'
      'FROM login left join hr_danhsach_nhanvien '
      '     on login.username=hr_danhsach_nhanvien.maso_nhanvien'
      '')
    FieldOptions = []
    Left = 72
    Top = 80
    object qryListUSERNAME: TWideStringField
      FieldName = 'USERNAME'
      Required = True
      Size = 60
    end
    object qryListHO_TEN: TWideStringField
      FieldName = 'HO_TEN'
      Size = 125
    end
    object qryListPASS: TWideStringField
      FieldName = 'PASS'
      Size = 120
    end
    object qryListCHECK_: TIntegerField
      FieldName = 'CHECK_'
    end
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
      Caption = 'Th'#234'm'
      Category = 0
      Visible = ivAlways
    end
    object miDelete: TdxBarButton
      Caption = 'X'#243'a'
      Category = 0
      Hint = 'X'#243'a'
      Visible = ivAlways
    end
    object miSave: TdxBarButton
      Caption = 'L'#432'u'
      Category = 0
      Hint = 'L'#432'u'
      Visible = ivAlways
    end
    object miCancel: TdxBarButton
      Caption = 'Kh'#244'ng l'#432'u'
      Category = 0
      Hint = 'Kh'#244'ng l'#432'u'
      Visible = ivAlways
    end
  end
  object pmMain: TdxBarPopupMenu
    BarManager = bmMain
    ItemLinks = <>
    UseOwnFont = False
    Left = 152
    Top = 80
  end
  object ActionList1: TActionList
    Left = 184
    Top = 80
    object acResetpass: TAction
      Caption = 'acResetpass'
      OnExecute = acResetpassExecute
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    RecordCountAccurate = True
    FieldOptions = []
    Left = 216
    Top = 80
  end
end
