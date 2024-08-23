unit MasterPDV.View.FormasRecebimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, Vcl.Menus, Data.DB, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVS2010,
  dxSkinVisualStudio2013Light, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TdlgFormasRecebimentos = class(TfrmPadrao)
    dsFormas_Recebimentos: TDataSource;
    gboxAreadeTrabalho: TcxGroupBox;
    grdFormas_Recebimentos: TcxGrid;
    dbtvwFormas_Recebimentos: TcxGridDBTableView;
    dbtvwFormas_Recebimentosid_forma_recebimento: TcxGridDBColumn;
    dbtvwFormas_Recebimentosdescricao: TcxGridDBColumn;
    grdFormas_RecebimentosLevel1: TcxGridLevel;
    gboxFerramentas: TcxGroupBox;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
    function Seleciona(AId_Terminal: Integer; AId_Botao: SmallInt): Boolean;
  end;

var
  dlgFormasRecebimentos: TdlgFormasRecebimentos;

implementation

uses
   Uni,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV;

{$R *.dfm}

{ TdlgFormasRecebimentos }

function TdlgFormasRecebimentos.Seleciona(AId_Terminal: Integer;
   AId_Botao: SmallInt): Boolean;
begin
   with dsFormas_Recebimentos do
      begin
         DataSet.Close;
         TUniQuery(DataSet).ParamByName('id_terminal').Value := AId_Terminal;
         TUniQuery(DataSet).ParamByName('id_botao').Value := AId_Botao;
         DataSet.Open;
         Result := not DataSet.IsEmpty;
         if Result then
            if DataSet.RecordCount > 1 then
               Result := ShowModal = mrOk;
      end;
end;

end.
