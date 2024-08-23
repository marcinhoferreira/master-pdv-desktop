inherited frmTokensCSC: TfrmTokensCSC
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Tokens CSC ::.'
  ClientHeight = 404
  ClientWidth = 615
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 621
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 16
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 73
    Width = 615
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
      DataSource = dsTokens
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
      DataSource = dsTokens
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
      DataSource = dsTokens
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
      DataSource = dsTokens
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
      DataSource = dsTokens
      DisableReasons = [drNotEditing]
    end
    object btnFechar: TcxBotaoFechar
      Left = 533
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
    Height = 331
    Width = 615
    object pagTokens: TcxPageControl
      Left = 3
      Top = 3
      Width = 609
      Height = 325
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabDetalhes
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 323
      ClientRectLeft = 2
      ClientRectRight = 607
      ClientRectTop = 29
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        object grdTokens: TcxGrid
          Left = 0
          Top = 61
          Width = 605
          Height = 233
          Align = alClient
          TabOrder = 1
          object dbtvwTokens: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsTokens
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtvwTokensid_token: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id_token'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTokensid_estabelecimento: TcxGridDBColumn
              DataBinding.FieldName = 'id_estabelecimento'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTokenscsc_id: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'csc_id'
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTokenscsc_numero: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'csc_numero'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object dbtvwTokensdata_emissao: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'data_emissao'
              HeaderAlignmentHorz = taCenter
              MinWidth = 130
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwTokensdata_revogacao: TcxGridDBColumn
              Caption = 'Revoga'#231#227'o'
              DataBinding.FieldName = 'data_revogacao'
              HeaderAlignmentHorz = taCenter
              MinWidth = 130
              Options.Editing = False
              Options.HorzSizing = False
            end
          end
          object grdTokensLevel1: TcxGridLevel
            GridView = dbtvwTokens
          end
        end
        object gboxPesquisa: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          TabOrder = 0
          Height = 61
          Width = 605
          object lblFiltroEstabelecimento: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Estabelecimento:'
            FocusControl = lkpcmbParametroEstabelecimento
            Transparent = True
          end
          object lkpcmbParametroEstabelecimento: TcxLookupComboBox
            Left = 8
            Top = 32
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id_estabelecimento'
            Properties.ListColumns = <
              item
                FieldName = 'razao_social'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsEstabelecimentos_LookUp
            Properties.OnEditValueChanged = lkpcmbParametroEstabelecimentoPropertiesEditValueChanged
            TabOrder = 1
            Width = 494
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'tabDetalhes'
        ImageIndex = 1
        ExplicitLeft = 114
        ExplicitTop = -72
        object lblCSCNumero: TcxLabel
          Left = 8
          Top = 60
          Caption = 'N'#250'mero:'
          FocusControl = dbtxtedtCSCNumero
          Transparent = True
        end
        object dbtxtedtCSCNumero: TcxDBTextEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'csc_numero'
          DataBinding.DataSource = dsTokens
          TabOrder = 3
          Width = 224
        end
        object lblDataEmissao: TcxLabel
          Left = 8
          Top = 110
          Caption = 'Data de Emiss'#227'o:'
          FocusControl = dbdtedtDataEmissao
          Transparent = True
        end
        object dbdtedtDataEmissao: TcxDBDateEdit
          Left = 8
          Top = 132
          DataBinding.DataField = 'data_emissao'
          DataBinding.DataSource = dsTokens
          Properties.Kind = ckDateTime
          TabOrder = 5
          Width = 157
        end
        object lblEstabelecimento: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Estabelecimento:'
          FocusControl = dblkpcmbEstabelecimento
          Transparent = True
        end
        object dblkpcmbEstabelecimento: TcxDBLookupComboBox
          Left = 8
          Top = 30
          DataBinding.DataField = 'id_estabelecimento'
          DataBinding.DataSource = dsTokens
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'id_estabelecimento'
          Properties.ListColumns = <
            item
              FieldName = 'razao_social'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEstabelecimentos_LookUp
          TabOrder = 0
          Width = 494
        end
        object lblDataRevogacao: TcxLabel
          Left = 8
          Top = 160
          Caption = 'Data de Revoga'#231#227'o:'
          FocusControl = dbdtedtDataRevogacao
          Transparent = True
        end
        object dbdtedtDataRevogacao: TcxDBDateEdit
          Left = 8
          Top = 184
          DataBinding.DataField = 'data_revogacao'
          DataBinding.DataSource = dsTokens
          Properties.Kind = ckDateTime
          TabOrder = 7
          Width = 157
        end
      end
    end
  end
  object dsTokens: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryTokens
    Left = 420
    Top = 108
  end
  object dsEstabelecimentos_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryEstabelecimentos_LookUp
    Left = 420
    Top = 64
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 420
    Top = 20
  end
end
