unit MasterPDV.View.ConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  MemDS, DBAccess, Uni, UFormularioPrivilegios,
  cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDBBotoes,
  cxTextEdit, cxDBEdit, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, System.ImageList, Vcl.ImgList, cxCurrencyEdit,
  dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges, cxImageList,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TdlgConsultaVendas = class(TfrmPrivilegios)
    qryVendas: TUniQuery;
    dsTerminais: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    dsVendas: TDataSource;
    gboxLocalizar: TcxGroupBox;
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    btnEnviar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnImprimir: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    lblTerminal: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    dbtabvwVendas: TcxGridDBTableView;
    grdVendasLevel1: TcxGridLevel;
    grdVendas: TcxGrid;
    qryVendasid_venda: TLargeintField;
    qryVendasdata_registro: TDateTimeField;
    qryVendasdocumento: TLargeintField;
    qryVendasnumero_documento_fiscal: TLargeintField;
    qryVendaschave: TStringField;
    qryVendasrecibo: TStringField;
    qryVendasprotocolo_autorizacao: TStringField;
    qryVendastipo_prazo: TStringField;
    qryVendasvalor_bruto: TFloatField;
    qryVendasvalor_acrescimo: TFloatField;
    qryVendasvalor_desconto: TFloatField;
    qryVendasvalor_troca: TFloatField;
    qryVendasvalor_entrada: TFloatField;
    qryVendasvalor_recebido: TFloatField;
    qryVendasid_usuario: TLargeintField;
    qryVendastipo_documento_fiscal: TStringField;
    qryVendasstatus: TStringField;
    qryVendasstatus_documento_fiscal: TStringField;
    dbtabvwVendasid_venda: TcxGridDBColumn;
    dbtabvwVendasdata_registro: TcxGridDBColumn;
    dbtabvwVendasdocumento: TcxGridDBColumn;
    dbtabvwVendasnumero_documento_fiscal: TcxGridDBColumn;
    dbtabvwVendaschave: TcxGridDBColumn;
    dbtabvwVendasrecibo: TcxGridDBColumn;
    dbtabvwVendasprotocolo_autorizacao: TcxGridDBColumn;
    dbtabvwVendastipo_prazo: TcxGridDBColumn;
    dbtabvwVendasvalor_bruto: TcxGridDBColumn;
    dbtabvwVendasvalor_acrescimo: TcxGridDBColumn;
    dbtabvwVendasvalor_desconto: TcxGridDBColumn;
    dbtabvwVendasvalor_troca: TcxGridDBColumn;
    dbtabvwVendasvalor_entrada: TcxGridDBColumn;
    dbtabvwVendasvalor_recebido: TcxGridDBColumn;
    dbtabvwVendasid_usuario: TcxGridDBColumn;
    dbtabvwVendastipo_documento_fiscal: TcxGridDBColumn;
    dbtabvwVendasstatus: TcxGridDBColumn;
    dbtabvwVendasstatus_documento_fiscal: TcxGridDBColumn;
    qryVendasdocumento_rfb_numero: TStringField;
    dbtabvwVendasdocumento_rfb_numero: TcxGridDBColumn;
    qryVendasid_nota_fiscal: TLargeintField;
    dsEstabelecimentos: TDataSource;
    btnConsultar: TcxDBBotao;
    imglstStatus: TcxImageList;
    qryVendasvalor_liquido: TFloatField;
    dbtabvwVendasid_nota_fiscal: TcxGridDBColumn;
    dbtabvwVendasvalor_liquido: TcxGridDBColumn;
    lblNomeOperador: TcxLabel;
    dbtxtedtNomeOperador: TcxDBTextEdit;
    gboxPeriodo: TcxGroupBox;
    lblDataInicial: TcxLabel;
    dtedtDataInicial: TcxDateEdit;
    lblDataFinal: TcxLabel;
    dtedtDataFinal: TcxDateEdit;
    qryVendasdata_movimento: TDateTimeField;
    qryVendasid_caixa: TWordField;
    qryVendasid_operador: TLargeintField;
    dbtabvwVendasdata_movimento: TcxGridDBColumn;
    dbtabvwVendasid_caixa: TcxGridDBColumn;
    dbtabvwVendasid_operador: TcxGridDBColumn;
    imglstStatusDocumentoFiscal: TcxImageList;
    btnAutenticar: TcxDBBotao;
    popmnuImprimir: TPopupMenu;
    D1: TMenuItem;
    C1: TMenuItem;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure qryVendasCalcFields(DataSet: TDataSet);
    procedure dtedtDataInicialEnter(Sender: TObject);
    procedure dtedtDataInicialExit(Sender: TObject);
    procedure dtedtDataInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryVendasBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnAutenticarClick(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfiguraComponentesACBr;
    function EmiteDocumentoFiscal(AId_Venda: Integer; AId_Modelo: String): Boolean;
    function GeraDocumentoFiscal: Boolean;
  public
    { Public declarations }
    procedure Executa;
  end;

var
  dlgConsultaVendas: TdlgConsultaVendas;

implementation

uses
   StrUtils, DateUtils, MaskUtils, Math, pcnConversao, pcnConversaoNFe,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao,
   UDataModuleFiscal,
   UDataModuleComponentesACBr,
   UMasterPDVDataModuleRelatorio,
   UMasterPDVDataModuleDocumentosFiscais,
   MasterPDV.View.IdentificacaoTipoDocumentoFiscal,
   MasterPDV.View.IdentificacaoDocumentoRFB, UMasterPDVDataModulePDV,
   MasterPDV.View.Autenticacao, MasterPDV.View.DocumentosFiscaisEventos,
   MasterPDV.View.Imprimir;

{$R *.dfm}

{ TdlgConsultaVendas }

procedure TdlgConsultaVendas.btnAutenticarClick(Sender: TObject);
var
   ASequenciaAutenticacao: Integer;
   AContador: Byte;
   ACancela: Boolean;
   ATextoAutentica: string;
begin
  inherited;
   with TcxDBBotao(Sender).DataSource do
      begin
         if DataSet.FieldByName('status').AsInteger In [8, 9] then
            begin
               Informacao('A autenticação deste documento não é permitida!');
               Exit;
            end;

         if dsTerminais.DataSet.FieldByName('autenticar_documento').AsString = 'S' then
            begin
               AContador := 1;
               ACancela := False;
               while (AContador <= 2) and not ACancela do
                  begin
                     if dlgImprimir.Executa(Format('Autenticação - %dª Via', [AContador])) then
                        begin
                           if AContador = 1 then
                              ASequenciaAutenticacao := dmPDV.GetSequenciaAutenticacao(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger);
                           ATextoAutentica := 'AUT.: ';
                           ATextoAutentica := ATextoAutentica +
                                              StrZero(IntToStr(dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger), 4);
                           ATextoAutentica := ATextoAutentica +
                                              FormatDateTime('yyyymmdd', dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime);
                           ATextoAutentica := ATextoAutentica +
                                              StrZero(IntToStr(ASequenciaAutenticacao), 6);
                           ATextoAutentica := ATextoAutentica +
                                              StrZero(IntToStr(DataSet.FieldByName('documento').AsInteger), 6);
                           ATextoAutentica := ATextoAutentica +
                                              FormatFloat('R$ ***,**0.00', DataSet.FieldByName('valor_recebido').AsFloat);
                           ATextoAutentica := ATextoAutentica +
                                              StrZero(IntToStr(dsTerminais.DataSet.FieldByName('numero').AsInteger), 3);
                           dlgImprimir.Autentica(ATextoAutentica, dsTerminais.DataSet.FieldByName('autenticador_id_modelo').AsInteger);
                           Inc(AContador);
                        end
                     else
                        ACancela := True;
                  end;
            end;
      end;
end;

procedure TdlgConsultaVendas.btnCancelarClick(Sender: TObject);
begin
   inherited;
   With TcxDBBotao(Sender).DataSource Do
      begin
         if (DataSet.FieldByName('status').AsString = '8') Or
            (DataSet.FieldByName('status').AsString = '9') then
            begin
               Informacao('Cancelamento não permitido: venda já cancelada.');
               Exit;
            end;

         if Not dmPDV.IsSupervisor And
            Not dglAutenticacao.AutenticaSupervisor then
            Exit;

         if DataSet.FieldByName('tipo_documento_fiscal').AsString = '0' then
            begin
               If Confirmacao('Confirma o cancelamento da venda?') Then
                  begin
                     DataSet.Edit;
                     // 0-Venda em antamento / 1-Aguardando Aprovação / 3-Aguardando Pagamento / 5-Finalizada / 8-Desistência / 9-Cancelada
                     DataSet.FieldByName('status').AsString := '9';
                     DataSet.Post;
                     Informacao('Operação realizada com sucesso!');
      //               If dmPDV.CancelaVenda(DataSet.FieldByName('id_venda').AsInteger) Then
      //                  begin
      //                     Informacao('Operação realizada com sucesso!');
      //                     DataSet.DisableControls;
      //                     DataSet.Close;
      //                     DataSet.Open;
      //                     DataSet.EnableControls;
      //                  end
      //               Else
      //                  Informacao('Operação não realizada!');
                  end;
            end
         else
            begin
               dlgDocumentosFiscaisEventos := TdlgDocumentosFiscaisEventos.Create(Self, TcxButton(Sender).Tag);
               Try
                  If dlgDocumentosFiscaisEventos.Cancelamento(DataSet) Then
                     Informacao('Operação realizada com sucesso!');
               Finally
                  dlgDocumentosFiscaisEventos.Free;
               End;
            end;
      end;
end;

procedure TdlgConsultaVendas.btnConsultarClick(Sender: TObject);
begin
   inherited;
   With TcxDBBotao(Sender).DataSource Do
      begin
         if (DataSet.FieldByName('status').AsString = '8') Or
            (DataSet.FieldByName('status').AsString = '9') then
            begin
               Informacao('Envio não permitido: venda cancelada.');
               Exit;
            end;

         if DataSet.FieldByName('status_documento_fiscal').AsString = '5' then
            begin
               Informacao('Documento fiscal já enviado!'#13'Operação cancelada.');
               Exit;
            end;

      end;
end;

procedure TdlgConsultaVendas.btnEnviarClick(Sender: TObject);
var
   AId_Modelo: String;
begin
   inherited;
   With TcxDBBotao(Sender).DataSource Do
      begin
         if Not dmPDV.IsTerminalFiscal then
            begin
               Informacao('Operação não permitida: o terminal selecionado não possui este recurso.');
               Exit;
            end;

         if (DataSet.FieldByName('status').AsString = '8') Or
            (DataSet.FieldByName('status').AsString = '9') then
            begin
               Informacao('Envio não permitido: venda cancelada.');
               Exit;
            end;

         if DataSet.FieldByName('status_documento_fiscal').AsString = '5' then
            begin
               Informacao('Documento fiscal já autorizado!'#13'Operação cancelada.');
               Exit;
            end;

         DataSet.Edit;
         If dmPDV.IsTerminalFiscal Then
            begin
               if dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').IsNull then
                  begin
                     if dlgIdentificacaoTipoDocumentoFiscal.Executa then
                        DataSet.FieldByName('tipo_documento_fiscal').AsString := dlgIdentificacaoTipoDocumentoFiscal.GetTipoDocumentoFiscal
                     Else
                        DataSet.FieldByName('tipo_documento_fiscal').AsString := '0';
                  end
               Else
                  DataSet.FieldByName('tipo_documento_fiscal').AsString := dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').AsString;
            end
         Else
            DataSet.FieldByName('tipo_documento_fiscal').AsString := '0';
         DataSet.Post;

         if DataSet.FieldByName('tipo_documento_fiscal').AsString = '0' then
            Informacao('É necessário informar o tipo do documento fiscal!'#13'Operação cancelada.')
         else
            begin
               // 1-NF-e
               if DataSet.FieldByName('tipo_documento_fiscal').AsString = '1' then
                  begin
                     AId_Modelo := '55';
                  end
               // 2-NFC-e
               Else If DataSet.FieldByName('tipo_documento_fiscal').AsString = '2' then
                       begin
                          AId_Modelo := '65';
                          If dlgIdentificacaoDocumentoRFB.ShowModal = mrOk Then
                             begin
                                DataSet.Edit;
                                DataSet.FieldByName('documento_rfb_numero').AsString := dlgIdentificacaoDocumentoRFB.mskedtNumeroDocumentoRFB.Text;
                                DataSet.Post;
                             end;
                       end;

               If EmiteDocumentoFiscal(DataSet.FieldByName('id_venda').AsInteger, AId_Modelo) Then
                  begin
                     DataSet.DisableControls;
                     DataSet.Close;
                     DataSet.Open;
                     DataSet.EnableControls;
                  end;
            end;
      end;
end;

procedure TdlgConsultaVendas.C1Click(Sender: TObject);
begin
   inherited;
   With dsVendas Do
      begin
         dmRelatorio.ImprimirDAV(DataSet.FieldByName('id_venda').AsInteger,
                                   dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                   True);
      end;
end;

procedure TdlgConsultaVendas.ConfiguraComponentesACBr;
var
   ACaminhoSchemas: String;
begin
   inherited;
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
                                      ACaminhoSchemas);
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

procedure TdlgConsultaVendas.D1Click(Sender: TObject);
var
   OK: Boolean;
   AXMLFileName: TFileName;
begin
   inherited;
   With dsVendas Do
      begin
         if DataSet.FieldByName('tipo_documento_fiscal').AsString <> '0' then
            begin
               dmDocumentosFiscais.qryDocumentos_Fiscais.Close;
               dmDocumentosFiscais.qryDocumentos_Fiscais.ParamByName('id_documento_fiscal').Value := DataSet.FieldByName('id_nota_fiscal').AsInteger;
               dmDocumentosFiscais.qryDocumentos_Fiscais.Open;
               If Not dmDocumentosFiscais.qryDocumentos_Fiscais.IsEmpty Then
                  begin
                     AXMLFileName := IncludeTrailingPathDelimiter(dmComponentesACBr.ACBrNFe1.Configuracoes.Arquivos.GetPathNFe(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime, dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnpj_emitente').AsString, '', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger)) +
                                  //IncludeTrailingPathDelimiter(ACBrNFe1.Configuracoes.Arquivos.PathSalvar) +
                                  dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('chave').AsString + '-nfe.xml';
                     if not FileExists(AXMLFileName) then
                        Informacao('O arquivo XML não foi encontrado:'#13 +
                                   'Nome do Arquivo: ' + ExtractFileName(AXMLFileName) + #13 +
                                   'Caminho: ' + ExtractFilePath(AXMLFileName))
                     else
                        begin
                           With dmComponentesACBr Do
                              begin
                                 ACBrNFe1.NotasFiscais.Clear;
                                 ACBrNFe1.NotasFiscais.LoadFromFile(AXMLFileName);

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
                                       if dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65 then
                                          ACBrNFe1.DANFE.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfce').AsString
                                       else
                                         ACBrNFe1.DANFE.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfe').AsString;
                                       ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK, IntToStr(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsInteger + 1));
                                       if FileExists(dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString) then
                                          ACBrNFe1.DANFE.Logo := dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString;
                                       ACBrNFe1.DANFE.ExpandeLogoMarca := dsTerminais.DataSet.FieldByName('danfe_logomarca_expandir').AsString = 'S';
                                       // Decimais dos Campos
                                       ACBrNFe1.DANFE.CasasDecimais.qCom := 3;
                                       ACBrNFe1.DANFE.CasasDecimais.vUnCom := 2;
                                       ACBrNFe1.DANFE.MostraPreview := True;
                                       ACBrNFe1.DANFE.MostraStatus := True;
                                       ACBrNFe1.DANFE.MostraSetup := True;
                                       ACBrNFe1.NotasFiscais.ImprimirPDF;
                                       ACBrNFe1.NotasFiscais.Imprimir;
                                    end;

                                 ACBrNFe1.NotasFiscais.Clear;
                              end;


//                           If Not dmDocumentosFiscais.qryDocumentos_Fiscais_Eventos.DataSet.IsEmpty Then
//                              begin
//                                 dmDocumentosFiscais.qryDocumentos_Fiscais_Eventos.DataSet.First;
//                                 dmComponentesACBr.ACBrNFe1.EventoNFe.Evento.Clear;
//                                 while dsNotasFiscais_Eventos.DataSet.Eof do
//                                    begin
//                                       TipoEvento := StrToTpEvento(OK, dsNotasFiscais_Eventos.DataSet.FieldByName('tipo_evento').AsString);
//                                       // teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
//                                       // teManifDestDesconhecimento, teManifDestOperNaoRealizada,
//                                       // teEncerramento, teEPEC, teInclusaoCondutor, teMultiModal,
//                                       // teRegistroPassagem, teRegistroPassagemBRId, teEPECNFe
//                                       If TipoEvento = teCCe Then
//                                          ACBrNFe1.EventoNFe.LerXML(IncludeTrailingPathDelimiter(ACBrNFe1.Configuracoes.Arquivos.GetPathEvento(teCCe)) + dsNotasFiscais_Eventos.DataSet.FieldByName('tipo_evento').AsString + qryNFe.FieldByName('chave').AsString + StrZero(dsNotasFiscais_Eventos.DataSet.FieldByName('sequencia_evento').AsString, 2) + '-procEventoNFe.xml')
//                                       Else If TipoEvento = teCancelamento Then
//                                               ACBrNFe1.EventoNFe.LerXML(IncludeTrailingPathDelimiter(ACBrNFe1.Configuracoes.Arquivos.GetPathEvento(teCancelamento)) + dsNotasFiscais_Eventos.DataSet.FieldByName('tipo_evento').AsString + qryNFe.FieldByName('chave').AsString + StrZero(dsNotasFiscais_Eventos.DataSet.FieldByName('sequencia_evento').AsString, 2) + '-procEventoNFe.xml');
//                                       //ACBrNFe1.EventoNFe.LerXML(IncludeTrailingPathDelimiter(ACBrNFe1.Configuracoes.Geral.PathSalvar) + qryNFe.FieldByName('NFE_CHAVE').AsString + dsNotasFiscais_Eventos.DataSet.FieldByName('TIPO_EVENTO').AsString + dsNotasFiscais_Eventos.DataSet.FieldByName('SEQUENCIA_EVENTO').AsString + '-procEventoNFe.xml');
//                                       ACBrNFe1.ImprimirEvento;
//                                       dsNotasFiscais_Eventos.DataSet.Next;
//                                    end;
//                              end;

                        end;
                  end;
               dmDocumentosFiscais.qryDocumentos_Fiscais.Close;
            end;
      end;
end;

procedure TdlgConsultaVendas.dtedtDataInicialEnter(Sender: TObject);
begin
   inherited;
   KeyPreview := False;
end;

procedure TdlgConsultaVendas.dtedtDataInicialExit(Sender: TObject);
begin
   inherited;
   KeyPreview := True;
end;

procedure TdlgConsultaVendas.dtedtDataInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if Key = VK_RETURN then
      begin
         With dsVendas Do
            begin
               DataSet.DisableControls;
               DataSet.Close;
               DataSet.Open;
               DataSet.EnableControls;
            end;
         Perform(WM_NEXTDLGCTL, 0, 0);
      end;
end;

function TdlgConsultaVendas.EmiteDocumentoFiscal(AId_Venda: Integer;
   AId_Modelo: String): Boolean;
var
   AID_Documento_Fiscal: Integer;
begin
   inherited;
   AID_Documento_Fiscal := dmDocumentosFiscais.GeraDocumentoFiscalVenda(AId_Venda, AId_Modelo);
   dmDocumentosFiscais.qryDocumentos_Fiscais.Close;
   dmDocumentosFiscais.qryDocumentos_Fiscais.ParamByName('id_documento_fiscal').Value := AID_Documento_Fiscal;
   dmDocumentosFiscais.qryDocumentos_Fiscais.Open;
   Result := Not dmDocumentosFiscais.qryDocumentos_Fiscais.IsEmpty;
   if Result then
      Result := GeraDocumentoFiscal;
end;

procedure TdlgConsultaVendas.Executa;
begin
   inherited;
   if dsVendas.DataSet.Active then
      dsVendas.DataSet.Close;
   dsVendas.DataSet.Open;
   ShowModal;
   if dsVendas.DataSet.Active then
      dsVendas.DataSet.Close;
end;

procedure TdlgConsultaVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   FreeAndNil(dlgIdentificacaoDocumentoRFB);
   FreeAndNil(dglAutenticacao);
   FreeAndNil(dlgImprimir);
end;

procedure TdlgConsultaVendas.FormCreate(Sender: TObject);
begin
  inherited;
   dtedtDataFinal.Date := dmConexao.GetCurrentDate;
   dtedtDataInicial.Date := IncMonth(dtedtDataFinal.Date, -1);
end;

procedure TdlgConsultaVendas.FormShow(Sender: TObject);
begin
   inherited;
   dlgImprimir := TdlgImprimir.Create(Self);
   dlgIdentificacaoDocumentoRFB := TdlgIdentificacaoDocumentoRFB.Create(Self);
   dglAutenticacao := TdglAutenticacao.Create(Self);
   ConfiguraComponentesACBr;
end;

function TdlgConsultaVendas.GeraDocumentoFiscal: Boolean;
var
   ANumeroLote,
   i: integer;
   OK: Boolean;
   ADescricaoProduto,
   AObservacao: TStrings;
   AAppInfo: TStringList;
   ADescricaoFonteTributos: String;
begin
   inherited;
   With dmComponentesACBr Do
      begin
         aObservacao := TStringList.Create;
         aDescricaoProduto := TStringList.Create;
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
                        //Ide.dSaiEnt := dmConexao.GetCurrentDateTime;
                        //Ide.hSaiEnt := Ide.dEmi;
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

                  if Ide.modelo = 65 {Ide.tpImp = tiNFCe} then
                     begin
                        // 0 - cfNao, 1 - cfConsumidorFinal
                        Ide.indFinal  := StrToConsumidorFinal(OK, '1');
                        // 0 - pcNao, 1 - pcPresencial, 2 - pcInternet, 3 - pcTeleatendimento, 4 - pcEntregaDomicilio, 9 - pcOutros
                        Ide.indPres   := StrToPresencaComprador(ok, '1');
                        Ide.idDest := StrToDestinoOperacao(ok, '1');
                     end
                  Else
                     Ide.idDest := StrToDestinoOperacao(ok, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_emitente').AsString <> dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_entrega_destinatario').AsString, '3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_emitente').AsString = dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_entrega_destinatario').AsString, '1', '2')));

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

                  if Ide.modelo <> 65 {Ide.tpImp <> tiNFCe} then
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

                                          with II do
                                             begin
                                                vBC := 0;
                                                vDespAdu := 0;
                                                vII := 0;
                                                vIOF := 0;
                                             end;

                                          with IPI do
                                             begin
                                                CST := ipi99;
                                                clEnq := '';
                                                CNPJProd := '';
                                                cSelo := '';
                                                qSelo := 0;
                                                cEnq := '';
                                                vBC := 0;
                                                qUnid := 0;
                                                vUnid := 0;
                                                pIPI := 0;
                                                vIPI := 0;
                                             end;
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

                                          with II do
                                             begin
                                                vBC := 0;
                                                vDespAdu := 0;
                                                vII := 0;
                                                vIOF := 0;
                                             end;

                                          with IPI do
                                             begin
                                                CST := ipi99;
                                                clEnq := '';
                                                CNPJProd := '';
                                                cSelo := '';
                                                qSelo := 0;
                                                cEnq := '';
                                                vBC := 0;
                                                qUnid := 0;
                                                vUnid := 0;
                                                pIPI := 0;
                                                vIPI := 0;
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

                  if Ide.modelo = 65 {Ide.tpImp = tiNFCe} then
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
            Erro('Erro ao Validar NF-e: ' + ACBrNFe1.NotasFiscais.Items[0].Alertas)
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

                                    ACBrNFeDANFEFR1.TextoResumoCanhoto := 'Emissão:' + FormatDateTime('dd/mm/yyyy', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime) + ' ' +
                                       'Dest/Reme: ' + dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_destinatario').AsString + ' ' + 'Valor Total: ' +
                                       FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat) + ' ' + 'Cond.: ' +
                                       IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '0', 'Pagamento à Vista', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '1',
                                       'Pagamento à Prazo', 'Outros'));

                                    ACBrNFeDANFEFR1.Cancelada := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString = '9';

                                    ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                                'Reports\' +
                                                                IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));
                                    if ACBrNFe1.DANFE <> nil then
                                       begin
                                          ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK, IntToStr(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsInteger + 1));
                                          if FileExists(dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString) then
                                             ACBrNFe1.DANFE.Logo := dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString;
                                          ACBrNFe1.DANFE.ExpandeLogoMarca := dsTerminais.DataSet.FieldByName('danfe_logomarca_expandir').AsString = 'S';
                                          ACBrNFe1.DANFE.MostraPreview := False;
                                       end;

                                    ACBrNFe1.NotasFiscais.Imprimir;
                                 end;
                        end;
                  end;
            end;
      end;
end;

procedure TdlgConsultaVendas.qryVendasBeforeOpen(DataSet: TDataSet);
var
   ACondicao: String;
begin
  inherited;
   ACondicao := '';
   if dtedtDataInicial.Date <> 0 then
      ACondicao := ACondicao + ' AND DATE(v.data_movimento) >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtedtDataInicial.Date));
   if dtedtDataFinal.Date <> 0 then
      ACondicao := ACondicao + ' AND DATE(v.data_movimento) <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtedtDataFinal.Date));
   TUniQuery(DataSet).MacroByName('condicao').Value := ACondicao;
end;

procedure TdlgConsultaVendas.qryVendasCalcFields(DataSet: TDataSet);
begin
   inherited;
   DataSet.FieldByName('valor_liquido').AsFloat := DataSet.FieldByName('valor_bruto').AsFloat +
                                                   DataSet.FieldByName('valor_acrescimo').AsFloat -
                                                   DataSet.FieldByName('valor_desconto').AsFloat -
                                                   DataSet.FieldByName('valor_troca').AsFloat;
end;

end.
