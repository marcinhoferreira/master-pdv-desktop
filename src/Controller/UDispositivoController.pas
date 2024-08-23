unit UDispositivoController;

interface

uses
   UMVCInterfaces, UDispositivoModel;

type
   IDispositivoController = interface(IController)
      ['{9C25FA22-FEC9-4FC4-8E44-5988598A54F7}']
      function GetModel: IDispositivoModel;
      procedure SetModel(const Value: IDispositivoModel);
      function GetView: IView;
      procedure SetView(const Value: IView);
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      property Model: IDispositivoModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   end;

   TDispositivoController = class(TInterfacedObject, IDispositivoController)
   private
      { Private declarations }
      fModel: IDispositivoModel;
      fView: IView;
      function GetModel: IDispositivoModel;
      procedure SetModel(const Value: IDispositivoModel);
      function GetView: IView;
      procedure SetView(const Value: IView);
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
      property Model: IDispositivoModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   published
      { Published declarations }
   end;

implementation

{ TDispositivoController }

procedure TDispositivoController.Cancelar;
begin
   fModel.Cancelar;
end;

procedure TDispositivoController.Deletar;
begin
   fModel.Deletar;
end;

procedure TDispositivoController.Editar;
begin
   fModel.Editar;
end;

function TDispositivoController.GetModel: IDispositivoModel;
begin
   Result := fModel;
end;

function TDispositivoController.GetView: IView;
begin
   Result := fView;
end;

procedure TDispositivoController.Gravar;
begin
   fModel.Gravar;
end;

procedure TDispositivoController.Initialize;
begin
   fModel.Initialize;
end;

procedure TDispositivoController.Inserir;
begin
   fModel.Inserir;
end;

procedure TDispositivoController.SetModel(const Value: IDispositivoModel);
begin
    if Value <> fModel then
       fModel := Value;
end;

procedure TDispositivoController.SetView(const Value: IView);
begin
   if Value <> fView then
      fView := Value;
end;

end.
