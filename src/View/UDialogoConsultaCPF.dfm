object dlgConsultaCPF: TdlgConsultaCPF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Consultar CPF ::.'
  ClientHeight = 242
  ClientWidth = 634
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
    Height = 242
    Width = 634
    object pagConsultaCPF: TcxPageControl
      Left = 3
      Top = 3
      Width = 628
      Height = 236
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabConsulta
      Properties.CustomButtons.Buttons = <>
      ExplicitWidth = 623
      ClientRectBottom = 234
      ClientRectLeft = 2
      ClientRectRight = 626
      ClientRectTop = 26
      object tabConsulta: TcxTabSheet
        Caption = 'tabConsulta'
        ImageIndex = 0
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 617
        ExplicitHeight = 202
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
        object lblNumeroCPF: TcxLabel
          Left = 227
          Top = 8
          Caption = 'N'#250'mero do CPF:'
          FocusControl = mskedtNumeroCPF
        end
        object mskedtNumeroCPF: TcxMaskEdit
          Left = 227
          Top = 28
          Properties.EditMask = '999.999.999-99;0;_'
          TabOrder = 2
          Text = '           '
          Width = 184
        end
        object lblCaptcha: TcxLabel
          Left = 227
          Top = 108
          Caption = 'Captcha:'
          FocusControl = txtedtCaptcha
        end
        object txtedtCaptcha: TcxTextEdit
          Left = 227
          Top = 128
          TabOrder = 4
          Width = 184
        end
        object btnAtualizarCaptcha: TcxButton
          Left = 60
          Top = 155
          Width = 105
          Height = 32
          Caption = 'Atualizar Captcha'
          TabOrder = 5
          OnClick = btnAtualizarCaptchaClick
        end
        object lblDataNascimento: TcxLabel
          Left = 227
          Top = 60
          Caption = 'Data de Nascimento:'
          FocusControl = dtedtDataNascimento
        end
        object dtedtDataNascimento: TcxDateEdit
          Left = 227
          Top = 80
          TabOrder = 7
          Width = 184
        end
        object btnConsultar: TcxButton
          Left = 492
          Top = 69
          Width = 105
          Height = 32
          Caption = 'Consultar'
          TabOrder = 8
          OnClick = btnConsultarClick
        end
      end
      object tabResultado: TcxTabSheet
        Caption = 'tabResultado'
        ImageIndex = 1
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 617
        ExplicitHeight = 202
        object grpboxFerramentas: TcxGroupBox
          Left = 0
          Top = 168
          Align = alBottom
          PanelStyle.Active = True
          TabOrder = 0
          ExplicitTop = 162
          ExplicitWidth = 617
          Height = 40
          Width = 624
          object btnOK: TcxButton
            Left = 220
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
            Left = 311
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
        object lblNome: TcxLabel
          Left = 4
          Top = 4
          Caption = 'Nome:'
          FocusControl = txtedtNome
          Transparent = True
        end
        object txtedtNome: TcxTextEdit
          Left = 4
          Top = 24
          Enabled = False
          Style.Color = clInfoBk
          StyleDisabled.Color = clInfoBk
          TabOrder = 2
          Width = 438
        end
        object lblSituacaoCadastral: TcxLabel
          Left = 448
          Top = 3
          Caption = 'Situa'#231#227'o cadastral:'
          FocusControl = txtedtSituacaoCadastral
          Transparent = True
        end
        object txtedtSituacaoCadastral: TcxTextEdit
          Left = 448
          Top = 24
          Enabled = False
          Style.Color = clInfoBk
          StyleDisabled.Color = clInfoBk
          TabOrder = 4
          Width = 157
        end
        object lblDigitoVerificador: TcxLabel
          Left = 4
          Top = 51
          Caption = 'D'#237'gito verificador:'
          FocusControl = txtedtDigitoVerificador
          Transparent = True
        end
        object txtedtDigitoVerificador: TcxTextEdit
          Left = 4
          Top = 72
          Enabled = False
          Style.Color = clInfoBk
          StyleDisabled.Color = clInfoBk
          TabOrder = 6
          Width = 157
        end
        object txtedtEmissao: TcxTextEdit
          Left = 167
          Top = 72
          Enabled = False
          Style.Color = clInfoBk
          StyleDisabled.Color = clInfoBk
          TabOrder = 7
          Width = 275
        end
        object lblEmissao: TcxLabel
          Left = 167
          Top = 51
          Caption = 'Comprovante emitido '#224's:'
          FocusControl = txtedtEmissao
          Transparent = True
        end
        object txtedtDataInscricao: TcxTextEdit
          Left = 448
          Top = 72
          Enabled = False
          Style.Color = clInfoBk
          StyleDisabled.Color = clInfoBk
          TabOrder = 9
          Width = 157
        end
        object lblDataInscricao: TcxLabel
          Left = 448
          Top = 51
          Caption = 'Data da inscri'#231#227'o:'
          FocusControl = txtedtDataInscricao
          Transparent = True
        end
        object txtedtControleComprovante: TcxTextEdit
          Left = 3
          Top = 121
          Enabled = False
          Style.Color = clInfoBk
          StyleDisabled.Color = clInfoBk
          TabOrder = 11
          Width = 602
        end
        object lblControleComprovante: TcxLabel
          Left = 3
          Top = 100
          Caption = 'C'#243'digo de controle do comprovante:'
          FocusControl = txtedtControleComprovante
          Transparent = True
        end
      end
    end
  end
end
