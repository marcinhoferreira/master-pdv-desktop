inherited frmDispositivos: TfrmDispositivos
  Tag = 520
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Dispositivos ::.'
  ClientHeight = 473
  ClientWidth = 492
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 498
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 16
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 73
    Width = 492
    object btnIncluir: TcxDBBotao
      Left = 4
      Top = 4
      Width = 76
      Height = 64
      Caption = 'I&ncluir'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      OnClick = btnIncluirClick
      DataSource = dsDispositivos
      DisableReasons = [drReadonly, drEditing]
    end
    object btnAlterar: TcxDBBotao
      Left = 85
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Alterar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      OnClick = btnAlterarClick
      DataSource = dsDispositivos
      DisableReasons = [drReadonly, drEditing, drEmpty]
    end
    object btnExcluir: TcxDBBotao
      Left = 166
      Top = 4
      Width = 76
      Height = 64
      Caption = 'E&xcluir'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      OnClick = btnExcluirClick
      DataSource = dsDispositivos
      DisableReasons = [drReadonly, drEditing, drEmpty]
    end
    object btnGravar: TcxDBBotao
      Left = 247
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Gravar'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = btnGravarClick
      DataSource = dsDispositivos
      DisableReasons = [drNotEditing]
    end
    object btnCancelar: TcxDBBotao
      Left = 328
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Cancelar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      OnClick = btnCancelarClick
      DataSource = dsDispositivos
      DisableReasons = [drNotEditing]
    end
    object btnFechar: TcxBotaoFechar
      Left = 410
      Top = 4
      Width = 76
      Height = 64
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 73
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 400
    Width = 492
    object pagDispositivos: TcxPageControl
      Left = 3
      Top = 3
      Width = 486
      Height = 394
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabVisualiza
      Properties.CustomButtons.Buttons = <>
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 488
      ExplicitHeight = 396
      ClientRectBottom = 392
      ClientRectLeft = 2
      ClientRectRight = 484
      ClientRectTop = 29
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdDispositivos: TcxGrid
          Left = 0
          Top = 0
          Width = 477
          Height = 362
          Align = alClient
          TabOrder = 0
          object dbtvwDispositivos: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsDispositivos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtvwDispositivosid_dispositivo: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id_dispositivo'
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwDispositivosdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object dbtvwDispositivosid_modelo: TcxGridDBColumn
              Caption = 'Modelo'
              DataBinding.FieldName = 'id_modelo'
              HeaderAlignmentHorz = taCenter
              MinWidth = 114
              Options.Editing = False
              Options.HorzSizing = False
              Width = 114
            end
            object dbtvwDispositivosvelocidade: TcxGridDBColumn
              DataBinding.FieldName = 'velocidade'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwDispositivostaxa_transmissao: TcxGridDBColumn
              DataBinding.FieldName = 'taxa_transmissao'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwDispositivosid_paridade: TcxGridDBColumn
              DataBinding.FieldName = 'id_paridade'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwDispositivosid_bit_parada: TcxGridDBColumn
              DataBinding.FieldName = 'id_bit_parada'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwDispositivoshandshake: TcxGridDBColumn
              DataBinding.FieldName = 'handshake'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.HorzSizing = False
            end
          end
          object grdDispositivosLevel1: TcxGridLevel
            GridView = dbtvwDispositivos
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'tabDetalhes'
        ImageIndex = 1
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 477
        ExplicitHeight = 362
        object lblIdDispositivo: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Id:'
          Transparent = True
        end
        object dblblIdDispositivo: TcxDBLabel
          Left = 8
          Top = 27
          DataBinding.DataField = 'id_dispositivo'
          DataBinding.DataSource = dsDispositivos
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 21
          Width = 66
          AnchorX = 74
        end
        object lblDescricao: TcxLabel
          Left = 8
          Top = 48
          Caption = 'Descri'#231#227'o:'
          FocusControl = dbtxtedtDescricao
          Transparent = True
        end
        object dbtxtedtDescricao: TcxDBTextEdit
          Left = 8
          Top = 68
          DataBinding.DataField = 'descricao'
          DataBinding.DataSource = dsDispositivos
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 224
        end
        object lblModelo: TcxLabel
          Left = 8
          Top = 92
          Caption = 'Modelo:'
          FocusControl = dbtxtedtModelo
          Transparent = True
        end
        object lblVelocidade: TcxLabel
          Left = 8
          Top = 136
          Caption = 'Velocidade:'
          FocusControl = dbcmbVelocidade
          Transparent = True
        end
        object dbcmbVelocidade: TcxDBComboBox
          Left = 8
          Top = 156
          DataBinding.DataField = 'velocidade'
          DataBinding.DataSource = dsDispositivos
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            '110'
            '300'
            '600'
            '1200'
            '2400'
            '4800'
            '9600'
            '14400'
            '19200'
            '38400'
            '56000'
            '57600')
          TabOrder = 9
          Width = 109
        end
        object lblTaxaTransmissao: TcxLabel
          Left = 8
          Top = 180
          Caption = 'Data Bits:'
          FocusControl = cmbTaxaTransmissao
          Transparent = True
        end
        object cmbTaxaTransmissao: TcxDBComboBox
          Left = 8
          Top = 200
          DataBinding.DataField = 'taxa_transmissao'
          DataBinding.DataSource = dsDispositivos
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            '5'
            '6'
            '7'
            '8')
          TabOrder = 11
          Width = 66
        end
        object lblParidade: TcxLabel
          Left = 8
          Top = 224
          Caption = 'Paridade:'
          FocusControl = dbcmbParidade
          Transparent = True
        end
        object dbcmbParidade: TcxDBComboBox
          Left = 8
          Top = 244
          DataBinding.DataField = 'id_paridade'
          DataBinding.DataSource = dsDispositivos
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'none'
            'odd'
            'even'
            'mark'
            'space')
          TabOrder = 13
          Width = 109
        end
        object lblBitParada: TcxLabel
          Left = 8
          Top = 269
          Caption = 'Stop Bits:'
          FocusControl = dbcmbBitParada
          Transparent = True
        end
        object dbcmbBitParada: TcxDBComboBox
          Left = 8
          Top = 289
          DataBinding.DataField = 'id_bit_parada'
          DataBinding.DataSource = dsDispositivos
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            's1'
            's1,5'
            's2')
          TabOrder = 15
          Width = 66
        end
        object lblHandshake: TcxLabel
          Left = 8
          Top = 315
          Caption = 'Handshaking:'
          FocusControl = dbcmbHandshake
          Transparent = True
        end
        object dbcmbHandshake: TcxDBComboBox
          Left = 8
          Top = 335
          DataBinding.DataField = 'handshake'
          DataBinding.DataSource = dsDispositivos
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'Nenhum'
            'XON/XOFF'
            'RTS/CTS'
            'DTR/DSR')
          TabOrder = 17
          Width = 109
        end
        object lblTipoDispositivo: TcxLabel
          Left = 238
          Top = 48
          Caption = 'Tipo:'
          FocusControl = dbcmbTipoDispositivo
          Transparent = True
        end
        object dbcmbTipoDispositivo: TcxDBComboBox
          Left = 238
          Top = 68
          DataBinding.DataField = 'tipo_dispositivo'
          DataBinding.DataSource = dsDispositivos
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'Balan'#231'a')
          TabOrder = 5
          Width = 109
        end
        object dbtxtedtModelo: TcxDBComboBox
          Left = 8
          Top = 112
          DataBinding.DataField = 'id_modelo'
          DataBinding.DataSource = dsDispositivos
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            'Filizola'
            'Toledo'
            'Toledo2090'
            'Toledo2180'
            'Urano'
            'LucasTec'
            'Magna'
            'Digitron'
            'Magellan'
            'UranoPOP'
            'Lider'
            'Rinnert'
            'Muller'
            'Saturno'
            'AFTS'
            'Generica'
            'Libratek')
          TabOrder = 7
          Width = 224
        end
      end
    end
  end
  object dsDispositivos: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryDispositivos
    Left = 436
    Top = 256
  end
end
