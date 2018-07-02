<%@page import="persistencia.FilmeBD"%>
<%
String codigo = request.getParameter("codigo");
FilmeBD.excluir(Integer.parseInt(codigo));
response.sendRedirect("listar.jsp");
%>
