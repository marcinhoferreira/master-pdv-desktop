unit MasterPDV.View.Terminais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, UMVCInterfaces, UTerminalController, cxGraphics,
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
  dxmdaset, cxDropDownEdit, cxCalendar, cxDBEdit, cxDBBotoes, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, Vcl.StdCtrls, cxButtons, cxGroupBox,
  cxCheckBox, cxDBLabel, cxSpinEdit, cxCurrencyEdit, cxButtonEdit, cxImage,
  cxRadioGroup, cxShellBrowserDialog, dxSkinOffice2019Colorful, dxSkinTheBezier,
  dxDateRanges, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TfrmTerminais = class(TfrmPrivilegios, IView)
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    pagTerminais: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    grdTerminais: TcxGrid;
    dbtvwTerminais: TcxGridDBTableView;
    grdTerminaisLevel1: TcxGridLevel;
    gboxPesquisa: TcxGroupBox;
    lblPesquisar: TcxLabel;
    tabDetalhes: TcxTabSheet;
    lblIdTerminal: TcxLabel;
    lblDescricao: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    dsTerminais: TDataSource;
    dsEstabelecimentos_LookUp: TDataSource;
    dbtvwTerminaisid_terminal: TcxGridDBColumn;
    dbtvwTerminaisid_local: TcxGridDBColumn;
    dbtvwTerminaisdescricao: TcxGridDBColumn;
    dbtvwTerminaisnumero: TcxGridDBColumn;
    dbtvwTerminaisfiscal: TcxGridDBColumn;
    dbtvwTerminaisid_token: TcxGridDBColumn;
    dbtvwTerminaisetiqueta_prefixo: TcxGridDBColumn;
    dbtvwTerminaisetiqueta_codigo_inicio: TcxGridDBColumn;
    dbtvwTerminaisetiqueta_codigo_tamanho: TcxGridDBColumn;
    dbtvwTerminaisid_balanca_acoplada: TcxGridDBColumn;
    dbtvwTerminaisbalanca_acoplada_porta_serial: TcxGridDBColumn;
    dbtvwTerminaisbalanca_acoplada_tempo_limite: TcxGridDBColumn;
    dbtvwTerminaisdanfe_logomarca_arquivo: TcxGridDBColumn;
    dbtvwTerminaisdanfe_logomarca_expandir: TcxGridDBColumn;
    dbtvwTerminaissalvar_resposta_envio: TcxGridDBColumn;
    dbtvwTerminaissalvar_resposta_envio_caminho: TcxGridDBColumn;
    dbtvwTerminaisws_ambiente: TcxGridDBColumn;
    dbtvwTerminaisws_visualizar_mensagens: TcxGridDBColumn;
    dbtvwTerminaiscertificado_caminho: TcxGridDBColumn;
    dbtvwTerminaiscertificado_senha: TcxGridDBColumn;
    dbtvwTerminaiscertificado_serie: TcxGridDBColumn;
    dbtvwTerminaisproxy_host: TcxGridDBColumn;
    dbtvwTerminaisproxy_porta: TcxGridDBColumn;
    dbtvwTerminaisproxy_usuario: TcxGridDBColumn;
    dbtvwTerminaisproxy_senha: TcxGridDBColumn;
    dbtvwTerminaisemail_host: TcxGridDBColumn;
    dbtvwTerminaisemail_porta: TcxGridDBColumn;
    dbtvwTerminaisemail_usuario: TcxGridDBColumn;
    dbtvwTerminaisemail_senha: TcxGridDBColumn;
    dbtvwTerminaisemail_assunto: TcxGridDBColumn;
    dbtvwTerminaisemail_ssl: TcxGridDBColumn;
    dbtvwTerminaisemail_mensagem: TcxGridDBColumn;
    dbtvwTerminaissequencia_documento: TcxGridDBColumn;
    dblblIdTerminal: TcxDBLabel;
    lblEstabelecimento: TcxLabel;
    dblkpcmbEstabelecimento: TcxDBLookupComboBox;
    lblNumero: TcxLabel;
    dbspnedtNumero: TcxDBSpinEdit;
    dsTokens_LookUp: TDataSource;
    dsBalancas_LookUp: TDataSource;
    pagConfiguracoes: TcxPageControl;
    tabConfiguracoesDFe: TcxTabSheet;
    tabConfiguracoesWSCertificado: TcxTabSheet;
    gboxDANFeLogomarcaArquivo: TcxGroupBox;
    gboxCerfiticadoDigital: TcxGroupBox;
    lblTokenCSC: TcxLabel;
    dblkpcmbTokenCSC: TcxDBLookupComboBox;
    tabConfiguracoesDispositivos: TcxTabSheet;
    lblCertificadoCaminho: TcxLabel;
    dbbtnedtCertificadoCaminho: TcxDBButtonEdit;
    dbtxtedtCertificadoSenha: TcxDBTextEdit;
    lblCertificadoSenha: TcxLabel;
    lblCertificadoSerie: TcxLabel;
    dbbtnedtCertificadoSerie: TcxDBButtonEdit;
    imgDANFeLogomarcaArquivo: TcxImage;
    dbchkSalvarRespostaEnvio: TcxDBCheckBox;
    dbbtnedtSalvarRespostaEnvioCaminho: TcxDBButtonEdit;
    dbradgrpWebserviceAmbiente: TcxDBRadioGroup;
    dbchkWebserviceVisualizarMensagens: TcxDBCheckBox;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    tabConfiguracoesGeral: TcxTabSheet;
    lblContaCaixa: TcxLabel;
    dblkpcmbContaCaixa: TcxDBLookupComboBox;
    gboxNFe: TcxGroupBox;
    lblSequenciaNFe: TcxLabel;
    dbspnedtSequenciaNFe: TcxDBSpinEdit;
    lblSerieNFe: TcxLabel;
    dbspnedtSerieNFe: TcxDBSpinEdit;
    gboxNFCe: TcxGroupBox;
    lblSequenciaNFCe: TcxLabel;
    dbspnedtSequenciaNFCe: TcxDBSpinEdit;
    lblSerieNFCe: TcxLabel;
    dbspnedtSerieNFCe: TcxDBSpinEdit;
    lblClienteConsumidor: TcxLabel;
    dblkpcmbClienteConsumidor: TcxDBLookupComboBox;
    lblCondicaoPagamento: TcxLabel;
    dblkpcmbCondicaoPagamento: TcxDBLookupComboBox;
    dsCondicoesPagamento_LookUp: TDataSource;
    dsClientes_LookUp: TDataSource;
    dsContas_LookUp: TDataSource;
    dbchkIdentificarRepresentante: TcxDBCheckBox;
    dbchkFiscal: TcxDBCheckBox;
    lblEmissorNFe: TcxLabel;
    lblEmissorNFCe: TcxLabel;
    dbchkDANFeLogomarcaExpandir: TcxDBCheckBox;
    lblTipoDocumentoFiscal: TcxLabel;
    dbcmbTipoDocumentoFiscal: TcxDBComboBox;
    lblEmissorCupom: TcxLabel;
    lblImpressoraPadrao: TcxLabel;
    gboxBalancaAcoplada: TcxGroupBox;
    lblBalancaAcoplada: TcxLabel;
    dblkpcmbBalancaAcoplada: TcxDBLookupComboBox;
    lblBalancaAcopladaPortaSerial: TcxLabel;
    dbcmbBalancaAcopladaPortaSerial: TcxDBComboBox;
    lblBalancaAcopladaTempoLimite: TcxLabel;
    dbcurredtBalancaAcopladaTempoLimite: TcxDBCurrencyEdit;
    dbradgrpVersaoXML: TcxDBRadioGroup;
    dbradgrpVersaoQRCode: TcxDBRadioGroup;
    dbtxtedtEmissorCupom: TcxDBButtonEdit;
    dbtxtedtImpressoraPadrao: TcxDBButtonEdit;
    dbtxtedtEmissorNFe: TcxDBButtonEdit;
    dbtxtedtEmissorNFCe: TcxDBButtonEdit;
    lkpcmbEstabelecimento: TcxLookupComboBox;
    btnPesquisar: TcxDBBotaoPesquisar;
    dsLocais_LookUp: TDataSource;
    lblLocal: TcxLabel;
    dblkpcmbLocal: TcxDBLookupComboBox;
    dlgImpressoras: TPrintDialog;
    dbchkAutenticarDocumento: TcxDBCheckBox;
    lblDispositivoAutenticador: TcxLabel;
    dbbtnedtDispositivoAutenticador: TcxDBButtonEdit;
    lblDispositivoAutenticadorModelo: TcxLabel;
    dbcmbDispositivoAutenticadorModelo: TcxDBComboBox;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbbtnedtSalvarRespostaEnvioCaminhoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbbtnedtCertificadoCaminhoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbbtnedtCertificadoSeriePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure pagTerminaisChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbtxtedtImpressoraPadraoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtxtedtEmissorCupomPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtxtedtEmissorNFePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbtxtedtEmissorNFCePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    fController: ITerminalController;
    procedure Initialize;
    procedure SetController(const Value: ITerminalController);
  public
    { Public declarations }
    property Controller: ITerminalController read fController write SetController;
  end;

var
  frmTerminais: TfrmTerminais;

implementation

uses
   Printers, Uni,
   VCL.Funcoes, VCL.Impressoras, UTerminalModel,
   UDataModuleLeiaute,
   UDataModuleCadastro,
   UDataModuleComponentesACBr, UMasterPDVDataModulePDV;

{$R *.dfm}

{ TfrmTerminais }

procedure TfrmTerminais.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagTerminais.ActivePage := tabDetalhes;
   pagConfiguracoes.ActivePage := tabConfiguracoesGeral;
end;

procedure TfrmTerminais.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Descartar Modificações no Terminal?') then
      begin
         Controller.Cancelar;
         pagTerminais.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmTerminais.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma Exclusão do Terminal?') then
      Controller.Deletar;
end;

procedure TfrmTerminais.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Gravar Modificações no Terminal?') then
      begin
         Controller.Gravar;
         pagTerminais.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmTerminais.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagTerminais.ActivePage := tabDetalhes;
   pagConfiguracoes.ActivePage := tabConfiguracoesGeral;
end;

procedure TfrmTerminais.btnPesquisarClick(Sender: TObject);
begin
  inherited;
   if Not Controller.Buscar(lkpcmbEstabelecimento.EditValue) then
      Informacao('Nenhum Registro foi Encontrado!');
end;

procedure TfrmTerminais.dbbtnedtCertificadoCaminhoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         if TcxDBButtonEdit(Sender).EditValue <> '' then
            cxShellBrowserDialog1.Root.CustomPath := TcxDBButtonEdit(Sender).EditValue
         Else
            cxShellBrowserDialog1.Root.CustomPath := ExtractFilePath(Application.ExeName);
         if cxShellBrowserDialog1.Execute then
            TcxDBButtonEdit(Sender).EditValue := cxShellBrowserDialog1.Path;
      end;
end;

procedure TfrmTerminais.dbbtnedtCertificadoSeriePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         TcxDBButtonEdit(Sender).EditValue := dmComponentesACBr.ACBrNFe1.SSL.SelecionarCertificado;
         TcxDBButtonEdit(Sender).PostEditValue;
      end;
end;

procedure TfrmTerminais.dbbtnedtSalvarRespostaEnvioCaminhoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         if TcxDBButtonEdit(Sender).EditValue <> '' then
            cxShellBrowserDialog1.Root.CustomPath := TcxDBButtonEdit(Sender).EditValue
         Else
            cxShellBrowserDialog1.Root.CustomPath := ExtractFilePath(Application.ExeName);
         if cxShellBrowserDialog1.Execute then
            begin
               TcxDBButtonEdit(Sender).EditValue := cxShellBrowserDialog1.Path;
               TcxDBButtonEdit(Sender).PostEditValue;
            end;
      end;
end;

procedure TfrmTerminais.dbtxtedtEmissorCupomPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         if dlgImpressoras.Execute(Application.Handle) then
            begin
               //Informacao('Você selecionou a impressora:'#13 + Printer.Printers[Printer.PrinterIndex]);
               TcxDBButtonEdit(Sender).EditValue := Printer.Printers[Printer.PrinterIndex];
               TcxDBButtonEdit(Sender).PostEditValue;
            end;
      end;
end;

procedure TfrmTerminais.dbtxtedtEmissorNFCePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         if dlgImpressoras.Execute(Application.Handle) then
            begin
               //Informacao('Você selecionou a impressora:'#13 + Printer.Printers[Printer.PrinterIndex]);
               TcxDBButtonEdit(Sender).EditValue := Printer.Printers[Printer.PrinterIndex];
               TcxDBButtonEdit(Sender).PostEditValue;
            end;
      end;
end;

procedure TfrmTerminais.dbtxtedtEmissorNFePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         if dlgImpressoras.Execute(Application.Handle) then
            begin
               //Informacao('Você selecionou a impressora:'#13 + Printer.Printers[Printer.PrinterIndex]);
               TcxDBButtonEdit(Sender).EditValue := Printer.Printers[Printer.PrinterIndex];
               TcxDBButtonEdit(Sender).PostEditValue;
            end;
      end;
end;

procedure TfrmTerminais.dbtxtedtImpressoraPadraoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         if dlgImpressoras.Execute(Application.Handle) then
            begin
               //Informacao('Você selecionou a impressora:'#13 + Printer.Printers[Printer.PrinterIndex]);
               TcxDBButtonEdit(Sender).EditValue := Printer.Printers[Printer.PrinterIndex];
               TcxDBButtonEdit(Sender).PostEditValue;
            end;
      end;
end;

procedure TfrmTerminais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   dsTokens_LookUp.DataSet.Close;
   dsContas_LookUp.DataSet.Close;
   dsClientes_LookUp.DataSet.Close;
   dsCondicoesPagamento_LookUp.DataSet.Close;
   dsBalancas_LookUp.DataSet.Close;
   dsTokens_LookUp.DataSet.Close;
   TUniQuery(dsTokens_LookUp.DataSet).ParamByName('id_estabelecimento').Clear;
   dsLocais_LookUp.DataSet.Close;
   dsEstabelecimentos_LookUp.DataSet.Close;
   TUniQuery(dsEstabelecimentos_LookUp.DataSet).ParamByName('id_estabelecimento').Clear;
end;

procedure TfrmTerminais.FormCreate(Sender: TObject);
begin
  inherited;
   pagTerminais.HideTabs := True;
   pagTerminais.ActivePage := tabVisualiza;
   pagConfiguracoes.ActivePage := tabConfiguracoesGeral;
end;

procedure TfrmTerminais.FormShow(Sender: TObject);
//var
//   AListaImpressoras: TStrings;
begin
  inherited;
//   AListaImpressoras := TStringList.Create;
//   Try
//      AListaImpressoras.AddStrings(GetAvaliablePrinters);
//      dbcmbEmissorNFe.Properties.Items.Clear;
//      dbcmbEmissorNFe.Properties.Items.AddStrings(AListaImpressoras);
//   Finally
//      AListaImpressoras.Destroy;
//   End;
   TUniQuery(dsEstabelecimentos_LookUp.DataSet).ParamByName('id_estabelecimento').Value := dmPDV.qryTerminais.FieldByName('id_estabelecimento').AsInteger;
   dsEstabelecimentos_LookUp.DataSet.Open;
   if dsEstabelecimentos_LookUp.DataSet.RecordCount = 1 then
      lkpcmbEstabelecimento.EditValue := dsEstabelecimentos_LookUp.DataSet.FieldByName(lkpcmbEstabelecimento.Properties.KeyFieldNames).Value;

   dsLocais_LookUp.DataSet.Open;

   TUniQuery(dsTokens_LookUp.DataSet).ParamByName('id_estabelecimento').Value := dmPDV.qryTerminais.FieldByName('id_estabelecimento').AsInteger;
   dsTokens_LookUp.DataSet.Open;

   dsBalancas_LookUp.DataSet.Open;
   dsContas_LookUp.DataSet.Open;
   dsClientes_LookUp.DataSet.Open;
   dsCondicoesPagamento_LookUp.DataSet.Open;
   dsTokens_LookUp.DataSet.Open;
   Initialize;
end;

procedure TfrmTerminais.Initialize;
var
   AModel: TTerminalModel;
begin
   Controller := TTerminalController.Create;
   AModel:= TTerminalModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmTerminais.pagTerminaisChange(Sender: TObject);
begin
  inherited;
   if TcxPageControl(Sender).ActivePage = tabDetalhes then
      pagConfiguracoes.ActivePage := tabConfiguracoesGeral;
end;

procedure TfrmTerminais.SetController(const Value: ITerminalController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
