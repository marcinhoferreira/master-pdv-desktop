inherited dlgCampanhaDesconto: TdlgCampanhaDesconto
  BorderStyle = bsDialog
  Caption = '.:: Campanha de Desconto ::.'
  ClientHeight = 291
  ClientWidth = 634
  Font.Height = -19
  Position = poScreenCenter
  ExplicitWidth = 640
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 23
  object gboxTitulo: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 48
    Width = 634
    object lblTitulo: TcxLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Align = alClient
      Caption = 'lblTitulo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 317
      AnchorY = 24
    end
  end
  object gboxAreaDeTrabalho: TcxGroupBox
    Left = 0
    Top = 48
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 195
    Width = 634
    object lblCodigo: TcxLabel
      Left = 16
      Top = 16
      Caption = 'C'#243'digo:'
      FocusControl = curredtCodigo
      Transparent = True
    end
    object curredtCodigo: TcxCurrencyEdit
      Left = 16
      Top = 49
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 4
      TabOrder = 1
      OnEnter = curredtCodigoEnter
      OnExit = curredtCodigoExit
      OnKeyPress = curredtCodigoKeyPress
      Width = 121
    end
    object lblPromotor: TcxLabel
      Left = 148
      Top = 16
      Caption = 'Promotor(a):'
      Transparent = True
    end
    object txtedtPromotor: TcxTextEdit
      Left = 148
      Top = 49
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 469
    end
  end
  object gboxBarraDeFerramentas: TcxGroupBox
    Left = 0
    Top = 243
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 2
    Height = 48
    Width = 634
    object btnConfirmar: TcxButton
      Left = 185
      Top = 6
      Width = 124
      Height = 36
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TcxButton
      Left = 325
      Top = 6
      Width = 124
      Height = 36
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 1
    end
  end
  object dsCampanhas: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryCampanhas
    Left = 484
    Top = 129
  end
end
