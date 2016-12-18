//модуль  хэндлов
//02.01.2006 - проверить назначение UseListElem
//у переменных болда
//
unit HandlesDM;

interface

uses
  SysUtils, Classes, BoldSubscription, BoldHandles, BoldRootedHandles,
  BoldAbstractListHandle, BoldCursorHandle, BoldListHandle, BoldListActions,
  ActnList, BoldHandleAction, BoldElements, BoldPlaceableSubscriber,
  BoldVariableHandle, BoldOclVariables, BoldExpressionHandle,
  BoldReferenceHandle, Dialogs, Controls, ActnMan, ActnColorMaps,
  XPStyleActnCtrls, CustomizeDlg, BoldDerivedHandle, BoldActions,
  BoldUndoActions, BusinessClasses;

type
  TBoldHandlesDM = class(TDataModule)
    blhAllClientList: TBoldListHandle;
    blhUsersList: TBoldListHandle;
    AllClientActionList: TActionList;
    BoldListHandleAddNewActionAllKlient: TBoldListHandleAddNewAction;
    BoldListHandleDeleteActionAllKlient: TBoldListHandleDeleteAction;
    blhLogSearchResult: TBoldListHandle;
    AllUsersActionList: TActionList;
    BoldListHandleAddNewActionAllUsers: TBoldListHandleAddNewAction;
    BoldListHandleDeleteActionAllUsers: TBoldListHandleDeleteAction;
    blhCurrUser: TBoldListHandle;
    blhCurrUserLogs: TBoldListHandle;
    bvhCurrUserLogin: TBoldVariableHandle;
    bovCurrUser: TBoldOclVariables;
    bvhStarDate: TBoldVariableHandle;
    bvhEndDate: TBoldVariableHandle;
    bovLogSearch: TBoldOclVariables;
    brhLogSearchClient: TBoldReferenceHandle;
    behStartTablePosition: TBoldExpressionHandle;
    behSettElm: TBoldExpressionHandle;
    blhActiveRekPlacing: TBoldListHandle;
    bvhPrevRelNumber: TBoldVariableHandle;
    bvhPrevRelYear: TBoldVariableHandle;
    behNextRelNumber: TBoldExpressionHandle;
    behNextRelYear: TBoldExpressionHandle;
    bovBHVars: TBoldOclVariables;
    brhClientType: TBoldReferenceHandle;
    blhClientReklams: TBoldListHandle;
    blhClientContacts: TBoldListHandle;
    blhReklamType: TBoldListHandle;
    blhAllClientType: TBoldListHandle;
    AllClientTypeActionList: TActionList;
    BoldListHandleAddNewActionAllClientType: TBoldListHandleAddNewAction;
    blhAllClient: TBoldListHandle;
    brhCurrClient: TBoldReferenceHandle;
    brhCurrClientGroup: TBoldReferenceHandle;
    brhCurrClientContact: TBoldReferenceHandle;
    brhCurrRRelease: TBoldReferenceHandle;
    brhCurrReklamSeries: TBoldReferenceHandle;
    CRMActionList: TActionList;
    AddNewBlankContactAction: TAction;
    AddNewAccountContactAction: TAction;
    AddNewDevelopContactAction: TAction;
    AddProjectApplingAction: TAction;
    AddProjectStartAction: TAction;
    AddProjectEndAction: TAction;
    behStartContactType: TBoldExpressionHandle;
    behNewDevelop: TBoldExpressionHandle;
    behProjApply: TBoldExpressionHandle;
    behProjStart: TBoldExpressionHandle;
    behProjEnd: TBoldExpressionHandle;
    MoveToPrintAction: TAction;
    ActionManager1: TActionManager;
    CustomizeDlg1: TCustomizeDlg;
    blhMagazines: TBoldListHandle;
    blhReleasesOfMag: TBoldListHandle;
    blhPriceCategories: TBoldListHandle;
    blhMagSections: TBoldListHandle;
    blhCurrClientSaled: TBoldListHandle;
    blhAllTasks: TBoldListHandle;
    blhAllStandartTasks: TBoldListHandle;
    blhAllStates: TBoldListHandle;
    blhAllCauses: TBoldListHandle;
    blhAllFactors: TBoldListHandle;
    blhAllReminders: TBoldListHandle;
    blhAllStadartFactors: TBoldListHandle;
    blhAllStandReminders: TBoldListHandle;
    blhAllResults: TBoldListHandle;
    blhAllStandResults: TBoldListHandle;
    behCurrTime: TBoldExpressionHandle;
    bovAllReminders: TBoldOclVariables;
    bvhOnlyTodayReminders: TBoldVariableHandle;
    bvhTodayAndLaterReminders: TBoldVariableHandle;
    bvhOnlyUnCheckReminders: TBoldVariableHandle;
    bvhOnlyPrevReminders: TBoldVariableHandle;
    ALStandRem: TActionList;
    bvhOnlyUnCompleteTasks: TBoldVariableHandle;
    bvhTodayByPlanTasks: TBoldVariableHandle;
    bvhTodayAndLaterByPlanTasks: TBoldVariableHandle;
    bovAllTasks: TBoldOclVariables;
    blhFromStateMoveCauses: TBoldListHandle;
    blhStandartCauses: TBoldListHandle;
    blhCauseFactors: TBoldListHandle;
    blhStandartCauseFactors: TBoldListHandle;
    NavigationActionList: TActionList;
    BoldListHandleAddNewActionAllMagazines: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionMagSections: TBoldListHandleAddNewAction;
    blhReklPlacesOfMagSection: TBoldListHandle;
    blhAllProjects: TBoldListHandle;
    blhAllDocs: TBoldListHandle;
    BoldListHandleAddNewActionAllDocs: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionAllProjects: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionAllPrices: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionReklType: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionCompType: TBoldListHandleAddNewAction;
    blhRelOfReklPlacing: TBoldListHandle;
    BoldListHandleAddNewActionAllStates: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionAllStandCauses: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionAllCauses: TBoldListHandleAddNewAction;
    BoldListHandleAddNewActionMoveStates: TBoldListHandleAddNewAction;
    blhViewAccessPanel: TBoldListHandle;
    blhSetAccessPanel: TBoldListHandle;
    blhChangeAccessPanel: TBoldListHandle;
    blhMoveStates: TBoldListHandle;
    BoldListHandleAddNewActionStCauseFactors: TBoldListHandleAddNewAction;
    blhStandCauseFactIntersect: TBoldListHandle;
    bchCurrRelease: TBoldCursorHandle;
    BoldListHandleAddNewActionAllReklScale: TBoldListHandleAddNewAction;
    blhAllReklScales: TBoldListHandle;
    brhCurrMagSect: TBoldReferenceHandle;
    bchCurrMag: TBoldCursorHandle;
    bovReklPlacesOfMagSect: TBoldOclVariables;
    blhAllDiscount: TBoldListHandle;
    BoldListHandleAddNewActionAllDiscount: TBoldListHandleAddNewAction;
    bvhAllReklPlaces: TBoldVariableHandle;
    blhRPLDiscount: TBoldListHandle;
    blhRelAdditPrice: TBoldListHandle;
    BoldListHandleAddNewActionRelOfRPLAddPr: TBoldListHandleAddNewAction;
    blhRPLAdditPrice: TBoldListHandle;
    BoldListHandleAddNewActionRPLAdditPrice: TBoldListHandleAddNewAction;
    blhReklamTypeDiscount: TBoldListHandle;
    behDefaultRekType: TBoldExpressionHandle;
    BoldListHandleAddNewActionReklamSeries: TAction;
    blhAllIndividsClients: TBoldListHandle;
    blhAllCompany: TBoldListHandle;
    NewCurrClientSaledPosAction: TAction;
    blhCurrMagClientChecks: TBoldListHandle;
    BoldListHandleAddNewActionRPLCheks: TBoldListHandleAddNewAction;
    blhUnsaledCheks: TBoldListHandle;
    blhAllRating: TBoldListHandle;
    bovClientFilter: TBoldOclVariables;
    brhCurrRating: TBoldReferenceHandle;
    blhClientSearch: TBoldListHandle;
    bovClientSearch: TBoldOclVariables;
    bvhlientSearchWord: TBoldVariableHandle;
    BoldListHandleAddNewActionAllRating: TBoldListHandleAddNewAction;
    brhCurrAgent: TBoldReferenceHandle;
    blhTodayReminders: TBoldListHandle;
    bvhCurrTime: TBoldVariableHandle;
    blhAttentionTodReminders: TBoldListHandle;
    bovRPLRelNums: TBoldOclVariables;
    behCurrRelease: TBoldExpressionHandle;
    blhSetNumInterval1: TBoldListHandle;
    blhSetNumInterval2: TBoldListHandle;
    blhSetNumInterval3: TBoldListHandle;
    bovOutList: TBoldOclVariables;
    behCurrOut1: TBoldExpressionHandle;
    behCurrOut2: TBoldExpressionHandle;
    behCurrOut3: TBoldExpressionHandle;
    ActionNewRel: TAction;
    DelRPLAction: TAction;
    DelMagAction: TAction;
    DelSectAction: TAction;
    DelRelAction: TAction;
    DelStandPriceAction: TAction;
    DeleteDiscountAction: TAction;
    DelClTypeAction: TAction;
    DelCompAction: TAction;
    DelReklTypeAction: TAction;
    DelStandSizeAction: TAction;
    DelRatingAction: TAction;
    AccountingActionList: TActionList;
    StopedRPLAction: TAction;
    RPLCheckNewAction: TAction;
    RPLCheckFindAction: TAction;
    blhClientCheckPos: TBoldListHandle;
    NewCheckAction: TAction;
    DelCheckAction: TAction;
    DelCheckPosAction: TAction;
    BoldListHandleAddNewActionCheckPos: TBoldListHandleAddNewAction;
    blhAllRPL: TBoldListHandle;
    bovCurrMagClChecks: TBoldOclVariables;
    bvhShowAllChecks: TBoldVariableHandle;
    RPLSaleCashAction: TAction;
    RPLSalePerCheckAction: TAction;
    CheckSaleAction: TAction;
    SetSaledCheckAction: TAction;
    EmptyCheckAction: TAction;
    DelSaledAction: TAction;
    SaledMoveToCheckAction: TAction;
    SaledMoveToRPLAction: TAction;
    CheckPosMoveToRPLAction: TAction;
    CheckMoveToClientAction: TAction;
    blhAllActRPL: TBoldListHandle;
    bovSaled: TBoldOclVariables;
    blhNotOldPrices: TBoldListHandle;
    blhNotOldReklTypes: TBoldListHandle;
    bvhReasonCl: TBoldVariableHandle;
    DelIndivClAction: TAction;
    blhClUnsaledChecks: TBoldListHandle;
    blhUnSaleRPL: TBoldListHandle;
    blhQuestsionsRPL: TBoldListHandle;
    behBeforeQuestsionsDays: TBoldExpressionHandle;
    SetRelDateAction: TAction;
    ToRPLUnsaleAction: TAction;
    ToRPLQuestAction: TAction;
    procedure ToRPLQuestActionExecute(Sender: TObject);
    procedure ToRPLUnsaleActionExecute(Sender: TObject);
    procedure SetRelDateActionExecute(Sender: TObject);
    procedure DelIndivClActionExecute(Sender: TObject);
    procedure CheckMoveToClientActionExecute(Sender: TObject);
    procedure CheckPosMoveToRPLActionExecute(Sender: TObject);
    procedure SaledMoveToRPLActionExecute(Sender: TObject);
    procedure SaledMoveToCheckActionExecute(Sender: TObject);
    procedure DelSaledActionExecute(Sender: TObject);
    procedure SetSaledCheckActionExecute(Sender: TObject);
    procedure EmptyCheckActionExecute(Sender: TObject);
    procedure CheckSaleActionExecute(Sender: TObject);
    procedure RPLSalePerCheckActionExecute(Sender: TObject);
    procedure RPLSaleCashActionExecute(Sender: TObject);
    procedure DelCheckPosActionExecute(Sender: TObject);
    procedure DelCheckActionExecute(Sender: TObject);
    procedure NewCheckActionExecute(Sender: TObject);
    procedure RPLCheckFindActionExecute(Sender: TObject);
    procedure RPLCheckNewActionExecute(Sender: TObject);
    procedure StopedRPLActionExecute(Sender: TObject);
    procedure DelRatingActionExecute(Sender: TObject);
    procedure DelStandSizeActionExecute(Sender: TObject);
    procedure DelReklTypeActionExecute(Sender: TObject);
    procedure DelCompActionExecute(Sender: TObject);
    procedure DelClTypeActionExecute(Sender: TObject);
    procedure DeleteDiscountActionExecute(Sender: TObject);
    procedure DelStandPriceActionExecute(Sender: TObject);
    procedure DelRelActionExecute(Sender: TObject);
    procedure DelSectActionExecute(Sender: TObject);
    procedure DelMagActionExecute(Sender: TObject);
    procedure DelRPLActionExecute(Sender: TObject);
    procedure ActionNewRelExecute(Sender: TObject);
    procedure BoldListHandleAddNewActionAllKlientExecute(Sender: TObject);
    procedure NewCurrClientSaledPosActionExecute(Sender: TObject);
    procedure BoldListHandleAddNewActionReklamSeriesExecute(Sender: TObject);
    procedure bdhCurrReleaseDeriveAndSubscribe(Sender: TComponent;
      RootValue: TBoldElement; ResultElement: TBoldIndirectElement;
      Subscriber: TBoldSubscriber);
    procedure MoveToPrintActionExecute(Sender: TObject);
    procedure AddProjectEndActionExecute(Sender: TObject);
    procedure AddProjectStartActionExecute(Sender: TObject);
    procedure AddProjectApplingActionExecute(Sender: TObject);
    procedure AddNewDevelopContactActionExecute(Sender: TObject);
    procedure AddNewAccountContactActionExecute(Sender: TObject);
    procedure AddNewBlankContactActionExecute(Sender: TObject);
    procedure ToRPL(RPL: TRazmeshenie_reklamy);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoldHandlesDM: TBoldHandlesDM;

implementation

{$R *.dfm}

uses ModelDM, ImageLists, BoldOtherHandlCompUnit, DateUtils,
  ReleaseStructUnit, SetDateTimeUnit;

procedure TBoldHandlesDM.ToRPL(RPL: TRazmeshenie_reklamy);
begin
if (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal).Razresh_rab_s_rekl_kamp then
if (RPL<>nil) then
        begin
          if BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl)>=0 then
              begin
                BoldHandlesDM.blhReklPlacesOfMagSection.CurrentIndex:=
                  BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl);
                ReleaseStructForm.RPLTabSheet.Show;
              end
            else
              begin
                BoldHandlesDM.brhCurrMagSect.Value:=
                  nil;
                BoldHandlesDM.bvhAllReklPlaces.Value.SetAsVariant(True);
                BoldHandlesDM.brhCurrAgent.Value:=
                  nil;
                if BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl)>=0 then
                  begin
                    BoldHandlesDM.blhReklPlacesOfMagSection.CurrentIndex:=
                      BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl);
                    ReleaseStructForm.RPLTabSheet.Show;
                  end
                else
                  ShowMessage('Ошибка не найдена кампания!');  
              end;      
        end
  else
    ShowMessage('Не определена кампания!')
else
    ShowMessage('Нет прав для работы с кампаниями!');
end;

procedure TBoldHandlesDM.AddNewBlankContactActionExecute(Sender: TObject);
var kbe: TKontakt;
begin
 if BoldHandlesDM.brhCurrClient.Value<>nil then
 begin
  kbe:=
    (BoldHandlesDM.brhCurrClient.Value as TKlient).imeet_kontakty.AddNew;
  kbe.Naimenovanie:=
    'Нет описания';
  kbe.Data:=
        Today+Time;
 end;
end;

procedure TBoldHandlesDM.AddNewAccountContactActionExecute(Sender: TObject);
var cbe: TKlient;
    kbe: TKontakt;
begin
  if MessageDlg('Добавить новую учётную запись "Клиент"?',mtConfirmation,mbYesNo,0)=mrYes then
    begin
      cbe:=
        TKlient.Create(nil);
      kbe:=
        cbe.imeet_kontakty.AddNew;
      kbe.Naimenovanie:=
        'Заведение аккаунта клиента в системе';
      kbe.Rezuljtat:=
        'В перспективе предполагается...';
      kbe.Data:=
        Today+Time;
      kbe.imeet_tip_kontakta:=
        (BoldHandlesDM.behStartContactType.Value as TTip_kontakta);
      kbe.nahoditsya_v_sost:=
        (BoldHandlesDM.behStartContactType.Value as TTip_kontakta).predpolag_sostoyaniya;
    end;
end;

procedure TBoldHandlesDM.AddNewDevelopContactActionExecute(Sender: TObject);
var 
    kbe: TKontakt;
begin
 if BoldHandlesDM.brhCurrClient.Value<>nil then
 begin
  kbe:=
    (BoldHandlesDM.brhCurrClient.Value as TKlient).imeet_kontakty.AddNew;
  kbe.Naimenovanie:=
    'Начало разработки';
  kbe.Data:=
        Today+Time;
  kbe.imeet_tip_kontakta:=
        (BoldHandlesDM.behNewDevelop.Value as TTip_kontakta);
      kbe.nahoditsya_v_sost:=
        (BoldHandlesDM.behNewDevelop.Value as TTip_kontakta).predpolag_sostoyaniya;
 end;
end;

procedure TBoldHandlesDM.AddProjectApplingActionExecute(Sender: TObject);
var
    kbe: TKontakt;
begin
 if BoldHandlesDM.brhCurrClient.Value<>nil then
 begin
  kbe:=
    (BoldHandlesDM.brhCurrClient.Value as TKlient).imeet_kontakty.AddNew;
  kbe.Naimenovanie:=
    'Согласование проекта с заказчиком';
  kbe.Data:=
        Today+Time;

  kbe.imeet_tip_kontakta:=
        (BoldHandlesDM.behProjApply.Value as TTip_kontakta);
      kbe.nahoditsya_v_sost:=
        (BoldHandlesDM.behProjApply.Value as TTip_kontakta).predpolag_sostoyaniya;

 end;
end;

procedure TBoldHandlesDM.AddProjectStartActionExecute(Sender: TObject);
var 
    kbe: TKontakt;
begin
 if BoldHandlesDM.brhCurrClient.Value<>nil then
 begin
  kbe:=
    (BoldHandlesDM.brhCurrClient.Value as TKlient).imeet_kontakty.AddNew;
  kbe.Naimenovanie:=
    'Начало выхода проекта';
  kbe.Data:=
        Today+Time;

  kbe.imeet_tip_kontakta:=
        (BoldHandlesDM.behProjStart.Value as TTip_kontakta);
      kbe.nahoditsya_v_sost:=
        (BoldHandlesDM.behProjStart.Value as TTip_kontakta).predpolag_sostoyaniya;

 end;
end;

procedure TBoldHandlesDM.AddProjectEndActionExecute(Sender: TObject);
var
    kbe: TKontakt;
begin
if BoldHandlesDM.brhCurrClient.Value<>nil then
 begin
  kbe:=
    (BoldHandlesDM.brhCurrClient.Value as TKlient).imeet_kontakty.AddNew;
  kbe.Naimenovanie:=
    'Завершение проекта';
  kbe.Data:=
        Today+Time;

  kbe.imeet_tip_kontakta:=
        (BoldHandlesDM.behProjEnd.Value as TTip_kontakta);
      kbe.nahoditsya_v_sost:=
        (BoldHandlesDM.behProjEnd.Value as TTip_kontakta).predpolag_sostoyaniya;

 end;
end;

procedure TBoldHandlesDM.MoveToPrintActionExecute(Sender: TObject);
var rpl: TRazmeshenie_reklamy;
begin
if  BoldHandlesDM.brhCurrClient.Value<>nil then
 begin
 if BoldHandlesDM.blhMagSections.List.Count>0 then
 begin
  rpl:=
  (BoldHandlesDM.blhMagSections.CurrentElement as TRazdel_izdaniya).yavl_mestom_reklamy.AddNew;
  //(BoldHandlesDM.blhReklPlacesOfMagSection.List.AddNew as TRazmeshenie_reklamy);
  rpl.imeet_tip_reklamy:=
    (BoldHandlesDM.behDefaultRekType.Value as TTip_reklamy);
  rpl.Data:=
    Today+Time;
  rpl.vedyotsya_sotrudnikom:=
    (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal);

  rpl.yavl_reklamoi_dlya:=
    (BoldHandlesDM.brhCurrClient.Value as TKlient);
  if (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal).Razresh_rab_s_rekl_kamp then
               ReleaseStructForm.RPLTabSheet.Show;   
  end
  else
    ShowMessage('Нет ни одного раздела текущего издания!');
  end
 else
   ShowMessage('Не выделено клиента!');
end;

procedure TBoldHandlesDM.bdhCurrReleaseDeriveAndSubscribe(
  Sender: TComponent; RootValue: TBoldElement;
  ResultElement: TBoldIndirectElement; Subscriber: TBoldSubscriber);
begin
  if RootValue <> nil then
    begin
      ShowMessage(IntToStr((RootValue as TVypusk_gazety).Nomer_vypuska));
    end;
end;

procedure TBoldHandlesDM.BoldListHandleAddNewActionReklamSeriesExecute(
  Sender: TObject);
var rpl: TRazmeshenie_reklamy;
begin
 if BoldHandlesDM.blhMagSections.List.Count>0 then
 begin
  rpl:=
  (BoldHandlesDM.blhMagSections.CurrentElement as TRazdel_izdaniya).yavl_mestom_reklamy.AddNew;
  //(BoldHandlesDM.blhReklPlacesOfMagSection.List.AddNew as TRazmeshenie_reklamy);
  rpl.imeet_tip_reklamy:=
    (BoldHandlesDM.behDefaultRekType.Value as TTip_reklamy);
  rpl.Data:=
    Today+Time;
  rpl.vedyotsya_sotrudnikom:=
    (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal);
  end
  else
    ShowMessage('Нет ни одного раздела текущего издания!');  
end;

procedure TBoldHandlesDM.NewCurrClientSaledPosActionExecute(Sender: TObject);
var SALE: TOplata;
begin
  if BoldHandlesDM.brhCurrClient.Value<>nil then
    begin
      SALE:=
        (BoldHandlesDM.blhCurrClientSaled.List.AddNew as TOplata);
      SALE.Data_oplaty:=
        Today+Time;
    end;
end;

procedure TBoldHandlesDM.BoldListHandleAddNewActionAllKlientExecute(
  Sender: TObject);
var CL: TKlient;
begin
  CL:=TKlient.Create(nil, True);
  CL.Data_zavedeniya:=
    Today+Time;
end;

procedure TBoldHandlesDM.ActionNewRelExecute(Sender: TObject);
var RM: TVypusk_gazety;
begin
  if BoldHandlesDM.blhMagazines.List.Count>0 then
   begin
   RM:=TVypusk_gazety.Create(nil,True);
   RM.Data_vypuska:=
     Today+Time;
   RM.vyhod_izdaniya:=
     (BoldHandlesDM.blhMagazines.CurrentElement as TIzdanie);
   end
  else
    ShowMessage('Нет ни одного издания!'); 
end;

procedure TBoldHandlesDM.DelRPLActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhReklPlacesOfMagSection.List.Count>0 then
   begin
     if MessageDlg('Удалить кампанию, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhReklPlacesOfMagSection.CurrentBoldObject.Delete;
        end;
   end;
end;

procedure TBoldHandlesDM.DelMagActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhMagazines.List.Count>0 then
   begin
     if MessageDlg('Удалить издание, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhMagazines.CurrentBoldObject.Delete;
        end;
   end;
end;

procedure TBoldHandlesDM.DelSectActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhMagSections.List.Count>0 then
   begin
     if MessageDlg('Удалить раздел, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhMagSections.CurrentBoldObject.Delete;
        end;
   end;
end;

procedure TBoldHandlesDM.DelRelActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhReleasesOfMag.List.Count>0 then
   begin
     if MessageDlg('Удалить выпуск, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhReleasesOfMag.CurrentBoldObject.Delete;
        end;
   end;
end;

procedure TBoldHandlesDM.DelStandPriceActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhPriceCategories.List.Count>0 then
   begin
     if MessageDlg('Удалить станд. цену, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhPriceCategories.CurrentBoldObject.Delete;
        end;
   end;

end;

procedure TBoldHandlesDM.DeleteDiscountActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhAllDiscount.List.Count>0 then
   begin
     if MessageDlg('Удалить тип скидки, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhAllDiscount.CurrentBoldObject.Delete;
        end;
   end;

end;

procedure TBoldHandlesDM.DelClTypeActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhAllClientType.List.Count>0 then
   begin
     if MessageDlg('Удалить тип организации, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhAllClientType.CurrentBoldObject.Delete;
        end;
   end;

end;

procedure TBoldHandlesDM.DelCompActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhAllCompany.List.Count>0 then
   begin
     if MessageDlg('Удалить контакт организации, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhAllCompany.CurrentBoldObject.Delete;
        end;
   end;

end;

procedure TBoldHandlesDM.DelReklTypeActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhReklamType.List.Count>0 then
   begin
     if MessageDlg('Удалить тип рекламы, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhReklamType.CurrentBoldObject.Delete;
        end;
   end;

end;

procedure TBoldHandlesDM.DelStandSizeActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhAllReklScales.List.Count>0 then
   begin
     if MessageDlg('Удалить стандартный размер, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhAllReklScales.CurrentBoldObject.Delete;
        end;
   end;

end;

procedure TBoldHandlesDM.DelRatingActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhAllRating.List.Count>0 then
   begin
     if MessageDlg('Удалить вид рейтинга, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhAllRating.CurrentBoldObject.Delete;
        end;
   end;

end;

procedure TBoldHandlesDM.StopedRPLActionExecute(Sender: TObject);
begin
 if not (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Proshlo then
  begin
  if MessageDlg('Завершить кампанию, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Proshlo:=
              True;
        end;
  end
  else
    begin
  if MessageDlg('Стартовать заново кампанию, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Proshlo:=
              False;
        end;
  end
end;

procedure TBoldHandlesDM.RPLCheckNewActionExecute(Sender: TObject);
var Chk: TSchyot;
    ChkPos: TPozic_schta;
begin
  Chk:=TSchyot.Create(nil, True);
  Chk.imeet_pozic_opl_reklamy:=
    (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).yavl_reklamoi_dlya;
  Chk.Opisanie:=
    'Сч. на опл. р.к. '+(BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Opisanie;
  Chk.Vystavlen:=True;          
  ChkPos:=
    Chk.sostoit_iz_pozicii.AddNew;
  ChkPos.Naimenovanie:=
    Chk.Opisanie;
  ChkPos.yavl_schetom_na_opl_reklamy:=
    (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy);
  ChkPos.Summa:=
    (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Nalich_dolg;
  if BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(Chk)>=0 then
    begin
      BoldHandlesDM.blhCurrMagClientChecks.CurrentIndex:=
        BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(Chk);
        if BoldHandlesDM.blhClientCheckPos.List.IndexOf(Chk)>=0 then
          begin
             BoldHandlesDM.blhClientCheckPos.CurrentIndex:=
               BoldHandlesDM.blhClientCheckPos.List.IndexOf(ChkPos);
          end;
    end;
  ReleaseStructForm.CheksTabSheet.Show;
end;

procedure TBoldHandlesDM.RPLCheckFindActionExecute(Sender: TObject);
var Chk: TSchyot;
    ChkPos: TPozic_schta;
    i: Integer;
begin
   if (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).imeet_scheta_oplaty.Count>0 then
     begin

       for i:=0 to (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).imeet_scheta_oplaty.Count-1 do
              begin
                ChkPos:=((BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
                  as TRazmeshenie_reklamy).imeet_scheta_oplaty.Elements[0] as TPozic_schta);;
                if not ChkPos.vhodit_v_schyot.Oplachen
                    and not ChkPos.vhodit_v_schyot.Onulirovan then
                      Break;
              end;

       if (ChkPos.vhodit_v_schyot.Oplachen
                    or ChkPos.vhodit_v_schyot.Onulirovan) then
                    begin
                      ShowMessage('Все счета, связанные с этой кампанией либо закрыты, либо онулированы!');
                      Exit;
                    end;

       if ChkPos.vhodit_v_schyot<> nil then
         begin
           Chk:=
             ChkPos.vhodit_v_schyot;
           if BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(Chk)>=0 then
             begin
                BoldHandlesDM.blhCurrMagClientChecks.CurrentIndex:=
                   BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(Chk);
                if BoldHandlesDM.blhClientCheckPos.List.IndexOf(Chk)>=0 then
                  begin
                    BoldHandlesDM.blhClientCheckPos.CurrentIndex:=
                      BoldHandlesDM.blhClientCheckPos.List.IndexOf(ChkPos);
                  end;
             end;
             ReleaseStructForm.CheksTabSheet.Show;
         end;
     end
   else
     begin
       ShowMessage('Нет ни одного счёта, чьи позиции привязаны к данной кампании!');
     end;
end;

procedure TBoldHandlesDM.NewCheckActionExecute(Sender: TObject);
var Chk: TSchyot;
begin
  Chk:=TSchyot.Create(nil, True);
end;

procedure TBoldHandlesDM.DelCheckActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhCurrMagClientChecks.List.Count>0 then
    if MessageDlg('Удалить счёт, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhCurrMagClientChecks.CurrentBoldObject.Delete;
        end;
end;

procedure TBoldHandlesDM.DelCheckPosActionExecute(Sender: TObject);
begin
   if BoldHandlesDM.blhClientCheckPos.List.Count>0 then
     if MessageDlg('Удалить позицию счёт, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhClientCheckPos.CurrentBoldObject.Delete;
        end;
end;

procedure TBoldHandlesDM.RPLSaleCashActionExecute(Sender: TObject);
var SL: TOplata;
begin
if (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Nalich_dolg>0 then
  begin
  SL:=(BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).imeet_oplaty.AddNew;
  SL.osush_za_schyot:=
     (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).yavl_reklamoi_dlya;
  SL.Summa:=
    (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Nalich_dolg;
  SL.Data_oplaty:=
    Today+Time;
  SL.Osnovanie:=
    'Нал. опл. за р. к. '+
      (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).Opisanie;
  BoldHandlesDM.brhCurrClient.Value:=
    SL.osush_za_schyot;
  BoldHandlesDM.blhCurrClientSaled.CurrentIndex:=
    BoldHandlesDM.blhCurrClientSaled.List.IndexOf(SL);
  ReleaseStructForm.SaledTabSheet.Show;
  end
   else
     ShowMessage('По выбранной кампании отсутствует наличный долг!');
end;

procedure TBoldHandlesDM.RPLSalePerCheckActionExecute(Sender: TObject);
var Chk: TSchyot;
    ChkPos: TPozic_schta;
    SL: TOplata;
    i: Integer;
begin
   BoldHandlesDM.bvhShowAllChecks.Value.SetAsVariant(False);
   if (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).imeet_scheta_oplaty.Count>0 then
     begin
       for i:=0 to (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
            as TRazmeshenie_reklamy).imeet_scheta_oplaty.Count-1 do
              begin
                ChkPos:=((BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
                  as TRazmeshenie_reklamy).imeet_scheta_oplaty.Elements[0] as TPozic_schta);;
                if not ChkPos.vhodit_v_schyot.Oplachen
                    and not ChkPos.vhodit_v_schyot.Onulirovan and
                      not ChkPos.vhodit_v_schyot.Oplach_po_summe then
                      Break;
              end;

       if not(ChkPos.vhodit_v_schyot.Oplachen
                    or ChkPos.vhodit_v_schyot.Onulirovan or
                       ChkPos.vhodit_v_schyot.Oplach_po_summe) then
                    begin
                      ShowMessage('Все счета, связанные с этой кампанией либо закрыты, либо онулированы, либо оплачены по сумме!');
                      Exit;
                    end;

       if ChkPos.vhodit_v_schyot<> nil then
         begin
           Chk:=
             ChkPos.vhodit_v_schyot;
           if BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(Chk)>=0 then
             begin
                BoldHandlesDM.blhCurrMagClientChecks.CurrentIndex:=
                   BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(Chk);

               if Chk.imeet_pozic_opl_reklamy<>nil then
                begin
                SL:=TOplata.Create(nil,True);
                SL.osush_za_schyot:=
                   Chk.imeet_pozic_opl_reklamy;
                SL.Summa:=
                  Chk.Summa;
                SL.Data_oplaty:=
                  Today+Time;
                SL.Osnovanie:=
                  'Безнал. опл. по сч. '+
                    Chk.Opisanie;
                SL.otnositsya_k_kampanii:=
                  (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement
                     as TRazmeshenie_reklamy);
                ReleaseStructForm.SaledTabSheet.Show;
                SL.oplata_po_schyotu:=
                  Chk;
                SL.Bez_nal:=True;
                BoldHandlesDM.brhCurrClient.Value:=
                  SL.osush_za_schyot;
                BoldHandlesDM.blhCurrClientSaled.CurrentIndex:=
                  BoldHandlesDM.blhCurrClientSaled.List.IndexOf(SL);
                ReleaseStructForm.SaledTabSheet.Show;
                end
                else
                  ShowMessage('Один из незакрытых счетов по выделенной кампании не привязан к клиенту!');

             end;

         end;
     end
   else
     begin
       ShowMessage('Нет ни одного счёта, чьи позиции привязаны к данной кампании!');
     end;
end;

procedure TBoldHandlesDM.CheckSaleActionExecute(Sender: TObject);
var SL: TOplata;
    Chk: TSchyot;
begin
  Chk:=
    (BoldHandlesDM.blhCurrMagClientChecks.CurrentElement as TSchyot);

  if (Chk.Oplachen
                    or Chk.Onulirovan or
                       Chk.Oplach_po_summe) then
                    begin
                      ShowMessage('Счёт либо закрыт, либо онулирован, либо оплачен по сумме!');
                      Exit;
                    end
  else
    begin
     if Chk.imeet_pozic_opl_reklamy<>nil then
                begin
                SL:=TOplata.Create(nil,True);
                SL.osush_za_schyot:=
                   Chk.imeet_pozic_opl_reklamy;
                SL.Summa:=
                  Chk.Summa;
                SL.Data_oplaty:=
                  Today+Time;
                SL.Osnovanie:=
                  'Безнал. опл. по сч. '+
                    Chk.Opisanie;
                ReleaseStructForm.SaledTabSheet.Show;
                SL.oplata_po_schyotu:=
                  Chk;
                SL.Bez_nal:=True;
                BoldHandlesDM.brhCurrClient.Value:=
                  SL.osush_za_schyot;
                BoldHandlesDM.blhCurrClientSaled.CurrentIndex:=
                  BoldHandlesDM.blhCurrClientSaled.List.IndexOf(SL);
                ReleaseStructForm.SaledTabSheet.Show;
                end
                else
                  ShowMessage('Один из незакрытых счетов по выделенной кампании не привязан к клиенту!');
    end;
end;

procedure TBoldHandlesDM.EmptyCheckActionExecute(Sender: TObject);
var Chk: TSchyot;
begin
  Chk:=
    (BoldHandlesDM.blhCurrMagClientChecks.CurrentElement as TSchyot);

 if Chk.Onulirovan then
   begin
     if MessageDlg('Снять признак онулирования, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          Chk.Onulirovan:=False;
        end;
   end
 else
 begin
  if (  Chk.Oplachen or
                        (Chk.vklyuchaet_oplatu.Count>0)) then
                    begin
                      ShowMessage('Счёт либо оплачен, либо к нему привязаны одна или более оплат!');
                      Exit;
                    end
  else
    begin
      Chk.Onulirovan:=True;
    end;
 end;
end;

procedure TBoldHandlesDM.SetSaledCheckActionExecute(Sender: TObject);
var Chk: TSchyot;
begin
  Chk:=
    (BoldHandlesDM.blhCurrMagClientChecks.CurrentElement as TSchyot);

 if Chk.Oplachen then
   begin
     if MessageDlg('Снять признак оплаты, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          Chk.Oplachen:=False;
        end;
   end
 else
 begin
  if (  Chk.Onulirovan or
                       not Chk.Oplach_po_summe) then
                    begin
                      ShowMessage('Счёт либо онулирован, либо НЕ оплачен по сумме!');
                      Exit;
                    end
  else
    begin
      Chk.Oplachen:=True;
    end;
 end;
end;

procedure TBoldHandlesDM.DelSaledActionExecute(Sender: TObject);
begin
   if BoldHandlesDM.blhCurrClientSaled.List.Count>0 then
     if MessageDlg('Удалить позицию оплаты, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhCurrClientSaled.CurrentBoldObject.Delete;
        end;

end;

procedure TBoldHandlesDM.SaledMoveToCheckActionExecute(Sender: TObject);
var Chk: TSchyot;
begin
 if (BoldHandlesDM.blhCurrClientSaled.CurrentElement as
      TOplata).oplata_po_schyotu<>nil then
  begin
  Chk:=
    (BoldHandlesDM.blhCurrClientSaled.CurrentElement as
      TOplata).oplata_po_schyotu;
  if BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(
       Chk)>=0 then
         begin
           BoldHandlesDM.blhCurrMagClientChecks.CurrentIndex:=
             BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(
               Chk);
           ReleaseStructForm.CheksTabSheet.Show;
         end
  else
    begin
      BoldHandlesDM.bvhShowAllChecks.Value.SetAsVariant(True);
      if BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(
       Chk)>=0 then
         begin
           BoldHandlesDM.blhCurrMagClientChecks.CurrentIndex:=
             BoldHandlesDM.blhCurrMagClientChecks.List.IndexOf(
               Chk);
           ReleaseStructForm.CheksTabSheet.Show;
         end
       else
         ShowMessage('Ошибка, не найден счёт!');  
    end;
  end
  else
     ShowMessage('Нет ассоциированного с оплатой счёта!');
end;

procedure TBoldHandlesDM.SaledMoveToRPLActionExecute(Sender: TObject);
var rpl: TRazmeshenie_reklamy;
begin
if ((BoldHandlesDM.blhCurrClientSaled.CurrentElement as
      TOplata).otnositsya_k_kampanii<>nil) or
      ((BoldHandlesDM.blhCurrClientSaled.CurrentElement as
      TOplata).yavl_oplatoi_za<>nil) then
        begin
          if ((BoldHandlesDM.blhCurrClientSaled.CurrentElement as
             TOplata).yavl_oplatoi_za<>nil) then
               rpl:=
                 (BoldHandlesDM.blhCurrClientSaled.CurrentElement as
                   TOplata).yavl_oplatoi_za
          else if ((BoldHandlesDM.blhCurrClientSaled.CurrentElement as
              TOplata).otnositsya_k_kampanii<>nil) then
                 rpl:=
                  (BoldHandlesDM.blhCurrClientSaled.CurrentElement as
                   TOplata).otnositsya_k_kampanii
          else
            begin
            end;
            if BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl)>=0 then
              begin
                BoldHandlesDM.blhReklPlacesOfMagSection.CurrentIndex:=
                  BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl);
                ReleaseStructForm.RPLTabSheet.Show;
              end
            else
              begin
                BoldHandlesDM.brhCurrMagSect.Value:=
                  nil;
                BoldHandlesDM.bvhAllReklPlaces.Value.SetAsVariant(True);
                BoldHandlesDM.brhCurrAgent.Value:=
                  nil;
                if BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl)>=0 then
                  begin
                    BoldHandlesDM.blhReklPlacesOfMagSection.CurrentIndex:=
                      BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl);
                    ReleaseStructForm.RPLTabSheet.Show;
                  end
                else
                  ShowMessage('Ошибка не найдена кампания!');  
              end;
        end
     else
       ShowMessage('Нет ассоциированной кампании!');   
end;

procedure TBoldHandlesDM.CheckPosMoveToRPLActionExecute(Sender: TObject);
var rpl: TRazmeshenie_reklamy;
begin
  if ((BoldHandlesDM.blhClientCheckPos.CurrentElement as
      TPozic_schta).yavl_schetom_na_opl_reklamy<>nil) then
        begin
          rpl:=
            (BoldHandlesDM.blhClientCheckPos.CurrentElement as
               TPozic_schta).yavl_schetom_na_opl_reklamy;
          if BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl)>=0 then
              begin
                BoldHandlesDM.blhReklPlacesOfMagSection.CurrentIndex:=
                  BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl);
                ReleaseStructForm.RPLTabSheet.Show;
              end
            else
              begin
                BoldHandlesDM.brhCurrMagSect.Value:=
                  nil;
                BoldHandlesDM.bvhAllReklPlaces.Value.SetAsVariant(True);
                BoldHandlesDM.brhCurrAgent.Value:=
                  nil;
                if BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl)>=0 then
                  begin
                    BoldHandlesDM.blhReklPlacesOfMagSection.CurrentIndex:=
                      BoldHandlesDM.blhReklPlacesOfMagSection.list.IndexOf(rpl);
                    ReleaseStructForm.RPLTabSheet.Show;
                  end
                else
                  ShowMessage('Ошибка не найдена кампания!');  
              end;      
        end
  else
    ShowMessage('Нет ассоциированной кампании!');      
end;

procedure TBoldHandlesDM.CheckMoveToClientActionExecute(Sender: TObject);
begin
  if ((BoldHandlesDM.blhCurrMagClientChecks.CurrentElement as
      TSchyot).imeet_pozic_opl_reklamy<>nil) then
        begin
          BoldHandlesDM.brhCurrClient.Value:=
          (BoldHandlesDM.blhCurrMagClientChecks.CurrentElement as
      TSchyot).imeet_pozic_opl_reklamy;
        if (BoldHandlesDM.blhCurrMagClientChecks.CurrentElement as
      TSchyot).imeet_pozic_opl_reklamy.Yavl_yur_licom then
          ReleaseStructForm.CompanyInfoTabSheet.Show
        else
          ReleaseStructForm.IndividInfoTabSheet.Show;
        end
  else
    ShowMessage('Счёт не привязан к клиенту!');      
end;

procedure TBoldHandlesDM.DelIndivClActionExecute(Sender: TObject);
begin
  if BoldHandlesDM.blhAllIndividsClients.List.Count>0 then
   begin
     if MessageDlg('Удалить контакт, вы уверены?',mtConfirmation,mbYesNo,0)=mrYes then
        begin
          BoldHandlesDM.blhAllIndividsClients.CurrentBoldObject.Delete;
        end;
   end;
end;

procedure TBoldHandlesDM.SetRelDateActionExecute(Sender: TObject);
begin
  if SetDTForm.ShowModal=mrOk then
    begin
      if BoldHandlesDM.blhReleasesOfMag.List.Count>0 then
        begin
          (BoldHandlesDM.blhReleasesOfMag.CurrentElement as
            TVypusk_gazety).Data_vypuska:=
              StartOfTheDay(SetDTForm.DateTimePicker1.Date)+
                SetDTForm.DateTimePicker2.Time;
        end;
    end;
end;

procedure TBoldHandlesDM.ToRPLUnsaleActionExecute(Sender: TObject);
begin
  ToRPL((BoldHandlesDM.blhUnSaleRPL.CurrentElement as TRazmeshenie_reklamy));
end;

procedure TBoldHandlesDM.ToRPLQuestActionExecute(Sender: TObject);
begin
  ToRPL((BoldHandlesDM.blhQuestsionsRPL.CurrentElement as TRazmeshenie_reklamy));
end;

end.
