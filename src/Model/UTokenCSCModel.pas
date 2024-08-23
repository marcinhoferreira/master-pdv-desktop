unit UTokenCSCModel;

interface

uses
   UMVCInterfaces, DB, UTokenCSC;

type
   ITokenCSCModel = interface(IModel)
      ['{1F6AAEA6-20C9-4EA1-A253-D18B17EBD279}']
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      function Buscar(AID_Estabelecimento: Integer): Boolean;
   end;

   TTokenCSCModel = class(TInterfacedObject, ITokenCSCModel)
   private
      { Private declarations }
      fDataSet: TDataSet;
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
      function Buscar(AID_Estabelecimento: Integer): Boolean;
   published
      { Published declarations }
   end;

implementation

{ TTokenCSCModel }

uses
   Uni,
   UDataModuleCadastro;

function TTokenCSCModel.Buscar(AID_Estabelecimento: Integer): Boolean;
begin
   fDataSet.Close;
   TUniQuery(fDataSet).ParamByName('id_estabelecimento').Value := AID_Estabelecimento;
   fDataSet.Open;
   Result := Not fDataSet.IsEmpty;
end;

procedure TTokenCSCModel.Cancelar;
begin
   fDataSet.Cancel;
end;

procedure TTokenCSCModel.Deletar;
begin
   fDataSet.Delete;
end;

procedure TTokenCSCModel.Editar;
begin
   fDataSet.Edit;
end;

procedure TTokenCSCModel.Gravar;
begin
   fDataSet.Post;
end;

procedure TTokenCSCModel.Initialize;
begin
   fDataSet := dmCadastro.qryTokens;
end;

procedure TTokenCSCModel.Inserir;
begin
   fDataSet.Append;
end;

end.
