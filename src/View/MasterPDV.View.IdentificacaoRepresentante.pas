unit MasterPDV.View.IdentificacaoRepresentante;

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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Data.DB, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TdlgIdentificacaoRepresentante = class(TfrmPadrao)
    gboxAreaDeTrabalho: TcxGroupBox;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    dsRepresentantes: TDataSource;
    dbtabvwRepresentantes: TcxGridDBTableView;
    grdRepresentantesLevel1: TcxGridLevel;
    grdRepresentantes: TcxGrid;
    dbtabvwRepresentantesid_representante: TcxGridDBColumn;
    dbtabvwRepresentantesnome: TcxGridDBColumn;
    procedure btnConfirmarClick(Sender: TObject);
    procedure grdRepresentantesEnter(Sender: TObject);
    procedure grdRepresentantesExit(Sender: TObject);
    procedure dbtabvwRepresentantesDblClick(Sender: TObject);
  private
    { Private declarations }
    fId: Integer;
    function GetId: Integer;
    procedure SetId(const Value: Integer);
  public
    { Public declarations }
    function Executa: Boolean;
    property Id: Integer Read GetId Write SetId;
  end;

var
  dlgIdentificacaoRepresentante: TdlgIdentificacaoRepresentante;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV;

{$R *.dfm}

{ TdlgIdentificacaoRepresentante }

procedure TdlgIdentificacaoRepresentante.btnConfirmarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma o Representante da Venda?') then
      begin
         Id := dsRepresentantes.DataSet.FieldByName('id_representante').AsInteger;
         ModalResult := mrOk;
      end;
end;

procedure TdlgIdentificacaoRepresentante.dbtabvwRepresentantesDblClick(
  Sender: TObject);
begin
  inherited;
   btnConfirmarClick(btnConfirmar);
end;

function TdlgIdentificacaoRepresentante.Executa: Boolean;
begin
   if dsRepresentantes.DataSet.Active then
      dsRepresentantes.DataSet.Close;
   dsRepresentantes.DataSet.Open;
   Result := ShowModal = mrOk;
   dsRepresentantes.DataSet.Close;
end;

function TdlgIdentificacaoRepresentante.GetId: Integer;
begin
   Result := fId;
end;

procedure TdlgIdentificacaoRepresentante.grdRepresentantesEnter(
  Sender: TObject);
begin
  inherited;
   KeyPreview := False;
end;

procedure TdlgIdentificacaoRepresentante.grdRepresentantesExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TdlgIdentificacaoRepresentante.SetId(const Value: Integer);
begin
   if Value <> fId then
      fId := Value;
end;

end.
