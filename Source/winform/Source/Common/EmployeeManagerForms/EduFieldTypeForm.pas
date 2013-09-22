unit EduFieldTypeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListBaseFrm, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, dxBar,
  IBODataset, ElCaption, dxLayoutControl, dxCntner, ToolbarFrame,
  cxControls, ElXPThemedControl, ElStatBar;

type
  TfrmEduFieldType = class(TfrmListBase)
    qryListTYPE_NO: TWideStringField;
    qryListTYPE_NAME: TWideStringField;
    qryListTYPE_NOTE: TWideStringField;
    dxdbgMainTYPE_NO: TdxDBGridColumn;
    dxdbgMainTYPE_NAME: TdxDBGridColumn;
    dxdbgMainTYPE_NOTE: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEduFieldType: TfrmEduFieldType;

implementation

uses MainDM;

{$R *.dfm}

end.
