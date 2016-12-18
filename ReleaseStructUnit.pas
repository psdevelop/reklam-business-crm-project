unit ReleaseStructUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BoldNavigatorDefs, BoldNavigator, ComCtrls, StdCtrls, BoldCheckBox,
  BoldEdit, BoldImage, BoldMemo, Grids, BoldGrid, Buttons, BoldTreeView,
  BoldComboBox, ToolWin, BoldListBox, ExtCtrls, BoldSubscription, BoldElements,
  BoldPlaceableSubscriber, BoldLabel, OleCtnrs, BoldSystem, DB, DBGrids, BoldXCVTreeView, Tabs,
  BoldTrackBar, sTrackBar, sBoldTrackBar, sEdit, sBoldEdit, sLabel, sSkinManager,
  sComboBox, sBoldComboBox, sPanel, sPageControl, sTreeView, sBoldTreeView,
  sSpeedButton, sAlphaListBox, sBoldListBox, sGroupBox, sCheckBox,
  sBoldCheckBox, sToolBar, sBitBtn, Mask, sMaskEdit, sCustomComboEdit,
  sComboEdit, sStatusBar, sGauge, BoldPersistenceNotifier, sBoldLabel,
  sScrollBox, sCheckListBox, sBoldCustomCheckListBox, sBoldCheckListBox, sMemo,
  sBoldMemo;

type

  TFrameType = ( frtSquare, frtSmoothSuqare, frtNone );
  TBackGrndType = ( bktWhite, bktInvers );

  TReleaseStructForm = class(TForm)
    ColorDialog1: TColorDialog;
    MainLeftPanel: TPanel;
    Splitter1: TSplitter;
    MainCenterPanel: TPanel;
    RightAdditionalPanel: TPanel;
    Splitter2: TSplitter;
    PageControl3: TPageControl;
    ClientInfoTabSheet: TTabSheet;
    SettingsTabSheet: TTabSheet;
    PageControl4: TPageControl;
    IndividInfoTabSheet: TTabSheet;
    Panel25: TPanel;
    Label47: TLabel;
    Label46: TLabel;
    Label45: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    Label42: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label55: TLabel;
    CompanyInfoTabSheet: TTabSheet;
    TabSheet15: TTabSheet;
    BoldGrid8: TBoldGrid;
    TabSheet16: TTabSheet;
    BoldGrid10: TBoldGrid;
    Label53: TLabel;
    Label51: TLabel;
    Label1: TLabel;
    MainChartTabSheet: TTabSheet;
    Panel1: TPanel;
    MainPlanDBGrid: TDBGrid;
    ClGroupInfoTabSheet: TTabSheet;
    PageControl5: TPageControl;
    OrgTypeTabSheet: TTabSheet;
    TabSheet11: TTabSheet;
    Panel11: TPanel;
    TabSheet12: TTabSheet;
    MagStructTabSheet: TTabSheet;
    PageControl6: TPageControl;
    MagazinesTabSheet: TTabSheet;
    MagSectTabSheet: TTabSheet;
    ProjTabSheet: TTabSheet;
    PageControl7: TPageControl;
    DevsTabSheet: TTabSheet;
    DocsTabSheet: TTabSheet;
    RelOfMagTabSheet: TTabSheet;
    Panel43: TPanel;
    Panel44: TPanel;
    BoldGrid13: TBoldGrid;
    Panel46: TPanel;
    Panel47: TPanel;
    BoldGrid14: TBoldGrid;
    Panel49: TPanel;
    Panel50: TPanel;
    BoldGrid15: TBoldGrid;
    Panel52: TPanel;
    Panel53: TPanel;
    BoldGrid16: TBoldGrid;
    Panel55: TPanel;
    Panel56: TPanel;
    BoldGrid17: TBoldGrid;
    Panel71: TPanel;
    BoldGrid22: TBoldGrid;
    Panel74: TPanel;
    BoldGrid23: TBoldGrid;
    Panel78: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    BoldGrid19: TBoldGrid;
    Panel14: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    StandPriceTabSheet: TTabSheet;
    Panel70: TPanel;
    BoldGrid35: TBoldGrid;
    TabSheet3: TTabSheet;
    Panel94: TPanel;
    BoldGrid2: TBoldGrid;
    GroupBox10: TGroupBox;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    Label82: TLabel;
    Label83: TLabel;
    BoldListBox6: TBoldListBox;
    BoldListBox7: TBoldListBox;
    Label87: TLabel;
    Label90: TLabel;
    StartTabSheet: TTabSheet;
    Label91: TLabel;
    sPageControl1: TsPageControl;
    MagInfoTabSheet: TsTabSheet;
    sPanel2: TsPanel;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    sBitBtn8: TsBitBtn;
    sBitBtn9: TsBitBtn;
    sBitBtn10: TsBitBtn;
    sBitBtn11: TsBitBtn;
    sBoldEdit1: TsBoldEdit;
    sBoldEdit8: TsBoldEdit;
    sBoldEdit9: TsBoldEdit;
    sBoldEdit10: TsBoldEdit;
    sBoldEdit11: TsBoldEdit;
    sBoldEdit12: TsBoldEdit;
    sBoldEdit13: TsBoldEdit;
    sBoldEdit14: TsBoldEdit;
    sBoldEdit15: TsBoldEdit;
    sBoldEdit16: TsBoldEdit;
    sBoldEdit17: TsBoldEdit;
    sBoldEdit18: TsBoldEdit;
    sBoldEdit19: TsBoldEdit;
    sBoldEdit20: TsBoldEdit;
    sBoldEdit21: TsBoldEdit;
    sSpeedButton5: TsSpeedButton;
    sSkinManager1: TsSkinManager;
    sSpeedButton6: TsSpeedButton;
    sBoldEdit22: TsBoldEdit;
    sBoldEdit23: TsBoldEdit;
    sBoldEdit24: TsBoldEdit;
    sBoldEdit25: TsBoldEdit;
    sBoldEdit26: TsBoldEdit;
    sBoldEdit27: TsBoldEdit;
    sBoldEdit28: TsBoldEdit;
    sBoldEdit29: TsBoldEdit;
    Label5: TLabel;
    Label33: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    sBoldEdit30: TsBoldEdit;
    sBoldEdit31: TsBoldEdit;
    sBoldEdit32: TsBoldEdit;
    sBoldEdit33: TsBoldEdit;
    sBoldEdit34: TsBoldEdit;
    sBoldEdit35: TsBoldEdit;
    sBoldEdit36: TsBoldEdit;
    sBoldEdit37: TsBoldEdit;
    sBoldEdit38: TsBoldEdit;
    sBoldEdit39: TsBoldEdit;
    sBoldEdit40: TsBoldEdit;
    sBoldEdit41: TsBoldEdit;
    sBoldEdit42: TsBoldEdit;
    sBoldEdit43: TsBoldEdit;
    sBoldEdit44: TsBoldEdit;
    sBoldEdit45: TsBoldEdit;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    sStatusBar1: TsStatusBar;
    Label77: TLabel;
    sBoldEdit48: TsBoldEdit;
    sBoldEdit49: TsBoldEdit;
    sBoldEdit50: TsBoldEdit;
    sSpeedButton10: TsSpeedButton;
    sBoldEdit52: TsBoldEdit;
    sSpeedButton11: TsSpeedButton;
    sSpeedButton12: TsSpeedButton;
    sPanel1: TsPanel;
    sLabel5: TsLabel;
    sGauge1: TsGauge;
    sLabelFX1: TsLabelFX;
    sPanel3: TsPanel;
    sBoldEdit47: TsBoldEdit;
    sBoldEdit46: TsBoldEdit;
    sBoldTrackBar1: TsBoldTrackBar;
    sLabel1: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sLabel8: TsLabel;
    sGroupBox2: TsGroupBox;
    sPageControl2: TsPageControl;
    BonusDiscParamTabSheet: TsTabSheet;
    OptDiscountParamTabSheet: TsTabSheet;
    PLDiscParamTabSheet: TsTabSheet;
    sBoldEdit4: TsBoldEdit;
    sLabel9: TsLabel;
    sBoldEdit5: TsBoldEdit;
    sLabel10: TsLabel;
    sBoldEdit7: TsBoldEdit;
    sBoldEdit6: TsBoldEdit;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    TabSheet7: TTabSheet;
    TabSheet10: TTabSheet;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    SpeedButton8: TSpeedButton;
    Panel18: TPanel;
    Label9: TLabel;
    Panel20: TPanel;
    Splitter5: TSplitter;
    BoldGrid4: TBoldGrid;
    Panel34: TPanel;
    PageControl12: TPageControl;
    TabSheet38: TTabSheet;
    Panel89: TPanel;
    BitBtn11: TBitBtn;
    BoldGrid28: TBoldGrid;
    TabSheet39: TTabSheet;
    GroupBox1: TGroupBox;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    GroupBox2: TGroupBox;
    BoldGrid20: TBoldGrid;
    GroupBox3: TGroupBox;
    BoldGrid21: TBoldGrid;
    GroupBox4: TGroupBox;
    BoldGrid32: TBoldGrid;
    Panel19: TPanel;
    BitBtn10: TBitBtn;
    TabSheet6: TTabSheet;
    Panel26: TPanel;
    PageControl13: TPageControl;
    TabSheet40: TTabSheet;
    Splitter8: TSplitter;
    BoldGrid5: TBoldGrid;
    PageControl14: TPageControl;
    TabSheet42: TTabSheet;
    BoldGrid29: TBoldGrid;
    Panel65: TPanel;
    Panel66: TPanel;
    BoldGrid34: TBoldGrid;
    Panel67: TPanel;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Panel22: TPanel;
    Label10: TLabel;
    Panel23: TPanel;
    BitBtn13: TBitBtn;
    TabSheet41: TTabSheet;
    Splitter9: TSplitter;
    Panel91: TPanel;
    BitBtn12: TBitBtn;
    Panel92: TPanel;
    Label74: TLabel;
    BoldGrid30: TBoldGrid;
    PageControl15: TPageControl;
    TabSheet43: TTabSheet;
    Splitter10: TSplitter;
    BoldGrid31: TBoldGrid;
    Panel62: TPanel;
    Panel63: TPanel;
    BoldGrid33: TBoldGrid;
    Panel64: TPanel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    TabSheet9: TTabSheet;
    PageControl8: TPageControl;
    TabSheet30: TTabSheet;
    Panel27: TPanel;
    Label11: TLabel;
    Panel28: TPanel;
    Panel29: TPanel;
    BoldGrid6: TBoldGrid;
    TabSheet31: TTabSheet;
    Panel30: TPanel;
    Label12: TLabel;
    Panel31: TPanel;
    Label73: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton9: TSpeedButton;
    BoldCheckBox12: TBoldCheckBox;
    BoldEdit44: TBoldEdit;
    BoldEdit45: TBoldEdit;
    Panel32: TPanel;
    BoldGrid7: TBoldGrid;
    TabSheet27: TTabSheet;
    PageControl9: TPageControl;
    TabSheet32: TTabSheet;
    Panel33: TPanel;
    Label13: TLabel;
    Panel35: TPanel;
    Panel79: TPanel;
    BoldGrid9: TBoldGrid;
    TabSheet33: TTabSheet;
    Panel80: TPanel;
    Label70: TLabel;
    Panel81: TPanel;
    BoldCheckBox9: TBoldCheckBox;
    BoldCheckBox10: TBoldCheckBox;
    BoldCheckBox11: TBoldCheckBox;
    Panel82: TPanel;
    BoldGrid25: TBoldGrid;
    TabSheet29: TTabSheet;
    PageControl10: TPageControl;
    TabSheet34: TTabSheet;
    Panel36: TPanel;
    Label14: TLabel;
    Panel37: TPanel;
    Panel38: TPanel;
    BoldGrid11: TBoldGrid;
    TabSheet35: TTabSheet;
    Panel41: TPanel;
    Label71: TLabel;
    Panel83: TPanel;
    BoldCheckBox2: TBoldCheckBox;
    BoldCheckBox3: TBoldCheckBox;
    BoldCheckBox4: TBoldCheckBox;
    BoldCheckBox5: TBoldCheckBox;
    Panel84: TPanel;
    BoldGrid12: TBoldGrid;
    TabSheet28: TTabSheet;
    PageControl11: TPageControl;
    TabSheet36: TTabSheet;
    Panel39: TPanel;
    Label15: TLabel;
    Panel40: TPanel;
    Panel85: TPanel;
    BoldGrid26: TBoldGrid;
    TabSheet37: TTabSheet;
    Panel86: TPanel;
    Label72: TLabel;
    Panel87: TPanel;
    BoldCheckBox6: TBoldCheckBox;
    BoldCheckBox7: TBoldCheckBox;
    BoldCheckBox8: TBoldCheckBox;
    Panel88: TPanel;
    BoldGrid27: TBoldGrid;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sLabel13: TsLabel;
    BoldGrid38: TBoldGrid;
    sBitBtn12: TsBitBtn;
    ClientSaleInfoTabSheet: TsTabSheet;
    sPanel9: TsPanel;
    sLabel14: TsLabel;
    sPanel10: TsPanel;
    sLabel15: TsLabel;
    sBoldComboBox7: TsBoldComboBox;
    sLabel16: TsLabel;
    sPanel11: TsPanel;
    sLabel17: TsLabel;
    sLabel18: TsLabel;
    sBoldComboBox8: TsBoldComboBox;
    sLabel19: TsLabel;
    sBoldComboBox9: TsBoldComboBox;
    sLabel20: TsLabel;
    sBoldComboBox10: TsBoldComboBox;
    sLabel21: TsLabel;
    BoldEdit2: TBoldEdit;
    BoldEdit1: TBoldEdit;
    sScrollBox1: TsScrollBox;
    sPanel12: TsPanel;
    sPanel13: TsPanel;
    sBoldLabel3: TsBoldLabel;
    sLabel24: TsLabel;
    sLabel23: TsLabel;
    sBoldLabel2: TsBoldLabel;
    sBoldLabel1: TsBoldLabel;
    Splitter13: TSplitter;
    sGroupBox3: TsGroupBox;
    sPanel14: TsPanel;
    Splitter14: TSplitter;
    sGroupBox4: TsGroupBox;
    Splitter15: TSplitter;
    sBoldListBox6: TsBoldListBox;
    sBoldListBox7: TsBoldListBox;
    AttentRemTabSheet: TsTabSheet;
    sPanel15: TsPanel;
    Timer1: TTimer;
    sPanel18: TsPanel;
    sLabel27: TsLabel;
    sPanel19: TsPanel;
    sLabel28: TsLabel;
    sPanel20: TsPanel;
    sLabel29: TsLabel;
    sBoldLabel4: TsBoldLabel;
    RPLTabSheet: TTabSheet;
    sPanel21: TsPanel;
    sLabel30: TsLabel;
    sLabel31: TsLabel;
    sBoldComboBox13: TsBoldComboBox;
    sStatusBar2: TsStatusBar;
    Panel58: TPanel;
    Panel93: TPanel;
    sPanel6: TsPanel;
    sBitBtn1: TsBitBtn;
    PageControl16: TPageControl;
    BaseRPLTabSheet: TTabSheet;
    Panel73: TPanel;
    Splitter11: TSplitter;
    Panel90: TPanel;
    Label24: TLabel;
    Label23: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    BoldCheckBox13: TBoldCheckBox;
    BoldCheckBox14: TBoldCheckBox;
    OtherPriceBoldEdit: TsBoldEdit;
    sBoldComboBox3: TsBoldComboBox;
    sBoldComboBox4: TsBoldComboBox;
    sBoldComboBox5: TsBoldComboBox;
    sBoldComboBox11: TsBoldComboBox;
    sGroupBox1: TsGroupBox;
    sBoldCheckListBox1: TsBoldCheckListBox;
    sBoldCheckListBox2: TsBoldCheckListBox;
    sBoldCheckListBox3: TsBoldCheckListBox;
    RPLDevTabSheet: TTabSheet;
    GroupBox9: TGroupBox;
    BoldGrid36: TBoldGrid;
    ByOutAddPriceTabSheet: TTabSheet;
    Splitter12: TSplitter;
    GroupBox7: TGroupBox;
    sBoldListBox3: TsBoldListBox;
    GroupBox8: TGroupBox;
    BoldGrid3: TBoldGrid;
    SpecialDiscountTabSheet: TTabSheet;
    GroupBox6: TGroupBox;
    Label80: TLabel;
    Label81: TLabel;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sBoldListBox4: TsBoldListBox;
    sBoldListBox5: TsBoldListBox;
    PriceListAttrTabSheet: TTabSheet;
    Label89: TLabel;
    BoldLabel4: TBoldLabel;
    BoldLabel5: TBoldLabel;
    BoldLabel6: TBoldLabel;
    sBoldEdit2: TsBoldEdit;
    OptTabSheet: TTabSheet;
    BoldLabel11: TBoldLabel;
    RPLFilterTabSheet: TTabSheet;
    sLabel22: TsLabel;
    sBoldComboBox12: TsBoldComboBox;
    OtherRPLTabSheet: TTabSheet;
    PageScroller1: TPageScroller;
    sPanel16: TsPanel;
    sBitBtn13: TsBitBtn;
    sBitBtn14: TsBitBtn;
    sBitBtn15: TsBitBtn;
    sBitBtn16: TsBitBtn;
    Panel59: TPanel;
    BoldGrid18: TBoldGrid;
    sBitBtn17: TsBitBtn;
    sBitBtn18: TsBitBtn;
    sPanel17: TsPanel;
    sLabel25: TsLabel;
    sPanel22: TsPanel;
    sLabel26: TsLabel;
    sBoldLabel5: TsBoldLabel;
    sBoldComboBox6: TsBoldComboBox;
    sLabel32: TsLabel;
    sPanel23: TsPanel;
    sLabel33: TsLabel;
    sBoldLabel6: TsBoldLabel;
    sPanel24: TsPanel;
    sLabel34: TsLabel;
    sPanel25: TsPanel;
    sLabel35: TsLabel;
    sGroupBox5: TsGroupBox;
    sBoldMemo1: TsBoldMemo;
    sGroupBox6: TsGroupBox;
    sBoldMemo2: TsBoldMemo;
    sBoldLabel7: TsBoldLabel;
    sPageControl3: TsPageControl;
    sTabSheet6: TsTabSheet;
    sTabSheet7: TsTabSheet;
    Panel3: TPanel;
    BoldGrid1: TBoldGrid;
    sToolBar2: TsToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    sToolBar3: TsToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Splitter3: TSplitter;
    Panel2: TPanel;
    Panel4: TPanel;
    sToolBar1: TsToolBar;
    ToolButton1: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton2: TToolButton;
    ClientBoldTreeView: TsBoldTreeView;
    RPLBoldTreeView: TsBoldTreeView;
    sPanel26: TsPanel;
    sGroupBox7: TsGroupBox;
    sBoldListBox1: TsBoldListBox;
    sPanel27: TsPanel;
    sBoldComboBox2: TsBoldComboBox;
    sBoldComboBox1: TsBoldComboBox;
    sLabel3: TsLabel;
    sLabel2: TsLabel;
    Splitter4: TSplitter;
    sBoldLabel8: TsBoldLabel;
    sBoldLabel9: TsBoldLabel;
    sBoldLabel10: TsBoldLabel;
    StandSizeSpeedButton: TsSpeedButton;
    sBitBtn20: TsBitBtn;
    sBitBtn21: TsBitBtn;
    sBitBtn22: TsBitBtn;
    sBitBtn23: TsBitBtn;
    sBitBtn24: TsBitBtn;
    sBitBtn25: TsBitBtn;
    sBitBtn26: TsBitBtn;
    sBitBtn27: TsBitBtn;
    sBitBtn28: TsBitBtn;
    sBitBtn29: TsBitBtn;
    CheksTabSheet: TTabSheet;
    BoldGrid37: TBoldGrid;
    sPanel29: TsPanel;
    sLabel36: TsLabel;
    Panel5: TPanel;
    PriceMultLabel: TLabel;
    PriceMultsBoldEdit: TsBoldEdit;
    sPanel30: TsPanel;
    sPanel31: TsPanel;
    sGroupBox8: TsGroupBox;
    BoldGrid39: TBoldGrid;
    sPanel32: TsPanel;
    Splitter16: TSplitter;
    sBitBtn30: TsBitBtn;
    sBitBtn31: TsBitBtn;
    sBitBtn32: TsBitBtn;
    sBitBtn33: TsBitBtn;
    BoldCheckBox1: TBoldCheckBox;
    BoldEdit3: TBoldEdit;
    BoldEdit4: TBoldEdit;
    SaledTabSheet: TTabSheet;
    sPanel28: TsPanel;
    sLabel4: TsLabel;
    sBoldComboBox14: TsBoldComboBox;
    Panel76: TPanel;
    sBitBtn19: TsBitBtn;
    Panel77: TPanel;
    BoldGrid24: TBoldGrid;
    sBitBtn34: TsBitBtn;
    sBoldLabel11: TsBoldLabel;
    Timer2: TTimer;
    BoldCheckBox15: TBoldCheckBox;
    BoldCheckBox16: TBoldCheckBox;
    BoldCheckBox17: TBoldCheckBox;
    sPanel33: TsPanel;
    sBoldEdit3: TsBoldEdit;
    sLabel37: TsLabel;
    BoldCheckBox18: TBoldCheckBox;
    sBoldComboBox15: TsBoldComboBox;
    sLabel38: TsLabel;
    BoldCheckBox19: TBoldCheckBox;
    sLabel39: TsLabel;
    sBoldComboBox16: TsBoldComboBox;
    BoldCheckBox20: TBoldCheckBox;
    sBitBtn35: TsBitBtn;
    sGroupBox9: TsGroupBox;
    BoldListBox1: TBoldListBox;
    Splitter17: TSplitter;
    sGroupBox10: TsGroupBox;
    Splitter18: TSplitter;
    sGroupBox11: TsGroupBox;
    BoldListBox2: TBoldListBox;
    BoldListBox3: TBoldListBox;
    sBoldEdit51: TsBoldEdit;
    Label2: TLabel;
    procedure ToolButton24Click(Sender: TObject);
    procedure MainPlanDBGridCellClick(Column: TColumn);
    procedure BoldGrid24Columns7LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure sSpeedButton12Click(Sender: TObject);
    procedure BoldGrid39Columns4LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure BoldGrid37Columns6LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure BoldGrid18Columns11LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure sLabel2DblClick(Sender: TObject);
    procedure sBoldComboBox2Click(Sender: TObject);
    procedure sBoldComboBox1Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure RPLBoldTreeViewClick(Sender: TObject);
    procedure MainChartTabSheetShow(Sender: TObject);
    procedure sBitBtn17Click(Sender: TObject);
    procedure sBitBtn18Click(Sender: TObject);
    procedure sBoldCheckListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sBoldCheckListBox3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sBoldCheckListBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sBitBtn16Click(Sender: TObject);
    procedure sBitBtn14Click(Sender: TObject);
    procedure sBitBtn13Click(Sender: TObject);
    procedure sBitBtn15Click(Sender: TObject);
    procedure sBoldCheckListBox1DblClick(Sender: TObject);
    procedure sBoldCheckListBox3DblClick(Sender: TObject);
    procedure sBoldCheckListBox2DblClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BoldGrid24Columns4LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure sSpeedButton10Click(Sender: TObject);
    procedure BoldEdit1Change(Sender: TObject);
    procedure BoldEdit2Change(Sender: TObject);
    procedure sBoldEdit55Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BoldGrid24Columns5LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure StandSizeSpeedButtonClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sBoldTreeView1Click(Sender: TObject);
    procedure sBoldTreeView1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure sBoldTreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure sBoldTreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure sBoldTrackBar1Change(Sender: TObject);
    procedure BoldGrid36Columns3LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure FormCreate(Sender: TObject);
    procedure BoldGrid10DblClick(Sender: TObject);
    procedure BoldGrid8DblClick(Sender: TObject);
    procedure ClientBoldTreeViewClick(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure BoldGrid18Columns9LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure BoldGrid28Columns2LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure BoldGrid18Columns10LookupChange(DestElement,
      NewValue: TBoldElement);
    procedure IndividInfoTabSheetShow(Sender: TObject);
    procedure CompanyInfoTabSheetShow(Sender: TObject);
    procedure ClientBoldTreeViewStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ClientBoldTreeViewDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure ClientBoldTreeViewDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AddCurrUserLog(LogText: Widestring);
    procedure RefreshMainPlanQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    ISMScroll: Boolean;
    AfterDelete: Boolean;
    CurrDragDriver: TBoldElement;
    BlinkSignal: Boolean;
  end;

var
  ReleaseStructForm: TReleaseStructForm;
  DragClient: TBoldElement;

implementation

{$R *.dfm}

uses BusinessClasses, ReportDMUnit, AllMagEnumFormUnit, ImageLists, BoldAttributes, HandlesDM, PopUpCompUnit,
  BoldOtherHandlCompUnit, Clipbrd, DateUtils, MainForm, ModelDM,
  SetDateTimeUnit;

procedure TReleaseStructForm.AddCurrUserLog(LogText: Widestring);
var LBE: TBoldElement;
begin
  LBE:=BoldHandlesDM.blhCurrUserLogs.List.AddNew;
  (LBE as TLog_operacii).Data:=Today;
  (LBE as TLog_operacii).Vremya:=TimeToStr(Time);
  (LBE as TLog_operacii).Naimenovanie_operacii:=LogText;
end;

procedure TReleaseStructForm.RefreshMainPlanQuery;
var SQL_SCRIPT: string;
    interval_len, i: Integer;
    col_num, year_num: Integer;
begin

 if BoldModelDM.bsh.Active then
  begin

  BoldModelDM.BoldUpdateDBAction1.Execute;

  interval_len:=
    (BoldHandlesDM.behSettElm.Value as TNastroiki).Dlina_intervala;
  col_num:=
    (BoldHandlesDM.behSettElm.Value as TNastroiki).Nomer_start_vyp;
  year_num:=
    (BoldHandlesDM.behSettElm.Value as TNastroiki).God_start_vyp;
  SQL_SCRIPT:=
    'select ';
  SQL_SCRIPT:=
        SQL_SCRIPT+' dbo.GetRPLPageNum(rpl.BOLD_ID) as "Стр."'
        +', dbo.GetRPLManager(rpl.BOLD_ID) as "Агент", opisanie as "Наименование", fail_imya as "Имя файла",'+
        'dbo.GetRPLSize(rpl.BOLD_ID) as "Разм."';
  for i:=0 to interval_len-1 do
    begin
      SQL_SCRIPT:=
        SQL_SCRIPT
        +', dbo.GetClientByReleaseComment(rpl.BOLD_ID,'+
        IntToStr(col_num)+','+IntToStr(year_num)+','+
        //'dbo.GetBonusVal(rpl.BOLD_ID)'+
        'dbo.GetBonusVal(rpl.BOLD_ID)) as "№'+
        IntToStr(col_num)+'"';

        BoldHandlesDM.bvhPrevRelNumber.Value.SetAsVariant(col_num);
        BoldHandlesDM.bvhPrevRelYear.Value.SetAsVariant(year_num);
        col_num:=
          BoldHandlesDM.behNextRelNumber.Value.GetAsVariant;
        year_num:=
          BoldHandlesDM.behNextRelYear.Value.GetAsVariant;
        if (col_num=0) and (year_num=0) then
          Break;
    end;

  SQL_SCRIPT:=
        SQL_SCRIPT+', BOLD_ID, yavl_reklamoi_dlya from Razmeshenie_reklamy rpl where Zakryt=0';
  //ShowMessage(SQL_SCRIPT);
  try
    BoldModelDM.MainPlanADOQuery.Active:=False;
    BoldModelDM.MainPlanADOQuery.SQL.Text:=
      SQL_SCRIPT;
    BoldModelDM.MainPlanADOQuery.Active:=True;  
  except
    ShowMessage('Неудачное выполнение процедуры обновления плана-графика!');
  end;
  MainPlanDBGrid.Columns.Items[0].Width:=
        20;
  MainPlanDBGrid.Columns.Items[1].Width:=
        20;
  MainPlanDBGrid.Columns.Items[2].Width:=
        100;
  MainPlanDBGrid.Columns.Items[3].Width:=
        40;
  MainPlanDBGrid.Columns.Items[4].Width:=
        40;
  for i:=5 to MainPlanDBGrid.Columns.Count-3 do
    begin
      MainPlanDBGrid.Columns.Items[i].Width:=
        30;
      MainPlanDBGrid.Columns.Items[i].Alignment:=
        taCenter;  
    end;
  end;
  MainPlanDBGrid.Columns.Items[MainPlanDBGrid.Columns.Count-1].Width:=
        0;
  MainPlanDBGrid.Columns.Items[MainPlanDBGrid.Columns.Count-2].Width:=
        0;
end;

procedure TReleaseStructForm.ClientBoldTreeViewDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TBoldTreeView then
    begin
      Accept:=
         True;
    end;
end;

procedure TReleaseStructForm.ClientBoldTreeViewDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  if Source is TBoldTreeView then
    begin
      if DragClient<>nil then
         (DragClient as TKlient).org_imeet_specif:=
          (ClientBoldTreeView.GetElementAt(X,Y)
            as TSpecif_organizacii);
    end;
end;

procedure TReleaseStructForm.ClientBoldTreeViewStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  if ClientBoldTreeView.Selected.Follower.Element.ClassType.ClassName=
    'TKlient' then
      begin
        DragClient:=
          ClientBoldTreeView.Selected.Follower.Element;
      end
   else
     DragClient:=nil;
end;

procedure TReleaseStructForm.CompanyInfoTabSheetShow(Sender: TObject);
begin
  if BoldHandlesDM.brhCurrClient.Value<>nil then
   if not (BoldHandlesDM.brhCurrClient.Value as TKlient).Yavl_yur_licom then
    if MessageDlg('Считать текущего клиента юридическим лицом?',mtConfirmation,mbYesNo,0)=mrYes then
      (BoldHandlesDM.brhCurrClient.Value as TKlient).Yavl_yur_licom:=
        True;
end;

procedure TReleaseStructForm.IndividInfoTabSheetShow(Sender: TObject);
begin
  if BoldHandlesDM.brhCurrClient.Value<>nil then
   if (BoldHandlesDM.brhCurrClient.Value as TKlient).Yavl_yur_licom then
    if MessageDlg('Считать текущего клиента физическим лицом?',mtConfirmation,mbYesNo,0)=mrYes then
      (BoldHandlesDM.brhCurrClient.Value as TKlient).Yavl_yur_licom:=
        False;
end;

procedure TReleaseStructForm.BoldGrid18Columns10LookupChange(DestElement,
  NewValue: TBoldElement);
begin
  (DestElement as TRazmeshenie_reklamy).imeet_tip_reklamy:=
     (NewValue as TTip_reklamy);
end;

procedure TReleaseStructForm.BoldGrid28Columns2LookupChange(DestElement,
  NewValue: TBoldElement);
begin
  (DestElement as TPrichina).otnositsya_kstandartu:=
    (NewValue as TStandartnaya_prichina); 
end;

procedure TReleaseStructForm.BoldGrid18Columns9LookupChange(DestElement,
  NewValue: TBoldElement);
begin
  (DestElement as TRazmeshenie_reklamy).razm_reklamu_v:=
    (NewValue as TRazdel_izdaniya);
end;

procedure TReleaseStructForm.SpeedButton19Click(Sender: TObject);
begin
  if BoldHandlesDM.blhAllDiscount.List.Count>0 then
  (BoldHandlesDM.blhReklamType.CurrentElement as
    TTip_reklamy).tip_rekl_imeet_skidki.Add(
      BoldHandlesDM.blhAllDiscount.CurrentElement as TSkidka);
end;

procedure TReleaseStructForm.SpeedButton18Click(Sender: TObject);
begin
  BoldHandlesDM.blhReklamTypeDiscount.CurrentBoldObject.Delete;
end;

procedure TReleaseStructForm.ClientBoldTreeViewClick(Sender: TObject);
begin
  if ClientBoldTreeView.SelectionCount>0 then
  if ClientBoldTreeView.Selected.Follower.Element.ClassType.ClassName=
    'TKlient' then
      begin
        BoldHandlesDM.brhCurrClient.Value:=
          ClientBoldTreeView.Selected.Follower.Element;
        if (BoldHandlesDM.brhCurrClient.Value AS TKlient).Yavl_yur_licom then
          CompanyInfoTabSheet.Show
        else
          IndividInfoTabSheet.Show;
      end
   else if ClientBoldTreeView.Selected.Follower.Element.ClassType.ClassName=
    'TSpecif_organizacii' then
      begin
        BoldHandlesDM.brhCurrClientGroup.Value:=
          ClientBoldTreeView.Selected.Follower.Element;
        BoldHandlesDM.blhAllClientType.CurrentIndex:=
          BoldHandlesDM.blhAllClientType.List.IndexOf(
            BoldHandlesDM.brhCurrClientGroup.Value);
        OrgTypeTabSheet.Show;
      end
   else
     begin
     end;
end;

procedure TReleaseStructForm.BoldGrid8DblClick(Sender: TObject);
begin
if BoldHandlesDM.blhAllIndividsClients.List.Count>0 then
  begin
    BoldHandlesDM.brhCurrClient.Value:=
          BoldHandlesDM.blhAllIndividsClients.CurrentElement;

          IndividInfoTabSheet.Show;
  end;
end;

procedure TReleaseStructForm.BoldGrid10DblClick(Sender: TObject);
begin
if BoldHandlesDM.blhAllCompany.List.Count>0 then
  begin
    BoldHandlesDM.brhCurrClient.Value:=
          BoldHandlesDM.blhAllCompany.CurrentElement;

          CompanyInfoTabSheet.Show;
  end;
end;

procedure TReleaseStructForm.FormCreate(Sender: TObject);
begin
  StartTabSheet.Show;
  sSkinManager1.SkinDirectory:=
    GetCurrentDir+'\Skins';
  sSkinManager1.SkinName:=
    'Office2003';
  sSkinManager1.Active:=
    True;    
end;

procedure TReleaseStructForm.BoldGrid36Columns3LookupChange(DestElement,
  NewValue: TBoldElement);
begin
  (DestElement as TDobavochnaya_stoim).opisyvaet_stoim_razrab:=
     (NewValue as TProekt);
end;

procedure TReleaseStructForm.sBoldTrackBar1Change(Sender: TObject);
begin
  RefreshMainPlanQuery;
end;

procedure TReleaseStructForm.sBoldTreeView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if Source is TsBoldTreeView then
    begin
      if DragClient<>nil then
         (DragClient as TKlient).org_imeet_specif:=
          (ClientBoldTreeView.GetElementAt(X,Y)
            as TSpecif_organizacii);
    end;
end;

procedure TReleaseStructForm.sBoldTreeView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TsBoldTreeView then
    begin
      Accept:=
         True;
    end;
end;

procedure TReleaseStructForm.sBoldTreeView1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  if ClientBoldTreeView.Selected.Follower.Element.ClassType.ClassName=
    'TKlient' then
      begin
        DragClient:=
          ClientBoldTreeView.Selected.Follower.Element;
      end
   else
     DragClient:=nil;
end;

procedure TReleaseStructForm.sBoldTreeView1Click(Sender: TObject);
begin
  if ClientBoldTreeView.SelectionCount>0 then
  if ClientBoldTreeView.Selected.Follower.Element.ClassType.ClassName=
    'TKlient' then
      begin
        BoldHandlesDM.brhCurrClient.Value:=
          ClientBoldTreeView.Selected.Follower.Element;
        if (BoldHandlesDM.brhCurrClient.Value AS TKlient).Yavl_yur_licom then
          CompanyInfoTabSheet.Show
        else
          IndividInfoTabSheet.Show;
      end
   else if ClientBoldTreeView.Selected.Follower.Element.ClassType.ClassName=
    'TSpecif_organizacii' then
      begin
        BoldHandlesDM.brhCurrClientGroup.Value:=
          ClientBoldTreeView.Selected.Follower.Element;
        BoldHandlesDM.blhAllClientType.CurrentIndex:=
          BoldHandlesDM.blhAllClientType.List.IndexOf(
            BoldHandlesDM.brhCurrClientGroup.Value);
        OrgTypeTabSheet.Show;
      end
   else
     begin
     end;
end;

procedure TReleaseStructForm.sSpeedButton2Click(Sender: TObject);
begin
  BoldHandlesDM.blhRelOfReklPlacing.CurrentBoldObject.Delete;
end;

procedure TReleaseStructForm.StandSizeSpeedButtonClick(Sender: TObject);
begin
  StandPriceTabSheet.Show;
end;

procedure TReleaseStructForm.sSpeedButton3Click(Sender: TObject);
begin
if BoldHandlesDM.blhRPLDiscount.List.Count>0 then
  (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement as
    TRazmeshenie_reklamy).imeet_skidki.Add(
      BoldHandlesDM.blhRPLDiscount.CurrentElement as TSkidka);

end;

procedure TReleaseStructForm.BoldGrid24Columns5LookupChange(DestElement,
  NewValue: TBoldElement);
begin
 if (DestElement as TOplata).Bez_nal then
  (DestElement as TOplata).oplata_po_schyotu:=
    (NewValue as TSchyot)
 else
   ShowMessage('Оплата является наличной!');   
end;

procedure TReleaseStructForm.Timer1Timer(Sender: TObject);
begin
  if sGauge1.Progress<100 then
    begin
      sGauge1.Progress:=
        sGauge1.Progress+1;
    end
   else
     begin
       sLabelFX1.Caption:=
         'Приложение готово к соединению с БД.';
        Timer1.Enabled:=False;
     end;
end;

procedure TReleaseStructForm.sBoldEdit55Change(Sender: TObject);
begin
ShowMessage(BoldHandlesDM.bvhlientSearchWord.Value.AsString);
if (BoldHandlesDM.blhClientSearch.List.Count>0)
        and (BoldHandlesDM.blhAllCompany.List.Count>0) then
    begin
      BoldHandlesDM.blhClientSearch.First;
      if BoldHandlesDM.blhAllCompany.List.IndexOf(
         BoldHandlesDM.blhClientSearch.CurrentElement)>=0 then
         begin
           BoldHandlesDM.blhAllCompany.CurrentIndex:=
             BoldHandlesDM.blhAllCompany.List.IndexOf(
                 BoldHandlesDM.blhClientSearch.CurrentElement);
           Exit;
         end;
      while true do
        begin
          if BoldHandlesDM.blhAllCompany.List.IndexOf(
         BoldHandlesDM.blhClientSearch.CurrentElement)>=0 then
         begin
           BoldHandlesDM.blhAllCompany.CurrentIndex:=
             BoldHandlesDM.blhAllCompany.List.IndexOf(
                 BoldHandlesDM.blhClientSearch.CurrentElement);
           Exit;
         end;
          if BoldHandlesDM.blhClientSearch.HasNext then
            BoldHandlesDM.blhClientSearch.Next
          else
            Break;
        end;
    end;
end;

procedure TReleaseStructForm.BoldEdit2Change(Sender: TObject);
begin
   if (BoldHandlesDM.blhClientSearch.List.Count>0)
        and (BoldHandlesDM.blhAllIndividsClients.List.Count>0) then
    begin
      BoldHandlesDM.blhClientSearch.First;
      if BoldHandlesDM.blhAllIndividsClients.List.IndexOf(
         BoldHandlesDM.blhClientSearch.CurrentElement)>=0 then
         begin
           BoldHandlesDM.blhAllIndividsClients.CurrentIndex:=
             BoldHandlesDM.blhAllIndividsClients.List.IndexOf(
                 BoldHandlesDM.blhClientSearch.CurrentElement);
           Exit;
         end;
      while true do
        begin
          if BoldHandlesDM.blhAllIndividsClients.List.IndexOf(
         BoldHandlesDM.blhClientSearch.CurrentElement)>=0 then
          begin
           BoldHandlesDM.blhAllIndividsClients.CurrentIndex:=
             BoldHandlesDM.blhAllIndividsClients.List.IndexOf(
                 BoldHandlesDM.blhClientSearch.CurrentElement);
           Exit;
           end;
          if BoldHandlesDM.blhClientSearch.HasNext then
            BoldHandlesDM.blhClientSearch.Next
          else
            Break;  
        end;
    end;

end;

procedure TReleaseStructForm.BoldEdit1Change(Sender: TObject);
begin
if (BoldHandlesDM.blhClientSearch.List.Count>0)
        and (BoldHandlesDM.blhAllCompany.List.Count>0) then
    begin
      BoldHandlesDM.blhClientSearch.First;
      if BoldHandlesDM.blhAllCompany.List.IndexOf(
         BoldHandlesDM.blhClientSearch.CurrentElement)>=0 then
         begin

           BoldHandlesDM.blhAllCompany.CurrentIndex:=
             BoldHandlesDM.blhAllCompany.List.IndexOf(
                 BoldHandlesDM.blhClientSearch.CurrentElement);
           Exit;
         end;
      while true do
        begin
          if BoldHandlesDM.blhAllCompany.List.IndexOf(
         BoldHandlesDM.blhClientSearch.CurrentElement)>=0 then
         begin
           BoldHandlesDM.blhAllCompany.CurrentIndex:=
             BoldHandlesDM.blhAllCompany.List.IndexOf(
                 BoldHandlesDM.blhClientSearch.CurrentElement);
           Exit;
         end;
          if BoldHandlesDM.blhClientSearch.HasNext then
            BoldHandlesDM.blhClientSearch.Next
          else
            Break;
        end;
    end;
end;

procedure TReleaseStructForm.sSpeedButton10Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    begin
      (BoldHandlesDM.behSettElm.Value as TNastroiki).Cvet_pod_voprosom:=
        IntToStr(ColorDialog1.Color);
      BoldOthHandleCompDM.basrBonusColor.Changed;
    end;
end;

procedure TReleaseStructForm.BoldGrid24Columns4LookupChange(DestElement,
  NewValue: TBoldElement);
begin
   if NewValue.GetAsVariant='БЕЗНАЛИЧНЫЙ РАСЧЁТ' then
    begin
      if (DestElement as TOplata).yavl_oplatoi_za=nil then
       (DestElement as TOplata).Bez_nal:=true
      else
       ShowMessage('Ошибка, оплата является наличной оплатой за кампанию');   
    end
   else
     begin
       if (DestElement as TOplata).oplata_po_schyotu=nil then
        (DestElement as TOplata).Bez_nal:=false
       else
         ShowMessage('Ошибка, оплата является безналичной оплатой за счёт');
     end; 
end;

procedure TReleaseStructForm.Timer2Timer(Sender: TObject);
begin
if BoldModelDM.bsh.Active then
 begin
  BoldHandlesDM.bvhCurrTime.Value.SetAsVariant(Today+Time);
  if BoldHandlesDM.blhAttentionTodReminders.List.Count>0 then
    begin

      AttentRemTabSheet.Show;
      ShowMessage('Имеется '+IntToStr(BoldHandlesDM.blhAttentionTodReminders.List.Count)+' акт. напоминаний, выделены красным цветом!');
    end;
   end;
end;

procedure TReleaseStructForm.sBoldCheckListBox2DblClick(Sender: TObject);
begin
 if BoldHandlesDM.blhSetNumInterval1.List.Count>0 then
  if BoldHandlesDM.blhReklPlacesOfMagSection.List.Count>0 then
      begin
       if BoldHandlesDM.behCurrOut1.Value=nil then
       begin
        (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement as
          TRazmeshenie_reklamy).vyhodit_v_vypuskah.Add(
            BoldHandlesDM.blhSetNumInterval1.CurrentElement
              as TVypusk_gazety);
       end
       else
         begin
           (BoldHandlesDM.behCurrOut1.Value as TVyhod).Delete;
         end;
      end;
end;

procedure TReleaseStructForm.sBoldCheckListBox3DblClick(Sender: TObject);
begin
 if BoldHandlesDM.blhSetNumInterval2.List.Count>0 then
  if BoldHandlesDM.blhReklPlacesOfMagSection.List.Count>0 then
      begin
       if BoldHandlesDM.behCurrOut2.Value=nil then
       begin
        (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement as
          TRazmeshenie_reklamy).vyhodit_v_vypuskah.Add(
            BoldHandlesDM.blhSetNumInterval2.CurrentElement
              as TVypusk_gazety);
       end
       else
         begin
           (BoldHandlesDM.behCurrOut2.Value as TVyhod).Delete;
         end;
      end;
end;

procedure TReleaseStructForm.sBoldCheckListBox1DblClick(Sender: TObject);
begin
 if BoldHandlesDM.blhSetNumInterval3.List.Count>0 then
  if BoldHandlesDM.blhReklPlacesOfMagSection.List.Count>0 then
      begin
       if BoldHandlesDM.behCurrOut3.Value=nil then
       begin
        (BoldHandlesDM.blhReklPlacesOfMagSection.CurrentElement as
          TRazmeshenie_reklamy).vyhodit_v_vypuskah.Add(
            BoldHandlesDM.blhSetNumInterval3.CurrentElement
              as TVypusk_gazety);
       end
       else
         begin
           (BoldHandlesDM.behCurrOut3.Value as TVyhod).Delete;
         end;
      end;
end;

procedure TReleaseStructForm.sBitBtn15Click(Sender: TObject);
begin
  CheksTabSheet.Show;
end;

procedure TReleaseStructForm.sBitBtn13Click(Sender: TObject);
begin
  RPLFilterTabSheet.Show;
end;

procedure TReleaseStructForm.sBitBtn14Click(Sender: TObject);
begin
  ByOutAddPriceTabSheet.Show;
end;

procedure TReleaseStructForm.sBitBtn16Click(Sender: TObject);
begin
  SpecialDiscountTabSheet.Show;
end;

procedure TReleaseStructForm.sBoldCheckListBox2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  sBoldCheckListBox2.SetFocus;
end;

procedure TReleaseStructForm.sBoldCheckListBox3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  sBoldCheckListBox3.SetFocus;
end;

procedure TReleaseStructForm.sBoldCheckListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  sBoldCheckListBox1.SetFocus;
end;

procedure TReleaseStructForm.sBitBtn18Click(Sender: TObject);
begin
  DocsTabSheet.Show;
end;

procedure TReleaseStructForm.sBitBtn17Click(Sender: TObject);
begin
  DevsTabSheet.Show;
end;

procedure TReleaseStructForm.MainChartTabSheetShow(Sender: TObject);
begin
  RefreshMainPlanQuery;
end;

procedure TReleaseStructForm.RPLBoldTreeViewClick(Sender: TObject);
begin
  if RPLBoldTreeView.SelectionCount>0 then
    begin
      if RPLBoldTreeView.Selected.Follower.Element.ClassType.ClassName='TIzdanie' then
        begin
          if BoldHandlesDM.blhMagazines.List.IndexOf(
            RPLBoldTreeView.Selected.Follower.Element)>=0 then
           begin
             BoldHandlesDM.blhMagazines.CurrentIndex:=
               BoldHandlesDM.blhMagazines.List.IndexOf(
                 RPLBoldTreeView.Selected.Follower.Element);
             MagazinesTabSheet.Show; 
           end;
        end
      else if RPLBoldTreeView.Selected.Follower.Element.ClassType.ClassName='TRazdel_izdaniya' then
        begin
          if BoldHandlesDM.blhMagSections.List.IndexOf(
            RPLBoldTreeView.Selected.Follower.Element)>=0 then
           begin
             BoldHandlesDM.blhMagSections.CurrentIndex:=
               BoldHandlesDM.blhMagSections.List.IndexOf(
                 RPLBoldTreeView.Selected.Follower.Element);
             MagSectTabSheet.Show;
           end;
        end
      else if RPLBoldTreeView.Selected.Follower.Element.ClassType.ClassName='TRazmeshenie_reklamy' then
        begin
           if BoldHandlesDM.blhReklPlacesOfMagSection.List.Count>0 then
            if BoldHandlesDM.blhReklPlacesOfMagSection.List.IndexOf(
            RPLBoldTreeView.Selected.Follower.Element)>=0 then
           begin
             BoldHandlesDM.blhReklPlacesOfMagSection.CurrentIndex:=
               BoldHandlesDM.blhReklPlacesOfMagSection.List.IndexOf(
                 RPLBoldTreeView.Selected.Follower.Element);
             if (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal).Razresh_rab_s_rekl_kamp then
               RPLTabSheet.Show;
           end;
        end
      else
        begin
        end;    
    end;
end;

procedure TReleaseStructForm.sSpeedButton8Click(Sender: TObject);
begin
  if BoldHandlesDM.brhCurrClient.Value<>nil then
    begin
      if SetDTForm.ShowModal=mrOk then
          begin
            (BoldHandlesDM.brhCurrClient.Value
              as TKlient).Data_rogdeniya:=
                StartOfTheDay(SetDTForm.DateTimePicker1.Date)+
                  SetDTForm.DateTimePicker2.Time;
          end;
    end;
end;

procedure TReleaseStructForm.sSpeedButton5Click(Sender: TObject);
begin
  if BoldHandlesDM.brhCurrClient.Value<>nil then
    begin
      if SetDTForm.ShowModal=mrOk then
          begin
            (BoldHandlesDM.brhCurrClient.Value
              as TKlient).Data_rogdeniya:=
                StartOfTheDay(SetDTForm.DateTimePicker1.Date)+
                  SetDTForm.DateTimePicker2.Time;
          end;
    end;
end;

procedure TReleaseStructForm.sBoldComboBox1Click(Sender: TObject);
begin
  MagazinesTabSheet.Show;
end;

procedure TReleaseStructForm.sBoldComboBox2Click(Sender: TObject);
begin
  RelOfMagTabSheet.Show;
end;

procedure TReleaseStructForm.sLabel2DblClick(Sender: TObject);
begin
  MagazinesTabSheet.Show;
end;

procedure TReleaseStructForm.BoldGrid18Columns11LookupChange(DestElement,
  NewValue: TBoldElement);
begin
  (DestElement as TRazmeshenie_reklamy).imeet_tip_reklamy:=
    (NewValue as TTip_reklamy);
end;

procedure TReleaseStructForm.BoldGrid37Columns6LookupChange(DestElement,
  NewValue: TBoldElement);
begin
  (DestElement as TSchyot).imeet_pozic_opl_reklamy:=
    (NewValue as TKlient);
end;

procedure TReleaseStructForm.BoldGrid39Columns4LookupChange(DestElement,
  NewValue: TBoldElement);
begin
  (DestElement as TPozic_schta).yavl_schetom_na_opl_reklamy:=
     (NewValue as TRazmeshenie_reklamy);
end;

procedure TReleaseStructForm.sSpeedButton12Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    begin
      (BoldHandlesDM.behSettElm.Value as TNastroiki).Cvet_neoplachenyh:=
        IntToStr(ColorDialog1.Color);
      BoldOthHandleCompDM.basrUnsaledColor.Changed; 
    end;
end;

procedure TReleaseStructForm.BoldGrid24Columns7LookupChange(DestElement,
  NewValue: TBoldElement);
begin
 if (DestElement as TOplata).Bez_nal then
  begin
   if (DestElement as TOplata).yavl_oplatoi_za=nil then
    (DestElement as TOplata).otnositsya_k_kampanii:=
       (NewValue as TRazmeshenie_reklamy)
   else
     ShowMessage('Ошибка, оплата является наличной оплатой за кампанию');    
  end
 else
   begin
     if (DestElement as TOplata).oplata_po_schyotu=nil then
      begin
       (DestElement as TOplata).yavl_oplatoi_za:=
         (NewValue as TRazmeshenie_reklamy);
       (DestElement as TOplata).otnositsya_k_kampanii:=
         (NewValue as TRazmeshenie_reklamy);
      end
   else
     ShowMessage('Ошибка, оплата является безналичной оплатой за счёт');

   end;
end;

procedure TReleaseStructForm.MainPlanDBGridCellClick(Column: TColumn);
begin
  BoldHandlesDM.brhCurrClient.Value:=nil;
   if BoldModelDM.MainPlanADOQuery.RecordCount>0 then
  if BoldModelDM.GetClientByID(BoldModelDM.
    MainPlanADOQuery.FindField('yavl_reklamoi_dlya').AsInteger)<>nil then
       if (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal).Razreshitj_smotr_ceny then
        begin
         BoldHandlesDM.brhCurrClient.Value:=
           BoldModelDM.GetClientByID(BoldModelDM.
             MainPlanADOQuery.FindField('yavl_reklamoi_dlya').AsInteger);
         if (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal).Razreshitj_smotr_ceny then
           ClientSaleInfoTabSheet.Show;
        end
  else
    begin
      BoldHandlesDM.brhCurrClient.Value:=nil;
      if (BoldHandlesDM.blhCurrUser.CurrentElement as TPersonal).Razreshitj_smotr_ceny then
           ClientSaleInfoTabSheet.Show;
    end;

end;

procedure TReleaseStructForm.ToolButton24Click(Sender: TObject);
var  CL: TKlient;
begin
  CL:=TKlient.Create(nil,True);
  BoldHandlesDM.brhCurrClient.Value:=
          CL;
  if (BoldHandlesDM.brhCurrClient.Value AS TKlient).Yavl_yur_licom then
    CompanyInfoTabSheet.Show
  else
    IndividInfoTabSheet.Show;
end;

end.
