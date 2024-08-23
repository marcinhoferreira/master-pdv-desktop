unit MasterPDV.View.Desconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, UMVCInterfaces, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, cxCurrencyEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinOffice2019Colorful, dxSkinTheBezier,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TdlgDesconto = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    lblTitulo: TcxLabel;
    lblValorDesconto: TcxLabel;
    curredtValorDesconto: TcxCurrencyEdit;
    gboxFerramentas: TcxGroupBox;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fValorMaximo: Double;
    function GetValorMaximo: Double;
    procedure SetValorMaximo(const Value: Double);
  public
    { Public declarations }
    function Executa(ATitulo: String; AValorMaximo: Double = 0): Boolean;
    property ValorMaximo: Double Read GetValorMaximo Write SetValorMaximo;
  end;

var
  dlgDesconto: TdlgDesconto;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV,
   MasterPDV.View.Autenticacao;

{$R *.dfm}

{ TdlgDesconto }

procedure TdlgDesconto.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  if dmPDV.IsSupervisor Or (curredtValorDesconto.Value <= ValorMaximo) then
     begin
        if Confirmacao('Confirma desconto?') then
           ModalResult := mrOk;
     end
  else
     begin
         dglAutenticacao := TdglAutenticacao.Create(Self);
         Try
            if not dglAutenticacao.AutenticaSupervisor then
               begin
                  Informacao('Falha na autenticação do Supervisor!');
                  Exit;
               end;

               if Confirmacao('Confirma desconto?') then
                  ModalResult := mrOk;
         Finally
            dglAutenticacao.Free;
         End;
     end;
end;

function TdlgDesconto.Executa(ATitulo: String; AValorMaximo: Double = 0): Boolean;
begin
   lblTitulo.Caption := ATitulo;
   ValorMaximo := AValorMaximo;
   //curredtValorDesconto.Properties.MaxValue :=
   Result := ShowModal = mrOk;
end;

function TdlgDesconto.GetValorMaximo: Double;
begin
   Result := fValorMaximo;
end;

procedure TdlgDesconto.SetValorMaximo(const Value: Double);
begin
   if Value <> fValorMaximo then
      fValorMaximo := Value;
end;

end.
