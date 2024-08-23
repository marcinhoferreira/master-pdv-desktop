unit UTerminalController;

interface

uses
   UMVCInterfaces, UTerminalModel;

type
   ITerminalController = interface(IController)
      ['{A0AEB2C8-08A5-41C2-9970-F449152CB9D9}']
      function GetModel: ITerminalModel;
      procedure SetModel(const Value: ITerminalModel);
      function GetView: IView;
      procedure SetView(const Value: IView);
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      function Buscar(AID_Estabelecimento: Integer): Boolean;
      property Model: ITerminalModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   end;

   TTerminalController = class(TInterfacedObject, ITerminalController)
   private
      { Private declarations }
      fModel: ITerminalModel;
      fView: IView;
      function GetModel: ITerminalModel;
      procedure SetModel(const Value: ITerminalModel);
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
      function Buscar(AID_Estabelecimento: Integer): Boolean;
      property Model: ITerminalModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   published
      { Published declarations }
   end;

implementation

{ TTerminalController }

function TTerminalController.Buscar(AID_Estabelecimento: Integer): Boolean;
begin
   Result := fModel.Buscar(AID_Estabelecimento);
end;

procedure TTerminalController.Cancelar;
begin
   fModel.Cancelar;
end;

procedure TTerminalController.Deletar;
begin
   fModel.Deletar;
end;

procedure TTerminalController.Editar;
begin
   fModel.Editar;
end;

function TTerminalController.GetModel: ITerminalModel;
begin
   Result := fModel;
end;

function TTerminalController.GetView: IView;
begin
   Result := fView;
end;

procedure TTerminalController.Gravar;
begin
   fModel.Gravar;
end;

procedure TTerminalController.Initialize;
begin
   fModel.Initialize;
end;

procedure TTerminalController.Inserir;
begin
   fModel.Inserir;
end;

procedure TTerminalController.SetModel(const Value: ITerminalModel);
begin
   if Value <> fModel then
      fModel := Value;
end;

procedure TTerminalController.SetView(const Value: IView);
begin
   if Value <> fView then
      fView := Value;
end;

end.
