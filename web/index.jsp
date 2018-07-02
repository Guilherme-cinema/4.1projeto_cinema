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
        <script src="js/loginJS/login.js" type="text/javascript"></script>
        <link href="css/Index.css" rel="stylesheet" type="text/css"/>


        <!--Login -->
        <script src="login/login.js" type="text/javascript"></script>
        <link href="login/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">


            <button  class="btn-dark" onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Login</button>
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
                        <a class="btn btn-primary" href="usuario/cadastrar.jsp" role="button">Cadastrar</a>
                    </li>

                    <li class="nav-item">
                        <a class="btn btn-primary" href="usuario/listar.jsp" role="button">Listar</a>
                    </li>



                </ul>
            </div>
        </nav>




        <div class="container-fluid " id="geral">

            <div class="row">
                <div id="vazio_direto" class="col col-2">

                </div>

                <div id="logo" class="col col-8">


                    <div id="id01" class="modal">

                        <form class="modal-content animate" action="/action_page.php">
                            <div class="imgcontainer">
                                <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                <img src="login/img/log_cine.png" alt="login" class="avatar">

                            </div>

                            <div class="container">
                                <label for="uname"><b>E-mail</b></label>
                                <input type="text" placeholder="Escreva seu e-mail" name="uname" required>

                                <label for="psw"><b>Senha</b></label>
                                <input type="password" placeholder="Escreva sua senha" name="psw" required>

                                <button type="submit">Login</button>

                            </div>

                            <div class="container" style="background-color:#f1f1f1">
                                <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>

                            </div>
                        </form>
                    </div>
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
