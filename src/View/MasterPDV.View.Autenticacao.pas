unit MasterPDV.View.Autenticacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, dxGDIPlusClasses, cxImage,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinOffice2019Colorful, dxSkinTheBezier;

type
  TdglAutenticacao = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    lblUsuario: TcxLabel;
    txtedtUsuario: TcxTextEdit;
    imgLogo: TcxImage;
    lblSenha: TcxLabel;
    txtedtSenha: TcxTextEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    procedure txtedtUsuarioPropertiesChange(Sender: TObject);
    procedure txtedtSenhaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AutenticaSupervisor: Boolean;
  end;

var
  dglAutenticacao: TdglAutenticacao;

implementation

{$R *.dfm}

uses
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV;

function TdglAutenticacao.AutenticaSupervisor: Boolean;
begin
   Result := False;
   If ShowModal = mrOk Then
      Result := dmPDV.AutenticaSupervisor(txtedtUsuario.EditValue,
                                          txtedtSenha.EditValue);
end;

procedure TdglAutenticacao.btnOkClick(Sender: TObject);
begin
  inherited;
   txtedtUsuario.PostEditValue;
   txtedtSenha.PostEditValue;
end;

procedure TdglAutenticacao.FormShow(Sender: TObject);
begin
  inherited;
   txtedtUsuario.EditValue := '';
   txtedtUsuario.PostEditValue;
   txtedtSenha.EditValue := '';
   txtedtSenha.PostEditValue;
end;

procedure TdglAutenticacao.txtedtSenhaPropertiesChange(Sender: TObject);
begin
  inherited;
   btnOk.Enabled := (Trim(txtedtUsuario.Text) <> '') And
                    (Trim(txtedtSenha.Text) <> '');
end;

procedure TdglAutenticacao.txtedtUsuarioPropertiesChange(Sender: TObject);
begin
  inherited;
   btnOk.Enabled := (Trim(txtedtUsuario.Text) <> '') And
                    (Trim(txtedtSenha.Text) <> '');
end;

end.
