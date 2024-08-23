inherited frmRecebimentoSubTotal: TfrmRecebimentoSubTotal
  Caption = 'Sub-total'
  ClientHeight = 524
  ClientWidth = 784
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    DesignSize = (
      784
      524)
    Height = 524
    Width = 784
    object gboxFerramentas: TcxGroupBox
      Left = 0
      Top = 310
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
      Top = 11
      Anchors = [akLeft, akTop, akRight, akBottom]
      Enabled = False
      PanelStyle.Active = True
      TabOrder = 1
      Height = 288
      Width = 759
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
        Width = 753
        object lblValorLiquido: TcxLabel
          Left = 3
          Top = 3
          Align = alClient
          Caption = 'Total das duplicatas'
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 44
        end
        object curredtValorLiquido: TcxCurrencyEdit
          Left = 369
          Top = 3
          Align = alRight
          Properties.Alignment.Horz = taRightJustify
          Properties.UseThousandSeparator = True
          Style.Color = clWindow
          TabOrder = 1
          ExplicitHeight = 21
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
        Width = 753
        object lblValorRecebido: TcxLabel
          Left = 3
          Top = 3
          Align = alClient
          Caption = 'Valor recebido'
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 44
        end
        object curredtValorRecebido: TcxCurrencyEdit
          Left = 369
          Top = 3
          Align = alRight
          Properties.Alignment.Horz = taRightJustify
          Properties.UseThousandSeparator = True
          Style.Color = clWindow
          TabOrder = 1
          ExplicitHeight = 21
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
        Width = 753
        object lblValorReceber: TcxLabel
          Left = 3
          Top = 3
          Align = alClient
          Caption = 'Valor a receber'
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 44
        end
        object curredtValorReceber: TcxCurrencyEdit
          Left = 369
          Top = 3
          Align = alRight
          Properties.Alignment.Horz = taRightJustify
          Properties.UseThousandSeparator = True
          Style.Color = clWindow
          TabOrder = 1
          ExplicitHeight = 21
          Width = 381
        end
      end
    end
  end
  object dsRecebimentos: TDataSource
    DataSet = cdsRecebimentos
    Left = 696
    Top = 352
  end
  object dsEstabelecimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryEstabelecimentos
    Left = 696
    Top = 44
  end
  object dsTerminais: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais
    Left = 696
    Top = 88
  end
  object dsTerminais_Modalidades: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryTerminais_Modalidades
    Left = 696
    Top = 132
  end
  object dsOperadores: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryOperadores
    Left = 696
    Top = 176
  end
  object dsMovimentos: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryMovimentos
    Left = 696
    Top = 220
  end
  object dsFormas_Recebimentos: TDataSource
    DataSet = dmPDV.qryFormas_Recebimentos
    Left = 696
    Top = 261
  end
  object cdsRecebimentos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsRecebimentosAfterPost
    OnNewRecord = cdsRecebimentosNewRecord
    Left = 696
    Top = 308
    object cdsRecebimentossequencia: TSmallintField
      FieldName = 'sequencia'
    end
    object cdsRecebimentosid_transacao: TIntegerField
      FieldName = 'id_transacao'
    end
    object cdsRecebimentosdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
    object cdsRecebimentosvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
    object cdsRecebimentosvalor_troco: TFloatField
      FieldName = 'valor_troco'
    end
  end
  object dsDebitos: TDataSource
    Left = 504
    Top = 212
  end
  object dsDebitos_Baixas: TDataSource
    AutoEdit = False
    DataSet = dmPDV.qryDuplicatas_Baixas
    Left = 504
    Top = 256
  end
end
