unit UDialogoConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPadrao, UMVCInterfaces,
  LealSoftwares.Model.Configuracao.Interfaces,
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
  dxSkinXmas2008Blue, cxGroupBox, cxImage, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, dxGDIPlusClasses;

type
  IConexaoView = interface(IView)
     ['{B4E0813F-C139-429A-B4FA-B7B1326E02C8}']
     function Mostra: Boolean;
     function GetUsuario: AnsiString;
     function GetSenha: AnsiString;
  end;

  TdlgConexao = class(TfrmPadrao)
    gboxAreadeTrabalho: TcxGroupBox;
    imgLogo: TcxImage;
    lblHost: TcxLabel;
    cmbHost: TcxComboBox;
    lblUsuario: TcxLabel;
    txtedtUsuario: TcxTextEdit;
    txtedtSenha: TcxTextEdit;
    lblSenha: TcxLabel;
    btnConectar: TcxButton;
    btnCancelar: TcxButton;
    lblDataBase: TcxLabel;
    cmbDataBase: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure txtedtUsuarioPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbHostExit(Sender: TObject);
    procedure cmbDataBaseExit(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
    fConfiguracao: IModelConfiguracao;
    procedure CarregaHosts;
    procedure CarregaDataBases;
  public
    { Public declarations }
    procedure Initialize;
  end;

  TConexaoView = class(TInterfacedObject, IConexaoView)
  private
    { Private declarations }
    fFormulario: TdlgConexao;
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Initialize;
    function Mostra: Boolean;
    function GetUsuario: AnsiString;
    function GetSenha: AnsiString;
  published
    { Published declarations }
  end;

var
  dlgConexao: TdlgConexao;

implementation

uses
   System.IOUtils,
   VCL.Criptografia, VCL.Funcoes,
   UDataModuleLeiaute,
   MasterPDV.Model.Configuracao;

{$R *.dfm}

{ TdlgConexao }

procedure TdlgConexao.btnConectarClick(Sender: TObject);
begin
  inherited;
   if cmbHost.EditValue <> Null then
      TModelConfiguracao(fConfiguracao).SetDBServer(cmbHost.EditValue);

   if cmbHost.EditValue <> Null then
      TModelConfiguracao(fConfiguracao).SetDBName(cmbDataBase.EditValue);
end;

procedure TdlgConexao.CarregaDataBases;
var
   AFileName: TFileName;
begin
   AFileName := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                'databases.txt';
   if FileExists(AFileName) then
      begin
         cmbDataBase.Properties.Items.Clear;
         cmbDataBase.Properties.Items.LoadFromFile(AFileName);
      end;
end;

procedure TdlgConexao.CarregaHosts;
var
   AFileName: TFileName;
begin
   AFileName := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
                'hosts.txt';
   if FileExists(AFileName) then
      begin
         cmbHost.Properties.Items.Clear;
         cmbHost.Properties.Items.LoadFromFile(AFileName);
      end;
end;

procedure TdlgConexao.cmbDataBaseExit(Sender: TObject);
begin
  inherited;
   TcxComboBox(Sender).Enabled := False;
end;

procedure TdlgConexao.cmbHostExit(Sender: TObject);
begin
  inherited;
   TcxComboBox(Sender).Enabled := False;
end;

procedure TdlgConexao.FormCreate(Sender: TObject);
var
   ACondigFileName: TFileName;
begin
  inherited;
   ACondigFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'data'), ChangeFileExt(ExtractFileName(ParamStr(0)), '.s3db'));
   fConfiguracao := TModelConfiguracao.New(ACondigFileName);
   CarregaHosts;
   CarregaDataBases;
end;

procedure TdlgConexao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if Key = VK_F2 then
      begin
         cmbHost.Enabled := cmbHost.Properties.Items.Count > 1;
         if cmbHost.Enabled then
            FocusControl(cmbHost);
      end;
   if Key = VK_F3 then
      begin
         cmbDataBase.Enabled := cmbDataBase.Properties.Items.Count > 1;
         if cmbDataBase.Enabled then
            FocusControl(cmbDataBase);
      end;
end;

procedure TdlgConexao.FormShow(Sender: TObject);
var
   AIndex: Integer;
begin
   Initialize;

   AIndex := cmbHost.Properties.Items.IndexOf(TModelConfiguracao(fConfiguracao).GetDBServer);
   if AIndex >= 0 then
      cmbHost.ItemIndex := AIndex;
   cmbHost.Enabled := False;

   AIndex := cmbDataBase.Properties.Items.IndexOf(TModelConfiguracao(fConfiguracao).GetDBName);
   if AIndex >= 0 then
      cmbDataBase.ItemIndex := AIndex;
   cmbDataBase.Enabled := False;

   txtedtUsuario.EditValue := TModelConfiguracao(fConfiguracao).GetDBUserName;
   txtedtUsuario.PostEditValue;

   txtedtSenha.EditValue := '';
   txtedtSenha.PostEditValue;

   If Trim(txtedtUsuario.Text) <> '' Then
      FocusControl(txtedtSenha)
   Else
      FocusControl(txtedtUsuario);
end;

procedure TdlgConexao.Initialize;
begin
   txtedtUsuario.Text := '';
   txtedtSenha.Text := '';
end;

procedure TdlgConexao.txtedtUsuarioPropertiesChange(Sender: TObject);
begin
   btnConectar.Enabled := (Trim(txtedtUsuario.Text) <> '') And
                          (Trim(txtedtSenha.Text) <> '');
end;

{ TConexaoView }

function TConexaoView.GetSenha: AnsiString;
begin
   Result := Trim(fFormulario.txtedtSenha.Text);
end;

function TConexaoView.GetUsuario: AnsiString;
begin
   Result := Trim(fFormulario.txtedtUsuario.Text);
end;

procedure TConexaoView.Initialize;
begin
   fFormulario := TdlgConexao.Create(Application);
end;

function TConexaoView.Mostra: Boolean;
begin
   Result := fFormulario.ShowModal = mrOk;
end;

end.
