unit UDialogoTrocaSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFormularioPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.Menus, DBAccess, Uni, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxLabel, cxGroupBox, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier;

type
  TdlgTrocaSenha = class(TfrmPadrao)
    panAreadeTrabalho: TcxGroupBox;
    lblSenhaAtual: TcxLabel;
    edtSenhaAtual: TcxTextEdit;
    lblNovaSenha: TcxLabel;
    edtNovaSenha: TcxTextEdit;
    edtConfirmaNovaSenha: TcxTextEdit;
    lblConfirmaNovaSenha: TcxLabel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    procedure btnOkClick(Sender: TObject);
    procedure edtNovaSenhaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function SenhaNaoPermitida(aSenha: string): Boolean;
    function VerificaSenha(aSenha: string): Boolean;
    function SenhaExpirada: Boolean;
    function VerificaSenhaExpirada: Boolean;
    procedure Reconecta;
    function Executa: Boolean;
  end;

var
  dlgTrocaSenha: TdlgTrocaSenha;

implementation

uses
   VCL.Criptografia, VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao, UDataModuleSessao;

{$R *.dfm}

{ TdlgTrocaSenha }

function TdlgTrocaSenha.SenhaNaoPermitida(aSenha: string): Boolean;
var
   aLista: TStringList;
   aIndice: Integer;
begin
   aLista := TStringList.Create;
   dmSessao.qrySenhasTrocadas.Close;
   dmSessao.qrySenhasTrocadas.ParamByName('login').Value := dmConexao.GetUserName;
   dmSessao.qrySenhasTrocadas.Open;
   dmSessao.qrySenhasTrocadas.First;
   aLista.Clear;
   while not dmSessao.qrySenhasTrocadas.Eof do
      begin
         if Trim(dmSessao.qrySenhasTrocadas.FieldByName('senha_anterior').AsString) <> '' then
            aLista.Add(AnsiLowerCase(Descriptografa(dmSessao.qrySenhasTrocadas.FieldByName('senha_anterior').AsString, GetKeyString(FormatDateTime('ddmmyyyyhhnnss', dmSessao.qrySenhasTrocadas.FieldByName('data_cadastro').AsDateTime)))));
         dmSessao.qrySenhasTrocadas.Next;
      end;
   dmSessao.qrySenhasTrocadas.Close;
   aLista.Sort;
   if aLista.Find(aSenha, aIndice) then
      begin
         Informacao('Senha já Utilizada. Informe Outra!');
         Result := True;
      end
   else
      Result := False;
   aLista.Free;
end;

function TdlgTrocaSenha.VerificaSenha(aSenha: string): Boolean;
var
   aLista: TStringList;
   aIndice: Integer;
begin
   aLista := TStringList.Create;
   aLista.Clear;
   aLista.Add('SENHA');
   aLista.Add('TESTE');
   aLista.Add('123');
   aLista.Add('123456');
   aLista.Add(AnsiLowerCase(dmConexao.GetUserName));
   aLista.Sort;
   if aLista.Find(aSenha, aIndice) or (aSenha = StringOfChar(aSenha[1], Length(aSenha))) then
      begin
         Informacao('Senha de Fácil Dedução. Informe Outra!');
         Result := False;
      end
   else
      Result := True;
   aLista.Free;
end;

function TdlgTrocaSenha.SenhaExpirada: Boolean;
   function DeveTrocarSenha: boolean;
   var
      aSenha: string;
      aLista: TStringList;
      aIndice: Integer;
   begin
      aSenha := dmConexao.conConexao.PassWord;
      aLista := TStringList.Create;
      aLista.Clear;
      aLista.Add(Criptografa(AnsiLowerCase('SENHA'), GetKeyString(AnsiLowerCase(dmConexao.GetUserName))));
      aLista.Add(Criptografa(AnsiLowerCase('TESTE'), GetKeyString(AnsiLowerCase(dmConexao.GetUserName))));
      aLista.Add(Criptografa(AnsiLowerCase('123'), GetKeyString(AnsiLowerCase(dmConexao.GetUserName))));
      aLista.Add(Criptografa(AnsiLowerCase('123456'), GetKeyString(AnsiLowerCase(dmConexao.GetUserName))));
      aLista.Add(AnsiLowerCase(dmConexao.GetUserName));
      aLista.Sort;
      Result := aLista.Find(aSenha, aIndice);
      aLista.Free;
   end;
begin
   Result := (dmSessao.DiasParaExpirar >= 90) or DeveTrocarSenha;
end;

function TdlgTrocaSenha.VerificaSenhaExpirada: Boolean;
var
   aDias: Integer;
begin
   aDias := dmSessao.DiasParaExpirar;
   Result := True;
   if (aDias >= 83) and (aDias < 90) then
      begin
         if Confirmacao(Format('Sua senha expira em %d dia(s). Deseja trocá-la agora?', [90 - aDias])) then
            Result := Executa;
      end
   else
      if SenhaExpirada then
         begin
            Informacao('Sua senha expirou e deve ser alterada!');
            Result := Executa;
         end;
end;

procedure TdlgTrocaSenha.Reconecta;
begin
  dmSessao.qryPrivilegios.Close;
  dmSessao.qryUsuarios.Close;
  dmConexao.conConexao.Disconnect;
  dmConexao.conConexao.PassWord := Criptografa(AnsiLowerCase(edtNovaSenha.Text), GetKeyString(AnsiLowerCase(dmConexao.GetUserName)));
  dmConexao.conConexao.Connect;
  dmSessao.qryUsuarios.Open;
  dmSessao.qryPrivilegios.Open;
end;

procedure TdlgTrocaSenha.edtNovaSenhaPropertiesChange(Sender: TObject);
begin
  inherited;
   btnOk.Enabled := Length(Trim(TcxTextEdit(Sender).Text)) >= 6;
end;

function TdlgTrocaSenha.Executa: Boolean;
begin
   Result := ShowModal = mrOk;
   if Result then
      begin
         try
            Result := dmSessao.TrocaSenha(dmConexao.GetUserName, Criptografa(AnsiLowerCase(edtNovaSenha.Text), GetKeyString(AnsiLowerCase(dmConexao.GetUserName))));
            If Result Then
               begin
                  dmSessao.qryUsuarios.Edit;
                  dmSessao.qryUsuarios.FieldByName('senha').AsString := Criptografa(AnsiLowerCase(edtNovaSenha.Text), GetKeyString(FormatDateTime('ddmmyyyyhhnnss', dmSessao.qryUsuarios.FieldByName('data_cadastro').AsDateTime)));
                  dmSessao.qryUsuarios.Post;
                  //Reconecta;
                  Informacao('Sua Senha Foi Alterada Com Sucesso!');
               end;
         except
            on e: exception do
               Erro('Não Foi Possível Trocar a Senha. ' + #13#10 + e.Message);
         end;
      end;
end;

procedure TdlgTrocaSenha.btnOkClick(Sender: TObject);
begin
   If (AnsiLowerCase(edtSenhaAtual.Text) <> dmConexao.conConexao.PassWord) And
      (Criptografa(AnsiLowerCase(edtSenhaAtual.Text), GetKeyString(AnsiLowerCase(dmSessao.qryUsuarios.ParamByName('login').AsString))) <> dmConexao.conConexao.PassWord) then
      begin
         Informacao('A Senha Atual Incorreta!');
         ModalResult := mrNone;
         FocusControl(edtSenhaAtual);
         Exit;
      end;
   if edtNovaSenha.Text <> edtConfirmaNovaSenha.Text then
      begin
         Informacao('A Nova Senha Está Incorreta!');
         ModalResult := mrNone;
         FocusControl(edtNovaSenha);
         Exit;
      end;
   if edtNovaSenha.Text = edtSenhaAtual.Text then
      begin
         Informacao('A Nova Senha Deve Ser Diferente da Senha Atual!');
         ModalResult := mrNone;
         FocusControl(edtNovaSenha);
         Exit;
      end;
   if SenhaNaoPermitida(edtNovaSenha.Text) then
      begin
         ModalResult := mrNone;
         FocusControl(edtNovaSenha);
         Exit;
      end;
   if not VerificaSenha(edtNovaSenha.Text) then
      begin
         ModalResult := mrNone;
         FocusControl(edtNovaSenha);
         Exit;
      end;
end;

end.
