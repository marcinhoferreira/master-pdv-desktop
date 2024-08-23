unit UConexaoModel;

interface

uses
   UMVCInterfaces, DBAccess, Uni;

type
   IConexaoModel = interface(IModel)
      ['{8CF7CB59-B3E1-4757-A6DB-2CD08285CFD5}']
      function Conecta: Boolean; OverLoad;
      function Conecta(Login, Password: String): Boolean; OverLoad;
      function Conectado: Boolean;
   end;

   TConexaoModel = class(TInterfacedObject, IConexaoModel)
   private
      { Private declarations }
      fConexao: TUniConnection;
   protected
      { Protected declarations }
   public
      { Public declarations }
      procedure Initialize;
      function Conecta: Boolean; OverLoad;
      function Conecta(Login, Password: String): Boolean; OverLoad;
      function Conectado: Boolean;
   end;

implementation

{ TConexaoModel }

uses
   SysUtils, Dialogs,
   VCL.Funcoes,
   UDataModuleConexao;

function TConexaoModel.Conecta(Login, Password: String): Boolean;
begin
   Result := dmConexao.Conecta(Login, Password);
end;

function TConexaoModel.Conecta: Boolean;
begin
   Result := dmConexao.Conecta;
end;

function TConexaoModel.Conectado: Boolean;
begin
   Result := dmConexao.IsConnected;
end;

procedure TConexaoModel.Initialize;
begin
   fConexao := dmConexao.conConexao;
   if Conectado then
      fConexao.Disconnect;
end;

end.
