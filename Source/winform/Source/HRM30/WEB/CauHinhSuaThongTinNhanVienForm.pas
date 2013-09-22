unit CauHinhSuaThongTinNhanVienForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, ElCaption, dxLayoutControl, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, DB, IBODataset, dxCntner,
  dxExEdtr, dxEdLib, dxDBELib;

type
  TfrmCauHinhSuaThongTinNhanVien = class(TfrmEditBase)
    qryConfig: TIBOQuery;
    dsConfig: TDataSource;
    qryConfigEMPLOYEE_NO: TSmallintField;
    qryConfigLAST_NAME: TSmallintField;
    qryConfigMIDDLE_NAME: TSmallintField;
    qryConfigFIRST_NAME: TSmallintField;
    qryConfigGENDER: TSmallintField;
    qryConfigBIRTH_DATE: TSmallintField;
    qryConfigMARRIAL_STATUS: TSmallintField;
    qryConfigID_CARD_NO: TSmallintField;
    qryConfigISSUED_DATE: TSmallintField;
    qryConfigISSUED_PLACE: TSmallintField;
    qryConfigRACE_NO: TSmallintField;
    qryConfigCURRENCY_NO: TSmallintField;
    qryConfigNATIONAL_NO: TSmallintField;
    qryConfigRELIGION_NO: TSmallintField;
    qryConfigBIRTH_PLACE_ID: TSmallintField;
    qryConfigNATIVE_PLACE_ID: TSmallintField;
    qryConfigCONTACT_ADDR: TSmallintField;
    qryConfigPROVISION_ADDR: TSmallintField;
    qryConfigRESIDENT_ADDR: TSmallintField;
    qryConfigCONTACT_PHONE: TSmallintField;
    qryConfigHAND_PHONE: TSmallintField;
    qryConfigEMAIL: TSmallintField;
    qryConfigFAX: TSmallintField;
    qryConfigWEBSITE: TSmallintField;
    qryConfigEMPLOYEE_ID: TSmallintField;
    qryConfigDESCENT_FROM: TSmallintField;
    qryConfigACCOUNT_ID: TSmallintField;
    qryConfigACCOUNT_BANK: TSmallintField;
    qryConfigREGISTERED_NAME: TSmallintField;
    qryConfigALIAS: TSmallintField;
    qryConfigPASSPORT: TSmallintField;
    qryConfigPASSPORT_DATE: TSmallintField;
    qryConfigPASSPORT_PLACE: TSmallintField;
    qryConfigPASSPORT_EXPIRED: TSmallintField;
    qryConfigMASO_THUE_CANHAN: TSmallintField;
    qryConfigCOQUAN_THUE_QUANLY: TSmallintField;
    qryConfigCHIEU_CAO: TSmallintField;
    qryConfigCAN_NANG: TSmallintField;
    qryConfigDAUVET_DACBIET: TSmallintField;
    qryConfigNGAY_VAO_DANG: TSmallintField;
    qryConfigCHUC_VU_DANG: TSmallintField;
    qryConfigNGAY_VAO_DOAN: TSmallintField;
    qryConfigCHUC_VU_DOAN: TSmallintField;
    qryConfigNGAY_VAO_CDOAN: TSmallintField;
    qryConfigCHUC_VU_CDOAN: TSmallintField;
    qryConfigNGAY_VAO_CONGTY: TSmallintField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxlcMainItem2: TdxLayoutItem;
    dxlcMainGroup1: TdxLayoutGroup;
    dxlcMainGroup2: TdxLayoutGroup;
    dxlcMainItem3: TdxLayoutItem;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxlcMainGroup3: TdxLayoutGroup;
    dxlcMainItem4: TdxLayoutItem;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxlcMainItem5: TdxLayoutItem;
    dxDBCheckEdit4: TdxDBCheckEdit;
    dxlcMainItem6: TdxLayoutItem;
    dxDBCheckEdit5: TdxDBCheckEdit;
    dxlcMainGroup4: TdxLayoutGroup;
    dxlcMainItem7: TdxLayoutItem;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxlcMainItem8: TdxLayoutItem;
    dxDBCheckEdit7: TdxDBCheckEdit;
    dxlcMainItem9: TdxLayoutItem;
    dxDBCheckEdit8: TdxDBCheckEdit;
    dxlcMainItem10: TdxLayoutItem;
    dxDBCheckEdit9: TdxDBCheckEdit;
    dxlcMainItem11: TdxLayoutItem;
    dxDBCheckEdit10: TdxDBCheckEdit;
    dxlcMainItem12: TdxLayoutItem;
    dxDBCheckEdit11: TdxDBCheckEdit;
    dxlcMainItem13: TdxLayoutItem;
    dxDBCheckEdit12: TdxDBCheckEdit;
    dxlcMainItem14: TdxLayoutItem;
    dxDBCheckEdit13: TdxDBCheckEdit;
    dxlcMainItem15: TdxLayoutItem;
    dxDBCheckEdit14: TdxDBCheckEdit;
    dxlcMainItem16: TdxLayoutItem;
    dxDBCheckEdit15: TdxDBCheckEdit;
    dxlcMainItem17: TdxLayoutItem;
    dxDBCheckEdit16: TdxDBCheckEdit;
    dxlcMainGroup5: TdxLayoutGroup;
    dxlcMainGroup6: TdxLayoutGroup;
    dxlcMainGroup7: TdxLayoutGroup;
    dxlcMainItem18: TdxLayoutItem;
    dxDBCheckEdit17: TdxDBCheckEdit;
    dxlcMainItem19: TdxLayoutItem;
    dxDBCheckEdit18: TdxDBCheckEdit;
    dxlcMainItem20: TdxLayoutItem;
    dxDBCheckEdit19: TdxDBCheckEdit;
    dxlcMainItem21: TdxLayoutItem;
    dxDBCheckEdit20: TdxDBCheckEdit;
    dxlcMainGroup8: TdxLayoutGroup;
    dxlcMainGroup9: TdxLayoutGroup;
    dxlcMainItem22: TdxLayoutItem;
    dxDBCheckEdit21: TdxDBCheckEdit;
    dxlcMainItem23: TdxLayoutItem;
    dxDBCheckEdit22: TdxDBCheckEdit;
    dxlcMainItem24: TdxLayoutItem;
    dxDBCheckEdit23: TdxDBCheckEdit;
    dxlcMainGroup10: TdxLayoutGroup;
    dxlcMainItem25: TdxLayoutItem;
    dxDBCheckEdit24: TdxDBCheckEdit;
    dxlcMainItem26: TdxLayoutItem;
    dxDBCheckEdit25: TdxDBCheckEdit;
    dxlcMainItem27: TdxLayoutItem;
    dxDBCheckEdit26: TdxDBCheckEdit;
    dxlcMainItem28: TdxLayoutItem;
    dxDBCheckEdit27: TdxDBCheckEdit;
    dxlcMainItem29: TdxLayoutItem;
    dxDBCheckEdit28: TdxDBCheckEdit;
    dxlcMainItem30: TdxLayoutItem;
    dxDBCheckEdit29: TdxDBCheckEdit;
    dxlcMainItem31: TdxLayoutItem;
    dxDBCheckEdit30: TdxDBCheckEdit;
    dxlcMainGroup11: TdxLayoutGroup;
    dxlcMainGroup12: TdxLayoutGroup;
    dxlcMainItem32: TdxLayoutItem;
    dxDBCheckEdit31: TdxDBCheckEdit;
    dxlcMainItem33: TdxLayoutItem;
    dxDBCheckEdit32: TdxDBCheckEdit;
    dxlcMainItem34: TdxLayoutItem;
    dxDBCheckEdit33: TdxDBCheckEdit;
    dxlcMainItem35: TdxLayoutItem;
    dxDBCheckEdit34: TdxDBCheckEdit;
    dxlcMainItem36: TdxLayoutItem;
    dxDBCheckEdit35: TdxDBCheckEdit;
    dxlcMainGroup13: TdxLayoutGroup;
    dxlcMainItem37: TdxLayoutItem;
    dxDBCheckEdit36: TdxDBCheckEdit;
    dxlcMainItem38: TdxLayoutItem;
    dxDBCheckEdit37: TdxDBCheckEdit;
    dxlcMainItem39: TdxLayoutItem;
    dxDBCheckEdit38: TdxDBCheckEdit;
    dxlcMainItem40: TdxLayoutItem;
    dxDBCheckEdit39: TdxDBCheckEdit;
    dxlcMainItem41: TdxLayoutItem;
    dxDBCheckEdit40: TdxDBCheckEdit;
    dxlcMainItem42: TdxLayoutItem;
    dxDBCheckEdit41: TdxDBCheckEdit;
    dxlcMainItem43: TdxLayoutItem;
    dxDBCheckEdit42: TdxDBCheckEdit;
    dxlcMainItem44: TdxLayoutItem;
    dxDBCheckEdit43: TdxDBCheckEdit;
    dxlcMainItem45: TdxLayoutItem;
    dxDBCheckEdit44: TdxDBCheckEdit;
    dxlcMainItem46: TdxLayoutItem;
    dxDBCheckEdit45: TdxDBCheckEdit;
    dxlcMainGroup16: TdxLayoutGroup;
    dxlcMainGroup17: TdxLayoutGroup;
    dxlcMainGroup18: TdxLayoutGroup;
    qryConfigTRINHDO_KYNANG: TSmallintField;
    qryConfigTRINHDO_NGOAINGU: TSmallintField;
    qryConfigTRINHDO_CHUYENMON: TSmallintField;
    dxlcMainGroup14: TdxLayoutGroup;
    dxlcMainItem47: TdxLayoutItem;
    dxDBCheckEdit46: TdxDBCheckEdit;
    dxlcMainItem48: TdxLayoutItem;
    dxDBCheckEdit47: TdxDBCheckEdit;
    dxlcMainItem49: TdxLayoutItem;
    dxDBCheckEdit48: TdxDBCheckEdit;
    dxlcMainGroup15: TdxLayoutGroup;
    dxlcMainGroup19: TdxLayoutGroup;
    dxlcMainItem50: TdxLayoutItem;
    dxDBCheckEdit49: TdxDBCheckEdit;
    dxlcMainItem51: TdxLayoutItem;
    dxDBCheckEdit50: TdxDBCheckEdit;
    dxlcMainItem52: TdxLayoutItem;
    dxDBCheckEdit51: TdxDBCheckEdit;
    dxlcMainItem53: TdxLayoutItem;
    dxDBCheckEdit52: TdxDBCheckEdit;
    dxlcMainItem54: TdxLayoutItem;
    dxDBCheckEdit53: TdxDBCheckEdit;
    dxlcMainItem55: TdxLayoutItem;
    dxDBCheckEdit54: TdxDBCheckEdit;
    qryConfigTRINHDO_HOCVAN: TSmallintField;
    qryConfigTRINHDO_VANHOA: TSmallintField;
    qryConfigSOTRUONG_CTAC: TSmallintField;
    qryConfigNAM_TOTNGHIEP: TSmallintField;
    qryConfigNGHE_NGHIEP: TSmallintField;
    qryConfigCONGVIEC_LAUNHAT: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCauHinhSuaThongTinNhanVien: TfrmCauHinhSuaThongTinNhanVien;

implementation

{$R *.dfm}

procedure TfrmCauHinhSuaThongTinNhanVien.FormCreate(Sender: TObject);
begin
  inherited;
  qryConfig.Open;  
end;

procedure TfrmCauHinhSuaThongTinNhanVien.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryConfig.Close;
end;

end.
