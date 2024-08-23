unit MasterPDV.View.Categorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, UMVCInterfaces, UCategoria, UCategoriaController,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxTextEdit, cxDBEdit, cxDBLabel, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxDBBotoes, Vcl.StdCtrls, cxButtons, cxGroupBox, dxSkinOffice2019Colorful,
  dxSkinTheBezier, dxDateRanges;

type
  TfrmCategorias = class(TfrmPrivilegios, IView)
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    dsCategorias: TDataSource;
    tabctrlCategorias: TcxTabControl;
    pagCategorias: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    grdCategorias: TcxGrid;
    dbtabvwCategorias: TcxGridDBTableView;
    dbtabvwCategoriasid_categoria: TcxGridDBColumn;
    dbtabvwCategoriasdescricao: TcxGridDBColumn;
    grdCategoriasLevel1: TcxGridLevel;
    tabDetalhesCategoria: TcxTabSheet;
    lblIdCategoria: TcxLabel;
    dblblIdCategoria: TcxDBLabel;
    lblDescricao: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    dsSubCategorias: TDataSource;
    dbtabvwSubCategorias: TcxGridDBTableView;
    dbtabvwSubCategoriasid_categoria: TcxGridDBColumn;
    dbtabvwSubCategoriasid_subcategoria: TcxGridDBColumn;
    dbtabvwSubCategoriasdescricao: TcxGridDBColumn;
    tabDetalhesSubCategoria: TcxTabSheet;
    gboxCategoria: TcxGroupBox;
    lblCategoria: TcxLabel;
    dbtxtedtCategoria: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    lblIdSubCategoria: TcxLabel;
    dblblIdSubCategoria: TcxDBLabel;
    lblDescricaoSubCategoria: TcxLabel;
    dbtxtedtDescricaoSubCategoria: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tabctrlCategoriasChange(Sender: TObject);
  private
    { Private declarations }
    fControllerCategoria: ICategoriaController;
    fControllerSubCategoria: ISubCategoriaController;
    procedure SetControllerCategoria(const Value: ICategoriaController);
    procedure SetControllerSubCategoria(const Value: ISubCategoriaController);
  public
    { Public declarations }
    procedure Initialize;
    property ControllerCategoria: ICategoriaController read fControllerCategoria write SetControllerCategoria;
    property ControllerSubCategoria: ISubCategoriaController read fControllerSubCategoria write SetControllerSubCategoria;
  end;

var
  frmCategorias: TfrmCategorias;

implementation

uses
   VCL.Funcoes, UCategoriaModel,
   UDataModuleLeiaute,
   UDataModuleProduto;

{$R *.dfm}

{ TfrmCategorias }

procedure TfrmCategorias.btnAlterarClick(Sender: TObject);
begin
  inherited;
   if tabctrlCategorias.TabIndex = 0 then
      begin
         ControllerCategoria.Editar;
         pagCategorias.ActivePage := tabDetalhesCategoria;
      end
   Else
      begin
         ControllerSubCategoria.Editar;
         pagCategorias.ActivePage := tabDetalhesSubCategoria;
      end;
end;

procedure TfrmCategorias.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if tabctrlCategorias.TabIndex = 0 then
      begin
         if Confirmacao('Descartar modificações na categoria?') then
            begin
               ControllerCategoria.Cancelar;
               pagCategorias.ActivePage := tabVisualiza;
            end;
      end
   Else
      begin
         if Confirmacao('Descartar modificações na sub-categoria?') then
            begin
               ControllerSubCategoria.Cancelar;
               pagCategorias.ActivePage := tabVisualiza;
            end;
      end;
end;

procedure TfrmCategorias.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if tabctrlCategorias.TabIndex = 0 then
      begin
         if Confirmacao('Confirma exclusão da categoria?') then
            ControllerCategoria.Deletar;
      end
   Else
      begin
         if Confirmacao('Confirma exclusão da sub-categoria?') then
            ControllerSubCategoria.Deletar;
      end;
end;

procedure TfrmCategorias.btnGravarClick(Sender: TObject);
begin
  inherited;
   if tabctrlCategorias.TabIndex = 0 then
      begin
         if Confirmacao('Gravar modificações na categoria?') then
            begin
               ControllerCategoria.Gravar;
               pagCategorias.ActivePage := tabVisualiza;
            end;
      end
   Else
      begin
         if Confirmacao('Gravar modificações na sub-categoria?') then
            begin
               ControllerSubCategoria.Gravar;
               pagCategorias.ActivePage := tabVisualiza;
            end;
      end;
end;

procedure TfrmCategorias.btnIncluirClick(Sender: TObject);
begin
  inherited;
   if tabctrlCategorias.TabIndex = 0 then
      begin
         ControllerCategoria.Inserir;
         pagCategorias.ActivePage := tabDetalhesCategoria;
      end
   Else
      begin
         ControllerSubCategoria.Inserir;
         pagCategorias.ActivePage := tabDetalhesSubCategoria;
      end;
end;

procedure TfrmCategorias.FormCreate(Sender: TObject);
begin
  inherited;
   pagCategorias.HideTabs := True;
   pagCategorias.ActivePage := tabVisualiza;
end;

procedure TfrmCategorias.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
   tabctrlCategorias.TabIndex := 0;
end;

procedure TfrmCategorias.Initialize;
var
   AModelCategoria: TCategoriaModel;
   AModelSubCategoria: TSubCategoriaModel;
begin
   ControllerCategoria := TCategoriaController.Create;
   AModelCategoria := TCategoriaModel.Create;
   ControllerCategoria.Model := AModelCategoria;
   ControllerCategoria.View := Self;
   ControllerCategoria.Initialize;

   ControllerSubCategoria := TSubCategoriaController.Create;
   AModelSubCategoria := TSubCategoriaModel.Create;
   ControllerSubCategoria.Model := AModelSubCategoria;
   ControllerSubCategoria.View := Self;
   ControllerSubCategoria.Initialize;
end;

procedure TfrmCategorias.SetControllerCategoria(
  const Value: ICategoriaController);
begin
   if Value <> fControllerCategoria then
      fControllerCategoria := Value;
end;

procedure TfrmCategorias.SetControllerSubCategoria(
  const Value: ISubCategoriaController);
begin
   if Value <> fControllerSubCategoria then
      fControllerSubCategoria := Value;
end;

procedure TfrmCategorias.tabctrlCategoriasChange(Sender: TObject);
begin
  inherited;
   if TcxTabControl(Sender).TabIndex = 0 then
      begin
         btnIncluir.DataSource := dsCategorias;
         btnAlterar.DataSource := dsCategorias;
         btnExcluir.DataSource := dsCategorias;
         btnGravar.DataSource := dsCategorias;
         btnCancelar.DataSource := dsCategorias;
         grdCategorias.ActiveLevel.GridView := dbtabvwCategorias;
      end
   Else
      begin
         btnIncluir.DataSource := dsSubCategorias;
         btnAlterar.DataSource := dsSubCategorias;
         btnExcluir.DataSource := dsSubCategorias;
         btnGravar.DataSource := dsSubCategorias;
         btnCancelar.DataSource := dsSubCategorias;
         grdCategorias.ActiveLevel.GridView := dbtabvwSubCategorias;
      end;
  gboxCategoria.Visible := TcxTabControl(Sender).TabIndex = 1;
end;

end.
