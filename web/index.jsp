<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script src="js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="js/validation/validacao.js" type="text/javascript"></script>

        <link href="css/Index.css" rel="stylesheet" type="text/css"/>
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
                        <a class="btn btn-primary" href="usuario/cadastrar.jsp" role="button">Cadastrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary" href="usuario/listar.jsp" role="button">Listar</a>
                    </li>
                    <li style="float:right">
                        <form action="busca.html" method="get">
                            <input class="btn btn-info" type="text" id="myInput" onkeyup="myFunction()" placeholder="Escreva aqui..">

                            <button class="btn btn-primary btn-lupa">
                                <img class="btn-lupa" src="img/lupa.png" alt=""/>
                            </button>
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


        <div class="p-3 mb-2 bg-primary text-white text-center"><h5>Aventura</h5></div>
        <div class="row">
            <div id="conteudo" class="col col-12 col-lg-12 col-md-12 col-sm-12">

                

            </div>
        </div>




        <div class="row">
            <div id="rodape" class="col">
                DIVG
            </div>
        </div>    

    </body>
</html>
