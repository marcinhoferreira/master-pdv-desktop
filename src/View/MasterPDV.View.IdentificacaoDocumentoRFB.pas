unit MasterPDV.View.IdentificacaoDocumentoRFB;

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
  dxSkinXmas2008Blue, cxGroupBox, dxSkinscxPCPainter, dxBarBuiltInMenu,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxLabel, cxTextEdit, cxMaskEdit,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier;

type
  TdlgIdentificacaoDocumentoRFB = class(TForm)
    gboxAreadeTrabalho: TcxGroupBox;
    pagDocumentoRFB: TcxPageControl;
    tabOpcoes: TcxTabSheet;
    tabDocumento: TcxTabSheet;
    btnCPF: TcxButton;
    btnCNPJ: TcxButton;
    btnOutro: TcxButton;
    lblNumeroDocumentoRFB: TcxLabel;
    mskedtNumeroDocumentoRFB: TcxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCPFClick(Sender: TObject);
    procedure btnCNPJClick(Sender: TObject);
    procedure btnOutroClick(Sender: TObject);
    procedure mskedtNumeroDocumentoRFBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mskedtNumeroDocumentoRFBPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    fTipoDocumento: String;
  public
    { Public declarations }
  end;

var
  dlgIdentificacaoDocumentoRFB: TdlgIdentificacaoDocumentoRFB;

implementation

uses
   Vcl.LealSoftwares.Lib.Funcoes,
   UDataModuleComponentesACBr;

{$R *.dfm}

{ TdlgIdentificacaoDocumentoRFB }

procedure TdlgIdentificacaoDocumentoRFB.btnCNPJClick(Sender: TObject);
begin
   fTipoDocumento := 'CNPJ';
   mskedtNumeroDocumentoRFB.Properties.EditMask := '99.999.999/9999-99;0;_';
   pagDocumentoRFB.ActivePage := tabDocumento;
   FocusControl(mskedtNumeroDocumentoRFB);
end;

procedure TdlgIdentificacaoDocumentoRFB.btnCPFClick(Sender: TObject);
begin
   fTipoDocumento := 'CPF';
   mskedtNumeroDocumentoRFB.Properties.EditMask := '999.999.999-99;0;_';
   pagDocumentoRFB.ActivePage := tabDocumento;
   FocusControl(mskedtNumeroDocumentoRFB);
end;

procedure TdlgIdentificacaoDocumentoRFB.btnOutroClick(Sender: TObject);
begin
   fTipoDocumento := 'OUTRO';
   mskedtNumeroDocumentoRFB.Properties.EditMask := '';
   pagDocumentoRFB.ActivePage := tabDocumento;
   FocusControl(mskedtNumeroDocumentoRFB);
end;

procedure TdlgIdentificacaoDocumentoRFB.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      ModalResult := mrCancel;
   if (Ord(Key) = 49) Or (Key = VK_NUMPAD1) then
      begin
         if pagDocumentoRFB.ActivePage = tabOpcoes then
            pagDocumentoRFB.ActivePage := tabDocumento;
      end;
   if (Ord(Key) = 50) Or (Key = VK_NUMPAD2) then
      begin
         if pagDocumentoRFB.ActivePage = tabOpcoes then
            pagDocumentoRFB.ActivePage := tabDocumento;
      end;
end;

procedure TdlgIdentificacaoDocumentoRFB.FormShow(Sender: TObject);
begin
   pagDocumentoRFB.HideTabs := True;
   pagDocumentoRFB.ActivePage := tabOpcoes;
end;

procedure TdlgIdentificacaoDocumentoRFB.mskedtNumeroDocumentoRFBKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_RETURN) and
      (Trim(TcxMaskEdit(Sender).Text) <> '') then
      ModalResult := mrOk;
end;

procedure TdlgIdentificacaoDocumentoRFB.mskedtNumeroDocumentoRFBPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   Error := ((fTipoDocumento = 'CPF') and not ValidaCPF(Trim(TcxMaskEdit(Sender).Text))) or
            ((fTipoDocumento = 'CNPJ') and not ValidaCNPJ(Trim(TcxMaskEdit(Sender).Text)));
   if Error then
      ErrorText := Format('O Número do %s informado está incorreto!', [fTipoDocumento]);
end;

end.
