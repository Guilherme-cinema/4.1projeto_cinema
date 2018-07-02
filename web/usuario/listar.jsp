<%@page import="persistencia.UsuarioBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Usuario"%>
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
            ArrayList<Usuario> lista = UsuarioBD.listar();
        %>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Código</th>
                    <th scope="col">Nome</th>
                    <th scope="col">E-mail</th>
                    <th scope="col">Data Nascimento</th>
                    <th scope="col">Senha</th>
                    
                </tr>
            </thead>
            <tbody> 
                <%
                    for (int i = 0; i < lista.size(); i++) {
                        Usuario cadaUsuario = lista.get(i);
                %>
                <tr>
                    <td><%=cadaUsuario.getCodigo()%></td>
                    <td><%=cadaUsuario.getNome()%></td>
                    <td><%=cadaUsuario.getEmail()%></td>
                    <td><%=cadaUsuario.getData()%></td>
                    <td><%=cadaUsuario.getSenha()%></td>
                    <td>
                        <a href="excluir.jsp?codigo=<%=cadaUsuario.getCodigo()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
