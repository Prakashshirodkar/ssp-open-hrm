inherited frmLocationList: TfrmLocationList
  Left = 385
  Top = 195
  Width = 619
  Height = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 374
    Width = 611
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 611
    Height = 374
    inherited frameToolbar1: TframeToolbar
      Top = 339
      TabOrder = 3
    end
    inherited dxdbtlMain: TdxDBTreeList
      Top = 43
      KeyField = 'ITEM_ID'
      ParentField = 'P_ITEM_ID'
      DragMode = dmAutomatic
      TabOrder = 2
      LookAndFeel = lfFlat
      object dxdbtlMainLOCATION_NO: TdxDBTreeListColumn
        Caption = 'M'#227' '#273#7883'a danh '
        HeaderAlignment = taCenter
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_NO'
        Caption_UTF7 = 'M+AOM +AREeyw-a danh '
      end
      object dxdbtlMainLOCATION_NAME: TdxDBTreeListColumn
        Caption = 'T'#234'n '#273#7883'a danh '
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_NAME'
        Caption_UTF7 = 'T+AOo-n +AREeyw-a danh '
      end
      object dxdbtlMainLOCATION_TYPE_NAME: TdxDBTreeListPopupColumn
        Caption = 'Ph'#226'n lo'#7841'i '
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_TYPE_NAME'
        OnCloseUp = dxdbtlMainLOCATION_TYPE_NAMECloseUp
        OnInitPopup = dxdbtlMainLOCATION_TYPE_NAMEInitPopup
        Caption_UTF7 = 'Ph+AOI-n lo+HqE-i '
      end
      object dxdbtlMainNATION_NAME: TdxDBTreeListPopupColumn
        Caption = 'Thu'#7897'c qu'#7889'c gia '
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NATION_NAME'
        OnCloseUp = dxdbtlMainNATION_NAMECloseUp
        OnInitPopup = dxdbtlMainNATION_NAMEInitPopup
        Caption_UTF7 = 'Thu+Htk-c qu+HtE-c gia '
      end
      object dxdbtlMainLOCATION_NOTE: TdxDBTreeListColumn
        Caption = 'Ghi ch'#250
        HeaderAlignment = taCenter
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCATION_NOTE'
        Caption_UTF7 = 'Ghi ch+APo'
      end
    end
    object dxPopupEdit1: TdxPopupEdit [2]
      Left = 87
      Top = 11
      Width = 192
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnCloseUp = dxPopupEdit1CloseUp
      OnInitPopup = dxPopupEdit1InitPopup
    end
    object ElPopupButton1: TElPopupButton [3]
      Left = 285
      Top = 10
      Width = 79
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem d'#7919' li'#7879'u'
      TabOrder = 1
      Color = clBtnFace
      ParentColor = False
      Action = acRefreshData
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlcMainItem2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avCenter
          Caption = 'Thu'#7897'c qu'#7889'c gia'
          Control = dxPopupEdit1
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem3: TdxLayoutItem
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
        Caption = 'Danh m'#7909'c t'#7881'nh th'#224'nh'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 112
    Top = 144
  end
  inherited qryList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'NATION_NO'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM HR_LOCATION'
      'WHERE'
      '   ITEM_ID = :OLD_ITEM_ID')
    EditSQL.Strings = (
      'UPDATE HR_LOCATION SET'
      '   ITEM_ID = :ITEM_ID, /*PK*/'
      '   P_ITEM_ID = :P_ITEM_ID,'
      '   NATION_NO = :NATION_NO,'
      '   LOCATION_NO = :LOCATION_NO,'
      '   LOCATION_NAME = :LOCATION_NAME,'
      '   LOCATION_FULL_NAME = :LOCATION_FULL_NAME,'
      '   LOCATION_NOTE = :LOCATION_NOTE,'
      '   LOCATION_TYPE = :LOCATION_TYPE'
      'WHERE'
      '   ITEM_ID = :OLD_ITEM_ID')
    InsertSQL.Strings = (
      'INSERT INTO HR_LOCATION('
      '   ITEM_ID, /*PK*/'
      '   P_ITEM_ID,'
      '   NATION_NO,'
      '   LOCATION_NO,'
      '   LOCATION_NAME,'
      '   LOCATION_FULL_NAME,'
      '   LOCATION_NOTE,'
      '   LOCATION_TYPE)'
      'VALUES ('
      '   :ITEM_ID,'
      '   :P_ITEM_ID,'
      '   :NATION_NO,'
      '   :LOCATION_NO,'
      '   :LOCATION_NAME,'
      '   :LOCATION_FULL_NAME,'
      '   :LOCATION_NOTE,'
      '   :LOCATION_TYPE)')
    KeyLinks.Strings = (
      'ITEM_ID')
    KeyLinksAutoDefine = False
    BeforePost = qryListBeforePost
    SQL.Strings = (
      'SELECT ITEM_ID'
      '     , P_ITEM_ID'
      '     , HR_LOCATION.NATION_NO'
      '     , HR_NATION.NATION_NAME'
      '     , LOCATION_NO'
      '     , LOCATION_NAME'
      '     , HR_LOCATION_TYPE.LOCATION_TYPE_NAME'
      '     , LOCATION_FULL_NAME'
      '     , LOCATION_NOTE'
      '     , HR_LOCATION.LOCATION_TYPE'
      'FROM HR_LOCATION'
      'JOIN HR_NATION ON HR_LOCATION.NATION_NO=HR_NATION.NATION_NO'
      
        'JOIN HR_LOCATION_TYPE ON HR_LOCATION.LOCATION_TYPE=HR_LOCATION_T' +
        'YPE.LOCATION_TYPE_NO'
      'where HR_LOCATION.NATION_NO=:NATION_NO')
    object qryListP_ITEM_ID: TWideStringField
      FieldName = 'P_ITEM_ID'
      Size = 63
    end
    object qryListLOCATION_NO: TWideStringField
      FieldName = 'LOCATION_NO'
      Required = True
      OnChange = qryListLOCATION_NOChange
      Size = 30
    end
    object qryListLOCATION_NAME: TWideStringField
      FieldName = 'LOCATION_NAME'
      Required = True
      Size = 126
    end
    object qryListLOCATION_FULL_NAME: TWideStringField
      FieldName = 'LOCATION_FULL_NAME'
      Size = 126
    end
    object qryListLOCATION_TYPE_NAME: TWideStringField
      FieldName = 'LOCATION_TYPE_NAME'
      Required = True
      OnChange = qryListLOCATION_TYPE_NAMEChange
      Size = 126
    end
    object qryListNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      Required = True
      OnChange = qryListNATION_NAMEChange
      Size = 126
    end
    object qryListLOCATION_NOTE: TWideStringField
      FieldName = 'LOCATION_NOTE'
      Size = 3072
    end
    object qryListLOCATION_TYPE: TWideStringField
      FieldName = 'LOCATION_TYPE'
      Size = 30
    end
    object qryListNATION_NO: TWideStringField
      FieldName = 'NATION_NO'
      OnChange = qryListNATION_NOChange
      Size = 30
    end
    object qryListITEM_ID: TWideStringField
      FieldName = 'ITEM_ID'
      Required = True
      Size = 63
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
    inherited miInsertChild: TdxBarButton
      Action = frameToolbar1.acDSInsertChild
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
        Item = frmTreeBase.miInsert
        Visible = True
      end
      item
        Item = frmTreeBase.miInsertChild
        Visible = True
      end
      item
        Item = frmTreeBase.miDelete
        Visible = True
      end
      item
        BeginGroup = True
        Item = frmTreeBase.miSave
        Visible = True
      end
      item
        Item = frmTreeBase.miCancel
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Left = 184
    Top = 144
    object acRefreshData: TAction
      Caption = 'acRefreshData'
      OnExecute = acRefreshDataExecute
    end
  end
end
