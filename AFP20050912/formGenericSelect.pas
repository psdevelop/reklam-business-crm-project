unit formGenericSelect;
(*

Put formGenericSelect.pas in the Source directory and
edit the file BoldAFPDefault to add the following information.

-->Add this method to the TRolebutton class (about line 193):

  TRoleButton = class(TButton)
  public
    [...]
    procedure AddExistingObject( Sender: TObject );   // Add this line
  end;


-->Add  formGenericSelect into the implementation uses clause (line 238)

-->In TRoleMenu.Create, add the new lines below (line 1288):

  anItem := TMenuItem.Create(Self);
  anItem.Caption := 'Add existing...';
  anItem.Enabled := False;
{ start additions by david knaack }
  anItem.Enabled := True;
  anItem.OnClick := fRoleButton.AddExistingObject;
{ stop additions }


-->Add this method to the implementation section (line 1184):

{-----------------------------------------------------------------------------
  Procedure: TRoleButton.AddExistingObject
  Date:      12-Feb-2003
  Descrip:   Added by David Knaack
-----------------------------------------------------------------------------}
procedure TRoleButton.AddExistingObject( Sender: TObject );
var
  ObjectReference: TBoldObjectReference;
  dlgSelect      : TfrmGenericSelect;
begin
  if Assigned(BoldHandle) then
  begin
    ObjectReference := BoldHandle.Value as TBoldObjectReference;

    dlgSelect := TfrmGenericSelect.Create( self, ObjectReference.BoldSystem, BoldHandle.BoldType.ExpressionName );
    try
       if dlgSelect.ShowModal <> mrOK then Exit;

       ObjectReference.BoldObject := dlgSelect.SelectedBoldObject;
    finally
       dlgSelect.Free;
    end;
  end;
end;

*)
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BoldReferenceHandle, StdCtrls, Buttons, Grids, BoldGrid,
  BoldSubscription, BoldHandles, BoldRootedHandles, BoldAbstractListHandle,
  BoldCursorHandle, BoldListHandle, BoldSystem, BoldNavigatorDefs, BoldNavigator,
  ExtCtrls;

type
  TfrmGenericSelect = class(TForm)
    blhClass: TBoldListHandle;
    bgInstances: TBoldGrid;
    brhSystem: TBoldReferenceHandle;
    Panel1: TPanel;
    BoldNavigator1: TBoldNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure brhSystemObjectDeleted(Sender: TObject);
    procedure bgInstancesClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    System : TBoldSystem;
  public
    SelectedBoldObject : TBoldObject;

    constructor Create(AOwner: TComponent; ABoldSystem: TBoldSystem; ABoldClassName: string );
  end;

var
  frmGenericSelect: TfrmGenericSelect;

procedure AutoAdjustColumns(AGrid:TBoldGrid);

implementation

{$R *.dfm}

type
  TExposedGrid = class(TBoldGrid);

{-----------------------------------------------------------------------------
  Procedure: TfrmGenericSelect.Create
  Date:      12-Feb-2003
  Descrip:
-----------------------------------------------------------------------------}
constructor TfrmGenericSelect.Create(AOwner: TComponent;
  ABoldSystem: TBoldSystem; ABoldClassName: string);
begin
  inherited Create( AOwner );

  System:=ABoldSystem;
  brhSystem.Value:=System;
  blhClass.Expression:=Format( '%s.AllInstances', [ABoldClassName] );

  TExposedGrid(bgInstances).CreateDefaultColumns;
  //TExposedGrid(bgInstances).OnResize:=GridResize;
end;

procedure TfrmGenericSelect.brhSystemObjectDeleted(Sender: TObject);
begin
   Exit; // workaround for reference handle bug
end;

{-----------------------------------------------------------------------------
  Procedure: TfrmGenericSelect.bgInstancesClick
  Date:      12-Feb-2003
  Descrip:   expose selected bold object
-----------------------------------------------------------------------------}
procedure TfrmGenericSelect.bgInstancesClick(Sender: TObject);
begin
  SelectedBoldObject:=blhClass.CurrentBoldObject;
end;

procedure TfrmGenericSelect.SpeedButton1Click(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TfrmGenericSelect.SpeedButton2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TfrmGenericSelect.FormShow(Sender: TObject);
begin
  AutoAdjustColumns(bgInstances);
end;

procedure AutoAdjustColumns(AGrid:TBoldGrid);
var
  i,s,ss:integer;
  f:double;
begin
  s:=0;
  for i:=0 to AGrid.RowCount-1 do
    s:=s+AGrid.RowHeights[i]+AGrid.GridLineWidth;

  if AGrid.Height<s then
    ss:=GetSystemMetrics(SM_CXVSCROLL)+(AGrid.ColCount)
  else
    ss:=(AGrid.ColCount);

  s:=0;
  for i:=1 to AGrid.Columns.Count-1 do
    s:=s+AGrid.Columns[i].Width+AGrid.GridLineWidth;

  f:=(AGrid.Width-ss-AGrid.Columns[0].Width-4)/s;

  for i:=1 to AGrid.Columns.Count-1 do
    AGrid.Columns[i].Width:=Round(AGrid.Columns[i].Width*f);
end;

procedure TfrmGenericSelect.FormResize(Sender: TObject);
begin
  AutoAdjustColumns(bgInstances);
end;

end.
