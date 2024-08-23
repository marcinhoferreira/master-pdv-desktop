inherited dlgVendaTroca: TdlgVendaTroca
  BorderStyle = bsDialog
  Caption = 'Troca'
  ClientHeight = 561
  ClientWidth = 784
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  object panDocumento: TAdvSmoothPanel
    Left = 4
    Top = 8
    Width = 273
    Height = 92
    Cursor = crDefault
    Caption.Text = 'Documento (NFC-e ou DAV)'
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = 4474440
    Caption.ColorEnd = 4474440
    Caption.LineColor = 12895944
    Fill.Color = 16445929
    Fill.ColorTo = 15587527
    Fill.ColorMirror = 15587527
    Fill.ColorMirrorTo = 16773863
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 14922381
    Fill.Rounding = 10
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.7.1.4'
    TabOrder = 0
    TMSStyle = 0
    object curredtDocumento: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 24
      Margins.Left = 4
      Margins.Top = 24
      Margins.Right = 12
      Margins.Bottom = 12
      Align = alClient
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0'
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderStyle = ebsNone
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnEnter = curredtDocumentoEnter
      OnExit = curredtDocumentoExit
      OnKeyDown = curredtDocumentoKeyDown
      ExplicitHeight = 66
      Width = 257
    end
  end
  object panProduto: TAdvSmoothPanel
    Left = 280
    Top = 8
    Width = 493
    Height = 92
    Cursor = crDefault
    Caption.Text = 'C'#243'digo'
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = 4474440
    Caption.ColorEnd = 4474440
    Caption.LineColor = 12895944
    Fill.Color = 16445929
    Fill.ColorTo = 15587527
    Fill.ColorMirror = 15587527
    Fill.ColorMirrorTo = 16773863
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 14922381
    Fill.Rounding = 10
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.7.1.4'
    TabOrder = 1
    TMSStyle = 0
    object curredtCodigo: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 24
      Margins.Left = 4
      Margins.Top = 24
      Margins.Right = 12
      Margins.Bottom = 12
      Align = alClient
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0'
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderStyle = ebsNone
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitHeight = 66
      Width = 477
    end
  end
  object panVendas_Produtos: TAdvSmoothPanel
    Left = 8
    Top = 106
    Width = 768
    Height = 395
    Cursor = crDefault
    Caption.Text = 'Itens da Venda'
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = 4474440
    Caption.ColorEnd = 4474440
    Caption.LineColor = 12895944
    Fill.Color = 16445929
    Fill.ColorTo = 15587527
    Fill.ColorMirror = 15587527
    Fill.ColorMirrorTo = 16773863
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 14922381
    Fill.Rounding = 10
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.7.1.4'
    TabOrder = 2
    TMSStyle = 0
    object grdVendas_Produtos: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 28
      Width = 748
      Height = 351
      Margins.Left = 4
      Margins.Top = 28
      Margins.Right = 16
      Margins.Bottom = 16
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 140
      ExplicitWidth = 740
      ExplicitHeight = 221
      object dbtabvwVendas_Produtos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsVendas_Produtoss
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtabvwVendas_Produtosselecionado: TcxGridDBColumn
          DataBinding.FieldName = 'selecionado'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          MinWidth = 32
          Options.HorzSizing = False
          Options.Moving = False
          Width = 32
          IsCaptionAssigned = True
        end
        object dbtabvwVendas_Produtosid_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtositem: TcxGridDBColumn
          Caption = 'Item'
          DataBinding.FieldName = 'item'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtosid_produto: TcxGridDBColumn
          DataBinding.FieldName = 'id_produto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtoscodigo_barras: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'codigo_barras'
          HeaderAlignmentHorz = taCenter
          MinWidth = 95
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtosdescricao: TcxGridDBColumn
          Caption = 'Desccri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          HeaderAlignmentHorz = taCenter
          MinWidth = 0
          Options.Editing = False
          Options.Moving = False
          Width = 364
        end
        object dbtabvwVendas_Produtosdescricao_marca: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_marca'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtosreferencia: TcxGridDBColumn
          DataBinding.FieldName = 'referencia'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtosid_unidade: TcxGridDBColumn
          DataBinding.FieldName = 'id_unidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtossigla_unidade: TcxGridDBColumn
          Caption = 'Unid.'
          DataBinding.FieldName = 'sigla_unidade'
          HeaderAlignmentHorz = taCenter
          MinWidth = 48
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 48
        end
        object dbtabvwVendas_Produtosquantidade: TcxGridDBColumn
          Caption = 'Quant.'
          DataBinding.FieldName = 'quantidade'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.000'
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtospeso_bruto: TcxGridDBColumn
          DataBinding.FieldName = 'peso_bruto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtosquantidade_devolvida: TcxGridDBColumn
          Caption = 'Quant. Trocar'
          DataBinding.FieldName = 'quantidade_devolvida'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.000'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object dbtabvwVendas_Produtospreco_unitario: TcxGridDBColumn
          Caption = 'Pre'#231'o Unit.'
          DataBinding.FieldName = 'preco_unitario'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwVendas_Produtospreco_venda: TcxGridDBColumn
          DataBinding.FieldName = 'preco_venda'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtospreco_unitario_liquido: TcxGridDBColumn
          DataBinding.FieldName = 'preco_unitario_liquido'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtospercentual_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'percentual_desconto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtosvalor_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'valor_desconto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtospreco_total_bruto: TcxGridDBColumn
          DataBinding.FieldName = 'preco_total_bruto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtospreco_total: TcxGridDBColumn
          DataBinding.FieldName = 'preco_total'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendas_Produtospreco_total_liquido: TcxGridDBColumn
          Caption = 'Pre'#231'o Total'
          DataBinding.FieldName = 'preco_total_liquido'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
      end
      object grdVendas_ProdutosLevel1: TcxGridLevel
        GridView = dbtabvwVendas_Produtos
      end
    end
  end
  object btnCancelar: TcxButton
    Left = 406
    Top = 513
    Width = 114
    Height = 40
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 4
  end
  object btnConfirmar: TcxDBBotao
    Left = 264
    Top = 513
    Width = 132
    Height = 40
    Caption = 'Confirmar'
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 3
    OnClick = btnConfirmarClick
    DataSource = dsVendas_Produtoss
    DisableReasons = [drEmpty]
  end
  object qryVendas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT v.id_venda, v.id_estabelecimento, '
      'v.id_local, l.descricao AS descricao_local, '
      
        'v.data_movimento, v.id_caixa, v.id_operador, v.documento, v.id_c' +
        'ondicao, v.parcelas, v.tipo_prazo,'
      'v.id_representante, v.id_parceiro, '
      
        'v.valor_bruto, v.valor_acrescimo, v.valor_desconto, v.valor_troc' +
        'a,'
      
        '(v.valor_bruto + v.valor_acrescimo - v.valor_desconto - v.valor_' +
        'troca) AS valor_liquido,'
      'v.valor_entrada, v.valor_recebido, v.valor_troco'
      'FROM vendas v'
      '   LEFT OUTER JOIN locais l'
      '      ON v.id_local = l.id_local'
      'WHERE v.documento = :documento'
      ' AND v.data_movimento BETWEEN CURRENT_DATE - 7 AND CURRENT_DATE'
      ' AND v.status IN ('#39'5'#39')'
      'ORDER BY v.documento')
    AfterOpen = qryVendasAfterOpen
    BeforeClose = qryVendasBeforeClose
    Left = 492
    Top = 188
    ParamData = <
      item
        DataType = ftInteger
        Name = 'documento'
        ParamType = ptInput
        Value = nil
      end>
    object qryVendasid_venda: TLargeintField
      FieldName = 'id_venda'
    end
    object qryVendasid_estabelecimento: TLargeintField
      FieldName = 'id_estabelecimento'
    end
    object qryVendasid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryVendasdescricao_local: TStringField
      FieldName = 'descricao_local'
      ReadOnly = True
      Size = 30
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
    object qryVendasparcelas: TSmallintField
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
    object qryVendasvalor_bruto: TFloatField
      FieldName = 'valor_bruto'
    end
    object qryVendasvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qryVendasvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qryVendasvalor_troca: TFloatField
      FieldName = 'valor_troca'
    end
    object qryVendasvalor_liquido: TFloatField
      FieldName = 'valor_liquido'
      ReadOnly = True
    end
    object qryVendasvalor_entrada: TFloatField
      FieldName = 'valor_entrada'
    end
    object qryVendasvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryVendasvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
  end
  object qryVendas_Produtos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT '#39'N'#39' AS selecionado,'
      
        'i.id_venda, i.item, i.id_produto, i.codigo_barras, i.descricao, ' +
        'i.descricao_marca, i.referencia,'
      
        'i.id_unidade, i.sigla_unidade, i.quantidade, i.peso_bruto, i.qua' +
        'ntidade AS quantidade_devolvida,'
      
        'i.preco_unitario, i.preco_venda, i.preco_unitario_liquido, i.per' +
        'centual_desconto, i.valor_desconto, '
      'i.preco_total_bruto, i.preco_total, i.preco_total_liquido'
      'FROM vw_vendas_produtos i'
      'WHERE i.id_venda = :id_venda'
      'ORDER BY i.item')
    MasterSource = dsVendas
    MasterFields = 'id_venda'
    DetailFields = 'id_venda'
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    BeforePost = qryVendas_ProdutosBeforePost
    Left = 492
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end>
    object qryVendas_Produtosselecionado: TStringField
      FieldName = 'selecionado'
      Required = True
      Size = 1
    end
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
      Size = 13
    end
    object qryVendas_Produtosdescricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object qryVendas_Produtosdescricao_marca: TStringField
      FieldName = 'descricao_marca'
      Size = 30
    end
    object qryVendas_Produtosreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
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
    end
    object qryVendas_Produtospeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object qryVendas_Produtosquantidade_devolvida: TFloatField
      FieldName = 'quantidade_devolvida'
    end
    object qryVendas_Produtospreco_unitario: TFloatField
      FieldName = 'preco_unitario'
    end
    object qryVendas_Produtospreco_venda: TFloatField
      FieldName = 'preco_venda'
    end
    object qryVendas_Produtospreco_unitario_liquido: TFloatField
      FieldName = 'preco_unitario_liquido'
    end
    object qryVendas_Produtospercentual_desconto: TFloatField
      FieldName = 'percentual_desconto'
    end
    object qryVendas_Produtosvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qryVendas_Produtospreco_total_bruto: TFloatField
      FieldName = 'preco_total_bruto'
    end
    object qryVendas_Produtospreco_total: TFloatField
      FieldName = 'preco_total'
    end
    object qryVendas_Produtospreco_total_liquido: TFloatField
      FieldName = 'preco_total_liquido'
    end
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    OnStateChange = dsVendasStateChange
    Left = 492
    Top = 236
  end
  object dsVendas_Produtoss: TDataSource
    DataSet = qryVendas_Produtos
    OnStateChange = dsVendas_ProdutossStateChange
    Left = 492
    Top = 332
  end
end
