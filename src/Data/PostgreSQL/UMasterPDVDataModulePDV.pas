unit UMasterPDVDataModulePDV;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TdmPDV = class(TDataModule)
    qryOperadores: TUniQuery;
    qryTerminais: TUniQuery;
    dsOperadores: TDataSource;
    qryOperadoresid_operador: TIntegerField;
    qryOperadoresid_usuario: TIntegerField;
    qryOperadoreslogin: TStringField;
    qryOperadoresnome: TStringField;
    qryOperadorestipo: TStringField;
    qryOperadoresid_status: TSmallintField;
    qryTerminaisid_terminal: TIntegerField;
    qryTerminaisnumero: TSmallintField;
    qryTerminaisdescricao: TStringField;
    dsTerminais: TDataSource;
    qryTerminaisid_estabelecimento: TIntegerField;
    qryEstabelecimentos: TUniQuery;
    qryEstabelecimentosid_estabelecimento: TIntegerField;
    qryEstabelecimentoscnpj: TStringField;
    qryEstabelecimentosinscricao_estadual: TStringField;
    qryEstabelecimentosinscricao_municipal: TStringField;
    qryEstabelecimentosinscricao_suframa: TStringField;
    qryEstabelecimentosrazao_social: TStringField;
    qryEstabelecimentosnome_fantasia: TStringField;
    qryEstabelecimentosendereco_logradouro: TStringField;
    qryEstabelecimentosendereco_numero: TStringField;
    qryEstabelecimentosendereco_complemento: TStringField;
    qryEstabelecimentosendereco_id_pais: TIntegerField;
    qryEstabelecimentosendereco_nome_pais: TStringField;
    qryEstabelecimentosendereco_id_estado: TIntegerField;
    qryEstabelecimentosendereco_sigla_estado: TStringField;
    qryEstabelecimentosendereco_nome_estado: TStringField;
    qryEstabelecimentosendereco_id_cidade: TIntegerField;
    qryEstabelecimentosendereco_nome_cidade: TStringField;
    qryEstabelecimentosendereco_id_bairro: TIntegerField;
    qryEstabelecimentosendereco_nome_bairro: TStringField;
    qryEstabelecimentosendereco_cep: TStringField;
    qryEstabelecimentostelefone: TStringField;
    qryEstabelecimentosfax: TStringField;
    qryEstabelecimentosemail: TStringField;
    qryEstabelecimentoslogomarca: TBlobField;
    qryMovimentos: TUniQuery;
    qryMovimentosid_terminal: TIntegerField;
    qryMovimentosdata_movimento: TDateField;
    qryMovimentosid_operador: TIntegerField;
    qryMovimentosdata_abertura: TDateTimeField;
    qryMovimentosdata_fechamento: TDateTimeField;
    qryMovimentosdata_encerramento: TDateTimeField;
    qryUltimoMovimento: TUniQuery;
    qryVendas: TUniQuery;
    qryVendasid_venda: TIntegerField;
    qryVendasdata_registro: TDateTimeField;
    qryVendasid_terminal: TIntegerField;
    qryVendasdata_movimento: TDateField;
    qryVendasdocumento: TIntegerField;
    dsVendas: TDataSource;
    qryVendas_Totais: TUniQuery;
    qryVendas_Produtos: TUniQuery;
    qryVendas_Trocas: TUniQuery;
    qryVendas_Brindes: TUniQuery;
    qryVendas_Parcelas: TUniQuery;
    qryVendas_Produtosid_venda: TIntegerField;
    qryVendas_Produtossequencia_item: TSmallintField;
    qryVendas_Produtosid_produto: TIntegerField;
    qryVendas_Produtosquantidade: TFloatField;
    qryVendas_Produtospreco_unitario: TFloatField;
    qryVendas_Produtosvalor_acrescimo: TFloatField;
    qryVendas_Produtosvalor_desconto: TFloatField;
    qryVendas_Produtoscancelado: TStringField;
    qryVendas_Produtospreco_total: TFloatField;
    qryVendas_Produtoscodigo_barras: TStringField;
    qryTerminaisfiscal: TStringField;
    qryVendasid_cliente: TIntegerField;
    qryVendasid_condicao_pagamento: TSmallintField;
    qryVendasquantidade_parcelas: TSmallintField;
    qryVendasvalor_entrada: TFloatField;
    qryVendasid_status: TSmallintField;
    qryVendas_Totaisid_venda: TIntegerField;
    qryVendas_Totaisvalor_bruto: TFloatField;
    qryVendas_Totaisvalor_acrescimo: TFloatField;
    qryVendas_Totaisvalor_desconto: TFloatField;
    qryVendas_Totaisvalor_troca: TFloatField;
    qryVendas_Totaisvalor_recebido: TFloatField;
    qryVendas_Totaisvalor_liquido: TFloatField;
    qryVendas_Totaisvalor_receber: TFloatField;
    qryVendas_Totaisvalor_troco: TFloatField;
    qrySequenciaDocumento: TUniQuery;
    qrySupervisores: TUniQuery;
    qryTerminaisetiqueta_prefixo: TStringField;
    qryTerminaisetiqueta_codigo_inicio: TSmallintField;
    qryTerminaisetiqueta_codigo_tamanho: TSmallintField;
    qryProdutos_Locate: TUniQuery;
    qryVendasvalor_bruto: TFloatField;
    qryVendasvalor_acrescimo: TFloatField;
    qryVendasvalor_desconto: TFloatField;
    qryVendasvalor_troca: TFloatField;
    qryVendasvalor_recebido: TFloatField;
    qryVendas_Produtosid_unidade_medida: TSmallintField;
    qryVendas_Produtossigla_unidade_medida: TStringField;
    qryVendas_Produtospreco_venda: TFloatField;
    qryVendas_Produtospercentual_acrescimo: TFloatField;
    qryVendas_Produtospercentual_desconto: TFloatField;
    qryVendas_Produtospeso_bruto: TFloatField;
    qryVendas_Produtosdescricao: TMemoField;
    qryTerminais_Tipos_Recebimentos: TUniQuery;
    qryTerminais_Tipos_Recebimentosid_tipo_recebimento: TIntegerField;
    qryTerminais_Tipos_Recebimentosdescricao_tipo_recebimento: TStringField;
    qryTerminais_Tipos_Recebimentosid_botao: TIntegerField;
    qryTerminais_Tipos_Recebimentostexto_botao: TStringField;
    qryTerminais_Tipos_Recebimentospermite_troco: TStringField;
    qryFormas_Recebimentos: TUniQuery;
    qryFormas_Recebimentosid_forma_recebimento: TIntegerField;
    qryFormas_Recebimentosdescricao: TStringField;
    qryFormas_Recebimentosid_tipo_recebimento: TIntegerField;
    qryFormas_Recebimentospermite_troco: TStringField;
    qryVendas_Recebimentos: TUniQuery;
    qryVendas_Recebimentosid_venda: TIntegerField;
    qryVendas_Recebimentossequencia_recebimento: TSmallintField;
    qryVendas_Recebimentosid_forma_recebimento: TIntegerField;
    qryEmitentes: TUniQuery;
    qryEmitentesid_emitente: TIntegerField;
    qryEmitentestipo_pessoa: TStringField;
    qryEmitentescnpj: TStringField;
    qryEmitentesinscricao_estadual: TStringField;
    qryEmitentesinscricao_municipal: TStringField;
    qryEmitentesinscricao_suframa: TStringField;
    qryEmitentescpf: TStringField;
    qryEmitentesid_pais: TIntegerField;
    qryEmitentesid_estado: TIntegerField;
    qryEmitentessigla_estado: TStringField;
    qryEmitentesid_cidade: TIntegerField;
    qryEmitentestelefone: TStringField;
    qryEmitentesfax: TStringField;
    qryEmitentesemail: TStringField;
    qryEmitentesdanfe_logomarca_arquivo: TStringField;
    qryEmitentesdanfe_logomarca_expandir: TStringField;
    qryEmitentessalvar_resposta_envio: TStringField;
    qryEmitentessalvar_resposta_envio_caminho: TStringField;
    qryEmitentesws_ambiente: TStringField;
    qryEmitentesws_visualizar_mensagens: TStringField;
    qryEmitentescertificado_caminho: TStringField;
    qryEmitentescertificado_senha: TStringField;
    qryEmitentescertificado_serie: TStringField;
    qryEmitentesproxy_host: TStringField;
    qryEmitentesproxy_porta: TIntegerField;
    qryEmitentesproxy_usuario: TStringField;
    qryEmitentesproxy_senha: TStringField;
    qryEmitentesemail_host: TStringField;
    qryEmitentesemail_porta: TIntegerField;
    qryEmitentesemail_usuario: TStringField;
    qryEmitentesemail_senha: TStringField;
    qryEmitentesemail_assunto: TStringField;
    qryEmitentesemail_ssl: TStringField;
    qryEmitentesemail_mensagem: TMemoField;
    qryTerminaisid_balanca_acoplada: TIntegerField;
    qryTerminaisdescricao_balanca_acoplada: TStringField;
    qryTerminaisvelocidade_balanca_acoplada: TIntegerField;
    qryTerminaistaxa_transmissao_balanca_acoplada: TSmallintField;
    qryTerminaisid_paridade_balanca_acoplada: TSmallintField;
    qryTerminaistoken_csc_numero: TStringField;
    qryTerminaisdescricao_modelo_balanca_acoplada: TStringField;
    qryTerminaisporta_serial_balanca_acoplada: TStringField;
    qryTerminaishandshake_balanca_acoplada: TSmallintField;
    qryTerminaistempo_limite_balanca_acoplada: TIntegerField;
    qryTerminaisid_bit_parada_balanca_acoplada: TSmallintField;
    qryTerminaistoken_csc_id: TIntegerField;
    qryVendasdocumento_rfb_numero: TStringField;
    qryVendasid_tipo_documento_fiscal: TSmallintField;
    qryVendas_Recebimentosvalor_recebido: TFloatField;
    qryProdutos_Locateid_produto: TIntegerField;
    qryProdutos_Locatetipo: TSmallintField;
    qryProdutos_Locatecodigo_barras: TStringField;
    qryProdutos_Locatedescricao: TStringField;
    qryProdutos_Locateresumida: TStringField;
    qryProdutos_Locateid_categoria: TIntegerField;
    qryProdutos_Locatedescricao_categoria: TStringField;
    qryProdutos_Locateid_subcategoria: TIntegerField;
    qryProdutos_Locatedescricao_subcategoria: TStringField;
    qryProdutos_Locatecodigo_mercosul: TStringField;
    qryProdutos_Locateid_marca: TIntegerField;
    qryProdutos_Locatedescricao_marca: TStringField;
    qryProdutos_Locatereferencia: TStringField;
    qryProdutos_Locateapresentacao: TStringField;
    qryProdutos_Locateid_unidade_medida: TIntegerField;
    qryProdutos_Locatedescricao_unidade_medida: TStringField;
    qryProdutos_Locatesigla_unidade_medida: TStringField;
    qryProdutos_Locatepreco_venda: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryOperadoresAfterOpen(DataSet: TDataSet);
    procedure qryOperadoresBeforeClose(DataSet: TDataSet);
    procedure qryTerminaisAfterOpen(DataSet: TDataSet);
    procedure qryTerminaisBeforeClose(DataSet: TDataSet);
    procedure qryVendasAfterOpen(DataSet: TDataSet);
    procedure qryVendasBeforeClose(DataSet: TDataSet);
    procedure qryVendasBeforePost(DataSet: TDataSet);
    procedure qryVendas_ProdutosCalcFields(DataSet: TDataSet);
    procedure qryVendas_ProdutosAfterPost(DataSet: TDataSet);
    procedure qryVendas_ProdutosAfterDelete(DataSet: TDataSet);
    procedure qryVendas_RecebimentosNewRecord(DataSet: TDataSet);
    procedure qryVendas_RecebimentosBeforePost(DataSet: TDataSet);
    procedure qryVendas_RecebimentosAfterPost(DataSet: TDataSet);
    procedure qryVendas_RecebimentosAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function AutenticaSupervisor(Login: String; Senha: String): Boolean;
    function BuscaUltimoMovimento(ID_Terminal, ID_Operador: Integer): Boolean;
    function GetProximaSequenciaDocumento(ID_Terminal: Integer): Integer;
    function GetProdutoPorCodigoBarras(CodigoBarras: String;
                                       ID_Estabelecimento: Integer;
                                       ID_Tipo_Preco: SmallInt;
                                       DataBase: TDateTime): Boolean;
  end;

var
  dmPDV: TdmPDV;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
   UDataModuleConexao, UDataModuleSessao;

{$R *.dfm}

function TdmPDV.AutenticaSupervisor(Login, Senha: String): Boolean;
begin
   qrySupervisores.Close;
   qrySupervisores.ParamByName('login').Value := Login;
   qrySupervisores.ParamByName('senha').Value := Senha;
   qrySupervisores.Open;
   Result := Not qrySupervisores.IsEmpty;
   qrySupervisores.Close;
end;

function TdmPDV.BuscaUltimoMovimento(ID_Terminal,
  ID_Operador: Integer): Boolean;
begin
   qryUltimoMovimento.Close;
   qryUltimoMovimento.ParamByName('id_terminal').Value := ID_Terminal;
   qryUltimoMovimento.ParamByName('id_operador').Value := ID_Operador;
   qryUltimoMovimento.Open;
   Result := Not qryUltimoMovimento.IsEmpty;
   if Not Result then
      qryUltimoMovimento.Close;
end;

procedure TdmPDV.DataModuleCreate(Sender: TObject);
begin
   qryOperadores.Close;
   qryOperadores.ParamByName('id_usuario').Value := dmSessao.qryUsuarios.FieldByName('id_usuario').AsInteger;
   qryOperadores.Open;
end;

procedure TdmPDV.DataModuleDestroy(Sender: TObject);
begin
   qryOperadores.Close;
end;

function TdmPDV.GetProdutoPorCodigoBarras(CodigoBarras: String;
   ID_Estabelecimento: Integer; ID_Tipo_Preco: SmallInt;
   DataBase: TDateTime): Boolean;
begin
   qryProdutos_Locate.Close;
   qryProdutos_Locate.ParamByName('codigo_barras').Value := CodigoBarras;
   qryProdutos_Locate.ParamByName('id_estabelecimento').Value := ID_Estabelecimento;
   qryProdutos_Locate.ParamByName('id_tipo_preco').Value := ID_Tipo_Preco;
   qryProdutos_Locate.ParamByName('data_base').Value := DataBase;
   qryProdutos_Locate.Open;
   Result := Not qryProdutos_Locate.IsEmpty;
   if Not Result then
      qryProdutos_Locate.Close;
end;

function TdmPDV.GetProximaSequenciaDocumento(ID_Terminal: Integer): Integer;
begin
   qrySequenciaDocumento.Close;
   qrySequenciaDocumento.ParamByName('id_terminal').Value := ID_Terminal;
   qrySequenciaDocumento.Open;
   Result := qrySequenciaDocumento.FieldByName('sequencia_documento').AsInteger;
   qrySequenciaDocumento.Close;
end;

procedure TdmPDV.qryOperadoresAfterOpen(DataSet: TDataSet);
begin
   qryTerminais.Open;
end;

procedure TdmPDV.qryOperadoresBeforeClose(DataSet: TDataSet);
begin
   qryTerminais.Close;
end;

procedure TdmPDV.qryTerminaisAfterOpen(DataSet: TDataSet);
begin
   qryEstabelecimentos.Open;
end;

procedure TdmPDV.qryTerminaisBeforeClose(DataSet: TDataSet);
begin
   qryEstabelecimentos.Close;
end;

procedure TdmPDV.qryVendasAfterOpen(DataSet: TDataSet);
begin
   qryVendas_Totais.Open;
   qryVendas_Produtos.Open;
   qryVendas_Recebimentos.Open;
end;

procedure TdmPDV.qryVendasBeforeClose(DataSet: TDataSet);
begin
   qryVendas_Recebimentos.Close;
   qryVendas_Produtos.Close;
   qryVendas_Totais.Close;
end;

procedure TdmPDV.qryVendasBeforePost(DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('data_registro').AsDateTime := dmConexao.GetCurrentDateTime;
end;

procedure TdmPDV.qryVendas_ProdutosAfterDelete(DataSet: TDataSet);
begin
   qryVendas_Totais.Close;
   qryVendas_Totais.Open;
end;

procedure TdmPDV.qryVendas_ProdutosAfterPost(DataSet: TDataSet);
begin
   qryVendas_Totais.Close;
   qryVendas_Totais.Open;
end;

procedure TdmPDV.qryVendas_ProdutosCalcFields(DataSet: TDataSet);
begin
   DataSet.FieldByName('preco_total').AsFloat := (DataSet.FieldByName('preco_unitario').AsFloat * DataSet.FieldByName('quantidade').AsFloat) + DataSet.FieldByName('valor_acrescimo').AsFloat - DataSet.FieldByName('valor_desconto').AsFloat;
end;

procedure TdmPDV.qryVendas_RecebimentosAfterDelete(DataSet: TDataSet);
begin
   qryVendas_Totais.Close;
   qryVendas_Totais.Open;
end;

procedure TdmPDV.qryVendas_RecebimentosAfterPost(DataSet: TDataSet);
begin
   qryVendas_Totais.Close;
   qryVendas_Totais.Open;
end;

procedure TdmPDV.qryVendas_RecebimentosBeforePost(DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('sequencia_recebimento').AsInteger := dmConexao.Sequencia('pdv.vendas_recebimentos', 'sequencia_recebimento', Format('WHERE id_venda = %d', [DataSet.FieldByName('id_venda').AsInteger]));
end;

procedure TdmPDV.qryVendas_RecebimentosNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_venda').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_venda').AsInteger;
   DataSet.FieldByName('valor_recebido').AsFloat := 0;
end;

end.
