<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <%@ include file="WEB-INF/menu.jspf" %>
        <!--para cálculo e apresentação do resultado a partir de entradas em um 
        form na mesma página-->
        <%
            double valorParcela = 0;
            double valorPresente = 0;
            double taxaJuros = 0;
            double periodos = 0;
            valorParcela=valorPresente*(Math.pow((1+taxaJuros),periodos)*taxaJuros)/(Math.pow((1+taxaJuros),periodos)-1);
        %>
        
        <div class="alert alert-danger" role="alert">
                <strong>Oops!</strong> <!--. -->
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-block">
                            <h4 class="card-title">Tabela Price</h4>
                            <p class="card-text">Veja a seguir um simulador para calcular as parcelas, juros e amortizações no sistema de amortização americana. Ajuste os valores abaixo e clique em [Calcular »]:</p>
                        </div>
                        <div class="card-block">
                            <form method="GET">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Saldo Devedor (R$)</label>
                                            <input type="number" name="valor_total" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Quantidade de Parcelas:</label>
                                            <input type="number" name="qt_parcelas" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Taxa de Juros: (%)</label>
                                            <input type="number" name="tx_juros" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="submit" value="Calcular" class="btn btn-success">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-block">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Prestação</th>
                                        <th>Juros</th>
                                        <th>Amortização</th>
                                        <th>Saldo Devedor</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    </div>
        <%@ include file="WEB-INF/rodape.jspf" %>
    </body>
</html>
