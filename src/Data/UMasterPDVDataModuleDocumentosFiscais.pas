unit UMasterPDVDataModuleDocumentosFiscais;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TdmDocumentosFiscais = class(TDataModule)
    qryDocumentos_Fiscais: TUniQuery;
    uspGeraDocumentoFiscalVenda: TUniStoredProc;
    qryDocumentos_Fiscais_Produtos: TUniQuery;
    qryDocumentos_Fiscais_Faturas: TUniQuery;
    qryDocumentos_Fiscais_Recebimentos: TUniQuery;
    qryDocumentos_Fiscais_Referenciados: TUniQuery;
    dsDocumentos_Fiscais: TDataSource;
    uspSequenciaLoteDocumentoFiscal: TUniStoredProc;
    qryDocumentos_Fiscais_Eventos: TUniQuery;
    qryDocumentos_Fiscaisid_nota_fiscal: TLargeintField;
    qryDocumentos_Fiscaisid_emitente: TLargeintField;
    qryDocumentos_Fiscaiscnpj_emitente: TStringField;
    qryDocumentos_Fiscaisinsc_estadual_emitente: TStringField;
    qryDocumentos_Fiscaisinsc_municipal_emitente: TStringField;
    qryDocumentos_Fiscaisinsc_est_subst_emitente: TStringField;
    qryDocumentos_Fiscaisinsc_suframa_emitente: TStringField;
    qryDocumentos_Fiscaisrazao_emitente: TStringField;
    qryDocumentos_Fiscaisfantasia_emitente: TStringField;
    qryDocumentos_Fiscaislogradouro_emitente: TStringField;
    qryDocumentos_Fiscaisnumero_emitente: TStringField;
    qryDocumentos_Fiscaiscomplemento_emitente: TStringField;
    qryDocumentos_Fiscaisbairro_emitente: TStringField;
    qryDocumentos_Fiscaisid_pais_emitente: TStringField;
    qryDocumentos_Fiscaisdescricao_pais_emitente: TStringField;
    qryDocumentos_Fiscaisid_estado_emitente: TStringField;
    qryDocumentos_Fiscaissigla_estado_emitente: TStringField;
    qryDocumentos_Fiscaisid_cidade_emitente: TStringField;
    qryDocumentos_Fiscaisdescricao_cidade_emitente: TStringField;
    qryDocumentos_Fiscaiscep_emitente: TStringField;
    qryDocumentos_Fiscaistelefone_emitente: TStringField;
    qryDocumentos_Fiscaisfax_emitente: TStringField;
    qryDocumentos_Fiscaisemail_emitente: TStringField;
    qryDocumentos_Fiscaiscnae_fiscal_emitente: TStringField;
    qryDocumentos_Fiscaisnatureza_juridica_emitente: TStringField;
    qryDocumentos_Fiscaisregime_tributario_emitente: TStringField;
    qryDocumentos_Fiscaisdata_emissao: TDateTimeField;
    qryDocumentos_Fiscaisnumero: TLargeintField;
    qryDocumentos_Fiscaisid_modelo: TStringField;
    qryDocumentos_Fiscaisversao_xml: TStringField;
    qryDocumentos_Fiscaistipo_nota: TStringField;
    qryDocumentos_Fiscaisserie_nota: TStringField;
    qryDocumentos_Fiscaisdata_movimento: TDateTimeField;
    qryDocumentos_Fiscaishora_movimento: TStringField;
    qryDocumentos_Fiscaisnatureza_operacao: TStringField;
    qryDocumentos_Fiscaisid_destinatario: TLargeintField;
    qryDocumentos_Fiscaistipo_pessoa_destinatario: TStringField;
    qryDocumentos_Fiscaisdocumento_rfb_numero: TStringField;
    qryDocumentos_Fiscaisinsc_estadual_destinatario: TStringField;
    qryDocumentos_Fiscaisinsc_municipal_destinatario: TStringField;
    qryDocumentos_Fiscaisinsc_suframa_destinatario: TStringField;
    qryDocumentos_Fiscaisrazao_destinatario: TStringField;
    qryDocumentos_Fiscaisfantasia_destinatario: TStringField;
    qryDocumentos_Fiscaislogradouro_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisnumero_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaiscomplemento_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisbairro_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisreferencia_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisid_pais_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisdescricao_pais_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisid_estado_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaissigla_estado_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisid_cidade_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaisdescricao_cidade_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaiscep_entrega_destinatario: TStringField;
    qryDocumentos_Fiscaistelefone_destinatario: TStringField;
    qryDocumentos_Fiscaisfax_destinatario: TStringField;
    qryDocumentos_Fiscaisemail_destinatario: TStringField;
    qryDocumentos_Fiscaisid_forma_pagamento: TStringField;
    qryDocumentos_Fiscaisvalor_entrada: TFloatField;
    qryDocumentos_Fiscaisid_forma_emissao: TStringField;
    qryDocumentos_Fiscaisid_finalidade_emissao: TStringField;
    qryDocumentos_Fiscaisdanfe_tipo_impressao: TStringField;
    qryDocumentos_Fiscaisid_pais_ocorrencia: TStringField;
    qryDocumentos_Fiscaisid_estado_ocorrencia: TStringField;
    qryDocumentos_Fiscaisid_cidade_ocorrencia: TStringField;
    qryDocumentos_Fiscaisid_transportador: TWordField;
    qryDocumentos_Fiscaiscnpj_transportador: TStringField;
    qryDocumentos_Fiscaisinsc_estadual_transportador: TStringField;
    qryDocumentos_Fiscaisrazao_transportador: TStringField;
    qryDocumentos_Fiscaislogradouro_transportador: TStringField;
    qryDocumentos_Fiscaisbairro_transportador: TStringField;
    qryDocumentos_Fiscaisid_estado_transportador: TStringField;
    qryDocumentos_Fiscaissigla_estado_transportador: TStringField;
    qryDocumentos_Fiscaisplaca: TStringField;
    qryDocumentos_Fiscaisid_estado_placa: TStringField;
    qryDocumentos_Fiscaissigla_estado_placa: TStringField;
    qryDocumentos_Fiscaisvalor_frete: TFloatField;
    qryDocumentos_Fiscaismodalidade_frete: TStringField;
    qryDocumentos_Fiscaisvalor_seguro: TFloatField;
    qryDocumentos_Fiscaisvalor_outras_despesas: TFloatField;
    qryDocumentos_Fiscaisvalor_bruto: TFloatField;
    qryDocumentos_Fiscaisvalor_acrescimo: TFloatField;
    qryDocumentos_Fiscaisvalor_desconto: TFloatField;
    qryDocumentos_Fiscaisvalor_liquido: TFloatField;
    qryDocumentos_Fiscaisvalor_recebido: TFloatField;
    qryDocumentos_Fiscaisaliquota_icms: TFloatField;
    qryDocumentos_Fiscaisaliquota_iss: TFloatField;
    qryDocumentos_Fiscaisaliquota_ii: TFloatField;
    qryDocumentos_Fiscaisaliquota_ipi: TFloatField;
    qryDocumentos_Fiscaisaliquota_pis: TFloatField;
    qryDocumentos_Fiscaisaliquota_cofins: TFloatField;
    qryDocumentos_Fiscaisaliquota_simples: TFloatField;
    qryDocumentos_Fiscaisquantidade: TLargeintField;
    qryDocumentos_Fiscaisespecie: TStringField;
    qryDocumentos_Fiscaismarca: TStringField;
    qryDocumentos_Fiscaispeso_bruto: TFloatField;
    qryDocumentos_Fiscaispeso_liquido: TFloatField;
    qryDocumentos_Fiscaisinformacoes_adicionais: TMemoField;
    qryDocumentos_Fiscaischave: TStringField;
    qryDocumentos_Fiscaisrecibo: TStringField;
    qryDocumentos_Fiscaislote: TStringField;
    qryDocumentos_Fiscaisprotocolo_autorizacao: TStringField;
    qryDocumentos_Fiscaisstatus: TStringField;
    qryDocumentos_Fiscais_Eventosid_nota_fiscal: TLargeintField;
    qryDocumentos_Fiscais_Eventostipo_evento: TStringField;
    qryDocumentos_Fiscais_Eventossequencia_evento: TWordField;
    qryDocumentos_Fiscais_Eventosdata_evento: TDateTimeField;
    qryDocumentos_Fiscais_Eventostexto_evento: TMemoField;
    qryDocumentos_Fiscais_Eventosdata_envio: TDateTimeField;
    qryDocumentos_Fiscais_Eventosdata_processamento: TDateTimeField;
    qryDocumentos_Fiscais_Eventosrecibo: TStringField;
    qryDocumentos_Fiscais_Eventosprotocolo: TStringField;
    qryDocumentos_Fiscaisvalor_tributos_federais: TFloatField;
    qryDocumentos_Fiscaisvalor_tributos_estaduais: TFloatField;
    qryDocumentos_Fiscaisvalor_tributos_municipais: TFloatField;
    qryDocumentos_Fiscaiscontingencia_motivo: TStringField;
    procedure qryDocumentos_FiscaisAfterOpen(DataSet: TDataSet);
    procedure qryDocumentos_FiscaisBeforeClose(DataSet: TDataSet);
    procedure qryDocumentos_Fiscais_Eventostipo_eventoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryDocumentos_Fiscais_Eventostipo_eventoSetText(Sender: TField;
      const Text: string);
    procedure qryDocumentos_Fiscais_EventosNewRecord(DataSet: TDataSet);
    procedure qryDocumentos_Fiscais_EventosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GeraDocumentoFiscalVenda(AId_Venda: Integer; AId_Modelo: String): Integer;
    function GeraSequenciaLoteDocumentoFiscal(AID_Emitente: Integer): Integer;
    function GetDocumentoFiscal(const Value: Integer): Boolean;
  end;

var
  dmDocumentosFiscais: TdmDocumentosFiscais;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses
   UDataModuleConexao;

{$R *.dfm}

{ TdmDocumentosFiscais }

function TdmDocumentosFiscais.GeraDocumentoFiscalVenda(AId_Venda: Integer;
   AId_Modelo: String): Integer;
begin
   uspGeraDocumentoFiscalVenda.PrepareSQL(True);
   Try
      uspGeraDocumentoFiscalVenda.ParamByName('p_id_venda').Value := AId_Venda;
      uspGeraDocumentoFiscalVenda.ParamByName('p_id_modelo').Value := AId_Modelo;
      uspGeraDocumentoFiscalVenda.Execute;
      Result := uspGeraDocumentoFiscalVenda.ParamByName('result').Value;
   Except
      On E: EDAError Do
         begin
            Result := 0;
            raise Exception.Create('Erro ao gerar documento fiscal:'#13 + E.Message);
         end;
   End;
end;

function TdmDocumentosFiscais.GeraSequenciaLoteDocumentoFiscal(
  AID_Emitente: Integer): Integer;
begin
   uspSequenciaLoteDocumentoFiscal.PrepareSQL(True);
   uspSequenciaLoteDocumentoFiscal.ParamByName('p_id_emitente').Value := AID_Emitente;
   uspSequenciaLoteDocumentoFiscal.Execute;
   Result := uspSequenciaLoteDocumentoFiscal.ParamByName('result').Value;
end;

function TdmDocumentosFiscais.GetDocumentoFiscal(const Value: Integer): Boolean;
begin
   qryDocumentos_Fiscais.Close;
   qryDocumentos_Fiscais.ParamByName('id_documento_fiscal').Value := Value;
   qryDocumentos_Fiscais.Open;
   Result := Not qryDocumentos_Fiscais.IsEmpty;
   if Not Result then
      qryDocumentos_Fiscais.Close;
end;

procedure TdmDocumentosFiscais.qryDocumentos_FiscaisAfterOpen(
  DataSet: TDataSet);
begin
   qryDocumentos_Fiscais_Produtos.Open;
   qryDocumentos_Fiscais_Faturas.Open;
   qryDocumentos_Fiscais_Recebimentos.Open;
   qryDocumentos_Fiscais_Referenciados.Open;
   qryDocumentos_Fiscais_Eventos.Open;
end;

procedure TdmDocumentosFiscais.qryDocumentos_FiscaisBeforeClose(
  DataSet: TDataSet);
begin
   qryDocumentos_Fiscais_Produtos.Close;
   qryDocumentos_Fiscais_Faturas.Close;
   qryDocumentos_Fiscais_Recebimentos.Close;
   qryDocumentos_Fiscais_Referenciados.Close;
   qryDocumentos_Fiscais_Eventos.Close;
end;

procedure TdmDocumentosFiscais.qryDocumentos_Fiscais_EventosBeforePost(
  DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('sequencia_evento').AsInteger := dmConexao.Sequencia('notas_fiscais_eventos', 'sequencia_evento', Format('WHERE id_nota_fiscal = %d AND tipo_evento = %s', [DataSet.FieldByName('id_nota_fiscal').AsInteger, QuotedStr(DataSet.FieldByName('tipo_evento').AsString)]));
end;

procedure TdmDocumentosFiscais.qryDocumentos_Fiscais_EventosNewRecord(
  DataSet: TDataSet);
begin
   DataSet.FieldByName('id_nota_fiscal').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_nota_fiscal').AsInteger;
   DataSet.FieldByName('data_evento').AsDateTime := dmConexao.GetCurrentDateTime;
end;

procedure TdmDocumentosFiscais.qryDocumentos_Fiscais_Eventostipo_eventoGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Sender.AsString = '110111' then
      Text := 'Cancelamento';
   DisplayText := Text <> '';
end;

procedure TdmDocumentosFiscais.qryDocumentos_Fiscais_Eventostipo_eventoSetText(
  Sender: TField; const Text: string);
begin
   if Text = 'Cancelamento' then
      Sender.AsString := '110111';
end;

end.
