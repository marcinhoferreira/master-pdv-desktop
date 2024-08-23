inherited dlgAberturaMovimento: TdlgAberturaMovimento
  BorderStyle = bsDialog
  Caption = '.:: Abertura do Movimento ::.'
  ClientHeight = 261
  ClientWidth = 617
  Position = poMainFormCenter
  ExplicitWidth = 633
  ExplicitHeight = 300
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
      Left = 137
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
      Left = 137
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
      Left = 137
      Top = 48
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsOperadores
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 364
    end
    object lblValorSuprimento: TcxLabel
      Left = 12
      Top = 124
      Caption = 'Suprimento:'
      Transparent = True
    end
    object curedtValorSuprimento: TcxCurrencyEdit
      Left = 137
      Top = 120
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 7
      Width = 153
    end
  end
  object btnConfirmar: TcxButton
    Left = 191
    Top = 217
    Width = 114
    Height = 36
    Caption = 'C&onfirmar'
    OptionsImage.ImageIndex = 4
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TcxButton
    Left = 311
    Top = 217
    Width = 114
    Height = 36
    Caption = '&Cancelar'
    ModalResult = 2
    OptionsImage.ImageIndex = 5
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
