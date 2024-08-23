unit UDialogoConsultaCEP;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
   dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
   cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
   cxGroupBox, cxPC, cxTextEdit, cxMaskEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons,
   cxLabel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
   cxNavigator, Data.DB, cxDBData, dxmdaset, cxGridLevel, cxClasses,
   cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
   cxGrid, Datasnap.DBClient, cxGridCustomLayoutView, cxGridCardView,
   cxGridDBCardView;

type
   TdlgConsultaCEP = class(TForm)
      pagConsultaCEP: TcxPageControl;
      tabConsulta: TcxTabSheet;
      tabResultado: TcxTabSheet;
      gboxConsultaCEP: TcxGroupBox;
      gboxConsultaEndereco: TcxGroupBox;
      mskedtCEP: TcxMaskEdit;
      btnConsultarCEP: TcxButton;
      lblTipoLogradouro: TcxLabel;
      txtedtTipoLogradouro: TcxTextEdit;
      txtedtLogradouro: TcxTextEdit;
      lblLogradouro: TcxLabel;
      lblCidade: TcxLabel;
      txtedtCidade: TcxTextEdit;
      txtedtUF: TcxTextEdit;
      lblUF: TcxLabel;
      lblBairro: TcxLabel;
      txtedtBairro: TcxTextEdit;
      btnConsultarEndereco: TcxButton;
      grdResultadoLevel1: TcxGridLevel;
      grdResultado: TcxGrid;
      dsResultado: TDataSource;
      cdsResultado: TClientDataSet;
      cdsResultadocep: TStringField;
      cdsResultadotipo_logradouro: TStringField;
      cdsResultadologradouro: TStringField;
      cdsResultadobairro: TStringField;
      cdsResultadoid_cidade: TStringField;
      cdsResultadonome_cidade: TStringField;
      cdsResultadoid_estado: TStringField;
      cdsResultadonome_estado: TStringField;
      cdsResultadosigla_estado: TStringField;
      dbcrdvwResultado: TcxGridDBCardView;
      dbcrdvwResultadocep: TcxGridDBCardViewRow;
      dbcrdvwResultadotipo_logradouro: TcxGridDBCardViewRow;
      dbcrdvwResultadologradouro: TcxGridDBCardViewRow;
      dbcrdvwResultadobairro: TcxGridDBCardViewRow;
      dbcrdvwResultadoid_cidade: TcxGridDBCardViewRow;
      dbcrdvwResultadonome_cidade: TcxGridDBCardViewRow;
      dbcrdvwResultadoid_estado: TcxGridDBCardViewRow;
      dbcrdvwResultadonome_estado: TcxGridDBCardViewRow;
      dbcrdvwResultadosigla_estado: TcxGridDBCardViewRow;
      cdsResultadocomplemento: TStringField;
      dbcrdvwResultadocomplemento: TcxGridDBCardViewRow;
    gboxFerramentas: TcxGroupBox;
    btnOK: TcxButton;
    btnCancelar: TcxButton;
      procedure FormCreate(Sender: TObject);
      procedure btnConsultarCEPClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
      function Executa(const Value: String): Boolean;
   end;

var
   dlgConsultaCEP: TdlgConsultaCEP;

implementation

{$R *.dfm}

uses
   UFuncoes, UClasses,
   UDataModuleLeiaute,
   UDataModuleComponentesACBr;

procedure TdlgConsultaCEP.btnConsultarCEPClick(Sender: TObject);
var
   AIndex: Integer;
begin
   try
      If dmComponentesACBr.ACBrCEP1.BuscarPorCEP(mskedtCEP.EditValue) > 0 Then
         begin
            if dmComponentesACBr.ACBrCEP1.Enderecos.Count < 1 then
               Informacao('Nenhum endereço foi encontrado')
            else
               begin
                  if cdsResultado.Active then
                     cdsResultado.Close;
                  cdsResultado.CreateDataSet;
                  For AIndex := 0 to dmComponentesACBr.ACBrCEP1.Enderecos.Count - 1 do
                     begin
                        with dmComponentesACBr.ACBrCEP1.Enderecos[AIndex] do
                           begin
                              cdsResultado.Append;
                              cdsResultado.FieldByName('CEP').AsString := CEP;
                              cdsResultado.FieldByName('tipo_logradouro').AsString := Tipo_Logradouro;
                              cdsResultado.FieldByName('logradouro').AsString := Logradouro;
                              cdsResultado.FieldByName('complemento').AsString := Complemento;
                              cdsResultado.FieldByName('bairro').AsString := Bairro;
                              cdsResultado.FieldByName('id_cidade').AsString := IBGE_Municipio;
                              cdsResultado.FieldByName('nome_cidade').AsString := Municipio;
                              cdsResultado.FieldByName('id_estado').AsString := IBGE_UF;
                              cdsResultado.FieldByName('sigla_estado').AsString := UF;
                              cdsResultado.Post;
                           end;
                     end;
                  pagConsultaCEP.ActivePage := tabResultado;
               end;
         end;
   except
      On E: Exception do
         Erro('Erro ao tentar consultar o CEP:'#13 + E.Message);
   end;
end;

function TdlgConsultaCEP.Executa(const Value: String): Boolean;
begin
   mskedtCEP.EditValue := Value;
   Result := ShowModal = mrOk;
end;

procedure TdlgConsultaCEP.FormCreate(Sender: TObject);
begin
   pagConsultaCEP.HideTabs := True;
   pagConsultaCEP.ActivePage := tabConsulta;
end;

end.
