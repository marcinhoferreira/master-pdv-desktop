inherited dlgIdentificacaoRepresentante: TdlgIdentificacaoRepresentante
  BorderStyle = bsDialog
  Caption = '.:: Identifica'#231#227'o do Representante ::.'
  ClientHeight = 300
  ClientWidth = 521
  Position = poScreenCenter
  ExplicitWidth = 527
  ExplicitHeight = 329
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreaDeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    TabOrder = 0
    Height = 233
    Width = 505
    object grdRepresentantes: TcxGrid
      Left = 3
      Top = 3
      Width = 499
      Height = 227
      Align = alClient
      TabOrder = 0
      OnEnter = grdRepresentantesEnter
      OnExit = grdRepresentantesExit
      ExplicitLeft = 128
      ExplicitTop = 16
      ExplicitWidth = 250
      ExplicitHeight = 200
      object dbtabvwRepresentantes: TcxGridDBTableView
        OnDblClick = dbtabvwRepresentantesDblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsRepresentantes
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
        object dbtabvwRepresentantesid_representante: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'id_representante'
          HeaderAlignmentHorz = taCenter
          MinWidth = 64
          Options.HorzSizing = False
          Options.Moving = False
          Width = 64
        end
        object dbtabvwRepresentantesnome: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
        end
      end
      object grdRepresentantesLevel1: TcxGridLevel
        GridView = dbtabvwRepresentantes
      end
    end
  end
  object btnConfirmar: TcxButton
    Left = 125
    Top = 252
    Width = 114
    Height = 40
    Caption = 'C&onfirmar'
    OptionsImage.ImageIndex = 7
    OptionsImage.Images = dmLeiaute.cxImageList32
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TcxButton
    Left = 249
    Top = 252
    Width = 114
    Height = 40
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    OptionsImage.ImageIndex = 8
    OptionsImage.Images = dmLeiaute.cxImageList32
    TabOrder = 2
  end
  object dsRepresentantes: TDataSource
    DataSet = dmPDV.qryRepresentantes
    Left = 400
    Top = 92
  end
end
