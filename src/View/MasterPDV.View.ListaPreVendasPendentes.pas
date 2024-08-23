unit MasterPDV.View.ListaPreVendasPendentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, JvDataSource,
  MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn;

type
  TdlgListaPreVendasPendentes = class(TForm)
    panAreadeTrabalho: TJvPanel;
    panFerramentas: TJvPanel;
    qryPreVendas: TUniQuery;
    dsPreVendas: TJvDataSource;
    grdPreVendas: TJvDBUltimGrid;
    qryPreVendasid_prevenda: TLargeintField;
    qryPreVendasdata_movimento: TDateTimeField;
    qryPreVendasid_local: TWordField;
    qryPreVendasid_cliente: TLargeintField;
    qryPreVendasrazao_cliente: TStringField;
    qryPreVendasid_condicao: TWordField;
    qryPreVendasdescricao_condicao: TStringField;
    qryPreVendasparcelas: TWordField;
    qryPreVendasid_representante: TLargeintField;
    qryPreVendasvalor_liquido: TFloatField;
    qryPreVendasdocumento: TLargeintField;
    btnOk: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    procedure grdPreVendasDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgListaPreVendasPendentes: TdlgListaPreVendasPendentes;

implementation

uses
  UDataModuleConexao;

{$R *.dfm}

procedure TdlgListaPreVendasPendentes.grdPreVendasDblClick(Sender: TObject);
begin
   ModalResult := mrOk;
end;

end.
