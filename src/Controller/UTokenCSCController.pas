unit UTokenCSCController;

interface

uses
   UMVCInterfaces, UTokenCSCModel;

type
   ITokenCSCController = interface(IController)
      ['{95BCB619-D43D-4539-8E97-D43936A45A8F}']
      function GetModel: ITokenCSCModel;
      procedure SetModel(const Value: ITokenCSCModel);
      function GetView: IView;
      procedure SetView(const Value: IView);
      procedure Inserir;
      procedure Editar;
      procedure Deletar;
      procedure Gravar;
      procedure Cancelar;
      function Buscar(AID_Estabelecimento: Integer): Boolean;
      property Model: ITokenCSCModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   end;

   TTokenCSCController = class(TInterfacedObject, ITokenCSCController)
   private
      { Private declarations }
      fModel: ITokenCSCModel;
      fView: IView;
      function GetModel: ITokenCSCModel;
      procedure SetModel(const Value: ITokenCSCModel);
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
      property Model: ITokenCSCModel read GetModel write SetModel;
      property View: IView read GetView write SetView;
   published
      { Published declarations }
   end;

implementation

{ TTokenCSCController }

function TTokenCSCController.Buscar(AID_Estabelecimento: Integer): Boolean;
begin
   Result := fModel.Buscar(AID_Estabelecimento);
end;

procedure TTokenCSCController.Cancelar;
begin
   fModel.Cancelar;
end;

procedure TTokenCSCController.Deletar;
begin
   fModel.Deletar;
end;

procedure TTokenCSCController.Editar;
begin
   fModel.Editar;
end;

function TTokenCSCController.GetModel: ITokenCSCModel;
begin
   Result := fModel;
end;

function TTokenCSCController.GetView: IView;
begin
   Result := fView;
end;

procedure TTokenCSCController.Gravar;
begin
   fModel.Gravar;
end;

procedure TTokenCSCController.Initialize;
begin
   fModel.Initialize;
end;

procedure TTokenCSCController.Inserir;
begin
   fModel.Inserir;
end;

procedure TTokenCSCController.SetModel(const Value: ITokenCSCModel);
begin
   if Value <> fModel then
      fModel := Value;
end;

procedure TTokenCSCController.SetView(const Value: IView);
begin
   if Value <> fView then
      fView := Value;
end;

end.
