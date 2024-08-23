inherited dlgConsultaProduto: TdlgConsultaProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Consultar Produto ::.'
  ClientHeight = 335
  ClientWidth = 773
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 779
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 291
    Width = 773
    object lblCodigo: TcxLabel
      Left = 12
      Top = 12
      Caption = 'C'#243'digo:'
      FocusControl = txtedtCodigo
    end
    object txtedtCodigo: TcxTextEdit
      Left = 12
      Top = 51
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 1
      OnKeyDown = txtedtCodigoKeyDown
      Width = 364
    end
    object lblDescricao: TcxLabel
      Left = 12
      Top = 94
      Caption = 'Descri'#231#227'o:'
      FocusControl = dbtxtedtDescricao
    end
    object lblPrecoVenda: TcxLabel
      Left = 12
      Top = 176
      Caption = 'Pre'#231'o Unit'#225'rio:'
      FocusControl = dbcurredtPrecoUnitario
    end
    object dbtxtedtDescricao: TcxDBTextEdit
      Left = 12
      Top = 133
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsProdutos_Locate
      Enabled = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 3
      Width = 629
    end
    object dbcurredtPrecoUnitario: TcxDBCurrencyEdit
      Left = 12
      Top = 215
      DataBinding.DataField = 'preco_unitario'
      DataBinding.DataSource = dsProdutos_Locate
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      TabOrder = 5
      Width = 224
    end
    object lblUnidade: TcxLabel
      Left = 651
      Top = 94
      Caption = 'Unidade:'
      FocusControl = dbtxtedtUnidade
    end
    object dbtxtedtUnidade: TcxDBTextEdit
      Left = 651
      Top = 133
      DataBinding.DataField = 'sigla_unidade_medida'
      DataBinding.DataSource = dsProdutos_Locate
      Enabled = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 7
      Width = 106
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 291
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 1
    Height = 44
    Width = 773
    object btnFechar: TcxButton
      Left = 398
      Top = 6
      Width = 114
      Height = 32
      Caption = '<Esc> Fechar'
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 0
      OnClick = btnFecharClick
    end
    object btnRegistrar: TcxButton
      Left = 261
      Top = 6
      Width = 132
      Height = 32
      Caption = '<Enter> Registrar'
      Enabled = False
      ModalResult = 1
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 1
      OnClick = btnRegistrarClick
    end
  end
  object dsProdutos_Locate: TDataSource
    DataSet = dmPDV.qryProdutos_Locate
    Left = 472
    Top = 156
  end
  object dsTerminais: TDataSource
    DataSet = dmPDV.qryTerminais
    Left = 472
    Top = 112
  end
end
