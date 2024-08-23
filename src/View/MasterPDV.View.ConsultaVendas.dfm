inherited dlgConsultaVendas: TdlgConsultaVendas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Consulta Vendas ::.'
  ClientHeight = 511
  ClientWidth = 894
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 900
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 16
  object gboxLocalizar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 113
    Width = 894
    object lblTerminal: TcxLabel
      Left = 248
      Top = 8
      Caption = 'Terminal:'
      FocusControl = dbtxtedtDescricao
      Transparent = True
    end
    object dbtxtedtDescricao: TcxDBTextEdit
      Left = 248
      Top = 28
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsTerminais
      Enabled = False
      StyleDisabled.Color = clInfoBk
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 1
      Width = 184
    end
    object lblNomeOperador: TcxLabel
      Left = 248
      Top = 58
      Caption = 'Operador:'
      FocusControl = dbtxtedtNomeOperador
      Transparent = True
    end
    object dbtxtedtNomeOperador: TcxDBTextEdit
      Left = 248
      Top = 78
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsOperadores
      Enabled = False
      StyleDisabled.Color = clInfoBk
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 3
      Width = 633
    end
    object gboxPeriodo: TcxGroupBox
      Left = 8
      Top = 8
      Caption = 'Per'#237'odo:'
      TabOrder = 4
      Height = 92
      Width = 230
      object lblDataInicial: TcxLabel
        Left = 12
        Top = 16
        Caption = 'De:'
        FocusControl = dtedtDataInicial
      end
      object dtedtDataInicial: TcxDateEdit
        Left = 12
        Top = 40
        TabOrder = 1
        OnEnter = dtedtDataInicialEnter
        OnExit = dtedtDataInicialExit
        OnKeyDown = dtedtDataInicialKeyDown
        Width = 101
      end
      object lblDataFinal: TcxLabel
        Left = 119
        Top = 16
        Caption = 'At'#233':'
        FocusControl = dtedtDataFinal
      end
      object dtedtDataFinal: TcxDateEdit
        Left = 119
        Top = 40
        TabOrder = 3
        OnEnter = dtedtDataInicialEnter
        OnExit = dtedtDataInicialExit
        OnKeyDown = dtedtDataInicialKeyDown
        Width = 101
      end
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 113
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 350
    Width = 894
    object grdVendas: TcxGrid
      Left = 3
      Top = 3
      Width = 888
      Height = 344
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 890
      ExplicitHeight = 346
      object dbtabvwVendas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsVendas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_bruto'
            Column = dbtabvwVendasvalor_bruto
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_acrescimo'
            Column = dbtabvwVendasvalor_acrescimo
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_desconto'
            Column = dbtabvwVendasvalor_desconto
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_entrada'
            Column = dbtabvwVendasvalor_entrada
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_troca'
            Column = dbtabvwVendasvalor_troca
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_liquido'
            Column = dbtabvwVendasvalor_liquido
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'valor_recebido'
            Column = dbtabvwVendasvalor_recebido
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtabvwVendasstatus: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = imglstStatus
          Properties.Items = <
            item
              ImageIndex = 0
              Value = '0'
            end
            item
              ImageIndex = 1
              Value = '2'
            end
            item
              ImageIndex = 1
              Value = '5'
            end
            item
              ImageIndex = 2
              Value = '8'
            end
            item
              ImageIndex = 2
              Value = '9'
            end>
          HeaderAlignmentHorz = taCenter
          MinWidth = 24
          Options.Editing = False
          Options.HorzSizing = False
          Width = 24
          IsCaptionAssigned = True
        end
        object dbtabvwVendasid_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwVendasdata_registro: TcxGridDBColumn
          DataBinding.FieldName = 'data_registro'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 130
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwVendasdocumento: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'documento'
          HeaderAlignmentHorz = taCenter
          MinWidth = 94
          Options.Editing = False
          Options.HorzSizing = False
          Width = 94
        end
        object dbtabvwVendasdata_movimento: TcxGridDBColumn
          Caption = 'Data do Movimento'
          DataBinding.FieldName = 'data_movimento'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
        end
        object dbtabvwVendasid_caixa: TcxGridDBColumn
          DataBinding.FieldName = 'id_caixa'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendasid_operador: TcxGridDBColumn
          DataBinding.FieldName = 'id_operador'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwVendasnumero_documento_fiscal: TcxGridDBColumn
          Caption = 'Documento Fiscal'
          DataBinding.FieldName = 'numero_documento_fiscal'
          HeaderAlignmentHorz = taCenter
          MinWidth = 94
          Options.Editing = False
          Options.HorzSizing = False
          Width = 94
        end
        object dbtabvwVendasstatus_documento_fiscal: TcxGridDBColumn
          DataBinding.FieldName = 'status_documento_fiscal'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = imglstStatusDocumentoFiscal
          Properties.Items = <
            item
              ImageIndex = 0
              Value = '0'
            end
            item
              ImageIndex = 0
              Value = '1'
            end
            item
              ImageIndex = 0
              Value = '2'
            end
            item
              ImageIndex = 0
              Value = '3'
            end
            item
              ImageIndex = 0
              Value = '4'
            end
            item
              ImageIndex = 2
              Value = '5'
            end
            item
              ImageIndex = 1
              Value = '6'
            end
            item
              ImageIndex = 1
              Value = '7'
            end
            item
              ImageIndex = 1
              Value = '8'
            end
            item
              ImageIndex = 3
              Value = '9'
            end>
          HeaderAlignmentHorz = taCenter
          MinWidth = 24
          Options.Editing = False
          Options.HorzSizing = False
          Width = 24
          IsCaptionAssigned = True
        end
        object dbtabvwVendaschave: TcxGridDBColumn
          Caption = 'Chave'
          DataBinding.FieldName = 'chave'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object dbtabvwVendasrecibo: TcxGridDBColumn
          Caption = 'Recibo'
          DataBinding.FieldName = 'recibo'
          HeaderAlignmentHorz = taCenter
          MinWidth = 114
          Options.Editing = False
          Options.HorzSizing = False
          Width = 114
        end
        object dbtabvwVendasprotocolo_autorizacao: TcxGridDBColumn
          Caption = 'Protocolo Autoriza'#231#227'o'
          DataBinding.FieldName = 'protocolo_autorizacao'
          HeaderAlignmentHorz = taCenter
          MinWidth = 114
          Options.Editing = False
          Options.HorzSizing = False
          Width = 114
        end
        object dbtabvwVendastipo_prazo: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_prazo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwVendasvalor_bruto: TcxGridDBColumn
          Caption = 'Valor Bruto'
          DataBinding.FieldName = 'valor_bruto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Width = 100
        end
        object dbtabvwVendasvalor_acrescimo: TcxGridDBColumn
          Caption = 'Valor Acr'#233'scimo'
          DataBinding.FieldName = 'valor_acrescimo'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Width = 100
        end
        object dbtabvwVendasvalor_desconto: TcxGridDBColumn
          Caption = 'Valor Desconto'
          DataBinding.FieldName = 'valor_desconto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Width = 100
        end
        object dbtabvwVendasvalor_troca: TcxGridDBColumn
          DataBinding.FieldName = 'valor_troca'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Width = 80
        end
        object dbtabvwVendasvalor_entrada: TcxGridDBColumn
          DataBinding.FieldName = 'valor_entrada'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Width = 80
        end
        object dbtabvwVendasvalor_liquido: TcxGridDBColumn
          Caption = 'Valor L'#237'quido'
          DataBinding.FieldName = 'valor_liquido'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
        end
        object dbtabvwVendasvalor_recebido: TcxGridDBColumn
          DataBinding.FieldName = 'valor_recebido'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Width = 80
        end
        object dbtabvwVendasid_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'id_usuario'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwVendastipo_documento_fiscal: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_documento_fiscal'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwVendasdocumento_rfb_numero: TcxGridDBColumn
          DataBinding.FieldName = 'documento_rfb_numero'
          Visible = False
          MinWidth = 144
          Options.Editing = False
          Options.HorzSizing = False
        end
        object dbtabvwVendasid_nota_fiscal: TcxGridDBColumn
          DataBinding.FieldName = 'id_nota_fiscal'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object grdVendasLevel1: TcxGridLevel
        GridView = dbtabvwVendas
      end
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 463
    Align = alBottom
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Height = 48
    Width = 894
    object btnEnviar: TcxDBBotao
      AlignWithMargins = True
      Left = 104
      Top = 6
      Width = 92
      Height = 36
      Align = alLeft
      Caption = 'E&nviar'
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 0
      OnClick = btnEnviarClick
      DataSource = dsVendas
      DisableReasons = [drEmpty]
      ExplicitLeft = 103
      ExplicitTop = 5
      ExplicitHeight = 38
    end
    object btnCancelar: TcxDBBotao
      AlignWithMargins = True
      Left = 202
      Top = 6
      Width = 92
      Height = 36
      Align = alLeft
      Caption = '&Cancelar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 1
      OnClick = btnCancelarClick
      DataSource = dsVendas
      DisableReasons = [drEmpty]
      ExplicitLeft = 201
      ExplicitTop = 5
      ExplicitHeight = 38
    end
    object btnImprimir: TcxDBBotao
      AlignWithMargins = True
      Left = 398
      Top = 6
      Width = 114
      Height = 36
      Align = alLeft
      Caption = '&Imprimir'
      DropDownMenu = popmnuImprimir
      Kind = cxbkDropDownButton
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 2
      DataSource = dsVendas
      DisableReasons = [drEmpty]
      ExplicitLeft = 397
      ExplicitTop = 5
      ExplicitHeight = 38
    end
    object btnFechar: TcxBotaoFechar
      AlignWithMargins = True
      Left = 518
      Top = 6
      Width = 92
      Height = 36
      Align = alLeft
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 3
      ExplicitLeft = 517
      ExplicitTop = 5
      ExplicitHeight = 38
    end
    object btnConsultar: TcxDBBotao
      AlignWithMargins = True
      Left = 300
      Top = 6
      Width = 92
      Height = 36
      Align = alLeft
      Caption = 'C&onsultar'
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 4
      OnClick = btnConsultarClick
      DataSource = dsVendas
      DisableReasons = [drEmpty]
      ExplicitLeft = 299
      ExplicitTop = 5
      ExplicitHeight = 38
    end
    object btnAutenticar: TcxDBBotao
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 92
      Height = 36
      Align = alLeft
      Caption = '&Autenticar'
      TabOrder = 5
      OnClick = btnAutenticarClick
      DataSource = dsVendas
      DisableReasons = [drEmpty]
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitHeight = 38
    end
  end
  object qryVendas: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendas'
      
        '  (id_venda, documento_rfb_numero, tipo_documento_fiscal, status' +
        ')'
      'VALUES'
      
        '  (:id_venda, :documento_rfb_numero, :tipo_documento_fiscal, :st' +
        'atus)')
    SQLDelete.Strings = (
      'DELETE FROM vendas'
      'WHERE'
      '  id_venda = :Old_id_venda')
    SQLUpdate.Strings = (
      'UPDATE vendas'
      'SET'
      '  id_venda = :id_venda, '
      '  documento_rfb_numero = :documento_rfb_numero, '
      '  tipo_documento_fiscal = :tipo_documento_fiscal,'
      '  status = :status'
      'WHERE'
      '  id_venda = :Old_id_venda')
    SQLLock.Strings = (
      'SELECT * FROM vendas'
      'WHERE'
      '  id_venda = :Old_id_venda'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id_venda, documento_rfb_numero, tipo_documento_fiscal, st' +
        'atus FROM vendas'
      'WHERE'
      '  id_venda = :id_venda')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM vendas')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT v.id_venda, v.data_registro, v.documento, v.data_moviment' +
        'o, v.id_caixa, v.id_operador,'
      
        'vnf.id_nota_fiscal, nf.numero AS numero_documento_fiscal, nf.cha' +
        've, nf.recibo, nf.protocolo_autorizacao,'
      
        'v.tipo_prazo, v.valor_bruto, v.valor_acrescimo, v.valor_desconto' +
        ', v.valor_troca, v.valor_entrada, v.valor_recebido,'
      
        'v.id_usuario, v.tipo_documento_fiscal, v.documento_rfb_numero, v' +
        '.status, '
      'nf.status AS status_documento_fiscal'
      'FROM vendas v'
      '   LEFT OUTER JOIN (vendas_notas_fiscais vnf'
      '                       INNER JOIN notas_fiscais nf'
      
        '                          ON vnf.id_nota_fiscal = nf.id_nota_fis' +
        'cal)'
      '      ON v.id_venda = vnf.id_venda'
      'WHERE v.id_caixa = :id_terminal'
      ' AND v.id_operador IS NOT NULL'
      '-- AND v.data_movimento = :data_movimento'
      '-- AND v.id_operador = :id_operador'
      ' AND v.status NOT IN ('#39'0'#39')'
      ' AND (vnf.id_nota_fiscal IS NULL OR EXISTS(SELECT 1'
      
        '                                           FROM vendas_notas_fis' +
        'cais z'
      
        '                                           WHERE z.id_venda = v.' +
        'id_venda'
      
        '                                           HAVING MAX(z.id_nota_' +
        'fiscal) = vnf.id_nota_fiscal))'
      ' &CONDICAO'
      'ORDER BY v.documento')
    MasterSource = dsMovimentos
    BeforeOpen = qryVendasBeforeOpen
    OnCalcFields = qryVendasCalcFields
    Left = 684
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end>
    MacroData = <
      item
        Name = 'CONDICAO'
      end>
    object qryVendasid_venda: TLargeintField
      FieldName = 'id_venda'
    end
    object qryVendasdata_registro: TDateTimeField
      FieldName = 'data_registro'
    end
    object qryVendasdocumento: TLargeintField
      Alignment = taCenter
      FieldName = 'documento'
      Required = True
      DisplayFormat = '00000000'
    end
    object qryVendasdata_movimento: TDateTimeField
      Alignment = taCenter
      FieldName = 'data_movimento'
      Required = True
    end
    object qryVendasid_caixa: TWordField
      FieldName = 'id_caixa'
    end
    object qryVendasid_operador: TLargeintField
      FieldName = 'id_operador'
    end
    object qryVendasid_nota_fiscal: TLargeintField
      FieldName = 'id_nota_fiscal'
      ReadOnly = True
    end
    object qryVendasnumero_documento_fiscal: TLargeintField
      Alignment = taCenter
      FieldName = 'numero_documento_fiscal'
      ReadOnly = True
      DisplayFormat = '00000000'
    end
    object qryVendaschave: TStringField
      FieldName = 'chave'
      ReadOnly = True
      Size = 44
    end
    object qryVendasrecibo: TStringField
      FieldName = 'recibo'
      ReadOnly = True
      Size = 15
    end
    object qryVendasprotocolo_autorizacao: TStringField
      FieldName = 'protocolo_autorizacao'
      ReadOnly = True
      Size = 15
    end
    object qryVendastipo_prazo: TStringField
      FieldName = 'tipo_prazo'
      FixedChar = True
      Size = 1
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
    object qryVendasvalor_entrada: TFloatField
      FieldName = 'valor_entrada'
    end
    object qryVendasvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryVendasvalor_liquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_liquido'
      Calculated = True
    end
    object qryVendasid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
    object qryVendastipo_documento_fiscal: TStringField
      FieldName = 'tipo_documento_fiscal'
      FixedChar = True
      Size = 1
    end
    object qryVendasdocumento_rfb_numero: TStringField
      FieldName = 'documento_rfb_numero'
    end
    object qryVendasstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object qryVendasstatus_documento_fiscal: TStringField
      FieldName = 'status_documento_fiscal'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object dsTerminais: TDataSource
    DataSet = dmPDV.qryTerminais
    Left = 684
    Top = 92
  end
  object dsOperadores: TDataSource
    DataSet = dmPDV.qryOperadores
    Left = 684
    Top = 136
  end
  object dsMovimentos: TDataSource
    DataSet = dmPDV.qryMovimentos
    Left = 684
    Top = 180
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    Left = 684
    Top = 268
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 684
    Top = 48
  end
  object imglstStatus: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 393900
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000020170E2D6D4D2E979E7042DBB6804CFCB27D4AF69D6F
          42DA71502F9C23180E3000000000000000000000000000000000000000000000
          0000060503096E4D2E98B7814CFDB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB7814CFD7351309F0906040C0000000000000000000000000403
          0206886039BCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8F653CC60705030A00000000000000006C4C
          2D96B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF71502F9C0000000020160D2CB680
          4CFCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB7814DFE251A0F3367492B8FB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF7351309F9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA27244E0B47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BFA9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA07143DE68492B90B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A020160D2CB781
          4CFDB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF281D1138000000006D4D
          2E97B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A000000000000000000403
          0206896139BEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8E643BC50705030A00000000000000000000
          0000050402076E4E2E99B7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF7351309F060503090000000000000000000000000000
          00000000000000000000251A0F336E4E2E999F7042DCB7814CFDB27E4BF79E70
          42DB71502F9C271C103600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
      end>
  end
  object imglstStatusDocumentoFiscal: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 394016
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000020170E2D6D4D2E979E7042DBB6804CFCB27D4AF69D6F
          42DA71502F9C23180E3000000000000000000000000000000000000000000000
          0000060503096E4D2E98B7814CFDB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB7814CFD7351309F0906040C0000000000000000000000000403
          0206886039BCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8F653CC60705030A00000000000000006C4C
          2D96B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF71502F9C0000000020160D2CB680
          4CFCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB7814DFE251A0F3367492B8FB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF7351309F9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA27244E0B47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BFA9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA07143DE68492B90B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A020160D2CB781
          4CFDB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF281D1138000000006D4D
          2E97B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A000000000000000000403
          0206896139BEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8E643BC50705030A00000000000000000000
          0000050402076E4E2E99B7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF7351309F060503090000000000000000000000000000
          00000000000000000000251A0F336E4E2E999F7042DCB7814CFDB27E4BF79E70
          42DB71502F9C271C103600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000E2A3F0120
          6394001C5D8A011D608B001D618A011E628A011D618A001D628B001C6189001C
          618B011B5F8A011B5B89011A5A8A00185689001D5C92000A2A47082B5978A1C9
          F1FA9EC2EEFAA4CCF1FAACCFF3FBB2D6F3FABCDBF4FBC8DFF5FBC9DEF4FABFD9
          F1FBB2D6F2FBAACEF0FAA0C9EEF99DBFECF977B5ECF80624567C011842630075
          FBFF007BFFFF008FFFFF03A8FFFF0DBEFFFF2ED2FFFF0BC3FFFF0BC3FFFF35D8
          FFFF15C4FFFF05AEFFFF0091FFFF0096FFFF0192FCFF010E355A000103050753
          B2E7008DFFFF0064FFFF008DFFFF099CFFFF0080FFFFDBEFFFFFE5F6FFFF0085
          FFFF0D9EFFFF0289FFFF017FFFFF02B7FFFF02429EDA0000010200000000010C
          274228B3FAFF028CFEFF0065FFFF0088FFFF0072FFFFFFFFFAFFFFFFFBFF0075
          FFFF0090FFFF007EFFFF0198FFFF088EF9FF00061F3900000000000000000000
          0101114C97CF2ADEFFFF0F9BF8FF007AFFFF005AFFFF005EEAFF005EEAFF006E
          FFFF0083FFFF007CFFFF05BEFFFF023285C20000000000000000000000000000
          00000005152633A3EEFE11A7FDFF1CADF5FF0051FBFFFFFFFFFFFFFFFFFF003A
          F3FF0079FEFF0096FFFF0B8AF5FE00020F1E0000000000000000000000000000
          000000000000133B7EB933D1FFFF108DE4FF005EE6FFFFFFFFFFFFFFFEFF001B
          DEFF006FFEFF04B7FFFF042F72AA000000000000000000000000000000000000
          000000000000000209113EA0E2FE17AAFBFF0050D9FFFFFFFFFFFFFFFFFF0053
          E6FF008BFFFF0E83ECFC0002080F000000000000000000000000000000000000
          000000000000000000000D2E659A4CDCFDFF0053DAFFFFFFFFFFFFFFFFFF0062
          F8FF22E0FFFF06265C8D00000000000000000000000000000000000000000000
          000000000000000000000001050A4092D5F90195F4FFAAC9EDFFAEC9F0FF00AE
          FFFF248DE3F80001040800000000000000000000000000000000000000000000
          00000000000000000000000000000A204F7B54D7FCFF0077EBFF0081FDFF37DE
          FFFF041C48700000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000103063986CFF334CDFFFF2ED6FFFF2683
          D5F0000103050000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004163B5E4FE1FFFF43DEFFFF0215
          3857000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000002032F82C7E32679BFDC0000
          0102000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000109151F0108121C0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
      end>
  end
  object popmnuImprimir: TPopupMenu
    Left = 448
    Top = 241
    object C1: TMenuItem
      Caption = 'Comprovante N'#227'o Fiscal'
      OnClick = C1Click
    end
    object D1: TMenuItem
      Caption = 'DANF-e'
      OnClick = D1Click
    end
  end
end
