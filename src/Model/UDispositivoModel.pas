unit UDispositivoModel;

interface

uses
   UMVCInterfaces, DB, UDispositivo;

type
   IDispositivoModel = interface(IModel)
      ['{227BEE01-8880-4293-806D-A6803BF4EB83}']
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
   end;

   TDispositivoModel = class(TInterfacedObject, IDispositivoModel)
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

uses
   UDataModuleCadastro;

{ TDispositivoModel }

procedure TDispositivoModel.Cancelar;
begin
   fDataSet.Cancel;
end;

procedure TDispositivoModel.Deletar;
begin
   fDataSet.Delete;
end;

procedure TDispositivoModel.Editar;
begin
   fDataSet.Edit;
end;

procedure TDispositivoModel.Gravar;
begin
   fDataSet.Post;
end;

procedure TDispositivoModel.Initialize;
begin
   fDataSet := dmCadastro.qryDispositivos;
   fDataSet.Open;
end;

procedure TDispositivoModel.Inserir;
begin
   fDataSet.Append;
end;

end.
