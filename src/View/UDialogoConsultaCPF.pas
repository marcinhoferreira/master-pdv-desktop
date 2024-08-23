unit UDialogoConsultaCPF;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase,
   ACBrSocket, ACBrConsultaCPF, cxGraphics, cxControls, cxLookAndFeels,
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
   dxSkinXmas2008Blue, cxImage, cxGroupBox, cxTextEdit, cxMaskEdit, cxLabel,
   Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils,
   cxDropDownEdit, cxCalendar, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier;

type
   TdlgConsultaCPF = class(TForm)
      grpboxAreadeTrabalho: TcxGroupBox;
      pagConsultaCPF: TcxPageControl;
      tabConsulta: TcxTabSheet;
      grpboxCaptcha: TcxGroupBox;
      imgCaptcha: TcxImage;
      lblNumeroCPF: TcxLabel;
      mskedtNumeroCPF: TcxMaskEdit;
      lblCaptcha: TcxLabel;
      txtedtCaptcha: TcxTextEdit;
      btnAtualizarCaptcha: TcxButton;
      lblDataNascimento: TcxLabel;
      dtedtDataNascimento: TcxDateEdit;
      btnConsultar: TcxButton;
      tabResultado: TcxTabSheet;
      grpboxFerramentas: TcxGroupBox;
      btnOK: TcxButton;
      btnCancelar: TcxButton;
      lblNome: TcxLabel;
      txtedtNome: TcxTextEdit;
      lblSituacaoCadastral: TcxLabel;
      txtedtSituacaoCadastral: TcxTextEdit;
      lblDigitoVerificador: TcxLabel;
      txtedtDigitoVerificador: TcxTextEdit;
      txtedtEmissao: TcxTextEdit;
      lblEmissao: TcxLabel;
      txtedtDataInscricao: TcxTextEdit;
      lblDataInscricao: TcxLabel;
      txtedtControleComprovante: TcxTextEdit;
      lblControleComprovante: TcxLabel;
      procedure btnAtualizarCaptchaClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure btnConsultarClick(Sender: TObject);
   private
      { Private declarations }
      procedure CarregaCaptcha;
   public
      { Public declarations }
      function Executa: Boolean; OverLoad;
      function Executa(ANumeroDocumento: String): Boolean; OverLoad;
      function Executa(ANumeroDocumento: String; ADataNascimento: TDate): Boolean; OverLoad;
   end;

var
   dlgConsultaCPF: TdlgConsultaCPF;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleComponentesACBr;

{$R *.dfm}

{ TdlgConsultaCPF }

procedure TdlgConsultaCPF.btnAtualizarCaptchaClick(Sender: TObject);
begin
   CarregaCaptcha;
   txtedtCaptcha.Clear;
   FocusControl(txtedtCaptcha);
end;

procedure TdlgConsultaCPF.btnConsultarClick(Sender: TObject);
begin
   if txtedtCaptcha.Text = '' then
      begin
         Aviso('É necessário digitar o captcha.');
         txtedtCaptcha.SetFocus;
      end
   Else
      begin
         With dmComponentesACBr Do
            begin
               if Not ACBrConsultaCPF1.Consulta(mskedtNumeroCPF.Text, dtedtDataNascimento.Text, txtedtCaptcha.Text) then
                  Informacao('Não foi possível consultar o CPF informado. Por favor, tente novamente.')
               Else
                  begin
                     txtedtNome.EditValue := ACBrConsultaCPF1.Nome;
                     txtedtSituacaoCadastral.EditValue := ACBrConsultaCPF1.Situacao;
                     txtedtDigitoVerificador.EditValue := ACBrConsultaCPF1.DigitoVerificador;
                     txtedtEmissao.EditValue := ACBrConsultaCPF1.Emissao;
                     txtedtDataInscricao.EditValue := ACBrConsultaCPF1.DataInscricao;
                     txtedtControleComprovante.EditValue := ACBrConsultaCPF1.CodCtrlControle;
                     pagConsultaCPF.ActivePage := tabResultado;
                  end;
            end;
      end;
end;

procedure TdlgConsultaCPF.CarregaCaptcha;
var
   Stream: TMemoryStream;
   AFileName: TFileName;
begin
   Stream := TMemoryStream.Create;
   try
      Try
         dmComponentesACBr.ACBrConsultaCPF1.Captcha(Stream);
         AFileName := ExtractFilePath(Application.ExeName) + 'captcha.png';
         Stream.SaveToFile(AFileName);
         imgCaptcha.Picture.LoadFromFile(AFileName);
      Except
         On E: Exception Do
            Informacao('Erro ao carregar o captcha:'#13 + E.Message);
      End;
   finally
      Stream.Free;
   end;
end;

function TdlgConsultaCPF.Executa(ANumeroDocumento: String): Boolean;
begin
   mskedtNumeroCPF.Text := ANumeroDocumento;
   txtedtCaptcha.Clear;
   CarregaCaptcha;
   Result := ShowModal = mrOk;
end;

function TdlgConsultaCPF.Executa(ANumeroDocumento: String; ADataNascimento: TDate): Boolean;
begin
   mskedtNumeroCPF.Text := ANumeroDocumento;
   if ADataNascimento > 0 then
      dtedtDataNascimento.Date := ADataNascimento;
   txtedtCaptcha.Clear;
   CarregaCaptcha;
   Result := ShowModal = mrOk;
end;

function TdlgConsultaCPF.Executa: Boolean;
begin
   mskedtNumeroCPF.Clear;
   dtedtDataNascimento.Clear;
   txtedtCaptcha.Clear;
   CarregaCaptcha;
   Result := ShowModal = mrOk;
end;

procedure TdlgConsultaCPF.FormCreate(Sender: TObject);
begin
   pagConsultaCPF.HideTabs := True;
   pagConsultaCPF.ActivePage := tabConsulta;
end;

procedure TdlgConsultaCPF.FormShow(Sender: TObject);
begin
   if Trim(mskedtNumeroCPF.Text) = '' then
      FocusControl(mskedtNumeroCPF)
   Else
      if dtedtDataNascimento.Date = 0 then
         FocusControl(dtedtDataNascimento)
      Else
         FocusControl(txtedtCaptcha);
end;

end.
