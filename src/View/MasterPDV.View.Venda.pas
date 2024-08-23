unit MasterPDV.View.Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DBAccess, Uni, UFormularioPrivilegios, JvComponentBase, JvEnterTab,
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
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxStatusBar, Data.DB,
  cxContainer, cxEdit, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxDBLabel, dxBarBuiltInMenu, cxPC,
  cxTextEdit, cxCurrencyEdit, cxDBEdit, cxImage, System.Actions, Vcl.ActnList,
  Vcl.Grids, ACBrBase, ACBrBAL, cxMemo, cxRichEdit, dxSkinOffice2019Colorful,
  dxSkinTheBezier, dxDateRanges, dxGDIPlusClasses, AdvSmoothPanel, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TfrmVenda = class(TfrmPrivilegios)
    dsTerminais: TDataSource;
    dsMovimentos: TDataSource;
    dsOperadores: TDataSource;
    gboxInformacoes: TcxGroupBox;
    gboxAreadeTrabalho: TcxGroupBox;
    dsVendas: TDataSource;
    dsVendas_Produtos: TDataSource;
    dsEstabelecimentos: TDataSource;
    dsVendas_Totais: TDataSource;
    actlstFuncoes: TActionList;
    actLocalizarProduto: TAction;
    actConsultarProduto: TAction;
    actCancelaItemVendido: TAction;
    actSubtotaliza: TAction;
    actLerPeso: TAction;
    actDesconto: TAction;
    actCanelarVenda: TAction;
    actSangria: TAction;
    actSuprimento: TAction;
    dsMovimentos_Operacoes: TDataSource;
    actCancelarUltimoItemVendido: TAction;
    panCodigo: TAdvSmoothPanel;
    panDescricao: TAdvSmoothPanel;
    txtedtDescricao: TcxTextEdit;
    txtedtLeitor: TcxTextEdit;
    panVendas_Produtos: TAdvSmoothPanel;
    grdVendas_Produtos: TcxGrid;
    dbtvwVendas_Produtos: TcxGridDBTableView;
    dbtvwVendas_Produtosid_venda: TcxGridDBColumn;
    dbtvwVendas_Produtositem: TcxGridDBColumn;
    dbtvwVendas_Produtosid_produto: TcxGridDBColumn;
    dbtvwVendas_Produtoscodigo_barras: TcxGridDBColumn;
    dbtvwVendas_Produtosresumida: TcxGridDBColumn;
    dbtvwVendas_Produtosid_unidade: TcxGridDBColumn;
    dbtvwVendas_Produtossigla_unidade: TcxGridDBColumn;
    dbtvwVendas_Produtosquantidade: TcxGridDBColumn;
    dbtvwVendas_Produtospeso_bruto: TcxGridDBColumn;
    dbtvwVendas_Produtospreco_unitario: TcxGridDBColumn;
    dbtvwVendas_Produtospreco_venda: TcxGridDBColumn;
    dbtvwVendas_Produtospercentual_acrescimo: TcxGridDBColumn;
    dbtvwVendas_Produtosvalor_acrescimo: TcxGridDBColumn;
    dbtvwVendas_Produtospercentual_desconto: TcxGridDBColumn;
    dbtvwVendas_Produtosvalor_desconto: TcxGridDBColumn;
    dbtvwVendas_Produtospreco_total: TcxGridDBColumn;
    grdVendas_ProdutosLevel1: TcxGridLevel;
    gboxVenda_Totais: TAdvSmoothPanel;
    dbcurredtValorLiquido: TcxDBCurrencyEdit;
    gboxBarraDeStatus: TcxGroupBox;
    rchedtOperacoes: TcxRichEdit;
    gboxInfoUsuario: TcxGroupBox;
    imgAvatar: TcxImage;
    gboxUsuario: TcxGroupBox;
    lblTituloUsuario: TcxLabel;
    lblOperador: TcxLabel;
    panQuantidade: TAdvSmoothPanel;
    curredtQuantidade: TcxCurrencyEdit;
    panPrecoUnitario: TAdvSmoothPanel;
    curredtPrecoUnitario: TcxCurrencyEdit;
    panValorDesconto: TAdvSmoothPanel;
    curredtValorDesconto: TcxCurrencyEdit;
    gboxPrecoTotal: TAdvSmoothPanel;
    curredtPrecoTotal: TcxCurrencyEdit;
    panMensagem: TAdvSmoothPanel;
    txtedtMensagem: TcxTextEdit;
    actIdentificarCliente: TAction;
    dsClientes_LookUp: TDataSource;
    panCliente: TAdvSmoothPanel;
    dbtxtedtCliente: TcxDBTextEdit;
    actTroca: TAction;
    panVendaTotalLiquido: TAdvSmoothPanel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    dbcurredtValorTroca: TcxDBCurrencyEdit;
    actTEFAdm: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtedtLeitorKeyPress(Sender: TObject; var Key: Char);
    procedure txtedtLeitorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actConsultarProdutoExecute(Sender: TObject);
    procedure actLocalizarProdutoExecute(Sender: TObject);
    procedure actSubtotalizaExecute(Sender: TObject);
    procedure actLerPesoExecute(Sender: TObject);
    procedure actDescontoExecute(Sender: TObject);
    procedure actCancelaItemVendidoExecute(Sender: TObject);
    procedure actCanelarVendaExecute(Sender: TObject);
    procedure actSangriaExecute(Sender: TObject);
    procedure actSuprimentoExecute(Sender: TObject);
    procedure actCancelarUltimoItemVendidoExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actIdentificarClienteExecute(Sender: TObject);
    procedure actTrocaExecute(Sender: TObject);
    procedure actTEFAdmExecute(Sender: TObject);
  private
    { Private declarations }
    fUltimoCodigo: String;
    fUltimaQuantidade: Real;
    procedure ExibeBarraDeStatus(const AExibe: Boolean);
    procedure LimpaCampos;
    procedure ConsultaProduto;
    procedure LocalizarProduto;
    procedure ConfiguraComponentesACBr;
    procedure CarregaFuncoes;
    procedure UpdateStatusBar;
    procedure CancelarUltimoItemVendido;
    procedure CancelarItemVendido;
    procedure CancelarVenda;
    procedure Acrescimo;
    procedure Desconto;
    procedure LerPeso;
    procedure Sangria;
    procedure Suprimento;
  public
    { Public declarations }
    procedure IniciaVenda;
    procedure RegistraItemVendido; OverLoad;
    procedure RegistraItemVendido(ACodigo: String; AQuantidade: Real); OverLoad;
  end;

var
  frmVenda: TfrmVenda;

implementation

uses
   StrUtils, DateUtils, MaskUtils, System.Math,
   ACBrTEFDClass,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao, UDataModuleSessao,
   UDataModuleComponentesACBr,
   UMasterPDVDataModulePDV,
   MasterPDV.View.Desconto, MasterPDV.View.Acrescimo,
   MasterPDV.View.ConsultaProduto, MasterPDV.View.Localizar,
   MasterPDV.View.VendaRecebimento,
   MasterPDV.View.Autenticacao, MasterPDV.View.Sangria,
   MasterPDV.View.Suprimento, UMasterPDVDataModuleRelatorio,
   MasterPDV.View.IdentificacaoRepresentante,
   MasterPDV.View.CancelamentoItemVendido, MasterPDV.View.IdentificacaoCliente,
  MasterPDV.View.ListaClientes, MasterPDV.View.VendaTroca, MasterPDV.Model.TEF;

{$R *.dfm}

{ TfrmVenda }

procedure TfrmVenda.Acrescimo;
begin
   dlgAcrescimo := TdlgAcrescimo.Create(Self);
   Try
      If dlgAcrescimo.Executa('Acréscimo') Then
         begin
            dsVendas_Produtos.DataSet.Edit;
            dsVendas_Produtos.DataSet.FieldByName('valor_acrescimo').AsFloat := dlgAcrescimo.curredtValorAcrescimo.Value;
            dsVendas_Produtos.DataSet.Post;
         end;
   Finally
      dlgAcrescimo.Free;
   End;
end;

procedure TfrmVenda.actCancelaItemVendidoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      CancelarItemVendido;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actCancelarUltimoItemVendidoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      CancelarUltimoItemVendido;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actCanelarVendaExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      CancelarVenda;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actConsultarProdutoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      ConsultaProduto;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actDescontoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      Desconto;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actIdentificarClienteExecute(Sender: TObject);
begin
  inherited;
   with dsVendas do
      begin
//         dlgIdentificacaoCliente := TdlgIdentificacaoCliente.Create(Self);
//         try
//            if dlgIdentificacaoCliente.Executa then
//               begin
//                  if DataSet.IsEmpty then
//                     IniciaVenda;
//                  DataSet.Edit;
//                  DataSet.FieldByName('id_parceiro').AsInteger := dlgIdentificacaoCliente.GetId;
//                  DataSet.Post;
//               end;
//         finally
//            FreeAndNil(dlgIdentificacaoCliente);
//         end;
         dlgListaClientes := TdlgListaClientes.Create(Self);
         try
            if dlgListaClientes.ShowModal = mrOk then
               begin
                  if DataSet.IsEmpty then
                     IniciaVenda;
                  DataSet.Edit;
                  DataSet.FieldByName('id_parceiro').AsInteger := dlgListaClientes.Id;
                  DataSet.Post;
               end;
         finally
            FreeAndNil(dlgListaClientes);
         end;
      end;
end;

procedure TfrmVenda.actLerPesoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      LerPeso;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actLocalizarProdutoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      LocalizarProduto;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actSangriaExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      Sangria;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actSubtotalizaExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   frmVendaRecebimento := TfrmVendaRecebimento.Create(Self, TAction(Sender).Tag);
   try
      frmVendaRecebimento.ShowModal;
      if dsVendas.DataSet.IsEmpty then
         begin
            txtedtDescricao.EditValue := Null;
            txtedtDescricao.PostEditValue;
            curredtQuantidade.Value := 1;
            curredtQuantidade.PostEditValue;
            txtedtMensagem.Text := 'Caixa Livre!';
            txtedtMensagem.PostEditValue;
         end;
   finally
      frmVendaRecebimento.Free;
      TAction(Sender).Enabled := True;
   end;
end;

procedure TfrmVenda.actSuprimentoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      Suprimento;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVenda.actTEFAdmExecute(Sender: TObject);
begin
  inherited;
   with ModelTEF do
      begin
         ConfigurarTEF;
         PortaEmissorCupom := dsTerminais.DataSet.FieldByName('emissor_cupom').AsString;
         ConfigurarPosPrinter;
         ACBrTEFD1.Inicializar(TACBrTEFDTipo(dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger));
         ACBrTEFD1.ADM(TACBrTEFDTipo(dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger));
      end;
end;

procedure TfrmVenda.actTrocaExecute(Sender: TObject);
begin
  inherited;
   dlgVendaTroca := TdlgVendaTroca.Create(Self);
   try
      if dlgVendaTroca.ShowModal = mrOk then
         with dsVendas do
            begin
               DataSet.Refresh;
            end;
   finally
      FreeAndNil(dlgVendaTroca);
   end;
end;

procedure TfrmVenda.CancelarItemVendido;
begin
   if Not dsVendas_Produtos.DataSet.IsEmpty then
      begin
        if not dmPDV.IsSupervisor Then
           begin
               dglAutenticacao := TdglAutenticacao.Create(Self);
               try
                  if not dglAutenticacao.AutenticaSupervisor then
                     begin
                        Informacao('Falha na autenticação do Supervisor!');
                        Exit;
                     end;
               finally
                  dglAutenticacao.Free;
               end;
           end;

         dlgCancelamentoItemVendido := TdlgCancelamentoItemVendido.Create(Self);
         Try
            If dlgCancelamentoItemVendido.Executa(dsVendas.DataSet.FieldByName('id_venda').AsInteger) And
               dsVendas_Produtos.DataSet.Locate('item', dlgCancelamentoItemVendido.dsVendas_Produtos.DataSet.FieldByName('item').AsInteger, []) And
               Confirmacao('Confirma cancelamento do item?', mbYes) then
               if dsVendas_Produtos.DataSet.RecordCount = 1 then
                  begin
                     dsVendas.DataSet.Edit;
                     // 0-Venda em antamento / 1-Aguardando Aprovação / 3-Aguardando Pagamento / 5-Finalizada / 8-Desistência / 9-Cancelada
                     dsVendas.DataSet.FieldByName('status').AsString := '8';
                     dsVendas.DataSet.Post;
                     dsVendas.DataSet.DisableControls;
                     dsVendas.DataSet.Close;
                     dsVendas.DataSet.Open;
                     dsVendas.DataSet.EnableControls;
                  end
               Else
                  dsVendas_Produtos.DataSet.Delete;
         Finally
            dlgCancelamentoItemVendido.Free;
         End;
      end;
end;

procedure TfrmVenda.CancelarUltimoItemVendido;
begin
   if Not dsVendas_Produtos.DataSet.IsEmpty then
      begin
        if not dmPDV.IsSupervisor Then
           begin
               dglAutenticacao := TdglAutenticacao.Create(Self);
               try
                  If Not dglAutenticacao.AutenticaSupervisor Then
                     begin
                        Informacao('Falha na autenticação do Supervisor!');
                        Exit;
                     end;
               finally
                  dglAutenticacao.Free;
               end;
           end;

         If Confirmacao('Confirma cancelamento do item?', mbYes) then
            dsVendas_Produtos.DataSet.Delete;
      end;
end;

procedure TfrmVenda.CancelarVenda;
begin
  if Not dsVendas.DataSet.Isempty then
     begin
        if not dmPDV.IsSupervisor Then
           begin
               dglAutenticacao := TdglAutenticacao.Create(Self);
               try
                  if not dglAutenticacao.AutenticaSupervisor then
                     begin
                        Informacao('Falha na autenticação do Supervisor!');
                        Exit;
                     end;
               finally
                  dglAutenticacao.Free;
               end;
           end;

         If Confirmacao('Confirma desistência da venda?') then
            begin
               dsVendas.DataSet.Edit;
               // 0-Venda em antamento / 1-Aguardando Aprovação / 3-Aguardando Pagamento / 5-Finalizada / 8-Desistência / 9-Cancelada
               dsVendas.DataSet.FieldByName('status').AsString := '8';
               dsVendas.DataSet.Post;
               dsVendas.DataSet.DisableControls;
               dsVendas.DataSet.Close;
               dsVendas.DataSet.Open;
               dsVendas.DataSet.EnableControls;
               txtedtMensagem.Text := 'Caixa Livre!';
               txtedtMensagem.PostEditValue;
               curredtQuantidade.Value := 1;
               curredtQuantidade.PostEditValue;
            end;
     end;
end;

procedure TfrmVenda.CarregaFuncoes;
begin
//A - Ajuda
//B - Balança
//C - Consulta
//D - Desconto no item
//E - Cancelar último item
//G - Gaveta
//L - Localizar
//N -
//P - Cancelar item
//S - Subtotalizar
//U - Cancelar venda
//X - Quantidade
end;

procedure TfrmVenda.ConfiguraComponentesACBr;
var
   aCaminhoSchemas: String;
begin
   aCaminhoSchemas := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                      'Schemas\NFe');
   dmComponentesACBr.CarregaEmitente(dsEstabelecimentos.DataSet);
   dmComponentesACBr.CarregaCertificado(dsTerminais.DataSet);
   dmComponentesACBr.CarregaWebService(dsTerminais.DataSet);
   dmComponentesACBr.ConfiguraACBrNFe('0',
                                      IntToStr(dsTerminais.DataSet.FieldByName('token_csc_id').AsInteger),
                                      dsTerminais.DataSet.FieldByName('token_csc_numero').AsString,
                                      True,
                                      dsTerminais.DataSet.FieldByName('salvar_resposta_envio').AsString = 'S',
                                      dsTerminais.DataSet.FieldByName('salvar_resposta_envio').AsString = 'S',
                                      IfThen(Trim(dsTerminais.DataSet.FieldByName('salvar_resposta_envio_caminho').AsString) <> '', dsTerminais.DataSet.FieldByName('salvar_resposta_envio_caminho').AsString, IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'DF-e'),
                                      aCaminhoSchemas);

   dmComponentesACBr.ACBrNFeDANFEFR1.Sistema := Application.Title;
   dmComponentesACBr.ACBrNFeDANFEFR1.Usuario := dmConexao.conConexao.UserName;
   dmComponentesACBr.ACBrNFeDANFEFR1.ExibeResumoCanhoto := True;
//   if Trim(dsEstabelecimentos.DataSet.FieldByName('fax').AsString) <> '' then
//      dmComponentesACBr.ACBrNFeDANFEFR1.Fax := FormatMaskText(IfThen(Length(Trim(dsEstabelecimentos.DataSet.FieldByName('fax').AsString)) < 11, '(99)9999-9999;0;', '(99)99999-9999;0;'), dsEstabelecimentos.DataSet.FieldByName('fax').AsString);
   if Trim(dsEstabelecimentos.DataSet.FieldByName('email').AsString) <> '' then
      dmComponentesACBr.ACBrNFeDANFEFR1.Email := dsEstabelecimentos.DataSet.FieldByName('email').AsString;

   dmComponentesACBr.ACBrNFeDANFEFR1.MostraPreview := True;
   dmComponentesACBr.ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                 'Reports\' +
                                                 'DANFeNFCe.fr3';
   dmComponentesACBr.ACBrNFeDANFEFR1.FastFileEvento := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                       'Reports\' +
                                                       'EVENTOS.fr3';
   dmComponentesACBr.ACBrNFeDANFEFR1.FastFileInutilizacao := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                             'Reports\' +
                                                             'INUTILIZACAO.fr3';

   If Not dsTerminais.DataSet.FieldByName('id_balanca_acoplada').IsNull Then
      begin
         dmComponentesACBr.ConfiguraBalanca(dsTerminais.DataSet);
         // Conecta com a balança
         dmComponentesACBr.ACBrBAL1.Ativar;
      end;
end;

procedure TfrmVenda.ConsultaProduto;
begin
   dlgConsultaProduto := TdlgConsultaProduto.Create(Self, 0);
   Try
      dlgConsultaProduto.btnRegistrar.Enabled := True;
      If dlgConsultaProduto.ShowModal = mrOk Then
         RegistraItemVendido(dlgConsultaProduto.txtedtCodigo.Text,
                             curredtQuantidade.Value);
   Finally
      dlgConsultaProduto.Free;
   End;
end;

procedure TfrmVenda.Desconto;
var
   APercentualMaximo,
   AValorMaximo: Double;
begin
   dlgDesconto := TdlgDesconto.Create(Self);
   try
      APercentualMaximo := dmPDV.GetPercentualMaximoCondicao(dsVendas.DataSet.FieldByName('id_condicao').AsInteger);
      AValorMaximo := dsVendas_Produtos.DataSet.FieldByName('preco_unitario').AsFloat *
                      dsVendas_Produtos.DataSet.FieldByName('quantidade').AsFloat;

      if APercentualMaximo > 0 then
         AValorMaximo := AValorMaximo * APercentualMaximo / 100
      else
         AValorMaximo := AValorMaximo - 0.01;

      if dlgDesconto.Executa('Desconto', AValorMaximo) then
         begin
            dsVendas_Produtos.DataSet.Edit;
            dsVendas_Produtos.DataSet.FieldByName('valor_desconto').AsFloat := dlgDesconto.curredtValorDesconto.Value;
            dsVendas_Produtos.DataSet.Post;
         end;
   finally
      FreeAndNil(dlgDesconto);
   end;
end;

procedure TfrmVenda.ExibeBarraDeStatus(const AExibe: Boolean);
begin
   gboxBarraDeStatus.Visible := AExibe;
end;

procedure TfrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   dlgIdentificacaoRepresentante.Free;

   // Se tiver conectado com a balança, desconecta
   if dmComponentesACBr.ACBrBAL1.Ativo then
      dmComponentesACBr.ACBrBAL1.Desativar;

   if dsClientes_LookUp.DataSet.Active then
      dsClientes_LookUp.DataSet.Close;

   dsVendas.DataSet.Close;
   TUniQuery(dsVendas.DataSet).ParamByName('id_terminal').Clear;
   TUniQuery(dsVendas.DataSet).ParamByName('data_movimento').Clear;
   TUniQuery(dsVendas.DataSet).MacroByName('condicao').Clear;
end;

procedure TfrmVenda.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
   CanClose := dsVendas.DataSet.IsEmpty;
end;

procedure TfrmVenda.FormCreate(Sender: TObject);
begin
  inherited;
//   Top := 0;
//   Left := 0;
end;

procedure TfrmVenda.FormResize(Sender: TObject);
begin
  inherited;
//   With barStatus Do
//      Panels[0].Width := ClientWidth - (Panels[1].Width + Panels[2].Width + Panels[3].Width);
end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  inherited;
//   Align := alNone;
//   Align := alClient;
   dlgIdentificacaoRepresentante := TdlgIdentificacaoRepresentante.Create(Self);

   ConfiguraComponentesACBr;

   if dsClientes_LookUp.DataSet.Active then
      dsClientes_LookUp.DataSet.Close;

   dsClientes_LookUp.DataSet.Open;

   TUniQuery(dsVendas.DataSet).ParamByName('id_terminal').Value := dsMovimentos.DataSet.FieldByName('id_terminal').AsInteger;
   TUniQuery(dsVendas.DataSet).ParamByName('data_movimento').Value := dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime;
   TUniQuery(dsVendas.DataSet).ParamByName('id_operador').Value := dsMovimentos.DataSet.FieldByName('id_operador').AsInteger;
   TUniQuery(dsVendas.DataSet).MacroByName('condicao').Value := ' AND status = ' + QuotedStr('0');
   dsVendas.DataSet.Open;
   if dsVendas.DataSet.IsEmpty then
      begin
         txtedtMensagem.Text := 'Caixa Livre!';
         txtedtMensagem.PostEditValue;
         txtedtDescricao.Text := '';
         txtedtDescricao.PostEditValue;
      end
   else
      begin
         dsVendas_Produtos.DataSet.Last;
         txtedtMensagem.Text := 'Pronto!';
         txtedtMensagem.PostEditValue;
         txtedtDescricao.Text := dsVendas_Produtos.DataSet.FieldByName('descricao').AsString;
         txtedtDescricao.PostEditValue;
         fUltimoCodigo := dsVendas_Produtos.DataSet.FieldByName('codigo_barras').AsString;
         fUltimaQuantidade := dsVendas_Produtos.DataSet.FieldByName('quantidade').AsFloat;
      end;
   txtedtLeitor.Text := '';
   txtedtLeitor.PostEditValue;
   FocusControl(txtedtLeitor);
   CarregaFuncoes;
   UpdateStatusBar;
   WindowState := wsMaximized;
end;

procedure TfrmVenda.IniciaVenda;
begin
   if dsVendas.DataSet.IsEmpty then
      begin
         dsVendas.DataSet.Append;
         dsVendas.DataSet.FieldByName('id_estabelecimento').AsInteger := dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger;
         dsVendas.DataSet.FieldByName('id_local').AsInteger := dsTerminais.DataSet.FieldByName('id_local').AsInteger;
         dsVendas.DataSet.FieldByName('data_movimento').AsDateTime := dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime;
         dsVendas.DataSet.FieldByName('id_caixa').AsInteger := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
         dsVendas.DataSet.FieldByName('id_operador').AsInteger := dsMovimentos.DataSet.FieldByName('id_operador').AsInteger;
         dsVendas.DataSet.FieldByName('documento').AsInteger := dmPDV.GetProximaSequenciaDocumento(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger);

         if not dsTerminais.DataSet.FieldByName('id_cliente_consumidor').IsNull then
            dsVendas.DataSet.FieldByName('id_parceiro').AsInteger := dsTerminais.DataSet.FieldByName('id_cliente_consumidor').AsInteger;

         if (dsTerminais.DataSet.FieldByName('identificar_representante').AsString = 'S') And
            dlgIdentificacaoRepresentante.Executa then
            dsVendas.DataSet.FieldByName('id_representante').AsInteger := dlgIdentificacaoRepresentante.Id;

         if not dsTerminais.DataSet.FieldByName('id_condicao_pagamento').IsNull then
            dsVendas.DataSet.FieldByName('id_condicao').AsInteger := dsTerminais.DataSet.FieldByName('id_condicao_pagamento').AsInteger;

         dsVendas.DataSet.FieldByName('tipo_prazo').AsString := 'F';
         dsVendas.DataSet.FieldByName('parcelas').AsInteger := 1;
         dsVendas.DataSet.FieldByName('valor_entrada').AsFloat := 0;

         if dsTerminais.DataSet.FieldByName('fiscal').AsString = 'N' Then
            dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := '0'
         else
            If Trim(dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').AsString) <> '' Then
               dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').AsString;
         // 0-Venda em antamento / 1-Aguardando Aprovação / 2-Finalizada / 3-Aguardando Pagamento / 5-Finalizada / 8-Desistência / 9-Cancelada
         dsVendas.DataSet.FieldByName('status').AsString := '0';
         dsVendas.DataSet.Post;
      end;
end;

procedure TfrmVenda.LerPeso;
var
   APeso: Double;
   ARetorno: String;
begin
   txtedtMensagem.Text := 'Pese o produto!';
   txtedtMensagem.PostEditValue;
   Sleep(2000);
   APeso := dmComponentesACBr.LerPesoBalanca(dsTerminais.DataSet.FieldByName('tempo_limite_balanca_acoplada').AsInteger,
                                             ARetorno);
   if APeso > 0 then
      begin
         curredtQuantidade.Value := APeso;
         curredtQuantidade.PostEditValue;
         txtedtMensagem.Text := 'Pronto!';
      end
   else
      if ARetorno <> '' then
         txtedtMensagem.Text := aRetorno;
   txtedtMensagem.PostEditValue;
end;

procedure TfrmVenda.LimpaCampos;
begin
   if dsVendas.DataSet.IsEmpty then
      txtedtMensagem.Text := 'Caixa Livre!'
   Else
      txtedtMensagem.Text := 'Pronto!';
   txtedtMensagem.PostEditValue;
   txtedtDescricao.Text := '';
   txtedtDescricao.PostEditValue;
   curredtQuantidade.Value := 1;
   curredtQuantidade.PostEditValue;
   curredtPrecoUnitario.Value := 0;
   curredtPrecoUnitario.PostEditValue;
   curredtValorDesconto.Value := 0;
   curredtValorDesconto.PostEditValue;
   curredtPrecoTotal.Value := 0;
   curredtPrecoTotal.PostEditValue;
   txtedtLeitor.Text := '';
   txtedtLeitor.PostEditValue;
end;

procedure TfrmVenda.LocalizarProduto;
begin
   dlgLocalizar := TdlgLocalizar.Create(Self);
   Try
      If dlgLocalizar.Executa Then
         RegistraItemVendido(dlgLocalizar.dsLocalizar.DataSet.FieldByName('codigo_barras').AsString,
                             curredtQuantidade.Value);
   Finally
      dlgLocalizar.Free;
   End;
end;

procedure TfrmVenda.RegistraItemVendido;
begin
   RegistraItemVendido(fUltimoCodigo, fUltimaQuantidade);
end;

procedure TfrmVenda.RegistraItemVendido(ACodigo: String; AQuantidade: Real);
{
procedure TfrmVenda.Registra(aCodigo: String; aQuantidade: Real);
var
   aIniFileName: String;
   aIniFile: TIniFile;
   aCodigoProduto,
   aPrefixo: String;
   aPosicaoInicial,
   aTamanho: Integer;
   aPrecoUnitario,
   aDesconto,
   aPrecoTotal: Real;
   aValidaSaldo: String;
begin
   aUltimoItem := aCodigo;
   aUltimaQuantidade := aQuantidade;
   aIniFileName := ChangeFileExt(Application.ExeName, '.ini');
   Try
      aIniFile := TIniFile.Create(aIniFileName);
      aCodigoProduto := StrZero(aCodigo, 13);
      aPrefixo := aIniFile.ReadString('Configurações/Código', 'Prefixo', '');
      If Copy(aCodigoProduto, 1, Length(aPrefixo)) = aPrefixo Then
         begin
            aPosicaoInicial := aIniFile.ReadInteger('Configurações/Código', 'Inicio', 3);
            aTamanho := aIniFile.ReadInteger('Configurações/Código', 'Tamanho', 4);
            aCodigoProduto := StrZero(Copy(aCodigo, aPosicaoInicial, aTamanho), 13);
            aPrecoTotal := StrToFloat(Copy(aCodigo, aPosicaoInicial + aTamanho, Length(aCodigo) - (aPosicaoInicial + aTamanho))) / 100;
         end;
      aValidaSaldo := aIniFile.ReadString('Configurações/Ambiente', 'ValidaSaldo', 'N');
      If Not ChecaEAn13(aCodigoProduto) Then
         aCodigoProduto := Copy(aCodigoProduto, 2, 12) + DigitoEAn13(Copy(aCodigoProduto, 2, 12));
      If Not dmVenda.LocalizaProdutoPorCodigoBarras(aCodigoProduto) Then
         begin
            lblMensagem.Caption := 'Produto Não Cadastrado!';
         end
      Else
         begin
            If aPrecoTotal > 0 Then
               begin
                  aQuantidade := RoundTo(aPrecoTotal / RoundTo(dmVenda.qryProdutos_Locate.FieldByName('preco_venda').AsFloat, -2), 3);
                  aPrecoUnitario := RoundTo(aPrecoTotal / aQuantidade, -2);
               end
            Else
               aPrecoUnitario := RoundTo(dmVenda.qryProdutos_Locate.FieldByName('preco_venda').AsFloat, -2);
            If (aValidaSaldo = 'S') And (aQuantidade > dmVenda.qryProdutos_Locate.FieldByName('saldo_atual').AsFloat) Then
               begin
                  lblMensagem.Caption := 'Saldo Insuficiente!';
               end
            Else
               begin
                  aDesconto := 0;
                  aPrecoTotal := aPrecoUnitario * aQuantidade;
                  If Not dsCaixa_Tributacoes.DataSet.Locate('id_tributacao', dmVenda.qryProdutos_Locate.FieldByName('id_tributacao').AsInteger, []) Then
                     begin
                        lblMensagem.Caption := 'TAXA ICMS/ISS NÃO CADASTRADA! (' + IntToStr(dsCaixa_Tributacoes.DataSet.FieldByName('id_tributacao').AsInteger) + ')';
                        LimpaCampos;
                        Exit;
                     end;
                  edtQuantidade.Value := aQuantidade;
                  edtPrecoUnitario.Value := aPrecoUnitario;
                  edtPrecoTotal.Value := aPrecoTotal;
                  If dsVendas.DataSet.IsEmpty Then
                     begin
                        dlgTipoDocumentoFiscal := TdlgTipoDocumentoFiscal.Create(Self);
                        Try
                           if dlgTipoDocumentoFiscal.ShowModal = mrOk then
                              begin
                                 dsVendas.DataSet.Append;
                                 if Not dsCaixa.DataSet.FieldByName('id_condicao').IsNull then
                                    dsVendas.DataSet.FieldByName('id_condicao').AsInteger := dsCaixa.DataSet.FieldByName('id_condicao').AsInteger;
                                 dsVendas.DataSet.FieldByName('parcelas').AsInteger := 1;
                                 if Not dsCaixa.DataSet.FieldByName('id_preco').IsNull then
                                    dsVendas.DataSet.FieldByName('id_preco').AsInteger := dsCaixa.DataSet.FieldByName('id_preco').AsInteger;
                                 // F-Fixo / V-Variável / P-Personalizado
                                 dsVendas.DataSet.FieldByName('tipo_prazo').AsString := INIConfig.TipoPrazoVenda;
                                 // 0-Nenhum / 1-NF-e / 2-NFC-e
                                 dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := IfThen(dlgTipoDocumentoFiscal.radNFCe.Checked, '2', '1');
                                 dsVendas.DataSet.Post;
                                 CabecalhoVenda;
                              end
                           Else
                              begin
                                 LimpaCampos;
                                 Exit;
                              end;
                        Finally
                           dlgTipoDocumentoFiscal.Free;
                        End;
                     end;
                  lblMensagem.Caption := dmVenda.qryProdutos_Locate.FieldByName('resumida').AsString;
                  dsVendas_Produtos.DataSet.Append;
                  dsVendas_Produtos.DataSet.FieldByName('id_produto').AsInteger := dmVenda.qryProdutos_Locate.FieldByName('id_produto').AsInteger;
                  dsVendas_Produtos.DataSet.FieldByName('codigo_barras').AsString := aCodigoProduto;
                  dsVendas_Produtos.DataSet.FieldByName('resumida').AsString := dmVenda.qryProdutos_Locate.FieldByName('resumida').AsString;
                  dsVendas_Produtos.DataSet.FieldByName('id_unidade').AsInteger := dmVenda.qryProdutos_Locate.FieldByName('id_unidade').AsInteger;
                  dsVendas_Produtos.DataSet.FieldByName('sigla_unidade').AsString := dmVenda.qryProdutos_Locate.FieldByName('sigla_unidade').AsString;
                  dsVendas_Produtos.DataSet.FieldByName('quantidade').AsFloat := aQuantidade;
                  dsVendas_Produtos.DataSet.FieldByName('preco_unitario').AsFloat := aPrecoUnitario;
                  dsVendas_Produtos.DataSet.FieldByName('valor_desconto').AsFloat := aDesconto;
                  dsVendas_Produtos.DataSet.Post;
                  RegistraNaBobina;
                  AtualizaSubTotal;
               end;
         end;
      LimpaCampos;
   Finally
      aIniFile.Free;
   End;
end;
}
var
   ATempStr: String;
   APrecoUnitario,
   APrecoTotal,
   vQuantidade: Real;
begin
   BlockInput(True);
   try
      vQuantidade := AQuantidade;
      if Length(Trim(ACodigo)) = 8 then
         begin
            if not ValidaGTIN(ACodigo) then
               begin
                  txtedtMensagem.Text := 'CÓDIGO INVÁLIDO!';
                  txtedtMensagem.PostEditValue;
                  Update;
                  Refresh;
                  Sleep(1000);
                  Exit;
               end;
         end
      else
         begin
            if Length(Trim(ACodigo)) < 13 then
               begin
                  if dsTerminais.DataSet.FieldByName('digitos_significativos').AsInteger > 0 then
                     begin
                        ACodigo := StrZero(Trim(ACodigo), dsTerminais.DataSet.FieldByName('digitos_significativos').AsInteger);
                        if dsTerminais.DataSet.FieldByName('digitos_significativos').AsInteger < 13 then
                           ACodigo := ACodigo + DigitoEAN13(ACodigo);
                     end
                  else
                     ACodigo := StrZero(Trim(ACodigo), 13);
               end;

            if not ChecaEAn13(ACodigo) Then
               begin
                  txtedtMensagem.Text := 'CÓDIGO INVÁLIDO!';
                  txtedtMensagem.PostEditValue;
                  Update;
                  Refresh;
                  Sleep(1000);
                  Exit;
               end;

            if (Trim(dsTerminais.DataSet.FieldByName('etiqueta_prefixo').AsString) <> '') And
               (Copy(ACodigo, 1, Length(dsTerminais.DataSet.FieldByName('etiqueta_prefixo').AsString)) = dsTerminais.DataSet.FieldByName('etiqueta_prefixo').AsString) then
               begin
                  ATempStr := Copy(ACodigo, dsTerminais.DataSet.FieldByName('etiqueta_codigo_inicio').AsInteger + dsTerminais.DataSet.FieldByName('etiqueta_codigo_tamanho').AsInteger, Length(aCodigo) - (dsTerminais.DataSet.FieldByName('etiqueta_codigo_inicio').AsInteger + dsTerminais.DataSet.FieldByName('etiqueta_codigo_tamanho').AsInteger));
                  ACodigo := Copy(ACodigo, dsTerminais.DataSet.FieldByName('etiqueta_codigo_inicio').AsInteger, dsTerminais.DataSet.FieldByName('etiqueta_codigo_tamanho').AsInteger);
                  APrecoTotal := StrToFloat(ATempStr) / 100;
                  ACodigo := StrZero(Trim(ACodigo), 13);
//                  ACodigo := ACodigo + DigitoEAN13(ACodigo);
               end;
         end;

      if not dmPDV.GetProdutoPorCodigoBarras(ACodigo,
                                             dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger,
                                             dsTerminais.DataSet.FieldByName('id_local').AsInteger,
                                             dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime) then
         begin
            txtedtMensagem.Text := 'PRODUTO NÃO CADASTRADO!';
            txtedtMensagem.PostEditValue;
            Update;
            Refresh;
            Sleep(500);
         end
      else
         begin
            if APrecoTotal > 0 then
               begin
                  vQuantidade := APrecoTotal / dmPDV.qryProdutos_Locate.FieldByName('preco_unitario').AsFloat;
                  APrecoUnitario := APrecoTotal / vQuantidade;
               end
            else
               APrecoUnitario := dmPDV.qryProdutos_Locate.FieldByName('preco_unitario').AsFloat;

            if vQuantidade > dmPDV.qryProdutos_Locate.FieldByName('estoque_disponivel').AsFloat then
               begin
                  txtedtMensagem.Text := 'SALDO INSUFICIENTE!';
                  txtedtMensagem.PostEditValue;
                  Update;
                  Refresh;
                  Sleep(500);
                  Exit;
               end;

            txtedtDescricao.Text := dmPDV.qryProdutos_Locate.FieldByName('resumida').AsString;
            txtedtDescricao.PostEditValue;
            curredtQuantidade.Value := vQuantidade;
            curredtPrecoUnitario.Value := APrecoUnitario;
            curredtPrecoUnitario.PostEditValue;
            curredtValorDesconto.Value := 0;
            curredtValorDesconto.PostEditValue;
            curredtPrecoTotal.Value := RoundTo(vQuantidade * APrecoUnitario, -2);
            curredtPrecoTotal.PostEditValue;
            Update;
            Refresh;
            Sleep(500);
            if not dmConexao.conConexao.InTransaction then
               dmConexao.conConexao.StartTransaction;
            try
               IniciaVenda;
               dsVendas_Produtos.DataSet.Append;
               dsVendas_Produtos.DataSet.FieldByName('id_venda').AsInteger := dsVendas.DataSet.FieldByName('id_venda').AsInteger;
               dsVendas_Produtos.DataSet.FieldByName('item').AsInteger := dmConexao.Sequencia('vendas_produtos', 'item', Format('WHERE id_venda = %d', [dsVendas_Produtos.DataSet.FieldByName('id_venda').AsInteger]));
               dsVendas_Produtos.DataSet.FieldByName('id_produto').AsInteger := dmPDV.qryProdutos_Locate.FieldByName('id_produto').AsInteger;
               dsVendas_Produtos.DataSet.FieldByName('codigo_barras').AsString := dmPDV.qryProdutos_Locate.FieldByName('codigo_barras').AsString;
               dsVendas_Produtos.DataSet.FieldByName('descricao').Assign(dmPDV.qryProdutos_Locate.FieldByName('descricao'));
               dsVendas_Produtos.DataSet.FieldByName('resumida').AsString := dmPDV.qryProdutos_Locate.FieldByName('resumida').AsString;
               dsVendas_Produtos.DataSet.FieldByName('id_unidade').AsInteger := dmPDV.qryProdutos_Locate.FieldByName('id_unidade_medida').AsInteger;
               dsVendas_Produtos.DataSet.FieldByName('sigla_unidade').AsString := dmPDV.qryProdutos_Locate.FieldByName('sigla_unidade_medida').AsString;
               dsVendas_Produtos.DataSet.FieldByName('quantidade').AsFloat := RoundTo(vQuantidade, -3);
               if dmPDV.qryProdutos_Locate.FieldByName('pesavel').AsString = 'S' then
                  dsVendas_Produtos.DataSet.FieldByName('peso_bruto').AsFloat := RoundTo(vQuantidade, -3)
               else
                  dsVendas_Produtos.DataSet.FieldByName('peso_bruto').AsFloat := 0;
               dsVendas_Produtos.DataSet.FieldByName('preco_unitario').AsFloat := RoundTo(APrecoUnitario, -2);
               dsVendas_Produtos.DataSet.FieldByName('preco_venda').AsFloat := 0;
               dsVendas_Produtos.DataSet.FieldByName('percentual_acrescimo').AsFloat := 0;
               dsVendas_Produtos.DataSet.FieldByName('valor_acrescimo').AsFloat := 0;
               dsVendas_Produtos.DataSet.FieldByName('percentual_desconto').AsFloat := 0;
               dsVendas_Produtos.DataSet.FieldByName('valor_desconto').AsFloat := 0;
               dsVendas_Produtos.DataSet.FieldByName('preco_custo').AsFloat := dmPDV.qryProdutos_Locate.FieldByName('preco_custo').AsFloat;
               dsVendas_Produtos.DataSet.Post;
               fUltimoCodigo := aCodigo;
               fUltimaQuantidade := aQuantidade;
               dmConexao.conConexao.Commit;
            except
               ON E: EDAError Do
                  begin
                     dmConexao.conConexao.Rollback;
                     txtedtDescricao.Text := 'Erro ao registrar item vendido: '#13 + e.message;
                     txtedtDescricao.PostEditValue;
                  end;
            end;
         end;
   finally
      LimpaCampos;
      FocusControl(txtedtLeitor);
      BlockInput(False);
   end;
end;

procedure TfrmVenda.Sangria;
var
   vSaldoDisponivel: Double;
begin
   With dsMovimentos Do
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

   if dsVendas.DataSet.Isempty then
      begin
         dlgSangria := TdlgSangria.Create(Self, 0);
         Try
            dlgSangria.Limite := vSaldoDisponivel;
            If dlgSangria.Executa Then
               dmRelatorio.ImprimirComprovanteOperacao(dsMovimentos_Operacoes.DataSet.FieldByName('id_terminal').AsInteger,
                                                       dsMovimentos_Operacoes.DataSet.FieldByName('data_movimento').AsDateTime,
                                                       dsMovimentos_Operacoes.DataSet.FieldByName('id_operador').AsInteger,
                                                       dsMovimentos_Operacoes.DataSet.FieldByName('sequencia').AsInteger,
                                                       dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                                       False);
         Finally
            dlgSangria.Free;
         End;
      end;
end;

procedure TfrmVenda.Suprimento;
begin
   if dsVendas.DataSet.Isempty then
      begin
         dlgSuprimento := TdlgSuprimento.Create(Self, 0);
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
end;

procedure TfrmVenda.txtedtLeitorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
      begin
         if Trim(TcxTextEdit(Sender).Text) <> '' then
            RegistraItemVendido(Trim(TcxTextEdit(Sender).Text), curredtQuantidade.Value);
//         Else
//            RegistraItemVendido;
         TcxTextEdit(Sender).SetFocus;
      end;
   if Key = VK_ESCAPE then
      begin
         CancelarVenda;
         Close;
      end;
   if Key = VK_F1 then
      ExibeBarraDeStatus(not gboxBarraDeStatus.Visible);
end;

procedure TfrmVenda.txtedtLeitorKeyPress(Sender: TObject; var Key: Char);
var
   aFormato: TFormatSettings;
begin
  inherited;
   aFormato := TFormatSettings.Create;
   if Not CharInSet(Key, ['0'..'9', #8, #112, 'x', 'X', aFormato.DecimalSeparator]) then
      Key := #0
   else
      if Key In ['x', 'X'] then
         begin
            Key := #0;
            curredtQuantidade.Value := StrToFloat(Trim(TcxTextEdit(Sender).Text));
            curredtQuantidade.PostEditValue;
            TcxTextEdit(Sender).Text := '';
            TcxTextEdit(Sender).PostEditValue;
         end;
end;

procedure TfrmVenda.UpdateStatusBar;
begin
   lblOperador.Caption := dmSessao.qryUsuarios.FieldByName('login').AsString;
//   With barStatus Do
//      begin
//         Panels[1].Text := '';
//         Panels[2].Text := 'Term.: ' + dsTerminais.DataSet.FieldByName('descricao').AsString;
//         Panels[3].Text := 'Oper.: ' + dmSessao.qryUsuarios.FieldByName('login').AsString;
//      end;
end;

end.
