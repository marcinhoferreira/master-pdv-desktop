unit MasterPDV.View.Dispositivos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios,
  UMVCInterfaces,
  UDispositivoController,
  Data.DB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxDBBotoes, Vcl.StdCtrls, cxButtons, cxGroupBox,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, cxDBLabel, cxLabel,
  cxMaskEdit, cxDropDownEdit, dxSkinOffice2019Colorful, dxSkinTheBezier,
  dxDateRanges;

type
  TfrmDispositivos = class(TfrmPrivilegios, IView)
    dsDispositivos: TDataSource;
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    pagDispositivos: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    tabDetalhes: TcxTabSheet;
    grdDispositivos: TcxGrid;
    dbtvwDispositivos: TcxGridDBTableView;
    grdDispositivosLevel1: TcxGridLevel;
    dbtvwDispositivosid_dispositivo: TcxGridDBColumn;
    dbtvwDispositivosdescricao: TcxGridDBColumn;
    dbtvwDispositivosid_modelo: TcxGridDBColumn;
    dbtvwDispositivosvelocidade: TcxGridDBColumn;
    dbtvwDispositivostaxa_transmissao: TcxGridDBColumn;
    dbtvwDispositivosid_paridade: TcxGridDBColumn;
    dbtvwDispositivosid_bit_parada: TcxGridDBColumn;
    dbtvwDispositivoshandshake: TcxGridDBColumn;
    lblIdDispositivo: TcxLabel;
    dblblIdDispositivo: TcxDBLabel;
    lblDescricao: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    lblModelo: TcxLabel;
    lblVelocidade: TcxLabel;
    dbcmbVelocidade: TcxDBComboBox;
    lblTaxaTransmissao: TcxLabel;
    cmbTaxaTransmissao: TcxDBComboBox;
    lblParidade: TcxLabel;
    dbcmbParidade: TcxDBComboBox;
    lblBitParada: TcxLabel;
    dbcmbBitParada: TcxDBComboBox;
    lblHandshake: TcxLabel;
    dbcmbHandshake: TcxDBComboBox;
    lblTipoDispositivo: TcxLabel;
    dbcmbTipoDispositivo: TcxDBComboBox;
    dbtxtedtModelo: TcxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    fController: IDispositivoController;
    procedure Initialize;
    procedure SetController(const Value: IDispositivoController);
  public
    { Public declarations }
    property Controller: IDispositivoController read fController write SetController;
  end;

var
  frmDispositivos: TfrmDispositivos;

implementation

uses
   VCL.Funcoes, UDispositivoModel,
   UDataModuleLeiaute,
   UDataModuleCadastro;

{$R *.dfm}

{ TfrmDispositivos }

procedure TfrmDispositivos.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagDispositivos.ActivePage := tabDetalhes;
end;

procedure TfrmDispositivos.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Descartar Modificações no Dispositivo?') then
      begin
         Controller.Cancelar;
         pagDispositivos.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmDispositivos.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma Exclusão do Dispositivo?') then
      Controller.Deletar;
end;

procedure TfrmDispositivos.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Gravar Modificações no Dispositivo?') then
      begin
         Controller.Gravar;
         pagDispositivos.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmDispositivos.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagDispositivos.ActivePage := tabDetalhes;
end;

procedure TfrmDispositivos.FormCreate(Sender: TObject);
begin
   inherited;
   pagDispositivos.HideTabs := True;
   pagDispositivos.ActivePage := tabVisualiza;
end;

procedure TfrmDispositivos.FormShow(Sender: TObject);
begin
   inherited;
   Initialize;
end;

procedure TfrmDispositivos.Initialize;
var
   AModel: TDispositivoModel;
begin
   Controller := TDispositivoController.Create;
   AModel:= TDispositivoModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmDispositivos.SetController(const Value: IDispositivoController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
