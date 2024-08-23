unit UMasterPDVDataModuleRelatorio;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, frxDMPExport, frxRich,
  Data.DB, MemDS, DBAccess, Uni, fs_iinterpreter,
  LealSoftwares.Model.Configuracao.Interfaces;

type
  TdmRelatorio = class(TDataModule)
    frRelatorio: TfrxReport;
    frxRichObject1: TfrxRichObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frdsMovimentos_Operacoes: TfrxDBDataset;
    qryMovimentos_Operacoes: TUniQuery;
    fsScript1: TfsScript;
    qryCupom: TUniQuery;
    dsCupom: TDataSource;
    frdsCupom: TfrxDBDataset;
    qryCupom_Produtos: TUniQuery;
    qryCupom_Parcelas: TUniQuery;
    qryCupom_Recebimentos: TUniQuery;
    frdsCupom_Produtos: TfrxDBDataset;
    frdsCupom_Parcelas: TfrxDBDataset;
    frdsCupom_Recebimentos: TfrxDBDataset;
    qryFechamento: TUniQuery;
    dsFechamento: TDataSource;
    frdsFechamento: TfrxDBDataset;
    qryFechamento_Vendas: TUniQuery;
    frdsFechamento_Vendas: TfrxDBDataset;
    qryFechamento_Recebimentos: TUniQuery;
    frdsFechamento_Recebimentos: TfrxDBDataset;
    qryFechamento_Operacoes: TUniQuery;
    frdsFechamento_Operacoes: TfrxDBDataset;
    qryVendas: TUniQuery;
    dsVendas: TDataSource;
    dbdsVendas: TfrxDBDataset;
    qryVendas_Recebimentos: TUniQuery;
    dbdsVendas_Recebimentos: TfrxDBDataset;
    qryRecebimentos: TUniQuery;
    dsRecebimentos: TDataSource;
    dbdsRecebimentos: TfrxDBDataset;
    qryMovimentos: TUniQuery;
    dsMovimentos: TDataSource;
    dbdsMovimentos: TfrxDBDataset;
    qryPreVendas: TUniQuery;
    dbdsPreVendas: TfrxDBDataset;
    qryRecebimentos_Totais: TUniQuery;
    dsRecebimentos_Totais: TDataSource;
    dbdsRecebimentos_Totais: TfrxDBDataset;
    dbdsFechamento: TfrxDBDataset;
    qryCarne: TUniQuery;
    frdsCarne: TfrxDBDataset;
    dbdsLocais: TfrxDBDataset;
    dsTerminais: TDataSource;
    dbdsCaixa: TfrxDBDataset;
    qryTerminais: TUniQuery;
    qryLocais: TUniQuery;
    qryCupom_Trocas: TUniQuery;
    frdsCupom_Trocas: TfrxDBDataset;
    procedure qryCupomAfterOpen(DataSet: TDataSet);
    procedure qryCupomBeforeClose(DataSet: TDataSet);
    procedure qryFechamentoAfterOpen(DataSet: TDataSet);
    procedure qryFechamentoBeforeClose(DataSet: TDataSet);
    procedure qryTerminaisAfterOpen(DataSet: TDataSet);
    procedure qryTerminaisBeforeClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    fConfiguracao: IModelConfiguracao;
  public
    { Public declarations }
    procedure ImprimirComprovanteOperacao(AID_Terminal: Integer;
                                          ADataMovimento: TDateTime;
                                          AID_Operador: Integer;
                                          ASequenciaOperacao: Integer;
                                          AImpressora: String;
                                          AVisualiza: Boolean = True);
    procedure ImprimirDAV(const Id: Integer;
                            AImpressora: String;
                            AVisualiza: Boolean = True);
    procedure ImprimirComprovanteOrdemProducao(AID_Venda: Integer;
                                               AImpressora: String;
                                               AVisualiza: Boolean = True);
    procedure ImprimirCarne(AID_Venda: Integer;
                            AImpressora: String;
                            AVisualiza: Boolean = True);
    procedure ImprimirFechamentoMovimento(AID_Terminal: Integer;
                                          ADataMovimento: TDateTime;
                                          AID_Operador: Integer;
                                          AFormatoImpressao: Integer;
                                          AImpressora: String;
                                          AVisualiza: Boolean = True);
  end;

var
  dmRelatorio: TdmRelatorio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
   Forms, StrUtils, System.IOUtils,
   VCL.Funcoes,
   MasterPDV.Model.Configuracao,
   UDataModuleConexao,
   UMasterPDVDataModulePDV;

{$R *.dfm}

{ TdmRelatorio }

procedure TdmRelatorio.DataModuleCreate(Sender: TObject);
var
   AConfigFileName: TFileName;
begin
   AConfigFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'data'), ChangeFileExt(ExtractFileName(ParamStr(0)), '.s3db'));
   fConfiguracao := TModelConfiguracao.New(AConfigFileName);
end;

procedure TdmRelatorio.ImprimirCarne(AID_Venda: Integer; AImpressora: String;
   AVisualiza: Boolean);
var
   AReportFileName: TFileName;
begin
   AReportFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'reports'), 'Carne.fr3');
   with frdsCarne do
      begin
         DataSet.Close;
         TUniQuery(DataSet).ParamByName('id_venda').Value := AID_Venda;
         DataSet.Open;
         if DataSet.IsEmpty then
            Informacao('Nenhuma Informação a Imprimir!')
         else
            begin
               frRelatorio.Clear;
               frRelatorio.DotMatrixReport := False;
               frRelatorio.LoadFromFile(AReportFileName);
               frRelatorio.Variables['pTituloRelatorio'] := QuotedStr('CARNÊ DE PAGAMENTOS');
               frRelatorio.PrintOptions.ShowDialog := AImpressora = '';
               frRelatorio.PrintOptions.Printer := IfThen(AImpressora <> '', AImpressora, 'Default');
               frRelatorio.PrepareReport();
               if AVisualiza then
                  frRelatorio.ShowReport()
               Else
                  frRelatorio.Print;
            end;
         DataSet.Close;
      end;
end;

procedure TdmRelatorio.ImprimirComprovanteOperacao(AID_Terminal: Integer;
  ADataMovimento: TDateTime; AID_Operador: Integer; ASequenciaOperacao: Integer;
  AImpressora: String; AVisualiza: Boolean);
var
   AReportFileName: TFileName;
begin
   AReportFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'reports'), 'ComprovanteOperacao.fr3');;
   with frdsMovimentos_Operacoes do
      begin
         DataSet.Close;
         TUniQuery(DataSet).ParamByName('id_terminal').Value := AID_Terminal;
         TUniQuery(DataSet).ParamByName('data_movimento').Value := ADataMovimento;
         TUniQuery(DataSet).ParamByName('id_operador').Value := AID_Operador;
         TUniQuery(DataSet).ParamByName('sequencia').Value := ASequenciaOperacao;
         DataSet.Open;
         if DataSet.IsEmpty then
            Informacao('Nenhuma informação a imprimir!')
         else
            begin
               frRelatorio.Clear;
               frRelatorio.LoadFromFile(AReportFileName);
               frRelatorio.PrintOptions.ShowDialog := AImpressora = '';
               frRelatorio.PrintOptions.Printer := IfThen(AImpressora <> '', AImpressora, 'Default');
               frRelatorio.PrepareReport();
               if AVisualiza then
                  frRelatorio.ShowReport()
               else
                  frRelatorio.Print;
            end;
         DataSet.Close;
      end;
end;

procedure TdmRelatorio.ImprimirDAV(const Id: Integer; AImpressora: String;
   AVisualiza: Boolean);
var
   AHomePath: String;
   AReportFileName: TFileName;
begin
   AHomePath := TPath.Combine(ExtractFilePath(ParamStr(0)), 'Reports');
   with frdsCupom do
      begin
         DataSet.Close;
         TUniQuery(DataSet).ParamByName('id_venda').Value := Id;
         DataSet.Open;
         if DataSet.IsEmpty then
            Informacao('Nenhuma informação a imprimir!')
         else
            begin
               AReportFileName := TPath.Combine(AHomePath, 'DAV' + IfThen(DataSet.FieldByName('id_modelo_cupom').AsInteger = 2, 'Simplificado') + '.fr3');
               frRelatorio.Clear;
               frRelatorio.LoadFromFile(AReportFileName);
               frRelatorio.Variables['pImprimirComprovanteTroca'] := QuotedStr(IfThen(DataSet.FieldByName('prazo_troca').AsInteger > 0, 'S', 'N'));
               frRelatorio.PrintOptions.ShowDialog := AImpressora = '';
               frRelatorio.PrintOptions.Printer := IfThen(AImpressora <> '', AImpressora, 'Default');
               frRelatorio.PrepareReport();
               if AVisualiza then
                  frRelatorio.ShowReport()
               else
                  frRelatorio.Print;
            end;
         DataSet.Close;
      end;
end;

procedure TdmRelatorio.ImprimirComprovanteOrdemProducao(AID_Venda: Integer;
  AImpressora: String; AVisualiza: Boolean);
var
   AReportFileName: TFileName;
begin
   AReportFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'reports'), 'ComprovanteOrdemProducao.fr3');
   with frdsCupom do
      begin
         DataSet.Close;
         TUniQuery(DataSet).ParamByName('id_venda').Value := AID_Venda;
         DataSet.Open;
         if DataSet.IsEmpty then
            Informacao('Nenhuma informação a imprimir!')
         Else
            begin
               frRelatorio.Clear;
               frRelatorio.LoadFromFile(AReportFileName);
               frRelatorio.PrintOptions.ShowDialog := AImpressora = '';
               frRelatorio.PrintOptions.Printer := IfThen(AImpressora <> '', AImpressora, 'Default');
               frRelatorio.PrepareReport();
               if AVisualiza then
                  frRelatorio.ShowReport()
               Else
                  frRelatorio.Print;
            end;
         DataSet.Close;
      end;
end;

procedure TdmRelatorio.ImprimirFechamentoMovimento(AID_Terminal: Integer;
  ADataMovimento: TDateTime; AID_Operador: Integer; AFormatoImpressao: Integer;
  AImpressora: String; AVisualiza: Boolean);
var
   AReportFileName: TFileName;
begin
   // Cupom (40 Colunas)
   if AFormatoImpressao = 0 then
      begin
         AReportFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'reports'), 'FechamentoDiarioCupom.fr3');
         with frdsFechamento do
            begin
               DataSet.Close;
               With TUniQuery(DataSet).SQL Do
                  begin
                     Clear;
                     Add('SELECT t.id_local, e.tipo_pessoa AS tipo_pessoa_estabelecimento, e.cpf AS cpf_estabelecimento, e.rg_numero, e.cnpj AS cnpj_estabelecimento,');
                     Add('e.insc_estadual AS insc_estadual_estabelecimento, e.insc_municipal AS insc_municipal_estabelecimento,');
                     Add('e.insc_est_subst AS insc_est_subst_estabelecimento, e.insc_suframa AS insc_suframa_estabelecimento,');
                     Add('e.razao AS razao_estabelecimento, e.fantasia AS fantasia_estabelecimento, e.logradouro AS logradouro_estabelecimento, e.numero AS numero_estabelecimento,');
                     Add('e.complemento AS complemento_estabelecimento, e.bairro AS bairro_estabelecimento,');
                     Add('e.id_pais AS id_pais_estabelecimento, e.descricao_pais AS descricao_pais_estabelecimento,');
                     Add('e.id_estado AS id_estado_estabelecimento, e.sigla_estado AS sigla_estado_estabelecimento,');
                     Add('e.id_cidade AS id_cidade_estabelecimento, e.descricao_cidade AS descricao_cidade_estabelecimento,');
                     Add('e.cep AS cep_estabelecimento, e.telefone AS telefone_estabelecimento, e.fax AS fax_estabelecimento,');
                     Add('e.email AS email_estabelecimento, e.logomarca AS logomarca_estabelecimento,');
                     Add('tm.id_terminal, t.descricao AS descricao_terminal, t.numero, tm.id_operador, o.nome AS nome_operador, tm.data_movimento,');
                     Add('tm.data_abertura, tm.data_encerramento, ');
                     Add('COALESCE(f_get_terminal_media_ticket_operador(tm.id_terminal, tm.data_movimento, tm.id_operador), 0) AS media_ticket,');
                     Add('COALESCE(f_get_terminal_saldo_anterior_operador(tm.id_terminal, tm.data_movimento, tm.id_operador), 0) AS saldo_anterior,');
                     Add('COALESCE(f_get_terminal_entradas_operador(tm.id_terminal, tm.data_movimento, tm.id_operador), 0) AS valor_total_entradas,');
                     Add('COALESCE(f_get_terminal_saidas_operador(tm.id_terminal, tm.data_movimento, tm.id_operador), 0) AS valor_total_saidas,');
                     Add('COALESCE(f_get_terminal_saldo_operador(tm.id_terminal, tm.data_movimento, tm.id_operador), 0) AS saldo_atual');
                     Add('FROM terminais_movimentos tm');
                     Add('   INNER JOIN (terminais t');
                     Add('                  INNER JOIN vw_locais e');
                     Add('                     ON t.id_local = e.id_local)');
                     Add('      ON tm.id_terminal = t.id_terminal');
                     Add('   INNER JOIN vw_operadores o');
                     Add('      ON tm.id_operador = o.id_operador');
                     Add('WHERE tm.id_terminal = :id_terminal');
                     Add(' AND tm.data_movimento = :data_movimento');
                     Add(' AND tm.id_operador = :id_operador');
                     Add('ORDER BY o.nome, tm.data_movimento');
                  end;
               // Parâmetros
               TUniQuery(DataSet).ParamByName('id_terminal').DataType := ftInteger;
               TUniQuery(DataSet).ParamByName('id_terminal').ParamType := ptInput;
               TUniQuery(DataSet).ParamByName('id_terminal').Value := AID_Terminal;

               TUniQuery(DataSet).ParamByName('data_movimento').DataType := ftDateTime;
               TUniQuery(DataSet).ParamByName('data_movimento').ParamType := ptInput;
               TUniQuery(DataSet).ParamByName('data_movimento').Value := ADataMovimento;

               TUniQuery(DataSet).ParamByName('id_operador').DataType := ftInteger;
               TUniQuery(DataSet).ParamByName('id_operador').ParamType := ptInput;
               TUniQuery(DataSet).ParamByName('id_operador').Value := AID_Operador;

               DataSet.Open;
               if DataSet.IsEmpty then
                  Informacao('Nenhuma informação a imprimir!')
               Else
                  begin
                     frRelatorio.Clear;
                     frRelatorio.LoadFromFile(AReportFileName);
                     frRelatorio.PrintOptions.ShowDialog := AImpressora = '';
                     frRelatorio.PrintOptions.Printer := IfThen(AImpressora <> '', AImpressora, 'Default');
                     frRelatorio.PrepareReport();
                     if AVisualiza then
                        frRelatorio.ShowReport()
                     Else
                        frRelatorio.Print;
                  end;
               DataSet.Close;
            end;
      end
   // A4
   else if AFormatoImpressao = 1 then
           begin
              AReportFileName := TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)), 'reports'), 'FechamentoDiarioA4.fr3');
              with dbdsCaixa do
                 begin
                    DataSet.Close;
                    TUniQuery(DataSet).ParamByName('id_terminal').Value := AID_Terminal;
                    DataSet.Open;
                 end;

              qryVendas.Close;
              qryVendas.ParamByName('id_terminal').Value := AID_Terminal;
              qryVendas.ParamByName('data_movimento').Value := ADataMovimento;
              qryVendas.ParamByName('id_operador').Value := AID_Operador;
              qryVendas.Open;

              qryRecebimentos.Close;
              qryRecebimentos.ParamByName('id_terminal').Value := AID_Terminal;
              qryRecebimentos.ParamByName('data_movimento').Value := ADataMovimento;
              qryRecebimentos.ParamByName('id_operador').Value := AID_Operador;
              qryRecebimentos.Open;

              qryMovimentos.Close;
              qryMovimentos.ParamByName('id_terminal').Value := AID_Terminal;
              qryMovimentos.ParamByName('data_movimento').Value := ADataMovimento;
              qryMovimentos.ParamByName('id_operador').Value := AID_Operador;
              qryMovimentos.Open;

              qryPreVendas.Close;
              qryPreVendas.ParamByName('data_movimento').Value := ADataMovimento;
              qryPreVendas.Open;

              qryRecebimentos_Totais.Close;
              qryRecebimentos_Totais.ParamByName('id_terminal').Value := AID_Terminal;
              qryRecebimentos_Totais.ParamByName('data_movimento').Value := ADataMovimento;
              qryRecebimentos_Totais.ParamByName('id_operador').Value := AID_Operador;
              qryRecebimentos_Totais.Open;

              qryFechamento.Close;
              With qryFechamento.SQL Do
                 begin
                    Clear;
                    Add('SELECT r.id_caixa, r.data_movimento, r.id_operador, o.nome AS nome_operador, r.data_abertura, r.data_encerramento, t.id_modalidade, m.descricao AS descricao_modalidade,');
                    Add('r.id_transacao, t.descricao AS descricao_transacao,');
                    Add('SUM(r.valor_total_recebido) AS valor_recebido');
                    Add('FROM (');
                    Add('      SELECT v.id_caixa, v.data_movimento, v.id_operador, tm.data_abertura, tm.data_encerramento, vr.id_transacao,');
                    Add('      SUM(vr.valor_recebido - vr.valor_troco) AS valor_total_recebido');
                    Add('      FROM vendas_recebimentos vr');
                    Add('         INNER JOIN transacoes r');
                    Add('            ON vr.id_transacao = r.id_transacao');
                    Add('         INNER JOIN (vendas v');
                    Add('                        INNER JOIN terminais_movimentos tm');
                    Add('                           ON v.id_caixa = tm.id_terminal AND v.data_movimento = tm.data_movimento AND v.id_operador = tm.id_operador)');
                    Add('            ON vr.id_venda = v.id_venda');
                    Add('      WHERE v.id_caixa = :id_terminal');
                    Add('       AND v.data_movimento = :data_movimento');
                    Add('       AND v.status IN (' + QuotedStr('2') + ', ' + QuotedStr('5') + ')');
                    Add('       AND v.id_operador = :id_operador');
                    Add('      GROUP BY v.id_caixa, v.data_movimento, v.id_operador, tm.data_abertura, tm.data_encerramento, vr.id_transacao');
                    Add('      UNION ALL');
                    Add('      SELECT b.id_terminal AS id_caixa, b.data AS data_movimento, b.id_operador, tm.data_abertura, tm.data_encerramento, b.id_transacao, SUM(b.valor) AS valor_total_recebido');
                    Add('      FROM duplicatas_baixas b');
                    Add('         INNER JOIN (contas_movimentos cm');
                    Add('                        INNER JOIN terminais t');
                    Add('                           ON cm.id_terminal = t.id_terminal');
                    Add('                        INNER JOIN terminais_movimentos tm');
                    Add('                           ON cm.id_terminal = tm.id_terminal AND cm.data_movimento = tm.data_movimento AND cm.id_operador = tm.id_operador)');
                    Add('            ON b.id_conta_movimento = cm.id_movimento');
                    Add('         LEFT OUTER JOIN vendas_parcelas vp');
                    Add('            ON b.id_duplicata = vp.id_duplicata');
                    Add('      WHERE b.id_terminal = :id_terminal');
                    Add('       AND b.data = :data_movimento');
                    Add('       AND b.id_operador = :id_operador');
                    Add('       AND (vp.id_duplicata IS NULL OR (vp.id_duplicata IS NOT NULL AND vp.prazo > 0))');
                    Add('      GROUP BY b.id_terminal, b.data, b.id_operador, tm.data_abertura, tm.data_encerramento, b.id_transacao');
                    Add('     ) r');
                    Add('     INNER JOIN (transacoes t');
                    Add('                    INNER JOIN modalidades m');
                    Add('                       ON t.id_modalidade = m.id_modalidade)');
                    Add('        ON r.id_transacao = t.id_transacao');
                    Add('     INNER JOIN vw_operadores o');
                    Add('        ON r.id_operador = o.id_operador');
                    Add('GROUP BY r.id_caixa, r.data_movimento, r.id_operador, o.nome, id_modalidade, m.descricao, r.id_transacao, t.descricao');
                    Add('ORDER BY r.id_caixa, r.data_movimento, t.id_modalidade, t.descricao');
                 end;
              // Parâmetros
              qryFechamento.ParamByName('id_terminal').DataType := ftInteger;
              qryFechamento.ParamByName('id_terminal').ParamType := ptInput;
              qryFechamento.ParamByName('id_terminal').Value := AID_Terminal;

              qryFechamento.ParamByName('data_movimento').DataType := ftDateTime;
              qryFechamento.ParamByName('data_movimento').ParamType := ptInput;
              qryFechamento.ParamByName('data_movimento').Value := ADataMovimento;

              qryFechamento.ParamByName('id_operador').DataType := ftInteger;
              qryFechamento.ParamByName('id_operador').ParamType := ptInput;
              qryFechamento.ParamByName('id_operador').Value := AID_Operador;
              qryFechamento.Open;

              if qryVendas.IsEmpty And
                 qryRecebimentos.IsEmpty And
                 qryMovimentos.IsEmpty And
                 qryRecebimentos_Totais.IsEmpty then
                 Informacao('Nenhuma Informação a Imprimir!')
              Else
                 begin
                    frRelatorio.Clear;
                    frRelatorio.DotMatrixReport := False;
                    frRelatorio.LoadFromFile(AReportFileName);
                    frRelatorio.Variables['pTituloRelatorio'] := QuotedStr('MOVIMENTO CAIXA');//QuotedStr('RELATÓRIO PARA FECHAMENTO DO CAIXA');
                    frRelatorio.Variables['pNumeroCaixa'] := QuotedStr(StrZero(IntToStr(AID_Terminal), 3));
                    frRelatorio.Variables['pDataMovimento'] := QuotedStr(FormatDateTime('dd/mm/yyyy', ADataMovimento));
                    frRelatorio.PrintOptions.ShowDialog := AImpressora = '';
                    frRelatorio.PrintOptions.Printer := IfThen(AImpressora <> '', AImpressora, 'Default');
                    frRelatorio.PrepareReport();
                    frRelatorio.ShowReport();
                 end;

              qryVendas.Close;
              qryRecebimentos.Close;
              qryMovimentos.Close;
              qryPreVendas.Close;
              qryRecebimentos_Totais.Close;
              qryFechamento.Close;

              With dbdsCaixa Do
                 begin
                    DataSet.Close;
                    TUniQuery(DataSet).ParamByName('id_terminal').Clear;
                 end;
           end;
end;

procedure TdmRelatorio.qryCupomAfterOpen(DataSet: TDataSet);
begin
   qryCupom_Produtos.Open;
   qryCupom_Trocas.Open;
   qryCupom_Recebimentos.Open;
end;

procedure TdmRelatorio.qryCupomBeforeClose(DataSet: TDataSet);
begin
   qryCupom_Produtos.Close;
   qryCupom_Trocas.Close;
   qryCupom_Recebimentos.Close;
end;

procedure TdmRelatorio.qryFechamentoAfterOpen(DataSet: TDataSet);
begin
   qryFechamento_Vendas.Open;
   qryFechamento_Recebimentos.Open;
   qryFechamento_Operacoes.Open;
end;

procedure TdmRelatorio.qryFechamentoBeforeClose(DataSet: TDataSet);
begin
   qryFechamento_Vendas.Close;
   qryFechamento_Recebimentos.Close;
   qryFechamento_Operacoes.Close;
end;

procedure TdmRelatorio.qryTerminaisAfterOpen(DataSet: TDataSet);
begin
   qryLocais.Open;
end;

procedure TdmRelatorio.qryTerminaisBeforeClose(DataSet: TDataSet);
begin
   qryLocais.Close;
end;

end.
