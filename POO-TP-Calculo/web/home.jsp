<%-- 
    Document   : home
    Created on : 14/04/2017, 01:06:48
    Author     : sabino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link  href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <title>Home</title>
    </head>
    <body>
        <!--home.jps com informações sobre a equipe e o que faz a aplicação -->
        <%@ include file="WEB-INF/menu.jspf" %>
     
        <p><h1>Nossa Equipe</h1></p><br/>

        <div class="container marketing">
          <div class="row">
            <div class="col-lg-4">
              <img class="rounded-circle" src="img/leo.jpeg" alt="Generic placeholder image" width="140" height="140">
              <h2>Leonardo Sabino</h2>
              <p>Desenvolvedor responsável pela página de Amortização Americana.</p>
              <p><a class="btn btn-secondary" href="amortizacao-americana.jsp" role="button">Veja a Página &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img class="rounded-circle" src="img/victor.jpg" Generic placeholder image="width=140" height="140">
              <h2>Victor Schleumer</h2>
              <p>Desenvolvedor responsável pela página de Amortização Constante.</p>
              <p><a class="btn btn-secondary" href="amortizacao-constante.jsp" role="button">Veja a Página &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img class="rounded-circle" src="img/tiago.jpg" alt="Generic placeholder image" width="140" height="140">
              <h2>Tiago Farias</h2>
              <p>Desenvolvedor responsável pela página de Tabela Price.</p>
              <p><a class="btn btn-secondary" href="tabela-price.jsp" role="button">Veja a Página &raquo;</a></p>
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <a href="amortizacao-americana.jsp" style="color: #000" ><h2 class="featurette-heading">Amortização Americana</h2></a>
                <p class="lead">É caracterizado por pagamentos mensais equivalentes aos juros, não havendo amortizações mensais e prevendo a amortização total da dívida inicial em um único pagamento ao final de um período estipulado (em meses ou anos).</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-fluid mx-auto" src="img/saa.jpg" alt="Generic placeholder image">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7 push-md-5">
                <a href="amortizacao-constante.jsp" style="color: #000" ><h2 class="featurette-heading">Amortização Constante</h2></a>
                <p class="lead">Também conhecido como Sistema de SAC, ou Método Hamburguês, é caracterizado por pagamentos mensais decrescentes, que embutem uma amortização constante.</p>
            </div>
            <div class="col-md-5 pull-md-7">
                <img class="featurette-image img-fluid mx-auto" src="img/sac.jpg" alt="Generic placeholder image">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <a href="tabela-price.jsp" style="color: #000"><h2 class="featurette-heading">Tabela Price</h2></a>
                <p class="lead">Também chamado de Sistema de Parcelas Fixas, ou Sistema Francês, é caracterizado por pagamentos mensais iguais, embutindo uma amortização crescente.</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-fluid mx-auto" src="img/price.jpg" alt="Generic placeholder image">
            </div>
        </div>

        <hr class="featurette-divider">
    </div>
    <%@ include file="WEB-INF/rodape.jspf" %>
    </body>
</html>
