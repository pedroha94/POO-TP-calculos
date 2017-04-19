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
        <%@ include file="WEB-INF/menu.jspf" %>

        <p><h1>Equipe</h1></p><br/>

    <div class="container marketing">
        <div class="row">
            <div class="col-lg-3">
                <img class="" src="img/pedro.jpg" alt="Pedro" width="140" height="140">
                <h2>Pedro Amaral</h2>
                <p>Desenvolvedor responsável pela página de Amortização Americana.</p>
                <div class="col-lg-12">
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.facebook.com/profile.php?id=100002922871347" target="_blank">
                            <img src="img/face.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://github.com/pedroha94" target="_blank">
                            <img src="img/git.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.linkedin.com/in/pedro-amaral-a88bb189/" target="_blank">
                            <img src="img/in.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <img class="" src="img/jonathas.jpg" alt="Jonathas" image="width=140" height="140">
                <h2>Jonathas Lopes</h2>
                <p>Desenvolvedor responsável pela página de Amortização Constante.</p>
                <div class="col-lg-12">
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.facebook.com/profile.php?id=100002922871347" target="_blank">
                            <img src="img/face.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://github.com/pedroha94" target="_blank">
                            <img src="img/git.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.linkedin.com/in/pedro-amaral-a88bb189/" target="_blank">
                            <img src="img/in.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <img class="" src="img/roberta.jpg" alt="Roberta" width="140" height="140">
                <h2>Roberta Reis</h2>
                <p>Desenvolvedor responsável por toda a parte visual e design do projeto.</p>
                <div class="col-lg-12">
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.facebook.com/profile.php?id=100002922871347" target="_blank">
                            <img src="img/face.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://github.com/pedroha94" target="_blank">
                            <img src="img/git.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.linkedin.com/in/pedro-amaral-a88bb189/" target="_blank">
                            <img src="img/in.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <img class="" src="img/higor.jpg" alt="Higor Moroni" width="140" height="140">
                <h2>Higor Moroni</h2>
                <p>Desenvolvedor responsável pela construção da página da Tabela Price.</p>
                <div class="col-lg-12">
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.facebook.com/elderhmoroni" target="_blank">
                            <img src="img/face.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://github.com/HigorMoroni" target="_blank">
                            <img src="img/git.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                    <div class="col-lg-4" style="float: left;">
                        <a href="https://www.linkedin.com/in/higormoroni" target="_blank">
                            <img src="img/in.png" style="float: left;padding: 0;width: 100%;margin: 0px;">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <hr class="featurette-divider">
    </div>
    <div class="row">

        <div class="col-md-4">
            <h4 style = "text-align: center;">Amortização Americana</h4>
            <p>O Sistema Americano de Amortização é um tipo de quitação de empréstimo que favorece
                aqueles que desejam pagar o valor principal através de uma única parcela, porém os
                juros devem ser pagos periodicamente ou, dependendo do contrato firmado entre as partes,
                os juros são capitalizados e pagos junto ao valor principal.</p>
        </div>
        <div class="col-md-4">
            <h4 style = "text-align: center;">Amortização Constante</h4>
            <p>O atual mercado financeiro oferece variadas operações de crédito para quem deseja financiar
                carro, imóveis, constituir um negócio próprio, investir na empresa, entre outras opções. 
                As instituições financeiras oferecem um capital que deverá ser devolvido com juros durante
                o período pré-determinado. As formas de quitar o empréstimo são inúmeras, vamos abordar o 
                funcionamento do sistema de amortizações constantes, que consiste no pagamento da dívida 
                baseada em parcelas de amortizações iguais com prestações e juros decrescentes. 
            </p>
        </div>
        <div class="col-md-4">
            <h4 style = "text-align: center;">Tabela Price</h4>
            <p>Os financiamentos utilizando a tabela Price são oferecidos com o propósito de prestações fixas
                ao longo do período de quitação do bem, sem aumento por algum tipo de correção (dependendo do
                contrato de financiamento). O método Price consiste em calcular prestações fixas, sendo que o
                saldo devedor é amortizado aos poucos, até a quitação do débito. Os juros estão embutidos nas
                prestações, a seguir iremos construir uma tabela especificando o valor dos juros pagos e da
                amortização sobre o valor do saldo devedor. Assim teremos condições de analisar todos os passos
                mensais de um empréstimo.</p>
        </div>
    </div>
    <%@ include file="WEB-INF/rodape.jspf" %>
</body>
</html>
