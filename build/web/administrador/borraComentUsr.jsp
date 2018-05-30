<%-- 
    Document   : borraComentUsr
    Created on : 22/05/2017, 04:57:55 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String error = "";
  try{
      int id = Integer.parseInt(request.getParameter("xd"));
      validacionesAdmin.borrarComentarios comentario = new validacionesAdmin.borrarComentarios(id);
      if(comentario.validoo()){
          if(comentario.borrarxUsr()){
              error = comentario.err();
              response.sendRedirect("comentarios.jsp?e="+error);
          }
          else{
              error = comentario.err();
              response.sendRedirect("comentarios.jsp?e="+error);
          }
      }
      else{
          error = comentario.err();
          response.sendRedirect("comentarios.jsp?e="+error);
      }
          
  }
  catch(Exception xd){
      error = "Escribe un id valido";
      response.sendRedirect("comentarios.jsp?e="+error);
  }
   
  
  
%>
