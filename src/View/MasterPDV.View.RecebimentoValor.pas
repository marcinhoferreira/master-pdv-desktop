unit MasterPDV.View.RecebimentoValor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxCurrencyEdit;

type
  TdlgRecebimentoValor = class(TForm)
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    lblTitulo: TcxLabel;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    lblValor: TcxLabel;
    curredtValor: TcxCurrencyEdit;
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Executa(ATitulo: String; AValorPadrao: Double = 0; AValorMaximo: Double = 0): Boolean;
  end;

var
  dlgRecebimentoValor: TdlgRecebimentoValor;

implementation

{$R *.dfm}

uses
   VCL.Funcoes,
   UDataModuleLeiaute;

{ TdlgRecebimentoValor }

procedure TdlgRecebimentoValor.btnConfirmarClick(Sender: TObject);
begin
   if curredtValor.Value = 0 then
      begin
         Informacao('Informe o valor recebido!');
         FocusControl(curredtValor);
         curredtValor.SelectAll;
      end
   Else
      ModalResult := mrOk;
end;

function TdlgRecebimentoValor.Executa(ATitulo: String; AValorPadrao: Double;
   AValorMaximo: Double): Boolean;
begin
   lblTitulo.Caption := ATitulo;
   curredtValor.Value := AValorPadrao;
   curredtValor.PostEditValue;
   //curredtValor.Properties.MaxValue := AValorMaximo;
   Result := False;
   If ShowModal = mrOk Then
      Result := Confirmacao('Confirma recebimento?', mbYes);
end;

end.
