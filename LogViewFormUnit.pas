unit LogViewFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, BoldGrid, StdCtrls, BoldComboBox, BoldCheckBox,
  ComCtrls;

type
  TLogViewForm = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    BoldGrid1: TBoldGrid;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BoldComboBox2: TBoldComboBox;
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchLogs;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogViewForm: TLogViewForm;

implementation

{$R *.dfm}

uses HandlesDM, DateUtils;

procedure TLogViewForm.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=IncDay(Today,-1);
  DateTimePicker2.Date:=Today;
end;

procedure TLogViewForm.SearchLogs;
begin
  BoldHandlesDM.bvhStarDate.Value.SetAsVariant(DateTimePicker1.Date);
  BoldHandlesDM.bvhEndDate.Value.SetAsVariant(DateTimePicker2.Date);
end;

procedure TLogViewForm.DateTimePicker1Change(Sender: TObject);
begin
  SearchLogs;
end;

procedure TLogViewForm.FormShow(Sender: TObject);
begin
  SearchLogs;
end;

end.
