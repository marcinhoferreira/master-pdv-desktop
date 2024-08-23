unit MasterPDV.View.EditaCampoMemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, UFormularioPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxMemo, cxDBEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxDBBotoes, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier;

type
  TdlgEditaCampoMemo = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    dbmmoCampoMemo: TcxDBMemo;
    btnOk: TcxDBBotao;
    btnCancelar: TcxButton;
    dsTabela: TDataSource;
    procedure dbmmoCampoMemoEnter(Sender: TObject);
    procedure dbmmoCampoMemoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Executa(ATitulo: String; ACampo: TField): Boolean;
  end;

var
  dlgEditaCampoMemo: TdlgEditaCampoMemo;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute;

{$R *.dfm}

{ TdlgEditaCampoMemo }

procedure TdlgEditaCampoMemo.dbmmoCampoMemoEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
end;

procedure TdlgEditaCampoMemo.dbmmoCampoMemoExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

function TdlgEditaCampoMemo.Executa(ATitulo: String; ACampo: TField): Boolean;
begin
   Caption := ATitulo;
   gboxAreadeTrabalho.Caption := ACampo.DisplayName;
   dsTabela.DataSet := ACampo.DataSet;
   dbmmoCampoMemo.DataBinding.DataSource := dsTabela;
   dbmmoCampoMemo.DataBinding.DataField := ACampo.FieldName;
   Result := ShowModal = mrOk;
   dsTabela.DataSet := Nil;
end;

end.
