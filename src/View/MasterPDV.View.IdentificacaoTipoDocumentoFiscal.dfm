inherited dlgIdentificacaoTipoDocumentoFiscal: TdlgIdentificacaoTipoDocumentoFiscal
  BorderStyle = bsDialog
  Caption = 'Tipo do Documento Fiscal'
  ClientHeight = 134
  ClientWidth = 457
  Font.Height = -37
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  ExplicitWidth = 463
  ExplicitHeight = 163
  PixelsPerInch = 96
  TextHeight = 45
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 134
    Width = 457
    object lblNFe: TcxLabel
      Left = 253
      Top = 57
      TabStop = False
      Caption = '2. NF-e'
      Transparent = True
    end
    object lblNFCe: TcxLabel
      Left = 65
      Top = 57
      Caption = '1. NFC-e'
      Transparent = True
    end
    object lblTitulo: TcxLabel
      Left = 3
      Top = 3
      Align = alTop
      Caption = 'lblTitulo'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -32
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 453
    end
  end
end
