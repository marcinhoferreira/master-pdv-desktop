unit UOperadorModel;

interface

uses
   UMVCInterfaces, UOperador, DB;

type
   IOperadorModel = interface(IModel)
      ['{C73241E3-674F-4BF4-9124-35E14BFAC7B3}']
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
   end;

   TOperadorModel = class(TInterfacedObject, IOperadorModel)
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
   published
      { Published declarations }
   end;

implementation

{ TOperadorModel }

uses
   UDataModuleCadastro;

procedure TOperadorModel.Cancelar;
begin
   fDataSet.Cancel;
end;

procedure TOperadorModel.Deletar;
begin
   fDataSet.Delete;
end;

procedure TOperadorModel.Editar;
begin
   fDataSet.Edit;
end;

procedure TOperadorModel.Gravar;
begin
   fDataSet.Post;
end;

procedure TOperadorModel.Initialize;
begin
   fDataSet := dmCadastro.qryOperadores;
   if fDataSet.Active then
      fDataSet.Close;
   fDataSet.Open;
end;

procedure TOperadorModel.Inserir;
begin
   fDataSet.Append;
end;

end.
