unit UDataModuleAcesso;

interface

uses
   System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, DAScript,
   UniScript;

type
   TdmAcesso = class(TDataModule)
      qryUsuarios: TUniQuery;
      qryPrivilegios: TUniQuery;
      qryPerfis: TUniQuery;
      dsUsuarios: TDataSource;
      spCriaUsuario: TUniStoredProc;
      spTrocaSenha: TUniStoredProc;
      usComandoSQL: TUniScript;
      spDeletaUsuario: TUniStoredProc;
      qryUsuarios_LookUp: TUniQuery;
      qryUsuarios_LookUpid_usuario: TLargeintField;
      qryUsuarios_LookUpnome: TStringField;
    qryAplicativos: TUniQuery;
    qryRotinas: TUniQuery;
    qryUsuariosid_usuario: TLargeintField;
    qryUsuariosnome: TStringField;
    qryUsuariosemail: TStringField;
    qryUsuarioslogin: TStringField;
    qryUsuariossenha: TStringField;
    qryUsuariosdata_cadastro: TDateTimeField;
    qryUsuariosurl_avatar: TStringField;
    qryUsuariosid_status: TWordField;
    qryAplicativosid_aplicativo: TWordField;
    qryAplicativoschave: TStringField;
    qryAplicativosnome: TStringField;
    qryAplicativostitulo: TStringField;
    qryAplicativosid_rotina_acesso: TWordField;
    qryRotinasid_rotina: TWordField;
    qryRotinasdescricao: TStringField;
    qryPrivilegiosid_usuario: TLargeintField;
    qryPrivilegiosid_aplicativo: TWordField;
    qryPrivilegiosnome_aplicativo: TStringField;
    qryPrivilegiosid_rotina: TWordField;
    qryPrivilegiosdescricao_rotina: TStringField;
    qryPrivilegiosincluir: TStringField;
    qryPrivilegiosalterar: TStringField;
    qryPrivilegiosexcluir: TStringField;
    qryPrivilegiosimprimir: TStringField;
    qryPrivilegiosexportar: TStringField;
    qryPrivilegiosimportar: TStringField;
    qryPrivilegiosprocessar: TStringField;
    qryPrivilegiosespecial1: TStringField;
    qryPrivilegiosespecial2: TStringField;
      procedure qryUsuariosid_statusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure qryUsuariosid_statusSetText(Sender: TField; const Text: string);
      procedure qryUsuariosAfterOpen(DataSet: TDataSet);
      procedure qryUsuariosBeforeClose(DataSet: TDataSet);
      procedure qryUsuariosBeforeDelete(DataSet: TDataSet);
    procedure qryAplicativosBeforeOpen(DataSet: TDataSet);
    procedure qryUsuariosNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
      function CriaUsuario(AUserName: String; APassword: String): Boolean;
      function TrocaSenha(AUserName: String; APassword: String): Boolean;
      function DeletaUsuario(AUserName: String): Boolean;
      procedure GravaPrivilegios;
      procedure SincronizaTabelas;
   end;

var
   dmAcesso: TdmAcesso;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses
   OgUtil,
   VCL.Funcoes, ULicenciamento,
   UDataModuleConexao,
   UDataModuleLicenca;

{$R *.dfm}

{ TdmAcesso }

function TdmAcesso.CriaUsuario(AUserName, APassword: String): Boolean;
begin
   spCriaUsuario.PrepareSQL();
   try
      spCriaUsuario.ParamByName('p_login').Value := AUserName;
      spCriaUsuario.ParamByName('p_senha').Value := APassword;
      spCriaUsuario.Execute;
      Result := True;
   except
      on E: EDAError do
         begin
            Result := False;
            raise Exception.Create('Erro ao criar o usuário:'#13 + E.Message);
         end;
   end;
end;

procedure TdmAcesso.DataModuleCreate(Sender: TObject);
begin
   //qryAplicativos.Open;
end;

procedure TdmAcesso.DataModuleDestroy(Sender: TObject);
begin
   //qryAplicativos.Close;
end;

function TdmAcesso.DeletaUsuario(AUserName: String): Boolean;
begin
   spDeletaUsuario.PrepareSQL();
   try
      spDeletaUsuario.ParamByName('p_usuario').Value := AUserName;
      spDeletaUsuario.Execute;
      Result := True;
   except
      on E: EDAError do
         begin
            Result := False;
            raise Exception.Create('Erro ao tentar excluir o usuário:'#13 + E.Message);
         end;
   end;
end;

procedure TdmAcesso.GravaPrivilegios;
begin
   if qryPrivilegios.UpdatesPending then
      begin
         qryPrivilegios.DisableControls;
         qryPrivilegios.First;
         dmConexao.conConexao.StartTransaction;
         Try
            While Not qryPrivilegios.Eof do
               begin
                  If (qryPrivilegios.FieldByName('incluir').AsString = 'N') And (qryPrivilegios.FieldByName('alterar').AsString = 'N') And
                     (qryPrivilegios.FieldByName('excluir').AsString = 'N') And (qryPrivilegios.FieldByName('imprimir').AsString = 'N') And
                     (qryPrivilegios.FieldByName('exportar').AsString = 'N') And (qryPrivilegios.FieldByName('importar').AsString = 'N') And
                     (qryPrivilegios.FieldByName('processar').AsString = 'N') And (qryPrivilegios.FieldByName('especial1').AsString = 'N') And
                     (qryPrivilegios.FieldByName('especial2').AsString = 'N') Then
                     begin
                        With usComandoSQL Do
                           begin
                              if dmConexao.BuscaRegistro('dbacesso.permissoes',
                                 Format('WHERE id_usuario = %d AND id_rotina = %d', [qryPrivilegios.FieldByName('id_usuario').AsInteger,
                                 qryPrivilegios.FieldByName('id_rotina').AsInteger])) then
                                 begin
                                    SQL.Clear;
                                    SQL.Add('DELETE FROM dbacesso.permissoes');
                                    SQL.Add(Format('WHERE id_usuario = %d AND id_rotina = %d;',
                                       [qryPrivilegios.FieldByName('id_usuario').AsInteger,
                                       qryPrivilegios.FieldByName('id_rotina').AsInteger]));
                                    Execute;

                                 end
                           end;
                     end
                  else
                     begin
                        With usComandoSQL Do
                           begin
                              SQL.Clear;
                              if Not dmConexao.BuscaRegistro('dbacesso.permissoes',
                                 Format('WHERE id_usuario = %d AND id_rotina = %d', [qryPrivilegios.FieldByName('id_usuario').AsInteger,
                                 qryPrivilegios.FieldByName('id_rotina').AsInteger])) then
                                 begin
                                    SQL.Add('INSERT INTO dbacesso.permissoes');
                                    SQL.Add('   (id_usuario, id_rotina, incluir, alterar, excluir, imprimir,');
                                    SQL.Add('    exportar, importar, processar, especial1, especial2)');
                                    SQL.Add('VALUES');
                                    SQL.Add(Format('   (%d, %d, %s, %s, %s, %s, %s, %s, %s, %s, %s);', [qryPrivilegios.FieldByName('id_usuario').AsInteger,
                                       qryPrivilegios.FieldByName('id_rotina').AsInteger,
                                       QuotedStr(qryPrivilegios.FieldByName('incluir').AsString), QuotedStr(qryPrivilegios.FieldByName('alterar').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('excluir').AsString), QuotedStr(qryPrivilegios.FieldByName('imprimir').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('exportar').AsString), QuotedStr(qryPrivilegios.FieldByName('importar').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('processar').AsString), QuotedStr(qryPrivilegios.FieldByName('especial1').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('especial2').AsString)]));
                                 end
                              Else
                                 begin
                                    SQL.Add('UPDATE dbacesso.permissoes');
                                    SQL.Add(Format('SET incluir = %s, alterar = %s, excluir = %s, imprimir = %s, ' +
                                       '    exportar = %s, importar = %s, processar = %s, especial1 = %s, especial2 = %s',
                                       [QuotedStr(qryPrivilegios.FieldByName('incluir').AsString), QuotedStr(qryPrivilegios.FieldByName('alterar').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('excluir').AsString), QuotedStr(qryPrivilegios.FieldByName('imprimir').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('exportar').AsString), QuotedStr(qryPrivilegios.FieldByName('importar').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('processar').AsString), QuotedStr(qryPrivilegios.FieldByName('especial1').AsString),
                                       QuotedStr(qryPrivilegios.FieldByName('especial2').AsString)]));
                                    SQL.Add(Format('WHERE id_usuario = %d AND id_rotina = %d;',
                                       [qryPrivilegios.FieldByName('id_usuario').AsInteger,
                                       qryPrivilegios.FieldByName('id_rotina').AsInteger]));
                                 end;
                              Execute;
                           end;

                     end;
                  qryPrivilegios.Next;
               end;

            dmConexao.conConexao.Commit;
         Except
            On E: EDAError Do
               begin
                  raise Exception.Create('Erro ao gravar os privilégios do usuário:'#13 + E.Message);
                  dmConexao.conConexao.Rollback;
               end;
         End;
         qryPrivilegios.First;
         qryPrivilegios.EnableControls;
      end;
end;

procedure TdmAcesso.qryAplicativosBeforeOpen(DataSet: TDataSet);
begin
   TUniQuery(DataSet).ParamByName('chave').Value := BufferToHex(CKey, SizeOf(CKey));
end;

procedure TdmAcesso.qryUsuariosAfterOpen(DataSet: TDataSet);
begin
   qryPrivilegios.Open;
end;

procedure TdmAcesso.qryUsuariosBeforeClose(DataSet: TDataSet);
begin
   qryPrivilegios.Close;
end;

procedure TdmAcesso.qryUsuariosBeforeDelete(DataSet: TDataSet);
begin
   if Not DeletaUsuario(DataSet.FieldByName('login').AsString) then
      Abort;
end;

procedure TdmAcesso.qryUsuariosid_statusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Sender.AsInteger = 1 then
      Text := 'Habilitado'
   else if Sender.AsInteger = 0 then
      Text := 'Bloqueado';
   DisplayText := Text <> '';
end;

procedure TdmAcesso.qryUsuariosid_statusSetText(Sender: TField; const Text: string);
begin
   if Text = 'Habilitado' then
      Sender.AsInteger := 1
   else if Text = 'Bloqueado' then
      Sender.AsInteger := 0;
end;

procedure TdmAcesso.qryUsuariosNewRecord(DataSet: TDataSet);
begin
   // 1-Ativo / 2-Bloqueado / 9-Inativo
   DataSet.FieldByName('id_status').AsInteger := 1;
end;

procedure TdmAcesso.SincronizaTabelas;
var
   AChave: String;
begin
   if Not dmLicenca.IsConnected then
      dmLicenca.Connect;
   if dmLicenca.IsConnected then
      begin
         AChave := BufferToHex(CKey, SizeOf(CKey));
         if dmLicenca.GetAplicativos(AChave) then
            begin
               dmLicenca.qryAplicativos.First;
               while Not dmLicenca.qryAplicativos.Eof do
                  begin
                     qryAplicativos.Close;
                     qryAplicativos.ParamByName('chave').Value := dmLicenca.qryAplicativos.FieldByName('chave').AsString;
                     qryAplicativos.Open;
                     if qryAplicativos.IsEmpty then
                        qryAplicativos.Append
                     Else
                        qryAplicativos.Edit;
                     qryAplicativos.FieldByname('descricao').AsString := dmLicenca.qryAplicativos.FieldByName('descricao').AsString;
                     qryAplicativos.FieldByname('chave').AsString := dmLicenca.qryAplicativos.FieldByName('chave').AsString;
                     qryAplicativos.Post;
                     if dmLicenca.GetRotinas(dmLicenca.qryAplicativos.FieldByName('id_aplicativo').AsInteger) then
                        begin
                           dmLicenca.qryRotinas.First;
                           qryRotinas.Close;
                           qryRotinas.ParamByName('id_aplicativo').Value := qryAplicativos.FieldByName('id_aplicativo').AsInteger;
                           qryRotinas.Open;
                           while Not dmLicenca.qryRotinas.Eof do
                              begin
                                 if Not qryRotinas.Locate('id_rotina', dmLicenca.qryRotinas.FieldByName('id_rotina').AsInteger, []) then
                                    qryRotinas.Append
                                 Else
                                    qryRotinas.Edit;
                                 qryRotinas.FieldByName('id_rotina').AsInteger := dmLicenca.qryRotinas.FieldByName('id_rotina').AsInteger;
                                 qryRotinas.FieldByName('descricao').AsString := dmLicenca.qryRotinas.FieldByName('descricao').AsString;
                                 qryRotinas.FieldByName('id_aplicativo').AsInteger := qryAplicativos.FieldByName('id_aplicativo').AsInteger;
                                 qryRotinas.Post;
                                 dmLicenca.qryRotinas.Next;
                              end;
                           qryRotinas.Close;
                           dmLicenca.qryRotinas.Close;
                        end;
                     dmLicenca.qryAplicativos.Next;
                  end;
               dmLicenca.qryAplicativos.Close;
            end;
         dmLicenca.Disconnect;
      end;
end;

function TdmAcesso.TrocaSenha(AUserName, APassword: String): Boolean;
begin
   spTrocaSenha.PrepareSQL();
   try
      spTrocaSenha.ParamByName('p_usuario').Value := AUserName;
      spTrocaSenha.ParamByName('p_senha').Value := APassword;
      spTrocaSenha.Execute;
      Result := True;
   except
      on E: EDAError do
         begin
            Result := False;
            raise Exception.Create('Erro ao trocar a senha do usuário:'#13 + E.Message);
         end;
   end;
end;

end.
