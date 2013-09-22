inherited frmEditBase: TfrmEditBase
  Left = 100
  Top = 253
  Width = 750
  Height = 495
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 442
    Width = 742
  end
  object dxlcMain: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 742
    Height = 442
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    inline frameToolbar1: TframeToolbar
      Left = 10
      Top = 407
      Width = 541
      Height = 25
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      inherited dxLayoutControl1: TdxLayoutControl
        Width = 541
        Height = 25
        inherited btnDelete: TElPopupButton
          Top = 0
        end
        inherited btnInsert: TElPopupButton
          Top = 0
        end
        inherited btnSave: TElPopupButton
          Top = 0
        end
        inherited btnCancel: TElPopupButton
          Top = 0
        end
        inherited btnClose: TElPopupButton
          Top = 0
        end
        inherited btnHelp: TElPopupButton
          Top = 0
        end
        inherited btnChoose: TElPopupButton
          Top = 0
        end
        inherited btnCopy: TElPopupButton
          Top = 0
        end
        inherited btnFirst: TElPopupButton
          Top = 0
        end
        inherited btnLast: TElPopupButton
          Top = 0
        end
        inherited btnPrevious: TElPopupButton
          Top = 0
        end
        inherited btnNext: TElPopupButton
          Top = 0
        end
        inherited btnDesign: TElPopupButton
          Top = 0
          UseImageList = False
          Images = nil
        end
        inherited btnPreview: TElPopupButton
          Top = 0
          UseImageList = False
          Images = nil
        end
        inherited btnPrint: TElPopupButton
          Top = 0
          UseImageList = False
          Images = nil
        end
        inherited btnInsertEx: TElPopupButton
          Top = 0
        end
        inherited btnSendMail: TElPopupButton
          Top = 0
        end
        inherited btnGenerate: TElPopupButton
          Top = 0
        end
        inherited btnRelation: TElPopupButton
          Top = 0
        end
        inherited ElPopupButton1: TElPopupButton
          Top = 0
        end
      end
      inherited ActionList1: TActionList
        Images = nil
        inherited acDSRefresh: TDataSetRefresh
          OnExecute = frameToolbar1acDSRefreshExecute
        end
      end
    end
    object dxlcMainGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxlcMainItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'frameToolbar1'
        ShowCaption = False
        Control = frameToolbar1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
end
