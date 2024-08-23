unit MasterPDV.View.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, UMVCInterfaces, UProduto, UProdutoController,
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
  cxDBBotoes, Vcl.StdCtrls, cxButtons, cxGroupBox, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxButtonEdit,
  uFrameFoto, cxMemo, cxImageComboBox, cxRadioGroup, dxSkinOffice2019Colorful,
  dxSkinTheBezier, dxDateRanges;

type
  TfrmProdutos = class(TfrmPrivilegios, IView)
    gboxFerramentas: TcxGroupBox;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    pagProdutos: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    grdProdutos: TcxGrid;
    dbtvwProdutos: TcxGridDBTableView;
    dbtvwProdutosid_produto: TcxGridDBColumn;
    dbtvwProdutosdescricao: TcxGridDBColumn;
    grdProdutosLevel1: TcxGridLevel;
    tabDetalhes: TcxTabSheet;
    dsProdutos: TDataSource;
    gboxLocalizar: TcxGroupBox;
    lblLocalizar: TcxLabel;
    cmbCampo: TcxComboBox;
    txtedtChave: TcxTextEdit;
    btnPesquisar: TcxDBBotaoPesquisar;
    gboxGeral: TcxGroupBox;
    lblIdProduto: TcxLabel;
    dblblIdProduto: TcxDBLabel;
    lblDescricao: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    lblDescricaoResumida: TcxLabel;
    dbtxtedtDescricaoResumida: TcxDBTextEdit;
    dsCategorias_LookUp: TDataSource;
    dsSubCategorias_LookUp: TDataSource;
    dsMarcas_LookUp: TDataSource;
    dsUnidadesMedida_LookUp: TDataSource;
    lblCodigoBarras: TcxLabel;
    dbtxtedtCodigoBarras: TcxDBTextEdit;
    lblUnidadeMedida: TcxLabel;
    dblkpcmbUnidadeMedida: TcxDBLookupComboBox;
    lblCategoria: TcxLabel;
    dblkpcmbCategoria: TcxDBLookupComboBox;
    lblSubCategoria: TcxLabel;
    dblkpcmbSubCategoria: TcxDBLookupComboBox;
    lblMarca: TcxLabel;
    dblkpcmbMarca: TcxDBLookupComboBox;
    lblPrecoCusto: TcxLabel;
    dbcurredtPrecoCusto: TcxDBCurrencyEdit;
    lblPrecoVenda: TcxLabel;
    dbcurredtPrecoVenda: TcxDBCurrencyEdit;
    pagProduto: TcxPageControl;
    tabFiscal: TcxTabSheet;
    gboxICMS: TcxGroupBox;
    lblSituacaoTributaria: TcxLabel;
    dbbtnedtSituacaoTributaria: TcxDBButtonEdit;
    lblAliquotaICMS: TcxLabel;
    dbcurredtAliquotaICMS: TcxDBCurrencyEdit;
    cxLabel1: TcxLabel;
    dbbtnedtCodigoNCM: TcxDBButtonEdit;
    lblCodigoCEST: TcxLabel;
    dbbtnedtCodigoCEST: TcxDBButtonEdit;
    tabGaleria: TcxTabSheet;
    frmFoto: TFrameFoto;
    tabPropriedades: TcxTabSheet;
    gboxPropriedades: TcxGroupBox;
    dbmmoPropriedades: TcxDBMemo;
    tabInformacoesGerais: TcxTabSheet;
    dbradgrpPesavel: TcxDBRadioGroup;
    dbradgrpInativo: TcxDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbbtnedtCodigoNCMPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbbtnedtCodigoCESTPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbbtnedtSituacaoTributariaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    fController: IProdutoController;
    procedure Initialize;
    procedure SetController(const Value: IProdutoController);
  public
    { Public declarations }
    property Controller: IProdutoController read fController write SetController;
  end;

var
  frmProdutos: TfrmProdutos;

implementation

uses
   StrUtils,
   VCL.Funcoes, UProdutoModel,
   UDataModuleLeiaute,
   UDataModuleProduto,
   UDialogoNCM, UDialogoCST, UDialogoCEST;

{$R *.dfm}

{ TfrmProdutos }

procedure TfrmProdutos.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagProdutos.ActivePage := tabDetalhes;
end;

procedure TfrmProdutos.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Deseja descartar as modificações no produto?') then
      begin
         Controller.Cancelar;
         pagProdutos.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmProdutos.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma exclusão do produto?') then
      Controller.Deletar;
end;

procedure TfrmProdutos.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Deseja gravar as modificações no produto?') then
      begin
         Controller.Gravar;
         pagProdutos.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmProdutos.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagProdutos.ActivePage := tabDetalhes;
end;

procedure TfrmProdutos.btnPesquisarClick(Sender: TObject);
var
   ACampo,
   AChave: String;
   ACriterio: Integer;
begin
  inherited;
   if Trim(txtedtChave.Text) <> '' then
      With TcxDBBotao(Sender).DataSource Do
         begin
            ACampo := IfThen(cmbCampo.ItemIndex = 0, 'codigo_barras', 'descricao');
            AChave := Trim(txtedtChave.Text);
            ACriterio := 0;
            If Not Controller.Busca(ACampo, AChave, ACriterio) Then
               Informacao('Nenhum registro foi encontrado!');
         end;
end;

procedure TfrmProdutos.dbbtnedtCodigoCESTPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   ACodigoCEST: String;
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         if Trim(TcxDBButtonEdit(Sender).DataBinding.DataSource.DataSet.FieldByName('codigo_ncm').AsString) = '' then
            begin
               Informacao('É necessário informar o código NCM do produto!');
               TcxDBButtonEdit(Sender).DataBinding.DataSource.DataSet.FieldByName('codigo_ncm').FocusControl;
               Exit;
            end;
         dlgCEST := TdlgCEST.Create(Self);
         Try
            if dlgCEST.BuscaCEST(TcxDBButtonEdit(Sender).DataBinding.DataSource.DataSet.FieldByName('codigo_ncm').AsString,
                                 ACodigoCEST) then
               begin
                  TcxDBButtonEdit(Sender).EditValue := ACodigoCEST;
                  TcxDBButtonEdit(Sender).PostEditValue;
               end;
         Finally
            dlgCEST.Free;
         End;
      end;
end;

procedure TfrmProdutos.dbbtnedtCodigoNCMPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   ACodigoNCM: String;
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         dlgNCM := TdlgNCM.Create(Self);
         Try
            if dlgNCM.BuscaNCM(VarToStr(TcxDBButtonEdit(Sender).DataBinding.Field.Value),
                               ACodigoNCM) then
               begin
                  TcxDBButtonEdit(Sender).EditValue := ACodigoNCM;
                  TcxDBButtonEdit(Sender).PostEditValue;
               end;
         Finally
            dlgNCM.Free;
         End;
      end;
end;

procedure TfrmProdutos.dbbtnedtSituacaoTributariaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   ACodigoCST: String;
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         dlgCST := TdlgCST.Create(Self);
         Try
            if dlgCST.BuscaCSTICMS(VarToStr(TcxDBButtonEdit(Sender).DataBinding.Field.Value)) then
               begin
                  TcxDBButtonEdit(Sender).EditValue := dlgCST.GetCodigo;
                  TcxDBButtonEdit(Sender).PostEditValue;
               end;
         Finally
            dlgCST.Free;
         End;
      end
end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   dsCategorias_LookUp.DataSet.Close;
   dsMarcas_LookUp.DataSet.Close;
   dsUnidadesMedida_LookUp.DataSet.Close;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  inherited;
   pagProdutos.HideTabs := True;
   pagProdutos.ActivePage := tabVisualiza;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
   dsCategorias_LookUp.DataSet.Open;
   dsMarcas_LookUp.DataSet.Open;
   dsUnidadesMedida_LookUp.DataSet.Open;
end;

procedure TfrmProdutos.Initialize;
var
   AModel: TProdutoModel;
begin
   Controller := TProdutoController.Create;
   AModel := TProdutoModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmProdutos.SetController(const Value: IProdutoController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
