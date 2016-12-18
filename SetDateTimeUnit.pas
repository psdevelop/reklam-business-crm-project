unit SetDateTimeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TSetDTForm = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetDTForm: TSetDTForm;
  DT: TDateTime;

implementation

{$R *.dfm}

uses DateUtils;

procedure TSetDTForm.BitBtn1Click(Sender: TObject);
begin
  DT:=
    StartOfTheDay(DateTimePicker1.Date)+
    TimeOF(DateTimePicker2.Time);
end;

procedure TSetDTForm.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=
    Today;
  DateTimePicker2.Date:=
    Time;
end;

end.
