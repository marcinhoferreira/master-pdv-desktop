object dmLicenca: TdmLicenca
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 199
  Width = 699
  object conConexao: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5480
    Database = 'lealsoftwares'
    SpecificOptions.Strings = (
      'MySQL.ConnectionTimeout=45')
    Username = 'postgres'
    Server = '191.252.61.81'
    LoginPrompt = False
    Left = 37
    Top = 10
    EncryptedPassword = 
      'ADFF88FFADFF8CFF8DFF88FFC7FFB6FF89FFCBFF8BFFCAFFB4FFC8FFCBFFB5FF' +
      'A6FFC8FF'
  end
  object trTransacao: TUniTransaction
    DefaultConnection = conConexao
    Left = 39
    Top = 55
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 36
    Top = 143
  end
  object UniEncryptor1: TUniEncryptor
    Left = 37
    Top = 98
  end
  object qryLicencas: TUniQuery
    Connection = conConexao
    SQL.Strings = (
      'SELECT a.id_aplicativo, a.descricao, a.chave, ls.numero_serie,'
      
        'l.id_licenca, l.id_tipo_licenca, l.id_proprietario, p.tipo_pesso' +
        'a,'
      'p.cpf, p.cnpj, p.nome, p.nome_fantasia, p.email,'
      'l.expira, l.dias_expiracao, l.data_expiracao, l.id_status'
      'FROM licenciamento.aplicativos a'
      '   INNER JOIN (licenciamento.licencas l'
      '                  INNER JOIN licenciamento.vw_proprietarios p'
      '                     ON l.id_proprietario = p.id_proprietario'
      '                  INNER JOIN licenciamento.licencas_seriais ls'
      '                     ON l.id_licenca = ls.id_licenca)'
      '      ON a.id_aplicativo = l.id_aplicativo'
      'WHERE a.chave = :chave'
      ' AND ls.numero_serie = :numero_serie'
      'ORDER BY l.id_licenca')
    Left = 289
    Top = 5
    ParamData = <
      item
        DataType = ftString
        Name = 'chave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'numero_serie'
        ParamType = ptInput
        Value = nil
      end>
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 159
    Top = 9
  end
  object dspLicencas: TDataSetProvider
    DataSet = qryLicencas
    Left = 289
    Top = 48
  end
  object qryAplicativos: TUniQuery
    Connection = conConexao
    SQL.Strings = (
      'SELECT id_aplicativo, descricao, chave, id_rotina_acesso'
      'FROM licenciamento.aplicativos'
      'WHERE chave = :chave'
      'ORDER BY id_aplicativo')
    Left = 388
    Top = 7
    ParamData = <
      item
        DataType = ftString
        Name = 'chave'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryRotinas: TUniQuery
    Connection = conConexao
    SQL.Strings = (
      
        'SELECT id_rotina, descricao, id_aplicativo, id_formulario, class' +
        'e_formulario'
      'FROM licenciamento.rotinas'
      'WHERE id_aplicativo = :id_aplicativo'
      'ORDER BY id_rotina')
    Left = 485
    Top = 7
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_aplicativo'
        ParamType = ptInput
        Value = nil
      end>
  end
end
