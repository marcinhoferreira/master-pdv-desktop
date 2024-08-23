unit UDialogoSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,
  cxTextEdit, Data.DB, dxSkinOffice2019Colorful, dxSkinTheBezier, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TdlgSenha = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    lblSenha: TcxLabel;
    txtedtSenha: TcxTextEdit;
    cxLabel1: TcxLabel;
    txtedtConfirmacao: TcxTextEdit;
    dsUsuarios: TDataSource;
    procedure txtedtSenhaPropertiesChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Define: Boolean;
  end;

var
  dlgSenha: TdlgSenha;

implementation

uses
   VCL.Funcoes, VCL.Criptografia,
   UDataModuleLeiaute,
   UDataModuleAcesso;

{$R *.dfm}

{ TdlgSenha }

procedure TdlgSenha.btnConfirmarClick(Sender: TObject);
begin
  inherited;
   if AnsiUpperCase(txtedtSenha.Text) <> AnsiUpperCase(txtedtConfirmacao.Text) then
      begin
         Aviso('Senha conflitante!');
         FocusControl(txtedtSenha);
         Exit;
      end;

   if Confirmacao('Confirma nova senha?') Then
      ModalResult := mrOK;
end;

function TdlgSenha.Define: Boolean;
begin
   Result := ShowModal = mrOk;
   if Result then
      begin
         Result := dmAcesso.TrocaSenha(dsUsuarios.DataSet.FieldByName('login').AsString, Criptografa(AnsiLowerCase(txtedtSenha.Text), GetKeyString(AnsiLowerCase(dsUsuarios.DataSet.FieldByName('login').AsString))));
         if Result then
            Informacao('Operação realizada com sucesso!')
         Else
            Informacao('Operação não realizada!');
      end;
end;

procedure TdlgSenha.FormShow(Sender: TObject);
begin
  inherited;
   txtedtSenha.Text := '';
   txtedtSenha.PostEditValue;
   txtedtConfirmacao.Text := '';
   txtedtConfirmacao.PostEditValue;
end;

procedure TdlgSenha.txtedtSenhaPropertiesChange(Sender: TObject);
begin
  inherited;
   btnConfirmar.Enabled := Trim(TcxTextEdit(Sender).Text) <> '';
end;

end.
