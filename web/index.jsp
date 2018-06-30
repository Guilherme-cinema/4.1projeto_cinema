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
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
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
                        <a class="nav-link" href="index.jsp">Início</a>
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
        <div class="container-fluid" id="geral">
            <div class="row">
                <div id="divA" class="col">
                    DIVA
                </div>
                
                <div id="divB" class="col">
                    <img class="img-fluid w-100" src="image/login.png" alt="deserto" width="1000" height="500"/>
                </div>
                
                <div id="divC" class="col">
                    DIVC
                </div>
            </div>
        </div>
       
        <div class="row">
            
            <div id="divE" class="col-sm-6 d-none d-sm-block">
                <iframe class="w-100" height="500" src="https://www.youtube.com/embed/cHpJ9f63XVw" 
                        frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>

                </iframe>
            </div>
            
            <div id="divF" class="col-sm-6 d-none d-sm-block">
                
           </div>
        </div>
        
        
        
        
        <div class="row">
            <div id="divG" class="col">
                DIVG
            </div>
        </div>    

    </body>
</html>
