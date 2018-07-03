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

        <style>

            section.homepage-slider {
                display:none;
            }

            .flexslider {margin:0;padding:0;}

            .flexslider.slides {zoom:1;background:url(../img/loader.gif)center no-repeat}

            section.homepage-slider div.intro{
                position:absolute;
                top:20%;
                left:7%;
                opacity:.7;
            }    

        </style>

        <style>
            .iconefavoritar:hover {
                -webkit-transition: all 0.2s linear;
                -moz-transition: all 0.2s linear;
                -o-transition: all 0.2s linear;
                -ms-transition: all 0.2s linear;
                transition: all 1.0s linear;
                font-size: 17px;
            }
        </style>
        <style>

            section.homepage-slider {
                display:none;
            }

            .flexslider {margin:0;padding:0;}

            .flexslider.slides {zoom:1;background:url(../img/loader.gif)center no-repeat}

            section.homepage-slider div.intro{
                position:absolute;
                top:20%;
                left:7%;
                opacity:.7;
            }    

        </style>

        <script type="text/javascript">
            $(function () {
                $(document).ready(function () {
                    $('.flexslider').flexslider({
                        animation: "fade",
                        slideshowSpeed: 4000,
                        animationSpeed: 600,
                        controlNav: false,
                        directionNav: true,
                        controlsContainer: ".flex-container" // the container that holds the flexslider
                    });
                });
            });
        </script>
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
                        <a class="nav-link" href="filme/Filme/filmes.jsp">Filmes</a>
                        
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

                        <form class="modal-content animate" action="login/login.jsp">


                            <div class="imgcontainer">
                                <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                <img src="login/img/log_cine.png" alt="login" class="avatar">

                            </div>

                            <div class="container">

                                <label for="uname"><b>E-mail</b></label>
                                <input type="text" placeholder="Escreva seu e-mail" name="uname" required>

                                <label for="psw"><b>Senha</b></label>
                                <input type="password" placeholder="Escreva sua senha" name="senha" required>

                                

                                <button <input type="submit" name="entrar" value="Entrar" /></button>

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

                <%------ BANNER COM IMAGENS SLIDE---------%>
                <section class="homepage-slider" id="home-slider">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <a href="#">
                                    <img src="img/lupa.png" alt="" /></a>
                                <div class="intro">
                                    <h1>Garimpo moda retro</h1>
                                    <p><span>fazemos seu estilo</span></p>

                                </div>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="img/lupa.png" alt="" /></a>

                                <div class="intro">
                                    <h1>Não usa mais sua roupa?</h1>
                                    <p><span>venda no Garimpo</span></p>
                                </div>
                            </li>

                        </ul>
                    </div>
                </section>

            </div>
        </div>




        <div class="row">
            <div id="rodape" class="col">
                DIVG
            </div>
        </div>    

    </body>
</html>
