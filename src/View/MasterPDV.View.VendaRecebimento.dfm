inherited frmVendaRecebimento: TfrmVendaRecebimento
  Left = 0
  Top = 0
  Caption = 'Recebimento'
  ClientHeight = 524
  ClientWidth = 809
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  OnShow = FormShow
  ExplicitWidth = 825
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 16
  object barStatus: TdxStatusBar
    Left = 0
    Top = 504
    Width = 809
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 124
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 124
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 124
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    DesignSize = (
      809
      504)
    Height = 504
    Width = 809
    object gboxFerramentas: TcxGroupBox
      Left = 12
      Top = 290
      Anchors = [akBottom]
      PanelStyle.Active = True
      TabOrder = 0
      Height = 201
      Width = 784
      object btnTipoRecebimento01: TcxButton
        Tag = 1
        Left = 8
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento06: TcxButton
        Tag = 6
        Left = 8
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento07: TcxButton
        Tag = 7
        Left = 163
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 2
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento09: TcxButton
        Tag = 9
        Left = 473
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento08: TcxButton
        Tag = 8
        Left = 318
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento10: TcxButton
        Tag = 10
        Left = 628
        Top = 103
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 5
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento02: TcxButton
        Tag = 2
        Left = 163
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 6
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento04: TcxButton
        Tag = 4
        Left = 473
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 7
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento03: TcxButton
        Tag = 3
        Left = 318
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 8
        OnClick = btnTipoRecebimento01Click
      end
      object btnTipoRecebimento05: TcxButton
        Tag = 5
        Left = 628
        Top = 8
        Width = 149
        Height = 89
        Caption = 'Recebimento'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = dmLeiaute.cxImageList48
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 9
        OnClick = btnTipoRecebimento01Click
      end
    end
    object gboxSubtotal: TcxGroupBox
      Left = 12
      Top = 12
      Anchors = [akLeft, akTop, akRight, akBottom]
      Enabled = False
      PanelStyle.Active = True
      TabOrder = 1
      Height = 268
      Width = 784
      object gboxValorLiquido: TcxGroupBox
        Left = 3
        Top = 3
        Align = alTop
        PanelStyle.Active = True
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -43
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 88
        Width = 778
        object lblValorLiquido: TcxLabel
          Left = 3
          Top = 3
          Align = alClient
          Caption = 'Total da venda'
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 44
        end
        object dbcurredtValorLiquido: TcxDBCurrencyEdit
          Left = 394
          Top = 3
          Align = alRight
          DataBinding.DataField = 'valor_liquido'
          DataBinding.DataSource = dsVendas_Totais
          Properties.Alignment.Horz = taRightJustify
          Properties.UseThousandSeparator = True
          Style.Color = clWindow
          TabOrder = 1
          Width = 381
        end
      end
      object gboxValorRecebido: TcxGroupBox
        Left = 3
        Top = 91
        Align = alTop
        PanelStyle.Active = True
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -43
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 88
        Width = 778
        object lblValorRecebido: TcxLabel
          Left = 3
          Top = 3
          Align = alClient
          Caption = 'Valor recebido'
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 44
        end
        object dbcurredtValorRecebido: TcxDBCurrencyEdit
          Left = 394
          Top = 3
          Align = alRight
          DataBinding.DataField = 'valor_recebido'
          DataBinding.DataSource = dsVendas_Totais
          Properties.Alignment.Horz = taRightJustify
          Properties.UseThousandSeparator = True
          Style.Color = clWindow
          TabOrder = 1
          Width = 381
        end
      end
      object gboxValorTroco: TcxGroupBox
        Left = 3
        Top = 179
        Align = alTop
        PanelStyle.Active = True
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -43
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 88
        Width = 778
        object lblValorReceber: TcxLabel
          Left = 3
          Top = 3
          Align = alClient
          Caption = 'Valor a receber'
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 44
        end
        object dbcurredtValorReceber: TcxDBCurrencyEdit
          Left = 394
          Top = 3
          Align = alRight
          DataBinding.DataField = 'valor_receber'
          DataBinding.DataSource = dsVendas_Totais
          Properties.Alignment.Horz = taRightJustify
          Properties.UseThousandSeparator = True
          Style.Color = clWindow
          TabOrder = 1
          Width = 381
        end
      end
    end
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 600
    Top = 60
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 600
    Top = 104
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryOperadores
    Left = 600
    Top = 196
  end
  object dsMovimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos
    Left = 600
    Top = 240
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryVendas
    Left = 600
    Top = 281
  end
  object dsVendas_Totais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryVendas_Totais
    OnDataChange = dsVendas_TotaisDataChange
    Left = 600
    Top = 325
  end
  object dsVendas_Produtos: TDataSource
    DataSet = dmPDV.qryVendas_Produtos
    Left = 600
    Top = 369
  end
  object dsTerminais_Modalidades: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais_Modalidades
    Left = 600
    Top = 148
  end
  object dsVendas_Recebimentos: TDataSource
    DataSet = dmPDV.qryVendas_Recebimentos
    Left = 596
    Top = 414
  end
  object dsFormas_Recebimentos: TDataSource
    DataSet = dmPDV.qryFormas_Recebimentos
    Left = 386
    Top = 221
  end
  object ActionList1: TActionList
    Left = 279
    Top = 100
    object actResgataBonus: TAction
      Caption = 'actResgataBonus'
      ShortCut = 113
      OnExecute = actResgataBonusExecute
    end
    object actAcrescimo: TAction
      Caption = 'actAcrescimo'
      ShortCut = 116
      OnExecute = actAcrescimoExecute
    end
    object actDesconto: TAction
      Caption = 'actDesconto'
      ShortCut = 117
      OnExecute = actDescontoExecute
    end
  end
end
