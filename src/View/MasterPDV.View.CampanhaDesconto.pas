unit MasterPDV.View.CampanhaDesconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, Data.DB, Vcl.StdCtrls, cxTextEdit,
  cxCurrencyEdit, cxLabel, Vcl.Menus, cxButtons;

type
  TdlgCampanhaDesconto = class(TfrmPadrao)
    gboxTitulo: TcxGroupBox;
    gboxAreaDeTrabalho: TcxGroupBox;
    gboxBarraDeFerramentas: TcxGroupBox;
    dsCampanhas: TDataSource;
    lblCodigo: TcxLabel;
    lblTitulo: TcxLabel;
    curredtCodigo: TcxCurrencyEdit;
    lblPromotor: TcxLabel;
    txtedtPromotor: TcxTextEdit;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure curredtCodigoEnter(Sender: TObject);
    procedure curredtCodigoExit(Sender: TObject);
    procedure curredtCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    fPercentualDesconto: Double;
  public
    { Public declarations }
    function Executa: Boolean;
    function GetPercentualDesconto: Double;
  end;

var
  dlgCampanhaDesconto: TdlgCampanhaDesconto;

implementation

uses
   VCL.Funcoes,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV;

{$R *.dfm}

{ TdlgCampanhaDesconto }

procedure TdlgCampanhaDesconto.btnConfirmarClick(Sender: TObject);
begin
  inherited;
   if curredtCodigo.EditValue = null then
      begin
         Informacao('O código do cupom deve ser preenchido!');
         curredtCodigo.SetFocus;
         Exit;
      end;
   if txtedtPromotor.EditValue = null then
      begin
         Informacao('O nome do(a) promotor(a) deve ser preenchido!');
         txtedtPromotor.SetFocus;
         Exit;
      end;
    if Confirmacao('Confirma desconto na venda?') then
       begin
          if not dmPDV.GetPessoaNome(txtedtPromotor.EditValue) then
             begin
                dmPDV.qryPessoas.Append;
                dmPDV.qryPessoas.FieldByName('nome').AsString := txtedtPromotor.EditValue;
                dmPDV.qryPessoas.Post;
             end;
          if not dmPDV.GetPromotorPessoa(dmPDV.qryPessoas.FieldByName('id_pessoa').AsInteger) then
             begin
                dmPDV.qryPromotores.Append;
                dmPDV.qryPromotores.FieldByName('id_pessoa').AsInteger := dmPDV.qryPessoas.FieldByName('id_pessoa').AsInteger;
                dmPDV.qryPromotores.FieldByName('comissao').AsFloat := dsCampanhas.DataSet.FieldByName('percentual_comissao').AsFloat;
                dmPDV.qryPromotores.FieldByName('ativo').AsString := 'S';
                dmPDV.qryPromotores.Post;
             end;
          dmPDV.qryCampanhas_Cupons.Append;
          dmPDV.qryCampanhas_Cupons.FieldByName('id_campanha').AsInteger := dsCampanhas.DataSet.FieldByName('id_campanha').AsInteger;
          dmPDV.qryCampanhas_Cupons.FieldByName('codigo').AsString := StrZero(curredtCodigo.EditValue, 4);
          dmPDV.qryCampanhas_Cupons.FieldByName('id_promotor').AsInteger := dmPDV.qryPromotores.FieldByName('id_promotor').AsInteger;
          dmPDV.qryCampanhas_Cupons.FieldByName('id_status').AsInteger := 2;
          dmPDV.qryCampanhas_Cupons.Post;
          ModalResult := mrOk;
       end;
end;

procedure TdlgCampanhaDesconto.curredtCodigoEnter(Sender: TObject);
begin
  inherited;
   KeyPreview := False;
end;

procedure TdlgCampanhaDesconto.curredtCodigoExit(Sender: TObject);
begin
  inherited;
   KeyPreview := True;
end;

procedure TdlgCampanhaDesconto.curredtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key = #13 then
      begin
         if TcxCurrencyEdit(Sender).EditValue <> null then
            begin
               Key := #0;
               Perform(WM_NEXTDLGCTL, 0, 0);
               if dmPDV.GetCampanhaCupomCodigo(StrZero(TcxCurrencyEdit(Sender).EditValue, 4)) then
                  begin
                     txtedtPromotor.Enabled := False;
                     if dmPDV.GetPromotor(dmPDV.qryCampanhas_Cupons.FieldByName('id_promotor').AsInteger) then
                        if dmPDV.GetPessoa(dmPDV.qryPromotores.FieldByName('id_pessoa').AsInteger) then
                           begin
                              txtedtPromotor.EditValue := dmPDV.qryPessoas.FieldByName('nome').AsString;
                              txtedtPromotor.PostEditValue;
                           end;
                  end
               else
                  begin
                     txtedtPromotor.Enabled := True;
                     txtedtPromotor.SetFocus;
                  end;
            end;
      end;
end;

function TdlgCampanhaDesconto.Executa: Boolean;
begin
   fPercentualDesconto := 0;
   Result := dmPDV.GetCampanhaAtiva;
   if Result then
      begin
         lblTitulo.Caption := dsCampanhas.DataSet.FieldByName('nome').AsString;
         Result := ShowModal = mrOk;
         if Result then
            fPercentualDesconto := dsCampanhas.DataSet.FieldByName('percentual_desconto').AsFloat;
      end;
end;

function TdlgCampanhaDesconto.GetPercentualDesconto: Double;
begin
   Result := fPercentualDesconto;
end;

end.
