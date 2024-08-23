unit UDialogoConsultaCNPJ;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxLabel, cxImage, cxGroupBox, ACBrBase, ACBrSocket,
  ACBrConsultaCNPJ, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxCheckBox,
  Vcl.ExtCtrls, cxListBox, dxSkinOffice2019Colorful, dxSkinTheBezier,
  cxCustomListBox, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TdlgConsultaCNPJ = class(TForm)
    grpboxAreadeTrabalho: TcxGroupBox;
    pagConsultaCNPJ: TcxPageControl;
    tabConsulta: TcxTabSheet;
    grpboxCaptcha: TcxGroupBox;
    imgCaptcha: TcxImage;
    lblNumeroCNPJ: TcxLabel;
    mskedtNumeroCNPJ: TcxMaskEdit;
    lblCaptcha: TcxLabel;
    txtedtCaptcha: TcxTextEdit;
    btnAtualizarCaptcha: TcxButton;
    tabResultado: TcxTabSheet;
    grpboxFerramentas: TcxGroupBox;
    btnOK: TcxButton;
    btnCancelar: TcxButton;
    btnConsultar: TcxButton;
    chkRemoverEspacosDuplos: TcxCheckBox;
    lblTipo: TcxLabel;
    txtedtTipo: TcxTextEdit;
    lblRazaoSocial: TcxLabel;
    txtedtRazaoSocial: TcxTextEdit;
    lblDataAbertura: TcxLabel;
    txtedtDataAbertura: TcxTextEdit;
    lblNomeFantasia: TcxLabel;
    txtedtNomeFantasia: TcxTextEdit;
    gboxEndereco: TcxGroupBox;
    lblCNAEPrincipal: TcxLabel;
    lblCNAESecundario: TcxLabel;
    lstboxCNAESecundario: TcxListBox;
    txtedtCNAEPrincipal: TcxTextEdit;
    lblEnderecoLogradouro: TcxLabel;
    txtedtEnderecoLogradouro: TcxTextEdit;
    lblEnderecoNumero: TcxLabel;
    txtedtEnderecoNumero: TcxTextEdit;
    txtedtEnderecoComplemento: TcxTextEdit;
    lblEnderecoComplemento: TcxLabel;
    lblEnderecoBairro: TcxLabel;
    txtedtEnderecoBairro: TcxTextEdit;
    lblEnderecoCidade: TcxLabel;
    txtedtEnderecoCidade: TcxTextEdit;
    lblEnderecoUF: TcxLabel;
    txtedtEnderecoUF: TcxTextEdit;
    lblEnderecoCEP: TcxLabel;
    txtedtEnderecoCEP: TcxTextEdit;
    lblEMail: TcxLabel;
    txtedtEMail: TcxTextEdit;
    lblTelefone: TcxLabel;
    txtedtTelefone: TcxTextEdit;
    lbSituacao: TcxLabel;
    txtedtSituacao: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarCaptchaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
      procedure CarregaCaptcha;
  public
    { Public declarations }
      function Executa: Boolean; OverLoad;
      function Executa(ANumeroDocumento: String): Boolean; OverLoad;
  end;

var
  dlgConsultaCNPJ: TdlgConsultaCNPJ;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleComponentesACBr;

{$R *.dfm}

{ TdlgConsultaCNPJ }

procedure TdlgConsultaCNPJ.btnAtualizarCaptchaClick(Sender: TObject);
begin
   CarregaCaptcha;
   txtedtCaptcha.Clear;
   FocusControl(txtedtCaptcha);
end;

procedure TdlgConsultaCNPJ.btnConsultarClick(Sender: TObject);
var
   I: Integer;
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
               if Not ACBrConsultaCNPJ1.Consulta(mskedtNumeroCNPJ.Text, txtedtCaptcha.Text, chkRemoverEspacosDuplos.Checked) then
                  Informacao('Não foi possível consultar o CNPJ informado. Por favor, tente novamente.')
               Else
                  begin
                     txtedtTipo.EditValue := ACBrConsultaCNPJ1.EmpresaTipo;
                     txtedtRazaoSocial.EditValue := ACBrConsultaCNPJ1.RazaoSocial;
                     txtedtDataAbertura.EditValue := DateToStr( ACBrConsultaCNPJ1.Abertura );
                     txtedtNomeFantasia.EditValue := ACBrConsultaCNPJ1.Fantasia;
                     txtedtEnderecoLogradouro.EditValue := ACBrConsultaCNPJ1.Endereco;
                     txtedtEnderecoNumero.EditValue := ACBrConsultaCNPJ1.Numero;
                     txtedtEnderecoComplemento.EditValue := ACBrConsultaCNPJ1.Complemento;
                     txtedtEnderecoBairro.EditValue := ACBrConsultaCNPJ1.Bairro;
                     txtedtEnderecoComplemento.EditValue := ACBrConsultaCNPJ1.Complemento;
                     txtedtEnderecoCidade.EditValue := ACBrConsultaCNPJ1.Cidade;
                     txtedtEnderecoUF.EditValue := ACBrConsultaCNPJ1.UF;
                     txtedtEnderecoCEP.EditValue := ACBrConsultaCNPJ1.CEP;
                     txtedtSituacao.EditValue := ACBrConsultaCNPJ1.Situacao;
                     txtedtCNAEPrincipal.EditValue := ACBrConsultaCNPJ1.CNAE1;
                     txtedtEmail.EditValue := ACBrConsultaCNPJ1.EndEletronico;
                     txtedtTelefone.EditValue := ACBrConsultaCNPJ1.Telefone;

                     lstboxCNAESecundario.Clear;
                     for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
                       lstboxCNAESecundario.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]);

                     pagConsultaCNPJ.ActivePage := tabResultado;
                  end;
            end;
      end;
end;

procedure TdlgConsultaCNPJ.CarregaCaptcha;
var
   Stream: TMemoryStream;
   AFileName: TFileName;
begin
   Stream := TMemoryStream.Create;
   try
      Try
         dmComponentesACBr.ACBrConsultaCNPJ1.Captcha(Stream);
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

function TdlgConsultaCNPJ.Executa(ANumeroDocumento: String): Boolean;
begin
   mskedtNumeroCNPJ.Text := ANumeroDocumento;
   txtedtCaptcha.Clear;
   CarregaCaptcha;
   Result := ShowModal = mrOk;
end;

function TdlgConsultaCNPJ.Executa: Boolean;
begin
   CarregaCaptcha;
   mskedtNumeroCNPJ.Clear;
   txtedtCaptcha.Clear;
   Result := ShowModal = mrOk;
end;

procedure TdlgConsultaCNPJ.FormCreate(Sender: TObject);
begin
   pagConsultaCNPJ.HideTabs := True;
   pagConsultaCNPJ.ActivePage := tabConsulta;
end;

procedure TdlgConsultaCNPJ.FormShow(Sender: TObject);
begin
   if Trim(mskedtNumeroCNPJ.Text) = '' then
      FocusControl(mskedtNumeroCNPJ)
   Else
      FocusControl(txtedtCaptcha);
end;

end.
