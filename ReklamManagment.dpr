program ReklamManagment;

{%File 'C:\Documents and Settings\Qwest\Мои документы\Borland Studio Projects\ModelSupport\default.txvpck'}
{%File 'ModelSupport\ModelDM\ModelDM.txvpck'}
{%File 'ModelSupport\MainForm\MainForm.txvpck'}
{%File 'ModelSupport\HandlesDM\HandlesDM.txvpck'}
{%File 'ModelSupport\ImageLists\ImageLists.txvpck'}
{%File 'ModelSupport\About\About.txvpck'}

uses
  Forms,
  Dialogs,
  SysUtils,
  MainForm in 'MainForm.pas' {FirstForm},
  ModelDM in 'ModelDM.pas' {BoldModelDM: TDataModule},
  HandlesDM in 'HandlesDM.pas' {BoldHandlesDM: TDataModule},
  ImageLists in 'ImageLists.pas' {ImageListsDM: TDataModule},
  ABOUT in 'ABOUT.pas' {AboutBox},
  DialogsUnit in 'DialogsUnit.pas' {DialogsDM: TDataModule},
  BusinessClasses in 'BusinessClasses.pas',
  PopUpCompUnit in 'PopUpCompUnit.pas' {PopUpDM: TDataModule},
  BoldOtherHandlCompUnit in 'BoldOtherHandlCompUnit.pas' {BoldOthHandleCompDM: TDataModule},
  ReleaseStructUnit in 'ReleaseStructUnit.pas' {ReleaseStructForm},
  BoldGuiResourceStrings2 in 'AFP20050912\BoldGuiResourceStrings2.pas',
  ReportDMUnit in 'ReportDMUnit.pas' {ReportDM: TDataModule},
  AdministrationPanelUnit in 'AdministrationPanelUnit.pas' {AdminPanelForm},
  LogViewFormUnit in 'LogViewFormUnit.pas' {LogViewForm},
  ADOConsts in 'ADO\ADOConsts.pas',
  BoldADOInterfaces in 'ADO\BoldADOInterfaces.pas',
  BoldDatabaseAdapterADO in 'ADO\BoldDatabaseAdapterADO.pas',
  BoldPersistenceHandleADO in 'ADO\BoldPersistenceHandleADO.pas',
  BoldPersistenceHandleADOReg in 'ADO\BoldPersistenceHandleADOReg.pas',
  MainRepSetFormUnit in 'MainRepSetFormUnit.pas' {MainRepSettForm},
  OneDriversOnDaysRepSettUnit in 'OneDriversOnDaysRepSettUnit.pas' {OneDaysOnRepSettForm},
  SetDateTimeUnit in 'SetDateTimeUnit.pas' {SetDTForm},
  SelIntervalUnit in 'SelIntervalUnit.pas' {SetIntervalForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'CRM System spec. Reklam Managment';
  Application.CreateForm(TFirstForm, FirstForm);
  Application.CreateForm(TBoldModelDM, BoldModelDM);
  Application.CreateForm(TBoldHandlesDM, BoldHandlesDM);
  Application.CreateForm(TImageListsDM, ImageListsDM);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TDialogsDM, DialogsDM);
  Application.CreateForm(TPopUpDM, PopUpDM);
  Application.CreateForm(TBoldOthHandleCompDM, BoldOthHandleCompDM);
  Application.CreateForm(TReleaseStructForm, ReleaseStructForm);
  Application.CreateForm(TReportDM, ReportDM);
  Application.CreateForm(TAdminPanelForm, AdminPanelForm);
  Application.CreateForm(TLogViewForm, LogViewForm);
  Application.CreateForm(TMainRepSettForm, MainRepSettForm);
  Application.CreateForm(TOneDaysOnRepSettForm, OneDaysOnRepSettForm);
  Application.CreateForm(TSetDTForm, SetDTForm);
  Application.CreateForm(TSetIntervalForm, SetIntervalForm);
  try
    Application.Run;
  except on E: Exception do
   begin
    ShowMessage('Системное сообщение, предусмотренное разработчиком. '+E.Message);
   end;
  end;
end.
