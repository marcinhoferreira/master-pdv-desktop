unit MasterPDV.View.CancelamentoItemVendido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, Data.DB, MemDS, DBAccess, Uni, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxDBBotoes, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations;

type
  TdlgCancelamentoItemVendido = class(TfrmPadrao)
    gboxLocalizar: TcxGroupBox;
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    dsVendas_Produtos: TDataSource;
    qryVendas_Produtos: TUniQuery;
    qryVendas_Produtosid_venda: TLargeintField;
    qryVendas_Produtositem: TWordField;
    qryVendas_Produtosid_produto: TLargeintField;
    qryVendas_Produtoscodigo_barras: TStringField;
    qryVendas_Produtosdescricao: TStringField;
    qryVendas_Produtosid_unidade: TWordField;
    qryVendas_Produtossigla_unidade: TStringField;
    qryVendas_Produtosquantidade: TFloatField;
    qryVendas_Produtospeso_bruto: TFloatField;
    qryVendas_Produtospreco_unitario: TFloatField;
    qryVendas_Produtospreco_venda: TFloatField;
    qryVendas_Produtospercentual_acrescimo: TFloatField;
    qryVendas_Produtosvalor_acrescimo: TFloatField;
    qryVendas_Produtospercentual_desconto: TFloatField;
    qryVendas_Produtosvalor_desconto: TFloatField;
    grdVendas_Produtos: TcxGrid;
    dbtvwVendasProdutos: TcxGridDBTableView;
    grdVendas_ProdutosLevel1: TcxGridLevel;
    dbtvwVendasProdutosid_venda: TcxGridDBColumn;
    dbtvwVendasProdutositem: TcxGridDBColumn;
    dbtvwVendasProdutosid_produto: TcxGridDBColumn;
    dbtvwVendasProdutoscodigo_barras: TcxGridDBColumn;
    dbtvwVendasProdutosdescricao: TcxGridDBColumn;
    dbtvwVendasProdutosid_unidade: TcxGridDBColumn;
    dbtvwVendasProdutossigla_unidade: TcxGridDBColumn;
    dbtvwVendasProdutosquantidade: TcxGridDBColumn;
    dbtvwVendasProdutospeso_bruto: TcxGridDBColumn;
    dbtvwVendasProdutospreco_unitario: TcxGridDBColumn;
    dbtvwVendasProdutospreco_venda: TcxGridDBColumn;
    dbtvwVendasProdutospercentual_acrescimo: TcxGridDBColumn;
    dbtvwVendasProdutosvalor_acrescimo: TcxGridDBColumn;
    dbtvwVendasProdutospercentual_desconto: TcxGridDBColumn;
    dbtvwVendasProdutosvalor_desconto: TcxGridDBColumn;
    qryVendas_Produtospreco_total: TFloatField;
    btnCancelar: TcxDBBotao;
    btnDesistir: TcxButton;
    lblLocalizar: TcxLabel;
    txtedtLocalizar: TcxTextEdit;
    procedure qryVendas_ProdutosCalcFields(DataSet: TDataSet);
    procedure txtedtLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbtvwVendasProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function Executa(AID_Venda: Integer): Boolean;
  end;

var
  dlgCancelamentoItemVendido: TdlgCancelamentoItemVendido;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV, UDataModuleConexao;

{$R *.dfm}

{ TdlgCancelamentoItemVendido }

procedure TdlgCancelamentoItemVendido.dbtvwVendasProdutosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
      ModalResult := mrOk;
end;

function TdlgCancelamentoItemVendido.Executa(AID_Venda: Integer): Boolean;
begin
   qryVendas_Produtos.Close;
   qryVendas_Produtos.ParamByName('id_venda').Value := AID_Venda;
   qryVendas_Produtos.Open;
   qryVendas_Produtos.Last;
   Result := Not qryVendas_Produtos.IsEmpty;
   if Result then
      Result := ShowModal = mrOk;
end;

procedure TdlgCancelamentoItemVendido.qryVendas_ProdutosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('preco_total').AsFloat := (DataSet.FieldByName('preco_unitario').AsFloat * DataSet.FieldByName('quantidade').AsFloat) + DataSet.FieldByName('valor_acrescimo').AsFloat - DataSet.FieldByName('valor_desconto').AsFloat;
end;

procedure TdlgCancelamentoItemVendido.txtedtLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
   ACodigoBarras: String;
begin
  inherited;
   if Key = VK_RETURN then
      if Trim(TcxTextEdit(Sender).Text) <> '' then
         begin
            ACodigoBarras := StrZero(Trim(TcxTextEdit(Sender).Text), 13);
            If Not dsVendas_Produtos.DataSet.Locate('codigo_barras', ACodigoBarras, []) Then
               Informacao('Item nao registrado.')
            Else
               FocusControl(grdVendas_Produtos);
         end
      Else
         FocusControl(grdVendas_Produtos);
end;

end.
