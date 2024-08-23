inherited dlgConsultaPreVendas: TdlgConsultaPreVendas
  BorderStyle = bsDialog
  Caption = '.:: Consulta Pr'#233'-vendas ::.'
  ClientHeight = 371
  ClientWidth = 794
  Position = poMainFormCenter
  ExplicitWidth = 800
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 16
  object gboxResultado: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    ExplicitHeight = 294
    Height = 298
    Width = 794
    object grdPreVendas: TcxGrid
      Left = 3
      Top = 3
      Width = 788
      Height = 292
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 790
      ExplicitHeight = 290
      object dbtabvwPreVendas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsPreVendas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object dbtabvwPreVendasid_prevenda: TcxGridDBColumn
          DataBinding.FieldName = 'id_prevenda'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_local: TcxGridDBColumn
          DataBinding.FieldName = 'id_local'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasdata_movimento: TcxGridDBColumn
          DataBinding.FieldName = 'data_movimento'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 130
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasdocumento: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'documento'
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'id_cliente'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendascpf_cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'cpf_cnpj'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 144
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasnome_cliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'nome_cliente'
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 364
        end
        object dbtabvwPreVendaslogradouro_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'logradouro_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 424
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasnumero_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'numero_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendascomplemento_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'complemento_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 144
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasbairro_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'bairro_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 284
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasreferencia_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'referencia_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 424
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_pais_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'id_pais_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 32
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_estado_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'id_estado_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 18
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_cidade_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'id_cidade_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 53
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendascep_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'cep_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 60
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendastelefone_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'telefone_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 81
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasemail_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'email_cliente'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 1789
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendascontato_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'contato_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_condicao: TcxGridDBColumn
          DataBinding.FieldName = 'id_condicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasdescricao_condicao: TcxGridDBColumn
          Caption = 'Condi'#231#227'o de Pagamento'
          DataBinding.FieldName = 'descricao_condicao'
          HeaderAlignmentHorz = taCenter
          MinWidth = 184
          Options.HorzSizing = False
          Options.Moving = False
          Width = 184
        end
        object dbtabvwPreVendasparcelas: TcxGridDBColumn
          DataBinding.FieldName = 'parcelas'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendastipo_prazo: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_prazo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_preco: TcxGridDBColumn
          DataBinding.FieldName = 'id_preco'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasdata_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'data_entrega'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 130
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_representante: TcxGridDBColumn
          DataBinding.FieldName = 'id_representante'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendaspercent_comissao: TcxGridDBColumn
          DataBinding.FieldName = 'percent_comissao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasvalor_bruto: TcxGridDBColumn
          Caption = 'Valor Bruto'
          DataBinding.FieldName = 'valor_bruto'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendasvalor_entrada: TcxGridDBColumn
          Caption = 'Valor Entrada'
          DataBinding.FieldName = 'valor_entrada'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendasvalor_acrescimo: TcxGridDBColumn
          Caption = 'Valor Acr'#233'scimo'
          DataBinding.FieldName = 'valor_acrescimo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendasvalor_desconto: TcxGridDBColumn
          Caption = 'Valor Desconto'
          DataBinding.FieldName = 'valor_desconto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendasvalor_troca: TcxGridDBColumn
          Caption = 'Valor Troca'
          DataBinding.FieldName = 'valor_troca'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendasvalor_liquido: TcxGridDBColumn
          Caption = 'Valor L'#237'quido'
          DataBinding.FieldName = 'valor_liquido'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendasvalor_recebido: TcxGridDBColumn
          DataBinding.FieldName = 'valor_recebido'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendasvalor_receber: TcxGridDBColumn
          DataBinding.FieldName = 'valor_receber'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwPreVendastipo_documento_fiscal: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_documento_fiscal'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasobservacao: TcxGridDBColumn
          DataBinding.FieldName = 'observacao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'id_usuario'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwPreVendasid_status: TcxGridDBColumn
          DataBinding.FieldName = 'id_status'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
      end
      object grdPreVendasLevel1: TcxGridLevel
        GridView = dbtabvwPreVendas
      end
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 298
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 1
    ExplicitTop = 297
    Height = 73
    Width = 794
    object btnOk: TcxDBBotao
      Left = 319
      Top = 4
      Width = 75
      Height = 64
      Caption = 'OK'
      Default = True
      ModalResult = 1
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      DataSource = dsPreVendas
      DisableReasons = [drEditing, drEmpty]
    end
    object btnCancelar: TcxButton
      Left = 400
      Top = 4
      Width = 75
      Height = 64
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
    end
  end
  object qryPreVendas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'select pv.id_prevenda, pv.id_local, pv.data_movimento, pv.docume' +
        'nto, '
      'pv.id_cliente, pv.cpf_cnpj, '
      'CASE'
      '   WHEN pv.id_cliente IS NULL THEN pv.nome'
      '   ELSE'
      '      c.razao'
      'END AS nome_cliente, '
      
        'pv.logradouro_entrega, pv.numero_entrega, pv.complemento_entrega' +
        ', pv.bairro_entrega,'
      
        'pv.referencia_entrega, pv.id_pais_entrega, pv.id_estado_entrega,' +
        ' pv.id_cidade_entrega,'
      
        'pv.cep_entrega, pv.telefone_entrega, pv.email_cliente, pv.contat' +
        'o_entrega,'
      
        'pv.id_condicao, cp.descricao AS descricao_condicao, pv.parcelas,' +
        ' pv.tipo_prazo, '
      'pv.id_preco, pv.data_entrega,'
      
        'pv.id_representante, pv.percent_comissao, pv.valor_entrada, pv.v' +
        'alor_bruto,'
      'pv.valor_acrescimo, pv.valor_desconto, pv.valor_troca, '
      
        '(pv.valor_bruto + pv.valor_acrescimo - pv.valor_desconto - pv.va' +
        'lor_troca) AS valor_liquido,'
      'pv.valor_recebido,'
      
        '((pv.valor_bruto + pv.valor_acrescimo - pv.valor_desconto - pv.v' +
        'alor_troca) - pv.valor_recebido) AS valor_receber,'
      
        'pv.tipo_documento_fiscal, pv.observacao, pv.id_usuario, pv.id_st' +
        'atus'
      'from prevendas pv'
      '   LEFT OUTER JOIN condicoes cp'
      '      ON pv.id_condicao = cp.id_condicao'
      '   LEFT OUTER JOIN vw_clientes c'
      '      ON pv.id_cliente = c.id_parceiro'
      'WHERE NOT EXISTS(SELECT 1'
      '                 FROM vendas v'
      '                 WHERE v.id_venda = pv.id_venda)'
      
        ' -- 1-Em Andamento / 2-Aguardando Aprova'#231#227'o / 3-Aguardando Pagam' +
        'ento / 4-Cancelada / 5-Exclu'#237'da / 6-Finalizada'
      ' AND pv.id_status NOT IN (1, 2, 4, 5, 6)'
      ' &condicao'
      'ORDER BY pv.nome, c.razao')
    Left = 440
    Top = 76
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryPreVendasid_prevenda: TLargeintField
      FieldName = 'id_prevenda'
    end
    object qryPreVendasid_local: TWordField
      FieldName = 'id_local'
      Required = True
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
    object qryPreVendascpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
    end
    object qryPreVendasnome_cliente: TStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Size = 200
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
    object qryPreVendastipo_prazo: TStringField
      FieldName = 'tipo_prazo'
      FixedChar = True
      Size = 1
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
    end
    object qryPreVendasvalor_bruto: TFloatField
      FieldName = 'valor_bruto'
    end
    object qryPreVendasvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qryPreVendasvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qryPreVendasvalor_troca: TFloatField
      FieldName = 'valor_troca'
    end
    object qryPreVendasvalor_liquido: TFloatField
      FieldName = 'valor_liquido'
      ReadOnly = True
    end
    object qryPreVendasvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryPreVendasvalor_receber: TFloatField
      FieldName = 'valor_receber'
      ReadOnly = True
    end
    object qryPreVendastipo_documento_fiscal: TStringField
      FieldName = 'tipo_documento_fiscal'
      FixedChar = True
      Size = 1
    end
    object qryPreVendasobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object qryPreVendasid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
    object qryPreVendasid_status: TWordField
      FieldName = 'id_status'
      Required = True
    end
  end
  object dsPreVendas: TDataSource
    AutoEdit = False
    DataSet = qryPreVendas
    Left = 440
    Top = 120
  end
end
