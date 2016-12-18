unit BoldOtherHandlCompUnit;

interface

uses
  SysUtils, Classes, BoldOclVariables, BoldReferenceHandle,
  BoldAbstractListHandle, BoldCursorHandle, BoldVariableHandle,
  BoldDerivedHandle, BoldSubscription, BoldHandles, BoldRootedHandles,
  BoldExpressionHandle, Graphics, BoldElements, BoldControlPack, BoldStringControlPack,
  BoldListHandle, BoldSQLHandle, BoldPropertiesController;

type
  TBoldOthHandleCompDM = class(TDataModule)
    bpcEnabledAdmin: TBoldPropertiesController;
    bpcEnablkedPrSettings: TBoldPropertiesController;
    bpcEnabledLogView: TBoldPropertiesController;
    bpcCurrUserName: TBoldPropertiesController;
    bpcCurrClient: TBoldPropertiesController;
    bpcCurrMag: TBoldPropertiesController;
    bpcCurrMagRelease: TBoldPropertiesController;
    basrOccupSquare: TBoldAsStringRenderer;
    bpcEnableStandSizes: TBoldPropertiesController;
    bpcSpecPrice: TBoldPropertiesController;
    basrRelOfReklColor: TBoldAsStringRenderer;
    bpcRPLPriceInfo: TBoldPropertiesController;
    basrBonusColor: TBoldAsStringRenderer;
    basrCheckYesNo: TBoldAsStringRenderer;
    blhCheckYesNo: TBoldListHandle;
    basrAttentionReminders: TBoldAsStringRenderer;
    bpcShowPriceListAttr: TBoldPropertiesController;
    bpcShowOptAttr: TBoldPropertiesController;
    basrHasOut: TBoldAsStringRenderer;
    bpcEnableMagDelete: TBoldPropertiesController;
    bpcEnableSectDelete: TBoldPropertiesController;
    bpcEnableRelDelete: TBoldPropertiesController;
    bpcEnableOtherDelete: TBoldPropertiesController;
    bpcEnableRPLDelete: TBoldPropertiesController;
    bpcEnableViewPrice: TBoldPropertiesController;
    bpcEnableRPLManip: TBoldPropertiesController;
    bpcPriceMultEnable: TBoldPropertiesController;
    bpcEnableOtherPrice: TBoldPropertiesController;
    bpcEnableWorkWithTypes: TBoldPropertiesController;
    bpcEnableBonusDisc: TBoldPropertiesController;
    bpcEnOptDiscParam: TBoldPropertiesController;
    bpcEnPLDiscParam: TBoldPropertiesController;
    bpcRPLHas: TBoldPropertiesController;
    bpcRPLStopRestart: TBoldPropertiesController;
    bpcRPLStopStartIcon: TBoldPropertiesController;
    basrUnsaledRPLColor: TBoldAsStringRenderer;
    basrUnsaledChecks: TBoldAsStringRenderer;
    basrUnsaledColor: TBoldAsStringRenderer;
    bpcCheckHas: TBoldPropertiesController;
    bpcEnCheckDel: TBoldPropertiesController;
    bpcEnClientDel: TBoldPropertiesController;
    bpcHasCheckPos: TBoldPropertiesController;
    bpcHasSaledPos: TBoldPropertiesController;
    bpcViewSaledComp: TBoldPropertiesController;
    bpcHasRel: TBoldPropertiesController;
    bpcHasUnsaledRPL: TBoldPropertiesController;
    bpcHasQuestRPL: TBoldPropertiesController;
    function basrUnsaledColorGetAsString(Element: TBoldElement;
      Representation: Integer; Expression: string): string;
    procedure basrUnsaledColorSetColor(Element: TBoldElement;
      var AColor: TColor; Representation: Integer; Expression: string);
    procedure basrUnsaledChecksSetColor(Element: TBoldElement;
      var AColor: TColor; Representation: Integer; Expression: string);
    procedure basrUnsaledRPLColorSetColor(Element: TBoldElement;
      var AColor: TColor; Representation: Integer; Expression: string);
    function basrHasOutGetAsString(Element: TBoldElement;
      Representation: Integer; Expression: string): string;
    procedure basrAttentionRemindersSetColor(Element: TBoldElement;
      var AColor: TColor; Representation: Integer; Expression: string);
    function basrCheckYesNoGetAsString(Element: TBoldElement;
      Representation: Integer; Expression: string): string;
    procedure basrBonusColorSetColor(Element: TBoldElement; var AColor: TColor;
      Representation: Integer; Expression: string);
    function basrBonusColorGetAsString(Element: TBoldElement;
      Representation: Integer; Expression: string): string;
    procedure basrRelOfReklColorSetColor(Element: TBoldElement;
      var AColor: TColor; Representation: Integer; Expression: string);
    function basrOccupSquareGetAsString(Element: TBoldElement;
      Representation: Integer; Expression: string): string;
    procedure basrCurrAnnonceSetColor(Element: TBoldElement; var AColor: TColor;
      Representation: Integer; Expression: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoldOthHandleCompDM: TBoldOthHandleCompDM;

implementation

{$R *.dfm}

uses ModelDM, MainForm, HandlesDM, DateUtils, ReleaseStructUnit, BusinessClasses;

procedure TBoldOthHandleCompDM.basrCurrAnnonceSetColor(Element: TBoldElement;
  var AColor: TColor; Representation: Integer; Expression: string);
begin
//  if assigned(element) then
//      aColor := (element as TObjyavlenie).;
end;

function TBoldOthHandleCompDM.basrOccupSquareGetAsString(
  Element: TBoldElement; Representation: Integer; Expression: string): string;
begin
  Result := '';
  if Assigned(Element) then
  begin
    if (Element as TRazdel_izdaniya).otnositsya_k_izd<>nil then
      begin
        if (BoldHandlesDM.bchCurrRelease.Value as TVypusk_gazety)<>(Element as TRazdel_izdaniya).otnositsya_k_izd.imeet_tekushii_vypusk then
           begin
             (Element as TRazdel_izdaniya).otnositsya_k_izd.imeet_tekushii_vypusk:=
                (BoldHandlesDM.bchCurrRelease.Value as TVypusk_gazety);
           end;
      end;
    FloatToStr((Element as TRazdel_izdaniya).Zanyato_ploshadi);
  end;
end;

procedure TBoldOthHandleCompDM.basrRelOfReklColorSetColor(Element: TBoldElement;
  var AColor: TColor; Representation: Integer; Expression: string);
begin
  if Element<>nil then
    begin
      if (Element as TVyhod).Bonusnyi_vyhod then
        AColor:=
          StrToInt64((BoldHandlesDM.behSettElm.Value as TNastroiki).Cvet_pod_voprosom);
    end;
end;

function TBoldOthHandleCompDM.basrBonusColorGetAsString(Element: TBoldElement;
  Representation: Integer; Expression: string): string;
begin
  Result := '';
  if Assigned(Element) then
  begin
    Result := 'œ–»Ã≈– “≈ —“¿';
  end;
end;

procedure TBoldOthHandleCompDM.basrBonusColorSetColor(Element: TBoldElement;
  var AColor: TColor; Representation: Integer; Expression: string);
begin
  if Element<>nil then
    begin
     AColor:=
      StrToInt64((Element as TNastroiki).Cvet_pod_voprosom);
    end;
end;

function TBoldOthHandleCompDM.basrCheckYesNoGetAsString(Element: TBoldElement;
  Representation: Integer; Expression: string): string;
begin
  Result := '';
  if Assigned(Element) then
  begin
    if (Element as TOplata).Bez_nal then
      Result := '¡≈«Õ¿À»◊Õ€… –¿—◊®“'
    else
      Result := 'œ–»’ŒƒÕ€… Œ–ƒ≈–';
  end;
end;

procedure TBoldOthHandleCompDM.basrAttentionRemindersSetColor(
  Element: TBoldElement; var AColor: TColor; Representation: Integer;
  Expression: string);
begin
if Assigned(Element) then
  begin
     if not (Element as TNapominanie).Uchteno then
       if  (Element as TNapominanie).Data<=(Today+Time) then
          AColor:=clRed;
  end;
end;

function TBoldOthHandleCompDM.basrHasOutGetAsString(Element: TBoldElement;
  Representation: Integer; Expression: string): string;
begin
  Result := '';
 if BoldModelDM.bsh.Active then
  if Assigned(Element) then
  begin
    if BoldHandlesDM.blhReklPlacesOfMagSection.List.Count>0 then
      begin
        if (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement as
          TRazmeshenie_reklamy).vyhodit_v_vypuskah.Includes((Element
            as TVypusk_gazety)) then
              Result := 'ƒ¿'
    else
      Result := 'Õ≈“';
      end;
  end;
end;

procedure TBoldOthHandleCompDM.basrUnsaledRPLColorSetColor(Element: TBoldElement;
  var AColor: TColor; Representation: Integer; Expression: string);
begin
  if (Element<>nil) then
     begin
       if not (Element as TRazmeshenie_reklamy).Oplachen then
         AColor:=
           StrToInt64((BoldHandlesDM.behSettElm.Value as TNastroiki).Cvet_neoplachenyh);
     end;
end;

procedure TBoldOthHandleCompDM.basrUnsaledChecksSetColor(Element: TBoldElement;
  var AColor: TColor; Representation: Integer; Expression: string);
begin
  if (Element<>nil) then
     begin
       if not (Element as TSchyot).Oplach_po_summe then
         AColor:=
           StrToInt64((BoldHandlesDM.behSettElm.Value as TNastroiki).Cvet_neoplachenyh);
     end;
end;

procedure TBoldOthHandleCompDM.basrUnsaledColorSetColor(Element: TBoldElement;
  var AColor: TColor; Representation: Integer; Expression: string);
begin
if (Element<>nil) then
     begin
         AColor:=
           StrToInt64((Element as TNastroiki).Cvet_neoplachenyh);
     end;
end;

function TBoldOthHandleCompDM.basrUnsaledColorGetAsString(Element: TBoldElement;
  Representation: Integer; Expression: string): string;
begin
  Result := '';
  if Assigned(Element) then
  begin
    Result := 'œ–»Ã≈– “≈ —“¿';
  end;
end;

end.
