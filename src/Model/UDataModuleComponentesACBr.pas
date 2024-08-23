unit UDataModuleComponentesACBr;

interface

uses
   Forms, MidasLib, System.SysUtils, System.Classes, Data.DB,
   ACBrBase, ACBrConsultaCPF, ACBrConsultaCNPJ, ACBrSuframa, ACBrIBGE,
   ACBrSocket, ACBrCEP, ACBrSMSClass, ACBrSMS, ACBrValidador, ACBrExtenso,
   ACBrMail, ACBrBoleto, ACBrBoletoFCFR, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass,
   ACBrNFeDANFEFR, ACBrDFe, ACBrNFe, ACBrCargaBal, ACBrBAL, ACBrIBPTax, ACBrNCMs,
   ACBrGAV, ACBrTEFD, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFEFR, ACBrMDFe,
  ACBrIntegrador, ACBrNFSeDANFSeClass, ACBrNFSeDANFSeFR, ACBrNFSe,
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrSpedFiscal, ACBrSpedTabelas,
  ACBrNFeDANFeRLClass, ACBrNFSeDANFSeRLClass, ACBrMDFeDAMDFeRLClass,
  ACBrCTeDACTeRLClass, ACBrCTeDACTEClass, ACBrCTeDACTEFR, ACBrCTe,
  ACBrDANFCeFortesFrA4, ACBrDANFCeFortesFr, ACBrECFVirtual,
  ACBrECFVirtualBuffer, ACBrECFVirtualPrinter, ACBrECFVirtualNFCe;

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
      ACBrExtenso1: TACBrExtenso;
      ACBrValidador1: TACBrValidador;
      ACBrSMS1: TACBrSMS;
      ACBrCEP1: TACBrCEP;
      ACBrIBGE1: TACBrIBGE;
      ACBrSuframa1: TACBrSuframa;
      ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
      ACBrConsultaCPF1: TACBrConsultaCPF;
      ACBrBoleto1: TACBrBoleto;
      ACBrBoletoFCFR1: TACBrBoletoFCFR;
      ACBrMail1: TACBrMail;
      ACBrNFe1: TACBrNFe;
      ACBrBAL1: TACBrBAL;
      ACBrCargaBal1: TACBrCargaBal;
      ACBrIBPTax1: TACBrIBPTax;
      ACBrNCMs1: TACBrNCMs;
      ACBrGAV1: TACBrGAV;
      ACBrTEFD1: TACBrTEFD;
    ACBrMDFe1: TACBrMDFe;
    ACBrNFSe1: TACBrNFSe;
    ACBrIntegrador1: TACBrIntegrador;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    ACBrSpedTabelas1: TACBrSpedTabelas;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrMDFeDAMDFEFR1: TACBrMDFeDAMDFEFR;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    ACBrNFSeDANFSeFR1: TACBrNFSeDANFSeFR;
    ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL;
    ACBrCTe1: TACBrCTe;
    ACBrCTeDACTEFR1: TACBrCTeDACTEFR;
    ACBrCTeDACTeRL1: TACBrCTeDACTeRL;
    ACBrECFVirtualNFCe1: TACBrECFVirtualNFCe;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
      procedure ACBrNFe1StatusChange(Sender: TObject);
      procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure DataModuleCreate(Sender: TObject);
    procedure ACBrNFSe1StatusChange(Sender: TObject);
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
      procedure ConfiguraACBrNFe(FormaEmissao: String; IdCSC: String; CSC: String; IncluirQRCodeXMLNFCe: Boolean; SalvarRespostaEnvio: Boolean;
         SalvarArquivos: Boolean; CaminhoSalvar: String; CaminhoSchemas: String);
      procedure ConfiguraACBrNFSe(ADataSet: TDataSet);
      procedure SetaConfiguracaoACBrNFe(const ADataSet: TDataSet);
      procedure ConfiguraBalanca(aDataSet: TDataSet);
      function LerPesoBalanca(TimeOut: Integer; var MensagemRetorno: String): Double;
      procedure ConfiguraComponenteACBrNFe(ADataSet: TDataSet);
   end;

function ValidaCPF(const Value: String): Boolean;
function ValidaCNPJ(const Value: String): Boolean;
function ValidaGTIN(const Value: String): Boolean;

var
   dmComponentesACBr: TdmComponentesACBr;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses
   StrUtils,
   ACBrUtil,
   ACBrDevice, ACBrDeviceSerial,
   pcnGerador, pcnConversao, pcnConversaoNfe, pnfsConversao, pcnNFe,
   ACBrDFeSSL, blcksock,
   VCL.Funcoes,
   UDialogoStatusOperacao;

{$R *.dfm}

function ValidaCPF(const Value: String): Boolean;
begin
   With dmComponentesACBr Do
      begin
         ACBrValidador1.TipoDocto := docCPF;
         ACBrValidador1.Documento := Value;
         Result := ACBrValidador1.Validar;
      end;
end;

function ValidaCNPJ(const Value: String): Boolean;
begin
   With dmComponentesACBr Do
      begin
         ACBrValidador1.TipoDocto := docCNPJ;
         ACBrValidador1.Documento := Value;
         Result := ACBrValidador1.Validar;
      end;
end;

function ValidaGTIN(const Value: String): Boolean;
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
               fResposta := 'TimeOut !' + sLineBreak + 'Coloque o produto sobre a Balança!';
            -1:
               fResposta := 'Peso Instavel ! ' + sLineBreak + 'Tente Nova Leitura';
            -2:
               fResposta := 'Peso Negativo !';
            -10:
               fResposta := 'Sobrepeso !';
         end;
      end;
end;

procedure TdmComponentesACBr.ACBrNFe1StatusChange(Sender: TObject);
begin
   case TACBrNFe(Sender).Status of
      stIdle:
         begin
            if dlgStatusOperacao <> nil then
               dlgStatusOperacao.Hide;
         end;
      stNFeStatusServico:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Verificando Status do serviço...';
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
            dlgStatusOperacao.lblStatus.Caption := 'Enviando cancelamento de NFe...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNfeInutilizacao:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Enviando pedido de Inutilização...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFeRecibo:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Consultando Recibo de Lote...';
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
            dlgStatusOperacao.lblStatus.Caption := 'Enviando Carta de Correção...';
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

procedure TdmComponentesACBr.ACBrNFSe1StatusChange(Sender: TObject);
begin
   case ACBrNFSe1.Status of
      stNFSeIdle:
         begin
            if dlgStatusOperacao <> nil then
               dlgStatusOperacao.Hide;
         end;
      stNFSeRecepcao:
         begin
           if dlgStatusOperacao = nil then
              dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
           dlgStatusOperacao.lblStatus.Caption := 'Enviando dados da NFSe...';
           dlgStatusOperacao.Show;
           dlgStatusOperacao.BringToFront;
         end;
      stNFSeConsultaSituacao:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Consultando a Situação...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFSeConsulta:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Consultando...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFSeCancelamento:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Enviando cancelamento de NFSe...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
      stNFSeEmail:
         begin
            if dlgStatusOperacao = nil then
               dlgStatusOperacao := TdlgStatusOperacao.Create(Application);
            dlgStatusOperacao.lblStatus.Caption := 'Enviando Email...';
            dlgStatusOperacao.Show;
            dlgStatusOperacao.BringToFront;
         end;
   end;
   Application.ProcessMessages;
end;

procedure TdmComponentesACBr.CarregaCertificado(aDataSet: TDataSet);
begin
   if Trim(aDataSet.FieldByName('certificado_caminho').AsString) <> '' then
      fCertificadoDigital.Caminho := aDataSet.FieldByName('certificado_caminho').AsString
   else
      fCertificadoDigital.NumeroSerie := aDataSet.FieldByName('certificado_serie').AsString;
   fCertificadoDigital.Senha := aDataSet.FieldByName('certificado_senha').AsString;
end;

procedure TdmComponentesACBr.CarregaEmitente(aDataSet: TDataSet);
begin
   fEmitente.Id := aDataSet.FieldByName('id_estabelecimento').AsInteger;
   fEmitente.TipoPessoa := 'J';
   fEmitente.CNPJ := aDataSet.FieldByName('cnpj').AsString;
   fEmitente.CPF := '';
   fEmitente.InscricaoEstadual := aDataSet.FieldByName('inscricao_estadual').AsString;
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

procedure TdmComponentesACBr.ConfiguraACBrNFe(FormaEmissao: String; IdCSC: String; CSC: String; IncluirQRCodeXMLNFCe: Boolean; SalvarRespostaEnvio: Boolean;
   SalvarArquivos: Boolean; CaminhoSalvar: String; CaminhoSchemas: String);
var
   OK: Boolean;
begin
   // Configuração do Componente
   with ACBrNFe1 do
      begin
         with Configuracoes do
            begin
               // Versão do arquivo XML a ser gerado
               Geral.VersaoDF := ve400;
               Geral.VersaoQRCode := veqr200;
               Geral.FormaEmissao := StrToTpEmis(OK, FormaEmissao);
               Geral.IdCSC := IdCSC;
               Geral.CSC := CSC;
               //
               Geral.Salvar := SalvarRespostaEnvio;
               with Arquivos do
                  begin
                     Salvar := SalvarArquivos;
                     PathSalvar := IncludeTrailingPathDelimiter(CaminhoSalvar) + IfThen(fEmitente.TipoPessoa = 'F', fEmitente.CPF, fEmitente.CNPJ);
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
               Geral.SSLLib := TSSLLib.libOpenSSL;
               if FileExists(fCertificadoDigital.Caminho) then
                  Certificados.ArquivoPFX := fCertificadoDigital.Caminho
               else
                  Certificados.NumeroSerie := fCertificadoDigital.NumeroSerie;
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
               // TimeOuts
               WebServices.TimeOut := 45000;
               WebServices.AguardarConsultaRet := 15000;
               WebServices.AjustaAguardaConsultaRet := True;
               WebServices.Tentativas := 5;
               WebServices.IntervaloTentativas := 1000;
            end;
         SSL.SSLType := TSSLType.LT_TLSv1_2;
      end;
   // Margens - NF-e
   ACBrNFeDANFEFR1.MargemSuperior := 4.5;
   ACBrNFeDANFEFR1.MargemInferior := 4.5;
   ACBrNFeDANFEFR1.MargemEsquerda := 6;
   ACBrNFeDANFEFR1.MargemDireita := 6;
   // Margens - NFC-e
   ACBrNFeDANFCEFR1.MargemSuperior := 0.8;
   ACBrNFeDANFEFR1.MargemInferior := 0.8;
   ACBrNFeDANFEFR1.MargemEsquerda := 6;
   ACBrNFeDANFEFR1.MargemDireita := 6;
end;

procedure TdmComponentesACBr.ConfiguraACBrNFSe(ADataSet: TDataSet);
var
   Ok: Boolean;
   APathMensal: String;
begin
   //ACBrNFSe1.SSL.DescarregarCertificado;

   With ACBrNFSe1.Configuracoes Do
      begin
         if Trim(ADataSet.FieldByName('certificado_digital_caminho').AsString) <> '' then
            Certificados.ArquivoPFX := ADataSet.FieldByName('certificado_digital_caminho').AsString
         else
            Certificados.NumeroSerie := ADataSet.FieldByName('certificado_digital_serie').AsString;
         Certificados.Senha := ADataSet.FieldByName('certificado_digital_senha').AsString;
      end;

   With ACBrNFSe1.Configuracoes.Arquivos Do
      begin
         AdicionarLiteral := True;
         EmissaoPathNFSe := True;
         SepararPorMes := True;
         SepararPorCNPJ := False;
         PathGer := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                    'Fiscal';
         PathSchemas := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                        'Schemas';
         NomeLongoNFSe := True;
         APathMensal := GetPathGer(0);

         PathCan := APathMensal;
         PathSalvar := APathMensal;
         Salvar := True;
      end;

   With ACBrNFSe1.Configuracoes.Geral Do
      begin
         Salvar := True;
         PathIniCidades := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                        'ArqINI';
         PathIniProvedor := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                        'ArqINI';
         CodigoMunicipio := StrToIntDef(ADataSet.FieldByName('endereco_codigo_cidade').AsString, 0);
         SenhaWeb := ADataSet.FieldByName('nfse_senha_usuario_provedor').AsString;
         UserWeb := ADataSet.FieldByName('nfse_usuario_provedor').AsString;

         Emitente.CNPJ := ADataSet.FieldByName('cnpj').AsString;
         Emitente.InscMun := ADataSet.FieldByName('inscricao_municipal').AsString;
         Emitente.RazSocial := ADataSet.FieldByName('razao_social').AsString;

         Emitente.WebUser := ADataSet.FieldByName('nfse_usuario_provedor').AsString;
         Emitente.WebSenha := ADataSet.FieldByName('nfse_senha_provedor').AsString;
         Emitente.WebFraseSecr := ADataSet.FieldByName('nfse_frase_secreta_provedor').AsString;
      end;

   With ACBrNFSe1.Configuracoes.WebServices Do
      begin
         Salvar := True; //chkSalvarSOAP.Checked;
         Ambiente := StrToTpAmb(Ok, IntToStr(ADataSet.FieldByName('nfse_id_ambiente').AsInteger));
         Visualizar := True;
         ProxyHost := '';
         ProxyPort := '0';
         ProxyUser := '';
         ProxyPass := '';
         UF := ADataSet.FieldByName('endereco_sigla_estado').AsString;
         TimeOut := 45000;
         Tentativas := 5;
         IntervaloTentativas := 1000;
      end;

   With ACBrNFSe1.Configuracoes Do
      begin
         Geral.SSLLib := libCapicom; //TSSLLib(cbSSLLib.ItemIndex);
         Geral.SSLCryptLib := cryCapicom; //TSSLCryptLib(cbCryptLib.ItemIndex);
         Geral.SSLHttpLib := httpWinINet; //TSSLHttpLib(cbHttpLib.ItemIndex);
         Geral.SSLXmlSignLib := xsMsXmlCapicom; //TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
         Geral.SetConfigMunicipio;
      end;

   ACBrNFSeDANFSeFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                 'Reports\DANFSEPadrao.fr3';

   if ACBrNFSe1.DANFSe <> nil then
      begin
         ACBrNFSe1.DANFSe.Logo := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                  'Logos\LogoPrefeitura.jpg';
         ACBrNFSe1.DANFSe.PrestLogo := ADataSet.FieldByName('nfse_logomarca_arquivo').AsString;
         ACBrNFSe1.DANFSe.Prefeitura := 'MANAUS'; //#13'Secretaria Municipal de Finanças, Tecnologia da Informação e Controle Interno - SEMEF';
         ACBrNFSe1.DANFSe.PathPDF := APathMensal;

         // TTipoDANFSE = ( tpPadrao, tpIssDSF, tpFiorilli );
         ACBrNFSe1.DANFSe.TipoDANFSE := tpPadrao;
      end;

   With ACBrNFSe1.MAIL Do
      begin
         Host := '';
         Port := '0';
         Username := '';
         Password := '';
         From := '';
         FromName := '';
         SetTLS := True; //cbEmailTLS.Checked;
         SetSSL := True; //cbEmailSSL.Checked;
         UseThread := False;
         ReadingConfirmation := False;
      end;

  //lblSchemas.Caption := ACBrNFSe1.Configuracoes.Geral.xProvedor;
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

procedure TdmComponentesACBr.ConfiguraComponenteACBrNFe(ADataSet: TDataSet);
var
   OK: Boolean;
begin
   // Configuração do Componente
   with ACBrNFe1.Configuracoes.Geral do
      begin
         // Versão do arquivo XML a ser gerado
         VersaoDF := StrToVersaoDF(ok, IfThen(ADataSet.FieldByName('versao_xml').AsString = '1', '3.10', '4.00'));
         // Versão do QR-Code
         VersaoQRCode := StrToVersaoQrCode(ok, ADataSet.FieldByName('versao_qrcode').AsString);
         // Forma de emissão
         FormaEmissao := StrToTpEmis(OK, IntToStr(ADataSet.FieldByName('id_forma_emissao').AsInteger + 1));
      end;

   with ACBrNFe1.Configuracoes do
      begin
         Geral.Salvar := aDataSet.FieldByName('salvar_resposta_envio').AsString = 'S';
         with Arquivos do
            begin
               Salvar := aDataSet.FieldByName('salvar_resposta_envio').AsString = 'S';
               PathSalvar := IncludeTrailingPathDelimiter(aDataSet.FieldByName('salvar_resposta_envio_caminho').AsString) +
                             aDataSet.FieldByName('cnpj_emitente').AsString;
               ForceDirectories(PathSalvar);
               PathSchemas := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Schemas\NFe');
               // Cria pasta mensais 'YYYYMM' dentro de ACBRNFe.Configuracoes.Geral.PathSalvar
               SepararPorMes := True;
               // Indica se o ANO/MES para o nome da pasta vira da data de emissao da Nota
               EmissaoPathNFe := True;
               // Cria as subpastas NFE, INU, CAN, DPEC dentro de ACBRNFe.Configuracoes.Geral.PathSalvar
               // para gravar os arquivos
               AdicionarLiteral := True;
               //
               //SepararPorModelo := True;
            end;

         // Configuração do token CSC
         Geral.IdCSC := aDataSet.FieldByName('token_csc_id').AsString;
         Geral.CSC := aDataSet.FieldByName('token_csc_numero').AsString;

         // Configuração do Certificado
//         Geral.SSLLib                := libCapicom;
//         Geral.SSLCryptLib           := cryCapicom;
//         Geral.SSLHttpLib            := httpWinHttp;
//         Geral.SSLXmlSignLib         := xsMsXmlCapicom;

{$IFDEF ACBrNFeOpenSSL}
         Certificados.Certificado := aDataSet.FieldByName('certificado_caminho').AsString;
{$ELSE}
         Certificados.NumeroSerie := aDataSet.FieldByName('certificado_numero_serie').AsString;
{$ENDIF}
         Certificados.Senha := aDataSet.FieldByName('certificado_senha').AsString;

         // Configuração do Webservices
         WebServices.UF := aDataSet.FieldByName('endereco_sigla_estado_emitente').AsString;
         WebServices.Ambiente := StrToTpAmb(OK, IntToStr(aDataSet.FieldByName('webservice_ambiente').AsInteger + 1));
         WebServices.Visualizar := aDataSet.FieldByName('webservice_visualizar_mensagens').AsString = 'S';
         // Configuração do Proxy
         WebServices.ProxyHost := aDataSet.FieldByName('proxy_host').AsString;
         WebServices.ProxyPort := aDataSet.FieldByName('proxy_porta').AsString;
         WebServices.ProxyUser := aDataSet.FieldByName('proxy_usuario').AsString;
         WebServices.ProxyPass := aDataSet.FieldByName('proxy_senha').AsString;
         // TimeOuts
         WebServices.TimeOut := 30000;
         WebServices.AguardarConsultaRet := 30000;
         WebServices.AjustaAguardaConsultaRet := True;
         WebServices.Tentativas := 5;
         WebServices.IntervaloTentativas := 1000;
      end;

   ACBrNFe1.SSL.SSLType := LT_all;

   ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                               'Reports\' +
                               IfThen(aDataSet.FieldByName('id_modelo').AsInteger = 65, IfThen(aDataSet.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(aDataSet.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(aDataSet.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));
   ACBrNFeDANFEFR1.FastFileEvento := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                     'Reports\' +
                                     'EVENTOS.fr3';
   ACBrNFeDANFEFR1.MostraSetup := True;
end;

procedure TdmComponentesACBr.DataModuleCreate(Sender: TObject);
begin
   // Versão do arquivo XML a ser gerado
   ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;

   // Configuração do Certificado
   with ACBrNFe1.Configuracoes do
      begin
         Geral.SSLLib := libWinCrypt;
         Geral.SSLCryptLib := cryWinCrypt;
         Geral.SSLHttpLib := httpWinHttp;
         Geral.SSLXmlSignLib := xsLibXml2;
         // TimeOuts
         WebServices.TimeOut := 30000;
         WebServices.AguardarConsultaRet := 30000;
         WebServices.AjustaAguardaConsultaRet := True;
         WebServices.Tentativas := 5;
         WebServices.IntervaloTentativas := 1000;
      end;

   // Configurações da DANF-e
   // Margens
   ACBrNFeDANFEFR1.MargemSuperior := 4.5;
   ACBrNFeDANFEFR1.MargemInferior := 4.5;
   ACBrNFeDANFEFR1.MargemEsquerda := 6;
   ACBrNFeDANFEFR1.MargemDireita := 6;
   // Margens
   ACBrNFeDANFCEFR1.MargemSuperior := 0.8;
   ACBrNFeDANFCEFR1.MargemInferior := 0.8;
   ACBrNFeDANFCEFR1.MargemEsquerda := 0.5;
   ACBrNFeDANFCEFR1.MargemDireita := 0.5;
   // Decimais dos Campos
   ACBrNFe1.DANFE.CasasDecimais.qCom := 3;
   ACBrNFe1.DANFE.CasasDecimais.vUnCom := 2;

   // ACBrCEP
   ACBrCEP1.WebService := wsBuscarCep;
   ACBrCEP1.ChaveAcesso := '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.';
   // ACBrEmail
//   ACBrMail1.Host := Configuration.GetInstance.GetEmailHost;
//   ACBrMail1.Username := Configuration.GetInstance.GetEmailUser;
//   ACBrMail1.Password := Configuration.GetInstance.GetEmailPassword;
//   ACBrMail1.Port := IntToStr(Configuration.GetInstance.GetEmailPort);
//   ACBrMail1.SetTLS := Configuration.GetInstance.GetEmailTLS;
//   ACBrMail1.SetSSL := Configuration.GetInstance.GetEmailSSL;
//   // ACBRIntegrador
//   ACBrIntegrador1.ArqLOG := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
//                             'Integrador\Logs\' + FormatDateTime('yyyymmdd', Date()) + '.txt';
//   ACBrIntegrador1.PastaInput := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
//                                 'Integrador\Input\';
//   ACBrIntegrador1.PastaOutput := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
//                                  'Integrador\Output\';
end;

function TdmComponentesACBr.LerPesoBalanca(TimeOut: Integer; var MensagemRetorno: String): Double;
begin
   Result := ACBrBAL1.LePeso(TimeOut);
   MensagemRetorno := fResposta;
end;

procedure TdmComponentesACBr.SetaConfiguracaoACBrNFe(const ADataSet: TDataSet);
var
   OK: Boolean;
begin
   inherited;
   if not ADataSet.IsEmpty then
      begin
         // Configuração do Componente
         with ACBrNFe1.Configuracoes do
            begin
               // Versão do arquivo XML a ser gerado
               Geral.VersaoDF := ve400;
               Geral.FormaEmissao := StrToTpEmis(OK, IntToStr(ADataSet.FieldByName('id_forma_emissao').AsInteger + 1));
               Geral.IdCSC := ADataSet.FieldByName('csc_id').AsString;
               Geral.CSC := ADataSet.FieldByName('csc_numero').AsString;
               //
               Geral.Salvar := aDataSet.FieldByName('salvar_resposta_envio').AsString = 'S';
               with Arquivos do
                  begin
                     Salvar := aDataSet.FieldByName('salvar_resposta_envio').AsString = 'S';
                     PathSalvar := IncludeTrailingPathDelimiter(aDataSet.FieldByName('salvar_resposta_envio_caminho').AsString) +
                                   aDataSet.FieldByName('cnpj_emitente').AsString;
                     ForceDirectories(PathSalvar);
                     PathSchemas := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Schemas\NFe');
                     // Cria pasta mensais 'YYYYMM' dentro de ACBRNFe.Configuracoes.Geral.PathSalvar
                     SepararPorMes := True;
                     // Indica se o ANO/MES para o nome da pasta vira da data de emissao da Nota
                     EmissaoPathNFe := True;
                     // Cria as subpastas NFE, INU, CAN, DPEC dentro de ACBRNFe.Configuracoes.Geral.PathSalvar
                     // para gravar os arquivos
                     AdicionarLiteral := True;
                     //
                     //SepararPorModelo := True;
                  end;
               // Configuração do Certificado
               {$IFDEF ACBrNFeOpenSSL}
               Certificados.Certificado := ADataSet.FieldByName('certificado_caminho').AsString;
               {$ELSE}
               Certificados.NumeroSerie := ADataSet.FieldByName('certificado_numero_serie').AsString;
               {$ENDIF}
               Certificados.Senha := ADataSet.FieldByName('certificado_senha').AsString;
//               Geral.SSLLib                := libCapicom;
//               Geral.SSLCryptLib           := cryCapicom;
//               Geral.SSLHttpLib            := httpWinHttp;
//               Geral.SSLXmlSignLib         := xsMsXmlCapicom;
               // Configuração do Webservices
               WebServices.UF := ADataSet.FieldByName('sigla_estado_emitente').AsString;
               WebServices.Ambiente := StrToTpAmb(OK, IntToStr(ADataSet.FieldByName('webservice_ambiente').AsInteger + 1));
               WebServices.Visualizar := ADataSet.FieldByName('webservice_visualizar_mensagens').AsString = 'S';
               // Configuração do Proxy
               WebServices.ProxyHost := ADataSet.FieldByName('proxy_host').AsString;
               WebServices.ProxyPort := ADataSet.FieldByName('proxy_porta').AsString;
               WebServices.ProxyUser := ADataSet.FieldByName('proxy_usuario').AsString;
               WebServices.ProxyPass := ADataSet.FieldByName('proxy_senha').AsString;
               // TimeOuts
               WebServices.TimeOut := 30000;
               WebServices.AguardarConsultaRet := 30000;
               WebServices.AjustaAguardaConsultaRet := True;
               WebServices.Tentativas := 5;
               WebServices.IntervaloTentativas := 1000;
            end;

         ACBrNFe1.SSL.SSLType := LT_all;

         ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                     'Reports\' +
                                     IfThen(aDataSet.FieldByName('id_modelo').AsInteger = 65, IfThen(aDataSet.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(aDataSet.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(aDataSet.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));
         ACBrNFeDANFEFR1.FastFileEvento := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                           'Reports\' +
                                           'EVENTOS.fr3';
         ACBrNFeDANFEFR1.MostraSetup := True;

         // Margens
         ACBrNFeDANFEFR1.MargemSuperior := 4.5;
         ACBrNFeDANFEFR1.MargemInferior := 4.5;
         ACBrNFeDANFEFR1.MargemEsquerda := 6;
         ACBrNFeDANFEFR1.MargemDireita := 6;
         // Decimais dos Campos
         ACBrNFe1.DANFE.CasasDecimais.qCom := 3;
         ACBrNFe1.DANFE.CasasDecimais.vUnCom := 2;
      end;
end;

end.
