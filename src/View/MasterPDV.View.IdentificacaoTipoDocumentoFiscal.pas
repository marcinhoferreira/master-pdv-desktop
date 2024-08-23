unit MasterPDV.View.IdentificacaoTipoDocumentoFiscal;

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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxRadioGroup, cxLabel;

type
  TdlgIdentificacaoTipoDocumentoFiscal = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    lblNFe: TcxLabel;
    lblNFCe: TcxLabel;
    lblTitulo: TcxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    fTipoDocumentoFiscal: String;
  public
    { Public declarations }
    function Executa: Boolean;
    function GetTipoDocumentoFiscal: String;
    procedure SetTipoDocumentoFiscal(const Value: String);
  end;

var
  dlgIdentificacaoTipoDocumentoFiscal: TdlgIdentificacaoTipoDocumentoFiscal;

implementation

{$R *.dfm}

uses
   VCL.Funcoes,
   UDataModuleLeiaute;

{ TdlgIdentificacaoTipoDocumentoFiscal }

function TdlgIdentificacaoTipoDocumentoFiscal.Executa: Boolean;
begin
   lblTitulo.Caption := 'Documento Fiscal';
   fTipoDocumentoFiscal := '0';
   Result := ShowModal = mrOk;
end;

procedure TdlgIdentificacaoTipoDocumentoFiscal.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_ESCAPE then
      ModalResult := mrCancel;
   if (Ord(Key) = 49) Or (Key = VK_NUMPAD1) then
      begin
         fTipoDocumentoFiscal := '2';
         ModalResult := mrOk;
      end;
   if (Ord(Key) = 50) Or (Key = VK_NUMPAD2) then
      begin
         fTipoDocumentoFiscal := '1';
         ModalResult := mrOk;
      end;
end;

function TdlgIdentificacaoTipoDocumentoFiscal.GetTipoDocumentoFiscal: String;
begin
   Result := fTipoDocumentoFiscal;
end;

procedure TdlgIdentificacaoTipoDocumentoFiscal.SetTipoDocumentoFiscal(
  const Value: String);
begin
   if Value <> fTipoDocumentoFiscal then
      fTipoDocumentoFiscal := Value;
end;

end.
