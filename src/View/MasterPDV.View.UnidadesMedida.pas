unit MasterPDV.View.UnidadesMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, UMVCInterfaces, UUnidadeMedida,
  UUnidadeMedidaController,
  cxGraphics,
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
  TfrmUnidadesMedida = class(TfrmPrivilegios, IView)
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    pagUnidadesMedida: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    grdUnidadesMedida: TcxGrid;
    dbtabvwUnidadesMedida: TcxGridDBTableView;
    dbtabvwUnidadesMedidaid_unidade: TcxGridDBColumn;
    dbtabvwUnidadesMedidadescricao: TcxGridDBColumn;
    grdUnidadesMedidaLevel1: TcxGridLevel;
    tabDetalhes: TcxTabSheet;
    lblIdUnidade: TcxLabel;
    dblblIdUnidade: TcxDBLabel;
    lblDescricao: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    dsUnidadesMedida: TDataSource;
    dbtabvwUnidadesMedidasigla: TcxGridDBColumn;
    lblSigla: TcxLabel;
    dbtxtedtSigla: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fController: IUnidadeMedidaController;
    procedure Initialize;
    procedure SetController(const Value: IUnidadeMedidaController);
  public
    { Public declarations }
    property Controller: IUnidadeMedidaController read fController write SetController;
  end;

var
  frmUnidadesMedida: TfrmUnidadesMedida;

implementation

uses
   VCL.Funcoes, UUnidadeMedidaModel,
   UDataModuleLeiaute,
   UDataModuleProduto;

{$R *.dfm}

{ TfrmUnidadesMedida }

procedure TfrmUnidadesMedida.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagUnidadesMedida.ActivePage := tabDetalhes;
end;

procedure TfrmUnidadesMedida.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Descartar modificações na unidade de medida?') then
      begin
         Controller.Cancelar;
         pagUnidadesMedida.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmUnidadesMedida.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma exclusão da unidade de medida?') then
      Controller.Deletar;
end;

procedure TfrmUnidadesMedida.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Gravar modificações na unidade de medida?') then
      begin
         Controller.Gravar;
         pagUnidadesMedida.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmUnidadesMedida.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagUnidadesMedida.ActivePage := tabDetalhes;
end;

procedure TfrmUnidadesMedida.FormCreate(Sender: TObject);
begin
  inherited;
   pagUnidadesMedida.HideTabs := True;
   pagUnidadesMedida.ActivePage := tabVisualiza;
end;

procedure TfrmUnidadesMedida.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
end;

procedure TfrmUnidadesMedida.Initialize;
var
   AModel: TUnidadeMedidaModel;
begin
   Controller := TUnidadeMedidaController.Create;
   AModel:= TUnidadeMedidaModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmUnidadesMedida.SetController(const Value: IUnidadeMedidaController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
