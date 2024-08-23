unit MasterPDV.View.Obrigado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, JvComponentBase, JvEnterTab, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, dxSkinsdxStatusBarPainter, dxStatusBar,
  dxGDIPlusClasses, cxImage, Data.DB, cxTextEdit, cxCurrencyEdit, cxLabel,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier;

type
  TfrmObrigado = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    barStatus: TdxStatusBar;
    imgObrigado: TcxImage;
    gboxMensagem: TcxGroupBox;
    gboxSubtotal: TcxGroupBox;
    dsTerminais: TDataSource;
    gboxValorLiquido: TcxGroupBox;
    lblValorLiquido: TcxLabel;
    curredtValorLiquido: TcxCurrencyEdit;
    gboxValorRecebido: TcxGroupBox;
    lblValorRecebido: TcxLabel;
    curredtValorRecebido: TcxCurrencyEdit;
    gboxTroco: TcxGroupBox;
    lblValorTroco: TcxLabel;
    curredtValorTroco: TcxCurrencyEdit;
    lblTituloMensagem: TcxLabel;
    lblMensagem: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateStatusBar;
  public
    { Public declarations }
    procedure SetTituloValorLiquido(const Value: TCaption);
    procedure SetValorLiquido(const Value: Double);
    procedure SetTituloValorRecebido(const Value: TCaption);
    procedure SetValorRecebido(const Value: Double);
    procedure SetTituloValorTroco(const Value: TCaption);
    procedure SetValorTroco(const Value: Double);
    procedure SetMensagem(const Value: TCaption);
    procedure ExibeFormulario;
    procedure OcultaFormulario;
  end;

var
  frmObrigado: TfrmObrigado;

implementation

{$R *.dfm}

uses
   UDataModuleLeiaute,
   UDataModuleSessao;

procedure TfrmObrigado.ExibeFormulario;
begin
   Show;
   Update;
   Refresh;
end;

procedure TfrmObrigado.FormCreate(Sender: TObject);
begin
  inherited;
//   Top := 0;
//   Left := 0;
end;

procedure TfrmObrigado.FormResize(Sender: TObject);
begin
  inherited;
   With barStatus Do
      Panels[0].Width := ClientWidth - (Panels[1].Width + Panels[2].Width + Panels[3].Width);
end;

procedure TfrmObrigado.FormShow(Sender: TObject);
begin
  inherited;
//   Align := alNone;
//   Align := alClient;
   UpdateStatusBar;
   WindowState := wsMaximized;
end;

procedure TfrmObrigado.OcultaFormulario;
begin
   Hide;
end;

procedure TfrmObrigado.SetMensagem(const Value: TCaption);
begin
   if Value <> lblMensagem.Caption then
      lblMensagem.Caption := Value;
end;

procedure TfrmObrigado.SetTituloValorLiquido(const Value: TCaption);
begin
   if Value <> lblValorLiquido.Caption then
      lblValorLiquido.Caption := Value;
end;

procedure TfrmObrigado.SetTituloValorRecebido(const Value: TCaption);
begin
   if Value <> lblValorRecebido.Caption then
      lblValorRecebido.Caption := Value;
end;

procedure TfrmObrigado.SetTituloValorTroco(const Value: TCaption);
begin
   if Value <> lblValorTroco.Caption then
      lblValorTroco.Caption := Value;
end;

procedure TfrmObrigado.SetValorLiquido(const Value: Double);
begin
   if Value <> curredtValorLiquido.Value then
      curredtValorLiquido.Value := Value;
end;

procedure TfrmObrigado.SetValorRecebido(const Value: Double);
begin
   if Value <> curredtValorRecebido.Value then
      curredtValorRecebido.Value := Value;
end;

procedure TfrmObrigado.SetValorTroco(const Value: Double);
begin
   if Value <> curredtValorTroco.Value then
      curredtValorTroco.Value := Value;
end;

procedure TfrmObrigado.UpdateStatusBar;
begin
   With barStatus Do
      begin
         Panels[1].Text := '';
         Panels[2].Text := 'Term.: ' + dsTerminais.DataSet.FieldByName('descricao').AsString;
         Panels[3].Text := 'Oper.: ' + dmSessao.qryUsuarios.FieldByName('login').AsString;
      end;
end;

end.
