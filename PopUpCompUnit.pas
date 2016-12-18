unit PopUpCompUnit;

interface

uses
  SysUtils, Classes, Menus, BoldElements, ActnList, Controls, sBoldCheckListBox;

type
  TPopUpDM = class(TDataModule)
    PopupMenuAllTasks: TPopupMenu;
    PopupMenuReklPlaces: TPopupMenu;
    PopupMenuRPLCheks: TPopupMenu;
    PopupMenuAttentReminders: TPopupMenu;
    SaledPopupMenu: TPopupMenu;
    ToRPLUncheckPopupMenu: TPopupMenu;
    PopupMenuMagReleases: TPopupMenu;
    PopupMenuRelAdditPrice: TPopupMenu;
    PopupMenuRPLAdditPrice: TPopupMenu;
    PopupMenuOutList: TPopupMenu;
    CheckPosPopupMenu: TPopupMenu;
    ToQuestRPLPopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PopUpsActionList: TActionList;
    SetRelOfMagDateAction: TAction;
    SetTaskPlanStartDateAction: TAction;
    N5: TMenuItem;
    SetTaskFactStartDateAction: TAction;
    SetTaskPlanEndDateAction: TAction;
    SetTaskFactEndDateAction: TAction;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    SaledMoveToRPLAction1: TMenuItem;
    CheckPosMoveToRPLAction1: TMenuItem;
    CheckMoveToClientAction1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    procedure N11Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PopUpDM: TPopUpDM;
  FindTreeViewBE: TBoldElement;

implementation

{$R *.dfm}

uses MainForm, DateUtils, SetDateTimeUnit, ImageLists, AllMagEnumFormUnit,
   Variants, BoldAttributes, ReleaseStructUnit, HandlesDM, Dialogs, BusinessClasses, BoldOtherHandlCompUnit, ModelDM;

procedure TPopUpDM.N9Click(Sender: TObject);
begin
  if BoldHandlesDM.blhTodayReminders.List.Count>0 then
    begin
      (BoldHandlesDM.blhTodayReminders.CurrentElement
        as TNapominanie).Uchteno:=
          True;
    end;
end;

procedure TPopUpDM.N10Click(Sender: TObject);
var REM: TNapominanie;
begin
  if SetDTForm.ShowModal=mrOk then
    begin
      REM:=TNapominanie.Create(nil,True);
      REM.Data:=
        StartOfTheDay(SetDTForm.DateTimePicker1.Date)+
                SetDTForm.DateTimePicker2.Time;
      REM.yavl_napomin_dlya:=
        (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal);
    end;
end;

procedure TPopUpDM.N11Click(Sender: TObject);
begin
  if ReleaseStructForm.sBoldCheckListBox2.Focused then
    begin

      if BoldHandlesDM.behCurrOut1.Value<>nil then
        (BoldHandlesDM.behCurrOut1.Value as TVyhod).Izmenyon:=
          not (BoldHandlesDM.behCurrOut1.Value as TVyhod).Izmenyon;
    end
  else if ReleaseStructForm.sBoldCheckListBox3.Focused then
    begin
      if BoldHandlesDM.behCurrOut2.Value<>nil then
        (BoldHandlesDM.behCurrOut2.Value as TVyhod).Izmenyon:=
          not (BoldHandlesDM.behCurrOut2.Value as TVyhod).Izmenyon;
    end
  else if ReleaseStructForm.sBoldCheckListBox1.Focused then
    begin
      if BoldHandlesDM.behCurrOut3.Value<>nil then
        (BoldHandlesDM.behCurrOut3.Value as TVyhod).Izmenyon:=
          not (BoldHandlesDM.behCurrOut3.Value as TVyhod).Izmenyon;
    end
  else
    begin
    end;    
end;

end.
