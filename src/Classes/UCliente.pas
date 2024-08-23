unit UCliente;

interface

uses
   Classes, UEndereco, UProfissao;

type
   TTipoPessoa = (tpFisica, tpJuridica, tpOutro);
   TSexo = (sMasculino, sFeminino);
   TEstadoCivil = (esSolteiro, esCasado, esSeparado, esDivorciado, esViuvo, esOutros);

   TCliente = class(TObject)
   private
      { Private declarations }
      fId: Integer;
      fCodigo: String;
      fTipoPessoa: TTipoPessoa;
      fDataCadastro: TDateTime;
      fCPF: String;
      fIdentidadeNumero: String;
      fCNPJ: String;
      fInscricaoEstadual: String;
      fInscricaoMunicipal: String;
      fInscricaoSuframa: String;
      fRazaoSocial: String;
      fNomeFantasia: String;
      fEnderecoResidencial: TEndereco;
      fEnderecoComercial: TEndereco;
      fEnderecoEntrega: TEndereco;
      fEnderecoCobranca: TEndereco;
      fTelefoneFixo: String;
      fTelefoneCelular: String;
      fFax: String;
      fEmail: String;
      fNomeContato: String;
      fTelefoneContato: String;
      fSexo: TSexo;
      fDataNascimento: TDateTime;
      fEstadoCivil: TEstadoCivil;
      fMaeNome: String;
      fMaeCPF: String;
      fMaeIdentidadeNumero: String;
      fPaiNome: String;
      fPaiCPF: String;
      fPaiIdentidadeNumero: String;
      fProfissao: TProfissao;
      fRendaMensal: Double;
      fLimiteCredito: Double;
      fDiaVencimento: Byte;
      fPreco: Integer;
      fClassificacao: Integer;
      fStatus: Integer;
      fObservacao: TStrings;
      function GetId: Integer;
      function GetStatus: Integer;
      procedure SetId(const Value: Integer);
      procedure SetStatus(const Value: Integer);
      function GetClassificacao: Integer;
      function GetCNPJ: String;
      function GetCodigo: String;
      function GetCPF: String;
      function GetDataCadastro: TDateTime;
      function GetDataNascimento: TDateTime;
      function GetDiaVencimento: Byte;
      function GetEmail: String;
      function GetEnderecoCobranca: TEndereco;
      function GetEnderecoComercial: TEndereco;
      function GetEnderecoEntrega: TEndereco;
      function GetEnderecoResidencial: TEndereco;
      function GetEstadoCivil: TEstadoCivil;
      function GetFax: String;
      function GetIdentidadeNumero: String;
      function GetInscricaoEstadual: String;
      function GetInscricaoMunicipal: String;
      function GetInscricaoSuframa: String;
      function GetLimiteCredito: Double;
      function GetMaeCPF: String;
      function GetMaeIdentidadeNumero: String;
      function GetMaeNome: String;
      function GetNomeContato: String;
      function GetNomeFantasia: String;
      function GetObservacao: TStrings;
      function GetPaiCPF: String;
      function GetPaiIdendidadeNumero: String;
      function GetPaiNome: String;
      function GetPreco: Integer;
      function GetProfissao: TProfissao;
      function GetRazaoSocial: String;
      function GetRendaMensal: Double;
      function GetSexo: TSexo;
      function GetTelefoneCelular: String;
      function GetTelefoneContato: String;
      function GetTelefoneFixo: String;
      function GetTipoPessoa: TTipoPessoa;
      procedure SetClassificacao(const Value: Integer);
      procedure SetCNPJ(const Value: String);
      procedure SetCodigo(const Value: String);
      procedure SetCPF(const Value: String);
      procedure SetDataCadastro(const Value: TDateTime);
      procedure SetDataNascimento(const Value: TDateTime);
      procedure SetDiaVencimento(const Value: Byte);
      procedure SetEmail(const Value: String);
      procedure SetEnderecoCobranca(const Value: TEndereco);
      procedure SetEnderecoComercial(const Value: TEndereco);
      procedure SetEnderecoEntrega(const Value: TEndereco);
      procedure SetEnderecoResidencial(const Value: TEndereco);
      procedure SetEstadoCivil(const Value: TEstadoCivil);
      procedure SetFax(const Value: String);
      procedure SetIdentidadeNumero(const Value: String);
      procedure SetInscricaoEstadual(const Value: String);
      procedure SetInscricaoMunicipal(const Value: String);
      procedure SetInscricaoSuframa(const Value: String);
      procedure SetLimiteCredito(const Value: Double);
      procedure SetMaeCPF(const Value: String);
      procedure SetMaeIdentidadeNumero(const Value: String);
      procedure SetMaeNome(const Value: String);
      procedure SetNomeContato(const Value: String);
      procedure SetNomeFantasia(const Value: String);
      procedure SetObservacao(const Value: TStrings);
      procedure SetPaiCPF(const Value: String);
      procedure SetPaiIdentidadeNumero(const Value: String);
      procedure SetPaiNome(const Value: String);
      procedure SetPreco(const Value: Integer);
      procedure SetProfissao(const Value: TProfissao);
      procedure SetRazaoSocial(const Value: String);
      procedure SetRendaMensal(const Value: Double);
      procedure SetSexo(const Value: TSexo);
      procedure SetTelefoneCelular(const Value: String);
      procedure SetTelefoneContato(const Value: String);
      procedure SetTelefoneFixo(const Value: String);
      procedure SetTipoPessoa(const Value: TTipoPessoa);
   protected
      { Protected declarations }
   public
      { Public declarations }
      constructor Create;
      destructor Destroy;
      property Id: Integer Read GetId Write SetId;
      property Codigo: String Read GetCodigo Write SetCodigo;
      property TipoPessoa: TTipoPessoa Read GetTipoPessoa Write SetTipoPessoa;
      property DataCadastro: TDateTime Read GetDataCadastro Write SetDataCadastro;
      property CPF: String Read GetCPF Write SetCPF;
      property IdentidadeNumero: String Read GetIdentidadeNumero Write SetIdentidadeNumero;
      property CNPJ: String Read GetCNPJ Write SetCNPJ;
      property InscricaoEstadual: String Read GetInscricaoEstadual Write SetInscricaoEstadual;
      property InscricaoMunicipal: String Read GetInscricaoMunicipal Write SetInscricaoMunicipal;
      property InscricaoSuframa: String Read GetInscricaoSuframa Write SetInscricaoSuframa;
      property RazaoSocial: String Read GetRazaoSocial Write SetRazaoSocial;
      property NomeFantasia: String Read GetNomeFantasia Write SetNomeFantasia;
      property EnderecoResidencial: TEndereco Read GetEnderecoResidencial Write SetEnderecoResidencial;
      property EnderecoComercial: TEndereco Read GetEnderecoComercial Write SetEnderecoComercial;
      property EnderecoEntrega: TEndereco Read GetEnderecoEntrega Write SetEnderecoEntrega;
      property EnderecoCobranca: TEndereco Read GetEnderecoCobranca Write SetEnderecoCobranca;
      property TelefoneFixo: String Read GetTelefoneFixo Write SetTelefoneFixo;
      property TelefoneCelular: String Read GetTelefoneCelular Write SetTelefoneCelular;
      property Fax: String Read GetFax Write SetFax;
      property Email: String Read GetEmail Write SetEmail;
      property NomeContato: String Read GetNomeContato Write SetNomeContato;
      property TelefoneContato: String Read GetTelefoneContato Write SetTelefoneContato;
      property Sexo: TSexo Read GetSexo Write SetSexo;
      property DataNascimento: TDateTime Read GetDataNascimento Write SetDataNascimento;
      property EstadoCivil: TEstadoCivil Read GetEstadoCivil Write SetEstadoCivil;
      property MaeNome: String Read GetMaeNome Write SetMaeNome;
      property MaeCPF: String Read GetMaeCPF Write SetMaeCPF;
      property MaeIdentidadeNumero: String Read GetMaeIdentidadeNumero Write SetMaeIdentidadeNumero;
      property PaiNome: String Read GetPaiNome Write SetPaiNome;
      property PaiCPF: String Read GetPaiCPF Write SetPaiCPF;
      property PaiIdentidadeNumero: String Read GetPaiIdendidadeNumero Write SetPaiIdentidadeNumero;
      property Profissao: TProfissao Read GetProfissao Write SetProfissao;
      property RendaMensal: Double Read GetRendaMensal Write SetRendaMensal;
      property LimiteCredito: Double Read GetLimiteCredito Write SetLimiteCredito;
      property DiaVencimento: Byte Read GetDiaVencimento Write SetDiaVencimento;
      property Preco: Integer Read GetPreco Write SetPreco;
      property Classificacao: Integer Read GetClassificacao Write SetClassificacao;
      property Observacao: TStrings Read GetObservacao Write SetObservacao;
      property Status: Integer Read GetStatus Write SetStatus;
   end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
   fEnderecoResidencial := TEndereco.Create;
   fEnderecoComercial := TEndereco.Create;
   fEnderecoEntrega := TEndereco.Create;
   fEnderecoCobranca := TEndereco.Create;
   fObservacao := TStringList.Create;
end;

destructor TCliente.Destroy;
begin
   fEnderecoResidencial.Destroy;
   fEnderecoComercial.Destroy;
   fEnderecoEntrega.Destroy;
   fEnderecoCobranca.Destroy;
   fObservacao.Destroy;
end;

function TCliente.GetClassificacao: Integer;
begin
   Result := fClassificacao;
end;

function TCliente.GetCNPJ: String;
begin
   Result := fCNPJ;
end;

function TCliente.GetCodigo: String;
begin
   Result := fCodigo;
end;

function TCliente.GetCPF: String;
begin
   Result := fCPF;
end;

function TCliente.GetDataCadastro: TDateTime;
begin
   Result := fDataCadastro;
end;

function TCliente.GetDataNascimento: TDateTime;
begin
   Result := fDataNascimento;
end;

function TCliente.GetDiaVencimento: Byte;
begin
   Result := fDiaVencimento;
end;

function TCliente.GetEmail: String;
begin
   Result := fEmail;
end;

function TCliente.GetEnderecoCobranca: TEndereco;
begin
   Result := fEnderecoCobranca;
end;

function TCliente.GetEnderecoComercial: TEndereco;
begin
   Result := fEnderecoComercial;
end;

function TCliente.GetEnderecoEntrega: TEndereco;
begin
   Result := fEnderecoEntrega;
end;

function TCliente.GetEnderecoResidencial: TEndereco;
begin
   Result := fEnderecoResidencial;
end;

function TCliente.GetEstadoCivil: TEstadoCivil;
begin
   Result := fEstadoCivil;
end;

function TCliente.GetFax: String;
begin
   Result := fFax;
end;

function TCliente.GetId: Integer;
begin
   Result := fId;
end;

function TCliente.GetIdentidadeNumero: String;
begin
   Result := fIdentidadeNumero;
end;

function TCliente.GetInscricaoEstadual: String;
begin
   Result := fInscricaoEstadual;
end;

function TCliente.GetInscricaoMunicipal: String;
begin
   Result := fInscricaoMunicipal;
end;

function TCliente.GetInscricaoSuframa: String;
begin
   Result := fInscricaoSuframa;
end;

function TCliente.GetLimiteCredito: Double;
begin
   Result := fLimiteCredito;
end;

function TCliente.GetMaeCPF: String;
begin
   Result := fMaeCPF;
end;

function TCliente.GetMaeIdentidadeNumero: String;
begin
   Result := fMaeIdentidadeNumero;
end;

function TCliente.GetMaeNome: String;
begin
   Result := fMaeNome;
end;

function TCliente.GetNomeContato: String;
begin
   Result := fNomeContato;
end;

function TCliente.GetNomeFantasia: String;
begin
   Result := fNomeFantasia;
end;

function TCliente.GetObservacao: TStrings;
begin
   Result := fObservacao;
end;

function TCliente.GetPaiCPF: String;
begin
   Result := fPaiCPF;
end;

function TCliente.GetPaiIdendidadeNumero: String;
begin
   Result := fPaiIdentidadeNumero;
end;

function TCliente.GetPaiNome: String;
begin
   Result := fPaiNome;
end;

function TCliente.GetPreco: Integer;
begin
   Result := fPreco;
end;

function TCliente.GetProfissao: TProfissao;
begin
   Result := fProfissao;
end;

function TCliente.GetRazaoSocial: String;
begin
   Result := fRazaoSocial;
end;

function TCliente.GetRendaMensal: Double;
begin
   Result := fRendaMensal;
end;

function TCliente.GetSexo: TSexo;
begin
   Result := fSexo;
end;

function TCliente.GetStatus: Integer;
begin
   Result := fStatus;
end;

function TCliente.GetTelefoneCelular: String;
begin
   Result := fTelefoneCelular;
end;

function TCliente.GetTelefoneContato: String;
begin
   Result := fTelefoneContato;
end;

function TCliente.GetTelefoneFixo: String;
begin
   Result := fTelefoneFixo;
end;

function TCliente.GetTipoPessoa: TTipoPessoa;
begin
   Result := fTipoPessoa;
end;

procedure TCliente.SetClassificacao(const Value: Integer);
begin
   if Value <> fClassificacao then
      fClassificacao := Value;
end;

procedure TCliente.SetCNPJ(const Value: String);
begin
   if Value <> fCNPJ then
      fCNPJ := Value;
end;

procedure TCliente.SetCodigo(const Value: String);
begin
   if Value <> fCodigo then
      fCodigo := Value;
end;

procedure TCliente.SetCPF(const Value: String);
begin
   if Value <> fCPF then
      fCPF := Value;
end;

procedure TCliente.SetDataCadastro(const Value: TDateTime);
begin
   if Value <> fDataCadastro then
      fDataCadastro := Value;
end;

procedure TCliente.SetDataNascimento(const Value: TDateTime);
begin
   if Value <> fDataNascimento then
      fDataNascimento := Value;
end;

procedure TCliente.SetDiaVencimento(const Value: Byte);
begin
   if Value <> fDiaVencimento then
      fDiaVencimento := Value;
end;

procedure TCliente.SetEmail(const Value: String);
begin
   if Value <> fEmail then
      fEmail := Value;
end;

procedure TCliente.SetEnderecoCobranca(const Value: TEndereco);
begin
   if Value <> fEnderecoCobranca then
      fEnderecoCobranca := Value;
end;

procedure TCliente.SetEnderecoComercial(const Value: TEndereco);
begin
   if Value <> fEnderecoComercial then
      fEnderecoComercial := Value;
end;

procedure TCliente.SetEnderecoEntrega(const Value: TEndereco);
begin
   if Value <> fEnderecoEntrega then
      fEnderecoEntrega := Value;
end;

procedure TCliente.SetEnderecoResidencial(const Value: TEndereco);
begin
   if Value <> fEnderecoResidencial then
      fEnderecoResidencial := Value;
end;

procedure TCliente.SetEstadoCivil(const Value: TEstadoCivil);
begin
   if Value <> fEstadoCivil then
      fEstadoCivil := Value;
end;

procedure TCliente.SetFax(const Value: String);
begin
   if Value <> fFax then
      fFax := Value;
end;

procedure TCliente.SetId(const Value: Integer);
begin
   if Value <> fId then
      fId := Value;
end;

procedure TCliente.SetIdentidadeNumero(const Value: String);
begin
   if Value <> fIdentidadeNumero then
      fIdentidadeNumero := Value;
end;

procedure TCliente.SetInscricaoEstadual(const Value: String);
begin
   if Value <> fInscricaoEstadual then
      fInscricaoEstadual := Value;
end;

procedure TCliente.SetInscricaoMunicipal(const Value: String);
begin
   if Value <> fInscricaoMunicipal then
      fInscricaoMunicipal := Value;
end;

procedure TCliente.SetInscricaoSuframa(const Value: String);
begin
   if Value <> fInscricaoSuframa then
      fInscricaoSuframa := Value;
end;

procedure TCliente.SetLimiteCredito(const Value: Double);
begin
   if Value <> fLimiteCredito then
      fLimiteCredito := Value;
end;

procedure TCliente.SetMaeCPF(const Value: String);
begin
   if Value <> fMaeCPF then
      fMaeCPF := Value;
end;

procedure TCliente.SetMaeIdentidadeNumero(const Value: String);
begin
   if Value <> fMaeIdentidadeNumero then
      fMaeIdentidadeNumero := Value;
end;

procedure TCliente.SetMaeNome(const Value: String);
begin
   if Value <> fMaeNome then
      fMaeNome := Value;
end;

procedure TCliente.SetNomeContato(const Value: String);
begin
   if Value <> fNomeContato then
      fNomeContato := Value;
end;

procedure TCliente.SetNomeFantasia(const Value: String);
begin
   if Value <> fNomeFantasia then
      fNomeFantasia := Value;
end;

procedure TCliente.SetObservacao(const Value: TStrings);
begin
   if Value <> fObservacao then
      fObservacao := Value;
end;

procedure TCliente.SetPaiCPF(const Value: String);
begin
   if Value <> fPaiCPF then
      fPaiCPF := Value;
end;

procedure TCliente.SetPaiIdentidadeNumero(const Value: String);
begin
   if Value <> fPaiIdentidadeNumero then
      fPaiIdentidadeNumero := Value;
end;

procedure TCliente.SetPaiNome(const Value: String);
begin
   if Value <> fPaiNome then
      fPaiNome := Value;
end;

procedure TCliente.SetPreco(const Value: Integer);
begin
   if Value <> fPreco then
      fPreco := Value;
end;

procedure TCliente.SetProfissao(const Value: TProfissao);
begin
   if Value <> fProfissao then
      fProfissao := Value;
end;

procedure TCliente.SetRazaoSocial(const Value: String);
begin
   if Value <> fRazaoSocial then
      fRazaoSocial := Value;
end;

procedure TCliente.SetRendaMensal(const Value: Double);
begin
   if Value <> fRendaMensal then
      fRendaMensal := Value;
end;

procedure TCliente.SetSexo(const Value: TSexo);
begin
   if Value <> fSexo then
      fSexo := Value;
end;

procedure TCliente.SetStatus(const Value: Integer);
begin
   if Value <> fStatus then
      fStatus := Value;
end;

procedure TCliente.SetTelefoneCelular(const Value: String);
begin
   if Value <> fTelefoneCelular then
      fTelefoneCelular := Value;
end;

procedure TCliente.SetTelefoneContato(const Value: String);
begin
   if Value <> fTelefoneContato then
      fTelefoneContato := Value;
end;

procedure TCliente.SetTelefoneFixo(const Value: String);
begin
   if Value <> fTelefoneFixo then
      fTelefoneFixo := Value;
end;

procedure TCliente.SetTipoPessoa(const Value: TTipoPessoa);
begin
   if Value <> fTipoPessoa then
      fTipoPessoa := Value;
end;

end.
