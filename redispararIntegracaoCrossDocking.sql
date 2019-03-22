__includeOnce(-1898141835); // /products/INTEQengine/configuration/iDBCsql library.ijs

let ds = database.query("SELECT EVENTOBLOQUEIO,
                                ZINTEGRACAO,
                                ZDEVEINTEGRAR,
                                ZULTIMAALTERACAO,
                                CANCELAMENSALDO,
                                CANCELADORSALDO,
                                BAIXADO,
                                CHAVE,
                                VERSAO
                         FROM PEDIDO
                         WHERE CHCRIACAO = CHAVE_DE_CRIACAO_PEDIDO ");
for (ds.first(); !ds.eof; ds.next()) {
    ds.eventobloqueio = null;
    ds.zintegracao = null;
    ds.zultimaalteracao = new Date();
    ds.cancelamensaldo = null;
    ds.canceladorsaldo = null;
    ds.zdeveintegrar = 1;
    ds.baixado = "N";
}
ds.applyUpdates();




