<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="../js/notify.min.js" type="text/javascript"></script>
        <script src="../js/validation/validacao.js" type="text/javascript"></script>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>

        <!-- Sinopse -->
        <style>
            .box{
                background: #ffffff;
                width: 50%;
                height: 5%;
            }

            .input{
                width: 100%;
                height: 200px;
            }
        </style>

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">

            <a class="navbar-brand" href="#">Cine Mais</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSite">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSite">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.jsp">Início</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary" href="cadastrar.jsp" role="button">Cadastrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary" href="listar.jsp" role="button">Listar</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid" id="geral">
            <div class="row">
                <div id="divA" class="col">
                    DIVA
                </div>
                <div id="divB" class="col">
                    DIVB
                </div>
                <div id="divC" class="col">
                    DIVC
                </div>
            </div>
        </div>

        <div class="row">
            <div id="divE" class="col-sm-12 ">
                <%
                    String status = request.getParameter("status");
                    if (status != null) {
                        if (status.equals("OK")) {

                        }
                    }
                %>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $("#formCadastro").validate({
                            rules: {
                                titulo: {
                                    required: true
                                },
                                Sinopse: {
                                    required: true,
                                    espaco: true
                                },
                                genero: {
                                    required: true

                                },
                                foto: {
                                    required: true

                                },
                                link: {
                                    required: true
                                }
                            }
                        });
                    });
                </script>


                <div class="p-3 mb-2 bg-danger text-white text-center"><h5>Cadastrar Filme</h5></div>
                <br/><br/>
                <div class="row justify-content-center mb-5">
                    <div class="col-sm-12 col-md-10 col-lg-10 col-xl-10">

                        <form name="formCadastro" id="formCadastro" method="post" action="salvarfilme.jsp">

                            <div class="row">

                                <div class="col col-sm-12 col-md-10 col-lg-4 col-xl-7 text-center">

                                    <div class="form-group col-sm-12">
                                        <label>Titulo</label>
                                        <input type="text" class="form-control" name="titulo" placeholder="Digite o Titulo do filme" value=""/>
                                    </div>

                                    <div class="form-group col-sm-12">
                                        <label>Fotos</label>
                                        <input type="image" class="form-control" name="foto" placeholder="" value=""/>
                                    </div>

                                    <div class="form-group col-sm-12">
                                        <label>Genero</label>
                                        <input type="text" class="form-control" name="genero" placeholder="Genero do filme" value=""/>
                                    </div>

                                    <div class="form-group col-sm-12">
                                        <label>Link do Filme</label>
                                        <input type="url" class="form-control" name="link" placeholder="Genero do filme" value=""/>
                                    </div>
                                </div>

                                <div class="col-sm-12 col-md-10 col-lg-5 col-xl-5">
                                    <div class="form-group col-sm-12 text-center">
                                        <label>Sinopse</label>
                                        <input  type="text" class="form-control box input" name="sinopse" placeholder="Escreva a Sinopse" value="" />
                                        </br>
                                        <input class="btn btn-primary" type="submit" value="Salvar"/>
                                    </div>
                                </div>

                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
        
          

    </body>
</html>
