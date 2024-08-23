unit MasterPDV.View.Consumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, Data.DB, AdvSmoothPanel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, cxGridCustomTableView, cxGridCardView,
  cxGridDBCardView, cxGridCustomView, cxGridCustomLayoutView, cxClasses,
  cxGridLevel, cxGrid, System.ImageList, Vcl.ImgList, cxImageList,
  cxImageComboBox, cxContainer, cxGroupBox;

type
  TfrmConsumo = class(TfrmPrivilegios)
    dsMesas: TDataSource;
    panTitulo: TAdvSmoothPanel;
    panAreaDeTrabalho: TAdvSmoothPanel;
    pagAreaDeTrabalho: TcxPageControl;
    tabMesas: TcxTabSheet;
    tabConsumo: TcxTabSheet;
    imglstStatus: TcxImageList;
    grdMesasLevel1: TcxGridLevel;
    grdMesas: TcxGrid;
    dbcrdvwMesas: TcxGridDBCardView;
    dbcrdvwMesasid_mesa: TcxGridDBCardViewRow;
    dbcrdvwMesasdescricao: TcxGridDBCardViewRow;
    dbcrdvwMesasnumero: TcxGridDBCardViewRow;
    dbcrdvwMesasid_status: TcxGridDBCardViewRow;
    gboxDetalhesMesa: TcxGroupBox;
    pagConsumo: TcxPageControl;
    tabCategorias: TcxTabSheet;
    tabSubCategorias: TcxTabSheet;
    tabProdutos: TcxTabSheet;
    dsCategorias: TDataSource;
    dsSubCategorias: TDataSource;
    dsProdutos: TDataSource;
    grdCategoriasLevel1: TcxGridLevel;
    grdCategorias: TcxGrid;
    dbcrdvwCategorias: TcxGridDBCardView;
    dbcrdvwCategoriasid_categoria: TcxGridDBCardViewRow;
    dbcrdvwCategoriasdescricao: TcxGridDBCardViewRow;
    dbcrdvwCategoriasimagem: TcxGridDBCardViewRow;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pagAreaDeTrabalhoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsumo: TfrmConsumo;

implementation

uses
   UMasterPDVDataModulePDV, UDataModuleLeiaute;

{$R *.dfm}



procedure TfrmConsumo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   if dsMesas.DataSet.Active then
      dsMesas.DataSet.Close;
end;

procedure TfrmConsumo.FormCreate(Sender: TObject);
begin
  inherited;
   pagAreaDeTrabalho.HideTabs := True;
   pagAreaDeTrabalho.ActivePage := tabMesas;
   pagConsumo.HideTabs := True;
   pagConsumo.ActivePage := tabCategorias;
end;

procedure TfrmConsumo.FormShow(Sender: TObject);
begin
  inherited;
   if dsMesas.DataSet.Active then
      dsMesas.DataSet.Close;

   dsMesas.DataSet.Open;

   WindowState := TWindowState.wsMaximized;
end;

procedure TfrmConsumo.pagAreaDeTrabalhoChange(Sender: TObject);
begin
  inherited;
   if TcxPageControl(Sender).ActivePage = tabConsumo then
      pagConsumo.ActivePage := tabCategorias;
end;

end.
