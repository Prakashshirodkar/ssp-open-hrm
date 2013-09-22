unit NavigatorFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, TntForms, ElXPThemedControl, ElBtnCtl,
  ElPopBtn, DBActns, ActnList, dxLayoutLookAndFeels, dxLayoutControl,
  cxControls;

type
  TNavigatorFrame = class(TFrame)
    btnInsert: TElPopupButton;
    btnDelete: TElPopupButton;
    btnPost: TElPopupButton;
    btnCancel: TElPopupButton;
    btnNoSelect: TElPopupButton;
    btnClose: TElPopupButton;
    btnHelp: TElPopupButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
{$R *.dfm}

procedure TNavigatorFrame.FrameResize(Sender: TObject);
begin
  self.Height := dxLayoutControl1.ViewInfo.ItemsViewInfo.CalculateHeight;
end;

end.

