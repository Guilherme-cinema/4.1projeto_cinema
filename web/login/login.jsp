
<%@page import="dominio.Usuario_Cadastrado"%>
<%@page import="persistencia.Usuario_CadastradoBD"%>
<%
String login = request.getParameter("login");
String senha = request.getParameter("senha");

Usuario_Cadastrado Usuario_CadastradoEncontrado = Usuario_CadastradoBD.procurarPorLoginSenha(login, senha);
if (Usuario_CadastradoEncontrado != null){
    response.sendRedirect("lider/listar.jsp");
}else{
    response.sendRedirect("index.jsp?erro=USUARIO_NAO_EXISTE");
}
%> 