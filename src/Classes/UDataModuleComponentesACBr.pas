unit UDataModuleComponentesACBr;

interface

uses
   Forms, System.SysUtils, System.Classes, DB, ACBrBase, ACBrBAL, ACBrExtenso,
   ACBrDFe, ACBrNFe, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR,
   ACBrMail, ACBrValidador, ACBrGAV, ACBrSocket, ACBrIBPTax, ACBrNCMs,
  ACBrConsultaCNPJ;

type
   TCertificado = record
      Caminho: String;
      NumeroSerie: String;
      Senha: String;
   end;

   TProxy = record
      Host: String;
      Port: Integer;
      UserName: String;
      Password: String;
   end;

   TWebService = record
      SiglaEstado: String;
      Ambiente: String;
      VisualizarMensagens: Boolean;
      Proxy: TProxy;
   end;

   TEmitente = record
      Id: Integer;
      TipoPessoa: String;
      CNPJ: String;
      CPF: String;
      InscricaoEstadual: String;
   end;

   TdmComponentesACBr = class(TDataModule)
      ACBrBAL1: TACBrBAL;
      ACBrExtenso1: TACBrExtenso;
      ACBrNFe1: TACBrNFe;
      ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
      ACBrMail1: TACBrMail;
      ACBrValidador1: TACBrValidador;
      ACBrGAV1: TACBrGAV;
      ACBrIBPTax1: TACBrIBPTax;
      ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
      procedure ACBrNFe1StatusChange(Sender: TObject);
      procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
   private
      { Private declarations }
      fEmitente: TEmitente;
      fCertificadoDigital: TCertificado;
      fWebService: TWebService;
      fResposta: String;
   public
      { Public declarations }
      procedure CarregaEmitente(aDataSet: TDataSet);
      procedure CarregaCertificado(aDataSet: TDataSet);
      procedure CarregaWebService(aDataSet: TDataSet);
      procedure ConfiguraACBrNFe(FormaEmissao: String; IdCSC: String;
         CSC: String; IncluirQRCodeXMLNFCe: Boolean;
         SalvarRespostaEnvio: Boolean; SalvarArquivos: Boolean;
         CaminhoSalvar: String; CaminhoSchemas: String);
      procedure ConfiguraBalanca(aDataSet: TDataSet);
      function LerPesoBalanca(TimeOut: Integer;
         var MensagemRetorno: String): Double;
   end;

function ACBrValidaGTIN(const Value: String): Boolean;

var
   dmComponentesACBr: TdmComponentesACBr;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses
   StrUtils,
   ACBrDevice, pcnConversao, pcnConversaoNfe,
   UFuncoes,
   UMasterPDVDialogoStatusOperacao;

{$R *.dfm}

function ACBrValidaGTIN(const Value: String): Boolean;
begin
   With dmComponentesACBr Do
      begin
         ACBrValidador1.TipoDocto := docGTIN;
         ACBrValidador1.Documento := Value;
         Result := ACBrValidador1.Validar;
      end;
end;

procedure TdmComponentesACBr.ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
var
   valid: Integer;
begin
   fResposta := '';
   if Peso <= 0 then
      begin
         valid := Trunc(ACBrBAL1.UltimoPesoLido);
         case valid of
            0:
               fResposta := 'TimeOut !' + sLineBreak +
                  'Coloque o produto sobre a Balança!';
            -1:
               fResposta := 'Peso Instavel ! ' + sLineBreak +
                  'Tente Nova Leitura';
            -2:
               fResposta := 'Peso Negativo !';
            -10:
               fResposta := 'Sobrepeso !';
         end;
      end;
end;

procedure TdmComponentesACBr.ACBrNFe1StatusChange(Sender: TObject);
begin
   case ACBrNFe1.Status of
      stIdle:
         begin
            if dlgStatusOperacao <> nil then
               begin
                  dlgStatusOperacao.Hide;
               end;
         end;
      stNFeStatusServico:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption :=
               'Verificando Status do servico...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFeRecepcao:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Enviando dados da NFe...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNfeRetRecepcao:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Recebendo dados da NFe...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNfeConsulta:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Consultando NFe...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNfeCancelamento:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption :=
               'Enviando cancelamento de NFe...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNfeInutilizacao:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption :=
               'Enviando pedido de Inutilização...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFeRecibo:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption :=
               'Consultando Recibo de Lote...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFeCadastro:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Consultando Cadastro...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFeEmail:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Enviando Email...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFeCCe:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption :=
               'Enviando Carta de Correção...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFeEvento:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Enviando Evento...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
   end;
   Application.ProcessMessages;
end;

procedure TdmComponentesACBr.CarregaCertificado(aDataSet: TDataSet);
begin
   fCertificadoDigital.Caminho := aDataSet.FieldByName('certificado_caminho').AsString;
   fCertificadoDigital.NumeroSerie := aDataSet.FieldByName('certificado_serie').AsString;
   fCertificadoDigital.Senha := aDataSet.FieldByName('certificado_senha').AsString;
end;

procedure TdmComponentesACBr.CarregaEmitente(aDataSet: TDataSet);
begin
   fEmitente.Id := aDataSet.FieldByName('id_local').AsInteger;
   fEmitente.TipoPessoa := 'J';
   fEmitente.CNPJ := aDataSet.FieldByName('cnpj').AsString;
   fEmitente.CPF := '';
   fEmitente.InscricaoEstadual := aDataSet.FieldByName('insc_estadual').AsString;

   fWebService.SiglaEstado := aDataSet.FieldByName('sigla_estado').AsString;
end;

procedure TdmComponentesACBr.CarregaWebService(aDataSet: TDataSet);
begin
   fWebService.Ambiente := IntToStr(StrToInt(aDataSet.FieldByName('ws_ambiente').AsString) + 1);
   fWebService.VisualizarMensagens := aDataSet.FieldByName('ws_visualizar_mensagens').AsString = 'S';
   fWebService.Proxy.Host := aDataSet.FieldByName('proxy_host').AsString;
   fWebService.Proxy.Port := aDataSet.FieldByName('proxy_porta').AsInteger;
   fWebService.Proxy.UserName := aDataSet.FieldByName('proxy_usuario').AsString;
   fWebService.Proxy.Password := aDataSet.FieldByName('proxy_senha').AsString;
end;

procedure TdmComponentesACBr.ConfiguraACBrNFe(FormaEmissao: String;
   IdCSC: String; CSC: String; IncluirQRCodeXMLNFCe: Boolean;
   SalvarRespostaEnvio: Boolean; SalvarArquivos: Boolean; CaminhoSalvar: String;
   CaminhoSchemas: String);
var
   OK: Boolean;
begin
   // Configuração do Componente
   with ACBrNFe1.Configuracoes do
      begin
         // Versão do arquivo XML a ser gerado
         Geral.VersaoDF := ve310;
         Geral.FormaEmissao := StrToTpEmis(OK, FormaEmissao);
         Geral.IdCSC := IdCSC;
         Geral.CSC := CSC;
         Geral.IncluirQRCodeXMLNFCe := IncluirQRCodeXMLNFCe;
         //
         Geral.Salvar := SalvarRespostaEnvio;
         with Arquivos do
            begin
               Salvar := SalvarArquivos;
               PathSalvar := IncludeTrailingPathDelimiter(CaminhoSalvar) +
                  IfThen(fEmitente.TipoPessoa = 'F', fEmitente.CPF,
                  fEmitente.CNPJ);
               ForceDirectories(PathSalvar);
               PathSchemas := IncludeTrailingPathDelimiter(CaminhoSchemas);
               // Cria pasta mensais 'YYYYMM' dentro de ACBRNFe.Configuracoes.Geral.PathSalvar
               SepararPorMes := True;
               // Indica se o ANO/MES para o nome da pasta vira da data de emissao da Nota
               EmissaoPathNFe := True;
               // Cria as subpastas NFE, INU, CAN, DPEC dentro de ACBRNFe.Configuracoes.Geral.PathSalvar
               // para gravar os arquivos
               AdicionarLiteral := True;
               //
               // SepararPorModelo := True;
            end;

         // Configuração do Certificado
{$IFDEF ACBrNFeOpenSSL}
         Certificados.Certificado := fCertificadoDigital.Caminho;
{$ELSE}
         Certificados.NumeroSerie := fCertificadoDigital.NumeroSerie;
{$ENDIF}
         Certificados.Senha := fCertificadoDigital.Senha;

         // Configuração do Webservices
         WebServices.UF := fWebService.SiglaEstado;
         WebServices.Ambiente := StrToTpAmb(OK, fWebService.Ambiente);
         WebServices.Visualizar := fWebService.VisualizarMensagens;
         // Configuração do Proxy
         WebServices.ProxyHost := fWebService.Proxy.Host;
         WebServices.ProxyPort := IntToStr(fWebService.Proxy.Port);
         WebServices.ProxyUser := fWebService.Proxy.UserName;
         WebServices.ProxyPass := fWebService.Proxy.Password;
      end;
end;

procedure TdmComponentesACBr.ConfiguraBalanca(aDataSet: TDataSet);
begin
   // se houver conecção aberta, Fecha a conexão
   if ACBrBAL1.Ativo then
      ACBrBAL1.Desativar;

   // configura porta de comunicação
   ACBrBAL1.Modelo := TACBrBALModelo(aDataSet.FieldByName('id_modelo_balanca_acoplada').AsInteger);
   ACBrBAL1.Device.HandShake := TACBrHandShake(aDataSet.FieldByName('handshake_balanca_acoplada').AsInteger);
   ACBrBAL1.Device.Parity := TACBrSerialParity(aDataSet.FieldByName('id_paridade_balanca_acoplada').AsInteger);
   ACBrBAL1.Device.Stop := TACBrSerialStop(aDataSet.FieldByName('id_bit_parada_balanca_acoplada').AsInteger);
   ACBrBAL1.Device.Data := aDataSet.FieldByName('taxa_transmissao_balanca_acoplada').AsInteger;
   ACBrBAL1.Device.Baud := aDataSet.FieldByName('velocidade_balanca_acoplada').AsInteger;
   ACBrBAL1.Device.Porta := aDataSet.FieldByName('porta_serial_balanca_acoplada').AsString;
   // Arquivo de log
   ACBrBAL1.ArqLOG := GetLogDir + 'T' + FormatFloat('0000', aDataSet.FieldByName('id_terminal').AsInteger) + 'BAL.log';
end;

function TdmComponentesACBr.LerPesoBalanca(TimeOut: Integer;
   var MensagemRetorno: String): Double;
begin
   Result := ACBrBAL1.LePeso(TimeOut);
   MensagemRetorno := fResposta;
end;

end.
