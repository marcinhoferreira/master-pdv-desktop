object dlgListaPreVendasPendentes: TdlgListaPreVendasPendentes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pr'#233'-vendas Pendentes'
  ClientHeight = 285
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    900
    285)
  PixelsPerInch = 96
  TextHeight = 16
  object panAreadeTrabalho: TJvPanel
    Left = 8
    Top = 8
    Width = 880
    Height = 222
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object grdPreVendas: TJvDBUltimGrid
      Left = 2
      Top = 2
      Width = 876
      Height = 218
      Align = alClient
      DataSource = dsPreVendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = grdPreVendasDblClick
      TitleButtons = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      SortWith = swFields
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'data_movimento'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'documento'
          Title.Alignment = taCenter
          Title.Caption = 'Documento'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'razao_cliente'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao_condicao'
          Title.Alignment = taCenter
          Title.Caption = 'Condi'#231#227'o de Pagamento'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'parcelas'
          Title.Alignment = taCenter
          Title.Caption = 'Parcelas'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_liquido'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Width = 100
          Visible = True
        end>
    end
  end
  object panFerramentas: TJvPanel
    Left = 8
    Top = 236
    Width = 880
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnOk: TPngBitBtn
      Left = 344
      Top = 4
      Width = 93
      Height = 32
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000004734944415478DAAD945D4C5B651CC69F737A4ECF694F5B4E69CBF747
        F9D8D898CBE8C61CBB317486916DBA748999663186C528511743138DD18B6D37
        5E1AB8C0A89B5ADCBC30C6646886DBC0D03260650894CF4D2E360A2BB2D2420B
        2D0CBA7EF8B6C9743320083CE7A227A7EFFBFCCE79DEFFFF4F618B445FA04509
        253131B444CFD2AC73FE74A021FE9CDA2A739AA2ADFBB565251A4E8B60781E77
        E7869CAC8439B12500E622633DA97FBD7C9FE6792C8617118DC5301372E397C9
        1F6D9B06B0175953A16ADB95B78ACE6022E042B7BB0F3286479622039D33D737
        1711F7B5549433C2D8FBC51F8A32891CCDAE562C4796A16415C81432609F6DDE
        1C40F60D5F7B38F368CDA18CC3E8F3F6C3197800094D43AFCC41E0F12C460303
        8D1B0608DFCAC9816A1C1FED390BCF92171D6E3B288A420AAF8552AA40DF4C87
        3F1C0B19360C5059948EEA9D674A72147A744CDF42F0711072568E2C12CDD06C
        0F7CCB1E73AF69B06E4380A40665CD7E5D59EDC98253180B8E91921C054333C8
        516411632F86BC3DB61ED38031BEF67F03C4EF92F40223383E369C152308C3EE
        ED262E31E848340223479BABD91F8D450CB78FF739FF017C0E91DC99E2FBC9AF
        0DEFA07F3580E692FACA2BF9AF990CBABDE8F339E00979206379640B59B8333D
        00CFA2DBDC75BCB7EEC97A0AF52821D9594B7565A28C9161D83F80C9455723F9
        E734AAE17FDA5C7B29B93C4F956F7D63C79B703D72613830049EE190A7C8C5DC
        921FC36E87CDFE72AFF1E93D1479FBB10F767FA24F1332B140BA90954870D3DD
        8AEBAEABFD64B618236F47129094CB5A9102E5A87EEE3DBD56AE83DD770BF188
        D2E4A9486295681B6BF547A31143C74BDDCE6701F574ACF6603D467CA3189C19
        819A4F4286220D0F971EC0FAF046BF94969E2083CB99F67DCAF9F2CC43E78CD9
        2F6274611453A149889C8A44938D5E5737A6836E73FBB1DB75FF8E94C217F07D
        5AFA9938E8BD8B7BF3F71335CDB35214A90BC9140BA1C763F74711316B788DA5
        7AF7BB08916B30389058A327D1F81667D035DE656B3FD665C40AA2F025CE9392
        3B77505B8EF6293BC61726129B455E855D9A1D4817B4681A6FC4ABDB4E214FCC
        8323D08710B5841C72A802A9FB6B77AEF9C3D1B0C176B4D3B93220AEAF60C994
        E9AB0A14BBB01009C2B3EC012FE5A0962525BE248D64BE5D2CC4E4B20B132127
        343275A26ABA9C76FC393F65B61EE9A8C32AFABB0F241724960C796E55B15882
        C5E80219B73390733C949C40CCF391A5CC4C98732C8B02553E6617BCE8BCDF69
        6B3DD261C47FE89946535A14049253B553BD074BB147F0877D10381994BC0005
        2F23400EB98AECC4AC79124D4B659B73DD80B8522FEB2C499CBACAA03B80081D
        41203A9730577072E8044D02D033F13BA64834CD95B63AACA1154785FE87EC1A
        914BAEDD9B7A005212C95C6C9640E4D8AE2AC43C69A8EEF16EDB8D4AAB712DF3
        55017115FF545425F2A2655F7A19397029A45286D4BD1237EFB5F923A4A17EAD
        F8CDB929405CA53F97242086F452240B22FE981E8137E8353755B4AC19CDBA00
        71BDD0546662256C2D4B332243310D572B5ACCEB358FEB2F0149A8A63847FDB9
        0000000049454E44AE426082}
    end
    object btnCancelar: TPngBitBtn
      Left = 443
      Top = 4
      Width = 93
      Height = 32
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000004824944415478DAB595C94F1B6718C6DFF1820783521B3060071B63C0
        44498820B96439A1F61450DAB0B547FB0FC81F94D3F816B58D429B45559B0545
        EDA1E0248C95A8509716DBE01DE319B39918709FEFC3634C29243DD4D26816CD
        FC9E7779DED742B95CA6FFF327D4DE7CDFD6663159ADD3A2CD36A086C3FECFD3
        E9C0C740A6EC769FEDF265A91089C83B6B6B43B79349853D67C10BB570B1B575
        BAFFCE9D01BD28D29FF7EF536676D6FF452A15F810DC3D3222D9AF5FA7F5A525
        FAFDDE3DF9FDC6C6D02844AA02B570411028F1F42919CE9C213512A1B577EF4E
        14790038C052D7F030655EBCA0F7850291C9444959964B9B9B43B7E371850BFC
        D8DF3FA7C1971F3FA65DBCA8ABAB23D1E138105958F023EDC03FE1EDD7AE499E
        0A7C7D61813F37D9ED44A84032149247C2E1412E30333E5E76DFBA45B1A9292A
        290A2B1E95F7F74967349278F62CA9D128E5D1134DE481C3E16BBF7A55F2DCBC
        4959C00B1538FB8E7D63EEE9A16C384C9F06838256225F2BA2112D162AC662B4
        BFBB4BB4B7C79BC43EA8EFE820657999F28B8B7EF67E15FEFC39ADCFCF1F3A46
        A723B1B393365595D2C87A341E0F549BFC5D7BBBCF363828995B5A681B117311
        64C10E562E333E54B359323634102B4BF6D9335E16A1627341AF27D1E5A20D06
        47B663801F719126D272E992646E6EE622658870001341F31ABABBC906B7E45E
        BEA4C2DBB7542E953880C1EBDD6EDADCDAA214B264F063363DE2E98B1725B3D5
        CA4588658217F7984370D61B0C548CC7891942C70EDC9B7B7B691362D974DA3F
        5E819F28A089B49C3F2F991B1B497DF3867673B98306A2C60C2A54CEAC3F0D68
        2883A753A923F0530534A77CD2DC2C9990FEF6E2222F158732383B181C916F30
        7832E91F5F5939362B1F1468F27A25D78D1B14B97B97A8583C84E360CD66A549
        6532A4288A7FE2BF0868F06E58B1F0FA35A59E3CE1507D05AE4756ECDA00917A
        9428914CD25A3E7F4CE45F058EC05FBDA224E01AD800BB7201BCA78388411381
        BBA28904ADE672FEC9E5E5939BCCC65F83AB883C89B5A145CEE00D5E2FBF2E61
        7D30119E09138288E8F1D05F18C64C365B153922C09C6301BC077085455E81F3
        C8D1D046C0B730DDECDE6A36D32E2CCC440CB02917C1B3BAAE2EFA031B35C544
        62B1C34163702BE06CFC956090128F1E5523D7237206DF061C560CB0B9753A9D
        BE1658781F11EBE12C6345440F112326FE37B82E8199988C460F56C54F57AE94
        CF4D4C501E91C71F3E3C6C6625F222E0994C26002BF25DF4ADD329757576FA6C
        58E9B4B2C27B5115A9AF27C1E9A4D950883E0B850E96DD0F172ECCF58C8C0C2C
        0502B497CF1FC2FBFA387C95C1E3717F6DBFBE8148AFC7E3B363E2054CB61170
        2E82FB525313FD3C33230FCFCF0F6A25B2184CA6690BFE2A7710D13ED60283EF
        6007E5B2D963F05A91735EAFAF03403DAC5A8733B5B5D12FC1A00CDB0E4D4622
        8A50E3208B5114A7AD101110F50E76507E7535307602BC2AE2724917FAFA7C2E
        800959FF3A3727E700FF2A1A558EDBD4E1B0C031D328CF40716B2B3096489C0A
        D77E5F43C48DC6ABEBEBF29AAA72F8698366C1C93D9A48C81F03AF1119C029F2
        652CA6D40EDADFC5F763EF2E0AC67A0000000049454E44AE426082}
    end
  end
  object qryPreVendas: TUniQuery
    Connection = dmConexao.conConexao
    SQL.Strings = (
      
        'SELECT p.id_prevenda, p.data_movimento, p.id_local, p.documento,' +
        ' p.id_cliente, c.razao AS razao_cliente, '
      'p.id_condicao, cp.descricao AS descricao_condicao, p.parcelas,'
      
        'p.id_representante, (p.valor_bruto + p.valor_acrescimo - p.valor' +
        '_desconto - p.valor_troca) AS valor_liquido'
      'FROM prevendas p'
      '   LEFT OUTER JOIN parceiros c'
      '      ON p.id_cliente = c.id_parceiro'
      '   LEFT OUTER JOIN condicoes cp'
      '      ON p.id_condicao = cp.id_condicao'
      'WHERE p.id_local = :id_local'
      ' AND p.id_status IN (3)'
      'ORDER BY p.data_movimento DESC, p.documento DESC')
    Left = 396
    Top = 64
    ParamData = <
      item
        DataType = ftWord
        Name = 'id_local'
        ParamType = ptInput
        Value = 1
      end>
    object qryPreVendasid_prevenda: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_prevenda'
    end
    object qryPreVendasdata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryPreVendasdocumento: TLargeintField
      FieldName = 'documento'
      DisplayFormat = '00000000'
    end
    object qryPreVendasid_local: TWordField
      FieldName = 'id_local'
      Required = True
    end
    object qryPreVendasid_cliente: TLargeintField
      FieldName = 'id_cliente'
      Required = True
    end
    object qryPreVendasrazao_cliente: TStringField
      FieldName = 'razao_cliente'
      ReadOnly = True
      Size = 60
    end
    object qryPreVendasid_condicao: TWordField
      FieldName = 'id_condicao'
    end
    object qryPreVendasdescricao_condicao: TStringField
      FieldName = 'descricao_condicao'
      ReadOnly = True
      Size = 60
    end
    object qryPreVendasparcelas: TWordField
      FieldName = 'parcelas'
      DisplayFormat = '#,##0'
    end
    object qryPreVendasid_representante: TLargeintField
      FieldName = 'id_representante'
    end
    object qryPreVendasvalor_liquido: TFloatField
      FieldName = 'valor_liquido'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
  end
  object dsPreVendas: TJvDataSource
    AutoEdit = False
    DataSet = qryPreVendas
    Left = 396
    Top = 108
  end
end
