unit MasterPDV.View.VendaTroca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit, AdvSmoothPanel, Data.DB,
  MemDS, DBAccess, Uni, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDBBotoes;

type
  TdlgVendaTroca = class(TfrmPadrao)
    panDocumento: TAdvSmoothPanel;
    curredtDocumento: TcxCurrencyEdit;
    panProduto: TAdvSmoothPanel;
    curredtCodigo: TcxCurrencyEdit;
    panVendas_Produtos: TAdvSmoothPanel;
    qryVendas: TUniQuery;
    qryVendas_Produtos: TUniQuery;
    dsVendas: TDataSource;
    dsVendas_Produtoss: TDataSource;
    qryVendasid_venda: TLargeintField;
    qryVendasid_estabelecimento: TLargeintField;
    qryVendasid_local: TWordField;
    qryVendasdescricao_local: TStringField;
    qryVendasdata_movimento: TDateTimeField;
    qryVendasid_caixa: TWordField;
    qryVendasid_operador: TLargeintField;
    qryVendasdocumento: TLargeintField;
    qryVendasid_condicao: TWordField;
    qryVendasparcelas: TSmallintField;
    qryVendastipo_prazo: TStringField;
    qryVendasid_representante: TLargeintField;
    qryVendasid_parceiro: TLargeintField;
    qryVendasvalor_bruto: TFloatField;
    qryVendasvalor_acrescimo: TFloatField;
    qryVendasvalor_desconto: TFloatField;
    qryVendasvalor_troca: TFloatField;
    qryVendasvalor_liquido: TFloatField;
    qryVendasvalor_entrada: TFloatField;
    qryVendasvalor_recebido: TFloatField;
    qryVendasvalor_troco: TFloatField;
    qryVendas_Produtosid_venda: TLargeintField;
    qryVendas_Produtositem: TWordField;
    qryVendas_Produtosid_produto: TLargeintField;
    qryVendas_Produtoscodigo_barras: TStringField;
    qryVendas_Produtosdescricao: TStringField;
    qryVendas_Produtosdescricao_marca: TStringField;
    qryVendas_Produtosreferencia: TStringField;
    qryVendas_Produtosid_unidade: TWordField;
    qryVendas_Produtossigla_unidade: TStringField;
    qryVendas_Produtosquantidade: TFloatField;
    qryVendas_Produtospeso_bruto: TFloatField;
    qryVendas_Produtospreco_unitario: TFloatField;
    qryVendas_Produtospreco_venda: TFloatField;
    qryVendas_Produtospreco_unitario_liquido: TFloatField;
    qryVendas_Produtospercentual_desconto: TFloatField;
    qryVendas_Produtosvalor_desconto: TFloatField;
    qryVendas_Produtospreco_total_bruto: TFloatField;
    qryVendas_Produtospreco_total: TFloatField;
    qryVendas_Produtospreco_total_liquido: TFloatField;
    dbtabvwVendas_Produtos: TcxGridDBTableView;
    grdVendas_ProdutosLevel1: TcxGridLevel;
    grdVendas_Produtos: TcxGrid;
    qryVendas_Produtosselecionado: TStringField;
    dbtabvwVendas_Produtosselecionado: TcxGridDBColumn;
    dbtabvwVendas_Produtosid_venda: TcxGridDBColumn;
    dbtabvwVendas_Produtositem: TcxGridDBColumn;
    dbtabvwVendas_Produtosid_produto: TcxGridDBColumn;
    dbtabvwVendas_Produtoscodigo_barras: TcxGridDBColumn;
    dbtabvwVendas_Produtosdescricao: TcxGridDBColumn;
    dbtabvwVendas_Produtosdescricao_marca: TcxGridDBColumn;
    dbtabvwVendas_Produtosreferencia: TcxGridDBColumn;
    dbtabvwVendas_Produtosid_unidade: TcxGridDBColumn;
    dbtabvwVendas_Produtossigla_unidade: TcxGridDBColumn;
    dbtabvwVendas_Produtosquantidade: TcxGridDBColumn;
    dbtabvwVendas_Produtospeso_bruto: TcxGridDBColumn;
    dbtabvwVendas_Produtospreco_unitario: TcxGridDBColumn;
    dbtabvwVendas_Produtospreco_venda: TcxGridDBColumn;
    dbtabvwVendas_Produtospreco_unitario_liquido: TcxGridDBColumn;
    dbtabvwVendas_Produtospercentual_desconto: TcxGridDBColumn;
    dbtabvwVendas_Produtosvalor_desconto: TcxGridDBColumn;
    dbtabvwVendas_Produtospreco_total_bruto: TcxGridDBColumn;
    dbtabvwVendas_Produtospreco_total: TcxGridDBColumn;
    dbtabvwVendas_Produtospreco_total_liquido: TcxGridDBColumn;
    btnCancelar: TcxButton;
    btnConfirmar: TcxDBBotao;
    qryVendas_Produtosquantidade_devolvida: TFloatField;
    dbtabvwVendas_Produtosquantidade_devolvida: TcxGridDBColumn;
    procedure dsVendasStateChange(Sender: TObject);
    procedure dsVendas_ProdutossStateChange(Sender: TObject);
    procedure curredtDocumentoEnter(Sender: TObject);
    procedure curredtDocumentoExit(Sender: TObject);
    procedure curredtDocumentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryVendasAfterOpen(DataSet: TDataSet);
    procedure qryVendasBeforeClose(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure qryVendas_ProdutosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVendaTroca: TdlgVendaTroca;

implementation

uses
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV, UDataModuleConexao, LealSoftwares.Lib.Funcoes,
  MasterPDV.View.Venda;

{$R *.dfm}

procedure TdlgVendaTroca.btnConfirmarClick(Sender: TObject);
begin
  inherited;
   with TcxDBBotao(Sender).DataSource do
      begin
         if State in dsEditModes then
            DataSet.Post;

         if not DataSet.Locate('selecionado', 'S', []) then
            begin
               Informacao('Selecione o(s) item(ns) para trocar!');
               Exit;
            end;

         if Confirmacao('Confirma troca?') then
            begin
               if frmVenda.dsVendas.DataSet.IsEmpty then
                  frmVenda.IniciaVenda;
               dmPDV.RegistraTrocaProdutos(DataSet);
               ModalResult := mrOk;
            end;
      end;
end;

procedure TdlgVendaTroca.curredtDocumentoEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
end;

procedure TdlgVendaTroca.curredtDocumentoExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TdlgVendaTroca.curredtDocumentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
      begin
         TcxCurrencyEdit(Sender).PostEditValue;
         if TcxCurrencyEdit(Sender).EditValue <> Null then
            begin
               with dsVendas do
                  begin
                     if DataSet.Active then
                        DataSet.Close;
                     TUniQuery(DataSet).ParamByName('documento').Value := TcxCurrencyEdit(Sender).EditValue;
                     DataSet.Open;
                     if DataSet.IsEmpty then
                        Informacao('Documento não localizado ou fora do prazo para troca!')
                     else
                        begin
                           curredtCodigo.SetFocus;
                        end;
                  end;
            end;
      end;
end;

procedure TdlgVendaTroca.dsVendasStateChange(Sender: TObject);
begin
  inherited;
   with TDataSource(Sender) do
      begin
         panProduto.Visible := not DataSet.IsEmpty;
      end;
end;

procedure TdlgVendaTroca.dsVendas_ProdutossStateChange(Sender: TObject);
begin
  inherited;
   with TDataSource(Sender) do
      begin
         panVendas_Produtos.Visible := not DataSet.IsEmpty;
      end;
end;

procedure TdlgVendaTroca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   with dsVendas do
      begin
         if DataSet.Active then
            DataSet.Close;
         TUniQuery(DataSet).ParamByName('documento').Clear;
      end;
end;

procedure TdlgVendaTroca.FormShow(Sender: TObject);
begin
  inherited;
   curredtDocumento.EditValue := Null;
   curredtDocumento.PostEditValue;

   curredtCodigo.EditValue := Null;
   curredtCodigo.PostEditValue;

   with dsVendas do
      begin
         if DataSet.Active then
            DataSet.Close;

         TUniQuery(DataSet).ParamByName('documento').Clear;
         DataSet.Open;
      end;
end;

procedure TdlgVendaTroca.qryVendasAfterOpen(DataSet: TDataSet);
begin
  inherited;
   qryVendas_Produtos.Open;
end;

procedure TdlgVendaTroca.qryVendasBeforeClose(DataSet: TDataSet);
begin
  inherited;
   qryVendas_Produtos.Close;
end;

procedure TdlgVendaTroca.qryVendas_ProdutosBeforePost(DataSet: TDataSet);
begin
  inherited;
   if DataSet.FieldByName('quantidade_devolvida').AsFloat = 0 then
      raise Exception.Create('Informe a quantidade para trocar!');

   if DataSet.FieldByName('quantidade_devolvida').AsFloat > DataSet.FieldByName('quantidade').AsFloat then
      raise Exception.Create('Quantidade para trocar não pode ser superior à quantidade vendida!');
end;

end.
