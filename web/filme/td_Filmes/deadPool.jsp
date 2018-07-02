<%-- 
    Document   : filmes
    Created on : 30/06/2018, 16:43:54
    Author     : guilherme martins pe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script type="../../text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <script type="../../text/javascript" src="js/bootstrap.min.js"></script>
        <script src="../../js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../../js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="../../js/validation/validacao.js" type="text/javascript"></script>
        <script src="../../js/pesq/pesq.js" type="text/javascript"></script>
        <link href="../../css/IFilme.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">

            <a class="navbar-brand" href="#">Cine Play</a>


            <!-- ICON DE RESPONSIVIDADE -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSite">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!--FIM-->

            <div class="collapse navbar-collapse" id="navbarSite">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Início</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="filme/filmes.jsp">Filmes</a>
                    </li>

                    <li class="nav-item">
                        <a class="btn btn-primary" href="filme/cadastrar.jsp" role="button">Cadastrar</a>
                    </li>

                    <li class="nav-item">
                        <a class="btn btn-primary" href="filme/listar.jsp" role="button">Listar</a>
                    </li>

                    <li style="float:right">
                        <form action="busca.html" method="get">
                            <input class="btn btn-info" type="text" id="myInput" onkeyup="myFunction()" placeholder="Escreva aqui..">

                        </form>
                    </li>

                </ul>
            </div>
        </nav>




        <div class="container-fluid " id="geral">

            <div class="row">
                <div id="vazio_direto" class="col col-2">

                </div>

                <div id="logo" class="col col-8">

                </div>

                <div id="vazio_esquerdo" class="col col-2">

                </div>
            </div>

        </div>


        <div class="p-3 mb-2 bg-primary text-white text-center"><h5>DeadPool</h5></div>

      
        <div class="row">
            <div id="rodape" class="col">
                DIVG
            </div>
        </div>    

    </body>
</html>
