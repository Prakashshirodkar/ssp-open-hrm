unit CareerListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxBar, DB, IBODataset, ElCaption,
  dxLayoutControl, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar, dxDBTLCl, dxGrClEx;

type
  TfrmCareerList = class(TfrmListBase)
    qryListCAREER_NO: TWideStringField;
    qryListCAREER_NAME: TWideStringField;
    qryListCARRER_NOTE: TWideStringField;
    qryListCAREER_TYPE: TWideStringField;
    qryListCAREER_TYPE_NAME: TWideStringField;
    dxdbgMainCAREER_NO: TdxDBGridColumn;
    dxdbgMainCAREER_NAME: TdxDBGridColumn;
    dxdbgMainCARRER_NOTE: TdxDBGridColumn;
    dxdbgMainCAREER_TYPE_NAME: TdxDBGridPopupColumn;
    procedure dxdbgMainCAREER_TYPE_NAMEInitPopup(Sender: TObject);
    procedure dxdbgMainCAREER_TYPE_NAMECloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCareerList: TfrmCareerList;

implementation

uses MainDM, PopupMainForm, SSP_Library;

{$R *.dfm}

procedure TfrmCareerList.dxdbgMainCAREER_TYPE_NAMEInitPopup(
  Sender: TObject);
begin
  inherited;
  frmPopupMain.qryCareerTypeList.Open;
  InitPopupControl('dxlcCareerTypeList',frmPopupMain,Sender,2,dxdbgMain);

end;

procedure TfrmCareerList.dxdbgMainCAREER_TYPE_NAMECloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  inherited;
  OnPopupCloseUp(Accept,frmPopupMain.qryCareerTypeList,qryList,
           'CAREER_TYPE_NO;CAREER_TYPE_NAME','CAREER_TYPE;CAREER_TYPE_NAME',
           'CAREER_TYPE_NAME',Text);
  frmPopupMain.qryCareerTypeList.Close;         
end;

end.
