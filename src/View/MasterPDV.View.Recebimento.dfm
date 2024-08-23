inherited frmRecebimento: TfrmRecebimento
  Tag = 504
  Left = 0
  Top = 0
  Caption = '.:: Recebimento ::.'
  ClientHeight = 561
  ClientWidth = 784
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  object panPesquisa: TAdvSmoothPanel
    Left = 8
    Top = 8
    Width = 768
    Height = 77
    Cursor = crDefault
    Caption.Text = 'Pesquisar'
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
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    ExplicitWidth = 784
    DesignSize = (
      768
      77)
    TMSStyle = 0
    object radbtnCPFCNPJ: TcxRadioButton
      Left = 12
      Top = 32
      Width = 85
      Height = 17
      Caption = 'CPF/CNPJ'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = radbtnCPFCNPJClick
      Transparent = True
    end
    object radNome: TcxRadioButton
      Left = 272
      Top = 32
      Width = 65
      Height = 17
      Caption = 'Nome'
      TabOrder = 1
      OnClick = radNomeClick
      Transparent = True
    end
    object mskedtCPFCNPJ: TcxMaskEdit
      Left = 103
      Top = 28
      Properties.CharCase = ecUpperCase
      Properties.OnChange = mskedtCPFCNPJPropertiesChange
      TabOrder = 2
      OnEnter = mskedtCPFCNPJEnter
      OnExit = mskedtCPFCNPJExit
      OnKeyDown = mskedtCPFCNPJKeyDown
      Width = 150
    end
    object txtedtNome: TcxTextEdit
      Left = 343
      Top = 28
      Anchors = [akLeft, akTop, akRight]
      Properties.CharCase = ecUpperCase
      Properties.OnChange = txtedtNomePropertiesChange
      TabOrder = 3
      Text = 'TXTEDTNOME'
      OnEnter = txtedtNomeEnter
      OnExit = txtedtNomeExit
      OnKeyDown = txtedtNomeKeyDown
      Width = 402
    end
  end
  object panDebitos: TAdvSmoothPanel
    Left = 8
    Top = 328
    Width = 768
    Height = 225
    Cursor = crDefault
    Caption.Text = 'D'#233'bitos em Aberto'
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
    Anchors = [akLeft, akTop, akRight, akBottom]
    Visible = False
    TabOrder = 2
    ExplicitWidth = 784
    ExplicitHeight = 264
    DesignSize = (
      768
      225)
    TMSStyle = 0
    object grdDebitos: TcxGrid
      Left = 12
      Top = 32
      Width = 733
      Height = 117
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      ExplicitWidth = 749
      ExplicitHeight = 156
      object dbtabvwDebitos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsDebitos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor'
            Column = dbtabvwDebitosvalor
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'juros_calculado'
            Column = dbtabvwDebitosjuros_calculado
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'multa_calculada'
            Column = dbtabvwDebitosmulta_calculada
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'cartorio'
            Column = dbtabvwDebitoscartorio
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'acrescimo'
            Column = dbtabvwDebitosacrescimo
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'desconto'
            Column = dbtabvwDebitosdesconto
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_cobrado'
            Column = dbtabvwDebitosvalor_cobrado
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_baixado'
            Column = dbtabvwDebitosvalor_baixado
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_receber'
            Column = dbtabvwDebitosvalor_receber
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtabvwDebitosselecionado: TcxGridDBColumn
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
        object dbtabvwDebitosid_duplicata: TcxGridDBColumn
          DataBinding.FieldName = 'id_duplicata'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosid_local: TcxGridDBColumn
          DataBinding.FieldName = 'id_local'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosdata_vencimento: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'data_vencimento'
          HeaderAlignmentHorz = taCenter
          MinWidth = 114
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 114
        end
        object dbtabvwDebitosid_parceiro: TcxGridDBColumn
          DataBinding.FieldName = 'id_parceiro'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosdocumento: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'documento'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Width = 124
        end
        object dbtabvwDebitosnosso_numero: TcxGridDBColumn
          DataBinding.FieldName = 'nosso_numero'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 144
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosdata_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'data_emissao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 130
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosvalor: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwDebitosatraso: TcxGridDBColumn
          Caption = 'Atraso'
          DataBinding.FieldName = 'atraso'
          HeaderAlignmentHorz = taCenter
          MinWidth = 64
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 64
        end
        object dbtabvwDebitoscobrar_juros: TcxGridDBColumn
          DataBinding.FieldName = 'cobrar_juros'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosjuros: TcxGridDBColumn
          DataBinding.FieldName = 'juros'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosjuros_calculado: TcxGridDBColumn
          Caption = 'Juros'
          DataBinding.FieldName = 'juros_calculado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosjuros_cobrado: TcxGridDBColumn
          DataBinding.FieldName = 'juros_cobrado'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitoscobrar_multa: TcxGridDBColumn
          DataBinding.FieldName = 'cobrar_multa'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosmulta: TcxGridDBColumn
          DataBinding.FieldName = 'multa'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosmulta_calculada: TcxGridDBColumn
          Caption = 'Multa'
          DataBinding.FieldName = 'multa_calculada'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitosmulta_cobrada: TcxGridDBColumn
          DataBinding.FieldName = 'multa_cobrada'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwDebitoscartorio: TcxGridDBColumn
          Caption = 'Enc. Cart'#243'rio'
          DataBinding.FieldName = 'cartorio'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwDebitosacrescimo: TcxGridDBColumn
          Caption = 'Acr'#233'scimo'
          DataBinding.FieldName = 'acrescimo'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwDebitosdesconto: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'desconto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwDebitosdata_validade: TcxGridDBColumn
          Caption = 'Validade'
          DataBinding.FieldName = 'data_validade'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
        end
        object dbtabvwDebitosvalor_cobrado: TcxGridDBColumn
          Caption = 'Valor Cobrado'
          DataBinding.FieldName = 'valor_cobrado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwDebitosvalor_baixado: TcxGridDBColumn
          Caption = 'Valor Recebido'
          DataBinding.FieldName = 'valor_baixado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object dbtabvwDebitosdata_baixa: TcxGridDBColumn
          Caption = 'Data Recebimento'
          DataBinding.FieldName = 'data_baixa'
          HeaderAlignmentHorz = taCenter
          MinWidth = 114
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 114
        end
        object dbtabvwDebitosvalor_receber: TcxGridDBColumn
          Caption = 'Valor a Receber'
          DataBinding.FieldName = 'valor_receber'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
      end
      object grdDebitosLevel1: TcxGridLevel
        GridView = dbtabvwDebitos
      end
    end
    object btnReceber: TcxDBBotao
      Left = 631
      Top = 161
      Width = 114
      Height = 40
      Anchors = [akRight, akBottom]
      Caption = '&Receber'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = dmLeiaute.cxImageList32
      TabOrder = 1
      OnClick = btnReceberClick
      DataSource = dsDebitos
      DisableReasons = [drEmpty]
      ExplicitLeft = 647
      ExplicitTop = 200
    end
  end
  object panIdentificacaoCliente: TAdvSmoothPanel
    Left = 8
    Top = 96
    Width = 768
    Height = 217
    Cursor = crDefault
    Caption.Text = 'Cliente'
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
    Anchors = [akLeft, akTop, akRight]
    Visible = False
    TabOrder = 1
    DesignSize = (
      768
      217)
    TMSStyle = 0
    object lblNomeRazaoSocial: TcxLabel
      Left = 172
      Top = 76
      Caption = 'Nome/Raz'#227'o Social:'
      FocusControl = dbtxtedtNomeRazaoSocial
      Transparent = True
    end
    object dbtxtedtNomeRazaoSocial: TcxDBTextEdit
      Left = 172
      Top = 94
      DataBinding.DataField = 'razao'
      DataBinding.DataSource = dsCliente
      Enabled = False
      Properties.CharCase = ecUpperCase
      StyleDisabled.Color = clInfoBk
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 1
      Width = 382
    end
    object gboxFoto: TcxGroupBox
      Left = 12
      Top = 32
      Caption = 'Foto:'
      Enabled = False
      TabOrder = 2
      Transparent = True
      Height = 162
      Width = 154
      object dbimgFoto: TcxDBImage
        Left = 3
        Top = 18
        Align = alClient
        DataBinding.DataField = 'foto'
        DataBinding.DataSource = dsCliente
        TabOrder = 0
        Height = 134
        Width = 148
      end
    end
    object gboxLimites: TcxGroupBox
      Left = 560
      Top = 32
      Anchors = [akTop, akRight]
      Caption = 'Limites:'
      TabOrder = 3
      Transparent = True
      Height = 162
      Width = 186
      object lblLimiteCredito: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Limite de Cr'#233'dito:'
        FocusControl = dbcurredtLimiteCredito
      end
      object dbcurredtLimiteCredito: TcxDBCurrencyEdit
        Left = 8
        Top = 36
        DataBinding.DataField = 'limite_credito'
        DataBinding.DataSource = dsCliente
        Enabled = False
        StyleDisabled.Color = clInfoBk
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 1
        Width = 169
      end
      object lblLimiteUtilizado: TcxLabel
        Left = 8
        Top = 60
        Caption = 'Limite Utilizado:'
        FocusControl = dbcurredtLimiteUtilizado
      end
      object dbcurredtLimiteUtilizado: TcxDBCurrencyEdit
        Left = 8
        Top = 80
        DataBinding.DataField = 'limite_credito_utilizado'
        DataBinding.DataSource = dsCliente
        Enabled = False
        StyleDisabled.Color = clInfoBk
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 3
        Width = 169
      end
      object lblLimiteDisponivel: TcxLabel
        Left = 8
        Top = 103
        Caption = 'Limite Dispon'#237'vel:'
        FocusControl = dbcurredtLimiteDisponivel
      end
      object dbcurredtLimiteDisponivel: TcxDBCurrencyEdit
        Left = 8
        Top = 123
        DataBinding.DataField = 'limit_credito_disponivel'
        DataBinding.DataSource = dsCliente
        Enabled = False
        StyleDisabled.Color = clInfoBk
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 5
        Width = 169
      end
    end
    object lblCPF: TcxLabel
      Left = 172
      Top = 32
      Caption = 'CPF:'
      FocusControl = dbtxtedtCPF
      Transparent = True
    end
    object dbtxtedtCPF: TcxDBTextEdit
      Left = 172
      Top = 52
      DataBinding.DataField = 'cpf'
      DataBinding.DataSource = dsCliente
      Enabled = False
      Properties.CharCase = ecUpperCase
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 5
      Width = 114
    end
    object dbtxtedtCNPJ: TcxDBTextEdit
      Left = 172
      Top = 52
      DataBinding.DataField = 'cnpj'
      DataBinding.DataSource = dsCliente
      Enabled = False
      Properties.CharCase = ecUpperCase
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 6
      Width = 114
    end
    object lblCNPJ: TcxLabel
      Left = 172
      Top = 32
      Caption = 'CPF:'
      FocusControl = dbtxtedtCNPJ
      Transparent = True
    end
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    OnStateChange = dsClienteStateChange
    Left = 56
    Top = 196
  end
  object dsDebitos: TDataSource
    DataSet = qryDebitos
    OnStateChange = dsDebitosStateChange
    Left = 124
    Top = 196
  end
  object qryCliente: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT c.id_parceiro, c.codigo, c.tipo_pessoa, c.cpf, c.cnpj, c.' +
        'razao, c.fantasia, '
      'c.telefone, c.telefone1, c.celular, c.celular1, c.email,'
      'c.limite_credito, '
      
        'f_get_cliente_limite_utilizado(c.id_parceiro) AS limite_credito_' +
        'utilizado,'
      'c.id_classificacao, c.descricao_classificacao,'
      'c.foto, c.situacao'
      'FROM vw_clientes c'
      'WHERE c.id_parceiro = :id_cliente'
      'ORDER BY c.id_parceiro')
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_cliente'
        ParamType = ptInput
        Value = nil
      end>
    object qryClienteid_parceiro: TLargeintField
      FieldName = 'id_parceiro'
      Required = True
    end
    object qryClientecodigo: TStringField
      FieldName = 'codigo'
      Size = 8
    end
    object qryClientetipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object qryClientecpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object qryClientecnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object qryClienterazao: TStringField
      FieldName = 'razao'
      Size = 60
    end
    object qryClientefantasia: TStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qryClientetelefone: TStringField
      FieldName = 'telefone'
      Size = 11
    end
    object qryClientetelefone1: TStringField
      FieldName = 'telefone1'
      Size = 11
    end
    object qryClientecelular: TStringField
      FieldName = 'celular'
      Size = 11
    end
    object qryClientecelular1: TStringField
      FieldName = 'celular1'
      Size = 11
    end
    object qryClienteemail: TStringField
      FieldName = 'email'
      Size = 200
    end
    object qryClientelimite_credito: TFloatField
      FieldName = 'limite_credito'
    end
    object qryClientelimite_credito_utilizado: TFloatField
      FieldName = 'limite_credito_utilizado'
      ReadOnly = True
    end
    object qryClientelimit_credito_disponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'limit_credito_disponivel'
      Calculated = True
    end
    object qryClienteid_classificacao: TWordField
      FieldName = 'id_classificacao'
    end
    object qryClientedescricao_classificacao: TStringField
      FieldName = 'descricao_classificacao'
      Size = 30
    end
    object qryClientefoto: TBlobField
      FieldName = 'foto'
    end
    object qryClientesituacao: TStringField
      FieldName = 'situacao'
      Size = 1
    end
  end
  object qryDebitos: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT '#39'N'#39' AS selecionado,'
      
        'd.id_duplicata, d.id_local, d.data_vencimento, d.id_parceiro, d.' +
        'documento, d.nosso_numero, d.data_emissao, '
      
        'd.valor, d.atraso, d.cobrar_juros, d.juros, d.juros_calculado, d' +
        '.juros_cobrado, d.cobrar_multa, d.multa, d.multa_calculada, d.mu' +
        'lta_cobrada,'
      
        'd.cartorio, d.acrescimo, d.desconto, d.data_validade, d.valor_co' +
        'brado, d.valor_baixado, d.data_baixa, d.valor_receber'
      'FROM vw_duplicatas_receber d'
      'WHERE d.id_parceiro = :id_cliente'
      ' AND d.valor_receber > 0'
      'ORDER BY d.data_vencimento')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 124
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_cliente'
        ParamType = ptInput
        Value = nil
      end>
    object qryDebitosselecionado: TStringField
      FieldName = 'selecionado'
      Required = True
      Size = 1
    end
    object qryDebitosid_duplicata: TLargeintField
      FieldName = 'id_duplicata'
    end
    object qryDebitosid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryDebitosdata_vencimento: TDateTimeField
      FieldName = 'data_vencimento'
      Required = True
    end
    object qryDebitosid_parceiro: TLargeintField
      FieldName = 'id_parceiro'
    end
    object qryDebitosdocumento: TStringField
      FieldName = 'documento'
      Required = True
    end
    object qryDebitosnosso_numero: TStringField
      FieldName = 'nosso_numero'
    end
    object qryDebitosdata_emissao: TDateTimeField
      FieldName = 'data_emissao'
    end
    object qryDebitosvalor: TFloatField
      FieldName = 'valor'
    end
    object qryDebitosatraso: TLargeintField
      FieldName = 'atraso'
    end
    object qryDebitoscobrar_juros: TStringField
      FieldName = 'cobrar_juros'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryDebitosjuros: TFloatField
      FieldName = 'juros'
    end
    object qryDebitosjuros_calculado: TFloatField
      FieldName = 'juros_calculado'
    end
    object qryDebitosjuros_cobrado: TFloatField
      FieldName = 'juros_cobrado'
    end
    object qryDebitoscobrar_multa: TStringField
      FieldName = 'cobrar_multa'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryDebitosmulta: TFloatField
      FieldName = 'multa'
    end
    object qryDebitosmulta_calculada: TFloatField
      FieldName = 'multa_calculada'
    end
    object qryDebitosmulta_cobrada: TFloatField
      FieldName = 'multa_cobrada'
    end
    object qryDebitoscartorio: TFloatField
      FieldName = 'cartorio'
    end
    object qryDebitosacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object qryDebitosdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qryDebitosdata_validade: TDateTimeField
      FieldName = 'data_validade'
    end
    object qryDebitosvalor_cobrado: TFloatField
      FieldName = 'valor_cobrado'
    end
    object qryDebitosvalor_baixado: TFloatField
      FieldName = 'valor_baixado'
    end
    object qryDebitosdata_baixa: TDateTimeField
      FieldName = 'data_baixa'
    end
    object qryDebitosvalor_receber: TFloatField
      FieldName = 'valor_receber'
    end
  end
end
