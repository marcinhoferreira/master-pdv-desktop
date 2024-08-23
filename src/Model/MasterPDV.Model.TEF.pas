unit MasterPDV.Model.TEF;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Vcl.Controls, Vcl.StdCtrls,
  Vcl.Graphics,
  LealSoftwares.Model.LogOperacao.Interfaces,
  ACBrTEFDClass, ACBrTEFAPIComum, ACBrTEFAPI, ACBrBase, ACBrTEFD, ACBrTEFComum,
  ACBrTEFDCliSiTef, ACBrTEFPayGoComum, ACBrTEFPayGoWebComum, ACBrTEFDPayGoWeb,
  ACBrPosPrinter, Data.DB;

type
  TStatusVenda = (stsLivre, stsIniciada, stsEmPagamento, stsCancelada,
                  stsAguardandoTEF, stsOperacaoTEF, stsFinalizada);

  TModelTEF = class(TDataModule)
    ACBrTEFD1: TACBrTEFD;
    ACBrTEFAPI1: TACBrTEFAPI;
    ACBrPosPrinter1: TACBrPosPrinter;
    dsTotais: TDataSource;
    dsTransacoes: TDataSource;
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFD1AguardaResp(Arquivo: string; SegundosTimeOut: Integer;
      var Interromper: Boolean);
    procedure ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
      var Tratado: Boolean);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFPagamento(IndiceECF: string; Valor: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1DepoisCancelarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1DepoisConfirmarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1ExibeQRCode(const Dados: string);
    procedure ACBrTEFD1GravarLog(const GP: TACBrTEFDTipo; ALogLine: string;
      var Tratado: Boolean);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: string);
  private
    { Private declarations }
    fLogOperacao: IModelLogOperacao;
    fIndicePagto: String;
    fTemTEF: Boolean;
    fTestePayGo: Integer;
    fCanceladoPeloOperador: Boolean;
    fTempoDeEspera: TDateTime;
    fMensagemOperador: String;
    fMensagemCliente: String;
    fNSU: String;
    fRede: String;
    fRedeCNPJ: String;
    fValorTotal: Double;
    fPortaEmissorCupom: String;
    fStatusVenda: TStatusVenda;
    procedure TEF_Mensagem(const MsgOperador, MsgCliente: String);
    procedure TEF_PayGoWebExibeMensagem(Mensagem: String;
                                        Terminal: TACBrTEFPGWebAPITerminalMensagem;
                                        MilissegundosExibicao: Integer);
    procedure AdicionarLinhaLog(AMensagem: String);
    procedure AdicionarLinhaImpressao(ALinha: String);
    procedure ExibirPainelQRCode;
    procedure OcultatPainelQRCode;
    function GetIndicePagto: String;
    procedure SetIndicePagto(const Value: String);
    function GetTemTEF: Boolean;
    function GetNSU: String;
    function GetRede: String;
    function GetValorTotal: Double;
    function GetPortaEmissorCupom: String;
    procedure SetPortaEmissorCupom(const Value: String);
    function GetStatusVenda: TStatusVenda;
    procedure SetStatusVenda(const Value: TStatusVenda);
    function GetRedeCNPJ: String;
    procedure SetTemTEF(const Value: Boolean);
    procedure SetNSU(const Value: String);
    procedure SetRede(const Value: String);
    procedure SetRedeCNPJ(const Value: String);
  public
    { Public declarations }
    procedure AtribuiDataSetTotais(DataSet: TDataSet);
    procedure ConfigurarTEF;
    procedure ConfigurarPosPrinter;
    procedure InformarParametrosCartaoCredito;
    procedure InformarParametrosCartaoDebito;
    procedure InformarParametrosCarteiraDigital;
    procedure InformarParametrosVoucher;
    function ImprimeComprovanteTransacao(const Via: Integer;
                                         const ImagemComprovante: TStringList): Boolean;
    property StatusVenda: TStatusVenda Read GetStatusVenda Write SetStatusVenda;
    property IndicePagto: String Read GetIndicePagto Write SetIndicePagto;
    property TemTEF: Boolean Read GetTemTEF Write SetTemTEF;
    property PortaEmissorCupom: String Read GetPortaEmissorCupom Write SetPortaEmissorCupom;
    property NSU: String Read GetNSU Write SetNSU;
    property Rede: String Read GetRede Write SetRede;
    property RedeCNPJ: String Read GetRedeCNPJ Write SetRedeCNPJ;
    property ValorTotal: Double Read GetValorTotal;
  end;

var
  ModelTEF: TModelTEF;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
   System.IOUtils, DateUtils, StrUtils, System.Math, System.TypInfo, Vcl.Dialogs,
   ACBrUtil, ACBrDelphiZXingQRCode,
   VCL.Impressoras,
   LealSoftwares.Model.LogOperacao;

{$R *.dfm}

{ TModelTEF }

procedure TModelTEF.ACBrTEFD1AguardaResp(Arquivo: string;
  SegundosTimeOut: Integer; var Interromper: Boolean);
var
   Msg: String;
begin
   inherited;
   if fCanceladoPeloOperador then
      begin
         fCanceladoPeloOperador := False;
         Interromper := True ;
         Exit;
      end;

   Msg := '' ;
   if (ACBrTEFD1.GPAtual in [gpCliSiTef, gpVeSPague, gpPayGoWeb]) then   // É TEF dedicado ?
      begin
         if (Arquivo = '23') and ACBrTEFD1.TecladoBloqueado then  // Está aguardando Pin-Pad ?
         begin
            // Desbloqueia o Teclado
            ACBrTEFD1.BloquearMouseTeclado(False);
            // Ajusta Interface para Espera do TEF, com opçao de cancelamento pelo Operador
             fStatusVenda := stsAguardandoTEF;

            Msg := 'Aguardando Resposta do Pinpad.  Pressione <ESC> para Cancelar';
            fCanceladoPeloOperador := False;
         end;
      end
   else if FTempoDeEspera <> SegundosTimeOut then
           begin
              Msg := 'Aguardando: ' + Arquivo + ' ' + IntToStr(SegundosTimeOut);
              fTempoDeEspera := SegundosTimeOut;
           end;

   if Msg <> '' then
      AdicionarLinhaLog(Msg);

   Application.ProcessMessages;
end;

procedure TModelTEF.ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
begin
  inherited;
  AdicionarLinhaLog('Enviando: '+Req.Header+' ID: '+IntToStr( Req.ID ) );

  FCanceladoPeloOperador := False;
  FTempoDeEspera := 0;
  // Use esse evento, para inserir campos personalizados, ou modificar o arquivo
  // de requisião, que será criado e envido para o Gerenciador Padrão

  if (ACBrTEFD1.GPAtual = gpPayGo) then
  begin
    if (Req.Header = 'CRT') then
    begin
      // Instruindo CRT a apenas transações de Crédito
      if (FIndicePagto = '03') then
      begin
        Req.GravaInformacao(730,000,'1');  // 1: venda (pagamento com cartão)
        Req.GravaInformacao(731,000,'1');  // 1: crédito
        //Req.GravaInformacao(732,000,'1');  // 1: à vista
      end

      // Instruindo CRT a apenas transações de Débito
      else if (FIndicePagto = '04') then
      begin
        Req.GravaInformacao(730,000,'1');  // 1: venda (pagamento com cartão)
        Req.GravaInformacao(731,000,'2');  // 2: débito
        //Req.GravaInformacao(732,000,'1');  // 1: à vista
      end;

      FIndicePagto := '';
    end;

    if (FTestePayGo > 0) then
    begin
      if (Req.Header = 'CRT') and (FTestePayGo = 2) then // Passo 02 - Venda à vista aprovada com pré-seleção de parâmetros
      begin
        Req.GravaInformacao(010,000,'CERTIF');
        Req.GravaInformacao(730,000,'1');  // operação “VENDA”
        Req.GravaInformacao(731,000,'1');  // tipo de cartão “CRÉDITO”
        Req.GravaInformacao(732,000,'1');  // tipo de financiamento “À VISTA”
      end

      else if (Req.Header = 'CRT') and (FTestePayGo = 3) then // Passo 03 - Venda parcelada aprovada com pré-seleção de parâmetros
      begin
        Req.GravaInformacao(010,000,'CERTIF');
        Req.GravaInformacao(018,000,'3');  // número de parcelas = 3
        Req.GravaInformacao(730,000,'1');  // operação “VENDA”
        Req.GravaInformacao(731,000,'2');  // tipo de cartão “DÉBITO”
        Req.GravaInformacao(732,000,'3');  // tipo de financiamento “PARCELADO PELO ESTABELECIMENTO”
      end

      else if (Req.Header = 'CRT') and (FTestePayGo = 4) then // Passo 04 - Venda aprovada em moeda estrangeira
      begin
        Req.GravaInformacao(004,000,'1');  // Dólar americano
      end

      else if (Req.Header = 'CRT') and (FTestePayGo = 27) then // Passo 27 - Venda aprovada com pré-seleção de parâmetros de carteira digital
      begin
        Req.GravaInformacao(010,000,'CERTIF');
        Req.GravaInformacao(749,000,'8');  // Tipo de Pagamento como carteira digital
        Req.GravaInformacao(750,000,'1');  // Identificação da Carteira Digital como QR Code
      end

      else if (Req.Header = 'ADM') and (FTestePayGo = 31) then // Passo 31 - Operação bem sucedida com valor pré-definido
      begin
        Req.GravaInformacao(003,000,'1');
      end;

      FTestePayGo := 0;
    end;
  end;
end;

procedure TModelTEF.ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
  var Tratado: Boolean);
begin
  inherited;
//  Self.Enabled := not Bloqueia ;
//  AdicionarLinhaLog('BloqueiaMouseTeclado = ' + IfThen(Bloqueia,'SIM', 'NAO'));
//  Tratado := False ;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TModelTEF.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
   procedure PularLinhasECortar;
   begin
      AdicionarLinhaImpressao('</pular_linhas>');
      AdicionarLinhaImpressao('</corte>');
   end;
begin
  inherited;
   AdicionarLinhaLog('ACBrTEFD1ComandaECF: ' + GetEnumName(TypeInfo(TACBrTEFDOperacaoECF), Integer(Operacao)));

   try
      case Operacao of
         opeAbreGerencial:
            begin
               AdicionarLinhaImpressao('</zera>');
            end;

         opeSubTotalizaCupom:
            begin
               if fStatusVenda = stsIniciada then
                  fStatusVenda := stsEmPagamento;
            end;

         opeCancelaCupom:
            begin
//               CancelarVenda;
            end;

         opeFechaCupom:
            begin
               ACBrTEFD1.ImprimirTransacoesPendentes();
            end;

         opePulaLinhas:
            begin
               PularLinhasECortar;
            end;

         opeFechaGerencial,
         opeFechaVinculado:
            begin
               PularLinhasECortar;
               if fStatusVenda in [stsOperacaoTEF] then
                  fStatusVenda := stsFinalizada;
            end;
      end;
      RetornoECF := 1;
   except
      RetornoECF := 0;
   end;
end;

procedure TModelTEF.ACBrTEFD1ComandaECFAbreVinculado(COO,
  IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  inherited;
  AdicionarLinhaLog( 'ACBrTEFD1ComandaECFAbreVinculado, COO:'+COO+
     ' IndiceECF: '+IndiceECF+' Valor: '+FormatFloatBr(Valor) ) ;
  AdicionarLinhaImpressao('</zera>');
  AdicionarLinhaImpressao('</linha_dupla>');
  try
     RetornoECF := 1;
  except
     RetornoECF := 0;
  end;
end;

procedure TModelTEF.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  inherited;
  AdicionarLinhaLog( 'ACBrTEFD1ComandaECFImprimeVia: '+IntToStr(Via) );
  AdicionarLinhaImpressao( ImagemComprovante.Text );
  RetornoECF := 1 ;
end;

procedure TModelTEF.ACBrTEFD1ComandaECFPagamento(IndiceECF: string;
  Valor: Double; var RetornoECF: Integer);
begin
  inherited;
  AdicionarLinhaLog('ACBrTEFD1ComandaECFPagamento, IndiceECF: '+IndiceECF+' Valor: '+FormatFloatBr(Valor));
  RetornoECF := 1;
end;

procedure TModelTEF.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
  inherited;
   AdicionarLinhaLog('ACBrTEFD1ComandaECFSubtotaliza: DescAcre: ' + FormatFloatBr(DescAcre));
   if fStatusVenda = stsIniciada then
      fStatusVenda := stsEmPagamento;
end;

procedure TModelTEF.ACBrTEFD1DepoisCancelarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
var
   i: Integer;
begin
   inherited;
   for i := 0 to RespostasPendentes.Count-1  do
      begin
         with RespostasPendentes[i] do
            begin
               AdicionarLinhaLog('Cancelada: '+Header+' ID: '+IntToStr( ID ) );
               AdicionarLinhaLog('- Rede: '  + Rede + ', NSU: '  + NSU );

//               Venda.Pagamentos.CancelarPagamento(Rede, NSU, ValorTotal);
            end;
      end;

//   AtualizarPagamentosVendaNaInterface;
end;

procedure TModelTEF.ACBrTEFD1DepoisConfirmarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
var
   i: Integer;
begin
   inherited;
   for i := 0 to RespostasPendentes.Count - 1  do
      begin
         with RespostasPendentes[i] do
            begin
               fNSU := NSU;
               fRede := Rede;
               fValorTotal := ValorTotal;

               AdicionarLinhaLog('Confirmado: '+Header+' ID: '+IntToStr( ID ) );
               // Lendo os campos mapeados //
               AdicionarLinhaLog('- Rede: '  + Rede + ', NSU: '  + NSU );
               AdicionarLinhaLog('- Parcelas: '+ IntToStr(QtdParcelas) +
                                 ', parcelado por: '+ GetEnumName(TypeInfo(TACBrTEFRespParceladoPor), integer(ParceladoPor) ));
               AdicionarLinhaLog('- É Débito: '+BoolToStr(Debito)+
                                 ', É Crédito: '+BoolToStr(Credito)+
                                 ', Valor: '+ FormatFloat('###,###,##0.00',ValorTotal));

               // Lendo um Campo Específico //
               //AdicionarLinhaLog('- Campo 11: ' + LeInformacao(11,0).AsString );
//               Venda.Pagamentos.ConfirmarPagamento(Rede, NSU, ValorTotal);
            end;
      end;

//  AtualizarPagamentosVendaNaInterface;
end;

procedure TModelTEF.ACBrTEFD1ExibeMsg(
  Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string;
  var AModalResult: TModalResult);
var
   Fim: TDateTime;
   OldMensagem: String;
begin
  inherited;
   case Operacao of
      opmOK:
         begin
            if ACBrTEFD1.GPAtual = gpPayGoWeb then
               TEF_PayGoWebExibeMensagem(Mensagem, tmOperador, CMilissegundosMensagem)
            else
               AModalResult := MessageDlg(Mensagem, mtInformation, [mbOK], 0);
         end;

      opmYesNo:
         begin
            AModalResult := MessageDlg(Mensagem, mtConfirmation, [mbYes, mbNo], 0);
         end;

      opmExibirMsgOperador:
         begin
            TEF_Mensagem(Mensagem,'');
         end;

      opmRemoverMsgOperador:
         begin
            TEF_Mensagem(' ','');
         end;

      opmExibirMsgCliente:
         begin
            TEF_Mensagem('', Mensagem);
         end;

      opmRemoverMsgCliente:
         begin
            TEF_Mensagem('', ' ');
         end;

      opmDestaqueVia:
         begin
            OldMensagem := fMensagemOperador;
            try
               { Aguardando 3 segundos }
               Fim := IncSecond(now, 3);
               repeat
                  TEF_Mensagem(Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now)), '');
                  Sleep(200);
               until (now > Fim);
            finally
               TEF_Mensagem(OldMensagem, '');
            end;
         end;
   end;
end;

procedure TModelTEF.ACBrTEFD1ExibeQRCode(const Dados: string);
var
   QRCode: TDelphiZXingQRCode;
   QRCodeBitmap: TBitmap;
   Row, Column: Integer;
begin
   inherited;
   if not (fStatusVenda in [stsAguardandoTEF, stsOperacaoTEF]) then
      fStatusVenda := stsAguardandoTEF;
//
//   if (cbxQRCode.ItemIndex = 4) then  // 4 - Imprimir
//      begin
//         if (Dados <> '') then
//            AdicionarLinhaImpressao( '</zera></ce>'+
//                               '<qrcode_largura>8</qrcode_largura>'+
//                               '<qrcode>'+Dados+'</qrcode>'+
//                               '</lf></lf></corte_total>');
//         Exit;
//      end;

   if (Dados <> '') then
      ExibirPainelQRCode
   else
      begin
         OcultatPainelQRCode;
         Exit;
      end;

   QRCode := TDelphiZXingQRCode.Create;
   QRCodeBitmap := TBitmap.Create;
   try
      QRCode.Encoding  := qrUTF8BOM;
      QRCode.QuietZone := 2;
      QRCode.Data      := widestring(Dados);

      QRCodeBitmap.Width  := QRCode.Columns;
      QRCodeBitmap.Height := QRCode.Rows;

      for Row := 0 to QRCode.Rows - 1 do
         begin
            for Column := 0 to QRCode.Columns - 1 do
            begin
               if (QRCode.IsBlack[Row, Column]) then
                  QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
               else
                  QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
            end;
         end;

//      imgQRCode.Picture.Bitmap.Assign(QRCodeBitmap);
   finally
      QRCode.Free;
      QRCodeBitmap.Free;
   end;
end;

procedure TModelTEF.ACBrTEFD1GravarLog(const GP: TACBrTEFDTipo;
  ALogLine: string; var Tratado: Boolean);
begin
  inherited;
  AdicionarLinhaLog(ALogLine);
  Tratado := False;
end;

procedure TModelTEF.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: string);
begin
  inherited;
   //try
   //   if not ACBrECF1.Ativo then
   //      ACBrECF1.Ativar ;
   //except
   //   { Para CliSiTEF ou V&SPague aplique o IF abaixo em sua aplicação, que
   //     permite saber se o Cupom foi concluido mesmo com o ECF desligado }
   //
   //   if (not ACBrTEFD1.TEF.Inicializado) and   { Está na inicialização ? }
   //      (Operacao = ineEstadoECF) and          { Quer Saber o estado do ECF ? (mas se chegou aqui é pq o ECF já está com problemas) }
   //      (ACBrTEFD1.GPAtual in [gpCliSiTef,gpVeSPague]) then
   //   begin
   //      { Leia o último Documento Gravado no seu Banco de Dados, e verifique
   //        se o Cupom já foi finalizado,ou se já foi aberto um CCD ou Gerencial...
   //        Exemplo:
   //
   //        Documento.Le(0);
   //
   //        if (Documento.Finalizado) or (pos(Documento.Denominacao,'CC|RG') > 0) then
   //           RetornoECF := 'R'
   //        else
   //           RetornoECF := 'O' ;
   //      }
   //
   //      //RetornoECF := 'O';    // Executará CancelarTransacoesPendentes;
   //      RetornoECF := 'R';    // Executará ConfirmarESolicitarImpressaoTransacoesPendentes;
   //      exit ;
   //   end ;
   //
   //   raise ;
   //end;

//   case Operacao of
//      ineSubTotal :
//         begin
//             RetornoECF := FloatToStr(dsTotais.DataSet.FieldByName('valor_liquido').AsFloat);
//         end;
//
//      ineTotalAPagar :
//         begin
//             // ACBrTEFD1.RespostasPendentes.TotalPago  deve ser subtraido, pois ACBrTEFD já subtrai o total dos pagamentos em TEF internamente
//             RetornoECF := FloatToStr(RoundTo(dsTotais.DataSet.FieldByName('valor_recebido').AsFloat -
//                                              ACBrTEFD1.RespostasPendentes.TotalPago, -2));
//         end;
//
//      ineEstadoECF :
//         begin
//            RetornoECF := 'P';
//            //"L" - Livre
//            //"V" - Venda de Itens
//            //"P" - Pagamento (ou SubTotal efetuado)
//            //"C" ou "R" - CDC ou Cupom Vinculado
//            //"G" ou "R" - Relatório Gerencial
//            //"N" - Recebimento Não Fiscal
//            //"O" - Outro
//            case StatusVenda of
//               stsIniciada:
//                  begin
//                     RetornoECF := 'V';
//                  end;
//               stsEmPagamento:
//                  begin
//                     RetornoECF := 'P';
//                  end;
//               stsLivre,
//               stsFinalizada,
//               stsCancelada,
//               stsAguardandoTEF,
//               stsOperacaoTEF:
//                  begin
//                      RetornoECF := 'L';
//                  end
//               else
//                  RetornoECF := 'O';
//            end;
//         end;
//   end;

   case Operacao of
      ineSubTotal:
         begin
             RetornoECF := FloatToStr(dsTotais.DataSet.FieldByName('valor_liquido').AsFloat);
         end;
      ineTotalAPagar:
         begin
             // ACBrTEFD1.RespostasPendentes.TotalPago  deve ser subtraido, pois ACBrTEFD já subtrai o total dos pagamentos em TEF internamente
             RetornoECF := FloatToStr(RoundTo(dsTotais.DataSet.FieldByName('valor_recebido').AsFloat -
                                              ACBrTEFD1.RespostasPendentes.TotalPago, -2));
         end;
      ineEstadoECF :
         begin
            RetornoECF := 'P';
            //"L" - Livre
            //"V" - Venda de Itens
            //"P" - Pagamento (ou SubTotal efetuado)
            //"C" ou "R" - CDC ou Cupom Vinculado
            //"G" ou "R" - Relatório Gerencial
            //"N" - Recebimento Não Fiscal
            //"O" - Outro
            case fStatusVenda of
               stsIniciada:
                  begin
                     RetornoECF := 'V';
                  end;
               stsEmPagamento:
                  begin
                     RetornoECF := 'P';
                  end;
               stsLivre,
               stsFinalizada,
               stsCancelada,
               stsAguardandoTEF,
               stsOperacaoTEF:
                  begin
                      RetornoECF := 'L';
                  end
               else
                  RetornoECF := 'O';
            end;
         end;
   end;
end;

procedure TModelTEF.AdicionarLinhaImpressao(ALinha: String);
begin
   if ACBrPosPrinter1.Ativo then
      ACBrPosPrinter1.Imprimir(ALinha);
end;

procedure TModelTEF.AdicionarLinhaLog(AMensagem: String);
begin
   fLogOperacao.GravaLog(AMensagem);
end;

procedure TModelTEF.AtribuiDataSetTotais(DataSet: TDataSet);
begin
   dsTotais.DataSet := DataSet;
end;

procedure TModelTEF.ConfigurarPosPrinter;
begin
   with ACBrPosPrinter1 do
      begin
         if Ativo then
            Desativar;
         // ppTexto, ppEscPosEpson, ppEscBematech, ppEscDaruma, ppEscVox,
         // ppEscDiebold, ppEscEpsonP2, ppCustomPos, ppEscPosStar, ppEscZJiang,
         // ppEscGPrinter, ppEscDatecs, ppEscSunmi, ppExterno
         Modelo := TACBrPosPrinterModelo(1);
         // pcNone, pc437, pc850, pc852, pc860, pcUTF8, pc1252
         PaginaDeCodigo := TACBrPosPaginaCodigo(2);
         if fPortaEmissorCupom = '' then
            Porta := TPath.Combine(ExtractFilePath(ParamStr(0)), 'ECF.prn')
         else
            Porta := fPortaEmissorCupom;
         ColunasFonteNormal := 40;
         LinhasEntreCupons := 0;
         EspacoEntreLinhas := 0;
         Ativar;
      end;
end;

procedure TModelTEF.ConfigurarTEF;
var
   ALogFileName: TFileName;
begin
   ALogFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'log'), 'TEF_DIAL.log');
   fLogOperacao := TModelLogOperacao.New(ALogFileName);
   with ACBrTEFD1 do
      begin
         ArqLOG := ALogFileName;
         TrocoMaximo := 0;
         ImprimirViaClienteReduzida := False;
         MultiplosCartoes := True;
         ConfirmarAntesDosComprovantes := True;
         NumeroMaximoCartoes := 5;
         SuportaDesconto := True;
         SuportaSaque := True;

         Identificacao.SoftwareHouse := 'M R LEAL FERREIRA';
         Identificacao.RegistroCertificacao := '123456';
         Identificacao.NomeAplicacao := 'MasterPDV';
         Identificacao.VersaoAplicacao := '2.0';

         TEFPayGo.SuportaReajusteValor := True;
         TEFPayGo.SuportaNSUEstendido := True;
         TEFPayGo.SuportaViasDiferenciadas := True;

         TEFPayGoWeb.ExibicaoQRCode := qreExibirNoCheckOut;

         //TEFPayGoWeb.DiretorioTrabalho := 'C:\PAYGOWEB';
         //PathBackup := 'C:\TEF\TER01';
         //TEFPayGoWeb.PathDLL := 'C:\DLLs';

         // Configurações abaixo são obrigatórios, para funcionamento de Não Fiscal //
         AutoEfetuarPagamento := False;
         AutoFinalizarCupom := False;
      end;
end;

procedure TModelTEF.ExibirPainelQRCode;
begin
//   if pQRCode.Visible then
//      Exit;
//
//   mImpressao.Visible := False;
//   lSaidaImpressao.Visible := False;
//   pQRCode.Visible := True;
//   pQRCode.Align := alClient;
end;

function TModelTEF.GetIndicePagto: String;
begin
   Result := fIndicePagto;
end;

function TModelTEF.GetNSU: String;
begin
   Result := fNSU;
end;

function TModelTEF.GetPortaEmissorCupom: String;
begin
   Result := fPortaEmissorCupom;
end;

function TModelTEF.GetRede: String;
begin
   Result := fRede;
end;

function TModelTEF.GetRedeCNPJ: String;
begin
   Result := fRedeCNPJ;
end;

function TModelTEF.GetStatusVenda: TStatusVenda;
begin
   Result := fStatusVenda;
end;

function TModelTEF.GetTemTEF: Boolean;
begin
   Result := fTemTEF;
end;

function TModelTEF.GetValorTotal: Double;
begin
   Result := fValorTotal;
end;

function TModelTEF.ImprimeComprovanteTransacao(const Via: Integer;
   const ImagemComprovante: TStringList): Boolean;
var
   AImpressora: TImpressao;
   I: Integer;
begin
   AImpressora := TImpressao.Create(fPortaEmissorCupom);
   try
//      AImpressora.Porta := fPortaEmissorCupom;
      AImpressora.LinhasFinal := 5;
      if AImpressora.AbreImpressao then
         begin
            for I := 0 to ImagemComprovante.Count - 1 do
                AImpressora.Imprime(ImagemComprovante[I], [Esquerda]);
            AImpressora.Expulsa;
            AImpressora.FechaImpressao;
            Result := True;
         end
      else
         Result := False;
   finally
      AImpressora.Free;
   end;
end;

procedure TModelTEF.InformarParametrosCartaoCredito;
begin
   // Instruindo CRT a apenas transações de Crédito...
   // Isso é Opcional, e está aqui apenas para demonstração
   if ACBrTEFD1.GPAtual = gpPayGoWeb then
      begin
         ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '01'; //01: crédito;  3 = 1 crédito + 2 débito
         //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE]:='1'; //01: crédito
         //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='1'; //01: à vista, 2: parcelado
         //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_AUTHSYST]:='REDE';
         //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_INSTALLMENTS]:='3';
      end
   else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
            ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 3;
end;

procedure TModelTEF.InformarParametrosCartaoDebito;
begin
   // Instruindo CRT a apenas transações de Débito
   if ACBrTEFD1.GPAtual = gpPayGoWeb then
      begin
         ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '02'; //02: débito
         //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='01'; //01: à vista
      end
   else if ACBrTEFD1.GPAtual = gpCliSiTef then
            ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 2;
end;

procedure TModelTEF.InformarParametrosCarteiraDigital;
begin
   // Instruindo CRT a apenas transações de Débito
   if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE]:='8' // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
   else if ACBrTEFD1.GPAtual = gpCliSiTef then
           begin
//                 case cbxQRCode.ItemIndex of
//                    3, 4:
//                       begin
//                          ACBrTEFD1.TEFCliSiTef.Restricoes  := '{DevolveStringQRCode=1}'; {No CheckOut}
//                       end
//                    else
//                       ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=0}'; {No PinPad}
//                 end;
              ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 122;
           end;
end;

procedure TModelTEF.InformarParametrosVoucher;
begin
   // Instruindo CRT a apenas transações de Débito
   if ACBrTEFD1.GPAtual = gpPayGoWeb then
      begin
         ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE] := '1'; // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
         ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '04'; // 1: crédito 2: débito 4: voucher/PAT 8: private label 16: frota 128: outros
      end;
end;

procedure TModelTEF.OcultatPainelQRCode;
begin
//   if not pQRCode.Visible then
//      Exit;
//
//   pQRCode.Visible := False;
//   mImpressao.Visible := True;
//   lSaidaImpressao.Visible := True;
end;

procedure TModelTEF.SetIndicePagto(const Value: String);
begin
   if Value <> fIndicePagto then
      fIndicePagto := Value;
    fTemTEF := (StrToIntDef(fIndicePagto, 0) >= 2) and (StrToIntDef(fIndicePagto, 0) <= 5);
end;

procedure TModelTEF.SetNSU(const Value: String);
begin
   if Value <> fNSU then
      fNSU := Value;
end;

procedure TModelTEF.SetPortaEmissorCupom(const Value: String);
begin
   if Value <> fPortaEmissorCupom then
      fPortaEmissorCupom := Value;
end;

procedure TModelTEF.SetRede(const Value: String);
begin
   if Value <> fRede then
      fRede := Value;
end;

procedure TModelTEF.SetRedeCNPJ(const Value: String);
begin
   if Value <> fRedeCNPJ then
      fRedeCNPJ := Value;
end;

procedure TModelTEF.SetStatusVenda(const Value: TStatusVenda);
begin
   if Value <> fStatusVenda then
      fStatusVenda := Value;
end;

procedure TModelTEF.SetTemTEF(const Value: Boolean);
begin
   if Value <> fTemTEF then
      fTemTEF := Value;
end;

procedure TModelTEF.TEF_Mensagem(const MsgOperador, MsgCliente: String);
begin
//   with frmTransacaoTEF do
//      begin
//         if MsgOperador <> '' then
//            lblMensagemOperador.Caption := MsgOperador;
//
//         if MsgCliente <> '' then
//            lblMensagemCliente.Caption := MsgCliente;
//
//         panMensagemOperador.Visible := (Trim(lblMensagemOperador.Caption) <> '');
//         panMensagemCliente.Visible := (Trim(lblMensagemCliente.Caption) <> '');
//      end;
   Application.ProcessMessages;
end;

procedure TModelTEF.TEF_PayGoWebExibeMensagem(Mensagem: String;
  Terminal: TACBrTEFPGWebAPITerminalMensagem; MilissegundosExibicao: Integer);
//var
//   FormExibeMensagem: TFormExibeMensagem;
begin
   if Mensagem = '' then
      begin
        if Terminal in [tmCliente, tmTodas] then
           TEF_Mensagem('',' ');
        if Terminal in [tmOperador, tmTodas] then
           TEF_Mensagem(' ','') ;
      end
  else if MilissegundosExibicao >= 0 then
          begin
//             FormExibeMensagem := TFormExibeMensagem.Create(Self);
//             try
//                FormExibeMensagem.Mensagem := Mensagem;
//                FormExibeMensagem.TempoEspera := MilissegundosExibicao;
//                FormExibeMensagem.ShowModal;
//             finally
//                FreeAndNil(FormExibeMensagem);
//             end;
          end
  else
     begin
       if Terminal in [tmCliente, tmTodas] then
          TEF_Mensagem('',Mensagem);
       if Terminal in [tmOperador, tmTodas] then
          TEF_Mensagem(Mensagem,'');
     end;
end;

end.
