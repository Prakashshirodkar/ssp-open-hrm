object CaptionListFrm: TCaptionListFrm
  Left = 189
  Top = 220
  Width = 721
  Height = 492
  HelpContext = 10
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Tag = -2
    Left = 0
    Top = 0
    Width = 713
    Height = 458
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    DesignSize = (
      713
      458)
    object gridCaption: TdxDBGrid
      Left = 2
      Top = 2
      Width = 941
      Height = 417
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'K_FIELD'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandColor = clInactiveBorder
      BandFont.Charset = ANSI_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsCap
      DefaultRowHeight = 18
      Filter.Criteria = {00000000}
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoHorzThrough, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      RowSeparatorLineWidth = 2
      OnCustomDrawCell = gridCaptionCustomDrawCell
      Anchors = [akLeft, akTop, akRight, akBottom]
      object gridCaptionFORM_NAME: TdxDBGridMaskColumn
        Caption = 'T'#234'n form'
        Color = clInfoBk
        DisableEditor = True
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORM_NAME'
        Caption_UTF7 = 'T+AOo-n form'
      end
      object gridCaptionCONTROL_NAME: TdxDBGridColumn
        Caption = 'T'#234'n control'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTROL_NAME'
        Caption_UTF7 = 'T+AOo-n control'
      end
      object gridCaptionPARENT_CONTROL: TdxDBGridMaskColumn
        Caption = 'Control cha'
        Color = clInfoBk
        DisableEditor = True
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARENT_CONTROL'
      end
      object gridCaptionCONTROL_TYPE: TdxDBGridMaskColumn
        Caption = 'Lo'#7841'i '#273#7889'i t'#432#7907'ng'
        Color = clInfoBk
        DisableEditor = True
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTROL_TYPE'
        Caption_UTF7 = 'Lo+HqE-i +AREe0Q-i t+AbAe4w-ng'
      end
      object gridCaptionCAPTION_DEFAULT: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Ti'#234'u '#273#7873' m'#7863'c '#273#7883'nh'
        Color = clInfoBk
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPTION_DEFAULT'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ m+Hrc-c +AREeyw-nh'
      end
      object gridCaptionHINT_DEFAULT: TdxDBGridMaskColumn
        Caption = 'Ch'#250' th'#237'ch m'#7863'c '#273#7883'nh'
        Color = clInfoBk
        DisableEditor = True
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HINT_DEFAULT'
        Caption_UTF7 = 'Ch+APo th+AO0-ch m+Hrc-c +AREeyw-nh'
      end
      object gridCaptionCAPTION_VN: TdxDBGridColumn
        Caption = 'Ti'#234'u '#273#7873' Ti'#7871'ng Vi'#7879't'
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPTION_VN'
        Caption_UTF7 = 'Ti+AOo-u +AREewQ Ti+Hr8-ng Vi+Hsc-t'
      end
      object gridCaptionCAPTION_ENG: TdxDBGridColumn
        Caption = 'English Title'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPTION_ENG'
      end
      object gridCaptionHINT_VN: TdxDBGridMaskColumn
        Caption = 'Ch'#250' th'#237'ch ti'#7871'ng Vi'#7879't'
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HINT_VN'
        Caption_UTF7 = 'Ch+APo th+AO0-ch ti+Hr8-ng Vi+Hsc-t'
      end
      object gridCaptionHINT_ENG: TdxDBGridMaskColumn
        Caption = 'English hint'
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HINT_ENG'
      end
    end
    object btnReRead: TElPopupButton
      Left = 2
      Top = 431
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Qu'#233't'
      TabOrder = 4
      Color = 15466238
      ParentColor = False
      OnClick = btnReReadClick
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 561
      Top = 431
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'T&r'#7907' gi'#250'p'
      TabOrder = 8
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 636
      Top = 431
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 2
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton4: TElPopupButton
      Left = 77
      Top = 431
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 5
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton4Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton1: TElPopupButton
      Left = 247
      Top = 431
      Width = 75
      Height = 22
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&'#193'p d'#7909'ng'
      TabOrder = 7
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton1Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 152
      Top = 431
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'X'#243'a &t'#7845't c'#7843
      TabOrder = 6
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton5Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object pgBar: TProgressBar
      Left = 322
      Top = 433
      Width = 220
      Height = 20
      Step = 1
      TabOrder = 10
    end
    object ElPopupButton6: TElPopupButton
      Left = 636
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'Th'#7921'c thi'
      TabOrder = 3
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton6Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton7: TElPopupButton
      Left = 561
      Top = 406
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'L'#224'm m'#7899'i'
      TabOrder = 2
      Color = 15466238
      ParentColor = False
      OnClick = ElPopupButton7Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxMemo1: TElAdvancedMemo
      Left = 3
      Top = 320
      Width = 185
      Height = 85
      BorderStyle = bsNone
      Lines.Strings = (
        '')
      TabOrder = 1
      BorderSides = [ebsLeft, ebsRight, ebsTop, ebsBottom]
      LineBorderActiveColor = clBlack
      LineBorderInactiveColor = clBlack
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'dxDBGrid1'
        ShowCaption = False
        Control = gridCaption
        ControlOptions.ShowBorder = False
      end
      object locFormGroup2: TdxLayoutGroup
        ShowCaption = False
        Visible = False
        Hidden = True
        ShowBorder = False
        object locFormItem12: TdxLayoutItem
          Caption = 'SQL Script '
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Layout = clTop
          Control = dxMemo1
        end
        object locFormGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object locFormItem11: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'ElPopupButton7'
            CaptionOptions.AlignVert = tavTop
            ShowCaption = False
            Control = ElPopupButton7
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem10: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            Caption = 'ElPopupButton6'
            CaptionOptions.AlignVert = tavTop
            ShowCaption = False
            Control = ElPopupButton6
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object locFormGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object locFormItem2: TdxLayoutItem
          Caption = 'ElPopupButton1'
          ShowCaption = False
          Control = btnReRead
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem5: TdxLayoutItem
          Caption = 'ElPopupButton4'
          ShowCaption = False
          Control = ElPopupButton4
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem6: TdxLayoutItem
          Caption = 'ElPopupButton5'
          ShowCaption = False
          Control = ElPopupButton5
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem9: TdxLayoutItem
          Caption = 'ElPopupButton1'
          Offsets.Left = 20
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem7: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avCenter
          Caption = 'ProgressBar1'
          ShowCaption = False
          Control = pgBar
          ControlOptions.ShowBorder = False
        end
        object locFormItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton2'
          ShowCaption = False
          Control = ElPopupButton2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object locFormItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'ElPopupButton3'
          ShowCaption = False
          Control = ElPopupButton3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Caption = 'T'#249'y ch'#7885'n hi'#7875'n th'#7883' tr'#234'n giao di'#7879'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 232
    Top = 72
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'Excel Files|*.xls'
    Left = 184
    Top = 72
  end
  object qryCap: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'FORM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PARAM_TYPE=1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARAM_TYPE=0'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM CAPTION_LIST'
      'WHERE'
      '   CONTROL_NAME = :OLD_CONTROL_NAME AND'
      '   CONTROL_TYPE = :OLD_CONTROL_TYPE AND'
      '   FORM_NAME = :OLD_FORM_NAME AND'
      '   PARENT_CONTROL = :OLD_PARENT_CONTROL')
    EditSQL.Strings = (
      'UPDATE CAPTION_LIST SET'
      '   CONTROL_NAME = :CONTROL_NAME, /*PK*/'
      '   CONTROL_TYPE = :CONTROL_TYPE, /*PK*/'
      '   FORM_NAME = :FORM_NAME, /*PK*/'
      '   PARENT_CONTROL = :PARENT_CONTROL, /*PK*/'
      '   CAPTION_VN = :CAPTION_VN,'
      '   CAPTION_ENG = :CAPTION_ENG,'
      '   CAPTION_DEFAULT = :CAPTION_DEFAULT,'
      '   HINT_VN = :HINT_VN,'
      '   HINT_ENG = :HINT_ENG,'
      '   HINT_DEFAULT = :HINT_DEFAULT'
      'WHERE'
      '   CONTROL_NAME = :OLD_CONTROL_NAME AND'
      '   CONTROL_TYPE = :OLD_CONTROL_TYPE AND'
      '   FORM_NAME = :OLD_FORM_NAME AND'
      '   PARENT_CONTROL = :OLD_PARENT_CONTROL')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO CAPTION_LIST('
      '   CONTROL_NAME, /*PK*/'
      '   CONTROL_TYPE, /*PK*/'
      '   FORM_NAME, /*PK*/'
      '   PARENT_CONTROL, /*PK*/'
      '   CAPTION_VN,'
      '   CAPTION_ENG,'
      '   CAPTION_DEFAULT,'
      '   HINT_VN,'
      '   HINT_ENG,'
      '   HINT_DEFAULT)'
      'VALUES ('
      '   :CONTROL_NAME,'
      '   :CONTROL_TYPE,'
      '   :FORM_NAME,'
      '   :PARENT_CONTROL,'
      '   :CAPTION_VN,'
      '   :CAPTION_ENG,'
      '   :CAPTION_DEFAULT,'
      '   :HINT_VN,'
      '   :HINT_ENG,'
      '   :HINT_DEFAULT)')
    KeyLinks.Strings = (
      'CAPTION_LIST.FORM_NAME'
      'CAPTION_LIST.CONTROL_NAME'
      'CAPTION_LIST.PARENT_CONTROL'
      'CAPTION_LIST.CONTROL_TYPE')
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryCapBeforeDelete
    AfterDelete = qryCapAfterDelete
    AfterPost = qryCapAfterPost
    SQL.Strings = (
      'SELECT'
      
        '       FORM_NAME||CONTROL_NAME||PARENT_CONTROL||CONTROL_TYPE K_F' +
        'IELD'
      '     ,  FORM_NAME'
      '     , CONTROL_NAME'
      '     , CAPTION_VN'
      '     , CAPTION_ENG'
      '     , CAPTION_DEFAULT'
      '     , PARENT_CONTROL'
      '     , CONTROL_TYPE'
      '     , HINT_VN'
      '     , HINT_ENG'
      '     , HINT_DEFAULT'
      'FROM CAPTION_LIST'
      'WHERE (:FORM_NAME containing FORM_NAME and'
      '      :PARAM_TYPE=1)'
      '      or'
      '      (FORM_NAME=:FORM_NAME and '
      '      :PARAM_TYPE=0)'
      '      ')
    FieldOptions = []
    Left = 88
    Top = 78
    object qryCapK_FIELD: TWideStringField
      FieldName = 'K_FIELD'
      ReadOnly = True
      Required = True
      Size = 186
    end
    object qryCapFORM_NAME: TWideStringField
      FieldName = 'FORM_NAME'
      Required = True
      Size = 30
    end
    object qryCapCONTROL_NAME: TWideStringField
      FieldName = 'CONTROL_NAME'
      Required = True
      Size = 63
    end
    object qryCapCAPTION_VN: TWideStringField
      FieldName = 'CAPTION_VN'
      Size = 3072
    end
    object qryCapCAPTION_ENG: TWideStringField
      FieldName = 'CAPTION_ENG'
      Size = 3072
    end
    object qryCapCAPTION_DEFAULT: TWideStringField
      FieldName = 'CAPTION_DEFAULT'
      Size = 3072
    end
    object qryCapPARENT_CONTROL: TWideStringField
      FieldName = 'PARENT_CONTROL'
      Required = True
      Size = 63
    end
    object qryCapCONTROL_TYPE: TWideStringField
      FieldName = 'CONTROL_TYPE'
      Required = True
      Size = 30
    end
    object qryCapHINT_VN: TWideStringField
      FieldName = 'HINT_VN'
      Size = 3072
    end
    object qryCapHINT_ENG: TWideStringField
      FieldName = 'HINT_ENG'
      Size = 3072
    end
    object qryCapHINT_DEFAULT: TWideStringField
      FieldName = 'HINT_DEFAULT'
      Size = 3072
    end
  end
  object dsCap: TDataSource
    DataSet = qryCap
    Left = 88
    Top = 112
  end
  object scrCustomize: TIB_Script
    SQL.Strings = (
      'delete from caption_list where'
      '  ('
      '  (control_name like '#39'ppLabel%'#39') or'
      '  ('
      '    (hint_default is null'
      '     or hint_default='#39#39
      '     or hint_default='#39#39
      '    ) and'
      '    ('
      '    caption_default is null or'
      '    caption_default='#39#39' or'
      '    caption_default='#39' '#39' or'
      '    caption_default like '#39'dx%'#39' or'
      '    caption_default like '#39'ppLabel%'#39' or'
      '    caption_default like '#39'El%'#39' or'
      '    caption_default like '#39'btn%'#39' or'
      '    caption_default like '#39'Tnt%'#39' or'
      '    caption_default like '#39'Panel%'#39
      '    )'
      ' )'
      ' ) '
      '')
    Left = 192
    Top = 248
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      '')
    FieldOptions = []
    Left = 248
    Top = 190
  end
end
