object dlgConsultaCNPJ: TdlgConsultaCNPJ
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Consultar CNPJ ::.'
  ClientHeight = 465
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 465
    Width = 637
    object pagConsultaCNPJ: TcxPageControl
      Left = 3
      Top = 3
      Width = 631
      Height = 459
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabResultado
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 457
      ClientRectLeft = 2
      ClientRectRight = 629
      ClientRectTop = 26
      object tabConsulta: TcxTabSheet
        Caption = 'tabConsulta'
        ImageIndex = 0
        object grpboxCaptcha: TcxGroupBox
          Left = 8
          Top = 8
          PanelStyle.Active = True
          TabOrder = 0
          Height = 141
          Width = 213
          object imgCaptcha: TcxImage
            Left = 3
            Top = 3
            Align = alClient
            TabOrder = 0
            Height = 135
            Width = 207
          end
        end
        object lblNumeroCNPJ: TcxLabel
          Left = 227
          Top = 8
          Caption = 'N'#250'mero do CNPJ:'
          FocusControl = mskedtNumeroCNPJ
        end
        object mskedtNumeroCNPJ: TcxMaskEdit
          Left = 227
          Top = 28
          Properties.EditMask = '99.999.999/9999-99;0;_'
          TabOrder = 2
          Text = '              '
          Width = 184
        end
        object lblCaptcha: TcxLabel
          Left = 227
          Top = 60
          Caption = 'Captcha:'
          FocusControl = txtedtCaptcha
        end
        object txtedtCaptcha: TcxTextEdit
          Left = 227
          Top = 80
          TabOrder = 4
          Width = 184
        end
        object btnAtualizarCaptcha: TcxButton
          Left = 56
          Top = 159
          Width = 105
          Height = 32
          Caption = 'Atualizar Captcha'
          TabOrder = 5
          OnClick = btnAtualizarCaptchaClick
        end
        object btnConsultar: TcxButton
          Left = 492
          Top = 69
          Width = 105
          Height = 32
          Caption = 'Consultar'
          TabOrder = 6
          OnClick = btnConsultarClick
        end
        object chkRemoverEspacosDuplos: TcxCheckBox
          Left = 227
          Top = 127
          Caption = 'Remover espa'#231'os duplos dos dados retornados'
          TabOrder = 7
          Transparent = True
        end
      end
      object tabResultado: TcxTabSheet
        Caption = 'tabResultado'
        ImageIndex = 1
        object grpboxFerramentas: TcxGroupBox
          Left = 0
          Top = 391
          Align = alBottom
          PanelStyle.Active = True
          TabOrder = 13
          Height = 40
          Width = 627
          object btnOK: TcxButton
            Left = 222
            Top = 4
            Width = 85
            Height = 32
            Caption = 'OK'
            ModalResult = 1
            OptionsImage.ImageIndex = 4
            OptionsImage.Images = dmLeiaute.cxImageList24
            TabOrder = 0
          end
          object btnCancelar: TcxButton
            Left = 313
            Top = 4
            Width = 85
            Height = 32
            Cancel = True
            Caption = 'Cancelar'
            ModalResult = 2
            OptionsImage.ImageIndex = 5
            OptionsImage.Images = dmLeiaute.cxImageList24
            TabOrder = 1
          end
        end
        object lblTipo: TcxLabel
          Left = 4
          Top = 4
          Caption = 'Tipo de Empresa:'
          FocusControl = txtedtTipo
          Transparent = True
        end
        object txtedtTipo: TcxTextEdit
          Left = 5
          Top = 25
          Style.Color = clInfoBk
          TabOrder = 0
          Text = 'txtedtTipo'
          Width = 87
        end
        object lblRazaoSocial: TcxLabel
          Left = 95
          Top = 4
          Caption = 'Raz'#227'o Social:'
          FocusControl = txtedtRazaoSocial
          Transparent = True
        end
        object txtedtRazaoSocial: TcxTextEdit
          Left = 96
          Top = 25
          Style.Color = clInfoBk
          TabOrder = 1
          Text = 'txtedtTipo'
          Width = 380
        end
        object lblDataAbertura: TcxLabel
          Left = 4
          Top = 49
          Caption = 'Abertura:'
          FocusControl = txtedtDataAbertura
          Transparent = True
        end
        object txtedtDataAbertura: TcxTextEdit
          Left = 5
          Top = 69
          Style.Color = clInfoBk
          TabOrder = 2
          Text = 'txtedtTipo'
          Width = 87
        end
        object lblNomeFantasia: TcxLabel
          Left = 96
          Top = 49
          Caption = 'Nme Fantasia:'
          FocusControl = txtedtNomeFantasia
          Transparent = True
        end
        object txtedtNomeFantasia: TcxTextEdit
          Left = 97
          Top = 69
          Style.Color = clInfoBk
          TabOrder = 4
          Text = 'txtedtTipo'
          Width = 379
        end
        object gboxEndereco: TcxGroupBox
          Left = 5
          Top = 102
          Caption = 'Endere'#231'o:'
          TabOrder = 5
          Height = 161
          Width = 609
          object lblEnderecoLogradouro: TcxLabel
            Left = 8
            Top = 16
            Caption = 'Logradouro:'
            FocusControl = txtedtEnderecoLogradouro
            Transparent = True
          end
          object txtedtEnderecoLogradouro: TcxTextEdit
            Left = 8
            Top = 36
            Style.Color = clInfoBk
            TabOrder = 1
            Text = 'txtedtTipo'
            Width = 362
          end
          object lblEnderecoNumero: TcxLabel
            Left = 376
            Top = 16
            Caption = 'N'#250'mero:'
            FocusControl = txtedtEnderecoNumero
            Transparent = True
          end
          object txtedtEnderecoNumero: TcxTextEdit
            Left = 376
            Top = 36
            Style.Color = clInfoBk
            TabOrder = 3
            Text = 'txtedtTipo'
            Width = 87
          end
          object txtedtEnderecoComplemento: TcxTextEdit
            Left = 469
            Top = 36
            Style.Color = clInfoBk
            TabOrder = 4
            Text = 'txtedtTipo'
            Width = 132
          end
          object lblEnderecoComplemento: TcxLabel
            Left = 469
            Top = 16
            Caption = 'Complemento:'
            FocusControl = txtedtEnderecoComplemento
            Transparent = True
          end
          object lblEnderecoBairro: TcxLabel
            Left = 8
            Top = 60
            Caption = 'Bairro:'
            FocusControl = txtedtEnderecoBairro
            Transparent = True
          end
          object txtedtEnderecoBairro: TcxTextEdit
            Left = 8
            Top = 80
            Style.Color = clInfoBk
            TabOrder = 7
            Text = 'txtedtTipo'
            Width = 362
          end
          object lblEnderecoCidade: TcxLabel
            Left = 376
            Top = 60
            Caption = 'Cidade:'
            FocusControl = txtedtEnderecoCidade
            Transparent = True
          end
          object txtedtEnderecoCidade: TcxTextEdit
            Left = 376
            Top = 80
            Style.Color = clInfoBk
            TabOrder = 9
            Text = 'txtedtTipo'
            Width = 178
          end
          object lblEnderecoUF: TcxLabel
            Left = 560
            Top = 60
            Caption = 'UF:'
            FocusControl = txtedtEnderecoUF
            Transparent = True
          end
          object txtedtEnderecoUF: TcxTextEdit
            Left = 560
            Top = 80
            Style.Color = clInfoBk
            TabOrder = 11
            Text = 'txtedtTipo'
            Width = 41
          end
          object lblEnderecoCEP: TcxLabel
            Left = 8
            Top = 104
            Caption = 'CEP:'
            FocusControl = txtedtEnderecoCEP
            Transparent = True
          end
          object txtedtEnderecoCEP: TcxTextEdit
            Left = 8
            Top = 124
            Style.Color = clInfoBk
            TabOrder = 13
            Text = 'txtedtTipo'
            Width = 78
          end
          object lblEMail: TcxLabel
            Left = 92
            Top = 104
            Caption = 'E-mail:'
            FocusControl = txtedtEMail
            Transparent = True
          end
          object txtedtEMail: TcxTextEdit
            Left = 92
            Top = 124
            Style.Color = clInfoBk
            TabOrder = 15
            Text = 'txtedtTipo'
            Width = 509
          end
        end
        object lblCNAEPrincipal: TcxLabel
          Left = 4
          Top = 269
          Caption = 'CNAE Principal:'
          ParentFont = False
          Transparent = True
        end
        object lblCNAESecundario: TcxLabel
          Left = 4
          Top = 315
          Caption = 'CNAE Secund'#225'rio(s):'
          ParentFont = False
          Transparent = True
        end
        object lstboxCNAESecundario: TcxListBox
          Left = 4
          Top = 334
          Width = 610
          Height = 43
          ItemHeight = 13
          TabOrder = 6
        end
        object txtedtCNAEPrincipal: TcxTextEdit
          Left = 4
          Top = 289
          ParentFont = False
          Style.Color = clInfoBk
          TabOrder = 7
          Width = 610
        end
        object lblTelefone: TcxLabel
          Left = 482
          Top = 5
          Caption = 'Telefone:'
          FocusControl = txtedtTelefone
          Transparent = True
        end
        object txtedtTelefone: TcxTextEdit
          Left = 482
          Top = 25
          Style.Color = clInfoBk
          TabOrder = 15
          Text = 'txtedtTipo'
          Width = 132
        end
        object lbSituacao: TcxLabel
          Left = 482
          Top = 49
          Caption = 'Situa'#231#227'o:'
          FocusControl = txtedtSituacao
          Transparent = True
        end
        object txtedtSituacao: TcxTextEdit
          Left = 482
          Top = 69
          Style.Color = clInfoBk
          TabOrder = 17
          Text = 'txtedtTipo'
          Width = 132
        end
      end
    end
  end
end
