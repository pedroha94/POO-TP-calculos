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
        <%@ include file="WEB-INF/rodape.jspf" %>
    </body>
</html>
