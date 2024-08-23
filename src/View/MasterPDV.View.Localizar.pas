unit MasterPDV.View.Localizar;

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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB,
  MemDS, DBAccess, Uni, cxDBBotoes, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TdlgLocalizar = class(TfrmPadrao)
    gboxLocalizar: TcxGroupBox;
    gboxAreadeTrabalho: TcxGroupBox;
    btnFechar: TcxBotaoFechar;
    qryLocalizar: TUniQuery;
    dsLocalizar: TDataSource;
    dbtabvwLocalizar: TcxGridDBTableView;
    grdLocalizarLevel1: TcxGridLevel;
    grdLocalizar: TcxGrid;
    lblLocalizar: TcxLabel;
    cmbCampo: TcxComboBox;
    txtedtLocalizar: TcxTextEdit;
    btnPesquisar: TcxDBBotaoPesquisar;
    qryLocalizarid_produto: TLargeintField;
    qryLocalizarcodigo_barras: TStringField;
    qryLocalizardescricao: TStringField;
    qryLocalizarresumida: TStringField;
    qryLocalizarid_categoria: TSmallintField;
    qryLocalizardescricao_categoria: TStringField;
    qryLocalizarid_subcategoria: TSmallintField;
    qryLocalizardescricao_subcategoria: TStringField;
    qryLocalizarcodigo_mercosul: TStringField;
    qryLocalizarid_marca: TSmallintField;
    qryLocalizardescricao_marca: TStringField;
    qryLocalizarreferencia: TStringField;
    qryLocalizarapresentacao: TStringField;
    qryLocalizarid_unidade_medida: TSmallintField;
    qryLocalizardescricao_unidade_medida: TStringField;
    qryLocalizarsigla_unidade_medida: TStringField;
    qryLocalizarpreco_unitario: TFloatField;
    qryLocalizarestoque_disponivel: TFloatField;
    dbtabvwLocalizarid_produto: TcxGridDBColumn;
    dbtabvwLocalizarcodigo_barras: TcxGridDBColumn;
    dbtabvwLocalizardescricao: TcxGridDBColumn;
    dbtabvwLocalizarresumida: TcxGridDBColumn;
    dbtabvwLocalizarid_categoria: TcxGridDBColumn;
    dbtabvwLocalizardescricao_categoria: TcxGridDBColumn;
    dbtabvwLocalizarid_subcategoria: TcxGridDBColumn;
    dbtabvwLocalizardescricao_subcategoria: TcxGridDBColumn;
    dbtabvwLocalizarcodigo_mercosul: TcxGridDBColumn;
    dbtabvwLocalizarid_marca: TcxGridDBColumn;
    dbtabvwLocalizardescricao_marca: TcxGridDBColumn;
    dbtabvwLocalizarreferencia: TcxGridDBColumn;
    dbtabvwLocalizarapresentacao: TcxGridDBColumn;
    dbtabvwLocalizarid_unidade_medida: TcxGridDBColumn;
    dbtabvwLocalizardescricao_unidade_medida: TcxGridDBColumn;
    dbtabvwLocalizarsigla_unidade_medida: TcxGridDBColumn;
    dbtabvwLocalizarpreco_unitario: TcxGridDBColumn;
    dbtabvwLocalizarestoque_disponivel: TcxGridDBColumn;
    btnRegistrar: TcxDBBotao;
    qryLocalizarinativo: TStringField;
    dsTerminais: TDataSource;
    dsMovimentos: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtedtLocalizarPropertiesChange(Sender: TObject);
    procedure txtedtLocalizarEnter(Sender: TObject);
    procedure btnRegistrarClick(Sender: TObject);
    procedure qryLocalizarBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function Executa: Boolean;
  end;

var
  dlgLocalizar: TdlgLocalizar;

implementation

uses
   StrUtils,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao, UMasterPDVDataModulePDV;

{$R *.dfm}

{ TdlgLocalizar }

procedure TdlgLocalizar.btnPesquisarClick(Sender: TObject);
begin
  inherited;
   With TcxDBBotao(Sender).DataSource Do
      if Trim(txtedtLocalizar.Text) <> '' then
         begin
            DataSet.DisableControls;
            DataSet.Close;
            TUniQuery(DataSet).MacroByName('condicao').Value := ' AND ' +
                                                                IfThen(cmbCampo.ItemIndex = 0, 'p.codigo_barras', IfThen(cmbCampo.ItemIndex = 1, 'p.descricao', IfThen(cmbCampo.ItemIndex = 2, 'p.descricao_marca', 'p.referencia'))) +
                                                                ' LIKE ' +
                                                                QuotedStr('%' + StringReplace(Trim(txtedtLocalizar.Text), ' ', '%', [rfReplaceAll]) + '%');
            TUniQuery(DataSet).MacroByName('ordem').Value := 'p.descricao';
            DataSet.Open;
            DataSet.EnableControls;
         end;
end;

procedure TdlgLocalizar.btnRegistrarClick(Sender: TObject);
begin
  inherited;
   With TcxDBBotao(Sender).DataSource Do
      begin
         if DataSet.FieldByName('inativo').AsString = 'S' then
            begin
               Informacao('ATENÇÃO! Produto inativo.'#13'Operação Cancelada.');
               Exit;
            end;
         ModalResult := mrOk;
      end;
end;

function TdlgLocalizar.Executa: Boolean;
begin
   Result := ShowModal = mrOk;
end;

procedure TdlgLocalizar.FormShow(Sender: TObject);
begin
  inherited;
   FocusControl(txtedtLocalizar);
end;

procedure TdlgLocalizar.qryLocalizarBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   TUniQuery(DataSet).ParamByName('id_estabelecimento').Value := dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger;
   TUniQuery(DataSet).ParamByName('id_local').Value := dsTerminais.DataSet.FieldByName('id_local').AsInteger;
   TUniQuery(DataSet).ParamByName('data_referencia').Value := dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime;
end;

procedure TdlgLocalizar.txtedtLocalizarEnter(Sender: TObject);
begin
  inherited;
   TcxTextEdit(Sender).Clear;
end;

procedure TdlgLocalizar.txtedtLocalizarPropertiesChange(Sender: TObject);
begin
  inherited;
   if Trim(TcxTextEdit(Sender).Text) = '' then
      dsLocalizar.DataSet.Close;
end;

end.
