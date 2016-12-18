unit AllMagEnumFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, BoldGrid, BoldComboBox;

type
  TAllMagEnumForm = class(TForm)
    BoldGrid1: TBoldGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    BoldComboBox1: TBoldComboBox;
    Label1: TLabel;
    BitBtn3: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AllMagEnumForm: TAllMagEnumForm;

implementation

{$R *.dfm}

uses HandlesDM, BusinessClasses, ReleaseStructUnit;

end.
