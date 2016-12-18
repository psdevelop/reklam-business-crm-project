unit ReportDMUnit;

interface

uses
  SysUtils, Classes, RpCon, RpConDS, RpDefine, RpRave, DB, BoldDataSet, DBClient,
  Provider;

type
  TReportDM = class(TDataModule)
    RvProject: TRvProject;
    RvDataSetConnectionAllTaxSumm: TRvDataSetConnection;
    AllTaxSummBoldDataSet: TBoldDataSet;
    bdsOneTaxOnDaysMoving: TBoldDataSet;
    bdsDispatchActivity: TBoldDataSet;
    rdscOneTaxOnDaysMoving: TRvDataSetConnection;
    rdscDispatchActivity: TRvDataSetConnection;
    AllTaxSummCDS: TClientDataSet;
    AllTaxSummDataSetProvider: TDataSetProvider;
    OneTaxOnDaysDataSetProvider: TDataSetProvider;
    OneTaxOnDaysCDS: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportDM: TReportDM;

implementation

{$R *.dfm}

uses HandlesDM;

procedure TReportDM.DataModuleCreate(Sender: TObject);
begin
  ReportDM.RvProject.ProjectFile:=GetCurrentDir+'\Reports\Reports.rav';
end;

end.
