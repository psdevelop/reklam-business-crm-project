unit OneDriversOnDaysRepSettUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, BoldComboBox;

type
  TOneDaysOnRepSettForm = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BoldComboBox1: TBoldComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OneDaysOnRepSettForm: TOneDaysOnRepSettForm;

implementation

{$R *.dfm}

uses HandlesDM, ReportDMUnit, BusinessClasses, DateUtils;

procedure TOneDaysOnRepSettForm.BitBtn1Click(Sender: TObject);
begin
  {BoldHandlesDM.bvhStarDate.Value.SetAsVariant(DateTimePicker1.Date);
  BoldHandlesDM.bvhEndDate.Value.SetAsVariant(DateTimePicker2.Date);
  try
    ReportDM.bdsOneTaxOnDaysMoving.BoldHandle:=BoldHandlesDM.blhAllDriversCust;
    ReportDM.bdsOneTaxOnDaysMoving.Active:=True;
    ReportDM.OneTaxOnDaysCDS.Active:=True;
    ReportDM.OneTaxOnDaysCDS.Active:=False;
    ReportDM.OneTaxOnDaysCDS.Active:=True;
    ReportDM.OneTaxOnDaysCDS.Active:=False;

    ReportDM.RvProject.SetParam('StartDate',DateToStr(DateTimePicker1.Date));
    ReportDM.RvProject.SetParam('EndDate',DateToStr(DateTimePicker2.Date));
    //ReportDM.RvProject.SetParam('DriverName',(BoldHandlesDM.blhAllDrivers.CurrentElement as TVoditelj).Polnoe_imya);
    ReportDM.RvProject.ExecuteReport('OneDriverReport');
  finally
    ReportDM.bdsOneTaxOnDaysMoving.BoldHandle:=nil;
    ReportDM.bdsOneTaxOnDaysMoving.Active:=False;
  end;
  Close; }
end;

procedure TOneDaysOnRepSettForm.FormCreate(Sender: TObject);
begin
 { DateTimePicker1.Date:=IncDay(Today,-7);
  DateTimePicker2.Date:=Today;
  BoldHandlesDM.bvhStarDate.Value.SetAsVariant(DateTimePicker1.Date);
  BoldHandlesDM.bvhEndDate.Value.SetAsVariant(DateTimePicker2.Date);
  try
    ReportDM.bdsOneTaxOnDaysMoving.BoldHandle:=BoldHandlesDM.blhAllDriversCust;
    ReportDM.bdsOneTaxOnDaysMoving.Active:=True;
    ReportDM.bdsOneTaxOnDaysMoving.Refresh;
  finally
    ReportDM.bdsOneTaxOnDaysMoving.BoldHandle:=nil;
    ReportDM.bdsOneTaxOnDaysMoving.Active:=False;
  end; }
end;

end.
