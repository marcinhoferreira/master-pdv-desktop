object dmDocumentosFiscais: TdmDocumentosFiscais
  OldCreateOrder = False
  Height = 355
  Width = 492
  object qryDocumentos_Fiscais: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO notas_fiscais'
      
        '  (id_nota_fiscal, id_emitente, data_emissao, numero, id_modelo,' +
        ' versao_xml, versao_qrcode, tipo_nota, serie_nota, data_moviment' +
        'o, hora_movimento, natureza_operacao, id_destinatario, id_forma_' +
        'pagamento, valor_entrada, id_forma_emissao, contingencia_motivo,' +
        ' id_finalidade_emissao, danfe_tipo_impressao, id_pais_ocorrencia' +
        ', id_estado_ocorrencia, id_cidade_ocorrencia, id_transportador, ' +
        'placa, id_estado_placa, valor_frete, modalidade_frete, valor_seg' +
        'uro, valor_outras_despesas, valor_bruto, valor_acrescimo, valor_' +
        'desconto, valor_recebido, quantidade, especie, marca, peso_bruto' +
        ', peso_liquido, informacoes_adicionais, chave, recibo, lote, pro' +
        'tocolo_autorizacao, status, aliquota_icms, aliquota_iss, aliquot' +
        'a_ii, aliquota_ipi, aliquota_pis, aliquota_cofins, aliquota_simp' +
        'les, valor_tributos_federais, valor_tributos_estaduais, valor_tr' +
        'ibutos_municipais)'
      'VALUES'
      
        '  (:id_nota_fiscal, :id_emitente, :data_emissao, :numero, :id_mo' +
        'delo, :versao_xml, :versao_qrcode, :tipo_nota, :serie_nota, :dat' +
        'a_movimento, :hora_movimento, :natureza_operacao, :id_destinatar' +
        'io, :id_forma_pagamento, :valor_entrada, :id_forma_emissao, :con' +
        'tingencia_motivo, :id_finalidade_emissao, :danfe_tipo_impressao,' +
        ' :id_pais_ocorrencia, :id_estado_ocorrencia, :id_cidade_ocorrenc' +
        'ia, :id_transportador, :placa, :id_estado_placa, :valor_frete, :' +
        'modalidade_frete, :valor_seguro, :valor_outras_despesas, :valor_' +
        'bruto, :valor_acrescimo, :valor_desconto, :valor_recebido, :quan' +
        'tidade, :especie, :marca, :peso_bruto, :peso_liquido, :informaco' +
        'es_adicionais, :chave, :recibo, :lote, :protocolo_autorizacao, :' +
        'status, :aliquota_icms, :aliquota_iss, :aliquota_ii, :aliquota_i' +
        'pi, :aliquota_pis, :aliquota_cofins, :aliquota_simples, :valor_t' +
        'ributos_federais, :valor_tributos_estaduais, :valor_tributos_mun' +
        'icipais)')
    SQLDelete.Strings = (
      'DELETE FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal')
    SQLUpdate.Strings = (
      'UPDATE notas_fiscais'
      'SET'
      
        '  id_nota_fiscal = :id_nota_fiscal, id_emitente = :id_emitente, ' +
        'data_emissao = :data_emissao, numero = :numero, id_modelo = :id_' +
        'modelo, versao_xml = :versao_xml, versao_qrcode = :versao_qrcode' +
        ', tipo_nota = :tipo_nota, serie_nota = :serie_nota, data_movimen' +
        'to = :data_movimento, hora_movimento = :hora_movimento, natureza' +
        '_operacao = :natureza_operacao, id_destinatario = :id_destinatar' +
        'io, id_forma_pagamento = :id_forma_pagamento, valor_entrada = :v' +
        'alor_entrada, id_forma_emissao = :id_forma_emissao, contingencia' +
        '_motivo = :contingencia_motivo, id_finalidade_emissao = :id_fina' +
        'lidade_emissao, danfe_tipo_impressao = :danfe_tipo_impressao, id' +
        '_pais_ocorrencia = :id_pais_ocorrencia, id_estado_ocorrencia = :' +
        'id_estado_ocorrencia, id_cidade_ocorrencia = :id_cidade_ocorrenc' +
        'ia, id_transportador = :id_transportador, placa = :placa, id_est' +
        'ado_placa = :id_estado_placa, valor_frete = :valor_frete, modali' +
        'dade_frete = :modalidade_frete, valor_seguro = :valor_seguro, va' +
        'lor_outras_despesas = :valor_outras_despesas, valor_bruto = :val' +
        'or_bruto, valor_acrescimo = :valor_acrescimo, valor_desconto = :' +
        'valor_desconto, valor_recebido = :valor_recebido, quantidade = :' +
        'quantidade, especie = :especie, marca = :marca, peso_bruto = :pe' +
        'so_bruto, peso_liquido = :peso_liquido, informacoes_adicionais =' +
        ' :informacoes_adicionais, chave = :chave, recibo = :recibo, lote' +
        ' = :lote, protocolo_autorizacao = :protocolo_autorizacao, status' +
        ' = :status, aliquota_icms = :aliquota_icms, aliquota_iss = :aliq' +
        'uota_iss, aliquota_ii = :aliquota_ii, aliquota_ipi = :aliquota_i' +
        'pi, aliquota_pis = :aliquota_pis, aliquota_cofins = :aliquota_co' +
        'fins, aliquota_simples = :aliquota_simples, valor_tributos_feder' +
        'ais = :valor_tributos_federais, valor_tributos_estaduais = :valo' +
        'r_tributos_estaduais, valor_tributos_municipais = :valor_tributo' +
        's_municipais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal')
    SQLLock.Strings = (
      'SELECT * FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_fiscal, id_emitente, data_emissao, numero, id_mod' +
        'elo, versao_xml, versao_qrcode, tipo_nota, serie_nota, data_movi' +
        'mento, hora_movimento, natureza_operacao, id_destinatario, id_fo' +
        'rma_pagamento, valor_entrada, id_forma_emissao, contingencia_mot' +
        'ivo, id_finalidade_emissao, danfe_tipo_impressao, id_pais_ocorre' +
        'ncia, id_estado_ocorrencia, id_cidade_ocorrencia, id_transportad' +
        'or, placa, id_estado_placa, valor_frete, modalidade_frete, valor' +
        '_seguro, valor_outras_despesas, valor_bruto, valor_acrescimo, va' +
        'lor_desconto, valor_recebido, quantidade, especie, marca, peso_b' +
        'ruto, peso_liquido, informacoes_adicionais, chave, recibo, lote,' +
        ' protocolo_autorizacao, status, aliquota_icms, aliquota_iss, ali' +
        'quota_ii, aliquota_ipi, aliquota_pis, aliquota_cofins, aliquota_' +
        'simples, valor_tributos_federais, valor_tributos_estaduais, valo' +
        'r_tributos_municipais FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :id_nota_fiscal')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM notas_fiscais')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT n.id_nota_fiscal, '
      'n.id_emitente, e.cnpj AS cnpj_emitente,'
      
        'e.inscricao_estadual AS insc_estadual_emitente, e.inscricao_muni' +
        'cipal AS insc_municipal_emitente,'
      
        'e.inscricao_estadual_subst AS insc_est_subst_emitente, e.inscric' +
        'ao_suframa AS insc_suframa_emitente,'
      
        'e.razao_social AS razao_emitente, e.nome_fantasia AS fantasia_em' +
        'itente, '
      
        'e.logradouro AS logradouro_emitente, e.numero AS numero_emitente' +
        ','
      
        'e.complemento AS complemento_emitente, e.bairro AS bairro_emiten' +
        'te,'
      
        'e.id_pais AS id_pais_emitente, e.descricao_pais AS descricao_pai' +
        's_emitente,'
      
        'e.id_estado AS id_estado_emitente, e.sigla_estado AS sigla_estad' +
        'o_emitente, '
      
        'e.id_cidade AS id_cidade_emitente, e.descricao_cidade AS descric' +
        'ao_cidade_emitente,'
      
        'e.cep AS cep_emitente, e.telefone AS telefone_emitente, e.fax AS' +
        ' fax_emitente,'
      
        'e.email AS email_emitente, e.cnae_principal AS cnae_fiscal_emite' +
        'nte,'
      'e.natureza_juridica AS natureza_juridica_emitente,'
      'e.regime_tributario AS regime_tributario_emitente,'
      
        'n.data_emissao, n.numero, n.id_modelo, n.versao_xml, n.versao_qr' +
        'code, n.tipo_nota, n.serie_nota, n.data_movimento, n.hora_movime' +
        'nto, n.natureza_operacao, '
      'n.id_destinatario, c.tipo_pessoa AS tipo_pessoa_destinatario, '
      'CASE'
      
        '   WHEN n.id_modelo = '#39'65'#39' THEN COALESCE(n.documento_rfb_numero,' +
        ' CASE'
      
        '                                                                ' +
        '    WHEN c.tipo_pessoa = '#39'F'#39' THEN c.cpf'
      
        '                                                                ' +
        '    ELSE'
      
        '                                                                ' +
        '       c.cnpj '
      
        '                                                                ' +
        ' END)'
      '   ELSE'
      '      CASE'
      '         WHEN c.tipo_pessoa = '#39'F'#39' THEN c.cpf'
      '         ELSE'
      '            c.cnpj '
      '      END'
      
        'END AS documento_rfb_numero, c.insc_estadual AS insc_estadual_de' +
        'stinatario,'
      'c.insc_municipal AS insc_municipal_destinatario,'
      
        'c.insc_suframa AS insc_suframa_destinatario, c.razao AS razao_de' +
        'stinatario,'
      
        'c.fantasia AS fantasia_destinatario, c.logradouro_entrega AS log' +
        'radouro_entrega_destinatario,'
      
        'c.numero_entrega AS numero_entrega_destinatario, c.complemento_e' +
        'ntrega AS complemento_entrega_destinatario,'
      
        'c.bairro_entrega AS bairro_entrega_destinatario, c.referencia_en' +
        'trega AS referencia_entrega_destinatario,'
      'c.id_pais_entrega AS id_pais_entrega_destinatario,'
      
        'c.descricao_pais_entrega AS descricao_pais_entrega_destinatario,' +
        ' '
      'c.id_estado_entrega AS id_estado_entrega_destinatario,'
      'c.sigla_estado_entrega AS sigla_estado_entrega_destinatario, '
      'c.id_cidade_entrega AS id_cidade_entrega_destinatario,'
      
        'c.descricao_cidade_entrega AS descricao_cidade_entrega_destinata' +
        'rio, '
      'c.cep_entrega AS cep_entrega_destinatario,'
      
        'c.telefone AS telefone_destinatario, c.fax AS fax_destinatario, ' +
        'c.email AS email_destinatario,'
      
        'n.id_forma_pagamento, n.valor_entrada, n.id_forma_emissao, n.con' +
        'tingencia_motivo, n.id_finalidade_emissao, n.danfe_tipo_impressa' +
        'o, '
      
        'n.id_pais_ocorrencia, n.id_estado_ocorrencia, n.id_cidade_ocorre' +
        'ncia, '
      
        'n.id_transportador, t.cnpj AS cnpj_transportador, t.insc_estadua' +
        'l AS insc_estadual_transportador,'
      
        't.razao AS razao_transportador, t.logradouro AS logradouro_trans' +
        'portador,'
      
        't.bairro AS bairro_transportador, t.id_estado AS id_estado_trans' +
        'portador, t.sigla_estado AS sigla_estado_transportador,'
      
        'n.placa, n.id_estado_placa, a.sigla AS sigla_estado_placa, n.val' +
        'or_frete, n.modalidade_frete,'
      
        'n.valor_seguro, n.valor_outras_despesas, n.valor_bruto, n.valor_' +
        'acrescimo, n.valor_desconto, '
      
        '(n.valor_bruto + n.valor_acrescimo - n.valor_desconto) AS valor_' +
        'liquido, '
      
        'n.valor_recebido, n.aliquota_icms, n.aliquota_iss, n.aliquota_ii' +
        ', n.aliquota_ipi, n.aliquota_pis, n.aliquota_cofins, n.aliquota_' +
        'simples,'
      
        'n.valor_tributos_federais, n.valor_tributos_estaduais, n.valor_t' +
        'ributos_municipais, '
      
        'n.quantidade, n.especie, n.marca, n.peso_bruto, n.peso_liquido, ' +
        'n.informacoes_adicionais,'
      'n.chave, n.recibo, n.lote, n.protocolo_autorizacao, n.status '
      'FROM notas_fiscais n'
      '   INNER JOIN vw_estabelecimentos e'
      '      ON n.id_emitente = e.id_estabelecimento'
      '   LEFT OUTER JOIN vw_clientes c'
      '      ON n.id_destinatario = c.id_parceiro'
      '   LEFT OUTER JOIN vw_transportadores t'
      '      ON n.id_transportador = t.id_transportador'
      '   LEFT OUTER JOIN dbibge.estados a'
      '      ON n.id_estado_placa = a.id_estado'
      'WHERE n.id_nota_fiscal = :id_documento_fiscal'
      'ORDER BY n.id_nota_fiscal')
    AfterOpen = qryDocumentos_FiscaisAfterOpen
    BeforeClose = qryDocumentos_FiscaisBeforeClose
    Left = 88
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_documento_fiscal'
        ParamType = ptInput
        Value = nil
      end>
    object qryDocumentos_Fiscaisid_nota_fiscal: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_nota_fiscal'
    end
    object qryDocumentos_Fiscaisid_emitente: TLargeintField
      FieldName = 'id_emitente'
      Required = True
    end
    object qryDocumentos_Fiscaiscnpj_emitente: TStringField
      FieldName = 'cnpj_emitente'
      ReadOnly = True
      Size = 14
    end
    object qryDocumentos_Fiscaisinsc_estadual_emitente: TStringField
      FieldName = 'insc_estadual_emitente'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisinsc_municipal_emitente: TStringField
      FieldName = 'insc_municipal_emitente'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisinsc_est_subst_emitente: TStringField
      FieldName = 'insc_est_subst_emitente'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisinsc_suframa_emitente: TStringField
      FieldName = 'insc_suframa_emitente'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisrazao_emitente: TStringField
      FieldName = 'razao_emitente'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryDocumentos_Fiscaisfantasia_emitente: TStringField
      FieldName = 'fantasia_emitente'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryDocumentos_Fiscaislogradouro_emitente: TStringField
      FieldName = 'logradouro_emitente'
      ReadOnly = True
      Size = 255
    end
    object qryDocumentos_Fiscaisnumero_emitente: TStringField
      FieldName = 'numero_emitente'
      ReadOnly = True
      Size = 15
    end
    object qryDocumentos_Fiscaiscomplemento_emitente: TStringField
      FieldName = 'complemento_emitente'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisbairro_emitente: TStringField
      FieldName = 'bairro_emitente'
      ReadOnly = True
      Size = 30
    end
    object qryDocumentos_Fiscaisid_pais_emitente: TStringField
      FieldName = 'id_pais_emitente'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object qryDocumentos_Fiscaisdescricao_pais_emitente: TStringField
      FieldName = 'descricao_pais_emitente'
      ReadOnly = True
      Size = 30
    end
    object qryDocumentos_Fiscaisid_estado_emitente: TStringField
      FieldName = 'id_estado_emitente'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaissigla_estado_emitente: TStringField
      FieldName = 'sigla_estado_emitente'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaisid_cidade_emitente: TStringField
      FieldName = 'id_cidade_emitente'
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
    object qryDocumentos_Fiscaisdescricao_cidade_emitente: TStringField
      FieldName = 'descricao_cidade_emitente'
      ReadOnly = True
      Size = 30
    end
    object qryDocumentos_Fiscaiscep_emitente: TStringField
      FieldName = 'cep_emitente'
      ReadOnly = True
      Size = 8
    end
    object qryDocumentos_Fiscaistelefone_emitente: TStringField
      FieldName = 'telefone_emitente'
      ReadOnly = True
      Size = 10
    end
    object qryDocumentos_Fiscaisfax_emitente: TStringField
      FieldName = 'fax_emitente'
      ReadOnly = True
      Size = 10
    end
    object qryDocumentos_Fiscaisemail_emitente: TStringField
      FieldName = 'email_emitente'
      ReadOnly = True
      Size = 255
    end
    object qryDocumentos_Fiscaiscnae_fiscal_emitente: TStringField
      FieldName = 'cnae_fiscal_emitente'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryDocumentos_Fiscaisnatureza_juridica_emitente: TStringField
      FieldName = 'natureza_juridica_emitente'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object qryDocumentos_Fiscaisregime_tributario_emitente: TStringField
      FieldName = 'regime_tributario_emitente'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaisdata_emissao: TDateTimeField
      FieldName = 'data_emissao'
      Required = True
    end
    object qryDocumentos_Fiscaisnumero: TLargeintField
      FieldName = 'numero'
      Required = True
    end
    object qryDocumentos_Fiscaisid_modelo: TStringField
      FieldName = 'id_modelo'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaisversao_xml: TStringField
      FieldName = 'versao_xml'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaistipo_nota: TStringField
      FieldName = 'tipo_nota'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaisserie_nota: TStringField
      FieldName = 'serie_nota'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaisdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
    end
    object qryDocumentos_Fiscaishora_movimento: TStringField
      FieldName = 'hora_movimento'
      Size = 8
    end
    object qryDocumentos_Fiscaisnatureza_operacao: TStringField
      FieldName = 'natureza_operacao'
      Size = 255
    end
    object qryDocumentos_Fiscaisid_destinatario: TLargeintField
      FieldName = 'id_destinatario'
    end
    object qryDocumentos_Fiscaistipo_pessoa_destinatario: TStringField
      FieldName = 'tipo_pessoa_destinatario'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaisdocumento_rfb_numero: TStringField
      FieldName = 'documento_rfb_numero'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisinsc_estadual_destinatario: TStringField
      FieldName = 'insc_estadual_destinatario'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisinsc_municipal_destinatario: TStringField
      FieldName = 'insc_municipal_destinatario'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisinsc_suframa_destinatario: TStringField
      FieldName = 'insc_suframa_destinatario'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisrazao_destinatario: TStringField
      FieldName = 'razao_destinatario'
      ReadOnly = True
      Size = 60
    end
    object qryDocumentos_Fiscaisfantasia_destinatario: TStringField
      FieldName = 'fantasia_destinatario'
      ReadOnly = True
      Size = 60
    end
    object qryDocumentos_Fiscaislogradouro_entrega_destinatario: TStringField
      FieldName = 'logradouro_entrega_destinatario'
      ReadOnly = True
      Size = 60
    end
    object qryDocumentos_Fiscaisnumero_entrega_destinatario: TStringField
      FieldName = 'numero_entrega_destinatario'
      ReadOnly = True
      Size = 15
    end
    object qryDocumentos_Fiscaiscomplemento_entrega_destinatario: TStringField
      FieldName = 'complemento_entrega_destinatario'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisbairro_entrega_destinatario: TStringField
      FieldName = 'bairro_entrega_destinatario'
      ReadOnly = True
      Size = 40
    end
    object qryDocumentos_Fiscaisreferencia_entrega_destinatario: TStringField
      FieldName = 'referencia_entrega_destinatario'
      ReadOnly = True
      Size = 60
    end
    object qryDocumentos_Fiscaisid_pais_entrega_destinatario: TStringField
      FieldName = 'id_pais_entrega_destinatario'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object qryDocumentos_Fiscaisdescricao_pais_entrega_destinatario: TStringField
      FieldName = 'descricao_pais_entrega_destinatario'
      ReadOnly = True
      Size = 30
    end
    object qryDocumentos_Fiscaisid_estado_entrega_destinatario: TStringField
      FieldName = 'id_estado_entrega_destinatario'
      ReadOnly = True
      Size = 2
    end
    object qryDocumentos_Fiscaissigla_estado_entrega_destinatario: TStringField
      FieldName = 'sigla_estado_entrega_destinatario'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaisid_cidade_entrega_destinatario: TStringField
      FieldName = 'id_cidade_entrega_destinatario'
      ReadOnly = True
      Size = 7
    end
    object qryDocumentos_Fiscaisdescricao_cidade_entrega_destinatario: TStringField
      FieldName = 'descricao_cidade_entrega_destinatario'
      ReadOnly = True
      Size = 30
    end
    object qryDocumentos_Fiscaiscep_entrega_destinatario: TStringField
      FieldName = 'cep_entrega_destinatario'
      ReadOnly = True
      Size = 8
    end
    object qryDocumentos_Fiscaistelefone_destinatario: TStringField
      FieldName = 'telefone_destinatario'
      ReadOnly = True
      Size = 11
    end
    object qryDocumentos_Fiscaisfax_destinatario: TStringField
      FieldName = 'fax_destinatario'
      ReadOnly = True
      Size = 11
    end
    object qryDocumentos_Fiscaisemail_destinatario: TStringField
      FieldName = 'email_destinatario'
      ReadOnly = True
      Size = 200
    end
    object qryDocumentos_Fiscaisid_forma_pagamento: TStringField
      FieldName = 'id_forma_pagamento'
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaisvalor_entrada: TFloatField
      FieldName = 'valor_entrada'
    end
    object qryDocumentos_Fiscaisid_forma_emissao: TStringField
      FieldName = 'id_forma_emissao'
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaiscontingencia_motivo: TStringField
      FieldName = 'contingencia_motivo'
      Size = 255
    end
    object qryDocumentos_Fiscaisid_finalidade_emissao: TStringField
      FieldName = 'id_finalidade_emissao'
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaisdanfe_tipo_impressao: TStringField
      FieldName = 'danfe_tipo_impressao'
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaisid_pais_ocorrencia: TStringField
      FieldName = 'id_pais_ocorrencia'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryDocumentos_Fiscaisid_estado_ocorrencia: TStringField
      FieldName = 'id_estado_ocorrencia'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaisid_cidade_ocorrencia: TStringField
      FieldName = 'id_cidade_ocorrencia'
      Required = True
      FixedChar = True
      Size = 7
    end
    object qryDocumentos_Fiscaisid_transportador: TWordField
      FieldName = 'id_transportador'
    end
    object qryDocumentos_Fiscaiscnpj_transportador: TStringField
      FieldName = 'cnpj_transportador'
      ReadOnly = True
      Size = 14
    end
    object qryDocumentos_Fiscaisinsc_estadual_transportador: TStringField
      FieldName = 'insc_estadual_transportador'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisrazao_transportador: TStringField
      FieldName = 'razao_transportador'
      ReadOnly = True
      Size = 60
    end
    object qryDocumentos_Fiscaislogradouro_transportador: TStringField
      FieldName = 'logradouro_transportador'
      ReadOnly = True
      Size = 60
    end
    object qryDocumentos_Fiscaisbairro_transportador: TStringField
      FieldName = 'bairro_transportador'
      ReadOnly = True
      Size = 30
    end
    object qryDocumentos_Fiscaisid_estado_transportador: TStringField
      FieldName = 'id_estado_transportador'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaissigla_estado_transportador: TStringField
      FieldName = 'sigla_estado_transportador'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaisplaca: TStringField
      FieldName = 'placa'
      Size = 7
    end
    object qryDocumentos_Fiscaisid_estado_placa: TStringField
      FieldName = 'id_estado_placa'
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaissigla_estado_placa: TStringField
      FieldName = 'sigla_estado_placa'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentos_Fiscaisvalor_frete: TFloatField
      FieldName = 'valor_frete'
    end
    object qryDocumentos_Fiscaismodalidade_frete: TStringField
      FieldName = 'modalidade_frete'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryDocumentos_Fiscaisvalor_seguro: TFloatField
      FieldName = 'valor_seguro'
    end
    object qryDocumentos_Fiscaisvalor_outras_despesas: TFloatField
      FieldName = 'valor_outras_despesas'
    end
    object qryDocumentos_Fiscaisvalor_bruto: TFloatField
      FieldName = 'valor_bruto'
    end
    object qryDocumentos_Fiscaisvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qryDocumentos_Fiscaisvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qryDocumentos_Fiscaisvalor_liquido: TFloatField
      FieldName = 'valor_liquido'
      ReadOnly = True
    end
    object qryDocumentos_Fiscaisvalor_tributos_federais: TFloatField
      FieldName = 'valor_tributos_federais'
    end
    object qryDocumentos_Fiscaisvalor_tributos_estaduais: TFloatField
      FieldName = 'valor_tributos_estaduais'
    end
    object qryDocumentos_Fiscaisvalor_tributos_municipais: TFloatField
      FieldName = 'valor_tributos_municipais'
    end
    object qryDocumentos_Fiscaisvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryDocumentos_Fiscaisaliquota_icms: TFloatField
      FieldName = 'aliquota_icms'
    end
    object qryDocumentos_Fiscaisaliquota_iss: TFloatField
      FieldName = 'aliquota_iss'
    end
    object qryDocumentos_Fiscaisaliquota_ii: TFloatField
      FieldName = 'aliquota_ii'
    end
    object qryDocumentos_Fiscaisaliquota_ipi: TFloatField
      FieldName = 'aliquota_ipi'
    end
    object qryDocumentos_Fiscaisaliquota_pis: TFloatField
      FieldName = 'aliquota_pis'
    end
    object qryDocumentos_Fiscaisaliquota_cofins: TFloatField
      FieldName = 'aliquota_cofins'
    end
    object qryDocumentos_Fiscaisaliquota_simples: TFloatField
      FieldName = 'aliquota_simples'
    end
    object qryDocumentos_Fiscaisquantidade: TLargeintField
      FieldName = 'quantidade'
    end
    object qryDocumentos_Fiscaisespecie: TStringField
      FieldName = 'especie'
      Size = 30
    end
    object qryDocumentos_Fiscaismarca: TStringField
      FieldName = 'marca'
      Size = 30
    end
    object qryDocumentos_Fiscaispeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object qryDocumentos_Fiscaispeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object qryDocumentos_Fiscaisinformacoes_adicionais: TMemoField
      FieldName = 'informacoes_adicionais'
      BlobType = ftMemo
    end
    object qryDocumentos_Fiscaischave: TStringField
      FieldName = 'chave'
      EditMask = '99-9999-99.999.999/9999-99-99-999-999.999.999-999.999.999-9;0;'
      Size = 44
    end
    object qryDocumentos_Fiscaisrecibo: TStringField
      FieldName = 'recibo'
      Size = 15
    end
    object qryDocumentos_Fiscaislote: TStringField
      FieldName = 'lote'
      Size = 15
    end
    object qryDocumentos_Fiscaisprotocolo_autorizacao: TStringField
      FieldName = 'protocolo_autorizacao'
      Size = 15
    end
    object qryDocumentos_Fiscaisstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object uspGeraDocumentoFiscalVenda: TUniStoredProc
    StoredProcName = 'f_gera_documento_fiscal_venda'
    SQL.Strings = (
      'SELECT f_gera_documento_fiscal_venda(:p_id_venda, :p_id_modelo)')
    Connection = dmConexao.conConexao
    Left = 284
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_venda'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_id_modelo'
        ParamType = ptInput
        Size = 2
        Value = nil
      end>
    CommandStoredProcName = 'f_gera_documento_fiscal_venda'
  end
  object qryDocumentos_Fiscais_Produtos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_nota_fiscal, item, id_produto, codigo_barras, descrica' +
        'o, referencia,'
      
        'numero_serie, cfop, origem, codigo_ncm, id_unidade, sigla_unidad' +
        'e, pesavel, st, cest, csosn, cf,'
      
        'quantidade, peso_bruto, preco_unitario, valor_acrescimo, valor_d' +
        'esconto, valor_frete, valor_seguro,'
      
        'preco_total, base_icms, aliquota_icms, percentual_reducao_base_i' +
        'cms, valor_icms, '
      
        'cst_pis, aliquota_pis, valor_pis, cst_cofins, aliquota_cofins, v' +
        'alor_cofins,'
      'aliquota_tributos, valor_tributos,'
      'aliquota_tributos_federais, valor_tributos_federais, '
      'aliquota_tributos_estaduais, valor_tributos_estaduais, '
      'aliquota_tributos_municipais, valor_tributos_municipais'
      'FROM vw_notas_fiscais_produtos'
      'WHERE id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY item')
    MasterSource = dsDocumentos_Fiscais
    Left = 88
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_fiscal'
        Value = nil
      end>
  end
  object qryDocumentos_Fiscais_Faturas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_nota_fiscal, parcela, prazo, fatura, duplicata, xdupli' +
        'cata, data_vencimento, valor_parcela'
      'FROM vw_notas_fiscais_parcelas'
      'WHERE id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY parcela')
    MasterSource = dsDocumentos_Fiscais
    Left = 88
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_fiscal'
        Value = nil
      end>
  end
  object qryDocumentos_Fiscais_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT nr.id_nota_fiscal, nr.item, nr.id_transacao, t.descricao ' +
        'AS descricao_transacao,'
      
        't.id_forma_pagamento, fp.descricao_forma_pagamento, nr.valor_rec' +
        'ebido, nr.valor_troco'
      'FROM notas_fiscais_recebimentos nr'
      '   INNER JOIN (transacoes t'
      '                  INNER JOIN dfe_formas_pagamento fp'
      
        '                     ON t.id_forma_pagamento = fp.id_forma_pagam' +
        'ento)'
      '      ON nr.id_transacao = t.id_transacao'
      'WHERE nr.id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY nr.item')
    MasterSource = dsDocumentos_Fiscais
    Left = 88
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_fiscal'
        Value = nil
      end>
  end
  object qryDocumentos_Fiscais_Referenciados: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_nota_fiscal, sequencia, id_modelo, chave'
      'FROM notas_fiscais_referenciadas'
      'WHERE id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY sequencia')
    MasterSource = dsDocumentos_Fiscais
    Left = 88
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_fiscal'
        Value = nil
      end>
  end
  object dsDocumentos_Fiscais: TDataSource
    DataSet = qryDocumentos_Fiscais
    Left = 88
    Top = 52
  end
  object uspSequenciaLoteDocumentoFiscal: TUniStoredProc
    StoredProcName = 'f_SequenciaLoteDocumentoFiscal'
    SQL.Strings = (
      'SELECT f_SequenciaLoteDocumentoFiscal(:p_id_emitente)')
    Connection = dmConexao.conConexao
    Left = 284
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id_emitente'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'f_SequenciaLoteDocumentoFiscal'
  end
  object qryDocumentos_Fiscais_Eventos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_nota_fiscal, tipo_evento, sequencia_evento, data_event' +
        'o, texto_evento, '
      'data_envio, data_processamento, recibo, protocolo'
      'FROM notas_fiscais_eventos'
      'WHERE id_nota_fiscal = :id_documento_fiscal'
      'ORDER BY sequencia_evento DESC')
    MasterSource = dsDocumentos_Fiscais
    BeforePost = qryDocumentos_Fiscais_EventosBeforePost
    OnNewRecord = qryDocumentos_Fiscais_EventosNewRecord
    Left = 88
    Top = 271
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_documento_fiscal'
        ParamType = ptInput
        Value = nil
      end>
    object qryDocumentos_Fiscais_Eventosid_nota_fiscal: TLargeintField
      FieldName = 'id_nota_fiscal'
      Required = True
    end
    object qryDocumentos_Fiscais_Eventostipo_evento: TStringField
      FieldName = 'tipo_evento'
      Required = True
      OnGetText = qryDocumentos_Fiscais_Eventostipo_eventoGetText
      OnSetText = qryDocumentos_Fiscais_Eventostipo_eventoSetText
      Size = 6
    end
    object qryDocumentos_Fiscais_Eventossequencia_evento: TWordField
      FieldName = 'sequencia_evento'
      Required = True
    end
    object qryDocumentos_Fiscais_Eventosdata_evento: TDateTimeField
      FieldName = 'data_evento'
      Required = True
    end
    object qryDocumentos_Fiscais_Eventostexto_evento: TMemoField
      FieldName = 'texto_evento'
      Required = True
      BlobType = ftMemo
    end
    object qryDocumentos_Fiscais_Eventosdata_envio: TDateTimeField
      FieldName = 'data_envio'
    end
    object qryDocumentos_Fiscais_Eventosdata_processamento: TDateTimeField
      FieldName = 'data_processamento'
    end
    object qryDocumentos_Fiscais_Eventosrecibo: TStringField
      FieldName = 'recibo'
      Size = 15
    end
    object qryDocumentos_Fiscais_Eventosprotocolo: TStringField
      FieldName = 'protocolo'
      Size = 15
    end
  end
end
