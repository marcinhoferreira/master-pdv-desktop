unit UConexaoController;

interface

uses
   Forms, UMVCInterfaces, LealSoftwares.Model.Configuracao.Interfaces,
   UConexaoModel, UDialogoConexao;

const
   MAX_TENTATIVAS: Byte = 3;

type
   IConexaoController = interface(IController)
      ['{9FF578EC-59F7-4ACF-AB00-9C067A3408A3}']
      function GetModel: IConexaoModel;
      procedure SetModel(const Value: IConexaoModel);
      function GetView: IConexaoView;
      procedure SetView(const Value: IConexaoView);
      function Conecta: Boolean;
      function Conectado: Boolean;
      property Model: IConexaoModel read GetModel write SetModel;
      property View: IConexaoView read GetView write SetView;
   end;

   TConexaoController = class(TInterfacedObject, IConexaoController)
   private
      { Private declarations }
      fConfiguracao: IModelConfiguracao;
      fModel: IConexaoModel;
      fView: IConexaoView;
      function GetModel: IConexaoModel;
      function GetView: IConexaoView;
      procedure SetModel(const Value: IConexaoModel);
      procedure SetView(const Value: IConexaoView);
   protected
      { Protected declarations }
   public
      { Public declarations }
      procedure Initialize;
      function Conecta: Boolean;
      function AutenticaUsuario: Boolean;
      function Conectado: Boolean;
      property Model: IConexaoModel read GetModel write SetModel;
      property View: IConexaoView read GetView write SetView;
   end;

implementation

{ TConexaoController }

uses
   SysUtils, StrUtils, System.IOUtils, IniFiles,
   MasterPDV.Model.Configuracao,
   VCL.Funcoes, USessaoController,
   VCL.Criptografia;

function TConexaoController.AutenticaUsuario: Boolean;
var
   AController: TSessaoController;
   AUsuario,
   ASenha: String;
   vLoginCancelado: Boolean;
   vTentativas: Byte;
begin
   Result := False;
   if fModel.Conecta then
      begin
         AController := TSessaoController.Create;
         AController.Initialize;
         vLoginCancelado := False;
         vTentativas := 1;
         repeat
            if fView.Mostra then
               begin
                  AUsuario := AnsiLowerCase(fView.GetUsuario);
                  if (AUsuario = 'postgres') Or
                     (AUsuario = 'root') Or
                     (Pos('lealsoftwares', AUsuario) > 0) then
                     ASenha := AnsiLowerCase(fView.GetSenha)
                  Else
                     ASenha := Criptografa(AnsiLowerCase(fView.GetSenha),
                                           GetKeyString(AUsuario));
                  //if Not dmConexao.Conecta(AnsiUpperCase(fView.GetUsuario),
                  //Criptografa(fView.GetSenha, GetKeyString(AnsiUpperCase(fView.GetUsuario)))) Then
                  if Not AController.Autentica(AUsuario, ASenha) Then
      //          if Not fModel.Conecta(fView.GetUsuario, fView.GetSenha) Then
                     Inc(vTentativas);
               end
            Else
               vLoginCancelado := True;
         until AController.Autenticado Or vLoginCancelado Or (vTentativas > MAX_TENTATIVAS);
         Result := AController.Autenticado;
         if Result then
            TModelConfiguracao(fConfiguracao).SetDBLastUserName(AUsuario);
      end;
end;

function TConexaoController.Conecta: Boolean;
var
   AUsuario,
   ASenha: String;
   vLoginCancelado: Boolean;
   vTentativas: Byte;
begin
   vLoginCancelado := False;
   vTentativas := 1;
   repeat
      if fView.Mostra then
         begin
            AUsuario := AnsiLowerCase(fView.GetUsuario);
            if (AUsuario = 'postgres') Or
               (AUsuario = 'root') Or
               (Pos('lealsoftwares', AUsuario) > 0) then
               ASenha := fView.GetSenha
            else
               ASenha := Criptografa(AnsiLowerCase(fView.GetSenha),
                                     GetKeyString(AUsuario));
            if Not fModel.Conecta(AUsuario, ASenha) Then
               Inc(vTentativas);
         end
      else
         vLoginCancelado := True;
   until fModel.Conectado Or vLoginCancelado Or (vTentativas > MAX_TENTATIVAS);
   Result := fModel.Conectado And Not vLoginCancelado;
end;

function TConexaoController.Conectado: Boolean;
begin
   Result := fModel.Conectado;
end;

function TConexaoController.GetModel: IConexaoModel;
begin
   Result := fModel;
end;

function TConexaoController.GetView: IConexaoView;
begin
   Result := fView;
end;

procedure TConexaoController.Initialize;
var
   AFileName: TFileName;
   AView: TConexaoView;
   AModel: TConexaoModel;
begin
   AFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'data'), ChangeFileExt(ExtractFileName(ParamStr(0)), '.s3db'));
   fConfiguracao := TModelConfiguracao.New(AFileName);
   // Model
   AModel := TConexaoModel.Create;
   fModel := AModel;
   fModel.Initialize;
   // View
   AView := TConexaoView.Create;
   fView := AView;
   fView.Initialize;
end;

procedure TConexaoController.SetModel(const Value: IConexaoModel);
begin
   if Value <> fModel then
      fModel := Value;
end;

procedure TConexaoController.SetView(const Value: IConexaoView);
begin
   if Value <> fView then
      fView := Value;
end;

end.
