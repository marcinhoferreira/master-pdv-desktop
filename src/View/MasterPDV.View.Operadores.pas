unit MasterPDV.View.Operadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, UMVCInterfaces, UOperadorController, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, cxDBLabel, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxDBBotoes, Vcl.StdCtrls,
  cxButtons, cxGroupBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxRadioGroup, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfrmOperadores = class(TfrmPrivilegios, IView)
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    pagOperadores: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    grdOperadores: TcxGrid;
    dbtvwOperadores: TcxGridDBTableView;
    dbtvwOperadoresid_operador: TcxGridDBColumn;
    dbtvwOperadoresnome: TcxGridDBColumn;
    dbtvwOperadoreslogin: TcxGridDBColumn;
    grdOperadoresLevel1: TcxGridLevel;
    tabDetalhes: TcxTabSheet;
    lblIdOperador: TcxLabel;
    dblblIdOperador: TcxDBLabel;
    lblUsuario: TcxLabel;
    dsOperadores: TDataSource;
    dsUsuarios_LookUp: TDataSource;
    dbtvwOperadoresid_usuario: TcxGridDBColumn;
    dbtvwOperadorestipo: TcxGridDBColumn;
    dbtvwOperadoresid_status: TcxGridDBColumn;
    dbtxtedtDescricao: TcxDBLookupComboBox;
    lblTipo: TcxLabel;
    dbcmbTipo: TcxDBComboBox;
    dbradgrpStatus: TcxDBRadioGroup;
    gboxTerminaisDisponiveis: TcxGroupBox;
    gboxTerminaisAtribuidos: TcxGroupBox;
    dsTerminaisDisponiveis: TDataSource;
    dsTerminaisAtribuidos: TDataSource;
    cxDBBotao1: TcxDBBotao;
    cxDBBotao2: TcxDBBotao;
    cxDBBotao3: TcxDBBotao;
    cxDBBotao4: TcxDBBotao;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fController: IOperadorController;
    procedure Initialize;
    procedure SetController(const Value: IOperadorController);
  public
    { Public declarations }
    property Controller: IOperadorController read fController write SetController;
  end;

var
  frmOperadores: TfrmOperadores;

implementation

uses
   VCL.Funcoes, UOperadorModel,
   UDataModuleLeiaute,
   UDataModuleCadastro;

{$R *.dfm}

{ TfrmOperadores }

procedure TfrmOperadores.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagOperadores.ActivePage := tabDetalhes;
end;

procedure TfrmOperadores.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Descartar Modificações no Operador?') then
      begin
         Controller.Cancelar;
         pagOperadores.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmOperadores.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma Exclusão do Operador?') then
      Controller.Deletar;
end;

procedure TfrmOperadores.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Gravar Modificações no Operador?') then
      begin
         Controller.Gravar;
         pagOperadores.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmOperadores.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagOperadores.ActivePage := tabDetalhes;
end;

procedure TfrmOperadores.FormCreate(Sender: TObject);
begin
  inherited;
   dsUsuarios_LookUp.DataSet.Open;
   pagOperadores.HideTabs := True;
   pagOperadores.ActivePage := tabVisualiza;
end;

procedure TfrmOperadores.FormDestroy(Sender: TObject);
begin
  inherited;
   dsUsuarios_LookUp.DataSet.Close;
end;

procedure TfrmOperadores.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
end;

procedure TfrmOperadores.Initialize;
var
   AModel: TOperadorModel;
begin
   Controller := TOperadorController.Create;
   AModel:= TOperadorModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmOperadores.SetController(const Value: IOperadorController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
