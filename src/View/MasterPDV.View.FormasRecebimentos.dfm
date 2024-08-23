object dlgFormasRecebimentos: TdlgFormasRecebimentos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Formas de Recebimento :..'
  ClientHeight = 324
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 280
    Width = 539
    object grdFormas_Recebimentos: TcxGrid
      Left = 3
      Top = 3
      Width = 533
      Height = 274
      Align = alClient
      TabOrder = 0
      object dbtvwFormas_Recebimentos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsFormas_Recebimentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtvwFormas_Recebimentosid_forma_recebimento: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'id_transacao'
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
          Options.Editing = False
          Options.Focusing = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtvwFormas_Recebimentosdescricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Moving = False
          Width = 224
        end
      end
      object grdFormas_RecebimentosLevel1: TcxGridLevel
        GridView = dbtvwFormas_Recebimentos
      end
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 280
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 1
    Height = 44
    Width = 539
    object btnConfirmar: TcxButton
      Left = 152
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
      Left = 272
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
  object dsFormas_Recebimentos: TDataSource
    DataSet = dmPDV.qryFormas_Recebimentos
    Left = 368
    Top = 100
  end
end
