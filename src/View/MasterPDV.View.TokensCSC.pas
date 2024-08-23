unit MasterPDV.View.TokensCSC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, UMVCInterfaces, UTokenCSCController, Data.DB,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxDBBotoes, Vcl.StdCtrls, cxButtons, cxGroupBox,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxTextEdit, cxDBLabel, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxmdaset,
  dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfrmTokensCSC = class(TfrmPrivilegios, IView)
    dsTokens: TDataSource;
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    pagTokens: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    grdTokens: TcxGrid;
    dbtvwTokens: TcxGridDBTableView;
    grdTokensLevel1: TcxGridLevel;
    tabDetalhes: TcxTabSheet;
    lblCSCNumero: TcxLabel;
    dbtxtedtCSCNumero: TcxDBTextEdit;
    lblDataEmissao: TcxLabel;
    dbtvwTokensid_token: TcxGridDBColumn;
    dbtvwTokensid_estabelecimento: TcxGridDBColumn;
    dbtvwTokenscsc_id: TcxGridDBColumn;
    dbtvwTokenscsc_numero: TcxGridDBColumn;
    dbtvwTokensdata_emissao: TcxGridDBColumn;
    dbtvwTokensdata_revogacao: TcxGridDBColumn;
    dsEstabelecimentos_LookUp: TDataSource;
    dbdtedtDataEmissao: TcxDBDateEdit;
    gboxPesquisa: TcxGroupBox;
    lblFiltroEstabelecimento: TcxLabel;
    lblEstabelecimento: TcxLabel;
    dblkpcmbEstabelecimento: TcxDBLookupComboBox;
    lblDataRevogacao: TcxLabel;
    dbdtedtDataRevogacao: TcxDBDateEdit;
    lkpcmbParametroEstabelecimento: TcxLookupComboBox;
    dsTerminais: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lkpcmbParametroEstabelecimentoPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
    fController: ITokenCSCController;
    procedure Initialize;
    procedure SetController(const Value: ITokenCSCController);
  public
    { Public declarations }
    property Controller: ITokenCSCController read fController write SetController;
  end;

var
  frmTokensCSC: TfrmTokensCSC;

implementation

uses
   Uni,
   VCL.Funcoes, UTokenCSCModel,
   UDataModuleLeiaute,
   UDataModuleCadastro, UMasterPDVDataModulePDV;

{$R *.dfm}

procedure TfrmTokensCSC.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagTokens.ActivePage := tabDetalhes;
end;

procedure TfrmTokensCSC.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Descartar Modificações no Token?') then
      begin
         Controller.Cancelar;
         pagTokens.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmTokensCSC.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma Exclusão do Token?') then
      Controller.Deletar;
end;

procedure TfrmTokensCSC.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Gravar Modificações no Token?') then
      begin
         Controller.Gravar;
         pagTokens.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmTokensCSC.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagTokens.ActivePage := tabDetalhes;
end;

procedure TfrmTokensCSC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   dsEstabelecimentos_LookUp.DataSet.Close;
   TUniQuery(dsEstabelecimentos_LookUp.DataSet).ParamByName('id_estabelecimento').Clear;
end;

procedure TfrmTokensCSC.FormCreate(Sender: TObject);
begin
  inherited;
   pagTokens.HideTabs := True;
   pagTokens.ActivePage := tabVisualiza;
end;

procedure TfrmTokensCSC.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
   TUniQuery(dsEstabelecimentos_LookUp.DataSet).ParamByName('id_estabelecimento').Value := dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger;
   dsEstabelecimentos_LookUp.DataSet.Open;

   if dsEstabelecimentos_LookUp.DataSet.RecordCount = 1 then
      lkpcmbParametroEstabelecimento.EditValue := dsEstabelecimentos_LookUp.DataSet.FieldByName(lkpcmbParametroEstabelecimento.Properties.KeyFieldNames).Value;

end;

procedure TfrmTokensCSC.Initialize;
var
   AModel: TTokenCSCModel;
begin
   Controller := TTokenCSCController.Create;
   AModel:= TTokenCSCModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmTokensCSC.lkpcmbParametroEstabelecimentoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   if not Controller.Buscar(TcxLookUpComboBox(Sender).EditValue) then
      Informacao('Nenhum Registro foi Encontrado!');
end;

procedure TfrmTokensCSC.SetController(const Value: ITokenCSCController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
