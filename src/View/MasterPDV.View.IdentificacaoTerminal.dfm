inherited dlgIdentificacaoTerminal: TdlgIdentificacaoTerminal
  ActiveControl = grdTerminais
  BorderStyle = bsDialog
  Caption = '.:: Identifica'#231#227'o do Terminal ::.'
  ClientHeight = 261
  ClientWidth = 634
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 640
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    ExplicitWidth = 542
    Height = 217
    Width = 634
    object grdTerminais: TcxGrid
      Left = 3
      Top = 3
      Width = 628
      Height = 211
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 536
      object dbtabvwTerminais: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsTerminais
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
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
        OptionsView.Indicator = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtabvwTerminaisid_terminal: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'id_terminal'
          HeaderAlignmentHorz = taCenter
          MinWidth = 64
          Options.Editing = False
          Options.Focusing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 64
        end
        object dbtabvwTerminaisid_estabelecimento: TcxGridDBColumn
          DataBinding.FieldName = 'id_estabelecimento'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.Editing = False
          Options.Focusing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwTerminaisnome_fantasia_estabelecimento: TcxGridDBColumn
          Caption = 'Estabelecimento'
          DataBinding.FieldName = 'nome_fantasia_estabelecimento'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 1789
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwTerminaisid_local: TcxGridDBColumn
          DataBinding.FieldName = 'id_local'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object dbtabvwTerminaisdescricao_local: TcxGridDBColumn
          Caption = 'Local'
          DataBinding.FieldName = 'descricao_local'
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
        end
        object dbtabvwTerminaisdescricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          HeaderAlignmentHorz = taCenter
          MinWidth = 224
          Options.Editing = False
          Options.Focusing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 224
        end
        object dbtabvwTerminaisnumero: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'numero'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.Focusing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
        end
        object dbtabvwTerminaisfiscal: TcxGridDBColumn
          Caption = 'Fiscal'
          DataBinding.FieldName = 'fiscal'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          MinWidth = 56
          Options.HorzSizing = False
          Width = 56
        end
        object dbtabvwTerminaisendereco_fisico: TcxGridDBColumn
          DataBinding.FieldName = 'endereco_fisico'
          Visible = False
        end
        object dbtabvwTerminaistipo_documento_fiscal: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_documento_fiscal'
          Visible = False
        end
        object dbtabvwTerminaisid_conta: TcxGridDBColumn
          DataBinding.FieldName = 'id_conta'
          Visible = False
        end
        object dbtabvwTerminaisidentificar_representante: TcxGridDBColumn
          DataBinding.FieldName = 'identificar_representante'
          Visible = False
        end
        object dbtabvwTerminaisid_condicao_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'id_condicao_pagamento'
          Visible = False
        end
        object dbtabvwTerminaisid_cliente_consumidor: TcxGridDBColumn
          DataBinding.FieldName = 'id_cliente_consumidor'
          Visible = False
        end
        object dbtabvwTerminaisetiqueta_prefixo: TcxGridDBColumn
          DataBinding.FieldName = 'etiqueta_prefixo'
          Visible = False
        end
        object dbtabvwTerminaisetiqueta_codigo_inicio: TcxGridDBColumn
          DataBinding.FieldName = 'etiqueta_codigo_inicio'
          Visible = False
        end
        object dbtabvwTerminaisetiqueta_codigo_tamanho: TcxGridDBColumn
          DataBinding.FieldName = 'etiqueta_codigo_tamanho'
          Visible = False
        end
        object dbtabvwTerminaisid_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'id_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaisdescricao_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaisid_modelo_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'id_modelo_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaisporta_serial_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'porta_serial_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaisvelocidade_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'velocidade_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaistaxa_transmissao_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'taxa_transmissao_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaisid_paridade_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'id_paridade_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaisid_bit_parada_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'id_bit_parada_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaishandshake_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'handshake_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaistempo_limite_balanca_acoplada: TcxGridDBColumn
          DataBinding.FieldName = 'tempo_limite_balanca_acoplada'
          Visible = False
        end
        object dbtabvwTerminaisid_gerenciador_tef: TcxGridDBColumn
          DataBinding.FieldName = 'id_gerenciador_tef'
          Visible = False
        end
        object dbtabvwTerminaisimpressora_padrao: TcxGridDBColumn
          DataBinding.FieldName = 'impressora_padrao'
          Visible = False
        end
        object dbtabvwTerminaisdigitos_significativos: TcxGridDBColumn
          DataBinding.FieldName = 'digitos_significativos'
          Visible = False
        end
        object dbtabvwTerminaisgerar_senha: TcxGridDBColumn
          DataBinding.FieldName = 'gerar_senha'
          Visible = False
        end
        object dbtabvwTerminaisautenticar_documento: TcxGridDBColumn
          DataBinding.FieldName = 'autenticar_documento'
          Visible = False
        end
        object dbtabvwTerminaisautenticador: TcxGridDBColumn
          DataBinding.FieldName = 'autenticador'
          Visible = False
        end
        object dbtabvwTerminaisautenticador_id_modelo: TcxGridDBColumn
          DataBinding.FieldName = 'autenticador_id_modelo'
          Visible = False
        end
        object dbtabvwTerminaistoken_csc_id: TcxGridDBColumn
          DataBinding.FieldName = 'token_csc_id'
          Visible = False
        end
        object dbtabvwTerminaistoken_csc_numero: TcxGridDBColumn
          DataBinding.FieldName = 'token_csc_numero'
          Visible = False
        end
        object dbtabvwTerminaisdanfe_logomarca_arquivo: TcxGridDBColumn
          DataBinding.FieldName = 'danfe_logomarca_arquivo'
          Visible = False
        end
        object dbtabvwTerminaisdanfe_logomarca_expandir: TcxGridDBColumn
          DataBinding.FieldName = 'danfe_logomarca_expandir'
          Visible = False
        end
        object dbtabvwTerminaissalvar_resposta_envio: TcxGridDBColumn
          DataBinding.FieldName = 'salvar_resposta_envio'
          Visible = False
        end
        object dbtabvwTerminaissalvar_resposta_envio_caminho: TcxGridDBColumn
          DataBinding.FieldName = 'salvar_resposta_envio_caminho'
          Visible = False
        end
        object dbtabvwTerminaisws_ambiente: TcxGridDBColumn
          DataBinding.FieldName = 'ws_ambiente'
          Visible = False
        end
        object dbtabvwTerminaisws_visualizar_mensagens: TcxGridDBColumn
          DataBinding.FieldName = 'ws_visualizar_mensagens'
          Visible = False
        end
        object dbtabvwTerminaiscertificado_caminho: TcxGridDBColumn
          DataBinding.FieldName = 'certificado_caminho'
          Visible = False
        end
        object dbtabvwTerminaiscertificado_senha: TcxGridDBColumn
          DataBinding.FieldName = 'certificado_senha'
          Visible = False
        end
        object dbtabvwTerminaiscertificado_serie: TcxGridDBColumn
          DataBinding.FieldName = 'certificado_serie'
          Visible = False
        end
        object dbtabvwTerminaisproxy_host: TcxGridDBColumn
          DataBinding.FieldName = 'proxy_host'
          Visible = False
        end
        object dbtabvwTerminaisproxy_porta: TcxGridDBColumn
          DataBinding.FieldName = 'proxy_porta'
          Visible = False
        end
        object dbtabvwTerminaisproxy_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'proxy_usuario'
          Visible = False
        end
        object dbtabvwTerminaisproxy_senha: TcxGridDBColumn
          DataBinding.FieldName = 'proxy_senha'
          Visible = False
        end
        object dbtabvwTerminaisemail_host: TcxGridDBColumn
          DataBinding.FieldName = 'email_host'
          Visible = False
        end
        object dbtabvwTerminaisemail_porta: TcxGridDBColumn
          DataBinding.FieldName = 'email_porta'
          Visible = False
        end
        object dbtabvwTerminaisemail_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'email_usuario'
          Visible = False
        end
        object dbtabvwTerminaisemail_senha: TcxGridDBColumn
          DataBinding.FieldName = 'email_senha'
          Visible = False
        end
        object dbtabvwTerminaisemail_assunto: TcxGridDBColumn
          DataBinding.FieldName = 'email_assunto'
          Visible = False
        end
        object dbtabvwTerminaisemail_ssl: TcxGridDBColumn
          DataBinding.FieldName = 'email_ssl'
          Visible = False
        end
        object dbtabvwTerminaisemail_mensagem: TcxGridDBColumn
          DataBinding.FieldName = 'email_mensagem'
          Visible = False
        end
        object dbtabvwTerminaisdfe_forma_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'dfe_forma_emissao'
          Visible = False
        end
        object dbtabvwTerminaiscontingencia_motivo: TcxGridDBColumn
          DataBinding.FieldName = 'contingencia_motivo'
          Visible = False
        end
        object dbtabvwTerminaisemissor_cupom: TcxGridDBColumn
          DataBinding.FieldName = 'emissor_cupom'
          Visible = False
        end
        object dbtabvwTerminaisemissor_cupom_producao: TcxGridDBColumn
          DataBinding.FieldName = 'emissor_cupom_producao'
          Visible = False
        end
        object dbtabvwTerminaisemissor_nfe: TcxGridDBColumn
          DataBinding.FieldName = 'emissor_nfe'
          Visible = False
        end
        object dbtabvwTerminaisemissor_nfce: TcxGridDBColumn
          DataBinding.FieldName = 'emissor_nfce'
          Visible = False
        end
        object dbtabvwTerminaisoperacao_offline: TcxGridDBColumn
          DataBinding.FieldName = 'operacao_offline'
          Visible = False
        end
        object dbtabvwTerminaisversao_xml: TcxGridDBColumn
          DataBinding.FieldName = 'versao_xml'
          Visible = False
        end
        object dbtabvwTerminaisversao_qrcode: TcxGridDBColumn
          DataBinding.FieldName = 'versao_qrcode'
          Visible = False
        end
      end
      object grdTerminaisLevel1: TcxGridLevel
        GridView = dbtabvwTerminais
      end
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 217
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 1
    ExplicitWidth = 542
    Height = 44
    Width = 634
    object btnConfirmar: TcxButton
      Left = 200
      Top = 6
      Width = 114
      Height = 32
      Caption = 'C&onfirmar'
      ModalResult = 1
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 0
    end
    object btnCancelar: TcxButton
      Left = 320
      Top = 6
      Width = 114
      Height = 32
      Caption = '&Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 1
    end
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 320
    Top = 116
  end
end
