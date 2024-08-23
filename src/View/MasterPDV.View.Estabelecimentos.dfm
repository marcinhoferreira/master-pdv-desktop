object frmEstabelecimentos: TfrmEstabelecimentos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Estabelecimentos ::.'
  ClientHeight = 571
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 73
    Width = 794
    object btnIncluir: TcxDBBotao
      Left = 4
      Top = 4
      Width = 76
      Height = 64
      Caption = 'I&ncluir'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      OnClick = btnIncluirClick
      DataSource = dsEstabelecimentos
      DisableReasons = [drReadonly, drEditing]
    end
    object btnAlterar: TcxDBBotao
      Left = 85
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Alterar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      OnClick = btnAlterarClick
      DataSource = dsEstabelecimentos
      DisableReasons = [drReadonly, drEditing, drEmpty]
    end
    object btnExcluir: TcxDBBotao
      Left = 166
      Top = 4
      Width = 76
      Height = 64
      Caption = 'E&xcluir'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      OnClick = btnExcluirClick
      DataSource = dsEstabelecimentos
      DisableReasons = [drReadonly, drEditing, drEmpty]
    end
    object btnGravar: TcxDBBotao
      Left = 247
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Gravar'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = btnGravarClick
      DataSource = dsEstabelecimentos
      DisableReasons = [drNotEditing]
    end
    object btnCancelar: TcxDBBotao
      Left = 328
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Cancelar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      OnClick = btnCancelarClick
      DataSource = dsEstabelecimentos
      DisableReasons = [drNotEditing]
    end
    object btnFechar: TcxBotaoFechar
      Left = 711
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
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
    object pagEstabelecimentos: TcxPageControl
      Left = 3
      Top = 3
      Width = 788
      Height = 492
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabVisualiza
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 490
      ClientRectLeft = 2
      ClientRectRight = 786
      ClientRectTop = 26
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        object gboxPesquisa: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 0
          Height = 53
          Width = 784
          object lblPesquisar: TcxLabel
            Left = 4
            Top = 4
            Caption = 'Localizar:'
            FocusControl = cmbCampo
            Transparent = True
          end
          object txtedtChave: TcxTextEdit
            Left = 258
            Top = 24
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 425
          end
          object cmbCampo: TcxComboBox
            Left = 4
            Top = 24
            Properties.Items.Strings = (
              'CNPJ'
              'Raz'#227'o Social'
              'Nome Fantasia')
            TabOrder = 2
            Text = 'Raz'#227'o Social'
            Width = 121
          end
          object cmbCriterio: TcxComboBox
            Left = 131
            Top = 24
            Properties.Items.Strings = (
              'Exatamente igual'
              'Come'#231'ando com'
              'Qualquer parte')
            TabOrder = 3
            Text = 'Come'#231'ando com'
            Width = 121
          end
          object btnPesquisar: TcxDBBotaoPesquisar
            Left = 689
            Top = 16
            Width = 85
            Height = 32
            Caption = 'Pesquisar'
            Enabled = True
            OptionsImage.ImageIndex = 7
            OptionsImage.Images = dmLeiaute.cxImageList24
            TabOrder = 4
            OnClick = btnPesquisarClick
            DataSource = dsEstabelecimentos
          end
        end
        object grdEstabelecimentos: TcxGrid
          Left = 0
          Top = 53
          Width = 784
          Height = 411
          Align = alClient
          TabOrder = 1
          object dbtvwEstabelecimentos: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsEstabelecimentos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtvwEstabelecimentosid_local: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id_local'
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentostipo_pessoa: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_pessoa'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 10
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentoscnpj: TcxGridDBColumn
              Caption = 'CNPJ'
              DataBinding.FieldName = 'cnpj'
              HeaderAlignmentHorz = taCenter
              MinWidth = 124
              Options.Editing = False
              Options.HorzSizing = False
              Width = 124
            end
            object dbtvwEstabelecimentosinsc_estadual: TcxGridDBColumn
              Caption = 'Inscri'#231#227'o Estadual'
              DataBinding.FieldName = 'insc_estadual'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 114
              Options.Editing = False
              Options.HorzSizing = False
              Width = 114
            end
            object dbtvwEstabelecimentosinsc_est_subst: TcxGridDBColumn
              DataBinding.FieldName = 'insc_est_subst'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 124
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosinsc_municipal: TcxGridDBColumn
              DataBinding.FieldName = 'insc_municipal'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 124
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosinsc_suframa: TcxGridDBColumn
              DataBinding.FieldName = 'insc_suframa'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 124
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosrazao: TcxGridDBColumn
              Caption = 'Raz'#227'o Social'
              DataBinding.FieldName = 'razao'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 508
            end
            object dbtvwEstabelecimentosfantasia: TcxGridDBColumn
              Caption = 'Nome Fantasia'
              DataBinding.FieldName = 'fantasia'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 364
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentoslogradouro: TcxGridDBColumn
              DataBinding.FieldName = 'logradouro'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 364
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosnumero: TcxGridDBColumn
              DataBinding.FieldName = 'numero'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 94
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentoscomplemento: TcxGridDBColumn
              DataBinding.FieldName = 'complemento'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 124
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosbairro: TcxGridDBColumn
              DataBinding.FieldName = 'bairro'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 184
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosid_cidade: TcxGridDBColumn
              DataBinding.FieldName = 'id_cidade'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 46
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosdescricao_cidade: TcxGridDBColumn
              DataBinding.FieldName = 'descricao_cidade'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 184
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosid_estado: TcxGridDBColumn
              DataBinding.FieldName = 'id_estado'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 16
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentossigla_estado: TcxGridDBColumn
              DataBinding.FieldName = 'sigla_estado'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 16
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosid_pais: TcxGridDBColumn
              DataBinding.FieldName = 'id_pais'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 28
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosdescricao_pais: TcxGridDBColumn
              DataBinding.FieldName = 'descricao_pais'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 184
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentoscep: TcxGridDBColumn
              DataBinding.FieldName = 'cep'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 52
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentostelefone: TcxGridDBColumn
              Caption = 'Telefone'
              DataBinding.FieldName = 'telefone'
              HeaderAlignmentHorz = taCenter
              MinWidth = 114
              Options.Editing = False
              Options.HorzSizing = False
              Width = 114
            end
            object dbtvwEstabelecimentosfax: TcxGridDBColumn
              DataBinding.FieldName = 'fax'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosemail: TcxGridDBColumn
              DataBinding.FieldName = 'email'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 1204
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentoscontato: TcxGridDBColumn
              DataBinding.FieldName = 'contato'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 184
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentoscnae_fiscal: TcxGridDBColumn
              DataBinding.FieldName = 'cnae_fiscal'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosnatureza_juridica: TcxGridDBColumn
              DataBinding.FieldName = 'natureza_juridica'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 28
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentosregime_tributario: TcxGridDBColumn
              DataBinding.FieldName = 'regime_tributario'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 10
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwEstabelecimentoslogomarca: TcxGridDBColumn
              DataBinding.FieldName = 'logomarca'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.HorzSizing = False
            end
          end
          object grdEstabelecimentosLevel1: TcxGridLevel
            GridView = dbtvwEstabelecimentos
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'tabDetalhes'
        ImageIndex = 1
        object lblIdLocal: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Id:'
          Transparent = True
        end
        object dblblIdLocal: TcxDBLabel
          Left = 8
          Top = 27
          DataBinding.DataField = 'id_local'
          DataBinding.DataSource = dsEstabelecimentos
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 21
          Width = 66
          AnchorX = 74
        end
        object lblCNPJ: TcxLabel
          Left = 8
          Top = 48
          Caption = 'CNPJ:'
          FocusControl = dbtxtedtCNPJ
          Transparent = True
        end
        object lblInscricaoEstadual: TcxLabel
          Left = 135
          Top = 48
          Caption = 'Inscri'#231#227'o Estadual:'
          FocusControl = dbtxtedtInscricaoEstadual
          Transparent = True
        end
        object dbtxtedtInscricaoEstadual: TcxDBTextEdit
          Left = 135
          Top = 68
          DataBinding.DataField = 'insc_estadual'
          DataBinding.DataSource = dsEstabelecimentos
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 121
        end
        object dbtxtedtInscricaoMunicipal: TcxDBTextEdit
          Left = 262
          Top = 68
          DataBinding.DataField = 'insc_municipal'
          DataBinding.DataSource = dsEstabelecimentos
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 121
        end
        object lblInscricaoMunicipal: TcxLabel
          Left = 262
          Top = 48
          Caption = 'Inscri'#231#227'o Municipal:'
          FocusControl = dbtxtedtInscricaoMunicipal
          Transparent = True
        end
        object dbtxtedtInscricaoSUFRAMA: TcxDBTextEdit
          Left = 389
          Top = 68
          DataBinding.DataField = 'insc_suframa'
          DataBinding.DataSource = dsEstabelecimentos
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 121
        end
        object lblInscricaoSUFRAMA: TcxLabel
          Left = 389
          Top = 48
          Caption = 'Inscri'#231#227'o SUFRAMA:'
          FocusControl = dbtxtedtInscricaoSUFRAMA
          Transparent = True
        end
        object dbtxtedtRazaoSocial: TcxDBTextEdit
          Left = 8
          Top = 116
          DataBinding.DataField = 'razao'
          DataBinding.DataSource = dsEstabelecimentos
          Properties.CharCase = ecUpperCase
          TabOrder = 10
          Width = 502
        end
        object lblRazaoSocial: TcxLabel
          Left = 8
          Top = 96
          Caption = 'Raz'#227'o Social:'
          FocusControl = dbtxtedtRazaoSocial
          Transparent = True
        end
        object dbtxtedtNomeFantasia: TcxDBTextEdit
          Left = 8
          Top = 164
          DataBinding.DataField = 'fantasia'
          DataBinding.DataSource = dsEstabelecimentos
          Properties.CharCase = ecUpperCase
          TabOrder = 12
          Width = 502
        end
        object lblNomeFantasia: TcxLabel
          Left = 8
          Top = 144
          Caption = 'Nome Fantasia:'
          FocusControl = dbtxtedtNomeFantasia
          Transparent = True
        end
        object pagEstabelecimento: TcxPageControl
          Left = 8
          Top = 196
          Width = 763
          Height = 257
          TabOrder = 14
          Properties.ActivePage = tabEndereco
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 255
          ClientRectLeft = 2
          ClientRectRight = 761
          ClientRectTop = 26
          object tabEndereco: TcxTabSheet
            Caption = 'Endere'#231'o e Contato'
            ImageIndex = 0
            object gboxEndereco: TcxGroupBox
              Left = 8
              Top = 8
              Caption = 'Endere'#231'o:'
              TabOrder = 0
              Height = 166
              Width = 733
              object lblEnderecoPais: TcxLabel
                Left = 8
                Top = 16
                Caption = 'Pa'#237's:'
                FocusControl = dblkpcmbEnderecoPais
              end
              object dblkpcmbEnderecoPais: TcxDBLookupComboBox
                Left = 8
                Top = 36
                DataBinding.DataField = 'id_pais'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.GridMode = True
                Properties.KeyFieldNames = 'id_pais'
                Properties.ListColumns = <
                  item
                    FieldName = 'descricao'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsPaises_LookUp
                TabOrder = 1
                Width = 224
              end
              object lblEnderecoEstado: TcxLabel
                Left = 238
                Top = 16
                Caption = 'Estado:'
                FocusControl = dblkpcmbEnderecoEstado
              end
              object dblkpcmbEnderecoEstado: TcxDBLookupComboBox
                Left = 238
                Top = 36
                DataBinding.DataField = 'id_estado'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.GridMode = True
                Properties.KeyFieldNames = 'id_estado'
                Properties.ListColumns = <
                  item
                    FieldName = 'descricao'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsEstados_LookUp
                TabOrder = 3
                Width = 224
              end
              object lblEnderecoCidade: TcxLabel
                Left = 468
                Top = 16
                Caption = 'Cidade:'
                FocusControl = dblkpcmbEnderecoCidade
              end
              object dblkpcmbEnderecoCidade: TcxDBLookupComboBox
                Left = 468
                Top = 36
                DataBinding.DataField = 'id_cidade'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.GridMode = True
                Properties.KeyFieldNames = 'id_cidade'
                Properties.ListColumns = <
                  item
                    FieldName = 'descricao'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsCidades_LookUp
                TabOrder = 5
                Width = 224
              end
              object lblEnderecoCEP: TcxLabel
                Left = 8
                Top = 62
                Caption = 'CEP:'
                FocusControl = dbtxtedtEnderecoCEP
                Transparent = True
              end
              object dbtxtedtEnderecoCEP: TcxDBTextEdit
                Left = 8
                Top = 82
                DataBinding.DataField = 'cep'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.CharCase = ecUpperCase
                TabOrder = 7
                Width = 69
              end
              object lblEnderecoLogradouro: TcxLabel
                Left = 83
                Top = 62
                Caption = 'Logradouro:'
                FocusControl = dbtxtedtLogradouro
                Transparent = True
              end
              object dbtxtedtLogradouro: TcxDBTextEdit
                Left = 83
                Top = 82
                DataBinding.DataField = 'logradouro'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.CharCase = ecUpperCase
                TabOrder = 9
                Width = 523
              end
              object lblEnderecoNumero: TcxLabel
                Left = 612
                Top = 62
                Caption = 'N'#250'mero:'
                FocusControl = dbtxtedtEnderecoNumero
                Transparent = True
              end
              object dbtxtedtEnderecoNumero: TcxDBTextEdit
                Left = 612
                Top = 82
                DataBinding.DataField = 'numero'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.CharCase = ecUpperCase
                TabOrder = 11
                Width = 80
              end
              object dbtxtedtEnderecoComplemento: TcxDBTextEdit
                Left = 8
                Top = 126
                DataBinding.DataField = 'numero'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.CharCase = ecUpperCase
                TabOrder = 12
                Width = 138
              end
              object lblEnderecoComplemento: TcxLabel
                Left = 8
                Top = 106
                Caption = 'Complemento:'
                FocusControl = dbtxtedtEnderecoComplemento
                Transparent = True
              end
              object lblEnderecoBairro: TcxLabel
                Left = 152
                Top = 106
                Caption = 'Bairro:'
                FocusControl = dbtxtedtEnderecoBairro
                Transparent = True
              end
              object dbtxtedtEnderecoBairro: TcxDBTextEdit
                Left = 152
                Top = 126
                DataBinding.DataField = 'bairro'
                DataBinding.DataSource = dsEstabelecimentos
                Properties.CharCase = ecUpperCase
                TabOrder = 15
                Width = 540
              end
            end
          end
          object tabFiscal: TcxTabSheet
            Caption = 'Fiscal'
            ImageIndex = 1
            object lblAtividadeEconomica: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Atividade Econ'#244'mica:'
              FocusControl = dbbtnedtAtividadeEconomica
              Transparent = True
            end
            object dbbtnedtAtividadeEconomica: TcxDBButtonEdit
              Left = 8
              Top = 28
              DataBinding.DataField = 'cnae_fiscal'
              DataBinding.DataSource = dsEstabelecimentos
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              TabOrder = 1
              Width = 89
            end
            object lblNaturezaJuridica: TcxLabel
              Left = 8
              Top = 52
              Caption = 'Natureza Jur'#237'dica:'
              FocusControl = dbbtnedtNaturezaJuridica
              Transparent = True
            end
            object dbbtnedtNaturezaJuridica: TcxDBButtonEdit
              Left = 8
              Top = 72
              DataBinding.DataField = 'natureza_juridica'
              DataBinding.DataSource = dsEstabelecimentos
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              TabOrder = 3
              Width = 89
            end
            object lblRegimeTributario: TcxLabel
              Left = 8
              Top = 96
              Caption = 'Regime Tribut'#225'rio:'
              FocusControl = dbcmbRegimeTributario
              Transparent = True
            end
            object dbcmbRegimeTributario: TcxDBComboBox
              Left = 8
              Top = 116
              DataBinding.DataField = 'regime_tributario'
              DataBinding.DataSource = dsEstabelecimentos
              Properties.ImmediatePost = True
              Properties.Items.Strings = (
                '1 - Simples Nacional'
                '2 - Simples Nacional - excesso de sublimite da receita bruta'
                '3 - Regime Normal')
              TabOrder = 4
              Width = 224
            end
          end
        end
        object dbtxtedtCNPJ: TcxDBButtonEdit
          Left = 8
          Top = 68
          DataBinding.DataField = 'cnpj'
          DataBinding.DataSource = dsEstabelecimentos
          Properties.Buttons = <
            item
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = dmLeiaute.cxImageList16
          Properties.OnButtonClick = dbtxtedtCNPJPropertiesButtonClick
          TabOrder = 3
          Width = 121
        end
      end
    end
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryEstabelecimentos
    Left = 596
    Top = 148
  end
  object dsPaises_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryPaises_LookUp
    Left = 596
    Top = 196
  end
  object dsEstados_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryEstados_LookUp
    Left = 596
    Top = 240
  end
  object dsCidades_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryCidades_LookUp
    Left = 596
    Top = 284
  end
end
