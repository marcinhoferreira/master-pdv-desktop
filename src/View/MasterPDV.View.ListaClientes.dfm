inherited dlgListaClientes: TdlgListaClientes
  BorderStyle = bsDialog
  Caption = '.:: Lista de Clientes ::.'
  ClientHeight = 451
  ClientWidth = 794
  Position = poScreenCenter
  OnClose = FormClose
  ExplicitWidth = 800
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreaDeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 399
    Width = 794
    object grdClientes: TcxGrid
      Left = 3
      Top = 56
      Width = 788
      Height = 340
      Align = alClient
      TabOrder = 0
      ExplicitTop = 3
      ExplicitHeight = 393
      object dbtabvwClientes: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsClientes
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
        Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
        object dbtabvwClientesid_parceiro: TcxGridDBColumn
          DataBinding.FieldName = 'id_parceiro'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 109
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwClientescodigo: TcxGridDBColumn
          DataBinding.FieldName = 'codigo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 60
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwClientesrazao: TcxGridDBColumn
          Caption = 'Nome / Raz'#227'o Social'
          DataBinding.FieldName = 'razao'
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
        end
        object dbtabvwClientestipo_pessoa: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_pessoa'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.HorzSizing = False
          Options.Moving = False
        end
        object dbtabvwClientescpf: TcxGridDBColumn
          Caption = 'CPF'
          DataBinding.FieldName = 'cpf'
          HeaderAlignmentHorz = taCenter
          MinWidth = 114
          Options.HorzSizing = False
          Options.Moving = False
          Width = 114
        end
        object dbtabvwClientescnpj: TcxGridDBColumn
          Caption = 'CNPJ'
          DataBinding.FieldName = 'cnpj'
          HeaderAlignmentHorz = taCenter
          MinWidth = 124
          Options.HorzSizing = False
          Options.Moving = False
          Width = 124
        end
        object dbtabvwClientesfantasia: TcxGridDBColumn
          Caption = 'Nome Fantasia'
          DataBinding.FieldName = 'fantasia'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 364
          Options.HorzSizing = False
          Options.Moving = False
          Width = 364
        end
        object dbtabvwClientessituacao: TcxGridDBColumn
          DataBinding.FieldName = 'situacao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 11
          Options.HorzSizing = False
          Options.Moving = False
        end
      end
      object grdClientesLevel1: TcxGridLevel
        GridView = dbtabvwClientes
      end
    end
    object lblLocalizar: TcxLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Align = alTop
      Caption = 'Localizar:'
      Transparent = True
    end
    object txtedtLocalizar: TcxTextEdit
      AlignWithMargins = True
      Left = 6
      Top = 32
      Align = alTop
      Properties.CharCase = ecUpperCase
      Properties.OnChange = txtedtLocalizarPropertiesChange
      TabOrder = 2
      OnEnter = txtedtLocalizarEnter
      OnExit = txtedtLocalizarExit
      OnKeyPress = txtedtLocalizarKeyPress
      ExplicitLeft = 336
      ExplicitTop = 188
      Width = 782
    end
  end
  object gboxBarraDeFerramentas: TcxGroupBox
    Left = 0
    Top = 399
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 1
    Height = 52
    Width = 794
    object btnConfirmar: TcxDBBotao
      Left = 278
      Top = 6
      Width = 114
      Height = 40
      Caption = 'C&onfirmar'
      Default = True
      ModalResult = 1
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = dmLeiaute.cxImageList32
      TabOrder = 0
      OnClick = btnConfirmarClick
      DataSource = dsClientes
      DisableReasons = [drEmpty]
    end
    object btnCancelar: TcxButton
      Left = 402
      Top = 6
      Width = 114
      Height = 40
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList32
      TabOrder = 1
    end
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 496
    Top = 80
  end
  object qryClientes: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_parceiro, codigo, tipo_pessoa, cpf, cnpj, razao, fanta' +
        'sia, situacao'
      'FROM vw_clientes'
      '&condicao'
      'ORDER BY razao')
    Left = 496
    Top = 36
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryClientesid_parceiro: TLargeintField
      FieldName = 'id_parceiro'
      Required = True
    end
    object qryClientescodigo: TStringField
      FieldName = 'codigo'
      Size = 8
    end
    object qryClientestipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object qryClientescpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object qryClientescnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object qryClientesrazao: TStringField
      FieldName = 'razao'
      Size = 60
    end
    object qryClientesfantasia: TStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qryClientessituacao: TStringField
      FieldName = 'situacao'
      Size = 1
    end
  end
end
