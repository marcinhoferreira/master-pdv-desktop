unit MasterPDV.View.Recebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, AdvSmoothPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  Vcl.StdCtrls, cxRadioGroup, Vcl.Menus, cxButtons, cxGroupBox, Data.DB,
  cxDBEdit, cxLabel, cxCurrencyEdit, MemDS, DBAccess, Uni, cxImage, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxDBBotoes, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmRecebimento = class(TfrmPrivilegios)
    panPesquisa: TAdvSmoothPanel;
    panIdentificacaoCliente: TAdvSmoothPanel;
    radbtnCPFCNPJ: TcxRadioButton;
    radNome: TcxRadioButton;
    mskedtCPFCNPJ: TcxMaskEdit;
    txtedtNome: TcxTextEdit;
    panDebitos: TAdvSmoothPanel;
    dsCliente: TDataSource;
    dsDebitos: TDataSource;
    lblNomeRazaoSocial: TcxLabel;
    dbtxtedtNomeRazaoSocial: TcxDBTextEdit;
    gboxFoto: TcxGroupBox;
    gboxLimites: TcxGroupBox;
    lblLimiteCredito: TcxLabel;
    dbcurredtLimiteCredito: TcxDBCurrencyEdit;
    lblLimiteUtilizado: TcxLabel;
    dbcurredtLimiteUtilizado: TcxDBCurrencyEdit;
    lblLimiteDisponivel: TcxLabel;
    dbcurredtLimiteDisponivel: TcxDBCurrencyEdit;
    qryCliente: TUniQuery;
    dbimgFoto: TcxDBImage;
    qryClienteid_parceiro: TLargeintField;
    qryClientecodigo: TStringField;
    qryClientetipo_pessoa: TStringField;
    qryClientecpf: TStringField;
    qryClientecnpj: TStringField;
    qryClienterazao: TStringField;
    qryClientefantasia: TStringField;
    qryClientetelefone: TStringField;
    qryClientetelefone1: TStringField;
    qryClientecelular: TStringField;
    qryClientecelular1: TStringField;
    qryClienteemail: TStringField;
    qryClientelimite_credito: TFloatField;
    qryClientelimite_credito_utilizado: TFloatField;
    qryClienteid_classificacao: TWordField;
    qryClientedescricao_classificacao: TStringField;
    qryClientefoto: TBlobField;
    qryClientesituacao: TStringField;
    qryClientelimit_credito_disponivel: TFloatField;
    lblCPF: TcxLabel;
    dbtxtedtCPF: TcxDBTextEdit;
    dbtxtedtCNPJ: TcxDBTextEdit;
    lblCNPJ: TcxLabel;
    qryDebitos: TUniQuery;
    qryDebitosselecionado: TStringField;
    qryDebitosid_duplicata: TLargeintField;
    qryDebitosid_local: TWordField;
    qryDebitosdata_vencimento: TDateTimeField;
    qryDebitosid_parceiro: TLargeintField;
    qryDebitosdocumento: TStringField;
    qryDebitosnosso_numero: TStringField;
    qryDebitosdata_emissao: TDateTimeField;
    qryDebitosvalor: TFloatField;
    qryDebitosatraso: TLargeintField;
    qryDebitoscobrar_juros: TStringField;
    qryDebitosjuros: TFloatField;
    qryDebitosjuros_calculado: TFloatField;
    qryDebitosjuros_cobrado: TFloatField;
    qryDebitoscobrar_multa: TStringField;
    qryDebitosmulta: TFloatField;
    qryDebitosmulta_calculada: TFloatField;
    qryDebitosmulta_cobrada: TFloatField;
    qryDebitoscartorio: TFloatField;
    qryDebitosacrescimo: TFloatField;
    qryDebitosdesconto: TFloatField;
    qryDebitosdata_validade: TDateTimeField;
    qryDebitosvalor_cobrado: TFloatField;
    qryDebitosvalor_baixado: TFloatField;
    qryDebitosdata_baixa: TDateTimeField;
    qryDebitosvalor_receber: TFloatField;
    dbtabvwDebitos: TcxGridDBTableView;
    grdDebitosLevel1: TcxGridLevel;
    grdDebitos: TcxGrid;
    dbtabvwDebitosselecionado: TcxGridDBColumn;
    dbtabvwDebitosid_duplicata: TcxGridDBColumn;
    dbtabvwDebitosid_local: TcxGridDBColumn;
    dbtabvwDebitosdata_vencimento: TcxGridDBColumn;
    dbtabvwDebitosid_parceiro: TcxGridDBColumn;
    dbtabvwDebitosdocumento: TcxGridDBColumn;
    dbtabvwDebitosnosso_numero: TcxGridDBColumn;
    dbtabvwDebitosdata_emissao: TcxGridDBColumn;
    dbtabvwDebitosvalor: TcxGridDBColumn;
    dbtabvwDebitosatraso: TcxGridDBColumn;
    dbtabvwDebitoscobrar_juros: TcxGridDBColumn;
    dbtabvwDebitosjuros: TcxGridDBColumn;
    dbtabvwDebitosjuros_calculado: TcxGridDBColumn;
    dbtabvwDebitosjuros_cobrado: TcxGridDBColumn;
    dbtabvwDebitoscobrar_multa: TcxGridDBColumn;
    dbtabvwDebitosmulta: TcxGridDBColumn;
    dbtabvwDebitosmulta_calculada: TcxGridDBColumn;
    dbtabvwDebitosmulta_cobrada: TcxGridDBColumn;
    dbtabvwDebitoscartorio: TcxGridDBColumn;
    dbtabvwDebitosacrescimo: TcxGridDBColumn;
    dbtabvwDebitosdesconto: TcxGridDBColumn;
    dbtabvwDebitosdata_validade: TcxGridDBColumn;
    dbtabvwDebitosvalor_cobrado: TcxGridDBColumn;
    dbtabvwDebitosvalor_baixado: TcxGridDBColumn;
    dbtabvwDebitosdata_baixa: TcxGridDBColumn;
    dbtabvwDebitosvalor_receber: TcxGridDBColumn;
    btnReceber: TcxDBBotao;
    procedure FormShow(Sender: TObject);
    procedure dsClienteStateChange(Sender: TObject);
    procedure mskedtCPFCNPJEnter(Sender: TObject);
    procedure txtedtNomeEnter(Sender: TObject);
    procedure radbtnCPFCNPJClick(Sender: TObject);
    procedure radNomeClick(Sender: TObject);
    procedure mskedtCPFCNPJExit(Sender: TObject);
    procedure txtedtNomeExit(Sender: TObject);
    procedure mskedtCPFCNPJKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtedtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsDebitosStateChange(Sender: TObject);
    procedure txtedtNomePropertiesChange(Sender: TObject);
    procedure mskedtCPFCNPJPropertiesChange(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
  private
    { Private declarations }
    function Totaliza(ACampo: TField): Double;
  public
    { Public declarations }
  end;

var
  frmRecebimento: TfrmRecebimento;

implementation

uses
   StrUtils,
   VCL.Funcoes,
   MasterPDV.View.ListaClientes,
   UDataModuleConexao, UDataModuleLeiaute, MasterPDV.View.RecebimentoSubTotal;

{$R *.dfm}

{ TfrmRecebimento }

procedure TfrmRecebimento.btnReceberClick(Sender: TObject);
var
   ABookMark: TBookMark;
begin
  inherited;
   With TcxDBBotao(Sender).DataSource Do
      begin
         ABookMark := DataSet.GetBookMark;
         DataSet.DisableControls;
         if Not DataSet.Locate('selecionado', 'S', []) then
            begin
               DataSet.GotoBookMark(ABookMark);
               DataSet.FreeBookMark(ABookMark);
               DataSet.EnableControls;
               Informacao('Selecione o(s) débito(s) a receber!');
               Exit;
            end;
         DataSet.GotoBookMark(ABookMark);
         DataSet.FreeBookMark(ABookMark);
         DataSet.EnableControls;

         frmRecebimentoSubTotal := TfrmRecebimentoSubTotal.Create(Self);
         Try
            frmRecebimentoSubTotal.dsDebitos.DataSet := DataSet;
            frmRecebimentoSubTotal.ValorLiquido := Totaliza(DataSet.FieldByName('valor_receber'));
            frmRecebimentoSubTotal.ShowModal;
            DataSet.DisableControls;
            DataSet.Close;
            DataSet.Open;
            DataSet.EnableControls;
         Finally
            frmRecebimentoSubTotal.free;
         End;
      end;
end;

procedure TfrmRecebimento.dsClienteStateChange(Sender: TObject);
begin
  inherited;
   With TDataSource(Sender) Do
      begin
         panIdentificacaoCliente.Visible := (State <> dsInactive) And Not DataSet.IsEmpty;
         lblNomeRazaoSocial.Caption := IfThen(DataSet.FieldByName('tipo_pessoa').AsString = 'F', 'Nome', 'Razão Social') + ':';
         lblCPF.Visible := DataSet.FieldByName('tipo_pessoa').AsString = 'F';
         dbtxtedtCPF.Visible := DataSet.FieldByName('tipo_pessoa').AsString = 'F';
         lblCNPJ.Visible := DataSet.FieldByName('tipo_pessoa').AsString = 'J';
         dbtxtedtCNPJ.Visible := DataSet.FieldByName('tipo_pessoa').AsString = 'J';
      end;
end;

procedure TfrmRecebimento.dsDebitosStateChange(Sender: TObject);
begin
  inherited;
   With TDataSource(Sender) Do
      panDebitos.Visible := (State <> dsInactive) And Not DataSet.IsEmpty;
end;

procedure TfrmRecebimento.FormShow(Sender: TObject);
begin
  inherited;
   radbtnCPFCNPJClick(radbtnCPFCNPJ);
   txtedtNome.Clear;
   WindowState := wsMaximized;
end;

procedure TfrmRecebimento.mskedtCPFCNPJEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
   TcxMaskEdit(Sender).Text := '';
end;

procedure TfrmRecebimento.mskedtCPFCNPJExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TfrmRecebimento.mskedtCPFCNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
      begin
         TcxMaskEdit(Sender).PostEditValue;
         if TcxMaskEdit(Sender).EditValue <> Null then
            begin
               dlgListaClientes := TdlgListaClientes.Create(Self);
               Try
                  if dlgListaClientes.BuscaPorCPF(TcxMaskEdit(Sender).EditValue) then
                     begin
                        if dsDebitos.DataSet.Active then
                           dsDebitos.DataSet.Close;
                        if dsCliente.DataSet.Active then
                           dsCliente.DataSet.Close;
                        TUniQuery(dsCliente.DataSet).ParamByName('id_cliente').Value := dlgListaClientes.Id;
                        dsCliente.DataSet.Open;
                        TUniQuery(dsDebitos.DataSet).ParamByName('id_cliente').Value := dlgListaClientes.Id;
                        dsDebitos.DataSet.Open;
                     end;
               Finally
                  dlgListaClientes.Free;
               End;
            end;
      end;
   if Key = VK_ESCAPE then
      Close;
end;

procedure TfrmRecebimento.mskedtCPFCNPJPropertiesChange(Sender: TObject);
begin
  inherited;
   if TcxMaskEdit(Sender).Text = '' then
      begin
         if dsDebitos.DataSet.Active then
            dsDebitos.DataSet.Close;
         if dsCliente.DataSet.Active then
            dsCliente.DataSet.Close;
      end;
end;

procedure TfrmRecebimento.radbtnCPFCNPJClick(Sender: TObject);
begin
  inherited;
   mskedtCPFCNPJ.Enabled := TcxRadioButton(Sender).Checked;
   txtedtNome.Enabled := Not TcxRadioButton(Sender).Checked;
   if mskedtCPFCNPJ.Enabled then
      FocusControl(mskedtCPFCNPJ);
end;

procedure TfrmRecebimento.radNomeClick(Sender: TObject);
begin
  inherited;
   mskedtCPFCNPJ.Enabled := Not TcxRadioButton(Sender).Checked;
   txtedtNome.Enabled := TcxRadioButton(Sender).Checked;
   if txtedtNome.Enabled then
      FocusControl(txtedtNome);
end;

function TfrmRecebimento.Totaliza(ACampo: TField): Double;
var
   ABookMark: TBookMark;
   AResultado: Double;
begin
   ACampo.DataSet.DisableControls;
   ABookMark := ACampo.DataSet.GetBookMark;
   ACampo.DataSet.First;
   AResultado := 0;
   while Not ACampo.DataSet.Eof do
      begin
         If ACampo.DataSet.FieldByName('selecionado').AsString = 'S' Then
            AResultado := AResultado + ACampo.AsFloat;
         ACampo.DataSet.Next;
      end;
   ACampo.DataSet.GotoBookMark(ABookMark);
   ACampo.DataSet.FreeBookMark(ABookMark);
   ACampo.DataSet.EnableControls;
   Result := AResultado;
end;

procedure TfrmRecebimento.txtedtNomeEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
   TcxTextEdit(Sender).Text := '';
end;

procedure TfrmRecebimento.txtedtNomeExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TfrmRecebimento.txtedtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
      begin
         TcxTextEdit(Sender).PostEditValue;
         if TcxTextEdit(Sender).EditValue <> Null then
            begin
               dlgListaClientes := TdlgListaClientes.Create(Self);
               Try
                  if dlgListaClientes.BuscaPorNome(TcxTextEdit(Sender).EditValue) then
                     begin
                        if dsDebitos.DataSet.Active then
                           dsDebitos.DataSet.Close;
                        if dsCliente.DataSet.Active then
                           dsCliente.DataSet.Close;
                        TUniQuery(dsCliente.DataSet).ParamByName('id_cliente').Value := dlgListaClientes.Id;
                        dsCliente.DataSet.Open;
                        TUniQuery(dsDebitos.DataSet).ParamByName('id_cliente').Value := dlgListaClientes.Id;
                        dsDebitos.DataSet.Open;
                     end;
               Finally
                  dlgListaClientes.Free;
               End;
            end;
      end;
   if Key = VK_ESCAPE then
      Close;
end;

procedure TfrmRecebimento.txtedtNomePropertiesChange(Sender: TObject);
begin
  inherited;
   if TcxTextEdit(Sender).Text = '' then
      begin
         if dsDebitos.DataSet.Active then
            dsDebitos.DataSet.Close;
         if dsCliente.DataSet.Active then
            dsCliente.DataSet.Close;
      end;
end;

end.
