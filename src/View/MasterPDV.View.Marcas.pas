unit MasterPDV.View.Marcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, UMVCInterfaces, UMarca, UMarcaController, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, cxDBLabel, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxDBBotoes, Vcl.StdCtrls,
  cxButtons, cxGroupBox, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfrmMarcas = class(TfrmPrivilegios, IView)
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    pagMarcas: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    grdMarcas: TcxGrid;
    dbtvwMarcas: TcxGridDBTableView;
    dbtvwMarcasid_marca: TcxGridDBColumn;
    dbtvwMarcasdescricao: TcxGridDBColumn;
    grdMarcasLevel1: TcxGridLevel;
    tabDetalhes: TcxTabSheet;
    lblIdMarca: TcxLabel;
    dblblIdMarca: TcxDBLabel;
    lblDescricao: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    dsMarcas: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fController: IMarcaController;
    procedure Initialize;
    procedure SetController(const Value: IMarcaController);
  public
    { Public declarations }
    property Controller: IMarcaController read fController write SetController;
  end;

var
  frmMarcas: TfrmMarcas;

implementation

uses
   VCL.Funcoes, UMarcaModel,
   UDataModuleLeiaute,
   UDataModuleProduto;

{$R *.dfm}

{ TfrmMarcas }

procedure TfrmMarcas.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagMarcas.ActivePage := tabDetalhes;
end;

procedure TfrmMarcas.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Descartar Modificações na Marca?') then
      begin
         Controller.Cancelar;
         pagMarcas.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmMarcas.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma Exclusão da Marca?') then
      Controller.Deletar;
end;

procedure TfrmMarcas.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Gravar Modificações na Marca?') then
      begin
         Controller.Gravar;
         pagMarcas.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmMarcas.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagMarcas.ActivePage := tabDetalhes;
end;

procedure TfrmMarcas.FormCreate(Sender: TObject);
begin
  inherited;
   pagMarcas.HideTabs := True;
   pagMarcas.ActivePage := tabVisualiza;
end;

procedure TfrmMarcas.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
end;

procedure TfrmMarcas.Initialize;
var
   AModel: TMarcaModel;
begin
   Controller := TMarcaController.Create;
   AModel:= TMarcaModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmMarcas.SetController(const Value: IMarcaController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
