unit SelIntervalUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, BoldCheckBox, BoldHandles,
  BoldVariableHandle, BoldSubscription, BoldOclVariables;

type
  TSetIntervalForm = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BoldCheckBox1: TBoldCheckBox;
    bovInterval: TBoldOclVariables;
    bvhIDT1: TBoldVariableHandle;
    bvhIDT2: TBoldVariableHandle;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetIntervalForm: TSetIntervalForm;
  IDT1, IDT2: TDateTime;

implementation

{$R *.dfm}

uses DateUtils, HandlesDM, BusinessClasses, ModelDM, ReportDMUnit;

procedure TSetIntervalForm.BitBtn1Click(Sender: TObject);
begin
  IDT1:=StartOfTheDay(DateTimePicker1.Date)+
    TimeOf(DateTimePicker2.Time);
  IDT2:=StartOfTheDay(DateTimePicker3.Date)+
    TimeOf(DateTimePicker4.Time);
  bvhIDT1.Value.SetAsVariant(IDT1);
  bvhIDT2.Value.SetAsVariant(IDT2);
end;

end.
