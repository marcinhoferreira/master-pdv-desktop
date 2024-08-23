unit MasterPDV.View.Suprimento;

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
  dxSkinXmas2008Blue, Vcl.Menus, Data.DB, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxCurrencyEdit, cxLabel,
  cxGroupBox, cxDBBotoes, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier;

type
  TdlgSuprimento = class(TfrmPrivilegios)
    gboxAreadeTrabalho: TcxGroupBox;
    lblDataMovimento: TcxLabel;
    lblTerminal: TcxLabel;
    dbtxtedtTerminal: TcxDBTextEdit;
    lblOperador: TcxLabel;
    dbtxtedtOperador: TcxDBTextEdit;
    lblValorSuprimento: TcxLabel;
    dbdtedtDataMovimento: TcxDBDateEdit;
    lblHistorico: TcxLabel;
    dsOperadores: TDataSource;
    dsTerminais: TDataSource;
    dsMovimentos: TDataSource;
    dsMovimentos_Operacoes: TDataSource;
    dsCentros_Custos_LookUp: TDataSource;
    btnConfirmar: TcxDBBotaoGravar;
    curedtValor: TcxDBCurrencyEdit;
    txtedtHistorico: TcxDBTextEdit;
    lblCentroCusto: TcxLabel;
    dblkpcmbCentroCusto: TcxDBLookupComboBox;
    btnCancelar: TcxDBBotaoCancelar;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnConfirmarBeforeAction(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Executa: Boolean;
  end;

var
  dlgSuprimento: TdlgSuprimento;

implementation

uses
   Uni,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UDataModuleConexao,
   UMasterPDVDataModulePDV,
   MasterPDV.View.Autenticacao;

{$R *.dfm}

{ TdlgSuprimento }

procedure TdlgSuprimento.btnConfirmarBeforeAction(Sender: TObject);
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

         if Not Confirmacao('Confirma suprimento?') then
            Abort;
      end;
end;

procedure TdlgSuprimento.btnConfirmarClick(Sender: TObject);
begin
  inherited;
//  if dmPDV.IsSupervisor Then
//     begin
//        If Confirmacao('Confirma suprimento?') then
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
//              if Confirmacao('Confirma suprimento?') then
//                 ModalResult := mrOk;
//        Finally
//           dglAutenticacao.Free;
//        End;
//     end;
end;

function TdlgSuprimento.Executa: Boolean;
begin
   dsCentros_Custos_LookUp.DataSet.Close;
   TUniQuery(dsCentros_Custos_LookUp.DataSet).MacroByName('condicao').Value := ' AND natureza = ' + QuotedStr('C');
   dsCentros_Custos_LookUp.DataSet.Open;
   With dsMovimentos_Operacoes Do
      begin
         DataSet.Append;
         DataSet.FieldByName('id_operacao').AsInteger := 1;
         DataSet.FieldByName('natureza').AsString := 'E';
      end;
   Result := ShowModal = mrOk;
   dsCentros_Custos_LookUp.DataSet.Close;
   TUniQuery(dsCentros_Custos_LookUp.DataSet).MacroByName('condicao').Value := '';
end;

end.
