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
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">

            <a class="navbar-brand" href="#">ProvaLP</a>

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
            <div id="divE" class="col-sm-12 d-none d-sm-block">
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
                                nome: {
                                    maxlength: 100,
                                    minlength: 10
                                },
                                apelido: {
                                    temExclamacao: true

                                },
                                endereco: {
                                    required: true,
                                    maxlength: 100
                                },
                                sexo: {
                                    required: true,
                                    espaco: true
                                },
                                idade: {
                                    max: 100
                                }
                            }
                        });
                    });
                </script>


                <div class="p-3 mb-2 bg-danger text-white text-center"><h5>Cadastrar Usuario</h5></div>
                <br/><br/>
                <div class="row justify-content-center mb-5">
                    <div class="col-sm-12 col-md-10 col-lg-8">
                        <form name="formCadastro" id="formCadastro" method="post" action="salvar.jsp">
                            <div class="form-row">
                                <div class="form-group col-sm-6">
                                    <label>Nome</label>
                                    <input type="text" class="form-control" name="nomeFilme" placeholder="Digite o nome" value=""/>
                                </div>
                                <div class="form-group col-sm-6">
                                    <label>Titulo</label>
                                    <input type="text" class="form-control" name="titulo" placeholder="Digite o Titulo do filme" value=""/>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group col-sm-6">
                                    <label>Sinopse</label>
                                    <input type="text" class="form-control" name="sinopse" placeholder="Sinopse" value=""/>
                                </div>
                                <div class="form-group col-sm-6">
                                    <label>Genero</label>
                                    <input type="text" class="form-control" name="genero" placeholder="Genero do filme" value=""/>
                                </div>
                                
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group col-sm-6">
                                    <label>Foto</label>
                                    <input type="url" class="form-control" name="apelido" placeholder="Apelido" value=""/>
                                </div>
                                <div class="form-group col-sm-6">
                                    <label>Link Do Trailer</label>
                                    <input type="text" class="form-control" name="link" placeholder="Apelido" value=""/>
                                </div>
                                
                            </div>
                            
                            <input class="btn btn-primary" type="submit" value="Salvar"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div id="divG" class="col">
                DIVG
            </div>
        </div>    

    </body>
</html>
