unit MasterPDV.View.VendaRecebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios,
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxStatusBar, Data.DB,
  cxContainer, cxEdit, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxCurrencyEdit, cxDBEdit, cxLabel, System.Actions, Vcl.ActnList,
  dxSkinOffice2019Colorful, dxSkinTheBezier, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfrmVendaRecebimento = class(TfrmPrivilegios)
    barStatus: TdxStatusBar;
    dsEstabelecimentos: TDataSource;
    dsTerminais: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    dsVendas: TDataSource;
    dsVendas_Totais: TDataSource;
    dsVendas_Produtos: TDataSource;
    dsTerminais_Modalidades: TDataSource;
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    btnTipoRecebimento01: TcxButton;
    btnTipoRecebimento06: TcxButton;
    gboxSubtotal: TcxGroupBox;
    gboxValorLiquido: TcxGroupBox;
    gboxValorRecebido: TcxGroupBox;
    gboxValorTroco: TcxGroupBox;
    lblValorLiquido: TcxLabel;
    dbcurredtValorLiquido: TcxDBCurrencyEdit;
    lblValorRecebido: TcxLabel;
    dbcurredtValorRecebido: TcxDBCurrencyEdit;
    lblValorReceber: TcxLabel;
    dbcurredtValorReceber: TcxDBCurrencyEdit;
    btnTipoRecebimento07: TcxButton;
    btnTipoRecebimento09: TcxButton;
    btnTipoRecebimento08: TcxButton;
    btnTipoRecebimento10: TcxButton;
    btnTipoRecebimento02: TcxButton;
    btnTipoRecebimento04: TcxButton;
    btnTipoRecebimento03: TcxButton;
    btnTipoRecebimento05: TcxButton;
    dsVendas_Recebimentos: TDataSource;
    dsFormas_Recebimentos: TDataSource;
    ActionList1: TActionList;
    actAcrescimo: TAction;
    actDesconto: TAction;
    actResgataBonus: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnTipoRecebimento01Click(Sender: TObject);
    procedure dsVendas_TotaisDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAcrescimoExecute(Sender: TObject);
    procedure actDescontoExecute(Sender: TObject);
    procedure actResgataBonusExecute(Sender: TObject);
  private
    { Private declarations }
    fTestePayGo: Integer;
    procedure Acrescimo;
    procedure Desconto;
    procedure UpdateStatusBar;
    procedure CarregaTiposDeRecebimento;
    procedure SelecionaFormaDeRecebimento(AId_Terminal: Integer;
                                          AId_Botao: SmallInt);
    procedure ExecutaRecebimento(AID_Forma_Recebimento: Integer;
                                 AValorPadrao: Double = 0;
                                 AValorMaximo: Double = 0);
    function ExecutaTransacaoTEF(const Indice: String; AValor: Double): Boolean;
    function GeraDocumentoFiscal: Boolean;
    function EmiteDocumentoFiscal(AId_Venda: Integer; AId_Modelo: String): Boolean;
    procedure ExecutaFechamentoVenda;
  public
    { Public declarations }
  end;

var
  frmVendaRecebimento: TfrmVendaRecebimento;

implementation

uses
   StrUtils, DateUtils, System.IOUtils, System.Math,
   ACBrTEFDClass, ACBrTEFComum, ACBrTEFDCliSiTef, ACBrTEFPayGoComum,
   ACBrTEFPayGoWebComum, ACBrTEFDPayGoWeb,
   pcnConversao, pcnConversaoNFe,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao,
   UDataModuleSessao,
   UDataModuleComponentesACBr,
   UDataModuleFiscal,
   UMasterPDVDataModulePDV,
   UMasterPDVDataModuleRelatorio,
   MasterPDV.View.FormasRecebimentos,
   MasterPDV.View.RecebimentoValor,
   MasterPDV.View.Obrigado,
   MasterPDV.View.IdentificacaoTipoDocumentoFiscal,
   UMasterPDVDataModuleDocumentosFiscais,
   MasterPDV.View.IdentificacaoDocumentoRFB,
   MasterPDV.View.Desconto, MasterPDV.View.Acrescimo,
   MasterPDV.View.IdentificacaoCliente, MasterPDV.View.Autenticacao,
   MasterPDV.View.CampanhaDesconto,
   MasterPDV.Model.TEF;

{$R *.dfm}

{ TfrmVendaRecebimento }

procedure TfrmVendaRecebimento.Acrescimo;
begin
   dlgAcrescimo := TdlgAcrescimo.Create(Self);
   Try
      If dlgAcrescimo.Executa('Acréscimo') Then
         begin
//            dsVendas.DataSet.Edit;
//            dsVendas.DataSet.FieldByName('valor_acrescimo').AsFloat := dlgAcrescimo.curredtValorAcrescimo.Value;
//            dsVendas.DataSet.Post;
            RateiaValor(dlgAcrescimo.curredtValorAcrescimo.Value,
                        dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat,
                        dsVendas_Produtos.DataSet.FieldByName('valor_acrescimo'));
            dsVendas_Totais.DataSet.DisableControls;
            dsVendas_Totais.DataSet.Close;
            dsVendas_Totais.DataSet.Open;
            dsVendas_Totais.DataSet.EnableControls;
         end;
   Finally
      dlgAcrescimo.Free;
   End;
end;

procedure TfrmVendaRecebimento.actAcrescimoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      Acrescimo;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVendaRecebimento.actDescontoExecute(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled := False;
   Try
      Desconto;
   Finally
      TAction(Sender).Enabled := True;
   End;
end;

procedure TfrmVendaRecebimento.actResgataBonusExecute(Sender: TObject);
var
   APontuacao: Double;
begin
  inherited;
   if dsVendas.DataSet.FieldByName('id_parceiro').AsInteger <> dsTerminais.DataSet.FieldByName('id_cliente_consumidor').AsInteger then
      begin
         APontuacao := RoundTo(dmPDV.GetClientePontuacao(dsVendas.DataSet.FieldByName('id_parceiro').AsInteger), -2);
         if (APontuacao >= 1000) and (APontuacao <= 1999.99) then
            begin
               if Confirmacao(Format('Cliente possui %9.2f pontos. Deseja resgatar nesta venda?', [APontuacao])) then
                  begin
                     APontuacao := dmPDV.ResgataPontuacao(dsVendas.DataSet.FieldByName('id_parceiro').AsInteger);
                     if (APontuacao >= 1000) and (APontuacao <= 1999.99) then
                        begin
                           RateiaValor(RoundTo((dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat * 10) / 100, -2),
                                       dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat,
                                       dsVendas_Produtos.DataSet.FieldByName('valor_desconto'));
                           with dsVendas_Totais do
                              begin
                                 DataSet.DisableControls;
                                 DataSet.Close;
                                 DataSet.Open;
                                 DataSet.EnableControls;
                              end;
                        end;
                  end;
            end
         else if APontuacao >= 2000 then
                 begin
                    if Confirmacao(Format('Cliente possui %9.2f pontos. Deseja resgatar nesta venda?', [APontuacao])) then
                       begin
                          APontuacao := dmPDV.ResgataPontuacao(dsVendas.DataSet.FieldByName('id_parceiro').AsInteger);
                          if APontuacao >= 2000 then
                             begin
                                RateiaValor(RoundTo((dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat * 20) / 100, -2),
                                            dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat,
                                            dsVendas_Produtos.DataSet.FieldByName('valor_desconto'));
                                with dsVendas_Totais do
                                   begin
                                      DataSet.DisableControls;
                                      DataSet.Close;
                                      DataSet.Open;
                                      DataSet.EnableControls;
                                   end;
                             end;
                       end;
                 end;
      end;

end;

procedure TfrmVendaRecebimento.btnTipoRecebimento01Click(Sender: TObject);
begin
  inherited;
   with dsVendas_Totais do
      if DataSet.FieldByName('valor_receber').AsFloat > 0 then
         begin
            SelecionaFormaDeRecebimento(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger,
                                        TcxButton(Sender).Tag);
            if DataSet.FieldByName('valor_receber').AsFloat <= 0 then
               begin
                  ExecutaFechamentoVenda;
                  Close;
               end;
         end;
end;

procedure TfrmVendaRecebimento.CarregaTiposDeRecebimento;
var
   I: Integer;
begin
   With dsTerminais_Modalidades Do
      begin
         DataSet.Open;
         for I := 0 to gboxFerramentas.ControlCount - 1 do
            begin
               if gboxFerramentas.Controls[I].ClassType = TcxButton then
                  begin
                     TcxButton(gboxFerramentas.Controls[I]).Enabled := (TcxButton(gboxFerramentas.Controls[I]).Tag <> 0) And
                                                                       DataSet.Locate('id_botao', TcxButton(gboxFerramentas.Controls[I]).Tag, []);
                     if TcxButton(gboxFerramentas.Controls[I]).Enabled then
                        TcxButton(gboxFerramentas.Controls[I]).Caption := DataSet.FieldByName('texto_botao').AsString;
                  end;
            end;
         DataSet.Close;
      end;
end;

procedure TfrmVendaRecebimento.Desconto;
var
   APercentualMaximo,
   AValorMaximo: Double;
   APercentualDesconto,
   AValorDesconto,
   AValorTotal: Real;
   ABookMark: TBookMark;
begin
   if dsVendas_Totais.DataSet.FieldByName('valor_desconto').AsFloat = 0 then
      begin
         if dmPDV.GetCampanhaAtiva then
            begin
               dlgCampanhaDesconto := TdlgCampanhaDesconto.Create(Self);
               try
                  if dlgCampanhaDesconto.Executa then
                     begin
                        APercentualDesconto := dlgCampanhaDesconto.GetPercentualDesconto;
                        AValorDesconto := RoundTo(dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat * APercentualDesconto / 100, -2);

                        RateiaValor(AValorDesconto,
                                    dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat,
                                    dsVendas_Produtos.DataSet.FieldByName('valor_desconto'));

                        with dsVendas do
                           begin
                              DataSet.Edit;
                              DataSet.FieldByName('id_campanha').AsInteger := dmPDV.qryCampanhas_Cupons.FieldByName('id_campanha').AsInteger;
                              DataSet.FieldByName('id_cupom').AsInteger := dmPDV.qryCampanhas_Cupons.FieldByName('id_cupom').AsInteger;
                              DataSet.Post;
                           end;

                        with dsVendas_Totais do
                           begin
                              DataSet.DisableControls;
                              DataSet.Close;
                              DataSet.Open;
                              DataSet.EnableControls;
                           end;
                     end
                  else
                     begin
                        dlgDesconto := TdlgDesconto.Create(Self);
                        Try
                           APercentualMaximo := dmPDV.GetPercentualMaximoCondicao(dsVendas.DataSet.FieldByName('id_condicao').AsInteger);
                           AValorMaximo := dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat;

                           if APercentualMaximo > 0 then
                              AValorMaximo := RoundTo(AValorMaximo * APercentualMaximo / 100, -2)
                           else
                              AValorMaximo := AValorMaximo - 0.01;

                           If dlgDesconto.Executa('Desconto', AValorMaximo) Then
                              begin
                     //            dsVendas.DataSet.Edit;
                     //            dsVendas.DataSet.FieldByName('valor_desconto').AsFloat := dlgDesconto.curredtValorDesconto.Value;
                     //            dsVendas.DataSet.Post;
                                 RateiaValor(dlgDesconto.curredtValorDesconto.Value,
                                             dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat,
                                             dsVendas_Produtos.DataSet.FieldByName('valor_desconto'));
                                 with dsVendas_Totais do
                                    begin
                                       DataSet.DisableControls;
                                       DataSet.Close;
                                       DataSet.Open;
                                       DataSet.EnableControls;
                                    end;
                              end;
                        finally
                           FreeAndNil(dlgDesconto);
                        end;
                     end;
               finally
                  FreeAndNil(dlgCampanhaDesconto);
               end;
            end
         else
            begin
               dlgDesconto := TdlgDesconto.Create(Self);
               Try
                  APercentualMaximo := dmPDV.GetPercentualMaximoCondicao(dsVendas.DataSet.FieldByName('id_condicao').AsInteger);
                  AValorMaximo := dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat;

                  if APercentualMaximo > 0 then
                     AValorMaximo := RoundTo(AValorMaximo * APercentualMaximo / 100, -2)
                  else
                     AValorMaximo := AValorMaximo - 0.01;

                  If dlgDesconto.Executa('Desconto', AValorMaximo) Then
                     begin
            //            dsVendas.DataSet.Edit;
            //            dsVendas.DataSet.FieldByName('valor_desconto').AsFloat := dlgDesconto.curredtValorDesconto.Value;
            //            dsVendas.DataSet.Post;
                        RateiaValor(dlgDesconto.curredtValorDesconto.Value,
                                    dsVendas_Totais.DataSet.FieldByName('valor_bruto').AsFloat,
                                    dsVendas_Produtos.DataSet.FieldByName('valor_desconto'));
                        with dsVendas_Totais do
                           begin
                              DataSet.DisableControls;
                              DataSet.Close;
                              DataSet.Open;
                              DataSet.EnableControls;
                           end;
                     end;
               finally
                  FreeAndNil(dlgDesconto);
               end;
            end;
      end;
end;

procedure TfrmVendaRecebimento.dsVendas_TotaisDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
   With TDataSource(Sender) Do
      if State <> dsInactive then
         begin
            lblValorReceber.Caption := IfThen(DataSet.FieldByName('valor_receber').AsFloat > 0, 'Valor a receber', 'Troco');
            dbcurredtValorReceber.DataBinding.DataField := IfThen(DataSet.FieldByName('valor_receber').AsFloat > 0, 'valor_receber', 'valor_troco');
            if DataSet.FieldByName('valor_receber').AsFloat > 0 then
               begin
                  dbcurredtValorReceber.Style.Color := clRed;
                  dbcurredtValorReceber.Style.TextColor := clWhite;
               end
            Else
               begin
                  dbcurredtValorReceber.Style.Color := clBlue;
                  dbcurredtValorReceber.Style.TextColor := clWhite;
               end;
         end;
end;

function TfrmVendaRecebimento.EmiteDocumentoFiscal(AId_Venda: Integer;
   AId_Modelo: String): Boolean;
var
   AID_Documento_Fiscal: Integer;
begin
   dmDocumentosFiscais.qryDocumentos_Fiscais.Close;
   dmDocumentosFiscais.qryDocumentos_Fiscais.ParamByName('id_documento_fiscal').Value := dmDocumentosFiscais.GeraDocumentoFiscalVenda(AId_Venda, AId_Modelo);
   dmDocumentosFiscais.qryDocumentos_Fiscais.Open;
   Result := Not dmDocumentosFiscais.qryDocumentos_Fiscais.IsEmpty;
   if Result then
      begin
         frmObrigado.SetMensagem('Emitindo documento fiscal...');
         frmObrigado.Update;
         frmObrigado.Refresh;
         Result := GeraDocumentoFiscal;
      end;
end;

procedure TfrmVendaRecebimento.ExecutaFechamentoVenda;
var
   AId_Modelo: String;
   AOperacaoRealizada,
   ATentaNovamente: Boolean;
begin
   with dsVendas_Totais do
      if DataSet.FieldByName('valor_receber').AsFloat <= 0 then
         begin
            frmObrigado.SetTituloValorLiquido('Total da venda');
            frmObrigado.SetValorLiquido(DataSet.FieldByName('valor_liquido').AsFloat);
            frmObrigado.SetTituloValorRecebido('Valor recebido');
            frmObrigado.SetValorRecebido(DataSet.FieldByName('valor_recebido').AsFloat);
            frmObrigado.SetTituloValorTroco('Troco');
            frmObrigado.SetValorTroco(DataSet.FieldByName('valor_troco').AsFloat);
            frmObrigado.ExibeFormulario;

            dmPDV.CalculaParcelasVenda(dsVendas.DataSet.FieldByName('id_venda').AsInteger);

            if Confirmacao('Deseja imprimir o comprovante da venda?', mbYes) then
               begin
                  dmRelatorio.ImprimirDAV(dsVendas.DataSet.FieldByName('id_venda').AsInteger,
                                            dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                            False);
               end;

            // Envia comprovante ordem de produçao para a cozinha
            if Trim(dsTerminais.DataSet.FieldByName('emissor_cupom_producao').AsString) <> '' then
               dmRelatorio.ImprimirComprovanteOrdemProducao(dsVendas.DataSet.FieldByName('id_venda').AsInteger,
                                                            dsTerminais.DataSet.FieldByName('emissor_cupom_producao').AsString,
                                                            False);

            dsVendas.DataSet.Edit;
            if dmPDV.IsTerminalFiscal And
               Confirmacao('Deseja emitir o documento fiscal da venda?') then
               begin
                  if dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').IsNull then
                     begin
                        If dlgIdentificacaoTipoDocumentoFiscal.Executa then
                           dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := dlgIdentificacaoTipoDocumentoFiscal.GetTipoDocumentoFiscal
                        Else
                           dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := '0';
                     end
                  Else
                     dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').AsString;
               end
            Else
               dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := '0';
            dsVendas.DataSet.Post;

            if dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString <> '0' then
               begin
                  // 0-Nenhum / 1-NF-e / 2-NFC-e
                  If dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString = '1' then
                     begin
                        AId_Modelo := '55';
                        if dlgIdentificacaoCliente.ShowModal = mrOk then
                           begin
                              dsVendas.DataSet.Edit;
                              dsVendas.DataSet.FieldByName('id_parceiro').AsInteger := dlgIdentificacaoCliente.GetId;
                              dsVendas.DataSet.Post;
                           end;
                     end
                  // 2-NFC-e
                  else If dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString = '2' then
                          begin
                             AId_Modelo := '65';
                             if dlgIdentificacaoDocumentoRFB.ShowModal = mrOk then
                                begin
                                   dsVendas.DataSet.Edit;
                                   dsVendas.DataSet.FieldByName('documento_rfb_numero').AsString := dlgIdentificacaoDocumentoRFB.mskedtNumeroDocumentoRFB.Text;
                                   dsVendas.DataSet.Post;
                                end;
                          end;
                  AOperacaoRealizada := False;
                  ATentaNovamente := True;
                  Repeat
                     AOperacaoRealizada := EmiteDocumentoFiscal(dsVendas.DataSet.FieldByName('id_venda').AsInteger, AId_Modelo);
                     if not AOperacaoRealizada then
                        ATentaNovamente := Confirmacao('O Documento Fiscal não foi emitido.'#13'Tentar novamente?');
                   Until AOperacaoRealizada Or Not ATentaNovamente;
               end;

            if dmPDV.GeraDuplicatasVenda(dsVendas.DataSet.FieldByName('id_venda').AsInteger) then
               dmPDV.BaixaDuplicatasVenda(dsVendas.DataSet.FieldByName('id_venda').AsInteger);

            dmPDV.GeraPontuacaoVenda(dsVendas.DataSet.FieldByName('id_venda').AsInteger);

            dsVendas.DataSet.Edit;
            // 0-Venda em antamento / 1-Aguardando Aprovação / 3-Aguardando Pagamento / 5-Finalizada / 8-Desistência / 9-Cancelada
            dsVendas.DataSet.FieldByName('status').AsString := '5';
            dsVendas.DataSet.Post;
            dsVendas.DataSet.DisableControls;
            dsVendas.DataSet.Close;
            dsVendas.DataSet.Open;
            dsVendas.DataSet.EnableControls;
            //Sleep(2500);
            frmObrigado.OcultaFormulario;
         end;
end;

procedure TfrmVendaRecebimento.ExecutaRecebimento(
  AID_Forma_Recebimento: Integer; AValorPadrao: Double; AValorMaximo: Double);
begin
   dlgRecebimentoValor := TdlgRecebimentoValor.Create(Self);
   try
      if dlgRecebimentoValor.Executa(dsFormas_Recebimentos.DataSet.FieldByName('descricao').AsString,
                                     AValorPadrao,
                                     AValorMaximo) then
         begin
            if dsFormas_Recebimentos.DataSet.FieldByName('tef').AsString = 'S' then
               begin
                  ModelTEF.ConfigurarTEF;
                  ModelTEF.ACBrTEFD1.Inicializar(TACBrTEFDTipo(dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger));
                  ModelTEF.StatusVenda := TStatusVenda.stsEmPagamento;
                  if not ExecutaTransacaoTEF(dsFormas_Recebimentos.DataSet.FieldByName('indice_tef').AsString,
                                             dlgRecebimentoValor.curredtValor.Value) then
                     Exit;

                  ModelTEF.ACBrTEFD1.Desinicializar(TACBrTEFDTipo(dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger));
               end;
            with dsVendas_Recebimentos do
               begin
                   DataSet.Append;
                   DataSet.FieldByName('id_transacao').AsInteger := AID_Forma_Recebimento;
                   if dsFormas_Recebimentos.DataSet.FieldByName('tef').AsString = 'S' then
                      begin
                         DataSet.FieldByName('nsu').AsString := ModelTEF.NSU;
                         DataSet.FieldByName('rede').AsString := ModelTEF.Rede;
                      end;
                   DataSet.FieldByName('valor_recebido').AsFloat := dlgRecebimentoValor.curredtValor.Value;
                   if dsVendas_Totais.DataSet.FieldByName('valor_receber').AsFloat < dlgRecebimentoValor.curredtValor.Value then
                      DataSet.FieldByName('valor_troco').AsFloat := dlgRecebimentoValor.curredtValor.Value - dsVendas_Totais.DataSet.FieldByName('valor_receber').AsFloat;
                   DataSet.Post;
               end;
         end;
   Finally
      dlgRecebimentoValor.Free;
   End;
end;

function TfrmVendaRecebimento.ExecutaTransacaoTEF(const Indice: String;
  AValor: Double): Boolean;
var
   ReajusteValor: Double;
   UltResp: TACBrTEFResp;
begin
   Result := False;
   with ModelTEF do
      begin
         PortaEmissorCupom := dsTerminais.DataSet.FieldByName('emissor_cupom').AsString;

         ConfigurarPosPrinter;

         IndicePagto := Indice;

         AtribuiDataSetTotais(dsVendas_Totais.DataSet);

         if ACBrTEFD1.GPAtual = gpPayGoWeb then
            ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.Clear
         else if ACBrTEFD1.GPAtual = gpCliSiTef then
                  ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 0;

         try
            // ** NOTA **
            // Usa '01' como Indice de Forma de Pagamento de ECF, para todas as operações TEF,
            // para evitar que o ACBrTEFD tente separar os Comprovantes por Forma de Pagamento

            if Indice = '02' then          // 02-CHEQUE
               begin
                  Result := ACBrTEFD1.CHQ(AValor, '01');
                   TemTEF := True;
               end
            else if Indice = '03' then     // 03-CREDITO
                    begin
                      InformarParametrosCartaoCredito;
                      Result := ACBrTEFD1.CRT(AValor, '01');
                       TemTEF := True;
                    end
            else if Indice = '04' then     // 04-DEBITO
                    begin
                       InformarParametrosCartaoDebito;
                       Result := ACBrTEFD1.CRT(AValor, '01');
                        TemTEF := True;
                    end
            else if Indice = '05' then    // 05-CARTEIRA DIGITAL
                    begin
                       fTestePayGo := 27;
                       InformarParametrosCarteiraDigital;
                       Result := ACBrTEFD1.CRT(AValor, '01');
                        TemTEF := True;
                    end
            else if Indice = '06' then    // 05-VALE REFEICAO
                    begin
                       InformarParametrosVoucher;
                       Result := ACBrTEFD1.CRT(AValor, '01');
                        TemTEF := True;
                    end;
         finally
            StatusVenda := TStatusVenda.stsEmPagamento;
         end;

         if TemTEF and
            (ACBrTEFD1.RespostasPendentes.Count > 0) then
            begin
               UltResp := ACBrTEFD1.RespostasPendentes[ACBrTEFD1.RespostasPendentes.Count - 1];
               NSU := UltResp.NSU;
               Rede := UltResp.Rede;
               RedeCNPJ := UltResp.NFCeSAT.CNPJCredenciadora;
               ReajusteValor := RoundTo(UltResp.ValorTotal - AValor, -2);
            end;

         StatusVenda := TStatusVenda.stsFinalizada;
         ACBrTEFD1.ImprimirTransacoesPendentes();
         ACBrTEFD1.ConfirmarTransacoesPendentes();
      end;
end;

procedure TfrmVendaRecebimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   dlgIdentificacaoDocumentoRFB.Free;
   dlgIdentificacaoCliente.Free;
end;

procedure TfrmVendaRecebimento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
   With dsVendas_Totais Do
      CanClose := (DataSet.FieldByName('valor_recebido').AsFloat = 0) Or
                  (DataSet.FieldByName('valor_receber').AsFloat <= 0);
end;

procedure TfrmVendaRecebimento.FormResize(Sender: TObject);
begin
   With barStatus Do
      Panels[0].Width := ClientWidth - (Panels[1].Width + Panels[2].Width + Panels[3].Width);
end;

procedure TfrmVendaRecebimento.FormShow(Sender: TObject);
begin
  inherited;
   dlgIdentificacaoCliente := TdlgIdentificacaoCliente.Create(Self);
   dlgIdentificacaoDocumentoRFB := TdlgIdentificacaoDocumentoRFB.Create(Self);
//   Align := alNone;
//   Align := alClient;
   CarregaTiposDeRecebimento;
   if ((dsVendas_Totais.DataSet.FieldByName('valor_recebido').AsFloat > 0) And
       (dsVendas_Totais.DataSet.FieldByName('valor_receber').AsFloat <= 0)) Or
      ((dsVendas_Totais.DataSet.FieldByName('valor_troca').AsFloat > 0) And
       (dsVendas_Totais.DataSet.FieldByName('valor_receber').AsFloat <= 0)) then
      begin
         ExecutaFechamentoVenda;
         PostMessage(Handle, WM_CLOSE, 0, 0);
      end;
   UpdateStatusBar;
   WindowState := wsMaximized;
end;

function TfrmVendaRecebimento.GeraDocumentoFiscal: Boolean;
var
   ANumeroLote,
   i: integer;
   OK: Boolean;
   ADescricaoProduto,
   AObservacao: TStrings;
   AAppInfo: TStringList;
   ADescricaoFonteTributos: String;
begin
   With dmComponentesACBr Do
      begin
         AObservacao := TStringList.Create;
         ADescricaoProduto := TStringList.Create;
         try
            // Versão do arquivo XML a ser gerado
            ACBrNFe1.Configuracoes.Geral.VersaoDF := StrToVersaoDF(ok, IfThen(dsTerminais.DataSet.FieldByName('versao_xml').AsString = '1', '3.10', '4.00'));
            // Versão do QR-Code
            ACBrNFe1.Configuracoes.Geral.VersaoQRCode := StrToVersaoQrCode(ok, dsTerminais.DataSet.FieldByName('versao_qrcode').AsString);

            ACBrNFe1.NotasFiscais.Clear;
            with ACBrNFe1.NotasFiscais.Add.NFe do
               begin
                  Ide.cNF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_nota_fiscal').AsInteger; // Caso não seja preenchido será gerado um número aleatório pelo componente
                  Ide.natOp := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('natureza_operacao').AsString;
                  Ide.indPag := StrToIndpag(OK, dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString); // ipVista;
                  Ide.modelo := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger; // 55
                  Ide.serie := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('serie_nota').AsInteger; // 1;
                  Ide.nNF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('numero').AsInteger;

                  if Ide.modelo = 65 {Ide.tpImp = tiNFCe} then
                     begin
                        Ide.dEmi := dmConexao.GetCurrentDateTime;
//                        Ide.dSaiEnt := dmConexao.GetCurrentDateTime;
//                        Ide.hSaiEnt := Ide.dEmi;
                     end
                  Else
                     begin
                        Ide.dEmi := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime;
                        Ide.dSaiEnt := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_movimento').AsDateTime;
                        Ide.hSaiEnt := StrToDateTime(FormatDateTime('dd/mm/yyyy', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_movimento').AsDateTime) + ' ' +
                           dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('hora_movimento').AsString);
                     end;

                  // Ide.tpNF := tnSaida;
                  Ide.tpNF := StrToTpNF(OK, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_nota').AsString = 'E', '0', '1'));
                  // Ide.tpEmis := teNormal;
                  Ide.tpEmis := StrToTpEmis(OK, dsTerminais.DataSet.FieldByName('dfe_forma_emissao').AsString);

                  if Ide.tpEmis = teContingencia then
                     begin
                        Ide.dhCont := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime;
                        if Trim(dsTerminais.DataSet.FieldByName('contingencia_motivo').AsString) <> '' then
                           Ide.xJust  := dsTerminais.DataSet.FieldByName('contingencia_motivo').AsString
                        Else
                           Ide.xJust  := 'AMBIENTE LOCAL: SEM CONEXÃO COM A INTERNET';
                     end;

                  // Ide.tpAmb := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
                  // 1-Produção / 2-Homologação
                  Ide.tpAmb := StrToTpAmb(OK, IntToStr(dsTerminais.DataSet.FieldByName('ws_ambiente').AsInteger + 1));
                  Ide.procEmi := StrToprocEmi(OK, '0'); // 0 - emissão de NF-e com aplicativo do contribuinte;
                  Ide.verProc := VersaoEXE(Application.ExeName);
                  (*
                    aAppInfo := TStringList.Create;
                    try
                    if FileVerInfo(Application.ExeName, aAppInfo) then
                    Ide.verProc := aAppInfo[7]; // Versão do seu sistema
                    finally
                    aAppInfo.Free;
                    end;
                  *)
                  Ide.cUF := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_estado_emitente').AsString); // NotaUtil.UFtoCUF(qryNFe.FieldByName('SIGLA_UF_LOCAL').AsString);
                  Ide.cMunFG := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_cidade_emitente').AsString);
                  Ide.finNFe := StrToFinNFe(OK, dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_finalidade_emissao').AsString);
                  Ide.tpImp := StrToTpImp(OK, dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString);

                  if Not dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.IsEmpty then
                     begin
                        dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.First;
                        while Not dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.Eof do
                           begin
                              // Para NFe referenciada use os campos abaixo
                              with Ide.NFref.Add do
                                 begin
                                    //NFe Eletronica
                                    if (dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.FieldByName('id_modelo').AsString = '55') Or
                                       (dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.FieldByName('id_modelo').AsString = '65') then
                                       refNFe := dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.FieldByName('chave').AsString;
                                    {
                                    RefNF.cUF    := 0;  // |
                                    RefNF.AAMM   := ''; // |
                                    RefNF.CNPJ   := ''; // |
                                    RefNF.modelo := 1;  // |- NFe Modelo 1/1A
                                    RefNF.serie  := 1;  // |
                                    RefNF.nNF    := 0;  // |

                                    RefNFP.cUF     := 0;  // |
                                    RefNFP.AAMM    := ''; // |
                                    RefNFP.CNPJCPF := ''; // |
                                    RefNFP.IE      := ''; // |- NF produtor Rural
                                    RefNFP.modelo  := ''; // |
                                    RefNFP.serie   := 1;  // |
                                    RefNFP.nNF     := 0;  // |

                                    RefECF.modelo  := ECFModRef2B; // |
                                    RefECF.nECF    := '';          // |- Cupom Fiscal
                                    RefECF.nCOO    := '';          // |
                                    }
                                 end;
                              dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.Next;
                           end;
                     end;

                  Emit.CNPJCPF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnpj_emitente').AsString;
                  Emit.IE := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_emitente').AsString;
                  Emit.xNome := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_emitente').AsString;
                  Emit.xFant := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('fantasia_emitente').AsString;
                  Emit.EnderEmit.fone := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('telefone_emitente').AsString;
                  Emit.EnderEmit.CEP := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cep_emitente').AsString);
                  Emit.EnderEmit.xLgr := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('logradouro_emitente').AsString;
                  Emit.EnderEmit.nro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('numero_emitente').AsString;
                  Emit.EnderEmit.xCpl := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('complemento_emitente').AsString;
                  Emit.EnderEmit.xBairro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('bairro_emitente').AsString;
                  Emit.EnderEmit.cMun := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_cidade_emitente').AsString);
                  Emit.EnderEmit.xMun := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_cidade_emitente').AsString;
                  Emit.EnderEmit.UF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_emitente').AsString;
                  Emit.EnderEmit.cPais := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_emitente').AsString);
                  Emit.EnderEmit.xPais := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_pais_emitente').AsString;
                  Emit.IEST := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_est_subst_emitente').AsString;
                  Emit.IM := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_municipal_emitente').AsString; // Preencher no caso de existir serviços na nota
                  Emit.CNAE := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnae_fiscal_emitente').AsString; // Verifique na cidade do emissor da NFe se é permitido
                  // a inclusão de serviços na NFe
                  Emit.CRT := StrToCRT(OK, IntToStr(StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('regime_tributario_emitente').AsString) + 1)); // crtRegimeNormal;

                  if Ide.tpAmb = taHomologacao then
                     begin
                        //ACBrNFe1.Configuracoes.Geral.IdToken := '000001';
                        ACBrNFe1.Configuracoes.Geral.CSC := '000001';
                        //ACBrNFe1.Configuracoes.Geral.Token := Copy(Emit.CNPJCPF, 1, 8)+ IntToStr(YearOf(qryNFe.FieldByName('data_movimento').AsDateTime))+'0001';
                        ACBrNFe1.Configuracoes.Geral.idCSC := Copy(Emit.CNPJCPF, 1, 8)+ IntToStr(YearOf(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_movimento').AsDateTime))+'0001';
                     end;

                  // Para NFe Avulsa preencha os campos abaixo
                  { Avulsa.CNPJ    := '';
                    Avulsa.xOrgao  := '';
                    Avulsa.matr    := '';
                    Avulsa.xAgente := '';
                    Avulsa.fone    := '';
                    Avulsa.UF      := '';
                    Avulsa.nDAR    := '';
                    Avulsa.dEmi    := now;
                    Avulsa.vDAR    := 0;
                    Avulsa.repEmi  := '';
                    Avulsa.dPag    := now; }

                     //Dest.CNPJCPF := IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'F', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cpf_destinatario').AsString,
                     //   dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnpj_destinatario').AsString);

                  Dest.CNPJCPF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('documento_rfb_numero').AsString;
                  Dest.IE := IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'J', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_destinatario').AsString);
                  if dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'F' then
                     Dest.indIEDest := inNaoContribuinte
                  Else
                     if (Trim(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_destinatario').AsString) = '') Or
                        (Trim(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_destinatario').AsString) = 'ISENTO') then
                        Dest.indIEDest := inIsento
                     Else
                        Dest.indIEDest := inContribuinte;

                  Dest.ISUF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_suframa_destinatario').AsString;
                  Dest.xNome := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_destinatario').AsString;

                  if Ide.modelo <> 65 then
                     begin
                        Dest.EnderDest.xLgr := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('logradouro_entrega_destinatario').AsString;
                        Dest.EnderDest.nro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('numero_entrega_destinatario').AsString;
                        Dest.EnderDest.xCpl := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('complemento_entrega_destinatario').AsString;
                        Dest.EnderDest.xBairro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('bairro_entrega_destinatario').AsString;
                        if Trim(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cep_entrega_destinatario').AsString) <> '' then
                           Dest.EnderDest.CEP := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cep_entrega_destinatario').AsString);
                        Dest.EnderDest.cMun := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_cidade_entrega_destinatario').AsString);
                        Dest.EnderDest.xMun := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_cidade_entrega_destinatario').AsString;
                        Dest.EnderDest.UF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_entrega_destinatario').AsString;
                        Dest.EnderDest.cPais := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_entrega_destinatario').AsString);
                        Dest.EnderDest.xPais := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_pais_entrega_destinatario').AsString;
                        Dest.EnderDest.fone := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('telefone_destinatario').AsString;
                     end;

                  // 0 - cfNao, 1 - cfConsumidorFinal
                  Ide.indFinal  := StrToConsumidorFinal(OK, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'F', '1', '0'));
                  // 0 - pcNao, 1 - pcPresencial, 2 - pcInternet, 3 - pcTeleatendimento, 4 - pcEntregaDomicilio, 9 - pcOutros
                  Ide.indPres   := StrToPresencaComprador(ok, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'F', '1', '0'));
                  //Ide.idDest := StrToDestinoOperacao(ok, '1');
                  Ide.idDest := StrToDestinoOperacao(ok, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_emitente').AsString <> dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_entrega_destinatario').AsString, '3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_emitente').AsString = dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_entrega_destinatario').AsString, '1', '2')));

                  // Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
                  { Retirada.CNPJCPF := '';
                    Retirada.xLgr    := '';
                    Retirada.nro     := '';
                    Retirada.xCpl    := '';
                    Retirada.xBairro := '';
                    Retirada.cMun    := 0;
                    Retirada.xMun    := '';
                    Retirada.UF      := ''; }

                  // Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
                  { Entrega.CNPJCPF := '';
                    Entrega.xLgr    := '';
                    Entrega.nro     := '';
                    Entrega.xCpl    := '';
                    Entrega.xBairro := '';
                    Entrega.cMun    := 0;
                    Entrega.xMun    := '';
                    Entrega.UF      := ''; }

                  // Adicionando Produtos

                  Total.ICMSTot.vBC := 0;
                  Total.ICMSTot.vICMS := 0;
                  Total.ICMSTot.vProd := 0;
                  Total.ICMSTot.vBCST := 0;
                  Total.ICMSTot.vST := 0;

                  dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.First;
                  while not dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.Eof do
                     begin
                        aDescricaoProduto.Clear;
                        aDescricaoProduto.Assign(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('descricao'));
                        aDescricaoProduto.Text := StringReplace(aDescricaoProduto.Text, ';', #13, [rfReplaceAll]);

                        with Det.Add do
                           begin
                              Prod.nItem := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('item').AsInteger; // Número sequencial, para cada item deve ser incrementado
                              Prod.cProd := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_barras').AsString;

                              if LeftStr(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_barras').AsString, 3) = '789' then
                                 Prod.cEAN := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_barras').AsString
                              else
                                 Prod.cEAN := 'SEM GTIN';

                              Prod.cEANTrib := Prod.cEAN;

                              infAdProd := '';
                              if aDescricaoProduto.Count > 0 Then
                                 begin
                                    Prod.xProd := Trim(aDescricaoProduto[0]);
                                    for i := 1 to aDescricaoProduto.Count - 1 do
                                       begin
                                          If infAdProd <> '' Then
                                             infAdProd := infAdProd + ';';
                                          infAdProd := infAdProd + Trim(aDescricaoProduto[i]);
                                       end;
                                 end;
                              Prod.NCM := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_ncm').AsString; // Tabela NCM disponível em
                              Prod.CEST := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cest').AsString;
                              Prod.EXTIPI := '';
                              Prod.CFOP := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cfop').AsString;
                              Prod.uCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('sigla_unidade').AsString;

                              if (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('pesavel').AsString = 'S') And
                                 (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat > 0) then
                                 Prod.qCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat
                              else
                                 Prod.qCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('quantidade').AsFloat;

                              Prod.vUnCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat;

                              if (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('pesavel').AsString = 'S') And
                                 (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat > 0) then
                                 Prod.vProd := RoundTo((dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat * dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat) {+ qryNFe_Produtos.FieldByName('valor_acrescimo').AsFloat - qryNFe_Produtos.FieldByName('valor_desconto').AsFloat}, -2)
                              else
                                 Prod.vProd := RoundTo((dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat * dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('quantidade').AsFloat) {+ qryNFe_Produtos.FieldByName('valor_acrescimo').AsFloat - qryNFe_Produtos.FieldByName('valor_desconto').AsFloat}, -2);

                              Prod.uTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('sigla_unidade').AsString;

                              if (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('pesavel').AsString = 'S') And
                                 (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat > 0) then
                                 Prod.qTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat
                              else
                                 Prod.qTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('quantidade').AsFloat;

                              Prod.vUnTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat;

                              {
                              Prod.vUnCom := qryNFe_Produtos.FieldByName('preco_unitario').AsFloat;

                              // Prod.cEANTrib := qryNFe_Produtos.FieldByName('codigo_ean13').AsString;

                              if Prod.uTrib = 'KG' then
                                 Prod.vUnTrib := RoundTo(qryNFe_Produtos.FieldByName('preco_unitario').AsFloat * qryNFe_Produtos.FieldByName('peso_bruto')
                                    .AsFloat, -2)
                              else
                                 Prod.vUnTrib := qryNFe_Produtos.FieldByName('preco_unitario').AsFloat * qryNFe_Produtos.FieldByName('quantidade').AsFloat;
                              }
                              Prod.vFrete := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_frete').AsFloat;
                              Prod.vSeg := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_seguro').AsFloat;
                              Prod.vDesc := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_desconto').AsFloat;
                              Prod.vOutro := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_acrescimo').AsFloat;

                              if Trim(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('referencia').AsString) <> '' then
                                 begin
                                    if infAdProd <> '' then
                                       infAdProd := infAdProd + ' ';
                                    infAdProd := infAdProd + 'REF.: ' + dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('referencia').AsString;
                                 end;

                              if Trim(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('numero_serie').AsString) <> '' then
                                 begin
                                    if infAdProd <> '' then
                                       infAdProd := infAdProd + ' ';
                                    infAdProd := infAdProd + 'N/S: ' + dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('numero_serie').AsString;
                                 end;

                              // Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
                              { with Prod.DI.Add do
                                begin
                                nDi         := '';
                                dDi         := now;
                                xLocDesemb  := '';
                                UFDesemb    := '';
                                dDesemb     := now;
                                cExportador := '';

                                with adi.Add do
                                begin
                                nAdicao     := 1;
                                nSeqAdi     := 1;
                                cFabricante := '';
                                vDescDI     := 0;
                                end;
                                end;
                              }
                              // Campos para venda de veículos novos
                              { with Prod.veicProd do
                                begin
                                tpOP    := toVendaConcessionaria;
                                chassi  := '';
                                cCor    := '';
                                xCor    := '';
                                pot     := '';
                                Cilin   := '';
                                pesoL   := '';
                                pesoB   := '';
                                nSerie  := '';
                                tpComb  := '';
                                nMotor  := '';
                                CMT     := '';
                                dist    := '';
                                RENAVAM := '';
                                anoMod  := 0;
                                anoFab  := 0;
                                tpPint  := '';
                                tpVeic  := 0;
                                espVeic := 0;
                                VIN     := '';
                                condVeic := cvAcabado;
                                cMod    := '';
                                end;
                              }
                              // Campos específicos para venda de medicamentos
                              { with Prod.med.Add do
                                begin
                                nLote := '';
                                qLote := 0 ;
                                dFab  := now ;
                                dVal  := now ;
                                vPMC  := 0 ;
                                end; }
                              // Campos específicos para venda de armamento
                              { with Prod.arma.Add do
                                begin
                                nSerie := 0;
                                tpArma := taUsoPermitido ;
                                nCano  := 0 ;
                                descr  := '' ;
                                end; }
                              // Campos específicos para venda de combustível(distribuidoras)
                              { with Prod.comb do
                                begin
                                cProdANP := 0;
                                CODIF    := '';
                                qTemp    := 0;

                                CIDE.qBCprod   := 0 ;
                                CIDE.vAliqProd := 0 ;
                                CIDE.vCIDE     := 0 ;

                                ICMS.vBCICMS   := 0 ;
                                ICMS.vICMS     := 0 ;
                                ICMS.vBCICMSST := 0 ;
                                ICMS.vICMSST   := 0 ;

                                ICMSInter.vBCICMSSTDest := 0 ;
                                ICMSInter.vICMSSTDest   := 0 ;

                                ICMSCons.vBCICMSSTCons := 0 ;
                                ICMSCons.vICMSSTCons   := 0 ;
                                ICMSCons.UFcons        := '' ;
                                end; }

                              with Imposto do
                                 begin
                                    if Emit.CRT = crtSimplesNacional then
                                       begin
                                          // lei da transparencia nos impostos
                                          vTotTrib := 0;

                                          ICMS.orig := StrToOrig(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('origem').AsString);
                                          ICMS.CSOSN := StrToCSOSNIcms(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('csosn').AsString);
                                          ICMS.pCredSN := 0;
                                          ICMS.vCredICMSSN := 0;
                                       end
                                    else
                                       begin
                                          // lei da transparencia nos impostos
                                          vTotTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_tributos_federais').AsFloat +
                                                      dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_tributos_estaduais').AsFloat +
                                                      dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_tributos_municipais').AsFloat;

                                          with ICMS do
                                             begin
                                                CST := StrToCSTICMS(OK, Copy(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('st').AsString, 2, 2));
                                                ICMS.orig := StrToOrig(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('origem').AsString);
                                                ICMS.modBC := dbiValorOperacao;
                                                ICMS.vBC := RoundTo(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('base_icms').AsFloat, -2);
                                                ICMS.pICMS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_icms').AsFloat;
                                                ICMS.vICMS :=
                                                   RoundTo((dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('base_icms').AsFloat * dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_icms').AsFloat)
                                                   / 100, -2);
                                                ICMS.modBCST := dbisMargemValorAgregado;
                                                ICMS.pMVAST := 0;
                                                ICMS.pRedBCST := 0;
                                                ICMS.vBCST := 0;
                                                ICMS.pICMSST := 0;
                                                ICMS.vICMSST := 0;
                                                ICMS.pRedBC := 0;
                                             end;
                                       end;

                                    if ICMS.orig in [oeEstrangeiraImportacaoDireta, oeEstrangeiraAdquiridaBrasil] then
                                       begin
                                          with PIS do
                                             begin
                                                CST := StrToCSTPIS(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cst_pis').AsString);
                                                PIS.vBC := Prod.vProd - ICMS.vICMS;
                                                PIS.pPIS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_pis').AsFloat;
                                                PIS.vPIS := PIS.vBC * PIS.pPIS / 100;
                                                PIS.qBCProd := 0;
                                                PIS.vAliqProd := 0;
                                             end;

                                          with PISST do
                                             begin
                                                vBC := 0;
                                                pPIS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vPIS := 0;
                                             end;

                                          with COFINS do
                                             begin
                                                CST := StrToCSTCOFINS(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cst_cofins').AsString);;
                                                COFINS.vBC := Prod.vProd - ICMS.vICMS;
                                                COFINS.pCOFINS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_cofins').AsFloat;
                                                COFINS.vCOFINS := COFINS.vBC * COFINS.pCOFINS / 100;
                                                COFINS.qBCProd := 0;
                                                COFINS.vAliqProd := 0;
                                             end;

                                          with COFINSST do
                                             begin
                                                vBC := 0;
                                                pCOFINS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vCOFINS := 0;
                                             end;
                                       end
                                    Else
                                       begin
                                          with PIS do
                                             begin
                                                CST := StrToCSTPIS(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cst_pis').AsString);
                                                PIS.vBC := Prod.vProd - ICMS.vICMS;
                                                PIS.pPIS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_pis').AsFloat;
                                                PIS.vPIS := PIS.vBC * PIS.pPIS / 100;
                                                PIS.qBCProd := 0;
                                                PIS.vAliqProd := 0;
                                             end;

                                          with PISST do
                                             begin
                                                vBC := 0;
                                                pPIS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vPIS := 0;
                                             end;

                                          with COFINS do
                                             begin
                                                CST := StrToCSTCOFINS(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cst_cofins').AsString);;
                                                COFINS.vBC := Prod.vProd - ICMS.vICMS;
                                                COFINS.pCOFINS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_cofins').AsFloat;
                                                COFINS.vCOFINS := COFINS.vBC * COFINS.pCOFINS / 100;
                                                COFINS.qBCProd := 0;
                                                COFINS.vAliqProd := 0;
                                             end;

                                          with COFINSST do
                                             begin
                                                vBC := 0;
                                                pCOFINS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vCOFINS := 0;
                                             end;

                                       end;

                                    // Totalizando
                                    Total.ICMSTot.vBC := Total.ICMSTot.vBC + ICMS.vBC;
                                    Total.ICMSTot.vICMS := Total.ICMSTot.vICMS + ICMS.vICMS;

                                    // Grupo para serviços
                                    { with ISSQN do
                                      begin
                                      vBC       := 0;
                                      vAliq     := 0;
                                      vISSQN    := 0;
                                      cMunFG    := 0;
                                      cListServ := 0; // Preencha este campo usando a tabela disponível
                                      // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
                                      end; }

                                 end;
                              Total.ICMSTot.vProd := Total.ICMSTot.vProd + Prod.vProd;
                           end;
                        dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.Next;
                     end;

                  // Total.ICMSTot.vBC := 0;
                  // Total.ICMSTot.vICMS := 0;
                  // Total.ICMSTot.vBCST := 0;
                  // Total.ICMSTot.vST := 0;

                  Total.ICMSTot.vFrete := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_frete').AsFloat;
                  Total.ICMSTot.vSeg := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_seguro').AsFloat;
                  Total.ICMSTot.vDesc := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_desconto').AsFloat;
                  Total.ICMSTot.vII := 0;
                  Total.ICMSTot.vIPI := 0;
                  Total.ICMSTot.vPIS := 0;
                  Total.ICMSTot.vCOFINS := 0;
                  Total.ICMSTot.vOutro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_acrescimo').AsFloat;
                  Total.ICMSTot.vNF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat +
                                       dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_frete').AsFloat +
                                       dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_seguro').AsFloat;

                  // lei da transparencia de impostos
                  if Emit.CRT = crtSimplesNacional then
                     Total.ICMSTot.vTotTrib := 0
                  Else
                     Total.ICMSTot.vTotTrib := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_federais').AsFloat +
                                               dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_estaduais').AsFloat +
                                               dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_municipais').AsFloat;

                  Total.ISSQNtot.vServ := 0;
                  Total.ISSQNtot.vBC := 0;
                  Total.ISSQNtot.vISS := 0;
                  Total.ISSQNtot.vPIS := 0;
                  Total.ISSQNtot.vCOFINS := 0;

                  Total.retTrib.vRetPIS := 0;
                  Total.retTrib.vRetCOFINS := 0;
                  Total.retTrib.vRetCSLL := 0;
                  Total.retTrib.vBCIRRF := 0;
                  Total.retTrib.vIRRF := 0;
                  Total.retTrib.vBCRetPrev := 0;
                  Total.retTrib.vRetPrev := 0;

                  Transp.modFrete := StrTomodFrete(OK, IntToStr(IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('modalidade_frete').AsString = '9',
                     StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('modalidade_frete').AsString), StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('modalidade_frete').AsString) - 1))); // mfContaEmitente;
                  Transp.Transporta.CNPJCPF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnpj_transportador').AsString;
                  Transp.Transporta.xNome := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_transportador').AsString;
                  Transp.Transporta.IE := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_transportador').AsString;
                  Transp.Transporta.xEnder := '';
                  Transp.Transporta.xMun := '';
                  Transp.Transporta.UF := '';

                  Transp.retTransp.vServ := 0;
                  Transp.retTransp.vBCRet := 0;
                  Transp.retTransp.pICMSRet := 0;
                  Transp.retTransp.vICMSRet := 0;
                  Transp.retTransp.CFOP := '';
                  Transp.retTransp.cMunFG := 0;

                  Transp.veicTransp.placa := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('placa').AsString;
                  Transp.veicTransp.UF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_placa').AsString;
                  Transp.veicTransp.RNTC := '';
                  // Dados do Reboque
                  { with Transp.Reboque.Add do
                    begin
                    placa := '';
                    UF    := '';
                    RNTC  := '';
                    end; }

                  with Transp.Vol.Add do
                     begin
                        qVol := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('quantidade').AsInteger;
                        esp := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('especie').AsString;
                        marca := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('marca').AsString;
                        nVol := '';
                        pesoL := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('peso_liquido').AsFloat;
                        pesoB := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('peso_bruto').AsFloat;

                        // Lacres do volume. Pode ser adicionado vários
                        // Lacres.Add.nLacre := '';
                     end;

                  dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.First;
                  if not dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.IsEmpty then
                     begin
                        Cobr.Fat.nFat := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('fatura').AsString;
                        Cobr.Fat.vOrig := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_bruto').AsFloat;
                        Cobr.Fat.vDesc := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_desconto').AsFloat;
                        Cobr.Fat.vLiq := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat;
                        while not dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.Eof do
                           begin
                              with Cobr.Dup.Add do
                                 begin
                                    nDup := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('xduplicata').AsString;
                                    dVenc := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('data_vencimento').AsDateTime;
                                    vDup := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('valor_parcela').AsFloat;
                                 end;
                              dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.Next;
                           end;
                     end;

                  if not dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.IsEmpty then
                     begin
                        dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.First;
                        while Not dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.Eof do
                           begin
                              with pag.Add do //PAGAMENTOS apenas para NFC-e
                                 begin
                                    // fpDinheiro, fpCheque, fpCartaoCredito, fpCartaoDebito, fpCreditoLoja,
                                    // fpValeAlimentacao, fpValeRefeicao, fpValePresente, fpValeCombustivel,
                                    // fpOutro
                                    // tPag := fpDinheiro;
                                    // '01', '02', '03', '04', '05', '10', '11', '12', '13', '99'
                                    tPag := StrToFormaPagamento(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.FieldByName('id_forma_pagamento').AsString);
                                    if tPag = TpcnFormaPagamento.fpOutro then
                                       xPag := dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.FieldByName('descricao_transacao').AsString;
                                    vPag := dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.FieldByName('valor_recebido').AsFloat;
                                 end;
                              pag.vTroco := dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.FieldByName('valor_troco').AsFloat;
                              dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.Next;
                           end;
                     end;

                  InfAdic.infCpl := '';
                  InfAdic.infAdFisco := '';
                  aObservacao.Clear;
                  aObservacao.Assign(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('informacoes_adicionais'));
                  if aObservacao.Count > 0 then
                     for i := 0 to aObservacao.Count - 1 do
                        begin
                           if InfAdic.infCpl <> '' then
                              InfAdic.infCpl := InfAdic.infCpl + ';';
                           InfAdic.infCpl := InfAdic.infCpl + aObservacao[i];
                        end;

                  if Emit.CRT = crtSimplesNacional then
                     begin
                        if InfAdic.infCpl <> '' then
                           InfAdic.infCpl := InfAdic.infCpl + ';';
                        InfAdic.infCpl := InfAdic.infCpl +
                           'Documento emitido por ME ou por EPP optante do Simples Nacional. Não gera direito de crédito fiscal do IPI.';
                        If Total.ICMSTot.vTotTrib > 0 Then
                           begin
                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              InfAdic.infCpl := InfAdic.infCpl +
                                                'Valor aproximado do imposto: ' +
                                                FormatFloat('R$ #,##0.00', Total.ICMSTot.vTotTrib) +
                                                ' (' +
                                                FormatFloat('##0.00 %', Total.ICMSTot.vTotTrib / Total.ICMSTot.vNF * 100) +
                                                ')';
                           end;
                     end
                  Else
                     begin
                        If (Ide.modelo = 55) And (Total.ICMSTot.vTotTrib > 0) Then
                           begin
                              ADescricaoFonteTributos := dmFiscal.GetIBPTDescricaoFonte(Ide.dEmi);
                              if ADescricaoFonteTributos <> '' then
                                 ADescricaoFonteTributos := 'Fonte: ' +
                                                            ADescricaoFonteTributos;

                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              InfAdic.infCpl := InfAdic.infCpl +
                                                'Valor aproximado dos tributos(Lei 12.741/2012 - Lei da Transparência Fiscal):;' +
                                                'Federais: ' +
                                                FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_federais').AsFloat) +
                                                ' (' +
                                                FormatFloat('##0.00 %', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_federais').AsFloat / Total.ICMSTot.vNF * 100) +
                                                '), ' +
                                                'Estaduais: ' +
                                                FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_estaduais').AsFloat) +
                                                ' (' +
                                                FormatFloat('##0.00 %', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_estaduais').AsFloat / Total.ICMSTot.vNF * 100) +
                                                '), ' +
                                                'Municipais: ' +
                                                FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_municipais').AsFloat) +
                                                ' (' +
                                                FormatFloat('##0.00 %', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_municipais').AsFloat / Total.ICMSTot.vNF * 100) +
                                                ');' +
                                                ADescricaoFonteTributos;
                           end;

                        If dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('aliquota_pis').AsFloat > 0 Then
                           begin
                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              //InfAdic.infCpl := InfAdic.infCpl + 'Valor aproximado dos tributos(PIS): ' + FormatFloat('R$ #,##0.00', RoundTo((Total.ICMSTot.vNF * qryNFe.FieldByName('aliquota_pis').AsFloat) / 100, -2)) + ' ('+ FormatFloat('##0.00 %', qryNFe.FieldByName('aliquota_pis').AsFloat) + ')';
                           end;

                        If dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('aliquota_cofins').AsFloat > 0 Then
                           begin
                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              //InfAdic.infCpl := InfAdic.infCpl + 'Valor aproximado dos tributos(COFINS): ' + FormatFloat('R$ #,##0.00', RoundTo((Total.ICMSTot.vNF * qryNFe.FieldByName('aliquota_cofins').AsFloat) / 100, -2)) + ' ('+ FormatFloat('##0.00 %', qryNFe.FieldByName('aliquota_cofins').AsFloat) + ')';
                           end;
                     end;

                  // with InfAdic.obsCont.Add do
                  // begin
                  // xCampo := IntToStr(i + 1) + '-';
                  // xTexto := aObservacao[i];
                  // end;
                  // with InfAdic.obsFisco.Add do
                  // begin
                  // xCampo := 'ObsFisco';
                  // xTexto := '';
                  // end;
                  // Processo referenciado
                  { with InfAdic.procRef.Add do
                    begin
                    nProc := '';
                    indProc := ipSEFAZ;
                    end; }

                  exporta.UFembarq := '';;
                  exporta.xLocEmbarq := '';

                  compra.xNEmp := '';
                  compra.xPed := '';
                  compra.xCont := '';
                  // Dados DO Responsável Técnico
                  infRespTec.idCSRT   := 0;
                  infRespTec.CNPJ     := '08861369000109';
                  infRespTec.xContato := 'Marcio Roberto Leal Ferreira'; // Nome DO responsável técnico
                  infRespTec.email    := 'marcio.sistemas@gmail.com';
                  infRespTec.fone     := '92981218618';
               end;
         finally
            aDescricaoProduto.Free;
            aObservacao.Free;
         end;

         ACBrNFe1.NotasFiscais.GerarNFe;
         Result := ACBrNFe1.NotasFiscais.Items[0].Alertas = '';
         if Not Result then
            Erro('Erro ao Validar NF-e:'#13 + ACBrNFe1.NotasFiscais.Items[0].Alertas)
         else
            begin
               Result := ACBrNFe1.NotasFiscais.Items[0].GravarXML();
               If Result Then
                  begin
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Edit;
                     dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString := '1';
                     dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('chave').AsString := RightStr(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 44);
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Post;
                     ACBrNFe1.NotasFiscais.Assinar;
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Edit;
                     dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString := '2';
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Post;
                     Result := ACBrNFe1.WebServices.StatusServico.Executar;
                     if Result then
                        begin
                           ANumeroLote := dmDocumentosFiscais.GeraSequenciaLoteDocumentoFiscal(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_emitente').AsInteger);
                           // Enviando Lote
                           Result := ACBrNFe1.Enviar(aNumeroLote, False);
                           if Result then
                              if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat = 100 then
                                 begin
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.Edit;
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString := '5';
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('lote').AsString := StrZero(IntToStr(aNumeroLote), 15);
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('recibo').AsString := ACBrNFe1.WebServices.Retorno.Recibo;
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('protocolo_autorizacao').AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.Post;

//                                    If dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65 Then
//                                       ACBrNFeDANFEFR1.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfce').AsString
//                                    Else
//                                      ACBrNFeDANFEFR1.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfe').AsString;
//
//                                    ACBrNFeDANFEFR1.TextoResumoCanhoto := 'Emissão:' + FormatDateTime('dd/mm/yyyy', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime) + ' ' +
//                                       'Dest/Reme: ' + dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_destinatario').AsString + ' ' + 'Valor Total: ' +
//                                       FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat) + ' ' + 'Cond.: ' +
//                                       IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '0', 'Pagamento à Vista', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '1',
//                                       'Pagamento à Prazo', 'Outros'));
//
//                                    ACBrNFeDANFEFR1.Cancelada := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString = '9';
//
//                                    ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
//                                                                'Reports\' +
//                                                                IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));
//                                    if ACBrNFe1.DANFE <> nil then
//                                       begin
//                                          ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK, IntToStr(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsInteger + 1));
//                                          if FileExists(dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString) then
//                                             ACBrNFe1.DANFE.Logo := dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString;
//                                          ACBrNFe1.DANFE.ExpandeLogoMarca := dsTerminais.DataSet.FieldByName('danfe_logomarca_expandir').AsString = 'S';
//                                          ACBrNFe1.DANFE.MostraPreview := False;
//                                       end;

                                    if dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 55 then
                                       begin
                                          ACBrNFeDANFEFR1.TextoResumoCanhoto := 'Emissão:' + FormatDateTime('dd/mm/yyyy', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime) + ' ' +
                                             'Dest/Reme: ' + dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_destinatario').AsString + ' ' + 'Valor Total: ' +
                                             FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat) + ' ' + 'Cond.: ' +
                                             IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '0', 'Pagamento à Vista', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '1',
                                             'Pagamento à Prazo', 'Outros'));

                                          ACBrNFeDANFEFR1.Cancelada := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString = '9';

                                          ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                                      'Reports\' +
                                                                      IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3'));
                                                                      //IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));

                                          ACBrNFeDANFEFR1.Sistema := Application.Title;
                                          ACBrNFeDANFEFR1.Usuario := dsOperadores.DataSet.FieldByName('nome').AsString;
                                          ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
                                       end
                                    else
                                       begin
                                          ACBrNFeDANFCEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                                       'Reports\' +
                                                                       IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3');
                                                                       //IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));
                                          ACBrNFeDANFCEFR1.Sistema := Application.Title;
                                          ACBrNFeDANFCEFR1.Usuario := dsOperadores.DataSet.FieldByName('nome').AsString;
                                          ACBrNFe1.DANFE := ACBrNFeDANFCEFR1;
                                       end;

                                    if ACBrNFe1.DANFE <> nil then
                                       begin
                                          If dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65 Then
                                             ACBrNFe1.DANFE.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfce').AsString
                                          Else
                                            ACBrNFe1.DANFE.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfe').AsString;
                                          ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK, IntToStr(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsInteger + 1));
                                          if FileExists(dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString) then
                                             ACBrNFe1.DANFE.Logo := dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString;
                                          ACBrNFe1.DANFE.ExpandeLogoMarca := dsTerminais.DataSet.FieldByName('danfe_logomarca_expandir').AsString = 'S';
                                          // Decimais dos Campos
                                          ACBrNFe1.DANFE.CasasDecimais.qCom := 3;
                                          ACBrNFe1.DANFE.CasasDecimais.vUnCom := 2;
                                          ACBrNFe1.DANFE.MostraPreview := False;
                                          ACBrNFe1.DANFE.MostraStatus := False;
                                          ACBrNFe1.DANFE.MostraSetup := False;
                                          ACBrNFe1.NotasFiscais.Imprimir;
                                       end;

                                 end;
                        end;
                  end;
            end;
      end;
end;

procedure TfrmVendaRecebimento.SelecionaFormaDeRecebimento(AId_Terminal: Integer;
  AId_Botao: SmallInt);
begin
   dlgFormasRecebimentos := TdlgFormasRecebimentos.Create(Self);
   try
      If dlgFormasRecebimentos.Seleciona(AId_Terminal, AId_Botao) Then
         if dsFormas_Recebimentos.DataSet.FieldByName('troco').AsString = 'S' then
            ExecutaRecebimento(dsFormas_Recebimentos.DataSet.FieldByName('id_transacao').AsInteger)
         else
            ExecutaRecebimento(dsFormas_Recebimentos.DataSet.FieldByName('id_transacao').AsInteger,
                               dsVendas_Totais.DataSet.FieldByName('valor_receber').AsFloat);
   finally
      FreeAndNil(dlgFormasRecebimentos);
   end;
end;

procedure TfrmVendaRecebimento.UpdateStatusBar;
begin
   With barStatus Do
      begin
         Panels[1].Text := '';
         Panels[2].Text := 'Term.: ' + dsTerminais.DataSet.FieldByName('descricao').AsString;
         Panels[3].Text := 'Oper.: ' + dmSessao.qryUsuarios.FieldByName('login').AsString;
      end;
end;

end.
