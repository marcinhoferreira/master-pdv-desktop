inherited frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Produtos ::.'
  ClientHeight = 739
  ClientWidth = 1018
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1024
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 16
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 73
    Width = 1018
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
      DataSource = dsProdutos
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
      DataSource = dsProdutos
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
      DataSource = dsProdutos
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
      DataSource = dsProdutos
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
      DataSource = dsProdutos
      DisableReasons = [drNotEditing]
    end
    object btnFechar: TcxBotaoFechar
      Left = 410
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
    Height = 666
    Width = 1018
    object pagProdutos: TcxPageControl
      Left = 3
      Top = 3
      Width = 1012
      Height = 660
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabDetalhes
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 658
      ClientRectLeft = 2
      ClientRectRight = 1010
      ClientRectTop = 29
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        object grdProdutos: TcxGrid
          Left = 0
          Top = 61
          Width = 1008
          Height = 568
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 1001
          ExplicitHeight = 565
          object dbtvwProdutos: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsProdutos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtvwProdutosid_produto: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id_produto'
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwProdutosdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
          end
          object grdProdutosLevel1: TcxGridLevel
            GridView = dbtvwProdutos
          end
        end
        object gboxLocalizar: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 0
          Height = 61
          Width = 1008
          object lblLocalizar: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Localizar:'
            Transparent = True
          end
          object cmbCampo: TcxComboBox
            Left = 8
            Top = 28
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'C'#243'digo de Barras'
              'Descri'#231#227'o')
            TabOrder = 1
            Text = 'Descri'#231#227'o'
            Width = 121
          end
          object txtedtChave: TcxTextEdit
            Left = 135
            Top = 28
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 772
          end
          object btnPesquisar: TcxDBBotaoPesquisar
            Left = 913
            Top = 21
            Width = 85
            Height = 32
            Caption = '&Pesquisar'
            Enabled = True
            OptionsImage.ImageIndex = 7
            OptionsImage.Images = dmLeiaute.cxImageList24
            TabOrder = 3
            OnClick = btnPesquisarClick
            DataSource = dsProdutos
            DisableReasons = []
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
        object gboxGeral: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 0
          Height = 329
          Width = 1008
          object lblIdProduto: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Id:'
            Transparent = True
          end
          object dblblIdProduto: TcxDBLabel
            Left = 8
            Top = 31
            DataBinding.DataField = 'id_produto'
            DataBinding.DataSource = dsProdutos
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 21
            Width = 66
            AnchorX = 74
          end
          object lblDescricao: TcxLabel
            Left = 8
            Top = 96
            Caption = 'Descri'#231#227'o:'
            FocusControl = dbtxtedtDescricao
            Transparent = True
          end
          object dbtxtedtDescricao: TcxDBTextEdit
            Left = 8
            Top = 116
            DataBinding.DataField = 'descricao'
            DataBinding.DataSource = dsProdutos
            Properties.CharCase = ecUpperCase
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 7
            Width = 454
          end
          object lblDescricaoResumida: TcxLabel
            Left = 8
            Top = 140
            Caption = 'Descri'#231#227'o Resumida:'
            FocusControl = dbtxtedtDescricaoResumida
            Transparent = True
          end
          object dbtxtedtDescricaoResumida: TcxDBTextEdit
            Left = 8
            Top = 160
            DataBinding.DataField = 'resumida'
            DataBinding.DataSource = dsProdutos
            Properties.CharCase = ecUpperCase
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 10
            Width = 184
          end
          object lblCodigoBarras: TcxLabel
            Left = 98
            Top = 8
            Caption = 'C'#243'digo de Barras:'
            FocusControl = dbtxtedtCodigoBarras
            Transparent = True
          end
          object dbtxtedtCodigoBarras: TcxDBTextEdit
            Left = 98
            Top = 28
            DataBinding.DataField = 'codigo_barras'
            DataBinding.DataSource = dsProdutos
            Properties.CharCase = ecUpperCase
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 3
            Width = 134
          end
          object lblUnidadeMedida: TcxLabel
            Left = 198
            Top = 140
            Caption = 'Unid. Medida:'
            FocusControl = dblkpcmbUnidadeMedida
            Transparent = True
          end
          object dblkpcmbUnidadeMedida: TcxDBLookupComboBox
            Left = 198
            Top = 160
            DataBinding.DataField = 'id_unidade'
            DataBinding.DataSource = dsProdutos
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id_unidade'
            Properties.ListColumns = <
              item
                FieldName = 'descricao'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsUnidadesMedida_LookUp
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 13
            Width = 114
          end
          object lblCategoria: TcxLabel
            Left = 8
            Top = 51
            Caption = 'Categoria:'
            FocusControl = dblkpcmbCategoria
            Transparent = True
          end
          object dblkpcmbCategoria: TcxDBLookupComboBox
            Left = 8
            Top = 71
            DataBinding.DataField = 'id_categoria'
            DataBinding.DataSource = dsProdutos
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id_categoria'
            Properties.ListColumns = <
              item
                FieldName = 'descricao'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsCategorias_LookUp
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 4
            Width = 224
          end
          object lblSubCategoria: TcxLabel
            Left = 238
            Top = 51
            Caption = 'Sub-categoria:'
            FocusControl = dblkpcmbSubCategoria
            Transparent = True
          end
          object dblkpcmbSubCategoria: TcxDBLookupComboBox
            Left = 238
            Top = 71
            DataBinding.DataField = 'id_subcategoria'
            DataBinding.DataSource = dsProdutos
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id_subcategoria'
            Properties.ListColumns = <
              item
                FieldName = 'descricao'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsSubCategorias_LookUp
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 5
            Width = 224
          end
          object lblMarca: TcxLabel
            Left = 8
            Top = 187
            Caption = 'Marca:'
            FocusControl = dblkpcmbMarca
            Transparent = True
          end
          object dblkpcmbMarca: TcxDBLookupComboBox
            Left = 8
            Top = 207
            DataBinding.DataField = 'id_marca'
            DataBinding.DataSource = dsProdutos
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id_marca'
            Properties.ListColumns = <
              item
                FieldName = 'descricao'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsMarcas_LookUp
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 15
            Width = 224
          end
          object lblPrecoCusto: TcxLabel
            Left = 8
            Top = 233
            Caption = 'Pre'#231'o de Custo:'
            FocusControl = dbcurredtPrecoCusto
            Transparent = True
          end
          object dbcurredtPrecoCusto: TcxDBCurrencyEdit
            Left = 8
            Top = 253
            DataBinding.DataField = 'preco_custo'
            DataBinding.DataSource = dsProdutos
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 17
            Width = 100
          end
          object lblPrecoVenda: TcxLabel
            Left = 8
            Top = 279
            Caption = 'Pre'#231'o de Venda:'
            FocusControl = dbcurredtPrecoVenda
            Transparent = True
          end
          object dbcurredtPrecoVenda: TcxDBCurrencyEdit
            Left = 8
            Top = 299
            DataBinding.DataField = 'preco_venda'
            DataBinding.DataSource = dsProdutos
            StyleFocused.Color = clInfoBk
            StyleFocused.TextColor = clInfoText
            TabOrder = 19
            Width = 100
          end
        end
        object pagProduto: TcxPageControl
          Left = 0
          Top = 329
          Width = 1008
          Height = 300
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = tabFiscal
          Properties.CustomButtons.Buttons = <>
          ExplicitWidth = 1001
          ExplicitHeight = 297
          ClientRectBottom = 298
          ClientRectLeft = 2
          ClientRectRight = 1006
          ClientRectTop = 29
          object tabInformacoesGerais: TcxTabSheet
            Caption = 'informa'#231#245'es Gerais'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbradgrpPesavel: TcxDBRadioGroup
              Left = 8
              Top = 8
              Caption = 'Pes'#225'vel:'
              DataBinding.DataField = 'pesavel'
              DataBinding.DataSource = dsProdutos
              Properties.Columns = 2
              Properties.ImmediatePost = True
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 'S'
                end
                item
                  Caption = 'N'#227'o'
                  Value = 'N'
                end>
              TabOrder = 0
              Height = 53
              Width = 156
            end
            object dbradgrpInativo: TcxDBRadioGroup
              Left = 8
              Top = 72
              Caption = 'Inativo:'
              DataBinding.DataField = 'inativo'
              DataBinding.DataSource = dsProdutos
              Properties.Columns = 2
              Properties.ImmediatePost = True
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 'S'
                end
                item
                  Caption = 'N'#227'o'
                  Value = 'N'
                end>
              TabOrder = 1
              Height = 53
              Width = 156
            end
          end
          object tabFiscal: TcxTabSheet
            Caption = 'Fiscal'
            ImageIndex = 0
            object gboxICMS: TcxGroupBox
              Left = 8
              Top = 8
              Caption = 'ICMS:'
              TabOrder = 0
              Height = 129
              Width = 974
              object lblSituacaoTributaria: TcxLabel
                Left = 8
                Top = 20
                Caption = 'C'#243'd. ST:'
                FocusControl = dbbtnedtSituacaoTributaria
                Transparent = True
              end
              object dbbtnedtSituacaoTributaria: TcxDBButtonEdit
                Left = 8
                Top = 40
                DataBinding.DataField = 'situacao_tributaria'
                DataBinding.DataSource = dsProdutos
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = dbbtnedtSituacaoTributariaPropertiesButtonClick
                StyleFocused.Color = clInfoBk
                StyleFocused.TextColor = clInfoText
                TabOrder = 1
                Width = 76
              end
              object lblAliquotaICMS: TcxLabel
                Left = 8
                Top = 68
                Caption = 'Al'#237'quota:'
                FocusControl = dbcurredtAliquotaICMS
                Transparent = True
              end
              object dbcurredtAliquotaICMS: TcxDBCurrencyEdit
                Left = 8
                Top = 88
                DataBinding.DataField = 'icmsvenda'
                DataBinding.DataSource = dsProdutos
                Properties.DisplayFormat = ',0.00 %'
                StyleFocused.Color = clInfoBk
                StyleFocused.TextColor = clInfoText
                TabOrder = 3
                Width = 72
              end
            end
            object cxLabel1: TcxLabel
              Left = 8
              Top = 144
              Caption = 'C'#243'd. NCM:'
              FocusControl = dbbtnedtCodigoNCM
              Transparent = True
            end
            object dbbtnedtCodigoNCM: TcxDBButtonEdit
              Left = 8
              Top = 164
              DataBinding.DataField = 'codigo_ncm'
              DataBinding.DataSource = dsProdutos
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbbtnedtCodigoNCMPropertiesButtonClick
              StyleFocused.Color = clInfoBk
              StyleFocused.TextColor = clInfoText
              TabOrder = 2
              Width = 99
            end
            object lblCodigoCEST: TcxLabel
              Left = 8
              Top = 193
              Caption = 'C'#243'd. CEST:'
              FocusControl = dbbtnedtCodigoCEST
              Transparent = True
            end
            object dbbtnedtCodigoCEST: TcxDBButtonEdit
              Left = 8
              Top = 213
              DataBinding.DataField = 'cest'
              DataBinding.DataSource = dsProdutos
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbbtnedtCodigoCESTPropertiesButtonClick
              StyleFocused.Color = clInfoBk
              StyleFocused.TextColor = clInfoText
              TabOrder = 4
              Width = 99
            end
          end
          object tabPropriedades: TcxTabSheet
            Caption = 'Propriedades'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object gboxPropriedades: TcxGroupBox
              Left = 8
              Top = 8
              Caption = 'Propriedades:'
              TabOrder = 0
              Height = 246
              Width = 971
              object dbmmoPropriedades: TcxDBMemo
                Left = 3
                Top = 18
                Align = alClient
                DataBinding.DataField = 'propriedades'
                DataBinding.DataSource = dsProdutos
                Properties.ScrollBars = ssBoth
                StyleFocused.Color = clInfoBk
                StyleFocused.TextColor = clInfoText
                TabOrder = 0
                ExplicitTop = 15
                Height = 218
                Width = 965
              end
            end
          end
          object tabGaleria: TcxTabSheet
            Caption = 'Galeria'
            ImageIndex = 1
            inline frmFoto: TFrameFoto
              Left = 8
              Top = 8
              Width = 321
              Height = 247
              TabOrder = 0
              ExplicitLeft = 8
              ExplicitTop = 8
              ExplicitWidth = 321
              ExplicitHeight = 247
              inherited cxgb_Foto: TcxGroupBox
                Caption = 'Imagem do Produto:'
                ExplicitWidth = 321
                ExplicitHeight = 247
                Height = 247
                Width = 321
                inherited panFotoAlunoFerramentas: TPanel
                  Top = 211
                  Width = 315
                  ExplicitLeft = 3
                  ExplicitTop = 212
                  ExplicitWidth = 315
                  inherited btn_Apagar: TcxDBBotao
                    Left = 249
                    DataSource = dsProdutos
                    ExplicitLeft = 249
                  end
                  inherited btn_Foto: TcxDBBotao
                    DataSource = dsProdutos
                  end
                end
                inherited cxdbi_Foto: TcxDBImage
                  Tag = 1
                  Top = 18
                  DataBinding.DataField = 'imagem'
                  DataBinding.DataSource = dsProdutos
                  ExplicitLeft = 2
                  ExplicitTop = -2
                  ExplicitWidth = 317
                  ExplicitHeight = 221
                  Height = 193
                  Width = 315
                end
              end
            end
          end
        end
      end
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qryProdutos
    Left = 641
    Top = 218
  end
  object dsCategorias_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qryCategorias
    Left = 641
    Top = 262
  end
  object dsSubCategorias_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qrySubCategorias
    Left = 639
    Top = 306
  end
  object dsMarcas_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qryMarcas
    Left = 640
    Top = 351
  end
  object dsUnidadesMedida_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qryUnidadesMedida
    Left = 640
    Top = 396
  end
end
