inherited frmTerminais: TfrmTerminais
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Terminais ::.'
  ClientHeight = 571
  ClientWidth = 794
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 73
    Width = 794
    object btnIncluir: TcxDBBotao
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 76
      Height = 61
      Align = alLeft
      Caption = 'I&ncluir'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      OnClick = btnIncluirClick
      DataSource = dsTerminais
      DisableReasons = [drReadonly, drEditing]
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 64
    end
    object btnAlterar: TcxDBBotao
      AlignWithMargins = True
      Left = 88
      Top = 6
      Width = 76
      Height = 61
      Align = alLeft
      Caption = '&Alterar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      OnClick = btnAlterarClick
      DataSource = dsTerminais
      DisableReasons = [drReadonly, drEditing, drEmpty]
      ExplicitLeft = 85
      ExplicitTop = 4
      ExplicitHeight = 64
    end
    object btnExcluir: TcxDBBotao
      AlignWithMargins = True
      Left = 170
      Top = 6
      Width = 76
      Height = 61
      Align = alLeft
      Caption = 'E&xcluir'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      OnClick = btnExcluirClick
      DataSource = dsTerminais
      DisableReasons = [drReadonly, drEditing, drEmpty]
      ExplicitLeft = 166
      ExplicitTop = 4
      ExplicitHeight = 64
    end
    object btnGravar: TcxDBBotao
      AlignWithMargins = True
      Left = 252
      Top = 6
      Width = 76
      Height = 61
      Align = alLeft
      Caption = '&Gravar'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = btnGravarClick
      DataSource = dsTerminais
      DisableReasons = [drNotEditing]
      ExplicitLeft = 247
      ExplicitTop = 4
      ExplicitHeight = 64
    end
    object btnCancelar: TcxDBBotao
      AlignWithMargins = True
      Left = 334
      Top = 6
      Width = 76
      Height = 61
      Align = alLeft
      Caption = '&Cancelar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      OnClick = btnCancelarClick
      DataSource = dsTerminais
      DisableReasons = [drNotEditing]
      ExplicitLeft = 328
      ExplicitTop = 4
      ExplicitHeight = 64
    end
    object btnFechar: TcxBotaoFechar
      AlignWithMargins = True
      Left = 498
      Top = 6
      Width = 76
      Height = 61
      Align = alLeft
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      ExplicitLeft = 492
      ExplicitTop = 4
      ExplicitHeight = 64
    end
    object btnPesquisar: TcxDBBotaoPesquisar
      AlignWithMargins = True
      Left = 416
      Top = 6
      Width = 76
      Height = 61
      Align = alLeft
      Caption = '&Pesquisar'
      Enabled = True
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      OnClick = btnPesquisarClick
      DataSource = dsTerminais
      ExplicitLeft = 394
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 73
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 498
    Width = 794
    object pagTerminais: TcxPageControl
      Left = 3
      Top = 3
      Width = 788
      Height = 492
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabDetalhes
      Properties.CustomButtons.Buttons = <>
      OnChange = pagTerminaisChange
      ClientRectBottom = 490
      ClientRectLeft = 2
      ClientRectRight = 786
      ClientRectTop = 29
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        object grdTerminais: TcxGrid
          Left = 0
          Top = 65
          Width = 784
          Height = 396
          Align = alClient
          TabOrder = 1
          object dbtvwTerminais: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsTerminais
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtvwTerminaisid_terminal: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id_terminal'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisid_local: TcxGridDBColumn
              DataBinding.FieldName = 'id_local'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object dbtvwTerminaisnumero: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'numero'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 80
              Options.Editing = False
              Options.HorzSizing = False
              Width = 80
            end
            object dbtvwTerminaisfiscal: TcxGridDBColumn
              Caption = 'Fiscal'
              DataBinding.FieldName = 'fiscal'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              MinWidth = 52
              Options.Editing = False
              Options.HorzSizing = False
              Width = 52
            end
            object dbtvwTerminaisid_token: TcxGridDBColumn
              DataBinding.FieldName = 'id_token'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisetiqueta_prefixo: TcxGridDBColumn
              DataBinding.FieldName = 'etiqueta_prefixo'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisetiqueta_codigo_inicio: TcxGridDBColumn
              DataBinding.FieldName = 'etiqueta_codigo_inicio'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisetiqueta_codigo_tamanho: TcxGridDBColumn
              DataBinding.FieldName = 'etiqueta_codigo_tamanho'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisid_balanca_acoplada: TcxGridDBColumn
              DataBinding.FieldName = 'id_balanca_acoplada'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisbalanca_acoplada_porta_serial: TcxGridDBColumn
              DataBinding.FieldName = 'balanca_acoplada_porta_serial'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisbalanca_acoplada_tempo_limite: TcxGridDBColumn
              DataBinding.FieldName = 'balanca_acoplada_tempo_limite'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisdanfe_logomarca_arquivo: TcxGridDBColumn
              DataBinding.FieldName = 'danfe_logomarca_arquivo'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisdanfe_logomarca_expandir: TcxGridDBColumn
              DataBinding.FieldName = 'danfe_logomarca_expandir'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaissalvar_resposta_envio: TcxGridDBColumn
              DataBinding.FieldName = 'salvar_resposta_envio'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaissalvar_resposta_envio_caminho: TcxGridDBColumn
              DataBinding.FieldName = 'salvar_resposta_envio_caminho'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisws_ambiente: TcxGridDBColumn
              DataBinding.FieldName = 'ws_ambiente'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisws_visualizar_mensagens: TcxGridDBColumn
              DataBinding.FieldName = 'ws_visualizar_mensagens'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaiscertificado_caminho: TcxGridDBColumn
              DataBinding.FieldName = 'certificado_caminho'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaiscertificado_senha: TcxGridDBColumn
              DataBinding.FieldName = 'certificado_senha'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaiscertificado_serie: TcxGridDBColumn
              DataBinding.FieldName = 'certificado_serie'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisproxy_host: TcxGridDBColumn
              DataBinding.FieldName = 'proxy_host'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisproxy_porta: TcxGridDBColumn
              DataBinding.FieldName = 'proxy_porta'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisproxy_usuario: TcxGridDBColumn
              DataBinding.FieldName = 'proxy_usuario'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisproxy_senha: TcxGridDBColumn
              DataBinding.FieldName = 'proxy_senha'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisemail_host: TcxGridDBColumn
              DataBinding.FieldName = 'email_host'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisemail_porta: TcxGridDBColumn
              DataBinding.FieldName = 'email_porta'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisemail_usuario: TcxGridDBColumn
              DataBinding.FieldName = 'email_usuario'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisemail_senha: TcxGridDBColumn
              DataBinding.FieldName = 'email_senha'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisemail_assunto: TcxGridDBColumn
              DataBinding.FieldName = 'email_assunto'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisemail_ssl: TcxGridDBColumn
              DataBinding.FieldName = 'email_ssl'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaisemail_mensagem: TcxGridDBColumn
              DataBinding.FieldName = 'email_mensagem'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTerminaissequencia_documento: TcxGridDBColumn
              DataBinding.FieldName = 'sequencia_documento'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
          end
          object grdTerminaisLevel1: TcxGridLevel
            GridView = dbtvwTerminais
          end
        end
        object gboxPesquisa: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          TabOrder = 0
          Height = 65
          Width = 784
          object lblPesquisar: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Estabelecimento:'
            FocusControl = lkpcmbEstabelecimento
            Transparent = True
          end
          object lkpcmbEstabelecimento: TcxLookupComboBox
            Left = 8
            Top = 32
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id_estabelecimento'
            Properties.ListColumns = <
              item
                FieldName = 'razao_social'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsEstabelecimentos_LookUp
            TabOrder = 1
            Width = 673
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'tabDetalhes'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lblIdTerminal: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Id:'
          Transparent = True
        end
        object lblDescricao: TcxLabel
          Left = 504
          Top = 52
          Caption = 'Descri'#231#227'o:'
          FocusControl = dbtxtedtDescricao
          Transparent = True
        end
        object dbtxtedtDescricao: TcxDBTextEdit
          Left = 504
          Top = 74
          DataBinding.DataField = 'descricao'
          DataBinding.DataSource = dsTerminais
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 184
        end
        object dblblIdTerminal: TcxDBLabel
          Left = 8
          Top = 28
          DataBinding.DataField = 'id_terminal'
          DataBinding.DataSource = dsTerminais
          ParentColor = False
          Transparent = True
          Height = 21
          Width = 66
        end
        object lblEstabelecimento: TcxLabel
          Left = 8
          Top = 52
          Caption = 'Estabelecimento:'
          FocusControl = dblkpcmbEstabelecimento
          Transparent = True
        end
        object dblkpcmbEstabelecimento: TcxDBLookupComboBox
          Left = 8
          Top = 74
          DataBinding.DataField = 'id_estabelecimento'
          DataBinding.DataSource = dsTerminais
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'id_estabelecimento'
          Properties.ListColumns = <
            item
              FieldName = 'razao_social'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEstabelecimentos_LookUp
          TabOrder = 5
          Width = 490
        end
        object lblNumero: TcxLabel
          Left = 694
          Top = 52
          Caption = 'N'#250'mero:'
          FocusControl = dbspnedtNumero
          Transparent = True
        end
        object dbspnedtNumero: TcxDBSpinEdit
          Left = 694
          Top = 74
          DataBinding.DataField = 'numero'
          DataBinding.DataSource = dsTerminais
          TabOrder = 7
          Width = 80
        end
        object pagConfiguracoes: TcxPageControl
          Left = 8
          Top = 164
          Width = 768
          Height = 285
          TabOrder = 8
          Properties.ActivePage = tabConfiguracoesDispositivos
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 283
          ClientRectLeft = 2
          ClientRectRight = 766
          ClientRectTop = 29
          object tabConfiguracoesGeral: TcxTabSheet
            Caption = 'Geral'
            ImageIndex = 3
            object lblContaCaixa: TcxLabel
              Left = 8
              Top = 84
              Caption = 'Conta-caixa:'
              FocusControl = dblkpcmbContaCaixa
              Transparent = True
            end
            object dblkpcmbContaCaixa: TcxDBLookupComboBox
              Left = 8
              Top = 108
              DataBinding.DataField = 'id_conta'
              DataBinding.DataSource = dsTerminais
              Properties.GridMode = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'id_conta'
              Properties.ListColumns = <
                item
                  FieldName = 'descricao'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsContas_LookUp
              TabOrder = 1
              Width = 184
            end
            object lblClienteConsumidor: TcxLabel
              Left = 8
              Top = 136
              Caption = 'Cliente Consumidor:'
              FocusControl = dblkpcmbClienteConsumidor
              Transparent = True
            end
            object dblkpcmbClienteConsumidor: TcxDBLookupComboBox
              Left = 8
              Top = 160
              DataBinding.DataField = 'id_cliente_consumidor'
              DataBinding.DataSource = dsTerminais
              Properties.GridMode = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'id_parceiro'
              Properties.ListColumns = <
                item
                  FieldName = 'razao'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsClientes_LookUp
              TabOrder = 3
              Width = 414
            end
            object lblCondicaoPagamento: TcxLabel
              Left = 198
              Top = 86
              Caption = 'Condi'#231#227'o de Pagamento:'
              FocusControl = dblkpcmbCondicaoPagamento
              Transparent = True
            end
            object dblkpcmbCondicaoPagamento: TcxDBLookupComboBox
              Left = 198
              Top = 108
              DataBinding.DataField = 'id_condicao_pagamento'
              DataBinding.DataSource = dsTerminais
              Properties.GridMode = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'id_condicao'
              Properties.ListColumns = <
                item
                  FieldName = 'descricao'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsCondicoesPagamento_LookUp
              TabOrder = 5
              Width = 224
            end
            object dbchkIdentificarRepresentante: TcxDBCheckBox
              Left = 8
              Top = 194
              Caption = 'Identificar o Representante'
              DataBinding.DataField = 'identificar_representante'
              DataBinding.DataSource = dsTerminais
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 6
              Transparent = True
            end
            object dbchkFiscal: TcxDBCheckBox
              Left = 8
              Top = 8
              Caption = 'Fiscal'
              DataBinding.DataField = 'fiscal'
              DataBinding.DataSource = dsTerminais
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 7
              Transparent = True
            end
            object lblTipoDocumentoFiscal: TcxLabel
              Left = 29
              Top = 30
              Caption = 'Tipo de Documento Fiscal:'
              FocusControl = dbcmbTipoDocumentoFiscal
              Transparent = True
            end
            object dbcmbTipoDocumentoFiscal: TcxDBComboBox
              Left = 29
              Top = 52
              DataBinding.DataField = 'tipo_documento_fiscal'
              DataBinding.DataSource = dsTerminais
              Properties.Items.Strings = (
                'Nenhum'
                'NF-e'
                'NFC-e'
                'Definido pelo Operador')
              TabOrder = 9
              Width = 184
            end
          end
          object tabConfiguracoesDispositivos: TcxTabSheet
            Caption = 'Dispositivos'
            ImageIndex = 2
            object lblEmissorCupom: TcxLabel
              Left = 384
              Top = 8
              Caption = 'Emissor de Cupom:'
              FocusControl = dbtxtedtEmissorCupom
              Transparent = True
            end
            object lblImpressoraPadrao: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Impressora Padr'#227'o:'
              FocusControl = dbtxtedtImpressoraPadrao
              Transparent = True
            end
            object gboxBalancaAcoplada: TcxGroupBox
              Left = 8
              Top = 58
              Caption = 'Balan'#231'a Acoplada:'
              TabOrder = 4
              Height = 81
              Width = 429
              object lblBalancaAcoplada: TcxLabel
                Left = 8
                Top = 16
                Caption = 'Dispositivo:'
                FocusControl = dblkpcmbBalancaAcoplada
                Transparent = True
              end
              object dblkpcmbBalancaAcoplada: TcxDBLookupComboBox
                Left = 8
                Top = 36
                DataBinding.DataField = 'id_balanca_acoplada'
                DataBinding.DataSource = dsTerminais
                Properties.Alignment.Horz = taLeftJustify
                Properties.GridMode = True
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'id_dispositivo'
                Properties.ListColumns = <
                  item
                    FieldName = 'descricao'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsBalancas_LookUp
                TabOrder = 1
                Width = 224
              end
              object lblBalancaAcopladaPortaSerial: TcxLabel
                Left = 238
                Top = 16
                Caption = 'Porta Serial:'
                FocusControl = dbcmbBalancaAcopladaPortaSerial
                Transparent = True
              end
              object dbcmbBalancaAcopladaPortaSerial: TcxDBComboBox
                Left = 238
                Top = 36
                DataBinding.DataField = 'balanca_acoplada_porta_serial'
                DataBinding.DataSource = dsTerminais
                Properties.DropDownListStyle = lsEditFixedList
                Properties.Items.Strings = (
                  'COM1'
                  'COM2'
                  'COM3'
                  'COM4'
                  'COM5')
                TabOrder = 3
                Width = 81
              end
              object lblBalancaAcopladaTempoLimite: TcxLabel
                Left = 325
                Top = 16
                Caption = 'Tempo Limite:'
                FocusControl = dbcurredtBalancaAcopladaTempoLimite
                Transparent = True
              end
              object dbcurredtBalancaAcopladaTempoLimite: TcxDBCurrencyEdit
                Left = 325
                Top = 36
                DataBinding.DataField = 'balanca_acoplada_tempo_limite'
                DataBinding.DataSource = dsTerminais
                Properties.Alignment.Horz = taRightJustify
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = '#,##0'
                Properties.EditFormat = '#,##0'
                TabOrder = 5
                Width = 92
              end
            end
            object dbtxtedtEmissorCupom: TcxDBButtonEdit
              Left = 384
              Top = 30
              DataBinding.DataField = 'emissor_cupom'
              DataBinding.DataSource = dsTerminais
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbtxtedtEmissorCupomPropertiesButtonClick
              TabOrder = 1
              Width = 370
            end
            object dbtxtedtImpressoraPadrao: TcxDBButtonEdit
              Left = 8
              Top = 30
              DataBinding.DataField = 'impressora_padrao'
              DataBinding.DataSource = dsTerminais
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbtxtedtImpressoraPadraoPropertiesButtonClick
              TabOrder = 3
              Width = 370
            end
            object dbchkAutenticarDocumento: TcxDBCheckBox
              Left = 8
              Top = 148
              Caption = 'Autenticar documento'
              DataBinding.DataField = 'autenticar_documento'
              DataBinding.DataSource = dsTerminais
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 5
              Transparent = True
            end
            object lblDispositivoAutenticador: TcxLabel
              Left = 28
              Top = 172
              Caption = 'Dispositivo Autenticador:'
              FocusControl = dbbtnedtDispositivoAutenticador
              Transparent = True
            end
            object dbbtnedtDispositivoAutenticador: TcxDBButtonEdit
              Left = 28
              Top = 196
              DataBinding.DataField = 'autenticador'
              DataBinding.DataSource = dsTerminais
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbtxtedtImpressoraPadraoPropertiesButtonClick
              TabOrder = 7
              Width = 370
            end
            object lblDispositivoAutenticadorModelo: TcxLabel
              Left = 404
              Top = 172
              Caption = 'Modelo:'
              FocusControl = dbcmbDispositivoAutenticadorModelo
              Transparent = True
            end
            object dbcmbDispositivoAutenticadorModelo: TcxDBComboBox
              Left = 404
              Top = 196
              DataBinding.DataField = 'autenticador_id_modelo'
              DataBinding.DataSource = dsTerminais
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                'Bematech MP-2032'
                'Diebold Procomp IM453HU')
              TabOrder = 9
              Width = 184
            end
          end
          object tabConfiguracoesDFe: TcxTabSheet
            Caption = 'Configura'#231#245'es DF-e'
            ImageIndex = 0
            object gboxDANFeLogomarcaArquivo: TcxGroupBox
              Left = 8
              Top = 8
              Caption = 'DANF-e Logomarca'
              TabOrder = 0
              Transparent = True
              Height = 208
              Width = 165
              object imgDANFeLogomarcaArquivo: TcxImage
                Left = 3
                Top = 18
                Align = alTop
                TabOrder = 0
                Height = 151
                Width = 159
              end
              object dbchkDANFeLogomarcaExpandir: TcxDBCheckBox
                Left = 8
                Top = 174
                Caption = 'Expandir'
                DataBinding.DataField = 'danfe_logomarca_expandir'
                DataBinding.DataSource = dsTerminais
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 1
                Transparent = True
              end
            end
            object gboxNFe: TcxGroupBox
              Left = 184
              Top = 8
              Caption = 'NF-e:'
              TabOrder = 1
              Transparent = True
              Height = 82
              Width = 569
              object lblSequenciaNFe: TcxLabel
                Left = 8
                Top = 16
                Caption = 'Sequ'#234'ncia:'
                FocusControl = dbspnedtSequenciaNFe
                Transparent = True
              end
              object dbspnedtSequenciaNFe: TcxDBSpinEdit
                Left = 8
                Top = 40
                DataBinding.DataField = 'sequencia_nfe'
                DataBinding.DataSource = dsTerminais
                TabOrder = 1
                Width = 121
              end
              object lblSerieNFe: TcxLabel
                Left = 135
                Top = 16
                Caption = 'S'#233'rie:'
                FocusControl = dbspnedtSerieNFe
                Transparent = True
              end
              object dbspnedtSerieNFe: TcxDBSpinEdit
                Left = 135
                Top = 40
                DataBinding.DataField = 'serie_nfe'
                DataBinding.DataSource = dsTerminais
                TabOrder = 3
                Width = 62
              end
              object lblEmissorNFe: TcxLabel
                Left = 203
                Top = 16
                Caption = 'Emissor DANF-e:'
                FocusControl = dbtxtedtEmissorNFe
                Transparent = True
              end
              object dbtxtedtEmissorNFe: TcxDBButtonEdit
                Left = 203
                Top = 40
                DataBinding.DataField = 'emissor_nfe'
                DataBinding.DataSource = dsTerminais
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = dbtxtedtEmissorNFePropertiesButtonClick
                TabOrder = 5
                Width = 358
              end
            end
            object gboxNFCe: TcxGroupBox
              Left = 184
              Top = 96
              Caption = 'NFC-e:'
              TabOrder = 2
              Transparent = True
              Height = 82
              Width = 569
              object lblSequenciaNFCe: TcxLabel
                Left = 8
                Top = 16
                Caption = 'Sequ'#234'ncia:'
                FocusControl = dbspnedtSequenciaNFCe
                Transparent = True
              end
              object dbspnedtSequenciaNFCe: TcxDBSpinEdit
                Left = 8
                Top = 40
                DataBinding.DataField = 'sequencia_nfce'
                DataBinding.DataSource = dsTerminais
                TabOrder = 1
                Width = 121
              end
              object lblSerieNFCe: TcxLabel
                Left = 135
                Top = 16
                Caption = 'S'#233'rie:'
                FocusControl = dbspnedtSerieNFCe
                Transparent = True
              end
              object dbspnedtSerieNFCe: TcxDBSpinEdit
                Left = 135
                Top = 40
                DataBinding.DataField = 'serie_nfce'
                DataBinding.DataSource = dsTerminais
                TabOrder = 3
                Width = 62
              end
              object lblEmissorNFCe: TcxLabel
                Left = 203
                Top = 14
                Caption = 'Emissor DANF-e:'
                FocusControl = dbtxtedtEmissorNFCe
                Transparent = True
              end
              object dbtxtedtEmissorNFCe: TcxDBButtonEdit
                Left = 203
                Top = 40
                DataBinding.DataField = 'emissor_nfce'
                DataBinding.DataSource = dsTerminais
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = dbtxtedtEmissorNFCePropertiesButtonClick
                TabOrder = 5
                Width = 358
              end
            end
            object dbradgrpVersaoXML: TcxDBRadioGroup
              Left = 184
              Top = 184
              Caption = 'Vers'#227'o do Arquivo XML:'
              DataBinding.DataField = 'versao_xml'
              DataBinding.DataSource = dsTerminais
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = '3.10'
                  Value = '1'
                end
                item
                  Caption = '4.0'
                  Value = '2'
                end>
              TabOrder = 3
              Transparent = True
              Height = 53
              Width = 185
            end
            object dbradgrpVersaoQRCode: TcxDBRadioGroup
              Left = 380
              Top = 184
              Caption = 'Vers'#227'o do QR-Code:'
              DataBinding.DataField = 'versao_xml'
              DataBinding.DataSource = dsTerminais
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = '1.0'
                  Value = '1'
                end
                item
                  Caption = '2.0'
                  Value = '2'
                end>
              TabOrder = 4
              Transparent = True
              Height = 53
              Width = 185
            end
          end
          object tabConfiguracoesWSCertificado: TcxTabSheet
            Caption = 'Webservice / Certificado'
            ImageIndex = 1
            object gboxCerfiticadoDigital: TcxGroupBox
              Left = 268
              Top = 8
              Caption = 'Certificado digital:'
              TabOrder = 4
              Height = 183
              Width = 245
              object lblCertificadoCaminho: TcxLabel
                Left = 8
                Top = 16
                Caption = 'Caminho:'
                FocusControl = dbbtnedtCertificadoCaminho
                Transparent = True
              end
              object dbbtnedtCertificadoCaminho: TcxDBButtonEdit
                Left = 8
                Top = 40
                DataBinding.DataField = 'certificado_caminho'
                DataBinding.DataSource = dsTerminais
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = dbbtnedtCertificadoCaminhoPropertiesButtonClick
                TabOrder = 0
                Width = 229
              end
              object dbtxtedtCertificadoSenha: TcxDBTextEdit
                Left = 8
                Top = 140
                DataBinding.DataField = 'certificado_senha'
                DataBinding.DataSource = dsTerminais
                Properties.CharCase = ecUpperCase
                Properties.EchoMode = eemPassword
                Properties.PasswordChar = '*'
                TabOrder = 2
                Width = 229
              end
              object lblCertificadoSenha: TcxLabel
                Left = 8
                Top = 116
                Caption = 'Senha:'
                FocusControl = dbtxtedtCertificadoSenha
                Transparent = True
              end
              object lblCertificadoSerie: TcxLabel
                Left = 8
                Top = 68
                Caption = 'N'#250'mero de s'#233'rie:'
                FocusControl = dbbtnedtCertificadoSerie
                Transparent = True
              end
              object dbbtnedtCertificadoSerie: TcxDBButtonEdit
                Left = 8
                Top = 88
                DataBinding.DataField = 'certificado_serie'
                DataBinding.DataSource = dsTerminais
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = dbbtnedtCertificadoSeriePropertiesButtonClick
                TabOrder = 5
                Width = 229
              end
            end
            object lblTokenCSC: TcxLabel
              Left = 268
              Top = 200
              Caption = 'Token CSC:'
              FocusControl = dblkpcmbTokenCSC
              Transparent = True
            end
            object dblkpcmbTokenCSC: TcxDBLookupComboBox
              Left = 268
              Top = 224
              DataBinding.DataField = 'id_token'
              DataBinding.DataSource = dsTerminais
              Properties.Alignment.Horz = taLeftJustify
              Properties.GridMode = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'id_token'
              Properties.ListColumns = <
                item
                  Caption = 'Id'
                  FieldName = 'csc_id'
                end
                item
                  Caption = 'N'#250'mero'
                  FieldName = 'csc_numero'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsTokens_LookUp
              TabOrder = 6
              Width = 245
            end
            object dbchkSalvarRespostaEnvio: TcxDBCheckBox
              Left = 8
              Top = 8
              Caption = 'Salvar arquivos de envio e resposta'
              DataBinding.DataField = 'salvar_resposta_envio'
              DataBinding.DataSource = dsTerminais
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 0
              Transparent = True
            end
            object dbbtnedtSalvarRespostaEnvioCaminho: TcxDBButtonEdit
              Left = 28
              Top = 33
              DataBinding.DataField = 'salvar_resposta_envio_caminho'
              DataBinding.DataSource = dsTerminais
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbbtnedtSalvarRespostaEnvioCaminhoPropertiesButtonClick
              TabOrder = 1
              Width = 229
            end
            object dbradgrpWebserviceAmbiente: TcxDBRadioGroup
              Left = 8
              Top = 64
              Caption = 'Ambiente de destino'
              DataBinding.DataField = 'ws_ambiente'
              DataBinding.DataSource = dsTerminais
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Homologa'#231#227'o'
                  Value = '1'
                end
                item
                  Caption = 'Produ'#231#227'o'
                  Value = '0'
                end>
              TabOrder = 2
              Height = 61
              Width = 249
            end
            object dbchkWebserviceVisualizarMensagens: TcxDBCheckBox
              Left = 8
              Top = 132
              Caption = 'Visualizar mensagens'
              DataBinding.DataField = 'ws_visualizar_mensagens'
              DataBinding.DataSource = dsTerminais
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 3
              Transparent = True
            end
          end
        end
        object lblLocal: TcxLabel
          Left = 8
          Top = 104
          Caption = 'Local:'
          FocusControl = dblkpcmbLocal
          Transparent = True
        end
        object dblkpcmbLocal: TcxDBLookupComboBox
          Left = 8
          Top = 126
          DataBinding.DataField = 'id_local'
          DataBinding.DataSource = dsTerminais
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'id_local'
          Properties.ListColumns = <
            item
              FieldName = 'descricao'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsLocais_LookUp
          TabOrder = 10
          Width = 490
        end
      end
    end
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryTerminais
    Left = 484
    Top = 96
  end
  object dsEstabelecimentos_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryEstabelecimentos_LookUp
    Left = 682
    Top = 52
  end
  object dsTokens_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryTokens_LookUp
    Left = 682
    Top = 140
  end
  object dsBalancas_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryBalancas_LookUp
    Left = 682
    Top = 184
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Root.BrowseFolder = bfCustomPath
    Left = 682
    Top = 9
  end
  object dsCondicoesPagamento_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryCondicoes_LookUp
    Left = 682
    Top = 227
  end
  object dsClientes_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryClientes_LookUp
    Left = 682
    Top = 272
  end
  object dsContas_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryContas_LookUp
    Left = 682
    Top = 317
  end
  object dsLocais_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryLocais_LookUp
    Left = 682
    Top = 96
  end
  object dlgImpressoras: TPrintDialog
    Left = 683
    Top = 358
  end
end
