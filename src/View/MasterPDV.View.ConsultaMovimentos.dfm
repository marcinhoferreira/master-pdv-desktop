inherited dlgConsultaMovimentos: TdlgConsultaMovimentos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Consulta de Movimenta'#231#227'o ::.'
  ClientHeight = 451
  ClientWidth = 794
  Position = poMainFormCenter
  ExplicitWidth = 800
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 16
  object gboxLocalizar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 65
    Width = 794
    object lblTerminal: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Terminal:'
      FocusControl = dbtxtedtDescricao
      Transparent = True
    end
    object dbtxtedtDescricao: TcxDBTextEdit
      Left = 8
      Top = 32
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsTerminais
      Enabled = False
      TabOrder = 1
      Width = 184
    end
    object lblDataMovimento: TcxLabel
      Left = 672
      Top = 8
      Caption = 'Data do Movimento:'
      FocusControl = dbdtedtDataMovimento
      Transparent = True
    end
    object dbdtedtDataMovimento: TcxDBDateEdit
      Left = 672
      Top = 32
      DataBinding.DataField = 'data_movimento'
      DataBinding.DataSource = dsMovimentos
      Enabled = False
      TabOrder = 3
      Width = 114
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 411
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 1
    Height = 40
    Width = 794
    object btnImprimir: TcxDBBotao
      Left = 4
      Top = 4
      Width = 109
      Height = 32
      Caption = '&Imprimir'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 0
      OnClick = btnImprimirClick
      DataSource = dsMovimentos_Operacoes
      DisableReasons = [drEmpty]
    end
    object btnFechar: TcxBotaoFechar
      Left = 119
      Top = 4
      Width = 85
      Height = 32
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 1
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 65
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 2
    Height = 346
    Width = 794
    object grdMovimentos_Operacoes: TcxGrid
      Left = 3
      Top = 3
      Width = 788
      Height = 340
      Align = alClient
      TabOrder = 0
      object dbtabvwMovimentos_Operacoes: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsMovimentos_Operacoes
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtabvwMovimentos_Operacoesid_terminal: TcxGridDBColumn
          DataBinding.FieldName = 'id_terminal'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
        end
        object dbtabvwMovimentos_Operacoesdata_movimento: TcxGridDBColumn
          DataBinding.FieldName = 'data_movimento'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 130
          Options.HorzSizing = False
        end
        object dbtabvwMovimentos_Operacoesid_operador: TcxGridDBColumn
          DataBinding.FieldName = 'id_operador'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
        end
        object dbtabvwMovimentos_Operacoessequencia: TcxGridDBColumn
          Caption = 'Sequ'#234'ncia'
          DataBinding.FieldName = 'sequencia'
          HeaderAlignmentHorz = taCenter
          MinWidth = 64
          Options.HorzSizing = False
          Width = 64
        end
        object dbtabvwMovimentos_Operacoesid_operacao: TcxGridDBColumn
          DataBinding.FieldName = 'id_operacao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
        end
        object dbtabvwMovimentos_Operacoesdescricao_operacao: TcxGridDBColumn
          Caption = 'Opera'#231#227'o'
          DataBinding.FieldName = 'descricao_operacao'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 184
          Options.HorzSizing = False
          Width = 184
        end
        object dbtabvwMovimentos_Operacoesid_centro: TcxGridDBColumn
          DataBinding.FieldName = 'id_centro'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 46
          Options.HorzSizing = False
        end
        object dbtabvwMovimentos_Operacoesdescricao_centro_custo: TcxGridDBColumn
          Caption = 'Centro de Custo'
          DataBinding.FieldName = 'descricao_centro_custo'
          Visible = False
          GroupIndex = 1
          HeaderAlignmentHorz = taCenter
          MinWidth = 214
          Options.HorzSizing = False
        end
        object dbtabvwMovimentos_Operacoeshistorico: TcxGridDBColumn
          Caption = 'Hist'#243'rico'
          DataBinding.FieldName = 'historico'
          HeaderAlignmentHorz = taCenter
          Width = 364
        end
        object dbtabvwMovimentos_Operacoesnatureza: TcxGridDBColumn
          Caption = 'E/S'
          DataBinding.FieldName = 'natureza'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'Entrada'
            'Sa'#237'da')
          HeaderAlignmentHorz = taCenter
          MinWidth = 114
          Options.HorzSizing = False
          Width = 114
        end
        object dbtabvwMovimentos_Operacoesvalor: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.HorzSizing = False
          Width = 100
        end
        object dbtabvwMovimentos_Operacoesid_conta_movimento: TcxGridDBColumn
          DataBinding.FieldName = 'id_conta_movimento'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
        end
      end
      object grdMovimentos_OperacoesLevel1: TcxGridLevel
        GridView = dbtabvwMovimentos_Operacoes
      end
    end
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 720
    Top = 104
  end
  object dsTerminais: TDataSource
    DataSet = dmPDV.qryTerminais
    Left = 720
    Top = 148
  end
  object dsOperadores: TDataSource
    DataSet = dmPDV.qryOperadores
    Left = 720
    Top = 192
  end
  object dsMovimentos: TDataSource
    DataSet = dmPDV.qryMovimentos
    Left = 720
    Top = 236
  end
  object qryMovimentos_Operacoes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT mo.id_terminal, mo.data_movimento, mo.id_operador, mo.seq' +
        'uencia, '
      'mo.id_operacao, o.descricao AS descricao_operacao, '
      'mo.id_centro, c.descricao AS descricao_centro_custo,'
      'mo.historico, mo.natureza, mo.valor, mo.id_conta_movimento'
      'FROM terminais_movimentos_operacoes mo'
      '   INNER JOIN operacoes o'
      '      ON mo.id_operacao = o.id_operacao'
      '   LEFT OUTER JOIN centros c'
      '      ON mo.id_centro = c.id_centro'
      'WHERE mo.id_terminal = :id_terminal'
      ' AND mo.data_movimento = :data_movimento'
      ' AND mo.id_operador = :id_operador'
      'ORDER BY c.descricao, mo.natureza, o.descricao, mo.sequencia')
    MasterSource = dsMovimentos
    Left = 720
    Top = 280
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
      Required = True
    end
    object qryMovimentos_Operacoessequencia: TWordField
      FieldName = 'sequencia'
      Required = True
    end
    object qryMovimentos_Operacoesid_operacao: TWordField
      FieldName = 'id_operacao'
      Required = True
    end
    object qryMovimentos_Operacoesdescricao_operacao: TStringField
      FieldName = 'descricao_operacao'
      ReadOnly = True
      Size = 30
    end
    object qryMovimentos_Operacoesid_centro: TStringField
      FieldName = 'id_centro'
      Size = 6
    end
    object qryMovimentos_Operacoesdescricao_centro_custo: TStringField
      FieldName = 'descricao_centro_custo'
      ReadOnly = True
      Size = 30
    end
    object qryMovimentos_Operacoeshistorico: TStringField
      FieldName = 'historico'
      Required = True
      Size = 200
    end
    object qryMovimentos_Operacoesnatureza: TStringField
      FieldName = 'natureza'
      Required = True
      OnGetText = qryMovimentos_OperacoesnaturezaGetText
      OnSetText = qryMovimentos_OperacoesnaturezaSetText
      FixedChar = True
      Size = 1
    end
    object qryMovimentos_Operacoesvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object qryMovimentos_Operacoesid_conta_movimento: TLargeintField
      FieldName = 'id_conta_movimento'
    end
  end
  object dsMovimentos_Operacoes: TDataSource
    AutoEdit = False
    DataSet = qryMovimentos_Operacoes
    Left = 720
    Top = 324
  end
end
