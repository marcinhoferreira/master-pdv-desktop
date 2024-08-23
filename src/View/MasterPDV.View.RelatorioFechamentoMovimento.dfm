inherited dlgRelatorioFechamentoMovimento: TdlgRelatorioFechamentoMovimento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Fechamento do Movimento ::.'
  ClientHeight = 263
  ClientWidth = 617
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 623
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    TabOrder = 0
    Height = 201
    Width = 597
    object lblDataMovimento: TcxLabel
      Left = 12
      Top = 88
      Caption = 'Data do Movimento:'
      Transparent = True
    end
    object edtDataMovimento: TcxDateEdit
      Left = 157
      Top = 84
      TabOrder = 5
      Width = 153
    end
    object lblTerminal: TcxLabel
      Left = 12
      Top = 16
      Caption = 'Terminal:'
      Transparent = True
    end
    object dbtxtedtTerminal: TcxDBTextEdit
      Left = 157
      Top = 12
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsTerminais
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 224
    end
    object lblOperador: TcxLabel
      Left = 12
      Top = 52
      Caption = 'Operador:'
      Transparent = True
    end
    object dbtxtedtOperador: TcxDBTextEdit
      Left = 157
      Top = 48
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsOperadores
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 364
    end
    object lblFormatoImpressao: TcxLabel
      Left = 12
      Top = 128
      Caption = 'Formato de Impress'#227'o:'
    end
    object cmbFormatoImpressao: TcxComboBox
      Left = 157
      Top = 124
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Cupom (40 Colunas)'
        'A4')
      TabOrder = 7
      Width = 153
    end
  end
  object btnImprimir: TcxButton
    Left = 190
    Top = 219
    Width = 114
    Height = 36
    Caption = '&Imprimir'
    OptionsImage.ImageIndex = 8
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 1
    OnClick = btnImprimirClick
  end
  object btnFechar: TcxBotaoFechar
    Left = 314
    Top = 219
    Width = 114
    Height = 36
    Cancel = True
    Caption = '&Fechar'
    OptionsImage.ImageIndex = 0
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 2
  end
  object dsTerminais: TDataSource
    DataSet = dmPDV.qryTerminais
    Left = 540
    Top = 60
  end
  object dsOperadores: TDataSource
    DataSet = dmPDV.qryOperadores
    Left = 540
    Top = 104
  end
  object dsMovimentos: TDataSource
    DataSet = dmPDV.qryMovimentos
    Left = 540
    Top = 148
  end
end
