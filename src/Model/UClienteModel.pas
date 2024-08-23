unit UClienteModel;

interface

uses
   SysUtils, Classes,
   UMVCInterfaces, DB, UCliente;

type
   IClienteModel = interface(IModel)
      ['{8067AA11-3DB8-4EEE-B426-CF44A57FABF7}']
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      function BuscaPorCPF(const Value: String): Boolean;
      function BuscaPorCNPJ(const Value: String): Boolean;
      function BuscaPorNome(const Value: String): Boolean;
      function BuscaPorNomeFantasia(const Value: String): Boolean;
   end;

   TClienteModel = class(TInterfacedObject, IClienteModel)
   private
      { Private declarations }
      fDataSet: TDataSet;
      function Busca(ACondicao: String): Boolean;
      function GetCliente: TCliente;
   protected
      { Protected declarations }
   public
      { Public declarations }
      procedure Initialize;
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      function BuscaPorCPF(const Value: String): Boolean;
      function BuscaPorCNPJ(const Value: String): Boolean;
      function BuscaPorNome(const Value: String): Boolean;
      function BuscaPorNomeFantasia(const Value: String): Boolean;
   end;

implementation

uses
   Uni,
   UPais, UEstado, UCidade,
   UDataModuleCadastro;

{ TClienteModel }

function TClienteModel.Busca(ACondicao: String): Boolean;
begin
   fDataSet.Close;
   TUniQuery(fDataSet).MacroByName('condicao').Value := ACondicao;
   fDataSet.Open;
   Result := Not fDataSet.IsEmpty;
   if Not Result then
      fDataSet.Close;
end;

function TClienteModel.BuscaPorCNPJ(const Value: String): Boolean;
begin
   Result := Busca(' AND cnpj = ' + QuotedStr(Value));
end;

function TClienteModel.BuscaPorCPF(const Value: String): Boolean;
begin
   Result := Busca(' AND cpf = ' + QuotedStr(Value));
end;

function TClienteModel.BuscaPorNome(const Value: String): Boolean;
begin
   Result := Busca(' AND razao LIKE ' + QuotedStr(Value + '%'));
end;

function TClienteModel.BuscaPorNomeFantasia(const Value: String): Boolean;
begin
   Result := Busca(' AND razao LIKE ' + QuotedStr(Value + '%'));
end;

procedure TClienteModel.Cancelar;
begin
   fDataSet.Cancel;
end;

procedure TClienteModel.Deletar;
begin
   fDataSet.Delete;
end;

procedure TClienteModel.Editar;
begin
   fDataSet.Edit;
end;

function TClienteModel.GetCliente: TCliente;
var
   APais: TPais;
   AEstado: TEstado;
   ACidade: TCidade;
   ACliente: TCliente;
begin
   ACliente := TCliente.Create;
   Try
      With dmCadastro Do
         begin
            ACliente.Id := qryClientes.FieldByName('id_parceiro').AsInteger;
            ACliente.DataCadastro := qryClientes.FieldByName('data_cadastro').AsDateTime;
            ACliente.Codigo := qryClientes.FieldByName('codigo').AsString;
            if qryClientes.FieldByName('tipo_Pessoa').AsString = 'F' then
               ACliente.TipoPessoa := tpFisica
            Else if qryClientes.FieldByName('tipo_Pessoa').AsString = 'J' then
                    ACliente.TipoPessoa := tpJuridica
            Else
               ACliente.TipoPessoa := tpOutro;
            ACliente.CPF := qryClientes.FieldByName('cpf').AsString;
            ACliente.IdentidadeNumero := qryClientes.FieldByName('rg_numero').AsString;
            ACliente.CNPJ := qryClientes.FieldByName('cnpj').AsString;
            ACliente.InscricaoEstadual := qryClientes.FieldByName('insc_estadual').AsString;
            ACliente.InscricaoMunicipal := qryClientes.FieldByName('insc_municipal').AsString;
            ACliente.InscricaoSuframa := qryClientes.FieldByName('insc_suframa').AsString;
            ACliente.RazaoSocial := qryClientes.FieldByName('razao').AsString;
            ACliente.NomeFantasia := qryClientes.FieldByName('fantasia').AsString;
            ACliente.EnderecoResidencial.Logradouro := qryClientes.FieldByName('logradouro_residencial').AsString;
            ACliente.EnderecoResidencial.Numero := qryClientes.FieldByName('numero_residencial').AsString;
            ACliente.EnderecoResidencial.Complemento := qryClientes.FieldByName('complemento_residencial').AsString;
            ACliente.EnderecoResidencial.Bairro := qryClientes.FieldByName('bairro_residencial').AsString;
            ACliente.EnderecoResidencial.Cep := qryClientes.FieldByName('cep_residencial').AsString;

            if dmCadastro.GetCidadePorCodigo(qryClientes.FieldByName('id_cidade_residencial').AsString,
                                             ACidade) then
               ACliente.EnderecoResidencial.Cidade := ACidade;

            if dmCadastro.GetEstadoPorCodigo(qryClientes.FieldByName('id_estado_residencial').AsString,
                                             AEstado) then
               ACliente.EnderecoResidencial.Cidade.Estado := AEstado;

            if dmCadastro.GetPaisPorCodigo(qryClientes.FieldByName('id_pais_residencial').AsString,
                                           APais) then
               ACliente.EnderecoResidencial.Cidade.Estado.Pais := APais;

            ACliente.EnderecoResidencial.PontoReferencia := qryClientes.FieldByName('referencia_residencial').AsString;
//      , , , ,
//      , , , tempo_residencial, logradouro_comercial,
//      numero_comercial, complemento_comercial, bairro_comercial, referencia_comercial, id_pais_comercial,
//      id_estado_comercial, id_cidade_comercial, cep_comercial, logradouro_entrega,
//      numero_entrega, complemento_entrega, bairro_entrega, referencia_entrega, id_pais_entrega,
//      id_estado_entrega, id_cidade_entrega, cep_entrega, logradouro_cobranca, numero_cobranca,
//      complemento_cobranca, bairro_cobranca, referencia_cobranca, id_pais_cobranca, id_estado_cobranca,
//      id_cidade_cobranca, cep_cobranca, telefone, fax, celular, email, contato, comprador, data_nascimento,
//      mae_nome, mae_cpf, mae_doc_identidade, pai_nome, pai_cpf, pai_doc_identidade,
//      id_profissao, renda_mensal, limite_credito, dia_vencimento, desconto, tipo_frete, prazo,
//      sexo, estado_civil, conjuge_nome, conjuge_cpf_numero, conjuge_rg_numero,
//      id_classificacao, observacao, foto
            ACliente.Status := qryClientes.FieldByName('situacao').AsInteger;
         end;
   Finally
      REsult := ACliente;
   End;
end;

procedure TClienteModel.Gravar;
begin
   fDataSet.Post;
end;

procedure TClienteModel.Initialize;
begin
   fDataSet := dmCadastro.qryClientes;
   if fDataSet.Active then
      fDataSet.Close;
end;

procedure TClienteModel.Inserir;
begin
   fDataSet.Append;
end;

end.
