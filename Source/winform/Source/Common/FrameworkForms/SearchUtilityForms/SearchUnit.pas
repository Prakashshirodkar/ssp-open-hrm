unit SearchUnit;

interface
uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     dxLayoutControl,dxEdLib;
type TParamInfo = class(TObject)
     ParamName:String;
     ParamValue:Variant;
     ParamType:Integer;
   end;
type TSearchGroupParam = class(TObject)
     constructor Create(value:TdxLayoutGroup);
     destructor Destroy;override;
     procedure OnInitPopup(Sender: TObject);
     procedure OnCloseUp(Sender: TObject;
     var Text: WideString; var Accept: Boolean);
     private
     dxlcGroup:TdxLayoutGroup;
     paramInfo:TParamInfo;
     controlList:TList;

   end;

implementation

uses SearchInfoForm, SSP_Library, MainDM;

//========cho TSearchGroupParam================
constructor TSearchGroupParam.Create(value:TdxLayoutGroup);
var subgroup:TdxLayoutGroup;
    control :TControl;
    item:TdxLayoutItem;
begin
  inherited Create;
  controlList:=TList.Create;
  paramInfo:=TParamInfo.Create;
  dxlcGroup:=value;
  // -- khoi tao group Param
  dxlcGroup.Hidden:=false;
  dxlcGroup.LayoutDirection:=ldVertical;
  dxlcGroup.AlignVert:=avTop;
  dxlcGroup.AlignHorz:=ahClient;
  dxlcGroup.Visible:=true;
  // tao group control Value
  subgroup:=dxlcGroup.CreateGroup();
  subgroup.Name:=dxlcGroup.Name+'_ValueGroup';
  subgroup.Hidden:=true;
  subgroup.LayoutDirection:=ldHorizontal;
  subgroup.AlignVert:=avTop;
  subgroup.AlignHorz:=ahClient;
  subgroup.Visible:=true;
  // tao control va gan vao group Value
  // tao control PopupItem
  control:=TdxPopupEdit.Create(frmSearhUtils);
  control.Width := 100;
  TdxPopupEdit(control).Name:=dxlcGroup.Name+'_PopupItem';
  TdxPopupEdit(control).StyleController :=dmMain.StyleController;
  TdxPopupEdit(control).OnCloseUp := OnCloseUp;
  TdxPopupEdit(control).OnInitPopup := OnInitPopup;
  controlList.Add(control);
  // tao layoutItem cho control
  item:=subgroup.CreateItemForControl(control);
  item.Name:=dxlcGroup.Name+'lcitItempopup';
  item.AlignHorz := ahLeft;
  item.AlignVert := avTop;
  item.CaptionOptions.AlignHorz:=taRightJustify;
  item.Visible := true;
  item.ControlOptions.AutoAlignment:=true;
  item.ControlOptions.Opaque := false;

  // tao control ImageOperator
  control:=TdxImageEdit.Create(frmSearhUtils);
  control.Width := 80;
  TdxImageEdit(control).Name:=dxlcGroup.Name+'_ImageOpeator';
  TdxImageEdit(control).StyleController :=dmMain.StyleController;
  TdxImageEdit(control).Descriptions.Add('=');
  TdxImageEdit(control).Descriptions.Add('<>');
  TdxImageEdit(control).Descriptions.Add('<=');
  TdxImageEdit(control).Descriptions.Add('>=');
  TdxImageEdit(control).Descriptions.Add('<');
  TdxImageEdit(control).Descriptions.Add('>');
  TdxImageEdit(control).Descriptions.Add('~');
  TdxImageEdit(control).Descriptions.Add('!');

  TdxImageEdit(control).Values.Add('=');
  TdxImageEdit(control).Values.Add('<>');
  TdxImageEdit(control).Values.Add('<=');
  TdxImageEdit(control).Values.Add('>=');
  TdxImageEdit(control).Values.Add('<');
  TdxImageEdit(control).Values.Add('>');
  TdxImageEdit(control).Values.Add('~');
  TdxImageEdit(control).Values.Add('!');

  controlList.Add(control);
    // tao layoutItem cho control
  item:=subgroup.CreateItemForControl(control);
  item.Name:=dxlcGroup.Name+'lcitOperator';
  item.AlignHorz := ahLeft;
  item.AlignVert := avTop;
  item.CaptionOptions.AlignHorz:=taRightJustify;
  item.Visible := true;
  item.ControlOptions.AutoAlignment:=true;
  item.ControlOptions.Opaque := false;


  // tao group control Operator
  subgroup:=dxlcGroup.CreateGroup();
  subgroup.Name:=dxlcGroup.Name+'_OperatorGroup';
  subgroup.Hidden:=true;
  subgroup.LayoutDirection:=ldHorizontal;
  subgroup.AlignVert:=avTop;
  subgroup.AlignHorz:=ahClient;
  subgroup.Visible:=true;
end;
destructor TSearchGroupParam.Destroy;
var i:integer;
begin
 dxlcGroup.Free;
 for i:=0 to controlList.Count-1 do
 begin
   TControl(controlList.Items[i]).Free;
 end;
 controlList.Free;
end;
procedure TSearchGroupParam.OnInitPopup(Sender: TObject);
begin
  InitPopupControl('dxlcObjectItem', frmSearhUtils, Sender, 2);
end;
procedure TSearchGroupParam.OnCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  if Accept then
  begin
    Text := frmSearhUtils.qryListItemFIELD_NAME.Value;
    paramInfo.ParamName:= frmSearhUtils.qryListItemFIELD_ID.Value;
    paramInfo.ParamValue:='';
    paramInfo.ParamType:=frmSearhUtils.qryListItemFIELD_TYPE.Value;
  end
end;
//========cho TParamInfo=======================
end.
