<%@page import="persistencia.UsuarioBD"%>
<%@page import="dominio.Usuario"%>
<%
    
String nome = request.getParameter("nome");
String data = request.getParameter("data");
String email = request.getParameter("email");
String senha = request.getParameter("senha");



//busca o objeto plano pelo codigo do objeto.
//A classe busca pelo codigo e retorno o objeto que possui o codigo


Usuario usuario = new Usuario();
usuario.setNome(nome);
usuario.setEmail(email);
usuario.setData(data);
usuario.setSenha(senha);




//a classe de persistência UsuarioBD insere
//o objeto usuario no banco de dados
UsuarioBD.inserir(usuario);
response.sendRedirect("cadastrar.jsp?status=OK");
%>