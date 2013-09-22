inherited frmMissionManager: TfrmMissionManager
  Left = 195
  Top = 178
  Width = 777
  Height = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 457
    Width = 769
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 769
    Height = 457
    inherited frameToolbar1: TframeToolbar
      Top = 422
    end
    object panelMain: TPanel [1]
      Left = 10
      Top = 10
      Width = 185
      Height = 41
      BevelOuter = bvNone
      TabOrder = 4
      object gridMission: TdxDBGrid
        Left = 0
        Top = 0
        Width = 225
        Height = 41
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'MISSION_NO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alLeft
        TabOrder = 0
        DataSource = dsMission
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object gridMissionMISSION_NAME: TdxDBGridColumn
          Caption = #272#7907't c'#244'ng t'#225'c'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MISSION_NAME'
          Caption_UTF7 = '+ARAe4w-t c+APQ-ng t+AOE-c'
        end
        object gridMissionFROM_DATE: TdxDBGridDateColumn
          Caption = 'T'#7915' ng'#224'y'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FROM_DATE'
          Caption_UTF7 = 'T+Hus ng+AOA-y'
        end
        object gridMissionTO_DATE: TdxDBGridDateColumn
          Caption = #273#7871'n ng'#224'y'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TO_DATE'
          Caption_UTF7 = '+AREevw-n ng+AOA-y'
        end
      end
      object ElSplitter1: TElSplitter
        Left = 225
        Top = 0
        Width = 5
        Height = 41
        Cursor = crHSplit
        SnapTopLeft = True
        SnapBottomRight = True
        ControlTopLeft = gridMission
        ControlBottomRight = panelRight
        AutoHide = False
        Align = alLeft
        BevelOuter = bvLowered
        UseXPThemes = False
      end
      object panelRight: TPanel
        Left = 230
        Top = 0
        Width = 519
        Height = 41
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 519
          Height = 41
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          object dxDBEdit1: TdxDBEdit
            Left = 72
            Top = 28
            Width = 100
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 0
            DataField = 'MISSION_NO'
            DataSource = dsMission
            StyleController = dmMain.StyleController
          end
          object dxDBEdit2: TdxDBEdit
            Left = 248
            Top = 28
            Width = 234
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 1
            DataField = 'MISSION_NAME'
            DataSource = dsMission
            StyleController = dmMain.StyleController
          end
          object dxMissionType: TdxDBImageEdit
            Left = 72
            Top = 57
            Width = 100
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 2
            DataField = 'MISSION_TYPE'
            DataSource = dsMission
            StyleController = dmMain.StyleController
            PopupBorder = pbFrame3D
          end
          object dxDBPopupEdit1: TdxDBPopupEdit
            Left = 248
            Top = 57
            Width = 234
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 5
            DataField = 'NATION_NAME'
            DataSource = dsMission
            StyleController = dmMain.StyleController
            OnCloseUp = dxDBPopupEdit1CloseUp
            OnInitPopup = dxDBPopupEdit1InitPopup
          end
          object dxDBEdit3: TdxDBEdit
            Left = 248
            Top = 86
            Width = 234
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 6
            DataField = 'TO_PLACE'
            DataSource = dsMission
            StyleController = dmMain.StyleController
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 72
            Top = 86
            Width = 100
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 3
            DataField = 'FROM_DATE'
            DataSource = dsMission
            StyleController = dmMain.StyleController
            PopupBorder = pbFrame3D
          end
          object dxDBDateEdit2: TdxDBDateEdit
            Left = 72
            Top = 115
            Width = 100
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 4
            DataField = 'TO_DATE'
            DataSource = dsMission
            StyleController = dmMain.StyleController
            PopupBorder = pbFrame3D
          end
          object dxDBMemo1: TdxDBMemo
            Left = 72
            Top = 144
            Width = 417
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = xbs3D
            Style.ButtonStyle = bts3D
            TabOrder = 7
            DataField = 'NOTE'
            DataSource = dsMission
            StyleController = dmMain.StyleController
            Height = 60
          end
          object gridMember: TdxDBGrid
            Left = 10
            Top = 222
            Width = 250
            Height = 129
            Bands = <
              item
                Caption = 'Th'#224'nh vi'#234'n '#273'o'#224'n c'#244'ng t'#225'c'
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'EMPLOYEE_NO'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 8
            DataSource = dsMember
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            ShowBands = True
            object gridMemberEMPLOYEE_NO: TdxDBGridColumn
              Caption = 'M'#227' NV'
              Color = clInfoBk
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EMPLOYEE_NO'
              Caption_UTF7 = 'M+AOM NV'
            end
            object gridMemberFULL_NAME: TdxDBGridPopupColumn
              Caption = 'H'#7885' v'#224' t'#234'n '
              HeaderAlignment = taCenter
              Width = 129
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FULL_NAME'
              OnCloseUp = gridMemberFULL_NAMECloseUp
              OnInitPopup = gridMemberFULL_NAMEInitPopup
              Caption_UTF7 = 'H+Hs0 v+AOA t+AOo-n '
            end
            object gridMemberPOSITION_TITLE: TdxDBGridColumn
              Caption = 'Ch'#7913'c danh c'#244'ng t'#225'c'
              HeaderAlignment = taCenter
              Visible = False
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'POSITION_TITLE'
              Caption_UTF7 = 'Ch+Huk-c danh c+APQ-ng t+AOE-c'
            end
            object gridMemberMISSION_DUTY: TdxDBGridColumn
              Caption = 'V'#7883' tr'#237' trong '#273'o'#224'n'
              HeaderAlignment = taCenter
              Width = 135
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MISSION_DUTY'
              Caption_UTF7 = 'V+Hss tr+AO0 trong +ARE-o+AOA-n'
            end
            object gridMemberBUSSINESS_EXPENSE: TdxDBGridCalcColumn
              Caption = 'Ph'#237' c'#244'ng t'#225'c'
              HeaderAlignment = taCenter
              Width = 111
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BUSSINESS_EXPENSE'
              Caption_UTF7 = 'Ph+AO0 c+APQ-ng t+AOE-c'
            end
            object gridMemberCURRENCY_NAME: TdxDBGridPopupColumn
              Caption = 'Ti'#7873'n t'#7879
              HeaderAlignment = taCenter
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CURRENCY_NAME'
              OnCloseUp = gridMemberCURRENCY_NAMECloseUp
              OnInitPopup = gridMemberCURRENCY_NAMEInitPopup
              Caption_UTF7 = 'Ti+HsE-n t+Hsc'
            end
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group1: TdxLayoutGroup
              Caption = 'Th'#244'ng tin chung'
              object dxLayoutControl1Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item1: TdxLayoutItem
                  Caption = 'K'#253' hi'#7879'u '
                  Control = dxDBEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = #272#7907't c'#244'ng t'#225'c '
                  Control = dxDBEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Group5: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl1Item3: TdxLayoutItem
                    Caption = 'Ph'#226'n lo'#7841'i'
                    Control = dxMissionType
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item4: TdxLayoutItem
                    Caption = 'T'#7915' ng'#224'y '
                    Control = dxDBDateEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item5: TdxLayoutItem
                    Caption = #273#7871'n ng'#224'y'
                    Control = dxDBDateEdit2
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Group2: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxlcNation: TdxLayoutItem
                    Caption = 'Qu'#7889'c gia '#273#7871'n'
                    Control = dxDBPopupEdit1
                    ControlOptions.ShowBorder = False
                  end
                  object dxlcToPlace: TdxLayoutItem
                    Caption = 'N'#417'i '#273#7871'n '
                    Control = dxDBEdit3
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Item6: TdxLayoutItem
                Caption = 'Ghi ch'#250
                CaptionOptions.AlignVert = tavTop
                Control = dxDBMemo1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Control = gridMember
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainItem2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Panel1'
        ShowCaption = False
        Control = panelMain
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
        Caption = 'Qu'#7843'n l'#253' c'#244'ng t'#225'c'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 16
    Top = 16
  end
  object dsMission: TDataSource
    DataSet = qryMission
    Left = 64
    Top = 112
  end
  object qryMission: TIBOQuery
    Params = <>
    DatabaseName = 'D:\SSP-HRM2.1\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_MISSION'
      'WHERE'
      '   MISSION_NO = :OLD_MISSION_NO')
    EditSQL.Strings = (
      'UPDATE HR_MISSION SET'
      '   MISSION_NO = :MISSION_NO, /*PK*/'
      '   MISSION_NAME = :MISSION_NAME,'
      '   MISSION_TYPE = :MISSION_TYPE,'
      '   TO_NATION = :TO_NATION,'
      '   TO_PLACE = :TO_PLACE,'
      '   FROM_DATE = :FROM_DATE,'
      '   TO_DATE = :TO_DATE,'
      '   NOTE = :NOTE'
      'WHERE'
      '   MISSION_NO = :OLD_MISSION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_MISSION('
      '   MISSION_NO, /*PK*/'
      '   MISSION_NAME,'
      '   MISSION_TYPE,'
      '   TO_NATION,'
      '   TO_PLACE,'
      '   FROM_DATE,'
      '   TO_DATE,'
      '   NOTE)'
      'VALUES ('
      '   :MISSION_NO,'
      '   :MISSION_NAME,'
      '   :MISSION_TYPE,'
      '   :TO_NATION,'
      '   :TO_PLACE,'
      '   :FROM_DATE,'
      '   :TO_DATE,'
      '   :NOTE)')
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryMissionAfterScroll
    AfterPost = qryMissionAfterPost
    OnNewRecord = qryMissionNewRecord
    SQL.Strings = (
      'SELECT MISSION_NO'
      '     , MISSION_NAME'
      '     , MISSION_TYPE'
      '     , TO_NATION'
      '     , NATION_NAME'
      '     , TO_PLACE'
      '     , FROM_DATE'
      '     , TO_DATE'
      '     , NOTE'
      'FROM HR_MISSION'
      'LEFT JOIN HR_NATION on TO_NATION=NATION_NO')
    FieldOptions = []
    Left = 67
    Top = 75
    object qryMissionMISSION_NO: TWideStringField
      FieldName = 'MISSION_NO'
      Required = True
      Size = 30
    end
    object qryMissionMISSION_NAME: TWideStringField
      FieldName = 'MISSION_NAME'
      Required = True
      Size = 126
    end
    object qryMissionMISSION_TYPE: TSmallintField
      FieldName = 'MISSION_TYPE'
      Required = True
      OnChange = qryMissionMISSION_TYPEChange
    end
    object qryMissionTO_NATION: TWideStringField
      FieldName = 'TO_NATION'
      Size = 30
    end
    object qryMissionNATION_NAME: TWideStringField
      FieldName = 'NATION_NAME'
      OnChange = qryMissionNATION_NAMEChange
      Size = 126
    end
    object qryMissionTO_PLACE: TWideStringField
      FieldName = 'TO_PLACE'
      Required = True
      Size = 255
    end
    object qryMissionFROM_DATE: TDateField
      FieldName = 'FROM_DATE'
      LookupResultField = 'TO_DATE'
      Required = True
    end
    object qryMissionTO_DATE: TDateField
      FieldName = 'TO_DATE'
    end
    object qryMissionNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object qryMember: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'MISSION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\SSP-HRM2.1\VanTaiBiaSG\Database\SSP_HRM_DB_VanTaiBiaSG.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_MISSION_MEMBER'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   MISSION_NO = :OLD_MISSION_NO')
    EditSQL.Strings = (
      'UPDATE HR_MISSION_MEMBER SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   MISSION_NO = :MISSION_NO, /*PK*/'
      '   MISSION_DUTY = :MISSION_DUTY,'
      '   POSITION_TITLE = :POSITION_TITLE,'
      '   BUSSINESS_EXPENSE = :BUSSINESS_EXPENSE,'
      '   CURRENCY_NO = :CURRENCY_NO'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   MISSION_NO = :OLD_MISSION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_MISSION_MEMBER('
      '   EMPLOYEE_NO, /*PK*/'
      '   MISSION_NO, /*PK*/'
      '   MISSION_DUTY,'
      '   POSITION_TITLE,'
      '   BUSSINESS_EXPENSE,'
      '   CURRENCY_NO)'
      'VALUES ('
      '   :EMPLOYEE_NO,'
      '   :MISSION_NO,'
      '   :MISSION_DUTY,'
      '   :POSITION_TITLE,'
      '   :BUSSINESS_EXPENSE,'
      '   :CURRENCY_NO)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsMission
    SQL.Strings = (
      'SELECT MISSION_NO'
      '     , HR_MISSION_MEMBER.EMPLOYEE_NO'
      '     , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'|| FIRST_NAME FULL_NAME'
      '     , MISSION_DUTY'
      '     , POSITION_TITLE'
      '     , BUSSINESS_EXPENSE'
      '     , HR_MISSION_MEMBER.CURRENCY_NO'
      '     , CURRENCY_NAME'
      'FROM HR_MISSION_MEMBER'
      
        'JOIN HR_EMPLOYEE on HR_MISSION_MEMBER.EMPLOYEE_NO=HR_EMPLOYEE.EM' +
        'PLOYEE_NO'
      
        'LefT JOIN HR_CURRENCY on HR_MISSION_MEMBER.CURRENCY_NO=HR_CURREN' +
        'CY.CURRENCY_NO'
      'where MISSION_NO=:MISSION_NO')
    FieldOptions = []
    Left = 107
    Top = 75
    object qryMemberMISSION_NO: TWideStringField
      FieldName = 'MISSION_NO'
      Required = True
      Size = 30
    end
    object qryMemberEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryMemberFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      OnChange = qryMemberFULL_NAMEChange
      Size = 125
    end
    object qryMemberMISSION_DUTY: TWideStringField
      FieldName = 'MISSION_DUTY'
      Size = 126
    end
    object qryMemberPOSITION_TITLE: TWideStringField
      FieldName = 'POSITION_TITLE'
      Size = 126
    end
    object qryMemberBUSSINESS_EXPENSE: TIBOFloatField
      FieldName = 'BUSSINESS_EXPENSE'
    end
    object qryMemberCURRENCY_NO: TWideStringField
      FieldName = 'CURRENCY_NO'
      Size = 30
    end
    object qryMemberCURRENCY_NAME: TWideStringField
      FieldName = 'CURRENCY_NAME'
      OnChange = qryMemberCURRENCY_NAMEChange
      Size = 63
    end
  end
  object dsMember: TDataSource
    DataSet = qryMember
    Left = 104
    Top = 112
  end
end
