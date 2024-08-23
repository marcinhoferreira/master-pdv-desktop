unit MasterPDV.View.MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni,
  LealSoftwares.Model.Configuracao.Interfaces,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxStatusBar,
  cxContainer, cxEdit, cxGroupBox, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxGDIPlusClasses, cxImage, cxClasses, dxSkinsForm, cxLabel, Data.DB,
  cxDBBotoes, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxTextEdit, cxDBEdit,
  AdvSmoothPanel, cxDBLabel, System.Actions, Vcl.ActnList, Vcl.ExtCtrls,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  AdvSmoothLabel;

type
  TfrmMenuPrincipal = class(TForm)
    dsMovimentos: TDataSource;
    dsTerminais: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos_Operacoes: TDataSource;
    ActionList1: TActionList;
    actPreVenda: TAction;
    actRecebimento: TAction;
    actAberturaMovimento: TAction;
    actVenda: TAction;
    actSangria: TAction;
    actSuprimento: TAction;
    actConsultaMovimentos: TAction;
    actOperacoesFechamentoMovimento: TAction;
    actOperacoesEncerramentoMovimento: TAction;
    imgFundo: TImage;
    actConsultaVendas: TAction;
    dsEstabelecimentos: TDataSource;
    dsLocais: TDataSource;
    actConsultaDocumentosFiscais: TAction;
    panTitulo: TAdvSmoothPanel;
    imgLogoSistema: TcxImage;
    Timer1: TTimer;
    panInfoClimaTempo: TAdvSmoothPanel;
    lblHorario: TAdvSmoothLabel;
    dblblDataMovimento: TcxDBLabel;
    panMensagem: TAdvSmoothPanel;
    lblIdentificacaoTerminal: TAdvSmoothLabel;
    lblMensagemOrientacao: TAdvSmoothLabel;
    gboxBarraDeStatus: TcxGroupBox;
    gboxInfoUsuario: TcxGroupBox;
    imgAvatar: TcxImage;
    gboxUsuario: TcxGroupBox;
    lblTituloUsuario: TcxLabel;
    lblOperador: TcxLabel;
    actConsumo: TAction;
    panAreaDeTrabalho: TAdvSmoothPanel;
    gboxFerramentas: TcxGroupBox;
    pagMenuPrincipal: TcxPageControl;
    tabPaginaInicial: TcxTabSheet;
    btnVenda: TcxButton;
    btnPreVenda: TcxButton;
    btnRecebimento: TcxButton;
    btnConsulta: TcxButton;
    btnSangria: TcxButton;
    btnSuprimento: TcxButton;
    btnRelatorio: TcxButton;
    btnConsultaMovimentos: TcxButton;
    btnConsumo: TcxButton;
    btnVendas: TcxButton;
    btnPagamento: TcxButton;
    btnFechamento: TcxButton;
    btnEncerramento: TcxButton;
    btnSair: TcxButton;
    btnAbertura: TcxButton;
    btnConfiguracao: TcxButton;
    btnCadastro: TcxButton;
    btnConsultaDocumentosFiscais: TcxButton;
    btnTEFAdm: TcxButton;
    cxButton5: TcxButton;
    tabCadastro: TcxTabSheet;
    btnTerminais: TcxButton;
    btnOperadores: TcxButton;
    btnProdutos: TcxButton;
    btnDispositivos: TcxButton;
    btnCategorias: TcxButton;
    btnMarcas: TcxButton;
    btnTokensCSC: TcxButton;
    cxButton8: TcxButton;
    btnUnidadesMedida: TcxButton;
    btnUsuarios: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    btnCadastroProximo: TcxButton;
    btnCadastroVoltar: TcxButton;
    btnEstabelecimentos: TcxButton;
    tabConfiguracao: TcxTabSheet;
    btnConfiguracaoVoltar: TcxButton;
    tabRelatorio: TcxTabSheet;
    btnRelatorioVoltar: TcxButton;
    tabFiscal: TcxTabSheet;
    btnFiscalVoltar: TcxButton;
    tabTEF: TcxTabSheet;
    btnTEFVoltar: TcxButton;
    actTEFAdm: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCadastroVoltarClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnEstabelecimentosClick(Sender: TObject);
    procedure btnDispositivosClick(Sender: TObject);
    procedure btnTokensCSCClick(Sender: TObject);
    procedure btnTerminaisClick(Sender: TObject);
    procedure btnOperadoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnMarcasClick(Sender: TObject);
    procedure btnCategoriasClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnUnidadesMedidaClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure actPreVendaExecute(Sender: TObject);
    procedure actAberturaMovimentoExecute(Sender: TObject);
    procedure actVendaExecute(Sender: TObject);
    procedure actSangriaExecute(Sender: TObject);
    procedure actSuprimentoExecute(Sender: TObject);
    procedure actConsultaMovimentosExecute(Sender: TObject);
    procedure dsMovimentosDataChange(Sender: TObject; Field: TField);
    procedure actOperacoesFechamentoMovimentoExecute(Sender: TObject);
    procedure actOperacoesEncerramentoMovimentoExecute(Sender: TObject);
    procedure actRecebimentoExecute(Sender: TObject);
    procedure actConsultaVendasExecute(Sender: TObject);
    procedure actConsultaDocumentosFiscaisExecute(Sender: TObject);
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure actConsumoExecute(Sender: TObject);
    procedure actTEFAdmExecute(Sender: TObject);
  private
    { Private declarations }
    fConfiguracao: IModelConfiguracao;
    fAcessoAberturaMovimento: Boolean;
    fAcessoVendaAutoServico: Boolean;
    fAcessoConsumo: Boolean;
    fAcessoVendaPreVenda: Boolean;
    fAcessoRecebimento: Boolean;
    fAcessoSangria: Boolean;
    fAcessoSuprimento: Boolean;
    procedure LoadPermissions;
    procedure UpdateWallPaper;
    procedure UpdateStatusBar;
    procedure ExibeBarraDeStatus(const AExibe: Boolean);
    function GetAcessoAberturaMovimento: Boolean;
    procedure SetAcessoAberturaMovimento(const Value: Boolean);
    function GetAcessoVendaAutoServico: Boolean;
    procedure SetAcessoVendaAutoServico(const Value: Boolean);
    function GetAcessoVendaPreVenda: Boolean;
    procedure SetAcessoVendaPreVenda(const Value: Boolean);
    function GetAcessoRecebimento: Boolean;
    procedure SetAcessoRecebimento(const Value: Boolean);
    function GetAcessoSangria: Boolean;
    function GetAcessoSuprimento: Boolean;
    procedure SetAcessoSangria(const Value: Boolean);
    procedure SetAcessoSuprimento(const Value: Boolean);
    function GetAcessoConsumo: Boolean;
    procedure SetAcessoConsumo(const Value: Boolean);
  public
    { Public declarations }
    property AcessoAberturaMovimento: Boolean Read GetAcessoAberturaMovimento Write SetAcessoAberturaMovimento;
    property AcessoVendaAutoServico: Boolean Read GetAcessoVendaAutoServico Write SetAcessoVendaAutoServico;
    property AcessoConsumo: Boolean Read GetAcessoConsumo Write SetAcessoConsumo;
    property AcessoVendaPreVenda: Boolean Read GetAcessoVendaPreVenda Write SetAcessoVendaPreVenda;
    property AcessoRecebimento: Boolean Read GetAcessoRecebimento Write SetAcessoRecebimento;
    property AcessoSangria: Boolean Read GetAcessoSangria Write SetAcessoSangria;
    property AcessoSuprimento: Boolean Read GetAcessoSuprimento Write SetAcessoSuprimento;
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

uses
   System.IOUtils, StrUtils,
   ACBrTEFDClass,
   VCL.Funcoes,
   MasterPDV.Model.Configuracao,
   UConexaoController, USessaoController,
   UDataModuleLeiaute,
   UDataModuleConexao, UDataModuleLicenca, UDataModuleSessao, UDataModuleAcesso,
   UMasterPDVDataModulePDV,
   UDialogoTrocaSenha, MasterPDV.View.IdentificacaoTerminal,
   MasterPDV.View.AberturaMovimento,
   MasterPDV.View.PreVenda, MasterPDV.View.Recebimento,
   MasterPDV.View.Venda,
   MasterPDV.View.ConsultaProduto,
   MasterPDV.View.Estabelecimentos, MasterPDV.View.Dispositivos,
   MasterPDV.View.TokensCSC, MasterPDV.View.Terminais,
   MasterPDV.View.Operadores, MasterPDV.View.Categorias, MasterPDV.View.Marcas,
   MasterPDV.View.Produtos,
   MasterPDV.View.Sangria, MasterPDV.View.Suprimento,
   UMasterPDVDataModuleRelatorio, MasterPDV.View.RelatorioFechamentoMovimento,
   MasterPDV.View.ConsultaVendas, MasterPDV.View.ConsultaDocumentosFiscais,
   MasterPDV.View.ConsultaMovimentos, MasterPDV.View.UnidadesMedida,
   MasterPDV.View.Usuarios, MasterPDV.View.Consumo, MasterPDV.Model.TEF;

{$R *.dfm}

{ TfrmMenuPrincipal }

procedure TfrmMenuPrincipal.actAberturaMovimentoExecute(Sender: TObject);
var
   AReabertura: Boolean;
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   dlgAberturaMovimento := TdlgAberturaMovimento.Create(Self);
   Try
      With dsMovimentos Do
         begin
            If Not DataSet.IsEmpty Then
               begin
                  if Not DataSet.FieldByName('data_fechamento').IsNull then
                     begin
                        DataSet.Edit;
                        if Not DataSet.FieldByName('data_fechamento').IsNull then
                           DataSet.FieldByName('data_fechamento').Clear;
                        DataSet.Post;
                     end
                  Else
                     begin
                        dlgAberturaMovimento.SetDataMovimento(DataSet.FieldByName('data_movimento').AsDateTime);
                        If dlgAberturaMovimento.Executa Then
                           begin
                              DataSet.Close;
                              TUniQuery(DataSet).ParamByName('id_terminal').Value := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
                              TUniQuery(DataSet).ParamByName('data_movimento').Value := dlgAberturaMovimento.GetDataMovimento;
                              TUniQuery(DataSet).ParamByName('id_operador').Value := dsOperadores.DataSet.FieldByName('id_operador').AsInteger;
                              DataSet.Open;
                              if dlgAberturaMovimento.Reabrir then
                                 begin
                                    DataSet.Edit;
                                    if Not DataSet.FieldByName('data_fechamento').IsNull then
                                       DataSet.FieldByName('data_fechamento').Clear;
                                    if Not DataSet.FieldByName('data_encerramento').IsNull then
                                       DataSet.FieldByName('data_encerramento').Clear;
                                    DataSet.Post;
                                 end
                              Else
                                 begin
                                    DataSet.Append;
                                    DataSet.FieldByName('id_terminal').AsInteger := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
                                    DataSet.FieldByName('data_movimento').AsDateTime := dlgAberturaMovimento.GetDataMovimento;
                                    DataSet.FieldByName('id_operador').AsInteger := dsOperadores.DataSet.FieldByName('id_operador').AsInteger;
                                    DataSet.FieldByName('data_abertura').AsDateTime := dmConexao.GetCurrentDateTime;
                                    DataSet.Post;
                                    if dlgAberturaMovimento.curedtValorSuprimento.Value > 0 then
                                       begin
                                          dsMovimentos_Operacoes.DataSet.Append;
                                          dsMovimentos_Operacoes.DataSet.FieldByName('sequencia').AsInteger := dmConexao.Sequencia('terminais_movimentos_operacoes', 'sequencia', Format('WHERE id_terminal = %d AND data_movimento = %s AND id_operador = %d', [DataSet.FieldByName('id_terminal').AsInteger, QuotedStr(FormatDateTime('yyyy-mm-dd', DataSet.FieldByName('data_movimento').AsDateTime)), DataSet.FieldByName('id_operador').AsInteger]));
                                          dsMovimentos_Operacoes.DataSet.FieldByName('id_operacao').AsInteger := 1;
                                          dsMovimentos_Operacoes.DataSet.FieldByName('historico').AsString := 'SUPRIMENTO INICIAL';
                                          dsMovimentos_Operacoes.DataSet.FieldByName('natureza').AsString := 'E';
                                          dsMovimentos_Operacoes.DataSet.FieldByName('valor').AsFloat := dlgAberturaMovimento.curedtValorSuprimento.Value;
                                          dsMovimentos_Operacoes.DataSet.Post;
                                          dmRelatorio.ImprimirComprovanteOperacao(dsMovimentos_Operacoes.DataSet.FieldByName('id_terminal').AsInteger,
                                                                                  dsMovimentos_Operacoes.DataSet.FieldByName('data_movimento').AsDateTime,
                                                                                  dsMovimentos_Operacoes.DataSet.FieldByName('id_operador').AsInteger,
                                                                                  dsMovimentos_Operacoes.DataSet.FieldByName('sequencia').AsInteger,
                                                                                  dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                                                                  False);
                                       end;
                                 end;
                           end;
                     end;
               end
            Else
               begin
                  dlgAberturaMovimento.SetDataMovimento(dmConexao.GetCurrentDate);
                  If dlgAberturaMovimento.Executa Then
                     begin
                        DataSet.Close;
                        TUniQuery(DataSet).ParamByName('id_terminal').Value := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
                        TUniQuery(DataSet).ParamByName('data_movimento').Value := dlgAberturaMovimento.GetDataMovimento;
                        TUniQuery(DataSet).ParamByName('id_operador').Value := dsOperadores.DataSet.FieldByName('id_operador').AsInteger;
                        DataSet.Open;
                        if dlgAberturaMovimento.Reabrir then
                           begin
                              DataSet.Edit;
                              if Not DataSet.FieldByName('data_fechamento').IsNull then
                                 DataSet.FieldByName('data_fechamento').Clear;
                              if Not DataSet.FieldByName('data_encerramento').IsNull then
                                 DataSet.FieldByName('data_encerramento').Clear;
                              DataSet.Post;
                           end
                        Else
                           begin
                              DataSet.Append;
                              DataSet.FieldByName('id_terminal').AsInteger := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
                              DataSet.FieldByName('data_movimento').AsDateTime := dlgAberturaMovimento.GetDataMovimento;
                              DataSet.FieldByName('id_operador').AsInteger := dsOperadores.DataSet.FieldByName('id_operador').AsInteger;
                              DataSet.FieldByName('data_abertura').AsDateTime := dmConexao.GetCurrentDateTime;
                              DataSet.Post;
                              if dlgAberturaMovimento.curedtValorSuprimento.Value > 0 then
                                 begin
                                    dsMovimentos_Operacoes.DataSet.Append;
                                    dsMovimentos_Operacoes.DataSet.FieldByName('sequencia').AsInteger := dmConexao.Sequencia('terminais_movimentos_operacoes', 'sequencia', Format('WHERE id_terminal = %d AND data_movimento = %s AND id_operador %d', [DataSet.FieldByName('id_terminal').AsInteger, QuotedStr(FormatDateTime('yyyy-mm-dd', DataSet.FieldByName('data_movimento').AsDateTime)), DataSet.FieldByName('id_operador').AsInteger]));
                                    dsMovimentos_Operacoes.DataSet.FieldByName('id_operacao').AsInteger := 1;
                                    dsMovimentos_Operacoes.DataSet.FieldByName('historico').AsString := 'SUPRIMENTO INICIAL';
                                    dsMovimentos_Operacoes.DataSet.FieldByName('natureza').AsString := 'E';
                                    dsMovimentos_Operacoes.DataSet.FieldByName('valor').AsFloat := dlgAberturaMovimento.curedtValorSuprimento.Value;
                                    dsMovimentos_Operacoes.DataSet.Post;
                                    dmRelatorio.ImprimirComprovanteOperacao(dsMovimentos_Operacoes.DataSet.FieldByName('id_terminal').AsInteger,
                                                                            dsMovimentos_Operacoes.DataSet.FieldByName('data_movimento').AsDateTime,
                                                                            dsMovimentos_Operacoes.DataSet.FieldByName('id_operador').AsInteger,
                                                                            dsMovimentos_Operacoes.DataSet.FieldByName('sequencia').AsInteger,
                                                                            dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                                                            False);
                                 end;
                           end;
                     end;
               end;

         end;
   Finally
      dlgAberturaMovimento.Free;
   End;
end;

procedure TfrmMenuPrincipal.actConsultaDocumentosFiscaisExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   dlgConsultaDocumentosFiscais := TdlgConsultaDocumentosFiscais.Create(Self, TAction(Sender).Tag);
   Try
      dlgConsultaDocumentosFiscais.Executa;
   Finally
      dlgConsultaDocumentosFiscais.Free;
   End;
end;

procedure TfrmMenuPrincipal.actConsultaMovimentosExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   dlgConsultaMovimentos := TdlgConsultaMovimentos.Create(Self, TAction(Sender).Tag);
   Try
      dlgConsultaMovimentos.Executa;
   Finally
      dlgConsultaMovimentos.Free;
   End;
end;

procedure TfrmMenuPrincipal.actConsultaVendasExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   dlgConsultaVendas := TdlgConsultaVendas.Create(Self, TAction(Sender).Tag);
   Try
      dlgConsultaVendas.Executa;
   Finally
      FreeAndNil(dlgConsultaVendas);
   End;
end;

procedure TfrmMenuPrincipal.actConsumoExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   frmConsumo := TfrmConsumo.Create(Self, TAction(Sender).Tag);
   Try
      frmConsumo.ShowModal;
   Finally
      FreeAndNil(frmConsumo);
   End;
end;

procedure TfrmMenuPrincipal.actOperacoesEncerramentoMovimentoExecute(
  Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   dlgRelatorioFechamentoMovimento := TdlgRelatorioFechamentoMovimento.Create(Self, TAction(Sender).Tag);
   Try
      dlgRelatorioFechamentoMovimento.edtDataMovimento.Enabled := False;
      dlgRelatorioFechamentoMovimento.ShowModal;
      if Confirmacao('ATENÇÃO! Após o encerramento do movimento não será possível registrar movimentos na data encerrada.'#13'Confirma encerramento do terminal?') then
         With dsMovimentos Do
            begin
               DataSet.Edit;
               DataSet.FieldByName('data_encerramento').AsDateTime := dmConexao.GetCurrentDateTime;
               DataSet.Post;
               LoadPermissions;
            end;
   Finally
      dlgRelatorioFechamentoMovimento.Free;
   End;
end;

procedure TfrmMenuPrincipal.actOperacoesFechamentoMovimentoExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   With dsMovimentos Do
      if Confirmacao('Confirma fechamento do movimento?') then
         begin
            DataSet.Edit;
            DataSet.FieldByName('data_fechamento').AsDateTime := dmConexao.GetCurrentDateTime;
            DataSet.Post;
            LoadPermissions;
         end;
end;

procedure TfrmMenuPrincipal.actPreVendaExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   frmPreVenda := TfrmPreVenda.Create(Self, TAction(Sender).Tag);
   Try
      frmPreVenda.ShowModal;
   Finally
      frmPreVenda.Free;
   End;
end;

procedure TfrmMenuPrincipal.actRecebimentoExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   frmRecebimento := TfrmRecebimento.Create(Self, TAction(Sender).Tag);
   Try
      frmRecebimento.ShowModal;
   Finally
      frmRecebimento.Free;
   End;
end;

procedure TfrmMenuPrincipal.actSangriaExecute(Sender: TObject);
var
   vSaldoDisponivel: Double;
begin
   with dsTerminais do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   with dsMovimentos do
      begin
         vSaldoDisponivel := dmPDV.SaldoDisponivelTerminal(DataSet.FieldByName('id_terminal').AsInteger,
                                                           DataSet.FieldByName('data_movimento').AsDateTime,
                                                           DataSet.FieldByName('id_operador').AsInteger);
         if vSaldoDisponivel <= 0 then
            begin
               Informacao('Saldo insuficiente para efetuar sangria!'#13'Operação cancelada.');
               Exit;
            end;
      end;

   dlgSangria := TdlgSangria.Create(Self, TAction(Sender).Tag);
   try
      dlgSangria.Limite := vSaldoDisponivel;
      if dlgSangria.Executa then
         dmRelatorio.ImprimirComprovanteOperacao(dsMovimentos_Operacoes.DataSet.FieldByName('id_terminal').AsInteger,
                                                 dsMovimentos_Operacoes.DataSet.FieldByName('data_movimento').AsDateTime,
                                                 dsMovimentos_Operacoes.DataSet.FieldByName('id_operador').AsInteger,
                                                 dsMovimentos_Operacoes.DataSet.FieldByName('sequencia').AsInteger,
                                                 dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                                 False);
   finally
      dlgSangria.Free;
   end;
end;

procedure TfrmMenuPrincipal.actSuprimentoExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   dlgSuprimento := TdlgSuprimento.Create(Self, TAction(Sender).Tag);
   Try
      If dlgSuprimento.Executa Then
         dmRelatorio.ImprimirComprovanteOperacao(dsMovimentos_Operacoes.DataSet.FieldByName('id_terminal').AsInteger,
                                                 dsMovimentos_Operacoes.DataSet.FieldByName('data_movimento').AsDateTime,
                                                 dsMovimentos_Operacoes.DataSet.FieldByName('id_operador').AsInteger,
                                                 dsMovimentos_Operacoes.DataSet.FieldByName('sequencia').AsInteger,
                                                 dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                                 False);
   Finally
      dlgSuprimento.Free;
   End;
end;

procedure TfrmMenuPrincipal.actTEFAdmExecute(Sender: TObject);
begin
   with ModelTEF do
      begin
         ConfigurarTEF;
         PortaEmissorCupom := dsTerminais.DataSet.FieldByName('emissor_cupom').AsString;
         ConfigurarPosPrinter;
         ACBrTEFD1.Inicializar(TACBrTEFDTipo(dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger));
         ACBrTEFD1.ADM(TACBrTEFDTipo(dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger));
      end;
end;

procedure TfrmMenuPrincipal.actVendaExecute(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   frmVenda := TfrmVenda.Create(Self, TAction(Sender).Tag);
   Try
      frmVenda.ShowModal;
   Finally
      frmVenda.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnCadastroVoltarClick(Sender: TObject);
begin
   pagMenuPrincipal.ActivePage := tabPaginaInicial;
end;

procedure TfrmMenuPrincipal.btnCategoriasClick(Sender: TObject);
begin
   frmCategorias := TfrmCategorias.Create(Self, TcxButton(Sender).Tag);
   Try
      frmCategorias.ShowModal;
   Finally
      frmCategorias.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnConfiguracaoClick(Sender: TObject);
begin
   pagMenuPrincipal.ActivePage := tabConfiguracao;
end;

procedure TfrmMenuPrincipal.btnConsultaClick(Sender: TObject);
begin
   dlgConsultaProduto := TdlgConsultaProduto.Create(Self, TcxButton(Sender).Tag);
   Try
      dlgConsultaProduto.ShowModal;
   Finally
      dlgConsultaProduto.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnDispositivosClick(Sender: TObject);
begin
   frmDispositivos := TfrmDispositivos.Create(Self, TcxButton(Sender).Tag);
   Try
      frmDispositivos.ShowModal;
   Finally
      frmDispositivos.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnEstabelecimentosClick(Sender: TObject);
begin
   frmEstabelecimentos := TfrmEstabelecimentos.Create(Self, TcxButton(Sender).Tag);
   Try
      frmEstabelecimentos.ShowModal;
   Finally
      frmEstabelecimentos.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnMarcasClick(Sender: TObject);
begin
   frmMarcas := TfrmMarcas.Create(Self, TcxButton(Sender).Tag);
   Try
      frmMarcas.ShowModal;
   Finally
      frmMarcas.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnOperadoresClick(Sender: TObject);
begin
   frmOperadores := TfrmOperadores.Create(Self, TcxButton(Sender).Tag);
   Try
      frmOperadores.ShowModal;
   Finally
      frmOperadores.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnProdutosClick(Sender: TObject);
begin
   frmProdutos := TfrmProdutos.Create(Self, TcxButton(Sender).Tag);
   Try
      frmProdutos.ShowModal;
   Finally
      frmProdutos.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnRelatorioClick(Sender: TObject);
begin
   With dsTerminais Do
      if (State = dsInactive) Or DataSet.IsEmpty then
         begin
            Informacao('O usuário não possui um terminal atribuído!'#13'Operação cancelada.');
            Exit;
         end;

   dlgRelatorioFechamentoMovimento := TdlgRelatorioFechamentoMovimento.Create(Self, TcxButton(Sender).Tag);
   Try
      dlgRelatorioFechamentoMovimento.ShowModal;
   Finally
      dlgRelatorioFechamentoMovimento.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMenuPrincipal.btnTerminaisClick(Sender: TObject);
begin
   frmTerminais := TfrmTerminais.Create(Self, TcxButton(Sender).Tag);
   Try
      frmTerminais.ShowModal;
   Finally
      frmTerminais.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnTokensCSCClick(Sender: TObject);
begin
   frmTokensCSC := TfrmTokensCSC.Create(Self, TcxButton(Sender).Tag);
   Try
      frmTokensCSC.ShowModal;
   Finally
      frmTokensCSC.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnUnidadesMedidaClick(Sender: TObject);
begin
   frmUnidadesMedida := TfrmUnidadesMedida.Create(Self, TcxButton(Sender).Tag);
   Try
      frmUnidadesMedida.ShowModal;
   Finally
      frmUnidadesMedida.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnUsuariosClick(Sender: TObject);
begin
   frmUsuarios := TfrmUsuarios.Create(Self, TcxButton(Sender).Tag);
   Try
      frmUsuarios.ShowModal;
   Finally
      frmUsuarios.Free;
   End;
end;

procedure TfrmMenuPrincipal.btnCadastroClick(Sender: TObject);
begin
   pagMenuPrincipal.ActivePage := tabCadastro;
end;

procedure TfrmMenuPrincipal.dsMovimentosDataChange(Sender: TObject; Field: TField);
var
   AMovimentoAberto: Boolean;
begin
   with TDataSource(Sender) do
      begin
         AMovimentoAberto := Not DataSet.IsEmpty And
                             DataSet.FieldByName('data_fechamento').IsNull And
                             DataSet.FieldByName('data_encerramento').IsNull;
         actAberturaMovimento.Enabled := AcessoAberturaMovimento And Not AMovimentoAberto;
         //gboxDataMovimento.Visible := (State <> dsInactive) And Not DataSet.IsEmpty;
         actVenda.Enabled := AcessoVendaAutoServico And AMovimentoAberto;
         actPreVenda.Enabled := AcessoVendaPreVenda And AMovimentoAberto;
         actRecebimento.Enabled := AcessoRecebimento And AMovimentoAberto;
         actSangria.Enabled := AcessoSangria And AMovimentoAberto;
         actSuprimento.Enabled := AcessoSuprimento And AMovimentoAberto;
         actOperacoesFechamentoMovimento.Enabled := AMovimentoAberto;
         actOperacoesEncerramentoMovimento.Enabled := AMovimentoAberto;

         if not DataSet.FieldByName('data_encerramento').IsNull then
            begin
               lblIdentificacaoTerminal.Caption.ColorStart := clRed;
               lblIdentificacaoTerminal.Caption.ColorEnd := clRed;
               lblIdentificacaoTerminal.Caption.Text := dsTerminais.DataSet.FieldByName('descricao').AsString +
                                                        ' ' +
                                                        'Encerrado';
               lblMensagemOrientacao.Caption.Text := 'Favor dirigir-se a outro guichê!';
            end
         else if DataSet.IsEmpty Or Not DataSet.FieldByName('data_fechamento').IsNull then
                 begin
                    lblIdentificacaoTerminal.Caption.ColorStart := clYellow;
                    lblIdentificacaoTerminal.Caption.ColorEnd := clYellow;
                    lblIdentificacaoTerminal.Caption.Text := dsTerminais.DataSet.FieldByName('descricao').AsString +
                                                             ' ' +
                                                             'Fechado';
                    if not DataSet.FieldByName('data_fechamento').IsNull then
                       lblIdentificacaoTerminal.Caption.Text := lblIdentificacaoTerminal.Caption.Text + ' em ' + FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', DataSet.FieldByName('data_fechamento').AsDateTime);
                    lblMensagemOrientacao.Caption.Text := 'Aguarde a re-abertura ou dirija-se a outro guichê!';
                 end
         else
            begin
               lblIdentificacaoTerminal.Caption.ColorStart := TColor($00FFE09F);
               lblIdentificacaoTerminal.Caption.ColorEnd := TColor($00754F00);
               lblIdentificacaoTerminal.Caption.Text := dsTerminais.DataSet.FieldByName('descricao').AsString +
                                                        ' ' +
                                                        'Aberto';
               lblMensagemOrientacao.Caption.Text := 'Amigo cliente, seja bem vindo!';
            end;

      end;
end;

procedure TfrmMenuPrincipal.ExibeBarraDeStatus(const AExibe: Boolean);
begin
   gboxBarraDeStatus.Visible := AExibe;
end;

procedure TfrmMenuPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dsMovimentos.DataSet.Close;
   TUniQuery(dsMovimentos.DataSet).ParamByName('id_terminal').Clear;
   TUniQuery(dsMovimentos.DataSet).ParamByName('id_operador').Clear;
   TUniQuery(dsMovimentos.DataSet).ParamByName('data_movimento').Clear;
end;

procedure TfrmMenuPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   CanClose := Confirmacao('Confirma saída desta aplicação?');
end;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
var
   AConfigFileName: TFileName;
begin
//   Top := 0;
//   Left := 0;
   pagMenuPrincipal.HideTabs := True;
   pagMenuPrincipal.ActivePage := tabPaginaInicial;
   AConfigFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'data'), ChangeFileExt(ExtractFileName(ParamStr(0)), '.s3db'));
   fConfiguracao := TModelConfiguracao.New(AConfigFileName);
end;

procedure TfrmMenuPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if CharInSet(Key, ['a', 'A']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         actAberturaMovimentoExecute(btnAbertura);
   if CharInSet(Key, ['v', 'V']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         actVendaExecute(btnVenda);
   if CharInSet(Key, ['p', 'P']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         actPreVendaExecute(btnPreVenda);
   if CharInSet(Key, ['e', 'E']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         actRecebimentoExecute(actRecebimento);
   if CharInSet(Key, ['c', 'C']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         btnConsultaClick(btnConsulta);
   if CharInSet(Key, ['r', 'R']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         btnRelatorioClick(btnRelatorio);
   if CharInSet(Key, ['s', 'S']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         actSangriaExecute(btnSangria);
   if CharInSet(Key, ['u', 'U']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         actSuprimentoExecute(btnSuprimento);
   if CharInSet(Key, ['d', 'D']) then
      if pagMenuPrincipal.ActivePage = tabPaginaInicial then
         btnCadastroClick(btnCadastro);

   if Key = #27 then
      ExibeBarraDeStatus(not gboxBarraDeStatus.Visible);
end;

procedure TfrmMenuPrincipal.FormResize(Sender: TObject);
begin
   UpdateWallPaper;
end;

procedure TfrmMenuPrincipal.FormShow(Sender: TObject);
var
   AConexao: TConexaoController;
   ASessao: TSessaoController;
begin
//   Align := alNone;
//   Align := alClient;

   AConexao := TConexaoController.Create;
   Try
      AConexao.Initialize;
      if not AConexao.Conecta then
         Application.Terminate;
   Finally
      AConexao.Destroy;
   End;

   ASessao := TSessaoController.Create;
   Try
      ASessao.Initialize;
      If Not ASessao.Autentica Then
         begin
            Informacao('Usuário não cadastrado');
            Application.Terminate;
         end;
   Finally
      ASessao.Destroy;
   End;

   dlgTrocaSenha := TdlgTrocaSenha.Create(Self);
   Try
      dlgTrocaSenha.VerificaSenhaExpirada;
   Finally
      dlgTrocaSenha.Free;
   End;

//   if InternetIsConnected then
//      begin
//         if pingIP(dmLicenca.conConexao.Server) then
//            dmAcesso.SincronizaTabelas;
//      end;

   ChecaAtualizacoes;

   If dmPDV.GetOperador(GetCurrentUserId) Then
      If dmPDV.GetTerminaisDoOperador(dsOperadores.DataSet.FieldByName('id_operador').AsInteger) Then
         begin
            dlgIdentificacaoTerminal := TdlgIdentificacaoTerminal.Create(Self);
            Try
               if not dlgIdentificacaoTerminal.Executa then
                  Application.Terminate;
            Finally
               dlgIdentificacaoTerminal.Free;
            End;
         end;

   if not dsTerminais.DataSet.IsEmpty then
      begin
         dsMovimentos.DataSet.Close;
         TUniQuery(dsMovimentos.DataSet).ParamByName('id_terminal').Value := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
         TUniQuery(dsMovimentos.DataSet).ParamByName('id_operador').Value := dsOperadores.DataSet.FieldByName('id_operador').AsInteger;
         TUniQuery(dsMovimentos.DataSet).ParamByName('data_movimento').Clear;
         if dmPDV.BuscaUltimoMovimento(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger,
                                       dsOperadores.DataSet.FieldByName('id_operador').AsInteger) then
            TUniQuery(dsMovimentos.DataSet).ParamByName('data_movimento').Value := dmPDV.qryUltimoMovimento.FieldByName('data_movimento').AsDateTime;
         dsMovimentos.DataSet.Open;
      end;

   LoadPermissions;
   UpdateStatusBar;
   WindowState := wsMaximized;
end;

function TfrmMenuPrincipal.GetAcessoAberturaMovimento: Boolean;
begin
   Result := fAcessoAberturaMovimento;
end;

function TfrmMenuPrincipal.GetAcessoConsumo: Boolean;
begin
   Result := fAcessoConsumo;
end;

function TfrmMenuPrincipal.GetAcessoRecebimento: Boolean;
begin
   Result := fAcessoRecebimento;
end;

function TfrmMenuPrincipal.GetAcessoSangria: Boolean;
begin
   Result := fAcessoSangria;
end;

function TfrmMenuPrincipal.GetAcessoSuprimento: Boolean;
begin
   Result := fAcessoSuprimento;
end;

function TfrmMenuPrincipal.GetAcessoVendaAutoServico: Boolean;
begin
   Result := fAcessoVendaAutoServico;
end;

function TfrmMenuPrincipal.GetAcessoVendaPreVenda: Boolean;
begin
   Result := fAcessoVendaPreVenda;
end;

procedure TfrmMenuPrincipal.LoadPermissions;
var
   I: Integer;
   AMovimentoAberto: Boolean;
begin
   With dsMovimentos Do
      AMovimentoAberto := Not DataSet.IsEmpty And
                          DataSet.FieldByName('data_fechamento').IsNull And
                          DataSet.FieldByName('data_encerramento').IsNull;

   AcessoAberturaMovimento := (actAberturaMovimento.Tag <> 0) And dmSessao.Acesso(actAberturaMovimento.Tag);
   AcessoVendaAutoServico := (actVenda.Tag <> 0) And dmSessao.Acesso(actVenda.Tag);
   AcessoConsumo := (actConsumo.Tag <> 0) And dmSessao.Acesso(actConsumo.Tag);
   AcessoVendaPreVenda := (actPrevenda.Tag <> 0) And dmSessao.Acesso(actPrevenda.Tag);
   AcessoRecebimento := (actRecebimento.Tag <> 0) And dmSessao.Acesso(actRecebimento.Tag);
   AcessoSangria := (actSangria.Tag <> 0) And dmSessao.Acesso(actSangria.Tag);
   AcessoSuprimento := (actSuprimento.Tag <> 0) And dmSessao.Acesso(actSuprimento.Tag);

   actAberturaMovimento.Enabled := AcessoAberturaMovimento And Not AMovimentoAberto;
   //gboxDataMovimento.Visible := (dsMovimentos.State <> dsInactive) And Not dsMovimentos.DataSet.IsEmpty;
   actVenda.Enabled := AcessoVendaAutoServico And AMovimentoAberto;
   actConsumo.Enabled := AcessoConsumo And AMovimentoAberto;
   actPreVenda.Enabled := AcessoVendaPreVenda And AMovimentoAberto;
   actRecebimento.Enabled := AcessoRecebimento And AMovimentoAberto;
   actSangria.Enabled := AcessoSangria And AMovimentoAberto;
   actSuprimento.Enabled := AcessoSuprimento And AMovimentoAberto;
   actOperacoesFechamentoMovimento.Enabled := AMovimentoAberto;
   actOperacoesEncerramentoMovimento.Enabled := AMovimentoAberto;
   actTEFAdm.Enabled := dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger > 0;

   Exit;

   for I := 0 to ComponentCount - 1 do
      begin
         if Components[i].Tag <> 0 then
            begin
               if Components[i] is TAction then
                  begin
                     If TAction(Components[i]).Tag = 501 Then
                        TAction(Components[i]).Enabled := Not AMovimentoAberto And
                                                          dmSessao.Acesso(Components[i].Tag);
                     If TAction(Components[i]).Tag = 502 Then
                        TAction(Components[i]).Enabled := AMovimentoAberto And
                                                          dmSessao.Acesso(Components[i].Tag);
                  end
               Else
                  if Components[i] is TcxButton then
                     begin
                        if (*(Components[i].Tag = 502) Or*)
                           (Components[i].Tag = 503) Or
                           (Components[i].Tag = 504) Or
                           (Components[i].Tag = 505) Or
                           (Components[i].Tag = 506) then
                           TcxButton(Components[i]).Enabled := AMovimentoAberto And
                                                               dmSessao.Acesso(Components[i].Tag)
                        Else
                           TcxButton(Components[i]).Enabled := dmSessao.Acesso(Components[i].Tag);
                     end;
            end;
      end;
end;

procedure TfrmMenuPrincipal.SetAcessoAberturaMovimento(const Value: Boolean);
begin
   if Value <> fAcessoAberturaMovimento then
      fAcessoAberturaMovimento := Value;
end;

procedure TfrmMenuPrincipal.SetAcessoConsumo(const Value: Boolean);
begin
   if Value <> fAcessoConsumo then
      fAcessoConsumo := Value;
end;

procedure TfrmMenuPrincipal.SetAcessoRecebimento(const Value: Boolean);
begin
   if Value <> fAcessoRecebimento then
      fAcessoRecebimento := Value;
end;

procedure TfrmMenuPrincipal.SetAcessoSangria(const Value: Boolean);
begin
   if Value <> fAcessoSangria then
      fAcessoSangria := Value;
end;

procedure TfrmMenuPrincipal.SetAcessoSuprimento(const Value: Boolean);
begin
   if Value <> fAcessoSuprimento then
      fAcessoSuprimento := Value;
end;

procedure TfrmMenuPrincipal.SetAcessoVendaAutoServico(const Value: Boolean);
begin
   if Value <> fAcessoVendaAutoServico then
      fAcessoVendaAutoServico := Value;
end;

procedure TfrmMenuPrincipal.SetAcessoVendaPreVenda(const Value: Boolean);
begin
   if Value <> fAcessoVendaPreVenda then
      fAcessoVendaPreVenda := Value;
end;

procedure TfrmMenuPrincipal.Timer1Timer(Sender: TObject);
begin
   lblHorario.Caption.Text := FormatDateTime('hh:nn', Now());
end;

procedure TfrmMenuPrincipal.UpdateStatusBar;
begin
   lblOperador.Caption := dmSessao.qryUsuarios.FieldByName('login').AsString;
end;

procedure TfrmMenuPrincipal.UpdateWallPaper;
   function TileImage(const FileName: TFileName; Sender: TObject): Boolean;
   var
     x, y: Integer;
     Bmp:  TBitmap;
   begin
     if FileExists(FileName) then
     begin
       bmp := TBitmap.Create;
       try
         bmp.LoadFromFile(FileName);
         with (Sender as TImage) do
         begin
           for x := 0 to (Width div bmp.Width) do
             for y := 0 to (Height div bmp.Height) do
               Canvas.Draw(x * bmp.Width, y * bmp.Height, bmp);
         end;
       finally
         bmp.Free;
       end;
       Result := True;
     end
     else
       Result := False;
   end;
var
   i: Integer;
   AFileName: TFileName;
begin
   Randomize;
   i := Random(999);
   AFileName := GetExecDir +
                '\Pictures\' +
                'IMG_' + FormatFloat('000', i) + '.bmp';
   if FileExists(AFileName) then
      TileImage(AFileName, imgFundo);
end;

initialization
   ReportMemoryLeaksOnShutdown := True;

end.
