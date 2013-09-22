unit NhapGioForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, dxLayoutControl, ElBtnCtl, ElPopBtn, cxControls,
  ElCaption, ElXPThemedControl, ElStatBar, dxCntner, dxEditor, dxExEdtr,
  dxEdLib;

type
  TfrmNhapGio = class(TfrmBase)
    dxLayoutControl1: TdxLayoutControl;
    ElPopupButton1: TElPopupButton;
    ElPopupButton2: TElPopupButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxGiovao: TdxTimeEdit;
    dxGioRa: TdxTimeEdit;
    procedure ElPopupButton1Click(Sender: TObject);
    procedure ElPopupButton2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    FROM_TIME, TO_TIME : TTime;
  end;

var
  frmNhapGio: TfrmNhapGio;

implementation

{$R *.dfm}

procedure TfrmNhapGio.ElPopupButton1Click(Sender: TObject);
begin
  inherited;
  From_Time := dxGiovao.Time;
  to_time := dxGioRa.Time;
  ModalResult := mrOk
end;

procedure TfrmNhapGio.ElPopupButton2Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
