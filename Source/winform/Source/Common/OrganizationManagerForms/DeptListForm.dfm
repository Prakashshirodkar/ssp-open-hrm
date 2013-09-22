inherited frmDeptList: TfrmDeptList
  Left = 253
  Top = 153
  Width = 738
  Height = 519
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 466
    Width = 730
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 730
    Height = 466
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 439
      Color = 15466238
      TabOrder = 2
      inherited ActionList1: TActionList
        Images = dmMain.imgAction
      end
    end
    object mainPanel: TPanel [1]
      Left = 2
      Top = 2
      Width = 502
      Height = 586
      BevelOuter = bvNone
      Color = 15466238
      TabOrder = 4
      object dxtlDeptList: TdxDBTreeList
        Left = 0
        Top = 0
        Width = 225
        Height = 586
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'DEPT_NO'
        ParentField = 'P_DEPT_NO'
        Align = alLeft
        DragMode = dmAutomatic
        TabOrder = 0
        DataSource = dsDeptList
        Images = dmMain.imglDeptTree
        LookAndFeel = lfFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEnterShowEditor, etoImmediateEditor, etoTabThrough]
        OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoRowAutoHeight, etoRowSelect, etoUseBitmap, etoUseImageIndexForSelected]
        TreeLineColor = clGrayText
        OnCustomDrawCell = dxtlDeptListCustomDrawCell
        object dxtlDeptListDEPT_NAME: TdxDBTreeListColumn
          Caption = 'T'#234'n t'#7893' ch'#7913'c - ph'#242'ng ban'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DEPT_NAME'
          Caption_UTF7 = 'T+AOo-n t+HtU ch+Huk-c - ph+API-ng ban'
        end
        object dxtlDeptListENDED_DATE: TdxDBTreeListDateColumn
          Caption = 'Ng'#224'y k'#7871't th'#250'c'
          DisableCaption = True
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ENDED_DATE'
          Caption_UTF7 = 'Ng+AOA-y k+Hr8-t th+APo-c'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 225
        Top = 0
        Width = 9
        Height = 586
        Cursor = crHSplit
        SnapTopLeft = False
        SnapBottomRight = True
        ControlTopLeft = dxtlDeptList
        ControlBottomRight = panelDetail
        AutoHide = False
        ShowSnapButton = True
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object panelDetail: TPanel
        Left = 234
        Top = 0
        Width = 268
        Height = 586
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 268
          Height = 586
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmMain.StyleWeb
          object dxDBEdit2: TdxDBEdit
            Left = 90
            Top = 28
            Width = 219
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 0
            DataField = 'DEPT_NO'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
          end
          object dxDBEdit1: TdxDBEdit
            Left = 90
            Top = 51
            Width = 219
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            DataField = 'DEPT_NAME'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
          end
          object dxDBPopupEdit2: TdxDBPopupEdit
            Left = 90
            Top = 74
            Width = 219
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 2
            DataField = 'DEPT_TYPE_NAME'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit2CloseUp
            OnInitPopup = dxDBPopupEdit2InitPopup
          end
          object dxDBPopupEdit1: TdxDBPopupEdit
            Left = 90
            Top = 97
            Width = 219
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 3
            DataField = 'P_DEPT_NAME'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit1CloseUp
            OnInitPopup = dxDBPopupEdit1InitPopup
          end
          object dxDBDateEdit2: TdxDBDateEdit
            Left = 90
            Top = 120
            Width = 85
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 4
            DataField = 'FOUNDED_DATE'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 217
            Top = 120
            Width = 85
            Color = clInfoBk
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsHotFlat
            TabOrder = 5
            DataField = 'ENDED_DATE'
            DataSource = dsDeptList
            ReadOnly = True
            StyleController = dmMain.StyleController
            PopupBorder = pbSingle
            StoredValues = 64
          end
          object dxDBGraphicEdit1: TdxDBGraphicEdit
            Left = 369
            Top = 28
            Width = 109
            Hint = 'Click phai de load h'#236'nh'
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 6
            Caption = '(Logo)'
            StyleController = dmMain.StyleController
            DataField = 'DEPT_LOGO'
            DataSource = dsDeptList
            Stretch = True
            Height = 126
          end
          object dxDBCheckEdit2: TdxDBCheckEdit
            Left = 14
            Top = 187
            Width = 205
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 7
            Caption = 'C'#243' t'#432' c'#225'ch ph'#225'p nh'#226'n'
            DataField = 'LEGAL_RIGHT'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
            NullStyle = nsUnchecked
          end
          object dxDBCheckEdit1: TdxDBCheckEdit
            Left = 246
            Top = 187
            Width = 205
            Color = 15466238
            ParentColor = False
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 8
            Caption = 'C'#243' quy'#7873'n ra quy'#7871't '#273#7883'nh'
            DataField = 'ORDER_RIGHT'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
            ValueChecked = '1'
            ValueUnchecked = '0'
            NullStyle = nsUnchecked
          end
          object dxDBEdit3: TdxDBEdit
            Left = 90
            Top = 289
            Width = 142
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 11
            DataField = 'DEPT_PHONE'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
          end
          object dxDBEdit4: TdxDBEdit
            Left = 273
            Top = 289
            Width = 143
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 12
            DataField = 'DEPT_FAX'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
          end
          object dxDBEdit5: TdxDBEdit
            Left = 90
            Top = 312
            Width = 142
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 13
            DataField = 'DEPT_EMAIL'
            DataSource = dsDeptList
            MaxLength = 0
            StyleController = dmMain.StyleController
            StoredValues = 2
          end
          object dxDBEdit6: TdxDBEdit
            Left = 273
            Top = 312
            Width = 143
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 14
            DataField = 'DEPT_WEBSITE'
            DataSource = dsDeptList
            MaxLength = 0
            StyleController = dmMain.StyleController
            StoredValues = 2
          end
          object dxDBMemo1: TdxDBMemo
            Left = 90
            Top = 335
            Width = 331
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 15
            DataField = 'DEPT_NOTE'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
            Height = 279
          end
          object dxDBEdit7: TdxDBEdit
            Left = 90
            Top = 266
            Width = 142
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 10
            DataField = 'DEPT_ADDRESS'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
          end
          object dxDBEdit8: TdxDBEdit
            Left = 90
            Top = 243
            Width = 343
            Style.BorderColor = 5146545
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 9
            DataField = 'MASO_THUE'
            DataSource = dsDeptList
            StyleController = dmMain.StyleController
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group1: TdxLayoutGroup
              Caption = 'Th'#244'ng tin chung'
              LayoutDirection = ldHorizontal
              object dxLayoutControl1Group3: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item1: TdxLayoutItem
                  Caption = 'M'#227' s'#7889' '
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  Caption = 'T'#234'n ph'#242'ng ban'
                  Control = dxDBEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  Caption = 'Ph'#226'n lo'#7841'i'
                  Control = dxDBPopupEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  Caption = #272#417'n v'#7883' c'#7845'p tr'#234'n'
                  Control = dxDBPopupEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Group2: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'B'#7855't '#273#7847'u'
                    Control = dxDBDateEdit2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item6: TdxLayoutItem
                    Caption = 'K'#7871't th'#250'c'
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Item7: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'dxDBGraphicEdit1'
                ShowCaption = False
                Control = dxDBGraphicEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group4: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              Caption = 'Quy'#7873'n h'#7841'n'
              LayoutDirection = ldHorizontal
              object dxLayoutControl1Item8: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'dxDBCheckEdit2'
                ShowCaption = False
                Control = dxDBCheckEdit2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item9: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'dxDBCheckEdit1'
                ShowCaption = False
                Control = dxDBCheckEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Group5: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Th'#244'ng tin li'#234'n l'#7841'c'
              object dxLayoutControl1Group9: TdxLayoutGroup
                Caption = 'New Group'
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Item16: TdxLayoutItem
                  Caption = 'M'#227' s'#7889' thu'#7871
                  Control = dxDBEdit8
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item15: TdxLayoutItem
                  Caption = #272#7883'a ch'#7881
                  Control = dxDBEdit7
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group8: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = #272'i'#7879'n tho'#7841'i'
                  Control = dxDBEdit3
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item11: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Fax'
                  Control = dxDBEdit4
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group7: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group6: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item12: TdxLayoutItem
                    Caption = 'Email'
                    Control = dxDBEdit5
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item13: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Website'
                    Control = dxDBEdit6
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Item14: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'Th'#244'ng tin th'#234'm'
                  CaptionOptions.AlignVert = tavTop
                  Control = dxDBMemo1
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem17: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = mainPanel
        ControlOptions.AutoColor = True
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
        Caption = 'Danh m'#7909'c t'#7893' ch'#7913'c - ph'#242'ng ban'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object dsDeptList: TDataSource
    DataSet = qryDeptList
    Left = 104
    Top = 184
  end
  object qryDeptList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_DEPARTMENT'
      'WHERE'
      '   DEPT_NO = :OLD_DEPT_NO')
    EditSQL.Strings = (
      'UPDATE HR_DEPARTMENT SET'
      '   DEPT_NO = :DEPT_NO, /*PK*/'
      '   DEPT_TYPE_NO = :DEPT_TYPE_NO,'
      '   DEPT_NAME = :DEPT_NAME,'
      '   P_DEPT_NO = :P_DEPT_NO,'
      '   FOUNDED_DATE = :FOUNDED_DATE,'
      '   ENDED_DATE = :ENDED_DATE,'
      '   ORDER_RIGHT = :ORDER_RIGHT,'
      '   LEGAL_RIGHT = :LEGAL_RIGHT,'
      '   DEPT_LOGO = :DEPT_LOGO,'
      '   IMG_TYPE = :IMG_TYPE,'
      '   DEPT_ADDRESS = :DEPT_ADDRESS,'
      '   DEPT_PHONE = :DEPT_PHONE,'
      '   DEPT_EMAIL = :DEPT_EMAIL,'
      '   DEPT_WEBSITE = :DEPT_WEBSITE,'
      '   DEPT_FAX = :DEPT_FAX,'
      '   DEPT_NOTE = :DEPT_NOTE,'
      '   ITEM_COLOR = :ITEM_COLOR,'
      '   MASO_THUE = :MASO_THUE'
      'WHERE'
      '   DEPT_NO = :OLD_DEPT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_DEPARTMENT('
      '   DEPT_NO, /*PK*/'
      '   DEPT_TYPE_NO,'
      '   DEPT_NAME,'
      '   P_DEPT_NO,'
      '   FOUNDED_DATE,'
      '   ENDED_DATE,'
      '   ORDER_RIGHT,'
      '   LEGAL_RIGHT,'
      '   DEPT_LOGO,'
      '   IMG_TYPE,'
      '   DEPT_ADDRESS,'
      '   DEPT_PHONE,'
      '   DEPT_EMAIL,'
      '   DEPT_WEBSITE,'
      '   DEPT_FAX,'
      '   DEPT_NOTE,'
      '   ITEM_COLOR,'
      '   MASO_THUE)'
      'VALUES ('
      '   :DEPT_NO,'
      '   :DEPT_TYPE_NO,'
      '   :DEPT_NAME,'
      '   :P_DEPT_NO,'
      '   :FOUNDED_DATE,'
      '   :ENDED_DATE,'
      '   :ORDER_RIGHT,'
      '   :LEGAL_RIGHT,'
      '   :DEPT_LOGO,'
      '   :IMG_TYPE,'
      '   :DEPT_ADDRESS,'
      '   :DEPT_PHONE,'
      '   :DEPT_EMAIL,'
      '   :DEPT_WEBSITE,'
      '   :DEPT_FAX,'
      '   :DEPT_NOTE,'
      '   :ITEM_COLOR,'
      '   :MASO_THUE)')
    KeyLinks.Strings = (
      'DEPT_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDeptListNewRecord
    SQL.Strings = (
      'SELECT A.DEPT_NO'
      '     , A.DEPT_TYPE_NO'
      '     , HR_DEPT_TYPE.DEPT_TYPE_NAME'
      '     , A.DEPT_NAME     '
      '     , A.P_DEPT_NO'
      '     , (SELECT HR_DEPARTMENT.DEPT_NAME from HR_DEPARTMENT where '
      '        HR_DEPARTMENT.DEPT_NO=A.P_DEPT_NO) P_DEPT_NAME'
      '     , A.FOUNDED_DATE'
      '     , A.ENDED_DATE'
      '     , A.ORDER_RIGHT'
      '     , A.LEGAL_RIGHT'
      '     , A.DEPT_LOGO'
      '     , A.IMG_TYPE'
      '     , A.DEPT_ADDRESS'
      '     , A.DEPT_PHONE'
      '     , A.DEPT_EMAIL'
      '     , A.DEPT_WEBSITE'
      '     , A.DEPT_FAX'
      '     , A.DEPT_NOTE'
      '     , A.ITEM_COLOR'
      '     , A.MASO_THUE'
      'FROM HR_DEPARTMENT A'
      
        'Left JOIN HR_DEPT_TYPE on A.DEPT_TYPE_NO=HR_DEPT_TYPE.DEPT_TYPE_' +
        'NO'
      'ORDER BY A.display_index, A.DEPT_NAME')
    FieldOptions = []
    Left = 104
    Top = 152
    object qryDeptListDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDeptListDEPT_NAME: TWideStringField
      DisplayWidth = 127
      FieldName = 'DEPT_NAME'
      Required = True
      OnChange = qryDeptListDEPT_NAMEChange
      Size = 127
    end
    object qryDeptListDEPT_TYPE_NO: TWideStringField
      FieldName = 'DEPT_TYPE_NO'
      Size = 15
    end
    object qryDeptListP_DEPT_NO: TWideStringField
      FieldName = 'P_DEPT_NO'
      Size = 15
    end
    object qryDeptListP_DEPT_NAME: TWideStringField
      DisplayWidth = 127
      FieldName = 'P_DEPT_NAME'
      OnChange = qryDeptListP_DEPT_NAMEChange
      Size = 127
    end
    object qryDeptListFOUNDED_DATE: TDateField
      FieldName = 'FOUNDED_DATE'
      LookupResultField = 'ENDED_DATE'
      Required = True
    end
    object qryDeptListENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
    object qryDeptListORDER_RIGHT: TSmallintField
      FieldName = 'ORDER_RIGHT'
    end
    object qryDeptListLEGAL_RIGHT: TSmallintField
      FieldName = 'LEGAL_RIGHT'
    end
    object qryDeptListDEPT_LOGO: TBlobField
      FieldName = 'DEPT_LOGO'
      Size = 8
    end
    object qryDeptListIMG_TYPE: TWideStringField
      FieldName = 'IMG_TYPE'
      Size = 15
    end
    object qryDeptListDEPT_ADDRESS: TWideStringField
      FieldName = 'DEPT_ADDRESS'
      Size = 126
    end
    object qryDeptListDEPT_PHONE: TWideStringField
      FieldName = 'DEPT_PHONE'
      Size = 30
    end
    object qryDeptListDEPT_EMAIL: TWideStringField
      FieldName = 'DEPT_EMAIL'
      Size = 30
    end
    object qryDeptListDEPT_WEBSITE: TWideStringField
      FieldName = 'DEPT_WEBSITE'
      Size = 30
    end
    object qryDeptListDEPT_FAX: TWideStringField
      FieldName = 'DEPT_FAX'
      Size = 30
    end
    object qryDeptListDEPT_NOTE: TWideStringField
      FieldName = 'DEPT_NOTE'
      Size = 3072
    end
    object qryDeptListDEPT_TYPE_NAME: TWideStringField
      FieldName = 'DEPT_TYPE_NAME'
      OnChange = qryDeptListDEPT_TYPE_NAMEChange
      Size = 63
    end
    object qryDeptListITEM_COLOR: TIntegerField
      FieldName = 'ITEM_COLOR'
    end
    object qryDeptListMASO_THUE: TWideStringField
      FieldName = 'MASO_THUE'
      Size = 63
    end
  end
  object IB_Events1: TIB_Events
    AlertOnRegister = False
    IB_Connection = dmMain.connMain
    Events.Strings = (
      'DEPT_NO CHANGE'
      'DEPT_NO DELETE')
    Passive = False
    OnEventAlert = IB_Events1EventAlert
    Left = 56
    Top = 72
  end
  object qryCheck: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'dept_name'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\SSP_HRM_3.0 Nang Cap\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select count(dept_no)'
      'from hr_department'
      'where dept_name=:dept_name')
    FieldOptions = []
    Left = 50
    Top = 146
    object qryCheckCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
end
