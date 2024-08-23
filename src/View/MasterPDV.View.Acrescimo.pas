unit MasterPDV.View.Acrescimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, UMVCInterfaces, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxCurrencyEdit, cxLabel, cxGroupBox, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier;

type
  TdlgAcrescimo = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    lblTitulo: TcxLabel;
    lblValorAcrescimo: TcxLabel;
    curredtValorAcrescimo: TcxCurrencyEdit;
    gboxFerramentas: TcxGroupBox;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
    function Executa(ATitulo: String; AValorMaximo: Double = 0): Boolean;
  end;

var
  dlgAcrescimo: TdlgAcrescimo;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute;

{$R *.dfm}

{ TdlgAcrescimo }

function TdlgAcrescimo.Executa(ATitulo: String; AValorMaximo: Double): Boolean;
begin
   lblTitulo.Caption := ATitulo;
   //curredtValorAcrescimo.Properties.MaxValue := AValorMaximo;
   Result := ShowModal = mrOk;
end;

end.
