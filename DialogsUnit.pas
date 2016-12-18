unit DialogsUnit;

interface

uses
  SysUtils, Classes, Dialogs;

type
  TDialogsDM = class(TDataModule)
    FontDialog1: TFontDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DialogsDM: TDialogsDM;

implementation

{$R *.dfm}

end.
