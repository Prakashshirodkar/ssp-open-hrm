unit RelationshipForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxBar, IBODataset, ElCaption, dxLayoutControl, dxCntner,
  ToolbarFrame, cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmRelationship = class(TfrmListBase)
    qryListRELATIONSHIP_NO: TWideStringField;
    qryListRELATIONSHIP_NAME: TWideStringField;
    qryListRELATIONSHIP_TYPE: TSmallintField;
    dxdbgMainRELATIONSHIP_NO: TdxDBGridColumn;
    dxdbgMainRELATIONSHIP_NAME: TdxDBGridColumn;
    dxdbgMainRELATIONSHIP_TYPE: TdxDBGridImageColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelationship: TfrmRelationship;

implementation

uses MainDM;

{$R *.dfm}

end.
