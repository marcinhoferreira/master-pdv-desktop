unit UDataModuleLicenca;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, CREncryption, DASQLMonitor, UniSQLMonitor, MemDS,
  PostgreSQLUniProvider, Datasnap.Provider;

type
  TdmLicenca = class(TDataModule)
    conConexao: TUniConnection;
    trTransacao: TUniTransaction;
    UniSQLMonitor1: TUniSQLMonitor;
    UniEncryptor1: TUniEncryptor;
    qryLicencas: TUniQuery;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    dspLicencas: TDataSetProvider;
    qryAplicativos: TUniQuery;
    qryRotinas: TUniQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Connect: Boolean;
    function IsConnected: Boolean;
    procedure Disconnect;
    function GetAplicativos(AChave: String): Boolean;
    function GetRotinas(AId_Aplicativo: Integer): Boolean;
  end;

var
  dmLicenca: TdmLicenca;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses
   VCL.Funcoes;

{$R *.dfm}

function TdmLicenca.Connect: Boolean;
begin
   Result := False;
//   if pingIP(conConexao.Server) then
//      begin
//         Try
//            conConexao.Disconnect;
//            conConexao.Connect;
//            Result := IsConnected;
//         Except
//            On E: EDAError Do
//               begin
//                  Result := False;
//                  Erro('Erro ao conectar no host ' + conConexao.Server + ':' + IntToStr(conConexao.Port) + ':'#13 + E.Message);
//               end;
//         End;
//      end;
end;

procedure TdmLicenca.DataModuleDestroy(Sender: TObject);
begin
   if IsConnected then
      Disconnect;
end;

procedure TdmLicenca.Disconnect;
begin
   conConexao.Disconnect;
end;

function TdmLicenca.GetAplicativos(AChave: String): Boolean;
begin
   qryAplicativos.Close;
   qryAplicativos.ParamByName('chave').Value := AChave;
   qryAplicativos.Open;
   Result := Not qryAplicativos.IsEmpty;
end;

function TdmLicenca.GetRotinas(AId_Aplicativo: Integer): Boolean;
begin
   qryRotinas.Close;
   qryRotinas.ParamByName('id_aplicativo').Value := AId_Aplicativo;
   qryRotinas.Open;
   Result := Not qryRotinas.IsEmpty;
end;

function TdmLicenca.IsConnected: Boolean;
begin
   Result := conConexao.Connected;
end;

end.
