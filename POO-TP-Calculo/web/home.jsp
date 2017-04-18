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

        <hr class="featurette-divider">
    </div>
    <%@ include file="WEB-INF/rodape.jspf" %>
    </body>
</html>
