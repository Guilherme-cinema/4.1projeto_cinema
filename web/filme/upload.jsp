<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemStream"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemIterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
-
<%
String codigo = request.getParameter("codigo"); //c�digo do usu�rio
File file ;
//int maxMemSize = 2000 * 1024; //2MB
String filePath = "C:\\Users\\guilherme martins pe\\Desktop\\3� Trab\\3�Av_proj_Cine\\fotos\\";

DiskFileItemFactory factory = new DiskFileItemFactory();
//factory.setSizeThreshold(maxMemSize);
//factory.setRepository(new File(filePath));
ServletFileUpload upload = new ServletFileUpload(factory);
try{       
   FileItemIterator iterator = upload.getItemIterator(request);
   FileItemStream fi = (FileItemStream) iterator.next(); 
   if (fi.getFieldName().equals("foto")){
        file = new File( filePath + codigo + ".jpg") ;
        
        InputStream is = new BufferedInputStream(fi.openStream());
        BufferedOutputStream output = null;

        try {
            output = new BufferedOutputStream(new FileOutputStream(file));
            int data = -1;
            while ((data = is.read()) != -1) {
                output.write(data);
            }
        } finally {
            is.close();
            output.close();
        }
   }
}catch(Exception ex) {
   System.out.println("Houve um erro no upload do arquivo");
   ex.printStackTrace();
}
response.sendRedirect("listar.jsp");
%>