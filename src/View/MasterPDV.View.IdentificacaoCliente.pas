unit MasterPDV.View.IdentificacaoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, UMVCInterfaces, UCliente, UClienteController,
  cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, AdvSmoothPanel, cxTextEdit, AdvSmoothLabel,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinOffice2019Colorful,
  dxSkinTheBezier, cxCurrencyEdit;

type
  TdlgIdentificacaoCliente = class(TfrmPadrao, IView)
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    panDocumentoRFB: TAdvSmoothPanel;
    txtedtDocumentoRFB: TcxTextEdit;
    panRazaoSocial: TAdvSmoothPanel;
    txtedtRazaoSocial: TcxTextEdit;
    panEndereco: TAdvSmoothPanel;
    txtedtEnderecoLogradouro: TcxTextEdit;
    lblEnderecoLogradouro: TAdvSmoothLabel;
    txtedtEnderecoNumero: TcxTextEdit;
    lblEnderecoNumero: TAdvSmoothLabel;
    lblEnderecoComplemento: TAdvSmoothLabel;
    txtedtEnderecoComplemento: TcxTextEdit;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    AdvSmoothPanel1: TAdvSmoothPanel;
    txtedtTelefone: TcxTextEdit;
    AdvSmoothPanel2: TAdvSmoothPanel;
    txtedtEmail: TcxTextEdit;
    dsClientes: TDataSource;
    dsPaises_LookUp: TDataSource;
    dsEstados_LookUp: TDataSource;
    dsCidades_LookUp: TDataSource;
    lblEnderecoBairro: TAdvSmoothLabel;
    txtedtEnderecoBairro: TcxTextEdit;
    lblEnderecoCEP: TAdvSmoothLabel;
    txtedtEnderecoCEP: TcxTextEdit;
    lblEnderecoPais: TAdvSmoothLabel;
    lkpcmbEnderecoPais: TcxLookupComboBox;
    lblEnderecoEstado: TAdvSmoothLabel;
    lkpcmbEnderecoEstado: TcxLookupComboBox;
    lblEnderecoCidade: TAdvSmoothLabel;
    lkpcmbEnderecoCidade: TcxLookupComboBox;
    AdvSmoothPanel3: TAdvSmoothPanel;
    curredtPontuacao: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtedtDocumentoRFBExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure txtedtDocumentoRFBPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    fCliente: TCliente;
    fController: IClienteController;
    procedure Initialize;
    procedure SetController(const Value: IClienteController);
  public
    { Public declarations }
    function Executa: Boolean;
    procedure GetDadosCliente(const Value: String);
    function GetId: Integer;
    property Controller: IClienteController Read fController Write SetController;
  end;

var
  dlgIdentificacaoCliente: TdlgIdentificacaoCliente;

implementation

uses
   VCL.Funcoes,
   UClienteModel,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV,
   UDataModuleCadastro, UDataModuleComponentesACBr;

{$R *.dfm}

{ TdlgIdentificacaoCliente }

procedure TdlgIdentificacaoCliente.btnConfirmarClick(Sender: TObject);
begin
  inherited;
   if txtedtDocumentoRFB.EditValue = null then
      begin
         Informacao('Informe o CPF do cliente!');
         txtedtDocumentoRFB.SetFocus;
         Exit
      end;

   if txtedtRazaoSocial.EditValue = null then
      begin
         Informacao('Informe o nome do cliente!');
         txtedtRazaoSocial.SetFocus;
         Exit
      end;

   if Confirmacao('Confirma identificação do cliente?') then
      begin
         with dmCadastro do
            begin
               if qryClientes.IsEmpty then
                  qryClientes.Append
               else
                  qryClientes.Edit;
               qryClientes.FieldByName('cpf').AsString := txtedtDocumentoRFB.EditValue;
               qryClientes.FieldByName('razao').AsString := txtedtRazaoSocial.EditValue;
               qryClientes.FieldByName('fantasia').AsString := txtedtRazaoSocial.EditValue;
               if txtedtEnderecoLogradouro.EditValue <> null then
                  qryClientes.FieldByName('logradouro_entrega').AsString := txtedtEnderecoLogradouro.EditValue;
               if txtedtEnderecoNumero.EditValue <> null then
                  qryClientes.FieldByName('numero_entrega').AsString := txtedtEnderecoNumero.EditValue;
               if txtedtEnderecoComplemento.EditValue <> null then
                  qryClientes.FieldByName('complemento_entrega').AsString := txtedtEnderecoComplemento.EditValue;
               if txtedtEnderecoBairro.EditValue <> null then
                  qryClientes.FieldByName('bairro_entrega').AsString := txtedtEnderecoBairro.EditValue;
               if txtedtEnderecoCEP.EditValue <> null then
                  qryClientes.FieldByName('cep_entrega').AsString := txtedtEnderecoCEP.EditValue;
               if lkpcmbEnderecoPais.EditValue <> null then
                  qryClientes.FieldByName('id_pais_entrega').AsString := lkpcmbEnderecoPais.EditValue;
               if lkpcmbEnderecoEstado.EditValue <> null then
                  qryClientes.FieldByName('id_estado_entrega').AsString := lkpcmbEnderecoEstado.EditValue;
               if lkpcmbEnderecoCidade.EditValue <> null then
                  qryClientes.FieldByName('id_cidade_entrega').AsString := lkpcmbEnderecoCidade.EditValue;
               if txtedtTelefone.EditValue <> null then
                  qryClientes.FieldByName('telefone').AsString := txtedtTelefone.EditValue;
               if txtedtEmail.EditValue <> null then
                  qryClientes.FieldByName('email').AsString := txtedtEmail.EditValue;
               qryClientes.Post;
               fCliente.Id := qryClientes.FieldByName('id_parceiro').AsInteger;
            end;
         ModalResult := mrOk;
      end;
end;

function TdlgIdentificacaoCliente.Executa: Boolean;
begin
   Result := ShowModal = mrOk;
end;

procedure TdlgIdentificacaoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   dsPaises_LookUp.DataSet.Close;
   if dsClientes.DataSet.Active then
      dsClientes.DataSet.Close;
end;

procedure TdlgIdentificacaoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  fCliente := TCliente.Create;
end;

procedure TdlgIdentificacaoCliente.FormDestroy(Sender: TObject);
begin
  inherited;
   fCliente.Destroy;
end;

procedure TdlgIdentificacaoCliente.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
   dsPaises_LookUp.DataSet.Open;
end;

procedure TdlgIdentificacaoCliente.GetDadosCliente(const Value: String);
begin
   With dmCadastro Do
      begin
         qryClientes.Close;
         if Length(Value) = 11 then
            qryClientes.MacroByName('condicao').Value := Format(' AND cpf = %s', [QuotedStr(Value)])
         else if Length(Value) = 14 then
                 qryClientes.MacroByName('condicao').Value := Format(' AND cnpj = %s', [QuotedStr(Value)]);
         qryClientes.Open;

         if not qryClientes.IsEmpty then
            begin
               txtedtRazaoSocial.EditValue := qryClientes.FieldByName('razao').AsString;
               txtedtEnderecoLogradouro.EditValue := qryClientes.FieldByName('logradouro_entrega').AsString;
               txtedtEnderecoNumero.EditValue := qryClientes.FieldByName('numero_entrega').AsString;
               txtedtEnderecoComplemento.EditValue := qryClientes.FieldByName('complemento_entrega').AsString;
               txtedtEnderecoBairro.EditValue := qryClientes.FieldByName('bairro_entrega').AsString;
               txtedtEnderecoCEP.EditValue := qryClientes.FieldByName('cep_entrega').AsString;
               lkpcmbEnderecoPais.EditValue := qryClientes.FieldByName('id_pais_entrega').AsString;
               lkpcmbEnderecoEstado.EditValue := qryClientes.FieldByName('id_estado_entrega').AsString;
               lkpcmbEnderecoCidade.EditValue := qryClientes.FieldByName('id_cidade_entrega').AsString;
               txtedtTelefone.EditValue := qryClientes.FieldByName('telefone').AsString;
               txtedtEmail.EditValue := qryClientes.FieldByName('email').AsString;

               curredtPontuacao.EditValue := dmPDV.GetClientePontuacao(qryClientes.FieldByName('id_parceiro').AsInteger);
               curredtPontuacao.PostEditValue;
            end;
      end;
end;

function TdlgIdentificacaoCliente.GetId: Integer;
begin
   Result := fCliente.Id;
end;

procedure TdlgIdentificacaoCliente.Initialize;
var
   AModel: TClienteModel;
begin
   Controller := TClienteController.Create;
   AModel := TClienteModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TdlgIdentificacaoCliente.SetController(
  const Value: IClienteController);
begin
   if Value <> fController then
      fController := Value;
end;

procedure TdlgIdentificacaoCliente.txtedtDocumentoRFBExit(Sender: TObject);
begin
  inherited;
   if Trim(TcxTextEdit(Sender).EditValue) <> '' then
      GetDadosCliente(Trim(TcxTextEdit(Sender).EditValue));
end;

procedure TdlgIdentificacaoCliente.txtedtDocumentoRFBPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
   Error := not ValidaCPF(DisplayValue);
   if Error then
      ErrorText := 'O número do CPF informado não é válido!';
end;

end.
