unit MasterPDV.View.ConsultaPreVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, Data.DB, MemDS, DBAccess, Uni, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDBBotoes;

type
  TdlgConsultaPreVendas = class(TfrmPadrao)
    qryPreVendas: TUniQuery;
    gboxResultado: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    dbtabvwPreVendas: TcxGridDBTableView;
    grdPreVendasLevel1: TcxGridLevel;
    grdPreVendas: TcxGrid;
    dsPreVendas: TDataSource;
    qryPreVendasid_prevenda: TLargeintField;
    qryPreVendasid_local: TWordField;
    qryPreVendasdata_movimento: TDateTimeField;
    qryPreVendasdocumento: TLargeintField;
    qryPreVendasid_cliente: TLargeintField;
    qryPreVendascpf_cnpj: TStringField;
    qryPreVendasnome_cliente: TStringField;
    qryPreVendaslogradouro_entrega: TStringField;
    qryPreVendasnumero_entrega: TStringField;
    qryPreVendascomplemento_entrega: TStringField;
    qryPreVendasbairro_entrega: TStringField;
    qryPreVendasreferencia_entrega: TStringField;
    qryPreVendasid_pais_entrega: TStringField;
    qryPreVendasid_estado_entrega: TStringField;
    qryPreVendasid_cidade_entrega: TStringField;
    qryPreVendascep_entrega: TStringField;
    qryPreVendastelefone_entrega: TStringField;
    qryPreVendasemail_cliente: TStringField;
    qryPreVendascontato_entrega: TStringField;
    qryPreVendasid_condicao: TWordField;
    qryPreVendasparcelas: TWordField;
    qryPreVendastipo_prazo: TStringField;
    qryPreVendasid_preco: TWordField;
    qryPreVendasdata_entrega: TDateTimeField;
    qryPreVendasid_representante: TLargeintField;
    qryPreVendaspercent_comissao: TFloatField;
    qryPreVendasvalor_entrada: TFloatField;
    qryPreVendasvalor_bruto: TFloatField;
    qryPreVendasvalor_acrescimo: TFloatField;
    qryPreVendasvalor_desconto: TFloatField;
    qryPreVendasvalor_troca: TFloatField;
    qryPreVendasvalor_liquido: TFloatField;
    qryPreVendasvalor_recebido: TFloatField;
    qryPreVendasvalor_receber: TFloatField;
    qryPreVendastipo_documento_fiscal: TStringField;
    qryPreVendasobservacao: TMemoField;
    qryPreVendasid_usuario: TLargeintField;
    qryPreVendasid_status: TWordField;
    dbtabvwPreVendasid_prevenda: TcxGridDBColumn;
    dbtabvwPreVendasid_local: TcxGridDBColumn;
    dbtabvwPreVendasdata_movimento: TcxGridDBColumn;
    dbtabvwPreVendasdocumento: TcxGridDBColumn;
    dbtabvwPreVendasid_cliente: TcxGridDBColumn;
    dbtabvwPreVendascpf_cnpj: TcxGridDBColumn;
    dbtabvwPreVendasnome_cliente: TcxGridDBColumn;
    dbtabvwPreVendaslogradouro_entrega: TcxGridDBColumn;
    dbtabvwPreVendasnumero_entrega: TcxGridDBColumn;
    dbtabvwPreVendascomplemento_entrega: TcxGridDBColumn;
    dbtabvwPreVendasbairro_entrega: TcxGridDBColumn;
    dbtabvwPreVendasreferencia_entrega: TcxGridDBColumn;
    dbtabvwPreVendasid_pais_entrega: TcxGridDBColumn;
    dbtabvwPreVendasid_estado_entrega: TcxGridDBColumn;
    dbtabvwPreVendasid_cidade_entrega: TcxGridDBColumn;
    dbtabvwPreVendascep_entrega: TcxGridDBColumn;
    dbtabvwPreVendastelefone_entrega: TcxGridDBColumn;
    dbtabvwPreVendasemail_cliente: TcxGridDBColumn;
    dbtabvwPreVendascontato_entrega: TcxGridDBColumn;
    dbtabvwPreVendasid_condicao: TcxGridDBColumn;
    dbtabvwPreVendasparcelas: TcxGridDBColumn;
    dbtabvwPreVendastipo_prazo: TcxGridDBColumn;
    dbtabvwPreVendasid_preco: TcxGridDBColumn;
    dbtabvwPreVendasdata_entrega: TcxGridDBColumn;
    dbtabvwPreVendasid_representante: TcxGridDBColumn;
    dbtabvwPreVendaspercent_comissao: TcxGridDBColumn;
    dbtabvwPreVendasvalor_entrada: TcxGridDBColumn;
    dbtabvwPreVendasvalor_bruto: TcxGridDBColumn;
    dbtabvwPreVendasvalor_acrescimo: TcxGridDBColumn;
    dbtabvwPreVendasvalor_desconto: TcxGridDBColumn;
    dbtabvwPreVendasvalor_troca: TcxGridDBColumn;
    dbtabvwPreVendasvalor_liquido: TcxGridDBColumn;
    dbtabvwPreVendasvalor_recebido: TcxGridDBColumn;
    dbtabvwPreVendasvalor_receber: TcxGridDBColumn;
    dbtabvwPreVendastipo_documento_fiscal: TcxGridDBColumn;
    dbtabvwPreVendasobservacao: TcxGridDBColumn;
    dbtabvwPreVendasid_usuario: TcxGridDBColumn;
    dbtabvwPreVendasid_status: TcxGridDBColumn;
    qryPreVendasdescricao_condicao: TStringField;
    dbtabvwPreVendasdescricao_condicao: TcxGridDBColumn;
    btnOk: TcxDBBotao;
    btnCancelar: TcxButton;
  private
    { Private declarations }
    fId: Integer;
  public
    { Public declarations }
    function Executa(const ACondicao: String): Boolean;
    property Id: Integer Read fId Write fId;
  end;

var
  dlgConsultaPreVendas: TdlgConsultaPreVendas;

implementation

{$R *.dfm}

uses
   UFuncoes, UClasses,
   UDataModuleLeiaute,
   UDataModuleConexao;

{ TdlgConsultaPreVendas }

function TdlgConsultaPreVendas.Executa(const ACondicao: String): Boolean;
begin
   qryPreVendas.Close;
   qryPreVendas.MacroByName('condicao').Value := ACondicao;
   qryPreVendas.Open;
   Result := Not qryPreVendas.IsEmpty;
   fId := -1;
   if Result then
      begin
         if qryPreVendas.RecordCount > 1 then
            Result := ShowModal = mrOk;

         if Result then
            fId := qryPreVendas.FieldByName('id_prevenda').AsInteger;
      end;
   qryPreVendas.Close;
end;

end.
