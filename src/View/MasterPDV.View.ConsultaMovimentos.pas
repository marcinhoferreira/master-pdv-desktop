unit MasterPDV.View.ConsultaMovimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, Data.DB, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxLabel, cxGroupBox, MemDS, DBAccess, Uni, Vcl.Menus, cxDBBotoes,
  Vcl.StdCtrls, cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TdlgConsultaMovimentos = class(TfrmPrivilegios)
    dsEstabelecimentos: TDataSource;
    dsTerminais: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    gboxLocalizar: TcxGroupBox;
    lblTerminal: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    lblDataMovimento: TcxLabel;
    dbdtedtDataMovimento: TcxDBDateEdit;
    qryMovimentos_Operacoes: TUniQuery;
    qryMovimentos_Operacoesid_terminal: TLargeintField;
    qryMovimentos_Operacoesdata_movimento: TDateTimeField;
    qryMovimentos_Operacoesid_operador: TLargeintField;
    qryMovimentos_Operacoessequencia: TWordField;
    qryMovimentos_Operacoesid_operacao: TWordField;
    qryMovimentos_Operacoesdescricao_operacao: TStringField;
    qryMovimentos_Operacoesid_centro: TStringField;
    qryMovimentos_Operacoesdescricao_centro_custo: TStringField;
    qryMovimentos_Operacoeshistorico: TStringField;
    qryMovimentos_Operacoesnatureza: TStringField;
    qryMovimentos_Operacoesvalor: TFloatField;
    qryMovimentos_Operacoesid_conta_movimento: TLargeintField;
    dsMovimentos_Operacoes: TDataSource;
    gboxFerramentas: TcxGroupBox;
    btnImprimir: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    gboxAreadeTrabalho: TcxGroupBox;
    grdMovimentos_Operacoes: TcxGrid;
    dbtabvwMovimentos_Operacoes: TcxGridDBTableView;
    grdMovimentos_OperacoesLevel1: TcxGridLevel;
    dbtabvwMovimentos_Operacoesid_terminal: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesdata_movimento: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesid_operador: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoessequencia: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesid_operacao: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesdescricao_operacao: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesid_centro: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesdescricao_centro_custo: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoeshistorico: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesnatureza: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesvalor: TcxGridDBColumn;
    dbtabvwMovimentos_Operacoesid_conta_movimento: TcxGridDBColumn;
    procedure qryMovimentos_OperacoesnaturezaGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryMovimentos_OperacoesnaturezaSetText(Sender: TField;
      const Text: string);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Executa;
  end;

var
  dlgConsultaMovimentos: TdlgConsultaMovimentos;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao,
   UMasterPDVDataModulePDV, UMasterPDVDataModuleRelatorio;

{$R *.dfm}

{ TdlgConsultaMovimentos }

procedure TdlgConsultaMovimentos.btnImprimirClick(Sender: TObject);
begin
  inherited;
   With TcxDBBotao(Sender).DataSource Do
      dmRelatorio.ImprimirComprovanteOperacao(DataSet.FieldByName('id_terminal').AsInteger,
                                              DataSet.FieldByName('data_movimento').AsDateTime,
                                              DataSet.FieldByName('id_operador').AsInteger,
                                              DataSet.FieldByName('sequencia').AsInteger,
                                              dsTerminais.DataSet.FieldByName('emissor_cupom').AsString,
                                              False);
end;

procedure TdlgConsultaMovimentos.Executa;
begin
   if dsMovimentos_Operacoes.DataSet.Active then
      dsMovimentos_Operacoes.DataSet.Close;
   dsMovimentos_Operacoes.DataSet.Open;
   ShowModal;
   dsMovimentos_Operacoes.DataSet.Close;
end;

procedure TdlgConsultaMovimentos.qryMovimentos_OperacoesnaturezaGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'E' then
      Text := 'Entrada'
   Else if Sender.AsString = 'S' then
           Text := 'Saída';
   DisplayText := Text <> '';
end;

procedure TdlgConsultaMovimentos.qryMovimentos_OperacoesnaturezaSetText(
  Sender: TField; const Text: string);
begin
  inherited;
   if Text = 'Entrada' then
      Sender.AsString := 'E'
   Else if Text = 'Saída' then
           Sender.AsString := 'S';
end;

end.
