unit UOperadorController;

interface

uses
   UMVCInterfaces, UOperador, UOperadorModel;

type
   IOperadorController = interface(IController)
      ['{020A96BA-DD4C-4BF0-940A-6C654DCC101D}']
      function GetModel: IOperadorModel;
      procedure SetModel(const Value: IOperadorModel);
      function GetView: IView;
      procedure SetView(const Value: IView);
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      property Model: IOperadorModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   end;

   TOperadorController = class(TInterfacedObject, IOperadorController)
   private
      { Private declarations }
      fModel: IOperadorModel;
      fView: IView;
      function GetModel: IOperadorModel;
      procedure SetModel(const Value: IOperadorModel);
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
      property Model: IOperadorModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   published
      { Published declarations }
   end;

implementation

{ TOperadorController }

procedure TOperadorController.Cancelar;
begin
   fModel.Cancelar;
end;

procedure TOperadorController.Deletar;
begin
   fModel.Deletar;
end;

procedure TOperadorController.Editar;
begin
   fModel.Editar;
end;

function TOperadorController.GetModel: IOperadorModel;
begin
   Result := fModel;
end;

function TOperadorController.GetView: IView;
begin
   Result := fView;
end;

procedure TOperadorController.Gravar;
begin
   fModel.Gravar;
end;

procedure TOperadorController.Initialize;
begin
   fModel.Initialize;
end;

procedure TOperadorController.Inserir;
begin
   fModel.Inserir;
end;

procedure TOperadorController.SetModel(const Value: IOperadorModel);
begin
   if Value <> fModel then
      fModel := Value;
end;

procedure TOperadorController.SetView(const Value: IView);
begin
   if Value <> fView then
      fView := Value;
end;

end.
