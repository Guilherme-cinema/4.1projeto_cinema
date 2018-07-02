<%@page import="persistencia.UsuarioBD"%>
<%
String codigo = request.getParameter("codigo");
UsuarioBD.excluir(Integer.parseInt(codigo));
response.sendRedirect("listar.jsp");
%>
