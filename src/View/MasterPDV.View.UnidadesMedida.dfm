inherited frmUnidadesMedida: TfrmUnidadesMedida
  Tag = 65
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Unidades de Medida ::.'
  ClientHeight = 395
  ClientWidth = 491
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 497
  ExplicitHeight = 424
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
      DataSource = dsUnidadesMedida
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
      DataSource = dsUnidadesMedida
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
      DataSource = dsUnidadesMedida
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
      DataSource = dsUnidadesMedida
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
      DataSource = dsUnidadesMedida
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
    Height = 322
    Width = 491
    object pagUnidadesMedida: TcxPageControl
      Left = 3
      Top = 3
      Width = 485
      Height = 316
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabDetalhes
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 314
      ClientRectLeft = 2
      ClientRectRight = 483
      ClientRectTop = 29
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdUnidadesMedida: TcxGrid
          Left = 0
          Top = 0
          Width = 474
          Height = 282
          Align = alClient
          TabOrder = 0
          object dbtabvwUnidadesMedida: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsUnidadesMedida
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtabvwUnidadesMedidaid_unidade: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id_unidade'
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtabvwUnidadesMedidadescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object dbtabvwUnidadesMedidasigla: TcxGridDBColumn
              Caption = 'Sigla'
              DataBinding.FieldName = 'sigla'
              HeaderAlignmentHorz = taCenter
              MinWidth = 48
              Options.HorzSizing = False
              Options.Moving = False
              Width = 48
            end
          end
          object grdUnidadesMedidaLevel1: TcxGridLevel
            GridView = dbtabvwUnidadesMedida
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'tabDetalhes'
        ImageIndex = 1
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 474
        ExplicitHeight = 282
        object lblIdUnidade: TcxLabel
          Left = 8
          Top = 4
          Caption = 'Id:'
          Transparent = True
        end
        object dblblIdUnidade: TcxDBLabel
          Left = 8
          Top = 27
          DataBinding.DataField = 'id_unidade'
          DataBinding.DataSource = dsUnidadesMedida
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 21
          Width = 66
          AnchorX = 74
        end
        object lblDescricao: TcxLabel
          Left = 8
          Top = 48
          Caption = 'Descri'#231#227'o:'
          FocusControl = dbtxtedtDescricao
          Transparent = True
        end
        object dbtxtedtDescricao: TcxDBTextEdit
          Left = 8
          Top = 68
          DataBinding.DataField = 'descricao'
          DataBinding.DataSource = dsUnidadesMedida
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 224
        end
        object lblSigla: TcxLabel
          Left = 238
          Top = 48
          Caption = 'Sigla:'
          FocusControl = dbtxtedtSigla
          Transparent = True
        end
        object dbtxtedtSigla: TcxDBTextEdit
          Left = 238
          Top = 68
          DataBinding.DataField = 'sigla'
          DataBinding.DataSource = dsUnidadesMedida
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 48
        end
      end
    end
  end
  object dsUnidadesMedida: TDataSource
    AutoEdit = False
    DataSet = dmProduto.qryUnidadesMedida
    Left = 341
    Top = 256
  end
end
