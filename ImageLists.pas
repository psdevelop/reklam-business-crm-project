unit ImageLists;

interface

uses
  SysUtils, Classes, ImgList, Controls;

type
  TImageListsDM = class(TDataModule)
    IMMainPageControl: TImageList;
    MainMenuImageList: TImageList;
    HistoryAdditionalImageList: TImageList;
    MainToolBarImageList: TImageList;
    ReleaseStructTreeImageList: TImageList;
    ClToolbarImageList: TImageList;
    HistoryToolIML: TImageList;
    MainPageControlImageList: TImageList;
    TypeAllReminderImageList: TImageList;
    TypeAllResultsImageList: TImageList;
    TypeAllAllFactorsImageList: TImageList;
    TypeAllTasksImageList: TImageList;
    MagazinesPageImageList: TImageList;
    NavigatIL: TImageList;
    TypeAllCausesImageList1: TImageList;
    ProgPagesImageList: TImageList;
    ClassifierImageList: TImageList;
    ClientImageList: TImageList;
    PopUpsImageList: TImageList;
    RPLPopUpIL: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImageListsDM: TImageListsDM;

implementation

{$R *.dfm}

end.
