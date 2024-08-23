unit UDataModuleCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  UPais, UEstado, UCidade;

type
  TdmCadastro = class(TDataModule)
    qryPaises_LookUp: TUniQuery;
    qryPaises_LookUpid_pais: TStringField;
    qryPaises_LookUpdescricao: TStringField;
    dsPaises_LookUp: TDataSource;
    qryEstados_LookUp: TUniQuery;
    qryEstados_LookUpid_estado: TStringField;
    qryEstados_LookUpdescricao: TStringField;
    qryEstados_LookUpsigla: TStringField;
    qryEstados_LookUpid_pais: TStringField;
    dsEstados_LookUp: TDataSource;
    qryCidades_LookUp: TUniQuery;
    qryCidades_LookUpid_cidade: TStringField;
    qryCidades_LookUpdescricao: TStringField;
    qryCidades_LookUpid_estado: TStringField;
    qryEstabelecimentos: TUniQuery;
    qryEstabelecimentosid_local: TWordField;
    qryEstabelecimentostipo_pessoa: TStringField;
    qryEstabelecimentoscnpj: TStringField;
    qryEstabelecimentosinsc_estadual: TStringField;
    qryEstabelecimentosinsc_est_subst: TStringField;
    qryEstabelecimentosinsc_municipal: TStringField;
    qryEstabelecimentosinsc_suframa: TStringField;
    qryEstabelecimentosrazao: TStringField;
    qryEstabelecimentosfantasia: TStringField;
    qryEstabelecimentoslogradouro: TStringField;
    qryEstabelecimentosnumero: TStringField;
    qryEstabelecimentoscomplemento: TStringField;
    qryEstabelecimentosbairro: TStringField;
    qryEstabelecimentosid_cidade: TStringField;
    qryEstabelecimentosdescricao_cidade: TStringField;
    qryEstabelecimentosid_estado: TStringField;
    qryEstabelecimentossigla_estado: TStringField;
    qryEstabelecimentosid_pais: TStringField;
    qryEstabelecimentosdescricao_pais: TStringField;
    qryEstabelecimentoscep: TStringField;
    qryEstabelecimentostelefone: TStringField;
    qryEstabelecimentosfax: TStringField;
    qryEstabelecimentosemail: TStringField;
    qryEstabelecimentoscontato: TStringField;
    qryEstabelecimentoscnae_fiscal: TStringField;
    qryEstabelecimentosnatureza_juridica: TStringField;
    qryEstabelecimentosregime_tributario: TStringField;
    qryEstabelecimentoslogomarca: TBlobField;
    qryDispositivos: TUniQuery;
    qryDispositivosid_dispositivo: TLargeintField;
    qryDispositivosdescricao: TStringField;
    qryDispositivosvelocidade: TLargeintField;
    qryDispositivostaxa_transmissao: TSmallintField;
    qryDispositivosid_paridade: TSmallintField;
    qryDispositivosid_bit_parada: TSmallintField;
    qryDispositivoshandshake: TSmallintField;
    qryTokens: TUniQuery;
    qryTokensid_token: TLargeintField;
    qryTokenscsc_id: TLargeintField;
    qryTokenscsc_numero: TStringField;
    qryTokensdata_emissao: TDateTimeField;
    qryTokensdata_revogacao: TDateTimeField;
    qryEstabelecimentos_LookUp: TUniQuery;
    qryTerminais: TUniQuery;
    qryTerminaisid_terminal: TLargeintField;
    qryTerminaisid_local: TWordField;
    qryTerminaisdescricao: TStringField;
    qryTerminaisnumero: TLargeintField;
    qryTerminaisfiscal: TStringField;
    qryTerminaisid_token: TLargeintField;
    qryTerminaisetiqueta_prefixo: TStringField;
    qryTerminaisetiqueta_codigo_inicio: TSmallintField;
    qryTerminaisetiqueta_codigo_tamanho: TSmallintField;
    qryTerminaisid_balanca_acoplada: TLargeintField;
    qryTerminaisbalanca_acoplada_porta_serial: TStringField;
    qryTerminaisbalanca_acoplada_tempo_limite: TLargeintField;
    qryTerminaisdanfe_logomarca_arquivo: TStringField;
    qryTerminaisdanfe_logomarca_expandir: TStringField;
    qryTerminaissalvar_resposta_envio: TStringField;
    qryTerminaissalvar_resposta_envio_caminho: TStringField;
    qryTerminaisws_ambiente: TStringField;
    qryTerminaisws_visualizar_mensagens: TStringField;
    qryTerminaiscertificado_caminho: TStringField;
    qryTerminaiscertificado_senha: TStringField;
    qryTerminaiscertificado_serie: TStringField;
    qryTerminaisproxy_host: TStringField;
    qryTerminaisproxy_porta: TLargeintField;
    qryTerminaisproxy_usuario: TStringField;
    qryTerminaisproxy_senha: TStringField;
    qryTerminaisemail_host: TStringField;
    qryTerminaisemail_porta: TLargeintField;
    qryTerminaisemail_usuario: TStringField;
    qryTerminaisemail_senha: TStringField;
    qryTerminaisemail_assunto: TStringField;
    qryTerminaisemail_ssl: TStringField;
    qryTerminaisemail_mensagem: TMemoField;
    qryTerminaissequencia_documento: TLargeintField;
    qryTokens_LookUp: TUniQuery;
    dsEstabelecimentos_LookUp: TDataSource;
    qryTokens_LookUpid_token: TLargeintField;
    qryTokens_LookUpcsc_id: TLargeintField;
    qryTokens_LookUpcsc_numero: TStringField;
    qryTokens_LookUpdata_emissao: TDateTimeField;
    qryTokens_LookUpdata_revogacao: TDateTimeField;
    qryOperadores: TUniQuery;
    qryOperadoresid_operador: TLargeintField;
    qryOperadoresid_usuario: TLargeintField;
    qryOperadoresnome: TStringField;
    qryOperadoreslogin: TStringField;
    qryOperadorestipo: TStringField;
    qryOperadoresid_status: TWordField;
    qryUsuarios_LookUp: TUniQuery;
    qryUsuarios_LookUpid_usuario: TLargeintField;
    qryUsuarios_LookUpnome: TStringField;
    qryBalancas_LookUp: TUniQuery;
    qryBalancas_LookUpid_dispositivo: TLargeintField;
    qryBalancas_LookUpdescricao: TStringField;
    qryDispositivostipo_dispositivo: TStringField;
    qryDispositivosid_modelo: TWordField;
    qryBalancas_LookUpid_modelo: TWordField;
    qryTerminaisid_conta: TWordField;
    qryTerminaisid_cliente_consumidor: TLargeintField;
    qryTerminaisid_condicao_pagamento: TWordField;
    qryTerminaissequencia_nfe: TLargeintField;
    qryTerminaisserie_nfe: TWordField;
    qryTerminaissequencia_nfce: TLargeintField;
    qryTerminaisserie_nfce: TWordField;
    qryClientes_LookUp: TUniQuery;
    qryCondicoes_LookUp: TUniQuery;
    qryCondicoes_LookUpid_condicao: TWordField;
    qryCondicoes_LookUpdescricao: TStringField;
    qryClientes_LookUpid_parceiro: TLargeintField;
    qryClientes_LookUprazao: TStringField;
    qryContas_LookUp: TUniQuery;
    qryContas_LookUpid_conta: TWordField;
    qryContas_LookUpdescricao: TStringField;
    qryClientes: TUniQuery;
    qryCidades_Locate: TUniQuery;
    qryEstados_Locate: TUniQuery;
    qryPaises_Locate: TUniQuery;
    qryPaises: TUniQuery;
    qryPaisesid_pais: TStringField;
    qryPaisesdescricao: TStringField;
    qryPaisessigla: TStringField;
    qryEstados: TUniQuery;
    qryCidades: TUniQuery;
    qryTerminaistipo_documento_fiscal: TStringField;
    qryTerminaisdfe_forma_emissao: TStringField;
    qryTerminaiscontingencia_motivo: TStringField;
    qryTerminaisoperacao_offline: TStringField;
    qryTerminaisemissor_cupom: TStringField;
    qryTerminaisemissor_nfe: TStringField;
    qryTerminaisemissor_nfce: TStringField;
    qryTerminaisversao_xml: TStringField;
    qryLocais_LookUp: TUniQuery;
    qryTerminaisid_estabelecimento: TLargeintField;
    qryTerminaisendereco_ipv4: TStringField;
    qryTerminaisendereco_ipv6: TStringField;
    qryTerminaisidentificar_representante: TStringField;
    qryTerminaisid_representante: TLargeintField;
    qryTerminaisimpressora_padrao: TStringField;
    qryTerminaisautenticar_documento: TStringField;
    qryTerminaisautenticador: TStringField;
    qryTerminaissequencia_autenticacao: TLargeintField;
    qryTerminaisdb_provedor: TStringField;
    qryTerminaisdb_host: TStringField;
    qryTerminaisdb_porta: TLargeintField;
    qryTerminaisdb_banco: TStringField;
    qryTerminaisdb_login: TStringField;
    qryTerminaisdb_password: TStringField;
    qryTerminaisendereco_fisico: TStringField;
    qryEstabelecimentos_LookUpid_estabelecimento: TLargeintField;
    qryEstabelecimentos_LookUprazao_social: TStringField;
    qryLocais_LookUpid_local: TWordField;
    qryLocais_LookUpdescricao: TStringField;
    qryLocais: TUniQuery;
    qryLocaisid_estabelecimento: TLargeintField;
    qryLocaisid_local: TWordField;
    qryLocaisdescricao: TStringField;
    qryLocais_LookUpid_estabelecimento: TLargeintField;
    qryTokensid_estabelecimento: TLargeintField;
    qryTokens_LookUpid_estabelecimento: TLargeintField;
    qryTerminaisautenticador_id_modelo: TWordField;
    qryClientesid_parceiro: TLargeintField;
    qryClientescodigo: TStringField;
    qryClientestipo: TStringField;
    qryClientesdata_cadastro: TDateTimeField;
    qryClientestipo_pessoa: TStringField;
    qryClientescpf: TStringField;
    qryClientesrg_numero: TStringField;
    qryClientescnpj: TStringField;
    qryClientesinsc_estadual: TStringField;
    qryClientesinsc_municipal: TStringField;
    qryClientesinsc_suframa: TStringField;
    qryClientesrazao: TStringField;
    qryClientesfantasia: TStringField;
    qryClienteslogradouro_residencial: TStringField;
    qryClientesnumero_residencial: TStringField;
    qryClientescomplemento_residencial: TStringField;
    qryClientesbairro_residencial: TStringField;
    qryClientesreferencia_residencial: TStringField;
    qryClientesid_pais_residencial: TStringField;
    qryClientesid_estado_residencial: TStringField;
    qryClientesid_cidade_residencial: TStringField;
    qryClientescep_residencial: TStringField;
    qryClientestempo_residencial: TStringField;
    qryClienteslogradouro_comercial: TStringField;
    qryClientesnumero_comercial: TStringField;
    qryClientescomplemento_comercial: TStringField;
    qryClientesbairro_comercial: TStringField;
    qryClientesreferencia_comercial: TStringField;
    qryClientesid_pais_comercial: TStringField;
    qryClientesid_estado_comercial: TStringField;
    qryClientesid_cidade_comercial: TStringField;
    qryClientescep_comercial: TStringField;
    qryClienteslogradouro_entrega: TStringField;
    qryClientesnumero_entrega: TStringField;
    qryClientescomplemento_entrega: TStringField;
    qryClientesbairro_entrega: TStringField;
    qryClientesreferencia_entrega: TStringField;
    qryClientesid_pais_entrega: TStringField;
    qryClientesid_estado_entrega: TStringField;
    qryClientesid_cidade_entrega: TStringField;
    qryClientescep_entrega: TStringField;
    qryClienteslogradouro_cobranca: TStringField;
    qryClientesnumero_cobranca: TStringField;
    qryClientescomplemento_cobranca: TStringField;
    qryClientesbairro_cobranca: TStringField;
    qryClientesreferencia_cobranca: TStringField;
    qryClientesid_pais_cobranca: TStringField;
    qryClientesid_estado_cobranca: TStringField;
    qryClientesid_cidade_cobranca: TStringField;
    qryClientescep_cobranca: TStringField;
    qryClientestelefone: TStringField;
    qryClientesfax: TStringField;
    qryClientescelular: TStringField;
    qryClientesemail: TStringField;
    qryClientescontato: TStringField;
    qryClientescomprador: TStringField;
    qryClientesdata_nascimento: TDateTimeField;
    qryClientesmae_nome: TStringField;
    qryClientesmae_cpf: TStringField;
    qryClientesmae_doc_identidade: TStringField;
    qryClientespai_nome: TStringField;
    qryClientespai_cpf: TStringField;
    qryClientespai_doc_identidade: TStringField;
    qryClientesid_profissao: TWordField;
    qryClientesrenda_mensal: TFloatField;
    qryClienteslimite_credito: TFloatField;
    qryClientesdia_vencimento: TSmallintField;
    qryClientesdesconto: TFloatField;
    qryClientestipo_frete: TStringField;
    qryClientesprazo: TStringField;
    qryClientessexo: TStringField;
    qryClientesestado_civil: TStringField;
    qryClientesconjuge_nome: TStringField;
    qryClientesconjuge_cpf_numero: TStringField;
    qryClientesconjuge_rg_numero: TStringField;
    qryClientesid_classificacao: TWordField;
    qryClientesobservacao: TMemoField;
    qryClientesfoto: TBlobField;
    qryClientessituacao: TStringField;
    procedure qryPaises_LookUpAfterOpen(DataSet: TDataSet);
    procedure qryPaises_LookUpBeforeClose(DataSet: TDataSet);
    procedure qryEstados_LookUpAfterOpen(DataSet: TDataSet);
    procedure qryEstados_LookUpBeforeClose(DataSet: TDataSet);
    procedure qryEstabelecimentosregime_tributarioGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryEstabelecimentosregime_tributarioSetText(Sender: TField;
      const Text: string);
    procedure qryDispositivoshandshakeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryDispositivoshandshakeSetText(Sender: TField;
      const Text: string);
    procedure qryDispositivosid_bit_paradaGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryDispositivosid_bit_paradaSetText(Sender: TField;
      const Text: string);
    procedure qryDispositivosid_paridadeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryDispositivosid_paridadeSetText(Sender: TField;
      const Text: string);
    procedure qryDispositivostaxa_transmissaoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryDispositivostaxa_transmissaoSetText(Sender: TField;
      const Text: string);
    procedure qryOperadorestipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryOperadorestipoSetText(Sender: TField; const Text: string);
    procedure qryOperadoresid_statusSetText(Sender: TField; const Text: string);
    procedure qryOperadoresid_statusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryDispositivostipo_dispositivoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryDispositivostipo_dispositivoSetText(Sender: TField;
      const Text: string);
    procedure qryDispositivosid_modeloGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryDispositivosid_modeloSetText(Sender: TField;
      const Text: string);
    procedure qryTerminaisNewRecord(DataSet: TDataSet);
    procedure qryTerminaistipo_documento_fiscalGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryTerminaistipo_documento_fiscalSetText(Sender: TField;
      const Text: string);
    procedure qryTokensNewRecord(DataSet: TDataSet);
    procedure qryTerminaisautenticador_id_modeloGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryTerminaisautenticador_id_modeloSetText(Sender: TField;
      const Text: string);
    procedure qryClientesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetPaisPorCodigo(const Value: String; var APais: TPais): Boolean;
    function GetEstadoPorCodigo(const Value: String; var AEstado: TEstado): Boolean;
    function GetCidadePorCodigo(const Value: String; var ACidade: TCidade): Boolean;
  end;

var
  dmCadastro: TdmCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
   UDataModuleConexao;

{$R *.dfm}

function TdmCadastro.GetCidadePorCodigo(const Value: String;
  var ACidade: TCidade): Boolean;
var
   AEstado: TEstado;
begin
   qryCidades_Locate.Close;
   Result := Not qryCidades_Locate.IsEmpty;
   if Result then
      begin
         ACidade := TCidade.Create;
         ACidade.Id := qryCidades_Locate.FieldByName('id_cidade').AsString;
         ACidade.Nome := qryCidades_Locate.FieldByName('descricao').AsString;
         if GetEstadoPorCodigo(qryCidades_Locate.FieldByName('id_estado').AsString, AEstado) then
            ACidade.Estado := AEstado;
      end;
   qryCidades_Locate.Close;
end;

function TdmCadastro.GetEstadoPorCodigo(const Value: String;
  var AEstado: TEstado): Boolean;
var
   APais: TPais;
begin
   qryEstados_Locate.Close;
   qryEstados_Locate.MacroByName('condicao').Value := Format('WHERE id_estado = %s', [QuotedStr(Value)]);
   qryEstados_Locate.MacroByName('ordem').Value := 'id_estado';
   qryEstados_Locate.Open;
   Result := Not qryEstados_Locate.IsEmpty;
   if Result then
      begin
         AEstado := TEstado.Create;
         AEstado.Id := qryEstados_Locate.FieldByName('id_pais').AsString;
         AEstado.Nome := qryEstados_Locate.FieldByName('descricao').AsString;
         if GetPaisPorCodigo(qryEstados_Locate.FieldByName('id_pais').AsString, APais) then
            AEstado.Pais := APais;
      end;
   qryEstados_Locate.Close;
end;

function TdmCadastro.GetPaisPorCodigo(const Value: String;
  var APais: TPais): Boolean;
begin
   qryPaises_Locate.Close;
   qryPaises_Locate.MacroByName('condicao').Value := Format('WHERE id_pais = %s', [QuotedStr(Value)]);
   qryPaises_Locate.MacroByName('ordem').Value := 'id_pais';
   qryPaises_Locate.Open;
   Result := Not qryPaises_Locate.IsEmpty;
   if Result then
      begin
         APais := TPais.Create;
         APais.Id := qryPaises_Locate.FieldByName('id_pais').AsString;
         APais.Nome := qryPaises_Locate.FieldByName('descricao').AsString;
      end;
   qryPaises_Locate.Close;
end;

procedure TdmCadastro.qryClientesNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('tipo').AsString := '2';
   DataSet.FieldByName('situacao').AsString := '1';
end;

procedure TdmCadastro.qryDispositivoshandshakeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   If Sender.AsInteger = 0 Then
      Text := 'Nenhum'
   Else If Sender.AsInteger = 1 Then
           Text := 'XON/XOFF'
   Else If Sender.AsInteger = 2 Then
           Text := 'RTS/CTS'
   Else If Sender.AsInteger = 3 Then
           Text := 'DTR/DSR';
   DisplayText := Text <> ''
end;

procedure TdmCadastro.qryDispositivoshandshakeSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'Nenhum' then
      Sender.AsInteger := 0
   Else if Text = 'XON/XOFF' then
           Sender.AsInteger := 1
   Else if Text = 'RTS/CTS' then
           Sender.AsInteger := 2
   Else if Text = 'DTR/DSR' then
           Sender.AsInteger := 3;
end;

procedure TdmCadastro.qryDispositivosid_bit_paradaGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   If Sender.AsInteger = 0 Then
      Text := 's1'
   Else If Sender.AsInteger = 1 Then
           Text := 's1,5'
   Else If Sender.AsInteger = 2 Then
           Text := 's2';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryDispositivosid_bit_paradaSetText(Sender: TField;
  const Text: string);
begin
   if Text = 's1' then
      Sender.AsInteger := 0
   Else if Text = 's1,5' then
           Sender.AsInteger := 1
   Else if Text = 's2' then
           Sender.AsInteger := 2;
end;

procedure TdmCadastro.qryDispositivosid_modeloGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsInteger = 1 then
      Text := 'Filizola'
   Else if Sender.AsInteger = 2 then
           Text := 'Toledo'
   Else if Sender.AsInteger = 3 then
           Text := 'Toledo2090'
   Else if Sender.AsInteger = 4 then
           Text := 'Toledo2180'
   Else if Sender.AsInteger = 5 then
           Text := 'Urano'
   Else if Sender.AsInteger = 6 then
           Text := 'LucasTec'
   Else if Sender.AsInteger = 7 then
           Text := 'Magna'
   Else if Sender.AsInteger = 8 then
           Text := 'Digitron'
   Else if Sender.AsInteger = 9 then
           Text := 'Magellan'
   Else if Sender.AsInteger = 10 then
           Text := 'UranoPOP'
   Else if Sender.AsInteger = 11 then
           Text := 'Lider'
   Else if Sender.AsInteger = 12 then
           Text := 'Rinnert'
   Else if Sender.AsInteger = 13 then
           Text := 'Muller'
   Else if Sender.AsInteger = 14 then
           Text := 'Saturno'
   Else if Sender.AsInteger = 15 then
           Text := 'AFTS'
   Else if Sender.AsInteger = 16 then
           Text := 'Generica'
   Else if Sender.AsInteger = 17 then
           Text := 'Libratek';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryDispositivosid_modeloSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'Filizola' then
      Sender.AsInteger := 1
   Else if Text = 'Toledo' then
           Sender.AsInteger := 2
   Else if Text = 'Toledo2090' then
           Sender.AsInteger := 3
   Else if Text = 'Toledo2180' then
           Sender.AsInteger := 4
   Else if Text = 'Urano' then
           Sender.AsInteger := 5
   Else if Text = 'LucasTec' then
           Sender.AsInteger := 6
   Else if Text = 'Magna' then
           Sender.AsInteger := 7
   Else if Text = 'Digitron' then
           Sender.AsInteger := 8
   Else if Text = 'Magellan' then
           Sender.AsInteger := 9
   Else if Text = 'UranoPOP' then
           Sender.AsInteger := 10
   Else if Text = 'Lider' then
           Sender.AsInteger := 11
   Else if Text = 'Rinnert' then
           Sender.AsInteger := 12
   Else if Text = 'Muller' then
           Sender.AsInteger := 13
   Else if Text = 'Saturno' then
           Sender.AsInteger := 14
   Else if Text = 'AFTS' then
           Sender.AsInteger := 15
   Else if Text = 'Generica' then
           Sender.AsInteger := 16
   Else if Text = 'Libratek' then
           Sender.AsInteger := 17;
end;

procedure TdmCadastro.qryDispositivosid_paridadeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsInteger = 0 then
      Text := 'none'
   Else if Sender.AsInteger = 1 then
           Text := 'odd'
   Else if Sender.AsInteger = 2 then
           Text := 'even'
   Else if Sender.AsInteger = 3 then
           Text := 'mark'
   Else if Sender.AsInteger = 4 then
           Text := 'space';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryDispositivosid_paridadeSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'none' then
      Sender.AsInteger := 0
   Else if Text = 'odd' then
           Sender.AsInteger := 1
   Else if Text = 'even' then
           Sender.AsInteger := 2
   Else if Text = 'mark' then
           Sender.AsInteger := 3
   Else if Text = 'space' then
           Sender.AsInteger := 4;
end;

procedure TdmCadastro.qryDispositivostaxa_transmissaoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsInteger = 5 then
      Text := '5'
   Else if Sender.AsInteger = 5 then
           Text := '6'
   Else if Sender.AsInteger = 7 then
           Text := '7'
   Else if Sender.AsInteger = 8 then
           Text := '8';
   DisplayText := text <> '';
end;

procedure TdmCadastro.qryDispositivostaxa_transmissaoSetText(Sender: TField;
  const Text: string);
begin
   if Text = '5' then
      Sender.AsInteger := 5
   Else if Text = '6' then
           Sender.AsInteger := 6
   Else if Text = '7' then
           Sender.AsInteger := 7
   Else if Text = '8' then
           Sender.AsInteger := 8;
end;

procedure TdmCadastro.qryDispositivostipo_dispositivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsString = 'B' then
      Text := 'Balança';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryDispositivostipo_dispositivoSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'Balança' then
      Sender.AsString := 'B';
end;

procedure TdmCadastro.qryEstabelecimentosregime_tributarioGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Sender.AsString = '0' then
      Text := '3 - Regime Normal'
   Else if Sender.AsString = '1' then
           Text := '1 - Simples Nacional'
   Else if Sender.AsString = '2' then
           Text := '2 - Simples Nacional - excesso de sublimite da receita bruta';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryEstabelecimentosregime_tributarioSetText(
  Sender: TField; const Text: string);
begin
   If Text = '3 - Regime Normal' Then
      Sender.AsString := '0'
   Else If Text = '1 - Simples Nacional' Then
           Sender.AsString := '1'
   Else If Text = '2 - Simples Nacional - excesso de sublimite da receita bruta' Then
           Sender.AsString := '2';
end;

procedure TdmCadastro.qryEstados_LookUpAfterOpen(DataSet: TDataSet);
begin
   qryCidades_LookUp.Open;
end;

procedure TdmCadastro.qryEstados_LookUpBeforeClose(DataSet: TDataSet);
begin
   qryCidades_LookUp.Close;
end;

procedure TdmCadastro.qryOperadoresid_statusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsInteger = 0 then
      Text := 'Bloqueado'
   Else if Sender.AsInteger = 1 then
           Text := 'Ativo';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryOperadoresid_statusSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'Bloqueado' then
      Sender.AsInteger := 0
   Else if Text = 'Ativo' then
           Sender.AsInteger := 1;
end;

procedure TdmCadastro.qryOperadorestipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if Sender.AsString = 'O' then
      Text := 'Operador'
   Else if Sender.AsString = 'S' then
           Text := 'Supervisor';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryOperadorestipoSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'Operador' then
      Sender.AsString := 'O'
   Else if Text = 'Supervisor' then
           Sender.AsString := 'S';
end;

procedure TdmCadastro.qryPaises_LookUpAfterOpen(DataSet: TDataSet);
begin
   qryEstados_LookUp.Open;
end;

procedure TdmCadastro.qryPaises_LookUpBeforeClose(DataSet: TDataSet);
begin
   qryEstados_LookUp.Close;
end;

procedure TdmCadastro.qryTerminaisautenticador_id_modeloGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsInteger = 1 then
      Text := 'Bematech MP-2032'
   else if Sender.AsInteger = 2 then
           Text := 'Diebold Procomp IM453HU';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryTerminaisautenticador_id_modeloSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'Bematech MP-2032' then
      Sender.AsInteger := 1
   else If Text = 'Diebold Procomp IM453HU' then
           Sender.AsInteger := 2;
end;

procedure TdmCadastro.qryTerminaisNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('fiscal').AsString := 'S';
   DataSet.FieldByName('identificar_representante').AsString := 'N';
   DataSet.FieldByName('autenticar_documento').AsString := 'N';
end;

procedure TdmCadastro.qryTerminaistipo_documento_fiscalGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsString = '0' then
      Text := 'Nenhum'
   Else if Sender.AsString = '1' then
           Text := 'NF-e'
   Else if Sender.AsString = '2' then
           Text := 'NFC-e'
   Else
      Text := 'Definido pelo Operador';
   DisplayText := Text <> '';
end;

procedure TdmCadastro.qryTerminaistipo_documento_fiscalSetText(Sender: TField;
  const Text: string);
begin
   if Text = 'Nenhum' then
      Sender.AsString := '0'
   Else If Text = 'NF-e' then
           Sender.AsString := '1'
   Else If Text = 'NFC-e' then
           Sender.AsString := '2'
   Else
      Sender.Clear;
end;

procedure TdmCadastro.qryTokensNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_estabelecimento').AsInteger := TUniQuery(DataSet).ParamByName('id_estabelecimento').AsInteger;
end;

end.
