unit MasterPDV.View.TransacaoTEF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, LealSoftwares.Model.LogOperacao.Interfaces,
  Data.DB, Vcl.ExtCtrls, AdvSmoothPanel,
  ACBrTEFDClass, ACBrTEFComum, ACBrTEFDCliSiTef, ACBrTEFPayGoComum,
  ACBrTEFPayGoWebComum, ACBrTEFDPayGoWeb,
  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, cxDBLabel, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDBEdit, cxCurrencyEdit, ACBrPosPrinter,
  ACBrTEFAPIComum, ACBrTEFAPI, ACBrBase, ACBrTEFD, AdvSmoothButton;

type
  TTipoBotaoOperacao = (bopNaoExibir, bopCancelarVenda, bopLiberarCaixa,
                        bopCancelarEsperaTEF);

  TfrmTransacaoTEF = class(TfrmPadrao)
    dsTerminais: TDataSource;
    dsEstabelecimentos: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    dsVendas_Totais: TDataSource;
    panFormaPagamento: TAdvSmoothPanel;
    panAreaDeTrabalho: TPanel;
    panValorReceber: TAdvSmoothPanel;
    lblValorReceber: TcxDBLabel;
    spnedtFormaPagamento: TcxSpinEdit;
    lblDescricaoFormaPagamento: TcxLabel;
    curredtValorTransacao: TcxCurrencyEdit;
    dsTerminais_Transacoes_TEF: TDataSource;
    panMensagemOperador: TAdvSmoothPanel;
    panMensagemCliente: TAdvSmoothPanel;
    lblMensagemOperador: TcxLabel;
    lblMensagemCliente: TcxLabel;
    ACBrTEFD1: TACBrTEFD;
    ACBrTEFAPI1: TACBrTEFAPI;
    ACBrPosPrinter1: TACBrPosPrinter;
    panBarraDeFerramentas: TPanel;
    btnOperacao: TAdvSmoothButton;
    panTotais: TPanel;
    lblValorTransacao: TcxLabel;
    lblFormaPagamento: TcxLabel;
    procedure curredtValorTransacaoEnter(Sender: TObject);
    procedure curredtValorTransacaoExit(Sender: TObject);
    procedure spnedtFormaPagamentoEnter(Sender: TObject);
    procedure spnedtFormaPagamentoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spnedtFormaPagamentoPropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spnedtFormaPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure curredtValorTransacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure FormCreate(Sender: TObject);
    procedure spnedtFormaPagamentoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    fLogOperacao: IModelLogOperacao;
    fTipoBotaoOperacao: TTipoBotaoOperacao;
    fCanceladoPeloOperador: Boolean;
    fTempoDeEspera: TDateTime;
    fTestePayGo: Integer;
    fIndicePagto: String;
    procedure ConfigurarTEF;
    procedure ConfigurarPosPrinter;
    procedure DescreveFormaDePagamento;
    procedure AdicionarPagamento(const Indice: String; AValor: Double);
    procedure SetTipoBotaoOperacao(const Value: TTipoBotaoOperacao);
    procedure ExibirPainelQRCode;
    procedure OcultatPainelQRCode;
    procedure AdicionarLinhaLog(AMensagem: String);
    procedure AdicionarLinhaImpressao(ALinha: String);
  public
    { Public declarations }
    property TipoBotaoOperacao: TTipoBotaoOperacao read FTipoBotaoOperacao write SetTipoBotaoOperacao;
  end;

// Eventos do componente TEF
procedure TEF_Mensagem(const MsgOperador, MsgCliente: String);
procedure TEF_PayGoWebExibeMensagem(Mensagem: String;
                                    Terminal: TACBrTEFPGWebAPITerminalMensagem;
                                    MilissegundosExibicao: Integer);

var
  frmTransacaoTEF: TfrmTransacaoTEF;

implementation

uses
   System.IOUtils, DateUtils, StrUtils, System.TypInfo, System.Math,
   ACBrUtil, ACBrDelphiZXingQRCode,
   VCL.Funcoes,
   LealSoftwares.Model.LogOperacao,
   UMasterPDVDataModulePDV;

{$R *.dfm}

procedure TEF_Mensagem(const MsgOperador, MsgCliente: String);
begin
   with frmTransacaoTEF do
      begin
         if MsgOperador <> '' then
            lblMensagemOperador.Caption := MsgOperador;

         if MsgCliente <> '' then
            lblMensagemCliente.Caption := MsgCliente;

         panMensagemOperador.Visible := (Trim(lblMensagemOperador.Caption) <> '');
         panMensagemCliente.Visible := (Trim(lblMensagemCliente.Caption) <> '');
      end;
   Application.ProcessMessages;
end;

procedure TEF_PayGoWebExibeMensagem(Mensagem: String;
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

{ TfrmTransacaoTEF }

procedure TfrmTransacaoTEF.ACBrTEFD1AguardaResp(Arquivo: string;
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
            // StatusVenda := stsAguardandoTEF;

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

procedure TfrmTransacaoTEF.ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
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

procedure TfrmTransacaoTEF.ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
  var Tratado: Boolean);
begin
  inherited;
  Self.Enabled := not Bloqueia ;
  AdicionarLinhaLog('BloqueiaMouseTeclado = ' + IfThen(Bloqueia,'SIM', 'NAO'));
  Tratado := False ;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TfrmTransacaoTEF.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
begin
  inherited;
   AdicionarLinhaLog('ACBrTEFD1ComandaECF: ' + GetEnumName(TypeInfo(TACBrTEFDOperacaoECF), Integer(Operacao)));

//   try
//      case Operacao of
//         opeAbreGerencial:
//            begin
//               AdicionarLinhaImpressao('</zera>');
//            end;
//
//         opeSubTotalizaCupom:
//            begin
//               if StatusVenda = stsIniciada then
//               StatusVenda := stsEmPagamento;
//            end;
//
//         opeCancelaCupom:
//            begin
//               CancelarVenda;
//            end;
//
//         opeFechaCupom:
//            begin
//               FinalizarVenda;
//            end;
//
//         opePulaLinhas:
//            begin
//               PularLinhasECortar;
//            end;
//
//         opeFechaGerencial,
//         opeFechaVinculado:
//            begin
//               PularLinhasECortar;
//               if StatusVenda in [stsOperacaoTEF] then
//                  StatusVenda := stsFinalizada;
//            end;
//      end;
//      RetornoECF := 1;
//   except
//      RetornoECF := 0;
//   end;
end;

procedure TfrmTransacaoTEF.ACBrTEFD1ComandaECFAbreVinculado(COO,
  IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  inherited;
  AdicionarLinhaLog( 'ACBrTEFD1ComandaECFAbreVinculado, COO:'+COO+
     ' IndiceECF: '+IndiceECF+' Valor: '+FormatFloatBr(Valor) ) ;
  AdicionarLinhaImpressao('</zera>');
  AdicionarLinhaImpressao('</linha_dupla>');
  RetornoECF := 1;
end;

procedure TfrmTransacaoTEF.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  inherited;
   AdicionarLinhaLog( 'ACBrTEFD1ComandaECFImprimeVia: '+IntToStr(Via) );
   AdicionarLinhaImpressao( ImagemComprovante.Text );
   RetornoECF := 1 ;
end;

procedure TfrmTransacaoTEF.ACBrTEFD1ComandaECFPagamento(IndiceECF: string;
  Valor: Double; var RetornoECF: Integer);
begin
  inherited;
   AdicionarLinhaLog('ACBrTEFD1ComandaECFPagamento, IndiceECF: '+IndiceECF+' Valor: '+FormatFloatBr(Valor));
   RetornoECF := 1;
end;

procedure TfrmTransacaoTEF.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
  inherited;
   AdicionarLinhaLog('ACBrTEFD1ComandaECFSubtotaliza: DescAcre: ' + FormatFloatBr(DescAcre));
//   if StatusVenda = stsIniciada then
//      StatusVenda := stsEmPagamento;
end;

procedure TfrmTransacaoTEF.ACBrTEFD1DepoisCancelarTransacoes(
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

procedure TfrmTransacaoTEF.ACBrTEFD1DepoisConfirmarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
var
   i: Integer;
begin
   inherited;
   for i := 0 to RespostasPendentes.Count - 1  do
      begin
         with RespostasPendentes[i] do
            begin
               AdicionarLinhaLog('Confirmado: '+Header+' ID: '+IntToStr( ID ) );
               // Lendo os campos mapeados //
               AdicionarLinhaLog('- Rede: '  + Rede + ', NSU: '  + NSU );
               //AdicionarLinhaLog('- Parcelas: '+ IntToStr(QtdParcelas) +
               //                  ', parcelado por: '+ GetEnumName(TypeInfo(TACBrTEFRespParceladoPor), integer(ParceladoPor) ));
               AdicionarLinhaLog('- É Débito: '+BoolToStr(Debito)+
                                 ', É Crédito: '+BoolToStr(Credito)+
                                 ', Valor: '+ FormatFloat('###,###,##0.00',ValorTotal)) ;

               // Lendo um Campo Específico //
               //AdicionarLinhaLog('- Campo 11: ' + LeInformacao(11,0).AsString );
//               Venda.Pagamentos.ConfirmarPagamento(Rede, NSU, ValorTotal);
            end;
      end;

//  AtualizarPagamentosVendaNaInterface;
end;

procedure TfrmTransacaoTEF.ACBrTEFD1ExibeMsg(
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
            OldMensagem := lblMensagemOperador.Caption;
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

procedure TfrmTransacaoTEF.ACBrTEFD1ExibeQRCode(const Dados: string);
var
   QRCode: TDelphiZXingQRCode;
   QRCodeBitmap: TBitmap;
   Row, Column: Integer;
begin
   inherited;
//   if not (StatusVenda in [stsAguardandoTEF, stsOperacaoTEF]) then
//      StatusVenda := stsAguardandoTEF;

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

procedure TfrmTransacaoTEF.ACBrTEFD1GravarLog(const GP: TACBrTEFDTipo;
  ALogLine: string; var Tratado: Boolean);
begin
  inherited;
  AdicionarLinhaLog(ALogLine);
  Tratado := False;
end;

procedure TfrmTransacaoTEF.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
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

   case Operacao of
      ineSubTotal :
         begin
             RetornoECF := FloatToStr(dsVendas_Totais.DataSet.FieldByName('valor_liquido').AsFloat);
         end;

      ineTotalAPagar :
         begin
             // ACBrTEFD1.RespostasPendentes.TotalPago  deve ser subtraido, pois ACBrTEFD já subtrai o total dos pagamentos em TEF internamente
             RetornoECF := FloatToStr(RoundTo(dsVendas_Totais.DataSet.FieldByName('valor_recebido').AsFloat -
                                              ACBrTEFD1.RespostasPendentes.TotalPago, -2));
         end;

      ineEstadoECF :
         begin
            RetornoECF := 'P';
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
         end;
   end;
end;

procedure TfrmTransacaoTEF.AdicionarLinhaImpressao(ALinha: String);
begin
//   mImpressao.Lines.Add(ALinha);
   if ACBrPosPrinter1.Ativo then
      ACBrPosPrinter1.Imprimir(ALinha);
end;

procedure TfrmTransacaoTEF.AdicionarLinhaLog(AMensagem: String);
begin
//   mLog.Lines.Add(AMensagem);
end;

procedure TfrmTransacaoTEF.AdicionarPagamento(const Indice: String;
  AValor: Double);
   procedure InformarParametrosCartaoCredito;
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

   procedure InformarParametrosCartaoDebito;
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

   procedure InformarParametrosCarteiraDigital;
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

   procedure InformarParametrosVoucher;
   begin
      // Instruindo CRT a apenas transações de Débito
      if ACBrTEFD1.GPAtual = gpPayGoWeb then
         begin
            ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE] := '1'; // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
            ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '04'; // 1: crédito 2: débito 4: voucher/PAT 8: private label 16: frota 128: outros
         end;
   end;

var
   Ok,
   TemTEF: Boolean;
   ReajusteValor: Double;
   UltResp: TACBrTEFResp;
begin
   Ok := False;
   TemTEF := False;
   fIndicePagto := Indice;

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
            Ok := ACBrTEFD1.CHQ(AValor, '01');
            TemTEF := True;
         end
      else if Indice = '03' then     // 03-CREDITO
              begin
                InformarParametrosCartaoCredito;
                Ok := ACBrTEFD1.CRT(AValor, '01');
                TemTEF := True;
              end
      else if Indice = '04' then     // 04-DEBITO
              begin
                 InformarParametrosCartaoDebito;
                 Ok := ACBrTEFD1.CRT(AValor, '01');
                 TemTEF := True;
              end
      else if Indice = '05' then    // 05-CARTEIRA DIGITAL
              begin
                 fTestePayGo := 27;
                 InformarParametrosCarteiraDigital;
                 Ok := ACBrTEFD1.CRT(AValor, '01');
                 TemTEF := True;
              end
      else if Indice = '06' then    // 05-VALE REFEICAO
              begin
                 InformarParametrosVoucher;
                 Ok := ACBrTEFD1.CRT(AValor, '01');
                 TemTEF := True;
              end
      else
         Ok := True;                  // Pagamentos não TEF

   finally
//      StatusVenda := stsEmPagamento;
   end;

//   if Ok then
//      begin
//         with Venda.Pagamentos.New do
//            begin
//               TipoPagamento := Indice;
//               ValorPago := AValor;
//
//               if TemTEF then
//                  begin
//                     UltResp := ACBrTEFD1.RespostasPendentes[ACBrTEFD1.RespostasPendentes.Count-1];
//
//                     NSU := UltResp.NSU;
//                     Rede := UltResp.Rede;
//                     RedeCNPJ := UltResp.NFCeSAT.CNPJCredenciadora;
//
//                     // Calcula a Diferença do Valor Retornado pela Operação TEF do Valor que
//                     //   Informamos no CRT/CHQ
//                     ReajusteValor := RoundTo(UltResp.ValorTotal - AValor, -2);
//
//                     Saque := UltResp.Saque;
//
//                     if Saque > 0 then
//                        begin
//                           // Se houve Saque na operação TEF, devemos adicionar no ValorPago,
//                           //   para que o Saque conste como Troco
//                           ValorPago := ValorPago + Saque
//                        end
//                     else if ReajusteValor > 0 then
//                              begin
//                                 // Se não é Saque, mas houve acréscimo no valor Retornado, devemos lançar
//                                 //   o Reajuste como Acréscimo na venda
//                                 Venda.TotalAcrescimo := Venda.TotalAcrescimo + ReajusteValor;
//                              end;
//
//                     Desconto := UltResp.Desconto;
//                     if Desconto > 0 then
//                        begin
//                           // Se houve Desconto na Operação TEF, devemos subtrair do ValorPago
//                           //   e lançar um Desconto no Total da Transacao
//                           ValorPago := ValorPago - Desconto;
//                           Venda.TotalDesconto := Venda.TotalDesconto + Desconto;
//                        end
//                     else if ReajusteValor < 0 then
//                             begin
//                                // Se não é Desconto, mas houve redução no Valor Retornado, devemos
//                                //   considerar a redução no ValorPago, pois a Adquirente limitou o
//                                //   valor da Operação, a um máximo permitido... Deverá fechar o cupom,
//                                //   com outra forma de Pagamento
//                                ValorPago := ValorPago + ReajusteValor;
//                             end;
//                  end
//               else
//                  Confirmada := True;
//            end;

//         AtualizarPagamentosVendaNaInterface;
//
//         if Venda.TotalPago >= Venda.TotalVenda then
//            FinalizarVenda;
//      end;
end;

procedure TfrmTransacaoTEF.ConfigurarPosPrinter;
begin
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( 1 );
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( 2 );
  ACBrPosPrinter1.Porta := TPath.Combine(ExtractFilePath(ParamStr(0)), 'ECF.txt');
  ACBrPosPrinter1.ColunasFonteNormal := 40;
  ACBrPosPrinter1.LinhasEntreCupons := 0;
  ACBrPosPrinter1.EspacoEntreLinhas := 0;
end;

procedure TfrmTransacaoTEF.ConfigurarTEF;
begin
   ACBrTEFD1.ArqLOG := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'log'), 'TEF' + FormatDateTime('yyyymmdd_hhnnss', Now()) + '.log');
   ACBrTEFD1.TrocoMaximo := 0;
   ACBrTEFD1.ImprimirViaClienteReduzida := False;
   ACBrTEFD1.MultiplosCartoes := True;
   ACBrTEFD1.ConfirmarAntesDosComprovantes := True;
   ACBrTEFD1.NumeroMaximoCartoes := 5;
   ACBrTEFD1.SuportaDesconto := True;
   ACBrTEFD1.SuportaSaque := True;

   ACBrTEFD1.Identificacao.SoftwareHouse := 'M R LEAL FERREIRA';
   ACBrTEFD1.Identificacao.RegistroCertificacao := '123456';
   ACBrTEFD1.Identificacao.NomeAplicacao := 'MasterPDV';
   ACBrTEFD1.Identificacao.VersaoAplicacao := '2.0';

   ACBrTEFD1.TEFPayGo.SuportaReajusteValor := True;
   ACBrTEFD1.TEFPayGo.SuportaNSUEstendido := True;
   ACBrTEFD1.TEFPayGo.SuportaViasDiferenciadas := True;

   ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoCheckOut;

   //ACBrTEFD1.TEFPayGoWeb.DiretorioTrabalho := 'C:\PAYGOWEB';
   //ACBrTEFD1.PathBackup := 'C:\TEF\TER01';
   //ACBrTEFD1.TEFPayGoWeb.PathDLL := 'C:\DLLs';

   // Configurações abaixo são obrigatórios, para funcionamento de Não Fiscal //
   ACBrTEFD1.AutoEfetuarPagamento := False;
   ACBrTEFD1.AutoFinalizarCupom := False;
end;

procedure TfrmTransacaoTEF.curredtValorTransacaoEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
end;

procedure TfrmTransacaoTEF.curredtValorTransacaoExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TfrmTransacaoTEF.curredtValorTransacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
      begin
         if Confirmacao('Confirma Pagamento?') then
            begin
               AdicionarPagamento(dsTerminais_Transacoes_TEF.DataSet.FieldByName('indice_tef').AsString,
                                  curredtValorTransacao.EditValue);
            end;
      end;
end;

procedure TfrmTransacaoTEF.DescreveFormaDePagamento;
begin
   if not dsTerminais_Transacoes_TEF.DataSet.Locate('id_transacao', spnedtFormaPagamento.EditValue, []) then
      begin
         lblDescricaoFormaPagamento.Caption := 'FORMA DE PAGAMENTO INVÁLIDA';
      end
   else
      begin
         lblDescricaoFormaPagamento.Caption := dsTerminais_Transacoes_TEF.DataSet.FieldByName('descricao').AsString;
         lblDescricaoFormaPagamento.Visible := True;
         lblValorTransacao.Visible := True;
         curredtValorTransacao.Value := dsVendas_Totais.DataSet.FieldByName('valor_receber').AsFloat;
         curredtValorTransacao.Visible := True;
      end;
end;

procedure TfrmTransacaoTEF.ExibirPainelQRCode;
begin
//   if pQRCode.Visible then
//      Exit;
//
//   mImpressao.Visible := False;
//   lSaidaImpressao.Visible := False;
//   pQRCode.Visible := True;
//   pQRCode.Align := alClient;
end;

procedure TfrmTransacaoTEF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   with dsTerminais_Transacoes_TEF do
      begin
         if DataSet.Active then
            DataSet.Close;
      end;
end;

procedure TfrmTransacaoTEF.FormCreate(Sender: TObject);
begin
  inherited;
   fLogOperacao := TModelLogOperacao.New(TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'log'), 'TEF' + FormatDateTime('yyyymmdd_hhnnss', Now()) + '.log'));
end;

procedure TfrmTransacaoTEF.FormShow(Sender: TObject);
begin
  inherited;
   with dsTerminais_Transacoes_TEF do
      begin
         if DataSet.Active then
            DataSet.Close;

         DataSet.Open;
      end;

   with dsVendas_Totais do
      begin
         lblValorReceber.Caption := FormatFloatBr(DataSet.FieldByName('valor_receber').AsFloat);
      end;

   spnedtFormaPagamento.EditValue := 0;
   spnedtFormaPagamento.PostEditValue;

   lblDescricaoFormaPagamento.Caption := '';

   curredtValorTransacao.Value := 0;

   ConfigurarTEF;
   // gpNenhum, gpTefDial, gpTefDisc, gpHiperTef, gpCliSiTef,
   // gpTefGpu, gpVeSPague, gpBanese, gpTefAuttar, gpGoodCard,
   // gpFoxWin, gpCliDTEF, gpPetrocard, gpCrediShop, gpTicketCar,
   // gpConvCard, gpCappta, gpPayGo, gpPayGoWeb, gpCliSiTefModular,
   // gpTefDirecao
   ACBrTEFD1.Inicializar(TACBrTEFDTipo(dsTerminais.DataSet.FieldByName('id_gerenciador_tef').AsInteger));

   WindowState := TWindowState.wsMaximized;
end;

procedure TfrmTransacaoTEF.OcultatPainelQRCode;
begin
//   if not pQRCode.Visible then
//      Exit;
//
//   pQRCode.Visible := False;
//   mImpressao.Visible := True;
//   lSaidaImpressao.Visible := True;
end;

procedure TfrmTransacaoTEF.SetTipoBotaoOperacao(
  const Value: TTipoBotaoOperacao);
var
   MsgOperacao: String;
begin
   if fTipoBotaoOperacao = Value then
      Exit;

   MsgOperacao := '';

   case Value of
      bopCancelarVenda,
      bopCancelarEsperaTEF:
         begin
            MsgOperacao := 'Cancelar';
         end;

      bopLiberarCaixa:
         begin
            MsgOperacao := 'Liberar';
         end;
   end;

  fTipoBotaoOperacao := Value;

  btnOperacao.Caption := 'ESC - ' + MsgOperacao;
  btnOperacao.Enabled := (MsgOperacao <> '');
end;

procedure TfrmTransacaoTEF.spnedtFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
end;

procedure TfrmTransacaoTEF.spnedtFormaPagamentoExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TfrmTransacaoTEF.spnedtFormaPagamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
      begin
         Perform(WM_NEXTDLGCTL, 0, 0);
      end;
end;

procedure TfrmTransacaoTEF.spnedtFormaPagamentoPropertiesChange(
  Sender: TObject);
begin
  inherited;
   lblDescricaoFormaPagamento.Visible := False;
   lblValorTransacao.Visible := False;
   curredtValorTransacao.Visible := False;
end;

procedure TfrmTransacaoTEF.spnedtFormaPagamentoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   if TcxSpinEdit(Sender).EditValue = 0 then
      lblDescricaoFormaPagamento.Caption := ''
   else
      DescreveFormaDePagamento;
end;

end.
