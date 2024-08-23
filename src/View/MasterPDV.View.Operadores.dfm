inherited frmOperadores: TfrmOperadores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.:: Operadores ::.'
  ClientHeight = 496
  ClientWidth = 716
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 722
  ExplicitHeight = 525
  PixelsPerInch = 96
  TextHeight = 16
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 73
    Width = 716
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
      DataSource = dsOperadores
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
      DataSource = dsOperadores
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
      DataSource = dsOperadores
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
      DataSource = dsOperadores
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
      DataSource = dsOperadores
      DisableReasons = [drNotEditing]
    end
    object btnFechar: TcxBotaoFechar
      Left = 635
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
    Height = 423
    Width = 716
    object pagOperadores: TcxPageControl
      Left = 3
      Top = 3
      Width = 710
      Height = 417
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabDetalhes
      Properties.CustomButtons.Buttons = <>
      ExplicitHeight = 356
      ClientRectBottom = 415
      ClientRectLeft = 2
      ClientRectRight = 708
      ClientRectTop = 29
      object tabVisualiza: TcxTabSheet
        Caption = 'tabVisualiza'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 322
        object grdOperadores: TcxGrid
          Left = 0
          Top = 0
          Width = 699
          Height = 383
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 322
          object dbtvwOperadores: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsOperadores
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
            object dbtvwOperadoresid_operador: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id_operador'
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.Editing = False
              Options.HorzSizing = False
              Width = 74
            end
            object dbtvwOperadoresid_usuario: TcxGridDBColumn
              DataBinding.FieldName = 'id_usuario'
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 109
              Options.Editing = False
              Options.HorzSizing = False
            end
            object dbtvwOperadoresnome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object dbtvwOperadoreslogin: TcxGridDBColumn
              Caption = 'Login'
              DataBinding.FieldName = 'login'
              HeaderAlignmentHorz = taCenter
              MinWidth = 224
              Options.Editing = False
              Options.HorzSizing = False
              Width = 224
            end
            object dbtvwOperadorestipo: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'tipo'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'Operador'
                'Supervisor')
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.HorzSizing = False
              Width = 100
            end
            object dbtvwOperadoresid_status: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'id_status'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'Ativo'
                'Inativo')
              HeaderAlignmentHorz = taCenter
              MinWidth = 80
              Options.Editing = False
              Options.HorzSizing = False
              Width = 80
            end
          end
          object grdOperadoresLevel1: TcxGridLevel
            GridView = dbtvwOperadores
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'tabDetalhes'
        ImageIndex = 1
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 699
        ExplicitHeight = 383
        object lblIdOperador: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Id:'
          Transparent = True
        end
        object dblblIdOperador: TcxDBLabel
          Left = 8
          Top = 27
          DataBinding.DataField = 'id_operador'
          DataBinding.DataSource = dsOperadores
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 21
          Width = 66
          AnchorX = 74
        end
        object lblUsuario: TcxLabel
          Left = 8
          Top = 48
          Caption = 'Usu'#225'rio:'
          FocusControl = dbtxtedtDescricao
          Transparent = True
        end
        object dbtxtedtDescricao: TcxDBLookupComboBox
          Left = 8
          Top = 68
          DataBinding.DataField = 'id_usuario'
          DataBinding.DataSource = dsOperadores
          Properties.GridMode = True
          Properties.KeyFieldNames = 'id_usuario'
          Properties.ListColumns = <
            item
              FieldName = 'nome'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsUsuarios_LookUp
          TabOrder = 3
          Width = 364
        end
        object lblTipo: TcxLabel
          Left = 8
          Top = 92
          Caption = 'Tipo:'
          FocusControl = dbcmbTipo
          Transparent = True
        end
        object dbcmbTipo: TcxDBComboBox
          Left = 8
          Top = 112
          DataBinding.DataField = 'tipo'
          DataBinding.DataSource = dsOperadores
          Properties.Items.Strings = (
            'Operador'
            'Supervisor')
          TabOrder = 5
          Width = 114
        end
        object dbradgrpStatus: TcxDBRadioGroup
          Left = 8
          Top = 139
          Caption = 'Status:'
          DataBinding.DataField = 'id_status'
          DataBinding.DataSource = dsOperadores
          Properties.Items = <
            item
              Caption = 'Ativo'
              Value = 1
            end
            item
              Caption = 'Bloqueado'
              Value = 0
            end>
          TabOrder = 6
          Height = 68
          Width = 114
        end
        object gboxTerminaisDisponiveis: TcxGroupBox
          Left = 8
          Top = 219
          Caption = 'Terminais Dispon'#237'veis:'
          TabOrder = 7
          Height = 154
          Width = 308
        end
        object gboxTerminaisAtribuidos: TcxGroupBox
          Left = 380
          Top = 219
          Caption = 'Terminais Atribuidos:'
          TabOrder = 8
          Height = 154
          Width = 308
        end
        object cxDBBotao1: TcxDBBotao
          Left = 332
          Top = 239
          Width = 32
          Height = 25
          Enabled = True
          TabOrder = 9
          DataSource = dsTerminaisDisponiveis
        end
        object cxDBBotao2: TcxDBBotao
          Left = 332
          Top = 270
          Width = 32
          Height = 25
          Enabled = True
          TabOrder = 10
          DataSource = dsTerminaisDisponiveis
        end
        object cxDBBotao3: TcxDBBotao
          Left = 332
          Top = 340
          Width = 32
          Height = 25
          Enabled = True
          TabOrder = 11
          DataSource = dsTerminaisAtribuidos
        end
        object cxDBBotao4: TcxDBBotao
          Left = 332
          Top = 309
          Width = 32
          Height = 25
          Enabled = True
          TabOrder = 12
          DataSource = dsTerminaisAtribuidos
        end
      end
    end
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryOperadores
    Left = 563
    Top = 206
  end
  object dsUsuarios_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmCadastro.qryUsuarios_LookUp
    Left = 563
    Top = 250
  end
  object dsTerminaisDisponiveis: TDataSource
    Left = 243
    Top = 235
  end
  object dsTerminaisAtribuidos: TDataSource
    Left = 413
    Top = 238
  end
end
