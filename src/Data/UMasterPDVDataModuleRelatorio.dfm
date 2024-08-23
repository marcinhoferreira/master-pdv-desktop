object dmRelatorio: TdmRelatorio
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 588
  Width = 945
  object frRelatorio: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'MP-4200 TH'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42836.649577916700000000
    ReportOptions.LastChange = 45439.423770416700000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 56
    Top = 8
  end
  object frxRichObject1: TfrxRichObject
    Left = 56
    Top = 96
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 56
    Top = 144
  end
  object frdsMovimentos_Operacoes: TfrxDBDataset
    UserName = 'frdsMovimentos_Operacoes'
    CloseDataSource = False
    DataSet = qryMovimentos_Operacoes
    BCDToCurrency = False
    Left = 172
    Top = 52
  end
  object qryMovimentos_Operacoes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT tmo.id_terminal, t.descricao AS descricao_terminal, t.num' +
        'ero AS numero_terminal,'
      
        't.id_local, l.tipo_pessoa AS tipo_pessoa_estabelecimento, l.cpf ' +
        'AS cpf_estabelecimento, l.rg_numero, l.cnpj AS cnpj_estabelecime' +
        'nto,'
      
        'l.insc_estadual AS insc_estadual_estabelecimento, l.insc_municip' +
        'al AS insc_municipal_estabelecimento,'
      
        'l.insc_est_subst AS insc_est_subst_estabelecimento, l.insc_sufra' +
        'ma AS insc_suframa_estabelecimento,'
      
        'l.razao AS razao_estabelecimento, l.fantasia AS fantasia_estabel' +
        'ecimento, l.logradouro AS logradouro_estabelecimento, l.numero A' +
        'S numero_estabelecimento,'
      
        'l.complemento AS complemento_estabelecimento, l.bairro AS bairro' +
        '_estabelecimento,'
      
        'l.id_pais AS id_pais_estabelecimento, l.descricao_pais AS descri' +
        'cao_pais_estabelecimento,'
      
        'l.id_estado AS id_estado_estabelecimento, l.sigla_estado AS sigl' +
        'a_estado_estabelecimento, '
      
        'l.id_cidade AS id_cidade_estabelecimento, l.descricao_cidade AS ' +
        'descricao_cidade_estabelecimento,'
      
        'l.cep AS cep_estabelecimento, l.telefone AS telefone_estabelecim' +
        'ento, l.fax AS fax_estabelecimento,'
      
        'l.email AS email_estabelecimento, l.logomarca AS logomarca_estab' +
        'elecimento,'
      
        'tmo.data_movimento, tmo.id_operador, oper.login, tmo.sequencia, ' +
        'tmo.id_operacao, o.descricao AS descricao_operacao,'
      'tmo.historico, tmo.natureza, tmo.valor'
      'FROM terminais_movimentos_operacoes tmo'
      '   INNER JOIN terminais_movimentos tm'
      
        '      ON tmo.id_terminal = tm.id_terminal AND tmo.data_movimento' +
        ' = tm.data_movimento AND tmo.id_operador = tm.id_operador'
      '   INNER JOIN (terminais t'
      '                  INNER JOIN vw_locais l'
      '                     ON t.id_local = l.id_local)'
      '      ON tmo.id_terminal = t.id_terminal'
      '   INNER JOIN vw_operadores oper'
      '      ON tmo.id_operador = oper.id_operador'
      '   INNER JOIN operacoes o'
      '      ON tmo.id_operacao = o.id_operacao'
      'WHERE tmo.id_terminal = :id_terminal'
      ' AND tmo.data_movimento = :data_movimento'
      ' AND tmo.id_operador = :id_operador'
      ' AND tmo.sequencia = :sequencia'
      'ORDER BY tmo.sequencia')
    Left = 172
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = 42832d
      end
      item
        DataType = ftUnknown
        Name = 'id_operador'
        Value = nil
      end
      item
        DataType = ftWord
        Name = 'sequencia'
        ParamType = ptInput
        Value = 1
      end>
  end
  object fsScript1: TfsScript
    SyntaxType = 'PascalScript'
    Left = 56
    Top = 52
  end
  object qryCupom: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT v.id_venda, v.data_registro, '
      'v.id_estabelecimento, '
      'e.cnpj AS cnpj_estabelecimento,'
      'e.inscricao_estadual AS inscricao_estadual_estabelecimento, '
      'e.inscricao_municipal AS inscricao_municipal_estabelecimento,'
      
        'e.inscricao_estadual_subst AS inscricao_estadual_subst_estabelec' +
        'imento, '
      'e.inscricao_suframa AS inscricao_suframa_estabelecimento,'
      'e.razao_social AS razao_social_estabelecimento, '
      'e.nome_fantasia AS nome_fantasia_estabelecimento, '
      'e.logradouro AS endereco_logradouro_estabelecimento, '
      'e.numero AS endereco_numero_estabelecimento,'
      'e.complemento AS endereco_complemento_estabelecimento, '
      'e.bairro AS endereco_bairro_estabelecimento,'
      'e.id_pais AS endereco_id_pais_estabelecimento, '
      'e.descricao_pais AS endereco_descricao_pais_estabelecimento,'
      'e.id_estado AS endereco_id_estado_estabelecimento, '
      'e.sigla_estado AS endereco_sigla_estado_estabelecimento, '
      'e.id_cidade AS endereco_id_cidade_estabelecimento, '
      'e.descricao_cidade AS endereco_descricao_cidade_estabelecimento,'
      'e.cep AS endereco_cep_estabelecimento, '
      'e.telefone AS telefone_estabelecimento, '
      'e.fax AS fax_estabelecimento,'
      
        'e.celular1 AS celular1_estabelecimento, e.celular2 AS celular2_e' +
        'stabelecimento,'
      
        'e.email AS email_estabelecimento, e.site AS site_estabelecimento' +
        ','
      'e.prazo_validade_orcamento, e.prazo_troca, '
      'e.logomarca AS logomarca_estabelecimento,'
      'v.data_movimento, '
      
        'v.id_caixa, t.descricao AS descricao_terminal, t.numero AS numer' +
        'o_terminal, '
      't.id_modelo_cupom,'
      'v.id_operador, o.nome AS nome_operador, '
      'v.documento,'
      
        'v.id_condicao, v.parcelas, v.tipo_prazo, v.id_representante, v.i' +
        'd_parceiro, v.documento_rfb_numero,'
      
        'v.id_conveniado, v.logradouro_entrega, v.numero_entrega, v.compl' +
        'emento_entrega, v.referencia_entrega,'
      
        'v.bairro_entrega, v.id_pais_entrega, v.id_estado_entrega, v.id_c' +
        'idade_entrega, v.cep_entrega,'
      
        'v.telefone_entrega, v.contato_entrega, v.id_transportador, v.id_' +
        'entregador, v.data_entrega,'
      
        'v.id_preco, v.valor_bruto, v.valor_acrescimo, v.valor_desconto, ' +
        'v.valor_troca, v.valor_entrada,'
      
        '(v.valor_bruto + v.valor_acrescimo - v.valor_desconto - v.valor_' +
        'troca) AS valor_liquido,'
      'v.valor_recebido, '
      'CASE'
      
        '   WHEN (v.valor_bruto + v.valor_acrescimo - v.valor_desconto - ' +
        'v.valor_troca) >= v.valor_recebido THEN (v.valor_bruto + v.valor' +
        '_acrescimo - v.valor_desconto - v.valor_troca) - v.valor_recebid' +
        'o '
      '   ELSE'
      '      0'
      'END AS valor_receber,'
      
        'v.valor_troco, v.percentual_comissao, v.observacao, v.id_usuario' +
        ', v.tipo_documento_fiscal,'
      'v.status,'
      'CASE v.status'
      '   WHEN '#39'0'#39' THEN '#39'EM ELABORA'#199#195'O'#39
      '   WHEN '#39'1'#39' then '#39'AGUARDANDO APROVA'#199#195'O'#39
      '   WHEN '#39'3'#39' THEN '#39'AGUARDANDO PAGAMENTO'#39
      '   WHEN '#39'5'#39' THEN '#39'FINALIZADA'#39
      '   WHEN '#39'8'#39' THEN '#39'DESIST'#202'NCIA'#39
      '   WHEN '#39'9'#39' THEN '#39'CANCELADA'#39
      'END AS descricao_status  '
      'FROM vendas v'
      '   INNER JOIN vw_estabelecimentos e'
      '      ON v.id_estabelecimento = e.id_estabelecimento'
      '   INNER JOIN terminais t'
      '      ON v.id_caixa = t.id_terminal'
      '   LEFT OUTER JOIN vw_operadores o'
      '      ON v.id_operador = o.id_operador'
      'WHERE v.id_venda = :id_venda'
      'ORDER BY v.id_venda')
    AfterOpen = qryCupomAfterOpen
    BeforeClose = qryCupomBeforeClose
    Left = 300
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsCupom: TDataSource
    DataSet = qryCupom
    Left = 300
    Top = 52
  end
  object frdsCupom: TfrxDBDataset
    UserName = 'frdsCupom'
    CloseDataSource = False
    DataSet = qryCupom
    BCDToCurrency = False
    Left = 300
    Top = 96
  end
  object qryCupom_Produtos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT i.id_venda, i.item, i.id_produto, p.codigo_barras, p.desc' +
        'ricao, p.resumida,'
      
        'i.quantidade, i.id_unidade, u.sigla AS sigla_unidade, i.peso_bru' +
        'to,'
      
        'i.preco_unitario, i.preco_venda, i.percentual_desconto, i.valor_' +
        'desconto, '
      'i.percentual_acrescimo, i.valor_acrescimo,'
      '(i.preco_unitario * i.quantidade) AS preco_total_bruto'
      'FROM vendas_produtos i'
      '   INNER JOIN vw_produtos p'
      '      ON i.id_produto = p.id_produto'
      '   LEFT OUTER JOIN unidades u'
      '      ON i.id_unidade = u.id_unidade '
      'WHERE i.id_venda = :id_venda'
      'ORDER BY i.item')
    MasterSource = dsCupom
    MasterFields = 'id_venda'
    DetailFields = 'id_venda'
    Left = 300
    Top = 140
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryCupom_Parcelas: TUniQuery
    Connection = dmConexao.conConexao
    MasterSource = dsCupom
    Left = 300
    Top = 228
  end
  object qryCupom_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT r.id_venda, r.item, r.id_transacao, t.descricao AS descri' +
        'cao_transacao, r.valor_recebido'
      'FROM vendas_recebimentos r'
      '   INNER JOIN transacoes t'
      '      ON r.id_transacao = t.id_transacao'
      'WHERE r.id_venda = :id_venda'
      'ORDER BY r.item')
    MasterSource = dsCupom
    MasterFields = 'id_venda'
    DetailFields = 'id_venda'
    Left = 300
    Top = 316
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object frdsCupom_Produtos: TfrxDBDataset
    UserName = 'frdsCupom_Produtos'
    CloseDataSource = False
    DataSet = qryCupom_Produtos
    BCDToCurrency = False
    Left = 300
    Top = 184
  end
  object frdsCupom_Parcelas: TfrxDBDataset
    UserName = 'frdsCupom_Parcelas'
    CloseDataSource = False
    DataSet = qryCupom_Parcelas
    BCDToCurrency = False
    Left = 300
    Top = 272
  end
  object frdsCupom_Recebimentos: TfrxDBDataset
    UserName = 'frdsCupom_Recebimentos'
    CloseDataSource = False
    DataSet = qryCupom_Recebimentos
    BCDToCurrency = False
    Left = 300
    Top = 360
  end
  object qryFechamento: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT t.id_local, e.tipo_pessoa AS tipo_pessoa_estabelecimento,' +
        ' e.cpf AS cpf_estabelecimento, e.rg_numero, e.cnpj AS cnpj_estab' +
        'elecimento,'
      
        'e.insc_estadual AS insc_estadual_estabelecimento, e.insc_municip' +
        'al AS insc_municipal_estabelecimento,'
      
        'e.insc_est_subst AS insc_est_subst_estabelecimento, e.insc_sufra' +
        'ma AS insc_suframa_estabelecimento,'
      
        'e.razao AS razao_estabelecimento, e.fantasia AS fantasia_estabel' +
        'ecimento, e.logradouro AS logradouro_estabelecimento, e.numero A' +
        'S numero_estabelecimento,'
      
        'e.complemento AS complemento_estabelecimento, e.bairro AS bairro' +
        '_estabelecimento,'
      
        'e.id_pais AS id_pais_estabelecimento, e.descricao_pais AS descri' +
        'cao_pais_estabelecimento,'
      
        'e.id_estado AS id_estado_estabelecimento, e.sigla_estado AS sigl' +
        'a_estado_estabelecimento, '
      
        'e.id_cidade AS id_cidade_estabelecimento, e.descricao_cidade AS ' +
        'descricao_cidade_estabelecimento,'
      
        'e.cep AS cep_estabelecimento, e.telefone AS telefone_estabelecim' +
        'ento, e.fax AS fax_estabelecimento,'
      
        'e.email AS email_estabelecimento, e.logomarca AS logomarca_estab' +
        'elecimento,'
      
        'tm.id_terminal, t.descricao AS descricao_terminal, t.numero, tm.' +
        'id_operador, o.nome AS nome_operador, tm.data_movimento,'
      'tm.data_abertura, tm.data_encerramento,'
      
        'COALESCE(f_get_terminal_media_ticket_operador(tm.id_terminal, tm' +
        '.data_movimento, tm.id_operador), 0) AS media_ticket,'
      
        'COALESCE(f_get_terminal_saldo_anterior_operador(tm.id_terminal, ' +
        'tm.data_movimento, tm.id_operador), 0) AS saldo_anterior,'
      
        'COALESCE(f_get_terminal_entradas_operador(tm.id_terminal, tm.dat' +
        'a_movimento, tm.id_operador), 0) AS valor_total_entradas,'
      
        'COALESCE(f_get_terminal_saidas_operador(tm.id_terminal, tm.data_' +
        'movimento, tm.id_operador), 0) AS valor_total_saidas,'
      
        'COALESCE(f_get_terminal_saldo_operador(tm.id_terminal, tm.data_m' +
        'ovimento, tm.id_operador), 0) AS saldo_atual'
      'FROM terminais_movimentos tm'
      '   INNER JOIN (terminais t'
      '                  INNER JOIN vw_locais e'
      '                     ON t.id_local = e.id_local)'
      '      ON tm.id_terminal = t.id_terminal'
      '   INNER JOIN vw_operadores o'
      '      ON tm.id_operador = o.id_operador'
      'WHERE tm.id_terminal = :id_terminal'
      ' AND tm.data_movimento = :data_movimento'
      ' AND tm.id_operador = :id_operador'
      'ORDER BY o.nome, tm.data_movimento')
    AfterOpen = qryFechamentoAfterOpen
    BeforeClose = qryFechamentoBeforeClose
    Left = 460
    Top = 8
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = 44198d
      end
      item
        DataType = ftLargeint
        Name = 'id_operador'
        ParamType = ptInput
        Value = 15
      end>
  end
  object dsFechamento: TDataSource
    DataSet = qryFechamento
    Left = 460
    Top = 52
  end
  object frdsFechamento: TfrxDBDataset
    UserName = 'frdsFechamento'
    CloseDataSource = False
    DataSet = qryFechamento
    BCDToCurrency = False
    Left = 460
    Top = 96
  end
  object qryFechamento_Vendas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT v.id_caixa AS id_terminal, v.data_movimento, '
      'SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_bruto'
      '       ELSE'
      '          0'
      '    END) AS valor_total_bruto,'
      'SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_acrescimo'
      '       ELSE'
      '          0'
      '    END) AS valor_total_acrescimo,'
      'SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_desconto'
      '       ELSE'
      '          0'
      '    END) AS valor_total_desconto, '
      'SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_troca'
      '       ELSE'
      '          0'
      '    END) AS valor_total_troca, '
      '(SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_bruto'
      '       ELSE'
      '          0'
      '    END) + '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_acrescimo'
      '       ELSE'
      '          0'
      '    END) - '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_desconto'
      '       ELSE'
      '          0'
      '    END) - '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'0'#39', '#39'5'#39') THEN v.valor_troca'
      '       ELSE'
      '          0'
      '    END)) AS valor_total_liquido,'
      '(SUM(CASE'
      '       WHEN v.status IN ('#39'9'#39') THEN v.valor_bruto'
      '       ELSE'
      '          0'
      '    END) + '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'9'#39') THEN v.valor_acrescimo'
      '       ELSE'
      '          0'
      '    END) - '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'9'#39') THEN v.valor_desconto'
      '       ELSE'
      '          0'
      '    END) - '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'9'#39') THEN v.valor_troca'
      '       ELSE'
      '          0'
      '    END)) AS valor_total_cancelamento,'
      '(SUM(CASE'
      '       WHEN v.status IN ('#39'8'#39') THEN v.valor_bruto'
      '       ELSE'
      '          0'
      '    END) + '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'8'#39') THEN v.valor_acrescimo'
      '       ELSE'
      '          0'
      '    END) - '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'8'#39') THEN v.valor_desconto'
      '       ELSE'
      '          0'
      '    END) - '
      ' SUM(CASE'
      '       WHEN v.status IN ('#39'8'#39') THEN v.valor_troca'
      '       ELSE'
      '          0'
      '    END)) AS valor_total_desistencia'
      'FROM vendas v'
      '   INNER JOIN terminais_movimentos tm'
      
        '      ON v.id_caixa = tm.id_terminal AND v.data_movimento = tm.d' +
        'ata_movimento AND v.id_operador = tm.id_operador'
      'WHERE v.id_caixa = :id_terminal'
      ' AND v.data_movimento = :data_movimento'
      ' AND v.id_operador = :id_operador'
      ' AND v.status IN ('#39'0'#39', '#39'5'#39', '#39'8'#39', '#39'9'#39')'
      'GROUP BY v.id_caixa, v.data_movimento')
    MasterSource = dsFechamento
    Left = 460
    Top = 184
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = 43154d
      end
      item
        DataType = ftLargeint
        Name = 'id_operador'
        ParamType = ptInput
        Value = 7
      end>
  end
  object frdsFechamento_Vendas: TfrxDBDataset
    UserName = 'frdsFechamento_Vendas'
    CloseDataSource = False
    DataSet = qryFechamento_Vendas
    BCDToCurrency = False
    Left = 460
    Top = 228
  end
  object qryFechamento_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT v.id_caixa AS id_terminal, v.data_movimento, '
      'vr.id_transacao, t.descricao AS descricao_forma_recebimento,'
      'sum(vr.valor_recebido - vr.valor_troco) AS valor_total_recebido'
      'FROM vendas v'
      '   INNER JOIN (vendas_recebimentos vr'
      '                  INNER JOIN transacoes t'
      '                     ON vr.id_transacao = t.id_transacao)'
      '      ON v.id_venda = vr.id_venda'
      'WHERE v.id_caixa = :id_terminal'
      ' AND v.data_movimento = :data_movimento'
      ' AND v.id_operador = :id_operador'
      ' AND v.status IN ('#39'0'#39', '#39'5'#39')'
      
        'GROUP BY v.id_caixa, v.data_movimento, vr.id_transacao, t.descri' +
        'cao'
      'ORDER BY t.descricao')
    MasterSource = dsFechamento
    Left = 460
    Top = 272
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = 43154d
      end
      item
        DataType = ftLargeint
        Name = 'id_operador'
        ParamType = ptInput
        Value = 7
      end>
  end
  object frdsFechamento_Recebimentos: TfrxDBDataset
    UserName = 'frdsFechamento_Recebimentos'
    CloseDataSource = False
    DataSet = qryFechamento_Recebimentos
    BCDToCurrency = False
    Left = 460
    Top = 316
  end
  object qryFechamento_Operacoes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT tm.id_terminal, tm.data_movimento, '
      
        'tmo.id_operacao, o.descricao AS descricao_operacao, tmo.id_centr' +
        'o, tmo.historico,'
      'SUM(tmo.valor) AS valor_total'
      'FROM terminais_movimentos tm'
      '   INNER JOIN (terminais_movimentos_operacoes tmo'
      '                  INNER JOIN operacoes o'
      '                     ON tmo.id_operacao = o.id_operacao)'
      
        '      ON tm.id_terminal = tmo.id_terminal AND tm.data_movimento ' +
        '= tmo.data_movimento AND tm.id_operador = tmo.id_operador     '
      'WHERE tm.id_terminal = :id_terminal'
      ' AND tm.data_movimento = :data_movimento'
      ' AND tm.id_operador = :id_operador'
      
        'GROUP BY tm.id_terminal, tm.data_movimento, tmo.id_operacao, o.d' +
        'escricao, tmo.id_centro, tmo.historico'
      'ORDER BY o.descricao')
    MasterSource = dsFechamento
    Left = 460
    Top = 360
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = 43154d
      end
      item
        DataType = ftLargeint
        Name = 'id_operador'
        ParamType = ptInput
        Value = 7
      end>
  end
  object frdsFechamento_Operacoes: TfrxDBDataset
    UserName = 'frdsFechamento_Operacoes'
    CloseDataSource = False
    DataSet = qryFechamento_Operacoes
    BCDToCurrency = False
    Left = 460
    Top = 404
  end
  object qryVendas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT v.id_venda, v.id_local, v.fantasia_local, v.data_moviment' +
        'o, v.id_caixa, v.documento, v.id_condicao,'
      
        'v.descricao_condicao, v.parcelas, v.valor_entrada, v.id_represen' +
        'tante, v.nome_representante, v.telefone_representante,'
      
        'v.id_parceiro, v.razao_parceiro, v.id_conveniado, v.data_entrega' +
        ', v.id_transportador, v.id_entregador,'
      
        'v.valor_bruto, v.valor_acrescimo, v.valor_desconto, v.valor_troc' +
        'a, v.valor_liquido, v.percentual_comissao,'
      'v.id_usuario, v.login_usuario'
      'FROM vw_vendas v'
      '   INNER JOIN terminais_movimentos tm'
      
        '      ON v.id_caixa = tm.id_terminal AND v.data_movimento = tm.d' +
        'ata_movimento AND v.id_operador = tm.id_operador'
      'WHERE id_caixa = :id_terminal'
      ' AND v.data_movimento = :data_movimento'
      ' AND tm.id_operador = :id_operador'
      ' AND v.status IN ('#39'2'#39', '#39'5'#39')'
      'ORDER BY v.documento')
    Left = 612
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = 44170d
      end
      item
        DataType = ftInteger
        Name = 'id_operador'
        ParamType = ptInput
        Value = 15
      end>
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    Left = 612
    Top = 52
  end
  object dbdsVendas: TfrxDBDataset
    UserName = 'dbdsVendas'
    CloseDataSource = False
    DataSet = qryVendas
    BCDToCurrency = False
    Left = 612
    Top = 96
  end
  object qryVendas_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT r.id_venda, r.id_transacao, t.descricao AS descricao_tran' +
        'sacao, '
      
        '(r.valor_recebido - r.valor_troco) AS valor_recebido, r.valor_tr' +
        'oco'
      'FROM vendas_recebimentos r'
      '   INNER JOIN transacoes t'
      '      ON r.id_transacao = t.id_transacao'
      'WHERE r.id_venda = :id_venda'
      'ORDER BY t.descricao')
    MasterSource = dsVendas
    Left = 612
    Top = 140
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = 70973
      end>
  end
  object dbdsVendas_Recebimentos: TfrxDBDataset
    UserName = 'dbdsVendas_Recebimentos'
    CloseDataSource = False
    DataSet = qryVendas_Recebimentos
    BCDToCurrency = False
    Left = 612
    Top = 184
  end
  object qryRecebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT r.id_movimento, r.id_conta, r.data_movimento, r.id_duplic' +
        'ata, r.razao_cliente, r.documento, r.data_vencimento,'
      
        'r.parcela, r.data, r.id_transacao, r.descricao_transacao, r.hist' +
        'orico, r.valor'
      'FROM ('
      
        '      SELECT cm.id_movimento, cm.id_conta, cm.data_movimento, b.' +
        'id_duplicata, c.razao AS razao_cliente, d.documento, d.data_venc' +
        'imento,'
      
        '      b.parcela, b.data, b.id_transacao, r.descricao AS descrica' +
        'o_transacao, b.historico, b.valor'
      '      FROM contas_movimentos cm'
      '         INNER JOIN terminais t'
      '            ON cm.id_conta = t.id_conta'
      '         INNER JOIN terminais_movimentos tm'
      
        '            ON t.id_terminal = tm.id_terminal AND cm.data_movime' +
        'nto = tm.data_movimento'
      '         INNER JOIN (duplicatas_baixas b'
      '                        INNER JOIN (duplicatas d'
      '                                       INNER JOIN vw_clientes c'
      
        '                                          ON d.id_parceiro = c.i' +
        'd_parceiro)'
      '                           ON b.id_duplicata = d.id_duplicata'
      '                        LEFT OUTER JOIN transacoes r'
      '                           ON b.id_transacao = r.id_transacao'
      '                        LEFT OUTER JOIN vendas_parcelas vp'
      '                           ON b.id_duplicata = vp.id_duplicata)'
      
        '            ON b.id_terminal = t.id_terminal AND b.data = tm.dat' +
        'a_movimento AND b.id_operador = tm.id_operador AND b.id_conta_mo' +
        'vimento = cm.id_movimento'
      '      WHERE t.id_terminal = :id_terminal'
      '       AND cm.data_movimento = :data_movimento'
      '       AND tm.id_operador = :id_operador'
      '       AND b.historico LIKE '#39'RECEBIMENTO NO CAIXA%'#39
      
        '       AND (vp.id_duplicata IS NULL OR (vp.id_duplicata IS NOT N' +
        'ULL AND vp.prazo > 0))'
      '      UNION ALL'
      
        '      SELECT b.id_conta_movimento AS id_movimento, b.id_conta, b' +
        '.data AS data_movimento, b.id_duplicata, c.razao AS razao_client' +
        'e, d.documento, d.data_vencimento,'
      
        '      b.parcela, b.data, b.id_transacao, r.descricao AS descrica' +
        'o_transacao, b.historico, b.valor'
      '      FROM duplicatas_baixas b'
      '         INNER JOIN terminais_movimentos tm'
      
        '            ON b.id_terminal = tm.id_terminal AND b.data = tm.da' +
        'ta_movimento AND b.id_operador = tm.id_operador'
      '         INNER JOIN (duplicatas d'
      '                        INNER JOIN vw_clientes c'
      '                           ON d.id_parceiro = c.id_parceiro)'
      '            ON b.id_duplicata = d.id_duplicata'
      '         LEFT OUTER JOIN transacoes r'
      '            ON b.id_transacao = r.id_transacao'
      '      WHERE b.id_terminal = :id_terminal'
      '       AND b.data = :data_movimento'
      '       AND b.id_operador = :id_operador'
      '       AND b.historico LIKE '#39'RECEBIMENTO NO CAIXA%'#39
      '       AND b.id_conta_movimento IS NULL'
      '       AND NOT EXISTS(SELECT 1'
      '                      FROM vendas_parcelas vp'
      '                      WHERE vp.id_duplicata = d.id_duplicata'
      '                       AND vp.prazo = 0)'
      '     ) r'
      
        'ORDER BY r.data_movimento, r.razao_cliente, r.parcela, r.documen' +
        'to ')
    Left = 759
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
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
        DataType = ftInteger
        Name = 'id_operador'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsRecebimentos: TDataSource
    DataSet = qryRecebimentos
    Left = 756
    Top = 52
  end
  object dbdsRecebimentos: TfrxDBDataset
    UserName = 'dbdsRecebimentos'
    CloseDataSource = False
    DataSet = qryRecebimentos
    BCDToCurrency = False
    Left = 756
    Top = 96
  end
  object qryMovimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT cm.id_movimento, cm.data_movimento, cm.ordem, cm.document' +
        'o, cm.historico, '
      'CASE'
      '   WHEN cm.natureza = '#39'C'#39' THEN cm.valor'
      'END AS valor_entrada, '
      'CASE'
      '   WHEN cm.natureza = '#39'D'#39' THEN cm.valor'
      'END AS valor_saida,'
      
        'f_get_conta_saldo_anterior_operador(cm.id_terminal, cm.data_movi' +
        'mento, cm.id_operador, cm.id_conta) AS saldo_anterior, '
      
        'f_get_conta_saldo_operador(cm.id_terminal, cm.data_movimento, cm' +
        '.id_operador, cm.id_conta) AS saldo_atual'
      'FROM contas_movimentos cm'
      '   INNER JOIN terminais t'
      '      ON cm.id_terminal = t.id_terminal'
      '   INNER JOIN terminais_movimentos tm'
      
        '      ON cm.id_terminal = tm.id_terminal AND cm.data_movimento =' +
        ' tm.data_movimento AND cm.id_operador = tm.id_operador'
      'WHERE cm.id_terminal = :id_terminal'
      ' AND cm.data_movimento = :data_movimento'
      ' AND cm.id_operador = :id_operador'
      'ORDER BY cm.ordem')
    Left = 868
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = 44170d
      end
      item
        DataType = ftInteger
        Name = 'id_operador'
        ParamType = ptInput
        Value = 15
      end>
  end
  object dsMovimentos: TDataSource
    DataSet = qryMovimentos
    Left = 868
    Top = 52
  end
  object dbdsMovimentos: TfrxDBDataset
    UserName = 'dbdsMovimentos'
    CloseDataSource = False
    DataSet = qryMovimentos
    BCDToCurrency = False
    Left = 868
    Top = 96
  end
  object qryPreVendas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT pv.id_prevenda, pv.id_estabelecimento, pv.id_local, pv.da' +
        'ta_movimento, pv.documento, '
      
        'pv.id_cliente, c.tipo_pessoa AS tipo_pessoa_cliente, c.razao AS ' +
        'razao_cliente,'
      
        'c.fantasia AS fantasia_cliente, pv.id_condicao, cp.descricao AS ' +
        'descricao_condicao,'
      'pv.parcelas, pv.tipo_prazo, pv.id_preco, pv.data_entrega, '
      
        'pv.id_representante, r.nome AS nome_representante, pv.percent_co' +
        'missao,'
      
        'pv.valor_entrada, pv.valor_bruto, pv.valor_acrescimo, pv.valor_d' +
        'esconto, '
      'pv.valor_troca, '
      
        '(((pv.valor_bruto + pv.valor_acrescimo) - pv.valor_desconto) - p' +
        'v.valor_troca) AS valor_liquido,'
      'pv.observacao, pv.id_status,'
      'CASE pv.id_status'
      '   WHEN 1 THEN '#39'Em Andamento'#39
      '   WHEN 2 THEN '#39'Aguardando Aprova'#231#227'o'#39
      '   WHEN 3 THEN '#39'Aguardando Pagamento'#39
      '   WHEN 4 THEN '#39'Cancelada'#39
      '   WHEN 5 THEN '#39'Exclu'#237'da'#39
      '   WHEN 6 THEN '#39'Finalizada'#39
      'END AS dc_status'
      'FROM prevendas pv'
      '   INNER JOIN vw_estabelecimentos e'
      '      ON pv.id_estabelecimento = e.id_estabelecimento'
      '   LEFT OUTER JOIN vw_locais l'
      '      ON pv.id_local = l.id_local'
      '   LEFT OUTER JOIN vw_clientes c'
      '      ON pv.id_cliente = c.id_parceiro'
      '   LEFT OUTER JOIN condicoes cp'
      '      ON pv.id_condicao = cp.id_condicao'
      '   LEFT OUTER JOIN vw_representantes r'
      '      ON pv.id_representante = r.id_representante'
      'WHERE pv.data_movimento = :data_movimento'
      
        ' AND ((pv.tipo = '#39'P'#39' AND pv.id_status NOT IN (6)) OR (pv.tipo = ' +
        #39'O'#39' AND pv.id_status IN (3)))'
      'ORDER BY pv.documento')
    Left = 868
    Top = 140
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dbdsPreVendas: TfrxDBDataset
    UserName = 'dbdsPreVendas'
    CloseDataSource = False
    DataSet = qryPreVendas
    BCDToCurrency = False
    Left = 868
    Top = 184
  end
  object qryRecebimentos_Totais: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT v.id_caixa, v.data_movimento, r.id_transacao, a.descricao' +
        ' AS descricao_transacao, a.id_tipo_pagamento, '
      'SUM(r.valor_recebido - r.valor_troco) AS total_recebido'
      'FROM vendas_recebimentos r'
      '   INNER JOIN vendas v'
      '      ON r.id_venda = v.id_venda'
      '   INNER JOIN transacoes a'
      '      ON r.id_transacao = a.id_transacao'
      'WHERE v.id_caixa = :id_terminal'
      ' AND v.data_movimento = :data_movimento'
      ' AND v.id_operador = :id_operador'
      
        'GROUP BY v.id_caixa, v.data_movimento, r.id_transacao, a.id_tipo' +
        '_pagamento'
      'ORDER BY v.id_caixa, v.data_movimento, a.descricao')
    Left = 756
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_terminal'
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_movimento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_operador'
        Value = nil
      end>
  end
  object dsRecebimentos_Totais: TDataSource
    DataSet = qryRecebimentos_Totais
    Left = 756
    Top = 184
  end
  object dbdsRecebimentos_Totais: TfrxDBDataset
    UserName = 'dbdsRecebimentos_Totais'
    CloseDataSource = False
    DataSet = qryRecebimentos_Totais
    BCDToCurrency = False
    Left = 760
    Top = 228
  end
  object dbdsFechamento: TfrxDBDataset
    UserName = 'dbdsFechamento'
    CloseDataSource = False
    DataSet = qryFechamento
    BCDToCurrency = False
    Left = 460
    Top = 140
  end
  object qryCarne: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT v.id_local, l.tipo_pessoa AS tipo_pessoa_local,'
      
        'l.cpf AS cpf_local, l.rg_numero AS rg_numero_local, l.cnpj AS cn' +
        'pj_local,'
      'l.insc_estadual AS insc_estadual_local, l.razao AS razao_local,'
      'l.fantasia AS fantasia_local, l.logradouro AS logradouro_local,'
      'l.numero AS numero_local, l.complemento AS complemento_local,'
      
        'l.bairro AS bairro_local, l.descricao_cidade AS descricao_cidade' +
        '_local,'
      'l.sigla_estado AS sigla_estado_local, l.cep AS cep_local,'
      
        'l.telefone AS telefone_local, l.fax AS fax_local, l.email AS ema' +
        'il_local,'
      'vp.id_venda, vp.parcela, '
      
        'v.id_parceiro AS id_cliente, c.tipo_pessoa AS tipo_pessoa_client' +
        'e, c.cpf AS cpf_cliente, '
      'c.rg_numero AS rg_numero_cliente, c.cnpj AS cnpj_cliente,'
      
        'c.insc_estadual AS insc_estadual_cliente, c.insc_municipal AS in' +
        'sc_municipal_cliente,'
      
        'c.insc_suframa AS insc_suframa_cliente, c.razao AS razao_cliente' +
        ','
      
        'c.fantasia AS fantasia_cliente, c.logradouro_cobranca AS logrado' +
        'uro_cobranca_cliente,'
      
        'c.numero_cobranca AS numero_cobranca_cliente, c.complemento_cobr' +
        'anca AS complemento_cobranca_cliente,'
      
        'c.bairro_cobranca AS bairro_cobranca_cliente, c.referencia_cobra' +
        'nca AS referencia_cobranca_cliente,'
      'c.descricao_pais_cobranca AS descricao_pais_cobranca_cliente,'
      'c.sigla_estado_cobranca AS sigla_estado_cobranca_cliente,'
      
        'c.descricao_cidade_cobranca AS descricao_cidade_cobranca_cliente' +
        ', c.cep_cobranca AS cep_cobranca_cliente,'
      
        'c.telefone AS telefone_cliente, c.fax AS fax_cliente, c.celular ' +
        'AS celular_cliente,'
      'c.email AS email_cliente, c.contato AS contato_cliente, '
      
        'v.id_condicao AS id_condicao_pagamento, cp.descricao AS descrica' +
        'o_condicao_pagamento,'
      'vp.parcelas, vp.fatura, vp.duplicata, vp.xduplicata, vp.prazo,'
      'vp.data_vencimento, vp.valor_parcela, vp.juros, vp.multa,'
      'l.logomarca AS logomarca_local'
      'FROM vw_vendas_parcelas vp'
      '   INNER JOIN (vendas v'
      '                  INNER JOIN vw_locais l'
      '                     ON v.id_local = l.id_local'
      '                  LEFT OUTER JOIN condicoes cp'
      '                     ON v.id_condicao = cp.id_condicao'
      '                  LEFT OUTER JOIN vw_clientes c'
      '                     ON v.id_parceiro = c.id_parceiro)'
      '      ON vp.id_venda = v.id_venda'
      'WHERE vp.id_venda = :id_venda'
      'ORDER BY vp.parcela')
    Left = 172
    Top = 96
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object frdsCarne: TfrxDBDataset
    UserName = 'frdsCarne'
    CloseDataSource = False
    DataSet = qryCarne
    BCDToCurrency = False
    Left = 172
    Top = 140
  end
  object dbdsLocais: TfrxDBDataset
    UserName = 'dbdsLocais'
    CloseDataSource = False
    DataSet = qryLocais
    BCDToCurrency = False
    Left = 172
    Top = 360
  end
  object dsTerminais: TDataSource
    DataSet = qryTerminais
    Left = 172
    Top = 228
  end
  object dbdsCaixa: TfrxDBDataset
    UserName = 'dbdsCaixa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_terminal=id_terminal'
      'id_estabelecimento=id_estabelecimento'
      'id_local=id_local'
      'descricao=descricao'
      'numero=numero'
      'fiscal=fiscal'
      'tipo_documento_fiscal=tipo_documento_fiscal'
      'endereco_fisico=endereco_fisico'
      'id_conta=id_conta'
      'id_condicao_pagamento=id_condicao_pagamento'
      'id_cliente_consumidor=id_cliente_consumidor'
      'etiqueta_prefixo=etiqueta_prefixo'
      'etiqueta_codigo_inicio=etiqueta_codigo_inicio'
      'etiqueta_codigo_tamanho=etiqueta_codigo_tamanho'
      'id_balanca_acoplada=id_balanca_acoplada'
      'impressora_padrao=impressora_padrao'
      'autenticar_documento=autenticar_documento'
      'autenticador=autenticador'
      'danfe_logomarca_arquivo=danfe_logomarca_arquivo'
      'danfe_logomarca_expandir=danfe_logomarca_expandir'
      'dfe_forma_emissao=dfe_forma_emissao'
      'contingencia_motivo=contingencia_motivo'
      'salvar_resposta_envio=salvar_resposta_envio'
      'salvar_resposta_envio_caminho=salvar_resposta_envio_caminho'
      'ws_ambiente=ws_ambiente'
      'ws_visualizar_mensagens=ws_visualizar_mensagens'
      'certificado_caminho=certificado_caminho'
      'certificado_senha=certificado_senha'
      'certificado_serie=certificado_serie'
      'proxy_host=proxy_host'
      'proxy_porta=proxy_porta'
      'proxy_usuario=proxy_usuario'
      'proxy_senha=proxy_senha'
      'email_host=email_host'
      'email_porta=email_porta'
      'email_usuario=email_usuario'
      'email_senha=email_senha'
      'email_assunto=email_assunto'
      'email_ssl=email_ssl'
      'email_mensagem=email_mensagem'
      'emissor_cupom=emissor_cupom'
      'emissor_nfe=emissor_nfe'
      'emissor_nfce=emissor_nfce'
      'operacao_offline=operacao_offline'
      'versao_xml=versao_xml')
    DataSet = qryTerminais
    BCDToCurrency = False
    Left = 172
    Top = 272
  end
  object qryTerminais: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT t.id_terminal, t.id_estabelecimento, t.id_local, t.descri' +
        'cao, t.numero, t.fiscal, t.tipo_documento_fiscal,'
      
        't.endereco_fisico, t.id_conta, t.id_condicao_pagamento, t.id_cli' +
        'ente_consumidor,'
      
        't.etiqueta_prefixo, t.etiqueta_codigo_inicio, t.etiqueta_codigo_' +
        'tamanho,'
      
        't.id_balanca_acoplada, t.impressora_padrao, t.autenticar_documen' +
        'to, t.autenticador,'
      't.danfe_logomarca_arquivo, t.danfe_logomarca_expandir,'
      't.dfe_forma_emissao, t.contingencia_motivo,'
      't.salvar_resposta_envio, t.salvar_resposta_envio_caminho,'
      't.ws_ambiente, t.ws_visualizar_mensagens, t.certificado_caminho,'
      't.certificado_senha, t.certificado_serie,'
      't.proxy_host, t.proxy_porta, t.proxy_usuario, t.proxy_senha,'
      't.email_host, t.email_porta, t.email_usuario, t.email_senha,'
      't.email_assunto, t.email_ssl, t.email_mensagem,'
      
        't.emissor_cupom, t.emissor_nfe, t.emissor_nfce, t.operacao_offli' +
        'ne,'
      't.versao_xml'
      'FROM terminais t'
      'WHERE t.id_terminal = :id_terminal'
      'ORDER BY t.numero')
    AfterOpen = qryTerminaisAfterOpen
    BeforeClose = qryTerminaisBeforeClose
    Left = 172
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = 1
      end>
  end
  object qryLocais: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_local, tipo_pessoa, cnpj, insc_estadual, insc_municipa' +
        'l, insc_suframa, razao, fantasia, logradouro, numero, complement' +
        'o, '
      
        'id_pais, descricao_pais, id_estado, sigla_estado, id_cidade, des' +
        'cricao_cidade, bairro, cep, telefone, fax, email,'
      
        'contato, cnae_fiscal, natureza_juridica, regime_tributario, logo' +
        'marca'
      'FROM vw_locais'
      'ORDER BY id_local')
    MasterSource = dsTerminais
    MasterFields = 'id_local'
    DetailFields = 'id_local'
    Left = 172
    Top = 316
    ParamData = <
      item
        DataType = ftWord
        Name = 'id_local'
        ParamType = ptInput
        Value = 3
      end>
  end
  object qryCupom_Trocas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_venda, item, id_produto, codigo_barras, descricao, id_' +
        'unidade, quantidade, peso_bruto, preco_unitario, valor_desconto,'
      '((preco_unitario * quantidade) - valor_desconto) AS preco_total'
      'FROM vendas_trocas'
      'WHERE id_venda = :id_venda'
      'ORDER BY item')
    MasterSource = dsCupom
    MasterFields = 'id_venda'
    DetailFields = 'id_venda'
    Left = 300
    Top = 408
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end>
  end
  object frdsCupom_Trocas: TfrxDBDataset
    UserName = 'frdsCupom_Trocas'
    CloseDataSource = False
    DataSet = qryCupom_Trocas
    BCDToCurrency = False
    Left = 300
    Top = 456
  end
end
