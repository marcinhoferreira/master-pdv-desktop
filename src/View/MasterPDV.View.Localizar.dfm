inherited dlgLocalizar: TdlgLocalizar
  BorderStyle = bsDialog
  Caption = '.:: Localizar ::.'
  ClientHeight = 451
  ClientWidth = 874
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 880
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 16
  object gboxLocalizar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 61
    Width = 874
    object lblLocalizar: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Localizar:'
      FocusControl = cmbCampo
      Transparent = True
    end
    object cmbCampo: TcxComboBox
      Left = 8
      Top = 28
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'C'#243'digo de Barras'
        'Descri'#231#227'o'
        'Marca'
        'Refer'#234'ncia')
      TabOrder = 1
      Text = 'Descri'#231#227'o'
      Width = 121
    end
    object txtedtLocalizar: TcxTextEdit
      Left = 135
      Top = 28
      Properties.CharCase = ecUpperCase
      Properties.OnChange = txtedtLocalizarPropertiesChange
      TabOrder = 2
      OnEnter = txtedtLocalizarEnter
      Width = 622
    end
    object btnPesquisar: TcxDBBotaoPesquisar
      Left = 763
      Top = 23
      Width = 98
      Height = 32
      Caption = '&Localizar'
      Enabled = True
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 3
      OnClick = btnPesquisarClick
      DataSource = dsLocalizar
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 61
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 1
    Height = 340
    Width = 874
    object grdLocalizar: TcxGrid
      Left = 3
      Top = 3
      Width = 868
      Height = 334
      Align = alClient
      TabOrder = 0
      object dbtabvwLocalizar: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsLocalizar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtabvwLocalizarid_produto: TcxGridDBColumn
          DataBinding.FieldName = 'id_produto'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarcodigo_barras: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'codigo_barras'
          HeaderAlignmentHorz = taCenter
          MinWidth = 124
          Options.Editing = False
          Options.HorzSizing = False
          Width = 124
        end
        object dbtabvwLocalizardescricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object dbtabvwLocalizarresumida: TcxGridDBColumn
          DataBinding.FieldName = 'resumida'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarid_categoria: TcxGridDBColumn
          DataBinding.FieldName = 'id_categoria'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizardescricao_categoria: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_categoria'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 424
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarid_subcategoria: TcxGridDBColumn
          DataBinding.FieldName = 'id_subcategoria'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizardescricao_subcategoria: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_subcategoria'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 424
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarcodigo_mercosul: TcxGridDBColumn
          Caption = 'NCM'
          DataBinding.FieldName = 'codigo_mercosul'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 60
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarid_marca: TcxGridDBColumn
          DataBinding.FieldName = 'id_marca'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizardescricao_marca: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_marca'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarreferencia: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'referencia'
          HeaderAlignmentHorz = taCenter
          MinWidth = 184
          Options.Editing = False
          Options.HorzSizing = False
          Width = 184
        end
        object dbtabvwLocalizarapresentacao: TcxGridDBColumn
          DataBinding.FieldName = 'apresentacao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarid_unidade_medida: TcxGridDBColumn
          DataBinding.FieldName = 'id_unidade_medida'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizardescricao_unidade_medida: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_unidade_medida'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwLocalizarsigla_unidade_medida: TcxGridDBColumn
          Caption = 'Unid.'
          DataBinding.FieldName = 'sigla_unidade_medida'
          HeaderAlignmentHorz = taCenter
          MinWidth = 43
          Options.Editing = False
          Options.HorzSizing = False
          Width = 43
        end
        object dbtabvwLocalizarpreco_unitario: TcxGridDBColumn
          Caption = 'Pre'#231'o Unit'#225'rio'
          DataBinding.FieldName = 'preco_unitario'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Width = 100
        end
        object dbtabvwLocalizarestoque_disponivel: TcxGridDBColumn
          Caption = 'Estoque Dispon'#237'vel'
          DataBinding.FieldName = 'estoque_disponivel'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Width = 100
        end
      end
      object grdLocalizarLevel1: TcxGridLevel
        GridView = dbtabvwLocalizar
      end
    end
  end
  object btnFechar: TcxBotaoFechar
    Left = 442
    Top = 411
    Width = 98
    Height = 32
    Caption = '&Fechar'
    OptionsImage.ImageIndex = 0
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 3
  end
  object btnRegistrar: TcxDBBotao
    Left = 334
    Top = 411
    Width = 98
    Height = 32
    Caption = '&Registrar'
    OptionsImage.ImageIndex = 4
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 2
    OnClick = btnRegistrarClick
    DataSource = dsLocalizar
    DisableReasons = [drEmpty]
  end
  object qryLocalizar: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT p.id_produto, p.codigo_barras, p.descricao, p.resumida, p' +
        '.id_categoria, p.descricao_categoria,'
      
        'p.id_subcategoria, p.descricao_subcategoria, p.codigo_ncm AS cod' +
        'igo_mercosul,'
      'p.id_marca, p.descricao_marca, p.referencia, p.apresentacao, '
      
        'p.id_unidade AS id_unidade_medida, p.descricao_unidade AS descri' +
        'cao_unidade_medida,'
      'p.sigla_unidade AS sigla_unidade_medida,'
      'CASE'
      
        '   WHEN pp.preco_promocao > 0 AND CURRENT_DATE BETWEEN COALESCE(' +
        'pp.inicio_promocao, CURRENT_DATE) AND COALESCE(pp.termino_promoc' +
        'ao, CURRENT_DATE) THEN pp.preco_promocao'
      '   ELSE'
      '      CASE'
      '         WHEN pp.preco_unitario > 0 THEN pp.preco_unitario'
      '         ELSE'
      '            p.preco_venda'
      '      END'
      'END AS preco_unitario,'
      
        'f_get_produto_estoque_disponivel_local(p.id_produto, :id_estabel' +
        'ecimento, :id_local, :data_referencia) AS estoque_disponivel,'
      'p.inativo'
      'FROM vw_produtos p'
      '   LEFT OUTER JOIN produtos_precificacoes pp'
      
        '      ON p.id_produto = pp.id_produto AND pp.id_estabelecimento ' +
        '= :id_estabelecimento AND pp.id_local = :id_local'
      'WHERE p.inativo = '#39'N'#39
      '&condicao'
      'ORDER BY &ordem')
    BeforeOpen = qryLocalizarBeforeOpen
    Left = 540
    Top = 169
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
      end>
    MacroData = <
      item
        Name = 'condicao'
      end
      item
        Name = 'ordem'
        Value = 'p.descricao'
      end>
    object qryLocalizarid_produto: TLargeintField
      FieldName = 'id_produto'
      Required = True
    end
    object qryLocalizarcodigo_barras: TStringField
      FieldName = 'codigo_barras'
      Size = 13
    end
    object qryLocalizardescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object qryLocalizarresumida: TStringField
      FieldName = 'resumida'
      Size = 30
    end
    object qryLocalizarid_categoria: TSmallintField
      FieldName = 'id_categoria'
    end
    object qryLocalizardescricao_categoria: TStringField
      FieldName = 'descricao_categoria'
      Size = 60
    end
    object qryLocalizarid_subcategoria: TSmallintField
      FieldName = 'id_subcategoria'
    end
    object qryLocalizardescricao_subcategoria: TStringField
      FieldName = 'descricao_subcategoria'
      Size = 60
    end
    object qryLocalizarcodigo_mercosul: TStringField
      FieldName = 'codigo_mercosul'
      FixedChar = True
      Size = 8
    end
    object qryLocalizarid_marca: TSmallintField
      FieldName = 'id_marca'
    end
    object qryLocalizardescricao_marca: TStringField
      FieldName = 'descricao_marca'
      Size = 30
    end
    object qryLocalizarreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object qryLocalizarapresentacao: TStringField
      FieldName = 'apresentacao'
      Size = 30
    end
    object qryLocalizarid_unidade_medida: TSmallintField
      FieldName = 'id_unidade_medida'
    end
    object qryLocalizardescricao_unidade_medida: TStringField
      FieldName = 'descricao_unidade_medida'
      Size = 30
    end
    object qryLocalizarsigla_unidade_medida: TStringField
      FieldName = 'sigla_unidade_medida'
      Size = 3
    end
    object qryLocalizarpreco_unitario: TFloatField
      FieldName = 'preco_unitario'
      DisplayFormat = ',0.00'
    end
    object qryLocalizarestoque_disponivel: TFloatField
      FieldName = 'estoque_disponivel'
      ReadOnly = True
      DisplayFormat = ',0.000'
    end
    object qryLocalizarinativo: TStringField
      FieldName = 'inativo'
      Size = 1
    end
  end
  object dsLocalizar: TDataSource
    AutoEdit = False
    DataSet = qryLocalizar
    Left = 540
    Top = 213
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 400
    Top = 161
  end
  object dsMovimentos: TDataSource
    DataSet = dmPDV.qryMovimentos
    Left = 400
    Top = 205
  end
end
