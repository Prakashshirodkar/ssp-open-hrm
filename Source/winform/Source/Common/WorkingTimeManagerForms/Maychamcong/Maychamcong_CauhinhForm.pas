unit Maychamcong_CauhinhForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar,
  dxLayoutControl, cxControls, DB, IBODataset;

type
  TfrmMaychamcong_Cauhinh = class(TfrmBase)
    qryMaychamcong: TIBOQuery;
    qryMaychamcongMACHINE_MODEL: TWideStringField;
    qryMaychamcongMACHINE_NAME: TWideStringField;
    qryMaychamcongVALUE_ROW_AREA_BEGIN: TIntegerField;
    qryMaychamcongVALUE_ROW_AREA_END: TIntegerField;
    qryMaychamcongFILE_STYLE: TSmallintField;
    qryMaychamcongFILE_INFOR: TWideStringField;
    dsMaychamcong: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMaychamcong_Cauhinh: TfrmMaychamcong_Cauhinh;

implementation

uses MainDM;

{$R *.dfm}

end.
