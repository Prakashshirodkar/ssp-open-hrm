inherited frmEmpMoreInput: TfrmEmpMoreInput
  Left = 309
  Top = 233
  Width = 638
  Height = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 368
    Width = 630
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 630
    Height = 368
    LookAndFeel = dmMain.StyleWeb
    inherited frameToolbar1: TframeToolbar
      Left = 2
      Top = 341
      Color = 15466238
      TabOrder = 3
      inherited dxLayoutControl1: TdxLayoutControl
        inherited dxLayoutControl1Group_Root: TdxLayoutGroup
          inherited dxLayoutControl1Group1: TdxLayoutGroup
            inherited dxlctrlInsert: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlInsertCopy: TdxLayoutItem
              Visible = False
            end
            inherited dxlctrlDelete: TdxLayoutItem
              Visible = False
            end
          end
        end
      end
    end
    inherited dxdbgMain: TdxDBGrid
      Left = 3
      Top = 59
      Bands = <
        item
          Caption = 'Nh'#226'n vi'#234'n'
          Fixed = bfLeft
        end
        item
          Caption = 'Tr'#236'nh '#273#7897' h'#7885'c v'#7845'n'
          Width = 802
        end
        item
          Caption = 'Tham gia '#273'o'#224'n th'#7875
          Width = 755
        end
        item
          Caption = 'Kh'#225'c'
        end>
      DefaultLayout = False
      KeyField = 'EMPLOYEE_NO'
      TabOrder = 2
      Filter.Criteria = {00000000}
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
      OptionsView = [edgoBandHeaderWidth, edgoUseBitmap]
      ShowBands = True
      object dxdbgMainPORTRAIT: TdxDBGridGraphicColumn
        Caption = 'H'#236'nh ch'#226'n dung'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 1
        FieldName = 'PORTRAIT'
        QuickDraw = True
        Caption_UTF7 = 'H+AOw-nh ch+AOI-n dung'
      end
      object dxdbgMainIMG_TYPE: TdxDBGridColumn
        Caption = 'Ki'#7875'u h'#236'nh'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMG_TYPE'
        Caption_UTF7 = 'Ki+HsM-u h+AOw-nh'
      end
      object dxdbgMainEMPLOYEE_NO: TdxDBGridColumn
        Caption = 'M'#227' nh'#226'n vi'#234'n'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPLOYEE_NO'
        Caption_UTF7 = 'M+AOM nh+AOI-n vi+AOo-n'
      end
      object dxdbgMainFULL_NAME: TdxDBGridColumn
        Caption = 'H'#7885' t'#234'n '#273#7847'y '#273#7911
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FULL_NAME'
        Caption_UTF7 = 'H+Hs0 t+AOo-n +AREepw-y +AREe5w'
      end
      object dxdbgMainACADEMIC_NAME: TdxDBGridMRUColumn
        Caption = 'Tr'#236'nh '#273#7897' v'#259'n h'#243'a'
        HeaderAlignment = taCenter
        Width = 110
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ACADEMIC_NAME'
        ImmediateDropDown = True
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q v+AQM-n h+APM-a'
      end
      object dxdbgMainTEN_TRINH_DO: TdxDBGridMRUColumn
        Caption = 'Tr'#236'nh '#273#7897' h'#7885'c v'#7845'n'
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TEN_TRINH_DO'
        ImmediateDropDown = True
        Caption_UTF7 = 'Tr+AOw-nh +AREe2Q h+Hs0-c v+HqU-n'
      end
      object dxdbgMainNAM_TOTNGHIEP: TdxDBGridSpinColumn
        Caption = 'N'#259'm TN'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NAM_TOTNGHIEP'
        MinValue = 1900.000000000000000000
        MaxValue = 3000.000000000000000000
        Caption_UTF7 = 'N+AQM-m TN'
      end
      object dxdbgMainTOTNGHIEP_TAI: TdxDBGridColumn
        Caption = 'T'#7889't nghi'#7879'p t'#7841'i'
        HeaderAlignment = taCenter
        Width = 133
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TOTNGHIEP_TAI'
        Caption_UTF7 = 'T+HtE-t nghi+Hsc-p t+HqE-i'
      end
      object dxdbgMainTEN_NGHE_NGHIEP: TdxDBGridMRUColumn
        Caption = 'Ngh'#7873' nghi'#7879'p'
        HeaderAlignment = taCenter
        Width = 135
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TEN_NGHE_NGHIEP'
        ImmediateDropDown = True
        Caption_UTF7 = 'Ngh+HsE nghi+Hsc-p'
      end
      object dxdbgMainSOTRUONG_CTAC: TdxDBGridColumn
        Caption = 'S'#7903' tr'#432#7901'ng c'#244'ng t'#225'c'
        HeaderAlignment = taCenter
        Width = 135
        BandIndex = 1
        RowIndex = 0
        FieldName = 'SOTRUONG_CTAC'
        Caption_UTF7 = 'S+Ht8 tr+AbAe3Q-ng c+APQ-ng t+AOE-c'
      end
      object dxdbgMainCONGVIEC_LAUNHAT: TdxDBGridColumn
        Caption = 'C'#244'ng vi'#7879'c l'#226'u nh'#7845't'
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CONGVIEC_LAUNHAT'
        Caption_UTF7 = 'C+APQ-ng vi+Hsc-c l+AOI-u nh+HqU-t'
      end
      object dxdbgMainNGAY_VAO_CONGTY: TdxDBGridDateColumn
        Caption = 'Ng'#224'y v'#224'o c'#244'ng ty'
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NGAY_VAO_CONGTY'
        Caption_UTF7 = 'Ng+AOA-y v+AOA-o c+APQ-ng ty'
      end
      object dxdbgMainNGAY_VAO_DOAN: TdxDBGridDateColumn
        Caption = 'Ng'#224'y v'#224'o '#272'o'#224'n'
        HeaderAlignment = taCenter
        Width = 95
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NGAY_VAO_DOAN'
        Caption_UTF7 = 'Ng+AOA-y v+AOA-o +ARA-o+AOA-n'
      end
      object dxdbgMainTEN_CHUCVU_DOAN: TdxDBGridMRUColumn
        Caption = 'Ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 130
        BandIndex = 2
        RowIndex = 0
        FieldName = 'TEN_CHUCVU_DOAN'
        ImmediateDropDown = True
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object dxdbgMainNGAY_VAO_DANG: TdxDBGridDateColumn
        Caption = 'Ng'#224'y v'#224'o '#272#7843'ng'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NGAY_VAO_DANG'
        Caption_UTF7 = 'Ng+AOA-y v+AOA-o +ARAeow-ng'
      end
      object dxdbgMainTEN_CHUCVU_DANG: TdxDBGridMRUColumn
        Caption = 'Ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 130
        BandIndex = 2
        RowIndex = 0
        FieldName = 'TEN_CHUCVU_DANG'
        ImmediateDropDown = True
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object dxdbgMainNGAY_VAO_CDOAN: TdxDBGridDateColumn
        Caption = 'Ng'#224'y v'#224'o c'#244'ng '#273'o'#224'n'
        HeaderAlignment = taCenter
        Width = 111
        BandIndex = 2
        RowIndex = 0
        FieldName = 'NGAY_VAO_CDOAN'
        Caption_UTF7 = 'Ng+AOA-y v+AOA-o c+APQ-ng +ARE-o+AOA-n'
      end
      object dxdbgMainTEN_CHUCVU_CDOAN: TdxDBGridMRUColumn
        Caption = 'Ch'#7913'c v'#7909
        HeaderAlignment = taCenter
        Width = 130
        BandIndex = 2
        RowIndex = 0
        FieldName = 'TEN_CHUCVU_CDOAN'
        ImmediateDropDown = True
        Caption_UTF7 = 'Ch+Huk-c v+HuU'
      end
      object dxdbgMainCHIEU_CAO: TdxDBGridCalcColumn
        Caption = 'Chi'#7873'u cao (cm)'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CHIEU_CAO'
        Caption_UTF7 = 'Chi+HsE-u cao (cm)'
      end
      object dxdbgMainCAN_NANG: TdxDBGridCalcColumn
        Caption = 'C'#226'n n'#7863'ng (kg)'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 3
        RowIndex = 0
        FieldName = 'CAN_NANG'
        Caption_UTF7 = 'C+AOI-n n+Hrc-ng (kg)'
      end
      object dxdbgMainDAUVET_DACBIET: TdxDBGridColumn
        Caption = 'D'#7845'u v'#7871't '#273#7863'c bi'#7879't'
        HeaderAlignment = taCenter
        Width = 120
        BandIndex = 3
        RowIndex = 0
        FieldName = 'DAUVET_DACBIET'
        Caption_UTF7 = 'D+HqU-u v+Hr8-t +AREetw-c bi+Hsc-t'
      end
    end
    object dximOption: TdxImageEdit [2]
      Left = 119
      Top = 28
      Width = 121
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      StyleController = dmMain.StyleController
      OnChange = dximOptionChange
      DropDownRows = 16777223
    end
    object dxDisplayPortrait: TdxCheckEdit [3]
      Left = 322
      Top = 28
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      StyleController = dmMain.StyleController
      OnChange = acChangeOptionExecute
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxlcMainGroup1: TdxLayoutGroup [0]
        Caption = 'T'#249'y ch'#7885'n xem d'#7919' li'#7879'u'
        LayoutDirection = ldHorizontal
        object dxlcMainItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ph'#226'n nh'#243'm nh'#226'n vi'#234'n'
          Control = dximOption
          ControlOptions.ShowBorder = False
        end
        object dxlcMainItem4: TdxLayoutItem
          Caption = 'Hi'#7875'n th'#7883' h'#236'nh '#7843'nh'
          Control = dxDisplayPortrait
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
        Caption = 'Danh s'#225'ch nh'#226'n vi'#234'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 128
  end
  inherited qryList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USER_NAME'
        ParamType = ptUnknown
      end>
    EditSQL.Strings = (
      'UPDATE HR_EMP_PRIVATE_INFO SET'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   NGAY_VAO_DANG = :NGAY_VAO_DANG,'
      '   NGAY_VAO_DOAN = :NGAY_VAO_DOAN,'
      '   CHUC_VU_DANG = :CHUC_VU_DANG,'
      '   CHUC_VU_DOAN = :CHUC_VU_DOAN,'
      '   TRINH_DO = :TRINH_DO,'
      '   CONGVIEC_LAUNHAT = :CONGVIEC_LAUNHAT,'
      '   SOTRUONG_CTAC = :SOTRUONG_CTAC,'
      '   NAM_TOTNGHIEP = :NAM_TOTNGHIEP,'
      '   TOTNGHIEP_TAI = :TOTNGHIEP_TAI,'
      '   NGAY_VAO_CDOAN = :NGAY_VAO_CDOAN,'
      '   CHUC_VU_CDOAN = :CHUC_VU_CDOAN,'
      '   NGHE_NGHIEP = :NGHE_NGHIEP,'
      '   NGAY_VAO_CONGTY = :NGAY_VAO_CONGTY,'
      '   TRINHDO_VANHOA = :TRINHDO_VANHOA,'
      '   CHIEU_CAO = :CHIEU_CAO,'
      '   CAN_NANG = :CAN_NANG,'
      '   DAUVET_DACBIET = :DAUVET_DACBIET'
      'WHERE'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    SQL.Strings = (
      'SELECT '
      '      PORTRAIT'
      '     ,IMG_TYPE'
      '     , HR_EMP_PRIVATE_INFO.EMPLOYEE_NO'
      '     , FULL_NAME'
      '     , NGAY_VAO_DANG'
      '     , NGAY_VAO_DOAN'
      '     , CHUC_VU_DANG'
      '     , CHUC_VU_DOAN'
      '     , TRINH_DO'
      '     , HR_EDU_LEVEL.EDU_LEVEL_NAME TEN_TRINH_DO'
      '     , CONGVIEC_LAUNHAT'
      '     , SOTRUONG_CTAC'
      '     , NAM_TOTNGHIEP'
      '     , TOTNGHIEP_TAI'
      '     , NGAY_VAO_CDOAN'
      '     , CHUC_VU_CDOAN'
      '     , NGHE_NGHIEP'
      '     , CAREER_NAME TEN_NGHE_NGHIEP'
      '     , NGAY_VAO_CONGTY'
      '     , HR_CHUCVU_DANG.TEN_CHUCVU TEN_CHUCVU_DANG'
      '     , HR_CHUCVU_DOAN.TEN_CHUCVU TEN_CHUCVU_DOAN'
      '     , HR_CHUCVU_CDOAN.TEN_CHUCVU TEN_CHUCVU_CDOAN'
      '     , TRINHDO_VANHOA'
      '     , ACADEMIC_NAME'
      '     , CHIEU_CAO'
      '     , CAN_NANG'
      '     , DAUVET_DACBIET'
      'FROM HR_MASK_EMPLOYEE(:USER_NAME) '
      
        'LEFT JOIN HR_EMP_PRIVATE_INFO on HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR' +
        '_EMP_PRIVATE_INFO.EMPLOYEE_NO'
      'LEFT JOIN HR_EDU_LEVEL on TRINH_DO=EDU_LEVEL_NO'
      'LEFT JOIN HR_CAREER on NGHE_NGHIEP=CAREER_NO'
      
        'LEFT JOIN HR_CHUCVU_DANG on CHUC_VU_DANG=HR_CHUCVU_DANG.MA_CHUCV' +
        'U'
      
        'LEFT JOIN HR_CHUCVU_DOAN on CHUC_VU_DOAN=HR_CHUCVU_DOAN.MA_CHUCV' +
        'U'
      
        'LEFT JOIN HR_CHUCVU_CDOAN on CHUC_VU_CDOAN=HR_CHUCVU_CDOAN.MA_CH' +
        'UCVU'
      'left JOIN HR_ACADEMIC on ACADEMIC_NO=TRINHDO_VANHOA'
      '')
    Left = 88
    Top = 128
    object qryListPORTRAIT: TBlobField
      FieldName = 'PORTRAIT'
      Size = 8
    end
    object qryListIMG_TYPE: TWideStringField
      FieldName = 'IMG_TYPE'
      Size = 15
    end
    object qryListEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryListFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 96
    end
    object qryListNGAY_VAO_DANG: TDateField
      FieldName = 'NGAY_VAO_DANG'
    end
    object qryListNGAY_VAO_DOAN: TDateField
      FieldName = 'NGAY_VAO_DOAN'
    end
    object qryListCHUC_VU_DANG: TWideStringField
      FieldName = 'CHUC_VU_DANG'
      Size = 30
    end
    object qryListCHUC_VU_DOAN: TWideStringField
      FieldName = 'CHUC_VU_DOAN'
      Size = 30
    end
    object qryListTRINH_DO: TWideStringField
      FieldName = 'TRINH_DO'
      Size = 30
    end
    object qryListTEN_TRINH_DO: TWideStringField
      FieldName = 'TEN_TRINH_DO'
      Size = 126
    end
    object qryListCONGVIEC_LAUNHAT: TWideStringField
      FieldName = 'CONGVIEC_LAUNHAT'
      Size = 255
    end
    object qryListSOTRUONG_CTAC: TWideStringField
      FieldName = 'SOTRUONG_CTAC'
      Size = 255
    end
    object qryListNAM_TOTNGHIEP: TIntegerField
      FieldName = 'NAM_TOTNGHIEP'
    end
    object qryListTOTNGHIEP_TAI: TWideStringField
      FieldName = 'TOTNGHIEP_TAI'
      Size = 126
    end
    object qryListNGAY_VAO_CDOAN: TDateField
      FieldName = 'NGAY_VAO_CDOAN'
    end
    object qryListCHUC_VU_CDOAN: TWideStringField
      FieldName = 'CHUC_VU_CDOAN'
      Size = 30
    end
    object qryListNGHE_NGHIEP: TWideStringField
      FieldName = 'NGHE_NGHIEP'
      Size = 30
    end
    object qryListTEN_NGHE_NGHIEP: TWideStringField
      FieldName = 'TEN_NGHE_NGHIEP'
      Size = 126
    end
    object qryListNGAY_VAO_CONGTY: TDateField
      FieldName = 'NGAY_VAO_CONGTY'
    end
    object qryListTEN_CHUCVU_DANG: TWideStringField
      FieldName = 'TEN_CHUCVU_DANG'
      Size = 126
    end
    object qryListTEN_CHUCVU_DOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_DOAN'
      Size = 126
    end
    object qryListTEN_CHUCVU_CDOAN: TWideStringField
      FieldName = 'TEN_CHUCVU_CDOAN'
      Size = 126
    end
    object qryListTRINHDO_VANHOA: TWideStringField
      FieldName = 'TRINHDO_VANHOA'
      Size = 30
    end
    object qryListACADEMIC_NAME: TWideStringField
      FieldName = 'ACADEMIC_NAME'
      Size = 126
    end
    object qryListCHIEU_CAO: TIBOFloatField
      FieldName = 'CHIEU_CAO'
    end
    object qryListCAN_NANG: TIBOFloatField
      FieldName = 'CAN_NANG'
    end
    object qryListDAUVET_DACBIET: TWideStringField
      FieldName = 'DAUVET_DACBIET'
      Size = 126
    end
  end
  inherited dsList: TDataSource
    Left = 80
    Top = 168
  end
  inherited bmMain: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 120
    Top = 136
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
    Left = 160
    Top = 120
  end
  object ActionList1: TActionList
    Left = 216
    Top = 128
    object acGetData: TAction
      Caption = 'acGetData'
      OnExecute = acGetDataExecute
    end
    object acChangeOption: TAction
      OnExecute = acChangeOptionExecute
    end
  end
end
