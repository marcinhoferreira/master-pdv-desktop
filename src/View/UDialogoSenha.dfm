inherited dlgSenha: TdlgSenha
  BorderStyle = bsDialog
  Caption = 'Senha'
  ClientHeight = 198
  ClientWidth = 286
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 292
  ExplicitHeight = 227
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    TabOrder = 0
    Height = 137
    Width = 269
    object lblSenha: TcxLabel
      Left = 20
      Top = 20
      Caption = 'Senha (m'#237'nimo 6 caracteres):'
      FocusControl = txtedtSenha
    end
    object txtedtSenha: TcxTextEdit
      Left = 20
      Top = 40
      Properties.EchoMode = eemPassword
      Properties.OnChange = txtedtSenhaPropertiesChange
      TabOrder = 1
      TextHint = '<Digite a senha>'
      Width = 224
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 67
      Caption = 'Confirma'#231#227'o:'
      FocusControl = txtedtConfirmacao
    end
    object txtedtConfirmacao: TcxTextEdit
      Left = 20
      Top = 87
      Properties.EchoMode = eemPassword
      Properties.OnChange = txtedtSenhaPropertiesChange
      TabOrder = 3
      TextHint = '<Confirme a senha>'
      Width = 224
    end
  end
  object btnConfirmar: TcxButton
    Left = 54
    Top = 156
    Width = 85
    Height = 32
    Caption = 'C&onfirmar'
    Enabled = False
    OptionsImage.ImageIndex = 4
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TcxButton
    Left = 147
    Top = 156
    Width = 85
    Height = 32
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 2
  end
  object dsUsuarios: TDataSource
    DataSet = dmAcesso.qryUsuarios
    Left = 208
    Top = 56
  end
end
