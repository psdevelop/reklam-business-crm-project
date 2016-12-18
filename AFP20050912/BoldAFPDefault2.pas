
/////////////////////////////////////////////////////////
//                                                     //
//              Bold for Delphi                        //
//    Copyright (c) 2004 BoldSoft AB, Sweden           //
//                                                     //
/////////////////////////////////////////////////////////

{ Global compiler directives }
//{$include bold.inc}
unit BoldAFPDefault2;

interface

uses
  Classes,
  Graphics,
  Forms,
  Controls,
  StdCtrls,
  ExtCtrls,
  Menus,
  ComCtrls,
  BoldDefs,
  BoldControlPackDefs,
  BoldSubscription,
  BoldHandles,
  BoldAbstractListHandle,
  BoldRootedHandles,
  BoldAFPUser,
  BoldElements,
  BoldSystem,
  BoldSystemRT,
  {---Bold aware components---}
  BoldGrid,
  BoldCaptionController,
  BoldDragDropTarget;

type
  {---Forward declarations---}
  TBoldDefaultFormProvider = class;
  TBoldFormProviderForList = class;
  TBoldFormProviderForSingle = class;
  TBoldDefaultAttributeAutoFormProvider = class;
  TBoldDefaultObjectAutoFormProvider = class;
  TBoldDefaultSystemAutoFormProvider = class;
  TBoldDefaultAttributeListAutoFormProvider = class;
  TBoldDefaultObjectListAutoFormProvider = class;

  {---TBoldDefaultFormProvider---}
  TBoldDefaultFormProvider = class(TBoldUserFormProvider)
  private
    fApplyPolicy: TBoldApplyPolicy;
    fOrientation: TBoldOrientation;
    fReusing: boolean;
    class procedure DefaultFormDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    class procedure DefaultFormOnClose(Sender: TObject; var Action: TCloseAction);
    class procedure DefaultReceiveObjectGone(Sender: TObject);
    class procedure DefaultFormOnResize(Sender: TObject);
  protected
    procedure DoGenerateForm; override;
    procedure EnsureForm; override;
    procedure EnsureHandle; override;
    function GetFormClass: TFormClass; override;
    function GetTarget: TWinControl; override;
    procedure PostEnsureForm; virtual;
    procedure PostGenerateAutoForm; override;
    procedure PreGenerateAutoForm; override;
    property ApplyPolicy: TBoldApplyPolicy read fApplyPolicy write fApplyPolicy;
    property Orientation: TBoldOrientation read fOrientation write fOrientation;
    property Reusing: boolean read fReusing;
  public
    constructor Create(BoldElement: TBoldElement); override;
  end;

  {---TBoldFormProviderForList---}
  TBoldFormProviderForList = class(TBoldDefaultFormProvider)
  private
    fBoldGrid: TBoldGrid;
    fListHandle: TBoldAbstractListHandle;
    function GetlistHandle: TBoldAbstractListHandle;
  protected
    procedure EnsureHandle; override;
    procedure PreEnsureComponents; override;
    property BoldGrid: TBoldGrid read fBoldGrid;
    property ListHandle: TBoldAbstractListHandle read GetlistHandle;
  end;


  {---TBoldDefaultSystemAutoFormProvider---}
  TBoldDefaultSystemAutoFormProvider = class(TBoldFormProviderForList)
  end;

  {---TBoldDefaultAttributeListAutoFormProvider---}
  TBoldDefaultAttributeListAutoFormProvider = class(TBoldFormProviderForList)
  end;

  {---TBoldDefaultObjectListAutoFormProvider---}
  TBoldDefaultObjectListAutoFormProvider = class(TBoldFormProviderForList)
   end;

  {---TBoldFormProviderForSingle---}
  TBoldFormProviderForSingle = class(TBoldDefaultFormProvider)
  protected
    procedure EnsureHandle; override;
  end;

  {---TBoldDefaultAttributeAutoFormProvider---}
  TBoldDefaultAttributeAutoFormProvider = class(TBoldFormProviderForSingle)
  protected
    procedure EnsureComponents; override;
  end;

  {---TBoldDefaultObjectAutoFormProvider---}
  TBoldDefaultObjectAutoFormProvider = class(TBoldFormProviderForSingle)
  private
    fClassTypeInfoOverride: boolean;
    fClassTypeInfo: TBoldClassTypeInfo;
    fPageControl: TPageControl;
    fMemberRTInfoList: TBoldMemberRTInfoList;
    fButtonPanel: TPanel;
    fDragSource: TBoldDropTarget;
    function GetGoodStringRepresentationForSingleLink(MemberRTInfo: TBoldMemberRTInfo): string;
    function GetLargestWidth: integer;
    function GetMemberRTInfoList: TBoldMemberRTInfoList;
    procedure SetMemberRTInfoList(Value: TBoldMemberRTInfoList);
    function GetPageControl: TPageControl;
    function GetBoldObject: TBoldObject;
    function GetClassTypeInfo: TBoldClassTypeInfo;
    function MakeComponentName(const Postfix: string; ClassTypeInfo: TBoldClassTypeInfo; MemberRTInfo: TBoldMemberRTInfo): string;
    function CreateTabSheet(const Caption, Name: string): TTabSheet;
    function CreateScrollBox(aParent: TWinControl): TScrollBox;
    function CreateCaptionController: TBoldCaptionController;
    function CreateButtonPanel: TPanel;
    procedure ActivateTabSheetHandle(Sender: TObject);
    function CompareObjectsOnTimeStamp(Item1, Item2: TBoldElement): Integer;
    procedure DeriveObjectHistory(Sender: TComponent; RootValue: TBoldElement; ResultElement: TBoldIndirectElement; Subscriber: TBoldSubscriber);
    procedure ChangeNonEmbeddedLinksInclusion(Sender: TObject);
    procedure CreateButtons;
    function CreateDragSource(aParent: TWinControl): TBoldDropTarget;
    class procedure BoldAsStringRenderer1SetColor(Element: TBoldElement; var AColor: TColor; Representation: Integer; Expression: String);
    class procedure CloseButtonClick(Sender: TObject);
    class procedure CancelButtonClick(Sender: TObject);
    class procedure OKButtonClick(Sender: TObject);
    class procedure ApplyButtonClick(Sender: TObject);
  protected
    fDisplaySingleRoleButtons: Boolean;
    function MemberShouldBeDisplayed(Member: TBoldMemberRTInfo): Boolean; virtual;
    procedure EnsureComponents; override;
    procedure EnsureObjectVersionControls;
    procedure EnsureMultiRoleMemberControls;
    procedure EnsureSingleMemberControls;
    procedure CreateMethodButtonsForClass;
    property BoldObject: TBoldObject read GetBoldObject;
    property ClassTypeInfo: TBoldClassTypeInfo read GetClassTypeInfo;
    property PageControl: TPageControl read GetPageControl;
    property ClassTypeInfoOverride: boolean read fClassTypeInfoOverride;
    property ButtonPanel: TPanel read fButtonPanel write fButtonPanel;
    property DragSource: TBoldDropTarget read fDragSource;
  public
    procedure RegisterClassTypeInfo(ClassTypeInfo: TBoldClassTypeInfo);
    property MemberRTInfoList: TBoldMemberRTInfoList read GetMemberRTInfoList write SetMemberRTInfoList;
    property ApplyPolicy;
    property DisplaySingleRoleButtons: Boolean read fDisplaySingleRoleButtons write fDisplaySingleRoleButtons;
  end;

  {---TMethodButton---}
  TMethodButton = class(TButton)
  private
    fObjectHandle: TBoldRootedHandle;
    fMethodNumber: Integer;
    fResultEditBox: TEdit;
    fValueHolder: TList;
  public
    constructor CreateWithInfo(AOwner: TComponent; ObjectHandle: TBoldRootedHandle; Number: Integer; ResultEditBox: TEdit);
    destructor Destroy; override;
    procedure Click; override;
    property MethodNumber: Integer read fMethodNumber;
    property ObjectHandle: TBoldRootedHandle read fObjectHandle;
    property ResultEditBox: TEdit read fResultEditBox;
    property ValueHolder: TList read fValueHolder;
  end;

  TRoleButton = class(TButton)
  private
    BoldHandle: TBoldElementHandle;
  public
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure NavigateToSingleRole(Sender: TObject);
    procedure UnlinkObject(Sender: TObject);
    procedure DeleteObject(Sender: TObject);
    procedure CreateNewObject(Sender: TObject);
    procedure AddExistingObject(Sender: TObject);   // Add this line
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TRoleMenu = class(TPopupMenu)
  private
    fmnuDelete: TMenuItem;
    fmnuNavigate: TMenuItem;
    fmnuUnlink: TMenuItem;
    fmnuCreateNew: TMenuItem;
    fRoleButton: TRoleButton;
    procedure AdjustEnabled(sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  BoldShowConstraintsInAutoFormGrids: boolean = true;
  BoldShowHistoryTabInAutoForms: boolean = true;
  DefaultApplyPolicy: TBoldApplyPolicy = bapExit;
  AutoFormsInTaskbar:boolean = true;

function AutoFormForElement(BoldElement: TBoldElement; ApplyPolicy:TBoldApplyPolicy = bapExit): TForm;
procedure ShowAutoFormForElement(BoldElement: TBoldElement);
function ShowModalAutoFormForElement(BoldObject: TBoldObject; AutoDelete:boolean = true):boolean;

implementation

{$R BoldAFPDefault.res}

uses
  SysUtils,
  Dialogs,
  BoldGuiResourceStrings2,
  BoldUtils,
  BoldBase,
  BoldQueue,
  BoldGUI,
  BoldComboBox,
  BoldAFP,
  BoldNavigator,
  BoldDerivedHandle,
  BoldListHandle,
  BoldExpressionHandle,
  BoldControlsDefs,
  BoldReferenceHandle,
  BoldEdit,
  BoldStringControlPack,
  BoldCondition,
  BoldId,
  BoldUMLTypes,
  formGenericSelect,
  Windows;

function AutoFormForElement(BoldElement: TBoldElement; ApplyPolicy:TBoldApplyPolicy = bapExit): TForm;
var
  OldAP:TBoldApplyPolicy;
begin
  OldAP:=DefaultApplyPolicy;
  try
    DefaultApplyPolicy:=ApplyPolicy;
    Result:=AutoFormProviderRegistry.FormForElement(BoldElement);
  finally
    DefaultApplyPolicy:=OldAP;
  end;
end;

procedure ShowAutoFormForElement(BoldElement: TBoldElement);
var
  F:TForm;
begin
  F:=AutoFormForElement(BoldElement);
  if Assigned(F) then
    F.Show;
end;

function ShowModalAutoFormForElement(BoldObject: TBoldObject; AutoDelete:boolean = true):boolean;
var
  F:TForm;
begin
  Result:=false;
  F:=AutoFormForElement(BoldObject,bapDemand);
  if Assigned(F) then
    if (F.ShowModal=mrCancel) then
      if AutoDelete then
        BoldObject.Delete
      else
    else
      Result:=true;
end;

const
  BOXMARGIN           = 8;
  BOXSPACING          = 2;
  CONTROLMARGIN       = 10;
  LISTBOXLABELHEIGHT  = 18;
  MAXFORMHEIGHT       = 450;
  MINFORMHEIGHT       = 150;
  EDITHEIGHT          = 20;
  EDITWIDTH           = 121;
  LISTBOXHEIGHT       = 97;
  LISTBOXWIDTH        = 121;
  PANELHEIGHT         = 35;

var
  fReadOnlyStringRenderer: TBoldAsStringRenderer;

type
  TBoldExposedCustomGrid = class(TBoldCustomGrid);
  TBoldEditClass = class of TBoldEdit;
  TBoldAFEdit = class;
  TAFPPageControl = class;
  TAutoFormListEntry = class;
  TAutoFormList = class;
  TExposedGrid = class(TBoldGrid);

  {--TBoldAFEdit---}
  TBoldAFEdit = class(TBoldEdit)
  protected
    procedure DblClick; override;
  end;

  {---TAFPPageControl---}
  TAFPPageControl = class(TPageControl)
  protected
    function ImageDelta: Integer;
    procedure ActivatePage(const x, y: integer);
    procedure DragOver(Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean); override;
  end;

  { TAutoFormListEntry }
  TAutoFormListEntry = class(TBoldMemoryManagedObject)
  private
    fForm: TForm;
    fOnClose: TCloseEvent;
    fOnDragOver: TDragOverEvent;
    fElement: TBoldElement;
  public
    constructor Create(Form: TForm; Element: TBoldElement);
    property Element: TBoldElement read fElement;
    property Form: TForm read fForm;
    property OnClose: TCloseEvent read fOnClose write fOnClose;
    property OnDragOver: TDragOverEvent read fOnDragOver write fOnDragOver;
  end;

  { TAutoFormList }
  TAutoFormList = class(TList)
  private
    function GetForms(const index: integer): TForm;
    function GetEntries(const index: integer): TAutoFormListEntry;
  public
    function IndexOfForm(anObject: TObject): integer;
    function IndexOfElement(anObject: TObject): integer;
    procedure AddPair(Form: TForm; Element: TBoldElement);
    procedure RemoveByForm(Form: TForm);
    property Forms[const index: integer]: TForm read GetForms;
    property Entries[const index: integer]: TAutoFormListEntry read GetEntries;
  end;

var
  G_BoldActiveAutoForms: TAutoFormList;

{---TMethodButton---}
constructor TMethodButton.CreateWithInfo(AOwner: TComponent; ObjectHandle: TBoldRootedHandle; Number: Integer; ResultEditBox: TEdit);
begin
  fObjectHandle := ObjectHandle;
  fMethodNumber := Number;
  fResultEditBox := ResultEditBox;
  fValueHolder := TList.Create;
  inherited Create(AOwner);
end;

destructor TMethodButton.Destroy;
begin
  FreeAndNil(fValueHolder);
  inherited;
end;

procedure TMethodButton.Click;
{var
   MethodEvaluator: TBoldOclSymbol;
   DElem: TBoldElement;
   i: integer;
   Method: TBoldMethodRTInfo;
   OperationParameters: TBoldOclSymbolParameters;}
begin
{
  Method := (ObjectHandle.Value as TBoldObject).BoldClassRTInfo.Methods[MethodNumber];
  MethodEvaluator := (Method.MethodEvaluator as TBoldOclSymbol);
  FillChar(OperationParameters, Sizeof(OperationParameters), 0);
  OperationParameters.Result := TBoldIndirectElement.Create;
  OperationParameters.Args[0] := TBoldIndirectElement.Create;
  OperationParameters.args[0].SetReferenceValue(ObjectHandle.Value);

  for i := 0 to ValueHolder.Count - 1 do
  begin
    OperationParameters.args[i+1] := TBoldIndirectElement.Create;
    if (TObject(ValueHolder[i]) is TBoldExpressionHandle) then
    begin
      OperationParameters.args[i+1].SetReferenceValue(TBoldExpressionHandle(ValueHolder[i]).Value);
      if not OperationParameters.args[i+1].Value.BoldType.ConformsTo(MethodEvaluator.FormalArguments[i+1]) then
        raise EBold.CreateFmt('%s.%s: Invalid type of argument %s (%s not can not conform to %s)',
          [Method.ClassRTInfo.DelphiName, Method.DelphiName, Method.Parameters[i],
            OperationParameters.args[i+1].Value.BoldType.Delphiname,
            MethodEvaluator.FormalArguments[i+1].DelphiName]);
    end
    else if TObject(ValueHolder[i]) is TEdit then
    begin
      DElem := MethodEvaluator.FormalArguments[i+1].NewDirectElementWithType;
      OperationParameters.args[i+1].SetOwnedValue(DElem);
      DElem.AsString := TEdit(ValueHolder[i]).text;
    end;
  end;
  OperationParameters.subscriber := nil;
  OperationParameters.System := (ObjectHandle.Value as TBoldObject).BoldSystem;

  MethodEvaluator.Evaluate(OperationParameters);

  if Assigned(ResultEditBox) then
  begin
    if assigned(OperationParameters.Result.Value) then
      ResultEditBox.Text := OperationParameters.Result.Value.AsString
    else
      ResultEditBox.Text := '';
  end;
  OperationParameters.Result.Free;

  for i := low(OperationParameters.Args) to high(OperationParameters.Args) do
    OperationParameters.Args[i].Free;
}
end;

{--TBoldAFEdit---}
procedure TBoldAFEdit.DblClick;
begin
  if Assigned(BoldHandle) and
     (BoldHandle.Value is TBoldObjectReference) and
     assigned((BoldHandle.Value as TBoldObjectReference).BoldObject) then
    AutoFormProviderRegistry.FormForElement(TBoldObjectReference(BoldHandle.Value).BoldObject).Show;
end;

{---TAFPPageControl---}
procedure TAFPPageControl.DragOver(Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
  if (BoldGUIHandler.DraggedObjects.Count > 0) then
    ActivatePage(x, y);
end;

procedure TAFPPageControl.ActivatePage(const x, y: integer);
var
  p, Page: integer;
begin
  with TPicture.Create do
  try
    Bitmap.Canvas.Font.Assign(Font);

    p := -1;
    Page := -1;

    while (p < x) and (Page < PageCount - 1) do
    begin
      Inc(Page);
      Inc(p, Bitmap.Canvas.TextWidth(Pages[Page].Caption) + 14 + ImageDelta);
    end;
    ActivePage := Pages[Page];
  finally
    Free;
  end;
end;

{---TBoldDefaultFormProvider---}
class procedure TBoldDefaultFormProvider.DefaultFormDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  StoredDragOverEvent: TDragOverEvent;
begin
  Accept := False;
  if Sender is TForm then
  begin
    if (BoldGUIHandler.DraggedObjects.Count > 0) then
      TForm(Sender).BringToFront;
    StoredDragOverEvent := G_BoldActiveAutoForms.Entries[G_BoldActiveAutoForms.IndexOfForm(TForm(Sender))].OnDragOver;
    if Assigned(StoredDragOverEvent) then
      StoredDragOverEvent(Sender, Source, x, y, State, Accept);
  end;
end;

class procedure TBoldDefaultFormProvider.DefaultFormOnClose(Sender: TObject; var Action: TCloseAction);
var
  Form: TForm;
  StoredCloseEvent: TCloseEvent;
begin
  Action := caFree;
  if Sender is TForm then
  begin
    Form := Sender as TForm;
    Form.ActiveControl.Perform(CM_EXIT, 0, 0);
    StoredCloseEvent := G_BoldActiveAutoForms.Entries[G_BoldActiveAutoForms.IndexOfForm(Form)].OnClose;
    if Assigned(StoredCloseEvent) then
      StoredCloseEvent(Sender, Action);
    G_BoldActiveAutoForms.RemoveByForm(Form);
  end;
end;

procedure TBoldDefaultFormProvider.PostGenerateAutoForm;
var
  Entry: TAutoFormListEntry;
  DefaultDragOverEvent: TDragOverEvent;
  DefaultCloseEvent: TCloseEvent;
begin
  Entry := G_BoldActiveAutoForms.Entries[G_BoldActiveAutoForms.IndexOfForm(Form)];
  DefaultCloseEvent := DefaultFormOnClose;
  DefaultDragOverEvent := DefaultFormDragOver;
  if @Form.OnClose <> @DefaultCloseEvent then
    Entry.OnClose := Form.OnClose;
  if @Form.OnDragOver <> @DefaultDragOverEvent then
    Entry.OnDragOver := Form.OnDragOver;
  Form.OnClose := DefaultFormOnClose;
  Form.OnDragOver := DefaultFormDragOver;
  Form.OnResize:=DefaultFormOnResize;
end;

function TBoldDefaultFormProvider.GetFormClass: TFormClass;
begin
  Result := TForm;
end;

procedure TBoldDefaultFormProvider.PreGenerateAutoForm;
var
  index: integer;
begin
  Index := G_BoldActiveAutoForms.IndexOfElement(Element);
  fReUsing := index <> -1;
  if Reusing then
  begin
    Form := G_BoldActiveAutoForms.Forms[Index];
    with Form do
    begin
      BringToFront;
      if WindowState = wsMinimized then
        WindowState := wsNormal;
    end;
  end;
end;

procedure TBoldDefaultFormProvider.DoGenerateForm;
begin
  if not ReUsing then
    inherited;
end;

procedure TBoldDefaultFormProvider.PostEnsureForm;
begin
  Form.Position := poDefaultPosOnly;
  Form.BoundsRect := Rect(0, 0, 440, 360);
  if AutoFormsInTaskbar AND (ApplyPolicy in [bapChange,bapExit]) then
    SetWindowLong(Form.Handle, GWL_HWNDPARENT, 0);
end;

procedure TBoldDefaultFormProvider.EnsureForm;
begin
  inherited;
  if Assigned(Form) then
  begin
    //Form.FormStyle:=fsMDIChild;
    G_BoldActiveAutoForms.AddPair(Form, Element);
    PostEnsureForm;
  end;
end;

function TBoldDefaultFormProvider.GetTarget: TWinControl;
begin
  Result := Form;
end;

procedure TBoldDefaultFormProvider.EnsureHandle;
var
  DesInfo: Integer;
begin
  with BoldHandle do
  begin
    LongRec(DesInfo).Lo := 2;
    LongRec(DesInfo).Hi := 2;
    DesignInfo          := DesInfo;
  end;
end;

{---TBoldFormProviderForList---}
function TBoldFormProviderForList.GetlistHandle: TBoldAbstractListHandle;
begin
  if not assigned(fListHandle) then
  begin
    fListHandle := TBoldListHandle.Create(Form);
    fListHandle.RootHandle := BoldHandle;
  end;
  Result := fListHandle;
end;

procedure TBoldFormProviderForList.EnsureHandle;
var
  DesignTimeContext: TBoldElementTypeInfo;
begin
  BoldHandle := TBoldReferenceHandle.Create(Form);
  DesignTimeContext := Element.BoldType;
  if DesignTimeContext is TBoldListTypeInfo then
    DesignTimeContext := (DesignTimeContext as TBoldListTypeInfo).ListElementTypeInfo;
  BoldHandle.StaticValueTypeName := DesignTimeContext.ExpressionName;
  BoldHandle.OnObjectDeleted := DefaultReceiveObjectGone;
  BoldHandle.OnValueDestroyed := DefaultReceiveObjectGone;
  inherited;
end;

procedure TBoldFormProviderForList.PreEnsureComponents;
var
  P:TPanel;
begin
  inherited;
  fBoldGrid := TBoldGrid.Create(Form);
  with fBoldGrid do
  begin
    Name        := 'BoldGrid';
    BoldShowConstraints := BoldShowConstraintsInAutoFormGrids;
    //BoldAutoColumns := True;
    BoldHandle  := ListHandle;
    Align       := alClient;
    Parent      := Target;
    TExposedGrid(fBoldGrid).CreateDefaultColumns;
  end;

  {with TBoldNavigator.Create(Form) do
  begin
    Parent := Target;
    Align := alBottom;
    Boldhandle := ListHandle;
    name := 'BoldNavigator';
  end;}

  P:=TPanel.Create(Form);
  with P do
  begin
    Parent := Target;
    Align := alBottom;
    name := 'MainPanel';
    BevelOuter:=bvNone;
  end;

  with TBoldNavigator.Create(Form) do
  begin
    Parent := P;
    Align := alLeft;
    Height:=21;
    Width:=126;
    Flat:=true;
    Boldhandle := ListHandle;
    name := 'BoldNavigator';
  end;

  Form.Caption := Element.BoldType.ModelName;
  ListHandle.Name := 'BoldListHandle';
end;

{---TBoldFormProviderForSingle---}
procedure TBoldFormProviderForSingle.EnsureHandle;
begin
  BoldHandle := TBoldReferenceHandle.Create(Form);
  BoldHandle.StaticValueTypeName := Element.BoldType.ExpressionName;
  BoldHandle.OnObjectDeleted := DefaultReceiveObjectGone;
  BoldHandle.OnValueDestroyed := DefaultReceiveObjectGone;
  inherited;
end;

{---TBoldDefaultObjectAutoFormProvider---}
function TBoldDefaultObjectAutoFormProvider.MakeComponentName(const Postfix: string; ClassTypeInfo: TBoldClassTypeInfo; MemberRTInfo: TBoldMemberRTInfo): string;
var
  MemberName: string;
begin
  if Assigned(MemberRTInfo) then
    MemberName := MemberRTInfo.ExpressionName
  else
    MemberName := '';
  Result := Format('%s%s%s', [ClassTypeInfo.ExpressionName, MemberName, PostFix]);
end;

function TBoldDefaultObjectAutoFormProvider.GetPageControl;
begin
  if not Assigned(fPageControl) then
  begin
    if BoldRunningAsDesignTimePackage then
      fPageControl := TPageControl.Create(Form)
    else
      fPageControl := TAFPPageControl.Create(Form);

    with fPageControl do
    begin
      Parent := Target;
      Name := 'PageControl';
      Align := alClient;
    end;
  end;
  Result := fPageControl;
end;

procedure TBoldDefaultObjectAutoFormProvider.RegisterClassTypeInfo(ClassTypeInfo: TBoldClassTypeInfo);
begin
  fClassTypeInfoOverride := True;
  fClassTypeInfo := ClassTypeInfo;
end;

function TBoldDefaultObjectAutoFormProvider.GetClassTypeInfo: TBoldClassTypeInfo;
begin
  if ClassTypeInfoOverride then
    Result := fClassTypeInfo
  else
    Result := ElementTypeInfo as TBoldClassTypeInfo;
end;

function TBoldDefaultObjectAutoFormProvider.GetMemberRTInfoList: TBoldMemberRTInfoList;
begin
  if not Assigned(fMemberRTInfoList) then
    fMemberRTInfoList := BoldObject.BoldClassTypeInfo.AllMembers;
  Result := fMemberRTInfoList;
end;

procedure TBoldDefaultObjectAutoFormProvider.SetMemberRTInfoList(Value: TBoldMemberRTInfoList);
begin
  fMemberRTInfoList := Value;
end;

function TBoldDefaultObjectAutoFormProvider.GetBoldObject: TBoldObject;
begin
  Assert(Element is TBoldObject, 'Attempting to invoke object form generator with no object in sight!');
  Result := Element as TBoldObject;
end;

procedure TBoldDefaultObjectAutoFormProvider.EnsureComponents;
begin
  //form.Constraints.MaxHeight := round(Screen.Height * 0.9);
  //form.Constraints.MaxWidth := round(Screen.Width * 0.9);

  ButtonPanel := CreateButtonPanel;
  CreateButtons;
  EnsureSingleMemberControls;
  EnsureObjectVersionControls;
  EnsureMultiRoleMemberControls;
  CreateMethodButtonsForClass;

  CreateCaptionController;
end;

procedure TBoldDefaultObjectAutoFormProvider.CreateMethodButtonsForClass;
{var
  j, i: integer;
  methodRTInfo: TBoldMethodRTInfo;
  SystemRTInfo: TBoldSystemRTInfo;
  MethodRTInfoList: TBoldMethodRTInfoList;
  Button: TButton;
  MethodButton: TMethodButton;
  ArgBox: TCustomEdit;
  ResultBox: TEdit;
  NextLeft: integer;
  desinfo: Integer;
  TabSheet: TTabSheet;
  NextTop: Integer;}
begin
{  NextTop   := 10;
  ResultBox := nil;
  TabSheet  := nil;

  MethodRTInfoList := ClassRTInfo.Methods;

  for i := 0 to MethodRTInfoList.Count - 1 do
  begin
    if MethodRTInfoList[i] is TBoldMethodRTInfo then
    begin
      if not assigned(TabSheet) then
        TabSheet := CreateTabSheet('Methods', 'MethodsTab');

      MethodRTInfo := MethodRTInfoList[i] as TBoldMethodRTInfo;
      SystemRTInfo := ClassRTInfo.SystemRTInfo;

      if MethodRTInfo.GenerateOcl then
      begin
        if MethodRTInfo.ReturnType <> '' then
        begin
          ResultBox := TEdit.Create(Form);
          with ResultBox do
          begin
            Readonly  := True;
            Text      := '';
            Parent    := TabSheet;
          end;
        end;

        if BoldRunningAsDesignTimePackage then
        begin
          Button := TButton.Create(Form);
          MethodButton := nil;
        end
        else
        begin
          MethodButton    := TMethodButton.CreateWithInfo(Form, BoldHandle, i, ResultBox);
          Button          := MethodButton;
        end;

        with Button do
        begin
          Caption   := MethodRTInfo.ModelName;
          name      := MethodRTInfo.DelphiName+'Button';
          SetBounds(CONTROLMARGIN, NextTop + 4, EDITWIDTH, EDITHEIGHT);
          NextLeft  := Left + Width + CONTROLMARGIN;
          Parent    := TabSheet;
        end;

        for j := 0 to MethodRTInfo.NumberOfParameters - 1 do
        begin
          if assigned(SystemRTInfo.ClassByDelphiName[MethodRTInfo.ParameterTypes[j]]) then
          begin
            ArgBox                              := TBoldEdit.Create(Form);
            with TBoldEdit(ArgBox) do
            begin
              BoldHandle                   := TBoldExpressionHandle.Create(Form);
              BoldHandle.Element.Boldtype  := ClassRTInfo.BoldType;
              BoldHandle.Name              := Format('%s_%s_%sHandle', [ClassRTInfo.DelphiName, MethodRTInfo.DelphiName, MethodRTInfo.Parameters[j]]);
              LongRec(desinfo).Lo          := NextLeft + Width - 30; //set Left
              LongRec(desinfo).Hi          := NextTop + 25; //Set Top;
              BoldHandle.DesignInfo        := DesInfo;
              BoldProperties.DropMode      := bdpReplace;
              if not BoldRunningAsDesignTimePackage then
                MethodButton.valueHolder.Add(BoldHandle);
            end;
          end
          else
          begin
            ArgBox := TEdit.Create(Form);
            ArgBox.Text := '';
            if not BoldRunningAsDesignTimePackage then
              MethodButton.valueHolder.Add(ArgBox);
          end;

          with TLabel.Create(Form) do
          begin
            Caption     := MethodRTInfo.Parameters[j];
            Left        := NextLeft;
            Top         := NextTop - CONTROLMARGIN;
            Parent      := TabSheet;
          end;

          with ArgBox do
          begin
            Left      := NextLeft;
            Top       := NextTop+4;
            Inc(NextLeft, Width + CONTROLMARGIN);
            Name      := Format('%s_%s_%s', [ClassRTInfo.DelphiName, MethodRTInfo.DelphiName, MethodRTInfo.Parameters[j]]);
            Hint      := Format('%s: %s', [MethodRTInfo.Parameters[j], MethodRTInfo.ParameterTypes[j]]);
            Text      := '';
            ShowHint  := true;
            Parent    := TabSheet;
          end;
        end;
        if MethodRTInfo.ReturnType <> '' then
        begin
          with TLabel.Create(Form) do
          begin
            Caption := 'Result';
            Left    := NextLeft;
            Top     := NextTop - CONTROLMARGIN;
            Parent  := TabSheet;
          end;

          with ResultBox do
          begin
            Top       := NextTop + 4;
            Left      := NextLeft;
            Name      := Format('ResultBox%d', [i+1]);
            Hint      := Format('Result from %s', [MethodRTInfo.ModelName]);
            ShowHint  := True;
            Color     := clInactiveCaptionText;
          end;
        end;
        Inc(NextTop, 37);
      end;
    end;
  end;
//  if NextTop + 71 > TargetWinControl.Height then
//    TargetWinControl.Height := NextTop+71;
}
end;

{
procedure FillColumns(BoldCustomGrid: TBoldCustomGrid; MemberRTInfoList: TBoldMemberRTInfoList);
var
  i: integer;
  Member: TBoldMemberRTInfo;
begin
  with TBoldExposedCustomGrid(BoldCustomGrid) do
  with BoldCustomGrid do
  begin
    AddColumn;
    for i := 0 to MemberRTInfoList.Count - 1 do
    begin
      Member := MemberRTInfoList[i];
      if Member.IsAttribute or Member.IsSingleRole then
      begin
        AddColumn;
        with Columns[ColCount - 1] do
          BoldProperties.Expression := Member.ExpressionName;
      end;
    end;
  end;
end;
}

function TBoldDefaultObjectAutoFormProvider.CreateTabSheet(const Caption, Name: string): TTabSheet;
begin
  Result := TTabSheet.Create(PageControl);
  Result.PageControl := PageControl;
  Result.Caption     := Caption;
  Result.Name        := Name;
end;

procedure TBoldDefaultObjectAutoFormProvider.EnsureMultiRoleMemberControls;
var
  i: integer;
  Member: TBoldMemberRTInfo;
  ListHandle: TBoldListHandle;
  g: TBoldGrid;
  TabSheet: TTabSheet;
  DesInfo: longint;
  ValueType: TBoldElementTypeInfo;
  Navigator: TBoldNavigator;
  P:TPanel;
begin
  for i := 0 to MemberRTInfoList.Count - 1 do
  begin
    Member := MemberRTInfoList[i];
    if Member.IsMultiRole then
    begin
      if (Member.Visibility = vkPublic) AND MemberShouldBeDisplayed(Member) then
      begin
        TabSheet := CreateTabSheet(Member.ModelName, MakeComponentName('Tab', ClassTypeInfo, Member));

        listHandle := TBoldListHandle.Create(TabSheet);
        ListHandle.Enabled := False;
        TabSheet.OnShow := ActivateTabSheetHandle;

        LongRec(desinfo).Lo := CONTROLMARGIN;
        LongRec(desinfo).Hi := CONTROLMARGIN;
        listHandle.DesignInfo := desInfo;
        listHandle.RootHandle := BoldHandle;
        listHandle.Expression := Member.ExpressionName;
        listHandle.Name       := MakeComponentName('Handle', ClassTypeInfo, Member);
        ValueType := Member.BoldType;
        if ValueType is TBoldListTypeInfo then
          ValueType := (ValueType as TBoldListTypeInfo).ListElementTypeInfo;
        listHandle.RootTypeName := ValueType.ExpressionName;
        listHandle.StaticSystemHandle := self.BoldHandle.StaticSystemHandle;

        g := TBoldGrid.Create(TabSheet);
        g.EnableColAdjust := false;//true;
        g.Align   := alClient;
        //g.BoldAutoColumns := True;
        g.BoldShowConstraints := BoldShowConstraintsInAutoFormGrids;
        g.Name    := MakeComponentName('Grid', ClassTypeInfo, Member);
        g.Parent  := TabSheet;
        g.BoldHandle := ListHandle;
        TExposedGrid(g).CreateDefaultColumns;
        P:=TPanel.Create(Form);
        with P do
        begin
          name := MakeComponentName('Panel', ClassTypeInfo, Member);
          Parent := TabSheet;
          Height:=23;
          Align := alTop;
          Caption:='';
          BevelOuter:=bvNone;
        end;
        Navigator := TBoldNavigator.Create(Form);
        with NAvigator do
          begin
            name := MakeComponentName('NAvigator', ClassTypeInfo, Member);
            Left:=0;
            Top:=0;
            Align:=alLeft;
            //Height:=21;
            //Width:=126;
            Width:=156;
            Flat:=true;

            BoldHandle := ListHandle;
            Parent := P;
          end;
      end;
    end;
  end;
end;

function TBoldDefaultObjectAutoFormProvider.GetLargestWidth: integer;
var
  w,
  i: integer;
begin
  Result := 0;
  for i := 0 to MemberRTInfoList.Count - 1 do
    with MemberRTInfoList[i] do
      if (Visibility = vkPublic) AND (IsAttribute or IsSingleRole) then
      begin
        w := Form.Canvas.TextWidth(MemberRTInfoList[i].ModelName+':');
        if w > Result then
          Result := w;
      end;
end;

function TBoldDefaultObjectAutoFormProvider.GetGoodStringRepresentationForSingleLink(MemberRTInfo: TBoldMemberRTInfo): string;
var
  i: integer;
  ClassTypeInfo: TBoldClassTypeInfo;
begin
  result := '';
  ClassTypeInfo := (MemberRTInfo as TBoldRoleRTInfo).ClassTypeInfoOfOtherEnd;
  if ClassTypeInfo.DefaultStringRepresentation = '' then
  begin
    for i := 0 to ClassTypeInfo.AllMembers.Count - 1 do
      if ClassTypeInfo.AllMembers[i].BoldType.ExpressionName = 'String' then
      begin
        Result := ClassTypeInfo.AllMembers[i].ExpressionName;
        exit;
      end;

    for i := 0 to ClassTypeInfo.AllMembers.Count - 1 do
      if ClassTypeInfo.AllMembers[i] is TBoldAttributeRTInfo then
      begin
        Result := ClassTypeInfo.AllMembers[i].ExpressionName;
         exit;
      end;
  end;
end;

procedure TBoldDefaultObjectAutoFormProvider.EnsureSingleMemberControls;
var
  TabSheet: TTabSheet;
  Box1NextLeft,
  Box1NextTop,
  DesInfo,
  MaxLabelWidth,
  i: integer;
  Member: TBoldMemberRTInfo;
  ExpressionHandle: TBoldExpressionHandle;
  EditorClass: TBoldEditClass;
  BoldEdit: TBoldEdit;
  ValueSetHandle: TBoldListHandle;
  RoleButton: TRoleButton;
  ScrollBox: TScrollBox;
begin
  if BoldRunningAsDesignTimePackage then
    EditorClass := TBoldEdit
  else
    EditorClass := TBoldAFEdit;

  TabSheet := CreateTabSheet(ClassTypeInfo.ModelName, MakeComponentName('Tab', ClassTypeInfo, nil));
  ScrollBox := CreateScrollBox(TabSheet);
  ScrollBox.VertScrollBar.Visible:=false;

  MaxLabelWidth := GetLargestWidth;
  Box1NextLeft := CONTROLMARGIN;
  Box1NextTop  := CONTROLMARGIN;

  for i := 0 to MemberRTInfoList.Count - 1 do
  begin
    Member := MemberRTInfoList[i];
    if (Member.Visibility = vkPublic) AND MemberShouldBeDisplayed(Member) and not Member.IsMultiRole then
    begin
      with TLabel.Create(Form) do
      begin
        Caption  := Member.ModelName + ':';
        name     := Format('Label%d', [i + 1]);
        AutoSize := True;
        Alignment := taLeftJustify;
        Width    := MaxLabelWidth;
        if ((Width + 131 + Box1NextLeft) > ScrollBox.ClientWidth - 2 * CONTROLMARGIN) and
           (Orientation = orHorizontal) then
        begin
          Inc(Box1NextTop, 24);
          Box1NextLeft := 10;
        end;
        Left   := Box1NextLeft;
        Top    := Box1NextTop + 4;
        Parent := ScrollBox;
        Inc(Box1NextLeft, Width + 10);
      end;

      if Member.BoldType.ConformsTo((Member.BoldType.SystemTypeInfo as TBoldSystemTypeInfo).AttributeTypeInfoByExpressionName['ValueSet']) then
      begin
        with TBoldComboBox.Create(Form) do begin
          Parent := ScrollBox;
          Left   := Box1NextLeft;
          Top    := Box1NextTop;
          Name   := MakeComponentName('BoldComboBox', ClassTypeInfo, Member);
          Anchors := [akLeft, akRight, akTop];
          Width := Parent.Width - Box1NextLeft - 8;
          //ReadOnly:=true;

          ValueSetHandle := TBoldListHandle.create(Form);
          ValueSetHandle.RootHandle := self.BoldHandle;
          ValueSetHandle.Expression := Member.BoldType.ExpressionName+'.allInstances';
          BoldHandle := Self.BoldHandle;
          BoldProperties.Expression := Member.ExpressionName;
          BoldListHandle := ValueSetHandle;
          if Orientation = orHorizontal then
            Inc(Box1NextLeft, Width + 20)
          else
            Box1NextLeft := CONTROLMARGIN;
          if not (Orientation = orHorizontal) then
            Inc(Box1NextTop, 24);
        end;
      end
      else if LowerCase(Member.TaggedValues['AFComboBox'])='true' then
      begin
        with TBoldComboBox.Create(Form) do begin
          Parent := ScrollBox;
          Left   := Box1NextLeft;
          Top    := Box1NextTop;
          Name   := MakeComponentName('BoldComboBox', ClassTypeInfo, Member);
          Anchors := [akLeft, akRight, akTop];
          Width := Parent.Width - Box1NextLeft - 8;
          ReadOnly:=true;

          ValueSetHandle := TBoldListHandle.Create(Form);
          ValueSetHandle.RootHandle := self.BoldHandle;
          if Member.TaggedValues['AFComboBoxOrderBy']<>'' then
            begin
              ValueSetHandle.Expression := Member.BoldType.ExpressionName+'.allInstances->orderby('+Member.TaggedValues['AFComboBoxOrderBy']+')';
              ValueSetHandle.MutableListExpression := Member.BoldType.ExpressionName;
            end
          else if Member.TaggedValues['AFComboBoxOrderDescending']<>'' then
            begin
              ValueSetHandle.Expression := Member.BoldType.ExpressionName+'.allInstances->orderdescending('+Member.TaggedValues['AFComboBoxOrderDescending']+')';
              ValueSetHandle.MutableListExpression := Member.BoldType.ExpressionName;
            end
          else
            begin
              ValueSetHandle.Expression := Member.BoldType.ExpressionName+'.allInstances';
              ValueSetHandle.MutableListExpression := '';
            end;

          BoldHandle := Self.BoldHandle;
          BoldProperties.Expression := Member.ExpressionName;
          BoldListHandle := ValueSetHandle;

          BoldSetValueExpression:=Member.ExpressionName;
          if (Member.IsSingleRole) then
            begin
              ExpressionHandle := TBoldExpressionHandle.Create(Form);
              LongRec(desinfo).Lo := CONTROLMARGIN + Box1NextLeft;
              LongRec(desinfo).Hi := CONTROLMARGIN + Box1NextTop;
              ExpressionHandle.DesignInfo := desInfo;
              ExpressionHandle.RootHandle := Self.BoldHandle;
              ExpressionHandle.Expression := Member.ExpressionName;
              ExpressionHandle.Name       := MakeComponentName('Handle', ClassTypeInfo, Member);

              Width := Width - 20;
              Color      := clInactiveCaptionText;
              RoleButton := TRoleButton.Create(Form);
              RoleButton.Parent := ScrollBox;
              RoleButton.Caption := '...';
              RoleButton.Top := Top;
              RoleButton.Width := 20;
              RoleButton.Left := RoleButton.Parent.Width - 8 - RoleButton.Width;
              RoleButton.Anchors := [akRight, akTop];
              RoleButton.Height := Height-4;
              RoleButton.BoldHandle := ExpressionHandle;
              RoleButton.PopupMenu := TRoleMenu.Create(RoleButton);
            end;

          if Orientation = orHorizontal then
            Inc(Box1NextLeft, Width + 20)
          else
            Box1NextLeft := CONTROLMARGIN;
          if not (Orientation = orHorizontal) then
            Inc(Box1NextTop, 24);
          BoldSelectChangeAction:=bdcsSetValue;
        end;
      end
      else
      begin
        BoldEdit := EditorClass.Create(Form);
        BoldEdit.Parent := ScrollBox;
        BoldEdit.Left   := Box1NextLeft;
        BoldEdit.Top    := Box1NextTop;
        BoldEdit.Anchors := [akLeft, akRight, akTop];
        BoldEdit.Width := BoldEdit.Parent.Width - Box1NextLeft - 8;
        BoldEdit.Name   := MakeComponentName('Edit', ClassTypeInfo, Member);

        if (Member.IsSingleRole) then
        begin
          ExpressionHandle := TBoldExpressionHandle.Create(Form);
          LongRec(desinfo).Lo := CONTROLMARGIN + Box1NextLeft;
          LongRec(desinfo).Hi := CONTROLMARGIN + Box1NextTop;
          ExpressionHandle.DesignInfo := desInfo;
          ExpressionHandle.RootHandle := Self.BoldHandle;
          ExpressionHandle.Expression := Member.ExpressionName;
          ExpressionHandle.Name       := MakeComponentName('Handle', ClassTypeInfo, Member);
          BoldEdit.Color      := clInactiveCaptionText;
          BoldEdit.ReadOnly := true;
          BoldEdit.BoldHandle := ExpressionHandle;
          BoldEdit.BoldProperties.DragMode := bdgSelection;
          BoldEdit.BoldProperties.DropMode := bdpReplace;
          BoldEdit.BoldProperties.Expression := GetGoodStringRepresentationForSingleLink(member);
          BoldEdit.BoldProperties.ApplyPolicy := Self.ApplyPolicy;
          BoldEdit.Width := BoldEdit.Width - 20;
          RoleButton := TRoleButton.Create(Form);
          RoleButton.Parent := BoldEdit.Parent;
          RoleButton.Caption := '...';
          RoleButton.Top := BoldEdit.Top;
          RoleButton.Width := 20;
          RoleButton.Left := BoldEdit.Parent.Width - 8 - RoleButton.Width;
          RoleButton.Anchors := [akRight, akTop];
          RoleButton.Height := BoldEdit.Height;
          RoleButton.BoldHandle := BoldEdit.BoldHandle;
          RoleButton.PopupMenu := TRoleMenu.Create(RoleButton);
        end
        else
        begin
          BoldEdit.BoldHandle := Self.BoldHandle;
          BoldEdit.BoldProperties.Expression := Member.ExpressionName;
          BoldEdit.BoldProperties.ApplyPolicy := Self.ApplyPolicy;
          BoldEdit.BoldProperties.Renderer := fReadOnlyStringRenderer;
        end;
        if Orientation = orHorizontal then
          Inc(Box1NextLeft, BoldEdit.Width + 20)
        else
          Box1NextLeft := CONTROLMARGIN;
        if not (Orientation = orHorizontal) then
          Inc(Box1NextTop, 24);
      end;
    end;
  end;

  Form.Constraints.MinHeight:=MINFORMHEIGHT;
  Form.Constraints.MinWidth:=Form.Width;
  if Box1NextTop+100 + PANELHEIGHT < MINFORMHEIGHT then
    begin
      Form.Height := MINFORMHEIGHT;
      for i := 0 to MemberRTInfoList.Count - 1 do
        if MemberRTInfoList[i].IsMultiRole then
          begin
            Form.Height := MINFORMHEIGHT+50;
            Form.Constraints.MinHeight:=MINFORMHEIGHT+50;
            break;
          end;
    end
  else
    Form.Height := Box1NextTop + 100 + PANELHEIGHT;
  Box1NextLeft := CONTROLMARGIN;
  for i := 0 to Form.ComponentCount - 1 do
  begin
    if not (Form.Components[i] is TControl) then
    begin
      LongRec(desinfo).Lo := Box1NextLeft;
      LongRec(desinfo).Hi := Form.Height - 58;
      Form.Components[i].DesignInfo := desInfo;
      Inc(Box1NextLeft, 35);
    end;
  end;
  ScrollBox.VertScrollBar.Visible:=true;
  ScrollBox.VertScrollBar.Tracking:=true;
end;

{---TBoldDefaultAttributeAutoFormProvider---}
procedure TBoldDefaultAttributeAutoFormProvider.EnsureComponents;
var
  Box1NextTop: integer;
begin
  Box1NextTop   := CONTROLMARGIN;

  with TLabel.Create(Form) do
  begin
    Top       := CONTROLMARGIN;
    Left      := CONTROLMARGIN;
    AutoSize  := True;
    Parent    := Target;
    Caption   := ModelNameOrDefault('DataValue');

    Inc(Box1NextTop, Height);
  end;
  with TBoldEdit.Create(Form) do
  begin
    Top         := Box1NextTop;
    Left        := CONTROLMARGIN;
    BoldHandle  := Self.BoldHandle;
    Parent      := Target;
  end;
  Inc(Box1NextTop, EDITHEIGHT);

  Form.ClientHeight := Box1NextTop + EDITHEIGHT * 2 + CONTROLMARGIN;
end;

function TBoldDefaultObjectAutoFormProvider.MemberShouldBeDisplayed(Member: TBoldMemberRTInfo): Boolean;
var
  Role: TBoldRoleRTInfo;
begin
  if (Member is TBoldRoleRTInfo) then
  begin
    Role := Member as TBoldRoleRTInfo;
    result := Role.IsNavigable;
    if (Role.RoleType = rtLinkRole) and (Role.ClassTypeInfoOfOtherEnd.AllMembers.Count = 2) then
      result := false;
  end
  else
    result := true;
end;

class procedure TBoldDefaultObjectAutoFormProvider.BoldAsStringRenderer1SetColor(
  Element: TBoldElement; var AColor: TColor; Representation: Integer;
  Expression: String);
var
  Result: TBoldIndirectElement;
begin
  if Assigned(Element) then
  begin
    Result := TBoldIndirectElement.Create;
    try
      Element.EvaluateExpression(Expression, Result);
      if (Result.Value is TBoldMember) and
          not (Result.Value as TBoldMember).CanModify then
          AColor := clInactiveCaptionText;
    finally
      Result.Free;
    end;
  end;
end;

function TAFPPageControl.ImageDelta: Integer;
begin
  Result := 0;
  if Assigned(Images) then
    Result := Images.Width;
end;

{ TRoleButton }

{-----------------------------------------------------------------------------
  Procedure: TRoleButton.AddExistingObject
  Date:      12-Feb-2003
  Descrip:   Added by David Knaack
-----------------------------------------------------------------------------}
procedure TRoleButton.AddExistingObject(Sender: TObject);
var
  ObjectReference: TBoldObjectReference;
  dlgSelect      : TfrmGenericSelect;
begin
  if Assigned(BoldHandle) then
  begin
    ObjectReference := BoldHandle.Value as TBoldObjectReference;

    dlgSelect := TfrmGenericSelect.Create(self, ObjectReference.BoldSystem, BoldHandle.BoldType.ExpressionName);
    try
      dlgSelect.Caption:=sAddExisting;
      if dlgSelect.ShowModal <> mrOK then Exit;
      ObjectReference.BoldObject := dlgSelect.SelectedBoldObject;
    finally
      dlgSelect.Free;
    end;
  end;
end;

constructor TRoleButton.Create(AOwner: TComponent);
begin
  inherited;
  OnClick := NavigateToSingleRole;
end;

procedure TRoleButton.CreateNewObject(Sender: TObject);
var
  ObjectReference: TBoldObjectReference;
begin
  if Assigned(BoldHandle) and (BoldHandle.Value is TBoldObjectReference) then
  begin
    ObjectReference := BoldHandle.Value as TBoldObjectReference;
    if assigned(ObjectReference.BoldObject) then
      ShowMessage(sClearLinkFirst)
    else
    begin
      if not ObjectReference.BoldRoleRTInfo.ClassTypeInfoOfOtherEnd.HasSubclasses then
        ObjectReference.BoldObject := ObjectReference.BoldSystem.CreateNewObjectByExpressionName(ObjectReference.BoldRoleRTInfo.ClassTypeInfoOfOtherEnd.ExpressionName)
      else
        showmessage(sCreatingNewNotSupported);
    end;
  end;

end;

procedure TRoleButton.DeleteObject(Sender: TObject);
var
  ObjectReference: TBoldObjectReference;
begin
  if Assigned(BoldHandle) and (BoldHandle.Value is TBoldObjectReference) then
  begin
    ObjectReference := BoldHandle.Value as TBoldObjectReference;
    if assigned(ObjectReference.BoldObject) and
      (MessageDlg(sAreYouSureToDelete, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      ObjectReference.BoldObject.Delete;
  end;
end;

destructor TRoleButton.Destroy;
begin
  if Assigned(PopupMenu) then
    PopupMenu.Free;
  inherited;
end;

procedure TRoleButton.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  PopupMenu.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TRoleButton.NavigateToSingleRole(Sender: TObject);
var
  anObject: TBoldObject;
begin
  if Assigned(BoldHandle) and (BoldHandle.Value is TBoldObjectReference) then
  begin
    anObject := (BoldHandle.Value as TBoldObjectReference).BoldObject;
    if Assigned(anObject) then
      AutoFormProviderRegistry.FormForElement(anObject).Show;
  end
end;

procedure TRoleButton.UnlinkObject(Sender: TObject);
var
  ObjectReference: TBoldObjectReference;
begin
  if Assigned(BoldHandle) and (BoldHandle.Value is TBoldObjectReference) then
  begin
    ObjectReference := BoldHandle.Value as TBoldObjectReference;
    if assigned(ObjectReference.BoldObject) and
      (MessageDlg(sAreYouSureToUnlink, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      ObjectReference.BoldObject := nil;
  end;
end;

{ TRoleMenu }

constructor TRoleMenu.Create(AOwner: TComponent);
var
  anItem: TMenuItem;
begin
  inherited Create(AOwner);
  fRoleButton := (AOwner as TRoleButton);
  OnPopup := AdjustEnabled;

  fmnuNavigate := TMenuItem.Create(Self);
  fmnuNavigate.Caption := sNavigate;
  fmnuNavigate.OnClick := fRoleButton.NavigateToSingleRole;
  Items.Add(fmnuNavigate);

  anItem := TMenuItem.Create(Self);
  anItem.Caption := '-';
  Items.Add(anItem);

  fmnuCreateNew := TMenuItem.Create(Self);
  fmnuCreateNew.Caption := sCreateNew;
  fmnuCreateNew.OnClick := fRoleButton.CreateNewObject;
  Items.Add(fmnuCreateNew);

  anItem := TMenuItem.Create(Self);
  anItem.Caption := sAddExisting;
  anItem.OnClick := fRoleButton.AddExistingObject;
  Items.Add(anItem);

  anItem := TMenuItem.Create(Self);
  anItem.Caption := '-';
  Items.Add(anItem);

  fmnuUnlink := TMenuItem.Create(Self);
  fmnuUnlink.Caption := sUnlink;
  fmnuUnlink.OnClick := fRoleButton.UnlinkObject;
  Items.Add(fmnuUnlink);

  fmnuDelete := TMenuItem.Create(Self);
  fmnuDelete.Caption := sDelete;
  fmnuDelete.OnClick := fRoleButton.DeleteObject;
  Items.Add(fmnuDelete);
end;

procedure TRoleMenu.AdjustEnabled(sender: TObject);
var
  ObjectReference: TBoldObjectReference;
begin
  if Assigned(fRoleButton.BoldHandle) and (fRoleButton.BoldHandle.Value is TBoldObjectReference) then
  begin
    ObjectReference := fRoleButton.BoldHandle.Value as TBoldObjectReference;
    fmnuDelete.Enabled := assigned(ObjectReference.BoldObject) and ObjectReference.BoldObject.CanDelete;
    fmnuNavigate.Enabled := assigned(ObjectReference.BoldObject);
    fmnuCreateNew.Enabled := not assigned(ObjectReference.BoldObject) and ObjectReference.CanModify;
    fmnuUnlink.Enabled := ObjectReference.CanModify and ObjectReference.CanClear(nil) and assigned(ObjectReference.BoldObject);;
  end;               
end;

{ TAutoFormListEntry }

constructor TAutoFormListEntry.Create(Form: TForm; Element: TBoldElement);
begin
  fForm := Form;
  fElement := Element;
end;

{ TAutoFormList }

procedure TAutoFormList.AddPair(Form: TForm; Element: TBoldElement);
begin
  Add(TAutoFormListEntry.Create(Form, Element));
end;

function TAutoFormList.GetEntries(
  const index: integer): TAutoFormListEntry;
begin
  Result := TAutoFormListEntry(Items[index]);
end;

function TAutoFormList.GetForms(const index: integer): TForm;
begin
  Result := Entries[index].Form;
end;

function TAutoFormList.IndexOfForm(anObject: TObject): integer;
begin
  for Result := 0 to Count - 1 do
    if Entries[Result].Form = anObject then
      Exit;
  Result := -1;
end;

function TAutoFormList.IndexOfElement(anObject: TObject): integer;
begin
  for Result := 0 to Count - 1 do
    if Entries[Result].Element = anObject then
      Exit;
  Result := -1;
end;

procedure TAutoFormList.RemoveByForm(Form: TForm);
begin
  Delete(IndexOfForm(Form));
end;         

constructor TBoldDefaultFormProvider.Create(BoldElement: TBoldElement);
begin
  inherited;
  fApplyPolicy := DefaultApplyPolicy;
end;

function TBoldDefaultObjectAutoFormProvider.CreateScrollBox(aParent: TWinControl): TScrollBox;
begin
  Result := TScrollBox.Create(form);
  Result.Name := MakeComponentName('ScrollBox', ClasstypeInfo, nil);
  Result.Parent := aParent;
  Result.align := alClient;
  Result.BorderStyle := bsNone;
end;

function TBoldDefaultObjectAutoFormProvider.CreateCaptionController: TBoldCaptionController;
begin
  Result := TBoldCaptionController.Create(Form);
  Result.BoldHandle := Self.BoldHandle;
  Result.BoldProperties.Expression := '''' + ClassTypeInfo.ModelName + ': '' + self.asstring';
  Result.TrackControl := Form;
  Result.Name := MakeComponentName('CaptionController', ClassTypeInfo, nil);
end;

function TBoldDefaultObjectAutoFormProvider.CreateButtonPanel: TPanel;
begin
  Result := TPanel.Create(Form);
  Result.Align := alBottom;
  Result.Height := PANELHEIGHT;
  Result.BevelInner := bvNone;
  Result.BevelOuter := bvNone;
  Result.Parent := Form;
  Result.Name := 'ButtonPanel';
  Result.Caption := '';

  fDragSource := CreateDragSource(Result);
  if BoldObject.BoldObjectLocator.BoldObjectID.TimeStamp <> BOLDMAXTIMESTAMP then
  begin
    with TLabel.create(Form) do
    begin
      Parent := Result;
      Left := fDragSource.Left + fDragSource.Width + 15;
      Top := 10;
      AutoSize := true;
      Caption := Format(sHistoricObject, [BoldObject.BoldObjectLocator.BoldObjectID.TimeStamp]);
    end;
  end;

end;

class procedure TBoldDefaultObjectAutoFormProvider.CloseButtonClick(
  Sender: TObject);
begin
  Assert(Sender is TButton);
  ((Sender as TButton).Owner as TForm).Close;
end;

function TBoldDefaultObjectAutoFormProvider.CreateDragSource(aParent: TWinControl): TBoldDropTarget;
var
  Bitmap: Graphics.TBitmap;
begin
  Result := TBoldDropTarget.Create(Form);
  Result.Parent := aParent;
  Result.Transparent := True;

  Bitmap := Graphics.TBitmap.Create;
  Bitmap.LoadFromResourceName(HInstance, 'DROPTARGETSOURCE');
  Result.Picture.Bitmap.Assign(Bitmap);
  FreeAndNil(Bitmap);

  Result.IsDragSource := True;
  Result.IsDropTarget := False;
  Result.Width := 20;
  Result.Top := 5;
  Result.Left := 5;
  Result.BoldHandle := BoldHandle;
end;

procedure TBoldDefaultObjectAutoFormProvider.CreateButtons;
var
  aButton: TButton;
begin
  case ApplyPolicy of
    bapChange,
    bapExit:
    begin
      aButton := TButton.Create(Form);
      aButton.Parent := ButtonPanel;
      aButton.Caption := sClose;
      aButton.OnClick := CloseButtonClick;
      aButton.Left := Form.ClientWidth - aButton.Width - CONTROLMARGIN;
      aButton.Top := CONTROLMARGIN DIV 2;
      aButton.Anchors := [akRight, akTop];
      aButton.Name := 'CloseButton';
    end;
    bapDemand:
    begin
      aButton := TButton.Create(Form);
      with aButton do
      begin
        Default := True;
        Caption := sOK;
        Parent := ButtonPanel;
        Left := ButtonPanel.Width - (aButton.Width * 3) - (CONTROLMARGIN * 2);
        Top := CONTROLMARGIN DIV 2;
        Anchors := [akRight];
        OnClick := OKButtonClick;
        Name := 'OKButton';
      end;
      aButton := TButton.Create(Form);
      with aButton do
      begin
        Cancel := True;
        Caption := sCancel;
        Parent := ButtonPanel;
        Left := ButtonPanel.Width - (aButton.Width * 2) - CONTROLMARGIN-4;
        Top := CONTROLMARGIN DIV 2;
        Anchors := [akRight];
        OnClick := CancelButtonClick;
        Name := 'CancelButton';
      end;
      aButton := TButton.Create(Form);
      with aButton do
      begin
        Caption := sApply;
        Parent := ButtonPanel;
        Left := ButtonPanel.Width - aButton.Width-8;
        Top := CONTROLMARGIN DIV 2;
        Anchors := [akRight];
        OnClick := ApplyButtonClick;
        Name := 'ApplyButton';
      end;
    end;
    else raise Exception.Create(sIllegalApplyPolicy);
  end;
end;

class procedure TBoldDefaultObjectAutoFormProvider.ApplyButtonClick(
  Sender: TObject);
begin
  Assert(Sender is TButton);
  TBoldQueueable.ApplyAllMatching((Sender as TButton).Owner as TForm);
end;

class procedure TBoldDefaultObjectAutoFormProvider.CancelButtonClick(
  Sender: TObject);
begin
  Assert(Sender is TButton);
  TBoldQueueable.DiscardChangeAllMatching((Sender as TButton).Owner as TForm);
  //((Sender as TButton).Owner as TForm).Close;
  ((Sender as TButton).Owner as TForm).ModalResult:=mrCancel;
end;

class procedure TBoldDefaultObjectAutoFormProvider.OKButtonClick(
  Sender: TObject);
begin
  ApplyButtonClick(Sender);
  Assert(Sender is TButton);
//  ((Sender as TButton).Owner as TForm).Close;
  ((Sender as TButton).Owner as TForm).ModalResult:=mrOk;
end;

procedure TBoldDefaultObjectAutoFormProvider.ActivateTabSheetHandle(Sender: TObject);
var
  ATabSheet: TTabSheet;
  i{, j}: Integer;
  //Col: TBoldGridColumn;
  AComponent: TComponent;
begin
  if Sender is TTabSheet then
  begin
    ATabSheet := Sender as TTabSheet;
    for i := 0 to ATabSheet.ComponentCount - 1 do
    begin
      AComponent := ATabSheet.Components[i];
      if (AComponent is TBoldListHandle) then
      begin
        (AComponent as TBoldListHandle).Enabled := True;
        break;
      end;
    end;
    TBoldQueueable.DisplayAll;
    for i := 0 to ATabSheet.ComponentCount - 1 do
    begin
      AComponent := ATabSheet.Components[i];
      if aComponent is TBoldGrid then
        AutoAdjustColumns(TBoldGrid(aComponent));
      {begin
        for j := 2 to (aComponent as TBoldGrid).Columns.count - 1 do
        begin
          Col := (aComponent as TBoldGrid).Columns[j];
          Col.CWAdjust := [caAllowGrow, caAllowShrink, caIncludeTitle];
          if Col.Width > 100 then
            Col.Width := 100;
        end;
      end;  }
    end;
  end;
end;

class procedure TBoldDefaultFormProvider.DefaultReceiveObjectGone(Sender: TObject);
begin
  TForm(TComponent(Sender).Owner).Release;
end;

procedure TBoldDefaultObjectAutoFormProvider.EnsureObjectVersionControls;
var
  ListHandle: TBoldListHandle;
  DerivedHandle: TBoldDerivedHandle;
  g: TBoldGrid;
  TabSheet: TTabSheet;
  DesInfo: longint;
  Panel: TPanel;
  CheckBox: TCheckBox;
  TimeStampColumn: TBoldGridColumn;
begin
  if ClassTypeInfo.Versioned or BoldShowHistoryTabInAutoForms then
  begin
    TabSheet := CreateTabSheet('History', 'tabObjectHistory');
    if ClassTypeInfo.Versioned then
    begin
      TabSheet.OnShow := ActivateTabSheetHandle;
      LongRec(desinfo).Lo := CONTROLMARGIN;
      LongRec(desinfo).Hi := CONTROLMARGIN;

      DerivedHandle := TBoldDerivedHandle.Create(Form);
      Derivedhandle.name := 'bdhObjectHistory';
      Derivedhandle.DesignInfo := desInfo;
      Derivedhandle.RootHandle := BoldHandle;
      DerivedHandle.OnDeriveAndSubscribe := DeriveObjectHistory;
      DerivedHandle.ValueTypeName := 'Collection(' + ClassTypeInfo.ExpressionName + ')';


      LongRec(desinfo).Lo := CONTROLMARGIN + 40;
      LongRec(desinfo).Hi := CONTROLMARGIN +40;

      listHandle := TBoldListHandle.Create(TabSheet);
      ListHandle.Enabled := False;
      listHandle.DesignInfo := desInfo;
      listHandle.RootHandle := DerivedHandle;
      listHandle.Expression := '';
      listHandle.Name       := 'blhObjectHistory';

      Panel := TPanel.Create(form);
      Panel.parent := TabSheet;
      Panel.Height := 24;
      Panel.Align := alBottom;
      Panel.Caption := '';
      Panel.BevelInner := bvNone;
      Panel.BevelOuter := bvNone;
      CheckBox := TCheckBox.Create(Form);
      CheckBox.Parent := Panel;
      Checkbox.Name := 'cbIncludeNonembeddedlinksInHistory';
      CheckBox.Caption := sIncludeChangesInNonEmbeddedLinks;
      CheckBox.OnClick := ChangeNonEmbeddedLinksInclusion;
      CheckBox.Left := 4;
      CheckBox.Top := 4;
      CheckBox.Width := Form.Canvas.TextWidth(CheckBox.Caption) + 20;

      g := TBoldGrid.Create(TabSheet);
      g.EnableColAdjust := false;//true;
      g.Align   := alClient;
      g.BoldHandle := ListHandle;
      g.BoldShowConstraints := BoldShowConstraintsInAutoFormGrids;
      TExposedGrid(g).CreateDefaultColumns;
      TimeStampColumn := g.Columns.Add;

      if ClassTypeinfo.SystemTypeInfo.UseClockLog then
        TimeStampColumn.BoldProperties.Expression := 'objectTimeStamp.TimeStampToTime'
      else
        TimeStampColumn.BoldProperties.Expression := 'objectTimeStamp';
      TimeStampColumn.Title.Caption := 'Timestamp';
      TimeStampColumn.Index := 2;

      g.Name    := 'bgrObjectHistory';
      g.Parent  := TabSheet;
    end
    else
    begin

      with TLabel.create(Form) do
      begin
        Parent := TabSheet;
        Align := alClient;
        WordWrap := true;
        Caption := BOLDCRLF + sObjectNotVersioned;
      end;
      with TLabel.create(Form) do
      begin
        Parent := TabSheet;
        Align := alBottom;
        AutoSize := true;
        ParentFont := false;
        WordWrap := true;
        Caption := Format('%s%s%s', [sToDisableTab_1, BOLDCRLF, sToDisableTab_2]);
      end;
    end;
  end;
end;

procedure TBoldDefaultObjectAutoFormProvider.DeriveObjectHistory(
  Sender: TComponent; RootValue: TBoldElement;
  ResultElement: TBoldIndirectElement; Subscriber: TBoldSubscriber);
var
  aCond: TBoldChangePointCondition;
  ObjectList: TBoldObjectList;
  DerivedHandle: TBoldDerivedHandle;
  ListType: TBoldListTypeInfo;
  RootObject: TBoldObject;
  i: integer;
begin
  if not assigned(RootValue) then
    exit;

  RootObject := RootValue as TBoldObject;

  DerivedHandle := Sender as TBoldDerivedHandle;
  aCond := TBoldChangePointCondition.Create;
  aCond.IdList := TBoldObjectIdList.Create;
  aCond.IdList.Add(RootObject.BoldObjectLocator.BoldObjectID);
  aCond.MemberIdList := TBoldMemberIdList.Create;
  if DerivedHandle.Tag=1 then
    for i := 0 to ClassTypeInfo.AllMembers.Count - 1 do
      if ClassTypeInfo.AllMembers[i].IsRole and not ClassTypeInfo.AllMembers[i].IsStoredInObject then
        if (ClassTypeInfo.AllMembers[i] as TBoldRoleRTInfo).ClassTypeInfoOfOtherEnd.Versioned then
          aCond.MemberIdList.Add(TBoldMemberId.Create(i));

  aCond.StartTime := 0;
  aCond.EndTime := BOLDMAXTIMESTAMP;

  if not assigned(ResultElement.Value) then
  begin
    ListType := RootObject.BoldClassTypeInfo.ListTypeInfo;
    ObjectList := TBoldMemberFactory.CreateMemberFromBoldType(ListType) as TBoldObjectList;
    ResultElement.SetOwnedValue(ObjectList);
  end
  else
  begin
    Objectlist := ResultElement.Value as TBoldObjectList;
    ObjectList.Clear;
  end;

  RootObject.BoldSystem.GetAllWithCondition(ObjectList, aCond);

  ObjectList.Sort(CompareObjectsOnTimeStamp);

  aCond.IdList.Free;
  aCond.MemberIdList.Free;
  aCond.Free;
end;

procedure TBoldDefaultObjectAutoFormProvider.ChangeNonEmbeddedLinksInclusion(Sender: TObject);
var
  DerivedHandle: TBoldDerivedHandle;
begin
  DerivedHandle := (Sender as TComponent).Owner.FindComponent('bdhObjectHistory') as TBoldDerivedHandle;
  if assigned(DerivedHandle) then
  begin
    DerivedHandle.tag := 1-DerivedHandle.tag;
    DerivedHandle.MarkOutOfDate;
  end;
end;

function TBoldDefaultObjectAutoFormProvider.CompareObjectsOnTimeStamp(
  Item1, Item2: TBoldElement): Integer;
begin
  result := TBoldObject(Item2).BoldObjectLocator.BoldObjectID.TimeStamp - TBoldObject(Item1).BoldObjectLocator.BoldObjectID.TimeStamp;
end;

class procedure TBoldDefaultFormProvider.DefaultFormOnResize(
  Sender: TObject);
var
  i,j,k:integer;
  P:TPageControl;
begin
  if Sender is TForm then
    for i:=0 to TForm(Sender).ComponentCount-1 do
      begin
        if TForm(Sender).Components[i] is TBoldGrid then
          AutoAdjustColumns(TBoldGrid(TForm(Sender).Components[i]));
        if TForm(Sender).Components[i] is TPageControl then
          begin
            P:=TPageControl(TForm(Sender).Components[i]);
            for j:=0 to P.PageCount-1 do
              for k:=0 to P.Pages[j].ComponentCount-1 do
                if P.Pages[j].Components[k] is TBoldGrid then
                  AutoAdjustColumns(TBoldGrid(P.Pages[j].Components[k]));
          end;
      end;
end;

initialization
  G_BoldActiveAutoForms := TAutoFormList.Create;
  fReadOnlyStringRenderer := TBoldAsStringRenderer.Create(nil);
  fReadOnlyStringRenderer.OnSetColor := TBoldDefaultObjectAutoFormProvider.BoldAsStringRenderer1SetColor;

  AutoFormProviderRegistry.RegisterProvider(bvtClass, TBoldObject, TBoldDefaultObjectAutoFormProvider);
  AutoFormProviderRegistry.RegisterProvider(bvtSystem, TBoldSystem, TBoldDefaultSystemAutoFormProvider);
  AutoFormProviderRegistry.RegisterProvider(bvtAttr, TBoldMember, TBoldDefaultAttributeAutoFormProvider);
  AutoFormProviderRegistry.RegisterListProvider(bvtAttr, TBoldMember, TBoldDefaultAttributeListAutoFormProvider);
  AutoFormProviderRegistry.RegisterListProvider(bvtClass, TBoldObjectList, TBoldDefaultObjectListAutoFormProvider);

finalization
  AutoFormProviderRegistry.UnregisterProvider(TBoldDefaultObjectAutoFormProvider);
  AutoFormProviderRegistry.UnregisterProvider(TBoldDefaultSystemAutoFormProvider);
  AutoFormProviderRegistry.UnregisterProvider(TBoldDefaultAttributeAutoFormProvider);
  AutoFormProviderRegistry.UnregisterProvider(TBoldDefaultAttributeListAutoFormProvider);
  AutoFormProviderRegistry.UnregisterProvider(TBoldDefaultObjectListAutoFormProvider);

  FreeAndNil(G_BoldActiveAutoForms);
  FreeAndNil(fReadOnlyStringRenderer);

end.