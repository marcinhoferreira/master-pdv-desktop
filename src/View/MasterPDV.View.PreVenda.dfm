inherited frmPreVenda: TfrmPreVenda
  Left = 0
  Top = 0
  Caption = 'Pr'#233'-Venda'
  ClientHeight = 537
  ClientWidth = 936
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  ExplicitWidth = 952
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 16
  object gboxLocalizar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    ParentBackground = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 48
    Width = 936
    object lblPreVenda: TcxLabel
      Left = 8
      Top = 9
      Caption = 'N'#250'mero:'
      FocusControl = btnedtNumero
      Transparent = True
    end
    object btnedtNumero: TcxButtonEdit
      Left = 92
      Top = 8
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = veNumeroPropertiesButtonClick
      TabOrder = 0
      Text = '0'
      OnKeyDown = btnedtNumeroKeyDown
      OnKeyPress = btnedtNumeroKeyPress
      Width = 121
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 48
    Align = alClient
    PanelStyle.Active = True
    ParentBackground = False
    TabOrder = 1
    Visible = False
    DesignSize = (
      936
      469)
    Height = 469
    Width = 936
    object gboxTotais: TcxGroupBox
      Left = 677
      Top = 58
      Anchors = [akTop, akRight]
      Caption = 'Totais:'
      ParentFont = False
      TabOrder = 1
      Height = 196
      Width = 250
      object lblValorBruto: TcxLabel
        Left = 12
        Top = 20
        Caption = 'Total Bruto:'
        FocusControl = dbeValorBruto
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblValorAcrescimo: TcxLabel
        Left = 12
        Top = 44
        Caption = '(+) Acr'#233'scimo:'
        FocusControl = dbeValorAcrescimo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblValorDesconto: TcxLabel
        Left = 12
        Top = 68
        Caption = '(-) Desconto:'
        FocusControl = dbeValorDesconto
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblValorTroca: TcxLabel
        Left = 12
        Top = 92
        Caption = '(-) Troca/Dev.:'
        FocusControl = dbeValorTroca
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblValorLiquido: TcxLabel
        Left = 12
        Top = 116
        Caption = 'Total L'#237'quido:'
        FocusControl = dbeValorLiquido
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object JvLabel1: TcxLabel
        Left = 12
        Top = 140
        Caption = 'Total Recebido:'
        FocusControl = dbeValorRecebido
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblValorReceberTroco: TcxLabel
        Left = 12
        Top = 164
        Caption = 'A Receber:'
        FocusControl = dbeValorReceberTroco
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object dbeValorBruto: TcxDBCurrencyEdit
        Left = 116
        Top = 12
        DataBinding.DataField = 'valor_bruto'
        DataBinding.DataSource = dsPreVendas
        Enabled = False
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 0
        Width = 125
      end
      object dbeValorAcrescimo: TcxDBCurrencyEdit
        Left = 116
        Top = 36
        DataBinding.DataField = 'valor_acrescimo'
        DataBinding.DataSource = dsPreVendas
        Enabled = False
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 1
        Width = 125
      end
      object dbeValorDesconto: TcxDBCurrencyEdit
        Left = 116
        Top = 60
        DataBinding.DataField = 'valor_desconto'
        DataBinding.DataSource = dsPreVendas
        Enabled = False
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 2
        Width = 125
      end
      object dbeValorTroca: TcxDBCurrencyEdit
        Left = 116
        Top = 84
        DataBinding.DataField = 'valor_troca'
        DataBinding.DataSource = dsPreVendas
        Enabled = False
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 3
        Width = 125
      end
      object dbeValorLiquido: TcxDBCurrencyEdit
        Left = 116
        Top = 108
        DataBinding.DataField = 'valor_liquido'
        DataBinding.DataSource = dsPreVendas
        Enabled = False
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 4
        Width = 125
      end
      object dbeValorRecebido: TcxDBCurrencyEdit
        Left = 116
        Top = 132
        DataBinding.DataField = 'valor_recebido'
        DataBinding.DataSource = dsPreVendas
        Enabled = False
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 5
        Width = 125
      end
      object dbeValorReceberTroco: TcxDBCurrencyEdit
        Left = 116
        Top = 156
        DataBinding.DataField = 'troco'
        DataBinding.DataSource = dsPreVendas
        Enabled = False
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 6
        Width = 125
      end
    end
    object gboxPreVendas_Produtos: TcxGroupBox
      Left = 8
      Top = 58
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Produtos:'
      ParentFont = False
      TabOrder = 3
      Height = 196
      Width = 657
      object grdPreVendas_Produtos: TJvDBUltimGrid
        Left = 3
        Top = 15
        Width = 651
        Height = 171
        Align = alClient
        DataSource = dsPreVendas_Produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleButtons = True
        AutoSizeColumns = True
        AutoSizeColumnIndex = 2
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        SortWith = swFields
        Columns = <
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sigla_unidade'
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 326
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Unit'#225'rio'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_total'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Total'
            Width = 100
            Visible = True
          end>
      end
    end
    object lblCliente: TcxLabel
      Left = 138
      Top = 8
      Caption = 'Cliente:'
      FocusControl = dbeCliente
      ParentFont = False
      Transparent = True
    end
    object lblCondicaoPagamento: TcxLabel
      Left = 609
      Top = 8
      Caption = 'Condi'#231#227'o de Pagamento:'
      FocusControl = dbeCondicaoPagamento
      ParentFont = False
      Transparent = True
    end
    object lblDocumento: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Documento:'
      FocusControl = dbeDocumento
      ParentFont = False
      Transparent = True
    end
    object dbeCondicaoPagamento: TcxDBTextEdit
      Left = 609
      Top = 27
      DataBinding.DataField = 'descricao_condicao'
      DataBinding.DataSource = dsPreVendas
      Enabled = False
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 2
      Width = 266
    end
    object dbeCliente: TcxDBTextEdit
      Left = 138
      Top = 27
      DataBinding.DataField = 'razao_cliente'
      DataBinding.DataSource = dsPreVendas
      Enabled = False
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 0
      Width = 465
    end
    object dbeDocumento: TcxDBCurrencyEdit
      Left = 8
      Top = 27
      DataBinding.DataField = 'documento'
      DataBinding.DataSource = dsPreVendas
      Enabled = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '00000000'
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 4
      Width = 124
    end
    object gboxFerramentas: TcxGroupBox
      Left = 76
      Top = 252
      Anchors = [akBottom]
      PanelStyle.Active = True
      TabOrder = 8
      Height = 201
      Width = 784
      object btnTipoRecebimento01: TcxButton
        Tag = 1
        Left = 8
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento06: TcxButton
        Tag = 6
        Left = 8
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento07: TcxButton
        Tag = 7
        Left = 163
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 2
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento09: TcxButton
        Tag = 9
        Left = 473
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento08: TcxButton
        Tag = 8
        Left = 318
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento10: TcxButton
        Tag = 10
        Left = 628
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 5
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento02: TcxButton
        Tag = 2
        Left = 163
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 6
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento04: TcxButton
        Tag = 4
        Left = 473
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 7
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento03: TcxButton
        Tag = 3
        Left = 318
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 8
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento05: TcxButton
        Tag = 5
        Left = 628
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 9
        OnClick = btnTipoRecebimento01Click
      end
    end
  end
  object barStatus: TdxStatusBar
    Left = 0
    Top = 517
    Width = 936
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 124
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 124
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 124
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dsPreVendas: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryPreVendas
    OnStateChange = dsPreVendasStateChange
    Left = 364
    Top = 192
  end
  object dsPreVendas_Produtos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryPreVendas_Produtos
    Left = 364
    Top = 280
  end
  object dsTerminais_Modalidades: TDataSource
    DataSet = dmPDV.qryTerminais_Modalidades
    Left = 780
    Top = 99
  end
  object dsPreVendas_Parcelas: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryPreVendas_Parcelas
    Left = 364
    Top = 236
  end
  object dsPreVendas_Recebimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryPreVendas_Recebimentos
    Left = 364
    Top = 411
  end
  object dsPreVendas_Brindes: TDataSource
    DataSet = dmPDV.qryPreVendas_Brindes
    Left = 364
    Top = 324
  end
  object dsPreVendas_Trocas: TDataSource
    DataSet = dmPDV.qryPreVendas_Trocas
    Left = 364
    Top = 368
  end
  object dsVendas: TDataSource
    DataSet = dmPDV.qryVendas
    Left = 516
    Top = 192
  end
  object dsVendas_Parcelas: TDataSource
    DataSet = dmPDV.qryVendas_Parcelas
    Left = 516
    Top = 236
  end
  object dsVendas_Produtos: TDataSource
    DataSet = dmPDV.qryVendas_Produtos
    Left = 516
    Top = 280
  end
  object dsVendas_Brindes: TDataSource
    DataSet = dmPDV.qryVendas_Brindes
    Left = 516
    Top = 324
  end
  object dsVendas_Trocas: TDataSource
    DataSet = dmPDV.qryVendas_Trocas
    Left = 516
    Top = 368
  end
  object dsVendas_Recebimentos: TDataSource
    DataSet = dmPDV.qryVendas_Recebimentos
    Left = 516
    Top = 411
  end
  object qryNFe: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal')
    SQLUpdate.Strings = (
      'UPDATE notas_fiscais'
      'SET'
      
        '  chave = :chave, recibo = :recibo, lote = :lote, protocolo_auto' +
        'rizacao = :protocolo_autorizacao, status = :status, cancelamento' +
        '_justificativa = :cancelamento_justificativa, recibo_cancelament' +
        'o = :recibo_cancelamento, protocolo_cancelamento = :protocolo_ca' +
        'ncelamento'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal')
    SQLLock.Strings = (
      'SELECT * FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT chave, recibo, lote, protocolo_autorizacao, status, cance' +
        'lamento_justificativa, recibo_cancelamento, protocolo_cancelamen' +
        'to FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT n.id_nota_fiscal, n.id_emitente, e.tipo_pessoa AS tipo_pe' +
        'ssoa_emitente,'
      'e.cpf AS cpf_emitente, e.rg_numero, e.cnpj AS cnpj_emitente,'
      
        'e.insc_estadual AS insc_estadual_emitente, e.insc_municipal AS i' +
        'nsc_municipal_emitente,'
      
        'e.insc_est_subst AS insc_est_subst_emitente, e.insc_suframa AS i' +
        'nsc_suframa_emitente,'
      'e.razao AS razao_emitente, e.fantasia AS fantasia_emitente,'
      
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
      
        'e.email AS email_emitente, e.cnae_fiscal AS cnae_fiscal_emitente' +
        ','
      'e.natureza_juridica AS natureza_juridica_emitente,'
      'e.regime_tributario AS regime_tributario_emitente,'
      
        'n.id_modelo, n.serie_nota, n.data_emissao, n.numero, n.tipo_nota' +
        ', n.data_movimento, n.hora_movimento,'
      
        'n.id_forma_pagamento, n.id_forma_emissao, n.id_finalidade_emissa' +
        'o,'
      
        'n.id_pais_ocorrencia, n.id_estado_ocorrencia, n.id_cidade_ocorre' +
        'ncia,'
      
        'n.id_destinatario, c.tipo_pessoa AS tipo_pessoa_destinatario, c.' +
        'cpf AS cpf_destinatario,'
      
        'c.cnpj AS cnpj_destinatario, c.insc_estadual AS insc_estadual_de' +
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
      'c.telefone AS telefone_destinatario, c.fax AS fax_destinatario,'
      'c.email AS email_destinatario, n.natureza_operacao, '
      
        'n.id_transportador, t.cnpj AS cnpj_transportador, t.insc_estadua' +
        'l AS insc_estadual_transportador,'
      
        't.razao AS razao_transportador, t.logradouro AS logradouro_trans' +
        'portador,'
      
        't.bairro AS bairro_transportador, t.id_estado AS id_estado_trans' +
        'portador, t.sigla_estado AS sigla_estado_transportador,'
      
        'n.placa, n.id_estado_placa, a.sigla AS sigla_estado_placa, n.val' +
        'or_frete, n.modalidade_frete, n.valor_seguro, n.valor_outras_des' +
        'pesas, n.quantidade,'
      
        'n.especie, n.marca, n.peso_bruto, n.peso_liquido, n.aliquota_icm' +
        's,'
      
        'n.aliquota_iss, n.aliquota_ii, n.aliquota_ipi, n.aliquota_pis, n' +
        '.aliquota_cofins, n.aliquota_simples, n.informacoes_adicionais,'
      
        'e.certificado_caminho, e.certificado_senha, e.certificado_numero' +
        '_serie, e.token_csc_id, e.token_csc_numero, n.danfe_tipo_impress' +
        'ao, '
      
        'e.danfe_logomarca_arquivo, e.danfe_logomarca_expandir, e.salvar_' +
        'resposta_envio,'
      
        'e.salvar_resposta_envio_caminho, e.webservice_ambiente, e.webser' +
        'vice_visualizar_mensagens, e.proxy_host,'
      'e.proxy_porta, e.proxy_usuario, e.proxy_senha,'
      'e.email_host, e.email_porta, e.email_usuario, e.email_senha,'
      'e.email_assunto, e.email_ssl, e.email_mensagem, n.chave,'
      
        'n.lote, n.protocolo_autorizacao, n.recibo, n.valor_bruto, n.valo' +
        'r_acrescimo, n.valor_desconto,'
      
        '(n.valor_bruto + n.valor_acrescimo - n.valor_desconto) AS valor_' +
        'liquido, n.valor_tributos,'
      
        'n.status, n.recibo_cancelamento, n.protocolo_cancelamento, n.can' +
        'celamento_justificativa'
      'FROM (((notas_fiscais n'
      '           INNER JOIN vw_dfe_emitentes e'
      '              ON n.id_emitente = e.id_emitente)'
      '           INNER JOIN vw_clientes c'
      '              ON n.id_destinatario = c.id_parceiro)'
      '           LEFT OUTER JOIN vw_transportadores t'
      '              ON n.id_transportador = t.id_transportador)'
      '           LEFT OUTER JOIN dbIBGE.estados a'
      '              ON n.id_estado_placa = a.id_estado'
      'WHERE n.id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY n.numero')
    CachedUpdates = True
    AfterOpen = qryNFeAfterOpen
    BeforeClose = qryNFeBeforeClose
    Left = 124
    Top = 320
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_nota_fiscal'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsNFe: TDataSource
    DataSet = qryNFe
    Left = 124
    Top = 364
  end
  object dsNFe_Produtos: TDataSource
    DataSet = qryNFe_Produtos
    Left = 224
    Top = 364
  end
  object qryNFe_Produtos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_nota_fiscal, item, id_produto, codigo_barras, descrica' +
        'o, referencia,'
      
        'numero_serie, cfop, codigo_ncm, id_unidade, sigla_unidade, st, c' +
        'sosn, cf, quantidade, '
      
        'peso_bruto, preco_unitario, valor_acrescimo, valor_desconto, val' +
        'or_frete, valor_seguro,'
      'preco_total, base_icms, aliquota_icms, valor_tributos'
      'FROM vw_notas_fiscais_produtos'
      'WHERE id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY item')
    MasterSource = dsNFe
    Left = 224
    Top = 320
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_nota_fiscal'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryNFe_Parcelas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_nota_fiscal, parcela, prazo, fatura, duplicata, xdupli' +
        'cata, data_vencimento, valor_parcela'
      'FROM vw_notas_fiscais_parcelas'
      'WHERE id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY parcela')
    MasterSource = dsNFe
    Left = 224
    Top = 409
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_fiscal'
        Value = nil
      end>
  end
  object qryNFe_Recebimentos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT nr.id_nota_fiscal, nr.item, nr.id_transacao, t.descricao ' +
        'AS descricao_transacao,'
      
        't.id_forma_pagamento, fp.descricao_forma_pagamento, nr.valor_rec' +
        'ebido'
      'FROM notas_fiscais_recebimentos nr'
      '   INNER JOIN (transacoes t'
      '                  INNER JOIN dfe_formas_pagamento fp'
      
        '                     ON t.id_forma_pagamento = fp.id_forma_pagam' +
        'ento)'
      '      ON nr.id_transacao = t.id_transacao'
      'WHERE nr.id_nota_fiscal = :id_nota_fiscal'
      'ORDER BY nr.item')
    MasterSource = dsNFe
    Left = 224
    Top = 452
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_nota_fiscal'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsPreVendas_Produtos_Saidas: TDataSource
    DataSet = dmPDV.qryPreVendas_Produtos_Saidas
    Left = 364
    Top = 456
  end
  object dsTransferencias: TDataSource
    DataSet = dmPDV.qryTransferencias
    Left = 640
    Top = 192
  end
  object dsTransferencias_Produtos: TDataSource
    DataSet = dmPDV.qryTransferencias_Produtos
    Left = 640
    Top = 236
  end
  object dsAutenticacoes: TDataSource
    Left = 236
    Top = 188
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 124
    Top = 452
  end
  object dsMovimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos
    Left = 776
    Top = 144
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 776
    Top = 12
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryOperadores
    Left = 780
    Top = 348
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 776
    Top = 56
  end
  object dsFormas_Recebimentos: TDataSource
    DataSet = dmPDV.qryFormas_Recebimentos
    Left = 782
    Top = 393
  end
end
