unit UMasterPDVDataModulePDV;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  LealSoftwares.Model.Configuracao.Interfaces;

type
  TdmPDV = class(TDataModule)
    qryOperadores: TUniQuery;
    qryTerminais: TUniQuery;
    dsOperadores: TDataSource;
    qryOperadoresid_operador: TLargeintField;
    qryOperadoresid_usuario: TLargeintField;
    qryOperadoreslogin: TStringField;
    qryOperadoresnome: TStringField;
    qryOperadorestipo: TStringField;
    qryTerminaisid_terminal: TLargeintField;
    qryTerminaisnumero: TLargeintField;
    qryTerminaisdescricao: TStringField;
    dsTerminais: TDataSource;
    qryTerminaisid_local: TIntegerField;
    qryEstabelecimentos: TUniQuery;
    qryMovimentos: TUniQuery;
    qryUltimoMovimento: TUniQuery;
    qryVendas: TUniQuery;
    dsVendas: TDataSource;
    qryVendas_Totais: TUniQuery;
    qryVendas_Produtos: TUniQuery;
    qryVendas_Trocas: TUniQuery;
    qryVendas_Brindes: TUniQuery;
    qryVendas_Parcelas: TUniQuery;
    qryTerminaisfiscal: TStringField;
    qryVendas_Totaisvalor_bruto: TFloatField;
    qryVendas_Totaisvalor_acrescimo: TFloatField;
    qryVendas_Totaisvalor_desconto: TFloatField;
    qryVendas_Totaisvalor_troca: TFloatField;
    qryVendas_Totaisvalor_recebido: TFloatField;
    qryVendas_Totaisvalor_liquido: TFloatField;
    qryVendas_Totaisvalor_receber: TFloatField;
    qryVendas_Totaisvalor_troco: TFloatField;
    qrySequenciaNumeroDocumentoVenda: TUniQuery;
    qrySupervisores: TUniQuery;
    qryTerminaisetiqueta_prefixo: TStringField;
    qryTerminaisetiqueta_codigo_inicio: TSmallintField;
    qryTerminaisetiqueta_codigo_tamanho: TSmallintField;
    qryProdutos_Locate: TUniQuery;
    qryTerminais_Modalidades: TUniQuery;
    qryFormas_Recebimentos: TUniQuery;
    qryVendas_Recebimentos: TUniQuery;
    qryTerminaisid_balanca_acoplada: TLargeintField;
    qryTerminaisdescricao_balanca_acoplada: TStringField;
    qryTerminaisvelocidade_balanca_acoplada: TLargeintField;
    qryTerminaistaxa_transmissao_balanca_acoplada: TSmallintField;
    qryTerminaisid_paridade_balanca_acoplada: TSmallintField;
    qryTerminaistoken_csc_numero: TStringField;
    qryTerminaisporta_serial_balanca_acoplada: TStringField;
    qryTerminaishandshake_balanca_acoplada: TSmallintField;
    qryTerminaistempo_limite_balanca_acoplada: TLargeintField;
    qryTerminaisid_bit_parada_balanca_acoplada: TSmallintField;
    qryTerminaistoken_csc_id: TLargeintField;
    qryMovimentosid_terminal: TLargeintField;
    qryMovimentosdata_movimento: TDateTimeField;
    qryMovimentosid_operador: TLargeintField;
    qryMovimentosdata_abertura: TDateTimeField;
    qryMovimentosdata_fechamento: TDateTimeField;
    qryMovimentosdata_encerramento: TDateTimeField;
    qryOperadoressenha: TStringField;
    qryOperadoresid_status: TWordField;
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
    qryTerminaisid_modelo_balanca_acoplada: TWordField;
    uspSequenciaNumeroDocumentoVenda: TUniStoredProc;
    qryVendas_Totaisid_venda: TLargeintField;
    qryVendas_Produtosid_venda: TLargeintField;
    qryVendas_Produtositem: TWordField;
    qryVendas_Produtosid_produto: TLargeintField;
    qryVendas_Produtoscodigo_barras: TStringField;
    qryVendas_Produtosdescricao: TMemoField;
    qryVendas_Produtosid_unidade: TWordField;
    qryVendas_Produtossigla_unidade: TStringField;
    qryVendas_Produtosquantidade: TFloatField;
    qryVendas_Produtospeso_bruto: TFloatField;
    qryVendas_Produtospreco_unitario: TFloatField;
    qryVendas_Produtospreco_venda: TFloatField;
    qryVendas_Produtospercentual_acrescimo: TFloatField;
    qryVendas_Produtosvalor_acrescimo: TFloatField;
    qryVendas_Produtospercentual_desconto: TFloatField;
    qryVendas_Produtosvalor_desconto: TFloatField;
    qryVendas_Produtospreco_total: TFloatField;
    qryVendas_Recebimentosid_venda: TLargeintField;
    qryVendas_Recebimentositem: TWordField;
    qryVendas_Recebimentosid_transacao: TWordField;
    qryVendas_Recebimentosvalor_recebido: TFloatField;
    qryVendasid_venda: TLargeintField;
    qryVendasdata_registro: TDateTimeField;
    qryVendasid_local: TWordField;
    qryVendasdata_movimento: TDateTimeField;
    qryVendasid_caixa: TWordField;
    qryVendasdocumento: TLargeintField;
    qryVendasid_condicao: TWordField;
    qryVendasparcelas: TByteField;
    qryVendastipo_prazo: TStringField;
    qryVendasid_representante: TLargeintField;
    qryVendasid_parceiro: TLargeintField;
    qryVendasdocumento_rfb_numero: TStringField;
    qryVendasid_conveniado: TLargeintField;
    qryVendaslogradouro_entrega: TStringField;
    qryVendasnumero_entrega: TStringField;
    qryVendascomplemento_entrega: TStringField;
    qryVendasreferencia_entrega: TStringField;
    qryVendasbairro_entrega: TStringField;
    qryVendasid_pais_entrega: TStringField;
    qryVendasid_estado_entrega: TStringField;
    qryVendasid_cidade_entrega: TStringField;
    qryVendascep_entrega: TStringField;
    qryVendastelefone_entrega: TStringField;
    qryVendascontato_entrega: TStringField;
    qryVendasid_transportador: TWordField;
    qryVendasid_entregador: TWordField;
    qryVendasdata_entrega: TDateTimeField;
    qryVendasid_preco: TWordField;
    qryVendasvalor_entrada: TFloatField;
    qryVendaspercentual_comissao: TFloatField;
    qryVendasobservacao: TMemoField;
    qryVendasid_usuario: TLargeintField;
    qryVendastipo_documento_fiscal: TStringField;
    qryVendasstatus: TStringField;
    qryTerminais_Modalidadesid_terminal: TLargeintField;
    qryTerminais_Modalidadesid_modalidade: TStringField;
    qryTerminais_Modalidadesdescricao_modalidade: TStringField;
    qryTerminais_Modalidadestexto_botao: TStringField;
    qryTerminais_Modalidadesindice_imagem: TShortintField;
    qryTerminais_Modalidadestroco: TStringField;
    qryTerminais_Modalidadestef: TStringField;
    qryTerminais_Modalidadesid_botao: TSmallintField;
    qryTerminais_Modalidadesid_tecla: TSmallintField;
    qryFormas_Recebimentosid_transacao: TWordField;
    qryFormas_Recebimentosdescricao: TStringField;
    qryFormas_Recebimentosid_tipo_pagamento: TByteField;
    qryFormas_Recebimentostroco: TStringField;
    qryTerminaisid_conta: TWordField;
    dsMovimentos: TDataSource;
    qryMovimentos_Operacoes: TUniQuery;
    qryMovimentos_Operacoesid_terminal: TLargeintField;
    qryMovimentos_Operacoesdata_movimento: TDateTimeField;
    qryMovimentos_Operacoessequencia: TWordField;
    qryMovimentos_Operacoesid_operacao: TSmallintField;
    qryMovimentos_Operacoeshistorico: TStringField;
    qryMovimentos_Operacoesnatureza: TStringField;
    qryMovimentos_Operacoesvalor: TFloatField;
    qryMovimentos_Locate: TUniQuery;
    qryVendas_Recebimentosvalor_troco: TFloatField;
    qryCentros_Custos_LookUp: TUniQuery;
    qryCentros_Custos_LookUpid_centro: TStringField;
    qryCentros_Custos_LookUpdescricao: TStringField;
    qryCentros_Custos_LookUpnatureza: TStringField;
    qryMovimentos_Operacoesid_centro: TStringField;
    uspCancelaVenda: TUniStoredProc;
    qryTerminaisid_condicao_pagamento: TWordField;
    qryTerminaisid_cliente_consumidor: TLargeintField;
    uspCalculaSaldoTerminal: TUniStoredProc;
    uspGeraDuplicatas_Venda: TUniStoredProc;
    uspBaixaDuplicataVendaRecebimento: TUniStoredProc;
    uspCalculaParcelasVenda: TUniStoredProc;
    qryMovimentos_Operacoesid_operador: TLargeintField;
    qryTerminaistipo_documento_fiscal: TStringField;
    qryVendasid_operador: TLargeintField;
    qryTerminaisdfe_forma_emissao: TStringField;
    qryTerminaiscontingencia_motivo: TStringField;
    qryTerminaisemissor_cupom: TStringField;
    qryTerminaisemissor_nfe: TStringField;
    qryTerminaisemissor_nfce: TStringField;
    qryTerminaisoperacao_offline: TStringField;
    qryTerminaisendereco_fisico: TStringField;
    qryTerminais_Locate: TUniQuery;
    qryTerminaisversao_xml: TStringField;
    qryPreVendas: TUniQuery;
    qryPreVendasid_prevenda: TLargeintField;
    qryPreVendasdata_movimento: TDateTimeField;
    qryPreVendasdocumento: TLargeintField;
    qryPreVendasid_cliente: TLargeintField;
    qryPreVendasrazao_cliente: TStringField;
    qryPreVendaslogradouro_entrega: TStringField;
    qryPreVendasnumero_entrega: TStringField;
    qryPreVendascomplemento_entrega: TStringField;
    qryPreVendasbairro_entrega: TStringField;
    qryPreVendasreferencia_entrega: TStringField;
    qryPreVendasid_pais_entrega: TStringField;
    qryPreVendasid_estado_entrega: TStringField;
    qryPreVendasid_cidade_entrega: TStringField;
    qryPreVendascep_entrega: TStringField;
    qryPreVendastelefone_entrega: TStringField;
    qryPreVendasemail_cliente: TStringField;
    qryPreVendascontato_entrega: TStringField;
    qryPreVendasid_condicao: TWordField;
    qryPreVendasdescricao_condicao: TStringField;
    qryPreVendasparcelas: TWordField;
    qryPreVendasid_preco: TWordField;
    qryPreVendasdata_entrega: TDateTimeField;
    qryPreVendasid_representante: TLargeintField;
    qryPreVendaspercent_comissao: TFloatField;
    qryPreVendasvalor_entrada: TFloatField;
    qryPreVendasvalor_bruto: TFloatField;
    qryPreVendasvalor_acrescimo: TFloatField;
    qryPreVendasvalor_desconto: TFloatField;
    qryPreVendasvalor_troca: TFloatField;
    qryPreVendasvalor_liquido: TFloatField;
    qryPreVendasvalor_recebido: TFloatField;
    qryPreVendasvalor_receber: TFloatField;
    qryPreVendasTroco: TFloatField;
    qryPreVendasobservacao: TMemoField;
    qryPreVendastipo_documento_fiscal: TStringField;
    qryPreVendasid_status: TWordField;
    qryPreVendasid_venda: TLargeintField;
    dsPreVendas: TDataSource;
    qryPreVendas_Produtos: TUniQuery;
    qryPreVendas_Produtosid_prevenda: TLargeintField;
    qryPreVendas_Produtositem: TWordField;
    qryPreVendas_Produtosid_produto: TLargeintField;
    qryPreVendas_Produtosdescricao: TMemoField;
    qryPreVendas_Produtosdescricao_marca: TStringField;
    qryPreVendas_Produtosreferencia: TStringField;
    qryPreVendas_Produtosapresentacao: TStringField;
    qryPreVendas_Produtosquantidade: TFloatField;
    qryPreVendas_Produtosid_unidade: TWordField;
    qryPreVendas_Produtossigla_unidade: TStringField;
    qryPreVendas_Produtospreco_unitario: TFloatField;
    qryPreVendas_Produtospreco_venda: TFloatField;
    qryPreVendas_Produtospercentual_desconto: TFloatField;
    qryPreVendas_Produtosvalor_desconto: TFloatField;
    qryPreVendas_Produtospreco_total: TFloatField;
    qryPreVendas_Parcelas: TUniQuery;
    qryPreVendas_Parcelasid_prevenda: TLargeintField;
    qryPreVendas_Parcelasparcela: TWordField;
    qryPreVendas_Parcelasprazo: TWordField;
    qryPreVendas_Parcelasdata_vencimento: TDateTimeField;
    qryPreVendas_Parcelasvalor_parcela: TFloatField;
    qryPreVendas_Recebimentos: TUniQuery;
    qryPreVendas_Recebimentosid_prevenda: TLargeintField;
    qryPreVendas_Recebimentositem: TWordField;
    qryPreVendas_Recebimentosid_transacao: TWordField;
    qryPreVendas_Recebimentosvalor_recebido: TFloatField;
    qryPreVendas_Trocas: TUniQuery;
    qryPreVendas_Trocasid_prevenda: TLargeintField;
    qryPreVendas_Trocasitem: TWordField;
    qryPreVendas_Trocasid_produto: TLargeintField;
    qryPreVendas_Trocasid_unidade: TWordField;
    qryPreVendas_Trocasquantidade: TFloatField;
    qryPreVendas_Trocaspreco_unitario: TFloatField;
    qryPreVendas_Trocasvalor_desconto: TFloatField;
    qryPreVendas_Brindes: TUniQuery;
    qryPreVendas_Brindesid_prevenda: TLargeintField;
    qryPreVendas_Brindesitem: TWordField;
    qryPreVendas_Brindesid_produto: TLargeintField;
    qryPreVendas_Brindesid_unidade: TWordField;
    qryPreVendas_Brindesquantidade: TFloatField;
    qryPreVendas_Produtos_Saidas: TUniQuery;
    qryPreVendas_Produtos_Saidasid_prevenda: TLargeintField;
    qryPreVendas_Produtos_Saidasitem: TWordField;
    qryPreVendas_Produtos_Saidasid_local: TWordField;
    qryPreVendas_Produtos_Saidasfantasia_local: TStringField;
    qryPreVendas_Produtos_Saidasquantidade: TFloatField;
    ds_PreVendas_Produtos: TDataSource;
    qryTransferencias: TUniQuery;
    qryTransferenciasid_transferencia: TLargeintField;
    qryTransferenciasdata_registro: TDateTimeField;
    qryTransferenciasid_local_saida: TWordField;
    qryTransferenciasdata_movimento: TDateTimeField;
    qryTransferenciasid_local_entrada: TWordField;
    qryTransferenciasdocumento: TLargeintField;
    qryTransferenciasvalor_total: TFloatField;
    qryTransferenciasobservacao: TMemoField;
    qryTransferenciasid_usuario: TLargeintField;
    dsTransferencias: TDataSource;
    qryTransferencias_Produtos: TUniQuery;
    qryTransferencias_Produtosid_transferencia: TLargeintField;
    qryTransferencias_Produtositem: TWordField;
    qryTransferencias_Produtosid_produto: TLargeintField;
    qryTransferencias_Produtosquantidade: TFloatField;
    qryTransferencias_Produtosid_unidade: TWordField;
    qryTransferencias_Produtospeso_bruto: TFloatField;
    qryTransferencias_Produtospreco_unitario: TFloatField;
    qryPreVendas_Recebimentosvalor_troco: TFloatField;
    qryPreVendasvalor_troco: TFloatField;
    qryVendasvalor_bruto: TFloatField;
    qryVendasvalor_acrescimo: TFloatField;
    qryVendasvalor_desconto: TFloatField;
    qryVendasvalor_troca: TFloatField;
    qryVendasvalor_recebido: TFloatField;
    qryVendasvalor_troco: TFloatField;
    qryTerminaisautenticar_documento: TStringField;
    qryTerminaisautenticador: TStringField;
    uspGetSequenciaAutenticacao: TUniStoredProc;
    qryTerminaisimpressora_padrao: TStringField;
    qryRepresentantes_Locate: TUniQuery;
    qryTerminaisidentificar_representante: TStringField;
    qryTerminaisid_estabelecimento: TLargeintField;
    qryVendasid_estabelecimento: TLargeintField;
    qryRepresentantes: TUniQuery;
    qryRepresentantesid_representante: TLargeintField;
    qryRepresentantesnome: TStringField;
    qryDuplicatas_Baixas: TUniQuery;
    usqlAtualizaBaixaDuplicatas: TUniSQL;
    qryTerminaisemissor_cupom_producao: TStringField;
    qryPreVendas_Produtospeso_bruto: TFloatField;
    qryPreVendas_Trocaspeso_bruto: TFloatField;
    qryPreVendas_Produtospreco_custo: TFloatField;
    qryVendas_Produtospreco_custo: TFloatField;
    qryPreVendas_Produtospercentual_acrescimo: TFloatField;
    qryPreVendas_Produtosvalor_acrescimo: TFloatField;
    qryTerminaisversao_qrcode: TStringField;
    qryPreVendas_Produtoscodigo_barras: TStringField;
    qryTransferencias_Produtoscodigo_barras: TStringField;
    qryTransferencias_Produtosdescricao: TMemoField;
    qryVendas_Produtosresumida: TStringField;
    qryTerminaisgerar_senha: TStringField;
    uspGetTerminalSaldoOperador: TUniStoredProc;
    uspPodeAutenticarPreVenda: TUniStoredProc;
    uspBaixaPreVenda: TUniStoredProc;
    qryMesas: TUniQuery;
    qryMesasid_mesa: TLargeintField;
    qryMesasdescricao: TStringField;
    qryMesasnumero: TWordField;
    qryMesasid_status: TWordField;
    qryCategorias: TUniQuery;
    qryCategoriasid_categoria: TWordField;
    qryCategoriasdescricao: TStringField;
    qryCategoriasimagem: TBlobField;
    qrySubCategorias: TUniQuery;
    qrySubCategoriasid_categoria: TWordField;
    qrySubCategoriasid_subcategoria: TWordField;
    qrySubCategoriasdescricao: TStringField;
    qrySubCategoriasimagem: TBlobField;
    qryProdutos: TUniQuery;
    qryProdutosid_produto: TLargeintField;
    qryProdutoscodigo_barras: TStringField;
    qryProdutosdescricao: TStringField;
    qryProdutosdescricao_marca: TStringField;
    qryProdutosreferencia: TStringField;
    qryProdutosapresentacao: TStringField;
    qryProdutosid_unidade: TWordField;
    qryProdutossigla_unidade: TStringField;
    qryProdutospreco_venda: TFloatField;
    qryProdutossaldo_disponivel: TFloatField;
    qryProdutosimagem: TBlobField;
    qryTerminaisautenticador_id_modelo: TWordField;
    qryClientes_LookUp: TUniQuery;
    qryClientes_LookUpid_parceiro: TLargeintField;
    qryClientes_LookUprazao: TStringField;
    qryVendascliente_lookpup: TStringField;
    spGetClientePontuacao: TUniStoredProc;
    spRestagaPontuacaoCliente: TUniStoredProc;
    spGeraPontuacaoVenda: TUniStoredProc;
    qryEstabelecimentosid_estabelecimento: TLargeintField;
    qryEstabelecimentoscnpj: TStringField;
    qryEstabelecimentosinscricao_estadual: TStringField;
    qryEstabelecimentosinscricao_municipal: TStringField;
    qryEstabelecimentosinscricao_suframa: TStringField;
    qryEstabelecimentosrazao_social: TStringField;
    qryEstabelecimentosnome_fantasia: TStringField;
    qryEstabelecimentoslogradouro: TStringField;
    qryEstabelecimentosnumero: TStringField;
    qryEstabelecimentoscomplemento: TStringField;
    qryEstabelecimentosid_pais: TStringField;
    qryEstabelecimentosdescricao_pais: TStringField;
    qryEstabelecimentosid_estado: TStringField;
    qryEstabelecimentossigla_estado: TStringField;
    qryEstabelecimentosid_cidade: TStringField;
    qryEstabelecimentosdescricao_cidade: TStringField;
    qryEstabelecimentosbairro: TStringField;
    qryEstabelecimentoscep: TStringField;
    qryEstabelecimentostelefone: TStringField;
    qryEstabelecimentosfax: TStringField;
    qryEstabelecimentosemail: TStringField;
    qryEstabelecimentoscontato: TStringField;
    qryEstabelecimentoscnae_principal: TStringField;
    qryEstabelecimentosnatureza_juridica: TStringField;
    qryEstabelecimentosregime_tributario: TStringField;
    qryEstabelecimentoslogomarca: TBlobField;
    qryCampanhas: TUniQuery;
    qryCampanhasid_campanha: TLargeintField;
    qryCampanhasnome: TStringField;
    qryCampanhaspercentual_desconto: TFloatField;
    qryCampanhas_Cupons: TUniQuery;
    qryPromotores: TUniQuery;
    qryPessoas: TUniQuery;
    qryPessoasid_pessoa: TLargeintField;
    qryPessoasnome: TStringField;
    qryCampanhas_Cuponsid_campanha: TLargeintField;
    qryCampanhas_Cuponsid_cupom: TWordField;
    qryCampanhas_Cuponscodigo: TStringField;
    qryCampanhas_Cuponsid_promotor: TWordField;
    qryCampanhas_Cuponsid_status: TWordField;
    qryCampanhaspercentual_comissao: TFloatField;
    qryPromotoresid_promotor: TLargeintField;
    qryPromotoresid_pessoa: TLargeintField;
    qryPromotorescomissao: TFloatField;
    qryPromotoresativo: TStringField;
    qryVendasid_campanha: TLargeintField;
    qryVendasid_cupom: TWordField;
    qryPreVendas_Brindescodigo_barras: TStringField;
    qryPreVendas_Brindesdescricao: TMemoField;
    qryPreVendas_Brindespeso_bruto: TFloatField;
    qryPreVendas_Brindespreco_custo: TFloatField;
    qryPreVendas_Produtos_Saidasid_estabelecimento: TLargeintField;
    qryPreVendas_Produtos_Saidaspeso_bruto: TFloatField;
    qryTerminaisdigitos_significativos: TWordField;
    qryTerminaisid_gerenciador_tef: TWordField;
    qryTerminais_Transacoes_TEF: TUniQuery;
    qryFormas_Recebimentosindice_tef: TStringField;
    qryFormas_Recebimentostef: TStringField;
    qryVendas_Recebimentosrede: TStringField;
    qryVendas_Recebimentosnsu: TStringField;
    qryPreVendas_Recebimentosrede: TStringField;
    qryPreVendas_Recebimentosnsu: TStringField;
    qryTerminaisnome_fantasia_estabelecimento: TStringField;
    qryTerminaisdescricao_local: TStringField;
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
    procedure qryEstabelecimentosregime_tributarioGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryEstabelecimentosregime_tributarioSetText(Sender: TField;
      const Text: string);
    procedure qryMovimentosAfterOpen(DataSet: TDataSet);
    procedure qryMovimentosBeforeClose(DataSet: TDataSet);
    procedure qryMovimentos_OperacoesNewRecord(DataSet: TDataSet);
    procedure qryMovimentos_OperacoesBeforePost(DataSet: TDataSet);
    procedure qryTransferenciasNewRecord(DataSet: TDataSet);
    procedure qryTransferencias_ProdutosNewRecord(DataSet: TDataSet);
    procedure qryTransferenciasBeforePost(DataSet: TDataSet);
    procedure qryTransferenciasAfterOpen(DataSet: TDataSet);
    procedure qryTransferenciasBeforeClose(DataSet: TDataSet);
    procedure qryPreVendas_RecebimentosNewRecord(DataSet: TDataSet);
    procedure qryPreVendas_RecebimentosBeforePost(DataSet: TDataSet);
    procedure qryPreVendas_RecebimentosAfterPost(DataSet: TDataSet);
    procedure qryPreVendas_ProdutosAfterOpen(DataSet: TDataSet);
    procedure qryPreVendas_ProdutosBeforeClose(DataSet: TDataSet);
    procedure qryPreVendasCalcFields(DataSet: TDataSet);
    procedure qryPreVendasAfterOpen(DataSet: TDataSet);
    procedure qryPreVendasBeforeClose(DataSet: TDataSet);
    procedure qryDuplicatas_BaixasNewRecord(DataSet: TDataSet);
    procedure qryDuplicatas_BaixasBeforePost(DataSet: TDataSet);
    procedure qryCampanhas_CuponsBeforePost(DataSet: TDataSet);
    procedure qryVendas_TrocasNewRecord(DataSet: TDataSet);
    procedure qryVendas_TrocasBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    fConfiguracao: IModelConfiguracao;
  public
    { Public declarations }
    function IsSupervisor: Boolean;
    function AutenticaSupervisor(AUsuario: String; ASenha: String): Boolean;
    function BuscaUltimoMovimento(AID_Terminal: Integer; AID_Operador: Integer): Boolean;
    function GetProximaSequenciaDocumento(AID_Terminal: Integer): Integer;
    function GetProdutoPorCodigoBarras(const ProdutoCodigo: String;
                                       const EstabelecimentoId: Integer;
                                       const LocalId: Word;
                                       const DataMovimento: TDateTime): Boolean;
    function BuscaMovimento(AID_Terminal: Integer; AID_Operador: Integer; ADataMovimento: TDateTime): Boolean;
    function MovimentoEncerrado(AID_Terminal: Integer; AID_Operador: Integer; ADataMovimento: TDateTime): Boolean;
    function CancelaVenda(AID_Venda: Integer): Boolean;
    function SaldoDisponivelTerminal(const id_terminal: Integer;
                                     const data_movimento: TDateTime;
                                     const id_operador: Integer): Double;
    function CalculaParcelasVenda(AID_Venda: Integer): Boolean;
    function GeraDuplicatasVenda(AID_Venda: Integer): Boolean;
    function BaixaDuplicatasVenda(AID_Venda: Integer): Boolean;
    function IsTerminalFiscal: Boolean;
    function GetOperador(AId_Usuario: Integer): Boolean;
    function GetTerminaisDoOperador(AId_Operador: Integer): Boolean;
    function GetSequenciaAutenticacao(AId_Terminal: Integer): Integer;
    function GetStatusMovimento: String;
    function GetRepresentante(const Value: Integer): Boolean;
    function GetPercentualMaximoCondicao(const Value: Integer): Double;
    function PodeAutenticarPreVenda(const id: Integer): Boolean;
    function BaixaPreVenda(const id: Integer): Integer;
    procedure GeraPontuacaoVenda(const id: Integer);
    function GetClientePontuacao(const id_cliente: Integer): Double;
    function ResgataPontuacao(const id_cliente: Integer): Double;
    function GetCampanhaCupomCodigo(const Value: String): Boolean;
    function GetPromotor(const Value: Integer): Boolean;
    function GetPromotorPessoa(const Value: Integer): Boolean;
    function GetPessoa(const Value: Integer): Boolean;
    function GetPessoaNome(const Value: String): Boolean;
    function GetCampanhaAtiva: Boolean;
    procedure RegistraTrocaProdutos(DataSet: TDataSet);
  end;

var
  dmPDV: TdmPDV;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
   System.IOUtils,
   VCL.Funcoes,
   VCL.Criptografia,
   MasterPDV.Model.Configuracao,
   UDataModuleConexao,
   UDataModuleSessao;

{$R *.dfm}

{ TdmPDV }

function TdmPDV.AutenticaSupervisor(AUsuario, ASenha: String): Boolean;
var
   AConexao: TUniConnection;
begin
   qrySupervisores.Close;
   qrySupervisores.ParamByName('login').Value := AUsuario;
   qrySupervisores.Open;
   Result := Not qrySupervisores.IsEmpty;
   if Result then
      begin
         //Result := Criptografa(AnsiLowerCase(ASenha), GetKeyString(FormatDateTime('ddmmyyyyhhnnss', qrySupervisores.FieldByName('data_cadastro').AsDateTime))) = qrySupervisores.FieldByName('senha').AsString;
         AConexao := TUniConnection.Create(Nil);
         Try
            Try
               AConexao.Disconnect;
               AConexao.ProviderName := dmConexao.conConexao.ProviderName;
               AConexao.Server := dmConexao.conConexao.Server;
               AConexao.Port := dmConexao.conConexao.Port;
               AConexao.DataBase := dmConexao.conConexao.DataBase;
               AConexao.LoginPrompt := False;
               AConexao.UserName := AnsiLowerCase(AUsuario);
               AConexao.Password := Criptografa(AnsiLowerCase(ASenha), GetKeyString(AnsiLowerCase(AUsuario)));
               AConexao.Connect;
               Result := AConexao.Connected;
               AConexao.Disconnect;
            Except
               On E: EDAError Do
                  begin
                     Result := False;
                     Erro('Erro na autenticação:'#13 + E.Message);
                  end;
            End;
         Finally
            AConexao.Free;
         End;
      end;
   qrySupervisores.Close;
end;

function TdmPDV.BaixaDuplicatasVenda(AID_Venda: Integer): Boolean;
begin
   uspBaixaDuplicataVendaRecebimento.PrepareSQL();
   Try
      uspBaixaDuplicataVendaRecebimento.ParamByName('p_id_venda').Value := AID_Venda;
      uspBaixaDuplicataVendaRecebimento.ExecProc;
      Result := True;
   Except
      On E: EDAError Do
         begin
            Result := False;
            Erro('Erro ao baixar duplicatas:'#13 + E.Message);
         end;
   End;
end;

function TdmPDV.BaixaPreVenda(const id: Integer): Integer;
begin
   uspBaixaPreVenda.PrepareSQL();
   Try
      uspBaixaPreVenda.ParamByName('p_id_prevenda').Value := id;
      uspBaixaPreVenda.Execute;
      Result := uspBaixaPreVenda.ParamByName('result').AsInteger;
   Except
      On E: EDAError Do
         begin
            Result := -1;
            raise Exception.Create('Erro ao baixar pré-venda:'#13 + E.Message);
         end;
   End;
end;

function TdmPDV.BuscaMovimento(AID_Terminal: Integer; AID_Operador: Integer;
  ADataMovimento: TDateTime): Boolean;
begin
   qryMovimentos_Locate.Close;
   qryMovimentos_Locate.ParamByName('id_terminal').Value := AID_Terminal;
   qryMovimentos_Locate.ParamByName('id_operador').Value := AID_Operador;
   qryMovimentos_Locate.ParamByName('data_movimento').Value := ADataMovimento;
   qryMovimentos_Locate.Open;
   Result := Not qryMovimentos_Locate.IsEmpty;
   qryMovimentos_Locate.Close;
end;

function TdmPDV.BuscaUltimoMovimento(AID_Terminal: Integer;
   AID_Operador: Integer): Boolean;
begin
   qryUltimoMovimento.Close;
   qryUltimoMovimento.ParamByName('id_terminal').Value := AID_Terminal;
   qryUltimoMovimento.ParamByName('id_operador').Value := AID_Operador;
   qryUltimoMovimento.MacroByName('condicao').Value := ' AND EXISTS(SELECT 1 ' +
                                                       '            FROM terminais_movimentos x ' +
                                                       '            WHERE x.id_terminal = tm.id_terminal ' +
                                                       '             AND x.id_operador = tm.id_operador ' +
                                                       '             AND x.data_encerramento IS NULL ' +
                                                       '            HAVING MAX(x.data_movimento) = tm.data_movimento)';
   qryUltimoMovimento.Open;
   Result := Not qryUltimoMovimento.IsEmpty;
   if not Result then
      begin
         qryUltimoMovimento.Close;
         qryUltimoMovimento.MacroByName('condicao').Value := ' AND EXISTS(SELECT 1 ' +
                                                             '            FROM terminais_movimentos x ' +
                                                             '            WHERE x.id_terminal = tm.id_terminal ' +
                                                             '             AND x.id_operador = tm.id_operador ' +
                                                             '            HAVING MAX(x.data_movimento) = tm.data_movimento)';
         qryUltimoMovimento.Open;
         Result := Not qryUltimoMovimento.IsEmpty;
         if not Result then
            qryUltimoMovimento.Close;
      end;
end;

function TdmPDV.CalculaParcelasVenda(AID_Venda: Integer): Boolean;
begin
   uspCalculaParcelasVenda.PrepareSQL();
   Try
      uspCalculaParcelasVenda.ParamByName('pID_Venda').Value := AID_Venda;
      uspCalculaParcelasVenda.Execute;
      Result := True;
   Except
      On E: EDAError Do
         begin
            Informacao('Erro ao gerar parcelas da venda: '#13 + E.Message);
            Result := False;
         end;
   End;
end;

function TdmPDV.CancelaVenda(AID_Venda: Integer): Boolean;
begin
   uspCancelaVenda.PrepareSQL();
   Try
      uspCancelaVenda.ParamByName('pID_Venda').Value := AID_Venda;
      uspCancelaVenda.Execute;
      Result := True;
   Except
      On E: EDAError Do
         begin
            Informacao('Erro ao cancelar venda: '#13 + E.Message);
            Result := False;
         end;
   End;
end;

procedure TdmPDV.DataModuleCreate(Sender: TObject);
var
   AConfigFileName: TFileName;
begin
   AConfigFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'data'), ChangeFileExt(ExtractFileName(ParamStr(0)), '.s3db'));
   fConfiguracao := TModelConfiguracao.New(AConfigFileName);
end;

function TdmPDV.GeraDuplicatasVenda(AID_Venda: Integer): Boolean;
begin
   uspGeraDuplicatas_Venda.PrepareSQL();
   Try
      uspGeraDuplicatas_Venda.ParamByName('p_id_venda').Value := AID_Venda;
      uspGeraDuplicatas_Venda.Execute;
      Result := True;
   Except
      On E: EDAError Do
         begin
            Result := False;
            Erro('Erro ao gerar duplicatas:'#13 + E.Message);
         end;
   End;
end;

procedure TdmPDV.GeraPontuacaoVenda(const id: Integer);
begin
   spGeraPontuacaoVenda.PrepareSQL();
   try
      spGeraPontuacaoVenda.ParamByName('p_id_venda').Value := id;
      spGeraPontuacaoVenda.Execute;
   except
       on E: EDAError do
          Erro('Erro ao geraar pontuação da venda:'#13 + E.Message);
   end;
end;

function TdmPDV.GetCampanhaCupomCodigo(const Value: String): Boolean;
begin
   if qryCampanhas_Cupons.Active then
      qryCampanhas_Cupons.Close;
   qryCampanhas_Cupons.ParamByName('id_campanha').Value := qryCampanhas.FieldByName('id_campanha').AsInteger;
   qryCampanhas_Cupons.MacroByName('condicao').Value := Format(' AND codigo = %s', [QuotedStr(Value)]);
   qryCampanhas_Cupons.Open;
   Result := not qryCampanhas_Cupons.IsEmpty;
end;

function TdmPDV.GetCampanhaAtiva: Boolean;
begin
   if qryCampanhas.Active then
      qryCampanhas.Close;
   qryCampanhas.Open;
   Result := not qryCampanhas.IsEmpty;
end;

function TdmPDV.GetClientePontuacao(const id_cliente: Integer): Double;
begin
   spGetClientePontuacao.PrepareSQL(True);
   try
      spGetClientePontuacao.ParamByName('p_id_cliente').Value := id_cliente;
      spGetClientePontuacao.Execute;
      Result := spGetClientePontuacao.ParamByName('Result').AsFloat;
   except
       on E: EDAError do
          Erro('Erro ao calcular pontuação do cliente:'#13 + E.Message);
   end;
end;

function TdmPDV.GetOperador(AId_Usuario: Integer): Boolean;
begin
   qryOperadores.Close;
   qryOperadores.ParamByName('id_usuario').Value := AId_Usuario; //dmSessao.qryUsuarios.FieldByName('id_usuario').AsInteger;
   qryOperadores.Open;
   Result := Not qryOperadores.IsEmpty;
   if Not Result then
      qryOperadores.Close;
end;

function TdmPDV.GetPercentualMaximoCondicao(const Value: Integer): Double;
var
   AQuery: TUniQuery;
begin
   AQuery := TUniQuery.Create(Nil);
   Try
      AQuery.Connection := dmConexao.conConexao;
      With AQuery.SQL Do
         begin
            Clear;
            Add('SELECT desc_maximo');
            Add('FROM condicoes');
            Add('WHERE id_condicao = :id_condicao');
         end;
      AQuery.ParamByName('id_condicao').DataType := ftWord;
      AQuery.ParamByName('id_condicao').ParamType := ptInput;
      AQuery.ParamByName('id_condicao').Value := Value;
      AQuery.Open;
      Result := AQuery.FieldByName('desc_maximo').AsFloat;
      AQuery.Close;
   Finally
      AQuery.Free;
   End;
end;

function TdmPDV.GetPessoa(const Value: Integer): Boolean;
begin
   if qryPessoas.Active then
      qryPessoas.Close;
   qryPessoas.MacroByName('condicao').Value := Format('WHERE id_pessoa = %d', [Value]);
   qryPessoas.Open;
   Result := not qryPessoas.IsEmpty;
end;

function TdmPDV.GetPessoaNome(const Value: String): Boolean;
begin
   if qryPessoas.Active then
      qryPessoas.Close;
   qryPessoas.MacroByName('condicao').Value := Format('WHERE nome = %s', [QuotedStr(Value)]);
   qryPessoas.Open;
   Result := not qryPessoas.IsEmpty;
end;

function TdmPDV.GetProdutoPorCodigoBarras(const ProdutoCodigo: String;
   const EstabelecimentoId: Integer; const LocalId: Word;
   const DataMovimento: TDateTime): Boolean;
begin
   if qryProdutos_Locate.Active then
      qryProdutos_Locate.Close;
   qryProdutos_Locate.ParamByName('id_estabelecimento').Value := EstabelecimentoId;
   qryProdutos_Locate.ParamByName('id_local').Value := LocalId;
   qryProdutos_Locate.ParamByName('data_referencia').Value := DataMovimento;
   qryProdutos_Locate.ParamByName('codigo_barras').Value := ProdutoCodigo;
   qryProdutos_Locate.Open;
   Result := not qryProdutos_Locate.IsEmpty;
   if not Result then
      qryProdutos_Locate.Close;
end;

function TdmPDV.GetPromotor(const Value: Integer): Boolean;
begin
   if qryPromotores.Active then
      qryPromotores.Close;
   qryPromotores.MacroByName('condicao').Value := Format('WHERE id_promotor = %d', [Value]);
   qryPromotores.Open;
   Result := not qryPromotores.IsEmpty;
end;

function TdmPDV.GetPromotorPessoa(const Value: Integer): Boolean;
begin
   if qryPromotores.Active then
      qryPromotores.Close;
   qryPromotores.MacroByName('condicao').Value := Format('WHERE id_pessoa = %d', [Value]);
   qryPromotores.Open;
end;

function TdmPDV.GetProximaSequenciaDocumento(AID_Terminal: Integer): Integer;
begin
//   qrySequenciaDocumento.Close;
//   qrySequenciaDocumento.ParamByName('id_terminal').Value := ID_Terminal;
//   qrySequenciaDocumento.Open;
//   Result := qrySequenciaDocumento.FieldByName('sequencia_documento').AsInteger;
//   qrySequenciaDocumento.Close;
   uspSequenciaNumeroDocumentoVenda.PrepareSQL(True);
   uspSequenciaNumeroDocumentoVenda.ParamByName('p_id_terminal').Value := AID_Terminal;
   uspSequenciaNumeroDocumentoVenda.Execute;
   Result := uspSequenciaNumeroDocumentoVenda.ParamByName('result').Value;
end;

function TdmPDV.GetRepresentante(const Value: Integer): Boolean;
begin
   if qryRepresentantes_Locate.Active then
      qryRepresentantes_Locate.Close;
   qryRepresentantes_Locate.MacroByName('condicao').Value := Format('WHERE id_representante = %d', [Value]);
   qryRepresentantes_Locate.Open;
   Result := Not qryRepresentantes_Locate.IsEmpty;
   if Not Result then
      qryRepresentantes_Locate.Close;
end;

function TdmPDV.GetSequenciaAutenticacao(AId_Terminal: Integer): Integer;
begin
   uspGetSequenciaAutenticacao.PrepareSQL(True);
   Try
      uspGetSequenciaAutenticacao.ParamByName('p_id_terminal').Value := AId_Terminal;
      uspGetSequenciaAutenticacao.Execute;
      Result := uspGetSequenciaAutenticacao.ParamByName('Result').AsInteger;
   Except
       On E: EDAError Do
          begin
             Result := -1;
             Erro('Erro ao gerar sequência da autenticação:'#13 + E.Message);
          end;
   End;
end;

function TdmPDV.GetStatusMovimento: String;
begin
   // 0-Indeterminado / 1-Aberto / 8-Fechado / 9-Encerrado
   if qryMovimentos.Active And Not qryMovimentos.IsEmpty then
      begin
         If qryMovimentos.FieldByName('data_encerramento').IsNull Then
            Result := '9'
         Else If qryMovimentos.FieldByName('data_fechamento').IsNull Then
                 Result := '8'
         Else
            Result := '1';
      end
   Else
      Result := '0';
end;

function TdmPDV.GetTerminaisDoOperador(AId_Operador: Integer): Boolean;
var
   ACondicao: String;
begin
   if TModelConfiguracao(fConfiguracao).GetRegistrarTerminal = 'S' then
      ACondicao := Format('WHERE a.id_operador = %d AND t.endereco_fisico = %s',
                          [AId_Operador, QuotedStr(GetMacAddress)])
   else
      ACondicao := Format('WHERE a.id_operador = %d',
                          [AId_Operador]);
   qryTerminais.Close;
   qryTerminais.MacroByName('condicao').Value := ACondicao;
   qryTerminais.Open;
   Result := Not qryTerminais.IsEmpty;
   if Not Result then
      begin
         qryTerminais.Close;
         if TModelConfiguracao(fConfiguracao).GetRegistrarTerminal = 'S' then
            ACondicao := Format('WHERE a.id_operador = %d AND t.endereco_fisico IS NULL',
                                [AId_Operador])
         else
            ACondicao := Format('WHERE a.id_operador = %d', [AId_Operador]);
         qryTerminais.MacroByName('condicao').Value := ACondicao;
         qryTerminais.Open;
         Result := Not qryTerminais.IsEmpty;
         if Not Result then
            qryTerminais.Close;
      end;
end;

function TdmPDV.IsSupervisor: Boolean;
begin
   Result := qryOperadores.FieldByName('tipo').AsString = 'S';
end;

function TdmPDV.IsTerminalFiscal: Boolean;
begin
   Result := qryTerminais.FieldByName('fiscal').AsString = 'S';
end;

function TdmPDV.MovimentoEncerrado(AID_Terminal: Integer; AID_Operador: Integer;
  ADataMovimento: TDateTime): Boolean;
begin
   qryMovimentos_Locate.Close;
   qryMovimentos_Locate.ParamByName('id_terminal').Value := AID_Terminal;
   qryMovimentos_Locate.ParamByName('id_operador').Value := AID_Operador;
   qryMovimentos_Locate.ParamByName('data_movimento').Value := ADataMovimento;
   qryMovimentos_Locate.Open;
   Result := Not qryMovimentos_Locate.IsEmpty And
             Not qryMovimentos_Locate.FieldByName('data_encerramento').IsNull;
   qryMovimentos_Locate.Close;
end;

function TdmPDV.PodeAutenticarPreVenda(const id: Integer): Boolean;
begin
   uspPodeAutenticarPreVenda.PrepareSQL();
   Try
      uspPodeAutenticarPreVenda.ParamByName('p_id_prevenda').Value := id;
      uspPodeAutenticarPreVenda.Execute;
      Result := uspPodeAutenticarPreVenda.ParamByName('result').AsString = 'S';
   Except
      On E: EDAError Do
         begin
            Result := False;
            raise Exception.Create('Erro ao validar pré-venda para autenticar:'#13 + E.Message);
         end;
   End;
end;

procedure TdmPDV.qryCampanhas_CuponsBeforePost(DataSet: TDataSet);
   function GetSeqNextValue(const id_campanha: Integer): SmallInt;
   var
      AQuery: TUniQuery;
   begin
      AQuery := TUniQuery.Create(nil);
      try
         AQuery.Connection := TUniQuery(DataSet).Connection;
         with AQuery.SQL do
            begin
               Clear;
               Add('SELECT COALESCE(max(id_cupom), 0) + 1 AS seq_next_value');
               Add('FROM campanhas_cupons');
               Add('WHERE id_campanha = :id_campanha');
            end;
         // Definição dos parâmetros
         AQuery.ParamByName('id_campanha').DataType := ftInteger;
         AQuery.ParamByName('id_campanha').ParamType := ptInput;
         AQuery.ParamByName('id_campanha').Value := id_campanha;
         AQuery.Open;
         Result := AQuery.FieldByName('seq_next_value').AsInteger;
         AQuery.Close;
      finally
         FreeAndNil(AQuery);
      end;
   end;
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('id_cupom').AsInteger := GetSeqNextValue(DataSet.FieldByName('id_campanha').AsInteger);
end;

procedure TdmPDV.qryDuplicatas_BaixasBeforePost(DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('parcela').AsInteger := dmConexao.Sequencia('duplicatas_baixas', 'parcela', Format('WHERE id_duplicata = %d', [DataSet.FieldByName('id_duplicata').AsInteger]));
end;

procedure TdmPDV.qryDuplicatas_BaixasNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_duplicata').AsInteger := TUniQuery(DataSet).ParamByName('id_duplicata').AsInteger;
   DataSet.FieldByName('valor').AsFloat := 0;
end;

procedure TdmPDV.qryEstabelecimentosregime_tributarioGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Sender.AsString = '0' then
      Text := '3 - Regime Normal'
   Else if Sender.AsString = '1' then
           Text := '1 - Simples Nacional'
   Else if Sender.AsString = '2' then
           Text := '2 - Simples Nacional - excesso de sublimite da receita bruta';
   DisplayText := Text <> '';
end;

procedure TdmPDV.qryEstabelecimentosregime_tributarioSetText(Sender: TField;
  const Text: string);
begin
   If Text = '3 - Regime Normal' Then
      Sender.AsString := '0'
   Else If Text = '1 - Simples Nacional' Then
           Sender.AsString := '1'
   Else If Text = '2 - Simples Nacional - excesso de sublimite da receita bruta' Then
           Sender.AsString := '2';
end;

procedure TdmPDV.qryMovimentosAfterOpen(DataSet: TDataSet);
begin
   qryMovimentos_Operacoes.Open;
end;

procedure TdmPDV.qryMovimentosBeforeClose(DataSet: TDataSet);
begin
   qryMovimentos_Operacoes.Close;
end;

procedure TdmPDV.qryMovimentos_OperacoesBeforePost(DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('sequencia').AsInteger := dmConexao.Sequencia('terminais_movimentos_operacoes',
                                                                        'sequencia',
                                                                        Format('WHERE id_terminal = %d AND data_movimento = %s AND id_operador = %d', [DataSet.FieldByName('id_terminal').AsInteger,
                                                                                                                                                       QuotedStr(FormatDateTime('yyyy-mm-dd', DataSet.FieldByName('data_movimento').AsDateTime)),
                                                                                                                                                       DataSet.FieldByName('id_operador').AsInteger]));
end;

procedure TdmPDV.qryMovimentos_OperacoesNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_terminal').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_terminal').AsInteger;
   DataSet.FieldByName('data_movimento').AsDateTime := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('data_movimento').AsDateTime;
   DataSet.FieldByName('id_operador').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_operador').AsInteger;
   // E-Entrada / S-Saída
   DataSet.FieldByName('natureza').AsString := 'E';
   DataSet.FieldByName('valor').AsFloat := 0;
end;

procedure TdmPDV.qryPreVendasAfterOpen(DataSet: TDataSet);
begin
   qryPreVendas_Produtos.Open;
   qryPreVendas_Parcelas.Open;
   qryPreVendas_Trocas.Open;
   qryPreVendas_Brindes.Open;
   qryPreVendas_Recebimentos.Open;
end;

procedure TdmPDV.qryPreVendasBeforeClose(DataSet: TDataSet);
begin
   qryPreVendas_Produtos.Close;
   qryPreVendas_Parcelas.Close;
   qryPreVendas_Trocas.Close;
   qryPreVendas_Brindes.Close;
   qryPreVendas_Recebimentos.Close;
end;

procedure TdmPDV.qryPreVendasCalcFields(DataSet: TDataSet);
begin
   DataSet.FieldByName('valor_receber').AsFloat := 0;
   DataSet.FieldByName('troco').AsFloat := 0;
   If DataSet.FieldByName('valor_recebido').AsFloat <= DataSet.FieldByName('valor_liquido').AsFloat Then
      DataSet.FieldByName('valor_receber').AsFloat := DataSet.FieldByName('valor_liquido').AsFloat - DataSet.FieldByName('valor_recebido').AsFloat
   Else
      DataSet.FieldByName('troco').AsFloat := DataSet.FieldByName('valor_recebido').AsFloat - DataSet.FieldByName('valor_liquido').AsFloat;
end;

procedure TdmPDV.qryPreVendas_ProdutosAfterOpen(DataSet: TDataSet);
begin
   qryPreVendas_Produtos_Saidas.Open;
end;

procedure TdmPDV.qryPreVendas_ProdutosBeforeClose(DataSet: TDataSet);
begin
   qryPreVendas_Produtos_Saidas.Close;
end;

procedure TdmPDV.qryPreVendas_RecebimentosAfterPost(DataSet: TDataSet);
begin
   TUniQuery(DataSet).MasterSource.DataSet.DisableControls;
   TUniQuery(DataSet).MasterSource.DataSet.Close;
   TUniQuery(DataSet).MasterSource.DataSet.Open;
   TUniQuery(DataSet).MasterSource.DataSet.EnableControls;
end;

procedure TdmPDV.qryPreVendas_RecebimentosBeforePost(DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('item').AsInteger := dmConexao.Sequencia('prevendas_recebimentos', 'item', Format('WHERE id_prevenda = %d', [DataSet.FieldByName('id_prevenda').AsInteger]));
end;

procedure TdmPDV.qryPreVendas_RecebimentosNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_prevenda').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_prevenda').AsInteger;
   DataSet.FieldByName('valor_recebido').AsFloat := 0;
   DataSet.FieldByName('valor_troco').AsFloat := 0;
end;

procedure TdmPDV.qryTerminaisAfterOpen(DataSet: TDataSet);
begin
   qryEstabelecimentos.Open;
end;

procedure TdmPDV.qryTerminaisBeforeClose(DataSet: TDataSet);
begin
   qryEstabelecimentos.Close;
end;

procedure TdmPDV.qryTransferenciasAfterOpen(DataSet: TDataSet);
begin
   qryTransferencias_Produtos.Open;
end;

procedure TdmPDV.qryTransferenciasBeforeClose(DataSet: TDataSet);
begin
   qryTransferencias_Produtos.Close;
end;

procedure TdmPDV.qryTransferenciasBeforePost(DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('data_registro').AsDateTime := dmConexao.GetCurrentDateTime();
end;

procedure TdmPDV.qryTransferenciasNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_estabelecimento_saida').AsInteger := TUniQuery(DataSet).ParamByName('id_estabelecimento_saida').AsInteger;
   DataSet.FieldByName('id_local_saida').AsInteger := TUniQuery(DataSet).ParamByName('id_local_saida').AsInteger;
   DataSet.FieldByName('data_movimento').AsDateTime := TUniQuery(DataSet).ParamByName('data_movimento').AsDateTime;
   DataSet.FieldByName('id_estabelecimento_entrada').AsInteger := TUniQuery(DataSet).ParamByName('id_estabelecimento_entrada').AsInteger;
   DataSet.FieldByName('id_local_entrada').AsInteger := TUniQuery(DataSet).ParamByName('id_local_entrada').AsInteger;
   DataSet.FieldByName('documento').AsInteger := TUniQuery(DataSet).ParamByName('documento').AsInteger;
   DataSet.FieldByName('valor_total').AsInteger := 0;
end;

procedure TdmPDV.qryTransferencias_ProdutosNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_transferencia').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_transferencia').AsInteger;
   DataSet.FieldByName('quantidade').AsFloat := 0;
   DataSet.FieldByName('preco_unitario').AsFloat := 0;
end;

procedure TdmPDV.qryVendasAfterOpen(DataSet: TDataSet);
begin
   qryVendas_Totais.Open;
   qryVendas_Produtos.Open;
   qryVendas_Trocas.Open;
   qryVendas_Brindes.Open;
   qryVendas_Parcelas.Open;
   qryVendas_Recebimentos.Open;
end;

procedure TdmPDV.qryVendasBeforeClose(DataSet: TDataSet);
begin
   qryVendas_Recebimentos.Close;
   qryVendas_Parcelas.Close;
   qryVendas_Brindes.Close;
   qryVendas_Trocas.Close;
   qryVendas_Produtos.Close;
   qryVendas_Totais.Close;
end;

procedure TdmPDV.qryVendasBeforePost(DataSet: TDataSet);
begin
   if DataSet.State = dsInsert then
      begin
         DataSet.FieldByName('data_registro').AsDateTime := dmConexao.GetCurrentDateTime;
         DataSet.FieldByName('id_usuario').AsInteger := GetCurrentUserId;
         if DataSet.FieldByName('data_entrega').IsNull then
            DataSet.FieldByName('data_entrega').AsDateTime := DataSet.FieldByName('data_movimento').AsDateTime;
      end;
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
      DataSet.FieldByName('item').AsInteger := dmConexao.Sequencia('vendas_recebimentos', 'item', Format('WHERE id_venda = %d', [DataSet.FieldByName('id_venda').AsInteger]));
end;

procedure TdmPDV.qryVendas_RecebimentosNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_venda').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_venda').AsInteger;
   DataSet.FieldByName('valor_recebido').AsFloat := 0;
end;

procedure TdmPDV.qryVendas_TrocasBeforePost(DataSet: TDataSet);
   function GetVendaTrocaSeqNextVal(const Value: Integer): SmallInt;
   var
      AQuery: TUniQuery;
   begin
      AQuery := TUniQuery.Create(Nil);
      try
         AQuery.Connection := dmConexao.conConexao;
         with AQuery.SQL do
            begin
               Clear;
               Add('SELECT COALESCE(MAX(item), 0) + 1 AS seq_next_val');
               Add('FROM vendas_trocas');
               Add('WHERE id_venda = :id_venda');
            end;
         // Definição dos Parâmetros
         AQuery.ParamByName('id_venda').DataType := ftInteger;
         AQuery.ParamByName('id_venda').ParamType := ptInput;
         AQuery.ParamByName('id_venda').Value := Value;
         AQuery.Open;
         Result := AQuery.FieldByName('seq_next_val').AsInteger;
         AQuery.Close;
      finally
         FreeAndNil(AQuery);
      end;
   end;
begin
   if DataSet.State = dsInsert then
      DataSet.FieldByName('item').AsInteger := GetVendaTrocaSeqNextVal(DataSet.FieldByName('id_venda').AsInteger);
end;

procedure TdmPDV.qryVendas_TrocasNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_venda').AsInteger := TUniQuery(DataSet).MasterSource.DataSet.FieldByName('id_venda').AsInteger;
   DataSet.FieldByName('quantidade').AsFloat := 0;
   DataSet.FieldByName('peso_bruto').AsFloat := 0;
   DataSet.FieldByName('preco_unitario').AsFloat := 0;
   DataSet.FieldByName('valor_desconto').AsFloat := 0;
end;

procedure TdmPDV.RegistraTrocaProdutos(DataSet: TDataSet);
var
   ABookMark: TBookMark;
begin
   ABookMark := DataSet.GetBookmark;
   DataSet.DisableControls;
   DataSet.First;
   while not DataSet.Eof do
      begin
         if DataSet.FieldByName('selecionado').AsString = 'S' then
            begin
               qryVendas_Trocas.Append;
               qryVendas_Trocas.FieldByName('id_produto').AsInteger := DataSet.FieldByName('id_produto').AsInteger;
               qryVendas_Trocas.FieldByName('codigo_barras').AsString := DataSet.FieldByName('codigo_barras').AsString;
               TMemoField(qryVendas_Trocas.FieldByName('descricao')).Assign(DataSet.FieldByName('descricao'));
               qryVendas_Trocas.FieldByName('id_unidade').AsInteger := DataSet.FieldByName('id_unidade').AsInteger;
               qryVendas_Trocas.FieldByName('quantidade').AsFloat := DataSet.FieldByName('quantidade_devolvida').AsFloat;
               qryVendas_Trocas.FieldByName('preco_unitario').AsFloat := DataSet.FieldByName('preco_unitario').AsFloat;
               qryVendas_Trocas.FieldByName('valor_desconto').AsFloat := DataSet.FieldByName('valor_desconto').AsFloat;
               qryVendas_Trocas.Post;
            end;
         DataSet.Next;
      end;
   DataSet.GotoBookmark(ABookMark);
   DataSet.FreeBookmark(ABookMark);
   DataSet.EnableControls;
end;

function TdmPDV.ResgataPontuacao(const id_cliente: Integer): Double;
begin
   spRestagaPontuacaoCliente.PrepareSQL(True);
   try
      spRestagaPontuacaoCliente.ParamByName('p_id_cliente').Value := id_cliente;
      spRestagaPontuacaoCliente.Execute;
      Result := spRestagaPontuacaoCliente.ParamByName('Result').AsFloat;
   except
       on E: EDAError do
          Erro('Erro ao resgatar pontuação do cliente:'#13 + E.Message);
   end;
end;

function TdmPDV.SaldoDisponivelTerminal(const id_terminal: Integer;
   const data_movimento: TDateTime; const id_operador: Integer): Double;
begin
   uspGetTerminalSaldoOperador.PrepareSQL();
   Try
      uspGetTerminalSaldoOperador.ParamByName('p_id_terminal').Value := id_terminal;
      uspGetTerminalSaldoOperador.ParamByName('p_data_movimento').Value := data_movimento;
      uspGetTerminalSaldoOperador.ParamByName('p_id_operador').Value := id_operador;
      uspGetTerminalSaldoOperador.Execute;
      Result := uspGetTerminalSaldoOperador.ParamByName('result').AsFloat;
   Except
      On E: EDAError Do
         begin
            Informacao('Erro ao obter o saldo dispnível: '#13 + E.Message);
            Result := 0;
         end;
   End;
end;

end.
