unit MainRepSetFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TMainRepSettForm = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainRepSettForm: TMainRepSettForm;

implementation

{$R *.dfm}

uses HandlesDM, BusinessClasses, ReportDMUnit, ModelDM, DateUtils;

procedure TMainRepSettForm.BitBtn1Click(Sender: TObject);
begin
  {//(BoldHandlesDM.blhDriversUnion.CurrentElement as TObjekt_vyborki_otchyotnosti).Data_nachala:=
     DateTimePicker1.Date;
  //(BoldHandlesDM.blhDriversUnion.CurrentElement as TObjekt_vyborki_otchyotnosti).Data_konca:=
    DateTimePicker2.Date;
  BoldModelDM.BoldUpdateDBAction1.Execute;
  try
    ReportDM.RvProject.SetParam('StartDate',DateToStr(DateTimePicker1.Date));
    ReportDM.RvProject.SetParam('EndDate',DateToStr(DateTimePicker2.Date));

    //ShowMessage(IntToStr(ReportDM.RvDataSetConnectionAllTaxSumm.DataRows));
    ReportDM.RvDataSetConnectionAllTaxSumm.ClearBufferHeader;
    ReportDM.AllTaxSummBoldDataSet.BoldHandle:=BoldHandlesDM.blhAllDrivers;
    ReportDM.AllTaxSummBoldDataSet.Active:=True;
    ReportDM.AllTaxSummCDS.Active:=False;
    ReportDM.AllTaxSummCDS.Active:=True;
    ReportDM.AllTaxSummCDS.Active:=False;
    ReportDM.AllTaxSummCDS.Active:=True;

    ReportDM.RvProject.ExecuteReport('MainReport');
  finally
    ReportDM.AllTaxSummBoldDataSet.BoldHandle:=nil;
    ReportDM.AllTaxSummBoldDataSet.Active:=False;
  end;
  Close;  }
end;

procedure TMainRepSettForm.FormCreate(Sender: TObject);
begin
  MainRepSettForm.DateTimePicker1.Date:=IncDay(Today,-7);
  MainRepSettForm.DateTimePicker2.Date:=Today;
end;

end.
