inherited frmVenda: TfrmVenda
  Tag = 502
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 601
  ClientWidth = 784
  KeyPreview = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 16
  object gboxInformacoes: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -37
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    DesignSize = (
      784
      220)
    Height = 220
    Width = 784
    object panCodigo: TAdvSmoothPanel
      Left = 8
      Top = 112
      Width = 301
      Height = 102
      Cursor = crDefault
      Caption.Text = 'C'#243'digo'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      TabOrder = 0
      TMSStyle = 0
      object txtedtLeitor: TcxTextEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Margins.Left = 4
        Margins.Top = 24
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alClient
        Properties.Alignment.Horz = taRightJustify
        Properties.CharCase = ecUpperCase
        Properties.UseLeftAlignmentOnEditing = False
        Style.BorderStyle = ebsNone
        Style.Color = clInfoBk
        TabOrder = 0
        OnKeyDown = txtedtLeitorKeyDown
        OnKeyPress = txtedtLeitorKeyPress
        Width = 285
      end
    end
    object panDescricao: TAdvSmoothPanel
      Left = 312
      Top = 112
      Width = 462
      Height = 102
      Cursor = crDefault
      Caption.Text = 'Descri'#231#227'o'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      TMSStyle = 0
      object txtedtDescricao: TcxTextEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Margins.Left = 4
        Margins.Top = 24
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alClient
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Style.BorderStyle = ebsNone
        Style.Color = clBlue
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -48
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clInfoBk
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBlue
        StyleDisabled.TextColor = clWhite
        TabOrder = 0
        Text = 'txtedtDescricao'
        Height = 66
        Width = 446
      end
    end
    object panMensagem: TAdvSmoothPanel
      Left = 8
      Top = 8
      Width = 766
      Height = 102
      Cursor = crDefault
      Caption.Text = 'Mensagem'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      TMSStyle = 0
      object txtedtMensagem: TcxTextEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Margins.Left = 4
        Margins.Top = 24
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alClient
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Style.BorderStyle = ebsNone
        Style.Color = clBlue
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -48
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clInfoBk
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBlue
        StyleDisabled.TextColor = clWhite
        TabOrder = 0
        Text = 'txtedtDescricao'
        Height = 66
        Width = 750
      end
    end
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 220
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    DesignSize = (
      784
      381)
    Height = 381
    Width = 784
    object panVendas_Produtos: TAdvSmoothPanel
      Left = 8
      Top = 6
      Width = 496
      Height = 367
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      TMSStyle = 0
      object grdVendas_Produtos: TcxGrid
        AlignWithMargins = True
        Left = 4
        Top = 106
        Width = 478
        Height = 153
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 14
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 0
        object dbtvwVendas_Produtos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsVendas_Produtos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.StyleSheet = dmLeiaute.GridTableViewStyleSheetWindowsClassic
          object dbtvwVendas_Produtosid_venda: TcxGridDBColumn
            DataBinding.FieldName = 'id_venda'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            VisibleForCustomization = False
          end
          object dbtvwVendas_Produtositem: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'item'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 48
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 48
          end
          object dbtvwVendas_Produtosid_produto: TcxGridDBColumn
            DataBinding.FieldName = 'id_produto'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            VisibleForCustomization = False
          end
          object dbtvwVendas_Produtoscodigo_barras: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'codigo_barras'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 114
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 114
          end
          object dbtvwVendas_Produtosresumida: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'resumida'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 224
          end
          object dbtvwVendas_Produtosid_unidade: TcxGridDBColumn
            DataBinding.FieldName = 'id_unidade'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
          end
          object dbtvwVendas_Produtossigla_unidade: TcxGridDBColumn
            Caption = 'Unid.'
            DataBinding.FieldName = 'sigla_unidade'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 48
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 48
          end
          object dbtvwVendas_Produtosquantidade: TcxGridDBColumn
            Caption = 'Quant.'
            DataBinding.FieldName = 'quantidade'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object dbtvwVendas_Produtospeso_bruto: TcxGridDBColumn
            DataBinding.FieldName = 'peso_bruto'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Focusing = False
            Options.HorzSizing = False
            Width = 80
          end
          object dbtvwVendas_Produtospreco_unitario: TcxGridDBColumn
            Caption = 'Pre'#231'o Unit'#225'rio'
            DataBinding.FieldName = 'preco_unitario'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
          end
          object dbtvwVendas_Produtospreco_venda: TcxGridDBColumn
            DataBinding.FieldName = 'preco_venda'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Focusing = False
            Options.HorzSizing = False
            Width = 80
          end
          object dbtvwVendas_Produtospercentual_acrescimo: TcxGridDBColumn
            DataBinding.FieldName = 'percentual_acrescimo'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Focusing = False
            Options.HorzSizing = False
            Width = 80
          end
          object dbtvwVendas_Produtosvalor_acrescimo: TcxGridDBColumn
            DataBinding.FieldName = 'valor_acrescimo'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
          end
          object dbtvwVendas_Produtospercentual_desconto: TcxGridDBColumn
            DataBinding.FieldName = 'percentual_desconto'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Focusing = False
            Options.HorzSizing = False
            Width = 80
          end
          object dbtvwVendas_Produtosvalor_desconto: TcxGridDBColumn
            DataBinding.FieldName = 'valor_desconto'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
          end
          object dbtvwVendas_Produtospreco_total: TcxGridDBColumn
            Caption = 'Pre'#231'o Total'
            DataBinding.FieldName = 'preco_total'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
          end
        end
        object grdVendas_ProdutosLevel1: TcxGridLevel
          GridView = dbtvwVendas_Produtos
        end
      end
      object gboxVenda_Totais: TAdvSmoothPanel
        AlignWithMargins = True
        Left = 3
        Top = 265
        Width = 481
        Height = 90
        Cursor = crDefault
        Margins.Right = 12
        Margins.Bottom = 12
        Transparent = False
        Caption.HTMLFont.Charset = DEFAULT_CHARSET
        Caption.HTMLFont.Color = clWindowText
        Caption.HTMLFont.Height = -11
        Caption.HTMLFont.Name = 'Tahoma'
        Caption.HTMLFont.Style = []
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Fill.Color = 16445929
        Fill.ColorTo = 15587527
        Fill.ColorMirror = 15587527
        Fill.ColorMirrorTo = 16773863
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtVertical
        Fill.BorderColor = 14922381
        Fill.BorderWidth = 0
        Fill.Rounding = 10
        Fill.ShadowOffset = 0
        Fill.Glow = gmNone
        Version = '1.6.0.1'
        Align = alBottom
        TabOrder = 1
        TMSStyle = 0
        object panVendaTotalLiquido: TAdvSmoothPanel
          Left = 264
          Top = 0
          Width = 217
          Height = 90
          Cursor = crDefault
          Margins.Right = 12
          Margins.Bottom = 12
          Transparent = False
          Caption.Text = 'Sub-total'
          Caption.HTMLFont.Charset = DEFAULT_CHARSET
          Caption.HTMLFont.Color = clWindowText
          Caption.HTMLFont.Height = -11
          Caption.HTMLFont.Name = 'Tahoma'
          Caption.HTMLFont.Style = []
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -16
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.ColorStart = 4474440
          Caption.ColorEnd = 4474440
          Caption.LineColor = 12895944
          Fill.Color = 16445929
          Fill.ColorTo = 15587527
          Fill.ColorMirror = 15587527
          Fill.ColorMirrorTo = 16773863
          Fill.GradientType = gtVertical
          Fill.GradientMirrorType = gtVertical
          Fill.BorderColor = 14922381
          Fill.BorderWidth = 0
          Fill.Rounding = 10
          Fill.ShadowOffset = 0
          Fill.Glow = gmNone
          Version = '1.6.0.1'
          Align = alClient
          TabOrder = 0
          TMSStyle = 0
          object dbcurredtValorLiquido: TcxDBCurrencyEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Margins.Top = 24
            Align = alClient
            DataBinding.DataField = 'valor_liquido'
            DataBinding.DataSource = dsVendas_Totais
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.00;-#,##0.00'
            Style.BorderStyle = ebsNone
            Style.Color = clGreen
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -37
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.TextColor = clInfoBk
            Style.IsFontAssigned = True
            StyleDisabled.Color = clGreen
            StyleDisabled.TextColor = clWhite
            TabOrder = 0
            Width = 211
          end
        end
        object AdvSmoothPanel1: TAdvSmoothPanel
          Left = 0
          Top = 0
          Width = 264
          Height = 90
          Cursor = crDefault
          Margins.Right = 12
          Margins.Bottom = 12
          Transparent = False
          Caption.Text = 'Troca / Devolu'#231#227'o'
          Caption.HTMLFont.Charset = DEFAULT_CHARSET
          Caption.HTMLFont.Color = clWindowText
          Caption.HTMLFont.Height = -11
          Caption.HTMLFont.Name = 'Tahoma'
          Caption.HTMLFont.Style = []
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -16
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.ColorStart = 4474440
          Caption.ColorEnd = 4474440
          Caption.LineColor = 12895944
          Fill.Color = 16445929
          Fill.ColorTo = 15587527
          Fill.ColorMirror = 15587527
          Fill.ColorMirrorTo = 16773863
          Fill.GradientType = gtVertical
          Fill.GradientMirrorType = gtVertical
          Fill.BorderColor = 14922381
          Fill.BorderWidth = 0
          Fill.Rounding = 10
          Fill.ShadowOffset = 0
          Fill.Glow = gmNone
          Version = '1.6.0.1'
          Align = alLeft
          TabOrder = 1
          TMSStyle = 0
          object dbcurredtValorTroca: TcxDBCurrencyEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Margins.Top = 24
            Align = alClient
            DataBinding.DataField = 'valor_troca'
            DataBinding.DataSource = dsVendas_Totais
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DecimalPlaces = 2
            Properties.DisplayFormat = '#,##0.00;-#,##0.00'
            Style.BorderStyle = ebsNone
            Style.Color = clGreen
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -37
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.TextColor = clInfoBk
            Style.IsFontAssigned = True
            StyleDisabled.Color = clGreen
            StyleDisabled.TextColor = clWhite
            TabOrder = 0
            Width = 258
          end
        end
      end
      object panCliente: TAdvSmoothPanel
        Left = 0
        Top = 0
        Width = 496
        Height = 102
        Cursor = crDefault
        Caption.Text = 'Cliente'
        Caption.HTMLFont.Charset = DEFAULT_CHARSET
        Caption.HTMLFont.Color = clWindowText
        Caption.HTMLFont.Height = -11
        Caption.HTMLFont.Name = 'Tahoma'
        Caption.HTMLFont.Style = []
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.ColorStart = 4474440
        Caption.ColorEnd = 4474440
        Caption.LineColor = 12895944
        Fill.Color = 16445929
        Fill.ColorTo = 15587527
        Fill.ColorMirror = 15587527
        Fill.ColorMirrorTo = 16773863
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtVertical
        Fill.BorderColor = 14922381
        Fill.Rounding = 10
        Fill.ShadowOffset = 10
        Fill.Glow = gmNone
        Version = '1.6.0.1'
        Align = alTop
        TabOrder = 2
        TMSStyle = 0
        object dbtxtedtCliente: TcxDBTextEdit
          AlignWithMargins = True
          Left = 4
          Top = 24
          Margins.Left = 4
          Margins.Top = 24
          Margins.Right = 12
          Margins.Bottom = 12
          Align = alClient
          AutoSize = False
          DataBinding.DataField = 'cliente_lookpup'
          DataBinding.DataSource = dsVendas
          Enabled = False
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Style.BorderStyle = ebsNone
          Style.Color = clBlue
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -48
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clInfoBk
          Style.IsFontAssigned = True
          StyleDisabled.Color = clBlue
          StyleDisabled.TextColor = clWhite
          TabOrder = 0
          Height = 66
          Width = 480
        end
      end
    end
    object gboxBarraDeStatus: TcxGroupBox
      Left = 3
      Top = 284
      Align = alBottom
      Enabled = False
      PanelStyle.Active = True
      ParentBackground = False
      TabOrder = 1
      Visible = False
      Height = 94
      Width = 778
      object rchedtOperacoes: TcxRichEdit
        Left = 3
        Top = 3
        Align = alClient
        ParentFont = False
        Lines.Strings = (
          'A - Ajuda               G - Gaveta      P - Canc.item'
          'B - Balan'#231'a             L - Localizar   S - Subtotalizar'
          'C - Consulta            M - Sangria     T - Troca'
          'D - Desconto            N - Suprimento  U - Canc.venda'
          'E - Canc.'#250'ltimo item    O - TEF Adm     X - Quantidade')
        Style.BorderStyle = ebsNone
        Style.Color = clInfoBk
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Courier New'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 88
        Width = 551
      end
      object gboxInfoUsuario: TcxGroupBox
        Left = 554
        Top = 3
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alRight
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Transparent = True
        Height = 88
        Width = 221
        object imgAvatar: TcxImage
          AlignWithMargins = True
          Left = 140
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000200
            000002000806000000F478D4FA0000000473424954080808087C086488000000
            097048597300007A2F00007A2F011FFDFBC90000001974455874536F66747761
            7265007777772E696E6B73636170652E6F72679BEE3C1A00004B654944415478
            DAEDBD77905DD5B9BE792DB00A0CC6D4981A333394C7FC188FEFFDFD83EB7A5C
            E32A7B5C5C8C130849A004160A2DB5020ADDCAA1733C9DA456965ADD6A855644
            522BB5720EA0D4CA12CA39F46905C0068440A1D7ACEFF8E8BA111D4E9F73F639
            7BAFFDA8EAA9BAE56B83CEB7D67ADF77EFFDADB5FE4D29F56F00606F5E7DBDEB
            939A17342F6B5ED5B4D3F4D624B67BB7D7D42183866CCB4E4B3C9D93995CE5C9
            4AFE24273BE5F31C4FCA571E4FEA37D99ED47B599ED4FBE9D929352999293509
            E9C96A586A921A9094A8E213137DFF7762468A4ACB4AADD1FFBD073939A9F7F3
            7253EFE6E7A6DEC9CF49F922CF93F2696E567275567AE2A5F4E4912793460EAF
            1C3C68F08AD66D7B64FAFF0EEDFC7FA797FD7FC727193300FB431100A26BECCD
            352F695ED3C46AB23573359B34873457345FBDFE76ACEAD6234E0D1D3A4CA5A7
            25AAECEC1495A1199E96ACFA8D4C880AFD131254920E0E9E9C54A503874A4D1A
            A9E2E206A936EFF452F277F6FFDD0FF97FCB5CFF6F8BF5FF56F9CDCD99030004
            0000530DBE99E6679A5734319A744D9966BBDF201F68546DDE6ADF538DD4465F
            E0F9A7B90E494E8A9AC907CBD0942495E9D1C140FF86E4C411EABD2E7DD4A3BF
            D3FFDBAFF86B51E6AF4D8CBF5652B366CC210002008013CCFE39FFABF0784DA9
            A6D2FF24AC1AE2ADF6BDD4D0214395273B593FD5A7AAB88444C7197E20C8A787
            1C1D0A521247AACE317D556375F1D7AED25FCB787F6D9F63AE01100000A2F9DA
            5EBE7777D21468D66AAA0230341F2DDE8E5583060F5169E9496A44145FE1479B
            91FAB7E7E4A4AAB4E491AA6BB77E2AD0FAF96BBDD65FFB4EFEB1E07302000100
            20EC862FDFAB3B6B8A354735F79A60563EBAEA27DE51FA093F2F2FCDD778E756
            D36F8894CC14959D91D4D430F0907BFEB129F68FD54BCC5D0002004053CCFE71
            CDAF3503348B35DE20CCC847DB777AA9F4940495939BA6E21230F8A6909E9DA2
            B2D21355C7BA7B0702C5EB1FC301FE317D9C390E4000007868F8CF68FEACC9D0
            6CD6DC0EC170D41B6D7AA861C387AB54FD34DB1F230F0BD21791919AA83AFCAD
            77286140F9C776B37FAC65CC9F610D000100C05D5DF9BFF1779CEFA9AB0B3F18
            E2FA0F549959293CE95BBCED30DB93AA860F1DAAFEF046E863E61FFB3DFEB9F0
            1B761D000100C03CD37F5ED345335FF349380C5F68FF4E2F559095ACD2F5132A
            061D591233927D6F055AB5EDA1C2359EFEB931DF3F579E67ED000100C099DFF1
            7FAFF1680E686AC26812BE3DEDF93929BEBDEE98717419949CE43B84A84B60DB
            0A9B428D7FEE78FC7389FE01200000D8D4F47FE47F722BD7FC23CC66E0A37BCF
            789591C5B77D5B7E1ED0C8A14903070C56568CBD7F4E95FBE7D88F5873400000
            88AEE9FF50D351B342F38D45C2AF7AF719A092D293315A8790AA43DAC8E1C3AC
            0A02CA3FD756F8E7DE0F598B400000888CE93FA5E9A059A2B963A1C8ABB87E03
            5526DFF71DBD7B203E7E90954140F9E7E012FF9C7C8A350A040080F09ABEDC84
            D746B330D46D7A813078C02055909F86891A827C1AE8D123CEEA20F0709BE142
            FF5CE5464420000084B05DEF2F9A799A2F2220DEEABDCE7D5461413A5BF90CDD
            4298EB4951EF767A3F124140F9E7EC3CFF1C667B2110000002307EB94F3E4573
            294242AD5E7F2B5665A427A901491CD16B3A32C63959C9AA75FB1E910A02CA3F
            97654EBFC01A070200C0B74DFF314D4B4D85E67E0485D977290FDBF9DC878C79
            6AD2C8488600E59FDB15FEB9FE186B1F0800E066E37F5193A5B9166121F6BD0A
            CECC4EC10C5D8E9C2CF85E68F70D04CB35FFDC7F112D000200B8C5F4BFAF69AB
            591FEE037A02E14F6FC6A8ECF444DF01321820080393127DA70A86E978E1600E
            1C5AEF5F13DF4723800000261AFF73FEEFA0D7A320B23E06C40D529E5CBAFBA1
            6E64CB67B7EEFD55B4E6A77F6DC81A790ECD0002009860FC3FD74CD17C152D61
            FD73CB18353A37550D48A4C90F1A6912D473242B23C9F7A6288A41E02BFF9AF9
            391A02040070A2F1FF4EB3345CB7ED054BE76E7D7D27C3616ED014D2B25255CF
            5E71D10C010F6F2B9435F43B34050800E0846E7EF996B93BCAC2E963E488E13C
            F543486F03A2B053A03E76FBD716BB07800000B63B9EB7BFE69C1DC4F2AFADBA
            2B0F1DFE1026723DA9BE3965932070DEBFD638761808001055E37FC6DFB4F4A9
            4DC451758DE9EB3B031EE3827092AEE754C7E86C17AC8F4FFD6BEF19B4080800
            10E927FEE19A4F6C24882A2561B81A9ACAF63EB0EEF0A0218387D8290428FF1A
            1CCE1B01200080D5C6FF84666034B7F2D5FDCABF9B1A5790E63BEF1DA3024BEF
            1490C3833292A2756640635B08656D3E8156010100C269FCCD357DA271625F63
            B47FB7971A55908E3941646F18F4A4AAB7DAF7B45B087878C2A0ACD5E6681710
            002014E37F5C131BC98B799A429798BE2A2983663F880EC9992976EB0B78F402
            2259BB8FA365400080A618BF5CC5DB4973D6A6E2A67AF78E57C353933122882A
            23D292558F1E71760D01CABF863B71253110002010F37F4573C8C682A6060E18
            A48670831FD804998B71FD07DA390428FF9A7E058D030200D477335FB9CD454C
            25CAE13E491CEE03F6BB5068D890A1760F01CABFC6B981100800E033FEA7351E
            CDD77617AFACD404159780F9833D894B4850C989239C1002BEF6AFF9A7D14002
            00B8D3F8BFA7E9AAF13A40B0547E76B26F0B164603B6BF55303DD1092140F9D7
            BE68C0F7D0440200B8C7FC7FABA9748248BDD622468DC9E7643F701639D9294E
            0901CAAF05BF451B090060B6F1FF5433DF29C22487AD8CCE4BC3508010101944
            1B7E8A561200C0BC5BFA86686E3B49900A3CECF1076723A7063A2C04DCF66B05
            B70E1200C000F3FFA5669FC34448793268F603432E124A49705A08507ECDF825
            1A4A0000E79EDB9FABB9E734F1494D1CC1B9FE60D4FD018923873B3104DCF36B
            08F70B1000C06187F99C76A0E0A8618387A8F8449EFEC1B42D82724EC0102786
            00E5D7120E11220080CD8DFF594D89A6C68942D3AFEF0035289913FEC04CE400
            ABF8B8414E0D01357E6D7916AD250080FDCCFF6D4D9543C545758BEDC7D9FE60
            3C8375C0957B2C9CBA4EFD1AF3369A4B00007B18FFF39A250E1614F5EE7BEFAB
            446EF50397302C35C9CEB708068A68CEF368300100A267FE2D35379D2C24ADDB
            F650E9D91CF4032EDB19A0E7FC5F5B75777A0810ED698916130020B2C6FF034D
            91C3C5C377D04F61413A8600EE3C28C893EAF400F010D1A21FA0CD0400B0DEFC
            FF5373D204E1C8CBA4E10FDC4D5AF24853428068D27FA2D10400B0C6F89B6986
            69EE9A2018F17103B9D6175C8F6C79EDDB77802921E0AE5FA39AA1D90400089F
            F9BFA0D96C8848A8361D7AAA944C9AFE008491E9C9AAED3BBD4C0901CAAF552F
            A0DD040008DDFCDB693E35451CE4BB7F0117FC007C8B2C4FAAFAD39B31268500
            D1AC76683801008233FEA735330C12041F397CF707A8BB29302B5999B6DEFD1A
            F6349A4E0080C0CDFF179AE3A689C1C0F8411CF30BD0D0190143869A180244CB
            7E81B61300A071F36FADF9876922D0EEDD5E2A219D93FE001A62785AB27AAB7D
            4F134380685A6B349E0000F577F97B9C7A8E7F63DFFDC78C62BF3F80CBCE07A8
            EB3E010FBB040800F06DF3FFB1669DA18B5E1566F3DD1FA0499F02860E353504
            28BFD6FD18ED270060FEFF3CD8E7A2A98BFDBD4EEFB3E50F804F018F72918383
            08006E37FFAE9A3B062F7235B130034107E053405D88F675C50B08006E33FEE6
            9AC9862F6E3562C8101597809003B02BA041440B9BE30D04003798FF4F343B4D
            5FD4AFB7EEA6323DDCF207C1337562B69A5D9CE37B1DEEDA4F01A9C9AAB5D99F
            021E229AF8133C820060B2F9FF87E6820B16B3CACB66CB1F847646FECD8FA6AA
            7B074AD537FB4BD589B513D507A5792A31C37DFD241E4F8A1B0280F26BE37FE0
            15040013CDFFBF349FB9612177EDD6570DE4A21F08817925B93EF37F94BB9AB3
            1B27A92533F3555AB67BDE30F5ED37D02D214034F2BFF00C028049E6DFD9945B
            FC02219B57FF10E2D3FF8D0FA7D619001EE5F296296AE59C51CA936BF6FD1219
            D9AE790BF0F056C1CE780701C004F34F73D1C25509238661621012738A730332
            FF47F16E2F52CBCB0A7CB7EB19796BE0B0616E0A01421A1E42007072A77F999B
            16EC1BADBBABAC1C6EFA83E0894B4854D53B8A820A000FF97ADF3455B97C9C1A
            5B9869546D923292D59F5B76735B082863870001C069E6FFAC668BCB16AA9A90
            C7AB7F088D5953734232FF47B9B6AD482D9C9EA786A698711A657A6A82DB0280
            F26BE9B3780B01C009E6FFA28937F935C6DBED7AA874BEFD43484FFF09AA6A7B
            515803C0436E574E531F968F5579F9CEBE9342824CABB63DDC180244535FC463
            08007636FF5F69AEBB7071AA31391CF70BA15116E6A7FFFA38BF69B2AFCF6090
            4377AA78B292DD1800945F5B7F85D71000EC68FEBF33F11ADF4090279264CEFB
            871090FDFD9FEF298948007888FCFB2A6617A8210EFB3C30203151FDADF3FB6E
            0D01A2B1BFC37308007632FF3F6A6EBB7441AADC4C6EFB83E0E9AF39B6666244
            CDBF36FFD85DA2569415A8C1C9CE99C72EB827A021446BFF88F71000EC60FEAD
            345FBB7531B6783B568D48E3D43F089E05A5795133FF4783C0B259CE0802D22F
            F15E973E6E0E01A2B9ADF020024034CDFF5DCD3D172F429599C6897F104257BB
            7E9295063D3B048087FC7D57B1EFA4C141360F0239D9C96E0E00CAAFBDEFE245
            048068987FACE6819B17E0EBADBB1BB3BD0AA2F3142BC7FADAC9FC6BF3990E02
            8B67E4DBB65950028A4B7704D4463438164F220044D2FC07686A5CBEF054662A
            2606C123DFDDED6AFEB5F97467B15AA483C0001B06017903E7761DF26BF100BC
            89001009F34F62C175557F7A334665E772EA1F04476E7EBAEFC43E270480875C
            DF31554D199F65AFE381D3937D6B114DF29184471100AC34FF3C1699FFC29FE4
            1118190479A46D4AC097FDD891832BC7DB6ADB6BE288E168D2BFC8C3AB080098
            BFC514D9EC49089CC1F0B464DFF1BC4E35FFDA270B2E9D95EFBBB930DA354DCB
            4A4193080104005EFB4786FE7DE2D5C024BAFFA169C8F63A3985CFE9E65F9B2B
            5BA7A83136B874282E6E10DAC4E7000280450D7F2CA85A8C2FE0DB3F34F1F43A
            1D184FAC9B6894F9D766D7D2B1513D0FC3E3EE8381EA83C6400240C85BFD6A58
            48FF42AE234DC9E2D85F68DA15BFF2DDDC54F3AF7DB4F0FC69B9AA7F42744E53
            7CF7BDDE68D4777707B045900010F4213F0F5844DF2661F8304C0D9A644CF274
            6CBAF9D7E6DCC6C9CA9317F9B764196C09ACEF9C000E0B220034F978DF7B2C9E
            EFE2C9E1CA5F08D0FCF593F0D64585AE32FF87DCD9374D2D9A9EE70B403403DA
            E2C4408E0D2600047CB1CFD72C9AEFD2E69D5E5179BD09CEBCB7FEE8EA09AE34
            FFDA1CD13588646F40D76EFDD0AAFAEF0EE002210240A357FADE66B170F21F04
            4F564E9AF26E2F72BDF9D73E4970C2D8C86C9BCDCE4842AB1ABE4590AB840900
            759AFFAFFC774DB350EAA1203F1D838306993A315B7DB9B704E37F84BB9AF5F3
            475B7E6E801CB28456358868FCAFF03C02406DF37F51739DC5513F31317DD580
            44F6FE43FDCD7EABE68CF2191D865F3F720E427AB6B57D34BD7BC7A3590D235A
            FF22DE470010F37F56739C45D130E372D9FA0775332425491D72C136BF70216F
            48664DCDB1F09A60DE02048068FEB30400779B7F73CD161643C3FCE18DAE6AF2
            387B1EFD2B57A2667852D584B1996A76718EAA985DA076948F51C7D64CF09DD2
            76F3A3A9AA6A5B91BAB879B23ABD7E92EF3F3F50315EED5E364E6D5F3C466DFC
            A050AD9E3B4ACD2DC9F55D5013CF5B8E2621DFB6ABF8DE1F147BF41C1C62C175
            DA23D3927D6B16ED6A14D1FEE60400F70680321641E3C476EFEB3BC6D50EA7C9
            89D16F58305A5DD83459FD6377F8BF35CB0D75F2CF9670306F5AAECA2F48B7E5
            35B0D126352BD51587FB588D344B4A800DF7F8C4C773347080941100DC69FE69
            4CFEC0C84D8F9E018A382E9C9EE7DB52F6556574AE8FFD66FF347569F314F561
            F958553421DBD56F09E48D8BBC31B9E3B0AB7CED7E82E0D831E1BD4F20272B19
            ED0A9C340280BBCCBF33933E70C61444AEFB5F1A0D8B2766FB9EC0ED7A65ACBC
            79D8A6FF7E85A333227AD04BB4299DECF17D52C1B44B2D79F35416C6BE006934
            44BB9A446702803BCCFFBF347799F081F15A8B18DF15AE9168245B32335F7DB2
            B3D851C22D2165CDBC51BEBDEFA61ABFF4469C34F8221F3B2173291CA1520EEC
            6ADDBE071A1638E209FF450030DBFCFF43F319933D70FAF41960A9B924A427AB
            B5F346AB2FF6387FEFB87C2628D7212631C3F93B26A4EF6156518EAF7112638E
            2C952BC685A5EF64F8D0A16858D3106FF80F028099E6FF13CD052679D39093C5
            AC3098744FAAAF5BDFC46FC9DFECFFE711B025933C8EEB179037199B3E28B4A4
            C11202E7ECC649211F21CC76C0A0108FF80901C0BCED7E3B99DC4D272FCCB79A
            E5E5A7ABFD15E3D5DDFDEE10F2BFEF2EF619AA2737CDD64FFB33F5D3FE299EF6
            6DC5F51D5343FAB494CAE540C1B2D32DDB03DD12002633A99BCE9F5B760BDB45
            266232B2E7DECD27C5C9B904528349E3B37CDDF4D13CB52F5B0712D9E62857F5
            F2B46F5FE4D3986C7D0D76ACDBBED30B2D0B8EC9040033CCBF2B933938E2FB0F
            085B1399981F82FEEDAE6F69AC5B5156E0DB4D302C35C9D2277CF9772C9D95AF
            0EAF9A80E13BEE93D2B4A04F0E4C18311C2D0B9EAE0400679BFF7F6AEE309183
            A3D013DAD37F5C42825AA60DEE6BF68C07C467BB8A7DAFE1650BE4E219F9BE37
            057210919C85208D85721853FF479EE42538A465A7AA8251196AB2FEEF4BE39E
            FC6FD7CC1DE5FBE79CDE3089FA9B7099D0FE52DF679A26876F0F9F014240BCE3
            3F0900CE34FF1F6B2E328983677208AF1EC594C47C10EFF0DF2A2767C94B6FC1
            37FBA987BBDE0494FACE6268CA3A4CE676C050110FF93101C059E6DF4CB38EC9
            1B3C7F6DD5CDF7EA3E18F39773F56F73252C80259F0364774953D663ABB69C07
            1022E225CD0800CE09001E266D68F488EDD7E42D6C839212391F1E2002FD2372
            2475A0EBB26FBF81685AE8780800CE30FFD69A1A266C68248F18D664F33FBE96
            D3E200221502A4E72390B5999238024D0B1DF194D604007B9BFF2F34FF60B286
            4E4E6612E60F6063E410AD89015CD3CDC5406143BCE51704007B9AFFD39AE34C
            D2F0307D7C26E60F60F71050394D8D6FE426414F0E17038511F198A70900F60B
            0033989CE1E3C4CA718D761C63FE00D1E7B60E01630AEB0F018919BC01083333
            0800F632FF764CCAF0F2F9EE62DF2964A959A9983F80DD43C0DE12DF9911F59D
            FCF8FA5BDDD1B5F0D28E00600FF37F41F32913327CB47FA7E7BF2E25D93049C5
            252462FE003647AED2AEEF26CA5EBDE3D1B6F0229EF3020120FAFBFD373319C3
            CBA07E03BE7347F9432191AD81983F803D39B771729D570927257024B0056C76
            FAF9004E0F00C39884161C019C36F23BC7908EF3371A7DB4642C420B6063762F
            1BF7DD46C04CFA002C621801207AE7FCDF6502869F859332BE232AB73E9AAA56
            CD1985C00238802533F3BFBD15909D005671D7C9F70538D5FC7FA039C9E4B386
            5D1F60F4004EBF3C6852AD8382B23D04000B112FFA0101207201A08849671D57
            3671890F80D3915D3C7293A4EF72AE2C2E05B29822024064CCBF2593CD5AB8C8
            07C00CAAB617A9A129496A641A3D0011A02501C05AF37F5E739389661D7F6C11
            83700218C4B13513D4A0E444F4CD7AC49B9E27005817009630C9ACA5559B5844
            13C030362E18AD5AE8B58DC659CE12028035E6FF3693CB7ADEF95B2F0413C040
            FED6B1371A1719DE260084D7FC9FD55431B1ACA75B4C5FC412C0407AF7E88FC6
            4506F1AA670900E10B00254CAAC8D0B7771C62096020C3E207A27191A3840010
            1EF37F4553C3848A0C22128825807964270C43E3228778D62B0480D0CCFF09CD
            692653E4481D3A04B10430900959EC048830E25D4F1000820F00B94CA2C8929B
            341CB104309099A3390D300AE412008233FF5F6AEE318122CBF8CC04C412C040
            CAC6A4A17191473CEC970480A699FF639A7D4C9EC8332D3F05B10430905985BC
            018812E2658F1100020F00439834D161EEB874C412C040668C22004491210480
            C0CCFFA79ADB4C98E8503E2513B1043090D2022E048A22E2693F2500341E00E6
            3359A2C7071333104B000329C9E742A028339F00D0B0F9FF9649125DCA0AD310
            4B0003999A4B00B001BF2500D46DFEDFD3543241A24B495E3262096020537292
            D0B8E8231EF73D02C0770340572647F491C342104B00F39894CD414036A12B01
            E0DBE6FFB4C6CBC4883EA352472096009C0408D6215EF73401E05F01C0C3A4B0
            0759238721960006322E23018DB30F1E02C03FCDFF45CDD74C087B903C643062
            09602063D247A271F6413CEF4502C0EB5DCB990CDC060800D6229FF7D0385B51
            EEEA00E0BFEA97896023E2FAC42396000622377DA271B6E315570600FDC39B69
            0E3101EC45CFD87E882580810CE81B8FC6D90FF1C0666E0C009D187CFBD1E1DD
            5E8825808174EDDA078DB3279D5C1500F40F7E5C739681B71F7F6C11A3EEEE47
            2C014CE3AD763DD0387B225EF8B89B02402C836E5F6E6C9F826002188484FA3F
            BC81B6D99858570400FD439B6B2E31E0F6E5F8CA7188268041DCFAB0086DB337
            E289CDDD1000FA30D8F666FBBC7C4413C020CEAD9B80B6D99F3E460700FD039F
            D05C63A0EDCDD2A22C4413C0200E2C2944DBEC8F78E313260780810CB2036E04
            CCE746400093D8323B0F6D7306038D0C00FA873DA5B9CE00DB9FDCA4E1882680
            412C2BCA42DB9C8178E453260680E10CAE331812C771C000263173742ADAE61C
            861B1500F40F7A46F30903EB0CE4C0104413C01CC67213A09310AF7CC6A40090
            C2A03A87166F754734010C62C48041689BB348312200F8BFFD7FCA803A0BEF56
            0E030230858EEFF546D79CC5A791E805884400E8CF603A8F5D1F8C4238010CE0
            ABBD259C02E84CFA3B3A00E81FF098E63C03E93C168C4F473C010CE0CC9AF168
            9A3311EF7CCCC901A02D83C8564000E00C00088AB64E0E00BB194067D2BB477F
            C413C000CA0AD3D034E7B2DB910140FFC57FC7E03997D75B77E75A600003C84E
            1886A6399BDF3931002C65E09CCDE58D9310500087236FF3D03347B3D4510140
            FF857FAE79C0C0712B2000441739D7033D7334E2A53F77520098C2A0399FD963
            D210500007737DDB14B4CC0CA6382200E8BFE8739AAF1830E793397218220AE0
            60F697730DB02188A73EE78400C0B1BF86D02DA62F220AC02D8060E8F1C0E136
            FFEF73E5AF39C8E9617FDF391521057028856923D132B3AE0AFEBE9D030007FF
            70243000D8849EDDFBA1631C0C14B100B09E01328B69F92908298003F9724F89
            7AAD450C3A6616EB6D1900F45FEC454D0D03641603FAC623A6003400823D108F
            7DD18E01208BC1318FBFB6EAA6BEDE370D4105701873C7A6A361669265AB00E0
            BFF5EF1A0363261F578C4550011C46D2E0C1E897995C0BD72D81E10A002D1914
            73F9606206820AE030DAB4EF897E994B4B3B05800A06C45C52860E4150011CC4
            B5CD93D12EB3A9B04500D07F911734F71910739127094415C0396C9C958B7699
            8D78EE0B7608009CFCC7CD80006023266425A25B9C0C686D00D07F81669A4B0C
            84F9AC2EF520AC000EA16F2FAE007601E2BDCDA21900FEC220B8E462A0114311
            56000770A7729AFA73CB6EE8963BF84B3403C03C06C01DB46A13ABBEE13C0000
            DB7378D91834CB3DCC8B4A00D0FFE227355F3000EE4184058105B037A50529E8
            957B100F7E321A01A00DC5771725F9C9082C80CDE9DD83EFFF2EA34D3402C042
            0AEF2EE466310416C0BEDCDC51E4BBC61BBD72150B231A00F4BFF029CD6D0AEF
            2E4458AE6F9B82D002D894B5D373D02AF7215EFC54240340078AEE4E5696B01D
            10C0AE648C188A4EB9930E910C004B2838C70203807D905D3AB25B079D72254B
            221200F4BFE8879A3B14DC9DB478AB3BD70303D890236CFF7333E2C93F8C4400
            E848B1DDCDFEF2420417C0664CCB67FB9FCBE9188900B08242BB9B293949082E
            80CDE815DB0F7D72372B2C0D00FA5FF023CD3714DADD747CAF37820B60236E6C
            9FC2F63F106FFE919501A00B4506E1E38AB1082F804D90CBBAD025108FB63200
            9453601026652722BC0036216D38DBFFC047B9250140FF831FD7FC830283D0FE
            9D9EEAEE7E841720DA7CB9A744BDD1BA3BBA04CAEFD18F5B11007E4F7181DD00
            00F662C3CC5CF4086AF37B2B028087C2426D46A78D448001A24CC2A041E811D4
            C6634500384061A1366FB5EDC1A1400051E4D38FA6AA3FBD19831E416D0E8435
            00E87FE0F39A1A0A0B8FB273C1288418204A2C9B9A850EC1A388573F1FCE00C0
            F63FA893EC84610831409488EB138F0E41D0DB01030D00F32928D4C51B6F7557
            B7F79620C60011E6DAE6C91CFE03F5313F2C0140FF839A693EA1A0501F5B66E7
            21C8001166EEB874F407EA433CBB593802C06F28263484742123C80091A57BB7
            BEE80F34C46FC21100D2292434C46B2D627CAF23116580C87076ED04B4071A23
            3D1C01600F8584C628C94F4698012244715E32BA038DB127A400A0FF01CF681E
            5048688C36ED7BAA3B959C090060357204F7BB1D7BA33BD018E2DDCF841200FE
            4C1121503695D10C0860357B168E426F2050FE1C4A00C8A080102803FB0D40A0
            012C2671D060F4060225239400B099024253B8B07E22220D601157364D62EF3F
            3485CD410500FFF5BFB729203485095989083580454CF624A133D0146E37743D
            704301E0D7140F9A4ACB36B1BEFBC9116B80F022EBAA955E5FE80C34915F0713
            00065038088655D33C0836409859519C8DBE40300C0826002CA670100CEFF7EC
            8F60038499584EFE83E0581C4C00F05238089623CBC620DA0061E2E092427405
            82C5DBA400A0FF072F51340805D9AA8470038487B46143D0150885979A12003A
            53300805D9AA24E79523DE00A1E1DD3A45FDB1450CBA02A1D0B92901A0988241
            A864270C43C00142645A7E0A7A02A152DC940070948241A8FC915B020142E2AB
            BD25EAED763DD0130895A3010500FD5F6CAEB947C1201C8CCD4840C8018264F1
            E44C7404C281787AF34002C0CB140BC2C55F5B7553B7761421E6004DE4B67EFA
            6FD7A1273A02E1E2E5400240270A05E1A4243F19410768220B2765A01F104E3A
            0512000A281484F578E0B763D5E7BB8A117580261CFBDBA63D4FFF10560A0209
            006B2914849BB9E3D211768000593081A77F083B6B03090055140AC24DDB0E3D
            7D1DCD883B40E34FFF74FE830554351800F47FE1398A0456317F3C6F01001A63
            DEB874F402ACE2B98602C0AB1408ACEC05F8F4A3A9883C403D7CB1BB58BDD596
            A77FB08C571B0A00F11408AC64625622420F500F73C6A6A1136025F10D058052
            0A0456F2A73763D4954D93107B8047909D32AD79FA076B296D2800545220B09A
            8C1143117C8047282BE4E91F2CA7B2CE00A0FF1FCD345F5120B01AB929F0E38A
            B1883E809F9B3B8AD49B6FC7A20F6035E2F1CDEA0A003FA3381029E2FBC423FC
            007EF29287A30B10297E5657007885C24024D93E2F1FF107D7236FC3E4AD189A
            0011E295BA02400C858148D2A54B1FF5CDBE699800B896BBFB4BD5FB3DFBA307
            104962EA0A00E9140622CDB2A9591801B89655D33CE800449AF4BA0240198581
            48F356BB1E1C0E04AEE4EF3BA772E42F4483B2BA02C0760A03D1401AA0300470
            1B13B21259FF100DB6D71500AE50188816FBCB0B3105700DE7D64E507F6C11C3
            DA876870E55B0140FF07CD350F280C448BCE9DDFE7B640700D83FB0F60DD43B4
            10AF6F5E3B00BC445120DA4C1F95823980F16C999DC77A8768F352ED00F01A05
            013BDC13707EDD044C028CE5CB3D25EA9DBFF562BD43B479AD760088A5206097
            1302656F3466012652983692750E7620B67600C8A62060175614676316601C3B
            178C627D835DC8AE1D00E65210B00B2DDBC4FA2E47C134C0146E7D58A4DAB4EF
            C9FA06BB30B77600D84441C04E647265301844F290C1AC6BB0139B6A07804314
            04ECC6A659B99807389E95251CF70BB6E350ED00C02140603BE47EF4AB9B2661
            22E0582E6F9CA4DE78AB3BEB196C7918D0C300F01505013BD2B7577FF5353706
            8203919B2EFBBF1FC73A063BF2952F00E8FFE3498A0176A6382F194301C75136
            268DF50B76E64909002F5008B0337F78A3ABAA5C3C1A5301C7707CE538DFC156
            AC5FB0312F480078994280DD69DBA1A76F2B15E6024E38EDAF4B973EAC5BB03B
            2F4B007895428013183170100603B6464EB14C1D3A84F50A4EE0550900ED2804
            3885851333301AB02D3347A7B24EC129B49300D09B42805390EFAA27568DC36C
            C0766C9D93E7EB57619D8243E82D01209142809378B7636F8E0A065B716AF578
            F57A6BF6FB83A3489400504821C069F4E9D9DFD76C85F940D4CFF9D761942B7E
            C181144A00984521C089A40D1BC2D5C11055EE544E53717DE2598FE044664900
            584C21C0A94CCDE59020881E0529235887E054164B00A8A010E0642A4AB23123
            88388B2767B2FEC0C9544800584721C0E93B03F62EE2A440881C32DFFED88293
            FEC0D1AC9300B0954280D3919B03CFAD9D803981E51C5A3A46BD41C73F389FAD
            1200765108607B2040E31C5E3686EB7DC114764900D84F21C0147AF7E8AFFEBE
            732A660561E7C8F2B1983F98C47E0900C72804981502FAA9CF3E220440F838BA
            62AC6A81F983591C93007086428069F4ECDE4F7DC2ED8110068E69F3971E13D6
            1518C61909009728049848F76E7DB9421842E2E38A71983F98CA250900D51402
            4CA55B4C5F1A0321288EAF1CA75A62FE602ED512003EA31060325DBBF45137B6
            4FC1D420604E88F9B7C1FCC1683E9300709B4280E974EEFCBEAADE460880C6F9
            707E010D7FE0066E4B00B84F21C00D74EAF4BEBAB679322607F5327B4C9AFAC3
            1BAC157005F70900E02ADE6AD743ED2F2FC4ECE05BC8D5D2192386B246C07501
            804F00E02AE40CF7459332313EF051B565B2EA19DB8FB501AEFC04401320B812
            4FE230757B6F0926E8F273FDDBB4EFC97A00D73601B20D105C4B2FFDE4274F80
            98A1FB906BA4E52649D601B8791B200701017D01F405B886AFF74D53E3321298
            FBC04140AF721430007D012EDADF2FC74433E701FE791430970101F8491C3458
            79B7F249C0C42EFFC99E24F55A0B5EF903F839C675C0008FF046EBEE6AE1A40C
            75773FC669027B178D561DDFEBCDDC06F836BEEB8077510880EF22D70A9F5835
            0E137528721B644EE270E63240DDEC9200B0954200D48DBC329E949DA8BED85D
            8CA93A88F533737DCD9DCC61807AD92A01601D8500689877FED64B7D34BF0073
            B53917D64F54C3070C64CE0234CE3A090015140220F026C123CBC762B636E3E8
            8AB12A79C810CEF107089C0A09008B290440D3E8FF7E9CDA36379F46C12822B5
            FF6841818AEF13CF9C04683A8B2500CCA21000C121370C2E2BCAF26D33C39423
            C39DCA696A4D698EEA16D3973908103CB3240014520880D04F139C3E2A45DDDA
            5184495BC4E7BB8BD50713335487777B31E70042A7500240228500080F7F6DD5
            CDB76BE0B39D5331ED303EF12FD4C6DFBA2D5DFD0061245102406F0A0110E637
            02DAAC964CC952DFEC9B868987C0A659B91CE203600DBD2500B4A3100016ED1A
            183C98101024B30A53994300D6D14E02C0AB1402C03A0A524660E84D64EEB874
            E60E80B5BC2A01E0650A01602D3347A762EC01B2BAD4C39C01B09E972500BC40
            2100AC6F0E64874060B7F6B569DF933903603D2F480078924200584F69410A26
            DF0873C6A631570022C393FFA6949210F015C500B016D9C6C68141F523172EB5
            6C13CB5C01B09EAFC4FB1F06802B1404C07A0E2C29C4ECEBE1C8B231CC1180C8
            70A5760038444100AC67457136665F0F2B4B68FE038810876A07804D1404C07A
            267B9230FB7A989293C41C01880C9B6A0780B91404C07A52870EC1ECEB2145D7
            8639021011E6D60E00D91404C07A92060FC6ECEB416AC31C018808D9B503402C
            050120001000005C416CED00F01A050120001000005CC16BB503C04B14048000
            40000070052FD50E00CD350F280A00018000006034E2F5CDFF3B007018104064
            E066C0FA91DA304700227308D0A301603B8501B0966553B330FB7A585694C51C
            01B09EED750580320A03602D1F578CC3ECEB416AC31C01B09CB2BA02403A8501
            B08E3FBD19A3BEDACB6540F521B5911A3157002C25BDAE0010436100ACA3778F
            7E187D23488D982B0096125357007885C20058C31FDEE8AAF62E1A8DC93782D4
            486AC59C01B08C57EA0A003FA33000D630363D01830F10A9157306C0327E5657
            0068A6F98AE2008497F73ABDAFBEDCC3B7FF40915A49CD983B0061473CBED977
            02803F0454522080F0D1F2ED587564F9588CBD8948CDA476CC2180B05259DBF3
            1F0D00A51408203C0C8B1FA8BC5BA760E84122B5931A329700C246694301209E
            020184C61BADBBABE553B331F13021B5949A32B7004226BEA100F02A0502681A
            2DDEEAAE06F48D5793B213D5FA1939AA7A1B4FFDE1466A2AB5951A4BADA5E6CC
            3D8026F36A4301E0390A0481D2B14BBCCACECC5373664C574B17CE53EB2B96A8
            ED1B57A9BD3B36AA33C70FAB6FBEBEA3EEDDFD46DDBB7757DDBF774FDDBF1F00
            DFDC56F7EF7C1E713EBFB04F5DDB3CB9C978B74E5677F763D091466A2EB50F66
            CC64AC2332AFBEFE32B039FF287AADC89A91B5236B48D692AC29595BB2C664AD
            C99A93B5276B102D8226F05CBD01C01F02AA28123CA46BEC20959753A016CD9D
            AD3EDABC569D3CB2575DB9785A55DFA856DE5B9FD4CBDFBFF85239EDCFFD8BDB
            3057C3913176DA1F594B0DAD35598BB226656DCA1A95B52A6B56D62E1A06B5A8
            7AD4EFEB0A006B29943B69F36E1F3569FC44B573EB3A75E9FC092D2CD71B149E
            0645E9934F554D4D8DB394B6E6BEBA7FAA02A334D5FCF5D8CA183B6A4AEA3524
            6B29E875A8D7B0AC6559D3B2B6658DA375AE656D2001A08042B9834E5D07A819
            C5C56ADF479BD5D54B67B460DC0A5A68EAE2F69DAF1DF7B4A5EEDD51F78E7D80
            619A861E53195BA7FD913514CE35296B5CD6BAAC7959FBA20168A16B28082400
            74A25066F2669B9EBE457F78EF0E75EDEA85300BCB77B9F5F7BF2B27FEA9F9EA
            1375EF5019A6690A7A2C654C9DF847D690D5EB54B4403441B4413402AD34964E
            81048097299439FCA555773565C244F5F1C15D8D7EB7B782BBF7EE393304FCFD
            92368FE998A7E399EE1B4B27FE91B513E9F52A1A215A219A21DA81861AC5CB81
            0480E69A7B14CBB9BCD622468D193D561DAEDCA1BCD7BD111711A737033EFCF3
            A0FA3006EA70640C9DFAA7B1E63FCBD1DA211A225A229A82B63A1AF1F4E68D06
            007F08384AC19C87272B4FEDDFB94579ABAF4557389CDE0CC8CE003AFE1DDEFC
            1776B4A688B688C6A0B58EE4685D5E5F5F0028A660CEE0F5B762D5C2B965EAEA
            E5B3F6110B139A01D91940C7BF51CD7FE143B4463447B4070D760CC54D09009D
            2998BDF95BE738B565ED0A5B3DED9BD60CC8CE003AFE4D6EFE0BC75B01D120D1
            2234D9F6746E4A00788982D993818392D4C13DDB54F5CD1BF61708039A01D919
            40C7BF1B9AFF42FACCA7B5483449B4098DB62D2F051C00FC21C04BD1ECC3A8FC
            4275F6F881B0EFD5A719909D0174FCD3FC17AE330644A344ABD06C5BE1ADCFE7
            1B0A008B295CF4C948F7A84BE78E3B5410CC69066467001DFFAE6CFE0B12D12C
            D12E34DC162C0E26000CA070D1A3579F61EAF8A1DD8E1702639A01D91940C7BF
            CB9BFF8241344CB40C4D8F2A03820900BFA67091E7ED0EEFFB2EF4F03AEC1BBF
            2B9A01D91940C73FCD7F4D476B99689A681B1A1F157E1D4C00785C739BE245EE
            F09EA51FCC734457BF9B9B01D91940C73FCD7FC1EF1A108DE350A188221EFE78
            9303803F046CA680D6337ECC3875EDF239B317BF41CD80EC0CA0E39FE6BF10EE
            1ED05A279A87F64784CD0D797C63012083025AC73B9DFAAB1387F7B862D19BD6
            0CC8CE003AFE69FE0B0DD13ED140BCC052324209007FA680D63071DC04E5F55E
            75D58237AD19909D0174FCD3FC17225A03450BF104CBF8732801E019CD038A18
            3E5AB5EBE53B34C3958BDDB466407606D0F14FF35F58104D146DC423C28A78F7
            334107007F08D84321C377594FD5B58BAE5EE8C63503B233808E7F9AFFC28268
            23970D85953D8DF97B2001209D4286C65F5BC7AA9D5BD63AF6143F9A01D91940
            C73FCD7F913A4D50B4523413EF0899F4700480DF50C8E019363C4D5DBD748685
            6D7833203B03E8F8A7F92F8C370E6ACD14EDC44342E237E10800CD349F50CCA6
            5332658AAABE719D05ED9266407606D0F14FF35F181F12B4768A86E22541219E
            DD2CE400E00F01F32968D3D8B46639AFFC5DD80CC8CE003AFE69FE0BEF2701D1
            523CA5C9CC0FC4DB030D005D286860BCF1764FE3CEF0A719909D0174FCD3FC17
            ED3B05445BF19880E912CE00F0BCA686A2364C4CEC6075F9C22916ACDB9B01D9
            1940C73FCD7F6147B4553416AF6914F1EAE7C31600FC21E00085AD9FD4D46CE5
            F55E61A1D20CC8CE003AFE69FEB3ECE0A02B3EADC5731AE440A0BEDE9400E0A1
            B07553563A4D551B787B1FCD80EC0CA0E39FE63FDB3D3468AD15CDC57BEAC563
            4500F83D85FD2E6B5794B32869066467001DFF34FF4518D15E3CA84E7E6F4500
            90EB81FF4171FFC5BA154B58883403B233808E7F9AFFA28468305EF42DFED1D0
            F5BF4107007F0828A7C0FF647D05E64F33203B03E8F8A7F92FDA8816E349FF4D
            79533CBDA90180ED809A0D2B97B2F068066467001DFF34FFD904D164BC29F0ED
            7FC106801F69BE71738137AE5AC682A319909D0174FCD3FC6733449B5D6EFEE2
            CD3FB22C00F843C00AD79EEEB71AF3A719909D0174FCD3FC675744A35D1C0056
            34D5CF8309001DDD7BB42F0B8C6640EB7706EC5E98A746A70F340AF94D6EEDF8
            A7F92FC221C0BD4707778C4400F8A1E68E9B0ABB7AE9221616CD8011DB1930A3
            7084FACD1F5B1985FC263776FCD3FC171D44B35D66FEE2C93FB43C00F843C012
            B71476CA84895CEA433360447706B82100B8A5E39FE6BFE85D2224DAEDA200B0
            24182F0F360074704351478E4CE73A5F9A0123BE33C0F400E0968E7F9AFFA27F
            9DB068B84B024087480680A734B74D2E68976E0395B7EA320B8966C088EF0C30
            3A00B8A8E39FE63F1BA0355CB4DC70F3172F7E2A6201C01F02169A7CA5EFE5F3
            27593C340346656780B101C0651DFF34FFD9E41641ADE5865F25BC30581F0F25
            00B431B5A0270EEF61E1D00C18B59D0133C78C342E00C86F7253C73FCD7FF642
            34DDE000D0261A01E049CD17A61573EBFA952C189A01A3FA67F7E615C60500F9
            4DAE0C7434FFD906D17603CD5F3CF8C98807007F089867DAB5BE2C149A01A3FD
            E7C8DEADC60500F94D6EFC43F39FBD30F01AE179A17878A801E02FA61472C0C0
            243AFE69062400100068FE337C678068BD4101E02FD10C00CD34979C5EC43FB5
            ECAEAE5C38C502A11990004000A0F9CF7044EB45F30D307FF1DE66510B00FE10
            90E2F4426EDFB08A8541332001800040F39F4B10CD372000A484EADFE108002F
            68EE3BB58819E9B9CA7B9393FE68062400100068FE730D5AF345FB1D6CFEE2B9
            2F443D00F8434085138BD8AA5D2F5575ED228B81664002000180E63F9721DA2F
            1EE0D00050110EEF0E570068E9C4221EDAB39D8540332001800040F39F4B110F
            7068006869A700F098E69A930A583471320B80664002000180E63F97235EE030
            F317AF7DCC3601C01F02B29C52C04E5D07286FF535263FCD8004000200CD7F6E
            477B81788283024056B87C3B9C01E0454D8D338EFADDCBA4A71990004000A0F9
            0FFC4705EF758AF98BC7BE68BB00E00F01EBED5EC0BC9C02263CCD80B6FE73E0
            F011E30280FC269AFFC0CE8837382000AC0FA767873B00B4B573F15E6B11A3AE
            5C3CCD64A719D0E601E0988101E018CD7F60EF0382B4378847D83C00B4B57300
            F8BEE6BA5D8BB778DE6C263ACD8004000200CD7F5027E21136367FF1D6EFDB36
            00281B9F0CF87687F769FCA31990004000A0F90F1A6C0814AF30F5E4BF480480
            E7345FD9AD783BB7AE6372D30C48002000D0FC070D225E6143F3174F7DCEF601
            C01F02A6D8A9787DFB8F54DE9B3798DC34031200080034FF4123C704DFF07986
            CD02C0142BBCDAAA00F073CD03BB14EFD4D17D4C6A9A011DF1E7CE37DFA819F3
            161B1700E437C96FA3F90F9C8078868DCC5FBCF4E78E0900FE10B0D40EC52BC8
            1BCD84A619D0F67F1ED4D4A8CFBEF8C2F7DB2695CE362E00C86F92DF26BFF181
            619F7068FE3313F10E9B0480A556F9B49501E0777628DEA573C799CC3403DAFE
            A9FFFAA79FFDF76F33390008F25B4D7A1B40F39F998877D82400FCCE7101C01F
            027647B370D999794C649A011DF1D45F1BD303C0434C781B40F39FD9888744D9
            FC775BE9D1560780A81E0C74EA18DFFE690674C653BF1B0380096F0368FE33BC
            17E0D83EA30EFE897400905B02CF47A37071F1097A006F3189690674C453BF5B
            0380D3DF06D0FC673AB77C5E1225F33F1FAE5BFFA21200FC21A07F348A7770F7
            36262FCD808E79EA777B0070E2DB009AFFDC8178499402407FABFD391201E029
            CDA7912C5CC72EF1AA9A7DFF34033AE8A99F00E0BCB70134FFB9A4DF487B8978
            4A84CD5F3CF329C707001585E381B76D58C9C4A519D0514FFD040067BD0DA0F9
            CF5D88A738FDD8DF68068067349F44A2706FB6E9A9BCD5554C5A9A011DF5D44F
            0070D6DB009AFFDC76474095CF5B2264FEE295CF181300FC216078248AB774E1
            3C262BCD808E7BEA270038EB6D00CD7FEE43BC2542016078A47C399201E0A948
            5C157CEDCA79262BCD80D17BEAFFFC8B907F0B01A09EB7019FDBE36D00CD7FEE
            44BC254257FE3E655C00F087808156162F293193894A33A0239FFA0900CE791B
            40F39F7B118FB138000C8CA427473A003CA1B96655F1766FDFC024A519D0914F
            FD040067BC0DA0F9CFDD88C75868FEE28D4F181B00FC21A08F15C57BAD458CF2
            7AAF3049690674E4533F01C0196F0368FE7339DA63C46B2C0A007D22EDC7D108
            00CD3597C25DBCFCDC514C4E9A011DFBD44F0070C6DB009AFF40BCC602F3174F
            6C6E7C00F08780D87017F0D09EED4C4EB0BC19F09F4FFDD6BE02260004F336E0
            53CBDF06D0FC0782788D050120361A5E1CAD00F0B8E66CB88AF79756DD95F73A
            7BFFC1BA66C0070FAC7DEA270084F16DC0036BDE06D0FC073EB4D788E784D1FC
            C50B1F774D00F087804EE12A60D1C4C94C4AB0AC1930124FFD04007BBF0DA0F9
            0F6A239E13C600D0295A3E1CCD00D04C73281C053C7E68379312C2DE0C18C9A7
            7E0280BDDF06D0FC07B511CF0993F98B0736735D00F0878057422D60AB76BD54
            F58DEB4C4A086B3360A49FFA0900F67E1B40F31F7CEB4DA3F61CF19E30048057
            A2E9C1510D00FE10501E4A01A74EE2F53F84AF19305A4FFD0400FBBE0DA0F90F
            EA42BC2744F32F8FB6FFDA2100BCA8F93AD822EEDDB191C908616906F43DF5DB
            E03B2F01C0A2B7019F04F73680E63FA80BF19E10CC5F3CEF45D707007F08F004
            5BC82B174F331921A466403B3CF51300ECF93680E63FA80FF19E100280C70EDE
            6B9700F0B4C6DBD422B6FB5B5F3D10B7988C107433A05D9EFA0900F67C1B40F3
            1FD4CF2D9F070561FEE2754F1300BE1D02BAB2FD0F22D50CF8E0C1035B3DF513
            00A2F936E001CD7F10C9ED805DEDE2BB760A00DFD35472F90F58DD0C68C7A77E
            0280FDDE06D0FC078D11C4E540E271DF2300D41D027EDBB4EFFFA79884107033
            A09D9FFA0900F67B1B40F31F34DE0770AAA901E0B776F25C5B05007F08981F48
            21DBBCDB47796FF2FD1F026B06B4FB533F01C05E6F0368FE8380D01E245E14A0
            F9CFB79BDFDA3100FC5473BBB1624E1E3F91C9070171F333677DC7DDB9FFA09A
            B9A0BC41D20AA7A8C19985B640FE2E8DFD7DE5373167C044C48B02307FF1B49F
            1200020B01431AFDFEBF8DEFFFE05EE2D30B55DB3E236D415CFA68C604DCDB07
            B02DA03E802176F45ABB0680C734FB1A2AE8C5B31F33F9C09554DDFC44BD1B9F
            6C9B00207F17F93B3136E046C48B1A317FF1B2C708004D0B01BFD4DCABAFA85E
            EF55261FB892E3E72EDAC6FC1FF2F1D90B8C0DB813ED450D98BF78D82FEDEAB3
            B60D00FE10905B5751DFEAF03E930E5CCBD6BD076D1700B6ECDECFD8806B114F
            AA2700E4DAD963ED1E009ED09C7EB4A8A9C9D94C3A702D0B576FB25D00F86015
            7772807B114FAAC3FCC5BB9E2000847E65704DEDC2CE99319D4907AE65D2ECC5
            B60B00E3672D646CC0B588273D62FE35D1BEEAD78800E00F0125B58BBB6DC34A
            261DB8969431C5B60B00498553191B702DE2498F0480122778AB5302C0B39AAA
            87C53D71780F930E5C4BEFA43CDB05809E09398C0DB816F1A45AE62F5EF52C01
            20BC21E06DAE0006B773F5FA4DD5BE5F82ED0240BBBE23D5E5EAEB8C11B89247
            AE067EDB29BEEA9800E00F014BA4C0D537AA9974E04A0E9D3C633BF37FC8FE8F
            B99B03DC897892DFFC9738C9539D16009EEFD663F0674C38702BEB3FDC6BDB00
            B066DB2EC6085C8B7893781401C042E6CE284967B2816BBB8D97AFB56D0098B5
            64356304AE45BCC9697EEAB800209C3CBCEB16130EDC4861E97CDB0680FCE239
            8C11B812F124277AA92303C007B3A63D7FEDF2D91A261EB88D11F9936D1B0086
            78C63346E03AC48BC493080011644DF9BC7ED537E83A06977D671C9E65DB00D0
            79703A63042E6BFEBBAEC48B9CEAA38E0D00C2EE2DABF73209C12D5CBCE6B5AD
            F93FE4CCA52B8C15B806F120277BA8A303C0ABAF776D76F6F8FE3B4C4470037B
            8F1EB77D00F8E8C011C60A5C81788F781001208A944E99F4FF78AB2E3121C178
            566EF9C8F60160E9FAAD8C15988FF61CF11EA7FBA7E3038050B170CE24EFCD9B
            4C4A309AE98B57DA3E0014CD5BCA5881D968AF11CF31C13B8D080042E58EF557
            989C6032B94565B60F0019134A192B301AF11A537CD39800D0B14BFC3397CE1E
            BBCF040553199C3DCEF601A05FEA28C60A8C453C46BC86006043E6CF98D6C25B
            5DC5440523E93428CDF601A043FF2475EDC62DC60BCC437B8B788C499E695400
            1076AC5F3687C90AA671FAE215DB9BFF438E9E3EC798817188B798E697C60500
            E1D4A19D554C5830890FF71F764C00D8B8B3923103A3104F31D12B8D0C0007B7
            2EFFC195F3C7EF3271C11496ACDFEA980030AF623D6306C6205E229E42007010
            6B97CCFD95B7EA926BEE0BA8BA794B5DBD713364E49FC3A2B71FB2BDCE290160
            EC8C058C191A61CA7EFF1AF112537DD2D800E00B014BE7C757DFA876C731B155
            5EB5EFE3E32173F6CA55C4D286C8F63AA7048084515318333B9E5CA7D7763834
            42B4C60DF512EF100F31D9238D0E00C2E655E54BBCB76E110008008E46B6D739
            2500C48EC866CC08000EE79612EF30DD1F8D0F00FE43822E100008004E7E75FB
            4E5C9263028070A9AA9AB1230038F9B09F0B6EF046570480575FEFDAFCD491BD
            77080004002772ECCC794799BF5079F4046347007066C7BFF60AF10C028041A4
            A564BD78E5C2A90704000280D3D8BC7BBFE302805C5CC4D811001CD7F1AF3D42
            BCC22DBEE89A0020944D9BDAC2EBBD42002000388A052B37382E00C8C5458C1D
            01C051686F108F709327BA2A0008ABCBE7A557DFB84E0020003886F1B3163A2E
            00C8C5458C1D01C0391DFFD7957883DBFCD0750140D8B971C52A020001C02924
            154E755C0018983596B123003806F104377AA12B038070AC72DB79020001C009
            F44CC8755C00E8383095B1230038A3C9567B815B7DD0B50140387FF2E0970400
            02809DB95C7D5DB5EB9BE0B800209CBA7099312400D81AF100377BA0AB03C0DA
            F239FFCBE5731FDF25001000ECCA81E3A71C69FEC28E7D87184302807DC3B5D6
            7EF10002808B595856FA7F5DBDE8FCED8104003359BB63B76303C0E2B55B1843
            02802D11CD17ED77BBFFB93E000833A64EF9FDB52BE76B08000400BB51B674B5
            6303C0E439E58C2101C07688D68BE6E37D0480DA21E05D6FD525020001C0568C
            2A99EBD80090366E1A634800B0175AE345EBF13C02C0775830B3B4BFB7FA1A01
            00B1B40DC372273A3600BC9F9CCF181200EC83D676D178BC8E00502FCB17CC4E
            AFBEEE2500802DE83A34D3B101A07DBF4475F5FA4DC6910010FD837EB4A68BB6
            E3710480C677072C5B30A9FAE60D020044778BD2D52AC79AFF430E9F3CC35812
            00A26BFE5ACB45D3F1360240C06C5DBD6481F7E64D0200448DDD878E393E00AC
            FF702F634900881E5AC345CBF1340240D38F0CDE54B1C17BEB160100A2C28A4D
            3B1C1F00E62C5FCB581200A2C42D251A8E9711008266FF8E75FB0800100DA62D
            5CE1F80050583A8FB124004405D16E3C8C00103247F76E3D43008048E3993CCB
            F1016044FE24C69200107144B3F12E0240D838B46BD339020044920199631C1F
            006286653296048088225A8D671100C2CE9E6D6B4F12002052741C90E2F80020
            C86E06C69300100944A3F12A0280858D812BF7D9B13190006016272F5C32C2FC
            85DD873F664C09001168F85BC9377F0280F5EC58BF7CABDDB6081200CC627BE5
            21630280EC66604C0900566EF5134DC69B08001163F3EAF2155E1B1D16440030
            0BB949CF940020BB191853028035E67F438916E349048088B3B162D19CEA1BD7
            0900107626CF2D3726007826CF644C0900E13FE14F6BAF68305E440088EEB1C1
            37AA09001056E4263D5302407C4621634A0008B3F95773BC2F01C01EAC2E9FE7
            F15EAF220040D8E8939C6F4C00F85B7C8AAABAC9981200C284D65AD15CBC8700
            601B2A16CE19EEADBE4A008090B976E3A6EAD03FD19800201C3F7791B1250084
            E14ADFAB4AB416CF2100D88E65F3CB7A79AB2E130020248E9C3A6B94F90B5BF7
            1E646C0900A1A1B5553416AF2100D89635E5735B555D395F43008060D9B8B3D2
            B800B070F526C696001034A2A9A2AD780C01C0F62C5F30EBDF2F9D3D7A970000
            C1306FC57AE302C084B2458C2D012028444B4553F116028063289E38E1E99387
            767E4A0080A63276C602E30240CA9862C69600D0F41331B5868A96E229040047
            B26FC7BA8F2371743001C01C12464D312E00F44ACC656C09004D3ADA57B4130F
            2100389E2DAB97945B7D601001C01C6247788C0B00EDFA26A82BD537185F0240
            4007FC8866E21D040093B609A67ABD570800D0F0F74E6FB536CB91C60500E1C0
            F1538C3101A061B4468A56E2190400E3985B5ADCF2EAA5D3350400A88F7DC74E
            1A69FEC2DAEDBB19630240BD88368A46E2150400631937BAF017E74E1CF88600
            0075B17ADB4E630340D9D2D58C3101A04E4413451BF1080280F1C4C5273C716C
            DF762F01001E6566F92A63034041C95CC69800F01D440B4513F1060280ABD8BF
            63ED56B9CB9A00000FC92F9E636C00189A3B81312600D4BACAF7A6DAB77DED56
            BC8000E05AF66CAEF078BD570900E06348CE786303409721198C3101C0DFEC77
            5589F6E1010400D7B369F982FFF7D2D963DF1000A0F3E07463038070F632F3CB
            ED0140B44E340FED2700C07F9F1C38FEF143BB369FF5DEBC450070AB406B7334
            D9FC859D078F32D66E0D005ADB44E344EBD07C0200D4C1FAE51F4C09E6930001
            C0F9EC3C70D4F800B06CC336C6DA8D01406B9A681B1A4F008046282D9AFCA70B
            A78FDC2700B80B3147D30340F182658CB5CB02806899681ADA4E008000E9D825
            FE99CA1DEBAF04FA498000E07CC41C4D0F009913A733D66E09005ABB44C344CB
            D074020004C19AA50B8A03F9244000703E591367181F00FAA78D66ACDD1000B4
            668976A1E10400089145B3A7FF7F97CE1CFD8600603671E9A38D0F00EFC425A9
            AA9BB7186F83038068956816DA4D008030EE1238BA77CB89FA3E0910009C4DD5
            CD4FD4BBF1C9C60700E1D899F38CB98901406B9368145DFE0400B088DD9B9667
            79AF5DAC210098C5F173175C61FEC2E6DDFB1973D30280D624D126349A000016
            B37261D9FF71E2D0CE9BDE5BB7080086B075CF01D70480052B3730E6C604805B
            4AB44834096D26004004D9B07CE1E4AA6B17090006B070F526D7048071333F60
            CC0D0800A23DA24168310100A2C4D882D1FF7E6CDF8ECF2E565511001CCCC4D9
            8B5C130012471731E68E0E00554A3447B4070D2600801D4E105CB5B4ECF0C993
            0400879232A6D83501A0C7480F63EED000201A235A83E61200C066944D2FFD1F
            870FEFFB72FFF113040087D13B29CF3501A05DDF91EA92B79A71775000104D11
            6D118D416B09006063B66DA898F2F1E95304008770F5FA0DD5BE5F826B0280B0
            EFD849C6DE210140B44434056D25008043585B3EE727C70EEFFDE4D0C9530400
            9B73E8E4195799BFB06AEB4EC6DEE60140B4433444B4044D25008003D9B5A922
            F3D4B93335817E162000449EF51FEE755D009859BE8AB1B7690010AD10CD10ED
            40430900E070B6AF5EF8D4C13DDB4E1D3B7386006043E62C5FEBBA0090377536
            636FC300201A215A219A81761200C0A43B05CAA6BFF2F1D1FDB70F36B05B8000
            10790A4BE7B92E000CF68C67EC6D14004413441B4423D04A020098BC65B06251
            FAF153C76B0800F66044FE24D705804E83D2187B9B0400D102D104B49100002E
            E1D5D7BB7E6FD7F6F53B8E9C3A45008832DD8665B92E0008A72F5E61FCA31800
            64ED8B068816A08904007021B3A74DFDDF0FEEDF73E3C0891304802870F19AD7
            95E62F7CB8FF3073200A0140D6BAAC7959FB68200100E0DFD62C2F7FE7C8C747
            EE120022CBDE23C75D1B00CAD76D650E443800C81A97B58EE6010100BEC3A68A
            C579572F9E7A80604686955B3E726D0098326F09732052874DE9352D6B1B8D03
            02003448F1C4F18F576E5BB3C15B75A906F1B496E98B2A5C1B00D2C74F630E58
            8D5EC3B296654DA36D400080C03F0B94CF797ADFF6B53B0802D6915B54E6DA00
            D027A5803960A1F1CBDA95358C960101008266FEF492672AB7AFD94910083F83
            B2C7B9360074E89FA8AEDDB8C93C08F713BF5EABB266D12E200040183F0D4C78
            76CFD6D5BBB5C820B461E2BD81A9AE0D00C29153679907E1317E256B53D6285A
            050400B08CD179053FDEBD657525412034641FBC9BCD5FD8B8B392B910A2F1CB
            5A943589360101002246665AF6FFBA73F3AA03DEAACB087110C83E78B70780B9
            2BD631178232FECB4AD69EAC41B408080010D53702FBB6AFDDA345891E8126B0
            64FD56D7078031D3E733179A66FCD2DCB787277E200080ADD8B371C90F0FEFDA
            B8A9EACA39CE110880A2794B5D1F0046164C662E0480AC29595BB2C6D01A2000
            80ADD9B961F9980BA70EDDF1DEBA8580D743C68452D707806EC3B3980BF5724B
            C91A92B584A60001001CC7CA4573DA1EDBB7BDDA7BBD0A417F847EA9A35C1F00
            04B90F81F9500BBD5664CDC8DA41438000008E677CE198FFF1D1A695FBAF5E3E
            439F80BCD2BD794B75E89F4400D0C87D08CC894F94AC0D5923B256D00C200080
            71BCFA7AD7EFAF59327FEAB91307EE786FBAF71098A367CE63FE7E2A367FE85E
            E3D76B40D682AC09591B68041000C015542C9CDDE2F8FE1D97BDD5D75C27FC9B
            76EDC3FCFD942EAA709FF1EB392F735FD6005A000400702D07B7ADF8D1E19D1B
            D65C397FFCAE5B9A0617ACDC80F9FBC99932CB354D7D32C765AECB9C67ED0301
            00A016EB97CEFFCBA15D9B4E5DBB7CD6E85E81F1B31662FE7E06668E35DAF865
            2ECB9C96B9CD1A07020040E3BD02CD16CF9D997EB472FB4DAFF78A71A69034BA
            08F3F7D371408A79C6AFE7ACCC5D99C3329759D340000008826E3D063DB561C5
            C2D2D347F77C5E7DA3DA0883E8999083F9D7E2C479E7DF2B217353E6A8CC5599
            B3AC5D2000008491B9A553FFB7DD9B562EBF78EAB06377115CAEBEAEDAF54DC0
            F86BB1BDF2A063BBF8652ECA9C94B9C91A0502004004D8BE7AD1FF3CBC6BE3F6
            2BE74FDC7552183870FC14A6FF088BD66C7694E9CB9C93B9277390B508040080
            28B2A67CCEBFEFDCB862D5E9A37BBFF0565FB5B581ACDDBE1BD37F84497316DB
            7CDBDE5525734BE698CC35D61C100000ECD940F8F8DAA50BD20EEFDE72EECA85
            93F7EDB6B5B06CE96A4CFF1152C796D86FCB9E9E3B3287642EC99C626D010100
            C06194CF99F1EB3D5B56AD3FF7F1BE2FBCD5D1BF936054C95C4CFF117A27E5D9
            E029BF4AC91C91B9227386B50304000083289E38FEF1ADAB17A71FABDC76E1EA
            A5D351793B302C7722A6FF08EDFB25A8ABD76F44FC295FE680CC059913323758
            2340000070093BD62E7E79CF969565C7F7EFB874F9DCC77723B1CDB0EBD04C4C
            BF0E0E9E386DF9363D1963196B1973197BD600100000E0E11B8227D62F5B3074
            DFF67595678EEDFDA2EAEA85B09E4878FE6A15665F0FEB76EC09EF8D8B7AEC64
            0C652C654C656C99E30004008026848209BFDFBCAA7CD1E13D5BAA2E9E397A3F
            94B704BB0F1DC3ECEB61F6B235213DDDCBD8C818C958C9983177010800006125
            2E3EE1898D2B16C61DFC68C3B6D347765F97D7CA811E57BC7CD30ECCBE1E464D
            9B17F031BB5273A9BD8C818C858C0973138000001015E69416FFCF75CB167876
            6D5EF9E1D1CA6DD7CF9D3C78B7EAEA0555FB90A2920F9663F6F5303C6FE2B70E
            DB91DA490DA5965253A9ADD498B90640000070C29904CD7AF61EFA7F2F9E3373
            D88EF5CB57CD5B30DF9B3FA9F86E6AE1E49A81996354CCB04CD5AEAFFBCC5E7E
            B3FC76A981D4A240D7A4A874C64DA991D44A6AC6253A000400006339B2A3E2FF
            DCB0E28398F20FE6CC9A3BB76CEF8CB2B26B53A7CFFC724C51E9BDAC714535C3
            73C6A9DE8939EA9DB824C7987B87FE49BECB8E867AC6AACCB1536AC6144DBB57
            A47F93FC36FD1B2BE5B7CA6F96DFCE1C002000004003E465E7FE68E6F4927633
            674E1F3F6D7AE9C66933671C9F5E5656553CB3ECD329D3677E3171DA8C3B63A7
            96DE1D35B9E45EDEC4E2FB59638B1EA4154EAA49CC9F50334C1BF1C08CD1AA5F
            4ABE36668F8A199AA9DE1B98AADAF74BF421FFB7FC67F2FF93FF8EFC77E57F23
            FFDBD4D1936AE49F953BA1F8BEFCB3C7E87FC78492E977A694CEFCA278E6AC4F
            A7CD9AE52D9931E3787169E9A6E9D34B274C2F2D6EEFC9CC79963103B03FFF3F
            9AC39021987D84FF0000000049454E44AE426082}
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxPNGImage'
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 0
          Transparent = True
          Height = 74
          Width = 74
        end
        object gboxUsuario: TcxGroupBox
          Left = 3
          Top = 3
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          PanelStyle.Active = True
          Style.BorderStyle = ebsNone
          TabOrder = 1
          Transparent = True
          Height = 82
          Width = 133
          object lblTituloUsuario: TcxLabel
            AlignWithMargins = True
            Left = 7
            Top = 27
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alBottom
            Caption = 'Operador'
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 37
          end
          object lblOperador: TcxLabel
            AlignWithMargins = True
            Left = 7
            Top = 55
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alBottom
            Caption = 'lblOperador'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 126
            AnchorY = 65
          end
        end
      end
    end
    object panQuantidade: TAdvSmoothPanel
      Left = 510
      Top = 6
      Width = 264
      Height = 92
      Cursor = crDefault
      Transparent = False
      Caption.Text = 'Quantidade'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 2
      TMSStyle = 0
      object curredtQuantidade: TcxCurrencyEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Margins.Left = 4
        Margins.Top = 24
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alClient
        EditValue = 1.000000000000000000
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '#,##0.000;-#,##0.000'
        Style.BorderStyle = ebsNone
        Style.Color = clBlue
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -37
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = clInfoBk
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBlue
        StyleDisabled.TextColor = clWhite
        TabOrder = 0
        Width = 248
      end
    end
    object panPrecoUnitario: TAdvSmoothPanel
      Left = 510
      Top = 100
      Width = 264
      Height = 90
      Cursor = crDefault
      Transparent = False
      Caption.Text = 'Pre'#231'o Unit'#225'rio'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 3
      TMSStyle = 0
      object curredtPrecoUnitario: TcxCurrencyEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Margins.Left = 4
        Margins.Top = 24
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alClient
        EditValue = 0.000000000000000000
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '#,##0.00;-#,##0.00'
        Style.BorderStyle = ebsNone
        Style.Color = clBlue
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -37
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = clInfoBk
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBlue
        StyleDisabled.TextColor = clWhite
        TabOrder = 0
        Width = 248
      end
    end
    object panValorDesconto: TAdvSmoothPanel
      Left = 510
      Top = 196
      Width = 264
      Height = 90
      Cursor = crDefault
      Transparent = False
      Caption.Text = 'Valor do Desconto'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 4
      TMSStyle = 0
      object curredtValorDesconto: TcxCurrencyEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Margins.Left = 4
        Margins.Top = 24
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alClient
        EditValue = 0.000000000000000000
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '#,##0.00;-#,##0.00'
        Style.BorderStyle = ebsNone
        Style.Color = clBlue
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -37
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = clInfoBk
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBlue
        StyleDisabled.TextColor = clWhite
        TabOrder = 0
        Width = 248
      end
    end
    object gboxPrecoTotal: TAdvSmoothPanel
      Left = 510
      Top = 289
      Width = 264
      Height = 90
      Cursor = crDefault
      Transparent = False
      Caption.Text = 'Pre'#231'o Total'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 5
      TMSStyle = 0
      object curredtPrecoTotal: TcxCurrencyEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Margins.Left = 4
        Margins.Top = 24
        Margins.Right = 12
        Margins.Bottom = 12
        Align = alClient
        EditValue = 0.000000000000000000
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '#,##0.00;-#,##0.00'
        Style.BorderStyle = ebsNone
        Style.Color = clBlue
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -37
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = clInfoBk
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBlue
        StyleDisabled.TextColor = clWhite
        TabOrder = 0
        Width = 248
      end
    end
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 52
    Top = 136
  end
  object dsMovimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos
    Left = 52
    Top = 224
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryOperadores
    Left = 52
    Top = 180
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryVendas
    Left = 52
    Top = 265
  end
  object dsVendas_Produtos: TDataSource
    DataSet = dmPDV.qryVendas_Produtos
    Left = 52
    Top = 353
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 52
    Top = 92
  end
  object dsVendas_Totais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryVendas_Totais
    Left = 52
    Top = 309
  end
  object actlstFuncoes: TActionList
    Left = 573
    Top = 199
    object actLocalizarProduto: TAction
      Caption = 'Localizar Produto'
      ShortCut = 76
      OnExecute = actLocalizarProdutoExecute
    end
    object actConsultarProduto: TAction
      Caption = 'Consultar Produto'
      ShortCut = 67
      OnExecute = actConsultarProdutoExecute
    end
    object actLerPeso: TAction
      Caption = 'actLerPeso'
      ShortCut = 66
      OnExecute = actLerPesoExecute
    end
    object actDesconto: TAction
      Caption = 'actDesconto'
      ShortCut = 68
      OnExecute = actDescontoExecute
    end
    object actCanelarVenda: TAction
      Caption = 'actCanelarVenda'
      ShortCut = 85
      OnExecute = actCanelarVendaExecute
    end
    object actCancelaItemVendido: TAction
      Caption = 'Cancela Item Vendido'
      ShortCut = 80
      OnExecute = actCancelaItemVendidoExecute
    end
    object actSubtotaliza: TAction
      Caption = 'actSubtotaliza'
      ShortCut = 83
      OnExecute = actSubtotalizaExecute
    end
    object actSangria: TAction
      Caption = 'actSangria'
      ShortCut = 77
      OnExecute = actSangriaExecute
    end
    object actSuprimento: TAction
      Caption = 'actSuprimento'
      ShortCut = 78
      OnExecute = actSuprimentoExecute
    end
    object actCancelarUltimoItemVendido: TAction
      Caption = 'actCancelarUltimoItemVendido'
      ShortCut = 69
      OnExecute = actCancelarUltimoItemVendidoExecute
    end
    object actIdentificarCliente: TAction
      Caption = 'actIdentificarCliente'
      ShortCut = 113
      OnExecute = actIdentificarClienteExecute
    end
    object actTroca: TAction
      Caption = 'actTroca'
      ShortCut = 84
      OnExecute = actTrocaExecute
    end
    object actTEFAdm: TAction
      Caption = 'TEF Adm'
      ShortCut = 79
      OnExecute = actTEFAdmExecute
    end
  end
  object dsMovimentos_Operacoes: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos_Operacoes
    Left = 160
    Top = 224
  end
  object dsClientes_LookUp: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryClientes_LookUp
    Left = 52
    Top = 396
  end
end
