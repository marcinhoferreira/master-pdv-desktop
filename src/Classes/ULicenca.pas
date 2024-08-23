unit ULicenca;

interface

uses
   UMVCInterfaces, ULicenciamento;

type
   TStatusLicenca = (slAtiva, slSuspensa, slBloqueada, slInativa);

   TLicenca = class(TObject)
   private
      { Private declarations }
      fId: Integer;
      fNumeroSerie: String;
      fChaveProduto: String;
      fDataExpiracao: TDateTime;
      fNomeProprietario: String;
      fStatus: Byte;
      function GetChaveProduto: String;
      function GetDataExpiracao: TDateTime;
      function GetId: Integer;
      function GetNumeroSerie: String;
      procedure SetChaveProduto(const Value: String);
      procedure SetDataExpiracao(const Value: TDateTime);
      procedure SetId(const Value: Integer);
      procedure SetNumeroSerie(const Value: String);
      function GetNomeProprietario: String;
      procedure SetNomeProprietario(const Value: String);
      function GetStatus: Byte;
      procedure SetStatus(const Value: Byte);
   protected
      { Protected declarations }
   public
      { Public declarations }
      constructor Create;
      destructor Destroy;
      property Id: Integer read GetId Write SetId;
      property NumeroSerie: String read GetNumeroSerie Write SetNumeroSerie;
      property ChaveProduto: String read GetChaveProduto Write SetChaveProduto;
      property DataExpiracao: TDateTime read GetDataExpiracao
         Write SetDataExpiracao;
      property NomeProprietario: String read GetNomeProprietario
         Write SetNomeProprietario;
      property Status: Byte Read GetStatus Write SetStatus;
   end;

implementation

{ TLicenca }

constructor TLicenca.Create;
begin
   inherited Create;
end;

destructor TLicenca.Destroy;
begin
   inherited Destroy;
end;

function TLicenca.GetChaveProduto: String;
begin
   Result := fChaveProduto;
end;

function TLicenca.GetDataExpiracao: TDateTime;
begin
   Result := fDataExpiracao;
end;

function TLicenca.GetId: Integer;
begin
   Result := fId;
end;

function TLicenca.GetNomeProprietario: String;
begin
   Result := fNomeProprietario;
end;

function TLicenca.GetNumeroSerie: String;
begin
   Result := fNumeroSerie;
end;

function TLicenca.GetStatus: Byte;
begin
   Result := fStatus;
end;

procedure TLicenca.SetChaveProduto(const Value: String);
begin
   if Value <> fChaveProduto then
      fChaveProduto := Value;
end;

procedure TLicenca.SetDataExpiracao(const Value: TDateTime);
begin
   if Value <> fDataExpiracao then
      fDataExpiracao := Value;
end;

procedure TLicenca.SetId(const Value: Integer);
begin
   if Value <> fId then
      fId := Value;
end;

procedure TLicenca.SetNomeProprietario(const Value: String);
begin
   if Value <> fNomeProprietario then
      fNomeProprietario := Value;
end;

procedure TLicenca.SetNumeroSerie(const Value: String);
begin
   if Value <> fNumeroSerie then
      fNumeroSerie := Value;
end;

procedure TLicenca.SetStatus(const Value: Byte);
begin
   if Value <> fStatus then
      fStatus := Value;
end;

end.
