unit UDispositivo;

interface

type
   TBitParada = class(TObject)
   private
      { Private declarations }
      fId: Integer;
      fValor: Double;
   protected
      { Protected declarations }
   public
      { Public declarations }
      constructor Create;
      destructor Destroy; Override;
   published
      { Published declarations }
   end;

   TParidade = (pPar, pImpar);

   TDispositivo = class(TObject)
   private
      { Private declarations }
      fId: Integer;
      fDescricao: String;
      fModelo: String;
      fVelocidade: Integer;
      fTaxaTransmissao: Integer;
      fParidade: TParidade;
      fBitParada: TBitParada;
      fHandsHake: Integer;
   protected
      { Protected declarations }
   public
      { Public declarations }
      constructor Create;
      destructor Destroy; Override;
   published
      { Published declarations }
   end;

implementation

{ TBitParada }

constructor TBitParada.Create;
begin
   ;
end;

destructor TBitParada.Destroy;
begin
  inherited;
end;

{ TDispositivo }

constructor TDispositivo.Create;
begin
   fBitParada := TBitParada.Create;
end;

destructor TDispositivo.Destroy;
begin
   fBitParada.Destroy;
   inherited;
end;

end.
