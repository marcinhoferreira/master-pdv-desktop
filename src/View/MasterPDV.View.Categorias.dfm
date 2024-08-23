inherited frmCategorias: TfrmCategorias
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Categorias ::.'
  ClientHeight = 387
  ClientWidth = 491
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 497
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 16
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 73
    Width = 491
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
      DataSource = dsCategorias
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
      DataSource = dsCategorias
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
      DataSource = dsCategorias
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
      DataSource = dsCategorias
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
      DataSource = dsCategorias
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
    Height = 314
    Width = 491
    object tabctrlCategorias: TcxTabControl
      Left = 3
      Top = 3
      Width = 485
      Height = 308
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        'Categorias'
        'Sub-categorias')
      OnChange = tabctrlCategoriasChange
      ExplicitHeight = 89
      ClientRectBottom = 306
      ClientRectLeft = 2
      ClientRectRight = 483
      ClientRectTop = 29
      object pagCategorias: TcxPageControl
        Left = 2
        Top = 29
        Width = 481
        Height = 277
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tabVisualiza
        Properties.CustomButtons.Buttons = <>
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 485
        ExplicitHeight = 308
        ClientRectBottom = 275
        ClientRectLeft = 2
        ClientRectRight = 479
        ClientRectTop = 29
        object tabVisualiza: TcxTabSheet
          Caption = 'tabVisualiza'
          ImageIndex = 0
          ExplicitLeft = 4
          ExplicitTop = 27
          ExplicitWidth = 463
          ExplicitHeight = 240
          object grdCategorias: TcxGrid
            Left = 0
            Top = 56
            Width = 477
            Height = 190
            Align = alClient
            TabOrder = 0
            ExplicitTop = 0
            ExplicitWidth = 474
            ExplicitHeight = 185
            object dbtabvwCategorias: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Delete.Visible = False
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Visible = False
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              DataController.DataSource = dsCategorias
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
              object dbtabvwCategoriasid_categoria: TcxGridDBColumn
                Caption = 'Id'
                DataBinding.FieldName = 'id_categoria'
                HeaderAlignmentHorz = taCenter
                MinWidth = 64
                Options.Editing = False
                Options.HorzSizing = False
              end
              object dbtabvwCategoriasdescricao: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'descricao'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
            end
            object dbtabvwSubCategorias: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Delete.Visible = False
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Visible = False
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              DataController.DataSource = dsSubCategorias
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
              object dbtabvwSubCategoriasid_categoria: TcxGridDBColumn
                DataBinding.FieldName = 'id_categoria'
                Visible = False
                HeaderAlignmentHorz = taCenter
                MinWidth = 64
                Options.HorzSizing = False
                Options.Moving = False
              end
              object dbtabvwSubCategoriasid_subcategoria: TcxGridDBColumn
                Caption = 'Id'
                DataBinding.FieldName = 'id_subcategoria'
                HeaderAlignmentHorz = taCenter
                MinWidth = 64
                Options.HorzSizing = False
                Options.Moving = False
              end
              object dbtabvwSubCategoriasdescricao: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'descricao'
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
              end
            end
            object grdCategoriasLevel1: TcxGridLevel
              GridView = dbtabvwCategorias
            end
          end
          object gboxCategoria: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            PanelStyle.Active = True
            TabOrder = 1
            Visible = False
            ExplicitWidth = 463
            Height = 56
            Width = 477
            object lblCategoria: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Categoria:'
              FocusControl = dbtxtedtCategoria
              Transparent = True
            end
            object dbtxtedtCategoria: TcxDBTextEdit
              Left = 8
              Top = 28
              DataBinding.DataField = 'descricao'
              DataBinding.DataSource = dsCategorias
              Enabled = False
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 446
            end
          end
        end
        object tabDetalhesCategoria: TcxTabSheet
          Caption = 'tabDetalhesCategoria'
          ImageIndex = 1
          ExplicitLeft = 4
          ExplicitTop = 27
          ExplicitWidth = 463
          ExplicitHeight = 240
          object lblIdCategoria: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Id:'
            Transparent = True
          end
          object dblblIdCategoria: TcxDBLabel
            Left = 8
            Top = 31
            DataBinding.DataField = 'id_categoria'
            DataBinding.DataSource = dsCategorias
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 21
            Width = 66
            AnchorX = 74
          end
          object lblDescricao: TcxLabel
            Left = 8
            Top = 52
            Caption = 'Descri'#231#227'o:'
            FocusControl = dbtxtedtDescricao
            Transparent = True
          end
          object dbtxtedtDescricao: TcxDBTextEdit
            Left = 8
            Top = 72
            DataBinding.DataField = 'descricao'
            DataBinding.DataSource = dsCategorias
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 224
          end
        end
        object tabDetalhesSubCategoria: TcxTabSheet
          Caption = 'tabDetalhesSubCategoria'
          ImageIndex = 2
          ExplicitLeft = 4
          ExplicitTop = 27
          ExplicitWidth = 463
          ExplicitHeight = 240
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            PanelStyle.Active = True
            TabOrder = 0
            ExplicitWidth = 463
            Height = 56
            Width = 477
            object cxLabel1: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Categoria:'
              FocusControl = cxDBTextEdit1
              Transparent = True
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 8
              Top = 28
              DataBinding.DataField = 'descricao'
              DataBinding.DataSource = dsCategorias
              Enabled = False
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 446
            end
          end
          object lblIdSubCategoria: TcxLabel
            Left = 8
            Top = 63
            Caption = 'Id:'
            Transparent = True
          end
          object dblblIdSubCategoria: TcxDBLabel
            Left = 8
            Top = 86
            DataBinding.DataField = 'id_subcategoria'
            DataBinding.DataSource = dsSubCategorias
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 21
            Width = 66
            AnchorX = 74
          end
          object lblDescricaoSubCategoria: TcxLabel
            Left = 8
            Top = 107
            Caption = 'Descri'#231#227'o:'
            FocusControl = dbtxtedtDescricaoSubCategoria
            Transparent = True
          end
          object dbtxtedtDescricaoSubCategoria: TcxDBTextEdit
            Left = 8
            Top = 127
            DataBinding.DataField = 'descricao'
            DataBinding.DataSource = dsSubCategorias
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 224
          end
        end
      end
    end
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qryCategorias
    Left = 380
    Top = 168
  end
  object dsSubCategorias: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qrySubCategorias
    Left = 379
    Top = 212
  end
end
