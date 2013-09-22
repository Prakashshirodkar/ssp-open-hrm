unit DocTemplateListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBaseFrm, dxExEdtr, DB, IBODataset, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ElCaption, dxLayoutControl, ToolbarFrame, cxControls,
  ElXPThemedControl, ElStatBar, ExtCtrls, EditorForm, ElPanel, ElSplit;

type
  TfrmDocTemplateList = class(TfrmEditBase)
    gridDocTemplateList: TdxDBGrid;
    dsDocTemplate: TDataSource;
    qryDocTemplate: TIBOQuery;
    mainPanel: TPanel;
    dxlcMainItem3: TdxLayoutItem;
    panelEditor: TPanel;
    qryDocTemplateTEMPLATE_NO: TWideStringField;
    qryDocTemplateTEMPLATE_NAME: TWideStringField;
    qryDocTemplateTEMPLATE_CONTENT: TBlobField;
    gridDocTemplateListTEMPLATE_NO: TdxDBGridColumn;
    gridDocTemplateListTEMPLATE_NAME: TdxDBGridColumn;
    ElSplitter1: TElSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frameToolbar1btnChooseClick(Sender: TObject);
  private
    { Private declarations }
    wordEditor :TfrmEditor;
  public
    { Public declarations }
  end;

var
  frmDocTemplateList: TfrmDocTemplateList;

implementation

uses MainDM;

{$R *.dfm}

procedure TfrmDocTemplateList.FormCreate(Sender: TObject);
begin
  inherited;
  frameToolbar1.SetDataSource(dsDocTemplate);
  qryDocTemplate.Open;
  wordEditor := TfrmEditor.Create(panelEditor,qryDocTemplate,'TEMPLATE_CONTENT');
  with wordEditor do
  begin
    ApplyOption(TControl(wordEditor));
    wordEditor.SaveTemplate.Visible:=false;
    wordEditor.LoadTemplate.Visible:=false;
    wordEditor.dxBarManager1.Bars[6].Visible:=false;
    wordEditor.dxBarManager1.Bars[6].Hidden:=true;
    BorderStyle := bsNone;
    Parent := panelEditor;
    Align := alClient;
    Visible := true;
  end;
end;

procedure TfrmDocTemplateList.FormDestroy(Sender: TObject);
begin
  qryDocTemplate.Close;
  inherited;
end;

procedure TfrmDocTemplateList.frameToolbar1btnChooseClick(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
end;

end.
