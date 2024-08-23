unit MasterPDV.View.RecebimentoSubTotal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, Data.DB, Datasnap.DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, cxCurrencyEdit, cxLabel,
  Vcl.StdCtrls, cxButtons, cxGroupBox, dxSkinOffice2019Colorful, dxSkinTheBezier,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TfrmRecebimentoSubTotal = class(TfrmPadrao)
    dsRecebimentos: TDataSource;
    dsEstabelecimentos: TDataSource;
    dsTerminais: TDataSource;
    dsTerminais_Modalidades: TDataSource;
    dsOperadores: TDataSource;
    dsMovimentos: TDataSource;
    dsFormas_Recebimentos: TDataSource;
    cdsRecebimentos: TClientDataSet;
    cdsRecebimentosid_transacao: TIntegerField;
    cdsRecebimentosvalor_recebido: TFloatField;
    cdsRecebimentosvalor_troco: TFloatField;
    cdsRecebimentossequencia: TSmallintField;
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    btnTipoRecebimento01: TcxButton;
    btnTipoRecebimento06: TcxButton;
    btnTipoRecebimento07: TcxButton;
    btnTipoRecebimento09: TcxButton;
    btnTipoRecebimento08: TcxButton;
    btnTipoRecebimento10: TcxButton;
    btnTipoRecebimento02: TcxButton;
    btnTipoRecebimento04: TcxButton;
    btnTipoRecebimento03: TcxButton;
    btnTipoRecebimento05: TcxButton;
    gboxSubtotal: TcxGroupBox;
    gboxValorLiquido: TcxGroupBox;
    lblValorLiquido: TcxLabel;
    gboxValorRecebido: TcxGroupBox;
    lblValorRecebido: TcxLabel;
    gboxValorTroco: TcxGroupBox;
    lblValorReceber: TcxLabel;
    curredtValorLiquido: TcxCurrencyEdit;
    curredtValorRecebido: TcxCurrencyEdit;
    curredtValorReceber: TcxCurrencyEdit;
    dsDebitos: TDataSource;
    dsDebitos_Baixas: TDataSource;
    cdsRecebimentosdescricao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTipoRecebimento01Click(Sender: TObject);
    procedure cdsRecebimentosAfterPost(DataSet: TDataSet);
    procedure cdsRecebimentosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    fValorLiquido: Double;
    fValorReceber: Double;
    fValorRecebido: Double;
    fValorTroco: Double;
    procedure SetValorLiquido(const Value: Double);
    procedure CarregaTiposDeRecebimento;
    function GetValorLiquido: Double;
    function GetValorReceber: Double;
    function GetValorRecebido: Double;
    function GetValorTroco: Double;
    procedure SetValorRecebido(const Value: Double);
    procedure SetValorReceber(const Value: Double);
    procedure SetValorTroco(const Value: Double);
    procedure SetValoRecebido(const Value: Double);
    procedure AtualizaValores;
    procedure SelecionaFormaDeRecebimento(AId_Terminal: Integer; AId_Botao: SmallInt);
    procedure ExecutaRecebimento(AID_Forma_Recebimento: Integer; AValorPadrao: Double = 0; AValorMaximo: Double = 0);
  public
    { Public declarations }
    procedure ExecutaBaixaDuplicatas;
    property ValorLiquido: Double Read GetValorLiquido Write SetValorLiquido;
    property ValorRecebido: Double Read GetValorRecebido Write SetValorRecebido;
    property ValorReceber: Double Read GetValorReceber Write SetValorReceber;
    property ValorTroco: Double Read GetValorTroco Write SetValorTroco;
  end;

var
  frmRecebimentoSubTotal: TfrmRecebimentoSubTotal;

implementation

uses
   StrUtils, Math, Uni,
   VCL.Funcoes,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV,
   MasterPDV.View.RecebimentoValor,
   MasterPDV.View.FormasRecebimentos, MasterPDV.View.Imprimir,
   MasterPDV.View.Obrigado;

{$R *.dfm}

{ TfrmRecebimentoSubTotal }

procedure TfrmRecebimentoSubTotal.AtualizaValores;
begin
   curredtValorLiquido.Value := ValorLiquido;
   curredtValorRecebido.Value := ValorRecebido;
   if (ValorTroco >= 0) And (ValorReceber <= 0) then
      begin
         lblValorReceber.Caption := 'Troco';
         curredtValorReceber.Value := ValorTroco;
         curredtValorReceber.Style.Color := clBlue;
         curredtValorReceber.Style.TextColor := clWhite;
      end
   Else
      begin
         lblValorReceber.Caption := 'Valor a receber';
         curredtValorReceber.Value := ValorReceber;
         curredtValorReceber.Style.Color := clRed;
         curredtValorReceber.Style.TextColor := clWhite;
      end;
end;

procedure TfrmRecebimentoSubTotal.btnTipoRecebimento01Click(Sender: TObject);
var
   ASequenciaAutenticacao: Integer;
   AContador: Byte;
   ACancela: Boolean;
   ATextoAutentica: string;
begin
  inherited;
   if ValorReceber > 0 then
      begin
         SelecionaFormaDeRecebimento(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger,
                                     TcxButton(Sender).Tag);
         if ValorReceber <= 0 then
            begin
               dsDebitos.DataSet.First;
               while Not dsDebitos.DataSet.Eof do
                  begin
                     if dsDebitos.DataSet.FieldByName('selecionado').AsString = 'S' then
                        begin
                           if dsTerminais.DataSet.FieldByName('autenticar_documento').AsString = 'S' then
                              begin
                                 AContador := 1;
                                 ACancela := False;
                                 while (AContador <= 2) and not ACancela do
                                    begin
                                       if dlgImprimir.Executa(Format('Autenticação - %dª Via', [AContador])) then
                                          begin
                                             if AContador = 1 then
                                                ASequenciaAutenticacao := dmPDV.GetSequenciaAutenticacao(dsTerminais.DataSet.FieldByName('id_terminal').AsInteger);
                                             ATextoAutentica := 'AUT.: ';
                                             ATextoAutentica := ATextoAutentica +
                                                                StrZero(IntToStr(dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger), 4);
                                             ATextoAutentica := ATextoAutentica +
                                                                FormatDateTime('yyyymmdd', dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime);
                                             ATextoAutentica := ATextoAutentica +
                                                                StrZero(IntToStr(ASequenciaAutenticacao), 6);
                                             ATextoAutentica := ATextoAutentica +
                                                                LeftStr(dsDebitos.DataSet.FieldByName('documento').AsString, 6);
                                             ATextoAutentica := ATextoAutentica +
                                                                FormatFloat('R$ ***,**0.00', dsDebitos.DataSet.FieldByName('valor_receber').AsFloat);
                                             ATextoAutentica := ATextoAutentica +
                                                                StrZero(IntToStr(dsTerminais.DataSet.FieldByName('numero').AsInteger), 3);
                                             dlgImprimir.Autentica(ATextoAutentica, dsTerminais.DataSet.FieldByName('autenticador_id_modelo').AsInteger);
                                             Inc(AContador);
                                          end
                                       else
                                          ACancela := True;
                                    end;
                              end;
                        end;
                     dsDebitos.DataSet.Next;
                  end;
               frmObrigado.SetTituloValorLiquido('Total das duplicatas');
               frmObrigado.SetValorLiquido(ValorLiquido);
               frmObrigado.SetTituloValorRecebido('Valor recebido');
               frmObrigado.SetValorRecebido(ValorRecebido);
               frmObrigado.SetTituloValorTroco('Troco');
               frmObrigado.SetValorTroco(ValorTroco);
               frmObrigado.ExibeFormulario;
               //
               ExecutaBaixaDuplicatas;
               //
               frmObrigado.OcultaFormulario;
               //
               Close;
            end;
      end;
end;

procedure TfrmRecebimentoSubTotal.CarregaTiposDeRecebimento;
var
   I: Integer;
begin
   With dsTerminais_Modalidades Do
      begin
         DataSet.Open;
         for I := 0 to gboxFerramentas.ControlCount - 1 do
            begin
               if gboxFerramentas.Controls[I].ClassType = TcxButton then
                  begin
                     TcxButton(gboxFerramentas.Controls[I]).Enabled := (TcxButton(gboxFerramentas.Controls[I]).Tag <> 0) And
                                                                       DataSet.Locate('id_botao', TcxButton(gboxFerramentas.Controls[I]).Tag, []);
                     if TcxButton(gboxFerramentas.Controls[I]).Enabled then
                        TcxButton(gboxFerramentas.Controls[I]).Caption := DataSet.FieldByName('texto_botao').AsString;
                  end;
            end;
         DataSet.Close;
      end;
end;

procedure TfrmRecebimentoSubTotal.cdsRecebimentosAfterPost(DataSet: TDataSet);
begin
  inherited;
   ValorRecebido := ValorRecebido + DataSet.FieldByName('valor_recebido').AsFloat;
   ValorReceber := ValorReceber - ValorRecebido;
   ValorTroco := ValorTroco + DataSet.FieldByName('valor_troco').AsFloat;
end;

procedure TfrmRecebimentoSubTotal.cdsRecebimentosNewRecord(DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('valor_recebido').AsFloat := 0;
   DataSet.FieldByName('valor_troco').AsFloat := 0
end;

procedure TfrmRecebimentoSubTotal.ExecutaBaixaDuplicatas;
var
   APercentual: Double;
   ABookMark: TBookMark;
begin
   With dsDebitos Do
      begin
         ABookMark := DataSet.GetBookMark;
         DataSet.DisableControls;
         DataSet.First;
         while Not DataSet.Eof do
            begin
               if DataSet.FieldByName('selecionado').AsString = 'S' then
                  begin
                     APercentual := DataSet.FieldByName('valor_receber').AsFloat * 100 / ValorLiquido;
                     dsDebitos_Baixas.DataSet.Close;
                     TUniQuery(dsDebitos_Baixas.DataSet).ParamByName('id_duplicata').Value := DataSet.FieldByName('id_duplicata').AsInteger;
                     dsDebitos_Baixas.DataSet.Open;
                     cdsRecebimentos.First;
                     while Not cdsRecebimentos.Eof do
                        begin
                           dsDebitos_Baixas.DataSet.Append;
                           dsDebitos_Baixas.DataSet.FieldByName('data').AsDateTime := dsMovimentos.DataSet.FieldByName('data_movimento').AsDateTime;
                           dsDebitos_Baixas.DataSet.FieldByName('id_transacao').AsInteger := cdsRecebimentos.FieldByName('id_transacao').AsInteger;
                           dsDebitos_Baixas.DataSet.FieldByName('id_terminal').AsInteger := dsMovimentos.DataSet.FieldByName('id_terminal').AsInteger;
                           dsDebitos_Baixas.DataSet.FieldByName('id_operador').AsInteger := dsMovimentos.DataSet.FieldByName('id_operador').AsInteger;
                           if Not dsTerminais.DataSet.FieldByName('id_conta').IsNull then
                              dsDebitos_Baixas.DataSet.FieldByName('id_conta').AsInteger := dsTerminais.DataSet.FieldByName('id_conta').AsInteger;
                           dsDebitos_Baixas.DataSet.FieldByName('historico').AsString := 'RECEBIMENTO NO CAIXA - ' +
                                                                                         cdsRecebimentos.FieldByName('descricao').AsString;
                           dsDebitos_Baixas.DataSet.FieldByName('valor').AsFloat := RoundTo(cdsRecebimentos.FieldByName('valor_recebido').AsFloat * APercentual / 100, -2);
                           dsDebitos_Baixas.DataSet.Post;
                           cdsRecebimentos.Next;
                        end;
                     dsDebitos_Baixas.DataSet.Close;
                     dmPDV.usqlAtualizaBaixaDuplicatas.ParamByName('id_duplicata').Value := DataSet.FieldByName('id_duplicata').AsInteger;
                     dmPDV.usqlAtualizaBaixaDuplicatas.Execute;
                  end;
               DataSet.Next;
            end;
         DataSet.GotoBookMark(ABookMark);
         DataSet.FreeBookMark(ABookMark);
         DataSet.EnableControls;
      end;
end;

procedure TfrmRecebimentoSubTotal.ExecutaRecebimento(
  AID_Forma_Recebimento: Integer; AValorPadrao, AValorMaximo: Double);
begin
   dlgRecebimentoValor := TdlgRecebimentoValor.Create(Self);
   Try
      If dlgRecebimentoValor.Executa(dsFormas_Recebimentos.DataSet.FieldByName('descricao').AsString,
                                     AValorPadrao,
                                     AValorMaximo) Then
         With dsRecebimentos Do
            begin
                DataSet.Append;
                DataSet.FieldByName('id_transacao').AsInteger := AID_Forma_Recebimento;
                DataSet.FieldByName('descricao').AsString := dsFormas_Recebimentos.DataSet.FieldByName('descricao').AsString;
                DataSet.FieldByName('valor_recebido').AsFloat := dlgRecebimentoValor.curredtValor.Value;
                if DataSet.FieldByName('valor_recebido').AsFloat >= ValorReceber then
                   DataSet.FieldByName('valor_troco').AsFloat := DataSet.FieldByName('valor_recebido').AsFloat - ValorReceber
                Else
                   DataSet.FieldByName('valor_troco').AsFloat := 0;
                DataSet.Post;
                AtualizaValores;
            end;
   Finally
      dlgRecebimentoValor.Free;
   End;
end;

procedure TfrmRecebimentoSubTotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   dlgImprimir.Free;
   dsRecebimentos.DataSet.Close;
end;

procedure TfrmRecebimentoSubTotal.FormShow(Sender: TObject);
begin
  inherited;
   dlgImprimir := TdlgImprimir.Create(Self);
   CarregaTiposDeRecebimento;
   if dsRecebimentos.DataSet.Active then
      dsRecebimentos.DataSet.Close;
   TClientDataSet(dsRecebimentos.DataSet).CreateDataSet;
   ValorReceber := ValorLiquido;
   ValorRecebido := 0;
   ValorTroco := 0;
   AtualizaValores;
   WindowState := wsMaximized;
end;

function TfrmRecebimentoSubTotal.GetValorLiquido: Double;
begin
   Result := fValorLiquido;
end;

function TfrmRecebimentoSubTotal.GetValorReceber: Double;
begin
   Result := fValorReceber;
end;

function TfrmRecebimentoSubTotal.GetValorRecebido: Double;
begin
   Result := fValorRecebido;
end;

function TfrmRecebimentoSubTotal.GetValorTroco: Double;
begin
   Result := fValorTroco;
end;

procedure TfrmRecebimentoSubTotal.SelecionaFormaDeRecebimento(
  AId_Terminal: Integer; AId_Botao: SmallInt);
begin
   dlgFormasRecebimentos := TdlgFormasRecebimentos.Create(Self);
   Try
      If dlgFormasRecebimentos.Seleciona(AId_Terminal, AId_Botao) Then
         if dsFormas_Recebimentos.DataSet.FieldByName('troco').AsString = 'S' then
            ExecutaRecebimento(dsFormas_Recebimentos.DataSet.FieldByName('id_transacao').AsInteger)
         Else
            ExecutaRecebimento(dsFormas_Recebimentos.DataSet.FieldByName('id_transacao').AsInteger,
                               ValorReceber);
   Finally
      dlgFormasRecebimentos.Free;
   End;
end;

procedure TfrmRecebimentoSubTotal.SetValoRecebido(const Value: Double);
begin
   if Value <> fValorRecebido then
      fValorRecebido := Value;
end;

procedure TfrmRecebimentoSubTotal.SetValorLiquido(const Value: Double);
begin
   if Value <> fValorLiquido then
      fValorLiquido := Value;
end;

procedure TfrmRecebimentoSubTotal.SetValorReceber(const Value: Double);
begin
   if Value <> fValorReceber then
      fValorReceber := Value;
end;

procedure TfrmRecebimentoSubTotal.SetValorRecebido(const Value: Double);
begin
   if Value <> fValorRecebido then
      fValorRecebido := Value;
end;

procedure TfrmRecebimentoSubTotal.SetValorTroco(const Value: Double);
begin
   if Value <> fValorTroco then
      fValorTroco := Value;
end;

end.
