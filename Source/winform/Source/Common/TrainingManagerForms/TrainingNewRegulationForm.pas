unit TrainingNewRegulationForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ElCaption, ElXPThemedControl, ElStatBar, ImgList,
  VirtualTrees;

type
  TfrmTrainingNewReg = class(TfrmBase)
    ImageList1: TImageList;
    ImageList2: TImageList;
    VirtualStringTree1: TVirtualStringTree;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrainingNewReg: TfrmTrainingNewReg;

implementation

{$R *.dfm}

end.
