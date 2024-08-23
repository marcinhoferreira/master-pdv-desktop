unit UTerminalModel;

interface

uses
   UMVCInterfaces, DB, UTerminal;

type
   ITerminalModel = interface(IModel)
      ['{F815EBF1-6B53-43F3-BA1C-C618A65D8D0E}']
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      function Buscar(AID_Estabelecimento: Integer): Boolean;
   end;

   TTerminalModel = class(TInterfacedObject, ITerminalModel)
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

uses
   Uni,
   UDataModuleCadastro;

{ TTerminalModel }

function TTerminalModel.Buscar(AID_Estabelecimento: Integer): Boolean;
begin
   fDataSet.Close;
   TUniQuery(fDataSet).ParamByName('id_estabelecimento').Value := AID_Estabelecimento;
   fDataSet.Open;
   Result := Not fDataSet.IsEmpty;
end;

procedure TTerminalModel.Cancelar;
begin
   fDataSet.Cancel;
end;

procedure TTerminalModel.Deletar;
begin
   fDataSet.Delete;
end;

procedure TTerminalModel.Editar;
begin
   fDataSet.Edit;
end;

procedure TTerminalModel.Gravar;
begin
   fDataSet.Post;
end;

procedure TTerminalModel.Initialize;
begin
   fDataSet := dmCadastro.qryTerminais;
   if fDataSet.Active then
      fDataSet.Close;
end;

procedure TTerminalModel.Inserir;
begin
   fDataSet.Append;
end;

end.
