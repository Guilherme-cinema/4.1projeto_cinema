
<%@page import="dominio.Filme"%>
<%@page import="persistencia.FilmeBD"%>

<%
String titulo = request.getParameter("titulo");
String sinopse = request.getParameter("sinopse");
String genero = request.getParameter("genero");
String foto = request.getParameter("foto");
String link = request.getParameter("link");


//busca o objeto plano pelo codigo do objeto.
//A classe busca pelo codigo e retorno o objeto que possui o codigo


Filme filme = new Filme();

Filme filme = new Filme();
filme.setTitulo(titulo);


//a classe de persistência UsuarioBD insere
//o objeto usuario no banco de dados
FilmeBD.inserir(filme);

response.sendRedirect("cadastrarfilme.jsp?status=OK");
%>