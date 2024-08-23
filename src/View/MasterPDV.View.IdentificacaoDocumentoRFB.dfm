object dlgIdentificacaoDocumentoRFB: TdlgIdentificacaoDocumentoRFB
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Identifica'#231#227'o Documento Contribuinte ::.'
  ClientHeight = 152
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 133
    Width = 580
    object pagDocumentoRFB: TcxPageControl
      Left = 3
      Top = 3
      Width = 574
      Height = 127
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabDocumento
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      ClientRectBottom = 126
      ClientRectLeft = 1
      ClientRectRight = 573
      ClientRectTop = 1
      object tabOpcoes: TcxTabSheet
        Caption = 'tabOpcoes'
        ImageIndex = 0
        object btnCPF: TcxButton
          Left = 69
          Top = 36
          Width = 132
          Height = 48
          Caption = '1 - CPF'
          TabOrder = 0
          OnClick = btnCPFClick
        end
        object btnCNPJ: TcxButton
          Left = 221
          Top = 36
          Width = 132
          Height = 48
          Caption = '2 - CNPJ'
          TabOrder = 1
          OnClick = btnCNPJClick
        end
        object btnOutro: TcxButton
          Left = 373
          Top = 36
          Width = 132
          Height = 48
          Caption = '3 - Outro'
          TabOrder = 2
          OnClick = btnOutroClick
        end
      end
      object tabDocumento: TcxTabSheet
        Caption = 'tabDocumento'
        ImageIndex = 1
        object lblNumeroDocumentoRFB: TcxLabel
          Left = 8
          Top = 26
          Caption = 'N'#250'mero do Documento:'
          Transparent = True
        end
        object mskedtNumeroDocumentoRFB: TcxMaskEdit
          Left = 8
          Top = 61
          Properties.CharCase = ecUpperCase
          Properties.EditMask = '999.999.999-99;0;_'
          Properties.OnValidate = mskedtNumeroDocumentoRFBPropertiesValidate
          TabOrder = 1
          Text = '           '
          OnKeyDown = mskedtNumeroDocumentoRFBKeyDown
          Width = 545
        end
      end
    end
  end
end
