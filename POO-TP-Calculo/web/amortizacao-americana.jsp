<%-- 
    Document   : amortizacao-americana
    Created on : 14/04/2017, 01:11:43
    Author     : sabino
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAA</title>
    </head>
    <body>
        <%@ include file="WEB-INF/menu.jspf" %>
        <!--para cálculo e apresentação do resultado a partir de entradas em um 
        form na mesma página-->       
        <section class="container-fluid" style="margin-top: 25px">
            <%
                double P = 0;
                int n = 0;
                double i = 0;
                double A = 0;

                double totalPrestacao = 0;
                double totalJuros = 0;
                double totalAmortizacao = 0;

                boolean error = false;
                boolean isNull = false;
                String mensagem = "";

                try {

                    P = Double.parseDouble(request.getParameter("vl_total"));
                    n = Integer.parseInt(request.getParameter("qt_parcelas"));
                    i = Double.parseDouble(request.getParameter("tx_juros"));

                    A = 0;

                    for (int k = 1; k <= n; k++) {
                        double total = P;
                        int periodo = k;
                        double amortizacao = A;
                        double saldoDevedor = P;
                        double juros = ((P * i)/ 100)*k;
                        double prestacao = (A + juros)*k;
                        totalAmortizacao = P;
                        totalJuros = juros;
                        totalPrestacao = P + juros;
                    }

                } catch (Exception ex) {
                    error = true;
                    if (ex instanceof java.lang.NullPointerException) {
                        error = false;
                        isNull = true;
                    }
                    if (ex instanceof java.lang.NumberFormatException) {
                        mensagem = "Algum campo não foi preenchido corretamente";
                    }

                }

            %>
            <% if (error) {%>
            <div class="alert alert-danger" role="alert">
                <strong>Oops!</strong> <%=mensagem%>.
            </div>
            <%}%>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-block">
                            <h4 class="card-title">Amortização Americana</h4>
                            <p class="card-text">Veja a seguir um simulador para calcular as parcelas, juros e amortizações no sistema de amortização americana. Ajuste os valores abaixo e clique em [Calcular »]:</p>
                        </div>
                        <div class="card-block">
                            <form method="GET">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Valor total do financiamento (R$)</label>
                                            <input type="number" name="vl_total" class="form-control" required>
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
                                    <%
                                        if (!isNull) {
                                            for (int k = 1; k <= n; k++) {
                                                double total = P;
                                                int periodo = k;
                                                double amortizacao = A;
                                                double saldoDevedor = P;
                                                double juros = (P*i)/100;
                                                double prestacao = A + juros;
                                    %>
                                    <tr>
                                        <th scope="row"><%=periodo%></th>
                                        <td><%= NumberFormat.getCurrencyInstance().format(prestacao) %></td>
                                        <td><%= NumberFormat.getCurrencyInstance().format(juros)%></td>
                                        <td><%= NumberFormat.getCurrencyInstance().format(amortizacao) %></td>
                                        <td><%= NumberFormat.getCurrencyInstance().format(saldoDevedor) %></td>
                                    </tr>
                                    <%}
                                        }%>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th scope="row">Totais:</th>
                                        <th><%= NumberFormat.getCurrencyInstance().format(totalPrestacao) %></th>
                                        <th><%= NumberFormat.getCurrencyInstance().format(totalJuros) %></th>
                                        <th><%= NumberFormat.getCurrencyInstance().format(totalAmortizacao) %></th>
                                        <th>-</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@ include file="WEB-INF/rodape.jspf" %>
    </body>
</html>
