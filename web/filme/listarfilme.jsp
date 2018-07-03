<%@page import="java.io.File"%>
<%@page import="persistencia.FilmeBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Filme"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de usuários</title>
        <script src="../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>      
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
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
        <%
            ArrayList<Filme> lista = FilmeBD.listaF();
        %>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Código</th>
                    <th scope="col">Titulo</th>
                    <th scope="col">Sinopse</th>
                    <th scope="col">genero</th>
                    <th scope="col">foto</th>
                    <th scope="col">link</th>
                    <th scope="col">apagar</th>
                </tr>
            </thead>
            <tbody> 
                <%
                    for (int i = 0; i < lista.size(); i++) {
                        Filme cadaFilme = lista.get(i);
                %>
                <tr>
                    <td><%=cadaFilme.getCodigo()%></td>
                    <td><%=cadaFilme.getTitulo()%></td>
                    <td><%=cadaFilme.getSinopse()%></td>
                    <td><%=cadaFilme.getGenero()%></td>
                    <td><%=cadaFilme.getFoto()%></td>
                    <td><%=cadaFilme.getLink()%></td>
                     <td>
                        <%
                        String filePath = "C:\\Users\\guilherme martins pe\\Desktop\\3° Trab\\3°Av_proj_Cine\\fotos\\";
                        File file = new File( filePath + cadaFilme.getCodigo() + ".jpg") ;
                        if (file.exists()){
                            %>
                            <img src="../fotos/<%=cadaFilme.getCodigo()%>.jpg" width="80" />
                            <%
                        }
                        %>
                        
                        <form name="formCadastro" enctype="multipart/form-data" method="post" action="upload.jsp?codigo=<%=cadaFilme.getCodigo()%>">
                            <input type="file" name="foto" />
                            <input type="submit" name="enviar" value="Enviar foto" />
                        </form>
                    </td>

                    <td>
                        <a href="excluir.jsp?codigo=<%=cadaFilme.getCodigo()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
