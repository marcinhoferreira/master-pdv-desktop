object dmCadastro: TdmCadastro
  OldCreateOrder = False
  Height = 503
  Width = 712
  object qryPaises_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_pais, descricao'
      'FROM dbibge.paises'
      'ORDER BY descricao')
    AfterOpen = qryPaises_LookUpAfterOpen
    BeforeClose = qryPaises_LookUpBeforeClose
    Left = 41
    Top = 54
    object qryPaises_LookUpid_pais: TStringField
      FieldName = 'id_pais'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryPaises_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
  end
  object dsPaises_LookUp: TDataSource
    DataSet = qryPaises_LookUp
    Left = 41
    Top = 98
  end
  object qryEstados_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_estado, descricao, sigla, id_pais'
      'FROM dbibge.estados'
      'WHERE id_pais = :id_pais'
      'ORDER BY descricao')
    MasterSource = dsPaises_LookUp
    AfterOpen = qryEstados_LookUpAfterOpen
    BeforeClose = qryEstados_LookUpBeforeClose
    Left = 41
    Top = 231
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_pais'
        Value = nil
      end>
    object qryEstados_LookUpid_estado: TStringField
      FieldName = 'id_estado'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryEstados_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object qryEstados_LookUpsigla: TStringField
      FieldName = 'sigla'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryEstados_LookUpid_pais: TStringField
      FieldName = 'id_pais'
      Required = True
      FixedChar = True
      Size = 4
    end
  end
  object dsEstados_LookUp: TDataSource
    DataSet = qryEstados_LookUp
    Left = 41
    Top = 275
  end
  object qryCidades_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_cidade, descricao, id_estado'
      'FROM dbibge.cidades'
      'WHERE id_estado = :id_estado'
      'ORDER BY id_cidade')
    MasterSource = dsEstados_LookUp
    Left = 41
    Top = 405
    ParamData = <
      item
        DataType = ftString
        Name = 'id_estado'
        ParamType = ptInput
        Value = nil
      end>
    object qryCidades_LookUpid_cidade: TStringField
      FieldName = 'id_cidade'
      Required = True
      FixedChar = True
      Size = 7
    end
    object qryCidades_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object qryCidades_LookUpid_estado: TStringField
      FieldName = 'id_estado'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object qryEstabelecimentos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO locais'
      
        '  (id_local, tipo_pessoa, cnpj, insc_estadual, insc_est_subst, i' +
        'nsc_municipal, insc_suframa, razao, fantasia, logradouro, numero' +
        ', complemento, bairro, id_cidade, id_estado, id_pais, cep, telef' +
        'one, fax, email, contato, cnae_fiscal, natureza_juridica, regime' +
        '_tributario, logomarca)'
      'VALUES'
      
        '  (:id_local, :tipo_pessoa, :cnpj, :insc_estadual, :insc_est_sub' +
        'st, :insc_municipal, :insc_suframa, :razao, :fantasia, :logradou' +
        'ro, :numero, :complemento, :bairro, :id_cidade, :id_estado, :id_' +
        'pais, :cep, :telefone, :fax, :email, :contato, :cnae_fiscal, :na' +
        'tureza_juridica, :regime_tributario, :logomarca)')
    SQLDelete.Strings = (
      'DELETE FROM locais'
      'WHERE'
      '  id_local = :Old_id_local')
    SQLUpdate.Strings = (
      'UPDATE locais'
      'SET'
      
        '  id_local = :id_local, tipo_pessoa = :tipo_pessoa, cnpj = :cnpj' +
        ', insc_estadual = :insc_estadual, insc_est_subst = :insc_est_sub' +
        'st, insc_municipal = :insc_municipal, insc_suframa = :insc_sufra' +
        'ma, razao = :razao, fantasia = :fantasia, logradouro = :logradou' +
        'ro, numero = :numero, complemento = :complemento, bairro = :bair' +
        'ro, id_cidade = :id_cidade, id_estado = :id_estado, id_pais = :i' +
        'd_pais, cep = :cep, telefone = :telefone, fax = :fax, email = :e' +
        'mail, contato = :contato, cnae_fiscal = :cnae_fiscal, natureza_j' +
        'uridica = :natureza_juridica, regime_tributario = :regime_tribut' +
        'ario, logomarca = :logomarca'
      'WHERE'
      '  id_local = :Old_id_local')
    SQLLock.Strings = (
      'SELECT * FROM locais'
      'WHERE'
      '  id_local = :Old_id_local'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id_local, tipo_pessoa, cnpj, insc_estadual, insc_est_subs' +
        't, insc_municipal, insc_suframa, razao, fantasia, logradouro, nu' +
        'mero, complemento, bairro, id_cidade, id_estado, id_pais, cep, t' +
        'elefone, fax, email, contato, cnae_fiscal, natureza_juridica, re' +
        'gime_tributario, logomarca FROM locais'
      'WHERE'
      '  id_local = :id_local')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM locais')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_local, tipo_pessoa, cnpj, insc_estadual, insc_est_subs' +
        't, insc_municipal, insc_suframa, '
      
        'razao, fantasia, logradouro, numero, complemento, bairro, id_cid' +
        'ade, descricao_cidade, id_estado,'
      
        'sigla_estado, id_pais, descricao_pais, cep, telefone, fax, email' +
        ', contato, cnae_fiscal, '
      'natureza_juridica, regime_tributario, logomarca'
      'FROM vw_locais'
      'WHERE tipo_pessoa = '#39'J'#39
      ' &condicao'
      'ORDER BY razao')
    Left = 180
    Top = 8
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryEstabelecimentosid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryEstabelecimentostipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object qryEstabelecimentoscnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object qryEstabelecimentosinsc_estadual: TStringField
      FieldName = 'insc_estadual'
    end
    object qryEstabelecimentosinsc_est_subst: TStringField
      FieldName = 'insc_est_subst'
    end
    object qryEstabelecimentosinsc_municipal: TStringField
      FieldName = 'insc_municipal'
    end
    object qryEstabelecimentosinsc_suframa: TStringField
      FieldName = 'insc_suframa'
    end
    object qryEstabelecimentosrazao: TStringField
      FieldName = 'razao'
      Required = True
      Size = 60
    end
    object qryEstabelecimentosfantasia: TStringField
      FieldName = 'fantasia'
      Required = True
      Size = 60
    end
    object qryEstabelecimentoslogradouro: TStringField
      FieldName = 'logradouro'
      Size = 60
    end
    object qryEstabelecimentosnumero: TStringField
      FieldName = 'numero'
      Size = 15
    end
    object qryEstabelecimentoscomplemento: TStringField
      FieldName = 'complemento'
    end
    object qryEstabelecimentosbairro: TStringField
      FieldName = 'bairro'
      Size = 30
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
    object qryEstabelecimentosid_pais: TStringField
      FieldName = 'id_pais'
      FixedChar = True
      Size = 4
    end
    object qryEstabelecimentosdescricao_pais: TStringField
      FieldName = 'descricao_pais'
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
      Size = 200
    end
    object qryEstabelecimentoscontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object qryEstabelecimentoscnae_fiscal: TStringField
      FieldName = 'cnae_fiscal'
      FixedChar = True
      Size = 10
    end
    object qryEstabelecimentosnatureza_juridica: TStringField
      FieldName = 'natureza_juridica'
      FixedChar = True
      Size = 4
    end
    object qryEstabelecimentosregime_tributario: TStringField
      FieldName = 'regime_tributario'
      OnGetText = qryEstabelecimentosregime_tributarioGetText
      OnSetText = qryEstabelecimentosregime_tributarioSetText
      FixedChar = True
      Size = 1
    end
    object qryEstabelecimentoslogomarca: TBlobField
      FieldName = 'logomarca'
    end
  end
  object qryDispositivos: TUniQuery
    UpdatingTable = 'dispositivos'
    KeyFields = 'id_dispositivo'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_dispositivo, descricao, tipo_dispositivo, id_modelo, v' +
        'elocidade, taxa_transmissao, id_paridade,'
      'id_bit_parada, handshake'
      'FROM dispositivos'
      'ORDER BY descricao')
    Left = 325
    Top = 7
    object qryDispositivosid_dispositivo: TLargeintField
      FieldName = 'id_dispositivo'
    end
    object qryDispositivosdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object qryDispositivosid_modelo: TWordField
      FieldName = 'id_modelo'
      OnGetText = qryDispositivosid_modeloGetText
      OnSetText = qryDispositivosid_modeloSetText
    end
    object qryDispositivostipo_dispositivo: TStringField
      FieldName = 'tipo_dispositivo'
      Required = True
      OnGetText = qryDispositivostipo_dispositivoGetText
      OnSetText = qryDispositivostipo_dispositivoSetText
      FixedChar = True
      Size = 1
    end
    object qryDispositivosvelocidade: TLargeintField
      FieldName = 'velocidade'
    end
    object qryDispositivostaxa_transmissao: TSmallintField
      FieldName = 'taxa_transmissao'
      OnGetText = qryDispositivostaxa_transmissaoGetText
      OnSetText = qryDispositivostaxa_transmissaoSetText
    end
    object qryDispositivosid_paridade: TSmallintField
      FieldName = 'id_paridade'
      OnGetText = qryDispositivosid_paridadeGetText
      OnSetText = qryDispositivosid_paridadeSetText
    end
    object qryDispositivosid_bit_parada: TSmallintField
      FieldName = 'id_bit_parada'
      OnGetText = qryDispositivosid_bit_paradaGetText
      OnSetText = qryDispositivosid_bit_paradaSetText
    end
    object qryDispositivoshandshake: TSmallintField
      FieldName = 'handshake'
      OnGetText = qryDispositivoshandshakeGetText
      OnSetText = qryDispositivoshandshakeSetText
    end
  end
  object qryTokens: TUniQuery
    UpdatingTable = 'tokens'
    KeyFields = 'id_token'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_token, id_estabelecimento, csc_id, csc_numero, data_em' +
        'issao, data_revogacao'
      'FROM tokens'
      'WHERE id_estabelecimento = :id_estabelecimento'
      'ORDER BY data_emissao DESC')
    OnNewRecord = qryTokensNewRecord
    Left = 325
    Top = 51
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryTokensid_token: TLargeintField
      FieldName = 'id_token'
    end
    object qryTokensid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
      Required = True
    end
    object qryTokenscsc_id: TLargeintField
      FieldName = 'csc_id'
      Required = True
    end
    object qryTokenscsc_numero: TStringField
      FieldName = 'csc_numero'
      Required = True
      Size = 255
    end
    object qryTokensdata_emissao: TDateTimeField
      FieldName = 'data_emissao'
    end
    object qryTokensdata_revogacao: TDateTimeField
      FieldName = 'data_revogacao'
    end
  end
  object qryEstabelecimentos_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_estabelecimento, razao_social'
      'FROM estabelecimentos'
      'WHERE id_estabelecimento = :id_estabelecimento'
      'ORDER BY razao_social')
    Left = 180
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryEstabelecimentos_LookUpid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
    end
    object qryEstabelecimentos_LookUprazao_social: TStringField
      FieldName = 'razao_social'
      Required = True
      Size = 60
    end
  end
  object qryTerminais: TUniQuery
    UpdatingTable = 'terminais'
    KeyFields = 'id_terminal'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_terminal, id_estabelecimento, id_local, descricao, num' +
        'ero, fiscal, tipo_documento_fiscal, '
      'endereco_fisico, endereco_ipv4, endereco_ipv6,'
      
        'id_conta, id_cliente_consumidor, id_condicao_pagamento, identifi' +
        'car_representante, id_representante, '
      
        'etiqueta_prefixo, etiqueta_codigo_inicio, etiqueta_codigo_tamanh' +
        'o, '
      
        'id_balanca_acoplada, balanca_acoplada_porta_serial, balanca_acop' +
        'lada_tempo_limite, '
      'impressora_padrao, '
      
        'autenticar_documento, autenticador, autenticador_id_modelo, sequ' +
        'encia_autenticacao, '
      'danfe_logomarca_arquivo, danfe_logomarca_expandir, '
      
        'dfe_forma_emissao, contingencia_motivo, salvar_resposta_envio, s' +
        'alvar_resposta_envio_caminho, '
      'ws_ambiente, ws_visualizar_mensagens, '
      
        'id_token, certificado_caminho, certificado_senha, certificado_se' +
        'rie, '
      'proxy_host, proxy_porta, proxy_usuario, proxy_senha, '
      
        'email_host, email_porta, email_usuario, email_senha, email_assun' +
        'to, email_ssl, email_mensagem, '
      'sequencia_documento, emissor_cupom, '
      
        'sequencia_nfe, serie_nfe, emissor_nfe, sequencia_nfce, serie_nfc' +
        'e, emissor_nfce, '
      'operacao_offline, '
      'versao_xml, '
      'db_provedor, db_host, db_porta, db_banco, db_login, db_password'
      'FROM terminais'
      'WHERE id_estabelecimento = :id_estabelecimento'
      'ORDER BY descricao, numero')
    OnNewRecord = qryTerminaisNewRecord
    Left = 325
    Top = 139
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryTerminaisid_terminal: TLargeintField
      FieldName = 'id_terminal'
    end
    object qryTerminaisid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
    end
    object qryTerminaisid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryTerminaisdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object qryTerminaisnumero: TLargeintField
      FieldName = 'numero'
      Required = True
    end
    object qryTerminaisfiscal: TStringField
      FieldName = 'fiscal'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaistipo_documento_fiscal: TStringField
      FieldName = 'tipo_documento_fiscal'
      OnGetText = qryTerminaistipo_documento_fiscalGetText
      OnSetText = qryTerminaistipo_documento_fiscalSetText
      FixedChar = True
      Size = 1
    end
    object qryTerminaisendereco_fisico: TStringField
      FieldName = 'endereco_fisico'
      Size = 255
    end
    object qryTerminaisdfe_forma_emissao: TStringField
      FieldName = 'dfe_forma_emissao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaiscontingencia_motivo: TStringField
      FieldName = 'contingencia_motivo'
      Size = 255
    end
    object qryTerminaisid_token: TLargeintField
      FieldName = 'id_token'
    end
    object qryTerminaisetiqueta_prefixo: TStringField
      FieldName = 'etiqueta_prefixo'
      Size = 2
    end
    object qryTerminaisetiqueta_codigo_inicio: TSmallintField
      FieldName = 'etiqueta_codigo_inicio'
    end
    object qryTerminaisetiqueta_codigo_tamanho: TSmallintField
      FieldName = 'etiqueta_codigo_tamanho'
    end
    object qryTerminaisversao_xml: TStringField
      FieldName = 'versao_xml'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisid_balanca_acoplada: TLargeintField
      FieldName = 'id_balanca_acoplada'
    end
    object qryTerminaisbalanca_acoplada_porta_serial: TStringField
      FieldName = 'balanca_acoplada_porta_serial'
      Size = 6
    end
    object qryTerminaisbalanca_acoplada_tempo_limite: TLargeintField
      FieldName = 'balanca_acoplada_tempo_limite'
    end
    object qryTerminaisdanfe_logomarca_arquivo: TStringField
      FieldName = 'danfe_logomarca_arquivo'
      Size = 255
    end
    object qryTerminaisdanfe_logomarca_expandir: TStringField
      FieldName = 'danfe_logomarca_expandir'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaissalvar_resposta_envio: TStringField
      FieldName = 'salvar_resposta_envio'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaissalvar_resposta_envio_caminho: TStringField
      FieldName = 'salvar_resposta_envio_caminho'
      Size = 255
    end
    object qryTerminaisws_ambiente: TStringField
      FieldName = 'ws_ambiente'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisws_visualizar_mensagens: TStringField
      FieldName = 'ws_visualizar_mensagens'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaiscertificado_caminho: TStringField
      FieldName = 'certificado_caminho'
      Size = 255
    end
    object qryTerminaiscertificado_senha: TStringField
      FieldName = 'certificado_senha'
      Size = 255
    end
    object qryTerminaiscertificado_serie: TStringField
      FieldName = 'certificado_serie'
      Size = 255
    end
    object qryTerminaisproxy_host: TStringField
      FieldName = 'proxy_host'
      Size = 255
    end
    object qryTerminaisproxy_porta: TLargeintField
      FieldName = 'proxy_porta'
      Required = True
    end
    object qryTerminaisproxy_usuario: TStringField
      FieldName = 'proxy_usuario'
      Size = 255
    end
    object qryTerminaisproxy_senha: TStringField
      FieldName = 'proxy_senha'
      Size = 255
    end
    object qryTerminaisemail_host: TStringField
      FieldName = 'email_host'
      Size = 255
    end
    object qryTerminaisemail_porta: TLargeintField
      FieldName = 'email_porta'
      Required = True
    end
    object qryTerminaisemail_usuario: TStringField
      FieldName = 'email_usuario'
      Size = 255
    end
    object qryTerminaisemail_senha: TStringField
      FieldName = 'email_senha'
      Size = 255
    end
    object qryTerminaisemail_assunto: TStringField
      FieldName = 'email_assunto'
      Size = 255
    end
    object qryTerminaisemail_ssl: TStringField
      FieldName = 'email_ssl'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisemail_mensagem: TMemoField
      FieldName = 'email_mensagem'
      BlobType = ftMemo
    end
    object qryTerminaissequencia_documento: TLargeintField
      FieldName = 'sequencia_documento'
      Required = True
    end
    object qryTerminaisid_conta: TWordField
      FieldName = 'id_conta'
    end
    object qryTerminaisid_cliente_consumidor: TLargeintField
      FieldName = 'id_cliente_consumidor'
    end
    object qryTerminaisid_condicao_pagamento: TWordField
      FieldName = 'id_condicao_pagamento'
    end
    object qryTerminaissequencia_nfe: TLargeintField
      FieldName = 'sequencia_nfe'
    end
    object qryTerminaisserie_nfe: TWordField
      FieldName = 'serie_nfe'
    end
    object qryTerminaissequencia_nfce: TLargeintField
      FieldName = 'sequencia_nfce'
    end
    object qryTerminaisserie_nfce: TWordField
      FieldName = 'serie_nfce'
    end
    object qryTerminaisoperacao_offline: TStringField
      FieldName = 'operacao_offline'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisemissor_cupom: TStringField
      FieldName = 'emissor_cupom'
      Size = 255
    end
    object qryTerminaisemissor_nfe: TStringField
      FieldName = 'emissor_nfe'
      Size = 255
    end
    object qryTerminaisemissor_nfce: TStringField
      FieldName = 'emissor_nfce'
      Size = 255
    end
    object qryTerminaisendereco_ipv4: TStringField
      FieldName = 'endereco_ipv4'
      Size = 255
    end
    object qryTerminaisendereco_ipv6: TStringField
      FieldName = 'endereco_ipv6'
      Size = 255
    end
    object qryTerminaisidentificar_representante: TStringField
      FieldName = 'identificar_representante'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisid_representante: TLargeintField
      FieldName = 'id_representante'
    end
    object qryTerminaisimpressora_padrao: TStringField
      FieldName = 'impressora_padrao'
      Size = 255
    end
    object qryTerminaisautenticar_documento: TStringField
      FieldName = 'autenticar_documento'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryTerminaisautenticador: TStringField
      FieldName = 'autenticador'
      Size = 255
    end
    object qryTerminaisautenticador_id_modelo: TWordField
      FieldName = 'autenticador_id_modelo'
      Required = True
      OnGetText = qryTerminaisautenticador_id_modeloGetText
      OnSetText = qryTerminaisautenticador_id_modeloSetText
    end
    object qryTerminaissequencia_autenticacao: TLargeintField
      FieldName = 'sequencia_autenticacao'
      Required = True
    end
    object qryTerminaisdb_provedor: TStringField
      FieldName = 'db_provedor'
      Size = 255
    end
    object qryTerminaisdb_host: TStringField
      FieldName = 'db_host'
      Size = 255
    end
    object qryTerminaisdb_porta: TLargeintField
      FieldName = 'db_porta'
    end
    object qryTerminaisdb_banco: TStringField
      FieldName = 'db_banco'
      Size = 255
    end
    object qryTerminaisdb_login: TStringField
      FieldName = 'db_login'
      Size = 255
    end
    object qryTerminaisdb_password: TStringField
      FieldName = 'db_password'
      Size = 255
    end
  end
  object qryTokens_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_token, id_estabelecimento, csc_id, csc_numero, data_em' +
        'issao, data_revogacao'
      'FROM tokens'
      'WHERE id_estabelecimento = :id_estabelecimento'
      'ORDER BY data_emissao DESC')
    MasterSource = dsEstabelecimentos_LookUp
    Left = 325
    Top = 95
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estabelecimento'
        ParamType = ptInput
        Value = nil
      end>
    object qryTokens_LookUpid_token: TLargeintField
      FieldName = 'id_token'
    end
    object qryTokens_LookUpid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
      Required = True
    end
    object qryTokens_LookUpcsc_id: TLargeintField
      FieldName = 'csc_id'
      Required = True
    end
    object qryTokens_LookUpcsc_numero: TStringField
      FieldName = 'csc_numero'
      Required = True
      Size = 255
    end
    object qryTokens_LookUpdata_emissao: TDateTimeField
      FieldName = 'data_emissao'
    end
    object qryTokens_LookUpdata_revogacao: TDateTimeField
      FieldName = 'data_revogacao'
    end
  end
  object dsEstabelecimentos_LookUp: TDataSource
    DataSet = qryEstabelecimentos_LookUp
    Left = 180
    Top = 96
  end
  object qryOperadores: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO operadores'
      '  (id_operador, id_usuario, tipo, id_status)'
      'VALUES'
      '  (:id_operador, :id_usuario, :tipo, :id_status)')
    SQLDelete.Strings = (
      'DELETE FROM operadores'
      'WHERE'
      '  id_operador = :Old_id_operador')
    SQLUpdate.Strings = (
      'UPDATE operadores'
      'SET'
      
        '  id_operador = :id_operador, id_usuario = :id_usuario, tipo = :' +
        'tipo, id_status = :id_status'
      'WHERE'
      '  id_operador = :Old_id_operador')
    SQLLock.Strings = (
      'SELECT * FROM operadores'
      'WHERE'
      '  id_operador = :Old_id_operador'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT id_operador, id_usuario, tipo, id_status FROM operadores'
      'WHERE'
      '  id_operador = :id_operador')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM operadores')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_operador, id_usuario, nome, login, tipo, id_status'
      'FROM vw_operadores'
      'ORDER BY nome')
    Left = 325
    Top = 183
    object qryOperadoresid_operador: TLargeintField
      FieldName = 'id_operador'
    end
    object qryOperadoresid_usuario: TLargeintField
      FieldName = 'id_usuario'
      Required = True
    end
    object qryOperadoresnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object qryOperadoreslogin: TStringField
      FieldName = 'login'
      Size = 128
    end
    object qryOperadorestipo: TStringField
      FieldName = 'tipo'
      Required = True
      OnGetText = qryOperadorestipoGetText
      OnSetText = qryOperadorestipoSetText
      FixedChar = True
      Size = 1
    end
    object qryOperadoresid_status: TWordField
      Alignment = taLeftJustify
      FieldName = 'id_status'
      Required = True
      OnGetText = qryOperadoresid_statusGetText
      OnSetText = qryOperadoresid_statusSetText
    end
  end
  object qryUsuarios_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_usuario, nome'
      'FROM dbacesso.vw_usuarios'
      'ORDER BY nome')
    Left = 588
    Top = 52
    object qryUsuarios_LookUpid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
    object qryUsuarios_LookUpnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
  end
  object qryBalancas_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_dispositivo, descricao, id_modelo'
      'FROM dispositivos'
      'WHERE tipo_dispositivo = '#39'B'#39
      'ORDER BY descricao, id_modelo')
    Left = 457
    Top = 7
    object qryBalancas_LookUpid_dispositivo: TLargeintField
      FieldName = 'id_dispositivo'
    end
    object qryBalancas_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 30
    end
    object qryBalancas_LookUpid_modelo: TWordField
      FieldName = 'id_modelo'
    end
  end
  object qryClientes_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_parceiro, razao'
      'FROM vw_clientes'
      'ORDER BY razao')
    Left = 456
    Top = 50
    object qryClientes_LookUpid_parceiro: TLargeintField
      FieldName = 'id_parceiro'
    end
    object qryClientes_LookUprazao: TStringField
      FieldName = 'razao'
      Size = 60
    end
  end
  object qryCondicoes_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_condicao, descricao'
      'FROM condicoes'
      'ORDER BY descricao')
    Left = 455
    Top = 94
    object qryCondicoes_LookUpid_condicao: TWordField
      FieldName = 'id_condicao'
    end
    object qryCondicoes_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
  object qryContas_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_conta, descricao'
      'FROM contas'
      'ORDER BY descricao')
    Left = 454
    Top = 137
    object qryContas_LookUpid_conta: TWordField
      FieldName = 'id_conta'
    end
    object qryContas_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object qryClientes: TUniQuery
    UpdatingTable = 'parceiros'
    KeyFields = 'id_parceiro'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_parceiro, codigo, tipo, data_cadastro, tipo_pessoa, cp' +
        'f, rg_numero, cnpj, insc_estadual,'
      
        'insc_municipal, insc_suframa, razao, fantasia, logradouro_reside' +
        'ncial, numero_residencial, '
      
        'complemento_residencial, bairro_residencial, referencia_residenc' +
        'ial, id_pais_residencial,'
      
        'id_estado_residencial, id_cidade_residencial, cep_residencial, t' +
        'empo_residencial, logradouro_comercial,'
      
        'numero_comercial, complemento_comercial, bairro_comercial, refer' +
        'encia_comercial, id_pais_comercial,'
      
        'id_estado_comercial, id_cidade_comercial, cep_comercial, logrado' +
        'uro_entrega,'
      
        'numero_entrega, complemento_entrega, bairro_entrega, referencia_' +
        'entrega, id_pais_entrega,'
      
        'id_estado_entrega, id_cidade_entrega, cep_entrega, logradouro_co' +
        'branca, numero_cobranca,'
      
        'complemento_cobranca, bairro_cobranca, referencia_cobranca, id_p' +
        'ais_cobranca, id_estado_cobranca,'
      
        'id_cidade_cobranca, cep_cobranca, telefone, fax, celular, email,' +
        ' contato, comprador, data_nascimento,'
      
        'mae_nome, mae_cpf, mae_doc_identidade, pai_nome, pai_cpf, pai_do' +
        'c_identidade,'
      
        'id_profissao, renda_mensal, limite_credito, dia_vencimento, desc' +
        'onto, tipo_frete, prazo,'
      
        'sexo, estado_civil, conjuge_nome, conjuge_cpf_numero, conjuge_rg' +
        '_numero,'
      'id_classificacao, observacao, foto, situacao'
      'FROM parceiros'
      'WHERE tipo = '#39'2'#39
      ' &condicao'
      'ORDER BY id_parceiro')
    OnNewRecord = qryClientesNewRecord
    Left = 585
    Top = 8
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryClientesid_parceiro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_parceiro'
    end
    object qryClientescodigo: TStringField
      FieldName = 'codigo'
      Size = 8
    end
    object qryClientestipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object qryClientesdata_cadastro: TDateTimeField
      FieldName = 'data_cadastro'
    end
    object qryClientestipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object qryClientescpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object qryClientesrg_numero: TStringField
      FieldName = 'rg_numero'
    end
    object qryClientescnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object qryClientesinsc_estadual: TStringField
      FieldName = 'insc_estadual'
    end
    object qryClientesinsc_municipal: TStringField
      FieldName = 'insc_municipal'
    end
    object qryClientesinsc_suframa: TStringField
      FieldName = 'insc_suframa'
    end
    object qryClientesrazao: TStringField
      FieldName = 'razao'
      Size = 60
    end
    object qryClientesfantasia: TStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qryClienteslogradouro_residencial: TStringField
      FieldName = 'logradouro_residencial'
      Size = 60
    end
    object qryClientesnumero_residencial: TStringField
      FieldName = 'numero_residencial'
      Size = 15
    end
    object qryClientescomplemento_residencial: TStringField
      FieldName = 'complemento_residencial'
    end
    object qryClientesbairro_residencial: TStringField
      FieldName = 'bairro_residencial'
      Size = 40
    end
    object qryClientesreferencia_residencial: TStringField
      FieldName = 'referencia_residencial'
      Size = 60
    end
    object qryClientesid_pais_residencial: TStringField
      FieldName = 'id_pais_residencial'
      FixedChar = True
      Size = 4
    end
    object qryClientesid_estado_residencial: TStringField
      FieldName = 'id_estado_residencial'
      Size = 2
    end
    object qryClientesid_cidade_residencial: TStringField
      FieldName = 'id_cidade_residencial'
      Size = 7
    end
    object qryClientescep_residencial: TStringField
      FieldName = 'cep_residencial'
      Size = 8
    end
    object qryClientestempo_residencial: TStringField
      FieldName = 'tempo_residencial'
      Size = 15
    end
    object qryClienteslogradouro_comercial: TStringField
      FieldName = 'logradouro_comercial'
      Size = 60
    end
    object qryClientesnumero_comercial: TStringField
      FieldName = 'numero_comercial'
      Size = 10
    end
    object qryClientescomplemento_comercial: TStringField
      FieldName = 'complemento_comercial'
    end
    object qryClientesbairro_comercial: TStringField
      FieldName = 'bairro_comercial'
      Size = 40
    end
    object qryClientesreferencia_comercial: TStringField
      FieldName = 'referencia_comercial'
      Size = 60
    end
    object qryClientesid_pais_comercial: TStringField
      FieldName = 'id_pais_comercial'
      FixedChar = True
      Size = 4
    end
    object qryClientesid_estado_comercial: TStringField
      FieldName = 'id_estado_comercial'
      FixedChar = True
      Size = 2
    end
    object qryClientesid_cidade_comercial: TStringField
      FieldName = 'id_cidade_comercial'
      FixedChar = True
      Size = 7
    end
    object qryClientescep_comercial: TStringField
      FieldName = 'cep_comercial'
      Size = 8
    end
    object qryClienteslogradouro_entrega: TStringField
      FieldName = 'logradouro_entrega'
      Size = 60
    end
    object qryClientesnumero_entrega: TStringField
      FieldName = 'numero_entrega'
      Size = 15
    end
    object qryClientescomplemento_entrega: TStringField
      FieldName = 'complemento_entrega'
    end
    object qryClientesbairro_entrega: TStringField
      FieldName = 'bairro_entrega'
      Size = 40
    end
    object qryClientesreferencia_entrega: TStringField
      FieldName = 'referencia_entrega'
      Size = 60
    end
    object qryClientesid_pais_entrega: TStringField
      FieldName = 'id_pais_entrega'
      FixedChar = True
      Size = 4
    end
    object qryClientesid_estado_entrega: TStringField
      FieldName = 'id_estado_entrega'
      Size = 2
    end
    object qryClientesid_cidade_entrega: TStringField
      FieldName = 'id_cidade_entrega'
      Size = 7
    end
    object qryClientescep_entrega: TStringField
      FieldName = 'cep_entrega'
      Size = 8
    end
    object qryClienteslogradouro_cobranca: TStringField
      FieldName = 'logradouro_cobranca'
      Size = 60
    end
    object qryClientesnumero_cobranca: TStringField
      FieldName = 'numero_cobranca'
      Size = 15
    end
    object qryClientescomplemento_cobranca: TStringField
      FieldName = 'complemento_cobranca'
    end
    object qryClientesbairro_cobranca: TStringField
      FieldName = 'bairro_cobranca'
      Size = 40
    end
    object qryClientesreferencia_cobranca: TStringField
      FieldName = 'referencia_cobranca'
      Size = 60
    end
    object qryClientesid_pais_cobranca: TStringField
      FieldName = 'id_pais_cobranca'
      FixedChar = True
      Size = 4
    end
    object qryClientesid_estado_cobranca: TStringField
      FieldName = 'id_estado_cobranca'
      Size = 2
    end
    object qryClientesid_cidade_cobranca: TStringField
      FieldName = 'id_cidade_cobranca'
      Size = 7
    end
    object qryClientescep_cobranca: TStringField
      FieldName = 'cep_cobranca'
      Size = 8
    end
    object qryClientestelefone: TStringField
      FieldName = 'telefone'
      Size = 11
    end
    object qryClientesfax: TStringField
      FieldName = 'fax'
      Size = 11
    end
    object qryClientescelular: TStringField
      FieldName = 'celular'
      Size = 11
    end
    object qryClientesemail: TStringField
      FieldName = 'email'
      Size = 200
    end
    object qryClientescontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object qryClientescomprador: TStringField
      FieldName = 'comprador'
      Size = 60
    end
    object qryClientesdata_nascimento: TDateTimeField
      FieldName = 'data_nascimento'
    end
    object qryClientesmae_nome: TStringField
      FieldName = 'mae_nome'
      Size = 60
    end
    object qryClientesmae_cpf: TStringField
      FieldName = 'mae_cpf'
      Size = 11
    end
    object qryClientesmae_doc_identidade: TStringField
      FieldName = 'mae_doc_identidade'
    end
    object qryClientespai_nome: TStringField
      FieldName = 'pai_nome'
      Size = 60
    end
    object qryClientespai_cpf: TStringField
      FieldName = 'pai_cpf'
      Size = 11
    end
    object qryClientespai_doc_identidade: TStringField
      FieldName = 'pai_doc_identidade'
    end
    object qryClientesid_profissao: TWordField
      FieldName = 'id_profissao'
    end
    object qryClientesrenda_mensal: TFloatField
      FieldName = 'renda_mensal'
    end
    object qryClienteslimite_credito: TFloatField
      FieldName = 'limite_credito'
    end
    object qryClientesdia_vencimento: TSmallintField
      FieldName = 'dia_vencimento'
    end
    object qryClientesdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qryClientestipo_frete: TStringField
      FieldName = 'tipo_frete'
      Size = 1
    end
    object qryClientesprazo: TStringField
      FieldName = 'prazo'
      Size = 30
    end
    object qryClientessexo: TStringField
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
    object qryClientesestado_civil: TStringField
      FieldName = 'estado_civil'
      FixedChar = True
      Size = 1
    end
    object qryClientesconjuge_nome: TStringField
      FieldName = 'conjuge_nome'
      Size = 60
    end
    object qryClientesconjuge_cpf_numero: TStringField
      FieldName = 'conjuge_cpf_numero'
      Size = 11
    end
    object qryClientesconjuge_rg_numero: TStringField
      FieldName = 'conjuge_rg_numero'
    end
    object qryClientesid_classificacao: TWordField
      FieldName = 'id_classificacao'
    end
    object qryClientesobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object qryClientesfoto: TBlobField
      FieldName = 'foto'
    end
    object qryClientessituacao: TStringField
      FieldName = 'situacao'
      Size = 1
    end
  end
  object qryCidades_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_cidade, descricao, id_estado'
      'FROM dbibge.cidades'
      '&condicao'
      'ORDER BY &condicao')
    Left = 41
    Top = 447
    MacroData = <
      item
        Name = 'condicao'
      end>
  end
  object qryEstados_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_estado, descricao, sigla, id_pais'
      'FROM dbibge.estados'
      '&condicao'
      'ORDER BY &condicao')
    Left = 41
    Top = 317
    MacroData = <
      item
        Name = 'condicao'
      end>
  end
  object qryPaises_Locate: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_pais, descricao'
      'FROM dbibge.paises'
      '&condicao'
      'ORDER BY &condicao')
    Left = 41
    Top = 141
    MacroData = <
      item
        Name = 'condicao'
      end>
  end
  object qryPaises: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_pais, descricao, sigla'
      'FROM dbibge.paises'
      'ORDER BY descricao')
    Left = 41
    Top = 9
    object qryPaisesid_pais: TStringField
      FieldName = 'id_pais'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryPaisesdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 60
    end
    object qryPaisessigla: TStringField
      FieldName = 'sigla'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object qryEstados: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_estado, descricao, sigla, id_pais'
      'FROM dbibge.estados'
      'WHERE id_pais = :id_pais'
      'ORDER BY descricao')
    Left = 41
    Top = 187
    ParamData = <
      item
        DataType = ftString
        Name = 'id_pais'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryCidades: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_cidade, descricao, id_estado'
      'FROM dbibge.cidades'
      'ORDER BY id_cidade')
    Left = 41
    Top = 364
  end
  object qryLocais_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_estabelecimento, id_local, descricao'
      'FROM vw_locais'
      'ORDER BY id_estabelecimento, descricao')
    MasterSource = dsEstabelecimentos_LookUp
    MasterFields = 'id_estabelecimento'
    DetailFields = 'id_estabelecimento'
    Left = 180
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estabelecimento'
        Value = nil
      end>
    object qryLocais_LookUpid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
    end
    object qryLocais_LookUpid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryLocais_LookUpdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
  object qryLocais: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_estabelecimento, id_local, descricao'
      'FROM locais'
      'ORDER BY descricao')
    Left = 180
    Top = 140
    object qryLocaisid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
    end
    object qryLocaisid_local: TWordField
      FieldName = 'id_local'
    end
    object qryLocaisdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
end
