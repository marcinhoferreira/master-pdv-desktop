unit MasterPDV.View.ConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, JvComponentBase, JvEnterTab, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, cxCurrencyEdit, cxDBEdit,
  Data.DB, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier;

type
  TdlgConsultaProduto = class(TfrmPrivilegios)
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    lblCodigo: TcxLabel;
    txtedtCodigo: TcxTextEdit;
    lblDescricao: TcxLabel;
    lblPrecoVenda: TcxLabel;
    dbtxtedtDescricao: TcxDBTextEdit;
    dbcurredtPrecoUnitario: TcxDBCurrencyEdit;
    dsProdutos_Locate: TDataSource;
    btnFechar: TcxButton;
    lblUnidade: TcxLabel;
    dbtxtedtUnidade: TcxDBTextEdit;
    btnRegistrar: TcxButton;
    dsTerminais: TDataSource;
    procedure txtedtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnRegistrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Consulta: Boolean;
  end;

var
  dlgConsultaProduto: TdlgConsultaProduto;

implementation

{$R *.dfm}

uses
   StrUtils, Uni,
   VCL.Funcoes,
   UDataModuleLeiaute, UMasterPDVDataModulePDV, UDataModuleComponentesACBr;

procedure TdlgConsultaProduto.btnFecharClick(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure TdlgConsultaProduto.btnRegistrarClick(Sender: TObject);
begin
  inherited;
   ModalResult := mrOk;
end;

function TdlgConsultaProduto.Consulta: Boolean;
var
   ACodigo: String;
begin
   Result := False;
   if Trim(txtedtCodigo.Text) <> '' then
      begin
         if Length(Trim(txtedtCodigo.Text)) = 8 then
            begin
               ACodigo := Trim(txtedtCodigo.Text);
               if Not ValidaGTIN(ACodigo) then
                  begin
                     Informacao('Código não cadastrado!');
                     Exit;
                  end;
            end
         else
            if Length(Trim(txtedtCodigo.Text)) < 13 then
               begin
                  ACodigo := StrZero(Trim(txtedtCodigo.Text), 12) + '0';
                  If Not ChecaEAn13(ACodigo) Then
                     ACodigo := Copy(ACodigo, 1, 12) + DigitoEAn13(Copy(ACodigo, 1, 12));
               end
            else
               ACodigo := Trim(txtedtCodigo.Text);

//         If Not ChecaEAn13(ACodigo) Then
//            ACodigo := RightStr(ACodigo, 12) +
//                       DigitoEAn13(RightStr(ACodigo, 12));
         dsProdutos_Locate.DataSet.Close;
         TUniQuery(dsProdutos_Locate.DataSet).ParamByName('id_estabelecimento').Value := dsTerminais.DataSet.FieldByName('id_estabelecimento').AsInteger;
         TUniQuery(dsProdutos_Locate.DataSet).ParamByName('id_local').Value := dsTerminais.DataSet.FieldByName('id_local').AsInteger;
         TUniQuery(dsProdutos_Locate.DataSet).ParamByName('codigo_barras').Value := ACodigo;
         dsProdutos_Locate.DataSet.Open;
         Result := not dsProdutos_Locate.DataSet.IsEmpty;
         if not Result then
            dsProdutos_Locate.DataSet.Close;
      end;
end;

procedure TdlgConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   if dsProdutos_Locate.DataSet.Active then
      dsProdutos_Locate.DataSet.Close;
end;

procedure TdlgConsultaProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      btnFecharClick(btnFechar);
end;

procedure TdlgConsultaProduto.FormShow(Sender: TObject);
begin
  inherited;
   if dsProdutos_Locate.DataSet.Active then
      dsProdutos_Locate.DataSet.Close;
end;

procedure TdlgConsultaProduto.txtedtCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if Key = VK_RETURN then
      if Consulta then
         begin
            if btnRegistrar.Enabled then
               FocusControl(btnRegistrar);
            //TcxTextEdit(Sender).Clear;
         end;
end;

end.
