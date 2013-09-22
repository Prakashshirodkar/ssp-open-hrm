inherited frmBAOHIEM_NhapPhieu_KCB: TfrmBAOHIEM_NhapPhieu_KCB
  Left = 414
  Top = 221
  BorderStyle = bsToolWindow
  ClientHeight = 290
  ClientWidth = 364
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 271
    Width = 364
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 364
    Height = 271
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmMain.StyleWeb
    object dxTinhTrang: TdxImageEdit
      Left = 115
      Top = 74
      Width = 431
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 2
      StyleController = dmMain.StyleController
      OnCloseUp = dxTinhTrangCloseUp
      DropDownRows = 16777223
    end
    object dxDenNgay: TdxDateEdit
      Left = 115
      Top = 143
      Width = 431
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object dxTuNgay: TdxDateEdit
      Left = 115
      Top = 120
      Width = 431
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      StyleController = dmMain.StyleController
      Date = -700000.000000000000000000
    end
    object dxUpdateAll: TdxCheckEdit
      Left = 115
      Top = 199
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      StyleController = dmMain.StyleController
      OnChange = dxUpdateAllChange
    end
    object dxUpdateSelected: TdxCheckEdit
      Left = 115
      Top = 222
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      StyleController = dmMain.StyleController
      OnChange = dxUpdateSelectedChange
    end
    object ElPopupButton1: TElPopupButton
      Left = 98
      Top = 252
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 62
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'C'#7853'p nh'#7853't'
      TabOrder = 8
      Color = 15466238
      ParentColor = False
      Action = acCapnhat
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 173
      Top = 252
      Width = 75
      Height = 25
      Cursor = crDefault
      ImageIndex = 67
      UseImageList = True
      Images = dmMain.imgAction
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = #272#243'ng'
      TabOrder = 9
      Color = 15466238
      ParentColor = False
      Action = acDong
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxChk_GiuNguyen: TdxCheckEdit
      Left = 310
      Top = 97
      Width = 23
      Color = 15466238
      ParentColor = False
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Alignment = taCenter
      StyleController = dmMain.StyleController
      OnChange = dxUpdateAllChange
      State = cbsChecked
      StoredValues = 1
    end
    object dxNoiDangKyKCB: TdxMRUEdit
      Left = 115
      Top = 51
      Width = 201
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
    end
    object dxTinh_TP: TdxMRUEdit
      Left = 115
      Top = 28
      Width = 201
      Style.BorderColor = 5146545
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      OnExit = dxTinh_TPExit
      StyleController = dmMain.StyleController
      DropDownRows = 16777223
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n th'#244'ng tin'
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'Ch'#7885'n t'#7881'nh/th'#224'nh ph'#7889
          Control = dxTinh_TP
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Caption = 'N'#417'i '#273#259'ng k'#253' KCB'
          Control = dxNoiDangKyKCB
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'T'#236'nh tr'#7841'ng '#273#259'ng k'#253
          Control = dxTinhTrang
          ControlOptions.ShowBorder = False
        end
        object lcChk_GiuNguyen: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = '* Gi'#7919' nguy'#234'n n'#417'i '#273#259'ng k'#253' KCB c'#7911'a '#273#7907't tr'#432#7899'c'
          Visible = False
          Control = dxChk_GiuNguyen
          ControlOptions.AutoAlignment = False
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = #272#259'ng k'#253' t'#7915' ng'#224'y'
          Control = dxTuNgay
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = #272#259'ng k'#253' '#273#7871'n ng'#224'y'
          Control = dxDenNgay
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        Caption = 'T'#249'y ch'#7885'n c'#7853'p nh'#7853't'
        object dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'C'#7853'p nh'#7853't t'#7845't c'#7843
          Control = dxUpdateAll
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Theo NV '#273#432#7907'c ch'#7885'n'
          Control = dxUpdateSelected
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        Caption = 'New Group'
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          ShowCaption = False
          Control = ElPopupButton1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          ShowCaption = False
          Control = ElPopupButton2
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
        Caption = 'Ti'#7879'n '#237'ch nh'#7853'p nhanh qu'#225' tr'#236'nh thay '#273#7893'i phi'#7871'u KCB'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  object ActionList1: TActionList
    Images = dmMain.imgAction
    Left = 240
    Top = 192
    object acCapnhat: TAction
      Caption = 'acCapnhat'
      ImageIndex = 62
      OnExecute = acCapnhatExecute
    end
    object acDong: TAction
      Caption = 'acDong'
      ImageIndex = 67
      OnExecute = acDongExecute
    end
  end
  object qryExecute: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_BAOHIEM_SODANGKY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_BAOHIEM_BENHVIEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DANGKY_TUNGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DANGKY_DENNGAY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TINH_TRANG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GIULAI_NOI_KCB'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'execute procedure hr_baohiem_insert_phieukcb'
      '(:ID_BAOHIEM_SODANGKY,'
      ':ID_BAOHIEM_BENHVIEN,'
      ':DANGKY_TUNGAY,'
      ':DANGKY_DENNGAY,'
      ':TINH_TRANG,'
      ':GIULAI_NOI_KCB);')
    FieldOptions = []
    Left = 272
    Top = 192
  end
end
