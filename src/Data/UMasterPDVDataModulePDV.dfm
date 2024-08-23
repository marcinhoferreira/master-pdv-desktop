object dmPDV: TdmPDV
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 369
  Width = 774
  object qryOperadores: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_operador, id_usuario, nome, login, senha, tipo, id_sta' +
        'tus'
      'FROM cadastro.vw_operadores'
      'WHERE id_usuario = :id_usuario'
      'ORDER BY id_operador')
    AfterOpen = qryOperadoresAfterOpen
    BeforeClose = qryOperadoresBeforeClose
    Left = 56
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_usuario'
        ParamType = ptInput
        Value = nil
      end>
    object qryOperadoresid_operador: TIntegerField
      FieldName = 'id_operador'
    end
    object qryOperadoresid_usuario: TIntegerField
      FieldName = 'id_usuario'
    end
    object qryOperadoreslogin: TStringField
      FieldName = 'login'
      Size = 128
    end
    object qryOperadoresnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object qryOperadorestipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryOperadoresid_status: TSmallintField
      FieldName = 'id_status'
    end
  end
  object qryTerminais: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT a.id_terminal, t.id_estabelecimento, t.descricao, t.numer' +
        'o, t.fiscal, '
      
        't.etiqueta_prefixo, t.etiqueta_codigo_inicio, t.etiqueta_codigo_' +
        'tamanho,'
      
        't.id_balanca_acoplada, b.descricao AS descricao_balanca_acoplada' +
        ','
      'b.modelo AS descricao_modelo_balanca_acoplada,'
      
        't.balanca_acoplada_porta_serial AS porta_serial_balanca_acoplada' +
        ','
      'b.velocidade AS velocidade_balanca_acoplada, '
      'b.taxa_transmissao AS taxa_transmissao_balanca_acoplada,'
      'b.id_paridade AS id_paridade_balanca_acoplada,'
      'b.id_bit_parada AS id_bit_parada_balanca_acoplada,'
      'b.handshake AS handshake_balanca_acoplada,'
      
        't.balanca_acoplada_tempo_limite AS tempo_limite_balanca_acoplada' +
        ','
      'o.csc_id AS token_csc_id, o.csc_numero AS token_csc_numero'
      'FROM pdv.terminais_operadores a'
      '   INNER JOIN (pdv.terminais t'
      '                  LEFT OUTER JOIN cadastro.dispositivos b'
      '                     ON t.id_balanca_acoplada = b.id_dispositivo'
      '                  LEFT OUTER JOIN fiscal.tokens o'
      '                     ON t.id_token = o.id_token)'
      '      ON a.id_terminal = t.id_terminal'
      'WHERE a.id_operador = :id_operador'
      'ORDER BY t.numero')
    MasterSource = dsOperadores
    AfterOpen = qryTerminaisAfterOpen
    BeforeClose = qryTerminaisBeforeClose
    Left = 216
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_operador'
        ParamType = ptInput
        Value = nil
      end>
    object qryTerminaisid_terminal: TIntegerField
      FieldName = 'id_terminal'
      Required = True
    end
    object qryTerminaisid_estabelecimento: TIntegerField
      FieldName = 'id_estabelecimento'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisdescricao: TStringField
      FieldName = 'descricao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryTerminaisnumero: TSmallintField
      FieldName = 'numero'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisfiscal: TStringField
      FieldName = 'fiscal'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisetiqueta_prefixo: TStringField
      FieldName = 'etiqueta_prefixo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryTerminaisetiqueta_codigo_inicio: TSmallintField
      FieldName = 'etiqueta_codigo_inicio'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisetiqueta_codigo_tamanho: TSmallintField
      FieldName = 'etiqueta_codigo_tamanho'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisid_balanca_acoplada: TIntegerField
      FieldName = 'id_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaisdescricao_balanca_acoplada: TStringField
      FieldName = 'descricao_balanca_acoplada'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryTerminaisdescricao_modelo_balanca_acoplada: TStringField
      FieldName = 'descricao_modelo_balanca_acoplada'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryTerminaisporta_serial_balanca_acoplada: TStringField
      FieldName = 'porta_serial_balanca_acoplada'
      ReadOnly = True
      Size = 6
    end
    object qryTerminaisvelocidade_balanca_acoplada: TIntegerField
      FieldName = 'velocidade_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaistaxa_transmissao_balanca_acoplada: TSmallintField
      FieldName = 'taxa_transmissao_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaisid_paridade_balanca_acoplada: TSmallintField
      FieldName = 'id_paridade_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaisid_bit_parada_balanca_acoplada: TSmallintField
      FieldName = 'id_bit_parada_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaishandshake_balanca_acoplada: TSmallintField
      FieldName = 'handshake_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaistempo_limite_balanca_acoplada: TIntegerField
      FieldName = 'tempo_limite_balanca_acoplada'
      ReadOnly = True
      Required = True
    end
    object qryTerminaistoken_csc_id: TIntegerField
      FieldName = 'token_csc_id'
      ReadOnly = True
      Required = True
    end
    object qryTerminaistoken_csc_numero: TStringField
      FieldName = 'token_csc_numero'
      ReadOnly = True
      Size = 255
    end
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = qryOperadores
    Left = 56
    Top = 52
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = qryTerminais
    Left = 216
    Top = 52
  end
  object qryEstabelecimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_estabelecimento, cnpj, inscricao_estadual, inscricao_m' +
        'unicipal,'
      
        'inscricao_suframa, razao_social, nome_fantasia, endereco_logrado' +
        'uro,'
      
        'endereco_numero, endereco_complemento, endereco_id_pais, enderec' +
        'o_nome_pais,'
      'endereco_id_estado, endereco_sigla_estado, endereco_nome_estado,'
      'endereco_id_cidade, endereco_nome_cidade, endereco_id_bairro,'
      
        'endereco_nome_bairro, endereco_cep, telefone, fax, email, logoma' +
        'rca'
      'FROM cadastro.vw_estabelecimentos'
      'WHERE id_estabelecimento = :id_estabelecimento'
      'ORDER BY id_estabelecimento')
    MasterSource = dsTerminais
    Left = 324
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryEstabelecimentosid_estabelecimento: TIntegerField
      FieldName = 'id_estabelecimento'
    end
    object qryEstabelecimentoscnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object qryEstabelecimentosinscricao_estadual: TStringField
      FieldName = 'inscricao_estadual'
    end
    object qryEstabelecimentosinscricao_municipal: TStringField
      FieldName = 'inscricao_municipal'
    end
    object qryEstabelecimentosinscricao_suframa: TStringField
      FieldName = 'inscricao_suframa'
    end
    object qryEstabelecimentosrazao_social: TStringField
      FieldName = 'razao_social'
      Size = 60
    end
    object qryEstabelecimentosnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 60
    end
    object qryEstabelecimentosendereco_logradouro: TStringField
      FieldName = 'endereco_logradouro'
      Size = 60
    end
    object qryEstabelecimentosendereco_numero: TStringField
      FieldName = 'endereco_numero'
      Size = 10
    end
    object qryEstabelecimentosendereco_complemento: TStringField
      FieldName = 'endereco_complemento'
    end
    object qryEstabelecimentosendereco_id_pais: TIntegerField
      FieldName = 'endereco_id_pais'
    end
    object qryEstabelecimentosendereco_nome_pais: TStringField
      FieldName = 'endereco_nome_pais'
      Size = 60
    end
    object qryEstabelecimentosendereco_id_estado: TIntegerField
      FieldName = 'endereco_id_estado'
    end
    object qryEstabelecimentosendereco_sigla_estado: TStringField
      FieldName = 'endereco_sigla_estado'
      Size = 2
    end
    object qryEstabelecimentosendereco_nome_estado: TStringField
      FieldName = 'endereco_nome_estado'
      Size = 30
    end
    object qryEstabelecimentosendereco_id_cidade: TIntegerField
      FieldName = 'endereco_id_cidade'
    end
    object qryEstabelecimentosendereco_nome_cidade: TStringField
      FieldName = 'endereco_nome_cidade'
      Size = 30
    end
    object qryEstabelecimentosendereco_id_bairro: TIntegerField
      FieldName = 'endereco_id_bairro'
    end
    object qryEstabelecimentosendereco_nome_bairro: TStringField
      FieldName = 'endereco_nome_bairro'
      Size = 60
    end
    object qryEstabelecimentosendereco_cep: TStringField
      FieldName = 'endereco_cep'
      Size = 8
    end
    object qryEstabelecimentostelefone: TStringField
      FieldName = 'telefone'
      Size = 10
    end
    object qryEstabelecimentosfax: TStringField
      FieldName = 'fax'
      Size = 10
    end
    object qryEstabelecimentosemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object qryEstabelecimentoslogomarca: TBlobField
      FieldName = 'logomarca'
    end
  end
  object qryMovimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_terminal, data_movimento, id_operador, data_abertura, ' +
        'data_fechamento,'
      'data_encerramento '
      'FROM pdv.terminais_movimentos'
      'WHERE id_terminal = :id_terminal'
      ' AND id_operador = :id_operador'
      ' AND data_movimento = :data_movimento'
      '')
    Left = 440
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_operador'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryMovimentosid_terminal: TIntegerField
      FieldName = 'id_terminal'
      Required = True
    end
    object qryMovimentosdata_movimento: TDateField
      FieldName = 'data_movimento'
      Required = True
    end
    object qryMovimentosid_operador: TIntegerField
      FieldName = 'id_operador'
      Required = True
    end
    object qryMovimentosdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
    end
    object qryMovimentosdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object qryMovimentosdata_encerramento: TDateTimeField
      FieldName = 'data_encerramento'
    end
  end
  object qryUltimoMovimento: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT tm.id_terminal, tm.data_movimento, tm.id_operador, tm.dat' +
        'a_abertura,'
      'tm.data_fechamento, tm.data_encerramento '
      'FROM pdv.terminais_movimentos tm'
      'WHERE tm.id_terminal = :id_terminal'
      ' AND tm.id_operador = :id_operador'
      ' AND EXISTS(SELECT 1   '
      '            FROM pdv.terminais_movimentos x'
      '            WHERE x.id_terminal = tm.id_terminal'
      '             AND x.id_operador = tm.id_operador'
      '            HAVING MAX(x.data_movimento) = tm.data_movimento)')
    Left = 440
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_operador'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryVendas: TUniQuery
    UpdatingTable = 'pdv.vendas'
    KeyFields = 'id_venda'
    SQLInsert.Strings = (
      'INSERT INTO pdv.vendas'
      
        '  (id_venda, data_registro, id_terminal, data_movimento, documen' +
        'to, id_cliente, id_tipo_documento_fiscal, documento_rfb_numero, ' +
        'id_condicao_pagamento, quantidade_parcelas, valor_entrada, valor' +
        '_bruto, valor_acrescimo, valor_desconto, valor_troca, valor_rece' +
        'bido, id_status)'
      'VALUES'
      
        '  (:id_venda, :data_registro, :id_terminal, :data_movimento, :do' +
        'cumento, :id_cliente, :id_tipo_documento_fiscal, :documento_rfb_' +
        'numero, :id_condicao_pagamento, :quantidade_parcelas, :valor_ent' +
        'rada, :valor_bruto, :valor_acrescimo, :valor_desconto, :valor_tr' +
        'oca, :valor_recebido, :id_status)')
    SQLDelete.Strings = (
      'DELETE FROM pdv.vendas'
      'WHERE'
      '  id_venda = :Old_id_venda')
    SQLUpdate.Strings = (
      'UPDATE pdv.vendas'
      'SET'
      
        '  id_venda = :id_venda, data_registro = :data_registro, id_termi' +
        'nal = :id_terminal, data_movimento = :data_movimento, documento ' +
        '= :documento, id_cliente = :id_cliente, id_tipo_documento_fiscal' +
        ' = :id_tipo_documento_fiscal, documento_rfb_numero = :documento_' +
        'rfb_numero, id_condicao_pagamento = :id_condicao_pagamento, quan' +
        'tidade_parcelas = :quantidade_parcelas, valor_entrada = :valor_e' +
        'ntrada, valor_bruto = :valor_bruto, valor_acrescimo = :valor_acr' +
        'escimo, valor_desconto = :valor_desconto, valor_troca = :valor_t' +
        'roca, valor_recebido = :valor_recebido, id_status = :id_status'
      'WHERE'
      '  id_venda = :Old_id_venda')
    SQLLock.Strings = (
      'SELECT * FROM pdv.vendas'
      'WHERE'
      '  id_venda = :Old_id_venda'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_venda, data_registro, id_terminal, data_movimento, doc' +
        'umento, id_cliente, id_tipo_documento_fiscal, documento_rfb_nume' +
        'ro, id_condicao_pagamento, quantidade_parcelas, valor_entrada, v' +
        'alor_bruto, valor_acrescimo, valor_desconto, valor_troca, valor_' +
        'recebido, id_status FROM pdv.vendas'
      'WHERE'
      '  id_venda = :id_venda')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM pdv.vendas'
      ''
      ') t')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, data_registro, id_terminal, data_movimento, doc' +
        'umento, '
      'id_cliente, id_tipo_documento_fiscal, documento_rfb_numero,'
      'id_condicao_pagamento, quantidade_parcelas, valor_entrada, '
      
        'valor_bruto, valor_acrescimo, valor_desconto, valor_troca, valor' +
        '_recebido,'
      'id_status'
      'FROM pdv.vendas'
      'WHERE id_terminal = :id_terminal'
      ' AND data_movimento = :data_movimento'
      ' AND id_status = 0'
      'ORDER BY documento')
    Options.SetFieldsReadOnly = False
    SpecificOptions.Strings = (
      'PostgreSQL.KeySequence=pdv.vendas_id_venda_seq')
    AfterOpen = qryVendasAfterOpen
    BeforeClose = qryVendasBeforeClose
    BeforePost = qryVendasBeforePost
    Left = 572
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_terminal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_movimento'
        Value = nil
      end>
    object qryVendasid_venda: TIntegerField
      FieldName = 'id_venda'
    end
    object qryVendasdata_registro: TDateTimeField
      FieldName = 'data_registro'
      Required = True
    end
    object qryVendasid_terminal: TIntegerField
      FieldName = 'id_terminal'
      Required = True
    end
    object qryVendasdata_movimento: TDateField
      FieldName = 'data_movimento'
      Required = True
    end
    object qryVendasdocumento: TIntegerField
      FieldName = 'documento'
      Required = True
    end
    object qryVendasid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qryVendasdocumento_rfb_numero: TStringField
      FieldName = 'documento_rfb_numero'
      Size = 30
    end
    object qryVendasid_condicao_pagamento: TSmallintField
      FieldName = 'id_condicao_pagamento'
      Required = True
    end
    object qryVendasquantidade_parcelas: TSmallintField
      FieldName = 'quantidade_parcelas'
      Required = True
    end
    object qryVendasid_tipo_documento_fiscal: TSmallintField
      FieldName = 'id_tipo_documento_fiscal'
    end
    object qryVendasvalor_entrada: TFloatField
      FieldName = 'valor_entrada'
      Required = True
    end
    object qryVendasvalor_bruto: TFloatField
      FieldName = 'valor_bruto'
      Required = True
    end
    object qryVendasvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      Required = True
    end
    object qryVendasvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      Required = True
    end
    object qryVendasvalor_troca: TFloatField
      FieldName = 'valor_troca'
      Required = True
    end
    object qryVendasvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
      Required = True
    end
    object qryVendasid_status: TSmallintField
      FieldName = 'id_status'
      Required = True
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = qryVendas
    Left = 572
    Top = 52
  end
  object qryVendas_Totais: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, valor_bruto, valor_acrescimo, valor_desconto, v' +
        'alor_troca,'
      
        '(valor_bruto + valor_acrescimo - valor_desconto - valor_troca) A' +
        'S valor_liquido,'
      'valor_recebido,'
      'CASE'
      
        '   WHEN (valor_bruto + valor_acrescimo - valor_desconto - valor_' +
        'troca) >= valor_recebido THEN (valor_bruto + valor_acrescimo - v' +
        'alor_desconto - valor_troca) - valor_recebido '
      '   ELSE'
      '      0'
      'END AS valor_receber,'
      'CASE'
      
        '   WHEN valor_recebido >= (valor_bruto + valor_acrescimo - valor' +
        '_desconto - valor_troca) THEN valor_recebido - (valor_bruto + va' +
        'lor_acrescimo - valor_desconto - valor_troca)'
      '   ELSE'
      '      0'
      'END AS valor_troco'
      'FROM pdv.vendas'
      'WHERE id_venda = :id_venda'
      'GROUP BY id_venda')
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    Left = 572
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end>
    object qryVendas_Totaisid_venda: TIntegerField
      FieldName = 'id_venda'
    end
    object qryVendas_Totaisvalor_bruto: TFloatField
      FieldName = 'valor_bruto'
      Required = True
    end
    object qryVendas_Totaisvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      Required = True
    end
    object qryVendas_Totaisvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      Required = True
    end
    object qryVendas_Totaisvalor_troca: TFloatField
      FieldName = 'valor_troca'
      Required = True
    end
    object qryVendas_Totaisvalor_liquido: TFloatField
      FieldName = 'valor_liquido'
    end
    object qryVendas_Totaisvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
      Required = True
    end
    object qryVendas_Totaisvalor_receber: TFloatField
      FieldName = 'valor_receber'
    end
    object qryVendas_Totaisvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
  end
  object qryVendas_Produtos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO pdv.vendas_produtos'
      
        '  (id_venda, sequencia_item, id_produto, codigo_barras, descrica' +
        'o, id_unidade_medida, quantidade, peso_bruto, preco_unitario, pr' +
        'eco_venda, percentual_acrescimo, valor_acrescimo, percentual_des' +
        'conto, valor_desconto, cancelado)'
      'VALUES'
      
        '  (:id_venda, :sequencia_item, :id_produto, :codigo_barras, :des' +
        'cricao, :id_unidade_medida, :quantidade, :peso_bruto, :preco_uni' +
        'tario, :preco_venda, :percentual_acrescimo, :valor_acrescimo, :p' +
        'ercentual_desconto, :valor_desconto, :cancelado)')
    SQLDelete.Strings = (
      'DELETE FROM pdv.vendas_produtos'
      'WHERE'
      
        '  id_venda = :Old_id_venda AND sequencia_item = :Old_sequencia_i' +
        'tem')
    SQLUpdate.Strings = (
      'UPDATE pdv.vendas_produtos'
      'SET'
      
        '  id_venda = :id_venda, sequencia_item = :sequencia_item, id_pro' +
        'duto = :id_produto, codigo_barras = :codigo_barras, descricao = ' +
        ':descricao, id_unidade_medida = :id_unidade_medida, quantidade =' +
        ' :quantidade, peso_bruto = :peso_bruto, preco_unitario = :preco_' +
        'unitario, preco_venda = :preco_venda, percentual_acrescimo = :pe' +
        'rcentual_acrescimo, valor_acrescimo = :valor_acrescimo, percentu' +
        'al_desconto = :percentual_desconto, valor_desconto = :valor_desc' +
        'onto, cancelado = :cancelado'
      'WHERE'
      
        '  id_venda = :Old_id_venda AND sequencia_item = :Old_sequencia_i' +
        'tem')
    SQLLock.Strings = (
      'SELECT * FROM pdv.vendas_produtos'
      'WHERE'
      
        '  id_venda = :Old_id_venda AND sequencia_item = :Old_sequencia_i' +
        'tem'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_venda, sequencia_item, id_produto, codigo_barras, desc' +
        'ricao, id_unidade_medida, quantidade, peso_bruto, preco_unitario' +
        ', preco_venda, percentual_acrescimo, valor_acrescimo, percentual' +
        '_desconto, valor_desconto, cancelado FROM pdv.vendas_produtos'
      'WHERE'
      '  id_venda = :id_venda AND sequencia_item = :sequencia_item')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM pdv.vendas_produtos'
      ''
      ') t')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT vp.id_venda, vp.sequencia_item, vp.id_produto, vp.codigo_' +
        'barras,'
      
        'vp.descricao, vp.id_unidade_medida, um.sigla AS sigla_unidade_me' +
        'dida,'
      'vp.quantidade, vp.peso_bruto,'
      'vp.preco_unitario, vp.preco_venda, '
      'vp.percentual_acrescimo, vp.valor_acrescimo, '
      'vp.percentual_desconto, vp.valor_desconto,'
      'vp.cancelado'
      'FROM pdv.vendas_produtos vp'
      '   INNER JOIN cadastro.produtos p'
      '      ON vp.id_produto = p.id_produto'
      '   INNER JOIN cadastro.unidades_medidas um'
      '      ON vp.id_unidade_medida = um.id_unidade_medida'
      'WHERE vp.id_venda= :id_venda'
      'ORDER BY vp.sequencia_item')
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    AfterPost = qryVendas_ProdutosAfterPost
    AfterDelete = qryVendas_ProdutosAfterDelete
    OnCalcFields = qryVendas_ProdutosCalcFields
    Left = 572
    Top = 140
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
    object qryVendas_Produtosid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qryVendas_Produtossequencia_item: TSmallintField
      FieldName = 'sequencia_item'
      Required = True
    end
    object qryVendas_Produtosid_produto: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object qryVendas_Produtoscodigo_barras: TStringField
      FieldName = 'codigo_barras'
      Required = True
    end
    object qryVendas_Produtosdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object qryVendas_Produtosid_unidade_medida: TSmallintField
      FieldName = 'id_unidade_medida'
      Required = True
    end
    object qryVendas_Produtossigla_unidade_medida: TStringField
      FieldName = 'sigla_unidade_medida'
      Size = 5
    end
    object qryVendas_Produtosquantidade: TFloatField
      FieldName = 'quantidade'
      DisplayFormat = '#,##0.000'
    end
    object qryVendas_Produtospeso_bruto: TFloatField
      FieldName = 'peso_bruto'
      Required = True
      DisplayFormat = '#,##0.000'
    end
    object qryVendas_Produtospreco_unitario: TFloatField
      FieldName = 'preco_unitario'
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospreco_venda: TFloatField
      FieldName = 'preco_venda'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospercentual_acrescimo: TFloatField
      FieldName = 'percentual_acrescimo'
      Required = True
      DisplayFormat = '##0.00'
    end
    object qryVendas_Produtosvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospercentual_desconto: TFloatField
      FieldName = 'percentual_desconto'
      Required = True
      DisplayFormat = '##0.00'
    end
    object qryVendas_Produtosvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospreco_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'preco_total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object qryVendas_Produtoscancelado: TStringField
      FieldName = 'cancelado'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryVendas_Trocas: TUniQuery
    Connection = dmConexao.conConexao
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    Left = 572
    Top = 184
  end
  object qryVendas_Brindes: TUniQuery
    Connection = dmConexao.conConexao
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    Left = 572
    Top = 228
  end
  object qryVendas_Parcelas: TUniQuery
    Connection = dmConexao.conConexao
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    Left = 572
    Top = 272
  end
  object qrySequenciaDocumento: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT pdv.f_proxima_sequencia_documento(:id_terminal) AS sequen' +
        'cia_documento')
    Left = 440
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qrySupervisores: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_operador, id_usuario, nome, login, senha, tipo, id_sta' +
        'tus'
      'FROM cadastro.vw_operadores'
      'WHERE login = :login'
      ' AND senha = :senha'
      ' AND tipo = '#39'S'#39
      'ORDER BY id_operador')
    Left = 56
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'login'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryProdutos_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT pcb.id_produto, pcb.tipo, pcb.codigo_barras, '
      'p.descricao, p.resumida, p.id_categoria, p.descricao_categoria,'
      'p.id_subcategoria, p.descricao_subcategoria, p.codigo_mercosul,'
      'p.id_marca, p.descricao_marca, p.referencia, p.apresentacao, '
      
        'p.id_unidade_medida, p.descricao_unidade_medida, p.sigla_unidade' +
        '_medida, '
      
        'cadastro.f_produtos_preco_unitario(pcb.id_produto::integer, :id_' +
        'estabelecimento::integer, :id_tipo_preco::smallint, :data_base::' +
        'date) AS preco_venda'
      'FROM cadastro.produtos_codigos_barras pcb'
      '   INNER JOIN cadastro.vw_produtos p'
      '      ON pcb.id_produto = p.id_produto'
      'WHERE pcb.codigo_barras = :codigo_barras'
      'ORDER BY pcb.id_produto')
    Left = 56
    Top = 140
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'id_tipo_preco'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_base'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'codigo_barras'
        ParamType = ptInput
        Value = nil
      end>
    object qryProdutos_Locateid_produto: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object qryProdutos_Locatetipo: TSmallintField
      FieldName = 'tipo'
      Required = True
    end
    object qryProdutos_Locatecodigo_barras: TStringField
      FieldName = 'codigo_barras'
      Required = True
      Size = 128
    end
    object qryProdutos_Locatedescricao: TStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 60
    end
    object qryProdutos_Locateresumida: TStringField
      FieldName = 'resumida'
      ReadOnly = True
      Size = 30
    end
    object qryProdutos_Locateid_categoria: TIntegerField
      FieldName = 'id_categoria'
      ReadOnly = True
    end
    object qryProdutos_Locatedescricao_categoria: TStringField
      FieldName = 'descricao_categoria'
      ReadOnly = True
      Size = 30
    end
    object qryProdutos_Locateid_subcategoria: TIntegerField
      FieldName = 'id_subcategoria'
      ReadOnly = True
    end
    object qryProdutos_Locatedescricao_subcategoria: TStringField
      FieldName = 'descricao_subcategoria'
      ReadOnly = True
      Size = 30
    end
    object qryProdutos_Locatecodigo_mercosul: TStringField
      FieldName = 'codigo_mercosul'
      ReadOnly = True
      Size = 10
    end
    object qryProdutos_Locateid_marca: TIntegerField
      FieldName = 'id_marca'
      ReadOnly = True
    end
    object qryProdutos_Locatedescricao_marca: TStringField
      FieldName = 'descricao_marca'
      ReadOnly = True
      Size = 30
    end
    object qryProdutos_Locatereferencia: TStringField
      FieldName = 'referencia'
      ReadOnly = True
      Size = 30
    end
    object qryProdutos_Locateapresentacao: TStringField
      FieldName = 'apresentacao'
      ReadOnly = True
      Size = 30
    end
    object qryProdutos_Locateid_unidade_medida: TIntegerField
      FieldName = 'id_unidade_medida'
      ReadOnly = True
    end
    object qryProdutos_Locatedescricao_unidade_medida: TStringField
      FieldName = 'descricao_unidade_medida'
      ReadOnly = True
      Size = 30
    end
    object qryProdutos_Locatesigla_unidade_medida: TStringField
      FieldName = 'sigla_unidade_medida'
      ReadOnly = True
      Size = 5
    end
    object qryProdutos_Locatepreco_venda: TFloatField
      FieldName = 'preco_venda'
      ReadOnly = True
    end
  end
  object qryTerminais_Tipos_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT ttr.id_tipo_recebimento, tr.descricao AS descricao_tipo_r' +
        'ecebimento, ttr.id_botao, ttr.texto_botao, tr.permite_troco'
      'FROM pdv.terminais_tipos_recebimentos ttr'
      '   INNER JOIN financeiro.tipos_recebimentos tr'
      '      ON ttr.id_tipo_recebimento = tr.id_tipo_recebimento'
      'WHERE ttr.id_terminal = :id_terminal'
      'ORDER BY ttr.id_botao, ttr.id_tipo_recebimento')
    MasterSource = dsTerminais
    Left = 216
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end>
    object qryTerminais_Tipos_Recebimentosid_tipo_recebimento: TIntegerField
      FieldName = 'id_tipo_recebimento'
      Required = True
    end
    object qryTerminais_Tipos_Recebimentosdescricao_tipo_recebimento: TStringField
      FieldName = 'descricao_tipo_recebimento'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryTerminais_Tipos_Recebimentosid_botao: TIntegerField
      FieldName = 'id_botao'
      Required = True
    end
    object qryTerminais_Tipos_Recebimentostexto_botao: TStringField
      FieldName = 'texto_botao'
    end
    object qryTerminais_Tipos_Recebimentospermite_troco: TStringField
      FieldName = 'permite_troco'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryFormas_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT fr.id_forma_recebimento, fr.descricao, fr.id_tipo_recebim' +
        'ento, tr.permite_troco'
      'FROM financeiro.formas_recebimentos fr'
      '   INNER JOIN financeiro.tipos_recebimentos tr'
      '      ON fr.id_tipo_recebimento = tr.id_tipo_recebimento'
      'WHERE fr.id_tipo_recebimento = :id_tipo_recebimento'
      'ORDER BY fr.descricao')
    Left = 56
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_tipo_recebimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryFormas_Recebimentosid_forma_recebimento: TIntegerField
      FieldName = 'id_forma_recebimento'
    end
    object qryFormas_Recebimentosdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object qryFormas_Recebimentosid_tipo_recebimento: TIntegerField
      FieldName = 'id_tipo_recebimento'
      Required = True
    end
    object qryFormas_Recebimentospermite_troco: TStringField
      FieldName = 'permite_troco'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryVendas_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, sequencia_recebimento, id_forma_recebimento, va' +
        'lor_recebido'
      'FROM pdv.vendas_recebimentos'
      'WHERE id_venda = :id_venda'
      'ORDER BY sequencia_recebimento')
    MasterSource = dsVendas
    BeforePost = qryVendas_RecebimentosBeforePost
    AfterPost = qryVendas_RecebimentosAfterPost
    AfterDelete = qryVendas_RecebimentosAfterDelete
    OnNewRecord = qryVendas_RecebimentosNewRecord
    Left = 572
    Top = 316
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
    object qryVendas_Recebimentosid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qryVendas_Recebimentossequencia_recebimento: TSmallintField
      FieldName = 'sequencia_recebimento'
      Required = True
    end
    object qryVendas_Recebimentosid_forma_recebimento: TIntegerField
      FieldName = 'id_forma_recebimento'
      Required = True
    end
    object qryVendas_Recebimentosvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
      Required = True
    end
  end
  object qryEmitentes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT m.id_emitente, '#39'J'#39'::char(1) AS tipo_pessoa, e.cnpj, e.ins' +
        'cricao_estadual,'
      'e.inscricao_municipal, e.inscricao_suframa,  '
      'null::character varying(11) AS cpf,'
      
        'e.endereco_id_pais AS id_pais, e.endereco_id_estado AS id_estado' +
        ', e.endereco_sigla_estado AS sigla_estado,  '
      'e.endereco_id_cidade AS id_cidade, '
      'e.telefone, e.fax, e.email,  '
      't.danfe_logomarca_arquivo,  t.danfe_logomarca_expandir,'
      't.salvar_resposta_envio, t.salvar_resposta_envio_caminho,'
      't.ws_ambiente, t.ws_visualizar_mensagens, '
      't.certificado_caminho, t.certificado_senha, t.certificado_serie,'
      't.proxy_host, t.proxy_porta, t.proxy_usuario, t.proxy_senha,'
      
        't.email_host, t.email_porta, t.email_usuario, t.email_senha, t.e' +
        'mail_assunto,'
      't.email_ssl, t.email_mensagem'
      'FROM pdv.terminais t'
      '   INNER JOIN cadastro.vw_estabelecimentos e'
      '      ON t.id_estabelecimento = e.id_estabelecimento'
      '   LEFT OUTER JOIN fiscal.emitentes m '
      '      ON t.id_estabelecimento = m.id_estabelecimento'
      'WHERE t.id_terminal = :id_terminal')
    Left = 56
    Top = 228
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end>
    object qryEmitentesid_emitente: TIntegerField
      FieldName = 'id_emitente'
      ReadOnly = True
    end
    object qryEmitentestipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryEmitentescnpj: TStringField
      FieldName = 'cnpj'
      ReadOnly = True
      Size = 14
    end
    object qryEmitentesinscricao_estadual: TStringField
      FieldName = 'inscricao_estadual'
      ReadOnly = True
    end
    object qryEmitentesinscricao_municipal: TStringField
      FieldName = 'inscricao_municipal'
      ReadOnly = True
    end
    object qryEmitentesinscricao_suframa: TStringField
      FieldName = 'inscricao_suframa'
      ReadOnly = True
    end
    object qryEmitentescpf: TStringField
      FieldName = 'cpf'
      ReadOnly = True
      Size = 11
    end
    object qryEmitentesid_pais: TIntegerField
      FieldName = 'id_pais'
      ReadOnly = True
    end
    object qryEmitentesid_estado: TIntegerField
      FieldName = 'id_estado'
      ReadOnly = True
    end
    object qryEmitentessigla_estado: TStringField
      FieldName = 'sigla_estado'
      ReadOnly = True
      Size = 2
    end
    object qryEmitentesid_cidade: TIntegerField
      FieldName = 'id_cidade'
      ReadOnly = True
    end
    object qryEmitentestelefone: TStringField
      FieldName = 'telefone'
      ReadOnly = True
      Size = 10
    end
    object qryEmitentesfax: TStringField
      FieldName = 'fax'
      ReadOnly = True
      Size = 10
    end
    object qryEmitentesemail: TStringField
      FieldName = 'email'
      ReadOnly = True
      Size = 255
    end
    object qryEmitentesdanfe_logomarca_arquivo: TStringField
      FieldName = 'danfe_logomarca_arquivo'
      Size = 255
    end
    object qryEmitentesdanfe_logomarca_expandir: TStringField
      FieldName = 'danfe_logomarca_expandir'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEmitentessalvar_resposta_envio: TStringField
      FieldName = 'salvar_resposta_envio'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEmitentessalvar_resposta_envio_caminho: TStringField
      FieldName = 'salvar_resposta_envio_caminho'
      Size = 255
    end
    object qryEmitentesws_ambiente: TStringField
      FieldName = 'ws_ambiente'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEmitentesws_visualizar_mensagens: TStringField
      FieldName = 'ws_visualizar_mensagens'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEmitentescertificado_caminho: TStringField
      FieldName = 'certificado_caminho'
      Size = 255
    end
    object qryEmitentescertificado_senha: TStringField
      FieldName = 'certificado_senha'
      Size = 255
    end
    object qryEmitentescertificado_serie: TStringField
      FieldName = 'certificado_serie'
      Size = 255
    end
    object qryEmitentesproxy_host: TStringField
      FieldName = 'proxy_host'
      Size = 255
    end
    object qryEmitentesproxy_porta: TIntegerField
      FieldName = 'proxy_porta'
    end
    object qryEmitentesproxy_usuario: TStringField
      FieldName = 'proxy_usuario'
      Size = 255
    end
    object qryEmitentesproxy_senha: TStringField
      FieldName = 'proxy_senha'
      Size = 255
    end
    object qryEmitentesemail_host: TStringField
      FieldName = 'email_host'
      Size = 255
    end
    object qryEmitentesemail_porta: TIntegerField
      FieldName = 'email_porta'
    end
    object qryEmitentesemail_usuario: TStringField
      FieldName = 'email_usuario'
      Size = 255
    end
    object qryEmitentesemail_senha: TStringField
      FieldName = 'email_senha'
      Size = 255
    end
    object qryEmitentesemail_assunto: TStringField
      FieldName = 'email_assunto'
      Size = 255
    end
    object qryEmitentesemail_ssl: TStringField
      FieldName = 'email_ssl'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEmitentesemail_mensagem: TMemoField
      FieldName = 'email_mensagem'
      BlobType = ftMemo
    end
  end
end
