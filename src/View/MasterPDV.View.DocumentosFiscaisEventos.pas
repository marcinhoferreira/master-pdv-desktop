unit MasterPDV.View.DocumentosFiscaisEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, Data.DB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, cxCurrencyEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier;

type
  TdlgDocumentosFiscaisEventos = class(TfrmPrivilegios)
    dsDocumentos_Fiscais_Eventos: TDataSource;
    gboxInformacoesDocumentoFiscal: TcxGroupBox;
    gboxInformacoesEvento: TcxGroupBox;
    lblNumero: TcxLabel;
    dbcurredtNumero: TcxDBCurrencyEdit;
    dsDocumentos_Fiscais: TDataSource;
    lblDataEmissao: TcxLabel;
    dbdtedtDataEmissao: TcxDBDateEdit;
    lblSerie: TcxLabel;
    dbcurredtSerie: TcxDBCurrencyEdit;
    lblChave: TcxLabel;
    dbtxtedtChave: TcxDBTextEdit;
    lblTipoEvento: TcxLabel;
    dbcmbTipoEvento: TcxDBComboBox;
    gboxTextoEvento: TcxGroupBox;
    dbmmoTextoEvento: TcxDBMemo;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    lblRecibo: TcxLabel;
    dbtxtedtRecibo: TcxDBTextEdit;
    lblProtocoloAutorizacao: TcxLabel;
    dbtxtedtProtocoloAutorizacao: TcxDBTextEdit;
    dsEstabelecimentos: TDataSource;
    dsTerminais: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    dsMovimentos_Operacoes: TDataSource;
  private
    { Private declarations }
    procedure ConfiguraComponentesACBr;
    function RegistraEventoDocumentoFiscal: Boolean;
  public
    { Public declarations }
    function Cancelamento(ADataSet: TDataSet): Boolean;
  end;

var
  dlgDocumentosFiscaisEventos: TdlgDocumentosFiscaisEventos;

implementation

{$R *.dfm}

uses
   StrUtils, MaskUtils,
   Uni, pcnConversao,
   UDataModuleLeiaute,
   UDataModuleConexao,
   UDataModuleComponentesACBr,
   UMasterPDVDataModuleDocumentosFiscais;

{ TdlgDocumentosFiscaisEventos }

function TdlgDocumentosFiscaisEventos.Cancelamento(ADataSet: TDataSet): Boolean;
begin
   gboxTextoEvento.Caption := 'Justificativa para o cancelamento (mínimo 15 caracteres):';
   dsDocumentos_Fiscais.DataSet.Close;
   TUniQuery(dsDocumentos_Fiscais.DataSet).ParamByName('id_documento_fiscal').Value := ADataSet.FieldByName('numero_documento_fiscal').AsInteger;
   dsDocumentos_Fiscais.DataSet.Open;
   Result := False;
   if Not dsDocumentos_Fiscais.DataSet.IsEmpty then
      begin
         if dsDocumentos_Fiscais_Eventos.DataSet.IsEmpty then
            dsDocumentos_Fiscais_Eventos.DataSet.Append
         Else
            dsDocumentos_Fiscais_Eventos.DataSet.Edit;
         dsDocumentos_Fiscais_Eventos.DataSet.FieldByName('data_evento').AsDateTime := dmConexao.GetCurrentDateTime;
         dsDocumentos_Fiscais_Eventos.DataSet.FieldByName('tipo_evento').AsString := '110111';
         Result := ShowModal = mrOk;
         if Result then
            begin
               ADataSet.Edit;
               // 0-Venda em antamento / 1-Aguardando Aprovação / 3-Aguardando Pagamento / 5-Finalizada / 8-Desistência / 9-Cancelada
               ADataSet.FieldByName('status').AsString := '9';
               ADataSet.Post;
            end;
      end;
   dsDocumentos_Fiscais.DataSet.Close;
end;

procedure TdlgDocumentosFiscaisEventos.ConfiguraComponentesACBr;
var
   ACaminhoSchemas: String;
begin
   ACaminhoSchemas := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Schemas\NFe');
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
end;

function TdlgDocumentosFiscaisEventos.RegistraEventoDocumentoFiscal: Boolean;
var
   OK: Boolean;
   i,
   ANumeroLote: Integer;
   ATextoEvento: TStrings;
begin
   Result := False;
   if dmComponentesACBr.ACBrNFe1.WebServices.StatusServico.Executar then
      begin
         dmComponentesACBr.ACBrNFe1.EventoNFe.Evento.Clear;
         with dmComponentesACBr.ACBrNFe1.EventoNFe.Evento.Add do
            begin
               infEvento.chNFe := dsDocumentos_Fiscais.DataSet.FieldByName('chave').AsString;
               infEvento.CNPJ := dsDocumentos_Fiscais.DataSet.FieldByName('cnpj_emitente').AsString;
               infEvento.dhEvento := dsDocumentos_Fiscais_Eventos.DataSet.FieldByName('data_evento').AsDateTime;
               infEvento.tpEvento := StrToTpEvento_old(OK, dsDocumentos_Fiscais_Eventos.DataSet.FieldByName('tipo_evento').AsString);
               infEvento.nSeqEvento := dsDocumentos_Fiscais_Eventos.DataSet.FieldByName('sequencia_evento').AsInteger;
               infEvento.detEvento.nProt := dsDocumentos_Fiscais.DataSet.FieldByName('protocolo_autorizacao').AsString;
               ATextoEvento := TStringList.Create;
               try
                  ATextoEvento.Clear;
                  ATextoEvento.Assign(dsDocumentos_Fiscais.DataSet.FieldByName('texto_evento'));
                  if ATextoEvento.Count > 0 then
                     for i := 0 to ATextoEvento.Count - 1 do
                        if infEvento.tpEvento = teCancelamento then
                           begin
                              if infEvento.detEvento.xJust <> '' then
                                 infEvento.detEvento.xJust := infEvento.detEvento.xJust + ';';
                              infEvento.detEvento.xJust := infEvento.detEvento.xJust + ATextoEvento[i];
                           end
                        Else
                           begin
                              if infEvento.detEvento.xCorrecao <> '' then
                                 infEvento.detEvento.xCorrecao := infEvento.detEvento.xCorrecao + ';';
                              infEvento.detEvento.xCorrecao := infEvento.detEvento.xCorrecao + ATextoEvento[i];
                           end;
               finally
                  ATextoEvento.Free;
               end;
            end;

         ANumeroLote := dmDocumentosFiscais.GeraSequenciaLoteDocumentoFiscal(dsDocumentos_Fiscais.DataSet.FieldByName('id_emitente').AsInteger);
         // Enviar o evento de cancelamento
         if dmComponentesACBr.ACBrNFe1.EnviarEvento(ANumeroLote) then
            begin
               with dmComponentesACBr.ACBrNFe1.WebServices.EnvEvento do
                  begin
                     if EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
                        begin
                           raise Exception.CreateFmt(
                              'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:' + #10 +
                              'Código:%d' + #10 +
                              'Motivo: %s', [
                              EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                                 EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
                                 ]);
                        end;

                     // retornos
                     if Not (dsDocumentos_Fiscais_Eventos.State In dsEditModes) then
                        dsDocumentos_Fiscais_Eventos.DataSet.Edit;
                     dsDocumentos_Fiscais_Eventos.DataSet.FieldByName('protocolo').AsString := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
                     dsDocumentos_Fiscais_Eventos.DataSet.Post;

                     //DataHoraEvento := EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
                     //NumeroProtocolo := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
                     //XMLCancelamento := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
                     //CodigoStatus := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
                     //MotivoStatus := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
                  end;
            end
         else
            begin
               with dmComponentesACBr.ACBrNFe1.WebServices.EnvEvento do
                  begin
                     raise Exception.Create(
                        'Ocorreram erros ao tentar efetuar o cancelamento:' + #10 +
                        'Lote: ' + IntToStr(EventoRetorno.idLote) + #10 +
                        'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + #10 +
                        'Orgao: ' + IntToStr(EventoRetorno.cOrgao) + #10 +
                        #10 +
                        'Status: ' + IntToStr(EventoRetorno.cStat) + #10 +
                        'Motivo: ' + EventoRetorno.xMotivo
                        );
                  end;
            end;
      end;
end;

end.
