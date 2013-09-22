unit GetSearchTextFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, StdCtrls, DB,
  dxDBEdtr, ElCaption, ElCLabel, ElLabel;

type
  TdxmyDBPopupEdit = class(TdxDBPopupEdit);
  TfrmGetSearchText = class(TForm)
    dxEdit1: TdxEdit;
    dxEditStyleController1: TdxEditStyleController;
    dxPickEdit1: TdxPickEdit;
    TntLabel1: TElLabel;
    TntLabel2: TElLabel;
    ElFormCaption1: TElFormCaption;
    procedure TntEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmGetSearchText: TfrmGetSearchText;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmGetSearchText.TntEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 0 then
    ModalResult := mrOK;
  if Key = VK_ESCAPE then
    ModalResult := mrCancel;
end;

procedure TfrmGetSearchText.FormCreate(Sender: TObject);
begin
  AdaptToOS(ElFormCaption1);
end;

end.

