inherited dlgDocumentosFiscaisEventos: TdlgDocumentosFiscaisEventos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Documentos Fiscais - Eventos ::.'
  ClientHeight = 460
  ClientWidth = 692
  Position = poMainFormCenter
  ExplicitWidth = 698
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 16
  object gboxInformacoesDocumentoFiscal: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    TabOrder = 0
    Height = 104
    Width = 672
    object lblNumero: TcxLabel
      Left = 8
      Top = 8
      Caption = 'N'#250'mero:'
      FocusControl = dbcurredtNumero
      Transparent = True
    end
    object dbcurredtNumero: TcxDBCurrencyEdit
      Left = 8
      Top = 28
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = dsDocumentos_Fiscais
      Enabled = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '00000000'
      TabOrder = 1
      Width = 88
    end
    object lblDataEmissao: TcxLabel
      Left = 151
      Top = 8
      Caption = 'Emiss'#227'o:'
      FocusControl = dbdtedtDataEmissao
      Transparent = True
    end
    object dbdtedtDataEmissao: TcxDBDateEdit
      Left = 151
      Top = 28
      DataBinding.DataField = 'data_emissao'
      DataBinding.DataSource = dsDocumentos_Fiscais
      Enabled = False
      TabOrder = 3
      Width = 88
    end
    object lblSerie: TcxLabel
      Left = 102
      Top = 8
      Caption = 'S'#233'rie:'
      FocusControl = dbcurredtSerie
      Transparent = True
    end
    object dbcurredtSerie: TcxDBCurrencyEdit
      Left = 102
      Top = 28
      DataBinding.DataField = 'serie_nota'
      DataBinding.DataSource = dsDocumentos_Fiscais
      Enabled = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '##0'
      TabOrder = 5
      Width = 43
    end
    object lblChave: TcxLabel
      Left = 8
      Top = 52
      Caption = 'Chave:'
      FocusControl = dbtxtedtChave
      Transparent = True
    end
    object dbtxtedtChave: TcxDBTextEdit
      Left = 8
      Top = 72
      DataBinding.DataField = 'chave'
      DataBinding.DataSource = dsDocumentos_Fiscais
      Enabled = False
      TabOrder = 7
      Width = 395
    end
    object lblRecibo: TcxLabel
      Left = 409
      Top = 52
      Caption = 'Recibo:'
      FocusControl = dbtxtedtRecibo
      Transparent = True
    end
    object dbtxtedtRecibo: TcxDBTextEdit
      Left = 409
      Top = 72
      DataBinding.DataField = 'recibo'
      DataBinding.DataSource = dsDocumentos_Fiscais
      Enabled = False
      TabOrder = 9
      Width = 124
    end
    object lblProtocoloAutorizacao: TcxLabel
      Left = 539
      Top = 52
      Caption = 'Autoriza'#231#227'o:'
      FocusControl = dbtxtedtProtocoloAutorizacao
      Transparent = True
    end
    object dbtxtedtProtocoloAutorizacao: TcxDBTextEdit
      Left = 539
      Top = 72
      DataBinding.DataField = 'protocolo_autorizacao'
      DataBinding.DataSource = dsDocumentos_Fiscais
      Enabled = False
      TabOrder = 11
      Width = 124
    end
  end
  object gboxInformacoesEvento: TcxGroupBox
    Left = 8
    Top = 123
    PanelStyle.Active = True
    TabOrder = 1
    Height = 280
    Width = 672
    object lblTipoEvento: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Tipo do Evento:'
      Transparent = True
    end
    object dbcmbTipoEvento: TcxDBComboBox
      Left = 8
      Top = 28
      DataBinding.DataField = 'tipo_evento'
      DataBinding.DataSource = dsDocumentos_Fiscais_Eventos
      Enabled = False
      Properties.Items.Strings = (
        'Cancelamento'
        'Carta de Corre'#231#227'o')
      TabOrder = 1
      Width = 137
    end
    object gboxTextoEvento: TcxGroupBox
      Left = 8
      Top = 62
      Caption = 'Justificativa:'
      TabOrder = 2
      Height = 202
      Width = 655
      object dbmmoTextoEvento: TcxDBMemo
        Left = 3
        Top = 18
        Align = alClient
        DataBinding.DataField = 'texto_evento'
        DataBinding.DataSource = dsDocumentos_Fiscais_Eventos
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        ExplicitTop = 15
        Height = 174
        Width = 649
      end
    end
  end
  object btnConfirmar: TcxButton
    Left = 229
    Top = 414
    Width = 114
    Height = 36
    Caption = 'C&onfirmar'
    OptionsImage.ImageIndex = 4
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 2
  end
  object btnCancelar: TcxButton
    Left = 349
    Top = 414
    Width = 114
    Height = 36
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 3
  end
  object dsDocumentos_Fiscais_Eventos: TDataSource
    AutoEdit = False
    DataSet = dmDocumentosFiscais.qryDocumentos_Fiscais_Eventos
    Left = 601
    Top = 297
  end
  object dsDocumentos_Fiscais: TDataSource
    AutoEdit = False
    DataSet = dmDocumentosFiscais.qryDocumentos_Fiscais
    Left = 602
    Top = 254
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 601
    Top = 35
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 601
    Top = 79
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryOperadores
    Left = 601
    Top = 123
  end
  object dsMovimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos
    Left = 601
    Top = 167
  end
  object dsMovimentos_Operacoes: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos_Operacoes
    Left = 601
    Top = 211
  end
end
