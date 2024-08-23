inherited dlgSangria: TdlgSangria
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Sangria ::.'
  ClientHeight = 299
  ClientWidth = 616
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 622
  ExplicitHeight = 328
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    TabOrder = 0
    Height = 233
    Width = 597
    object lblDataMovimento: TcxLabel
      Left = 12
      Top = 88
      Caption = 'Data do Movimento:'
      Transparent = True
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
    object lblValorSangria: TcxLabel
      Left = 12
      Top = 124
      Caption = 'Valor da Sangria:'
      Transparent = True
    end
    object dbdtedtDataMovimento: TcxDBDateEdit
      Left = 137
      Top = 84
      DataBinding.DataField = 'data_movimento'
      DataBinding.DataSource = dsMovimentos
      Enabled = False
      TabOrder = 5
      Width = 153
    end
    object lblHistorico: TcxLabel
      Left = 12
      Top = 160
      Caption = 'Hist'#243'rico:'
      Transparent = True
    end
    object dbcuredtValor: TcxDBCurrencyEdit
      Left = 137
      Top = 120
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = dsMovimentos_Operacoes
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 7
      Width = 153
    end
    object dbtxtedtHistorico: TcxDBTextEdit
      Left = 137
      Top = 156
      DataBinding.DataField = 'historico'
      DataBinding.DataSource = dsMovimentos_Operacoes
      Properties.CharCase = ecUpperCase
      TabOrder = 8
      Width = 444
    end
    object lblCentroCusto: TcxLabel
      Left = 12
      Top = 196
      Caption = 'Centro de Custo:'
      Transparent = True
    end
    object dblkpcmbCentroCusto: TcxDBLookupComboBox
      Left = 137
      Top = 192
      DataBinding.DataField = 'id_centro'
      DataBinding.DataSource = dsMovimentos_Operacoes
      Properties.GridMode = True
      Properties.KeyFieldNames = 'id_centro'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCentros_Custos_LookUp
      TabOrder = 11
      Width = 444
    end
    object lblValorSaldoDisponivel: TcxLabel
      Left = 303
      Top = 88
      Caption = 'Saldo Dispon'#237'vel:'
      Transparent = True
    end
    object curredtValorSaldoDisponivel: TcxCurrencyEdit
      Left = 428
      Top = 84
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 13
      Width = 153
    end
  end
  object btnConfirmar: TcxDBBotaoGravar
    Left = 190
    Top = 252
    Width = 114
    Height = 36
    Caption = 'C&onfirmar'
    ModalResult = 0
    OptionsImage.ImageIndex = 4
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 2
    OnClick = btnConfirmarClick
    DataSource = dsMovimentos_Operacoes
  end
  object btnCancelar: TcxDBBotaoCancelar
    Left = 313
    Top = 252
    Width = 114
    Height = 36
    Cancel = True
    Caption = '&Cancelar'
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = dmLeiaute.cxImageList24
    TabOrder = 1
    DataSource = dsMovimentos_Operacoes
  end
  object dsOperadores: TDataSource
    DataSet = dmPDV.qryOperadores
    Left = 540
    Top = 60
  end
  object dsTerminais: TDataSource
    DataSet = dmPDV.qryTerminais
    Left = 540
    Top = 104
  end
  object dsMovimentos: TDataSource
    DataSet = dmPDV.qryMovimentos
    Left = 540
    Top = 148
  end
  object dsCentros_Custos_LookUp: TDataSource
    DataSet = dmPDV.qryCentros_Custos_LookUp
    Left = 540
    Top = 236
  end
  object dsMovimentos_Operacoes: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos_Operacoes
    Left = 540
    Top = 192
  end
end
