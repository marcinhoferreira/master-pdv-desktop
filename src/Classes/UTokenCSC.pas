unit UTokenCSC;

interface

type
   TTokenCSC = class(TObject)
   private
      { Private declarations }
      fId: Integer;
      fNumero: Integer;
      fCodigo: String;
      fDataEmissao: TDateTime;
      fDataRevogacao: TDateTime;
      function GetCodigo: String;
      function GetDataEmissao: TDateTime;
      function GetDataRevogacao: TDateTime;
      function GetId: Integer;
      function GetNumero: Integer;
      procedure SetCodigo(const Value: String);
      procedure SetDataEmissao(const Value: TDateTime);
      procedure SetDataRevogacao(const Value: TDateTime);
      procedure SetId(const Value: Integer);
      procedure SetNumero(const Value: Integer);
   protected
      { Protected declarations }
   public
      { Public declarations }
      constructor Create;
      destructor Destroy; Override;
   published
      { Published declarations }
      property Id: Integer read GetId write SetId;
      property Numero: Integer read GetNumero write SetNumero;
      property Codigo: String read GetCodigo write SetCodigo;
      property DataEmissao: TDateTime read GetDataEmissao write SetDataEmissao;
      property DataRevogacao: TDateTime read GetDataRevogacao write SetDataRevogacao;
   end;

implementation

{ TTokenCSC }

constructor TTokenCSC.Create;
begin
   ;
end;

destructor TTokenCSC.Destroy;
begin
  ;
  inherited;
end;

function TTokenCSC.GetCodigo: String;
begin
   Result := fCodigo;
end;

function TTokenCSC.GetDataEmissao: TDateTime;
begin
   Result := fDataEmissao;
end;

function TTokenCSC.GetDataRevogacao: TDateTime;
begin
   Result := fDataRevogacao;
end;

function TTokenCSC.GetId: Integer;
begin
   Result := fId;
end;

function TTokenCSC.GetNumero: Integer;
begin
   Result := fNumero;
end;

procedure TTokenCSC.SetCodigo(const Value: String);
begin
   if Value <> fCodigo then
      fCodigo := Value;
end;

procedure TTokenCSC.SetDataEmissao(const Value: TDateTime);
begin
   if Value <> fDataEmissao then
      fDataEmissao := Value;
end;

procedure TTokenCSC.SetDataRevogacao(const Value: TDateTime);
begin
   if Value <> fDataRevogacao then
      fDataRevogacao := Value;
end;

procedure TTokenCSC.SetId(const Value: Integer);
begin
   if Value <> fId then
      fId := Value;
end;

procedure TTokenCSC.SetNumero(const Value: Integer);
begin
   if Value <> fNumero then
      fNumero := Value;
end;

end.
