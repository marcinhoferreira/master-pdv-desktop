inherited frmUsuarios: TfrmUsuarios
  Tag = 26
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rios'
  ClientHeight = 475
  ClientWidth = 782
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 798
  ExplicitHeight = 514
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 74
    Align = alClient
    PanelStyle.Active = True
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    TabOrder = 0
    Height = 401
    Width = 782
    object pagUsuarios: TcxPageControl
      AlignWithMargins = True
      Left = 6
      Top = 4
      Width = 772
      Height = 393
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = tabUsuarios
      Properties.CustomButtons.Buttons = <>
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
      ClientRectBottom = 391
      ClientRectLeft = 2
      ClientRectRight = 770
      ClientRectTop = 29
      object tabUsuarios: TcxTabSheet
        Caption = 'Usu'#225'rios'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdUsuarios: TcxGrid
          Left = 0
          Top = 0
          Width = 761
          Height = 356
          Align = alClient
          TabOrder = 0
          object grdUsuariosLevel1: TcxGridLevel
            GridView = dbtvwUsuarios
          end
        end
      end
      object tabDetalhes: TcxTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object gboxUsuarios: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 0
          ExplicitWidth = 761
          Height = 98
          Width = 768
          object lblLogin: TcxLabel
            Left = 8
            Top = 7
            Caption = 'Usu'#225'rio:'
            FocusControl = dbtxtedtLogin
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object dbtxtedtLogin: TcxDBTextEdit
            Left = 8
            Top = 24
            DataBinding.DataField = 'login'
            DataBinding.DataSource = dsUsuarios
            ParentFont = False
            Properties.CharCase = ecLowerCase
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 209
          end
          object lblNomeUsuario: TcxLabel
            Left = 223
            Top = 7
            Caption = 'Nome:'
            FocusControl = dbtxtedtNomeUsuario
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object dbtxtedtNomeUsuario: TcxDBTextEdit
            Left = 223
            Top = 24
            DataBinding.DataField = 'nome_usuario'
            DataBinding.DataSource = dsUsuarios
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 394
          end
          object dbchkboxAdministrador: TcxDBCheckBox
            Left = 628
            Top = 25
            Caption = 'Administrador'
            DataBinding.DataField = 'administrador'
            DataBinding.DataSource = dsUsuarios
            ParentFont = False
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Transparent = True
          end
          object lblEMailUsuario: TcxLabel
            Left = 8
            Top = 49
            Caption = 'E-Mail:'
            FocusControl = dbtxtedtEMailUsuario
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object dbtxtedtEMailUsuario: TcxDBTextEdit
            Left = 8
            Top = 66
            DataBinding.DataField = 'email_usuario'
            DataBinding.DataSource = dsUsuarios
            ParentFont = False
            Properties.CharCase = ecLowerCase
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 609
          end
          object dbchkboxContaBloqueada: TcxDBCheckBox
            Left = 628
            Top = 67
            Caption = 'Conta bloqueada'
            DataBinding.DataField = 'id_status'
            DataBinding.DataSource = dsUsuarios
            ParentFont = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Transparent = True
          end
        end
        object pagUsuarioDetalhes: TcxPageControl
          Left = 0
          Top = 98
          Width = 768
          Height = 264
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Properties.ActivePage = tabPrivilegios
          Properties.CustomButtons.Buttons = <>
          ExplicitWidth = 761
          ExplicitHeight = 258
          ClientRectBottom = 262
          ClientRectLeft = 2
          ClientRectRight = 766
          ClientRectTop = 29
          object tabPrivilegios: TcxTabSheet
            Caption = 'Privil'#233'gios'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grdPrivilegios: TcxGrid
              Left = 0
              Top = 0
              Width = 750
              Height = 221
              Align = alClient
              TabOrder = 0
              object grdPrivilegiosLevel1: TcxGridLevel
                GridView = dbtvwPrivilegios
              end
            end
          end
          object tabPerfis: TcxTabSheet
            Caption = 'Perfis'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              764
              233)
            object gboxPerfisDisponiveis: TcxGroupBox
              Left = 4
              Top = 4
              Anchors = [akLeft, akTop, akBottom]
              Caption = 'Perfis dispon'#237'veis:'
              TabOrder = 0
              ExplicitHeight = 208
              Height = 220
              Width = 285
            end
            object gboxPerfisAtribuidos: TcxGroupBox
              Left = 362
              Top = 4
              Anchors = [akLeft, akTop, akBottom]
              Caption = 'Perfis atribu'#237'dos:'
              TabOrder = 1
              ExplicitHeight = 208
              Height = 220
              Width = 285
            end
          end
        end
      end
    end
  end
  object gboxFerramentas: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    ParentBackground = False
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    TabOrder = 1
    Height = 74
    Width = 782
    object btnFechar: TcxBotaoFechar
      Left = 354
      Top = 4
      Width = 64
      Height = 64
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmLeiaute.cxImageList24
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnIncluir: TcxDBBotaoIncluir
      Left = 4
      Top = 4
      Width = 64
      Height = 64
      Caption = 'I&ncluir'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = dmLeiaute.cxImageList24
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnIncluirClick
      DataSource = dsUsuarios
    end
    object btnAlterar: TcxDBBotaoAlterar
      Left = 74
      Top = 4
      Width = 64
      Height = 64
      Caption = '&Alterar'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = dmLeiaute.cxImageList24
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnAlterarClick
      DataSource = dsUsuarios
    end
    object btnGravar: TcxDBBotaoGravar
      Left = 214
      Top = 4
      Width = 64
      Height = 64
      Caption = '&Gravar'
      ModalResult = 0
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = dmLeiaute.cxImageList24
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnGravarClick
      BeforeAction = btnGravarBeforeAction
      DataSource = dsUsuarios
      DisableReasons = [drReadonly, drNotEditing, drEmpty]
    end
    object btnCancelar: TcxDBBotaoCancelar
      Left = 284
      Top = 4
      Width = 64
      Height = 64
      Caption = '&Cancelar'
      ModalResult = 0
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmLeiaute.cxImageList24
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnCancelarClick
      BeforeAction = btnCancelarBeforeAction
      DataSource = dsUsuarios
      DisableReasons = [drReadonly, drNotEditing, drEmpty]
    end
    object btnExcluir: TcxDBBotao
      Left = 144
      Top = 4
      Width = 64
      Height = 64
      Caption = 'E&xcluir'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = dmLeiaute.cxImageList24
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnExcluirClick
      DataSource = dsUsuarios
      DisableReasons = [drReadonly, drEditing, drEmpty]
    end
  end
  object dsUsuarios: TDataSource
    DataSet = dmAcesso.qryUsuarios
    Left = 468
    Top = 18
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 533
    Top = 259
    object dbtvwUsuarios: TcxGridDBTableView
      PopupMenu = popmnuUsuarios
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsUsuarios
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
      object dbtvwUsuariosid_usuario: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'id_usuario'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwUsuarioslogin: TcxGridDBColumn
        Caption = 'Login'
        DataBinding.FieldName = 'login'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 224
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 224
      end
      object dbtvwUsuariosid_pessoa: TcxGridDBColumn
        DataBinding.FieldName = 'id_pessoa'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwUsuariosnome_usuario: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'nome_usuario'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Moving = False
      end
      object dbtvwUsuariossenha: TcxGridDBColumn
        DataBinding.FieldName = 'senha'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwUsuariostipo: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tipo'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 114
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 114
      end
      object dbtvwUsuariosadministrador: TcxGridDBColumn
        Caption = 'Administrador'
        DataBinding.FieldName = 'administrador'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 114
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 114
      end
      object dbtvwUsuariosemail_usuario: TcxGridDBColumn
        Caption = 'EMail'
        DataBinding.FieldName = 'email_usuario'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwUsuariosid_status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'id_status'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Habilitado'
          'Bloqueado')
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
      end
    end
    object dbtvwPrivilegios: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsPrivilegios
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
      object dbtvwPrivilegiosid_usuario: TcxGridDBColumn
        DataBinding.FieldName = 'id_usuario'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwPrivilegiosid_aplicativo: TcxGridDBColumn
        DataBinding.FieldName = 'id_aplicativo'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwPrivilegiostitulo_aplicativo: TcxGridDBColumn
        Caption = 'Aplicativo'
        DataBinding.FieldName = 'titulo_aplicativo'
        DataBinding.IsNullValueType = True
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwPrivilegiosid_rotina: TcxGridDBColumn
        DataBinding.FieldName = 'id_rotina'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Options.Moving = False
      end
      object dbtvwPrivilegiosdescricao_rotina: TcxGridDBColumn
        Caption = 'Rotina'
        DataBinding.FieldName = 'descricao_rotina'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
        Width = 364
      end
      object dbtvwPrivilegiosincluir: TcxGridDBColumn
        Caption = 'Incluir'
        DataBinding.FieldName = 'incluir'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosalterar: TcxGridDBColumn
        Caption = 'Alterar'
        DataBinding.FieldName = 'alterar'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosexcluir: TcxGridDBColumn
        Caption = 'Excluir'
        DataBinding.FieldName = 'excluir'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosimprimir: TcxGridDBColumn
        Caption = 'Imprimir'
        DataBinding.FieldName = 'imprimir'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosexportar: TcxGridDBColumn
        Caption = 'Exportar'
        DataBinding.FieldName = 'exportar'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosimportar: TcxGridDBColumn
        Caption = 'Importar'
        DataBinding.FieldName = 'importar'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosprocessar: TcxGridDBColumn
        Caption = 'Processar'
        DataBinding.FieldName = 'processar'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosespecial1: TcxGridDBColumn
        Caption = 'Especial1'
        DataBinding.FieldName = 'especial1'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
      object dbtvwPrivilegiosespecial2: TcxGridDBColumn
        Caption = 'Especial2'
        DataBinding.FieldName = 'especial2'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        MinWidth = 84
        Options.HorzSizing = False
        Options.Moving = False
        Width = 84
      end
    end
  end
  object dsPrivilegios: TDataSource
    DataSet = dmAcesso.qryPrivilegios
    Left = 548
    Top = 18
  end
  object popmnuUsuarios: TPopupMenu
    Left = 644
    Top = 16
    object RedefinirSenha1: TMenuItem
      Caption = 'Redefinir Senha'
      OnClick = RedefinirSenha1Click
    end
  end
end
