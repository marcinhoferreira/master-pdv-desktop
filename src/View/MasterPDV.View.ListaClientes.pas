unit MasterPDV.View.ListaClientes;

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
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, MemDS, DBAccess, Uni, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxDBBotoes, dxSkinOffice2019Colorful, dxSkinTheBezier,
  dxDateRanges, cxTextEdit, cxLabel, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TdlgListaClientes = class(TfrmPadrao)
    gboxAreaDeTrabalho: TcxGroupBox;
    gboxBarraDeFerramentas: TcxGroupBox;
    dsClientes: TDataSource;
    dbtabvwClientes: TcxGridDBTableView;
    grdClientesLevel1: TcxGridLevel;
    grdClientes: TcxGrid;
    qryClientes: TUniQuery;
    qryClientesid_parceiro: TLargeintField;
    qryClientescodigo: TStringField;
    qryClientestipo_pessoa: TStringField;
    qryClientescpf: TStringField;
    qryClientescnpj: TStringField;
    qryClientesrazao: TStringField;
    qryClientesfantasia: TStringField;
    qryClientessituacao: TStringField;
    dbtabvwClientesid_parceiro: TcxGridDBColumn;
    dbtabvwClientescodigo: TcxGridDBColumn;
    dbtabvwClientestipo_pessoa: TcxGridDBColumn;
    dbtabvwClientescpf: TcxGridDBColumn;
    dbtabvwClientescnpj: TcxGridDBColumn;
    dbtabvwClientesrazao: TcxGridDBColumn;
    dbtabvwClientesfantasia: TcxGridDBColumn;
    dbtabvwClientessituacao: TcxGridDBColumn;
    btnConfirmar: TcxDBBotao;
    btnCancelar: TcxButton;
    lblLocalizar: TcxLabel;
    txtedtLocalizar: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure txtedtLocalizarEnter(Sender: TObject);
    procedure txtedtLocalizarExit(Sender: TObject);
    procedure txtedtLocalizarPropertiesChange(Sender: TObject);
    procedure txtedtLocalizarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    fId: Integer;
    function Busca(const ACondicao: String): Boolean;
    function GetId: Integer;
    procedure SetId(const Value: Integer);
  public
    { Public declarations }
    function BuscaPorCPF(const Value: String): Boolean;
    function BuscaPorCNPJ(const Value: String): Boolean;
    function BuscaPorNome(const Value: String): Boolean;
    property Id: Integer Read GetId Write SetId;
  end;

var
  dlgListaClientes: TdlgListaClientes;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao;

{$R *.dfm}

{ TdlgListaClientes }

procedure TdlgListaClientes.btnConfirmarClick(Sender: TObject);
begin
  inherited;
   With TcxDBBotao(Sender).DataSource Do
      Id := DataSet.FieldByName('id_parceiro').AsInteger;
end;

function TdlgListaClientes.Busca(const ACondicao: String): Boolean;
begin
   If dsClientes.DataSet.Active Then
      dsClientes.DataSet.Close;
   TUniQuery(dsClientes.DataSet).MacroByName('condicao').Value := ACondicao;
   dsClientes.DataSet.Open;
   Result := Not dsClientes.DataSet.IsEmpty;
   if Result then
      begin
         Result := dsClientes.DataSet.RecordCount = 1;
         if Result then
            Id := dsClientes.DataSet.FieldByName('id_parceiro').AsInteger
         Else
            Result := ShowModal = mrOk;
      end;
end;

function TdlgListaClientes.BuscaPorCNPJ(const Value: String): Boolean;
var
   ACondicao: String;
begin
   ACondicao := ' AND cpf = ' + QuotedStr(Value);
   Result := Busca(ACondicao);
end;

function TdlgListaClientes.BuscaPorCPF(const Value: String): Boolean;
var
   ACondicao: String;
begin
   ACondicao := ' AND cpf = ' + QuotedStr(Value);
   Result := Busca(ACondicao);
end;

function TdlgListaClientes.BuscaPorNome(const Value: String): Boolean;
var
   ACondicao: String;
begin
   ACondicao := ' AND razao LIKE ' + QuotedStr('%' + StringReplace(Value, ' ', '%', [rfReplaceAll]) + '%');
   Result := Busca(ACondicao);
end;

procedure TdlgListaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   if dsClientes.DataSet.Active then
      dsClientes.DataSet.Close;
end;

function TdlgListaClientes.GetId: Integer;
begin
   Result := fId;
end;

procedure TdlgListaClientes.SetId(const Value: Integer);
begin
   if Value <> fId then
      fId := Value;
end;

procedure TdlgListaClientes.txtedtLocalizarEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
   TcxTextEdit(Sender).Text := '';
end;

procedure TdlgListaClientes.txtedtLocalizarExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TdlgListaClientes.txtedtLocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key = #13 then
      begin
         TcxTextEdit(Sender).PostEditValue;
         if TcxTextEdit(Sender).EditValue <> null then
            begin
               with dsClientes do
                  begin
                     if DataSet.Active then
                        DataSet.Close;
                     TUniQuery(DataSet).MacroByName('condicao').Value := Format('WHERE razao LIKE %s', [QuotedStr(StringReplace(Trim(TcxTextEdit(Sender).EditValue), ' ', '%', [rfReplaceAll]) + '%')]);
                     DataSet.Open;
                     if DataSet.IsEmpty then
                        begin
                           DataSet.Close;
                           Informacao('Nenhum registro foi encontrado!');
                        end
                     else
                        grdClientes.SetFocus;
                  end;
            end;
      end;
end;

procedure TdlgListaClientes.txtedtLocalizarPropertiesChange(Sender: TObject);
begin
  inherited;
   if TcxTextEdit(Sender).Text = '' then
      begin
         dsClientes.DataSet.Close;
      end;
end;

end.
