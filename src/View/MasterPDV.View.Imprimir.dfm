inherited dlgImprimir: TdlgImprimir
  Left = 192
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Confirma'#231#227'o'
  ClientHeight = 216
  ClientWidth = 570
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Position = poOwnerFormCenter
  ExplicitWidth = 576
  ExplicitHeight = 245
  PixelsPerInch = 96
  TextHeight = 13
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    PanelStyle.Active = True
    TabOrder = 0
    Height = 197
    Width = 553
    object gboxTitulo: TcxGroupBox
      Left = 12
      Top = 12
      PanelStyle.Active = True
      TabOrder = 0
      Height = 77
      Width = 525
      object lblTitulo: TcxLabel
        Left = 3
        Top = 3
        Align = alClient
        Caption = 'lblTitulo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 263
        AnchorY = 39
      end
    end
    object btnEnter: TcxButton
      Left = 12
      Top = 104
      Width = 257
      Height = 85
      Caption = 'Enter = Imprime'
      Default = True
      ModalResult = 1
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnEsc: TcxButton
      Left = 280
      Top = 104
      Width = 257
      Height = 85
      Cancel = True
      Caption = 'Esc = Cancela'
      ModalResult = 2
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object frRelatorio: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41727.562302546300000000
    ReportOptions.LastChange = 41727.562302546300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 220
    Top = 32
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frdsAutenticacao: TfrxDBDataset
    UserName = 'frdsAutenticacao'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 220
    Top = 76
  end
  object dsTerminais: TDataSource
    DataSet = dmPDV.qryTerminais
    Left = 436
    Top = 52
  end
end
