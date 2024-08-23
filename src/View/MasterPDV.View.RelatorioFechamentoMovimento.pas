unit MasterPDV.View.RelatorioFechamentoMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, Data.DB,
  Vcl.StdCtrls, cxButtons, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxGroupBox, cxDBBotoes, dxSkinOffice2019Colorful,
  dxSkinTheBezier;

type
  TdlgRelatorioFechamentoMovimento = class(TfrmPrivilegios)
    gboxAreadeTrabalho: TcxGroupBox;
    lblDataMovimento: TcxLabel;
    edtDataMovimento: TcxDateEdit;
    lblTerminal: TcxLabel;
    dbtxtedtTerminal: TcxDBTextEdit;
    lblOperador: TcxLabel;
    dbtxtedtOperador: TcxDBTextEdit;
    btnImprimir: TcxButton;
    dsTerminais: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    btnFechar: TcxBotaoFechar;
    lblFormatoImpressao: TcxLabel;
    cmbFormatoImpressao: TcxComboBox;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgRelatorioFechamentoMovimento: TdlgRelatorioFechamentoMovimento;

implementation

uses
   StrUtils,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UMasterPDVDataModuleRelatorio;

{$R *.dfm}

{ TdlgRelatorioFechamentoMovimento }

procedure TdlgRelatorioFechamentoMovimento.btnImprimirClick(Sender: TObject);
begin
  inherited;
   dmRelatorio.ImprimirFechamentoMovimento(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger,
                                           edtDataMovimento.Date,
                                           dsOperadores.DataSet.FieldByName('id_operador').AsInteger,
                                           cmbFormatoImpressao.ItemIndex,
                                           IfThen(cmbFormatoImpressao.ItemIndex = 0, dsTerminais.DataSet.FieldByName('emissor_cupom').AsString, dsTerminais.DataSet.FieldByName('impressora_padrao').AsString),
                                           True);
end;

procedure TdlgRelatorioFechamentoMovimento.FormShow(Sender: TObject);
begin
  inherited;
   edtDataMovimento.Date := dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime;
   cmbFormatoImpressao.ItemIndex := 0;
end;

end.
