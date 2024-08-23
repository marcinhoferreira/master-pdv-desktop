unit MasterPDV.View.Sangria;

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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Data.DB, Vcl.StdCtrls, cxButtons, cxCurrencyEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBBotoes, dxSkinOffice2019Colorful,
  dxSkinTheBezier, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TdlgSangria = class(TfrmPrivilegios)
    gboxAreadeTrabalho: TcxGroupBox;
    lblDataMovimento: TcxLabel;
    lblTerminal: TcxLabel;
    dbtxtedtTerminal: TcxDBTextEdit;
    lblOperador: TcxLabel;
    dbtxtedtOperador: TcxDBTextEdit;
    lblValorSangria: TcxLabel;
    btnConfirmar: TcxDBBotaoGravar;
    dsOperadores: TDataSource;
    dsTerminais: TDataSource;
    dsMovimentos: TDataSource;
    dbdtedtDataMovimento: TcxDBDateEdit;
    lblHistorico: TcxLabel;
    dsCentros_Custos_LookUp: TDataSource;
    dsMovimentos_Operacoes: TDataSource;
    dbcuredtValor: TcxDBCurrencyEdit;
    dbtxtedtHistorico: TcxDBTextEdit;
    lblCentroCusto: TcxLabel;
    dblkpcmbCentroCusto: TcxDBLookupComboBox;
    btnCancelar: TcxDBBotaoCancelar;
    lblValorSaldoDisponivel: TcxLabel;
    curredtValorSaldoDisponivel: TcxCurrencyEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fLimite: Double;
    function GetLimite: Double;
    procedure SetLimite(const Value: Double);
  public
    { Public declarations }
    function Executa: Boolean;
    property Limite: Double Read GetLimite Write SetLimite;
  end;

var
  dlgSangria: TdlgSangria;

implementation

uses
   Uni,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao,
   UMasterPDVDataModulePDV,
   MasterPDV.View.Autenticacao;

{$R *.dfm}

{ TdlgSangria }

procedure TdlgSangria.btnConfirmarClick(Sender: TObject);
begin
  inherited;

   With TcxDBBotao(Sender).DataSource Do
      begin
         if DataSet.FieldByName('valor').AsFloat = 0 then
            begin
               Erro('O valor deve ser informado!');
               DataSet.FieldByName('valor').FocusControl;
               Abort;
            end;

         if DataSet.FieldByName('valor').AsFloat > Limite then
            begin
               Erro('O valor informado está acima do saldo disponível!');
               DataSet.FieldByName('valor').FocusControl;
               Abort;
            end;

         if Trim(DataSet.FieldByName('historico').AsString) = '' then
            begin
               Erro('O histórico deve ser informado!');
               DataSet.FieldByName('historico').FocusControl;
               Abort;
            end;

         if Trim(DataSet.FieldByName('id_centro').AsString) = '' then
            begin
               Erro('O centro de custo deve ser informado!');
               DataSet.FieldByName('id_centro').FocusControl;
               Abort;
            end;
      end;

//  if dmPDV.IsSupervisor Then
//     begin
//        If Confirmacao('Confirma sangria?') then
//           ModalResult := mrOk;
//     end
//  Else
//     begin
//        dglAutenticacao := TdglAutenticacao.Create(Self);
//        Try
//           If Not dglAutenticacao.AutenticaSupervisor Then
//              begin
//                 Informacao('Falha na autenticação do Supervisor!');
//                 Exit;
//              end;
//
//              if Confirmacao('Confirma sangria?') then
//                 ModalResult := mrOk;
//        Finally
//           dglAutenticacao.Free;
//        End;
//     end;

   if Confirmacao('Confirma sangria?') then
      ModalResult := mrOk;
end;

function TdlgSangria.Executa: Boolean;
begin
   with dsCentros_Custos_LookUp do
      begin
         DataSet.Close;
         TUniQuery(DataSet).MacroByName('condicao').Value := ' AND natureza = ' + QuotedStr('D');
         DataSet.Open;
      end;
   with dsMovimentos_Operacoes do
      begin
         DataSet.Append;
         // 1-Suprimento / 2-Sangria
         DataSet.FieldByName('id_operacao').AsInteger := 2;
         DataSet.FieldByName('natureza').AsString := 'S';
      end;
   curredtValorSaldoDisponivel.EditValue := fLimite;
   curredtValorSaldoDisponivel.PostEditValue;
   Result := ShowModal = mrOk;
   with dsCentros_Custos_LookUp do
      begin
         DataSet.Close;
         TUniQuery(DataSet).MacroByName('condicao').Value := '';
      end;
end;

procedure TdlgSangria.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
   CanClose := Not (dsMovimentos_Operacoes.State In dsEditModes);
end;

function TdlgSangria.GetLimite: Double;
begin
   Result := fLimite;
end;

procedure TdlgSangria.SetLimite(const Value: Double);
begin
   if Value <> fLimite then
      fLimite := Value;
end;

end.
