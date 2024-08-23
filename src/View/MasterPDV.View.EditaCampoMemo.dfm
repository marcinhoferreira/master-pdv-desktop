inherited dlgEditaCampoMemo: TdlgEditaCampoMemo
  BorderStyle = bsDialog
  Caption = 'dlgEditaCampoMemo'
  ClientHeight = 339
  ClientWidth = 574
  Position = poScreenCenter
  ExplicitWidth = 580
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 16
  object gboxAreadeTrabalho: TcxGroupBox
    Left = 8
    Top = 8
    Caption = 'Campo Memo:'
    TabOrder = 0
    Height = 269
    Width = 558
    object dbmmoCampoMemo: TcxDBMemo
      Left = 3
      Top = 18
      Align = alClient
      DataBinding.DataSource = dsTabela
      Properties.ScrollBars = ssBoth
      TabOrder = 0
      OnEnter = dbmmoCampoMemoEnter
      OnExit = dbmmoCampoMemoExit
      ExplicitLeft = 140
      ExplicitTop = 100
      Height = 241
      Width = 552
    end
  end
  object btnOk: TcxDBBotao
    Left = 168
    Top = 288
    Width = 114
    Height = 40
    Caption = '&OK'
    Default = True
    OptionsImage.ImageIndex = 7
    OptionsImage.Images = dmLeiaute.cxImageList32
    TabOrder = 1
    DataSource = dsTabela
    DisableReasons = [drNotEditing]
  end
  object btnCancelar: TcxButton
    Left = 292
    Top = 288
    Width = 114
    Height = 40
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    OptionsImage.ImageIndex = 8
    OptionsImage.Images = dmLeiaute.cxImageList32
    TabOrder = 2
  end
  object dsTabela: TDataSource
    Left = 420
    Top = 76
  end
end
