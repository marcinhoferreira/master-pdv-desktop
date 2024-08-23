object dmAcesso: TdmAcesso
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 205
  Width = 418
  object qryUsuarios: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT id_usuario, nome, email, login, senha, data_cadastro, url' +
        '_avatar, id_status'
      'FROM acesso.usuarios'
      'ORDER BY login')
    Options.SetFieldsReadOnly = False
    SpecificOptions.Strings = (
      'PostgreSQL.KeySequence=acesso.usuarios_id_usuario_seq')
    AfterOpen = qryUsuariosAfterOpen
    BeforeClose = qryUsuariosBeforeClose
    BeforeDelete = qryUsuariosBeforeDelete
    OnNewRecord = qryUsuariosNewRecord
    Left = 42
    Top = 7
    object qryUsuariosid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
    object qryUsuariosnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object qryUsuariosemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object qryUsuarioslogin: TStringField
      FieldName = 'login'
      Size = 128
    end
    object qryUsuariossenha: TStringField
      FieldName = 'senha'
      Size = 128
    end
    object qryUsuariosdata_cadastro: TDateTimeField
      FieldName = 'data_cadastro'
    end
    object qryUsuariosurl_avatar: TStringField
      FieldName = 'url_avatar'
      Size = 255
    end
    object qryUsuariosid_status: TWordField
      FieldName = 'id_status'
    end
  end
  object qryPrivilegios: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO dbacesso.permissoes'
      
        '  (id_usuario, id_rotina, incluir, alterar, excluir, imprimir, e' +
        'xportar, importar, processar, especial1, especial2)'
      'VALUES'
      
        '  (:id_usuario, :id_rotina, :incluir, :alterar, :excluir, :impri' +
        'mir, :exportar, :importar, :processar, :especial1, :especial2)')
    SQLDelete.Strings = (
      'DELETE FROM dbacesso.permissoes'
      'WHERE'
      '  id_usuario = :Old_id_usuario AND id_rotina = :Old_id_rotina')
    SQLUpdate.Strings = (
      'UPDATE dbacesso.permissoes'
      'SET'
      
        '  id_usuario = :id_usuario, id_rotina = :id_rotina, incluir = :i' +
        'ncluir, alterar = :alterar, excluir = :excluir, imprimir = :impr' +
        'imir, exportar = :exportar, importar = :importar, processar = :p' +
        'rocessar, especial1 = :especial1, especial2 = :especial2'
      'WHERE'
      '  id_usuario = :Old_id_usuario AND id_rotina = :Old_id_rotina')
    SQLLock.Strings = (
      'SELECT * FROM dbacesso.permissoes'
      'WHERE'
      '  id_usuario = :Old_id_usuario AND id_rotina = :Old_id_rotina'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_usuario, id_rotina, incluir, alterar, excluir, imprimi' +
        'r, exportar, importar, processar, especial1, especial2 FROM dbac' +
        'esso.permissoes'
      'WHERE'
      '  id_usuario = :Old_id_usuario AND id_rotina = :Old_id_rotina')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM dbacesso.permissoes'
      ''
      ') t')
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT vw.id_usuario,'
      'mp.id_aplicativo, a.nome AS nome_aplicativo,'
      'vw.id_rotina, r.descricao AS descricao_rotina,'
      
        'vw.incluir, vw.alterar, vw.excluir, vw.imprimir, vw.exportar, vw' +
        '.importar, vw.processar,'
      'vw.especial1, vw.especial2'
      'FROM ('
      '      SELECT up.id_usuario, '
      '      up.id_rotina, r.descricao AS descricao_rotina,'
      
        '      up.incluir, up.alterar, up.excluir, up.imprimir, up.export' +
        'ar, up.importar, '
      '      up.processar, up.especial1, up.especial2'
      '      FROM acesso.permissoes up'
      '         INNER JOIN sistema.rotinas r'
      '            ON up.id_rotina = r.id_rotina'
      '      WHERE up.id_usuario = :id_usuario'
      '      UNION'
      '      SELECT u.id_usuario, '
      '      r.id_rotina, r.descricao AS descricao_rotina,'
      
        '      '#39'N'#39' AS incluir, '#39'N'#39' AS alterar, '#39'N'#39' AS excluir, '#39'N'#39' AS imp' +
        'rimir, '#39'N'#39' AS exportar, '#39'N'#39' AS importar, '
      '      '#39'N'#39' AS processar, '#39'N'#39' AS especial1, '#39'N'#39' AS especial2'
      '      FROM acesso.usuarios u, sistema.rotinas r'
      '      WHERE u.id_usuario = :id_usuario'
      '       AND NOT EXISTS(SELECT 1'
      '                      FROM acesso.permissoes up'
      '                      WHERE up.id_usuario = u.id_usuario'
      '                       AND up.id_rotina = r.id_rotina)'
      '     ) vw'
      '     INNER JOIN sistema.rotinas r'
      '        ON vw.id_rotina = r.id_rotina'
      '     INNER JOIN (sistema.menu_principal mp'
      '                    INNER JOIN sistema.aplicativos a'
      '                       ON mp.id_aplicativo = a.id_aplicativo)'
      '        ON vw.id_rotina = mp.id_rotina'
      'ORDER BY a.titulo, r.descricao')
    MasterSource = dsUsuarios
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 242
    Top = 8
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_usuario'
        ParamType = ptInput
        Value = nil
      end>
    object qryPrivilegiosid_usuario: TLargeintField
      FieldName = 'id_usuario'
      Required = True
    end
    object qryPrivilegiosid_aplicativo: TWordField
      FieldName = 'id_aplicativo'
    end
    object qryPrivilegiosnome_aplicativo: TStringField
      FieldName = 'nome_aplicativo'
      Size = 255
    end
    object qryPrivilegiosid_rotina: TWordField
      FieldName = 'id_rotina'
      Required = True
    end
    object qryPrivilegiosdescricao_rotina: TStringField
      FieldName = 'descricao_rotina'
      Size = 200
    end
    object qryPrivilegiosincluir: TStringField
      FieldName = 'incluir'
      Required = True
      Size = 1
    end
    object qryPrivilegiosalterar: TStringField
      FieldName = 'alterar'
      Required = True
      Size = 1
    end
    object qryPrivilegiosexcluir: TStringField
      FieldName = 'excluir'
      Required = True
      Size = 1
    end
    object qryPrivilegiosimprimir: TStringField
      FieldName = 'imprimir'
      Required = True
      Size = 1
    end
    object qryPrivilegiosexportar: TStringField
      FieldName = 'exportar'
      Required = True
      Size = 1
    end
    object qryPrivilegiosimportar: TStringField
      FieldName = 'importar'
      Required = True
      Size = 1
    end
    object qryPrivilegiosprocessar: TStringField
      FieldName = 'processar'
      Required = True
      Size = 1
    end
    object qryPrivilegiosespecial1: TStringField
      FieldName = 'especial1'
      Required = True
      Size = 1
    end
    object qryPrivilegiosespecial2: TStringField
      FieldName = 'especial2'
      Required = True
      Size = 1
    end
  end
  object qryPerfis: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_grupo, nome, ativo'
      'FROM acesso.grupos'
      'ORDER BY nome')
    Left = 138
    Top = 8
  end
  object dsUsuarios: TDataSource
    DataSet = qryUsuarios
    Left = 42
    Top = 52
  end
  object spCriaUsuario: TUniStoredProc
    StoredProcName = 'acesso.p_cria_usuario'
    SQL.Strings = (
      'CALL acesso.p_cria_usuario(:p_login, :p_senha)')
    Connection = dmConexao.conConexao
    Left = 338
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'p_login'
        ParamType = ptInput
        Size = 128
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_senha'
        ParamType = ptInput
        Size = 128
        Value = nil
      end>
    CommandStoredProcName = 'acesso.p_cria_usuario'
  end
  object spTrocaSenha: TUniStoredProc
    StoredProcName = 'acesso.p_troca_senha'
    SQL.Strings = (
      'CALL acesso.p_troca_senha(:p_usuario, :p_senha)')
    Connection = dmConexao.conConexao
    Left = 338
    Top = 52
    ParamData = <
      item
        DataType = ftString
        Name = 'p_usuario'
        ParamType = ptInput
        Size = 128
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_senha'
        ParamType = ptInput
        Size = 128
        Value = nil
      end>
    CommandStoredProcName = 'acesso.p_troca_senha'
  end
  object usComandoSQL: TUniScript
    Connection = dmConexao.conConexao
    Left = 340
    Top = 140
  end
  object spDeletaUsuario: TUniStoredProc
    StoredProcName = 'acesso.p_deleta_usuario'
    SQL.Strings = (
      'CALL acesso.p_deleta_usuario(:p_usuario)')
    Connection = dmConexao.conConexao
    Left = 338
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'p_usuario'
        ParamType = ptInput
        Size = 128
        Value = nil
      end>
    CommandStoredProcName = 'acesso.p_deleta_usuario'
  end
  object qryUsuarios_LookUp: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_usuario, nome'
      'FROM acesso.vw_usuarios'
      'ORDER BY nome')
    Left = 43
    Top = 95
    object qryUsuarios_LookUpid_usuario: TLargeintField
      FieldName = 'id_usuario'
    end
    object qryUsuarios_LookUpnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
  end
  object qryAplicativos: TUniQuery
    UpdatingTable = 'aplicativos'
    KeyFields = 'id_aplicativo'
    Connection = dmConexao.conConexao
    UpdateTransaction = dmConexao.trTransacao
    SQL.Strings = (
      'SELECT id_aplicativo, chave, nome, titulo, id_rotina_acesso'
      'FROM sistema.aplicativos'
      'WHERE chave = :chave'
      'ORDER BY id_aplicativo')
    BeforeOpen = qryAplicativosBeforeOpen
    Left = 137
    Top = 52
    ParamData = <
      item
        DataType = ftString
        Name = 'chave'
        ParamType = ptInput
        Value = nil
      end>
    object qryAplicativosid_aplicativo: TWordField
      FieldName = 'id_aplicativo'
    end
    object qryAplicativoschave: TStringField
      FieldName = 'chave'
      Required = True
      Size = 255
    end
    object qryAplicativosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 255
    end
    object qryAplicativostitulo: TStringField
      FieldName = 'titulo'
      Required = True
      Size = 255
    end
    object qryAplicativosid_rotina_acesso: TWordField
      FieldName = 'id_rotina_acesso'
    end
  end
  object qryRotinas: TUniQuery
    UpdatingTable = 'rotinas'
    KeyFields = 'id_rotina'
    Connection = dmConexao.conConexao
    SQL.Strings = (
      'SELECT id_rotina, descricao'
      'FROM sistema.rotinas'
      'ORDER BY descricao')
    Left = 137
    Top = 94
    object qryRotinasid_rotina: TWordField
      FieldName = 'id_rotina'
    end
    object qryRotinasdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 200
    end
  end
end
