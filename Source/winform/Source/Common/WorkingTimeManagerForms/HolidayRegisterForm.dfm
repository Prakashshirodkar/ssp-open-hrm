inherited frmHolidayRegister: TfrmHolidayRegister
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxlcMain: TdxLayoutControl
    LookAndFeel = dmMain.StyleMacDinh
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 319
      Color = clCream
      TabOrder = 3
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 3
      Top = 31
      KeyField = 'HOLIDAY_NO'
      BorderStyle = bsSingle
      TabOrder = 2
      Filter.Criteria = {00000000}
      object dxdbgMainHOLIDAY_NO: TdxDBGridDateColumn
        Caption = 'Ng'#224'y '
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HOLIDAY_NO'
        Caption_UTF7 = 'Ng+AOA-y '
      end
      object dxdbgMainWDT_NAME: TdxDBGridPopupColumn
        Caption = 'Lo'#7841'i ng'#224'y c'#244'ng m'#7863'c '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 272
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WDT_NAME'
        OnCloseUp = dxdbgMainWDT_NAMECloseUp
        OnInitPopup = dxdbgMainWDT_NAMEInitPopup
        Caption_UTF7 = 'Lo+HqE-i ng+AOA-y c+APQ-ng m+Hrc-c +AREeyw-nh'
      end
      object dxdbgMainIS_FIXED: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = 'C'#7889' '#273#7883'nh'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IS_FIXED'
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption_UTF7 = 'C+HtE +AREeyw-nh'
      end
      object dxdbgMainHOLIDAY_NOTE: TdxDBGridColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 142
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HOLIDAY_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object dxspInYear: TdxSpinEdit [2]
      Left = 98
      Top = 4
      Width = 79
      Style.BorderColor = 6857924
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = acRefreshDataExecute
      MaxValue = 3000.000000000000000000
      MinValue = 1990.000000000000000000
      Value = 1990.000000000000000000
      StoredValues = 49
    end
    object ElPopupButton1: TElPopupButton [3]
      Left = 180
      Top = 3
      Width = 101
      Height = 25
      Cursor = crDefault
      ImageIndex = 31
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&T'#7841'o nhanh '
      TabOrder = 1
      Color = clCream
      ParentColor = False
      Action = acNewData
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = []
          AlignVert = avCenter
          Caption = 'Ch'#7885'n n'#259'm c'#7847'n xem'
          Control = dxspInYear
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem4: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      inherited dxlcMainItem2: TdxLayoutItem
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
        Caption = 'Danh m'#7909'c '#273#259'ng k'#253' ng'#224'y ngh'#7881' trong n'#259'm'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 136
    Top = 120
  end
  inherited qryList: TIBOQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'IN_YEAR'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM HR_HOLIDAY'
      'WHERE'
      '   HOLIDAY_NO = :OLD_HOLIDAY_NO')
    EditSQL.Strings = (
      'UPDATE HR_HOLIDAY SET'
      '   HOLIDAY_NO = :HOLIDAY_NO, /*PK*/'
      '   WDT_NO = :WDT_NO,'
      '   HOLIDAY_NOTE = :HOLIDAY_NOTE,'
      '   IS_FIXED = :IS_FIXED'
      'WHERE'
      '   HOLIDAY_NO = :OLD_HOLIDAY_NO')
    InsertSQL.Strings = (
      'INSERT INTO HR_HOLIDAY('
      '   HOLIDAY_NO, /*PK*/'
      '   WDT_NO,'
      '   HOLIDAY_NOTE,'
      '   IS_FIXED)'
      'VALUES ('
      '   :HOLIDAY_NO,'
      '   :WDT_NO,'
      '   :HOLIDAY_NOTE,'
      '   :IS_FIXED)')
    KeyLinks.Strings = (
      'HOLIDAY_NO')
    KeyLinksAutoDefine = False
    SQL.Strings = (
      'SELECT '
      '       HOLIDAY_NO'
      '     , HR_HOLIDAY.WDT_NO'
      '     , HR_WORK_DATE_TYPE.WDT_NAME'
      '     , HOLIDAY_NOTE'
      '     , IS_FIXED'
      'FROM HR_HOLIDAY'
      'LEFT JOIN HR_WORK_DATE_TYPE on '
      '  HR_HOLIDAY.WDT_NO=HR_WORK_DATE_TYPE.WDT_NO'
      'where (Extract (year from HOLIDAY_NO))=:IN_YEAR')
    object qryListHOLIDAY_NO: TDateField
      FieldName = 'HOLIDAY_NO'
      Required = True
    end
    object qryListWDT_NO: TWideStringField
      FieldName = 'WDT_NO'
      Size = 30
    end
    object qryListWDT_NAME: TWideStringField
      FieldName = 'WDT_NAME'
      OnChange = qryListWDT_NAMEChange
      Size = 126
    end
    object qryListHOLIDAY_NOTE: TWideStringField
      FieldName = 'HOLIDAY_NOTE'
      Size = 3072
    end
    object qryListIS_FIXED: TSmallintField
      FieldName = 'IS_FIXED'
    end
  end
  inherited bmMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
    inherited miInsert: TdxBarButton
      Action = frameToolbar1.acDSInsert
    end
    inherited miDelete: TdxBarButton
      Action = frameToolbar1.acDSDelete
    end
    inherited miSave: TdxBarButton
      Action = frameToolbar1.acDSPost
    end
    inherited miCancel: TdxBarButton
      Action = frameToolbar1.acDSCancel
    end
  end
  inherited pmMain: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = frmListBase.miInsert
        Visible = True
      end
      item
        Item = frmListBase.miDelete
        Visible = True
      end
      item
        BeginGroup = True
        Item = frmListBase.miSave
        Visible = True
      end
      item
        Item = frmListBase.miCancel
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 208
    Top = 96
    object acRefreshData: TAction
      Caption = 'acRefreshData'
      OnExecute = acRefreshDataExecute
    end
    object acNewData: TAction
      Caption = 'acNewData'
      ImageIndex = 31
      OnExecute = acNewDataExecute
    end
  end
end
