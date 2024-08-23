unit MasterPDV.View.Estabelecimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios,
  LealSoftwares.View.Interfaces,
  UEstabelecimentoController,
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
  dxSkinXmas2008Blue, cxGroupBox, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  Data.DB, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxDBBotoes, cxLabel, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  cxDBLabel, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, dxSkinOffice2019Colorful, dxSkinTheBezier, dxDateRanges;

type
  TfrmEstabelecimentos = class(TfrmPrivilegios, IView)
    gboxFerramentas: TcxGroupBox;
    gboxAreadeTrabalho: TcxGroupBox;
    pagEstabelecimentos: TcxPageControl;
    tabVisualiza: TcxTabSheet;
    tabDetalhes: TcxTabSheet;
    dsEstabelecimentos: TDataSource;
    dsPaises_LookUp: TDataSource;
    dsEstados_LookUp: TDataSource;
    dsCidades_LookUp: TDataSource;
    gboxPesquisa: TcxGroupBox;
    dbtvwEstabelecimentos: TcxGridDBTableView;
    grdEstabelecimentosLevel1: TcxGridLevel;
    grdEstabelecimentos: TcxGrid;
    dbtvwEstabelecimentosid_local: TcxGridDBColumn;
    dbtvwEstabelecimentostipo_pessoa: TcxGridDBColumn;
    dbtvwEstabelecimentoscnpj: TcxGridDBColumn;
    dbtvwEstabelecimentosinsc_estadual: TcxGridDBColumn;
    dbtvwEstabelecimentosinsc_est_subst: TcxGridDBColumn;
    dbtvwEstabelecimentosinsc_municipal: TcxGridDBColumn;
    dbtvwEstabelecimentosinsc_suframa: TcxGridDBColumn;
    dbtvwEstabelecimentosrazao: TcxGridDBColumn;
    dbtvwEstabelecimentosfantasia: TcxGridDBColumn;
    dbtvwEstabelecimentoslogradouro: TcxGridDBColumn;
    dbtvwEstabelecimentosnumero: TcxGridDBColumn;
    dbtvwEstabelecimentoscomplemento: TcxGridDBColumn;
    dbtvwEstabelecimentosbairro: TcxGridDBColumn;
    dbtvwEstabelecimentosid_cidade: TcxGridDBColumn;
    dbtvwEstabelecimentosdescricao_cidade: TcxGridDBColumn;
    dbtvwEstabelecimentosid_estado: TcxGridDBColumn;
    dbtvwEstabelecimentossigla_estado: TcxGridDBColumn;
    dbtvwEstabelecimentosid_pais: TcxGridDBColumn;
    dbtvwEstabelecimentosdescricao_pais: TcxGridDBColumn;
    dbtvwEstabelecimentoscep: TcxGridDBColumn;
    dbtvwEstabelecimentostelefone: TcxGridDBColumn;
    dbtvwEstabelecimentosfax: TcxGridDBColumn;
    dbtvwEstabelecimentosemail: TcxGridDBColumn;
    dbtvwEstabelecimentoscontato: TcxGridDBColumn;
    dbtvwEstabelecimentoscnae_fiscal: TcxGridDBColumn;
    dbtvwEstabelecimentosnatureza_juridica: TcxGridDBColumn;
    dbtvwEstabelecimentosregime_tributario: TcxGridDBColumn;
    dbtvwEstabelecimentoslogomarca: TcxGridDBColumn;
    btnIncluir: TcxDBBotao;
    btnAlterar: TcxDBBotao;
    btnExcluir: TcxDBBotao;
    btnGravar: TcxDBBotao;
    btnCancelar: TcxDBBotao;
    btnFechar: TcxBotaoFechar;
    lblPesquisar: TcxLabel;
    txtedtChave: TcxTextEdit;
    cmbCampo: TcxComboBox;
    cmbCriterio: TcxComboBox;
    btnPesquisar: TcxDBBotaoPesquisar;
    lblIdLocal: TcxLabel;
    dblblIdLocal: TcxDBLabel;
    lblCNPJ: TcxLabel;
    lblInscricaoEstadual: TcxLabel;
    dbtxtedtInscricaoEstadual: TcxDBTextEdit;
    dbtxtedtInscricaoMunicipal: TcxDBTextEdit;
    lblInscricaoMunicipal: TcxLabel;
    dbtxtedtInscricaoSUFRAMA: TcxDBTextEdit;
    lblInscricaoSUFRAMA: TcxLabel;
    dbtxtedtRazaoSocial: TcxDBTextEdit;
    lblRazaoSocial: TcxLabel;
    dbtxtedtNomeFantasia: TcxDBTextEdit;
    lblNomeFantasia: TcxLabel;
    pagEstabelecimento: TcxPageControl;
    tabEndereco: TcxTabSheet;
    tabFiscal: TcxTabSheet;
    gboxEndereco: TcxGroupBox;
    lblEnderecoPais: TcxLabel;
    dblkpcmbEnderecoPais: TcxDBLookupComboBox;
    lblEnderecoEstado: TcxLabel;
    dblkpcmbEnderecoEstado: TcxDBLookupComboBox;
    lblEnderecoCidade: TcxLabel;
    dblkpcmbEnderecoCidade: TcxDBLookupComboBox;
    lblEnderecoCEP: TcxLabel;
    dbtxtedtEnderecoCEP: TcxDBTextEdit;
    lblEnderecoLogradouro: TcxLabel;
    dbtxtedtLogradouro: TcxDBTextEdit;
    lblEnderecoNumero: TcxLabel;
    dbtxtedtEnderecoNumero: TcxDBTextEdit;
    dbtxtedtEnderecoComplemento: TcxDBTextEdit;
    lblEnderecoComplemento: TcxLabel;
    lblEnderecoBairro: TcxLabel;
    dbtxtedtEnderecoBairro: TcxDBTextEdit;
    lblAtividadeEconomica: TcxLabel;
    dbbtnedtAtividadeEconomica: TcxDBButtonEdit;
    lblNaturezaJuridica: TcxLabel;
    dbbtnedtNaturezaJuridica: TcxDBButtonEdit;
    lblRegimeTributario: TcxLabel;
    dbcmbRegimeTributario: TcxDBComboBox;
    dbtxtedtCNPJ: TcxDBButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbtxtedtCNPJPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    fController: IEstabelecimentoController;
    procedure Initialize;
    procedure SetController(const Value: IEstabelecimentoController);
  public
    { Public declarations }
    property Controller: IEstabelecimentoController read fController write SetController;
  end;

var
  frmEstabelecimentos: TfrmEstabelecimentos;

implementation

uses
   StrUtils,
   VCL.Funcoes, UEstabelecimentoModel,
   UDataModuleLeiaute,
   UDataModuleCadastro, UDialogoConsultaCNPJ;

{$R *.dfm}

{ TfrmEstabelecimentos }

procedure TfrmEstabelecimentos.btnAlterarClick(Sender: TObject);
begin
  inherited;
   Controller.Editar;
   pagEstabelecimentos.ActivePage := tabDetalhes;
end;

procedure TfrmEstabelecimentos.btnCancelarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Descartar Modificações no Estabelecimento?') then
      begin
         Controller.Cancelar;
         pagEstabelecimentos.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmEstabelecimentos.btnExcluirClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Confirma Exclusão do Estabelecimento?') then
      Controller.Deletar;
end;

procedure TfrmEstabelecimentos.btnGravarClick(Sender: TObject);
begin
  inherited;
   if Confirmacao('Gravar Modificações no Estabelecimento?') then
      begin
         Controller.Gravar;
         pagEstabelecimentos.ActivePage := tabVisualiza;
      end;
end;

procedure TfrmEstabelecimentos.btnIncluirClick(Sender: TObject);
begin
  inherited;
   Controller.Inserir;
   pagEstabelecimentos.ActivePage := tabDetalhes;
end;

procedure TfrmEstabelecimentos.btnPesquisarClick(Sender: TObject);
begin
  inherited;
   if Trim(txtedtChave.Text) <> '' then
      begin
         If cmbCampo.ItemIndex = 0 Then
            begin
               if Not Controller.BuscarPorCNPJ(Trim(txtedtChave.Text)) then
                  Informacao('Nenhum registro foi enontrado!');
            end
         Else If cmbCampo.ItemIndex = 1 Then
                 begin
                    if Not Controller.BuscarPorRazaoSocial(Trim(txtedtChave.Text)) then
                       Informacao('Nenhum registro foi enontrado!');
                 end
         Else
            begin
               if Not Controller.BuscarPorNomeFantasia(Trim(txtedtChave.Text)) then
                  Informacao('Nenhum registro foi enontrado!');
            end;
      end;
end;

procedure TfrmEstabelecimentos.dbtxtedtCNPJPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if AButtonIndex = 0 then
      begin
         dlgConsultaCNPJ := TdlgConsultaCNPJ.Create(Self);
         Try
            If dlgConsultaCNPJ.Executa(VarToStr(TcxDBButtonEdit(Sender).EditValue)) Then
               begin
                  With TcxDBButtonEdit(Sender).DataBinding.DataSource Do
                     begin
                        TcxDBButtonEdit(Sender).DataBinding.Field.Value := dlgConsultaCNPJ.mskedtNumeroCNPJ.EditValue;
                        DataSet.FieldByName('razao').AsString := dlgConsultaCNPJ.txtedtRazaoSocial.EditValue;
                        DataSet.FieldByName('fantasia').AsString := dlgConsultaCNPJ.txtedtNomeFantasia.EditValue;
                        DataSet.FieldByName('logradouro').AsString := dlgConsultaCNPJ.txtedtEnderecoLogradouro.EditValue;
                        DataSet.FieldByName('numero').AsString := dlgConsultaCNPJ.txtedtEnderecoNumero.EditValue;
                        DataSet.FieldByName('complemento').AsString := dlgConsultaCNPJ.txtedtEnderecoComplemento.EditValue;
                        DataSet.FieldByName('bairro').AsString := dlgConsultaCNPJ.txtedtEnderecoBairro.EditValue;
                     end;
               end;
         Finally
            dlgConsultaCNPJ.Free;
         End;
      end;
end;

procedure TfrmEstabelecimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   dsPaises_LookUp.DataSet.Close;
end;

procedure TfrmEstabelecimentos.FormCreate(Sender: TObject);
begin
  inherited;
   pagEstabelecimentos.HideTabs := True;
   pagEstabelecimentos.ActivePage := tabVisualiza;
end;

procedure TfrmEstabelecimentos.FormShow(Sender: TObject);
begin
  inherited;
   Initialize;
   dsPaises_LookUp.DataSet.Open;
end;

procedure TfrmEstabelecimentos.Initialize;
var
   AModel: TEstabelecimentoModel;
begin
   Controller := TEstabelecimentoController.Create;
   AModel:= TEstabelecimentoModel.Create;
   Controller.Model := AModel;
   Controller.View := Self;
   Controller.Initialize;
end;

procedure TfrmEstabelecimentos.SetController(
  const Value: IEstabelecimentoController);
begin
   if Value <> fController then
      fController := Value;
end;

end.
