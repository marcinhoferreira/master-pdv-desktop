unit MasterPDV.View.PreVenda;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   UFormularioPrivilegios, Uni, Vcl.DBCtrls, Data.DB,
   cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxButtons, cxGroupBox, cxLabel, cxCurrencyEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, ACBrBase, ACBrDFeReport,
  ACBrDFeDANFeReport, ACBrNFeDANFEClass, ACBrNFeDANFEFR, MemDS,
  DBAccess, Vcl.Grids, Vcl.DBGrids, dxSkinTheBezier, dxStatusBar, Vcl.StdCtrls,
  dxSkinOffice2019Colorful, JvExDBGrids, JvDBGrid, JvDBUltimGrid, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
   TfrmPreVenda = class(TfrmPrivilegios)
    gboxLocalizar: TcxGroupBox;
    gboxAreadeTrabalho: TcxGroupBox;
    dsPreVendas: TDataSource;
    gboxTotais: TcxGroupBox;
    gboxPreVendas_Produtos: TcxGroupBox;
      grdPreVendas_Produtos: TJvDBUltimGrid;
    dsPreVendas_Produtos: TDataSource;
    dsTerminais_Modalidades: TDataSource;
    dsPreVendas_Parcelas: TDataSource;
    dsPreVendas_Recebimentos: TDataSource;
    dsPreVendas_Brindes: TDataSource;
    dsPreVendas_Trocas: TDataSource;
    dsVendas: TDataSource;
    dsVendas_Parcelas: TDataSource;
    dsVendas_Produtos: TDataSource;
    dsVendas_Brindes: TDataSource;
    dsVendas_Trocas: TDataSource;
    dsVendas_Recebimentos: TDataSource;
      qryNFe: TUniQuery;
    dsNFe: TDataSource;
    dsNFe_Produtos: TDataSource;
      qryNFe_Produtos: TUniQuery;
      qryNFe_Parcelas: TUniQuery;
      qryNFe_Recebimentos: TUniQuery;
    dsPreVendas_Produtos_Saidas: TDataSource;
    dsTransferencias: TDataSource;
    dsTransferencias_Produtos: TDataSource;
    dsAutenticacoes: TDataSource;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    dsMovimentos: TDataSource;
    dsEstabelecimentos: TDataSource;
    dsOperadores: TDataSource;
    dsTerminais: TDataSource;
    dsFormas_Recebimentos: TDataSource;
    lblPreVenda: TcxLabel;
    lblCliente: TcxLabel;
    lblCondicaoPagamento: TcxLabel;
    lblDocumento: TcxLabel;
    lblValorBruto: TcxLabel;
    lblValorAcrescimo: TcxLabel;
    lblValorDesconto: TcxLabel;
    lblValorTroca: TcxLabel;
    lblValorLiquido: TcxLabel;
    JvLabel1: TcxLabel;
    lblValorReceberTroco: TcxLabel;
    dbeCondicaoPagamento: TcxDBTextEdit;
    dbeCliente: TcxDBTextEdit;
    dbeDocumento: TcxDBCurrencyEdit;
    dbeValorBruto: TcxDBCurrencyEdit;
    dbeValorAcrescimo: TcxDBCurrencyEdit;
    dbeValorDesconto: TcxDBCurrencyEdit;
    dbeValorTroca: TcxDBCurrencyEdit;
    dbeValorLiquido: TcxDBCurrencyEdit;
    dbeValorRecebido: TcxDBCurrencyEdit;
    dbeValorReceberTroco: TcxDBCurrencyEdit;
    btnedtNumero: TcxButtonEdit;
    gboxFerramentas: TcxGroupBox;
    btnTipoRecebimento01: TcxButton;
    btnTipoRecebimento06: TcxButton;
    btnTipoRecebimento07: TcxButton;
    btnTipoRecebimento09: TcxButton;
    btnTipoRecebimento08: TcxButton;
    btnTipoRecebimento10: TcxButton;
    btnTipoRecebimento02: TcxButton;
    btnTipoRecebimento04: TcxButton;
    btnTipoRecebimento03: TcxButton;
    btnTipoRecebimento05: TcxButton;
    barStatus: TdxStatusBar;
      procedure FormShow(Sender: TObject);
      procedure btnedtNumeroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure dsPreVendasStateChange(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure qryNFeAfterOpen(DataSet: TDataSet);
      procedure qryNFeBeforeClose(DataSet: TDataSet);
      procedure btnTipoRecebimento01Click(Sender: TObject);
    procedure veNumeroPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnedtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
   private
      { Private declarations }
      procedure UpdateStatusBar;
      procedure CarregaTiposDeRecebimento;
      procedure SelecionaFormaDeRecebimento(AId_Terminal: Integer; AId_Botao: SmallInt);
      procedure ExecutaRecebimento(AID_Forma_Recebimento: Integer; AValorPadrao: Double = 0; AValorMaximo: Double = 0);
      procedure ConfiguraComponentesACBr;
   public
      { Public declarations }
      function GeraDocumentoFiscal: Boolean;
      function EmiteDocumentoFiscal(AId_Venda: Integer; AId_Modelo: String): Boolean;
      procedure ExecutaFechamentoPreVenda;
   end;

var
   frmPreVenda: TfrmPreVenda;

implementation

uses
   Math, StrUtils, DateUtils, MaskUtils, pcnConversao, pcnConversaoNFe,
   VCL.Funcoes,
   UDataModuleConexao,
   UDataModuleFiscal,
   UDataModuleComponentesACBr,
   UMasterPDVDataModulePDV, UMasterPDVDataModuleDocumentosFiscais,
   UMasterPDVDataModuleRelatorio,
   MasterPDV.View.ListaPreVendasPendentes,
   MasterPDV.View.FormasRecebimentos, MasterPDV.View.RecebimentoValor,
   MasterPDV.View.Obrigado, MasterPDV.View.IdentificacaoTipoDocumentoFiscal,
   MasterPDV.View.IdentificacaoDocumentoRFB,
   MasterPDV.View.IdentificacaoCliente, MasterPDV.View.Imprimir,
   UDataModuleSessao;

{$R *.dfm}

procedure TfrmPreVenda.qryNFeAfterOpen(DataSet: TDataSet);
begin
   inherited;
   qryNFe_Produtos.Open;
   qryNFe_Parcelas.Open;
   qryNFe_Recebimentos.Open;
end;

procedure TfrmPreVenda.qryNFeBeforeClose(DataSet: TDataSet);
begin
   inherited;
   qryNFe_Produtos.Close;
   qryNFe_Parcelas.Close;
   qryNFe_Recebimentos.Close;
end;

function TfrmPreVenda.EmiteDocumentoFiscal(AId_Venda: Integer;
   AId_Modelo: String): Boolean;
var
   AID_Documento_Fiscal: Integer;
begin
   dmDocumentosFiscais.qryDocumentos_Fiscais.Close;
   dmDocumentosFiscais.qryDocumentos_Fiscais.ParamByName('id_documento_fiscal').Value := dmDocumentosFiscais.GeraDocumentoFiscalVenda(AId_Venda, AId_Modelo);
   dmDocumentosFiscais.qryDocumentos_Fiscais.Open;
   Result := Not dmDocumentosFiscais.qryDocumentos_Fiscais.IsEmpty;
   if Result then
      begin
         frmObrigado.SetMensagem('Emitindo documento fiscal...');
         frmObrigado.Update;
         frmObrigado.Refresh;
         Result := GeraDocumentoFiscal;
      end;
end;

procedure TfrmPreVenda.ExecutaFechamentoPreVenda;
var
   AId_Modelo: String;
   ANumeroLote: Integer;
   AFileName: TFileName;
   AOperacaoRealizada,
   ATentaNovamente: Boolean;
   AId_Venda: Integer;
begin
   inherited;
   with dsVendas do
      begin
         DataSet.Close;
         TUniQuery(DataSet).ParamByName('id_terminal').Value := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
         TUniQuery(DataSet).ParamByName('data_movimento').Value := dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime;
         TUniQuery(DataSet).ParamByName('id_operador').Value := dsOperadores.DataSet.FieldByName('id_operador').AsInteger;
         TUniQuery(DataSet).MacroByName('condicao').Value := Format(' AND documento = %d', [dsPreVendas.DataSet.FieldByName('documento').AsInteger]);
         DataSet.Open;
         if DataSet.IsEmpty Or
            not DataSet.Locate('documento', dsPreVendas.DataSet.FieldByName('documento').AsInteger, []) then
            begin
               DataSet.Append;
               DataSet.FieldByName('id_estabelecimento').AsInteger := dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger;
               DataSet.FieldByName('id_local').AsInteger := dsTerminais.DataSet.FieldByName('id_local').AsInteger;
               DataSet.FieldByName('data_movimento').AsDateTime := dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime;
               DataSet.FieldByName('id_caixa').AsInteger := dsTerminais.DataSet.FieldByName('id_terminal').AsInteger;
               DataSet.FieldByName('id_operador').AsInteger := dsOperadores.DataSet.FieldByName('id_operador').AsInteger;
               DataSet.FieldByName('documento').AsInteger := dsPreVendas.DataSet.FieldByName('documento').AsInteger;
               DataSet.FieldByName('id_condicao').AsInteger := dsPreVendas.DataSet.FieldByName('id_condicao').AsInteger;
               DataSet.FieldByName('parcelas').AsInteger := dsPreVendas.DataSet.FieldByName('parcelas').AsInteger;
               DataSet.FieldByName('valor_entrada').AsFloat := dsPreVendas.DataSet.FieldByName('valor_entrada').AsFloat;
               DataSet.FieldByName('id_representante').AsInteger := dsPreVendas.DataSet.FieldByName('id_representante').AsInteger;
               DataSet.FieldByName('id_parceiro').AsInteger := dsPreVendas.DataSet.FieldByName('id_cliente').AsInteger;
               DataSet.FieldByName('logradouro_entrega').AsString := dsPreVendas.DataSet.FieldByName('logradouro_entrega').AsString;
               DataSet.FieldByName('numero_entrega').AsString := dsPreVendas.DataSet.FieldByName('numero_entrega').AsString;
               DataSet.FieldByName('complemento_entrega').AsString := dsPreVendas.DataSet.FieldByName('complemento_entrega').AsString;
               DataSet.FieldByName('referencia_entrega').AsString := dsPreVendas.DataSet.FieldByName('referencia_entrega').AsString;
               DataSet.FieldByName('bairro_entrega').AsString := dsPreVendas.DataSet.FieldByName('bairro_entrega').AsString;
               DataSet.FieldByName('id_pais_entrega').AsString := dsPreVendas.DataSet.FieldByName('id_pais_entrega').AsString;
               DataSet.FieldByName('id_estado_entrega').AsString := dsPreVendas.DataSet.FieldByName('id_estado_entrega').AsString;
               DataSet.FieldByName('id_cidade_entrega').AsString := dsPreVendas.DataSet.FieldByName('id_cidade_entrega').AsString;
               DataSet.FieldByName('cep_entrega').AsString := dsPreVendas.DataSet.FieldByName('cep_entrega').AsString;
               DataSet.FieldByName('telefone_entrega').AsString := dsPreVendas.DataSet.FieldByName('telefone_entrega').AsString;
               DataSet.FieldByName('contato_entrega').AsString := dsPreVendas.DataSet.FieldByName('contato_entrega').AsString;
               DataSet.FieldByName('data_entrega').AsDateTime := dsPreVendas.DataSet.FieldByName('data_entrega').AsDateTime;
               DataSet.FieldByName('id_preco').AsInteger := dsPreVendas.DataSet.FieldByName('id_preco').AsInteger;
               DataSet.FieldByName('valor_bruto').AsFloat := 0;
               DataSet.FieldByName('valor_acrescimo').AsFloat := 0;
               DataSet.FieldByName('valor_desconto').AsFloat := 0;
               DataSet.FieldByName('valor_troca').AsFloat := 0;
               DataSet.FieldByName('valor_recebido').AsFloat := 0;
               DataSet.FieldByName('valor_troco').AsFloat := 0;
               DataSet.FieldByName('percentual_comissao').AsFloat := dsPreVendas.DataSet.FieldByName('percent_comissao').AsFloat;
               TMemoField(DataSet.FieldByName('observacao')).Assign(dsPreVendas.DataSet.FieldByName('observacao'));
               // 0-Venda em antamento / 1-Aguardando Aprovação / 3-Aguardando Pagamento / 5-Finalizada / 8-Desistência / 9-Cancelada
               DataSet.FieldByName('status').AsInteger := 5;
               DataSet.Post;
            end;
      end;
   // Itens
   with dsPreVendas_Produtos do
      begin
         if not DataSet.IsEmpty then
            begin
               DataSet.First;
               while not DataSet.Eof do
                  begin
                     if not dsVendas_Produtos.DataSet.Locate('item', DataSet.FieldByName('item').AsInteger, []) then
                        begin
                           dsVendas_Produtos.DataSet.Append;
                           dsVendas_Produtos.DataSet.FieldByName('id_venda').AsInteger := dsVendas.DataSet.FieldByName('id_venda').AsInteger;
                           dsVendas_Produtos.DataSet.FieldByName('item').AsInteger := DataSet.FieldByName('item').AsInteger;
                           dsVendas_Produtos.DataSet.FieldByName('id_produto').AsInteger := DataSet.FieldByName('id_produto').AsInteger;
                           dsVendas_Produtos.DataSet.FieldByName('codigo_barras').AsString := DataSet.FieldByName('codigo_barras').AsString;
                           dsVendas_Produtos.DataSet.FieldByName('descricao').Assign(DataSet.FieldByName('descricao'));
                           dsVendas_Produtos.DataSet.FieldByName('id_unidade').AsInteger := DataSet.FieldByName('id_unidade').AsInteger;
                           dsVendas_Produtos.DataSet.FieldByName('quantidade').AsFloat := DataSet.FieldByName('quantidade').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('peso_bruto').AsFloat := DataSet.FieldByName('peso_bruto').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('preco_unitario').AsFloat := DataSet.FieldByName('preco_unitario').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('preco_venda').AsFloat := DataSet.FieldByName('preco_venda').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('percentual_acrescimo').AsFloat := DataSet.FieldByName('percentual_acrescimo').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('valor_acrescimo').AsFloat := DataSet.FieldByName('valor_acrescimo').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('percentual_desconto').AsFloat := DataSet.FieldByName('percentual_desconto').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('valor_desconto').AsFloat := DataSet.FieldByName('valor_desconto').AsFloat;
                           dsVendas_Produtos.DataSet.FieldByName('preco_custo').AsFloat := DataSet.FieldByName('preco_custo').AsFloat;
                           dsVendas_Produtos.DataSet.Post;
                           // Saída do Produto
                           dsPreVendas_Produtos_Saidas.DataSet.First;
                           while not dsPreVendas_Produtos_Saidas.DataSet.Eof do
                              begin
                                 if (dsPreVendas_Produtos_Saidas.DataSet.FieldByName('id_local').AsInteger <> dsVendas.DataSet.FieldByName('id_local').AsInteger) and
                                    (dsPreVendas_Produtos_Saidas.DataSet.FieldByName('quantidade').AsFloat > 0) then
                                    begin
                                       dsTransferencias.DataSet.Close;
                                       TUniQuery(dsTransferencias.DataSet).ParamByName('id_estabelecimento_saida').Value := dsPreVendas_Produtos_Saidas.DataSet.FieldByName('id_estabelecimento').AsInteger;
                                       TUniQuery(dsTransferencias.DataSet).ParamByName('id_local_saida').Value := dsPreVendas_Produtos_Saidas.DataSet.FieldByName('id_local').AsInteger;
                                       TUniQuery(dsTransferencias.DataSet).ParamByName('data_movimento').Value := dsVendas.DataSet.FieldByName('data_movimento').AsDateTime;
                                       TUniQuery(dsTransferencias.DataSet).ParamByName('id_estabelecimento_entrada').Value := dsVendas.DataSet.FieldByName('id_estabelecimento').AsInteger;
                                       TUniQuery(dsTransferencias.DataSet).ParamByName('id_local_entrada').Value := dsVendas.DataSet.FieldByName('id_local').AsInteger;
                                       TUniQuery(dsTransferencias.DataSet).ParamByName('documento').Value := dsVendas.DataSet.FieldByName('documento').AsInteger;
                                       dsTransferencias.DataSet.Open;
                                       if dsTransferencias.DataSet.IsEmpty then
                                          begin
                                             dsTransferencias.DataSet.Append;
                                             dsTransferencias.DataSet.Post;
                                          end;
                                       if not dsTransferencias_Produtos.DataSet.Locate('item', dsPreVendas_Produtos_Saidas.DataSet.FieldByName('item').AsInteger, []) then
                                          begin
                                             dsTransferencias_Produtos.DataSet.Append;
                                             dsTransferencias_Produtos.DataSet.FieldByName('item').AsInteger := dsPreVendas_Produtos_Saidas.DataSet.FieldByName('item').AsInteger;
                                             dsTransferencias_Produtos.DataSet.FieldByName('id_produto').AsInteger := dsPreVendas_Produtos.DataSet.FieldByName('id_produto').AsInteger;
                                             dsTransferencias_Produtos.DataSet.FieldByName('id_unidade').AsInteger := dsPreVendas_Produtos.DataSet.FieldByName('id_unidade').AsInteger;
                                             dsTransferencias_Produtos.DataSet.FieldByName('quantidade').AsFloat := dsPreVendas_Produtos_Saidas.DataSet.FieldByName('quantidade').AsFloat;
                                             dsTransferencias_Produtos.DataSet.FieldByName('peso_bruto').AsFloat := 0;
                                             // dsPreVendas_Produtos_Saidas.DataSet.FieldByName('quantidade').AsFloat;
                                             dsTransferencias_Produtos.DataSet.FieldByName('preco_unitario').AsFloat := dsPreVendas_Produtos.DataSet.FieldByName('preco_unitario').AsFloat;
                                             dsTransferencias_Produtos.DataSet.Post;
                                          end;
                                       dsTransferencias.DataSet.Close;
                                    end;
                                 dsPreVendas_Produtos_Saidas.DataSet.Next;
                              end;
                        end;
                     DataSet.Next;
                  end;
            end;
      end;
   // Troca / Devolução
   with dsPreVendas_Trocas do
      begin
         if not DataSet.IsEmpty then
            begin
               DataSet.First;
               while not DataSet.Eof do
                  begin
                     if not dsVendas_Trocas.DataSet.Locate('item', DataSet.FieldByName('item').AsInteger, []) then
                        begin
                           dsVendas_Trocas.DataSet.Append;
                           dsVendas_Trocas.DataSet.FieldByName('id_venda').AsInteger := dsVendas.DataSet.FieldByName('id_venda').AsInteger;
                           dsVendas_Trocas.DataSet.FieldByName('item').AsInteger := DataSet.FieldByName('item').AsInteger;
                           dsVendas_Trocas.DataSet.FieldByName('id_produto').AsInteger := DataSet.FieldByName('id_produto').AsInteger;
                           dsVendas_Trocas.DataSet.FieldByName('id_unidade').AsInteger := DataSet.FieldByName('id_unidade').AsInteger;
                           dsVendas_Trocas.DataSet.FieldByName('quantidade').AsFloat := DataSet.FieldByName('quantidade').AsFloat;
                           dsVendas_Trocas.DataSet.FieldByName('peso_bruto').AsFloat := DataSet.FieldByName('peso_bruto').AsFloat;
                           dsVendas_Trocas.DataSet.FieldByName('preco_unitario').AsFloat := DataSet.FieldByName('preco_unitario').AsFloat;
                           dsVendas_Trocas.DataSet.FieldByName('valor_desconto').AsFloat := DataSet.FieldByName('valor_desconto').AsFloat;
                           dsVendas_Trocas.DataSet.Post;
                        end;
                     DataSet.Next;
                  end;
            end;
      end;
   // Brindes / Doações
   with dsPreVendas_Brindes do
      begin
         if not DataSet.IsEmpty then
            begin
               DataSet.First;
               while not DataSet.Eof do
                  begin
                     if not dsVendas_Brindes.DataSet.Locate('item', DataSet.FieldByName('item').AsInteger, []) then
                        begin
                           dsVendas_Brindes.DataSet.Append;
                           dsVendas_Brindes.DataSet.FieldByName('id_venda').AsInteger := dsVendas.DataSet.FieldByName('id_venda').AsInteger;
                           dsVendas_Brindes.DataSet.FieldByName('item').AsInteger := DataSet.FieldByName('item').AsInteger;
                           dsVendas_Brindes.DataSet.FieldByName('id_produto').AsInteger := DataSet.FieldByName('id_produto').AsInteger;
                           dsVendas_Brindes.DataSet.FieldByName('codigo_barras').AsString := DataSet.FieldByName('codigo_barras').AsString;
                           dsVendas_Brindes.DataSet.FieldByName('descricao').Assign(DataSet.FieldByName('descricao'));
                           dsVendas_Brindes.DataSet.FieldByName('quantidade').AsFloat := DataSet.FieldByName('quantidade').AsFloat;
                           dsVendas_Brindes.DataSet.FieldByName('peso_bruto').AsFloat := DataSet.FieldByName('peso_bruto').AsFloat;
                           dsVendas_Brindes.DataSet.FieldByName('id_unidade').AsInteger := DataSet.FieldByName('id_unidade').AsInteger;
                           dsVendas_Brindes.DataSet.FieldByName('preco_custo').AsFloat := DataSet.FieldByName('preco_custo').AsFloat;
                           dsVendas_Brindes.DataSet.Post;
                        end;
                     DataSet.Next;
                  end;
            end;
      end;
   // Parcelas
   with dsPreVendas_Parcelas do
      begin
         if not DataSet.IsEmpty then
            begin
               DataSet.First;
               while not DataSet.Eof do
                  begin
                     if not dsVendas_Parcelas.DataSet.Locate('parcela', DataSet.FieldByName('parcela').AsInteger, []) then
                        begin
                           dsVendas_Parcelas.DataSet.Append;
                           dsVendas_Parcelas.DataSet.FieldByName('id_venda').AsInteger := dsVendas.DataSet.FieldByName('id_venda').AsInteger;
                           dsVendas_Parcelas.DataSet.FieldByName('parcela').AsInteger := DataSet.FieldByName('parcela').AsInteger;
                           dsVendas_Parcelas.DataSet.FieldByName('prazo').AsInteger := DataSet.FieldByName('prazo').AsInteger;
                           dsVendas_Parcelas.DataSet.FieldByName('data_vencimento').AsDateTime := DataSet.FieldByName('data_vencimento').AsDateTime;
                           dsVendas_Parcelas.DataSet.FieldByName('valor_parcela').AsFloat := DataSet.FieldByName('valor_parcela').AsFloat;
                           dsVendas_Parcelas.DataSet.Post;
                        end;
                     DataSet.Next;
                  end;
            end;
      end;
   // Recebimentos
   with dsPreVendas_Recebimentos do
      begin
         if not DataSet.IsEmpty then
            begin
               DataSet.First;
               while not DataSet.Eof do
                  begin
                     if not dsVendas_Recebimentos.DataSet.Locate('item', DataSet.FieldByName('item').AsInteger, []) then
                        begin
                           dsVendas_Recebimentos.DataSet.Append;
                           dsVendas_Recebimentos.DataSet.FieldByName('id_venda').AsInteger := dsVendas.DataSet.FieldByName('id_venda').AsInteger;
                           dsVendas_Recebimentos.DataSet.FieldByName('item').AsInteger := DataSet.FieldByName('item').AsInteger;
                           dsVendas_Recebimentos.DataSet.FieldByName('id_transacao').AsInteger := DataSet.FieldByName('id_transacao').AsInteger;
                           dsVendas_Recebimentos.DataSet.FieldByName('valor_recebido').AsFloat := DataSet.FieldByName('valor_recebido').AsFloat;
                           dsVendas_Recebimentos.DataSet.FieldByName('valor_troco').AsFloat := DataSet.FieldByName('valor_troco').AsFloat;
                           dsVendas_Recebimentos.DataSet.Post;
                        end;
                     DataSet.Next;
                  end;
            end;
      end;
   if dmPDV.GeraDuplicatasVenda(dsVendas.DataSet.FieldByName('id_venda').AsInteger) then
      dmPDV.BaixaDuplicatasVenda(dsVendas.DataSet.FieldByName('id_venda').AsInteger);

   if (dsTerminais.DataSet.FieldByName('autenticar_documento').AsString = 'N') And
      Confirmacao('Deseja imprimir o comprovante da venda?', mbYes) then
      begin
         dmRelatorio.ImprimirDAV(dsVendas.DataSet.FieldByName('id_venda').AsInteger,
                                   dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                   False);
      end;

   // Envia comprovante ordem de produçao para a cozinha
   if Trim(dsTerminais.DataSet.FieldByName('emissor_cupom_producao').AsString) <> '' then
      dmRelatorio.ImprimirComprovanteOrdemProducao(dsVendas.DataSet.FieldByName('id_venda').AsInteger,
                                                   dsTerminais.DataSet.FieldByName('emissor_cupom_producao').AsString,
                                                   False);

   dsVendas.DataSet.Edit;
   if dmPDV.IsTerminalFiscal And
      Confirmacao('Deseja emitir o documento fiscal da venda?') then
      begin
         if dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').IsNull then
            begin
               If dlgIdentificacaoTipoDocumentoFiscal.Executa then
                  dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := dlgIdentificacaoTipoDocumentoFiscal.GetTipoDocumentoFiscal
               else
                  dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := '0';
            end
         else
            dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := dsTerminais.DataSet.FieldByName('tipo_documento_fiscal').AsString;
      end
   else
      dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString := '0';
   dsVendas.DataSet.Post;

   if dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString <> '0' then
      begin
         // 0-Nenhum / 1-NF-e / 2-NFC-e
         if dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString = '1' then
            begin
               AId_Modelo := '55';
               if dlgIdentificacaoCliente.Executa then
                  begin
                     dsVendas.DataSet.Edit;
                     dsVendas.DataSet.FieldByName('id_parceiro').AsInteger := dlgIdentificacaoCliente.GetId;
                     dsVendas.DataSet.Post;
                  end;
            end
         // 2-NFC-e
         else If dsVendas.DataSet.FieldByName('tipo_documento_fiscal').AsString = '2' then
                 begin
                    AId_Modelo := '65';
                    If dlgIdentificacaoDocumentoRFB.ShowModal = mrOk Then
                       begin
                          dsVendas.DataSet.Edit;
                          dsVendas.DataSet.FieldByName('documento_rfb_numero').AsString := dlgIdentificacaoDocumentoRFB.mskedtNumeroDocumentoRFB.Text;
                          dsVendas.DataSet.Post;
                       end;
                 end;
         AOperacaoRealizada := False;
         ATentaNovamente := True;
         repeat
            AOperacaoRealizada := EmiteDocumentoFiscal(dsVendas.DataSet.FieldByName('id_venda').AsInteger, AId_Modelo);
            if not AOperacaoRealizada then
               ATentaNovamente := Confirmacao('O Documento Fiscal não foi emitido.'#13'Tentar novamente?');
          until AOperacaoRealizada Or not ATentaNovamente;
      end;

   if (dsVendas_Parcelas.DataSet.RecordCount > 1) And
      Confirmacao('Deseja imprimir o carnê de pagamentos?') then
      dmRelatorio.ImprimirCarne(dsVendas.DataSet.FieldByName('id_venda').AsInteger,
                                dsTerminais.DataSet.FieldByName('impressora_padrao').AsString,
                                False);

   ///dsPreVendas.DataSet.Edit;

   //AId_Venda := dmPDV.BaixaPreVenda(dsPreVendas.DataSet.FieldByName('id_status').AsInteger);

   // 1-Em Andamento / 2-Aguardando Aprovação / 3-Aguardando Pagamento / 4-Cancelada / 5-Excluída / 6-Finalizada
   dsPreVendas.DataSet.Edit;
   dsPreVendas.DataSet.FieldByName('id_status').AsInteger := 6;
   dsPreVendas.DataSet.FieldByName('id_venda').AsInteger := dsVendas.DataSet.FieldByName('id_venda').AsInteger;
   dsPreVendas.DataSet.Post;
   dsPreVendas.DataSet.Close;
   dsVendas.DataSet.Close;
   TUniQuery(dsVendas.DataSet).ParamByName('id_terminal').Clear;
   TUniQuery(dsVendas.DataSet).ParamByName('data_movimento').Clear;
   TUniQuery(dsVendas.DataSet).ParamByName('id_operador').Clear;
   TUniQuery(dsVendas.DataSet).MacroByName('condicao').Clear;
end;

procedure TfrmPreVenda.btnedtNumeroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if Not CharInSet(Key, ['0'..'9', #13, #08]) then
      Key := #0;
end;

procedure TfrmPreVenda.btnTipoRecebimento01Click(Sender: TObject);
var
   ASequenciaAutenticacao: Integer;
   AContador: Byte;
   ACancela: Boolean;
   ATextoAutentica: string;
begin
  inherited;
   With dsPreVendas Do
      if DataSet.FieldByName('valor_receber').AsFloat > 0 then
         begin
            SelecionaFormaDeRecebimento(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger,
                                        TcxButton(Sender).Tag);
            if DataSet.FieldByName('valor_receber').AsFloat <= 0 then
               begin
                  if dsTerminais.DataSet.FieldByName('autenticar_documento').AsString = 'S' then
                     begin
                        AContador := 1;
                        ACancela := False;
                        while (AContador <= 2) and not ACancela do
                           begin
                              if dlgImprimir.Executa(Format('Autenticação - %dª Via', [AContador])) then
                                 begin
                                    if AContador = 1 then
                                       ASequenciaAutenticacao := dmPDV.GetSequenciaAutenticacao(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger);
                                    ATextoAutentica := 'AUT.: ';
                                    ATextoAutentica := ATextoAutentica +
                                                       StrZero(IntToStr(dsTerminais.DataSet.FieldByName('id_local').AsInteger), 4);
                                    ATextoAutentica := ATextoAutentica +
                                                       FormatDateTime('yyyymmdd', dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime);
                                    ATextoAutentica := ATextoAutentica +
                                                       StrZero(IntToStr(ASequenciaAutenticacao), 6);
                                    ATextoAutentica := ATextoAutentica +
                                                       StrZero(IntToStr(dsPreVendas.DataSet.FieldByName('documento').AsInteger), 6);
                                    ATextoAutentica := ATextoAutentica +
                                                       FormatFloat('R$ ***,**0.00', dsPreVendas.DataSet.FieldByName('valor_recebido').AsFloat);
                                    ATextoAutentica := ATextoAutentica +
                                                       StrZero(IntToStr(dsTerminais.DataSet.FieldByName('numero').AsInteger), 3);
                                    dlgImprimir.Autentica(ATextoAutentica, dsTerminais.DataSet.FieldByName('autenticador_id_modelo').AsInteger);
                                    Inc(AContador);
                                 end
                              else
                                 ACancela := True;
                           end;
                     end;

                  frmObrigado.SetTituloValorLiquido('Total da venda');
                  frmObrigado.SetValorLiquido(dsPreVendas.DataSet.FieldByName('valor_liquido').AsFloat);
                  frmObrigado.SetTituloValorRecebido('Valor recebido');
                  frmObrigado.SetValorRecebido(dsPreVendas.DataSet.FieldByName('valor_recebido').AsFloat);
                  frmObrigado.SetTituloValorTroco('Troco');
                  frmObrigado.SetValorTroco(dsPreVendas.DataSet.FieldByName('valor_troco').AsFloat);
                  frmObrigado.ExibeFormulario;
                  ExecutaFechamentoPreVenda;
                  frmObrigado.OcultaFormulario;
                  Update;
                  Refresh;
               end;
         end;
end;

procedure TfrmPreVenda.CarregaTiposDeRecebimento;
var
   I: Integer;
begin
   With dsTerminais_Modalidades Do
      begin
         DataSet.Open;
            for I := 0 to gboxFerramentas.ControlCount - 1 do
               begin
                  if gboxFerramentas.Controls[I].ClassType = TcxButton then
                     begin
                        TcxButton(gboxFerramentas.Controls[I]).Enabled := (TcxButton(gboxFerramentas.Controls[I]).Tag <> 0) And
                                                                          DataSet.Locate('id_botao', TcxButton(gboxFerramentas.Controls[I]).Tag, []);
                        if TcxButton(gboxFerramentas.Controls[I]).Enabled then
                           TcxButton(gboxFerramentas.Controls[I]).Caption := DataSet.FieldByName('texto_botao').AsString;
                     end;
               end;
         DataSet.Close;
      end;
end;

procedure TfrmPreVenda.ConfiguraComponentesACBr;
var
   aCaminhoSchemas: String;
begin
   aCaminhoSchemas := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                      'Schemas\NFe');
   dmComponentesACBr.CarregaEmitente(dsEstabelecimentos.DataSet);
   dmComponentesACBr.CarregaCertificado(dsTerminais.DataSet);
   dmComponentesACBr.CarregaWebService(dsTerminais.DataSet);
   dmComponentesACBr.ConfiguraACBrNFe('0',
                                      IntToStr(dsTerminais.DataSet.FieldByName('token_csc_id').AsInteger),
                                      dsTerminais.DataSet.FieldByName('token_csc_numero').AsString,
                                      True,
                                      dsTerminais.DataSet.FieldByName('salvar_resposta_envio').AsString = 'S',
                                      dsTerminais.DataSet.FieldByName('salvar_resposta_envio').AsString = 'S',
                                      IfThen(Trim(dsTerminais.DataSet.FieldByName('salvar_resposta_envio_caminho').AsString) <> '', dsTerminais.DataSet.FieldByName('salvar_resposta_envio_caminho').AsString, IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'DF-e'),
                                      aCaminhoSchemas);

   dmComponentesACBr.ACBrNFeDANFEFR1.Sistema := Application.Title;
   dmComponentesACBr.ACBrNFeDANFEFR1.Usuario := dmConexao.conConexao.UserName;
   dmComponentesACBr.ACBrNFeDANFEFR1.ExibeResumoCanhoto := True;
//   if Trim(dsEstabelecimentos.DataSet.FieldByName('fax').AsString) <> '' then
//      dmComponentesACBr.ACBrNFeDANFEFR1.Fax := FormatMaskText(IfThen(Length(Trim(dsEstabelecimentos.DataSet.FieldByName('fax').AsString)) < 11, '(99)9999-9999;0;', '(99)99999-9999;0;'), dsEstabelecimentos.DataSet.FieldByName('fax').AsString);
   if Trim(dsEstabelecimentos.DataSet.FieldByName('email').AsString) <> '' then
      dmComponentesACBr.ACBrNFeDANFEFR1.Email := dsEstabelecimentos.DataSet.FieldByName('email').AsString;

   dmComponentesACBr.ACBrNFeDANFEFR1.MostraPreview := True;
   dmComponentesACBr.ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                 'Reports\' +
                                                 'DANFeNFCe.fr3';
   dmComponentesACBr.ACBrNFeDANFEFR1.FastFileEvento := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                       'Reports\' +
                                                       'EVENTOS.fr3';
   dmComponentesACBr.ACBrNFeDANFEFR1.FastFileInutilizacao := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                             'Reports\' +
                                                             'INUTILIZACAO.fr3';

   If Not dsTerminais.DataSet.FieldByName('id_balanca_acoplada').IsNull Then
      begin
         dmComponentesACBr.ConfiguraBalanca(dsTerminais.DataSet);
         // Conecta com a balança
         dmComponentesACBr.ACBrBAL1.Ativar;
      end;
end;

procedure TfrmPreVenda.ExecutaRecebimento(
  AID_Forma_Recebimento: Integer; AValorPadrao: Double; AValorMaximo: Double);
begin
   dlgRecebimentoValor := TdlgRecebimentoValor.Create(Self);
   Try
      If dlgRecebimentoValor.Executa(dsFormas_Recebimentos.DataSet.FieldByName('descricao').AsString,
                                     AValorPadrao,
                                     AValorMaximo) Then
         With dsPreVendas_Recebimentos Do
            begin
                DataSet.Append;
                DataSet.FieldByName('id_transacao').AsInteger := AID_Forma_Recebimento;
                DataSet.FieldByName('valor_recebido').AsFloat := dlgRecebimentoValor.curredtValor.Value;
                if dsPreVendas.DataSet.FieldByName('valor_receber').AsFloat < dlgRecebimentoValor.curredtValor.Value then
                   DataSet.FieldByName('valor_troco').AsFloat := dlgRecebimentoValor.curredtValor.Value - dsPreVendas.DataSet.FieldByName('valor_receber').AsFloat;
                DataSet.Post;
            end;
   Finally
      dlgRecebimentoValor.Free;
   End;
end;

procedure TfrmPreVenda.SelecionaFormaDeRecebimento(AId_Terminal: Integer;
   AId_Botao: SmallInt);
begin
   dlgFormasRecebimentos := TdlgFormasRecebimentos.Create(Self);
   Try
      If dlgFormasRecebimentos.Seleciona(AId_Terminal, AId_Botao) Then
         if dsFormas_Recebimentos.DataSet.FieldByName('troco').AsString = 'S' then
            ExecutaRecebimento(dsFormas_Recebimentos.DataSet.FieldByName('id_transacao').AsInteger)
         Else
            ExecutaRecebimento(dsFormas_Recebimentos.DataSet.FieldByName('id_transacao').AsInteger,
                               dsPreVendas.DataSet.FieldByName('valor_receber').AsFloat);
   Finally
      dlgFormasRecebimentos.Free;
   End;
end;

procedure TfrmPreVenda.UpdateStatusBar;
begin
   With barStatus Do
      begin
         Panels[1].Text := '';
         Panels[2].Text := 'Term.: ' + dsTerminais.DataSet.FieldByName('descricao').AsString;
         Panels[3].Text := 'Oper.: ' + dmSessao.qryUsuarios.FieldByName('login').AsString;
      end;
end;

procedure TfrmPreVenda.dsPreVendasStateChange(Sender: TObject);
begin
   inherited;
   With TDataSource(Sender) Do
      begin
      gboxAreadeTrabalho.Visible := (State <> dsInactive) and not DataSet.IsEmpty;
      if DataSet.FieldByName('valor_receber').AsFloat = 0 then
         begin
            lblValorReceberTroco.Caption := 'Troco:';
            dbeValorReceberTroco.DataBinding.DataField := 'troco';
         end
      else
         begin
            lblValorReceberTroco.Caption := 'A Receber:';
            dbeValorReceberTroco.DataBinding.DataField := 'valor_receber';
         end;
      end;
end;

procedure TfrmPreVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   dlgIdentificacaoDocumentoRFB.Free;
   dlgIdentificacaoCliente.Free;
   dlgImprimir.Free;
   dsPreVendas.DataSet.Close;
   TUniQuery(dsPreVendas.DataSet).ParamByName('documento').Clear;
end;

procedure TfrmPreVenda.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   case Key of
      // Ord('F'): actOutrasFuncoesExecute(actOutrasFuncoes);
      // Ord('D'): DescontoNoCupom;
      // VK_F1: If btnF01.Enabled Then
      // btnF02Click(btnF01);
      VK_ESCAPE:
         Close;
   end;
end;

procedure TfrmPreVenda.FormResize(Sender: TObject);
begin
  inherited;
   With barStatus Do
      Panels[0].Width := ClientWidth - (Panels[1].Width + Panels[2].Width + Panels[3].Width);
end;

procedure TfrmPreVenda.FormShow(Sender: TObject);
begin
   inherited;
//   Align := alNone;
//   Align := alClient;
   dlgImprimir := TdlgImprimir.Create(Self);
   dlgIdentificacaoCliente := TdlgIdentificacaoCliente.Create(Self);
   dlgIdentificacaoDocumentoRFB := TdlgIdentificacaoDocumentoRFB.Create(Self);
   ConfiguraComponentesACBr;
   CarregaTiposDeRecebimento;
   UpdateStatusBar;
   WindowState := wsMaximized;
end;

function TfrmPreVenda.GeraDocumentoFiscal: Boolean;
var
   ANumeroLote,
   i: integer;
   OK: Boolean;
   ADescricaoProduto,
   AObservacao: TStrings;
   AAppInfo: TStringList;
   ADescricaoFonteTributos: String;
begin
   with dmComponentesACBr do
      begin
         AObservacao := TStringList.Create;
         ADescricaoProduto := TStringList.Create;
         try
            // Versão do arquivo XML a ser gerado
            ACBrNFe1.Configuracoes.Geral.VersaoDF := StrToVersaoDF(ok, IfThen(dsTerminais.DataSet.FieldByName('versao_xml').AsString = '1', '3.10', '4.00'));
            // Versão do QR-Code
            ACBrNFe1.Configuracoes.Geral.VersaoQRCode := StrToVersaoQrCode(ok, dsTerminais.DataSet.FieldByName('versao_qrcode').AsString);

            ACBrNFe1.NotasFiscais.Clear;
            with ACBrNFe1.NotasFiscais.Add.NFe do
               begin
                  Ide.cNF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_nota_fiscal').AsInteger; // Caso não seja preenchido será gerado um número aleatório pelo componente
                  Ide.natOp := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('natureza_operacao').AsString;
                  Ide.indPag := StrToIndpag(OK, dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString); // ipVista;
                  Ide.modelo := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger; // 55
                  Ide.serie := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('serie_nota').AsInteger; // 1;
                  Ide.nNF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('numero').AsInteger;

                  if Ide.modelo = 65 {Ide.tpImp = tiNFCe} then
                     begin
                        Ide.dEmi := dmConexao.GetCurrentDateTime;
                        //Ide.dSaiEnt := dmConexao.GetCurrentDateTime;
                        //Ide.hSaiEnt := Ide.dEmi;
                     end
                  Else
                     begin
                        Ide.dEmi := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime;
                        Ide.dSaiEnt := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_movimento').AsDateTime;
                        Ide.hSaiEnt := StrToDateTime(FormatDateTime('dd/mm/yyyy', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_movimento').AsDateTime) + ' ' +
                           dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('hora_movimento').AsString);
                     end;

                  // Ide.tpNF := tnSaida;
                  Ide.tpNF := StrToTpNF(OK, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_nota').AsString = 'E', '0', '1'));
                  // Ide.tpEmis := teNormal;
                  Ide.tpEmis := StrToTpEmis(OK, dsTerminais.DataSet.FieldByName('dfe_forma_emissao').AsString);

                  if Ide.tpEmis = teContingencia then
                     begin
                        Ide.dhCont := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime;
                        if Trim(dsTerminais.DataSet.FieldByName('contingencia_motivo').AsString) <> '' then
                           Ide.xJust  := dsTerminais.DataSet.FieldByName('contingencia_motivo').AsString
                        Else
                           Ide.xJust  := 'AMBIENTE LOCAL: SEM CONEXÃO COM A INTERNET';
                     end;

                  // Ide.tpAmb := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
                  // 1-Produção / 2-Homologação
                  Ide.tpAmb := StrToTpAmb(OK, IntToStr(dsTerminais.DataSet.FieldByName('ws_ambiente').AsInteger + 1));
                  Ide.procEmi := StrToprocEmi(OK, '0'); // 0 - emissão de NF-e com aplicativo do contribuinte;
                  Ide.verProc := VersaoEXE(Application.ExeName);
                  (*
                    aAppInfo := TStringList.Create;
                    try
                    if FileVerInfo(Application.ExeName, aAppInfo) then
                    Ide.verProc := aAppInfo[7]; // Versão do seu sistema
                    finally
                    aAppInfo.Free;
                    end;
                  *)
                  Ide.cUF := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_estado_emitente').AsString); // NotaUtil.UFtoCUF(qryNFe.FieldByName('SIGLA_UF_LOCAL').AsString);
                  Ide.cMunFG := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_cidade_emitente').AsString);
                  Ide.finNFe := StrToFinNFe(OK, dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_finalidade_emissao').AsString);
                  Ide.tpImp := StrToTpImp(OK, dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString);

                  if Ide.modelo = 65 {Ide.tpImp = tiNFCe} then
                     begin
                        // 0 - cfNao, 1 - cfConsumidorFinal
                        Ide.indFinal  := StrToConsumidorFinal(OK, '1');
                        // 0 - pcNao, 1 - pcPresencial, 2 - pcInternet, 3 - pcTeleatendimento, 4 - pcEntregaDomicilio, 9 - pcOutros
                        Ide.indPres   := StrToPresencaComprador(ok, '1');
                        Ide.idDest := StrToDestinoOperacao(ok, '1');
                     end
                  Else
                     Ide.idDest := StrToDestinoOperacao(ok, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_emitente').AsString <> dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_entrega_destinatario').AsString, '3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_emitente').AsString = dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_entrega_destinatario').AsString, '1', '2')));

                  if Not dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.IsEmpty then
                     begin
                        dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.First;
                        while Not dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.Eof do
                           begin
                              // Para NFe referenciada use os campos abaixo
                              with Ide.NFref.Add do
                                 begin
                                    //NFe Eletronica
                                    if (dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.FieldByName('id_modelo').AsString = '55') Or
                                       (dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.FieldByName('id_modelo').AsString = '65') then
                                       refNFe := dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.FieldByName('chave').AsString;
                                    {
                                    RefNF.cUF    := 0;  // |
                                    RefNF.AAMM   := ''; // |
                                    RefNF.CNPJ   := ''; // |
                                    RefNF.modelo := 1;  // |- NFe Modelo 1/1A
                                    RefNF.serie  := 1;  // |
                                    RefNF.nNF    := 0;  // |

                                    RefNFP.cUF     := 0;  // |
                                    RefNFP.AAMM    := ''; // |
                                    RefNFP.CNPJCPF := ''; // |
                                    RefNFP.IE      := ''; // |- NF produtor Rural
                                    RefNFP.modelo  := ''; // |
                                    RefNFP.serie   := 1;  // |
                                    RefNFP.nNF     := 0;  // |

                                    RefECF.modelo  := ECFModRef2B; // |
                                    RefECF.nECF    := '';          // |- Cupom Fiscal
                                    RefECF.nCOO    := '';          // |
                                    }
                                 end;
                              dmDocumentosFiscais.qryDocumentos_Fiscais_Referenciados.Next;
                           end;
                     end;

                  Emit.CNPJCPF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnpj_emitente').AsString;
                  Emit.IE := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_emitente').AsString;
                  Emit.xNome := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_emitente').AsString;
                  Emit.xFant := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('fantasia_emitente').AsString;

                  Emit.EnderEmit.fone := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('telefone_emitente').AsString;
                  Emit.EnderEmit.CEP := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cep_emitente').AsString);
                  Emit.EnderEmit.xLgr := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('logradouro_emitente').AsString;
                  Emit.EnderEmit.nro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('numero_emitente').AsString;
                  Emit.EnderEmit.xCpl := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('complemento_emitente').AsString;
                  Emit.EnderEmit.xBairro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('bairro_emitente').AsString;
                  Emit.EnderEmit.cMun := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_cidade_emitente').AsString);
                  Emit.EnderEmit.xMun := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_cidade_emitente').AsString;
                  Emit.EnderEmit.UF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_emitente').AsString;
                  Emit.EnderEmit.cPais := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_emitente').AsString);
                  Emit.EnderEmit.xPais := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_pais_emitente').AsString;

                  Emit.IEST := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_est_subst_emitente').AsString;
                  Emit.IM := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_municipal_emitente').AsString; // Preencher no caso de existir serviços na nota
                  Emit.CNAE := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnae_fiscal_emitente').AsString; // Verifique na cidade do emissor da NFe se é permitido
                  // a inclusão de serviços na NFe
                  Emit.CRT := StrToCRT(OK, IntToStr(StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('regime_tributario_emitente').AsString) + 1)); // crtRegimeNormal;

                  if Ide.tpAmb = taHomologacao then
                     begin
                        //ACBrNFe1.Configuracoes.Geral.IdToken := '000001';
                        ACBrNFe1.Configuracoes.Geral.CSC := '000001';
                        //ACBrNFe1.Configuracoes.Geral.Token := Copy(Emit.CNPJCPF, 1, 8)+ IntToStr(YearOf(qryNFe.FieldByName('data_movimento').AsDateTime))+'0001';
                        ACBrNFe1.Configuracoes.Geral.idCSC := Copy(Emit.CNPJCPF, 1, 8)+ IntToStr(YearOf(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_movimento').AsDateTime))+'0001';
                     end;

                  // Para NFe Avulsa preencha os campos abaixo
                  { Avulsa.CNPJ    := '';
                    Avulsa.xOrgao  := '';
                    Avulsa.matr    := '';
                    Avulsa.xAgente := '';
                    Avulsa.fone    := '';
                    Avulsa.UF      := '';
                    Avulsa.nDAR    := '';
                    Avulsa.dEmi    := now;
                    Avulsa.vDAR    := 0;
                    Avulsa.repEmi  := '';
                    Avulsa.dPag    := now; }

                     //Dest.CNPJCPF := IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'F', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cpf_destinatario').AsString,
                     //   dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnpj_destinatario').AsString);

                  Dest.CNPJCPF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('documento_rfb_numero').AsString;
                  Dest.IE := IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'J', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_destinatario').AsString);
                  if dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('tipo_pessoa_destinatario').AsString = 'F' then
                     Dest.indIEDest := inNaoContribuinte
                  Else
                     if (Trim(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_destinatario').AsString) = '') Or
                        (Trim(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_destinatario').AsString) = 'ISENTO') then
                        Dest.indIEDest := inIsento
                     Else
                        Dest.indIEDest := inContribuinte;

                  Dest.ISUF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_suframa_destinatario').AsString;
                  Dest.xNome := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_destinatario').AsString;

                  if Ide.modelo <> 65 {Ide.tpImp <> tiNFCe} then
                     begin
                        Dest.EnderDest.xLgr := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('logradouro_entrega_destinatario').AsString;
                        Dest.EnderDest.nro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('numero_entrega_destinatario').AsString;
                        Dest.EnderDest.xCpl := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('complemento_entrega_destinatario').AsString;
                        Dest.EnderDest.xBairro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('bairro_entrega_destinatario').AsString;
                        if Trim(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cep_entrega_destinatario').AsString) <> '' then
                           Dest.EnderDest.CEP := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cep_entrega_destinatario').AsString);
                        Dest.EnderDest.cMun := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_cidade_entrega_destinatario').AsString);
                        Dest.EnderDest.xMun := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_cidade_entrega_destinatario').AsString;
                        Dest.EnderDest.UF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_entrega_destinatario').AsString;
                        Dest.EnderDest.cPais := StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_pais_entrega_destinatario').AsString);
                        Dest.EnderDest.xPais := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('descricao_pais_entrega_destinatario').AsString;
                        Dest.EnderDest.fone := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('telefone_destinatario').AsString;
                     end;

                  // Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
                  { Retirada.CNPJCPF := '';
                    Retirada.xLgr    := '';
                    Retirada.nro     := '';
                    Retirada.xCpl    := '';
                    Retirada.xBairro := '';
                    Retirada.cMun    := 0;
                    Retirada.xMun    := '';
                    Retirada.UF      := ''; }

                  // Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
                  { Entrega.CNPJCPF := '';
                    Entrega.xLgr    := '';
                    Entrega.nro     := '';
                    Entrega.xCpl    := '';
                    Entrega.xBairro := '';
                    Entrega.cMun    := 0;
                    Entrega.xMun    := '';
                    Entrega.UF      := ''; }

                  // Adicionando Produtos

                  Total.ICMSTot.vBC := 0;
                  Total.ICMSTot.vICMS := 0;
                  Total.ICMSTot.vProd := 0;
                  Total.ICMSTot.vBCST := 0;
                  Total.ICMSTot.vST := 0;

                  dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.First;
                  while not dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.Eof do
                     begin
                        aDescricaoProduto.Clear;
                        aDescricaoProduto.Assign(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('descricao'));
                        aDescricaoProduto.Text := StringReplace(aDescricaoProduto.Text, ';', #13, [rfReplaceAll]);

                        with Det.Add do
                           begin
                              Prod.nItem := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('item').AsInteger; // Número sequencial, para cada item deve ser incrementado
                              Prod.cProd := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_barras').AsString;
                              if LeftStr(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_barras').AsString, 3) = '789' then
                                 Prod.cEAN := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_barras').AsString;
                              infAdProd := '';
                              if aDescricaoProduto.Count > 0 Then
                                 begin
                                    Prod.xProd := Trim(aDescricaoProduto[0]);
                                    for i := 1 to aDescricaoProduto.Count - 1 do
                                       begin
                                          If infAdProd <> '' Then
                                             infAdProd := infAdProd + ';';
                                          infAdProd := infAdProd + Trim(aDescricaoProduto[i]);
                                       end;
                                 end;
                              Prod.NCM := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('codigo_ncm').AsString; // Tabela NCM disponível em
                              Prod.CEST := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cest').AsString;
                              Prod.EXTIPI := '';
                              Prod.CFOP := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('cfop').AsString;
                              Prod.uCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('sigla_unidade').AsString;

                              if (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('pesavel').AsString = 'S') And
                                 (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat > 0) then
                                 Prod.qCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat
                              else
                                 Prod.qCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('quantidade').AsFloat;

                              Prod.vUnCom := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat;

                              if (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('pesavel').AsString = 'S') And
                                 (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat > 0) then
                                 Prod.vProd := RoundTo((dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat * dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat) {+ qryNFe_Produtos.FieldByName('valor_acrescimo').AsFloat - qryNFe_Produtos.FieldByName('valor_desconto').AsFloat}, -2)
                              else
                                 Prod.vProd := RoundTo((dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat * dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('quantidade').AsFloat) {+ qryNFe_Produtos.FieldByName('valor_acrescimo').AsFloat - qryNFe_Produtos.FieldByName('valor_desconto').AsFloat}, -2);

                              Prod.uTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('sigla_unidade').AsString;

                              if (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('pesavel').AsString = 'S') And
                                 (dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat > 0) then
                                 Prod.qTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('peso_bruto').AsFloat
                              else
                                 Prod.qTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('quantidade').AsFloat;

                              Prod.vUnTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('preco_unitario').AsFloat;

                              {
                              Prod.vUnCom := qryNFe_Produtos.FieldByName('preco_unitario').AsFloat;

                              // Prod.cEANTrib := qryNFe_Produtos.FieldByName('codigo_ean13').AsString;

                              if Prod.uTrib = 'KG' then
                                 Prod.vUnTrib := RoundTo(qryNFe_Produtos.FieldByName('preco_unitario').AsFloat * qryNFe_Produtos.FieldByName('peso_bruto')
                                    .AsFloat, -2)
                              else
                                 Prod.vUnTrib := qryNFe_Produtos.FieldByName('preco_unitario').AsFloat * qryNFe_Produtos.FieldByName('quantidade').AsFloat;
                              }
                              Prod.vFrete := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_frete').AsFloat;
                              Prod.vSeg := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_seguro').AsFloat;
                              Prod.vDesc := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_desconto').AsFloat;
                              Prod.vOutro := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_acrescimo').AsFloat;

                              if Trim(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('referencia').AsString) <> '' then
                                 begin
                                    if infAdProd <> '' then
                                       infAdProd := infAdProd + ' ';
                                    infAdProd := infAdProd + 'REF.: ' + dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('referencia').AsString;
                                 end;

                              if Trim(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('numero_serie').AsString) <> '' then
                                 begin
                                    if infAdProd <> '' then
                                       infAdProd := infAdProd + ' ';
                                    infAdProd := infAdProd + 'N/S: ' + dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('numero_serie').AsString;
                                 end;

                              // Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
                              { with Prod.DI.Add do
                                begin
                                nDi         := '';
                                dDi         := now;
                                xLocDesemb  := '';
                                UFDesemb    := '';
                                dDesemb     := now;
                                cExportador := '';

                                with adi.Add do
                                begin
                                nAdicao     := 1;
                                nSeqAdi     := 1;
                                cFabricante := '';
                                vDescDI     := 0;
                                end;
                                end;
                              }
                              // Campos para venda de veículos novos
                              { with Prod.veicProd do
                                begin
                                tpOP    := toVendaConcessionaria;
                                chassi  := '';
                                cCor    := '';
                                xCor    := '';
                                pot     := '';
                                Cilin   := '';
                                pesoL   := '';
                                pesoB   := '';
                                nSerie  := '';
                                tpComb  := '';
                                nMotor  := '';
                                CMT     := '';
                                dist    := '';
                                RENAVAM := '';
                                anoMod  := 0;
                                anoFab  := 0;
                                tpPint  := '';
                                tpVeic  := 0;
                                espVeic := 0;
                                VIN     := '';
                                condVeic := cvAcabado;
                                cMod    := '';
                                end;
                              }
                              // Campos específicos para venda de medicamentos
                              { with Prod.med.Add do
                                begin
                                nLote := '';
                                qLote := 0 ;
                                dFab  := now ;
                                dVal  := now ;
                                vPMC  := 0 ;
                                end; }
                              // Campos específicos para venda de armamento
                              { with Prod.arma.Add do
                                begin
                                nSerie := 0;
                                tpArma := taUsoPermitido ;
                                nCano  := 0 ;
                                descr  := '' ;
                                end; }
                              // Campos específicos para venda de combustível(distribuidoras)
                              { with Prod.comb do
                                begin
                                cProdANP := 0;
                                CODIF    := '';
                                qTemp    := 0;

                                CIDE.qBCprod   := 0 ;
                                CIDE.vAliqProd := 0 ;
                                CIDE.vCIDE     := 0 ;

                                ICMS.vBCICMS   := 0 ;
                                ICMS.vICMS     := 0 ;
                                ICMS.vBCICMSST := 0 ;
                                ICMS.vICMSST   := 0 ;

                                ICMSInter.vBCICMSSTDest := 0 ;
                                ICMSInter.vICMSSTDest   := 0 ;

                                ICMSCons.vBCICMSSTCons := 0 ;
                                ICMSCons.vICMSSTCons   := 0 ;
                                ICMSCons.UFcons        := '' ;
                                end; }

                              with Imposto do
                                 begin
                                    if Emit.CRT = crtSimplesNacional then
                                       begin
                                          // lei da transparencia nos impostos
                                          vTotTrib := 0;

                                          ICMS.orig := StrToOrig(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('origem').AsString);
                                          ICMS.CSOSN := StrToCSOSNIcms(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('csosn').AsString);
                                          ICMS.pCredSN := 0;
                                          ICMS.vCredICMSSN := 0;
                                       end
                                    else
                                       begin
                                          // lei da transparencia nos impostos
                                          vTotTrib := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_tributos_federais').AsFloat +
                                                      dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_tributos_estaduais').AsFloat +
                                                      dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('valor_tributos_municipais').AsFloat;

                                          with ICMS do
                                             begin
                                                ICMS.orig := StrToOrig(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('origem').AsString);
                                                CST := StrToCSTICMS(OK, Copy(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('st').AsString, 2, 2));
                                                ICMS.modBC := dbiValorOperacao;
                                                ICMS.vBC := RoundTo(dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('base_icms').AsFloat, -2);
                                                ICMS.pICMS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_icms').AsFloat;
                                                ICMS.vICMS :=
                                                   RoundTo((dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('base_icms').AsFloat * dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_icms').AsFloat)
                                                   / 100, -2);
                                                ICMS.modBCST := dbisMargemValorAgregado;
                                                ICMS.pMVAST := 0;
                                                ICMS.pRedBCST := 0;
                                                ICMS.vBCST := 0;
                                                ICMS.pICMSST := 0;
                                                ICMS.vICMSST := 0;
                                                ICMS.pRedBC := 0;
                                             end;
                                       end;

                                    if ICMS.orig in [oeEstrangeiraImportacaoDireta, oeEstrangeiraAdquiridaBrasil] then
                                       begin
                                          with PIS do
                                             begin
                                                CST := pis01;
                                                PIS.vBC := Prod.vProd - ICMS.vICMS;
                                                PIS.pPIS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_pis').AsFloat;
                                                PIS.vPIS := PIS.vBC * PIS.pPIS / 100;
                                                PIS.qBCProd := 0;
                                                PIS.vAliqProd := 0;
                                             end;

                                          with PISST do
                                             begin
                                                vBC := 0;
                                                pPIS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vPIS := 0;
                                             end;

                                          with COFINS do
                                             begin
                                                CST := cof01;
                                                COFINS.vBC := Prod.vProd - ICMS.vICMS;
                                                COFINS.pCOFINS := dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.FieldByName('aliquota_cofins').AsFloat;
                                                COFINS.vCOFINS := COFINS.vBC * COFINS.pCOFINS / 100;
                                                COFINS.qBCProd := 0;
                                                COFINS.vAliqProd := 0;
                                             end;

                                          with COFINSST do
                                             begin
                                                vBC := 0;
                                                pCOFINS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vCOFINS := 0;
                                             end;
                                       end
                                    Else
                                       begin
                                          with PIS do
                                             begin
                                                CST := pis99;
                                                PIS.vBC := 0;
                                                PIS.pPIS := 0;
                                                PIS.vPIS := 0;
                                                PIS.qBCProd := 0;
                                                PIS.vAliqProd := 0;
                                             end;

                                          with PISST do
                                             begin
                                                vBC := 0;
                                                pPIS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vPIS := 0;
                                             end;

                                          with COFINS do
                                             begin
                                                CST := cof99;
                                                COFINS.vBC := 0;
                                                COFINS.pCOFINS := 0;
                                                COFINS.vCOFINS := 0;
                                                COFINS.qBCProd := 0;
                                                COFINS.vAliqProd := 0;
                                             end;

                                          with COFINSST do
                                             begin
                                                vBC := 0;
                                                pCOFINS := 0;
                                                qBCProd := 0;
                                                vAliqProd := 0;
                                                vCOFINS := 0;
                                             end;
                                       end;

                                    // Totalizando
                                    Total.ICMSTot.vBC := Total.ICMSTot.vBC + ICMS.vBC;
                                    Total.ICMSTot.vICMS := Total.ICMSTot.vICMS + ICMS.vICMS;

                                    // Grupo para serviços
                                    { with ISSQN do
                                      begin
                                      vBC       := 0;
                                      vAliq     := 0;
                                      vISSQN    := 0;
                                      cMunFG    := 0;
                                      cListServ := 0; // Preencha este campo usando a tabela disponível
                                      // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
                                      end; }

                                 end;
                              Total.ICMSTot.vProd := Total.ICMSTot.vProd + Prod.vProd;
                           end;
                        dmDocumentosFiscais.qryDocumentos_Fiscais_Produtos.Next;
                     end;

                  // Total.ICMSTot.vBC := 0;
                  // Total.ICMSTot.vICMS := 0;
                  // Total.ICMSTot.vBCST := 0;
                  // Total.ICMSTot.vST := 0;

                  Total.ICMSTot.vFrete := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_frete').AsFloat;
                  Total.ICMSTot.vSeg := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_seguro').AsFloat;
                  Total.ICMSTot.vDesc := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_desconto').AsFloat;
                  Total.ICMSTot.vII := 0;
                  Total.ICMSTot.vIPI := 0;
                  Total.ICMSTot.vPIS := 0;
                  Total.ICMSTot.vCOFINS := 0;
                  Total.ICMSTot.vOutro := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_acrescimo').AsFloat;
                  Total.ICMSTot.vNF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat +
                                       dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_frete').AsFloat +
                                       dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_seguro').AsFloat;

                  // lei da transparencia de impostos
                  if Emit.CRT = crtSimplesNacional then
                     Total.ICMSTot.vTotTrib := 0
                  Else
                     Total.ICMSTot.vTotTrib := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_federais').AsFloat +
                                               dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_estaduais').AsFloat +
                                               dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_municipais').AsFloat;

                  Total.ISSQNtot.vServ := 0;
                  Total.ISSQNtot.vBC := 0;
                  Total.ISSQNtot.vISS := 0;
                  Total.ISSQNtot.vPIS := 0;
                  Total.ISSQNtot.vCOFINS := 0;

                  Total.retTrib.vRetPIS := 0;
                  Total.retTrib.vRetCOFINS := 0;
                  Total.retTrib.vRetCSLL := 0;
                  Total.retTrib.vBCIRRF := 0;
                  Total.retTrib.vIRRF := 0;
                  Total.retTrib.vBCRetPrev := 0;
                  Total.retTrib.vRetPrev := 0;

                  Transp.modFrete := StrTomodFrete(OK, IntToStr(IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('modalidade_frete').AsString = '9',
                     StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('modalidade_frete').AsString), StrToInt(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('modalidade_frete').AsString) - 1))); // mfContaEmitente;
                  Transp.Transporta.CNPJCPF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('cnpj_transportador').AsString;
                  Transp.Transporta.xNome := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_transportador').AsString;
                  Transp.Transporta.IE := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('insc_estadual_transportador').AsString;
                  Transp.Transporta.xEnder := '';
                  Transp.Transporta.xMun := '';
                  Transp.Transporta.UF := '';

                  Transp.retTransp.vServ := 0;
                  Transp.retTransp.vBCRet := 0;
                  Transp.retTransp.pICMSRet := 0;
                  Transp.retTransp.vICMSRet := 0;
                  Transp.retTransp.CFOP := '';
                  Transp.retTransp.cMunFG := 0;

                  Transp.veicTransp.placa := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('placa').AsString;
                  Transp.veicTransp.UF := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('sigla_estado_placa').AsString;
                  Transp.veicTransp.RNTC := '';
                  // Dados do Reboque
                  { with Transp.Reboque.Add do
                    begin
                    placa := '';
                    UF    := '';
                    RNTC  := '';
                    end; }

                  with Transp.Vol.Add do
                     begin
                        qVol := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('quantidade').AsInteger;
                        esp := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('especie').AsString;
                        marca := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('marca').AsString;
                        nVol := '';
                        pesoL := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('peso_liquido').AsFloat;
                        pesoB := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('peso_bruto').AsFloat;

                        // Lacres do volume. Pode ser adicionado vários
                        // Lacres.Add.nLacre := '';
                     end;

                  dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.First;
                  if not dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.IsEmpty then
                     begin
                        Cobr.Fat.nFat := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('fatura').AsString;
                        Cobr.Fat.vOrig := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_bruto').AsFloat;
                        Cobr.Fat.vDesc := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_desconto').AsFloat;
                        Cobr.Fat.vLiq := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat;
                        while not dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.Eof do
                           begin
                              with Cobr.Dup.Add do
                                 begin
                                    nDup := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('xduplicata').AsString;
                                    dVenc := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('data_vencimento').AsDateTime;
                                    vDup := dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.FieldByName('valor_parcela').AsFloat;
                                 end;
                              dmDocumentosFiscais.qryDocumentos_Fiscais_Faturas.Next;
                           end;
                     end;

                  if not dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.IsEmpty then
                     begin
                        dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.First;
                        while Not dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.Eof do
                           begin
                              with pag.Add do //PAGAMENTOS apenas para NFC-e
                                 begin
                                    // fpDinheiro, fpCheque, fpCartaoCredito, fpCartaoDebito, fpCreditoLoja,
                                    // fpValeAlimentacao, fpValeRefeicao, fpValePresente, fpValeCombustivel,
                                    // fpOutro
                                    // tPag := fpDinheiro;
                                    // '01', '02', '03', '04', '05', '10', '11', '12', '13', '99'
                                    tPag := StrToFormaPagamento(OK, dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.FieldByName('id_forma_pagamento').AsString);
                                    vPag := dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.FieldByName('valor_recebido').AsFloat;
                                 end;
                              pag.vTroco := dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.FieldByName('valor_troco').AsFloat;
                              dmDocumentosFiscais.qryDocumentos_Fiscais_Recebimentos.Next;
                           end;
                     end;

                  InfAdic.infCpl := '';
                  InfAdic.infAdFisco := '';
                  aObservacao.Clear;
                  aObservacao.Assign(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('informacoes_adicionais'));
                  if aObservacao.Count > 0 then
                     for i := 0 to aObservacao.Count - 1 do
                        begin
                           if InfAdic.infCpl <> '' then
                              InfAdic.infCpl := InfAdic.infCpl + ';';
                           InfAdic.infCpl := InfAdic.infCpl + aObservacao[i];
                        end;

                  if Emit.CRT = crtSimplesNacional then
                     begin
                        if InfAdic.infCpl <> '' then
                           InfAdic.infCpl := InfAdic.infCpl + ';';
                        InfAdic.infCpl := InfAdic.infCpl +
                           'Documento emitido por ME ou por EPP optante do Simples Nacional. Não gera direito de crédito fiscal do IPI.';
                        If (Total.ICMSTot.vTotTrib > 0) Then
                           begin
                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              InfAdic.infCpl := InfAdic.infCpl +
                                                'Valor aproximado do imposto: ' +
                                                FormatFloat('R$ #,##0.00', Total.ICMSTot.vTotTrib) +
                                                ' ('+
                                                FormatFloat('##0.00 %', Total.ICMSTot.vTotTrib / Total.ICMSTot.vNF * 100) + ')';
                           end;
                     end
                  Else
                     begin
                        If (Ide.modelo = 55) And (Total.ICMSTot.vTotTrib > 0) Then
                           begin
                              ADescricaoFonteTributos := dmFiscal.GetIBPTDescricaoFonte(Ide.dEmi);
                              if ADescricaoFonteTributos <> '' then
                                 ADescricaoFonteTributos := 'Fonte: ' +
                                                            ADescricaoFonteTributos;

                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              InfAdic.infCpl := InfAdic.infCpl +
                                                'Valor aproximado dos tributos(Lei 12.741/2012 - Lei da Transparência Fiscal):;' +
                                                'Federais: ' +
                                                FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_federais').AsFloat) +
                                                ' (' +
                                                FormatFloat('##0.00 %', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_federais').AsFloat / Total.ICMSTot.vNF * 100) +
                                                '), ' +
                                                'Estaduais: ' +
                                                FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_estaduais').AsFloat) +
                                                ' (' +
                                                FormatFloat('##0.00 %', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_estaduais').AsFloat / Total.ICMSTot.vNF * 100) +
                                                '), ' +
                                                'Municipais: ' +
                                                FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_municipais').AsFloat) +
                                                ' (' +
                                                FormatFloat('##0.00 %', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_tributos_municipais').AsFloat / Total.ICMSTot.vNF * 100) +
                                                ');' +
                                                ADescricaoFonteTributos;
                           end;

                        If dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('aliquota_pis').AsFloat > 0 Then
                           begin
                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              //InfAdic.infCpl := InfAdic.infCpl + 'Valor aproximado dos tributos(PIS): ' + FormatFloat('R$ #,##0.00', RoundTo((Total.ICMSTot.vNF * qryNFe.FieldByName('aliquota_pis').AsFloat) / 100, -2)) + ' ('+ FormatFloat('##0.00 %', qryNFe.FieldByName('aliquota_pis').AsFloat) + ')';
                           end;

                        If dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('aliquota_cofins').AsFloat > 0 Then
                           begin
                              If InfAdic.infCpl <> '' Then
                                 InfAdic.infCpl := InfAdic.infCpl + ';';
                              //InfAdic.infCpl := InfAdic.infCpl + 'Valor aproximado dos tributos(COFINS): ' + FormatFloat('R$ #,##0.00', RoundTo((Total.ICMSTot.vNF * qryNFe.FieldByName('aliquota_cofins').AsFloat) / 100, -2)) + ' ('+ FormatFloat('##0.00 %', qryNFe.FieldByName('aliquota_cofins').AsFloat) + ')';
                           end;
                     end;

                  // with InfAdic.obsCont.Add do
                  // begin
                  // xCampo := IntToStr(i + 1) + '-';
                  // xTexto := aObservacao[i];
                  // end;
                  // with InfAdic.obsFisco.Add do
                  // begin
                  // xCampo := 'ObsFisco';
                  // xTexto := '';
                  // end;
                  // Processo referenciado
                  { with InfAdic.procRef.Add do
                    begin
                    nProc := '';
                    indProc := ipSEFAZ;
                    end; }

                  exporta.UFembarq := '';;
                  exporta.xLocEmbarq := '';

                  compra.xNEmp := '';
                  compra.xPed := '';
                  compra.xCont := '';

                  // Dados DO Responsável Técnico
                  infRespTec.idCSRT   := 0;
                  infRespTec.CNPJ     := '08861369000109';
                  infRespTec.xContato := 'Marcio Roberto Leal Ferreira'; // Nome DO responsável técnico
                  infRespTec.email    := 'marcio.sistemas@gmail.com';
                  infRespTec.fone     := '92981218618';
               end;
         finally
            aDescricaoProduto.Free;
            aObservacao.Free;
         end;

         ACBrNFe1.NotasFiscais.GerarNFe;
         Result := ACBrNFe1.NotasFiscais.Items[0].Alertas = '';
         if Not Result then
            Erro('Erro ao Validar NF-e: ' + ACBrNFe1.NotasFiscais.Items[0].Alertas)
         else
            begin
               Result := ACBrNFe1.NotasFiscais.Items[0].GravarXML();
               If Result Then
                  begin
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Edit;
                     dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString := '1';
                     dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('chave').AsString := RightStr(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 44);
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Post;
                     ACBrNFe1.NotasFiscais.Assinar;
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Edit;
                     dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString := '2';
                     dmDocumentosFiscais.qryDocumentos_Fiscais.Post;
                     Result := ACBrNFe1.WebServices.StatusServico.Executar;
                     if Result then
                        begin
                           ANumeroLote := dmDocumentosFiscais.GeraSequenciaLoteDocumentoFiscal(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_emitente').AsInteger);
                           // Enviando Lote
                           Result := ACBrNFe1.Enviar(aNumeroLote, False);
                           if Result then
                              if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat = 100 then
                                 begin
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.Edit;
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString := '5';
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('lote').AsString := StrZero(IntToStr(aNumeroLote), 15);
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('recibo').AsString := ACBrNFe1.WebServices.Retorno.Recibo;
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('protocolo_autorizacao').AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
                                    dmDocumentosFiscais.qryDocumentos_Fiscais.Post;

                                    if dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 55 then
                                       begin
                                          ACBrNFeDANFEFR1.TextoResumoCanhoto := 'Emissão:' + FormatDateTime('dd/mm/yyyy', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('data_emissao').AsDateTime) + ' ' +
                                             'Dest/Reme: ' + dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('razao_destinatario').AsString + ' ' + 'Valor Total: ' +
                                             FormatFloat('R$ #,##0.00', dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('valor_liquido').AsFloat) + ' ' + 'Cond.: ' +
                                             IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '0', 'Pagamento à Vista', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_forma_pagamento').AsString = '1',
                                             'Pagamento à Prazo', 'Outros'));

                                          ACBrNFeDANFEFR1.Cancelada := dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('status').AsString = '9';

                                          ACBrNFeDANFEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                                      'Reports\' +
                                                                      IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3'));
                                                                      //IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));

                                          ACBrNFeDANFEFR1.Sistema := Application.Title;
                                          ACBrNFeDANFEFR1.Usuario := dsOperadores.DataSet.FieldByName('nome').AsString;
                                          ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
                                       end
                                    else
                                       begin
                                          ACBrNFeDANFCEFR1.FastFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                                                                       'Reports\' +
                                                                       IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3');
                                                                       //IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65, IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '4', 'DANFeNFCe.fr3', 'DANFeNFCeA4.fr3'), IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '1', 'DANFeRetrato.fr3', IfThen(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsString = '2', 'DANFePaisagem.fr3')));

                                          ACBrNFeDANFCEFR1.Sistema := Application.Title;
                                          ACBrNFeDANFCEFR1.Usuario := dsOperadores.DataSet.FieldByName('nome').AsString;
                                          ACBrNFe1.DANFE := ACBrNFeDANFCEFR1;
                                       end;

                                    if ACBrNFe1.DANFE <> nil then
                                       begin
                                          If dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('id_modelo').AsInteger = 65 Then
                                             ACBrNFe1.DANFE.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfce').AsString
                                          Else
                                            ACBrNFe1.DANFE.Impressora := dsTerminais.DataSet.FieldByName('emissor_nfe').AsString;
                                          ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK, IntToStr(dmDocumentosFiscais.qryDocumentos_Fiscais.FieldByName('danfe_tipo_impressao').AsInteger + 1));
                                          if FileExists(dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString) then
                                             ACBrNFe1.DANFE.Logo := dsTerminais.DataSet.FieldByName('danfe_logomarca_arquivo').AsString;
                                          ACBrNFe1.DANFE.ExpandeLogoMarca := dsTerminais.DataSet.FieldByName('danfe_logomarca_expandir').AsString = 'S';
                                          // Decimais dos Campos
                                          ACBrNFe1.DANFE.CasasDecimais.qCom := 3;
                                          ACBrNFe1.DANFE.CasasDecimais.vUnCom := 2;
                                          ACBrNFe1.DANFE.MostraPreview := False;
                                          ACBrNFe1.DANFE.MostraStatus := False;
                                          ACBrNFe1.DANFE.MostraSetup := False;
                                          ACBrNFe1.NotasFiscais.Imprimir;
                                       end;

                                 end;
                        end;
                  end;
            end;
      end;
end;

procedure TfrmPreVenda.btnedtNumeroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   ASequenciaAutenticacao: Integer;
   AContador: Byte;
   ACancela: Boolean;
   ATextoAutentica: string;
begin
   inherited;
   if Key = VK_RETURN then
      begin
         TcxButtonEdit(Sender).PostEditValue;
         dsPreVendas.DataSet.Close;
         TUniQuery(dsPreVendas.DataSet).ParamByName('documento').Value := TcxButtonEdit(Sender).EditValue;
         dsPreVendas.DataSet.Open;
         if dsPreVendas.DataSet.IsEmpty then
            begin
               MessageDlg('Pré-venda Inexistente! Por favor, verifique.', mtInformation, [mbOk], 0);
               dsPreVendas.DataSet.Close;
               TcxButtonEdit(Sender).Clear;
               TcxButtonEdit(Sender).SelectAll;
            end
         else
            // 1-Em Andamento / 2-Aguardando Aprovação / 3-Aguardando Pagamento / 4-Cancelada / 5-Excluída / 6-Finalizada
            if dsPreVendas.DataSet.FieldByName('id_status').AsInteger <> 3 then
               begin
                  MessageDlg('Pré-venda ' + IfThen(dsPreVendas.DataSet.FieldByName('id_status').AsInteger = 1, 'NÃO Confirmada',
                     IfThen(dsPreVendas.DataSet.FieldByName('id_status').AsInteger = 2, 'Aguardando Aprovação',
                     IfThen(dsPreVendas.DataSet.FieldByName('id_status').AsInteger = 4, 'Cancelada',
                     IfThen(dsPreVendas.DataSet.FieldByName('id_status').AsInteger = 5, 'Excluída', 'Já Finalizada')))) + '! Por favor, verifique.',
                     mtInformation, [mbOk], 0);
                  dsPreVendas.DataSet.Close;
                  TcxButtonEdit(Sender).Clear;
                  TcxButtonEdit(Sender).SelectAll;
               end
            else
               begin
                  if RoundTo(dsPreVendas.DataSet.FieldByName('valor_receber').AsFloat, -2) = 0 then
                     begin
                        if dsTerminais.DataSet.FieldByName('autenticar_documento').AsString = 'S' then
                           begin
                              AContador := 1;
                              ACancela := False;
                              while (AContador <= 2) and not ACancela do
                                 begin
                                    if dlgImprimir.Executa(Format('Autenticação - %dª Via', [AContador])) then
                                       begin
                                          if AContador = 1 then
                                             ASequenciaAutenticacao := dmPDV.GetSequenciaAutenticacao(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger);
                                          ATextoAutentica := 'AUT.: ';
                                          ATextoAutentica := ATextoAutentica +
                                                             StrZero(IntToStr(dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger), 4);
                                          ATextoAutentica := ATextoAutentica +
                                                             FormatDateTime('yyyymmdd', dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime);
                                          ATextoAutentica := ATextoAutentica +
                                                             StrZero(IntToStr(ASequenciaAutenticacao), 6);
                                          ATextoAutentica := ATextoAutentica +
                                                             StrZero(IntToStr(dsPreVendas.DataSet.FieldByName('documento').AsInteger), 6);
                                          ATextoAutentica := ATextoAutentica +
                                                             FormatFloat('R$ ***,**0.00', dsPreVendas.DataSet.FieldByName('valor_recebido').AsFloat);
                                          ATextoAutentica := ATextoAutentica +
                                                             StrZero(IntToStr(dsTerminais.DataSet.FieldByName('numero').AsInteger), 3);
                                          dlgImprimir.Autentica(ATextoAutentica, dsTerminais.DataSet.FieldByName('autenticador_id_modelo').AsInteger);
                                          Inc(AContador);
                                       end
                                    else
                                       ACancela := True;
                                 end;
                           end;

                        frmObrigado.SetTituloValorLiquido('Total da venda');
                        frmObrigado.SetValorLiquido(dsPreVendas.DataSet.FieldByName('valor_liquido').AsFloat);
                        frmObrigado.SetTituloValorRecebido('Valor recebido');
                        frmObrigado.SetValorRecebido(dsPreVendas.DataSet.FieldByName('valor_recebido').AsFloat);
                        frmObrigado.SetTituloValorTroco('Troco');
                        frmObrigado.SetValorTroco(dsPreVendas.DataSet.FieldByName('valor_troco').AsFloat);
                        frmObrigado.ExibeFormulario;
                        ExecutaFechamentoPreVenda;
                        frmObrigado.OcultaFormulario;
                        Update;
                        Refresh;
                     end
                  else
                     if not dmPDV.PodeAutenticarPreVenda(dsPreVendas.DataSet.FieldByName('id_prevenda').AsInteger) then
                        begin
                           MessageDlg('Erro ao validar pré-venda para autenticar:'#13 + 'Ítens com estoque insuficiente!', mtInformation, [mbOk], 0);
                           dsPreVendas.DataSet.Close;
                           TcxButtonEdit(Sender).Clear;
                           TcxButtonEdit(Sender).SelectAll;
                        end;
               end;
      end;
end;

procedure TfrmPreVenda.veNumeroPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         dlgListaPreVendasPendentes := TdlgListaPreVendasPendentes.Create(Self);
         try
            dlgListaPreVendasPendentes.qryPreVendas.Close;
            dlgListaPreVendasPendentes.qryPreVendas.ParamByName('id_local').Value := dsTerminais.DataSet.FieldByName('id_local').AsInteger;
            dlgListaPreVendasPendentes.qryPreVendas.Open;
            if dlgListaPreVendasPendentes.qryPreVendas.IsEmpty then
               Informacao('Nenhuma Pré-venda Pendente!')
            else if dlgListaPreVendasPendentes.ShowModal = mrOk then
                    begin
                       TcxButtonEdit(Sender).EditValue := dlgListaPreVendasPendentes.qryPreVendas.FieldByName('documento').AsInteger;
                       TcxButtonEdit(Sender).PostEditValue;
                       with dsPreVendas do
                          begin
                             DataSet.Close;
                             TUniQuery(DataSet).ParamByName('documento').Value := TcxButtonEdit(Sender).EditValue;
                             DataSet.Open;

                             if not dmPDV.PodeAutenticarPreVenda(DataSet.FieldByName('id_prevenda').AsInteger) then
                                begin
                                   MessageDlg('Erro ao validar pré-venda para autenticar:'#13 + 'Ítens com estoque insuficiente!', mtInformation, [mbOk], 0);
                                   dsPreVendas.DataSet.Close;
                                   TcxButtonEdit(Sender).Clear;
                                   TcxButtonEdit(Sender).SelectAll;
                                end;
                          end;
                    end;
            dlgListaPreVendasPendentes.qryPreVendas.Close;
         finally
            dlgListaPreVendasPendentes.Free;
         end;
      end;
end;

end.
