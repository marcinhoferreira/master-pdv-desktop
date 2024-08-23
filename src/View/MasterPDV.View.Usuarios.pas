unit MasterPDV.View.Usuarios;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   UMVCInterfaces, UUsuarioController, UFormularioPrivilegios,
   cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
   dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
   dxSkinXmas2008Blue, cxGroupBox, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
   Data.DB, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
   cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
   cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxDropDownEdit,
   Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDBBotoes, cxLabel, cxTextEdit, cxDBEdit,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations;

type
   TfrmUsuarios = class(TfrmPrivilegios, IView)
      gboxAreadeTrabalho: TcxGroupBox;
      gboxFerramentas: TcxGroupBox;
      pagUsuarios: TcxPageControl;
      tabUsuarios: TcxTabSheet;
      tabDetalhes: TcxTabSheet;
      dsUsuarios: TDataSource;
      grdUsuariosLevel1: TcxGridLevel;
      grdUsuarios: TcxGrid;
      cxGridViewRepository1: TcxGridViewRepository;
      dbtvwUsuarios: TcxGridDBTableView;
      dbtvwUsuariosid_usuario: TcxGridDBColumn;
      dbtvwUsuariosid_pessoa: TcxGridDBColumn;
      dbtvwUsuariosnome_usuario: TcxGridDBColumn;
      dbtvwUsuarioslogin: TcxGridDBColumn;
      dbtvwUsuariossenha: TcxGridDBColumn;
    dbtvwUsuariostipo: TcxGridDBColumn;
      dbtvwUsuariosadministrador: TcxGridDBColumn;
      dbtvwUsuariosemail_usuario: TcxGridDBColumn;
      dbtvwUsuariosid_status: TcxGridDBColumn;
      btnFechar: TcxBotaoFechar;
      gboxUsuarios: TcxGroupBox;
      dsPrivilegios: TDataSource;
      pagUsuarioDetalhes: TcxPageControl;
      tabPrivilegios: TcxTabSheet;
      tabPerfis: TcxTabSheet;
      grdPrivilegios: TcxGrid;
      grdPrivilegiosLevel1: TcxGridLevel;
      gboxPerfisDisponiveis: TcxGroupBox;
      dbtvwPrivilegios: TcxGridDBTableView;
      dbtvwPrivilegiosid_usuario: TcxGridDBColumn;
      dbtvwPrivilegiosid_aplicativo: TcxGridDBColumn;
      dbtvwPrivilegiostitulo_aplicativo: TcxGridDBColumn;
      dbtvwPrivilegiosid_rotina: TcxGridDBColumn;
      dbtvwPrivilegiosdescricao_rotina: TcxGridDBColumn;
      dbtvwPrivilegiosincluir: TcxGridDBColumn;
      dbtvwPrivilegiosalterar: TcxGridDBColumn;
      dbtvwPrivilegiosexcluir: TcxGridDBColumn;
      dbtvwPrivilegiosimprimir: TcxGridDBColumn;
      dbtvwPrivilegiosexportar: TcxGridDBColumn;
      dbtvwPrivilegiosimportar: TcxGridDBColumn;
      dbtvwPrivilegiosprocessar: TcxGridDBColumn;
      dbtvwPrivilegiosespecial1: TcxGridDBColumn;
      dbtvwPrivilegiosespecial2: TcxGridDBColumn;
      lblLogin: TcxLabel;
      dbtxtedtLogin: TcxDBTextEdit;
      lblNomeUsuario: TcxLabel;
      dbtxtedtNomeUsuario: TcxDBTextEdit;
      dbchkboxAdministrador: TcxDBCheckBox;
      lblEMailUsuario: TcxLabel;
      dbtxtedtEMailUsuario: TcxDBTextEdit;
      gboxPerfisAtribuidos: TcxGroupBox;
      dbchkboxContaBloqueada: TcxDBCheckBox;
      popmnuUsuarios: TPopupMenu;
      RedefinirSenha1: TMenuItem;
      btnIncluir: TcxDBBotaoIncluir;
      btnAlterar: TcxDBBotaoAlterar;
      btnGravar: TcxDBBotaoGravar;
      btnCancelar: TcxDBBotaoCancelar;
    btnExcluir: TcxDBBotao;
      procedure FormShow(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure btnIncluirClick(Sender: TObject);
      procedure btnAlterarClick(Sender: TObject);
      procedure btnExcluirClick(Sender: TObject);
      procedure btnCancelarClick(Sender: TObject);
      procedure btnGravarClick(Sender: TObject);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
      procedure RedefinirSenha1Click(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure btnGravarBeforeAction(Sender: TObject);
      procedure btnCancelarBeforeAction(Sender: TObject);
   private
      { Private declarations }
      fUsuarioController: IUsuarioController;
      procedure Initialize;
      procedure SetUsuarioController(const Value: IUsuarioController);
   public
      { Public declarations }
      property UsuarioController: IUsuarioController read fUsuarioController write SetUsuarioController;
   end;

var
   frmUsuarios: TfrmUsuarios;

implementation

uses
   VCL.Funcoes, VCL.Criptografia, UUsuarioModel,
   UDataModuleLeiaute,
   UDataModuleSessao, UDataModuleAcesso,
   UDialogoSenha;

{$R *.dfm}

{ TfrmUsuarios }

procedure TfrmUsuarios.btnAlterarClick(Sender: TObject);
begin
   inherited;
   UsuarioController.Editar;
   pagUsuarios.ActivePage := tabDetalhes;
end;

procedure TfrmUsuarios.btnExcluirClick(Sender: TObject);
begin
   inherited;
   if Confirmacao('Confirma exclusão do usuário?') then
      UsuarioController.Deletar;
end;

procedure TfrmUsuarios.btnGravarBeforeAction(Sender: TObject);
begin
   inherited;
   if Not Confirmacao('Gravar Modificações?') then
      Abort;

   With TcxDBBotao(Sender).DataSource Do
      begin
         if State = dsInsert Then
            If dlgSenha.ShowModal = mrOk then
               begin
                  if Not dmAcesso.CriaUsuario(AnsiLowerCase(DataSet.FieldByName('login').AsString),
                                              Criptografa(AnsiLowerCase(dlgSenha.txtedtSenha.Text),
                                                          GetKeyString(AnsiLowerCase(DataSet.FieldByName('login').AsString)))) then

                     Abort;

                  DataSet.FieldByName('senha').AsString := Criptografa(AnsiLowerCase(dlgSenha.txtedtSenha.Text),
                                                                       GetKeyString(FormatDateTime('ddmmyyyyhhnnss', DataSet.FieldByName('data_cadastro').AsDateTime)));
               end
            Else
               Abort;
      end;
end;

procedure TfrmUsuarios.btnGravarClick(Sender: TObject);
begin
   inherited;
   UsuarioController.Gravar;
   pagUsuarios.ActivePage := tabUsuarios;
end;

procedure TfrmUsuarios.btnIncluirClick(Sender: TObject);
begin
   inherited;
   UsuarioController.Inserir;
   pagUsuarios.ActivePage := tabDetalhes;
end;

procedure TfrmUsuarios.btnCancelarBeforeAction(Sender: TObject);
begin
   inherited;
   if Not Confirmacao('Descartar Modificações?') then
      Abort;
end;

procedure TfrmUsuarios.btnCancelarClick(Sender: TObject);
begin
   inherited;
   UsuarioController.Cancelar;
   pagUsuarios.ActivePage := tabUsuarios;
end;

procedure TfrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   Action := caFree;
end;

procedure TfrmUsuarios.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   inherited;
   If dsUsuarios.State In dsEditModes Then
      begin
         if Confirmacao('Talvez existe(m) dado(s) não salvo(s).' + #13 + 'Deseja descartar a(s) modificação(ões)?') then
            begin
               UsuarioController.Cancelar;
               CanClose := True;
            end;
      end
   Else
      CanClose := True;
end;

procedure TfrmUsuarios.FormCreate(Sender: TObject);
begin
   inherited;
   dlgSenha := TdlgSenha.Create(Self);
   pagUsuarios.ActivePage := tabUsuarios;
   pagUsuarios.HideTabs := True;
   // btnIncluir.Permissao := PermiteInserir;
   // btnAlterar.Permissao := PermiteAlterar;
   // btnExcluir.Permissao := PermiteExcluir;
   RedefinirSenha1.Enabled := dmSessao.IsAdministrator;
end;

procedure TfrmUsuarios.FormDestroy(Sender: TObject);
begin
   inherited;
   dlgSenha.Free;
end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
   inherited;
   Self.Initialize;
   WindowState := wsMaximized;
end;

procedure TfrmUsuarios.Initialize;
var
   lUsuarioModel: TUsuarioModel;
begin
   UsuarioController := TUsuarioController.Create;
   lUsuarioModel := TUsuarioModel.Create;
   UsuarioController.Model := lUsuarioModel;
   UsuarioController.View := Self;
   UsuarioController.Initialize;
end;

procedure TfrmUsuarios.RedefinirSenha1Click(Sender: TObject);
begin
   inherited;
   With dsUsuarios Do
      If dlgSenha.Define then
         begin
            DataSet.Edit;
            DataSet.FieldByName('senha').AsString := Criptografa(AnsiLowerCase(dlgSenha.txtedtSenha.Text),
                                                                 GetKeyString(AnsiLowerCase(DataSet.FieldByName('login').AsString)));
               //GetKeyString(FormatDateTime('ddmmyyyyhhnnss', DataSet.FieldByName('data_cadastro').AsDateTime)));
            DataSet.Post;
         end;
end;

procedure TfrmUsuarios.SetUsuarioController(const Value: IUsuarioController);
begin
   if Value <> fUsuarioController then
      fUsuarioController := Value;
end;

end.
