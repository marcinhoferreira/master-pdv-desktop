unit UMasterPDVDataModuleDocumentosFiscais;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TdmDocumentosFiscais = class(TDataModule)
    UniQuery1: TUniQuery;
    UniStoredProc1: TUniStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDocumentosFiscais: TdmDocumentosFiscais;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses UDataModuleConexao;

{$R *.dfm}

end.
