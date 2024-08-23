object dlgConsultaCEP: TdlgConsultaCEP
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Consulta CEP ::.'
  ClientHeight = 222
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pagConsultaCEP: TcxPageControl
    Left = 0
    Top = 0
    Width = 554
    Height = 222
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabConsulta
    Properties.CustomButtons.Buttons = <>
    ExplicitHeight = 211
    ClientRectBottom = 215
    ClientRectLeft = 4
    ClientRectRight = 547
    ClientRectTop = 27
    object tabConsulta: TcxTabSheet
      Caption = 'tabConsulta'
      ImageIndex = 0
      ExplicitHeight = 177
      object gboxConsultaCEP: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Por CEP'
        TabOrder = 0
        ExplicitHeight = 177
        Height = 188
        Width = 152
        object mskedtCEP: TcxMaskEdit
          Left = 14
          Top = 18
          Properties.EditMask = '99.999-999;0;_'
          TabOrder = 0
          Text = '        '
          Width = 121
        end
        object btnConsultarCEP: TcxButton
          Left = 14
          Top = 126
          Width = 121
          Height = 32
          Caption = 'Consultar'
          TabOrder = 1
          OnClick = btnConsultarCEPClick
        end
      end
      object gboxConsultaEndereco: TcxGroupBox
        Left = 152
        Top = 0
        Align = alClient
        Caption = 'Por Endere'#231'o'
        TabOrder = 1
        ExplicitHeight = 177
        Height = 188
        Width = 391
        object lblTipoLogradouro: TcxLabel
          Left = 11
          Top = 16
          Caption = 'Tipo:'
          FocusControl = txtedtTipoLogradouro
          Transparent = True
        end
        object txtedtTipoLogradouro: TcxTextEdit
          Left = 11
          Top = 36
          TabOrder = 1
          Width = 56
        end
        object txtedtLogradouro: TcxTextEdit
          Left = 73
          Top = 36
          TabOrder = 2
          Width = 310
        end
        object lblLogradouro: TcxLabel
          Left = 73
          Top = 16
          Caption = 'Logradouro:'
          FocusControl = txtedtLogradouro
          Transparent = True
        end
        object lblCidade: TcxLabel
          Left = 11
          Top = 62
          Caption = 'Cidade:'
          FocusControl = txtedtCidade
          Transparent = True
        end
        object txtedtCidade: TcxTextEdit
          Left = 11
          Top = 82
          TabOrder = 5
          Width = 184
        end
        object txtedtUF: TcxTextEdit
          Left = 201
          Top = 82
          TabOrder = 6
          Width = 39
        end
        object lblUF: TcxLabel
          Left = 201
          Top = 62
          Caption = 'UF:'
          FocusControl = txtedtUF
          Transparent = True
        end
        object lblBairro: TcxLabel
          Left = 246
          Top = 62
          Caption = 'Bairro(Opcional):'
          FocusControl = txtedtBairro
          Transparent = True
        end
        object txtedtBairro: TcxTextEdit
          Left = 246
          Top = 82
          TabOrder = 9
          Width = 137
        end
        object btnConsultarEndereco: TcxButton
          Left = 135
          Top = 126
          Width = 121
          Height = 32
          Caption = 'Consultar'
          TabOrder = 10
        end
      end
    end
    object tabResultado: TcxTabSheet
      Caption = 'tabResultado'
      ImageIndex = 1
      ExplicitHeight = 177
      object grdResultado: TcxGrid
        Left = 0
        Top = 0
        Width = 543
        Height = 148
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 177
        object dbcrdvwResultado: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsResultado
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CardIndent = 7
          Styles.StyleSheet = dmLeiaute.GridCardViewStyleSheetWindowsClassic
          object dbcrdvwResultadocep: TcxGridDBCardViewRow
            Caption = 'CEP'
            DataBinding.FieldName = 'cep'
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadotipo_logradouro: TcxGridDBCardViewRow
            Caption = 'Tipo Logradouro'
            DataBinding.FieldName = 'tipo_logradouro'
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadologradouro: TcxGridDBCardViewRow
            Caption = 'Logradouro'
            DataBinding.FieldName = 'logradouro'
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadocomplemento: TcxGridDBCardViewRow
            Caption = 'Complemento'
            DataBinding.FieldName = 'complemento'
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadobairro: TcxGridDBCardViewRow
            Caption = 'Bairro'
            DataBinding.FieldName = 'bairro'
            Position.BeginsLayer = False
          end
          object dbcrdvwResultadoid_cidade: TcxGridDBCardViewRow
            DataBinding.FieldName = 'id_cidade'
            Visible = False
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadonome_cidade: TcxGridDBCardViewRow
            Caption = 'Cidade'
            DataBinding.FieldName = 'nome_cidade'
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadoid_estado: TcxGridDBCardViewRow
            DataBinding.FieldName = 'id_estado'
            Visible = False
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadonome_estado: TcxGridDBCardViewRow
            DataBinding.FieldName = 'nome_estado'
            Visible = False
            Position.BeginsLayer = True
          end
          object dbcrdvwResultadosigla_estado: TcxGridDBCardViewRow
            Caption = 'UF'
            DataBinding.FieldName = 'sigla_estado'
            Position.BeginsLayer = True
          end
        end
        object grdResultadoLevel1: TcxGridLevel
          GridView = dbcrdvwResultado
        end
      end
      object gboxFerramentas: TcxGroupBox
        Left = 0
        Top = 148
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        ExplicitTop = 136
        Height = 40
        Width = 543
        object btnOK: TcxButton
          Left = 184
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
          Left = 275
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
    end
  end
  object dsResultado: TDataSource
    DataSet = cdsResultado
    Left = 166
    Top = 127
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 167
    Top = 82
    object cdsResultadocep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object cdsResultadotipo_logradouro: TStringField
      FieldName = 'tipo_logradouro'
    end
    object cdsResultadologradouro: TStringField
      FieldName = 'logradouro'
      Size = 60
    end
    object cdsResultadocomplemento: TStringField
      FieldKind = fkCalculated
      FieldName = 'complemento'
      Calculated = True
    end
    object cdsResultadobairro: TStringField
      FieldName = 'bairro'
      Size = 40
    end
    object cdsResultadoid_cidade: TStringField
      FieldName = 'id_cidade'
      Size = 7
    end
    object cdsResultadonome_cidade: TStringField
      FieldName = 'nome_cidade'
      Size = 30
    end
    object cdsResultadoid_estado: TStringField
      FieldName = 'id_estado'
      Size = 2
    end
    object cdsResultadonome_estado: TStringField
      FieldName = 'nome_estado'
      Size = 30
    end
    object cdsResultadosigla_estado: TStringField
      FieldName = 'sigla_estado'
      Size = 2
    end
  end
end
