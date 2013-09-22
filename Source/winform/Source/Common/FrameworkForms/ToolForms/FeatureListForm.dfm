inherited frmFeatureList: TfrmFeatureList
  Left = 195
  Top = 230
  Width = 611
  Height = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 380
    Width = 603
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 603
    Height = 380
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 353
      Color = 15466238
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 553
        end
        inherited btnHelp: TElPopupButton
          Left = 482
        end
        inherited btnChoose: TElPopupButton
          Left = 552
          Width = 1
        end
        inherited btnLast: TElPopupButton
          Left = 380
          Width = 1
        end
        inherited btnPrevious: TElPopupButton
          Width = 1
        end
        inherited btnNext: TElPopupButton
          Left = 379
          Width = 1
        end
        inherited btnDesign: TElPopupButton
          Left = 389
          Width = 1
        end
        inherited btnPreview: TElPopupButton
          Left = 388
          Width = 1
        end
        inherited btnPrint: TElPopupButton
          Left = 387
          Width = 1
        end
        inherited btnSendMail: TElPopupButton
          Left = 386
          Width = 1
        end
        inherited btnGenerate: TElPopupButton
          Left = 397
          ImageIndex = 62
          UseImageList = True
          Images = dmMain.imgAction
          Action = acGenerate
        end
        inherited btnRelation: TElPopupButton
          Left = 396
          Width = 1
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 395
          Width = 1
        end
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxLayoutControl1Group4: TdxLayoutGroup
              Visible = True
              inherited dxlctrlGenerate: TdxLayoutItem
                Visible = True
              end
            end
          end
        end
      end
    end
    inherited dxdbtlMain: TdxDBTreeList
      Left = 2
      Top = 2
      KeyField = 'FEATUREID'
      ParentField = 'P_FEATUREID'
      BorderStyle = bsSingle
      DragMode = dmAutomatic
      LookAndFeel = lfFlat
      object dxdbtlMainFEATUREID: TdxDBTreeListSpinColumn
        Alignment = taRightJustify
        Caption = 'M'#227' s'#7889
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATUREID'
        Caption_UTF7 = 'M+AOM s+HtE'
      end
      object dxdbtlMainFEATURENAME: TdxDBTreeListColumn
        Caption = 'Ch'#7913'c n'#259'ng'
        HeaderAlignment = taCenter
        Width = 235
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME'
        Caption_UTF7 = 'Ch+Huk-c n+AQM-ng'
      end
      object dxdbtlMainFEATURENAME_ENG: TdxDBTreeListColumn
        Caption = 'Ti'#234'u '#273#7873' ti'#7871'ng Anh'
        HeaderAlignment = taCenter
        Width = 197
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FEATURENAME_ENG'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ ti+Hr8-ng Anh'
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      inherited dxLayoutControl1Item2: TdxLayoutItem
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
        Caption = 'Danh m'#7909'c ch'#7913'c n'#259'ng ph'#226'n quy'#7873'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 336
    Top = 24
  end
  inherited qryList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM SYS_FEATURE_LIST'
      'WHERE'
      '   FEATUREID = :OLD_FEATUREID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    EditSQL.Strings = (
      'UPDATE SYS_FEATURE_LIST SET'
      '   FEATUREID = :FEATUREID, /*PK*/'
      '   SUBSYSTEMID = :SUBSYSTEMID, /*PK*/'
      '   FEATURENAME = :FEATURENAME,'
      '   P_FEATUREID = :P_FEATUREID,'
      '   FEATURENAME_ENG = :FEATURENAME_ENG'
      'WHERE'
      '   FEATUREID = :OLD_FEATUREID AND'
      '   SUBSYSTEMID = :OLD_SUBSYSTEMID')
    InsertSQL.Strings = (
      'INSERT INTO SYS_FEATURE_LIST('
      '   FEATUREID, /*PK*/'
      '   SUBSYSTEMID, /*PK*/'
      '   FEATURENAME,'
      '   P_FEATUREID,'
      '   FEATURENAME_ENG)'
      'VALUES ('
      '   :FEATUREID,'
      '   :SUBSYSTEMID,'
      '   :FEATURENAME,'
      '   :P_FEATUREID,'
      '   :FEATURENAME_ENG)')
    BeforePost = qryListBeforePost
    SQL.Strings = (
      'SELECT SUBSYSTEMID'
      '     , FEATUREID'
      '     , FEATURENAME'
      '     , P_FEATUREID'
      '     , FEATURENAME_ENG'
      'FROM SYS_FEATURE_LIST'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    Left = 80
    Top = 72
    object qryListSUBSYSTEMID: TSmallintField
      FieldName = 'SUBSYSTEMID'
      Required = True
    end
    object qryListFEATUREID: TSmallintField
      FieldName = 'FEATUREID'
      Required = True
    end
    object qryListFEATURENAME: TWideStringField
      FieldName = 'FEATURENAME'
      Size = 126
    end
    object qryListP_FEATUREID: TIntegerField
      FieldName = 'P_FEATUREID'
    end
    object qryListFEATURENAME_ENG: TWideStringField
      FieldName = 'FEATURENAME_ENG'
      Size = 126
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
    Images = dmMain.imgAction
    Left = 216
    Top = 80
    object acGenerate: TAction
      Caption = 'acGenerate'
      ImageIndex = 62
      OnExecute = acGenerateExecute
    end
  end
  object qryExecute: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'SUBSYSTEMID'
        ParamType = ptUnknown
      end>
    DatabaseName = 
      'F:\SSP-HRM GROUP - PROJECTs\SSP-HRM PLC\Databases\SSP_HRM_DB_cac' +
      'h 1.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'delete'
      'FROM SYS_FEATURE_LIST'
      'where SUBSYSTEMID=:SUBSYSTEMID')
    FieldOptions = []
    Left = 184
    Top = 136
  end
end
