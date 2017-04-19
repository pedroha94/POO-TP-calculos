<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.lang.Math"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
        <script type="text/javascript" src="js/jquery.js" ></script>
        <script type="text/javascript" src="js/jquery.maskMoney.js" ></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("input.dinheiro").maskMoney({showSymbol:true, symbol:"R$", decimal:",", thousands:"."});
            });
            $(document).ready(function(){
                $("input.juros").maskMoney({showSymbol:false, decimal:",", thousands:""});
            });
        </script>
    </head>
    <body>
        <%@ include file="WEB-INF/menu.jspf" %>
        <!--para cálculo e apresentação do resultado a partir de entradas em um 
        form na mesma página-->
        <section class="container-fluid" style="margin-top: 25px">
            <%             
                boolean error = false;
                boolean isNull = false;
                String mensagem = "";
                
                double valorParcela = 0;
                double valorPresente = 0;
                double taxaJuros = 0;
                double numParcelas = 0;
                double totalPrestacao = 0;
                double totalJuros = 0;
                double totalAmortizacao = 0;
                
                try {
                    valorPresente = Double.parseDouble(request.getParameter("vl_total")); //P
                    numParcelas = Integer.parseInt(request.getParameter("qt_parcelas")); //n
                    taxaJuros = Double.parseDouble(request.getParameter("tx_juros")) / 100; //i
                    
                    valorParcela=valorPresente*(Math.pow((1+taxaJuros),numParcelas)*taxaJuros)/(Math.pow((1+taxaJuros),numParcelas)-1);
                    double saldoDevedor=valorPresente;
                    
                    for (int k=1; k<=numParcelas; k++){
                        int periodo=k;
                        double juros=saldoDevedor*taxaJuros;
                        double amortizacao=valorParcela-juros;
                        saldoDevedor-=amortizacao;
                        totalAmortizacao+=amortizacao;
                        totalJuros+=juros;
                        totalPrestacao+=valorParcela;
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
                            <h4 style="text-align:center;" class="card-title">Tabela Price</h4>
                            <p class="card-text">Veja a seguir um simulador para calcular as parcelas, juros e amortizações no sistema de amortização americana. Ajuste os valores abaixo e clique em [Calcular »]:</p>
                        </div>
                        <div class="card-block">
                            <form method="GET">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Saldo Devedor (R$)</label>
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
                                            double saldoDevedor=valorPresente;
                                            for (int k=1;k<=numParcelas;k++) {
                                                int periodo=k;
                                                double juros=saldoDevedor*taxaJuros;
                                                double amortizacao=valorParcela-juros;
                                                saldoDevedor-=amortizacao;
                                    %>
                                    <tr>
                                        <th scope="row"><%=periodo%></th>
                                        <td><%= NumberFormat.getCurrencyInstance().format(valorParcela) %></td>
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
