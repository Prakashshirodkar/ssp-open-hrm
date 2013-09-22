inherited frmPositionList: TfrmPositionList
  Left = 299
  Width = 713
  Height = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 451
    Width = 705
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 705
    Height = 451
    inherited frameToolbar1: TframeToolbar
      Top = 416
      Width = 632
      TabOrder = 4
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 632
      end
    end
    object dxppSelectDept: TdxPopupEdit [1]
      Left = 100
      Top = 11
      Width = 191
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnCloseUp = dxppSelectDeptCloseUp
      OnInitPopup = dxppSelectDeptInitPopup
    end
    object chkViewChild: TdxCheckEdit [2]
      Left = 297
      Top = 11
      Width = 101
      Color = clBtnFace
      ParentColor = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Caption = 'Xem c'#7845'p d'#432#7899'i'
      StyleController = dmMain.StyleController
    end
    object ElPopupButton1: TElPopupButton [3]
      Left = 404
      Top = 10
      Width = 93
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem d'#7919' li'#7879'u'
      TabOrder = 2
      Color = clBtnFace
      ParentColor = False
      Action = acRefreshData
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxtlPosition: TdxDBTreeList [4]
      Left = 10
      Top = 41
      Width = 632
      Height = 321
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'POSITION_NO'
      ParentField = 'P_POSITION_NO'
      DragMode = dmAutomatic
      TabOrder = 3
      DataSource = dsPosition
      LookAndFeel = lfFlat
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoUseBitmap, etoUseImageIndexForSelected]
      TreeLineColor = clGrayText
      object dxtlPositionDEPT_NAME: TdxDBTreeListPopupColumn
        Caption = #272#417'n v'#7883' - ph'#242'ng ban '
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPT_NAME'
        OnCloseUp = dxtlPositionDEPT_NAMECloseUp
        OnInitPopup = dxtlPositionDEPT_NAMEInitPopup
        Caption_UTF7 = '+ARABoQ-n v+Hss - ph+API-ng ban '
      end
      object dxtlPositionTITLE_NAME: TdxDBTreeListPopupColumn
        Caption = 'Ch'#7913'c danh '
        HeaderAlignment = taCenter
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITLE_NAME'
        OnCloseUp = dxtlPositionTITLE_NAMECloseUp
        OnInitPopup = dxtlPositionTITLE_NAMEInitPopup
        Caption_UTF7 = 'Ch+Huk-c danh '
      end
      object dxtlPositionWORK_TYPE_NAME: TdxDBTreeListPopupColumn
        Caption = 'Lo'#7841'i c'#244'ng vi'#7879'c'
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WORK_TYPE_NAME'
        OnCloseUp = dxtlPositionWORK_TYPE_NAMECloseUp
        OnInitPopup = dxtlPositionWORK_TYPE_NAMEInitPopup
        Caption_UTF7 = 'Lo+HqE-i c+APQ-ng vi+Hsc-c'
      end
      object dxtlPositionPOS_ALLOWANCE: TdxDBTreeListCalcColumn
        Caption = 'Ph'#7909' c'#7845'p ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POS_ALLOWANCE'
        Caption_UTF7 = 'Ph+HuU c+HqU-p ch+Huk-c v+HuU'
      end
      object dxtlPositionPOS_NOTE: TdxDBTreeListColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POS_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = []
          AlignVert = avCenter
          Caption = #272#417'n v'#7883' ph'#242'ng ban'
          Control = dxppSelectDept
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          ShowCaption = False
          Control = chkViewChild
          ControlOptions.AutoColor = True
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
      object dxlcMainItem5: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBTreeList1'
        ShowCaption = False
        Control = dxtlPosition
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
        Caption = 'Danh m'#7909'c ch'#7913'c danh - v'#7883' tr'#237' l'#224'm vi'#7879'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 504
    Top = 312
  end
  object dsPosition: TDataSource
    DataSet = qryPosition
    Left = 152
    Top = 112
  end
  object qryPosition: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_POSITION'
      'WHERE'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_POSITION SET'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   DEPT_NO = :DEPT_NO,'
      '   TITLE_NO = :TITLE_NO,'
      '   WORK_TYPE_NO = :WORK_TYPE_NO,'
      '   P_POSITION_NO = :P_POSITION_NO,'
      '   POS_NOTE = :POS_NOTE,'
      '   POS_ALLOWANCE = :POS_ALLOWANCE'
      'WHERE'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_POSITION('
      '   POSITION_NO, /*PK*/'
      '   DEPT_NO,'
      '   TITLE_NO,'
      '   WORK_TYPE_NO,'
      '   P_POSITION_NO,'
      '   POS_NOTE,'
      '   POS_ALLOWANCE)'
      'VALUES ('
      '   :POSITION_NO,'
      '   :DEPT_NO,'
      '   :TITLE_NO,'
      '   :WORK_TYPE_NO,'
      '   :P_POSITION_NO,'
      '   :POS_NOTE,'
      '   :POS_ALLOWANCE)')
    KeyLinks.Strings = (
      'POSITION_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryPositionBeforePost
    OnNewRecord = qryPositionNewRecord
    SQL.Strings = (
      'SELECT '
      '       HR_POSITION.POSITION_NO'
      '     , HR_POSITION.DEPT_NO'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_POSITION.TITLE_NO'
      '     , HR_TITLE.TITLE_NAME '
      '     , HR_POSITION.WORK_TYPE_NO'
      '     , HR_WORK_TYPE.WORK_TYPE_NAME'
      '     , HR_POSITION.P_POSITION_NO'
      '     , HR_POSITION.POS_NOTE'
      '     , HR_POSITION.POS_ALLOWANCE'
      'FROM HR_POSITION'
      'JOIN HR_DEPARTMENT ON HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'JOIN HR_TITLE on HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      
        'LEFT JOIN HR_WORK_TYPE on HR_POSITION.WORK_TYPE_NO=HR_WORK_TYPE.' +
        'WORK_TYPE_NO'
      '  ')
    FieldOptions = []
    Left = 152
    Top = 80
    object qryPositionPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryPositionDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryPositionDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryPositionTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Required = True
      Size = 15
    end
    object qryPositionTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Required = True
      Size = 126
    end
    object qryPositionWORK_TYPE_NO: TWideStringField
      FieldName = 'WORK_TYPE_NO'
      Size = 15
    end
    object qryPositionWORK_TYPE_NAME: TWideStringField
      FieldName = 'WORK_TYPE_NAME'
      OnChange = qryPositionWORK_TYPE_NAMEChange
      Size = 30
    end
    object qryPositionP_POSITION_NO: TWideStringField
      FieldName = 'P_POSITION_NO'
      Size = 30
    end
    object qryPositionPOS_NOTE: TWideStringField
      FieldName = 'POS_NOTE'
      Size = 3072
    end
    object qryPositionPOS_ALLOWANCE: TIBOFloatField
      FieldName = 'POS_ALLOWANCE'
    end
  end
  object ActionList1: TActionList
    Left = 232
    Top = 80
    object acRefreshData: TAction
      Caption = 'acRefreshData'
      OnExecute = acRefreshDataExecute
    end
  end
  object IB_Events1: TIB_Events
    AlertOnRegister = False
    IB_Connection = dmMain.connMain
    Events.Strings = (
      'POSITION_NO CHANGE'
      'POSITION_NO DELETE')
    Passive = False
    OnEventAlert = IB_Events1EventAlert
    Left = 32
    Top = 64
  end
end
