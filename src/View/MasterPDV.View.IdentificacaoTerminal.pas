unit MasterPDV.View.IdentificacaoTerminal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  UFormularioPadrao, LealSoftwares.Model.Configuracao.Interfaces,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVS2010,
  dxSkinVisualStudio2013Light, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  cxCheckBox;

type
  TdlgIdentificacaoTerminal = class(TfrmPadrao)
    dsTerminais: TDataSource;
    gboxAreadeTrabalho: TcxGroupBox;
    gboxFerramentas: TcxGroupBox;
    dbtabvwTerminais: TcxGridDBTableView;
    grdTerminaisLevel1: TcxGridLevel;
    grdTerminais: TcxGrid;
    dbtabvwTerminaisid_terminal: TcxGridDBColumn;
    dbtabvwTerminaisid_estabelecimento: TcxGridDBColumn;
    dbtabvwTerminaisdescricao: TcxGridDBColumn;
    dbtabvwTerminaisnumero: TcxGridDBColumn;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    dbtabvwTerminaisfiscal: TcxGridDBColumn;
    dbtabvwTerminaisnome_fantasia_estabelecimento: TcxGridDBColumn;
    dbtabvwTerminaisid_local: TcxGridDBColumn;
    dbtabvwTerminaisdescricao_local: TcxGridDBColumn;
    dbtabvwTerminaisendereco_fisico: TcxGridDBColumn;
    dbtabvwTerminaistipo_documento_fiscal: TcxGridDBColumn;
    dbtabvwTerminaisid_conta: TcxGridDBColumn;
    dbtabvwTerminaisidentificar_representante: TcxGridDBColumn;
    dbtabvwTerminaisid_condicao_pagamento: TcxGridDBColumn;
    dbtabvwTerminaisid_cliente_consumidor: TcxGridDBColumn;
    dbtabvwTerminaisetiqueta_prefixo: TcxGridDBColumn;
    dbtabvwTerminaisetiqueta_codigo_inicio: TcxGridDBColumn;
    dbtabvwTerminaisetiqueta_codigo_tamanho: TcxGridDBColumn;
    dbtabvwTerminaisid_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaisdescricao_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaisid_modelo_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaisporta_serial_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaisvelocidade_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaistaxa_transmissao_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaisid_paridade_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaisid_bit_parada_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaishandshake_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaistempo_limite_balanca_acoplada: TcxGridDBColumn;
    dbtabvwTerminaisid_gerenciador_tef: TcxGridDBColumn;
    dbtabvwTerminaisimpressora_padrao: TcxGridDBColumn;
    dbtabvwTerminaisdigitos_significativos: TcxGridDBColumn;
    dbtabvwTerminaisgerar_senha: TcxGridDBColumn;
    dbtabvwTerminaisautenticar_documento: TcxGridDBColumn;
    dbtabvwTerminaisautenticador: TcxGridDBColumn;
    dbtabvwTerminaisautenticador_id_modelo: TcxGridDBColumn;
    dbtabvwTerminaistoken_csc_id: TcxGridDBColumn;
    dbtabvwTerminaistoken_csc_numero: TcxGridDBColumn;
    dbtabvwTerminaisdanfe_logomarca_arquivo: TcxGridDBColumn;
    dbtabvwTerminaisdanfe_logomarca_expandir: TcxGridDBColumn;
    dbtabvwTerminaissalvar_resposta_envio: TcxGridDBColumn;
    dbtabvwTerminaissalvar_resposta_envio_caminho: TcxGridDBColumn;
    dbtabvwTerminaisws_ambiente: TcxGridDBColumn;
    dbtabvwTerminaisws_visualizar_mensagens: TcxGridDBColumn;
    dbtabvwTerminaiscertificado_caminho: TcxGridDBColumn;
    dbtabvwTerminaiscertificado_senha: TcxGridDBColumn;
    dbtabvwTerminaiscertificado_serie: TcxGridDBColumn;
    dbtabvwTerminaisproxy_host: TcxGridDBColumn;
    dbtabvwTerminaisproxy_porta: TcxGridDBColumn;
    dbtabvwTerminaisproxy_usuario: TcxGridDBColumn;
    dbtabvwTerminaisproxy_senha: TcxGridDBColumn;
    dbtabvwTerminaisemail_host: TcxGridDBColumn;
    dbtabvwTerminaisemail_porta: TcxGridDBColumn;
    dbtabvwTerminaisemail_usuario: TcxGridDBColumn;
    dbtabvwTerminaisemail_senha: TcxGridDBColumn;
    dbtabvwTerminaisemail_assunto: TcxGridDBColumn;
    dbtabvwTerminaisemail_ssl: TcxGridDBColumn;
    dbtabvwTerminaisemail_mensagem: TcxGridDBColumn;
    dbtabvwTerminaisdfe_forma_emissao: TcxGridDBColumn;
    dbtabvwTerminaiscontingencia_motivo: TcxGridDBColumn;
    dbtabvwTerminaisemissor_cupom: TcxGridDBColumn;
    dbtabvwTerminaisemissor_cupom_producao: TcxGridDBColumn;
    dbtabvwTerminaisemissor_nfe: TcxGridDBColumn;
    dbtabvwTerminaisemissor_nfce: TcxGridDBColumn;
    dbtabvwTerminaisoperacao_offline: TcxGridDBColumn;
    dbtabvwTerminaisversao_xml: TcxGridDBColumn;
    dbtabvwTerminaisversao_qrcode: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fConfiguracao: IModelConfiguracao;
  public
    { Public declarations }
    function Executa: Boolean;
  end;

var
  dlgIdentificacaoTerminal: TdlgIdentificacaoTerminal;

implementation

uses
   System.IOUtils,
   VCL.Funcoes,
   MasterPDV.Model.Configuracao,
   UDataModuleLeiaute,
   UMasterPDVDataModulePDV;

{$R *.dfm}

{ TdlgIdentificacaoTerminal }

function TdlgIdentificacaoTerminal.Executa: Boolean;
begin
   Result := Not dsTerminais.DataSet.IsEmpty;
   if dsTerminais.DataSet.RecordCount = 1 then
      begin
         dmPDV.qryTerminais_Locate.Close;
         dmPDV.qryTerminais_Locate.MacroByName('condicao').Value := Format('WHERE id_terminal = %d', [dsTerminais.DataSet.FieldByName('id_terminal').AsInteger]);
         dmPDV.qryTerminais_Locate.Open;
         if Not dmPDV.qryTerminais_Locate.IsEmpty And
            (TModelConfiguracao(fConfiguracao).GetRegistrarTerminal = 'S') And
            (Trim(dmPDV.qryTerminais_Locate.FieldByName('endereco_fisico').AsString) = '') then
            begin
               dmPDV.qryTerminais_Locate.Edit;
               dmPDV.qryTerminais_Locate.FieldByName('endereco_fisico').AsString := GetMacAddress;
               dmPDV.qryTerminais_Locate.Post;
            end;
         dmPDV.qryTerminais_Locate.Close;
      end
   Else
      begin
         Result := ShowModal = mrOk;
         if Result then
            begin
               dmPDV.qryTerminais_Locate.Close;
               dmPDV.qryTerminais_Locate.MacroByName('condicao').Value := Format('WHERE id_terminal = %d', [dsTerminais.DataSet.FieldByName('id_terminal').AsInteger]);
               dmPDV.qryTerminais_Locate.Open;
               if Not dmPDV.qryTerminais_Locate.IsEmpty And
                  (TModelConfiguracao(fConfiguracao).GetRegistrarTerminal = 'S') And
                  (Trim(dmPDV.qryTerminais_Locate.FieldByName('endereco_fisico').AsString) = '') then
                  begin
                     dmPDV.qryTerminais_Locate.Edit;
                     dmPDV.qryTerminais_Locate.FieldByName('endereco_fisico').AsString := GetMacAddress;
                     dmPDV.qryTerminais_Locate.Post;
                  end;
               dmPDV.qryTerminais_Locate.Close;
            end;
      end;
end;

procedure TdlgIdentificacaoTerminal.FormCreate(Sender: TObject);
var
   AConfigFileName: TFileName;
begin
  inherited;
   AConfigFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'data'), ChangeFileExt(ExtractFileName(ParamStr(0)), '.s3db'));
   fConfiguracao := TModelConfiguracao.New(AConfigFileName);
end;

end.
