unit MasterPDV.View.AberturaMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Data.DB, cxDBEdit, cxCurrencyEdit, JvComponentBase, JvEnterTab,
  dxSkinOffice2019Colorful, dxSkinTheBezier;

type
  TdlgAberturaMovimento = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    lblDataMovimento: TcxLabel;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    edtDataMovimento: TcxDateEdit;
    dsTerminais: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    lblTerminal: TcxLabel;
    dbtxtedtTerminal: TcxDBTextEdit;
    lblOperador: TcxLabel;
    dbtxtedtOperador: TcxDBTextEdit;
    lblValorSuprimento: TcxLabel;
    curedtValorSuprimento: TcxCurrencyEdit;
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fReabrir: Boolean;
    function GetReabrir: Boolean;
    procedure SetReabrir(const Value: Boolean);
  public
    { Public declarations }
    procedure SetDataMovimento(const Value: TDateTime);
    function GetDataMovimento: TDateTime;
    function Executa: Boolean;
    property Reabrir: Boolean Read GetReabrir Write SetReabrir;
  end;

var
  dlgAberturaMovimento: TdlgAberturaMovimento;

implementation

{$R *.dfm}

uses
   StrUtils,
   VCL.Funcoes, VCL.Criptografia,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV,
   MasterPDV.View.Autenticacao;

{ TdlgAberturaMovimento }

procedure TdlgAberturaMovimento.btnConfirmarClick(Sender: TObject);
var
  AMensagem: String;
begin
  inherited;

   Reabrir := dmPDV.BuscaMovimento(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger,
                                   dsOperadores.DataSet.FieldByName('id_operador').AsInteger,
                                   edtDataMovimento.Date);

   if Reabrir then
      Informacao('Movimento encerrado')
   else
      begin
//         dglAutenticacao := TdglAutenticacao.Create(Self);
//         try
//            if not dglAutenticacao.AutenticaSupervisor then
//               begin
//                  Informacao('Falha na autenticação do Supervisor!');
//                  Exit;
//               end;
//         finally
//            FreeAndNil(dglAutenticacao);
//         end;
         AMensagem := IfThen(Reabrir, 'ATENÇÃO! O movimento já existe'#13'Confirma abertura do movimento?', 'Confirma abertura do movimento?');

         if Confirmacao(AMensagem) then
            ModalResult := mrOk;
      end;

//      begin
//         if not dmPDV.IsSupervisor then
//            begin
//               dglAutenticacao := TdglAutenticacao.Create(Self);
//               Try
//                  if not dglAutenticacao.AutenticaSupervisor then
//                     begin
//                        Informacao('Falha na autenticação do Supervisor!');
//                        Exit;
//                     end;
//                  Reabrir := True;
//               Finally
//                  dglAutenticacao.Free;
//               End;
//            end
//         else
//            Reabrir := True;
//      end;
//
//   AMensagem := IfThen(Reabrir, 'ATENÇÃO! O movimento já existe'#13'Confirma abertura do movimento?', 'Confirma abertura do movimento?');
//   if Confirmacao(AMensagem) then
//      ModalResult := mrOk;
end;

function TdlgAberturaMovimento.Executa: Boolean;
begin
   Result := ShowModal = mrOk;
end;

function TdlgAberturaMovimento.GetDataMovimento: TDateTime;
begin
   Result := edtDataMovimento.Date;
end;

function TdlgAberturaMovimento.GetReabrir: Boolean;
begin
   Result := fReabrir;
end;

procedure TdlgAberturaMovimento.SetDataMovimento(const Value: TDateTime);
begin
   if Value <> edtDataMovimento.Date then
      edtDataMovimento.Date := Value;
end;

procedure TdlgAberturaMovimento.SetReabrir(const Value: Boolean);
begin
   if Value <> fReabrir then
      fReabrir := Value;
end;

end.
