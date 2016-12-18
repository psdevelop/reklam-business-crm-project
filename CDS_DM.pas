unit CDS_DM;

interface

uses
  SysUtils, Windows, Classes, ShellApi, Dialogs, DB, DBClient, OleServer, WordXP, OutlookXP, Variants;

type
  TOtherDataAccessDM = class(TDataModule)
    SearchTypeCDS: TClientDataSet;
    SearchTypeDataSource: TDataSource;
    AnnonceWordApplication: TWordApplication;
    AnnonceSquareFrWordDocument: TWordDocument;
    AnnonceSimpleWordDocument: TWordDocument;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActivateWordServers;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherDataAccessDM: TOtherDataAccessDM;

implementation

{$R *.dfm}

uses MainForm;

procedure TOtherDataAccessDM.ActivateWordServers;
var FN, EP, Replace, ShapeIndex: OleVariant;
    SaveChanges: OleVariant;
    DocItem: OleVariant;
begin
try
  SaveChanges:=False;
  DocItem:=1;

  try
    CopyFile(PChar(GetCurrentDir+'\DOC\reserve_docs\AnnonceTemplatePictSqareFrameWhiteBackGrnd.doc'),PChar(GetCurrentDir+'\DOC\AnnonceTemplatePictSqareFrameWhiteBackGrnd.doc'),False);
    CopyFile(PChar(GetCurrentDir+'\DOC\reserve_docs\AnnonceTemplateSimple.doc'),PChar(GetCurrentDir+'\DOC\AnnonceTemplateSimple.doc'),False);
  except
    ShowMessage('Неудачная синхронизация относительно резервных файлов doc-шаблонов!');
  end;

  if OtherDataAccessDM.AnnonceWordApplication.Documents.Count>0 then
    begin
      ShowMessage('Приложение Word содержит открытые документы, закройте их сами до нажатия кнопки, иначе система закроет их без сохранения изменений!');

      if OtherDataAccessDM.AnnonceWordApplication.Documents.Count>0 then
        ShowMessage('Несохранённые данные будут потеряны!');

      while OtherDataAccessDM.AnnonceWordApplication.Documents.Count>0 do
        OtherDataAccessDM.AnnonceWordApplication.Documents.Item(DocItem).Close(SaveChanges, EmptyParam, EmptyParam);

    ShowMessage('Перезапустите приложение!');
    FirstForm.Close;
    Exit;
  end;

  FN:=CDP+'\DOC\AnnonceTemplateSimple.doc';
  AnnonceWordApplication.Documents.Open(FN,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  AnnonceSimpleWordDocument.ConnectTo(AnnonceWordApplication.ActiveDocument);
  FN:=CDP+'\DOC\AnnonceTemplatePictSqareFrameWhiteBackGrnd.doc';
  AnnonceWordApplication.Documents.Open(FN,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  AnnonceSquareFrWordDocument.ConnectTo(AnnonceWordApplication.ActiveDocument);
except
  ShowMessage('Закройте все приложения и процессы MS Word, иначе приложение будет неработоспособно!');
  FirstForm.Close;
end;
end;

procedure TOtherDataAccessDM.DataModuleCreate(Sender: TObject);
begin
  ActivateWordServers;
end;

end.
