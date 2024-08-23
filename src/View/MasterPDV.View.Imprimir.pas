unit MasterPDV.View.Imprimir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, UFormularioPadrao, DB, DBTables,
  StdCtrls, Buttons, frxClass, frxDBSet,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxButtons, cxControls, cxContainer, cxEdit, cxLabel,
  cxGroupBox, dxSkinOffice2019Colorful, dxSkinTheBezier, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TdlgImprimir = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    gboxTitulo: TcxGroupBox;
    btnEnter: TcxButton;
    btnEsc: TcxButton;
    frRelatorio: TfrxReport;
    frdsAutenticacao: TfrxDBDataset;
    dsTerminais: TDataSource;
    lblTitulo: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Executa(ATitulo: String): Boolean;
    procedure Autentica(ATextoAutenticacao: String; AModelo: SmallInt);
    procedure ImprimeCupomNaoFiscal(aDataSet: TDataSet; aVisualiza: Boolean = False);
    procedure ImprimeRecibo(aDataSet: TDataSet; aVisualiza: Boolean = False);
  end;

var
  dlgImprimir: TdlgImprimir;
  aLinha: Integer;

implementation

uses
   MaskUtils, DateUtils,
   VCL.Funcoes, VCL.Impressoras,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV;
   
{$R *.dfm}

{ TdlgImprimir }

function TdlgImprimir.Executa(ATitulo: String): Boolean;
begin
   lblTitulo.Caption := ATitulo;
   Result := ShowModal = mrOk;
end;

procedure TdlgImprimir.ImprimeCupomNaoFiscal(aDataSet: TDataSet; aVisualiza: Boolean = False);
begin
   //
end;

procedure TdlgImprimir.Autentica(ATextoAutenticacao: String; AModelo: SmallInt);
begin
   if dsTerminais.DataSet.FieldByName('autenticador').AsString <> '' then
      AutenticaDocumento(dsTerminais.DataSet.FieldByName('autenticador').AsString,
                         AModelo,
                         ATextoAutenticacao);
end;

procedure TdlgImprimir.ImprimeRecibo(aDataSet: TDataSet; aVisualiza: Boolean = False);
begin
   //
end;

end.
