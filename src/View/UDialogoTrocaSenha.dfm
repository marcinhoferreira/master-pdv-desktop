inherited dlgTrocaSenha: TdlgTrocaSenha
  Left = 246
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Troca de Senha'
  ClientHeight = 207
  ClientWidth = 369
  Font.Name = 'MS Sans Serif'
  Position = poMainFormCenter
  ExplicitWidth = 375
  ExplicitHeight = 236
  PixelsPerInch = 96
  TextHeight = 16
  object panAreadeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    TabOrder = 0
    Height = 189
    Width = 257
    object lblSenhaAtual: TcxLabel
      Left = 16
      Top = 16
      Caption = 'Senha Atual:'
      FocusControl = edtSenhaAtual
      Transparent = True
    end
    object lblNovaSenha: TcxLabel
      Left = 16
      Top = 60
      Caption = 'Nova Senha(min. 6 caracteres):'
      FocusControl = edtNovaSenha
      Transparent = True
    end
    object lblConfirmaNovaSenha: TcxLabel
      Left = 16
      Top = 104
      Caption = 'Confirma Nova Senha:'
      FocusControl = edtConfirmaNovaSenha
      Transparent = True
    end
    object edtSenhaAtual: TcxTextEdit
      Left = 16
      Top = 36
      Properties.EchoMode = eemPassword
      TabOrder = 0
      Width = 224
    end
    object edtNovaSenha: TcxTextEdit
      Left = 16
      Top = 80
      Properties.EchoMode = eemPassword
      Properties.OnChange = edtNovaSenhaPropertiesChange
      TabOrder = 1
      Width = 224
    end
    object edtConfirmaNovaSenha: TcxTextEdit
      Left = 16
      Top = 124
      Properties.EchoMode = eemPassword
      TabOrder = 2
      Width = 224
    end
  end
  object btnOk: TcxButton
    Left = 272
    Top = 8
    Width = 85
    Height = 32
    Caption = 'OK'
    Enabled = False
    ModalResult = 1
    OptionsImage.ImageIndex = 4
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnCancelar: TcxButton
    Left = 272
    Top = 44
    Width = 85
    Height = 32
    Caption = 'Cancelar'
    ModalResult = 2
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 2
  end
end
