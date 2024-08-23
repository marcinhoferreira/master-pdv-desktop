inherited dlgConsultaDocumentosFiscais: TdlgConsultaDocumentosFiscais
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Consulta Documentos Fiscais ::.'
  ClientHeight = 571
  ClientWidth = 918
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 924
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  object gboxLocalizar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 109
    Width = 918
    object lblTerminal: TcxLabel
      Left = 244
      Top = 8
      Caption = 'Terminal:'
      FocusControl = dbtxtedtDescricao
      Transparent = True
    end
    object dbtxtedtDescricao: TcxDBTextEdit
      Left = 244
      Top = 28
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsTerminais
      Enabled = False
      StyleDisabled.Color = clInfoBk
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 1
      Width = 184
    end
    object lblNomeOperador: TcxLabel
      Left = 244
      Top = 56
      Caption = 'Operador:'
      FocusControl = dbtxtedtNomeOperador
      Transparent = True
    end
    object dbtxtedtNomeOperador: TcxDBTextEdit
      Left = 244
      Top = 76
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsOperadores
      Enabled = False
      StyleDisabled.Color = clInfoBk
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 3
      Width = 661
    end
    object gboxPeriodo: TcxGroupBox
      Left = 8
      Top = 8
      Caption = 'Per'#237'odo:'
      TabOrder = 4
      Height = 92
      Width = 230
      object lblDataInicial: TcxLabel
        Left = 12
        Top = 16
        Caption = 'De:'
        FocusControl = dtedtDataInicial
      end
      object dtedtDataInicial: TcxDateEdit
        Left = 12
        Top = 40
        TabOrder = 1
        OnEnter = dtedtDataInicialEnter
        OnExit = dtedtDataInicialExit
        OnKeyDown = dtedtDataInicialKeyDown
        Width = 101
      end
      object lblDataFinal: TcxLabel
        Left = 119
        Top = 16
        Caption = 'At'#233':'
        FocusControl = dtedtDataFinal
      end
      object dtedtDataFinal: TcxDateEdit
        Left = 119
        Top = 40
        TabOrder = 3
        OnEnter = dtedtDataFinalEnter
        OnExit = dtedtDataFinalExit
        OnKeyDown = dtedtDataFinalKeyDown
        Width = 101
      end
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 109
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 422
    Width = 918
    object pagDocumentosFiscais: TcxPageControl
      Left = 3
      Top = 3
      Width = 912
      Height = 416
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabVisualiza
      Properties.CustomButtons.Buttons = <>
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 914
      ExplicitHeight = 418
      ClientRectBottom = 414
      ClientRectLeft = 2
      ClientRectRight = 910
      ClientRectTop = 29
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdDocumentosFiscais: TcxGrid
          Left = 0
          Top = 0
          Width = 914
          Height = 391
          Align = alClient
          TabOrder = 0
          object dbtabvwDocumentosFiscais: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsDocumentosFiscais
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00'
                Kind = skSum
                FieldName = 'valor_total'
                Column = dbtabvwDocumentosFiscaisvalor_total
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtabvwDocumentosFiscaisstatus: TcxGridDBColumn
              DataBinding.FieldName = 'status'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = imglstStatus
              Properties.Items = <
                item
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  ImageIndex = 0
                  Value = '2'
                end
                item
                  ImageIndex = 0
                  Value = '3'
                end
                item
                  ImageIndex = 0
                  Value = '4'
                end
                item
                  ImageIndex = 2
                  Value = '5'
                end
                item
                  ImageIndex = 1
                  Value = '6'
                end
                item
                  ImageIndex = 1
                  Value = '7'
                end
                item
                  ImageIndex = 1
                  Value = '8'
                end
                item
                  ImageIndex = 3
                  Value = '9'
                end>
              HeaderAlignmentHorz = taCenter
              MinWidth = 24
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 24
              IsCaptionAssigned = True
            end
            object dbtabvwDocumentosFiscaisid_nota_fiscal: TcxGridDBColumn
              DataBinding.FieldName = 'id_nota_fiscal'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisid_modelo: TcxGridDBColumn
              Caption = 'Modelo'
              DataBinding.FieldName = 'id_modelo'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'NF-e'
                'NFC-e'
                'NFS-e')
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 64
            end
            object dbtabvwDocumentosFiscaisnumero: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'numero'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = '00000000'
              HeaderAlignmentHorz = taCenter
              MinWidth = 80
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 80
            end
            object dbtabvwDocumentosFiscaisserie_nota: TcxGridDBColumn
              Caption = 'S'#233'rie'
              DataBinding.FieldName = 'serie_nota'
              HeaderAlignmentHorz = taCenter
              MinWidth = 52
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 52
            end
            object dbtabvwDocumentosFiscaisdata_emissao: TcxGridDBColumn
              Caption = 'Data de Emiss'#227'o'
              DataBinding.FieldName = 'data_emissao'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 136
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 136
            end
            object dbtabvwDocumentosFiscaisid_forma_emissao: TcxGridDBColumn
              Caption = 'Forma de Emiss'#227'o'
              DataBinding.FieldName = 'id_forma_emissao'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'Normal'
                'Conting'#234'nca FS'
                'Conting'#234'ncia com SCAN'
                'Conting'#234'ncia via DPEC'
                'Conting'#234'ncia FS-DA')
              HeaderAlignmentHorz = taCenter
              MinWidth = 124
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 124
            end
            object dbtabvwDocumentosFiscaisid_destinatario: TcxGridDBColumn
              DataBinding.FieldName = 'id_destinatario'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaistipo_pessoa_destinatario: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_pessoa_destinatario'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 11
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisrazao_social_destinatario: TcxGridDBColumn
              Caption = 'Destinat'#225'rio'
              DataBinding.FieldName = 'razao_social_destinatario'
              HeaderAlignmentHorz = taCenter
              MinWidth = 224
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
              Width = 364
            end
            object dbtabvwDocumentosFiscaisdocumento_rfb_numero: TcxGridDBColumn
              DataBinding.FieldName = 'documento_rfb_numero'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 144
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaischave: TcxGridDBColumn
              Caption = 'Chave'
              DataBinding.FieldName = 'chave'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 224
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 224
            end
            object dbtabvwDocumentosFiscaislote: TcxGridDBColumn
              DataBinding.FieldName = 'lote'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisrecibo: TcxGridDBColumn
              Caption = 'Recibo'
              DataBinding.FieldName = 'recibo'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 100
            end
            object dbtabvwDocumentosFiscaisprotocolo_autorizacao: TcxGridDBColumn
              Caption = 'Protocolo de Autoriza'#231#227'o'
              DataBinding.FieldName = 'protocolo_autorizacao'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 100
            end
            object dbtabvwDocumentosFiscaisvalor_produtos: TcxGridDBColumn
              DataBinding.FieldName = 'valor_produtos'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisvalor_total: TcxGridDBColumn
              Caption = 'Valor Total'
              DataBinding.FieldName = 'valor_total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
              Width = 100
            end
            object dbtabvwDocumentosFiscaisvalor_recebido: TcxGridDBColumn
              DataBinding.FieldName = 'valor_recebido'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisvalor_troco: TcxGridDBColumn
              DataBinding.FieldName = 'valor_troco'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisvalor_base_icms: TcxGridDBColumn
              DataBinding.FieldName = 'valor_base_icms'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisvalor_icms: TcxGridDBColumn
              DataBinding.FieldName = 'valor_icms'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisid_venda: TcxGridDBColumn
              DataBinding.FieldName = 'id_venda'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisdata_movimento: TcxGridDBColumn
              DataBinding.FieldName = 'data_movimento'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 130
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisdocumento: TcxGridDBColumn
              DataBinding.FieldName = 'documento'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisstatus_venda: TcxGridDBColumn
              DataBinding.FieldName = 'status_venda'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 11
              Options.Editing = False
              Options.Focusing = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object dbtabvwDocumentosFiscaisinformacoes_adicionais: TcxGridDBColumn
              DataBinding.FieldName = 'informacoes_adicionais'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.HorzSizing = False
              Options.Moving = False
            end
          end
          object grdDocumentosFiscaisLevel1: TcxGridLevel
            GridView = dbtabvwDocumentosFiscais
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'tabDetalhes'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 531
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 2
    Height = 40
    Width = 918
    object btnEnviar: TcxDBBotao
      Left = 124
      Top = 4
      Width = 114
      Height = 32
      Caption = 'E&nviar'
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 0
      OnClick = btnEnviarClick
      DataSource = dsDocumentosFiscais
      DisableReasons = [drEmpty]
    end
    object btnCancelar: TcxDBBotao
      Left = 484
      Top = 4
      Width = 114
      Height = 32
      Caption = '&Cancelar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 1
      DataSource = dsDocumentosFiscais
      DisableReasons = [drEmpty]
    end
    object btnImprimir: TcxDBBotao
      Left = 364
      Top = 4
      Width = 114
      Height = 32
      Caption = '&Imprimir'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 2
      OnClick = btnImprimirClick
      DataSource = dsDocumentosFiscais
      DisableReasons = [drEmpty]
    end
    object btnFechar: TcxBotaoFechar
      Left = 604
      Top = 4
      Width = 114
      Height = 32
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 3
    end
    object btnConsultar: TcxDBBotao
      Left = 244
      Top = 4
      Width = 114
      Height = 32
      Caption = 'C&onsultar'
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 4
      OnClick = btnConsultarClick
      DataSource = dsDocumentosFiscais
      DisableReasons = [drEmpty]
    end
    object btnInformacoesAdicionais: TcxDBBotao
      Left = 4
      Top = 4
      Width = 114
      Height = 32
      Caption = 'Informa'#231#245'es Adicionais'
      OptionsImage.Images = dmLeiaute.cxImageList24
      TabOrder = 5
      WordWrap = True
      OnClick = btnInformacoesAdicionaisClick
      DataSource = dsDocumentosFiscais
      DisableReasons = [drEmpty]
    end
  end
  object imglstStatus: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 8520372
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000020170E2D6D4D2E979E7042DBB6804CFCB27D4AF69D6F
          42DA71502F9C23180E3000000000000000000000000000000000000000000000
          0000060503096E4D2E98B7814CFDB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB7814CFD7351309F0906040C0000000000000000000000000403
          0206886039BCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8F653CC60705030A00000000000000006C4C
          2D96B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF71502F9C0000000020160D2CB680
          4CFCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB7814DFE251A0F3367492B8FB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF7351309F9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA27244E0B47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BFA9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA07143DE68492B90B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A020160D2CB781
          4CFDB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF281D1138000000006D4D
          2E97B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A000000000000000000403
          0206896139BEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8E643BC50705030A00000000000000000000
          0000050402076E4E2E99B7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF7351309F060503090000000000000000000000000000
          00000000000000000000251A0F336E4E2E999F7042DCB7814CFDB27E4BF79E70
          42DB71502F9C271C103600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000E2A3F0120
          6394001C5D8A011D608B001D618A011E628A011D618A001D628B001C6189001C
          618B011B5F8A011B5B89011A5A8A00185689001D5C92000A2A47082B5978A1C9
          F1FA9EC2EEFAA4CCF1FAACCFF3FBB2D6F3FABCDBF4FBC8DFF5FBC9DEF4FABFD9
          F1FBB2D6F2FBAACEF0FAA0C9EEF99DBFECF977B5ECF80624567C011842630075
          FBFF007BFFFF008FFFFF03A8FFFF0DBEFFFF2ED2FFFF0BC3FFFF0BC3FFFF35D8
          FFFF15C4FFFF05AEFFFF0091FFFF0096FFFF0192FCFF010E355A000103050753
          B2E7008DFFFF0064FFFF008DFFFF099CFFFF0080FFFFDBEFFFFFE5F6FFFF0085
          FFFF0D9EFFFF0289FFFF017FFFFF02B7FFFF02429EDA0000010200000000010C
          274228B3FAFF028CFEFF0065FFFF0088FFFF0072FFFFFFFFFAFFFFFFFBFF0075
          FFFF0090FFFF007EFFFF0198FFFF088EF9FF00061F3900000000000000000000
          0101114C97CF2ADEFFFF0F9BF8FF007AFFFF005AFFFF005EEAFF005EEAFF006E
          FFFF0083FFFF007CFFFF05BEFFFF023285C20000000000000000000000000000
          00000005152633A3EEFE11A7FDFF1CADF5FF0051FBFFFFFFFFFFFFFFFFFF003A
          F3FF0079FEFF0096FFFF0B8AF5FE00020F1E0000000000000000000000000000
          000000000000133B7EB933D1FFFF108DE4FF005EE6FFFFFFFFFFFFFFFEFF001B
          DEFF006FFEFF04B7FFFF042F72AA000000000000000000000000000000000000
          000000000000000209113EA0E2FE17AAFBFF0050D9FFFFFFFFFFFFFFFFFF0053
          E6FF008BFFFF0E83ECFC0002080F000000000000000000000000000000000000
          000000000000000000000D2E659A4CDCFDFF0053DAFFFFFFFFFFFFFFFFFF0062
          F8FF22E0FFFF06265C8D00000000000000000000000000000000000000000000
          000000000000000000000001050A4092D5F90195F4FFAAC9EDFFAEC9F0FF00AE
          FFFF248DE3F80001040800000000000000000000000000000000000000000000
          00000000000000000000000000000A204F7B54D7FCFF0077EBFF0081FDFF37DE
          FFFF041C48700000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000103063986CFF334CDFFFF2ED6FFFF2683
          D5F0000103050000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004163B5E4FE1FFFF43DEFFFF0215
          3857000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000002032F82C7E32679BFDC0000
          0102000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000109151F0108121C0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
      end>
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 692
    Top = 172
  end
  object dsTerminais: TDataSource
    DataSet = dmPDV.qryTerminais
    Left = 692
    Top = 216
  end
  object dsOperadores: TDataSource
    DataSet = dmPDV.qryOperadores
    Left = 692
    Top = 260
  end
  object dsMovimentos: TDataSource
    DataSet = dmPDV.qryMovimentos
    Left = 692
    Top = 304
  end
  object dsDocumentosFiscais: TDataSource
    DataSet = qryDocumentosFiscais
    Left = 692
    Top = 392
  end
  object qryDocumentosFiscais: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO notas_fiscais'
      
        '  (id_nota_fiscal, informacoes_adicionais, chave, recibo, lote, ' +
        'protocolo_autorizacao, status)'
      'VALUES'
      
        '  (:id_nota_fiscal, :informacoes_adicionais, :chave, :recibo, :l' +
        'ote, :protocolo_autorizacao, :status)')
    SQLDelete.Strings = (
      'DELETE FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal')
    SQLUpdate.Strings = (
      'UPDATE notas_fiscais'
      'SET'
      
        '  id_nota_fiscal = :id_nota_fiscal, informacoes_adicionais = :in' +
        'formacoes_adicionais, chave = :chave, recibo = :recibo, lote = :' +
        'lote, protocolo_autorizacao = :protocolo_autorizacao, status = :' +
        'status'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal')
    SQLLock.Strings = (
      'SELECT * FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :Old_id_nota_fiscal'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_fiscal, informacoes_adicionais, chave, recibo, lo' +
        'te, protocolo_autorizacao, status FROM notas_fiscais'
      'WHERE'
      '  id_nota_fiscal = :id_nota_fiscal')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM notas_fiscais')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT nf.id_nota_fiscal, nf.id_modelo, nf.numero, nf.serie_nota' +
        ', nf.data_emissao, '
      'nf.id_forma_emissao, '
      
        'nf.id_destinatario, c.tipo_pessoa AS tipo_pessoa_destinatario, c' +
        '.razao AS razao_social_destinatario, '
      'CASE'
      '   WHEN nf.id_modelo = '#39'65'#39' THEN nf.documento_rfb_numero'
      '   ELSE'
      '      CASE'
      '         WHEN c.tipo_pessoa = '#39'F'#39' THEN c.cpf'
      '         ELSE'
      '            c.cnpj'
      '      END'
      'END documento_rfb_numero, '
      'nf.chave, nf.lote, nf.recibo, nf.protocolo_autorizacao,'
      
        '(COALESCE(nf.valor_bruto, 0) + COALESCE(nf.valor_acrescimo, 0) -' +
        ' COALESCE(nf.valor_desconto, 0)) AS valor_produtos, '
      
        '(COALESCE(nf.valor_bruto, 0) + COALESCE(nf.valor_acrescimo, 0) -' +
        ' COALESCE(nf.valor_desconto, 0) + COALESCE(nf.valor_frete, 0) + ' +
        'COALESCE(nf.valor_seguro, 0) + COALESCE(nf.valor_outras_despesas' +
        ', 0)) AS valor_total,'
      'nf.valor_recebido, nf.valor_troco,'
      'nf.valor_base_icms, nf.valor_icms, nf.informacoes_adicionais,'
      'vnf.id_venda, v.data_movimento, v.documento,'
      'v.status AS status_venda, '
      'nf.status'
      'FROM notas_fiscais nf'
      '   INNER JOIN vw_clientes c'
      '      ON nf.id_destinatario = c.id_parceiro'
      '   INNER JOIN (vendas_notas_fiscais vnf'
      '                  INNER JOIN vendas v'
      '                     ON vnf.id_venda = v.id_venda)'
      '      ON nf.id_nota_fiscal = vnf.id_nota_fiscal'
      'WHERE v.id_caixa = :id_terminal'
      '-- AND v.data_movimento = :data_movimento'
      '-- AND v.id_operador = :id_operador'
      ' &condicao'
      
        'ORDER BY nf.data_emissao DESC, nf.numero DESC, nf.serie_nota DES' +
        'C')
    MasterSource = dsTerminais
    BeforeOpen = qryDocumentosFiscaisBeforeOpen
    Left = 692
    Top = 348
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_terminal'
        ParamType = ptInput
        Value = nil
      end>
    MacroData = <
      item
        Name = 'condicao'
      end>
    object qryDocumentosFiscaisid_nota_fiscal: TLargeintField
      FieldName = 'id_nota_fiscal'
    end
    object qryDocumentosFiscaisid_modelo: TStringField
      FieldName = 'id_modelo'
      Required = True
      OnGetText = qryDocumentosFiscaisid_modeloGetText
      OnSetText = qryDocumentosFiscaisid_modeloSetText
      FixedChar = True
      Size = 2
    end
    object qryDocumentosFiscaisnumero: TLargeintField
      FieldName = 'numero'
      Required = True
    end
    object qryDocumentosFiscaisserie_nota: TStringField
      FieldName = 'serie_nota'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryDocumentosFiscaisdata_emissao: TDateTimeField
      FieldName = 'data_emissao'
      Required = True
    end
    object qryDocumentosFiscaisid_forma_emissao: TStringField
      FieldName = 'id_forma_emissao'
      OnGetText = qryDocumentosFiscaisid_forma_emissaoGetText
      OnSetText = qryDocumentosFiscaisid_forma_emissaoSetText
      FixedChar = True
      Size = 1
    end
    object qryDocumentosFiscaisid_destinatario: TLargeintField
      FieldName = 'id_destinatario'
    end
    object qryDocumentosFiscaistipo_pessoa_destinatario: TStringField
      FieldName = 'tipo_pessoa_destinatario'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryDocumentosFiscaisrazao_social_destinatario: TStringField
      FieldName = 'razao_social_destinatario'
      ReadOnly = True
      Size = 60
    end
    object qryDocumentosFiscaisdocumento_rfb_numero: TStringField
      FieldName = 'documento_rfb_numero'
      ReadOnly = True
    end
    object qryDocumentosFiscaischave: TStringField
      FieldName = 'chave'
      Size = 44
    end
    object qryDocumentosFiscaislote: TStringField
      FieldName = 'lote'
      Size = 15
    end
    object qryDocumentosFiscaisrecibo: TStringField
      FieldName = 'recibo'
      Size = 15
    end
    object qryDocumentosFiscaisprotocolo_autorizacao: TStringField
      FieldName = 'protocolo_autorizacao'
      Size = 15
    end
    object qryDocumentosFiscaisvalor_produtos: TFloatField
      FieldName = 'valor_produtos'
      ReadOnly = True
    end
    object qryDocumentosFiscaisvalor_total: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
    end
    object qryDocumentosFiscaisvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object qryDocumentosFiscaisvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
    object qryDocumentosFiscaisvalor_base_icms: TFloatField
      FieldName = 'valor_base_icms'
    end
    object qryDocumentosFiscaisvalor_icms: TFloatField
      FieldName = 'valor_icms'
    end
    object qryDocumentosFiscaisinformacoes_adicionais: TMemoField
      DisplayLabel = 'Informa'#231#245'es Adicionais'
      FieldName = 'informacoes_adicionais'
      BlobType = ftMemo
    end
    object qryDocumentosFiscaisid_venda: TLargeintField
      FieldName = 'id_venda'
      ReadOnly = True
      Required = True
    end
    object qryDocumentosFiscaisdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      ReadOnly = True
      Required = True
    end
    object qryDocumentosFiscaisdocumento: TLargeintField
      FieldName = 'documento'
      ReadOnly = True
      Required = True
    end
    object qryDocumentosFiscaisstatus_venda: TStringField
      FieldName = 'status_venda'
      ReadOnly = True
      Size = 1
    end
    object qryDocumentosFiscaisstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
