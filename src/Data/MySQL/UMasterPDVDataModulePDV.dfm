object dmPDV: TdmPDV
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 606
  Width = 1059
  object qryOperadores: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_operador, id_usuario, nome, login, senha, tipo, id_sta' +
        'tus'
      'FROM vw_operadores'
      'WHERE id_usuario = :id_usuario'
      'ORDER BY id_operador')
    Left = 56
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_usuario'
        ParamType = ptInput
        Value = nil
      end>
    object qryOperadoresid_operador: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_operador'
    end
    object qryOperadoresid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
    object qryOperadoresnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object qryOperadoreslogin: TStringField
      FieldName = 'login'
      Size = 128
    end
    object qryOperadoressenha: TStringField
      FieldName = 'senha'
      Size = 128
    end
    object qryOperadorestipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryOperadoresid_status: TWordField
      FieldName = 'id_status'
      Required = True
    end
  end
  object qryTerminais: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT a.id_terminal, '
      
        't.id_estabelecimento, e.nome_fantasia AS nome_fantasia_estabelec' +
        'imento,'
      't.id_local, l.descricao AS descricao_local,'
      't.descricao, t.numero, t.fiscal, '
      
        't.tipo_documento_fiscal, t.endereco_fisico, t.id_conta, t.id_con' +
        'dicao_pagamento, t.identificar_representante, '
      
        't.id_cliente_consumidor, t.etiqueta_prefixo, t.etiqueta_codigo_i' +
        'nicio, t.etiqueta_codigo_tamanho,'
      
        't.id_balanca_acoplada, b.descricao AS descricao_balanca_acoplada' +
        ','
      'b.id_modelo AS id_modelo_balanca_acoplada,'
      
        't.balanca_acoplada_porta_serial AS porta_serial_balanca_acoplada' +
        ','
      'b.velocidade AS velocidade_balanca_acoplada, '
      'b.taxa_transmissao AS taxa_transmissao_balanca_acoplada,'
      'b.id_paridade AS id_paridade_balanca_acoplada,'
      'b.id_bit_parada AS id_bit_parada_balanca_acoplada,'
      'b.handshake AS handshake_balanca_acoplada,'
      
        't.balanca_acoplada_tempo_limite AS tempo_limite_balanca_acoplada' +
        ','
      't.id_gerenciador_tef,'
      't.impressora_padrao, t.digitos_significativos, t.gerar_senha, '
      
        't.autenticar_documento, t.autenticador, t.autenticador_id_modelo' +
        ','
      'o.csc_id AS token_csc_id, o.csc_numero AS token_csc_numero,'
      't.danfe_logomarca_arquivo, t.danfe_logomarca_expandir,'
      't.dfe_forma_emissao, t.contingencia_motivo,'
      't.salvar_resposta_envio, t.salvar_resposta_envio_caminho,'
      't.ws_ambiente, t.ws_visualizar_mensagens, t.certificado_caminho,'
      't.certificado_senha, t.certificado_serie,'
      't.proxy_host, t.proxy_porta, t.proxy_usuario, t.proxy_senha,'
      't.email_host, t.email_porta, t.email_usuario, t.email_senha,'
      't.email_assunto, t.email_ssl, t.email_mensagem,'
      't.emissor_cupom, t.emissor_cupom_producao, '
      't.emissor_nfe, t.emissor_nfce, t.operacao_offline,'
      't.versao_xml, t.versao_qrcode'
      'FROM terminais_operadores a'
      '   INNER JOIN (terminais t'
      '                  INNER JOIN estabelecimentos e'
      
        '                     ON t.id_estabelecimento = e.id_estabelecime' +
        'nto'
      '                  INNER JOIN locais l'
      
        '                     ON t.id_estabelecimento = l.id_estabelecime' +
        'nto AND t.id_local = l.id_local'
      '                  LEFT OUTER JOIN dispositivos b'
      '                     ON t.id_balanca_acoplada = b.id_dispositivo'
      '                  LEFT OUTER JOIN tokens o'
      '                     ON t.id_token = o.id_token)'
      '      ON a.id_terminal = t.id_terminal'
      ' &condicao'
      'ORDER BY t.numero')
    AfterOpen = qryTerminaisAfterOpen
    BeforeClose = qryTerminaisBeforeClose
    Left = 219
    Top = 6
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryTerminaisid_terminal: TLargeintField
      FieldName = 'id_terminal'
      Required = True
    end
    object qryTerminaisid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
      ReadOnly = True
    end
    object qryTerminaisnome_fantasia_estabelecimento: TStringField
      FieldName = 'nome_fantasia_estabelecimento'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryTerminaisid_local: TIntegerField
      FieldName = 'id_local'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisdescricao_local: TStringField
      FieldName = 'descricao_local'
      ReadOnly = True
      Size = 30
    end
    object qryTerminaisdescricao: TStringField
      FieldName = 'descricao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryTerminaisnumero: TLargeintField
      FieldName = 'numero'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisendereco_fisico: TStringField
      FieldName = 'endereco_fisico'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisfiscal: TStringField
      FieldName = 'fiscal'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaistipo_documento_fiscal: TStringField
      FieldName = 'tipo_documento_fiscal'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisid_conta: TWordField
      FieldName = 'id_conta'
      ReadOnly = True
    end
    object qryTerminaisidentificar_representante: TStringField
      FieldName = 'identificar_representante'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisid_condicao_pagamento: TWordField
      FieldName = 'id_condicao_pagamento'
      ReadOnly = True
    end
    object qryTerminaisid_cliente_consumidor: TLargeintField
      FieldName = 'id_cliente_consumidor'
      ReadOnly = True
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
    object qryTerminaisid_balanca_acoplada: TLargeintField
      FieldName = 'id_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaisdescricao_balanca_acoplada: TStringField
      FieldName = 'descricao_balanca_acoplada'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryTerminaisid_modelo_balanca_acoplada: TWordField
      FieldName = 'id_modelo_balanca_acoplada'
      ReadOnly = True
    end
    object qryTerminaisporta_serial_balanca_acoplada: TStringField
      FieldName = 'porta_serial_balanca_acoplada'
      ReadOnly = True
      Size = 6
    end
    object qryTerminaisvelocidade_balanca_acoplada: TLargeintField
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
    object qryTerminaistempo_limite_balanca_acoplada: TLargeintField
      FieldName = 'tempo_limite_balanca_acoplada'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisid_gerenciador_tef: TWordField
      FieldName = 'id_gerenciador_tef'
      ReadOnly = True
    end
    object qryTerminaisimpressora_padrao: TStringField
      FieldName = 'impressora_padrao'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisdigitos_significativos: TWordField
      FieldName = 'digitos_significativos'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisgerar_senha: TStringField
      FieldName = 'gerar_senha'
      Size = 1
    end
    object qryTerminaisautenticar_documento: TStringField
      FieldName = 'autenticar_documento'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisautenticador: TStringField
      FieldName = 'autenticador'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisautenticador_id_modelo: TWordField
      FieldName = 'autenticador_id_modelo'
      ReadOnly = True
      Required = True
    end
    object qryTerminaistoken_csc_id: TLargeintField
      FieldName = 'token_csc_id'
      ReadOnly = True
      Required = True
    end
    object qryTerminaistoken_csc_numero: TStringField
      FieldName = 'token_csc_numero'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisdanfe_logomarca_arquivo: TStringField
      FieldName = 'danfe_logomarca_arquivo'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisdanfe_logomarca_expandir: TStringField
      FieldName = 'danfe_logomarca_expandir'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaissalvar_resposta_envio: TStringField
      FieldName = 'salvar_resposta_envio'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaissalvar_resposta_envio_caminho: TStringField
      FieldName = 'salvar_resposta_envio_caminho'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisws_ambiente: TStringField
      FieldName = 'ws_ambiente'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisws_visualizar_mensagens: TStringField
      FieldName = 'ws_visualizar_mensagens'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaiscertificado_caminho: TStringField
      FieldName = 'certificado_caminho'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaiscertificado_senha: TStringField
      FieldName = 'certificado_senha'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaiscertificado_serie: TStringField
      FieldName = 'certificado_serie'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisproxy_host: TStringField
      FieldName = 'proxy_host'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisproxy_porta: TLargeintField
      FieldName = 'proxy_porta'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisproxy_usuario: TStringField
      FieldName = 'proxy_usuario'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisproxy_senha: TStringField
      FieldName = 'proxy_senha'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemail_host: TStringField
      FieldName = 'email_host'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemail_porta: TLargeintField
      FieldName = 'email_porta'
      ReadOnly = True
      Required = True
    end
    object qryTerminaisemail_usuario: TStringField
      FieldName = 'email_usuario'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemail_senha: TStringField
      FieldName = 'email_senha'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemail_assunto: TStringField
      FieldName = 'email_assunto'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemail_ssl: TStringField
      FieldName = 'email_ssl'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisemail_mensagem: TMemoField
      FieldName = 'email_mensagem'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qryTerminaisdfe_forma_emissao: TStringField
      FieldName = 'dfe_forma_emissao'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaiscontingencia_motivo: TStringField
      FieldName = 'contingencia_motivo'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemissor_cupom: TStringField
      FieldName = 'emissor_cupom'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemissor_cupom_producao: TStringField
      FieldName = 'emissor_cupom_producao'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemissor_nfe: TStringField
      FieldName = 'emissor_nfe'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisemissor_nfce: TStringField
      FieldName = 'emissor_nfce'
      ReadOnly = True
      Size = 255
    end
    object qryTerminaisoperacao_offline: TStringField
      FieldName = 'operacao_offline'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisversao_xml: TStringField
      FieldName = 'versao_xml'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisversao_qrcode: TStringField
      FieldName = 'versao_qrcode'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = qryOperadores
    Left = 56
    Top = 96
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = qryTerminais
    Left = 220
    Top = 52
  end
  object qryEstabelecimentos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO locais'
      
        '  (id_local, tipo_pessoa, cnpj, insc_estadual, insc_municipal, i' +
        'nsc_suframa, razao, fantasia, logradouro, numero, complemento, b' +
        'airro, id_cidade, id_estado, id_pais, cep, telefone, fax, email,' +
        ' contato, cnae_fiscal, natureza_juridica, regime_tributario, log' +
        'omarca)'
      'VALUES'
      
        '  (:id_local, :tipo_pessoa, :cnpj, :insc_estadual, :insc_municip' +
        'al, :insc_suframa, :razao, :fantasia, :logradouro, :numero, :com' +
        'plemento, :bairro, :id_cidade, :id_estado, :id_pais, :cep, :tele' +
        'fone, :fax, :email, :contato, :cnae_fiscal, :natureza_juridica, ' +
        ':regime_tributario, :logomarca)')
    SQLDelete.Strings = (
      'DELETE FROM locais'
      'WHERE'
      '  id_local = :Old_id_local')
    SQLUpdate.Strings = (
      'UPDATE locais'
      'SET'
      
        '  id_local = :id_local, tipo_pessoa = :tipo_pessoa, cnpj = :cnpj' +
        ', insc_estadual = :insc_estadual, insc_municipal = :insc_municip' +
        'al, insc_suframa = :insc_suframa, razao = :razao, fantasia = :fa' +
        'ntasia, logradouro = :logradouro, numero = :numero, complemento ' +
        '= :complemento, bairro = :bairro, id_cidade = :id_cidade, id_est' +
        'ado = :id_estado, id_pais = :id_pais, cep = :cep, telefone = :te' +
        'lefone, fax = :fax, email = :email, contato = :contato, cnae_fis' +
        'cal = :cnae_fiscal, natureza_juridica = :natureza_juridica, regi' +
        'me_tributario = :regime_tributario, logomarca = :logomarca'
      'WHERE'
      '  id_local = :Old_id_local')
    SQLLock.Strings = (
      'SELECT * FROM locais'
      'WHERE'
      '  id_local = :Old_id_local'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id_local, tipo_pessoa, cnpj, insc_estadual, insc_municipa' +
        'l, insc_suframa, razao, fantasia, logradouro, numero, complement' +
        'o, bairro, id_cidade, id_estado, id_pais, cep, telefone, fax, em' +
        'ail, contato, cnae_fiscal, natureza_juridica, regime_tributario,' +
        ' logomarca FROM locais'
      'WHERE'
      '  id_local = :id_local')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM locais')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_estabelecimento, cnpj, inscricao_estadual, inscricao_m' +
        'unicipal, inscricao_suframa, '
      
        'razao_social, nome_fantasia, logradouro, numero, complemento,  i' +
        'd_pais, descricao_pais, '
      
        'id_estado, sigla_estado, id_cidade, descricao_cidade, bairro, ce' +
        'p, telefone, fax, email,'
      
        'contato, cnae_principal, natureza_juridica, regime_tributario, l' +
        'ogomarca'
      'FROM vw_estabelecimentos'
      'WHERE id_estabelecimento = :id_estabelecimento'
      'ORDER BY id_estabelecimento')
    MasterSource = dsTerminais
    Left = 56
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryEstabelecimentosid_estabelecimento: TLargeintField
      AutoGenerateValue = arAutoInc
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
      Required = True
      Size = 255
    end
    object qryEstabelecimentosnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Required = True
      Size = 255
    end
    object qryEstabelecimentoslogradouro: TStringField
      FieldName = 'logradouro'
      Size = 255
    end
    object qryEstabelecimentosnumero: TStringField
      FieldName = 'numero'
      Size = 15
    end
    object qryEstabelecimentoscomplemento: TStringField
      FieldName = 'complemento'
    end
    object qryEstabelecimentosid_pais: TStringField
      FieldName = 'id_pais'
      FixedChar = True
      Size = 4
    end
    object qryEstabelecimentosdescricao_pais: TStringField
      FieldName = 'descricao_pais'
      Size = 30
    end
    object qryEstabelecimentosid_estado: TStringField
      FieldName = 'id_estado'
      FixedChar = True
      Size = 2
    end
    object qryEstabelecimentossigla_estado: TStringField
      FieldName = 'sigla_estado'
      FixedChar = True
      Size = 2
    end
    object qryEstabelecimentosid_cidade: TStringField
      FieldName = 'id_cidade'
      FixedChar = True
      Size = 7
    end
    object qryEstabelecimentosdescricao_cidade: TStringField
      FieldName = 'descricao_cidade'
      Size = 30
    end
    object qryEstabelecimentosbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qryEstabelecimentoscep: TStringField
      FieldName = 'cep'
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
    object qryEstabelecimentoscontato: TStringField
      FieldName = 'contato'
      Size = 60
    end
    object qryEstabelecimentoscnae_principal: TStringField
      FieldName = 'cnae_principal'
      Size = 10
    end
    object qryEstabelecimentosnatureza_juridica: TStringField
      FieldName = 'natureza_juridica'
      Size = 4
    end
    object qryEstabelecimentosregime_tributario: TStringField
      FieldName = 'regime_tributario'
      Required = True
      FixedChar = True
      Size = 1
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
      'FROM terminais_movimentos'
      'WHERE id_terminal = :id_terminal'
      ' AND id_operador = :id_operador'
      ' AND data_movimento = :data_movimento'
      '')
    AfterOpen = qryMovimentosAfterOpen
    BeforeClose = qryMovimentosBeforeClose
    Left = 408
    Top = 8
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
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
    object qryMovimentosid_terminal: TLargeintField
      FieldName = 'id_terminal'
      Required = True
    end
    object qryMovimentosdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      Required = True
    end
    object qryMovimentosid_operador: TLargeintField
      FieldName = 'id_operador'
      Required = True
    end
    object qryMovimentosdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
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
      'FROM terminais_movimentos tm'
      'WHERE tm.id_terminal = :id_terminal'
      ' AND tm.id_operador = :id_operador'
      ' &condicao')
    Left = 408
    Top = 52
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'id_operador'
        ParamType = ptInput
        Value = nil
      end>
    MacroData = <
      item
        Name = 'condicao'
      end>
  end
  object qryVendas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, id_estabelecimento, id_local, data_movimento, i' +
        'd_caixa, id_operador, documento, id_condicao, parcelas, tipo_pra' +
        'zo,'
      
        'id_representante, id_parceiro, documento_rfb_numero, id_convenia' +
        'do, logradouro_entrega, numero_entrega, complemento_entrega,'
      
        'referencia_entrega, bairro_entrega, id_pais_entrega, id_estado_e' +
        'ntrega, id_cidade_entrega, cep_entrega, telefone_entrega,'
      
        'contato_entrega, id_transportador, id_entregador, data_entrega, ' +
        'id_preco, percentual_comissao, '
      
        'valor_bruto, valor_acrescimo, id_campanha, id_cupom, valor_desco' +
        'nto, valor_troca, valor_entrada, valor_recebido, valor_troco,'
      'observacao,'
      'data_registro, id_usuario, tipo_documento_fiscal, status'
      'FROM vendas'
      'WHERE id_caixa = :id_terminal'
      ' AND data_movimento = :data_movimento'
      ' AND id_operador = :id_operador'
      ' &condicao'
      'ORDER BY documento')
    Options.SetFieldsReadOnly = False
    SpecificOptions.Strings = (
      'PostgreSQL.KeySequence=pdv.vendas_id_venda_seq')
    AfterOpen = qryVendasAfterOpen
    BeforeClose = qryVendasBeforeClose
    BeforePost = qryVendasBeforePost
    Left = 592
    Top = 8
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'id_operador'
        ParamType = ptInput
        Value = nil
      end>
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryVendasid_venda: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_venda'
    end
    object qryVendasid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
    end
    object qryVendasid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryVendasdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      Required = True
    end
    object qryVendasid_caixa: TWordField
      FieldName = 'id_caixa'
    end
    object qryVendasid_operador: TLargeintField
      FieldName = 'id_operador'
    end
    object qryVendasdocumento: TLargeintField
      FieldName = 'documento'
      Required = True
    end
    object qryVendasid_condicao: TWordField
      FieldName = 'id_condicao'
    end
    object qryVendasparcelas: TByteField
      FieldName = 'parcelas'
    end
    object qryVendastipo_prazo: TStringField
      FieldName = 'tipo_prazo'
      FixedChar = True
      Size = 1
    end
    object qryVendasid_representante: TLargeintField
      FieldName = 'id_representante'
    end
    object qryVendasid_parceiro: TLargeintField
      FieldName = 'id_parceiro'
    end
    object qryVendascliente_lookpup: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_lookpup'
      LookupDataSet = qryClientes_LookUp
      LookupKeyFields = 'id_parceiro'
      LookupResultField = 'razao'
      KeyFields = 'id_parceiro'
      Size = 255
      Lookup = True
    end
    object qryVendasdocumento_rfb_numero: TStringField
      FieldName = 'documento_rfb_numero'
    end
    object qryVendasid_conveniado: TLargeintField
      FieldName = 'id_conveniado'
    end
    object qryVendaslogradouro_entrega: TStringField
      FieldName = 'logradouro_entrega'
      Size = 60
    end
    object qryVendasnumero_entrega: TStringField
      FieldName = 'numero_entrega'
      Size = 10
    end
    object qryVendascomplemento_entrega: TStringField
      FieldName = 'complemento_entrega'
    end
    object qryVendasreferencia_entrega: TStringField
      FieldName = 'referencia_entrega'
      Size = 60
    end
    object qryVendasbairro_entrega: TStringField
      FieldName = 'bairro_entrega'
      Size = 40
    end
    object qryVendasid_pais_entrega: TStringField
      FieldName = 'id_pais_entrega'
      FixedChar = True
      Size = 4
    end
    object qryVendasid_estado_entrega: TStringField
      FieldName = 'id_estado_entrega'
      FixedChar = True
      Size = 2
    end
    object qryVendasid_cidade_entrega: TStringField
      FieldName = 'id_cidade_entrega'
      FixedChar = True
      Size = 7
    end
    object qryVendascep_entrega: TStringField
      FieldName = 'cep_entrega'
      Size = 8
    end
    object qryVendastelefone_entrega: TStringField
      FieldName = 'telefone_entrega'
      Size = 11
    end
    object qryVendascontato_entrega: TStringField
      FieldName = 'contato_entrega'
      Size = 30
    end
    object qryVendasid_transportador: TWordField
      FieldName = 'id_transportador'
    end
    object qryVendasid_entregador: TWordField
      FieldName = 'id_entregador'
    end
    object qryVendasdata_entrega: TDateTimeField
      FieldName = 'data_entrega'
    end
    object qryVendasid_preco: TWordField
      FieldName = 'id_preco'
    end
    object qryVendasvalor_entrada: TFloatField
      FieldName = 'valor_entrada'
    end
    object qryVendaspercentual_comissao: TFloatField
      FieldName = 'percentual_comissao'
    end
    object qryVendasvalor_bruto: TFloatField
      FieldName = 'valor_bruto'
    end
    object qryVendasvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qryVendasid_campanha: TLargeintField
      FieldName = 'id_campanha'
    end
    object qryVendasid_cupom: TWordField
      FieldName = 'id_cupom'
    end
    object qryVendasvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qryVendasvalor_troca: TFloatField
      FieldName = 'valor_troca'
    end
    object qryVendasvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryVendasvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
    object qryVendastipo_documento_fiscal: TStringField
      FieldName = 'tipo_documento_fiscal'
      FixedChar = True
      Size = 1
    end
    object qryVendasobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object qryVendasstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object qryVendasdata_registro: TDateTimeField
      FieldName = 'data_registro'
    end
    object qryVendasid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = qryVendas
    Left = 592
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
      'FROM vendas'
      'WHERE id_venda = :id_venda'
      'GROUP BY id_venda')
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    Left = 592
    Top = 96
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
    object qryVendas_Totaisid_venda: TLargeintField
      AutoGenerateValue = arAutoInc
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
      'INSERT INTO vendas_produtos'
      
        '  (id_venda, item, id_produto, codigo_barras, descricao, quantid' +
        'ade, id_unidade, peso_bruto, preco_unitario, preco_venda, percen' +
        'tual_desconto, valor_desconto, percentual_acrescimo, valor_acres' +
        'cimo, preco_custo)'
      'VALUES'
      
        '  (:id_venda, :item, :id_produto, :codigo_barras, :descricao, :q' +
        'uantidade, :id_unidade, :peso_bruto, :preco_unitario, :preco_ven' +
        'da, :percentual_desconto, :valor_desconto, :percentual_acrescimo' +
        ', :valor_acrescimo, :preco_custo)')
    SQLDelete.Strings = (
      'DELETE FROM vendas_produtos'
      'WHERE'
      '  id_venda = :Old_id_venda AND item = :Old_item')
    SQLUpdate.Strings = (
      'UPDATE vendas_produtos'
      'SET'
      
        '  id_venda = :id_venda, item = :item, id_produto = :id_produto, ' +
        'codigo_barras = :codigo_barras, descricao = :descricao, quantida' +
        'de = :quantidade, id_unidade = :id_unidade, peso_bruto = :peso_b' +
        'ruto, preco_unitario = :preco_unitario, preco_venda = :preco_ven' +
        'da, percentual_desconto = :percentual_desconto, valor_desconto =' +
        ' :valor_desconto, percentual_acrescimo = :percentual_acrescimo, ' +
        'valor_acrescimo = :valor_acrescimo, preco_custo = :preco_custo'
      'WHERE'
      '  id_venda = :Old_id_venda AND item = :Old_item')
    SQLLock.Strings = (
      'SELECT * FROM vendas_produtos'
      'WHERE'
      '  id_venda = :Old_id_venda AND item = :Old_item'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id_venda, item, id_produto, codigo_barras, descricao, qua' +
        'ntidade, id_unidade, peso_bruto, preco_unitario, preco_venda, pe' +
        'rcentual_desconto, valor_desconto, percentual_acrescimo, valor_a' +
        'crescimo, preco_custo FROM vendas_produtos'
      'WHERE'
      '  id_venda = :id_venda AND item = :item')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM vendas_produtos')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT vp.id_venda, vp.item, vp.id_produto, vp.codigo_barras, vp' +
        '.descricao, p.resumida, '
      'vp.id_unidade, um.sigla AS sigla_unidade,'
      
        'vp.quantidade, vp.peso_bruto, vp.preco_unitario, vp.preco_venda,' +
        ' vp.percentual_acrescimo, vp.valor_acrescimo, '
      'vp.percentual_desconto, vp.valor_desconto, vp.preco_custo'
      'FROM vendas_produtos vp'
      '   INNER JOIN produtos p'
      '      ON vp.id_produto = p.id_produto'
      '   INNER JOIN unidades um'
      '      ON vp.id_unidade = um.id_unidade'
      'WHERE vp.id_venda= :id_venda'
      'ORDER BY vp.item')
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    AfterPost = qryVendas_ProdutosAfterPost
    AfterDelete = qryVendas_ProdutosAfterDelete
    OnCalcFields = qryVendas_ProdutosCalcFields
    Left = 592
    Top = 140
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
    object qryVendas_Produtosid_venda: TLargeintField
      FieldName = 'id_venda'
      Required = True
    end
    object qryVendas_Produtositem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryVendas_Produtosid_produto: TLargeintField
      FieldName = 'id_produto'
      Required = True
    end
    object qryVendas_Produtoscodigo_barras: TStringField
      FieldName = 'codigo_barras'
    end
    object qryVendas_Produtosdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object qryVendas_Produtosresumida: TStringField
      FieldName = 'resumida'
      Size = 255
    end
    object qryVendas_Produtosid_unidade: TWordField
      FieldName = 'id_unidade'
      Required = True
    end
    object qryVendas_Produtossigla_unidade: TStringField
      FieldName = 'sigla_unidade'
      Size = 10
    end
    object qryVendas_Produtosquantidade: TFloatField
      FieldName = 'quantidade'
      DisplayFormat = '#,##0.000'
    end
    object qryVendas_Produtospeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object qryVendas_Produtospreco_unitario: TFloatField
      FieldName = 'preco_unitario'
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospreco_venda: TFloatField
      FieldName = 'preco_venda'
    end
    object qryVendas_Produtospercentual_acrescimo: TFloatField
      FieldName = 'percentual_acrescimo'
    end
    object qryVendas_Produtosvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qryVendas_Produtospercentual_desconto: TFloatField
      FieldName = 'percentual_desconto'
    end
    object qryVendas_Produtosvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qryVendas_Produtospreco_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'preco_total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object qryVendas_Produtospreco_custo: TFloatField
      FieldName = 'preco_custo'
    end
  end
  object qryVendas_Trocas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, item, id_produto, codigo_barras, descricao, id_' +
        'unidade, quantidade, peso_bruto, preco_unitario, valor_desconto'
      'FROM vendas_trocas'
      'WHERE id_venda= :id_venda'
      'ORDER BY item')
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    BeforePost = qryVendas_TrocasBeforePost
    OnNewRecord = qryVendas_TrocasNewRecord
    Left = 592
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryVendas_Brindes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, item, id_produto, codigo_barras, descricao, id_' +
        'unidade, quantidade, peso_bruto, preco_custo'
      'FROM vendas_brindes'
      'WHERE id_venda = :id_venda'
      'ORDER BY item')
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    Left = 592
    Top = 228
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryVendas_Parcelas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, parcela, prazo, data_vencimento, valor_parcela,' +
        ' id_duplicata '
      'FROM vendas_parcelas'
      'WHERE id_venda= :id_venda'
      'ORDER BY parcela')
    MasterSource = dsVendas
    Options.SetFieldsReadOnly = False
    Left = 592
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qrySequenciaNumeroDocumentoVenda: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT f_SequenciaNumeroDocumentoVenda(:id_terminal) AS sequenci' +
        'a_documento')
    Left = 408
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
      
        'SELECT o.id_operador, o.id_usuario, o.nome, o.login, u.data_cada' +
        'stro, o.senha, o.tipo, o.id_status'
      'FROM vw_operadores o'
      '   INNER JOIN dbacesso.usuarios u'
      '      ON o.id_usuario = u.id_usuario'
      'WHERE o.login = :login'
      ' AND o.tipo = '#39'S'#39
      'ORDER BY o.id_operador')
    Left = 56
    Top = 140
    ParamData = <
      item
        DataType = ftString
        Name = 'login'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryProdutos_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT p.id_produto, p.codigo_barras, p.descricao, p.resumida, p' +
        '.id_categoria, p.descricao_categoria,'
      
        'p.id_subcategoria, p.descricao_subcategoria, p.codigo_ncm AS cod' +
        'igo_mercosul,'
      'p.id_marca, p.descricao_marca, p.referencia, p.apresentacao, '
      
        'p.id_unidade AS id_unidade_medida, p.descricao_unidade AS descri' +
        'cao_unidade_medida,'
      'p.sigla_unidade AS sigla_unidade_medida, p.pesavel, '
      'p.preco_custo, '
      'CASE'
      
        '   WHEN COALESCE(p.preco_promocao, 0) > 0 AND CURRENT_DATE BETWE' +
        'EN COALESCE(p.inicio_promocao, CURRENT_DATE) AND COALESCE(p.term' +
        'ino_promocao, CURRENT_DATE) THEN p.preco_promocao'
      '   ELSE'
      '      p.preco_venda'
      'END AS preco_unitario,'
      
        'p.preco_venda, p.preco_atacado, p.minimo_atacado, p.promocao, p.' +
        'desconto, p.validade_promocao,'
      
        'f_get_produto_estoque_disponivel_local(p.id_produto, :id_estabel' +
        'ecimento, :id_local, :data_referencia) AS estoque_disponivel'
      'FROM vw_produtos p'
      'WHERE p.codigo_barras = :codigo_barras'
      'ORDER BY p.id_produto')
    Left = 56
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWord
        Name = 'id_local'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_referencia'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'codigo_barras'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryTerminais_Modalidades: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT tm.id_terminal, tm.id_modalidade, m.descricao AS descrica' +
        'o_modalidade, tm.id_botao, m.texto_botao, m.indice_imagem, tm.id' +
        '_tecla, m.troco, m.tef'
      'FROM terminais_modalidades tm'
      '   INNER JOIN modalidades m'
      '      ON tm.id_modalidade = m.id_modalidade'
      'WHERE tm.id_terminal = :id_terminal'
      'ORDER BY tm.id_botao, tm.id_modalidade')
    MasterSource = dsTerminais
    Left = 220
    Top = 96
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end>
    object qryTerminais_Modalidadesid_terminal: TLargeintField
      FieldName = 'id_terminal'
      Required = True
    end
    object qryTerminais_Modalidadesid_modalidade: TStringField
      FieldName = 'id_modalidade'
      Required = True
      Size = 2
    end
    object qryTerminais_Modalidadesdescricao_modalidade: TStringField
      FieldName = 'descricao_modalidade'
      ReadOnly = True
      Size = 30
    end
    object qryTerminais_Modalidadesid_botao: TSmallintField
      FieldName = 'id_botao'
    end
    object qryTerminais_Modalidadestexto_botao: TStringField
      FieldName = 'texto_botao'
      ReadOnly = True
      Size = 15
    end
    object qryTerminais_Modalidadesindice_imagem: TShortintField
      FieldName = 'indice_imagem'
      ReadOnly = True
      Required = True
    end
    object qryTerminais_Modalidadesid_tecla: TSmallintField
      FieldName = 'id_tecla'
    end
    object qryTerminais_Modalidadestroco: TStringField
      FieldName = 'troco'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminais_Modalidadestef: TStringField
      FieldName = 'tef'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryFormas_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT t.id_transacao, t.descricao, t.id_tipo_pagamento, m.tef, ' +
        'm.troco, t.indice_tef'
      'FROM transacoes t'
      '   INNER JOIN modalidades m'
      '      ON t.id_modalidade = m.id_modalidade'
      '   INNER JOIN terminais_modalidades tm'
      '      ON t.id_modalidade = tm.id_modalidade'
      'WHERE tm.id_terminal = :id_terminal'
      ' AND tm.id_botao = :id_botao'
      'ORDER BY t.descricao')
    Left = 56
    Top = 228
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'id_botao'
        ParamType = ptInput
        Value = nil
      end>
    object qryFormas_Recebimentosid_transacao: TWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_transacao'
    end
    object qryFormas_Recebimentosdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object qryFormas_Recebimentosid_tipo_pagamento: TByteField
      FieldName = 'id_tipo_pagamento'
    end
    object qryFormas_Recebimentostef: TStringField
      FieldName = 'tef'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryFormas_Recebimentostroco: TStringField
      FieldName = 'troco'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryFormas_Recebimentosindice_tef: TStringField
      FieldName = 'indice_tef'
      Size = 2
    end
  end
  object qryVendas_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, item, id_transacao, rede, nsu, valor_recebido, ' +
        'valor_troco'
      'FROM vendas_recebimentos'
      'WHERE id_venda = :id_venda'
      'ORDER BY item')
    MasterSource = dsVendas
    BeforePost = qryVendas_RecebimentosBeforePost
    AfterPost = qryVendas_RecebimentosAfterPost
    AfterDelete = qryVendas_RecebimentosAfterDelete
    OnNewRecord = qryVendas_RecebimentosNewRecord
    Left = 592
    Top = 316
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
    object qryVendas_Recebimentosid_venda: TLargeintField
      FieldName = 'id_venda'
      Required = True
    end
    object qryVendas_Recebimentositem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryVendas_Recebimentosid_transacao: TWordField
      FieldName = 'id_transacao'
      Required = True
    end
    object qryVendas_Recebimentosrede: TStringField
      FieldName = 'rede'
      Size = 255
    end
    object qryVendas_Recebimentosnsu: TStringField
      FieldName = 'nsu'
      Size = 255
    end
    object qryVendas_Recebimentosvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryVendas_Recebimentosvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
  end
  object uspSequenciaNumeroDocumentoVenda: TUniStoredProc
    StoredProcName = 'f_SequenciaNumeroDocumentoVenda'
    SQL.Strings = (
      'SELECT f_SequenciaNumeroDocumentoVenda(:p_id_terminal)')
    Connection = dmConexao.conConexao
    Left = 408
    Top = 140
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_id_terminal'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_SequenciaNumeroDocumentoVenda'
  end
  object dsMovimentos: TDataSource
    DataSet = qryMovimentos
    Left = 408
    Top = 184
  end
  object qryMovimentos_Operacoes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_terminal, data_movimento, id_operador, sequencia, id_o' +
        'peracao, id_centro, historico, natureza, valor'
      'FROM terminais_movimentos_operacoes'
      'WHERE id_terminal = :id_terminal'
      ' AND data_movimento = :data_movimento'
      ' AND id_operador = :id_operador'
      'ORDER BY sequencia')
    MasterSource = dsMovimentos
    BeforePost = qryMovimentos_OperacoesBeforePost
    OnNewRecord = qryMovimentos_OperacoesNewRecord
    Left = 408
    Top = 228
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'id_operador'
        ParamType = ptInput
        Value = nil
      end>
    object qryMovimentos_Operacoesid_terminal: TLargeintField
      FieldName = 'id_terminal'
      Required = True
    end
    object qryMovimentos_Operacoesdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      Required = True
    end
    object qryMovimentos_Operacoesid_operador: TLargeintField
      FieldName = 'id_operador'
    end
    object qryMovimentos_Operacoessequencia: TWordField
      FieldName = 'sequencia'
    end
    object qryMovimentos_Operacoesid_operacao: TSmallintField
      FieldName = 'id_operacao'
      Required = True
    end
    object qryMovimentos_Operacoesid_centro: TStringField
      FieldName = 'id_centro'
      Size = 6
    end
    object qryMovimentos_Operacoeshistorico: TStringField
      FieldName = 'historico'
      Required = True
      Size = 200
    end
    object qryMovimentos_Operacoesnatureza: TStringField
      FieldName = 'natureza'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryMovimentos_Operacoesvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
  object qryMovimentos_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_terminal, data_movimento, id_operador, data_abertura, ' +
        'saldo_anterior, valor_entradas,'
      'valor_saidas, data_fechamento, data_encerramento '
      'FROM terminais_movimentos '
      'WHERE id_terminal = :id_terminal'
      ' AND id_operador = :id_operador'
      ' AND data_movimento = :data_movimento')
    Left = 56
    Top = 272
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
  end
  object qryCentros_Custos_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_centro, descricao, natureza'
      'FROM centros'
      'WHERE LENGTH(TRIM(id_centro)) = 6'
      ' &condicao'
      'ORDER BY descricao')
    Left = 56
    Top = 316
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryCentros_Custos_LookUpid_centro: TStringField
      FieldName = 'id_centro'
      Required = True
      Size = 6
    end
    object qryCentros_Custos_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
    object qryCentros_Custos_LookUpnatureza: TStringField
      FieldName = 'natureza'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object uspCancelaVenda: TUniStoredProc
    StoredProcName = 'p_CancelaVenda'
    SQL.Strings = (
      'CALL p_CancelaVenda(:pID_Venda)')
    Connection = dmConexao.conConexao
    Left = 220
    Top = 140
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pID_Venda'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'p_CancelaVenda'
  end
  object uspCalculaSaldoTerminal: TUniStoredProc
    StoredProcName = 'f_CalculaSaldoTerminal'
    SQL.Strings = (
      'SELECT f_CalculaSaldoTerminal(:p_id_terminal, :p_data_movimento)')
    Connection = dmConexao.conConexao
    Left = 220
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'p_data_movimento'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_CalculaSaldoTerminal'
  end
  object uspGeraDuplicatas_Venda: TUniStoredProc
    StoredProcName = 'p_gera_duplicatas_venda'
    SQL.Strings = (
      'CALL p_gera_duplicatas_venda(:p_id_venda)')
    Connection = dmConexao.conConexao
    Left = 220
    Top = 228
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id_venda'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'p_gera_duplicatas_venda'
  end
  object uspBaixaDuplicataVendaRecebimento: TUniStoredProc
    StoredProcName = 'p_baixa_duplicatas_venda_recebimento'
    SQL.Strings = (
      'CALL p_baixa_duplicatas_venda_recebimento(:p_id_venda)')
    Connection = dmConexao.conConexao
    Left = 220
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id_venda'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'p_baixa_duplicatas_venda_recebimento'
  end
  object uspCalculaParcelasVenda: TUniStoredProc
    StoredProcName = 'p_CalculaParcelasVenda'
    SQL.Strings = (
      'CALL p_CalculaParcelasVenda(:pID_Venda)')
    Connection = dmConexao.conConexao
    Left = 408
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pID_Venda'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'p_CalculaParcelasVenda'
  end
  object qryTerminais_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_terminal, id_local, descricao, numero, fiscal, tipo_do' +
        'cumento_fiscal, endereco_fisico, id_conta,'
      
        'id_balanca_acoplada, id_token, etiqueta_prefixo, etiqueta_codigo' +
        '_inicio, etiqueta_codigo_tamanho,'
      
        'balanca_acoplada_porta_serial, danfe_logomarca_arquivo, danfe_lo' +
        'gomarca_expandir, dfe_forma_emissao,'
      
        'contingencia_motivo, salvar_resposta_envio, salvar_resposta_envi' +
        'o_caminho, ws_ambiente, ws_visualizar_mensagens,'
      
        'certificado_caminho, certificado_senha, certificado_serie, proxy' +
        '_host, proxy_porta, proxy_usuario, proxy_senha,'
      
        'email_host, email_porta, email_usuario, email_senha, email_assun' +
        'to, email_ssl, email_mensagem, '
      
        'balanca_acoplada_tempo_limite, sequencia_documento, id_cliente_c' +
        'onsumidor, id_condicao_pagamento,'
      
        'sequencia_nfe, serie_nfe, sequencia_nfce, serie_nfce, operacao_o' +
        'ffline, emissor_cupom, emissor_nfe, emissor_nfce,'
      'versao_xml'
      'FROM terminais'
      '&condicao'
      'ORDER BY &ordem')
    Left = 56
    Top = 359
    MacroData = <
      item
        Name = 'condicao'
      end
      item
        Name = 'ordem'
        Value = 'id_terminal'
      end>
  end
  object qryPreVendas: TUniQuery
    UpdatingTable = 'prevendas'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT p.id_prevenda, p.data_movimento, p.documento, p.id_client' +
        'e, c.razao AS razao_cliente, p.logradouro_entrega, p.numero_entr' +
        'ega, p.complemento_entrega,'
      
        'p.bairro_entrega, p.referencia_entrega, p.id_pais_entrega, p.id_' +
        'estado_entrega, p.id_cidade_entrega, p.cep_entrega, p.telefone_e' +
        'ntrega,'
      
        'p.email_cliente, p.contato_entrega, p.id_condicao, cp.descricao ' +
        'AS descricao_condicao, p.parcelas, p.id_preco, p.data_entrega, p' +
        '.id_representante, p.percent_comissao,'
      
        'p.valor_entrada, p.valor_bruto, p.valor_acrescimo, p.valor_desco' +
        'nto, p.valor_troca,'
      
        '(p.valor_bruto + p.valor_acrescimo - p.valor_desconto - p.valor_' +
        'troca) AS valor_liquido,'
      
        'p.valor_recebido, p.valor_troco, p.observacao, p.tipo_documento_' +
        'fiscal, p.id_status, p.id_venda'
      'FROM prevendas p'
      '   INNER JOIN condicoes cp'
      '      ON p.id_condicao = cp.id_condicao'
      '   LEFT OUTER JOIN vw_clientes c'
      '      ON p.id_cliente = c.id_parceiro'
      '   LEFT OUTER JOIN prevendas_parcelas pp'
      
        '      ON p.id_prevenda = pp.id_prevenda AND pp.parcela = 1 AND p' +
        'p.prazo = 0'
      'WHERE p.documento = :documento'
      'ORDER BY p.id_prevenda')
    AfterOpen = qryPreVendasAfterOpen
    BeforeClose = qryPreVendasBeforeClose
    OnCalcFields = qryPreVendasCalcFields
    Left = 760
    Top = 8
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'documento'
        ParamType = ptInput
        Value = nil
      end>
    object qryPreVendasid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
    end
    object qryPreVendasdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      Required = True
    end
    object qryPreVendasdocumento: TLargeintField
      FieldName = 'documento'
    end
    object qryPreVendasid_cliente: TLargeintField
      FieldName = 'id_cliente'
      Required = True
    end
    object qryPreVendasrazao_cliente: TStringField
      FieldName = 'razao_cliente'
      ReadOnly = True
      Size = 60
    end
    object qryPreVendaslogradouro_entrega: TStringField
      FieldName = 'logradouro_entrega'
      Size = 60
    end
    object qryPreVendasnumero_entrega: TStringField
      FieldName = 'numero_entrega'
      Size = 10
    end
    object qryPreVendascomplemento_entrega: TStringField
      FieldName = 'complemento_entrega'
    end
    object qryPreVendasbairro_entrega: TStringField
      FieldName = 'bairro_entrega'
      Size = 40
    end
    object qryPreVendasreferencia_entrega: TStringField
      FieldName = 'referencia_entrega'
      Size = 60
    end
    object qryPreVendasid_pais_entrega: TStringField
      FieldName = 'id_pais_entrega'
      FixedChar = True
      Size = 4
    end
    object qryPreVendasid_estado_entrega: TStringField
      FieldName = 'id_estado_entrega'
      FixedChar = True
      Size = 2
    end
    object qryPreVendasid_cidade_entrega: TStringField
      FieldName = 'id_cidade_entrega'
      FixedChar = True
      Size = 7
    end
    object qryPreVendascep_entrega: TStringField
      FieldName = 'cep_entrega'
      FixedChar = True
      Size = 8
    end
    object qryPreVendastelefone_entrega: TStringField
      FieldName = 'telefone_entrega'
      Size = 11
    end
    object qryPreVendasemail_cliente: TStringField
      FieldName = 'email_cliente'
      Size = 255
    end
    object qryPreVendascontato_entrega: TStringField
      FieldName = 'contato_entrega'
      Size = 30
    end
    object qryPreVendasid_condicao: TWordField
      FieldName = 'id_condicao'
    end
    object qryPreVendasdescricao_condicao: TStringField
      FieldName = 'descricao_condicao'
      ReadOnly = True
      Size = 60
    end
    object qryPreVendasparcelas: TWordField
      FieldName = 'parcelas'
    end
    object qryPreVendasid_preco: TWordField
      FieldName = 'id_preco'
    end
    object qryPreVendasdata_entrega: TDateTimeField
      FieldName = 'data_entrega'
    end
    object qryPreVendasid_representante: TLargeintField
      FieldName = 'id_representante'
    end
    object qryPreVendaspercent_comissao: TFloatField
      FieldName = 'percent_comissao'
    end
    object qryPreVendasvalor_entrada: TFloatField
      FieldName = 'valor_entrada'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendasvalor_bruto: TFloatField
      FieldName = 'valor_bruto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendasvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendasvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendasvalor_troca: TFloatField
      FieldName = 'valor_troca'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendasvalor_liquido: TFloatField
      FieldName = 'valor_liquido'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendasvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendasvalor_receber: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_receber'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object qryPreVendasvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
    object qryPreVendasTroco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'troco'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object qryPreVendasobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object qryPreVendastipo_documento_fiscal: TStringField
      FieldName = 'tipo_documento_fiscal'
      FixedChar = True
      Size = 1
    end
    object qryPreVendasid_status: TWordField
      FieldName = 'id_status'
      Required = True
    end
    object qryPreVendasid_venda: TLargeintField
      FieldName = 'id_venda'
    end
  end
  object dsPreVendas: TDataSource
    DataSet = qryPreVendas
    Left = 760
    Top = 52
  end
  object qryPreVendas_Produtos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT i.id_prevenda, i.item, i.id_produto, i.codigo_barras, i.d' +
        'escricao, i.descricao_marca, i.referencia,'
      
        'i.apresentacao, i.id_unidade, u.sigla AS sigla_unidade, i.quanti' +
        'dade, i.peso_bruto, '
      
        'i.preco_unitario, i.preco_venda, i.percentual_acrescimo, i.valor' +
        '_acrescimo, '
      
        'i.percentual_desconto, i.valor_desconto, i.preco_total, p.preco_' +
        'custo'
      'FROM vw_prevendas_produtos i'
      '   INNER JOIN vw_produtos p'
      '      ON i.id_produto = p.id_produto'
      '   INNER JOIN unidades u'
      '      ON i.id_unidade = u.id_unidade'
      'WHERE i.id_prevenda = :id_prevenda'
      'ORDER BY i.item')
    MasterSource = dsPreVendas
    AfterOpen = qryPreVendas_ProdutosAfterOpen
    BeforeClose = qryPreVendas_ProdutosBeforeClose
    Left = 760
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prevenda'
        Value = nil
      end>
    object qryPreVendas_Produtosid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
      Required = True
    end
    object qryPreVendas_Produtositem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryPreVendas_Produtosid_produto: TLargeintField
      FieldName = 'id_produto'
      Required = True
    end
    object qryPreVendas_Produtoscodigo_barras: TStringField
      FieldName = 'codigo_barras'
    end
    object qryPreVendas_Produtosdescricao: TMemoField
      FieldName = 'descricao'
      ReadOnly = True
      BlobType = ftMemo
      Size = 60
    end
    object qryPreVendas_Produtosdescricao_marca: TStringField
      FieldName = 'descricao_marca'
      ReadOnly = True
      Size = 30
    end
    object qryPreVendas_Produtosreferencia: TStringField
      FieldName = 'referencia'
      ReadOnly = True
      Size = 30
    end
    object qryPreVendas_Produtosapresentacao: TStringField
      FieldName = 'apresentacao'
      ReadOnly = True
      Size = 30
    end
    object qryPreVendas_Produtosid_unidade: TWordField
      FieldName = 'id_unidade'
      Required = True
    end
    object qryPreVendas_Produtossigla_unidade: TStringField
      FieldName = 'sigla_unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qryPreVendas_Produtosquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qryPreVendas_Produtospeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object qryPreVendas_Produtospreco_unitario: TFloatField
      FieldName = 'preco_unitario'
      Required = True
    end
    object qryPreVendas_Produtospreco_venda: TFloatField
      FieldName = 'preco_venda'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendas_Produtospercentual_acrescimo: TFloatField
      FieldName = 'percentual_acrescimo'
    end
    object qryPreVendas_Produtosvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qryPreVendas_Produtospercentual_desconto: TFloatField
      FieldName = 'percentual_desconto'
      DisplayFormat = '##0.00 %'
      EditFormat = '##0.00 %'
    end
    object qryPreVendas_Produtosvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendas_Produtospreco_total: TFloatField
      FieldName = 'preco_total'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qryPreVendas_Produtospreco_custo: TFloatField
      FieldName = 'preco_custo'
      ReadOnly = True
    end
  end
  object qryPreVendas_Parcelas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_prevenda, parcela, prazo, data_vencimento, valor_parce' +
        'la'
      'FROM prevendas_parcelas'
      'WHERE id_prevenda = :id_prevenda'
      'ORDER BY parcela')
    MasterSource = dsPreVendas
    Left = 760
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prevenda'
        Value = nil
      end>
    object qryPreVendas_Parcelasid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
      Required = True
    end
    object qryPreVendas_Parcelasparcela: TWordField
      FieldName = 'parcela'
      Required = True
    end
    object qryPreVendas_Parcelasprazo: TWordField
      FieldName = 'prazo'
      Required = True
    end
    object qryPreVendas_Parcelasdata_vencimento: TDateTimeField
      FieldName = 'data_vencimento'
      Required = True
    end
    object qryPreVendas_Parcelasvalor_parcela: TFloatField
      FieldName = 'valor_parcela'
    end
  end
  object qryPreVendas_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_prevenda, item, id_transacao, rede, nsu, valor_recebid' +
        'o, valor_troco'
      'FROM prevendas_recebimentos'
      'WHERE id_prevenda = :id_prevenda'
      'ORDER BY item')
    MasterSource = dsPreVendas
    BeforePost = qryPreVendas_RecebimentosBeforePost
    AfterPost = qryPreVendas_RecebimentosAfterPost
    OnNewRecord = qryPreVendas_RecebimentosNewRecord
    Left = 760
    Top = 312
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_prevenda'
        ParamType = ptInput
        Value = nil
      end>
    object qryPreVendas_Recebimentosid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
      Required = True
    end
    object qryPreVendas_Recebimentositem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryPreVendas_Recebimentosid_transacao: TWordField
      FieldName = 'id_transacao'
      Required = True
    end
    object qryPreVendas_Recebimentosrede: TStringField
      FieldName = 'rede'
      Size = 255
    end
    object qryPreVendas_Recebimentosnsu: TStringField
      FieldName = 'nsu'
      Size = 255
    end
    object qryPreVendas_Recebimentosvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryPreVendas_Recebimentosvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
  end
  object qryPreVendas_Trocas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_prevenda, item, id_produto, id_unidade, quantidade, pe' +
        'so_bruto, preco_unitario, valor_desconto'
      'FROM prevendas_trocas'
      'WHERE id_prevenda = :id_prevenda'
      'ORDER BY item')
    MasterSource = dsPreVendas
    Left = 760
    Top = 180
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_prevenda'
        ParamType = ptInput
        Value = nil
      end>
    object qryPreVendas_Trocasid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
      Required = True
    end
    object qryPreVendas_Trocasitem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryPreVendas_Trocasid_produto: TLargeintField
      FieldName = 'id_produto'
      Required = True
    end
    object qryPreVendas_Trocasid_unidade: TWordField
      FieldName = 'id_unidade'
      Required = True
    end
    object qryPreVendas_Trocasquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qryPreVendas_Trocaspeso_bruto: TFloatField
      FieldName = 'peso_bruto'
      Required = True
    end
    object qryPreVendas_Trocaspreco_unitario: TFloatField
      FieldName = 'preco_unitario'
      Required = True
    end
    object qryPreVendas_Trocasvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      Required = True
    end
  end
  object qryPreVendas_Brindes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_prevenda, item, id_produto, codigo_barras, descricao, ' +
        'id_unidade, quantidade, peso_bruto, preco_custo'
      'FROM prevendas_brindes'
      'WHERE id_prevenda = :id_prevenda'
      'ORDER BY item')
    MasterSource = dsPreVendas
    Left = 760
    Top = 224
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_prevenda'
        ParamType = ptInput
        Value = nil
      end>
    object qryPreVendas_Brindesid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
      Required = True
    end
    object qryPreVendas_Brindesitem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryPreVendas_Brindesid_produto: TLargeintField
      FieldName = 'id_produto'
      Required = True
    end
    object qryPreVendas_Brindescodigo_barras: TStringField
      FieldName = 'codigo_barras'
    end
    object qryPreVendas_Brindesdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object qryPreVendas_Brindesid_unidade: TWordField
      FieldName = 'id_unidade'
      Required = True
    end
    object qryPreVendas_Brindesquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qryPreVendas_Brindespeso_bruto: TFloatField
      FieldName = 'peso_bruto'
      Required = True
    end
    object qryPreVendas_Brindespreco_custo: TFloatField
      FieldName = 'preco_custo'
      Required = True
    end
  end
  object qryPreVendas_Produtos_Saidas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT pps.id_prevenda, pps.item, pps.id_estabelecimento, pps.id' +
        '_local, l.fantasia AS fantasia_local, pps.quantidade, pps.peso_b' +
        'ruto '
      'FROM prevendas_produtos_saidas pps'
      '   INNER JOIN vw_locais l'
      '      ON pps.id_local = l.id_local'
      'WHERE pps.id_prevenda = :id_prevenda'
      ' AND pps.item = :item'
      'ORDER BY pps.id_estabelecimento, l.fantasia')
    MasterSource = ds_PreVendas_Produtos
    CachedUpdates = True
    Left = 760
    Top = 356
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_prevenda'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWord
        Name = 'item'
        ParamType = ptInput
        Value = nil
      end>
    object qryPreVendas_Produtos_Saidasid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
      Required = True
    end
    object qryPreVendas_Produtos_Saidasitem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryPreVendas_Produtos_Saidasid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
      Required = True
    end
    object qryPreVendas_Produtos_Saidasid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryPreVendas_Produtos_Saidasfantasia_local: TStringField
      FieldName = 'fantasia_local'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qryPreVendas_Produtos_Saidasquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qryPreVendas_Produtos_Saidaspeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
  end
  object ds_PreVendas_Produtos: TDataSource
    DataSet = qryPreVendas_Produtos
    Left = 760
    Top = 140
  end
  object qryTransferencias: TUniQuery
    UpdatingTable = 'transferencias'
    KeyFields = 'id_transferencia'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_transferencia, data_registro, id_estabelecimento_saida' +
        ', id_local_saida, data_movimento, id_estabelecimento_entrada, id' +
        '_local_entrada, documento, valor_total, '
      'observacao, id_usuario'
      'FROM transferencias'
      'WHERE id_estabelecimento_saida = :id_estabelecimento_saida'
      ' AND id_local_saida = :id_local_saida'
      ' AND data_movimento = :data_movimento'
      ' AND id_estabelecimento_entrada = :id_estabelecimento_entrada'
      ' AND id_local_entrada = :id_local_entrada'
      ' AND documento = :documento'
      'ORDER BY id_transferencia')
    AfterOpen = qryTransferenciasAfterOpen
    BeforeClose = qryTransferenciasBeforeClose
    BeforePost = qryTransferenciasBeforePost
    OnNewRecord = qryTransferenciasNewRecord
    Left = 908
    Top = 8
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_estabelecimento_saida'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWord
        Name = 'id_local_saida'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'id_estabelecimento_entrada'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWord
        Name = 'id_local_entrada'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'documento'
        ParamType = ptInput
        Value = nil
      end>
    object qryTransferenciasid_transferencia: TLargeintField
      FieldName = 'id_transferencia'
    end
    object qryTransferenciasdata_registro: TDateTimeField
      FieldName = 'data_registro'
      Required = True
    end
    object qryTransferenciasid_local_saida: TWordField
      FieldName = 'id_local_saida'
      Required = True
    end
    object qryTransferenciasdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      Required = True
    end
    object qryTransferenciasid_local_entrada: TWordField
      FieldName = 'id_local_entrada'
      Required = True
    end
    object qryTransferenciasdocumento: TLargeintField
      FieldName = 'documento'
      Required = True
    end
    object qryTransferenciasvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object qryTransferenciasobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object qryTransferenciasid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
  end
  object dsTransferencias: TDataSource
    DataSet = qryTransferencias
    Left = 908
    Top = 52
  end
  object qryTransferencias_Produtos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_transferencia, item, id_produto, codigo_barras, descri' +
        'cao, id_unidade, quantidade, peso_bruto, preco_unitario'
      'FROM transferencias_produtos'
      'WHERE id_transferencia = :id_transferencia'
      'ORDER BY item')
    MasterSource = dsTransferencias
    OnNewRecord = qryTransferencias_ProdutosNewRecord
    Left = 908
    Top = 96
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_transferencia'
        ParamType = ptInput
        Value = nil
      end>
    object qryTransferencias_Produtosid_transferencia: TLargeintField
      FieldName = 'id_transferencia'
      Required = True
    end
    object qryTransferencias_Produtositem: TWordField
      FieldName = 'item'
      Required = True
    end
    object qryTransferencias_Produtosid_produto: TLargeintField
      FieldName = 'id_produto'
      Required = True
    end
    object qryTransferencias_Produtoscodigo_barras: TStringField
      FieldName = 'codigo_barras'
    end
    object qryTransferencias_Produtosdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object qryTransferencias_Produtosquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object qryTransferencias_Produtosid_unidade: TWordField
      FieldName = 'id_unidade'
      Required = True
    end
    object qryTransferencias_Produtospeso_bruto: TFloatField
      FieldName = 'peso_bruto'
      Required = True
    end
    object qryTransferencias_Produtospreco_unitario: TFloatField
      FieldName = 'preco_unitario'
    end
  end
  object uspGetSequenciaAutenticacao: TUniStoredProc
    StoredProcName = 'f_get_sequencia_autenticacao'
    SQL.Strings = (
      'SELECT f_get_sequencia_autenticacao(:p_id_terminal)')
    Connection = dmConexao.conConexao
    Left = 220
    Top = 316
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_terminal'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_get_sequencia_autenticacao'
  end
  object qryRepresentantes_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_representante, id_pessoa, nome, login, senha, cpf_nume' +
        'ro, telefone, celular, comissao, desconto_maximo'
      'FROM vw_representantes'
      '&condicao'
      'ORDER BY id_representante')
    Left = 220
    Top = 360
    MacroData = <
      item
        Name = 'condicao'
      end>
  end
  object qryRepresentantes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_representante, nome'
      'FROM vw_representantes'
      'WHERE ativo = '#39'S'#39
      'ORDER BY nome'
      '')
    Left = 408
    Top = 316
    object qryRepresentantesid_representante: TLargeintField
      FieldName = 'id_representante'
      Required = True
    end
    object qryRepresentantesnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 60
    end
  end
  object qryDuplicatas_Baixas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_duplicata, parcela, data, id_transacao, id_terminal, i' +
        'd_operador, id_conta, historico, valor'
      'FROM duplicatas_baixas'
      'WHERE id_duplicata = :id_duplicata'
      'ORDER BY parcela')
    BeforePost = qryDuplicatas_BaixasBeforePost
    OnNewRecord = qryDuplicatas_BaixasNewRecord
    Left = 408
    Top = 360
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_duplicata'
        ParamType = ptInput
        Value = nil
      end>
  end
  object usqlAtualizaBaixaDuplicatas: TUniSQL
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'UPDATE duplicatas d'
      
        '   LEFT OUTER JOIN (SELECT id_duplicata, MAX(DATA) AS data_baixa' +
        ', SUM(valor) AS valor_baixado'
      '                    FROM duplicatas_baixas'
      '                    GROUP BY id_duplicata) b'
      '      ON d.id_duplicata = b.id_duplicata'
      
        'SET d.data_baixa = b.data_baixa, d.valor_baixado = COALESCE(b.va' +
        'lor_baixado, 0)'
      'WHERE d.id_duplicata = :id_duplicata')
    Left = 592
    Top = 360
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_duplicata'
        ParamType = ptInput
        Value = nil
      end>
  end
  object uspGetTerminalSaldoOperador: TUniStoredProc
    StoredProcName = 'f_get_terminal_saldo_operador'
    SQL.Strings = (
      
        'SELECT f_get_terminal_saldo_operador(:p_id_terminal, :p_data_mov' +
        'imento, :p_id_operador)')
    Connection = dmConexao.conConexao
    Left = 908
    Top = 140
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_terminal'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'p_data_movimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_operador'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_get_terminal_saldo_operador'
  end
  object uspPodeAutenticarPreVenda: TUniStoredProc
    StoredProcName = 'f_pode_autenticar_prevenda'
    SQL.Strings = (
      'SELECT f_pode_autenticar_prevenda(:p_id_prevenda)')
    Connection = dmConexao.conConexao
    Left = 912
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'Result'
        ParamType = ptResult
        Size = 1
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_prevenda'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_pode_autenticar_prevenda'
  end
  object uspBaixaPreVenda: TUniStoredProc
    StoredProcName = 'f_baixa_prevenda'
    SQL.Strings = (
      'SELECT f_baixa_prevenda(:p_id_prevenda)')
    Connection = dmConexao.conConexao
    Left = 912
    Top = 228
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_prevenda'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_baixa_prevenda'
  end
  object qryMesas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_mesa, descricao, numero, id_status'
      'FROM mesas'
      'ORDER BY numero')
    Left = 56
    Top = 404
    object qryMesasid_mesa: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_mesa'
    end
    object qryMesasdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object qryMesasnumero: TWordField
      FieldName = 'numero'
    end
    object qryMesasid_status: TWordField
      FieldName = 'id_status'
    end
  end
  object qryCategorias: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_categoria, descricao, imagem'
      'FROM categorias'
      'ORDER BY descricao')
    Left = 220
    Top = 404
    object qryCategoriasid_categoria: TWordField
      FieldName = 'id_categoria'
    end
    object qryCategoriasdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object qryCategoriasimagem: TBlobField
      FieldName = 'imagem'
    end
  end
  object qrySubCategorias: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_categoria, id_subcategoria, descricao, imagem'
      'FROM subcategorias'
      'WHERE id_categoria = :id_categoria'
      'ORDER BY descricao')
    Left = 408
    Top = 404
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_categoria'
        ParamType = ptInput
        Value = nil
      end>
    object qrySubCategoriasid_categoria: TWordField
      FieldName = 'id_categoria'
      Required = True
    end
    object qrySubCategoriasid_subcategoria: TWordField
      FieldName = 'id_subcategoria'
      Required = True
    end
    object qrySubCategoriasdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object qrySubCategoriasimagem: TBlobField
      FieldName = 'imagem'
    end
  end
  object qryProdutos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_produto, codigo_barras, descricao, descricao_marca, re' +
        'ferencia, apresentacao, id_unidade, sigla_unidade, preco_venda, '
      
        'f_get_estoque_disponivel(id_produto, CURRENT_DATE()) AS saldo_di' +
        'sponivel,'
      'imagem'
      'FROM vw_produtos'
      'WHERE id_categoria = :id_categoria'
      ' AND id_subcategoria = :id_subcategoria'
      ' AND f_get_estoque_disponivel(id_produto, CURRENT_DATE()) > 0'
      'ORDER BY descricao')
    Left = 592
    Top = 404
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_categoria'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWord
        Name = 'id_subcategoria'
        ParamType = ptInput
        Value = nil
      end>
    object qryProdutosid_produto: TLargeintField
      FieldName = 'id_produto'
      Required = True
    end
    object qryProdutoscodigo_barras: TStringField
      FieldName = 'codigo_barras'
      Size = 13
    end
    object qryProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object qryProdutosdescricao_marca: TStringField
      FieldName = 'descricao_marca'
      Size = 30
    end
    object qryProdutosreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object qryProdutosapresentacao: TStringField
      FieldName = 'apresentacao'
      Size = 30
    end
    object qryProdutosid_unidade: TWordField
      FieldName = 'id_unidade'
    end
    object qryProdutossigla_unidade: TStringField
      FieldName = 'sigla_unidade'
      Size = 3
    end
    object qryProdutospreco_venda: TFloatField
      FieldName = 'preco_venda'
    end
    object qryProdutossaldo_disponivel: TFloatField
      FieldName = 'saldo_disponivel'
      ReadOnly = True
    end
    object qryProdutosimagem: TBlobField
      FieldName = 'imagem'
    end
  end
  object qryClientes_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_parceiro, razao'
      'FROM vw_clientes'
      'ORDER BY razao')
    Left = 592
    Top = 448
    object qryClientes_LookUpid_parceiro: TLargeintField
      FieldName = 'id_parceiro'
      Required = True
    end
    object qryClientes_LookUprazao: TStringField
      FieldName = 'razao'
      Size = 60
    end
  end
  object spGetClientePontuacao: TUniStoredProc
    StoredProcName = 'f_get_cliente_pontuacao'
    SQL.Strings = (
      'SELECT f_get_cliente_pontuacao(:p_id_cliente)')
    Connection = dmConexao.conConexao
    Left = 760
    Top = 400
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_cliente'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_get_cliente_pontuacao'
  end
  object spRestagaPontuacaoCliente: TUniStoredProc
    StoredProcName = 'f_resgata_pontuacao_cliente'
    SQL.Strings = (
      'SELECT f_resgata_pontuacao_cliente(:p_id_cliente)')
    Connection = dmConexao.conConexao
    Left = 760
    Top = 444
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_cliente'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_resgata_pontuacao_cliente'
  end
  object spGeraPontuacaoVenda: TUniStoredProc
    StoredProcName = 'p_gera_pontuacao_venda'
    SQL.Strings = (
      'CALL p_gera_pontuacao_venda(:p_id_venda)')
    Connection = dmConexao.conConexao
    Left = 408
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id_venda'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'p_gera_pontuacao_venda'
  end
  object qryCampanhas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_campanha, nome, percentual_desconto, percentual_comiss' +
        'ao'
      'FROM campanhas'
      'WHERE id_estabelecimento = 1'
      ' AND CURRENT_DATE BETWEEN vigencia_inicio AND vigencia_fim')
    Left = 220
    Top = 448
    object qryCampanhasid_campanha: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_campanha'
    end
    object qryCampanhasnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 255
    end
    object qryCampanhaspercentual_desconto: TFloatField
      FieldName = 'percentual_desconto'
      Required = True
    end
    object qryCampanhaspercentual_comissao: TFloatField
      FieldName = 'percentual_comissao'
      Required = True
    end
  end
  object qryCampanhas_Cupons: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_campanha, id_cupom, codigo, id_promotor, id_status'
      'FROM campanhas_cupons'
      'WHERE id_campanha = :id_campanha'
      ' &condicao'
      'ORDER BY id_cupom')
    BeforePost = qryCampanhas_CuponsBeforePost
    Left = 56
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_campanha'
        ParamType = ptInput
        Value = nil
      end>
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryCampanhas_Cuponsid_campanha: TLargeintField
      FieldName = 'id_campanha'
      Required = True
    end
    object qryCampanhas_Cuponsid_cupom: TWordField
      FieldName = 'id_cupom'
      Required = True
    end
    object qryCampanhas_Cuponscodigo: TStringField
      FieldName = 'codigo'
      Size = 255
    end
    object qryCampanhas_Cuponsid_promotor: TWordField
      FieldName = 'id_promotor'
    end
    object qryCampanhas_Cuponsid_status: TWordField
      FieldName = 'id_status'
      Required = True
    end
  end
  object qryPromotores: TUniQuery
    UpdatingTable = 'promotores'
    KeyFields = 'id_promotor'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_promotor, id_pessoa, comissao, ativo'
      'FROM promotores'
      '&condicao'
      'ORDER BY id_promotor')
    Left = 912
    Top = 272
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryPromotoresid_promotor: TLargeintField
      FieldName = 'id_promotor'
    end
    object qryPromotoresid_pessoa: TLargeintField
      FieldName = 'id_pessoa'
      Required = True
    end
    object qryPromotorescomissao: TFloatField
      FieldName = 'comissao'
      Required = True
    end
    object qryPromotoresativo: TStringField
      FieldName = 'ativo'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryPessoas: TUniQuery
    UpdatingTable = 'pessoas'
    KeyFields = 'id_pessoa'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_pessoa, nome'
      'FROM pessoas'
      '&condicao'
      'ORDER BY nome')
    Left = 912
    Top = 316
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryPessoasid_pessoa: TLargeintField
      FieldName = 'id_pessoa'
    end
    object qryPessoasnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 60
    end
  end
  object qryTerminais_Transacoes_TEF: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT tm.id_terminal, tm.id_modalidade, t.id_transacao, t.descr' +
        'icao, m.troco,'
      't.indice_tef'
      'FROM terminais_modalidades tm'
      '   INNER JOIN modalidades m'
      '      ON tm.id_modalidade = m.id_modalidade'
      '   INNER JOIN transacoes t'
      '      ON tm.id_modalidade = t.id_modalidade'
      'WHERE tm.id_terminal = :id_terminal'
      ' AND m.tef = '#39'S'#39
      ' AND t.indice_tef IS NOT NULL')
    MasterSource = dsTerminais
    MasterFields = 'id_terminal'
    DetailFields = 'id_terminal'
    Left = 220
    Top = 492
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end>
  end
end
