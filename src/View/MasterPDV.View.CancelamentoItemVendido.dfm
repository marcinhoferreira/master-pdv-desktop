inherited dlgCancelamentoItemVendido: TdlgCancelamentoItemVendido
  ActiveControl = txtedtLocalizar
  BorderStyle = bsDialog
  Caption = '.:: Cancelamento de Item Vendido ::.'
  ClientHeight = 371
  ClientWidth = 794
  KeyPreview = False
  Position = poMainFormCenter
  ExplicitWidth = 800
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 16
  object gboxLocalizar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 49
    Width = 794
    object lblLocalizar: TcxLabel
      Left = 4
      Top = 4
      Caption = 'Localizar:'
      FocusControl = txtedtLocalizar
      Transparent = True
    end
    object txtedtLocalizar: TcxTextEdit
      Left = 4
      Top = 22
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = txtedtLocalizarKeyDown
      Width = 781
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 49
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 282
    Width = 794
    object grdVendas_Produtos: TcxGrid
      Left = 3
      Top = 3
      Width = 788
      Height = 276
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 790
      ExplicitHeight = 278
      object dbtvwVendasProdutos: TcxGridDBTableView
        OnKeyDown = dbtvwVendasProdutosKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsVendas_Produtos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtvwVendasProdutosid_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtvwVendasProdutositem: TcxGridDBColumn
          Caption = 'Item'
          DataBinding.FieldName = 'item'
          HeaderAlignmentHorz = taCenter
          MinWidth = 44
          Options.Editing = False
          Options.HorzSizing = False
          Width = 44
        end
        object dbtvwVendasProdutosid_produto: TcxGridDBColumn
          DataBinding.FieldName = 'id_produto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Width = 74
        end
        object dbtvwVendasProdutoscodigo_barras: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'codigo_barras'
          HeaderAlignmentHorz = taCenter
          MinWidth = 114
          Options.Editing = False
          Options.HorzSizing = False
          Width = 114
        end
        object dbtvwVendasProdutosdescricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object dbtvwVendasProdutosid_unidade: TcxGridDBColumn
          DataBinding.FieldName = 'id_unidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtvwVendasProdutossigla_unidade: TcxGridDBColumn
          Caption = 'Unid.'
          DataBinding.FieldName = 'sigla_unidade'
          HeaderAlignmentHorz = taCenter
          MinWidth = 44
          Options.Editing = False
          Options.HorzSizing = False
          Width = 44
        end
        object dbtvwVendasProdutosquantidade: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'quantidade'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Width = 100
        end
        object dbtvwVendasProdutospeso_bruto: TcxGridDBColumn
          DataBinding.FieldName = 'peso_bruto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtvwVendasProdutospreco_unitario: TcxGridDBColumn
          Caption = 'Pre'#231'o Unit'#225'rio'
          DataBinding.FieldName = 'preco_unitario'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Width = 100
        end
        object dbtvwVendasProdutospreco_venda: TcxGridDBColumn
          DataBinding.FieldName = 'preco_venda'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtvwVendasProdutospercentual_acrescimo: TcxGridDBColumn
          DataBinding.FieldName = 'percentual_acrescimo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtvwVendasProdutosvalor_acrescimo: TcxGridDBColumn
          DataBinding.FieldName = 'valor_acrescimo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtvwVendasProdutospercentual_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'percentual_desconto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtvwVendasProdutosvalor_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'valor_desconto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
      end
      object grdVendas_ProdutosLevel1: TcxGridLevel
        GridView = dbtvwVendasProdutos
      end
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 331
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 2
    Height = 40
    Width = 794
    object btnCancelar: TcxDBBotao
      Left = 309
      Top = 4
      Width = 85
      Height = 32
      Caption = '&Cancelar'
      ModalResult = 1
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 0
      DataSource = dsVendas_Produtos
      DisableReasons = [drEmpty]
    end
    object btnDesistir: TcxButton
      Left = 400
      Top = 4
      Width = 85
      Height = 32
      Cancel = True
      Caption = '&Desistir'
      ModalResult = 2
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 1
    end
  end
  object dsVendas_Produtos: TDataSource
    DataSet = qryVendas_Produtos
    Left = 548
    Top = 227
  end
  object qryVendas_Produtos: TUniQuery
    SQLInsert.Strings = (
      ' ')
    SQLDelete.Strings = (
      ' ')
    SQLUpdate.Strings = (
      ' ')
    SQLLock.Strings = (
      ' ')
    SQLRefresh.Strings = (
      ' ')
    SQLRecCount.Strings = (
      ' ')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT vp.id_venda, vp.item, vp.id_produto, p.codigo_barras, p.d' +
        'escricao, vp.id_unidade, um.sigla AS sigla_unidade,'
      
        'vp.quantidade, vp.peso_bruto, vp.preco_unitario, vp.preco_venda,' +
        ' vp.percentual_acrescimo, vp.valor_acrescimo, '
      'vp.percentual_desconto, vp.valor_desconto'
      'FROM vendas_produtos vp'
      '   INNER JOIN produtos p'
      '      ON vp.id_produto = p.id_produto'
      '   INNER JOIN unidades um'
      '      ON vp.id_unidade = um.id_unidade'
      'WHERE vp.id_venda= :id_venda'
      'ORDER BY vp.item')
    OnCalcFields = qryVendas_ProdutosCalcFields
    Left = 548
    Top = 185
    ParamData = <
      item
        DataType = ftInteger
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
      ReadOnly = True
      Size = 13
    end
    object qryVendas_Produtosdescricao: TStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 60
    end
    object qryVendas_Produtosid_unidade: TWordField
      FieldName = 'id_unidade'
      Required = True
    end
    object qryVendas_Produtossigla_unidade: TStringField
      FieldName = 'sigla_unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qryVendas_Produtosquantidade: TFloatField
      FieldName = 'quantidade'
      DisplayFormat = '#,##0.000'
    end
    object qryVendas_Produtospeso_bruto: TFloatField
      FieldName = 'peso_bruto'
      DisplayFormat = '#,##0.000'
    end
    object qryVendas_Produtospreco_unitario: TFloatField
      FieldName = 'preco_unitario'
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospreco_venda: TFloatField
      FieldName = 'preco_venda'
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospercentual_acrescimo: TFloatField
      FieldName = 'percentual_acrescimo'
      DisplayFormat = '##0.00 %'
    end
    object qryVendas_Produtosvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      DisplayFormat = '#,##0.00'
    end
    object qryVendas_Produtospercentual_desconto: TFloatField
      FieldName = 'percentual_desconto'
      DisplayFormat = '##0.00 %'
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
  end
end
