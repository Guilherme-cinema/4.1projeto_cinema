<%@page import="persistencia.UsuarioBD"%>
<%@page import="dominio.Usuario"%>
<%
String nome = request.getParameter("nome");
String endereco = request.getParameter("endereco");
String apelido = request.getParameter("apelido");
String idade = request.getParameter("idade");
String sexo = request.getParameter("sexo");


//busca o objeto plano pelo codigo do objeto.
//A classe busca pelo codigo e retorno o objeto que possui o codigo


Usuario usuario = new Usuario();
usuario.setNome(nome);
usuario.setEndereco(endereco);
usuario.setApelido(apelido);
usuario.setIdade(Integer.parseInt(idade));
usuario.setSexo(sexo);


//a classe de persistência UsuarioBD insere
//o objeto usuario no banco de dados
UsuarioBD.inserir(usuario);
response.sendRedirect("cadastrar.jsp?status=OK");
%>